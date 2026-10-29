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
import Seq.B000.C013
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A207400: Number of n X 5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207400, the canonical program `A207400.P14434467165464985475` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207400 has offset 1).

The definition of A207400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207400.P7897117511574060646

`ogf((12+72x-72x^2+30x^3-2x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A207400.P7897117511574060646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 72, -72, 30, 0, -2] [1, -6, 15, -20, 15, -6, 1] n

end

end A207400.P7897117511574060646

namespace A207400

/-- `ogf((12+72x-72x^2+30x^3-2x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P7897117511574060646.Spec : Prop :=
  ∀ n, P7897117511574060646.a n = A207400 (n + 1)

end A207400

/-! ## A207400.P14434467165464985475

`A166830(n+1)*A181510(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A207400

/-- `A166830(n+1)*A181510(n+1)` -/
def P14434467165464985475.Spec : Prop :=
  ∀ n, P14434467165464985475.a n = A207400 (n + 1)

theorem P14434467165464985475.correct : P14434467165464985475.Spec := by
  intro n
  simp only [A207400, Nat.add_sub_cancel]

end A207400

/-! ## A207400.P7615595208735236770

`sqrt(A207399(n+1)*A207401(n+1))`
-/

namespace A207400.P7615595208735236770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207399 (n + 1) * A207401 (n + 1) : ℝ)

end

end A207400.P7615595208735236770

namespace A207400

/-- `sqrt(A207399(n+1)*A207401(n+1))` -/
def P7615595208735236770.Spec : Prop :=
  ∀ n, P7615595208735236770.a n = (A207400 (n + 1) : ℝ)

end A207400

/-! ## A207400.P1817452959103690449

`A086113(n+1)/A086115(n+1)*A207402(n+1)`
-/

namespace A207400.P1817452959103690449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086113 (n + 1) : ℚ) / (A086115 (n + 1) : ℚ) * (A207402 (n + 1) : ℚ)

end

end A207400.P1817452959103690449

namespace A207400

/-- `A086113(n+1)/A086115(n+1)*A207402(n+1)` -/
def P1817452959103690449.Spec : Prop :=
  ∀ n, P1817452959103690449.a n = (A207400 (n + 1) : ℚ)

end A207400

/-! ## A207400.P15804839128958252237

`(A000292(n+2)-2)*A181510(n+1)`
-/

namespace A207400.P15804839128958252237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 2) - 2) * A181510 (n + 1)

end

end A207400.P15804839128958252237

namespace A207400

/-- `(A000292(n+2)-2)*A181510(n+1)` -/
def P15804839128958252237.Spec : Prop :=
  ∀ n, P15804839128958252237.a n = A207400 (n + 1)

end A207400

/-! ## A207400.P4933670170762560603

`A086113(n+1)/A016742(n+1)*A086114(n+1)`
-/

namespace A207400.P4933670170762560603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086113 (n + 1) : ℚ) / (A016742 (n + 1) : ℚ) * (A086114 (n + 1) : ℚ)

end

end A207400.P4933670170762560603

namespace A207400

/-- `A086113(n+1)/A016742(n+1)*A086114(n+1)` -/
def P4933670170762560603.Spec : Prop :=
  ∀ n, P4933670170762560603.a n = (A207400 (n + 1) : ℚ)

end A207400

/-! ## A207400.P1951902129403639551

`A207403(∑[n+5]+6)`
-/

namespace A207400.P1951902129403639551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207400.P1951902129403639551

namespace A207400

/-- `A207403(∑[n+5]+6)` -/
def P1951902129403639551.Spec : Prop :=
  ∀ n, P1951902129403639551.a n = A207400 (n + 1)

end A207400

/-! ## A207400.P8541490322955878156

`lcm(2, A207403(A046691(n+3)))`
-/

namespace A207400.P8541490322955878156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207403 (A046691 (n + 3)).toNat)

end

end A207400.P8541490322955878156

namespace A207400

/-- `lcm(2, A207403(A046691(n+3)))` -/
def P8541490322955878156.Spec : Prop :=
  ∀ n, (P8541490322955878156.a n : ℤ) = A207400 (n + 1)

end A207400

/-! ## A207400.P11913681673803252118

`A207403(A046691(n+3))%A216588(n+3)`
-/

namespace A207400.P11913681673803252118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207403 (A046691 (n + 3)).toNat) (A216588 (n + 3))

end

end A207400.P11913681673803252118

namespace A207400

/-- `A207403(A046691(n+3))%A216588(n+3)` -/
def P11913681673803252118.Spec : Prop :=
  ∀ n, P11913681673803252118.a n = A207400 (n + 1)

end A207400

/-!
# A207401: Number of n X 6 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207401, the canonical program `A207401.P3351068096359947436` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207401 has offset 1).

The definition of A207401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207401.P3351068096359947436

`record[(2*(2-C(n, 3)))²]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207401

/-- `record[(2*(2-C(n, 3)))²]` -/
def P3351068096359947436.Spec : Prop :=
  ∀ n, P3351068096359947436.a n = A207401 (n + 1)

theorem P3351068096359947436.correct : P3351068096359947436.Spec := by
  intro n
  simp only [A207401, Nat.add_sub_cancel]

end A207401

/-! ## A207401.P7531845939969565303

`(2*(C(n+4, 3)-2))²`
-/

namespace A207401.P7531845939969565303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((Nat.choose (n + 4) 3 : ℤ) - 2)) ^ 2

end

end A207401.P7531845939969565303

namespace A207401

/-- `(2*(C(n+4, 3)-2))²` -/
def P7531845939969565303.Spec : Prop :=
  ∀ n, P7531845939969565303.a n = A207401 (n + 1)

end A207401

/-! ## A207401.P5163699992269512567

`(2*(∑[∑[n+2]]+n))²`
-/

namespace A207401.P5163699992269512567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (∑ j ∈ Finset.range (n + 1), f1 j + n)) ^ 2

end

end A207401.P5163699992269512567

namespace A207401

/-- `(2*(∑[∑[n+2]]+n))²` -/
def P5163699992269512567.Spec : Prop :=
  ∀ n, (P5163699992269512567.a n : ℤ) = A207401 (n + 1)

end A207401

/-! ## A207401.P18286813074908864385

`(2*record[abs(2-C(n, 3))])^2`
-/

namespace A207401.P18286813074908864385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.choose n 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A207401.P18286813074908864385

namespace A207401

/-- `(2*record[abs(2-C(n, 3))])^2` -/
def P18286813074908864385.Spec : Prop :=
  ∀ n, P18286813074908864385.a n = A207401 (n + 1)

end A207401

/-! ## A207401.P5113422227761673128

`record[(2-C(n, 3))²]/(1-3/4)`
-/

namespace A207401.P5113422227761673128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose n 3 : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (1 - (3 : ℚ) / 4)

end

end A207401.P5113422227761673128

namespace A207401

/-- `record[(2-C(n, 3))²]/(1-3/4)` -/
def P5113422227761673128.Spec : Prop :=
  ∀ n, P5113422227761673128.a n = (A207401 (n + 1) : ℚ)

end A207401

/-! ## A207401.P2573584247644758903

`lcm(2, (2-∑[lcm(n+2, n+3)])²)`
-/

namespace A207401.P2573584247644758903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2)

end

end A207401.P2573584247644758903

namespace A207401

/-- `lcm(2, (2-∑[lcm(n+2, n+3)])²)` -/
def P2573584247644758903.Spec : Prop :=
  ∀ n, (P2573584247644758903.a n : ℤ) = A207401 (n + 1)

end A207401

/-! ## A207401.P3374583062499204425

`4*(Δ[A005582(n)]+n)²`
-/

namespace A207401.P3374583062499204425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A207401.P3374583062499204425

namespace A207401

/-- `4*(Δ[A005582(n)]+n)²` -/
def P3374583062499204425.Spec : Prop :=
  ∀ n, P3374583062499204425.a n = A207401 (n + 1)

end A207401

/-! ## A207401.P8857129014080081278

`A207400(n+1)²/A207399(n+1)`
-/

namespace A207401.P8857129014080081278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207400 (n + 1) ^ 2 : ℚ) / (A207399 (n + 1) : ℚ)

end

end A207401.P8857129014080081278

namespace A207401

/-- `A207400(n+1)²/A207399(n+1)` -/
def P8857129014080081278.Spec : Prop :=
  ∀ n, P8857129014080081278.a n = (A207401 (n + 1) : ℚ)

end A207401

/-! ## A207401.P18348168701035063245

`A086114(n+1)/A016742(n+1)*A086114(n+1)`
-/

namespace A207401.P18348168701035063245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086114 (n + 1) : ℚ) / (A016742 (n + 1) : ℚ) * (A086114 (n + 1) : ℚ)

end

end A207401.P18348168701035063245

namespace A207401

/-- `A086114(n+1)/A016742(n+1)*A086114(n+1)` -/
def P18348168701035063245.Spec : Prop :=
  ∀ n, P18348168701035063245.a n = (A207401 (n + 1) : ℚ)

end A207401

/-! ## A207401.P10284699897304503887

`record[(2*(2-∑[∑[n]]))²]`
-/

namespace A207401.P10284699897304503887
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207401.P10284699897304503887

namespace A207401

/-- `record[(2*(2-∑[∑[n]]))²]` -/
def P10284699897304503887.Spec : Prop :=
  ∀ n, P10284699897304503887.a n = A207401 (n + 1)

end A207401

/-!
# A207402: Number of n X 7 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207402, the canonical program `A207402.P8667676243857557291` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207402 has offset 1).

The definition of A207402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207402.P8667676243857557291

`A086114(n+1)/A016742(n+1)*A086115(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207402

/-- `A086114(n+1)/A016742(n+1)*A086115(n+1)` -/
def P8667676243857557291.Spec : Prop :=
  ∀ n, P8667676243857557291.a n = (A207402 (n + 1) : ℚ)

end A207402

/-! ## A207402.P12259471007924995275

`A207403(A055999(n+4))`
-/

namespace A207402.P12259471007924995275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A055999 (n + 4)).toNat

end

end A207402.P12259471007924995275

namespace A207402

/-- `A207403(A055999(n+4))` -/
def P12259471007924995275.Spec : Prop :=
  ∀ n, P12259471007924995275.a n = A207402 (n + 1)

end A207402

/-! ## A207402.P15961999192794755824

`A207403(Δ[A023551(n+2)])`
-/

namespace A207402.P15961999192794755824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (f1 (n + 1) - f1 n).toNat

end

end A207402.P15961999192794755824

namespace A207402

/-- `A207403(Δ[A023551(n+2)])` -/
def P15961999192794755824.Spec : Prop :=
  ∀ n, P15961999192794755824.a n = A207402 (n + 1)

end A207402

/-! ## A207402.P9858055338916211965

`A207403(Δ[A026054(n+4)])`
-/

namespace A207402.P9858055338916211965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (f1 (n + 1) - f1 n).toNat

end

end A207402.P9858055338916211965

namespace A207402

/-- `A207403(Δ[A026054(n+4)])` -/
def P9858055338916211965.Spec : Prop :=
  ∀ n, P9858055338916211965.a n = A207402 (n + 1)

end A207402

/-! ## A207402.P13239589317300876168

`A207403(A000217(n+7)-6)`
-/

namespace A207402.P13239589317300876168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A000217 (n + 7) - 6).toNat

end

end A207402.P13239589317300876168

namespace A207402

/-- `A207403(A000217(n+7)-6)` -/
def P13239589317300876168.Spec : Prop :=
  ∀ n, P13239589317300876168.a n = A207402 (n + 1)

end A207402

/-!
# A207403: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207403, there is no canonical definition to state claims against.
-/

/-! ## A207403.P4465910697595450775

`A208142(n+1)-A173068(A059922(n))`
-/

namespace A207403.P4465910697595450775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (n + 1) - A173068 (A059922 n).toNat

end

end A207403.P4465910697595450775

/-! ## A207403.P16482462347410379573

`A208142(n+1)-A173068(A160449(n))`
-/

namespace A207403.P16482462347410379573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (n + 1) - A173068 (A160449 n).toNat

end

end A207403.P16482462347410379573

/-! ## A207403.P17854828666517741815

`A208142(n+1)-A115859(A331315(n))`
-/

namespace A207403.P17854828666517741815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (n + 1) - A115859 (A331315 n).toNat

end

end A207403.P17854828666517741815

/-! ## A207403.P4620953506647027424

`A208142(n+1)-A173068(A147309(n))`
-/

namespace A207403.P4620953506647027424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (n + 1) - A173068 (A147309 n).toNat

end

end A207403.P4620953506647027424

/-! ## A207403.P5327523879590858570

`A207068(n+1)-A206499(A084589(n+1))`
-/

namespace A207403.P5327523879590858570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (n + 1) - A206499 (A084589 (n + 1)).toNat

end

end A207403.P5327523879590858570

/-!
# A207404: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207404, there is no canonical definition to state claims against.
-/

/-! ## A207404.P5129765256396048433

`A207403(A052905(n)+9)`
-/

namespace A207404.P5129765256396048433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A052905 n + 9).toNat

end

end A207404.P5129765256396048433

/-! ## A207404.P11235576597992216904

`A207403(A055999(n)+10)`
-/

namespace A207404.P11235576597992216904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A055999 n + 10).toNat

end

end A207404.P11235576597992216904

/-! ## A207404.P5230731799827287941

`A207403(A167614(n+2)+1)`
-/

namespace A207404.P5230731799827287941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A167614 (n + 2) + 1).toNat

end

end A207404.P5230731799827287941

/-! ## A207404.P5844719184103462410

`A207403(A167499(n+1)+n+2)`
-/

namespace A207404.P5844719184103462410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A167499 (n + 1) + (n + 2 : ℤ)).toNat

end

end A207404.P5844719184103462410

/-! ## A207404.P5973729162357655891

`A207403(Δ[A023545(n+1)-n²])`
-/

namespace A207404.P5973729162357655891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (f1 (n + 1) - f1 n).toNat

end

end A207404.P5973729162357655891

/-! ## A207404.P12884531348132749663

`A207403(A034856(n+1)+A020723(n))`
-/

namespace A207404.P12884531348132749663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A034856 (n + 1) + A020723 n).toNat

end

end A207404.P12884531348132749663

/-! ## A207404.P12338012997527878208

`A207403(A002620(n+1)+A002620(n+6)+1)`
-/

namespace A207404.P12338012997527878208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A002620 (n + 1) + A002620 (n + 6) + 1).toNat

end

end A207404.P12338012997527878208

/-!
# A207405: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207405, there is no canonical definition to state claims against.
-/

/-! ## A207405.P5068097738714293365

`A207403(A167499(n+3))`
-/

namespace A207405.P5068097738714293365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A167499 (n + 3)).toNat

end

end A207405.P5068097738714293365

/-! ## A207405.P12549626476212329696

`A207403(A056000(n)+15)`
-/

namespace A207405.P12549626476212329696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A056000 n + 15).toNat

end

end A207405.P12549626476212329696

/-! ## A207405.P18206189185642420634

`A207403(A000217(n+4)+5)`
-/

namespace A207405.P18206189185642420634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A000217 (n + 4) + 5).toNat

end

end A207405.P18206189185642420634

/-! ## A207405.P17148074670943832633

`A207403(A000096(n+4)-(n-1))`
-/

namespace A207405.P17148074670943832633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A207405.P17148074670943832633

/-! ## A207405.P2215244361959656046

`A207403(A038722(Δ[A023545(n+1)]))`
-/

namespace A207405.P2215244361959656046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A207405.P2215244361959656046

/-! ## A207405.P7073755545628516829

`A207403(A008619(Δ[A026046(n+6)]))`
-/

namespace A207405.P7073755545628516829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A207405.P7073755545628516829

/-!
# A207406: Number of 6 X n 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207406, there is no canonical definition to state claims against.
-/

/-! ## A207406.P16832693802499149341

`A207403(A000217(n+5)+6)`
-/

namespace A207406.P16832693802499149341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A000217 (n + 5) + 6).toNat

end

end A207406.P16832693802499149341

/-! ## A207406.P17478031846387456512

`A207403(A055998(n+5)-A005843(n+2))`
-/

namespace A207406.P17478031846387456512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A055998 (n + 5) - A005843 (n + 2)).toNat

end

end A207406.P17478031846387456512

/-! ## A207406.P4760195678484515521

`A207403(A000096(n+6)-A005843(n+3))`
-/

namespace A207406.P4760195678484515521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A207406.P4760195678484515521

/-! ## A207406.P18190216124108708784

`A207403(A005843(n+8)+A000096(n+2))`
-/

namespace A207406.P18190216124108708784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A005843 (n + 8) + A000096 (n + 2)).toNat

end

end A207406.P18190216124108708784

/-! ## A207406.P7166293551207800426

`A207403(A002620(n+2)+A002620(n+9))`
-/

namespace A207406.P7166293551207800426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A207406.P7166293551207800426

/-!
# A207407: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207407, there is no canonical definition to state claims against.
-/

/-! ## A207407.P2905421553306213017

`A207403(A167499(n+5)+2)`
-/

namespace A207407.P2905421553306213017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A167499 (n + 5) + 2).toNat

end

end A207407.P2905421553306213017

/-! ## A207407.P15068365965091184503

`A207403(A000217(n+6)+7)`
-/

namespace A207407.P15068365965091184503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A000217 (n + 6) + 7).toNat

end

end A207407.P15068365965091184503

/-! ## A207407.P12624679276275807806

`A207403(A055998(n+4)+10)`
-/

namespace A207407.P12624679276275807806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A055998 (n + 4) + 10).toNat

end

end A207407.P12624679276275807806

/-! ## A207407.P12770515307820050802

`A207403(A161680(n+7)+7)`
-/

namespace A207407.P12770515307820050802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A161680 (n + 7) + 7).toNat

end

end A207407.P12770515307820050802

/-! ## A207407.P1320713847051296723

`A207403(A000124(n+7)-(n+1))`
-/

namespace A207407.P1320713847051296723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A207407.P1320713847051296723

/-!
# A207408: Number of connected triangle-free graphs on n nodes with edge chromatic number 3.

The programs for A207408, there is no canonical definition to state claims against.
-/

/-! ## A207408.P8032603054962489039

`A105517(A196189(n+1)*A199883(n+1))`
-/

namespace A207408.P8032603054962489039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A196189 (n + 1) * A199883 (n + 1)).toNat

end

end A207408.P8032603054962489039

/-!
# A207409: Triangular array: T(n,k) = prime(n) mod prime(k), 1 <= k < n.

The programs for A207409, the canonical program `A207409.P10666545104290844078` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207409 has offset 2).

The definition of A207409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207409.P10666545104290844078

`A204890(n+1)%A037126(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A207409

/-- `A204890(n+1)%A037126(n+1)` -/
def P10666545104290844078.Spec : Prop :=
  ∀ n, P10666545104290844078.a n = A207409 (n + 2)

theorem P10666545104290844078.correct : P10666545104290844078.Spec := by
  intro n
  simp only [A207409, Nat.add_sub_cancel]

end A207409

/-! ## A207409.P13689264865724908213

`A389809(n+1)%A037126(n+1)`
-/

namespace A207409.P13689264865724908213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389809 (n + 1)) (A037126 (n + 1))

end

end A207409.P13689264865724908213

namespace A207409

/-- `A389809(n+1)%A037126(n+1)` -/
def P13689264865724908213.Spec : Prop :=
  ∀ n, P13689264865724908213.a n = A207409 (n + 2)

end A207409

/-! ## A207409.P3060056985711820324

`A391357(n+1)%A037126(n+1)`
-/

namespace A207409.P3060056985711820324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391357 (n + 1)) (A037126 (n + 1))

end

end A207409.P3060056985711820324

namespace A207409

/-- `A391357(n+1)%A037126(n+1)` -/
def P3060056985711820324.Spec : Prop :=
  ∀ n, P3060056985711820324.a n = A207409 (n + 2)

end A207409

/-! ## A207409.P15127006164905485192

`A000040(comp[∑[n]]-n)%A037126(n+1)`
-/

namespace A207409.P15127006164905485192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)) (A037126 (n + 1))

end

end A207409.P15127006164905485192

namespace A207409

/-- `A000040(comp[∑[n]]-n)%A037126(n+1)` -/
def P15127006164905485192.Spec : Prop :=
  ∀ n, P15127006164905485192.a n = A207409 (n + 2)

end A207409

/-! ## A207409.P10059832031858428712

`A065091(A002024(n+1))%A037126(n+1)`
-/

namespace A207409.P10059832031858428712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (A002024 (n + 1)).toNat) (A037126 (n + 1))

end

end A207409.P10059832031858428712

namespace A207409

/-- `A065091(A002024(n+1))%A037126(n+1)` -/
def P10059832031858428712.Spec : Prop :=
  ∀ n, P10059832031858428712.a n = A207409 (n + 2)

end A207409

/-! ## A207409.P17557100707019329930

`A000040(A002024(n+1)+1)%A000040(A002262(n)+1)`
-/

namespace A207409.P17557100707019329930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A002024 (n + 1) + 1).toNat) (A000040 (A002262 n + 1).toNat)

end

end A207409.P17557100707019329930

namespace A207409

/-- `A000040(A002024(n+1)+1)%A000040(A002262(n)+1)` -/
def P17557100707019329930.Spec : Prop :=
  ∀ n, P17557100707019329930.a n = A207409 (n + 2)

end A207409

/-! ## A207409.P10627497154718526383

`A069859(A339116(n+2))`
-/

namespace A207409.P10627497154718526383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A339116 (n + 2)).toNat

end

end A207409.P10627497154718526383

namespace A207409

/-- `A069859(A339116(n+2))` -/
def P10627497154718526383.Spec : Prop :=
  ∀ n, P10627497154718526383.a n = A207409 (n + 2)

end A207409

/-! ## A207409.P8882714898160704432

`A173655(comp[∑[n]])`
-/

namespace A207409.P8882714898160704432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173655 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A207409.P8882714898160704432

namespace A207409

/-- `A173655(comp[∑[n]])` -/
def P8882714898160704432.Spec : Prop :=
  ∀ n, P8882714898160704432.a n = A207409 (n + 2)

end A207409

/-! ## A207409.P9562358109466729762

`A090311(n+1)%A037126(n+1)`
-/

namespace A207409.P9562358109466729762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090311 (n + 1)) (A037126 (n + 1))

end

end A207409.P9562358109466729762

namespace A207409

/-- `A090311(n+1)%A037126(n+1)` -/
def P9562358109466729762.Spec : Prop :=
  ∀ n, P9562358109466729762.a n = A207409 (n + 2)

end A207409

/-!
# A207410: Number of connected triangle-free graphs on n nodes with edge chromatic number 4.

The programs for A207410, there is no canonical definition to state claims against.
-/

/-! ## A207410.P15725572084539396842

`floor(A056041(n)/15)`
-/

namespace A207410.P15725572084539396842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056041 n : ℚ) / 15⌋

end

end A207410.P15725572084539396842

/-! ## A207410.P12438779755478648090

`floor(A266203(n)/15)`
-/

namespace A207410.P12438779755478648090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266203 n : ℚ) / 15⌋

end

end A207410.P12438779755478648090

/-! ## A207410.P7647892761862975722

`A054900(A053496(n))`
-/

namespace A207410.P7647892761862975722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A053496 n).toNat

end

end A207410.P7647892761862975722

/-! ## A207410.P2035969572741773390

`A206919(A118885(n))`
-/

namespace A207410.P2035969572741773390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206919 (A118885 n).toNat

end

end A207410.P2035969572741773390

/-!
# A207411: Number of connected triangle-free graphs on n nodes with edge chromatic number 5.

The programs for A207411, there is no canonical definition to state claims against.
-/

/-! ## A207411.P1698387012151342890

`A137745(n)*A318327(A189358(n))`
-/

namespace A207411.P1698387012151342890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137745 n * A318327 (A189358 n).toNat

end

end A207411.P1698387012151342890

/-! ## A207411.P11622182265219066956

`A336022(n)*A350459(A003242(n))`
-/

namespace A207411.P11622182265219066956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336022 n * A350459 (A003242 n).toNat

end

end A207411.P11622182265219066956

/-! ## A207411.P6983576177393572537

`A111851(A226314(n+1)+A006923(n))`
-/

namespace A207411.P6983576177393572537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (A226314 (n + 1) + A006923 n).toNat

end

end A207411.P6983576177393572537

/-! ## A207411.P2998489815695851071

`A206555(n+2)*A384317(A000045(n))`
-/

namespace A207411.P2998489815695851071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206555 (n + 2) * A384317 (A000045 n).toNat

end

end A207411.P2998489815695851071

/-!
# A207412: Number of connected triangle-free graphs on n nodes with edge chromatic number 6.

The programs for A207412, there is no canonical definition to state claims against.
-/

/-! ## A207412.P4013848513412296206

`floor(A243324(n+1)/A113188(n+1))`
-/

namespace A207412.P4013848513412296206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243324 (n + 1) : ℚ) / (A113188 (n + 1) : ℚ)⌋

end

end A207412.P4013848513412296206

/-! ## A207412.P17838573721803518884

`A033099(A033102(n+4)^A033100(n+1))`
-/

namespace A207412.P17838573721803518884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033099 (SequenceMachineLib.roundAway ((A033102 (n + 4) : ℚ) ^ (A033100 (n + 1) : ℤ))).toNat

end

end A207412.P17838573721803518884

/-! ## A207412.P463251922751345583

`A120705(∑[C(n, 6)])`
-/

namespace A207412.P463251922751345583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120705 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207412.P463251922751345583

/-! ## A207412.P18064973166012319231

`A122331(∑[C(n, 6)])`
-/

namespace A207412.P18064973166012319231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122331 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207412.P18064973166012319231

/-! ## A207412.P5692711080358462236

`∑[A122334(C(n, 6))]`
-/

namespace A207412.P5692711080358462236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122334 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207412.P5692711080358462236

/-!
# A207413: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207413, there is no canonical definition to state claims against.
-/

/-! ## A207413.P13498701562024639148

`A207419(∑[4*n]+1)`
-/

namespace A207413.P13498701562024639148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207413.P13498701562024639148

/-! ## A207413.P17341100565927907083

`lcm(2, A207419(A001844(n)))`
-/

namespace A207413.P17341100565927907083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207419 (A001844 n).toNat)

end

end A207413.P17341100565927907083

/-! ## A207413.P4257485090228935545

`record[A207419(n+1)*A214505(n)]`
-/

namespace A207413.P4257485090228935545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207413.P4257485090228935545

/-! ## A207413.P17879760573611236909

`record[gcd(A003987(n), A207419(n+1))]`
-/

namespace A207413.P17879760573611236909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A207419 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207413.P17879760573611236909

/-! ## A207413.P885468989639447093

`A207419(A001844(n))+A008683(4*(n+1))`
-/

namespace A207413.P885468989639447093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A207413.P885468989639447093

/-!
# A207414: Number of nX3 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207414, there is no canonical definition to state claims against.
-/

/-! ## A207414.P383947698270558736

`A207419(∑[n+2]+4)`
-/

namespace A207414.P383947698270558736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207414.P383947698270558736

/-! ## A207414.P8600352813091006878

`A207419(A167614(n+1))%A222117(n)`
-/

namespace A207414.P8600352813091006878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207419 (A167614 (n + 1)).toNat) (A222117 n)

end

end A207414.P8600352813091006878

/-! ## A207414.P9167433647098287796

`lcm(A020985(n), A207419(A167614(n+1)))`
-/

namespace A207414.P9167433647098287796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A207419 (A167614 (n + 1)).toNat)

end

end A207414.P9167433647098287796

/-! ## A207414.P3422876698564850433

`A133707(n+1)*A207419(A167614(n+1))`
-/

namespace A207414.P3422876698564850433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A207419 (A167614 (n + 1)).toNat

end

end A207414.P3422876698564850433

/-! ## A207414.P12952264323026531630

`A207419(A167614(n+1))+A003982(2*n+1)`
-/

namespace A207414.P12952264323026531630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A167614 (n + 1)).toNat + A003982 (2 * n + 1)

end

end A207414.P12952264323026531630

/-!
# A207415: Number of n X 4 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207415, there is no canonical definition to state claims against.
-/

/-! ## A207415.P4244781993298614873

`A207419(∑[n+3]+7)`
-/

namespace A207415.P4244781993298614873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207415.P4244781993298614873

/-! ## A207415.P2999683589398103056

`A207419(A167614(n+2)+1)+A008683(A017137(n)-2)`
-/

namespace A207415.P2999683589398103056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A167614 (n + 2) + 1).toNat + A008683 (A017137 n - 2).toNat

end

end A207415.P2999683589398103056

/-! ## A207415.P14946078203037517894

`A207419(A141214(n+1))%A222117(n)`
-/

namespace A207415.P14946078203037517894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207419 (A141214 (n + 1)).toNat) (A222117 n)

end

end A207415.P14946078203037517894

/-! ## A207415.P8294873909106769650

`or(A207419(A141214(n+1)), A316867(n))`
-/

namespace A207415.P8294873909106769650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207419 (A141214 (n + 1)).toNat) (A316867 n)

end

end A207415.P8294873909106769650

/-! ## A207415.P2760776033750207564

`A207419(A141214(n+1))+A003982(2*n+1)`
-/

namespace A207415.P2760776033750207564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A141214 (n + 1)).toNat + A003982 (2 * n + 1)

end

end A207415.P2760776033750207564

/-!
# A207416: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207416, there is no canonical definition to state claims against.
-/

/-! ## A207416.P13666640312250377681

`A207419(A374005(n+1))`
-/

namespace A207416.P13666640312250377681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A374005 (n + 1)).toNat

end

end A207416.P13666640312250377681

/-! ## A207416.P7960919814864034355

`A207419(A167499(n+3))`
-/

namespace A207416.P7960919814864034355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A167499 (n + 3)).toNat

end

end A207416.P7960919814864034355

/-! ## A207416.P39280212820423269

`A207419(A133263(n+4)+3)`
-/

namespace A207416.P39280212820423269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A133263 (n + 4) + 3).toNat

end

end A207416.P39280212820423269

/-! ## A207416.P4240419451268677527

`A207419(A141214(n+1)+8)`
-/

namespace A207416.P4240419451268677527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A141214 (n + 1) + 8).toNat

end

end A207416.P4240419451268677527

/-! ## A207416.P2455791952074615918

`A207419(A052905(n+1)+10)`
-/

namespace A207416.P2455791952074615918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A052905 (n + 1) + 10).toNat

end

end A207416.P2455791952074615918

/-!
# A207417: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207417, there is no canonical definition to state claims against.
-/

/-! ## A207417.P4690901703271818282

`A207419(A374007(n+1))`
-/

namespace A207417.P4690901703271818282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A374007 (n + 1)).toNat

end

end A207417.P4690901703271818282

/-! ## A207417.P4304665733758314853

`A207419(A000124(n+5)+5)`
-/

namespace A207417.P4304665733758314853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A000124 (n + 5) + 5).toNat

end

end A207417.P4304665733758314853

/-! ## A207417.P7815587373346413272

`A207419(A000217(n+5)+6)`
-/

namespace A207417.P7815587373346413272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A000217 (n + 5) + 6).toNat

end

end A207417.P7815587373346413272

/-! ## A207417.P18331028589400136626

`A207419(A133263(n+6)-(n+2))`
-/

namespace A207417.P18331028589400136626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A207417.P18331028589400136626

/-! ## A207417.P15271629238206197242

`A207419(A167614(n+5)-(n+3))`
-/

namespace A207417.P15271629238206197242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A207417.P15271629238206197242

/-!
# A207418: Number of nX7 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207418, there is no canonical definition to state claims against.
-/

/-! ## A207418.P8496905293974663860

`A207419(A374008(n+1))`
-/

namespace A207418.P8496905293974663860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A374008 (n + 1)).toNat

end

end A207418.P8496905293974663860

/-! ## A207418.P15977058241248956144

`A207419(A133263(n+6)+5)`
-/

namespace A207418.P15977058241248956144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A133263 (n + 6) + 5).toNat

end

end A207418.P15977058241248956144

/-! ## A207418.P9780572278712700563

`A207419(A000217(n+6)+7)`
-/

namespace A207418.P9780572278712700563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A000217 (n + 6) + 7).toNat

end

end A207418.P9780572278712700563

/-! ## A207418.P6083068062326397562

`A207419(A055998(n+4)+10)`
-/

namespace A207418.P6083068062326397562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A055998 (n + 4) + 10).toNat

end

end A207418.P6083068062326397562

/-! ## A207418.P1224189475104367412

`A207419(A027379(n+5)-(n-3))`
-/

namespace A207418.P1224189475104367412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (A027379 (n + 5) - ((n : ℤ) - 3)).toNat

end

end A207418.P1224189475104367412

/-!
# A207420: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207420, there is no canonical definition to state claims against.
-/

/-! ## A207420.P12546576034905736494

`A207426(∑[4*n]+1)`
-/

namespace A207420.P12546576034905736494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207420.P12546576034905736494

/-! ## A207420.P13691783976107008702

`record[A003982(n)*A207426(n+1)]`
-/

namespace A207420.P13691783976107008702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207420.P13691783976107008702

/-! ## A207420.P4755029422832253268

`record[gcd(A166040(n), A207426(n+1))]`
-/

namespace A207420.P4755029422832253268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 n) (A207426 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207420.P4755029422832253268

/-! ## A207420.P14578698544018355789

`gcd(A000038(n), A207426(A001844(n)))`
-/

namespace A207420.P14578698544018355789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207426 (A001844 n).toNat)

end

end A207420.P14578698544018355789

/-! ## A207420.P18296144418485047311

`lcm(A033999(n), A207426(A001844(n)))`
-/

namespace A207420.P18296144418485047311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207426 (A001844 n).toNat)

end

end A207420.P18296144418485047311

/-!
# A207421: Number of nX3 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207421, there is no canonical definition to state claims against.
-/

/-! ## A207421.P2824252448594720478

`sqrt(A207422(n+1))*A038718(n+3)`
-/

namespace A207421.P2824252448594720478
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207422 (n + 1) : ℝ) * (A038718 (n + 3) : ℝ)

end

end A207421.P2824252448594720478

/-! ## A207421.P17870245608577158389

`sqrt(A207069(n+1))*sqrt(A207422(n+1))`
-/

namespace A207421.P17870245608577158389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) : ℝ) * Real.sqrt (A207422 (n + 1) : ℝ)

end

end A207421.P17870245608577158389

/-! ## A207421.P10544127427668130832

`sqrt(A207069(n+1)*A207422(n+1))`
-/

namespace A207421.P10544127427668130832
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) * A207422 (n + 1) : ℝ)

end

end A207421.P10544127427668130832

/-! ## A207421.P1082232599885987538

`A208369(∑[n+3]+1)`
-/

namespace A207421.P1082232599885987538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207421.P1082232599885987538

/-! ## A207421.P11312519188966693403

`A208369(A034856(n+2))+A102683(2*n)`
-/

namespace A207421.P11312519188966693403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A034856 (n + 2)).toNat + A102683 (2 * n)

end

end A207421.P11312519188966693403

/-!
# A207422: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207422, there is no canonical definition to state claims against.
-/

/-! ## A207422.P3462787396965871622

`(A207421(n+1)/A038718(n+3))²`
-/

namespace A207422.P3462787396965871622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207421 (n + 1) : ℚ) / (A038718 (n + 3) : ℚ)) ^ 2

end

end A207422.P3462787396965871622

/-! ## A207422.P9384981442074670641

`A207421(n+1)/A207069(n+1)*A207421(n+1)`
-/

namespace A207422.P9384981442074670641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) : ℚ) / (A207069 (n + 1) : ℚ) * (A207421 (n + 1) : ℚ)

end

end A207422.P9384981442074670641

/-! ## A207422.P7686389464009277752

`A207421(n+1)/A208365(n+1)*A207423(n+1)`
-/

namespace A207422.P7686389464009277752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) : ℚ) / (A208365 (n + 1) : ℚ) * (A207423 (n + 1) : ℚ)

end

end A207422.P7686389464009277752

/-! ## A207422.P10982054586684921875

`A207423(n+1)/A207424(n+1)*A207423(n+1)`
-/

namespace A207422.P10982054586684921875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207423 (n + 1) : ℚ) / (A207424 (n + 1) : ℚ) * (A207423 (n + 1) : ℚ)

end

end A207422.P10982054586684921875

/-! ## A207422.P14881529894605499319

`(A207421(n+1)/A208365(n+1))²*A207424(n+1)`
-/

namespace A207422.P14881529894605499319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207421 (n + 1) : ℚ) / (A208365 (n + 1) : ℚ)) ^ 2 * (A207424 (n + 1) : ℚ)

end

end A207422.P14881529894605499319

/-! ## A207422.P1760649948772937886

`A207421(n+1)²/A207069(n+1)`
-/

namespace A207422.P1760649948772937886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) ^ 2 : ℚ) / (A207069 (n + 1) : ℚ)

end

end A207422.P1760649948772937886

/-! ## A207422.P15749334480624764099

`A207423(n+1)²/A207424(n+1)`
-/

namespace A207422.P15749334480624764099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207423 (n + 1) ^ 2 : ℚ) / (A207424 (n + 1) : ℚ)

end

end A207422.P15749334480624764099

/-!
# A207423: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207423, there is no canonical definition to state claims against.
-/

/-! ## A207423.P2121675934210605147

`A207421(n+1)/A207069(n+1)*A208365(n+1)`
-/

namespace A207423.P2121675934210605147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) : ℚ) / (A207069 (n + 1) : ℚ) * (A208365 (n + 1) : ℚ)

end

end A207423.P2121675934210605147

/-! ## A207423.P14879987684249807221

`sqrt(A207422(n+1))*sqrt(A207424(n+1))`
-/

namespace A207423.P14879987684249807221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207422 (n + 1) : ℝ) * Real.sqrt (A207424 (n + 1) : ℝ)

end

end A207423.P14879987684249807221

/-! ## A207423.P8886614932038034100

`A207421(n+1)/A208365(n+1)*A207424(n+1)`
-/

namespace A207423.P8886614932038034100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) : ℚ) / (A208365 (n + 1) : ℚ) * (A207424 (n + 1) : ℚ)

end

end A207423.P8886614932038034100

/-! ## A207423.P1910547628894425551

`sqrt(A207422(n+1)*A207424(n+1))`
-/

namespace A207423.P1910547628894425551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207422 (n + 1) * A207424 (n + 1) : ℝ)

end

end A207423.P1910547628894425551

/-! ## A207423.P1431715167984860396

`A207426(Δ[A264443(n)])`
-/

namespace A207423.P1431715167984860396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (f1 (n + 1) - f1 n).toNat

end

end A207423.P1431715167984860396

/-!
# A207424: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207424, there is no canonical definition to state claims against.
-/

/-! ## A207424.P3930453586846653030

`A207423(n+1)/A207422(n+1)*A207423(n+1)`
-/

namespace A207424.P3930453586846653030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207423 (n + 1) : ℚ) / (A207422 (n + 1) : ℚ) * (A207423 (n + 1) : ℚ)

end

end A207424.P3930453586846653030

/-! ## A207424.P13406388900229968501

`A207423(n+1)/A207421(n+1)*A208365(n+1)`
-/

namespace A207424.P13406388900229968501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207423 (n + 1) : ℚ) / (A207421 (n + 1) : ℚ) * (A208365 (n + 1) : ℚ)

end

end A207424.P13406388900229968501

/-! ## A207424.P13616430675033798764

`A208365(n+1)/A207069(n+1)*A208365(n+1)`
-/

namespace A207424.P13616430675033798764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208365 (n + 1) : ℚ) / (A207069 (n + 1) : ℚ) * (A208365 (n + 1) : ℚ)

end

end A207424.P13616430675033798764

/-! ## A207424.P10851779302502062157

`A208365(n+1)²/A207069(n+1)`
-/

namespace A207424.P10851779302502062157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208365 (n + 1) ^ 2 : ℚ) / (A207069 (n + 1) : ℚ)

end

end A207424.P10851779302502062157

/-! ## A207424.P1377679307926872479

`A207423(n+1)²/A207422(n+1)`
-/

namespace A207424.P1377679307926872479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207423 (n + 1) ^ 2 : ℚ) / (A207422 (n + 1) : ℚ)

end

end A207424.P1377679307926872479

/-!
# A207425: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207425, there is no canonical definition to state claims against.
-/

/-! ## A207425.P7041002581415232278

`A208365(n+1)/A207069(n+1)*A208366(n+1)`
-/

namespace A207425.P7041002581415232278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208365 (n + 1) : ℚ) / (A207069 (n + 1) : ℚ) * (A208366 (n + 1) : ℚ)

end

end A207425.P7041002581415232278

/-! ## A207425.P11896881599257471567

`A207426(A055999(n+4))`
-/

namespace A207425.P11896881599257471567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A055999 (n + 4)).toNat

end

end A207425.P11896881599257471567

/-! ## A207425.P14584496811689433813

`A207426(eq[6, A193592(n)])`
-/

namespace A207425.P14584496811689433813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207425.P14584496811689433813

/-! ## A207425.P10226193831232570260

`A207426(A161680(n+10)-A005408(n+11))`
-/

namespace A207425.P10226193831232570260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A161680 (n + 10) - A005408 (n + 11)).toNat

end

end A207425.P10226193831232570260

/-! ## A207425.P5815429986792177021

`A207426(eq[7, A200370(n+1)])`
-/

namespace A207425.P5815429986792177021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207425.P5815429986792177021

/-!
# A207426: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207426, there is no canonical definition to state claims against.
-/

/-! ## A207426.P11949455142949053049

`A207741(n+1)%A034316(n)`
-/

namespace A207426.P11949455142949053049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207741 (n + 1)) (A034316 n)

end

end A207426.P11949455142949053049

/-! ## A207426.P14330515064131712196

`A207741(C(A269171(n+1), n))`
-/

namespace A207426.P14330515064131712196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (Nat.choose (A269171 (n + 1)).toNat n)

end

end A207426.P14330515064131712196

/-! ## A207426.P3711046104282026107

`A207741(ceil(sqrt(A157615(n+1))))`
-/

namespace A207426.P3711046104282026107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 ⌈Real.sqrt (A157615 (n + 1) : ℝ)⌉.toNat

end

end A207426.P3711046104282026107

/-! ## A207426.P9237793526568432670

`A207741(n+1)^A186746(n)!`
-/

namespace A207426.P9237793526568432670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (n + 1) ^ Nat.factorial (A186746 n).toNat

end

end A207426.P9237793526568432670

/-! ## A207426.P610198476426155684

`A207741(C(A326590(n), n+1)+n+1)`
-/

namespace A207426.P610198476426155684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (Nat.choose (A326590 n).toNat (n + 1) + (n + 1))

end

end A207426.P610198476426155684

/-!
# A207427: Number of 3Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207427, there is no canonical definition to state claims against.
-/

/-! ## A207427.P10946437241944825774

`A207741(∑[n+2]+4)`
-/

namespace A207427.P10946437241944825774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207427.P10946437241944825774

/-! ## A207427.P11003104217934135015

`or(A000038(n), A207741(A167614(n+1)))`
-/

namespace A207427.P11003104217934135015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A207741 (A167614 (n + 1)).toNat)

end

end A207427.P11003104217934135015

/-! ## A207427.P12893998004388451211

`A207741(A167614(n+1))+A000007(n+1)`
-/

namespace A207427.P12893998004388451211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A207427.P12893998004388451211

/-! ## A207427.P6573232009174156006

`A133707(n+1)*A207741(A167614(n+1))`
-/

namespace A207427.P6573232009174156006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A207741 (A167614 (n + 1)).toNat

end

end A207427.P6573232009174156006

/-! ## A207427.P12384422840651307366

`A242096(2*n)+A207741(A167614(n+1))`
-/

namespace A207427.P12384422840651307366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (2 * n) + A207741 (A167614 (n + 1)).toNat

end

end A207427.P12384422840651307366

/-!
# A207428: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207428, there is no canonical definition to state claims against.
-/

/-! ## A207428.P802658259111563407

`A207426(A141214(n)+7)`
-/

namespace A207428.P802658259111563407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A141214 n + 7).toNat

end

end A207428.P802658259111563407

/-! ## A207428.P4997590424497405969

`A207426(A052905(n)+9)`
-/

namespace A207428.P4997590424497405969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A052905 n + 9).toNat

end

end A207428.P4997590424497405969

/-! ## A207428.P12812012867296598604

`A207426(A055999(n)+10)`
-/

namespace A207428.P12812012867296598604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A055999 n + 10).toNat

end

end A207428.P12812012867296598604

/-! ## A207428.P3001171477051004696

`A207426(Δ[A008778(n)]+6)`
-/

namespace A207428.P3001171477051004696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (f1 (n + 1) - f1 n + 6).toNat

end

end A207428.P3001171477051004696

/-! ## A207428.P8288134700086068004

`A207426(A167614(n+2)+1)`
-/

namespace A207428.P8288134700086068004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A167614 (n + 2) + 1).toNat

end

end A207428.P8288134700086068004

/-!
# A207429: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207429, there is no canonical definition to state claims against.
-/

/-! ## A207429.P16803699990584572067

`A207426(A167499(n+3))`
-/

namespace A207429.P16803699990584572067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A167499 (n + 3)).toNat

end

end A207429.P16803699990584572067

/-! ## A207429.P3172075162410407833

`A207426(A133263(n+4)+3)`
-/

namespace A207429.P3172075162410407833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A133263 (n + 4) + 3).toNat

end

end A207429.P3172075162410407833

/-! ## A207429.P3001128469501197373

`A207426(A000217(n+4)+5)`
-/

namespace A207429.P3001128469501197373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A000217 (n + 4) + 5).toNat

end

end A207429.P3001128469501197373

/-! ## A207429.P18175062936633488261

`A207426(A052905(n+1)+10)`
-/

namespace A207429.P18175062936633488261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A052905 (n + 1) + 10).toNat

end

end A207429.P18175062936633488261

/-! ## A207429.P16365359558254856936

`A207426(A000124(n+5)-(n+1))`
-/

namespace A207429.P16365359558254856936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A207429.P16365359558254856936

/-!
# A207430: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207430, there is no canonical definition to state claims against.
-/

/-! ## A207430.P273657236996237242

`A207426(A166136(n+4))`
-/

namespace A207430.P273657236996237242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A166136 (n + 4)).toNat

end

end A207430.P273657236996237242

/-! ## A207430.P14949232776518393263

`A207426(A056115(n)+21)`
-/

namespace A207430.P14949232776518393263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A056115 n + 21).toNat

end

end A207430.P14949232776518393263

/-! ## A207430.P17436094995171573201

`A207426(A000124(n+5)+5)`
-/

namespace A207430.P17436094995171573201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A000124 (n + 5) + 5).toNat

end

end A207430.P17436094995171573201

/-! ## A207430.P4405847725801017736

`A207426(A000096(n+4)+7)`
-/

namespace A207430.P4405847725801017736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A000096 (n + 4) + 7).toNat

end

end A207430.P4405847725801017736

/-! ## A207430.P585866746465052295

`A207426(eq[7, A131818(n+1)])`
-/

namespace A207430.P585866746465052295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207430.P585866746465052295

/-!
# A207431: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207431, there is no canonical definition to state claims against.
-/

/-! ## A207431.P3961304016631524631

`A207426(A167487(n+5))`
-/

namespace A207431.P3961304016631524631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A167487 (n + 5)).toNat

end

end A207431.P3961304016631524631

/-! ## A207431.P3601653951779445482

`A207426(A056119(n)+28)`
-/

namespace A207431.P3601653951779445482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A056119 n + 28).toNat

end

end A207431.P3601653951779445482

/-! ## A207431.P13590678172091932840

`A207426(eq[11, A066657(n)])`
-/

namespace A207431.P13590678172091932840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207431.P13590678172091932840

/-! ## A207431.P14942533275362108594

`A207426(A167499(n+5)+2)`
-/

namespace A207431.P14942533275362108594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (A167499 (n + 5) + 2).toNat

end

end A207431.P14942533275362108594

/-! ## A207431.P1956831157583395291

`A207426(eq[8, A131818(n+1)])`
-/

namespace A207431.P1956831157583395291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207431.P1956831157583395291

/-!
# A207432: Positions of primes in A066680, the badly sieved numbers.

The programs for A207432, there is no canonical definition to state claims against.
-/

/-! ## A207432.P104565168665742573

`eq[2, A000005(A066680(n+1))]+1`
-/

namespace A207432.P104565168665742573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A066680 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A207432.P104565168665742573

/-! ## A207432.P14958981809929050241

`record[A000027(n+1)%A020639(A066680(n+1))]`
-/

namespace A207432.P14958981809929050241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A020639 (A066680 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207432.P14958981809929050241

/-! ## A207432.P1187678311245294571

`record[(A005408(n)-n)%A020639(A066680(n+1))]`
-/

namespace A207432.P1187678311245294571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n - (n : ℤ)) (A020639 (A066680 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207432.P1187678311245294571

/-! ## A207432.P6636758502950734101

`record[(A004273(n+1)-n)%A020639(A066680(n+1))]`
-/

namespace A207432.P6636758502950734101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (n + 1) - (n : ℤ)) (A020639 (A066680 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207432.P6636758502950734101

/-! ## A207432.P8847589052422362971

`record[A028242(2*n)%A020639(A066680(n+1))]`
-/

namespace A207432.P8847589052422362971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028242 (2 * n)) (A020639 (A066680 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207432.P8847589052422362971

/-! ## A207432.P6584421447142578171

`A066682(A000040(n+1))`
-/

namespace A207432.P6584421447142578171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066682 (A000040 (n + 1)).toNat

end

end A207432.P6584421447142578171

/-! ## A207432.P621784733009878087

`A066682(A008578(n+2))`
-/

namespace A207432.P621784733009878087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066682 (A008578 (n + 2)).toNat

end

end A207432.P621784733009878087

/-! ## A207432.P5489093432194425671

`A066682(A182986(n+2))`
-/

namespace A207432.P5489093432194425671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066682 (A182986 (n + 2)).toNat

end

end A207432.P5489093432194425671

/-! ## A207432.P1749908587192661675

`A066683(A000040(2*n+1-n))`
-/

namespace A207432.P1749908587192661675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066683 (A000040 (2 * n + 1 - n)).toNat

end

end A207432.P1749908587192661675

/-! ## A207432.P4148575534791045734

`A066682(p?[A066682(n+1)])`
-/

namespace A207432.P4148575534791045734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066682 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A207432.P4148575534791045734

/-!
# A207433: G.f.: Sum_{n>=0} Product_{k=1..n} (q^k - 1) where q = (1-x^3)/(1-x).

The programs for A207433, there is no canonical definition to state claims against.
-/

/-! ## A207433.P8389257688578491574

`xor(1, A340039(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A207433.P8389257688578491574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 1 (A340039 (a (n - 1)).toNat)

end

end A207433.P8389257688578491574

/-! ## A207433.P5003830530828309900

`A008617(3*floor(Δ[e*n!]))`
-/

namespace A207433.P5003830530828309900
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (3 * ⌊f1 (n + 1) - f1 n⌋).toNat

end

end A207433.P5003830530828309900

/-!
# A207434: L.g.f.: log( Sum_{n>=0} Product_{k=1..n} ((1+x)^k - 1) ) = Sum_{n>=1} a(n)*x^n/n.

The programs for A207434, there is no canonical definition to state claims against.
-/

/-! ## A207434.P8554455547260509136

`A111546(n)+A056239(A152804(n))`
-/

namespace A207434.P8554455547260509136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111546 n + A056239 (A152804 n).toNat

end

end A207434.P8554455547260509136

/-!
# A207435: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207435, there is no canonical definition to state claims against.
-/

/-! ## A207435.P3924600679181673946

`A207442(∑[4*n]+1)`
-/

namespace A207435.P3924600679181673946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207435.P3924600679181673946

/-! ## A207435.P5363293070178345833

`record[root(A207442(n+1), A143182(n))]`
-/

namespace A207435.P5363293070178345833
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207442 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207435.P5363293070178345833

/-! ## A207435.P11183739971757937389

`record[gcd(A049581(n), A207442(n+1))]`
-/

namespace A207435.P11183739971757937389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A207442 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207435.P11183739971757937389

/-! ## A207435.P13204035951274244695

`gcd(A000038(n), A207442(A001844(n)))`
-/

namespace A207435.P13204035951274244695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207442 (A001844 n).toNat)

end

end A207435.P13204035951274244695

/-! ## A207435.P11619147470718114927

`A000041(gcd(n, n+1))*A207442(A001844(n))`
-/

namespace A207435.P11619147470718114927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A207442 (A001844 n).toNat

end

end A207435.P11619147470718114927

/-!
# A207436: Number of n X 2 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207436, the canonical program `A207436.P9603607475832836743` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207436 has offset 1).

The definition of A207436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207436.P12551892666457578103

`record[floor(ϕ*a(n-2))]²` with `a(0)=2, a(1)=4`
-/

namespace A207436.P12551892666457578103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A207436.P12551892666457578103

namespace A207436

/-- `record[floor(ϕ*a(n-2))]²` -/
def P12551892666457578103.Spec : Prop :=
  ∀ n, P12551892666457578103.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P14744233243889456151

`∑[round(ϕ*a(n-1))]²` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A207436.P14744233243889456151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207436.P14744233243889456151

namespace A207436

/-- `∑[round(ϕ*a(n-1))]²` -/
def P14744233243889456151.Spec : Prop :=
  ∀ n, P14744233243889456151.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P9603607475832836743

`∑[a(n-1)+a(n-2)]²` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207436

/-- `∑[a(n-1)+a(n-2)]²` -/
def P9603607475832836743.Spec : Prop :=
  ∀ n, (P9603607475832836743.a n : ℤ) = A207436 (n + 1)

theorem P9603607475832836743.correct : P9603607475832836743.Spec := by
  intro n
  simp only [A207436, Nat.add_sub_cancel]

end A207436

/-! ## A207436.P12123086130940623778

`ogf((4-20x^2-7x^3+24x^4+6x^5-5x^6)/(1-4x+2x^2+6x^3-4x^4-2x^5+x^6))`
-/

namespace A207436.P12123086130940623778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -20, -7, 24, 6, -5] [1, -4, 2, 6, -4, -2, 1] n

end

end A207436.P12123086130940623778

namespace A207436

/-- `ogf((4-20x^2-7x^3+24x^4+6x^5-5x^6)/(1-4x+2x^2+6x^3-4x^4-2x^5+x^6))` -/
def P12123086130940623778.Spec : Prop :=
  ∀ n, P12123086130940623778.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P12172015189196394412

`(A071679(n+1)+1)²`
-/

namespace A207436.P12172015189196394412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071679 (n + 1) + 1) ^ 2

end

end A207436.P12172015189196394412

namespace A207436

/-- `(A071679(n+1)+1)²` -/
def P12172015189196394412.Spec : Prop :=
  ∀ n, P12172015189196394412.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P10176201507795273851

`A259623(2*(n+1))²`
-/

namespace A207436.P10176201507795273851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (2 * (n + 1)) ^ 2

end

end A207436.P10176201507795273851

namespace A207436

/-- `A259623(2*(n+1))²` -/
def P10176201507795273851.Spec : Prop :=
  ∀ n, P10176201507795273851.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P13494024791637006030

`(A116470(2*n+1)+1)²`
-/

namespace A207436.P13494024791637006030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116470 (2 * n + 1) + 1) ^ 2

end

end A207436.P13494024791637006030

namespace A207436

/-- `(A116470(2*n+1)+1)²` -/
def P13494024791637006030.Spec : Prop :=
  ∀ n, P13494024791637006030.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P6828973993725240584

`(A061489(2*n+1)+2)²`
-/

namespace A207436.P6828973993725240584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061489 (2 * n + 1) + 2) ^ 2

end

end A207436.P6828973993725240584

namespace A207436

/-- `(A061489(2*n+1)+2)²` -/
def P6828973993725240584.Spec : Prop :=
  ∀ n, P6828973993725240584.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P11725264587840594686

`(A258085(2*n+1)+2)²`
-/

namespace A207436.P11725264587840594686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A258085 (2 * n + 1) + 2) ^ 2

end

end A207436.P11725264587840594686

namespace A207436

/-- `(A258085(2*n+1)+2)²` -/
def P11725264587840594686.Spec : Prop :=
  ∀ n, P11725264587840594686.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P1287199705006176809

`(A000045(n+3)+ceil(sin(n)²))²`
-/

namespace A207436.P1287199705006176809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) + ⌈Real.sin (n : ℝ) ^ 2⌉) ^ 2

end

end A207436.P1287199705006176809

namespace A207436

/-- `(A000045(n+3)+ceil(sin(n)²))²` -/
def P1287199705006176809.Spec : Prop :=
  ∀ n, P1287199705006176809.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P3044419285392673913

`∑[A000045(n+1)+C(n, n²)]²`
-/

namespace A207436.P3044419285392673913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207436.P3044419285392673913

namespace A207436

/-- `∑[A000045(n+1)+C(n, n²)]²` -/
def P3044419285392673913.Spec : Prop :=
  ∀ n, P3044419285392673913.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P14003613139667309126

`(A000045(n+3-C(2, n+2))+1)²`
-/

namespace A207436.P14003613139667309126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3 - Nat.choose 2 (n + 2)) + 1) ^ 2

end

end A207436.P14003613139667309126

namespace A207436

/-- `(A000045(n+3-C(2, n+2))+1)²` -/
def P14003613139667309126.Spec : Prop :=
  ∀ n, P14003613139667309126.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P14267761715609355856

`(A000045(gcd(n+3, C(2, n+2)))+1)²`
-/

namespace A207436.P14267761715609355856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (Nat.gcd (n + 3) (Nat.choose 2 (n + 2))) + 1) ^ 2

end

end A207436.P14267761715609355856

namespace A207436

/-- `(A000045(gcd(n+3, C(2, n+2)))+1)²` -/
def P14267761715609355856.Spec : Prop :=
  ∀ n, P14267761715609355856.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P3930035691928147761

`∑[A000045(floor(2/(n+1)+n+1))]²`
-/

namespace A207436.P3930035691928147761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊2 / (n + 1 : ℚ) + (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207436.P3930035691928147761

namespace A207436

/-- `∑[A000045(floor(2/(n+1)+n+1))]²` -/
def P3930035691928147761.Spec : Prop :=
  ∀ n, P3930035691928147761.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P17330646677506686340

`∑[A000045(n-1)+a(n-1)]²` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A207436.P17330646677506686340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  A000045 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207436.P17330646677506686340

namespace A207436

/-- `∑[A000045(n-1)+a(n-1)]²` -/
def P17330646677506686340.Spec : Prop :=
  ∀ n, P17330646677506686340.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P15192201161255046668

`(A123231(A103517(n))+1)²`
-/

namespace A207436.P15192201161255046668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123231 (A103517 n).toNat + 1) ^ 2

end

end A207436.P15192201161255046668

namespace A207436

/-- `(A123231(A103517(n))+1)²` -/
def P15192201161255046668.Spec : Prop :=
  ∀ n, P15192201161255046668.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P17396090511847074539

`(A057427(n)+A020695(n))²`
-/

namespace A207436.P17396090511847074539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + A020695 n) ^ 2

end

end A207436.P17396090511847074539

namespace A207436

/-- `(A057427(n)+A020695(n))²` -/
def P17396090511847074539.Spec : Prop :=
  ∀ n, P17396090511847074539.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P15063035000448360255

`(A000007(n)-A048577(n))²`
-/

namespace A207436.P15063035000448360255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - A048577 n) ^ 2

end

end A207436.P15063035000448360255

namespace A207436

/-- `(A000007(n)-A048577(n))²` -/
def P15063035000448360255.Spec : Prop :=
  ∀ n, P15063035000448360255.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P8731396514275241867

`record[(A000045(A019303(n))+1)²]`
-/

namespace A207436.P8731396514275241867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (A019303 n).toNat + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207436.P8731396514275241867

namespace A207436

/-- `record[(A000045(A019303(n))+1)²]` -/
def P8731396514275241867.Spec : Prop :=
  ∀ n, P8731396514275241867.a n = A207436 (n + 1)

end A207436

/-! ## A207436.P16783504305956954913

`record[(A000045(A267184(n))+1)²]`
-/

namespace A207436.P16783504305956954913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (A267184 n).toNat + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207436.P16783504305956954913

namespace A207436

/-- `record[(A000045(A267184(n))+1)²]` -/
def P16783504305956954913.Spec : Prop :=
  ∀ n, P16783504305956954913.a n = A207436 (n + 1)

end A207436

/-!
# A207437: Number of n X 3 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207437, there is no canonical definition to state claims against.
-/

/-! ## A207437.P8159537811624590478

`A207442(∑[n+3]+1)`
-/

namespace A207437.P8159537811624590478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207437.P8159537811624590478

/-! ## A207437.P3277836343305547731

`or(A000038(n), A207442(A034856(n+2)))`
-/

namespace A207437.P3277836343305547731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A207442 (A034856 (n + 2)).toNat)

end

end A207437.P3277836343305547731

/-! ## A207437.P10977565339157339996

`A207442(A034856(n+2))+A000007(n+1)`
-/

namespace A207437.P10977565339157339996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A207437.P10977565339157339996

/-! ## A207437.P15249119973285940584

`A207442(A034856(n+2))+A000038(n+1)`
-/

namespace A207437.P15249119973285940584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A207437.P15249119973285940584

/-! ## A207437.P16769357262242029987

`A207442(A034856(n+2))+A000035(2*n)`
-/

namespace A207437.P16769357262242029987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A034856 (n + 2)).toNat + A000035 (2 * n)

end

end A207437.P16769357262242029987

/-!
# A207438: Number of nX4 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207438, there is no canonical definition to state claims against.
-/

/-! ## A207438.P7267335110376416057

`A207442(A141214(n+1))`
-/

namespace A207438.P7267335110376416057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A141214 (n + 1)).toNat

end

end A207438.P7267335110376416057

/-! ## A207438.P17271316706681495099

`A207442(A027379(n+2))`
-/

namespace A207438.P17271316706681495099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A027379 (n + 2)).toNat

end

end A207438.P17271316706681495099

/-! ## A207438.P9904944704588380331

`A207442(A055998(n+2))`
-/

namespace A207438.P9904944704588380331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A055998 (n + 2)).toNat

end

end A207438.P9904944704588380331

/-! ## A207438.P13753769540832131273

`A207442(Δ[A006503(n+1)])`
-/

namespace A207438.P13753769540832131273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (f1 (n + 1) - f1 n).toNat

end

end A207438.P13753769540832131273

/-! ## A207438.P13721491785095743377

`A207442(Δ[A006416(n+2)])`
-/

namespace A207438.P13721491785095743377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (f1 (n + 1) - f1 n).toNat

end

end A207438.P13721491785095743377

/-!
# A207439: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207439, there is no canonical definition to state claims against.
-/

/-! ## A207439.P15220201239911535430

`A207442(Δ[A264443(n)])`
-/

namespace A207439.P15220201239911535430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (f1 (n + 1) - f1 n).toNat

end

end A207439.P15220201239911535430

/-! ## A207439.P4696045483203089415

`A207442(A056115(n)+11)`
-/

namespace A207439.P4696045483203089415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A056115 n + 11).toNat

end

end A207439.P4696045483203089415

/-! ## A207439.P8594246387115818420

`A207442(eq[4, A193592(n)])`
-/

namespace A207439.P8594246387115818420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207439.P8594246387115818420

/-! ## A207439.P9172552693575055971

`A207442(Δ[A023545(n+1)])`
-/

namespace A207439.P9172552693575055971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (f1 (n + 1) - f1 n).toNat

end

end A207439.P9172552693575055971

/-! ## A207439.P17030094257381947826

`A207442(eq[10, A239829(n+1)])`
-/

namespace A207439.P17030094257381947826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207439.P17030094257381947826

/-!
# A207440: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207440, there is no canonical definition to state claims against.
-/

/-! ## A207440.P7509427796314976407

`A207442(A052905(n+3))`
-/

namespace A207440.P7509427796314976407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A052905 (n + 3)).toNat

end

end A207440.P7509427796314976407

/-! ## A207440.P7766786745912169256

`A207442(eq[3, A219347(n)])`
-/

namespace A207440.P7766786745912169256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207440.P7766786745912169256

/-! ## A207440.P16416680536563607296

`A207442(eq[5, A193592(n)])`
-/

namespace A207440.P16416680536563607296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207440.P16416680536563607296

/-! ## A207440.P342916973163871588

`A207442(A055999(n+3)+1)`
-/

namespace A207440.P342916973163871588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A055999 (n + 3) + 1).toNat

end

end A207440.P342916973163871588

/-! ## A207440.P1901413553123563429

`A207442(A034856(n+5)-3)`
-/

namespace A207440.P1901413553123563429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A034856 (n + 5) - 3).toNat

end

end A207440.P1901413553123563429

/-!
# A207441: Number of nX7 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207441, there is no canonical definition to state claims against.
-/

/-! ## A207441.P5466143420181195545

`A207442(A056121(n)+22)`
-/

namespace A207441.P5466143420181195545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A056121 n + 22).toNat

end

end A207441.P5466143420181195545

/-! ## A207441.P10959075424048107002

`A207442(eq[4, A219347(n)])`
-/

namespace A207441.P10959075424048107002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207441.P10959075424048107002

/-! ## A207441.P15180270812617260194

`A207442(eq[6, A193592(n)])`
-/

namespace A207441.P15180270812617260194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207441.P15180270812617260194

/-! ## A207441.P14971065653919717513

`A207442(A034856(n+5)+n+3)`
-/

namespace A207441.P14971065653919717513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A034856 (n + 5) + (n + 3 : ℤ)).toNat

end

end A207441.P14971065653919717513

/-! ## A207441.P16062910531168424432

`A207442(eq[7, A200370(n+1)])`
-/

namespace A207441.P16062910531168424432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207441.P16062910531168424432

/-!
# A207442: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207442, there is no canonical definition to state claims against.
-/

/-! ## A207442.P6931305088783368945

`A241466(A055652(n))+A207564(n+1)`
-/

namespace A207442.P6931305088783368945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241466 (A055652 n).toNat + A207564 (n + 1)

end

end A207442.P6931305088783368945

/-! ## A207442.P13313236163836101694

`A207391(n+1)+A067169(A193842(n))`
-/

namespace A207442.P13313236163836101694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (n + 1) + A067169 ((A193842 n).toNat + 11)

end

end A207442.P13313236163836101694

/-! ## A207442.P4505108939651164970

`A207938(n+1)+A067169(A193842(n))`
-/

namespace A207442.P4505108939651164970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (n + 1) + A067169 ((A193842 n).toNat + 11)

end

end A207442.P4505108939651164970

/-! ## A207442.P2259247651698693251

`A349797(A000930(n))+A207123(n+1)`
-/

namespace A207442.P2259247651698693251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A000930 n).toNat + A207123 (n + 1)

end

end A207442.P2259247651698693251

/-! ## A207442.P3243291000514342194

`xor(A067169(A193842(n)), A207068(n+1))`
-/

namespace A207442.P3243291000514342194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067169 ((A193842 n).toNat + 11)) (A207068 (n + 1))

end

end A207442.P3243291000514342194

/-!
# A207443: Number of 3Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207443, there is no canonical definition to state claims against.
-/

/-! ## A207443.P15742042609412646954

`A207442(∑[n+2]+4)`
-/

namespace A207443.P15742042609412646954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207443.P15742042609412646954

/-! ## A207443.P14633348312649831523

`or(char[3], A207442(A167499(n)+n))`
-/

namespace A207443.P14633348312649831523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207442 (A167499 n + (n : ℤ)).toNat)

end

end A207443.P14633348312649831523

/-! ## A207443.P1778515570808631888

`A349797(n+1)+A207442(A167614(n+1))`
-/

namespace A207443.P1778515570808631888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (n + 1) + A207442 (A167614 (n + 1)).toNat

end

end A207443.P1778515570808631888

/-! ## A207443.P11918841939941535818

`A133707(n+1)*A207442(A167614(n+1))`
-/

namespace A207443.P11918841939941535818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A207442 (A167614 (n + 1)).toNat

end

end A207443.P11918841939941535818

/-! ## A207443.P8227072572184633733

`A207442(A167614(n+1))/and(1, A127229(n+5))`
-/

namespace A207443.P8227072572184633733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207442 (A167614 (n + 1)).toNat : ℚ) / (Int.land 1 (A127229 (n + 5)) : ℚ)

end

end A207443.P8227072572184633733

/-!
# A207444: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207444, there is no canonical definition to state claims against.
-/

/-! ## A207444.P3703211785669630958

`A207442(A141214(n)+7)`
-/

namespace A207444.P3703211785669630958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A141214 n + 7).toNat

end

end A207444.P3703211785669630958

/-! ## A207444.P1774100339215646954

`A207442(A052905(n)+9)`
-/

namespace A207444.P1774100339215646954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A052905 n + 9).toNat

end

end A207444.P1774100339215646954

/-! ## A207444.P14090779923211909714

`A207442(A055999(n)+10)`
-/

namespace A207444.P14090779923211909714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A055999 n + 10).toNat

end

end A207444.P14090779923211909714

/-! ## A207444.P10657955517711206724

`A207442(A167614(n+2)+1)`
-/

namespace A207444.P10657955517711206724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A167614 (n + 2) + 1).toNat

end

end A207444.P10657955517711206724

/-! ## A207444.P18217570829014795243

`A207442(A112355(n+1)+4)`
-/

namespace A207444.P18217570829014795243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A112355 (n + 1) + 4).toNat

end

end A207444.P18217570829014795243

/-!
# A207445: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207445, there is no canonical definition to state claims against.
-/

/-! ## A207445.P15723834300088791817

`A207442(A056000(n)+15)`
-/

namespace A207445.P15723834300088791817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A056000 n + 15).toNat

end

end A207445.P15723834300088791817

/-! ## A207445.P13622382347681760792

`A207442(A000217(n+4)+5)`
-/

namespace A207445.P13622382347681760792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A000217 (n + 4) + 5).toNat

end

end A207445.P13622382347681760792

/-! ## A207445.P14347901892449099614

`A207442(A055998(n+2)+8)`
-/

namespace A207445.P14347901892449099614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A055998 (n + 2) + 8).toNat

end

end A207445.P14347901892449099614

/-! ## A207445.P3742248450341143051

`A207442(A052905(n+1)+10)`
-/

namespace A207445.P3742248450341143051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A052905 (n + 1) + 10).toNat

end

end A207445.P3742248450341143051

/-! ## A207445.P2702918691229326508

`A207442(A055999(n+3)-2*n)`
-/

namespace A207445.P2702918691229326508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A207445.P2702918691229326508

/-!
# A207446: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207446, there is no canonical definition to state claims against.
-/

/-! ## A207446.P1477269804225435249

`A207442(A166136(n+4))`
-/

namespace A207446.P1477269804225435249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A166136 (n + 4)).toNat

end

end A207446.P1477269804225435249

/-! ## A207446.P9081909643688041858

`A207442(A056115(n)+21)`
-/

namespace A207446.P9081909643688041858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A056115 n + 21).toNat

end

end A207446.P9081909643688041858

/-! ## A207446.P9538947572698931419

`A207442(A167499(n+4)+1)`
-/

namespace A207446.P9538947572698931419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A167499 (n + 4) + 1).toNat

end

end A207446.P9538947572698931419

/-! ## A207446.P8522745717135424796

`A207442(A133263(n+5)+4)`
-/

namespace A207446.P8522745717135424796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A133263 (n + 5) + 4).toNat

end

end A207446.P8522745717135424796

/-! ## A207446.P17400344422910721651

`A207442(eq[7, A131818(n+1)])`
-/

namespace A207446.P17400344422910721651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207446.P17400344422910721651

/-!
# A207447: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207447, there is no canonical definition to state claims against.
-/

/-! ## A207447.P11706527495249271415

`A207442(eq[11, A066657(n)])`
-/

namespace A207447.P11706527495249271415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207447.P11706527495249271415

/-! ## A207447.P17571993280713450407

`A207442(A167614(n+5)+4)`
-/

namespace A207447.P17571993280713450407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A167614 (n + 5) + 4).toNat

end

end A207447.P17571993280713450407

/-! ## A207447.P7305610030037304924

`A207442(A000217(n+6)+7)`
-/

namespace A207447.P7305610030037304924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A000217 (n + 6) + 7).toNat

end

end A207447.P7305610030037304924

/-! ## A207447.P7212098996969967872

`A207442(A052905(n+3)+12)`
-/

namespace A207447.P7212098996969967872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A052905 (n + 3) + 12).toNat

end

end A207447.P7212098996969967872

/-! ## A207447.P15405277998015907742

`A207442(eq[8, A131818(n+1)])`
-/

namespace A207447.P15405277998015907742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207447.P15405277998015907742

/-!
# A207448: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207448, there is no canonical definition to state claims against.
-/

/-! ## A207448.P8307840387380941673

`A207453(∑[4*n]+1)`
-/

namespace A207448.P8307840387380941673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207448.P8307840387380941673

/-! ## A207448.P2623251782257009782

`lcm(2, A207453(A001844(n)))`
-/

namespace A207448.P2623251782257009782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207453 (A001844 n).toNat)

end

end A207448.P2623251782257009782

/-! ## A207448.P14513106476862712207

`record[gcd(A003987(n), A207453(n+1))]`
-/

namespace A207448.P14513106476862712207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A207453 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207448.P14513106476862712207

/-! ## A207448.P1245884252294166462

`gcd(A000038(n), A207453(A001844(n)))`
-/

namespace A207448.P1245884252294166462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207453 (A001844 n).toNat)

end

end A207448.P1245884252294166462

/-! ## A207448.P6360551276963208159

`A207453(A001844(n))%A231514(n+1)`
-/

namespace A207448.P6360551276963208159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207453 (A001844 n).toNat) (A231514 (n + 1))

end

end A207448.P6360551276963208159

/-!
# A207449: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207449, the canonical program `A207449.P11585593756961489434` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207449 has offset 1).

The definition of A207449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207449.P11585593756961489434

`10*(n*(n+2)²+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207449

/-- `10*(n*(n+2)²+1)` -/
def P11585593756961489434.Spec : Prop :=
  ∀ n, (P11585593756961489434.a n : ℤ) = A207449 (n + 1)

theorem P11585593756961489434.correct : P11585593756961489434.Spec := by
  intro n
  simp only [A207449, Nat.add_sub_cancel]

end A207449

/-! ## A207449.P658974316993984427

`ogf((10+60x-10x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A207449.P658974316993984427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 60, -10] [1, -4, 6, -4, 1] n

end

end A207449.P658974316993984427

namespace A207449

/-- `ogf((10+60x-10x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P658974316993984427.Spec : Prop :=
  ∀ n, P658974316993984427.a n = A207449 (n + 1)

end A207449

/-! ## A207449.P8714945059913256543

`∑[10*A144390(n+1)]`
-/

namespace A207449.P8714945059913256543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A144390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207449.P8714945059913256543

namespace A207449

/-- `∑[10*A144390(n+1)]` -/
def P8714945059913256543.Spec : Prop :=
  ∀ n, P8714945059913256543.a n = A207449 (n + 1)

end A207449

/-! ## A207449.P7522241885680472463

`∑[10*(A140676(n)+1+n)]`
-/

namespace A207449.P7522241885680472463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A140676 n + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207449.P7522241885680472463

namespace A207449

/-- `∑[10*(A140676(n)+1+n)]` -/
def P7522241885680472463.Spec : Prop :=
  ∀ n, P7522241885680472463.a n = A207449 (n + 1)

end A207449

/-! ## A207449.P14473411634465783476

`∑[5*(n*(A016945(n)+7)+2)]`
-/

namespace A207449.P14473411634465783476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * (A016945 n + 7) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207449.P14473411634465783476

namespace A207449

/-- `∑[5*(n*(A016945(n)+7)+2)]` -/
def P14473411634465783476.Spec : Prop :=
  ∀ n, P14473411634465783476.a n = A207449 (n + 1)

end A207449

/-! ## A207449.P594744410270823453

`A207598(n+1)/A017569(n)`
-/

namespace A207449.P594744410270823453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207598 (n + 1) : ℚ) / (A017569 n : ℚ)

end

end A207449.P594744410270823453

namespace A207449

/-- `A207598(n+1)/A017569(n)` -/
def P594744410270823453.Spec : Prop :=
  ∀ n, P594744410270823453.a n = (A207449 (n + 1) : ℚ)

end A207449

/-! ## A207449.P6693162372467420520

`A213832(n+1)+A207020(n+1)`
-/

namespace A207449.P6693162372467420520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213832 (n + 1) + A207020 (n + 1)

end

end A207449.P6693162372467420520

namespace A207449

/-- `A213832(n+1)+A207020(n+1)` -/
def P6693162372467420520.Spec : Prop :=
  ∀ n, P6693162372467420520.a n = A207449 (n + 1)

end A207449

/-! ## A207449.P14863848113893695379

`A216110(n+1)-A253707(n+1)`
-/

namespace A207449.P14863848113893695379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216110 (n + 1) - A253707 (n + 1)

end

end A207449.P14863848113893695379

namespace A207449

/-- `A216110(n+1)-A253707(n+1)` -/
def P14863848113893695379.Spec : Prop :=
  ∀ n, P14863848113893695379.a n = A207449 (n + 1)

end A207449

/-! ## A207449.P6803804054053734540

`∑[10*Δ[A085490(n)]]`
-/

namespace A207449.P6803804054053734540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207449.P6803804054053734540

namespace A207449

/-- `∑[10*Δ[A085490(n)]]` -/
def P6803804054053734540.Spec : Prop :=
  ∀ n, P6803804054053734540.a n = A207449 (n + 1)

end A207449

/-! ## A207449.P9536110353401177138

`n*A033583(n+2)+10`
-/

namespace A207449.P9536110353401177138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033583 (n + 2) + 10

end

end A207449.P9536110353401177138

namespace A207449

/-- `n*A033583(n+2)+10` -/
def P9536110353401177138.Spec : Prop :=
  ∀ n, P9536110353401177138.a n = A207449 (n + 1)

theorem P9536110353401177138.correct : P9536110353401177138.Spec := by
  intro n
  simp only [A207449, Nat.add_sub_cancel, A207449.P9536110353401177138.a, A207449.P11585593756961489434.a, A033583, A033583.P12285480609414282410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207449

/-! ## A207449.P12359396122330181391

`∑[10*(A000567(n+1)+n)]`
-/

namespace A207449.P12359396122330181391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A000567 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207449.P12359396122330181391

namespace A207449

/-- `∑[10*(A000567(n+1)+n)]` -/
def P12359396122330181391.Spec : Prop :=
  ∀ n, P12359396122330181391.a n = A207449 (n + 1)

end A207449

/-! ## A207449.P14525145934508095010

`A017281(n+1)*A028387(n)-A028387(n)`
-/

namespace A207449.P14525145934508095010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (n + 1) * A028387 n - A028387 n

end

end A207449.P14525145934508095010

namespace A207449

/-- `A017281(n+1)*A028387(n)-A028387(n)` -/
def P14525145934508095010.Spec : Prop :=
  ∀ n, P14525145934508095010.a n = A207449 (n + 1)

theorem P14525145934508095010.correct : P14525145934508095010.Spec := by
  intro n
  simp only [A207449, Nat.add_sub_cancel, A207449.P14525145934508095010.a, A207449.P11585593756961489434.a, A017281, A017281.P12372910670058171543.a, A028387, A028387.P5954590561330899546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207449

/-! ## A207449.P15790531110565967043

`A008592(n+1)+A005563(n+1)*A008592(n)`
-/

namespace A207449.P15790531110565967043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1) + A005563 (n + 1) * A008592 n

end

end A207449.P15790531110565967043

namespace A207449

/-- `A008592(n+1)+A005563(n+1)*A008592(n)` -/
def P15790531110565967043.Spec : Prop :=
  ∀ n, P15790531110565967043.a n = A207449 (n + 1)

theorem P15790531110565967043.correct : P15790531110565967043.Spec := by
  intro n
  simp only [A207449, Nat.add_sub_cancel, A207449.P15790531110565967043.a, A207449.P11585593756961489434.a, A005563, A005563.P13300161655551567421.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207449

/-! ## A207449.P5286733352943105197

`A152746(n+1)*A207596(n+1)/A016946(n)`
-/

namespace A207449.P5286733352943105197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152746 (n + 1) * A207596 (n + 1) : ℚ) / (A016946 n : ℚ)

end

end A207449.P5286733352943105197

namespace A207449

/-- `A152746(n+1)*A207596(n+1)/A016946(n)` -/
def P5286733352943105197.Spec : Prop :=
  ∀ n, P5286733352943105197.a n = (A207449 (n + 1) : ℚ)

theorem P5286733352943105197.correct : P5286733352943105197.Spec := by
  intro n
  simp only [A207449, Nat.add_sub_cancel, A207449.P5286733352943105197.a, A207449.P11585593756961489434.a, A016946, A016946.P16494615086453922637.a, A152746, A152746.P17154373183025308854.a, A207596, A207596.P12940979556610413563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207449

/-! ## A207449.P1671175474713350829

`A152746(n+1)*A207597(n+1)/A207596(n+1)`
-/

namespace A207449.P1671175474713350829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152746 (n + 1) * A207597 (n + 1) : ℚ) / (A207596 (n + 1) : ℚ)

end

end A207449.P1671175474713350829

namespace A207449

/-- `A152746(n+1)*A207597(n+1)/A207596(n+1)` -/
def P1671175474713350829.Spec : Prop :=
  ∀ n, P1671175474713350829.a n = (A207449 (n + 1) : ℚ)

end A207449

/-!
# A207450: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207450, the canonical program `A207450.P5742104162561290787` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207450 has offset 1).

The definition of A207450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207450.P5742104162561290787

`(48*n+16)*(n+1)²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207450

/-- `(48*n+16)*(n+1)²` -/
def P5742104162561290787.Spec : Prop :=
  ∀ n, (P5742104162561290787.a n : ℤ) = A207450 (n + 1)

theorem P5742104162561290787.correct : P5742104162561290787.Spec := by
  intro n
  simp only [A207450, Nat.add_sub_cancel]

end A207450

/-! ## A207450.P11214547674566199849

`ogf((16+192x+80x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A207450.P11214547674566199849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 192, 80] [1, -4, 6, -4, 1] n

end

end A207450.P11214547674566199849

namespace A207450

/-- `ogf((16+192x+80x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P11214547674566199849.Spec : Prop :=
  ∀ n, P11214547674566199849.a n = A207450 (n + 1)

end A207450

/-! ## A207450.P17640006841454604121

`A100176(n+1)/(1/4)²`
-/

namespace A207450.P17640006841454604121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100176 (n + 1) : ℚ) / ((1 : ℚ) / 4) ^ 2

end

end A207450.P17640006841454604121

namespace A207450

/-- `A100176(n+1)/(1/4)²` -/
def P17640006841454604121.Spec : Prop :=
  ∀ n, P17640006841454604121.a n = (A207450 (n + 1) : ℚ)

theorem P17640006841454604121.correct : P17640006841454604121.Spec := by
  intro n
  simp only [A207450, Nat.add_sub_cancel, A207450.P17640006841454604121.a, A207450.P5742104162561290787.a, A100176, A100176.P16581623128881660207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207450

/-! ## A207450.P9755498732061107215

`Δ[16*A172045(n)]`
-/

namespace A207450.P9755498732061107215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A172045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207450.P9755498732061107215

namespace A207450

/-- `Δ[16*A172045(n)]` -/
def P9755498732061107215.Spec : Prop :=
  ∀ n, P9755498732061107215.a n = A207450 (n + 1)

end A207450

/-! ## A207450.P16230841562190755601

`∑[2*Δ[n*A153808(n)]]`
-/

namespace A207450.P16230841562190755601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A153808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207450.P16230841562190755601

namespace A207450

/-- `∑[2*Δ[n*A153808(n)]]` -/
def P16230841562190755601.Spec : Prop :=
  ∀ n, P16230841562190755601.a n = A207450 (n + 1)

end A207450

/-! ## A207450.P7275078415363870250

`∑[16*Δ[n*A000567(n)]]`
-/

namespace A207450.P7275078415363870250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207450.P7275078415363870250

namespace A207450

/-- `∑[16*Δ[n*A000567(n)]]` -/
def P7275078415363870250.Spec : Prop :=
  ∀ n, P7275078415363870250.a n = A207450 (n + 1)

end A207450

/-! ## A207450.P6693938691964200396

`xor(1, (3*n+1)*(A060626(2*n+1)+2)+1)`
-/

namespace A207450.P6693938691964200396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 * n + 1 : ℤ) * (A060626 (2 * n + 1) + 2) + 1)

end

end A207450.P6693938691964200396

namespace A207450

/-- `xor(1, (3*n+1)*(A060626(2*n+1)+2)+1)` -/
def P6693938691964200396.Spec : Prop :=
  ∀ n, P6693938691964200396.a n = A207450 (n + 1)

end A207450

/-! ## A207450.P6388144964059163150

`A011199(2*n+1)-A033996(n+1)`
-/

namespace A207450.P6388144964059163150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 (2 * n + 1) - A033996 (n + 1)

end

end A207450.P6388144964059163150

namespace A207450

/-- `A011199(2*n+1)-A033996(n+1)` -/
def P6388144964059163150.Spec : Prop :=
  ∀ n, P6388144964059163150.a n = A207450 (n + 1)

theorem P6388144964059163150.correct : P6388144964059163150.Spec := by
  intro n
  simp only [A207450, Nat.add_sub_cancel, A207450.P6388144964059163150.a, A207450.P5742104162561290787.a, A011199, A011199.P5039899721906082050.a, A033996, A033996.P3972738276246908348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207450

/-! ## A207450.P6908400518290206701

`A011199(2*n+1)+1-A016754(n+1)`
-/

namespace A207450.P6908400518290206701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 (2 * n + 1) + (1 - A016754 (n + 1))

end

end A207450.P6908400518290206701

namespace A207450

/-- `A011199(2*n+1)+1-A016754(n+1)` -/
def P6908400518290206701.Spec : Prop :=
  ∀ n, P6908400518290206701.a n = A207450 (n + 1)

theorem P6908400518290206701.correct : P6908400518290206701.Spec := by
  intro n
  simp only [A207450, Nat.add_sub_cancel, A207450.P6908400518290206701.a, A207450.P5742104162561290787.a, A011199, A011199.P5039899721906082050.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207450

/-! ## A207450.P16282200965199658737

`A011199(2*n+1)-2*A046092(n+1)`
-/

namespace A207450.P16282200965199658737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 (2 * n + 1) - 2 * A046092 (n + 1)

end

end A207450.P16282200965199658737

namespace A207450

/-- `A011199(2*n+1)-2*A046092(n+1)` -/
def P16282200965199658737.Spec : Prop :=
  ∀ n, P16282200965199658737.a n = A207450 (n + 1)

theorem P16282200965199658737.correct : P16282200965199658737.Spec := by
  intro n
  simp only [A207450, Nat.add_sub_cancel, A207450.P16282200965199658737.a, A207450.P5742104162561290787.a, A011199, A011199.P5039899721906082050.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207450

/-!
# A207451: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207451, the canonical program `A207451.P11664117944263371421` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207451 has offset 1).

The definition of A207451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207451.P11664117944263371421

`26*(n+1)^4+78*(n+1)^3-104*(n+1)²+26*(n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207451

/-- `26*(n+1)^4+78*(n+1)^3-104*(n+1)²+26*(n+1)` -/
def P11664117944263371421.Spec : Prop :=
  ∀ n, P11664117944263371421.a n = A207451 (n + 1)

theorem P11664117944263371421.correct : P11664117944263371421.Spec := by
  intro n
  simp only [A207451, Nat.add_sub_cancel]

end A207451

/-! ## A207451.P1150202687211460113

`A207453(A052905(n+3))`
-/

namespace A207451.P1150202687211460113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A052905 (n + 3)).toNat

end

end A207451.P1150202687211460113

namespace A207451

/-- `A207453(A052905(n+3))` -/
def P1150202687211460113.Spec : Prop :=
  ∀ n, P1150202687211460113.a n = A207451 (n + 1)

end A207451

/-! ## A207451.P15970345368400266582

`A207453(A046691(n+4)-1)`
-/

namespace A207451.P15970345368400266582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A046691 (n + 4) - 1).toNat

end

end A207451.P15970345368400266582

namespace A207451

/-- `A207453(A046691(n+4)-1)` -/
def P15970345368400266582.Spec : Prop :=
  ∀ n, P15970345368400266582.a n = A207451 (n + 1)

end A207451

/-! ## A207451.P281691061529404946

`A207453(A055998(n+4)-2)`
-/

namespace A207451.P281691061529404946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A055998 (n + 4) - 2).toNat

end

end A207451.P281691061529404946

namespace A207451

/-- `A207453(A055998(n+4)-2)` -/
def P281691061529404946.Spec : Prop :=
  ∀ n, P281691061529404946.a n = A207451 (n + 1)

end A207451

/-! ## A207451.P15202087704988777507

`A207453(A000217(n+6)-5)`
-/

namespace A207451.P15202087704988777507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A000217 (n + 6) - 5).toNat

end

end A207451.P15202087704988777507

namespace A207451

/-- `A207453(A000217(n+6)-5)` -/
def P15202087704988777507.Spec : Prop :=
  ∀ n, P15202087704988777507.a n = A207451 (n + 1)

end A207451

/-! ## A207451.P10402970121299558168

`A207453(A000124(n+6)-6)`
-/

namespace A207451.P10402970121299558168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A000124 (n + 6) - 6).toNat

end

end A207451.P10402970121299558168

namespace A207451

/-- `A207453(A000124(n+6)-6)` -/
def P10402970121299558168.Spec : Prop :=
  ∀ n, P10402970121299558168.a n = A207451 (n + 1)

end A207451

/-! ## A207451.P12308062313892343336

`A207453((n+5)²-A167614(n+2))`
-/

namespace A207451.P12308062313892343336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (((n + 5) ^ 2 : ℤ) - A167614 (n + 2)).toNat

end

end A207451.P12308062313892343336

namespace A207451

/-- `A207453((n+5)²-A167614(n+2))` -/
def P12308062313892343336.Spec : Prop :=
  ∀ n, P12308062313892343336.a n = A207451 (n + 1)

end A207451

/-! ## A207451.P9046044071705751571

`A207453(A004277(n+3)+A000217(n+4))`
-/

namespace A207451.P9046044071705751571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A004277 (n + 3) + A000217 (n + 4)).toNat

end

end A207451.P9046044071705751571

namespace A207451

/-- `A207453(A004277(n+3)+A000217(n+4))` -/
def P9046044071705751571.Spec : Prop :=
  ∀ n, P9046044071705751571.a n = A207451 (n + 1)

end A207451

/-!
# A207452: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207452, the canonical program `A207452.P3212778044511231629` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207452 has offset 1).

The definition of A207452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207452.P11069484763627250939

`168*(n+1)^4-84*(n+1)^3-84*(n+1)²+42*(n+1)`
-/

namespace A207452.P11069484763627250939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (168 * (n + 1) ^ 4 : ℤ) - (84 * (n + 1) ^ 3 : ℤ) - (84 * (n + 1) ^ 2 : ℤ) + (42 * (n + 1) : ℤ)

end

end A207452.P11069484763627250939

namespace A207452

/-- `168*(n+1)^4-84*(n+1)^3-84*(n+1)²+42*(n+1)` -/
def P11069484763627250939.Spec : Prop :=
  ∀ n, P11069484763627250939.a n = A207452 (n + 1)

end A207452

/-! ## A207452.P3212778044511231629

`(14*n+7)*Δ[6*A062392(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207452

/-- `(14*n+7)*Δ[6*A062392(n)]` -/
def P3212778044511231629.Spec : Prop :=
  ∀ n, P3212778044511231629.a n = A207452 (n + 1)

theorem P3212778044511231629.correct : P3212778044511231629.Spec := by
  intro n
  simp only [A207452, Nat.add_sub_cancel]

end A207452

/-! ## A207452.P7716998176029945971

`(41*(n+1)+n+1)*A138179(2*n+1)`
-/

namespace A207452.P7716998176029945971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * (n + 1) + (n + 1) : ℤ) * A138179 (2 * n + 1)

end

end A207452.P7716998176029945971

namespace A207452

/-- `(41*(n+1)+n+1)*A138179(2*n+1)` -/
def P7716998176029945971.Spec : Prop :=
  ∀ n, P7716998176029945971.a n = A207452 (n + 1)

end A207452

/-! ## A207452.P11214681321100476346

`(2*n+1)*42*(n+1)*record[A188653(n+1)]`
-/

namespace A207452.P11214681321100476346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((42 * (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A207452.P11214681321100476346

namespace A207452

/-- `(2*n+1)*42*(n+1)*record[A188653(n+1)]` -/
def P11214681321100476346.Spec : Prop :=
  ∀ n, P11214681321100476346.a n = A207452 (n + 1)

end A207452

/-! ## A207452.P14517835470781610921

`A207453(A055999(n+4))`
-/

namespace A207452.P14517835470781610921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A055999 (n + 4)).toNat

end

end A207452.P14517835470781610921

namespace A207452

/-- `A207453(A055999(n+4))` -/
def P14517835470781610921.Spec : Prop :=
  ∀ n, P14517835470781610921.a n = A207452 (n + 1)

end A207452

/-!
# A207453: T(n,k) = Number of n X k 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207453, there is no canonical definition to state claims against.
-/

/-! ## A207453.P9611324084779679960

`A208287(n+1)-A184944(A109187(n))`
-/

namespace A207453.P9611324084779679960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (n + 1) - A184944 (A109187 n).toNat

end

end A207453.P9611324084779679960

/-! ## A207453.P16265481816156401718

`A208287(n+1)-A331428(A007318(3*n+2))`
-/

namespace A207453.P16265481816156401718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (n + 1) - A331428 (A007318 (3 * n + 2)).toNat

end

end A207453.P16265481816156401718

/-! ## A207453.P9494308756952538421

`A208555(n+1)+A014036(A244519(n))`
-/

namespace A207453.P9494308756952538421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (n + 1) + A014036 (A244519 n).toNat

end

end A207453.P9494308756952538421

/-! ## A207453.P9257055388313813055

`A208555(n+1)-A010894(A051455(n))`
-/

namespace A207453.P9257055388313813055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (n + 1) - A010894 ((A051455 n).toNat + 21)

end

end A207453.P9257055388313813055

/-! ## A207453.P9889770133684491525

`A208555(n+1)-A010894(A062344(n))`
-/

namespace A207453.P9889770133684491525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (n + 1) - A010894 ((A062344 n).toNat + 21)

end

end A207453.P9889770133684491525

/-!
# A207454: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207454, the canonical program `A207454.P1535993317651227784` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207454 has offset 1).

The definition of A207454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207454.P14687345288508373173

`ogf((6+30x+12x^2-24x^3)/(1-x-7x^2-2x^3+4x^4))`
-/

namespace A207454.P14687345288508373173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 30, 12, -24] [1, -1, -7, -2, 4] n

end

end A207454.P14687345288508373173

namespace A207454

/-- `ogf((6+30x+12x^2-24x^3)/(1-x-7x^2-2x^3+4x^4))` -/
def P14687345288508373173.Spec : Prop :=
  ∀ n, P14687345288508373173.a n = A207454 (n + 1)

end A207454

/-! ## A207454.P1535993317651227784

`a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` with `a(0)=6, a(1)=36, a(2)=90, a(3)=330`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207454

/-- `a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` -/
def P1535993317651227784.Spec : Prop :=
  ∀ n, P1535993317651227784.a n = A207454 (n + 1)

theorem P1535993317651227784.correct : P1535993317651227784.Spec := by
  intro n
  simp only [A207454, Nat.add_sub_cancel]

end A207454

/-! ## A207454.P4235585084693326056

`3*A093044(n+3)`
-/

namespace A207454.P4235585084693326056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A093044 (n + 3)

end

end A207454.P4235585084693326056

namespace A207454

/-- `3*A093044(n+3)` -/
def P4235585084693326056.Spec : Prop :=
  ∀ n, P4235585084693326056.a n = A207454 (n + 1)

end A207454

/-! ## A207454.P6348894550181265937

`6*A093042(n+2)`
-/

namespace A207454.P6348894550181265937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A093042 (n + 2)

end

end A207454.P6348894550181265937

namespace A207454

/-- `6*A093042(n+2)` -/
def P6348894550181265937.Spec : Prop :=
  ∀ n, P6348894550181265937.a n = A207454 (n + 1)

end A207454

/-! ## A207454.P12176515794638402834

`A000045(n+2)*A092297(n+3)`
-/

namespace A207454.P12176515794638402834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A092297 (n + 3)

end

end A207454.P12176515794638402834

namespace A207454

/-- `A000045(n+2)*A092297(n+3)` -/
def P12176515794638402834.Spec : Prop :=
  ∀ n, P12176515794638402834.a n = A207454 (n + 1)

end A207454

/-! ## A207454.P14817195705058893101

`Δ[A014131(n+1)]*A000045(n+2)`
-/

namespace A207454.P14817195705058893101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 (n + 2)

end

end A207454.P14817195705058893101

namespace A207454

/-- `Δ[A014131(n+1)]*A000045(n+2)` -/
def P14817195705058893101.Spec : Prop :=
  ∀ n, P14817195705058893101.a n = A207454 (n + 1)

end A207454

/-! ## A207454.P17913143756968485826

`sqrt(A206981(n+1))*sqrt(A208556(n+1))`
-/

namespace A207454.P17913143756968485826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) : ℝ) * Real.sqrt (A208556 (n + 1) : ℝ)

end

end A207454.P17913143756968485826

namespace A207454

/-- `sqrt(A206981(n+1))*sqrt(A208556(n+1))` -/
def P17913143756968485826.Spec : Prop :=
  ∀ n, P17913143756968485826.a n = (A207454 (n + 1) : ℝ)

end A207454

/-! ## A207454.P5341982186181436207

`sqrt(A206981(n+1)*A208556(n+1))`
-/

namespace A207454.P5341982186181436207
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) * A208556 (n + 1) : ℝ)

end

end A207454.P5341982186181436207

namespace A207454

/-- `sqrt(A206981(n+1)*A208556(n+1))` -/
def P5341982186181436207.Spec : Prop :=
  ∀ n, P5341982186181436207.a n = (A207454 (n + 1) : ℝ)

end A207454

/-! ## A207454.P253094695036337635

`A208555(∑[n+2]+4)`
-/

namespace A207454.P253094695036337635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208555 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207454.P253094695036337635

namespace A207454

/-- `A208555(∑[n+2]+4)` -/
def P253094695036337635.Spec : Prop :=
  ∀ n, P253094695036337635.a n = A207454 (n + 1)

end A207454

/-! ## A207454.P14464737772214725833

`A207453(∑[n+2]+4)`
-/

namespace A207454.P14464737772214725833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207454.P14464737772214725833

namespace A207454

/-- `A207453(∑[n+2]+4)` -/
def P14464737772214725833.Spec : Prop :=
  ∀ n, P14464737772214725833.a n = A207454 (n + 1)

end A207454

/-!
# A207455: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207455, the canonical program `A207455.P9901723378823911048` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207455 has offset 1).

The definition of A207455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207455.P11562375871111233936

`ogf((8+56x+24x^2-72x^3)/(1-x-10x^2-3x^3+9x^4))`
-/

namespace A207455.P11562375871111233936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 56, 24, -72] [1, -1, -10, -3, 9] n

end

end A207455.P11562375871111233936

namespace A207455

/-- `ogf((8+56x+24x^2-72x^3)/(1-x-10x^2-3x^3+9x^4))` -/
def P11562375871111233936.Spec : Prop :=
  ∀ n, P11562375871111233936.a n = A207455 (n + 1)

end A207455

/-! ## A207455.P9901723378823911048

`a(n-1)+10*a(n-2)+3*a(n-3)-9*a(n-4)` with `a(0)=8, a(1)=64, a(2)=168, a(3)=760`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207455

/-- `a(n-1)+10*a(n-2)+3*a(n-3)-9*a(n-4)` -/
def P9901723378823911048.Spec : Prop :=
  ∀ n, P9901723378823911048.a n = A207455 (n + 1)

theorem P9901723378823911048.correct : P9901723378823911048.Spec := by
  intro n
  simp only [A207455, Nat.add_sub_cancel]

end A207455

/-! ## A207455.P415195759364773286

`A207453(A052905(n)+9)`
-/

namespace A207455.P415195759364773286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A052905 n + 9).toNat

end

end A207455.P415195759364773286

namespace A207455

/-- `A207453(A052905(n)+9)` -/
def P415195759364773286.Spec : Prop :=
  ∀ n, P415195759364773286.a n = A207455 (n + 1)

end A207455

/-! ## A207455.P6448969043268816145

`A207453(A055999(n)+10)`
-/

namespace A207455.P6448969043268816145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A055999 n + 10).toNat

end

end A207455.P6448969043268816145

namespace A207455

/-- `A207453(A055999(n)+10)` -/
def P6448969043268816145.Spec : Prop :=
  ∀ n, P6448969043268816145.a n = A207455 (n + 1)

end A207455

/-! ## A207455.P15409704429888782487

`A207453(A167614(n+2)+1)`
-/

namespace A207455.P15409704429888782487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A167614 (n + 2) + 1).toNat

end

end A207455.P15409704429888782487

namespace A207455

/-- `A207453(A167614(n+2)+1)` -/
def P15409704429888782487.Spec : Prop :=
  ∀ n, P15409704429888782487.a n = A207455 (n + 1)

end A207455

/-! ## A207455.P11210532013859553936

`A207453(A167487(n+2)-3)`
-/

namespace A207455.P11210532013859553936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A167487 (n + 2) - 3).toNat

end

end A207455.P11210532013859553936

namespace A207455

/-- `A207453(A167487(n+2)-3)` -/
def P11210532013859553936.Spec : Prop :=
  ∀ n, P11210532013859553936.a n = A207455 (n + 1)

end A207455

/-! ## A207455.P1124989574879278437

`A207453(A020705(A000217(n+3)))`
-/

namespace A207455.P1124989574879278437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A020705 (A000217 (n + 3)).toNat).toNat

end

end A207455.P1124989574879278437

namespace A207455

/-- `A207453(A020705(A000217(n+3)))` -/
def P1124989574879278437.Spec : Prop :=
  ∀ n, P1124989574879278437.a n = A207455 (n + 1)

end A207455

/-! ## A207455.P7559918057008558025

`A207453(A000217(A020705(n))-n)`
-/

namespace A207455.P7559918057008558025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A000217 (A020705 n).toNat - (n : ℤ)).toNat

end

end A207455.P7559918057008558025

namespace A207455

/-- `A207453(A000217(A020705(n))-n)` -/
def P7559918057008558025.Spec : Prop :=
  ∀ n, P7559918057008558025.a n = A207455 (n + 1)

end A207455

/-!
# A207456: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207456, there is no canonical definition to state claims against.
-/

/-! ## A207456.P5113367633868999908

`A207453(A167499(n+3))`
-/

namespace A207456.P5113367633868999908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A167499 (n + 3)).toNat

end

end A207456.P5113367633868999908

/-! ## A207456.P542940688895712

`A207453(A056000(n)+15)`
-/

namespace A207456.P542940688895712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A056000 n + 15).toNat

end

end A207456.P542940688895712

/-! ## A207456.P17379698739895081081

`A207453(A145018(n+5)+1)`
-/

namespace A207456.P17379698739895081081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A145018 (n + 5) + 1).toNat

end

end A207456.P17379698739895081081

/-! ## A207456.P16356385707693965393

`A207453(A000217(n+4)+5)`
-/

namespace A207456.P16356385707693965393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A000217 (n + 4) + 5).toNat

end

end A207456.P16356385707693965393

/-! ## A207456.P15136889729483768679

`A207453(A020705(A000124(n+4)))`
-/

namespace A207456.P15136889729483768679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A020705 (A000124 (n + 4)).toNat).toNat

end

end A207456.P15136889729483768679

/-! ## A207456.P1121428391135250498

`A207453(A167614(n+1)+A005408(A020705(n)))`
-/

namespace A207456.P1121428391135250498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A167614 (n + 1) + A005408 (A020705 n).toNat).toNat

end

end A207456.P1121428391135250498

/-!
# A207457: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207457, there is no canonical definition to state claims against.
-/

/-! ## A207457.P18017300405218215188

`A207453(A167499(n+4)+1)`
-/

namespace A207457.P18017300405218215188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A167499 (n + 4) + 1).toNat

end

end A207457.P18017300405218215188

/-! ## A207457.P15173378493343474531

`A207453(A167487(n+4)-1)`
-/

namespace A207457.P15173378493343474531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A167487 (n + 4) - 1).toNat

end

end A207457.P15173378493343474531

/-! ## A207457.P2699816976976661151

`A207453(A000124(n+5)+5)`
-/

namespace A207457.P2699816976976661151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A000124 (n + 5) + 5).toNat

end

end A207457.P2699816976976661151

/-! ## A207457.P8314535258502112024

`A207453(A000217(n+5)+6)`
-/

namespace A207457.P8314535258502112024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A000217 (n + 5) + 6).toNat

end

end A207457.P8314535258502112024

/-! ## A207457.P9391364578584485347

`A207453(A034856(n+5)-(n-2))`
-/

namespace A207457.P9391364578584485347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A034856 (n + 5) - ((n : ℤ) - 2)).toNat

end

end A207457.P9391364578584485347

/-! ## A207457.P16887266909582824659

`A207453(A004273(n+6)+A167614(n+2)+1)`
-/

namespace A207457.P16887266909582824659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A004273 (n + 6) + (A167614 (n + 2) + 1)).toNat

end

end A207457.P16887266909582824659

/-!
# A207458: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207458, there is no canonical definition to state claims against.
-/

/-! ## A207458.P14909430733570590051

`A207453(A167487(n+5))`
-/

namespace A207458.P14909430733570590051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A167487 (n + 5)).toNat

end

end A207458.P14909430733570590051

/-! ## A207458.P2345731786572293278

`A207453(A056119(n)+28)`
-/

namespace A207458.P2345731786572293278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A056119 n + 28).toNat

end

end A207458.P2345731786572293278

/-! ## A207458.P637572233098297919

`A207453(A167499(n+5)+2)`
-/

namespace A207458.P637572233098297919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A167499 (n + 5) + 2).toNat

end

end A207458.P637572233098297919

/-! ## A207458.P9169279050788915089

`A207453(A000124(n+6)+6)`
-/

namespace A207458.P9169279050788915089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A000124 (n + 6) + 6).toNat

end

end A207458.P9169279050788915089

/-! ## A207458.P6051580996337344883

`A207453(A000217(n+6)+7)`
-/

namespace A207458.P6051580996337344883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (A000217 (n + 6) + 7).toNat

end

end A207458.P6051580996337344883

/-!
# A207460: Let a(1) = 4. For n > 1, a(n) is the least number greater than a(n-1) such that the Hamming distance D(a(n-1),a(n)) = 4.

The programs for A207460, there is no canonical definition to state claims against.
-/

/-! ## A207460.P11859862818893486637

`A182336(a(n-1))` with `a(0)=4`
-/

namespace A207460.P11859862818893486637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A182336 (a (n - 1)).toNat

end

end A207460.P11859862818893486637

/-!
# A207461: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207461, there is no canonical definition to state claims against.
-/

/-! ## A207461.P938461337007730904

`A207467(∑[4*n]+1)`
-/

namespace A207461.P938461337007730904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207461.P938461337007730904

/-! ## A207461.P14831072030141797624

`record[gcd(A037012(n), A207467(n+1))]`
-/

namespace A207461.P14831072030141797624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A207467 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207461.P14831072030141797624

/-! ## A207461.P3277839091921652963

`record[root(A207467(n+1), A274651(n+1))]`
-/

namespace A207461.P3277839091921652963
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207467 (n + 1) : ℝ) ^ (1 / (A274651 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207461.P3277839091921652963

/-! ## A207461.P5833932097478275165

`A207467(A001844(n))+A178780(n)`
-/

namespace A207461.P5833932097478275165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A001844 n).toNat + A178780 n

end

end A207461.P5833932097478275165

/-! ## A207461.P2766532638280132816

`A207467(A001844(n))%A332174(n)`
-/

namespace A207461.P2766532638280132816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207467 (A001844 n).toNat) (A332174 n)

end

end A207461.P2766532638280132816

/-!
# A207462: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207462, there is no canonical definition to state claims against.
-/

/-! ## A207462.P15619051929976964391

`A207918(∑[n+3]+1)`
-/

namespace A207462.P15619051929976964391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207462.P15619051929976964391

/-! ## A207462.P10427004381209319018

`A208698(∑[n+3]+1)`
-/

namespace A207462.P10427004381209319018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207462.P10427004381209319018

/-! ## A207462.P11607457850465828239

`lcm(2, A208698(A034856(n+2)))`
-/

namespace A207462.P11607457850465828239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208698 (A034856 (n + 2)).toNat)

end

end A207462.P11607457850465828239

/-! ## A207462.P14249244112278719378

`A207467(∑[n+3]+1)`
-/

namespace A207462.P14249244112278719378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207462.P14249244112278719378

/-! ## A207462.P1637194764755298647

`A207519(∑[n+3]+1)`
-/

namespace A207462.P1637194764755298647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207462.P1637194764755298647

/-!
# A207463: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207463, there is no canonical definition to state claims against.
-/

/-! ## A207463.P5388436234276900754

`A207467(A141214(n+1))`
-/

namespace A207463.P5388436234276900754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A141214 (n + 1)).toNat

end

end A207463.P5388436234276900754

/-! ## A207463.P16303827325428335230

`A207467(A027379(n+2))`
-/

namespace A207463.P16303827325428335230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A027379 (n + 2)).toNat

end

end A207463.P16303827325428335230

/-! ## A207463.P15531399590649846085

`A207467(A055998(n+2))`
-/

namespace A207463.P15531399590649846085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A055998 (n + 2)).toNat

end

end A207463.P15531399590649846085

/-! ## A207463.P6545462038604978295

`A207467(A155212(n)+5)`
-/

namespace A207463.P6545462038604978295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A155212 n + 5).toNat

end

end A207463.P6545462038604978295

/-! ## A207463.P3094441602610834185

`A207519(A155212(n)+5)`
-/

namespace A207463.P3094441602610834185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A155212 n + 5).toNat

end

end A207463.P3094441602610834185

/-!
# A207464: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207464, there is no canonical definition to state claims against.
-/

/-! ## A207464.P7663741961490630057

`A207467(Δ[A264443(n)])`
-/

namespace A207464.P7663741961490630057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (f1 (n + 1) - f1 n).toNat

end

end A207464.P7663741961490630057

/-! ## A207464.P11850680721885235078

`A207467(A046691(n+3))`
-/

namespace A207464.P11850680721885235078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A046691 (n + 3)).toNat

end

end A207464.P11850680721885235078

/-! ## A207464.P4327932970367161290

`A207467(Δ[A023545(n+1)])`
-/

namespace A207464.P4327932970367161290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (f1 (n + 1) - f1 n).toNat

end

end A207464.P4327932970367161290

/-! ## A207464.P6413069321694371011

`A207467(A000124(n+5)-5)`
-/

namespace A207464.P6413069321694371011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A000124 (n + 5) - 5).toNat

end

end A207464.P6413069321694371011

/-! ## A207464.P16239243700899191452

`A207467(A167499(n+4)-9)`
-/

namespace A207464.P16239243700899191452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A167499 (n + 4) - 9).toNat

end

end A207464.P16239243700899191452

/-!
# A207465: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207465, there is no canonical definition to state claims against.
-/

/-! ## A207465.P15334105980693232423

`A207467(A052905(n+3))`
-/

namespace A207465.P15334105980693232423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A052905 (n + 3)).toNat

end

end A207465.P15334105980693232423

/-! ## A207465.P2436888459672464506

`A207467(A055999(n+3)+1)`
-/

namespace A207465.P2436888459672464506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A055999 (n + 3) + 1).toNat

end

end A207465.P2436888459672464506

/-! ## A207465.P1971588834259508566

`A207467(A000124(n+6)-6)`
-/

namespace A207465.P1971588834259508566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A000124 (n + 6) - 6).toNat

end

end A207465.P1971588834259508566

/-! ## A207465.P8055405808289221197

`A207467(Δ[Δ[A006504(n+1)]])`
-/

namespace A207465.P8055405808289221197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (f1 (n + 1) - f1 n).toNat

end

end A207465.P8055405808289221197

/-! ## A207465.P2290971009140374004

`A207467(Δ[A023551(n+1)]+1)`
-/

namespace A207465.P2290971009140374004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (f1 (n + 1) - f1 n + 1).toNat

end

end A207465.P2290971009140374004

/-!
# A207466: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207466, there is no canonical definition to state claims against.
-/

/-! ## A207466.P6676330480194331298

`A207467(A055999(n+4))`
-/

namespace A207466.P6676330480194331298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A055999 (n + 4)).toNat

end

end A207466.P6676330480194331298

/-! ## A207466.P5947948701580238196

`A207467(Δ[A023551(n+2)])`
-/

namespace A207466.P5947948701580238196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (f1 (n + 1) - f1 n).toNat

end

end A207466.P5947948701580238196

/-! ## A207466.P5803287033361548665

`A207467(A000124(n+7)-7)`
-/

namespace A207466.P5803287033361548665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A000124 (n + 7) - 7).toNat

end

end A207466.P5803287033361548665

/-! ## A207466.P802632632781698681

`A207467(A000096(n+5)+n+2)`
-/

namespace A207466.P802632632781698681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A207466.P802632632781698681

/-! ## A207466.P11449792865434957218

`A207467(A155212(n+2)+n+9)`
-/

namespace A207466.P11449792865434957218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A155212 (n + 2) + (n + 9 : ℤ)).toNat

end

end A207466.P11449792865434957218

/-!
# A207467: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207467, there is no canonical definition to state claims against.
-/

/-! ## A207467.P15212497525786747751

`A207918(n+1)-A016389(A119502(n))`
-/

namespace A207467.P15212497525786747751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (n + 1) - A016389 (A119502 n).toNat

end

end A207467.P15212497525786747751

/-! ## A207467.P12224293019876973316

`A207918(n+1)-A016389(A152656(n))`
-/

namespace A207467.P12224293019876973316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (n + 1) - A016389 (A152656 n).toNat

end

end A207467.P12224293019876973316

/-! ## A207467.P2249419907029870903

`A207918(A187829(n+1))`
-/

namespace A207467.P2249419907029870903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (A187829 (n + 1)).toNat

end

end A207467.P2249419907029870903

/-! ## A207467.P6918334042205663175

`A207918(A077168(n))`
-/

namespace A207467.P6918334042205663175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (A077168 n).toNat

end

end A207467.P6918334042205663175

/-! ## A207467.P2250586862529634287

`A207918(A065673(n+1))`
-/

namespace A207467.P2250586862529634287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (A065673 (n + 1)).toNat

end

end A207467.P2250586862529634287

/-!
# A207468: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207468, there is no canonical definition to state claims against.
-/

/-! ## A207468.P4365118113261484094

`A207467(∑[n+3]+7)`
-/

namespace A207468.P4365118113261484094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207468.P4365118113261484094

/-! ## A207468.P1409040637670786957

`A207467(A052905(n)+9)+A011742(n)`
-/

namespace A207468.P1409040637670786957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A052905 n + 9).toNat + A011742 n

end

end A207468.P1409040637670786957

/-! ## A207468.P12189238240684953344

`A207467(A052905(n)+9)*A287091(n)`
-/

namespace A207468.P12189238240684953344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A052905 n + 9).toNat * A287091 n

end

end A207468.P12189238240684953344

/-! ## A207468.P13763245951157070451

`A207467(A052905(n)+9)+A011741(A140998(n))`
-/

namespace A207468.P13763245951157070451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A052905 n + 9).toNat + A011741 (A140998 n).toNat

end

end A207468.P13763245951157070451

/-! ## A207468.P6758832979469707128

`A207467(A052905(n)+9)%A075193(A016897(n))`
-/

namespace A207468.P6758832979469707128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207467 (A052905 n + 9).toNat) (A075193 (A016897 n).toNat)

end

end A207468.P6758832979469707128

/-!
# A207469: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207469, there is no canonical definition to state claims against.
-/

/-! ## A207469.P4795975033069605500

`A207467(A167499(n+3))`
-/

namespace A207469.P4795975033069605500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A167499 (n + 3)).toNat

end

end A207469.P4795975033069605500

/-! ## A207469.P16952393621733345854

`A207467(A056000(n)+15)`
-/

namespace A207469.P16952393621733345854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A056000 n + 15).toNat

end

end A207469.P16952393621733345854

/-! ## A207469.P7972537707392341986

`A207467(eq[4, A002262(n)]+1)`
-/

namespace A207469.P7972537707392341986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207469.P7972537707392341986

/-! ## A207469.P2438836017534838816

`A207467(A005408(n+5)+A000124(n+2))`
-/

namespace A207469.P2438836017534838816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A005408 (n + 5) + A000124 (n + 2)).toNat

end

end A207469.P2438836017534838816

/-! ## A207469.P6611568025534940686

`A207467(A004273(n+6)+A000124(n+2))`
-/

namespace A207469.P6611568025534940686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A004273 (n + 6) + A000124 (n + 2)).toNat

end

end A207469.P6611568025534940686

/-!
# A207470: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207470, there is no canonical definition to state claims against.
-/

/-! ## A207470.P14906990106675100766

`A207467(A167614(n+4)+3)`
-/

namespace A207470.P14906990106675100766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A167614 (n + 4) + 3).toNat

end

end A207470.P14906990106675100766

/-! ## A207470.P7763599556399812970

`A207467(A145018(n+6)+2)`
-/

namespace A207470.P7763599556399812970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A145018 (n + 6) + 2).toNat

end

end A207470.P7763599556399812970

/-! ## A207470.P15918608359793730438

`A207467(A000124(n+5)+5)`
-/

namespace A207470.P15918608359793730438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A000124 (n + 5) + 5).toNat

end

end A207470.P15918608359793730438

/-! ## A207470.P18388904129383195863

`A207467(A000217(n+5)+6)`
-/

namespace A207470.P18388904129383195863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A000217 (n + 5) + 6).toNat

end

end A207470.P18388904129383195863

/-! ## A207470.P18349642322128175266

`A207467(A238531(n+7)-A058321(n))`
-/

namespace A207470.P18349642322128175266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A238531 (n + 7) - A058321 n).toNat

end

end A207470.P18349642322128175266

/-!
# A207471: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207471, there is no canonical definition to state claims against.
-/

/-! ## A207471.P12206220689691744465

`A207467(A167499(n+5)+2)`
-/

namespace A207471.P12206220689691744465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A167499 (n + 5) + 2).toNat

end

end A207471.P12206220689691744465

/-! ## A207471.P16651816173801186952

`A207467(A253145(n+5)+7)`
-/

namespace A207471.P16651816173801186952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A253145 (n + 5) + 7).toNat

end

end A207471.P16651816173801186952

/-! ## A207471.P1927068233091514654

`A207467(A000217(n+6)+7)`
-/

namespace A207471.P1927068233091514654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A000217 (n + 6) + 7).toNat

end

end A207471.P1927068233091514654

/-! ## A207471.P14961365017966537561

`A207467(A052905(n+3)+12)`
-/

namespace A207471.P14961365017966537561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A052905 (n + 3) + 12).toNat

end

end A207471.P14961365017966537561

/-! ## A207471.P8181645985114751264

`A207467(A004273(n+9)+A000124(n+4))`
-/

namespace A207471.P8181645985114751264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (A004273 (n + 9) + A000124 (n + 4)).toNat

end

end A207471.P8181645985114751264

/-!
# A207473: Number of n X n 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207473, there is no canonical definition to state claims against.
-/

/-! ## A207473.P12651047878238260485

`A207479((n+1)²+n²)`
-/

namespace A207473.P12651047878238260485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 ((n + 1) ^ 2 + n ^ 2)

end

end A207473.P12651047878238260485

/-!
# A207474: Number of nX3 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207474, there is no canonical definition to state claims against.
-/

/-! ## A207474.P10975045346915389208

`A207479(∑[n+2]+4)`
-/

namespace A207474.P10975045346915389208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207474.P10975045346915389208

/-! ## A207474.P15119442373199853466

`lcm(2, A207479(A167614(n+1)))`
-/

namespace A207474.P15119442373199853466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207479 (A167614 (n + 1)).toNat)

end

end A207474.P15119442373199853466

/-! ## A207474.P4242138990738862304

`A207479(A167614(n+1))+A161239(n+1)`
-/

namespace A207474.P4242138990738862304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A167614 (n + 1)).toNat + A161239 (n + 1)

end

end A207474.P4242138990738862304

/-! ## A207474.P1212763907179867111

`A207479(A055998(n)+6)+A161239(n+1)`
-/

namespace A207474.P1212763907179867111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A055998 n + 6).toNat + A161239 (n + 1)

end

end A207474.P1212763907179867111

/-! ## A207474.P280792055943831262

`A057979(2*n)*A207479(A167614(n+1))`
-/

namespace A207474.P280792055943831262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A207479 (A167614 (n + 1)).toNat

end

end A207474.P280792055943831262

/-!
# A207475: Number of n X 4 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207475, there is no canonical definition to state claims against.
-/

/-! ## A207475.P1766132220496019344

`A207479(A141214(n)+7)`
-/

namespace A207475.P1766132220496019344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A141214 n + 7).toNat

end

end A207475.P1766132220496019344

/-! ## A207475.P6151952256881371393

`A207479(A052905(n)+9)`
-/

namespace A207475.P6151952256881371393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A052905 n + 9).toNat

end

end A207475.P6151952256881371393

/-! ## A207475.P11464501959736654161

`A207479(A055999(n)+10)`
-/

namespace A207475.P11464501959736654161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A055999 n + 10).toNat

end

end A207475.P11464501959736654161

/-! ## A207475.P17273728875827833350

`A207479(eq[5, A066657(n)])`
-/

namespace A207475.P17273728875827833350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207475.P17273728875827833350

/-! ## A207475.P16177102996060486006

`A207479(A167614(n+2)+1)`
-/

namespace A207475.P16177102996060486006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A167614 (n + 2) + 1).toNat

end

end A207475.P16177102996060486006

/-!
# A207476: Number of nX5 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207476, there is no canonical definition to state claims against.
-/

/-! ## A207476.P13195287145860954756

`A207479(A374005(n+1))`
-/

namespace A207476.P13195287145860954756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A374005 (n + 1)).toNat

end

end A207476.P13195287145860954756

/-! ## A207476.P2163963117098403192

`A207479(eq[7, A066657(n)])`
-/

namespace A207476.P2163963117098403192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207476.P2163963117098403192

/-! ## A207476.P2572312208425760972

`A207479(Δ[A023545(n+1)])`
-/

namespace A207476.P2572312208425760972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (f1 (n + 1) - f1 n).toNat

end

end A207476.P2572312208425760972

/-! ## A207476.P8668515420239318964

`A207479(eq[6, A185782(n+1)])`
-/

namespace A207476.P8668515420239318964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207476.P8668515420239318964

/-!
# A207477: 

The programs for A207477, there is no canonical definition to state claims against.
-/

/-! ## A207477.P10452773220310145992

`A207479(eq[8, A185782(n+1)])`
-/

namespace A207477.P10452773220310145992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207477.P10452773220310145992

/-!
# A207478: 

The programs for A207478, there is no canonical definition to state claims against.
-/

/-! ## A207478.P7957672693246710835

`A207479(eq[10, A185782(n+1)])`
-/

namespace A207478.P7957672693246710835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207478.P7957672693246710835

/-!
# A207480: a(n) = (3/2)*(1+prime(n)) - prime(n+1).

The programs for A207480, the canonical program `A207480.P11375312219797143362` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207480 has offset 2).

The definition of A207480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207480.P11375312219797143362

`3*(1+A000040(n+2))/2-A000040(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207480

/-- `3*(1+A000040(n+2))/2-A000040(n+3)` -/
def P11375312219797143362.Spec : Prop :=
  ∀ n, P11375312219797143362.a n = (A207480 (n + 2) : ℚ)

end A207480

/-! ## A207480.P8627836333018945408

`3/2*(1+A000040(n+2))-A000040(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A207480.P8627836333018945408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (1 + A000040 (n + 2) : ℚ) - (A000040 (n + 3) : ℚ)

end

end A207480.P8627836333018945408

namespace A207480

/-- `3/2*(1+A000040(n+2))-A000040(n+3)` -/
def P8627836333018945408.Spec : Prop :=
  ∀ n, P8627836333018945408.a n = (A207480 (n + 2) : ℚ)

end A207480

/-! ## A207480.P8782442893518964614

`A006254(n+1)-A176246(n+1)`
-/

namespace A207480.P8782442893518964614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - A176246 (n + 1)

end

end A207480.P8782442893518964614

namespace A207480

/-- `A006254(n+1)-A176246(n+1)` -/
def P8782442893518964614.Spec : Prop :=
  ∀ n, P8782442893518964614.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P3014262561319467079

`A245685(n+1)-A215848(n+1)`
-/

namespace A207480.P3014262561319467079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245685 (n + 1) - A215848 (n + 1)

end

end A207480.P3014262561319467079

namespace A207480

/-- `A245685(n+1)-A215848(n+1)` -/
def P3014262561319467079.Spec : Prop :=
  ∀ n, P3014262561319467079.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P10987140045747893429

`A283623(n+1)-A258326(n+1)`
-/

namespace A207480.P10987140045747893429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283623 (n + 1) - A258326 (n + 1)

end

end A207480.P10987140045747893429

namespace A207480

/-- `A283623(n+1)-A258326(n+1)` -/
def P10987140045747893429.Spec : Prop :=
  ∀ n, P10987140045747893429.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P15082678527331054573

`A098090(n+1)-A001223(n+2)`
-/

namespace A207480.P15082678527331054573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - A001223 (n + 2)

end

end A207480.P15082678527331054573

namespace A207480

/-- `A098090(n+1)-A001223(n+2)` -/
def P15082678527331054573.Spec : Prop :=
  ∀ n, P15082678527331054573.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P15959330553368768963

`A014302(n+3)%A006254(n+1)`
-/

namespace A207480.P15959330553368768963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014302 (n + 3)) (A006254 (n + 1))

end

end A207480.P15959330553368768963

namespace A207480

/-- `A014302(n+3)%A006254(n+1)` -/
def P15959330553368768963.Spec : Prop :=
  ∀ n, P15959330553368768963.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P18408745485403568936

`A245685(n+1)-A065091(n+2)`
-/

namespace A207480.P18408745485403568936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245685 (n + 1) - A065091 (n + 2)

end

end A207480.P18408745485403568936

namespace A207480

/-- `A245685(n+1)-A065091(n+2)` -/
def P18408745485403568936.Spec : Prop :=
  ∀ n, P18408745485403568936.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P7442645933827328668

`A006094(n+2)%A006254(n+1)`
-/

namespace A207480.P7442645933827328668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) (A006254 (n + 1))

end

end A207480.P7442645933827328668

namespace A207480

/-- `A006094(n+2)%A006254(n+1)` -/
def P7442645933827328668.Spec : Prop :=
  ∀ n, P7442645933827328668.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P16844367323064757146

`A098090(n+1)-Δ[A065091(n+1)]`
-/

namespace A207480.P16844367323064757146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - (f1 (n + 1) - f1 n)

end

end A207480.P16844367323064757146

namespace A207480

/-- `A098090(n+1)-Δ[A065091(n+1)]` -/
def P16844367323064757146.Spec : Prop :=
  ∀ n, P16844367323064757146.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P17132218417216676633

`A098090(n+1)-Δ[A154115(n+1)]`
-/

namespace A207480.P17132218417216676633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - (f1 (n + 1) - f1 n)

end

end A207480.P17132218417216676633

namespace A207480

/-- `A098090(n+1)-Δ[A154115(n+1)]` -/
def P17132218417216676633.Spec : Prop :=
  ∀ n, P17132218417216676633.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P17051321738609351685

`A111333(n+2)+1-A001223(n+2)`
-/

namespace A207480.P17051321738609351685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2) + (1 - A001223 (n + 2))

end

end A207480.P17051321738609351685

namespace A207480

/-- `A111333(n+2)+1-A001223(n+2)` -/
def P17051321738609351685.Spec : Prop :=
  ∀ n, P17051321738609351685.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P14242015287253398205

`A102781(n+2)+2-A001223(n+2)`
-/

namespace A207480.P14242015287253398205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2) + (2 - A001223 (n + 2))

end

end A207480.P14242015287253398205

namespace A207480

/-- `A102781(n+2)+2-A001223(n+2)` -/
def P14242015287253398205.Spec : Prop :=
  ∀ n, P14242015287253398205.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P6164787600341889075

`A130290(n+2)+2-A001223(n+2)`
-/

namespace A207480.P6164787600341889075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) + (2 - A001223 (n + 2))

end

end A207480.P6164787600341889075

namespace A207480

/-- `A130290(n+2)+2-A001223(n+2)` -/
def P6164787600341889075.Spec : Prop :=
  ∀ n, P6164787600341889075.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P17849128272443432023

`A102781(n+2)-2*A100820(n+2)`
-/

namespace A207480.P17849128272443432023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2) - 2 * A100820 (n + 2)

end

end A207480.P17849128272443432023

namespace A207480

/-- `A102781(n+2)-2*A100820(n+2)` -/
def P17849128272443432023.Spec : Prop :=
  ∀ n, P17849128272443432023.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P1986031963827221253

`A008864(n+2)/2-A046933(n+2)`
-/

namespace A207480.P1986031963827221253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 2) : ℚ) / 2 - (A046933 (n + 2) : ℚ)

end

end A207480.P1986031963827221253

namespace A207480

/-- `A008864(n+2)/2-A046933(n+2)` -/
def P1986031963827221253.Spec : Prop :=
  ∀ n, P1986031963827221253.a n = (A207480 (n + 2) : ℚ)

end A207480

/-! ## A207480.P4601001242358375434

`A062234(n+2)-A086801(n+2)/2`
-/

namespace A207480.P4601001242358375434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062234 (n + 2) : ℚ) - (A086801 (n + 2) : ℚ) / 2

end

end A207480.P4601001242358375434

namespace A207480

/-- `A062234(n+2)-A086801(n+2)/2` -/
def P4601001242358375434.Spec : Prop :=
  ∀ n, P4601001242358375434.a n = (A207480 (n + 2) : ℚ)

end A207480

/-! ## A207480.P11288006220603362798

`A098090(n+1)-A004277(Δ[A098090(n+1)])`
-/

namespace A207480.P11288006220603362798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - A004277 (f1 (n + 1) - f1 n).toNat

end

end A207480.P11288006220603362798

namespace A207480

/-- `A098090(n+1)-A004277(Δ[A098090(n+1)])` -/
def P11288006220603362798.Spec : Prop :=
  ∀ n, P11288006220603362798.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P1167844381579222656

`A065091(n+1)+A098090(n+1)-A065091(n+2)`
-/

namespace A207480.P1167844381579222656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A098090 (n + 1) - A065091 (n + 2))

end

end A207480.P1167844381579222656

namespace A207480

/-- `A065091(n+1)+A098090(n+1)-A065091(n+2)` -/
def P1167844381579222656.Spec : Prop :=
  ∀ n, P1167844381579222656.a n = A207480 (n + 2)

end A207480

/-! ## A207480.P4004526473125955377

`A098090(n+1)+A118538(n+1)-A118538(n+2)`
-/

namespace A207480.P4004526473125955377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + (A118538 (n + 1) - A118538 (n + 2))

end

end A207480.P4004526473125955377

namespace A207480

/-- `A098090(n+1)+A118538(n+1)-A118538(n+2)` -/
def P4004526473125955377.Spec : Prop :=
  ∀ n, P4004526473125955377.a n = A207480 (n + 2)

end A207480

/-!
# A207481: Numbers such that e <= p for all p^e in their prime factorization, p prime.

The programs for A207481, there is no canonical definition to state claims against.
-/

/-! ## A207481.P18162644421215672873

`comp[A185359(n+1)-1]+1`
-/

namespace A207481.P18162644421215672873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A207481.P18162644421215672873

/-! ## A207481.P14960829111792596875

`record[A377518(n+1)]`
-/

namespace A207481.P14960829111792596875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207481.P14960829111792596875

/-! ## A207481.P17657139049372599385

`record[A380088(n+1)]`
-/

namespace A207481.P17657139049372599385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207481.P17657139049372599385

/-! ## A207481.P14322465898866869046

`eq[1, A368331(n+1)]+1`
-/

namespace A207481.P14322465898866869046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A207481.P14322465898866869046

/-! ## A207481.P6322591614466323951

`lt[A368329(n+1), 2]+1`
-/

namespace A207481.P6322591614466323951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A207481.P6322591614466323951

/-! ## A207481.P16280847515370741899

`eq[1, A185358(n+1)]+1`
-/

namespace A207481.P16280847515370741899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A207481.P16280847515370741899

/-! ## A207481.P4602497313432392230

`lt[A294333(A144619(3*n)), 2]`
-/

namespace A207481.P4602497313432392230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A144619 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207481.P4602497313432392230

/-! ## A207481.P8951305968472477866

`lt[A321379(A262220(n+2)), A010877(n)]`
-/

namespace A207481.P8951305968472477866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (A262220 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A207481.P8951305968472477866

/-! ## A207481.P18015167202148750251

`lt[A294335(n), A007947(A113474(n+1))]`
-/

namespace A207481.P18015167202148750251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A113474 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A207481.P18015167202148750251

/-! ## A207481.P8754480651675657317

`comp[val((n+1)^8, 3)]`
-/

namespace A207481.P8754480651675657317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 8) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A207481.P8754480651675657317

/-!
# A207482: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207482, there is no canonical definition to state claims against.
-/

/-! ## A207482.P2972200898846045306

`A207488((n+1)²+n²)`
-/

namespace A207482.P2972200898846045306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 ((n + 1) ^ 2 + n ^ 2)

end

end A207482.P2972200898846045306

/-! ## A207482.P688766416209108251

`A207488(A001844(n))+A185284(n)`
-/

namespace A207482.P688766416209108251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A001844 n).toNat + A185284 n

end

end A207482.P688766416209108251

/-! ## A207482.P17875931065741152264

`A326680(n)+A207488(A001844(n))`
-/

namespace A207482.P17875931065741152264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A207488 (A001844 n).toNat

end

end A207482.P17875931065741152264

/-! ## A207482.P15883806504621267169

`A015250(n)*A207488(A001844(n))`
-/

namespace A207482.P15883806504621267169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015250 n * A207488 (A001844 n).toNat

end

end A207482.P15883806504621267169

/-! ## A207482.P2452817356654694253

`lcm(A141044(n), A207488(A001844(n)))`
-/

namespace A207482.P2452817356654694253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141044 n) (A207488 (A001844 n).toNat)

end

end A207482.P2452817356654694253

/-!
# A207483: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207483, there is no canonical definition to state claims against.
-/

/-! ## A207483.P13294299068141680231

`A207488(∑[n+3]+1)`
-/

namespace A207483.P13294299068141680231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207483.P13294299068141680231

/-! ## A207483.P16887912563936766583

`A207885(∑[n+3]+1)`
-/

namespace A207483.P16887912563936766583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207483.P16887912563936766583

/-! ## A207483.P10004873009594518468

`A207488(A034856(n+2))+A151909(n+1)`
-/

namespace A207483.P10004873009594518468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A034856 (n + 2)).toNat + A151909 (n + 1)

end

end A207483.P10004873009594518468

/-! ## A207483.P6062189869174903941

`A207488(A034856(n+2))%A186895(n+1)`
-/

namespace A207483.P6062189869174903941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207488 (A034856 (n + 2)).toNat) (A186895 (n + 1))

end

end A207483.P6062189869174903941

/-! ## A207483.P4716312620439659336

`A207488(A034856(n+2))+A010054(3*n+2)`
-/

namespace A207483.P4716312620439659336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A034856 (n + 2)).toNat + A010054 (3 * n + 2)

end

end A207483.P4716312620439659336

/-!
# A207484: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207484, there is no canonical definition to state claims against.
-/

/-! ## A207484.P1919209413482555318

`A207488(A141214(n+1))`
-/

namespace A207484.P1919209413482555318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A141214 (n + 1)).toNat

end

end A207484.P1919209413482555318

/-! ## A207484.P5550909109369605749

`A207488(A027379(n+2))`
-/

namespace A207484.P5550909109369605749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A027379 (n + 2)).toNat

end

end A207484.P5550909109369605749

/-! ## A207484.P3469401925525775619

`A207488(A055998(n+2))`
-/

namespace A207484.P3469401925525775619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A055998 (n + 2)).toNat

end

end A207484.P3469401925525775619

/-! ## A207484.P10126339882983054079

`A207488(A155212(n)+5)`
-/

namespace A207484.P10126339882983054079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A155212 n + 5).toNat

end

end A207484.P10126339882983054079

/-! ## A207484.P17559348405518011092

`A207488(A052905(n+1)+2)`
-/

namespace A207484.P17559348405518011092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A052905 (n + 1) + 2).toNat

end

end A207484.P17559348405518011092

/-!
# A207485: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207485, there is no canonical definition to state claims against.
-/

/-! ## A207485.P12702056723537845120

`A207488(A046691(n+3))`
-/

namespace A207485.P12702056723537845120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A046691 (n + 3)).toNat

end

end A207485.P12702056723537845120

/-! ## A207485.P7014107359516201022

`A207488(Δ[A023545(n+1)])`
-/

namespace A207485.P7014107359516201022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (f1 (n + 1) - f1 n).toNat

end

end A207485.P7014107359516201022

/-! ## A207485.P11340487195542311527

`A207488(A055999(n+2)+2)`
-/

namespace A207485.P11340487195542311527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A055999 (n + 2) + 2).toNat

end

end A207485.P11340487195542311527

/-! ## A207485.P12401299456596120040

`A207488(A155212(n+1)+4)`
-/

namespace A207485.P12401299456596120040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A155212 (n + 1) + 4).toNat

end

end A207485.P12401299456596120040

/-! ## A207485.P12577313935390391261

`A207488(A000096(n+4)-3)`
-/

namespace A207485.P12577313935390391261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A000096 (n + 4) - 3).toNat

end

end A207485.P12577313935390391261

/-!
# A207486: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207486, there is no canonical definition to state claims against.
-/

/-! ## A207486.P4822431270556336898

`A207488(A052905(n+3))`
-/

namespace A207486.P4822431270556336898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A052905 (n + 3)).toNat

end

end A207486.P4822431270556336898

/-! ## A207486.P987039477767968902

`A207488(A055999(n+3)+1)`
-/

namespace A207486.P987039477767968902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A055999 (n + 3) + 1).toNat

end

end A207486.P987039477767968902

/-! ## A207486.P13255548309481151295

`A207488(A046691(n+4)-1)`
-/

namespace A207486.P13255548309481151295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A046691 (n + 4) - 1).toNat

end

end A207486.P13255548309481151295

/-! ## A207486.P4666286334159500439

`A207488(A000217(n+6)-5)`
-/

namespace A207486.P4666286334159500439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A000217 (n + 6) - 5).toNat

end

end A207486.P4666286334159500439

/-! ## A207486.P10181291788629596302

`A207488(A134869(n+6)-6)`
-/

namespace A207486.P10181291788629596302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A134869 (n + 6) - 6).toNat

end

end A207486.P10181291788629596302

/-!
# A207487: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207487, there is no canonical definition to state claims against.
-/

/-! ## A207487.P18204027183294324471

`A207488(A055999(n+4))`
-/

namespace A207487.P18204027183294324471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A055999 (n + 4)).toNat

end

end A207487.P18204027183294324471

/-! ## A207487.P2167929817653250322

`A207488(A000124(n+7)-7)`
-/

namespace A207487.P2167929817653250322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A000124 (n + 7) - 7).toNat

end

end A207487.P2167929817653250322

/-! ## A207487.P15770962609561470799

`A207488(A000217(n+6)+n+1)`
-/

namespace A207487.P15770962609561470799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207487.P15770962609561470799

/-! ## A207487.P14499004514335520694

`A207488(A052905(n+3)+n+6)`
-/

namespace A207487.P14499004514335520694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A052905 (n + 3) + (n + 6 : ℤ)).toNat

end

end A207487.P14499004514335520694

/-! ## A207487.P3637290266307717760

`A207488(A167499(n+4)+A005843(n+1))`
-/

namespace A207487.P3637290266307717760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A167499 (n + 4) + A005843 (n + 1)).toNat

end

end A207487.P3637290266307717760

/-!
# A207489: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207489, there is no canonical definition to state claims against.
-/

/-! ## A207489.P17803655612045037548

`A207488(A141214(n)+7)`
-/

namespace A207489.P17803655612045037548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A141214 n + 7).toNat

end

end A207489.P17803655612045037548

/-! ## A207489.P16483659272297876629

`A207488(A052905(n)+9)`
-/

namespace A207489.P16483659272297876629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A052905 n + 9).toNat

end

end A207489.P16483659272297876629

/-! ## A207489.P11807868987417151748

`A207488(A055999(n)+10)`
-/

namespace A207489.P11807868987417151748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A055999 n + 10).toNat

end

end A207489.P11807868987417151748

/-! ## A207489.P171576976232495463

`A207488(A167614(n+2)+1)`
-/

namespace A207489.P171576976232495463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A167614 (n + 2) + 1).toNat

end

end A207489.P171576976232495463

/-! ## A207489.P12334102036957483211

`A207488(A112355(n+1)+4)`
-/

namespace A207489.P12334102036957483211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A112355 (n + 1) + 4).toNat

end

end A207489.P12334102036957483211

/-!
# A207490: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207490, there is no canonical definition to state claims against.
-/

/-! ## A207490.P4230625304372513861

`A207488(A000124(n+4)+4)`
-/

namespace A207490.P4230625304372513861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A000124 (n + 4) + 4).toNat

end

end A207490.P4230625304372513861

/-! ## A207490.P4619545312402959344

`A207488(A000217(n+4)+5)`
-/

namespace A207490.P4619545312402959344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A000217 (n + 4) + 5).toNat

end

end A207490.P4619545312402959344

/-! ## A207490.P18270619102710447232

`A207488(A055999(n+1)+11)`
-/

namespace A207490.P18270619102710447232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A055999 (n + 1) + 11).toNat

end

end A207490.P18270619102710447232

/-! ## A207490.P3561711564301270005

`A207488(A134869(n+5)-(n+1))`
-/

namespace A207490.P3561711564301270005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A134869 (n + 5) - (n + 1 : ℤ)).toNat

end

end A207490.P3561711564301270005

/-! ## A207490.P14633330728110000176

`A207488(A052905(n+3)-(2*n+1))`
-/

namespace A207490.P14633330728110000176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A207490.P14633330728110000176

/-!
# A207491: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207491, there is no canonical definition to state claims against.
-/

/-! ## A207491.P2291127158687504790

`A207488(A134869(n+5)+5)`
-/

namespace A207491.P2291127158687504790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A134869 (n + 5) + 5).toNat

end

end A207491.P2291127158687504790

/-! ## A207491.P15776207205303229892

`A207488(A000096(n+4)+7)`
-/

namespace A207491.P15776207205303229892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A000096 (n + 4) + 7).toNat

end

end A207491.P15776207205303229892

/-! ## A207491.P6247363322783725046

`A207488(A000217(n+5)+6)`
-/

namespace A207491.P6247363322783725046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A000217 (n + 5) + 6).toNat

end

end A207491.P6247363322783725046

/-! ## A207491.P8966905088835203960

`A207488(A027379(n+3)+9)`
-/

namespace A207491.P8966905088835203960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A027379 (n + 3) + 9).toNat

end

end A207491.P8966905088835203960

/-! ## A207491.P14417447028261029458

`A207488(A022856(n+10)-(n+2))`
-/

namespace A207491.P14417447028261029458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A022856 (n + 10) - (n + 2 : ℤ)).toNat

end

end A207491.P14417447028261029458

/-!
# A207492: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207492, there is no canonical definition to state claims against.
-/

/-! ## A207492.P2836600392481202847

`A207488(A167487(n+5))`
-/

namespace A207492.P2836600392481202847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A167487 (n + 5)).toNat

end

end A207492.P2836600392481202847

/-! ## A207492.P11907102883154851899

`A207488(A167499(n+5)+2)`
-/

namespace A207492.P11907102883154851899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A167499 (n + 5) + 2).toNat

end

end A207492.P11907102883154851899

/-! ## A207492.P3498261720996117544

`A207488(A000217(n+6)+7)`
-/

namespace A207492.P3498261720996117544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A000217 (n + 6) + 7).toNat

end

end A207492.P3498261720996117544

/-! ## A207492.P4002811994487214584

`A207488(A055998(n)+A008574(n+7))`
-/

namespace A207492.P4002811994487214584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A055998 n + A008574 (n + 7)).toNat

end

end A207492.P4002811994487214584

/-! ## A207492.P4451498334920172744

`A207488(A046691(n+6)-A103517(n+1))`
-/

namespace A207492.P4451498334920172744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (A046691 (n + 6) - A103517 (n + 1)).toNat

end

end A207492.P4451498334920172744

/-!
# A207493: E.g.f. A(x) is the series reversion of 2*x-1/2*x^2-exp(x)+1.

The programs for A207493, there is no canonical definition to state claims against.
-/

/-! ## A207493.P11009908685931199015

`A004274(abs(Δ[A101682(n)]))`
-/

namespace A207493.P11009908685931199015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 |f1 (n + 1) - f1 n|.toNat

end

end A207493.P11009908685931199015

/-!
# A207494: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207494, there is no canonical definition to state claims against.
-/

/-! ## A207494.P8173414099053919028

`A207500(∑[4*n]+1)`
-/

namespace A207494.P8173414099053919028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207494.P8173414099053919028

/-! ## A207494.P6145822126743441153

`or(char[4], A207500(A001844(n)))`
-/

namespace A207494.P6145822126743441153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207500 (A001844 n).toNat)

end

end A207494.P6145822126743441153

/-! ## A207494.P9672178395707832985

`record[A003982(n)*A207500(n+1)]`
-/

namespace A207494.P9672178395707832985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207494.P9672178395707832985

/-! ## A207494.P2287881208443240497

`record[gcd(A114327(n), A207500(n+1))]`
-/

namespace A207494.P2287881208443240497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207500 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207494.P2287881208443240497

/-! ## A207494.P3293849272180950649

`record[A207500(n+1)/A207536(2*n+1)]`
-/

namespace A207494.P3293849272180950649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207500 (n + 1) : ℚ) / (A207536 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207494.P3293849272180950649

/-!
# A207495: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207495, the canonical program `A207495.P5959168758355974435` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207495 has offset 1).

The definition of A207495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207495.P5959168758355974435

`ogf((6+6x-66x^2-57x^3+119x^4+72x^5-19x^6-11x^7)/(1-5x+2x^2+14x^3-6x^4-8x^5+x^6+x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207495

/-- `ogf((6+6x-66x^2-57x^3+119x^4+72x^5-19x^6-11x^7)/(1-5x+2x^2+14x^3-6x^4-8x^5+x^6+x^7))` -/
def P5959168758355974435.Spec : Prop :=
  ∀ n, P5959168758355974435.a n = A207495 (n + 1)

theorem P5959168758355974435.correct : P5959168758355974435.Spec := by
  intro n
  simp only [A207495, Nat.add_sub_cancel]

end A207495

/-! ## A207495.P9638928617150146478

`A207960(∑[n+3]+1)`
-/

namespace A207495.P9638928617150146478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207495.P9638928617150146478

namespace A207495

/-- `A207960(∑[n+3]+1)` -/
def P9638928617150146478.Spec : Prop :=
  ∀ n, P9638928617150146478.a n = A207495 (n + 1)

end A207495

/-! ## A207495.P4224496966534941112

`A207960(A034856(n+2))+A185284(n)`
-/

namespace A207495.P4224496966534941112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (A034856 (n + 2)).toNat + A185284 n

end

end A207495.P4224496966534941112

namespace A207495

/-- `A207960(A034856(n+2))+A185284(n)` -/
def P4224496966534941112.Spec : Prop :=
  ∀ n, P4224496966534941112.a n = A207495 (n + 1)

end A207495

/-! ## A207495.P5154444895600060110

`A207500(∑[n+3]+1)`
-/

namespace A207495.P5154444895600060110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207495.P5154444895600060110

namespace A207495

/-- `A207500(∑[n+3]+1)` -/
def P5154444895600060110.Spec : Prop :=
  ∀ n, P5154444895600060110.a n = A207495 (n + 1)

end A207495

/-! ## A207495.P6957465044169332539

`A207960(A034856(n+2))%A029873(n)`
-/

namespace A207495.P6957465044169332539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207960 (A034856 (n + 2)).toNat) (A029873 n)

end

end A207495.P6957465044169332539

namespace A207495

/-- `A207960(A034856(n+2))%A029873(n)` -/
def P6957465044169332539.Spec : Prop :=
  ∀ n, P6957465044169332539.a n = A207495 (n + 1)

end A207495

/-!
# A207496: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207496, there is no canonical definition to state claims against.
-/

/-! ## A207496.P4931808312369478542

`A207500(A141214(n+1))`
-/

namespace A207496.P4931808312369478542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A141214 (n + 1)).toNat

end

end A207496.P4931808312369478542

/-! ## A207496.P8347100974815027459

`A207500(A027379(n+2))`
-/

namespace A207496.P8347100974815027459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A027379 (n + 2)).toNat

end

end A207496.P8347100974815027459

/-! ## A207496.P6174476475438444334

`A207500(A055998(n+2))`
-/

namespace A207496.P6174476475438444334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A055998 (n + 2)).toNat

end

end A207496.P6174476475438444334

/-! ## A207496.P439614406162174368

`A207500(A155212(n)+5)`
-/

namespace A207496.P439614406162174368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A155212 n + 5).toNat

end

end A207496.P439614406162174368

/-! ## A207496.P4599349698481672698

`A207500(A056000(n)+7)`
-/

namespace A207496.P4599349698481672698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A056000 n + 7).toNat

end

end A207496.P4599349698481672698

/-!
# A207497: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207497, there is no canonical definition to state claims against.
-/

/-! ## A207497.P9815594088405753694

`A207500(A046691(n+3))`
-/

namespace A207497.P9815594088405753694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A046691 (n + 3)).toNat

end

end A207497.P9815594088405753694

/-! ## A207497.P2708591186015346362

`A207500(Δ[A023545(n+1)])`
-/

namespace A207497.P2708591186015346362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (f1 (n + 1) - f1 n).toNat

end

end A207497.P2708591186015346362

/-! ## A207497.P4205044420583750026

`A207500(A056000(n+1)+6)`
-/

namespace A207497.P4205044420583750026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A056000 (n + 1) + 6).toNat

end

end A207497.P4205044420583750026

/-! ## A207497.P14302585270169476685

`A207500(A000217(n+5)-4)`
-/

namespace A207497.P14302585270169476685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000217 (n + 5) - 4).toNat

end

end A207497.P14302585270169476685

/-! ## A207497.P13554829901592324087

`A207500(A000124(n+5)-5)`
-/

namespace A207497.P13554829901592324087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000124 (n + 5) - 5).toNat

end

end A207497.P13554829901592324087

/-!
# A207498: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207498, there is no canonical definition to state claims against.
-/

/-! ## A207498.P16230123497757735400

`A207500(A052905(n+3))`
-/

namespace A207498.P16230123497757735400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A052905 (n + 3)).toNat

end

end A207498.P16230123497757735400

/-! ## A207498.P14144614716517965319

`A207500(A055999(n+3)+1)`
-/

namespace A207498.P14144614716517965319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A055999 (n + 3) + 1).toNat

end

end A207498.P14144614716517965319

/-! ## A207498.P151944590968162226

`A207500(A046691(n+4)-1)`
-/

namespace A207498.P151944590968162226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A046691 (n + 4) - 1).toNat

end

end A207498.P151944590968162226

/-! ## A207498.P8172379190779856538

`A207500(A055998(n+4)-2)`
-/

namespace A207498.P8172379190779856538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A055998 (n + 4) - 2).toNat

end

end A207498.P8172379190779856538

/-! ## A207498.P16746948877955685893

`A207500(A000124(n+6)-6)`
-/

namespace A207498.P16746948877955685893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000124 (n + 6) - 6).toNat

end

end A207498.P16746948877955685893

/-!
# A207499: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207499, there is no canonical definition to state claims against.
-/

/-! ## A207499.P5057760777701464220

`A207500(A055999(n+4))`
-/

namespace A207499.P5057760777701464220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A055999 (n + 4)).toNat

end

end A207499.P5057760777701464220

/-! ## A207499.P5222938253862688996

`A207500(A027379(n+5)-3)`
-/

namespace A207499.P5222938253862688996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A027379 (n + 5) - 3).toNat

end

end A207499.P5222938253862688996

/-! ## A207499.P18105100087498777699

`A207500(A000096(n+6)-5)`
-/

namespace A207499.P18105100087498777699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000096 (n + 6) - 5).toNat

end

end A207499.P18105100087498777699

/-! ## A207499.P1148431853991934537

`A207500(A000217(n+7)-6)`
-/

namespace A207499.P1148431853991934537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000217 (n + 7) - 6).toNat

end

end A207499.P1148431853991934537

/-! ## A207499.P17192057250820301416

`A207500(A000124(n+7)-7)`
-/

namespace A207499.P17192057250820301416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000124 (n + 7) - 7).toNat

end

end A207499.P17192057250820301416

