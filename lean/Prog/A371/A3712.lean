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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
# A371201: a(n) = Sum_{k=prime(n)..prime(n+1)-1} k, with a(0) = 1.

The programs for A371201, the canonical program `A371201.P4499511649538821653` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371201 has offset 0).

The definition of A371201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371201.P4499511649538821653

`A138383(n)-A054541(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A371201

/-- `A138383(n)-A054541(n+1)` -/
def P4499511649538821653.Spec : Prop :=
  ∀ n, P4499511649538821653.a n = A371201 n

theorem P4499511649538821653.correct : P4499511649538821653.Spec := by
  intro n
  simp only [A371201]

end A371201

/-! ## A371201.P1556988019037063765

`Δ[C(A008578(n+1), 2)]`
-/

namespace A371201.P1556988019037063765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008578 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A371201.P1556988019037063765

namespace A371201

/-- `Δ[C(A008578(n+1), 2)]` -/
def P1556988019037063765.Spec : Prop :=
  ∀ n, P1556988019037063765.a n = A371201 n

end A371201

/-! ## A371201.P4209143406742077909

`Δ[C(A182986(n+1), 2)]`
-/

namespace A371201.P4209143406742077909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A182986 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A371201.P4209143406742077909

namespace A371201

/-- `Δ[C(A182986(n+1), 2)]` -/
def P4209143406742077909.Spec : Prop :=
  ∀ n, P4209143406742077909.a n = A371201 n

end A371201

/-! ## A371201.P1635261617760339879

`Δ[C(A001747(n+1)/2, 2)]`
-/

namespace A371201.P1635261617760339879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A371201.P1635261617760339879

namespace A371201

/-- `Δ[C(A001747(n+1)/2, 2)]` -/
def P1635261617760339879.Spec : Prop :=
  ∀ n, P1635261617760339879.a n = A371201 n

end A371201

/-! ## A371201.P12200535835160159965

`Δ[A000217(A008578(n+1)-1)]`
-/

namespace A371201.P12200535835160159965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008578 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371201.P12200535835160159965

namespace A371201

/-- `Δ[A000217(A008578(n+1)-1)]` -/
def P12200535835160159965.Spec : Prop :=
  ∀ n, P12200535835160159965.a n = A371201 n

end A371201

/-! ## A371201.P13601885336027466910

`Δ[A161680(A008578(n+1))]`
-/

namespace A371201.P13601885336027466910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371201.P13601885336027466910

namespace A371201

/-- `Δ[A161680(A008578(n+1))]` -/
def P13601885336027466910.Spec : Prop :=
  ∀ n, P13601885336027466910.a n = A371201 n

end A371201

/-! ## A371201.P4638806657171956287

`Δ[A069153(A158611(n+2))]`
-/

namespace A371201.P4638806657171956287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (A158611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371201.P4638806657171956287

namespace A371201

/-- `Δ[A069153(A158611(n+2))]` -/
def P4638806657171956287.Spec : Prop :=
  ∀ n, P4638806657171956287.a n = A371201 n

end A371201

/-! ## A371201.P3429339778937791874

`Δ[record[A232267(n)]]`
-/

namespace A371201.P3429339778937791874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371201.P3429339778937791874

namespace A371201

/-- `Δ[record[A232267(n)]]` -/
def P3429339778937791874.Spec : Prop :=
  ∀ n, P3429339778937791874.a n = A371201 n

end A371201

/-! ## A371201.P2760169895482979230

`Δ[record[A096780(n+1)]]`
-/

namespace A371201.P2760169895482979230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096780 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371201.P2760169895482979230

namespace A371201

/-- `Δ[record[A096780(n+1)]]` -/
def P2760169895482979230.Spec : Prop :=
  ∀ n, P2760169895482979230.a n = A371201 n

end A371201

/-!
# A371208: Number of minimum vertex colorings in the complement of the wheel graph on n nodes.

The programs for A371208, there is no canonical definition to state claims against.
-/

/-! ## A371208.P11530749058812146662

`lcm(A129574(A000182(n+1)), A235353(2*n+1))`
-/

namespace A371208.P11530749058812146662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129574 (A000182 (n + 1)).toNat) (A235353 (2 * n + 1))

end

end A371208.P11530749058812146662

/-!
# A371209: Number of ordered factorizations of n into factors > 2.

The programs for A371209, there is no canonical definition to state claims against.
-/

/-! ## A371209.P2372762249030606480

`A371211(A319525(n+1))`
-/

namespace A371209.P2372762249030606480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371211 (A319525 (n + 1)).toNat

end

end A371209.P2372762249030606480

/-! ## A371209.P9889533316033888023

`A371211(A003961(n+1))`
-/

namespace A371209.P9889533316033888023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371211 (A003961 (n + 1)).toNat

end

end A371209.P9889533316033888023

/-! ## A371209.P15861867076935133909

`A371211(A332818(n+1))`
-/

namespace A371209.P15861867076935133909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371211 (A332818 (n + 1)).toNat

end

end A371209.P15861867076935133909

/-! ## A371209.P3853286718168564745

`A371211(A064988(n+1))`
-/

namespace A371209.P3853286718168564745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371211 (A064988 (n + 1)).toNat

end

end A371209.P3853286718168564745

/-! ## A371209.P6139790260764738307

`A371211(A357983(n+1))`
-/

namespace A371209.P6139790260764738307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371211 (A357983 (n + 1)).toNat

end

end A371209.P6139790260764738307

/-! ## A371209.P1938525653701409040

`A371211(A348746(n+1))`
-/

namespace A371209.P1938525653701409040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371211 (A348746 (n + 1)).toNat

end

end A371209.P1938525653701409040

/-! ## A371209.P722739739013553256

`A371211(A297002(n+1))`
-/

namespace A371209.P722739739013553256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371211 (A297002 (n + 1)).toNat

end

end A371209.P722739739013553256

/-! ## A371209.P16193832084737189012

`A371211(A389092(n+1))`
-/

namespace A371209.P16193832084737189012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371211 (A389092 (n + 1)).toNat

end

end A371209.P16193832084737189012

/-! ## A371209.P1178658954993111254

`A371213(A354202(n+1))`
-/

namespace A371209.P1178658954993111254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A354202 (n + 1)).toNat

end

end A371209.P1178658954993111254

/-! ## A371209.P972600323922688718

`A371213(A357852(n+1))`
-/

namespace A371209.P972600323922688718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A357852 (n + 1)).toNat

end

end A371209.P972600323922688718

/-!
# A371210: Number of minimum vertex colorings in the complement of the path graph on n nodes.

The programs for A371210, the canonical program `A371210.P12332570680869873613` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371210 has offset 1).

The definition of A371210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371210.P12332570680869873613

`A324225(A087811(n+2))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A371210

/-- `A324225(A087811(n+2))` -/
def P12332570680869873613.Spec : Prop :=
  ∀ n, P12332570680869873613.a n = A371210 (n + 1)

theorem P12332570680869873613.correct : P12332570680869873613.Spec := by
  intro n
  simp only [A371210, Nat.add_sub_cancel]

end A371210

/-! ## A371210.P16257741619422297996

`∏[A158416(n)]*A158416(n)`
-/

namespace A371210.P16257741619422297996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A158416 n

end

end A371210.P16257741619422297996

namespace A371210

/-- `∏[A158416(n)]*A158416(n)` -/
def P16257741619422297996.Spec : Prop :=
  ∀ n, P16257741619422297996.a n = A371210 (n + 1)

end A371210

/-! ## A371210.P964589826036385976

`A152271(n+1)²*A081123(n+1)`
-/

namespace A371210.P964589826036385976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 1) ^ 2 * A081123 (n + 1)

end

end A371210.P964589826036385976

namespace A371210

/-- `A152271(n+1)²*A081123(n+1)` -/
def P964589826036385976.Spec : Prop :=
  ∀ n, P964589826036385976.a n = A371210 (n + 1)

end A371210

/-! ## A371210.P1614628954460864966

`A144084(A101881(n))`
-/

namespace A371210.P1614628954460864966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144084 (A101881 n).toNat

end

end A371210.P1614628954460864966

namespace A371210

/-- `A144084(A101881(n))` -/
def P1614628954460864966.Spec : Prop :=
  ∀ n, P1614628954460864966.a n = A371210 (n + 1)

end A371210

/-! ## A371210.P8823854478987495197

`A259334(A117142(n+2))`
-/

namespace A371210.P8823854478987495197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259334 (A117142 (n + 2)).toNat

end

end A371210.P8823854478987495197

namespace A371210

/-- `A259334(A117142(n+2))` -/
def P8823854478987495197.Spec : Prop :=
  ∀ n, P8823854478987495197.a n = A371210 (n + 1)

end A371210

/-! ## A371210.P114227503493688603

`A249128(A316966(n+1))`
-/

namespace A371210.P114227503493688603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249128 (A316966 (n + 1)).toNat

end

end A371210.P114227503493688603

namespace A371210

/-- `A249128(A316966(n+1))` -/
def P114227503493688603.Spec : Prop :=
  ∀ n, P114227503493688603.a n = A371210 (n + 1)

end A371210

/-! ## A371210.P13801310124152016432

`A267383(A178218(n+2))`
-/

namespace A371210.P13801310124152016432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A178218 (n + 2)).toNat

end

end A371210.P13801310124152016432

namespace A371210

/-- `A267383(A178218(n+2))` -/
def P13801310124152016432.Spec : Prop :=
  ∀ n, P13801310124152016432.a n = A371210 (n + 1)

end A371210

/-! ## A371210.P13210978323318789392

`A290724(A000982(n+1))`
-/

namespace A371210.P13210978323318789392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290724 (A000982 (n + 1)).toNat

end

end A371210.P13210978323318789392

namespace A371210

/-- `A290724(A000982(n+1))` -/
def P13210978323318789392.Spec : Prop :=
  ∀ n, P13210978323318789392.a n = A371210 (n + 1)

end A371210

/-!
# A371211: Number of ordered factorizations of n into factors > 3.

The programs for A371211, there is no canonical definition to state claims against.
-/

/-! ## A371211.P10462896918395821895

`A371213(A003961(n+1))`
-/

namespace A371211.P10462896918395821895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A003961 (n + 1)).toNat

end

end A371211.P10462896918395821895

/-! ## A371211.P2447583611790843543

`A371213(A332818(n+1))`
-/

namespace A371211.P2447583611790843543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A332818 (n + 1)).toNat

end

end A371211.P2447583611790843543

/-! ## A371211.P7926301908285248001

`A371213(A064988(n+1))`
-/

namespace A371211.P7926301908285248001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A064988 (n + 1)).toNat

end

end A371211.P7926301908285248001

/-! ## A371211.P5674932489087510955

`A371213(A348746(n+1))`
-/

namespace A371211.P5674932489087510955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A348746 (n + 1)).toNat

end

end A371211.P5674932489087510955

/-! ## A371211.P10509952249585137548

`A371213(A354091(n+1))`
-/

namespace A371211.P10509952249585137548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A354091 (n + 1)).toNat

end

end A371211.P10509952249585137548

/-!
# A371212: Number of ordered factorizations of n into factors > 4.

The programs for A371212, there is no canonical definition to state claims against.
-/

/-! ## A371212.P915252000874303494

`A371213(A290641(n+1))`
-/

namespace A371212.P915252000874303494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A290641 (n + 1)).toNat

end

end A371212.P915252000874303494

/-! ## A371212.P13275636302079438905

`A371213(A319525(n+1))`
-/

namespace A371212.P13275636302079438905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A319525 (n + 1)).toNat

end

end A371212.P13275636302079438905

/-! ## A371212.P14174048171106172304

`A371213(A357983(n+1))`
-/

namespace A371212.P14174048171106172304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A357983 (n + 1)).toNat

end

end A371212.P14174048171106172304

/-! ## A371212.P14772353982718221809

`A371213(A371170(2*(n+1))-A371188(n+1))`
-/

namespace A371212.P14772353982718221809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371213 (A371170 (2 * (n + 1)) - A371188 (n + 1)).toNat

end

end A371212.P14772353982718221809

/-!
# A371213: Number of ordered factorizations of n into factors > 5.

The programs for A371213, there is no canonical definition to state claims against.
-/

/-! ## A371213.P9464244675431534095

`A052409(A133567(n+1)*A343382(n)+1)`
-/

namespace A371213.P9464244675431534095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A133567 (n + 1) * A343382 n + 1).toNat

end

end A371213.P9464244675431534095

/-! ## A371213.P16962261802234547104

`A185115(n)+A076142(A212629(2*(n+1)))`
-/

namespace A371213.P16962261802234547104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 n + A076142 (A212629 (2 * (n + 1))).toNat

end

end A371213.P16962261802234547104

/-! ## A371213.P11285632359315847043

`A355032(n+1)%A118210(n+1)`
-/

namespace A371213.P11285632359315847043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355032 (n + 1)) (A118210 (n + 1))

end

end A371213.P11285632359315847043

/-! ## A371213.P9578452814628541587

`gcd(A151620(n), A297034(n+1))`
-/

namespace A371213.P9578452814628541587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151620 n) (A297034 (n + 1))

end

end A371213.P9578452814628541587

/-!
# A371214: Lexicographically earliest sequence of distinct nonnegative integers such that for any n > 0, a(n-1) + a(n) is a multiple of n, and the least value not yet in the sequence appears as soon as possible.

The programs for A371214, there is no canonical definition to state claims against.
-/

/-! ## A371214.P7285185892553022137

`A002262(A083374(n+1)+A001057(n))`
-/

namespace A371214.P7285185892553022137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A083374 (n + 1) + A001057 n).toNat

end

end A371214.P7285185892553022137

/-! ## A371214.P10801087705189676655

`A074377(n)%A005897(A022170(2*n))`
-/

namespace A371214.P10801087705189676655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074377 n) (A005897 (A022170 (2 * n)).toNat)

end

end A371214.P10801087705189676655

/-! ## A371214.P7341298106200720337

`A156859(n)/A000005(A000302(n)^(n%2))`
-/

namespace A371214.P7341298106200720337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156859 n : ℚ) / (A000005 (A000302 n ^ (n % 2)).toNat : ℚ)

end

end A371214.P7341298106200720337

/-!
# A371217: The maximum deck size to perform Colm Mulcahy's n-card trick.

The programs for A371217, there is no canonical definition to state claims against.
-/

/-! ## A371217.P9537128474028735232

`A002104(n)*A322250(2*n+1)+1+n`
-/

namespace A371217.P9537128474028735232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n * A322250 (2 * n + 1) + 1 + (n : ℤ)

end

end A371217.P9537128474028735232

/-!
# A371218: Greedy Cantor Dust Partition level 2.

The programs for A371218, there is no canonical definition to state claims against.
-/

/-! ## A371218.P15139976826000334267

`A323398(n+1)+1`
-/

namespace A371218.P15139976826000334267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323398 (n + 1) + 1

end

end A371218.P15139976826000334267

/-! ## A371218.P15662148315010192786

`eq[1, A006997(n)]+1`
-/

namespace A371218.P15662148315010192786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371218.P15662148315010192786

/-! ## A371218.P12778059649039561458

`eq[2, A119985(n)]+1`
-/

namespace A371218.P12778059649039561458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371218.P12778059649039561458

/-! ## A371218.P13262669585607958272

`A262057(∑[n+2])+1`
-/

namespace A371218.P13262669585607958272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262057 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A371218.P13262669585607958272

/-! ## A371218.P2257258966052508516

`A293030(∑[n+1]+2)`
-/

namespace A371218.P2257258966052508516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293030 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A371218.P2257258966052508516

/-!
# A371222: Product of digits of (n written in base 3) mod 3.

The programs for A371222, the canonical program `A371222.P12633540139532149241` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371222 has offset 0).

The definition of A371222 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371222.P12633540139532149241

`A309953(n)%3`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A371222

/-- `A309953(n)%3` -/
def P12633540139532149241.Spec : Prop :=
  ∀ n, P12633540139532149241.a n = A371222 n

theorem P12633540139532149241.correct : P12633540139532149241.Spec := by
  intro n
  simp only [A371222]

end A371222

/-! ## A371222.P1440273836853851446

`a(a(floor(n/3))*a(n%3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A371222.P1440273836853851446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (a ⌊(n : ℚ) / 3⌋.toNat * a (n % 3))

end

end A371222.P1440273836853851446

namespace A371222

/-- `a(a(floor(n/3))*a(n%3))` -/
def P1440273836853851446.Spec : Prop :=
  ∀ n, (P1440273836853851446.a n : ℤ) = A371222 n

end A371222

/-! ## A371222.P7225749605660364257

`A002828(A309953(n))`
-/

namespace A371222.P7225749605660364257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A309953 n).toNat

end

end A371222.P7225749605660364257

namespace A371222

/-- `A002828(A309953(n))` -/
def P7225749605660364257.Spec : Prop :=
  ∀ n, P7225749605660364257.a n = A371222 n

end A371222

/-! ## A371222.P17408537186525333476

`A080425(2*A309953(n))`
-/

namespace A371222.P17408537186525333476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (2 * A309953 n).toNat

end

end A371222.P17408537186525333476

namespace A371222

/-- `A080425(2*A309953(n))` -/
def P17408537186525333476.Spec : Prop :=
  ∀ n, P17408537186525333476.a n = A371222 n

end A371222

/-! ## A371222.P9538794738577000698

`A255689(4*A309953(n))`
-/

namespace A371222.P9538794738577000698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255689 (4 * A309953 n).toNat

end

end A371222.P9538794738577000698

namespace A371222

/-- `A255689(4*A309953(n))` -/
def P9538794738577000698.Spec : Prop :=
  ∀ n, P9538794738577000698.a n = A371222 n

end A371222

/-! ## A371222.P9680666444297056570

`A027615(∏{digits}[A007089(n), #])`
-/

namespace A371222.P9680666444297056570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A371222.P9680666444297056570

namespace A371222

/-- `A027615(∏{digits}[A007089(n), #])` -/
def P9680666444297056570.Spec : Prop :=
  ∀ n, P9680666444297056570.a n = A371222 n

end A371222

/-! ## A371222.P7202899102570719821

`A200753(n)%A122553(n)`
-/

namespace A371222.P7202899102570719821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200753 n) (A122553 n)

end

end A371222.P7202899102570719821

namespace A371222

/-- `A200753(n)%A122553(n)` -/
def P7202899102570719821.Spec : Prop :=
  ∀ n, P7202899102570719821.a n = A371222 n

end A371222

/-!
# A371223: Perfect powers (A001597) equal to the sum of a factorial number (A000142) and a Fibonacci number (A000045).

The programs for A371223, there is no canonical definition to state claims against.
-/

/-! ## A371223.P8889804893040584391

`filter[A305462(n+2), A355448(#)]`
-/

namespace A371223.P8889804893040584391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A371223.P8889804893040584391

/-! ## A371223.P3170080184824593769

`∩[A305462(n+1), A350014(n+1)]`
-/

namespace A371223.P3170080184824593769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371223.P3170080184824593769

/-!
# A371224: Least prime factor of the integer formed by the first n decimal digits of Pi, or 0 if that number is prime.

The programs for A371224, there is no canonical definition to state claims against.
-/

/-! ## A371224.P9326291743572838687

`A089281(n)%A078604(n)`
-/

namespace A371224.P9326291743572838687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089281 n) (A078604 n)

end

end A371224.P9326291743572838687

/-!
# A371225: Expansion of e.g.f. 1/(1 - x * log(1 + x + x^2)).

The programs for A371225, there is no canonical definition to state claims against.
-/

/-! ## A371225.P5720704215209291669

`A370708(A000217(a(n-1)))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A371225.P5720704215209291669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A370708 (A000217 (a (n - 1)).toNat).toNat

end

end A371225.P5720704215209291669

/-! ## A371225.P1436275308124697825

`A368795(A001499(n))+A004526(n)`
-/

namespace A371225.P1436275308124697825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368795 (A001499 n).toNat + A004526 n

end

end A371225.P1436275308124697825

/-!
# A371226: Expansion of e.g.f. 1/(1 - x * (exp(x + x^2) - 1)).

The programs for A371226, there is no canonical definition to state claims against.
-/

/-! ## A371226.P6443345731856625384

`A377057(A001519(n))-A151963(n)`
-/

namespace A371226.P6443345731856625384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377057 (A001519 n).toNat - A151963 n

end

end A371226.P6443345731856625384

/-!
# A371227: E.g.f. satisfies A(x) = 1 - x*log(1 - x*A(x)^2).

The programs for A371227, there is no canonical definition to state claims against.
-/

/-! ## A371227.P11212899416342348511

`A038730(n+1)*A289813(A006129(n))`
-/

namespace A371227.P11212899416342348511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (n + 1) * A289813 (A006129 n).toNat

end

end A371227.P11212899416342348511

/-!
# A371228: E.g.f. satisfies A(x) = 1 - x*A(x)*log(1 - x*A(x)^2).

The programs for A371228, there is no canonical definition to state claims against.
-/

/-! ## A371228.P17616154841817501836

`A004525(A377687(n)+A370993(n))`
-/

namespace A371228.P17616154841817501836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A377687 n + A370993 n).toNat

end

end A371228.P17616154841817501836

/-! ## A371228.P5517028141493955939

`A004526(A377687(n)+A370993(n))`
-/

namespace A371228.P5517028141493955939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A377687 n + A370993 n).toNat

end

end A371228.P5517028141493955939

/-!
# A371229: E.g.f. satisfies A(x) = 1 - x*A(x)^2*log(1 - x*A(x)^2).

The programs for A371229, there is no canonical definition to state claims against.
-/

/-! ## A371229.P3524425162562426253

`A245092(A371230(n)-A052762(n))`
-/

namespace A371229.P3524425162562426253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A371230 n - A052762 n).toNat

end

end A371229.P3524425162562426253

/-! ## A371229.P8804471045085210972

`A005843(A371228(n))-A371227(n)`
-/

namespace A371229.P8804471045085210972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A371228 n).toNat - A371227 n

end

end A371229.P8804471045085210972

/-!
# A371230: E.g.f. satisfies A(x) = 1 - x*A(x)^3*log(1 - x*A(x)^2).

The programs for A371230, there is no canonical definition to state claims against.
-/

/-! ## A371230.P1992508741608311040

`A005843(A371122(n))-A371141(n)`
-/

namespace A371230.P1992508741608311040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A371122 n).toNat - A371141 n

end

end A371230.P1992508741608311040

/-! ## A371230.P9287292000188825669

`A051953(A272863(n+1)*A345466(n))`
-/

namespace A371230.P9287292000188825669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A272863 (n + 1) * A345466 n).toNat

end

end A371230.P9287292000188825669

/-!
# A371231: E.g.f. satisfies A(x) = 1 - x*A(x)^3*log(1 - x*A(x)^3).

The programs for A371231, there is no canonical definition to state claims against.
-/

/-! ## A371231.P5407785908864337336

`A005843(A371230(n))-A371122(n)`
-/

namespace A371231.P5407785908864337336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A371230 n).toNat - A371122 n

end

end A371231.P5407785908864337336

/-!
# A371232: E.g.f. satisfies A(x) = 1 - x*A(x)^4*log(1 - x*A(x)^3).

The programs for A371232, there is no canonical definition to state claims against.
-/

/-! ## A371232.P13912989755799193767

`A377391(n)-A004523(A377391(n))`
-/

namespace A371232.P13912989755799193767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377391 n - A004523 (A377391 n).toNat

end

end A371232.P13912989755799193767

/-! ## A371232.P16667101411700826253

`A377391(n)/A290103(A000351(n))`
-/

namespace A371232.P16667101411700826253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377391 n : ℚ) / (A290103 (A000351 n).toNat : ℚ)

end

end A371232.P16667101411700826253

/-!
# A371234: E.g.f. satisfies A(x) = 1 - x^2*A(x)^4*log(1 - x*A(x)^2).

The programs for A371234, there is no canonical definition to state claims against.
-/

/-! ## A371234.P11789438079458706117

`A178395(A099409(n+1))*A351503(n)`
-/

namespace A371234.P11789438079458706117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178395 (A099409 (n + 1)).toNat * A351503 n

end

end A371234.P11789438079458706117

/-! ## A371234.P3737927866570598089

`A351503(n)*A381597(A084955(n+1))`
-/

namespace A371234.P3737927866570598089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351503 n * A381597 (A084955 (n + 1)).toNat

end

end A371234.P3737927866570598089

/-! ## A371234.P16104424523138887733

`A166095(A058343(3*n+1))*A351503(n)`
-/

namespace A371234.P16104424523138887733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166095 (A058343 (3 * n + 1)).toNat * A351503 n

end

end A371234.P16104424523138887733

/-!
# A371237: Inverse permutation to A371236.

The programs for A371237, there is no canonical definition to state claims against.
-/

/-! ## A371237.P4797591874382157104

`A361939(A128870(n+1))`
-/

namespace A371237.P4797591874382157104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361939 (A128870 (n + 1)).toNat

end

end A371237.P4797591874382157104

/-!
# A371238: Euler totient function applied to the binary palindromes of even length.

The programs for A371238, the canonical program `A371238.P16159629807628423493` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371238 has offset 1).

The definition of A371238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371238.P16159629807628423493

`A000010(A048701(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A371238

/-- `A000010(A048701(n+1))` -/
def P16159629807628423493.Spec : Prop :=
  ∀ n, P16159629807628423493.a n = A371238 (n + 1)

theorem P16159629807628423493.correct : P16159629807628423493.Spec := by
  intro n
  simp only [A371238, Nat.add_sub_cancel]

end A371238

/-! ## A371238.P8380485582627519130

`A000010(∑[A265026(n+1)])`
-/

namespace A371238.P8380485582627519130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371238.P8380485582627519130

namespace A371238

/-- `A000010(∑[A265026(n+1)])` -/
def P8380485582627519130.Spec : Prop :=
  ∀ n, P8380485582627519130.a n = A371238 (n + 1)

end A371238

/-! ## A371238.P359248058020821871

`A000010(record[A162749(n+1)])`
-/

namespace A371238.P359248058020821871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371238.P359248058020821871

namespace A371238

/-- `A000010(record[A162749(n+1)])` -/
def P359248058020821871.Spec : Prop :=
  ∀ n, P359248058020821871.a n = A371238 (n + 1)

end A371238

/-! ## A371238.P124260292719851923

`A000010(3*A048702(n+1))`
-/

namespace A371238.P124260292719851923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * A048702 (n + 1)).toNat

end

end A371238.P124260292719851923

namespace A371238

/-- `A000010(3*A048702(n+1))` -/
def P124260292719851923.Spec : Prop :=
  ∀ n, P124260292719851923.a n = A371238 (n + 1)

end A371238

/-! ## A371238.P5964558528848696754

`A000010(∩[A006995(n+1), A272653(n+1)])`
-/

namespace A371238.P5964558528848696754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272653 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A371238.P5964558528848696754

namespace A371238

/-- `A000010(∩[A006995(n+1), A272653(n+1)])` -/
def P5964558528848696754.Spec : Prop :=
  ∀ n, P5964558528848696754.a n = A371238 (n + 1)

end A371238

/-! ## A371238.P2355905058787817946

`A162728(record[A162749(n+1)])`
-/

namespace A371238.P2355905058787817946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162728 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371238.P2355905058787817946

namespace A371238

/-- `A162728(record[A162749(n+1)])` -/
def P2355905058787817946.Spec : Prop :=
  ∀ n, P2355905058787817946.a n = A371238 (n + 1)

end A371238

/-!
# A371239: Squarefree numbers that are zeroless in base 3 (A032924).

The programs for A371239, the canonical program `A371239.P1240619195337993519` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371239 has offset 1).

The definition of A371239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371239.P14825893856576322539

`filter[A032924(n+1), A008966(#)]`
-/

namespace A371239.P14825893856576322539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A371239.P14825893856576322539

namespace A371239

/-- `filter[A032924(n+1), A008966(#)]` -/
def P14825893856576322539.Spec : Prop :=
  ∀ n, P14825893856576322539.a n = A371239 (n + 1)

end A371239

/-! ## A371239.P1240619195337993519

`filter[A032924(n+1), A359377(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A371239

/-- `filter[A032924(n+1), A359377(#)]` -/
def P1240619195337993519.Spec : Prop :=
  ∀ n, P1240619195337993519.a n = A371239 (n + 1)

theorem P1240619195337993519.correct : P1240619195337993519.Spec := by
  intro n
  simp only [A371239, Nat.add_sub_cancel]

end A371239

/-! ## A371239.P7803213685051699639

`filter[A032924(n+1), A323154(#)]`
-/

namespace A371239.P7803213685051699639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A371239.P7803213685051699639

namespace A371239

/-- `filter[A032924(n+1), A323154(#)]` -/
def P7803213685051699639.Spec : Prop :=
  ∀ n, P7803213685051699639.a n = A371239 (n + 1)

end A371239

/-! ## A371239.P7232617506355900309

`filter[A032924(n+1), A353559(#)]`
-/

namespace A371239.P7232617506355900309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A371239.P7232617506355900309

namespace A371239

/-- `filter[A032924(n+1), A353559(#)]` -/
def P7232617506355900309.Spec : Prop :=
  ∀ n, P7232617506355900309.a n = A371239 (n + 1)

end A371239

/-! ## A371239.P1595748164861390765

`∩[A005117(n+1), A032924(n+1)]`
-/

namespace A371239.P1595748164861390765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371239.P1595748164861390765

namespace A371239

/-- `∩[A005117(n+1), A032924(n+1)]` -/
def P1595748164861390765.Spec : Prop :=
  ∀ n, (P1595748164861390765.a n : ℤ) = A371239 (n + 1)

end A371239

/-! ## A371239.P7998913963683239729

`∩[A032924(n+1), A348506(n+1)]`
-/

namespace A371239.P7998913963683239729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371239.P7998913963683239729

namespace A371239

/-- `∩[A032924(n+1), A348506(n+1)]` -/
def P7998913963683239729.Spec : Prop :=
  ∀ n, (P7998913963683239729.a n : ℤ) = A371239 (n + 1)

end A371239

/-! ## A371239.P15510417679618350140

`∩[A032924(n+1), A348499(n+1)]`
-/

namespace A371239.P15510417679618350140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371239.P15510417679618350140

namespace A371239

/-- `∩[A032924(n+1), A348499(n+1)]` -/
def P15510417679618350140.Spec : Prop :=
  ∀ n, (P15510417679618350140.a n : ℤ) = A371239 (n + 1)

end A371239

/-! ## A371239.P15302661807227391896

`∩[A032924(n+1), A064594(n+1)]`
-/

namespace A371239.P15302661807227391896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371239.P15302661807227391896

namespace A371239

/-- `∩[A032924(n+1), A064594(n+1)]` -/
def P15302661807227391896.Spec : Prop :=
  ∀ n, (P15302661807227391896.a n : ℤ) = A371239 (n + 1)

end A371239

/-! ## A371239.P5919681072354593362

`∩[A032924(n+1), A193303(n+1)]`
-/

namespace A371239.P5919681072354593362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371239.P5919681072354593362

namespace A371239

/-- `∩[A032924(n+1), A193303(n+1)]` -/
def P5919681072354593362.Spec : Prop :=
  ∀ n, (P5919681072354593362.a n : ℤ) = A371239 (n + 1)

end A371239

/-! ## A371239.P17441195962199434833

`∩[A032924(n+1), A348961(n+1)]`
-/

namespace A371239.P17441195962199434833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371239.P17441195962199434833

namespace A371239

/-- `∩[A032924(n+1), A348961(n+1)]` -/
def P17441195962199434833.Spec : Prop :=
  ∀ n, (P17441195962199434833.a n : ℤ) = A371239 (n + 1)

end A371239

/-! ## A371239.P10308852195877156038

`eq[A077267(n), A105570(n)]`
-/

namespace A371239.P10308852195877156038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371239.P10308852195877156038

namespace A371239

/-- `eq[A077267(n), A105570(n)]` -/
def P10308852195877156038.Spec : Prop :=
  ∀ n, (P10308852195877156038.a n : ℤ) = A371239 (n + 1)

end A371239

/-! ## A371239.P12498651429792137271

`eq[A105570(n), A212193(n)]`
-/

namespace A371239.P12498651429792137271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371239.P12498651429792137271

namespace A371239

/-- `eq[A105570(n), A212193(n)]` -/
def P12498651429792137271.Spec : Prop :=
  ∀ n, (P12498651429792137271.a n : ℤ) = A371239 (n + 1)

end A371239

/-! ## A371239.P13968152088784053612

`∩[A032924(n+1), A225354(n+1)]`
-/

namespace A371239.P13968152088784053612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371239.P13968152088784053612

namespace A371239

/-- `∩[A032924(n+1), A225354(n+1)]` -/
def P13968152088784053612.Spec : Prop :=
  ∀ n, (P13968152088784053612.a n : ℤ) = A371239 (n + 1)

end A371239

/-!
# A371240: The sum of divisors of the zeroless numbers in base 3 (A032924).

The programs for A371240, the canonical program `A371240.P7897189969390004216` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371240 has offset 1).

The definition of A371240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371240.P7897189969390004216

`A000203(A032924(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A371240

/-- `A000203(A032924(n+1))` -/
def P7897189969390004216.Spec : Prop :=
  ∀ n, P7897189969390004216.a n = A371240 (n + 1)

theorem P7897189969390004216.correct : P7897189969390004216.Spec := by
  intro n
  simp only [A371240, Nat.add_sub_cancel]

end A371240

/-! ## A371240.P6206324266809002544

`∑{d}[record[3*a(floor(n/2))+n-2*floor(n/2)+1], #]` with `a(0)=1, a(1)=0`
-/

namespace A371240.P6206324266809002544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  3 * f2 ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A371240.P6206324266809002544

namespace A371240

/-- `∑{d}[record[3*a(floor(n/2))+n-2*floor(n/2)+1], #]` -/
def P6206324266809002544.Spec : Prop :=
  ∀ n, (P6206324266809002544.a n : ℤ) = A371240 (n + 1)

end A371240

/-! ## A371240.P9317265886839521446

`A000203((A191110(n+2)-1)/2)`
-/

namespace A371240.P9317265886839521446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A191110 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A371240.P9317265886839521446

namespace A371240

/-- `A000203((A191110(n+2)-1)/2)` -/
def P9317265886839521446.Spec : Prop :=
  ∀ n, P9317265886839521446.a n = A371240 (n + 1)

end A371240

/-! ## A371240.P3430986261860363496

`A000203(record[(n+1)/A291771(n+1)])`
-/

namespace A371240.P3430986261860363496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A291771 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A371240.P3430986261860363496

namespace A371240

/-- `A000203(record[(n+1)/A291771(n+1)])` -/
def P3430986261860363496.Spec : Prop :=
  ∀ n, P3430986261860363496.a n = A371240 (n + 1)

end A371240

/-! ## A371240.P7895994545681610

`A000203(eq[0, A077267(n)])`
-/

namespace A371240.P7895994545681610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371240.P7895994545681610

namespace A371240

/-- `A000203(eq[0, A077267(n)])` -/
def P7895994545681610.Spec : Prop :=
  ∀ n, P7895994545681610.a n = A371240 (n + 1)

end A371240

/-! ## A371240.P4740239643703391039

`A000203(lt[A077267(n), 1])`
-/

namespace A371240.P4740239643703391039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A371240.P4740239643703391039

namespace A371240

/-- `A000203(lt[A077267(n), 1])` -/
def P4740239643703391039.Spec : Prop :=
  ∀ n, P4740239643703391039.a n = A371240 (n + 1)

end A371240

/-! ## A371240.P15963247713188423934

`A088580(A032924(n+1))-A090740(2*n+1)`
-/

namespace A371240.P15963247713188423934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A032924 (n + 1)).toNat - A090740 (2 * n + 1)

end

end A371240.P15963247713188423934

namespace A371240

/-- `A088580(A032924(n+1))-A090740(2*n+1)` -/
def P15963247713188423934.Spec : Prop :=
  ∀ n, P15963247713188423934.a n = A371240 (n + 1)

end A371240

/-!
# A371241: Euler totient function applied to the zeroless numbers in base 3 (A032924).

The programs for A371241, the canonical program `A371241.P3336735415354653583` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371241 has offset 1).

The definition of A371241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371241.P3336735415354653583

`A000010(A032924(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A371241

/-- `A000010(A032924(n+1))` -/
def P3336735415354653583.Spec : Prop :=
  ∀ n, P3336735415354653583.a n = A371241 (n + 1)

theorem P3336735415354653583.correct : P3336735415354653583.Spec := by
  intro n
  simp only [A371241, Nat.add_sub_cancel]

end A371241

/-! ## A371241.P11254844493428571243

`A000010(eq[0, A212193(n)])`
-/

namespace A371241.P11254844493428571243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371241.P11254844493428571243

namespace A371241

/-- `A000010(eq[0, A212193(n)])` -/
def P11254844493428571243.Spec : Prop :=
  ∀ n, P11254844493428571243.a n = A371241 (n + 1)

end A371241

/-! ## A371241.P9335625236874150859

`A000010(lt[A077267(n), 1])`
-/

namespace A371241.P9335625236874150859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A371241.P9335625236874150859

namespace A371241

/-- `A000010(lt[A077267(n), 1])` -/
def P9335625236874150859.Spec : Prop :=
  ∀ n, P9335625236874150859.a n = A371241 (n + 1)

end A371241

/-! ## A371241.P1204717530684915568

`A000010(eq[A010872(3*(n+1)), A077267(n)])`
-/

namespace A371241.P1204717530684915568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A371241.P1204717530684915568

namespace A371241

/-- `A000010(eq[A010872(3*(n+1)), A077267(n)])` -/
def P1204717530684915568.Spec : Prop :=
  ∀ n, P1204717530684915568.a n = A371241 (n + 1)

end A371241

/-! ## A371241.P1083396434953720355

`A000010(eq[A000007(3*n+2), A077267(n)])`
-/

namespace A371241.P1083396434953720355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A371241.P1083396434953720355

namespace A371241

/-- `A000010(eq[A000007(3*n+2), A077267(n)])` -/
def P1083396434953720355.Spec : Prop :=
  ∀ n, P1083396434953720355.a n = A371241 (n + 1)

end A371241

/-!
# A371242: The sum of the unitary divisors of n that are cubefree numbers (A004709).

The programs for A371242, the canonical program `A371242.P9923243435576560346` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371242 has offset 1).

The definition of A371242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371242.P9923243435576560346

`A034448(A360539(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A371242

/-- `A034448(A360539(n+1))` -/
def P9923243435576560346.Spec : Prop :=
  ∀ n, P9923243435576560346.a n = A371242 (n + 1)

theorem P9923243435576560346.correct : P9923243435576560346.Spec := by
  intro n
  simp only [A371242, Nat.add_sub_cancel]

end A371242

/-! ## A371242.P10948912356379515134

`A385043(A058035(n+1))`
-/

namespace A371242.P10948912356379515134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385043 (A058035 (n + 1)).toNat

end

end A371242.P10948912356379515134

namespace A371242

/-- `A385043(A058035(n+1))` -/
def P10948912356379515134.Spec : Prop :=
  ∀ n, P10948912356379515134.a n = A371242 (n + 1)

end A371242

/-! ## A371242.P10294882715317116520

`A385043(A365683(n+1))`
-/

namespace A371242.P10294882715317116520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385043 (A365683 (n + 1)).toNat

end

end A371242.P10294882715317116520

namespace A371242

/-- `A385043(A365683(n+1))` -/
def P10294882715317116520.Spec : Prop :=
  ∀ n, P10294882715317116520.a n = A371242 (n + 1)

end A371242

/-! ## A371242.P12811279222642207892

`A385043(A366994(n+1))`
-/

namespace A371242.P12811279222642207892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385043 (A366994 (n + 1)).toNat

end

end A371242.P12811279222642207892

namespace A371242

/-- `A385043(A366994(n+1))` -/
def P12811279222642207892.Spec : Prop :=
  ∀ n, P12811279222642207892.a n = A371242 (n + 1)

end A371242

/-! ## A371242.P9273064778414200148

`A385043(A383764(n+1))`
-/

namespace A371242.P9273064778414200148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385043 (A383764 (n + 1)).toNat

end

end A371242.P9273064778414200148

namespace A371242

/-- `A385043(A383764(n+1))` -/
def P9273064778414200148.Spec : Prop :=
  ∀ n, P9273064778414200148.a n = A371242 (n + 1)

end A371242

/-! ## A371242.P15563314741681607401

`A385043(A385007(n+1))`
-/

namespace A371242.P15563314741681607401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385043 (A385007 (n + 1)).toNat

end

end A371242.P15563314741681607401

namespace A371242

/-- `A385043(A385007(n+1))` -/
def P15563314741681607401.Spec : Prop :=
  ∀ n, P15563314741681607401.a n = A371242 (n + 1)

end A371242

/-! ## A371242.P12528100540368192123

`A034448(n+1)/A385048(n+1)`
-/

namespace A371242.P12528100540368192123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A385048 (n + 1) : ℚ)

end

end A371242.P12528100540368192123

namespace A371242

/-- `A034448(n+1)/A385048(n+1)` -/
def P12528100540368192123.Spec : Prop :=
  ∀ n, P12528100540368192123.a n = (A371242 (n + 1) : ℚ)

end A371242

/-! ## A371242.P17798812236625506539

`A331107((n+1)/A360540(n+1))`
-/

namespace A371242.P17798812236625506539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360540 (n + 1) : ℚ))).toNat

end

end A371242.P17798812236625506539

namespace A371242

/-- `A331107((n+1)/A360540(n+1))` -/
def P17798812236625506539.Spec : Prop :=
  ∀ n, P17798812236625506539.a n = A371242 (n + 1)

end A371242

/-! ## A371242.P13276914293466947598

`A091306(A003557(n+1))*A092261(n+1)`
-/

namespace A371242.P13276914293466947598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (A003557 (n + 1)).toNat * A092261 (n + 1)

end

end A371242.P13276914293466947598

namespace A371242

/-- `A091306(A003557(n+1))*A092261(n+1)` -/
def P13276914293466947598.Spec : Prop :=
  ∀ n, P13276914293466947598.a n = A371242 (n + 1)

end A371242

/-! ## A371242.P13860859906619116570

`A322485(A360539(n+1)%A000040(n+1))`
-/

namespace A371242.P13860859906619116570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322485 (Int.tmod (A360539 (n + 1)) (A000040 (n + 1))).toNat

end

end A371242.P13860859906619116570

namespace A371242

/-- `A322485(A360539(n+1)%A000040(n+1))` -/
def P13860859906619116570.Spec : Prop :=
  ∀ n, P13860859906619116570.a n = A371242 (n + 1)

end A371242

/-! ## A371242.P1529850342537482464

`A322485(A360539(n+1))%A005471(n+1)`
-/

namespace A371242.P1529850342537482464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322485 (A360539 (n + 1)).toNat) (A005471 (n + 1))

end

end A371242.P1529850342537482464

namespace A371242

/-- `A322485(A360539(n+1))%A005471(n+1)` -/
def P1529850342537482464.Spec : Prop :=
  ∀ n, P1529850342537482464.a n = A371242 (n + 1)

end A371242

/-! ## A371242.P8097671057718175460

`A358346(n+1)*A358347(n+1)/A385048(n+1)`
-/

namespace A371242.P8097671057718175460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358346 (n + 1) * A358347 (n + 1) : ℚ) / (A385048 (n + 1) : ℚ)

end

end A371242.P8097671057718175460

namespace A371242

/-- `A358346(n+1)*A358347(n+1)/A385048(n+1)` -/
def P8097671057718175460.Spec : Prop :=
  ∀ n, P8097671057718175460.a n = (A371242 (n + 1) : ℚ)

end A371242

/-! ## A371242.P1271449971509754964

`A385045(n+1)*A385046(n+1)/A385048(n+1)`
-/

namespace A371242.P1271449971509754964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385045 (n + 1) * A385046 (n + 1) : ℚ) / (A385048 (n + 1) : ℚ)

end

end A371242.P1271449971509754964

namespace A371242

/-- `A385045(n+1)*A385046(n+1)/A385048(n+1)` -/
def P1271449971509754964.Spec : Prop :=
  ∀ n, P1271449971509754964.a n = (A371242 (n + 1) : ℚ)

end A371242

/-! ## A371242.P13293291644480625021

`A385043(A365684(n+1))`
-/

namespace A371242.P13293291644480625021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385043 (A365684 (n + 1)).toNat

end

end A371242.P13293291644480625021

namespace A371242

/-- `A385043(A365684(n+1))` -/
def P13293291644480625021.Spec : Prop :=
  ∀ n, P13293291644480625021.a n = A371242 (n + 1)

end A371242

/-!
# A371243: Number of factorizations of n into factors > 2.

The programs for A371243, there is no canonical definition to state claims against.
-/

/-! ## A371243.P13798455088493925744

`∑{d}[n+1, A057567(#)*A092673((n+1)/#)]`
-/

namespace A371243.P13798455088493925744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057567 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371243.P13798455088493925744

/-! ## A371243.P5053802712939905601

`∑{d}[n+1, A050370(#)*A059841((n+1)/#-1)]`
-/

namespace A371243.P5053802712939905601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A371243.P5053802712939905601

/-! ## A371243.P14574618384808881641

`A371244(A319525(n+1))`
-/

namespace A371243.P14574618384808881641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371244 (A319525 (n + 1)).toNat

end

end A371243.P14574618384808881641

/-! ## A371243.P5517922275427024543

`A371244(A003961(n+1))`
-/

namespace A371243.P5517922275427024543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371244 (A003961 (n + 1)).toNat

end

end A371243.P5517922275427024543

/-! ## A371243.P9362388316040526269

`A371244(A332818(n+1))`
-/

namespace A371243.P9362388316040526269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371244 (A332818 (n + 1)).toNat

end

end A371243.P9362388316040526269

/-! ## A371243.P7139919418231035322

`A371244(A064988(n+1))`
-/

namespace A371243.P7139919418231035322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371244 (A064988 (n + 1)).toNat

end

end A371243.P7139919418231035322

/-! ## A371243.P2323093023757418136

`A371244(A357983(n+1))`
-/

namespace A371243.P2323093023757418136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371244 (A357983 (n + 1)).toNat

end

end A371243.P2323093023757418136

/-! ## A371243.P17202268987484140784

`A371244(A348746(n+1))`
-/

namespace A371243.P17202268987484140784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371244 (A348746 (n + 1)).toNat

end

end A371243.P17202268987484140784

/-! ## A371243.P5271535769524982885

`A371244(A297002(n+1))`
-/

namespace A371243.P5271535769524982885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371244 (A297002 (n + 1)).toNat

end

end A371243.P5271535769524982885

/-! ## A371243.P15745344385402721510

`A371244(A389092(n+1))`
-/

namespace A371243.P15745344385402721510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371244 (A389092 (n + 1)).toNat

end

end A371243.P15745344385402721510

/-!
# A371244: Number of factorizations of n into factors > 3.

The programs for A371244, there is no canonical definition to state claims against.
-/

/-! ## A371244.P226975622730385972

`∑{d}[n+1, A050370(#)*A232991((n+1)/#-1)]`
-/

namespace A371244.P226975622730385972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d * A232991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A371244.P226975622730385972

/-! ## A371244.P13320759568561465043

`A360593(A371211(n+1)%A278351(3*n+2))`
-/

namespace A371244.P13320759568561465043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360593 (Int.tmod (A371211 (n + 1)) (A278351 (3 * n + 2))).toNat

end

end A371244.P13320759568561465043

/-! ## A371244.P5021586267991683798

`A360593(A371211(n+1)%A334973(n+1))`
-/

namespace A371244.P5021586267991683798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360593 (Int.tmod (A371211 (n + 1)) (A334973 (n + 1))).toNat

end

end A371244.P5021586267991683798

/-!
# A371245: Number of factorizations of n into factors > 4.

The programs for A371245, there is no canonical definition to state claims against.
-/

/-! ## A371245.P8944993782046367297

`A030530(A371212(n+1)%A124867(n+1))`
-/

namespace A371245.P8944993782046367297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (Int.tmod (A371212 (n + 1)) (A124867 (n + 1))).toNat

end

end A371245.P8944993782046367297

/-! ## A371245.P9710150593030445451

`A123578(A371212(n+1))%A124867(n+4)`
-/

namespace A371245.P9710150593030445451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 (A371212 (n + 1)).toNat) (A124867 (n + 4))

end

end A371245.P9710150593030445451

/-! ## A371245.P16622177829756211649

`A030530(A371212(n+1))%A340604(n+1)`
-/

namespace A371245.P16622177829756211649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030530 (A371212 (n + 1)).toNat) (A340604 (n + 1))

end

end A371245.P16622177829756211649

/-! ## A371245.P9665771311897403782

`A053644(A371212(n+1))%A003655(n+1)`
-/

namespace A371245.P9665771311897403782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053644 (A371212 (n + 1)).toNat) (A003655 (n + 1))

end

end A371245.P9665771311897403782

/-! ## A371245.P2943257457060146881

`A335380(A371212(n+1))%A335377(n+1)`
-/

namespace A371245.P2943257457060146881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335380 (A371212 (n + 1)).toNat) (A335377 (n + 1))

end

end A371245.P2943257457060146881

/-! ## A371245.P13200848257481547571

`A105700(A352538(n+1)*A371212(n+1))`
-/

namespace A371245.P13200848257481547571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A352538 (n + 1) * A371212 (n + 1)).toNat

end

end A371245.P13200848257481547571

/-!
# A371246: Square array A(n, k), n, k > 0, read and filled in the greedy way by upward antidiagonals with distinct positive integers such that for any n > 0, the terms in the n-th row are congruent modulo n.

The programs for A371246, there is no canonical definition to state claims against.
-/

/-! ## A371246.P4006521742075451884

`A120913(or(A066182(n+1), A091536(n)))`
-/

namespace A371246.P4006521742075451884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120913 (Int.lor (A066182 (n + 1)) (A091536 n)).toNat

end

end A371246.P4006521742075451884

/-! ## A371246.P1346874069031771463

`A120913(A066182(n+1)%A117075(n+1))`
-/

namespace A371246.P1346874069031771463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120913 (Int.tmod (A066182 (n + 1)) (A117075 (n + 1))).toNat

end

end A371246.P1346874069031771463

/-! ## A371246.P11820025891436364807

`A267417(A103597(n+1))+A057027(n+1)`
-/

namespace A371246.P11820025891436364807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A103597 (n + 1)).toNat + A057027 (n + 1)

end

end A371246.P11820025891436364807

/-! ## A371246.P16241062545533963591

`A341996(A324095(n+1))+A194969(n+1)`
-/

namespace A371246.P16241062545533963591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A324095 (n + 1)).toNat + A194969 (n + 1)

end

end A371246.P16241062545533963591

/-! ## A371246.P8486677216095900021

`A292380(A174465(n+3))+A057027(n+1)`
-/

namespace A371246.P8486677216095900021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (A174465 (n + 3)).toNat + A057027 (n + 1)

end

end A371246.P8486677216095900021

/-!
# A371247: Inverse permutation to A371246.

The programs for A371247, there is no canonical definition to state claims against.
-/

/-! ## A371247.P12729970432304327179

`A048766(A250120(2*n)*A299015(n+1))`
-/

namespace A371247.P12729970432304327179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A250120 (2 * n) * A299015 (n + 1)).toNat

end

end A371247.P12729970432304327179

/-!
# A371252: Number of derangements of a multiset comprising n repeats of a 4-element set.

The programs for A371252, there is no canonical definition to state claims against.
-/

/-! ## A371252.P10685999566955493593

`A059068(C(2*n, 2))`
-/

namespace A371252.P10685999566955493593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059068 (Nat.choose (2 * n) 2)

end

end A371252.P10685999566955493593

/-! ## A371252.P4272053733941278969

`A059068(A000384(n))`
-/

namespace A371252.P4272053733941278969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059068 (A000384 n).toNat

end

end A371252.P4272053733941278969

/-! ## A371252.P4610162564751276081

`A372307(A167499(n+3)-5+n)`
-/

namespace A371252.P4610162564751276081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372307 (A167499 (n + 3) - 5 + (n : ℤ)).toNat

end

end A371252.P4610162564751276081

/-! ## A371252.P2706133076023441388

`A372307(A056000(n+2)-A258266(n+1))`
-/

namespace A371252.P2706133076023441388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372307 (A056000 (n + 2) - A258266 (n + 1)).toNat

end

end A371252.P2706133076023441388

/-! ## A371252.P7634169963370708073

`A372307(eq[A144112(n+1), A164984(n+5)])`
-/

namespace A371252.P7634169963370708073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164984 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372307 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A371252.P7634169963370708073

/-!
# A371253: Number of regions formed when n equally spaced points are placed around a circle and all pairs of points are joined by an interior arc whose radius equals the circle's radius.

The programs for A371253, there is no canonical definition to state claims against.
-/

/-! ## A371253.P10587428994920568982

`A371255(n+1)-A371254(n+1)+1`
-/

namespace A371253.P10587428994920568982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371255 (n + 1) - A371254 (n + 1) + 1

end

end A371253.P10587428994920568982

/-! ## A371253.P18225651637945301191

`A371255(n+1)+A024000(A371254(n+1))`
-/

namespace A371253.P18225651637945301191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371255 (n + 1) + A024000 (A371254 (n + 1)).toNat

end

end A371253.P18225651637945301191

/-!
# A371254: Number of vertices formed when n equally spaced points are placed around a circle and all pairs of points are joined by an interior arc whose radius equals the circle's radius.

The programs for A371254, there is no canonical definition to state claims against.
-/

/-! ## A371254.P10046165259696036401

`A371255(n+1)-A371253(n+1)+1`
-/

namespace A371254.P10046165259696036401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371255 (n + 1) - A371253 (n + 1) + 1

end

end A371254.P10046165259696036401

/-! ## A371254.P4455153050324687709

`A371255(n+1)+A024000(A371253(n+1))`
-/

namespace A371254.P4455153050324687709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371255 (n + 1) + A024000 (A371253 (n + 1)).toNat

end

end A371254.P4455153050324687709

/-!
# A371255: Number of (curved) edges formed when n equally spaced points are placed around a circle and all pairs of points are joined by an interior arc whose radius equals the circle's radius.

The programs for A371255, there is no canonical definition to state claims against.
-/

/-! ## A371255.P4406344920476172810

`A371253(n+1)+A371254(n+1)-1`
-/

namespace A371255.P4406344920476172810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371253 (n + 1) + A371254 (n + 1) - 1

end

end A371255.P4406344920476172810

/-! ## A371255.P12126670931047583382

`A371253(n+1)-A024000(A371254(n+1))`
-/

namespace A371255.P12126670931047583382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371253 (n + 1) - A024000 (A371254 (n + 1)).toNat

end

end A371255.P12126670931047583382

/-! ## A371255.P1499265109452706420

`A000005(A000307(n))*A006530(n+1)`
-/

namespace A371255.P1499265109452706420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000307 n).toNat * A006530 (n + 1)

end

end A371255.P1499265109452706420

/-!
# A371256: The run lengths transform of the ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

The programs for A371256, the canonical program `A371256.P3370008578592475256` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371256 has offset 0).

The definition of A371256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371256.P3370008578592475256

`A006068(A060585(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A371256

/-- `A006068(A060585(n))` -/
def P3370008578592475256.Spec : Prop :=
  ∀ n, P3370008578592475256.a n = A371256 n

theorem P3370008578592475256.correct : P3370008578592475256.Spec := by
  intro n
  simp only [A371256]

end A371256

/-!
# A371260: a(n) is the first of three consecutive Harshad numbers in arithmetic progression.

The programs for A371260, there is no canonical definition to state claims against.
-/

/-! ## A371260.P3124512223185269046

`A325097(A064702(n+1)+A058364(n+1))`
-/

namespace A371260.P3124512223185269046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325097 (A064702 (n + 1) + A058364 (n + 1)).toNat

end

end A371260.P3124512223185269046

/-!
# A371261: Lexicographically latest sequence of distinct nonnegative integers such that the run lengths transforms of the ternary expansions of n and of a(n) are the same.

The programs for A371261, there is no canonical definition to state claims against.
-/

/-! ## A371261.P3662521980866263970

`A371268(n)+A102683(A000041(2*(n+1)))`
-/

namespace A371261.P3662521980866263970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 n + A102683 (A000041 (2 * (n + 1))).toNat

end

end A371261.P3662521980866263970

/-! ## A371261.P17106132120699612541

`A371268(n)-A010815(A080310(2*n+1))`
-/

namespace A371261.P17106132120699612541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 n - A010815 (A080310 (2 * n + 1)).toNat

end

end A371261.P17106132120699612541

/-! ## A371261.P2560034415550045291

`A371268(n)%record[A320253(n)]`
-/

namespace A371261.P2560034415550045291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371268 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A371261.P2560034415550045291

/-! ## A371261.P1431136433269443928

`A371268(n)+A000007(A047749(n))`
-/

namespace A371261.P1431136433269443928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 n + A000007 (A047749 n).toNat

end

end A371261.P1431136433269443928

/-! ## A371261.P13980043602695373881

`A371268(n)+A104512(A000079(n))`
-/

namespace A371261.P13980043602695373881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 n + A104512 (A000079 n).toNat

end

end A371261.P13980043602695373881

/-!
# A371262: E.g.f. satisfies A(x) = 1 + x * (exp(x*A(x)^2) - 1).

The programs for A371262, there is no canonical definition to state claims against.
-/

/-! ## A371262.P6088573019325710318

`lcm(A320466(n), A351007(2^n-1))`
-/

namespace A371262.P6088573019325710318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A320466 n) (A351007 (2 ^ n - 1))

end

end A371262.P6088573019325710318

/-! ## A371262.P10056602360900529059

`A186731(A354328(n)+A011782(n))`
-/

namespace A371262.P10056602360900529059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A354328 n + A011782 n).toNat

end

end A371262.P10056602360900529059

/-!
# A371263: The run lengths transform of the balanced ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

The programs for A371263, the canonical program `A371263.P7260451375417791318` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371263 has offset 0).

The definition of A371263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371263.P7260451375417791318

`A371256(A117967(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A371263

/-- `A371256(A117967(n))` -/
def P7260451375417791318.Spec : Prop :=
  ∀ n, P7260451375417791318.a n = A371263 n

theorem P7260451375417791318.correct : P7260451375417791318.Spec := by
  intro n
  simp only [A371263]

end A371263

/-! ## A371263.P14108199898486799466

`A371256(lt[A371261(n), n+1])`
-/

namespace A371263.P14108199898486799466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371261 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A371263.P14108199898486799466

namespace A371263

/-- `A371256(lt[A371261(n), n+1])` -/
def P14108199898486799466.Spec : Prop :=
  ∀ n, P14108199898486799466.a n = A371263 n

end A371263

/-! ## A371263.P14201042267031581455

`A371256(lt[A371268(n), n+1])`
-/

namespace A371263.P14201042267031581455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A371263.P14201042267031581455

namespace A371263

/-- `A371256(lt[A371268(n), n+1])` -/
def P14201042267031581455.Spec : Prop :=
  ∀ n, P14201042267031581455.a n = A371263 n

end A371263

/-! ## A371263.P11540541386109342057

`A371256(lt[A004488(3*n), A032793(2*n+1)])`
-/

namespace A371263.P11540541386109342057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371263.P11540541386109342057

namespace A371263

/-- `A371256(lt[A004488(3*n), A032793(2*n+1)])` -/
def P11540541386109342057.Spec : Prop :=
  ∀ n, P11540541386109342057.a n = A371263 n

end A371263

/-! ## A371263.P12660501499496567807

`A371256(A140263(2*n))`
-/

namespace A371263.P12660501499496567807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A140263 (2 * n)).toNat

end

end A371263.P12660501499496567807

namespace A371263

/-- `A371256(A140263(2*n))` -/
def P12660501499496567807.Spec : Prop :=
  ∀ n, P12660501499496567807.a n = A371263 n

end A371263

/-! ## A371263.P14163122904921058878

`A371256(lt[A004488(3*n), A361945(3*n+1)])`
-/

namespace A371263.P14163122904921058878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361945 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371263.P14163122904921058878

namespace A371263

/-- `A371256(lt[A004488(3*n), A361945(3*n+1)])` -/
def P14163122904921058878.Spec : Prop :=
  ∀ n, P14163122904921058878.a n = A371263 n

end A371263

/-!
# A371268: If the ternary expansion of n starts with a 1, replace 1's by 2's, 2's by 0's, 0's by 1's, if it starts with a 2, replace 2's by 1's, 1's by 0's, 0's by 2's.

The programs for A371268, there is no canonical definition to state claims against.
-/

/-! ## A371268.P11917965774597970980

`A361945(A004488(n))`
-/

namespace A371268.P11917965774597970980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361945 (A004488 n).toNat

end

end A371268.P11917965774597970980

/-! ## A371268.P2602506705069620257

`A361945(A117966(n)+n)`
-/

namespace A371268.P2602506705069620257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361945 (A117966 n + (n : ℤ)).toNat

end

end A371268.P2602506705069620257

/-! ## A371268.P10823824438703772515

`A361945(A117967(n)-A117966(2*n))`
-/

namespace A371268.P10823824438703772515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361945 (A117967 n - A117966 (2 * n)).toNat

end

end A371268.P10823824438703772515

/-! ## A371268.P3622138145857826637

`A361945(A134028(n)+A274107(n)+n)`
-/

namespace A371268.P3622138145857826637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361945 (A134028 n + (A274107 n + (n : ℤ))).toNat

end

end A371268.P3622138145857826637

/-! ## A371268.P13826818997338371416

`A038712(2*n+1)*A361945(A374363(n)+A244042(n))`
-/

namespace A371268.P13826818997338371416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 1) * A361945 (A374363 n + A244042 n).toNat

end

end A371268.P13826818997338371416

/-! ## A371268.P15097748431024747292

`A361945(A374363(3*n)-n)`
-/

namespace A371268.P15097748431024747292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361945 (A374363 (3 * n) - (n : ℤ)).toNat

end

end A371268.P15097748431024747292

/-! ## A371268.P16282759340631735847

`A361945(A253586(∑[n]))`
-/

namespace A371268.P16282759340631735847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361945 (A253586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A371268.P16282759340631735847

/-!
# A371269: E.g.f. satisfies A(x) = 1 + x*A(x) * (exp(x*A(x)^2) - 1).

The programs for A371269, there is no canonical definition to state claims against.
-/

/-! ## A371269.P11611665857655151949

`A004525(A371270(n)+A371262(n))`
-/

namespace A371269.P11611665857655151949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A371270 n + A371262 n).toNat

end

end A371269.P11611665857655151949

/-! ## A371269.P14675642582894890796

`A004526(A371270(n)+A371262(n))`
-/

namespace A371269.P14675642582894890796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A371270 n + A371262 n).toNat

end

end A371269.P14675642582894890796

/-!
# A371270: E.g.f. satisfies A(x) = 1 + x*A(x)^2 * (exp(x*A(x)^2) - 1).

The programs for A371270, there is no canonical definition to state claims against.
-/

/-! ## A371270.P1620377303543276135

`A276952(A371271(n)+A023894(n))`
-/

namespace A371270.P1620377303543276135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A371271 n + A023894 n).toNat

end

end A371270.P1620377303543276135

/-! ## A371270.P17762793625336730474

`A004526(A371271(n)+A371269(n))`
-/

namespace A371270.P17762793625336730474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A371271 n + A371269 n).toNat

end

end A371270.P17762793625336730474

/-!
# A371271: E.g.f. satisfies A(x) = 1 + x*A(x)^3 * (exp(x*A(x)^2) - 1).

The programs for A371271, there is no canonical definition to state claims against.
-/

/-! ## A371271.P9799939524100385188

`A030495(n)%A058397(A124516(n+1))`
-/

namespace A371271.P9799939524100385188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030495 n) (A058397 (A124516 (n + 1)).toNat)

end

end A371271.P9799939524100385188

/-! ## A371271.P3669504405753260468

`xor(A000009(n+2), A336309(A235639(n+1)))`
-/

namespace A371271.P3669504405753260468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000009 (n + 2)) (A336309 (A235639 (n + 1)).toNat)

end

end A371271.P3669504405753260468

/-!
# A371272: E.g.f. satisfies A(x) = 1 + x*A(x)^3 * (exp(x*A(x)^3) - 1).

The programs for A371272, there is no canonical definition to state claims against.
-/

/-! ## A371272.P9323696739983799471

`n*(n^a(n-1)-a(n-1)^3)` with `a(0)=1`
-/

namespace A371272.P9323696739983799471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℝ) * ((n : ℝ) ^ (a (n - 1)) - a (n - 1) ^ 3)

end

end A371272.P9323696739983799471

/-!
# A371273: E.g.f. satisfies A(x) = 1 + x*A(x)^4 * (exp(x*A(x)^3) - 1).

The programs for A371273, there is no canonical definition to state claims against.
-/

/-! ## A371273.P4647152125352003196

`A377393(n)/A317713(A108411(3*n+1))`
-/

namespace A371273.P4647152125352003196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377393 n : ℚ) / (A317713 (A108411 (3 * n + 1)).toNat : ℚ)

end

end A371273.P4647152125352003196

/-!
# A371275: a(n) is the number of runs in the balanced ternary expansion of n.

The programs for A371275, there is no canonical definition to state claims against.
-/

/-! ## A371275.P364944314701938340

`A005812(A341055(n))`
-/

namespace A371275.P364944314701938340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A341055 n).toNat

end

end A371275.P364944314701938340

/-! ## A371275.P7055400192941419544

`A005811(A371263(n))`
-/

namespace A371275.P7055400192941419544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A371263 n).toNat

end

end A371275.P7055400192941419544

/-! ## A371275.P2125247948964183008

`A257990(A000700(3*(n+1))*A046057(n+1))`
-/

namespace A371275.P2125247948964183008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A000700 (3 * (n + 1)) * A046057 (n + 1)).toNat

end

end A371275.P2125247948964183008

/-! ## A371275.P6431504324596770952

`A066922(A283747(n)+n²)`
-/

namespace A371275.P6431504324596770952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066922 (A283747 n + (n ^ 2 : ℤ)).toNat

end

end A371275.P6431504324596770952

/-! ## A371275.P14729484093514512320

`A001221(or(A001274(n+1), A001333(n)))`
-/

namespace A371275.P14729484093514512320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A001274 (n + 1)) (A001333 n)).toNat

end

end A371275.P14729484093514512320

/-!
# A371276: Nonnegative numbers whose balanced ternary expansions have no consecutive equal digits (with offset 0).

The programs for A371276, there is no canonical definition to state claims against.
-/

/-! ## A371276.P6251003006400059411

`eq[A244160(n), A371275(n)]`
-/

namespace A371276.P6251003006400059411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371276.P6251003006400059411

/-! ## A371276.P4931473119958641724

`eq[A244317(n), A371275(n)]`
-/

namespace A371276.P4931473119958641724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371276.P4931473119958641724

/-!
# A371278: Numbers k > 1 such that k / A054841(k) is an integer.

The programs for A371278, there is no canonical definition to state claims against.
-/

/-! ## A371278.P8394951459858296069

`filter[A325092(n+2), A322585(#)]`
-/

namespace A371278.P8394951459858296069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325092 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A371278.P8394951459858296069

/-! ## A371278.P226020892191461270

`filter[A325092(n+2), A344438(#)]`
-/

namespace A371278.P226020892191461270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325092 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A371278.P226020892191461270

/-! ## A371278.P16632332490459339222

`filter[A325091(n+2), A353518(#)]`
-/

namespace A371278.P16632332490459339222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A371278.P16632332490459339222

/-!
# A371279: Irregular triangular array of numerators of the set T of fractions generated by these rules: g(1) = (1), and if x and y are in T, then x/(y+1) is in T; see Comments.

The programs for A371279, there is no canonical definition to state claims against.
-/

/-! ## A371279.P15083884987842023963

`A307706(A256726(n+1)*A335458(2*(n+2)))`
-/

namespace A371279.P15083884987842023963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307706 (A256726 (n + 1) * A335458 (2 * (n + 2))).toNat

end

end A371279.P15083884987842023963

/-!
# A371281: Last digit of the product of decimal digits of n.

The programs for A371281, the canonical program `A371281.P7086320584445002095` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371281 has offset 0).

The definition of A371281 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371281.P14292425229833829512

`A007954(n)%10`
-/

namespace A371281.P14292425229833829512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 n) 10

end

end A371281.P14292425229833829512

namespace A371281

/-- `A007954(n)%10` -/
def P14292425229833829512.Spec : Prop :=
  ∀ n, P14292425229833829512.a n = A371281 n

end A371281

/-! ## A371281.P7086320584445002095

`A010879(A007954(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A371281

/-- `A010879(A007954(n))` -/
def P7086320584445002095.Spec : Prop :=
  ∀ n, P7086320584445002095.a n = A371281 n

theorem P7086320584445002095.correct : P7086320584445002095.Spec := by
  intro n
  simp only [A371281]

end A371281

/-! ## A371281.P7923070527838402070

`∏{digits}[n, #]%10`
-/

namespace A371281.P7923070527838402070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod % 10

end

end A371281.P7923070527838402070

namespace A371281

/-- `∏{digits}[n, #]%10` -/
def P7923070527838402070.Spec : Prop :=
  ∀ n, (P7923070527838402070.a n : ℤ) = A371281 n

end A371281

/-! ## A371281.P14069485984943414189

`A380873(n)%10`
-/

namespace A371281.P14069485984943414189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380873 n) 10

end

end A371281.P14069485984943414189

namespace A371281

/-- `A380873(n)%10` -/
def P14069485984943414189.Spec : Prop :=
  ∀ n, P14069485984943414189.a n = A371281 n

end A371281

/-! ## A371281.P1727894134989114987

`A010879(∏{digits}[n, #])`
-/

namespace A371281.P1727894134989114987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A371281.P1727894134989114987

namespace A371281

/-- `A010879(∏{digits}[n, #])` -/
def P1727894134989114987.Spec : Prop :=
  ∀ n, P1727894134989114987.a n = A371281 n

end A371281

/-! ## A371281.P7831536655068717534

`A010879(A061762(n)-A007953(n))`
-/

namespace A371281.P7831536655068717534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A061762 n - A007953 n).toNat

end

end A371281.P7831536655068717534

namespace A371281

/-- `A010879(A061762(n)-A007953(n))` -/
def P7831536655068717534.Spec : Prop :=
  ∀ n, P7831536655068717534.a n = A371281 n

theorem P7831536655068717534.correct : P7831536655068717534.Spec := by
  intro n
  simp only [A371281, Nat.add_sub_cancel, A371281.P7831536655068717534.a, A371281.P7086320584445002095.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A010879, A010879.P10561743211919002802.a, A061762, A061762.P2226516995009236848.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A371281

/-! ## A371281.P4452401030300500085

`A010879(A061762(n)-A053837(n))`
-/

namespace A371281.P4452401030300500085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A061762 n - A053837 n).toNat

end

end A371281.P4452401030300500085

namespace A371281

/-- `A010879(A061762(n)-A053837(n))` -/
def P4452401030300500085.Spec : Prop :=
  ∀ n, P4452401030300500085.a n = A371281 n

end A371281

/-! ## A371281.P14358107495550157356

`A010879(A380873(n))`
-/

namespace A371281.P14358107495550157356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A380873 n).toNat

end

end A371281.P14358107495550157356

namespace A371281

/-- `A010879(A380873(n))` -/
def P14358107495550157356.Spec : Prop :=
  ∀ n, P14358107495550157356.a n = A371281 n

end A371281

/-! ## A371281.P4438434546903955487

`A010879(A061378(n))`
-/

namespace A371281.P4438434546903955487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A061378 n).toNat

end

end A371281.P4438434546903955487

namespace A371281

/-- `A010879(A061378(n))` -/
def P4438434546903955487.Spec : Prop :=
  ∀ n, P4438434546903955487.a n = A371281 n

end A371281

/-! ## A371281.P386551460255824303

`A302801(n)%10`
-/

namespace A371281.P386551460255824303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302801 n) 10

end

end A371281.P386551460255824303

namespace A371281

/-- `A302801(n)%10` -/
def P386551460255824303.Spec : Prop :=
  ∀ n, P386551460255824303.a n = A371281 n

end A371281

/-!
# A371283: Heinz numbers of sets of divisors of positive integers. Numbers whose prime indices form the set of divisors of some positive integer.

The programs for A371283, there is no canonical definition to state claims against.
-/

/-! ## A371283.P16935601549967609919

`record[A007947(A371288(n+1))]`
-/

namespace A371283.P16935601549967609919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A371288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371283.P16935601549967609919

/-! ## A371283.P15242823381732431920

`filter[A371288(n+1), A008966(#)]`
-/

namespace A371283.P15242823381732431920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A371283.P15242823381732431920

/-! ## A371283.P5206106948955082866

`∩[A005117(n+1), A371288(n+1)]`
-/

namespace A371283.P5206106948955082866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371283.P5206106948955082866

/-! ## A371283.P8825193978530871351

`filter[A371288(n+1), A379966(#)]`
-/

namespace A371283.P8825193978530871351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A371283.P8825193978530871351

/-! ## A371283.P3799015727801924669

`∩[A039956(n+1), A371288(n+1)]`
-/

namespace A371283.P3799015727801924669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371283.P3799015727801924669

/-! ## A371283.P6822498324891118656

`∩[A080324(n+1), A371288(n+1)]`
-/

namespace A371283.P6822498324891118656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371283.P6822498324891118656

/-! ## A371283.P2432773950176676272

`∩[A089269(n+1), A371288(n+1)]`
-/

namespace A371283.P2432773950176676272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371283.P2432773950176676272

/-! ## A371283.P7717210373052788343

`∩[A034044(n+1), A371288(n+1)]`
-/

namespace A371283.P7717210373052788343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371283.P7717210373052788343

/-! ## A371283.P2186107491861418515

`∩[A326535(n+1), A371288(n+1)]`
-/

namespace A371283.P2186107491861418515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371283.P2186107491861418515

/-! ## A371283.P15381590220872959632

`∩[A144338(n+1), A371288(n+1)]`
-/

namespace A371283.P15381590220872959632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371283.P15381590220872959632

/-! ## A371283.P12422662856408994938

`∩[A368110(n+1), A371288(n+1)]`
-/

namespace A371283.P12422662856408994938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371283.P12422662856408994938

/-! ## A371283.P17380663855358160159

`∩[A371288(n+1), A380692(n+1)]`
-/

namespace A371283.P17380663855358160159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371283.P17380663855358160159

/-!
# A371285: Heinz number of the multiset union of the divisor sets of each prime index of n.

The programs for A371285, there is no canonical definition to state claims against.
-/

/-! ## A371285.P400012076167563030

`lcm(n+1, A112971(A069744(n+1)))`
-/

namespace A371285.P400012076167563030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A112971 (A069744 (n + 1)).toNat)

end

end A371285.P400012076167563030

/-! ## A371285.P8186849057472128870

`(n+1)*A101211(A057777(n))`
-/

namespace A371285.P8186849057472128870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A101211 (A057777 n).toNat

end

end A371285.P8186849057472128870

/-! ## A371285.P1744162600831925272

`(n+1)*A329621(A094373(2*n))`
-/

namespace A371285.P1744162600831925272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A329621 (A094373 (2 * n)).toNat

end

end A371285.P1744162600831925272

/-! ## A371285.P662386627128195018

`A079579(n+1)/A211009((n+1)²)`
-/

namespace A371285.P662386627128195018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079579 (n + 1) : ℚ) / (A211009 ((n + 1) ^ 2) : ℚ)

end

end A371285.P662386627128195018

/-! ## A371285.P15108240033562359304

`A118766(n+1)*A333226(A023359(n))`
-/

namespace A371285.P15108240033562359304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (n + 1) * A333226 (A023359 n).toNat

end

end A371285.P15108240033562359304

/-!
# A371286: Products of elements of A275700 (Heinz numbers of divisor sets). Numbers with a (necessarily unique) factorization into elements of A275700.

The programs for A371286, there is no canonical definition to state claims against.
-/

/-! ## A371286.P1165647857608831817

`lt[0, char[A371285(n+1)]]`
-/

namespace A371286.P1165647857608831817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371286.P1165647857608831817

/-! ## A371286.P14137532147894120914

`record[A085311(A072088(n)+1)]`
-/

namespace A371286.P14137532147894120914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085311 (A072088 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371286.P14137532147894120914

/-! ## A371286.P15739015618926875155

`lt[A121663(A334031(n)), A334031(n+1)]`
-/

namespace A371286.P15739015618926875155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A334031 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371286.P15739015618926875155

/-! ## A371286.P11314406091471393014

`eq[A354579(n), A354906(A045778(3*n+1))]`
-/

namespace A371286.P11314406091471393014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354906 (A045778 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371286.P11314406091471393014

/-! ## A371286.P6315374372868619600

`eq[A046782(3*(n+1)), A248663(A324181(2*(n+2)))]`
-/

namespace A371286.P6315374372868619600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A324181 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371286.P6315374372868619600

/-!
# A371287: Numbers whose product of prime indices has exactly two distinct prime factors.

The programs for A371287, there is no canonical definition to state claims against.
-/

/-! ## A371287.P1232823813559366651

`eq[2, A303975(n+1)]+1`
-/

namespace A371287.P1232823813559366651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371287.P1232823813559366651

/-! ## A371287.P15062953600935289500

`eq[2, A303975(A004277(n))]`
-/

namespace A371287.P15062953600935289500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371287.P15062953600935289500

/-! ## A371287.P13574453502334752913

`eq[2, A303975(A008574(n))]`
-/

namespace A371287.P13574453502334752913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371287.P13574453502334752913

/-! ## A371287.P14231376075346850344

`eq[2, A303975(A022144(n))]`
-/

namespace A371287.P14231376075346850344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371287.P14231376075346850344

/-! ## A371287.P12463245260055225804

`eq[2, A303975(A028310(n))]`
-/

namespace A371287.P12463245260055225804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371287.P12463245260055225804

/-! ## A371287.P1131761858774197297

`A020725(eq[2, A303975(n+1)])`
-/

namespace A371287.P1131761858774197297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371287.P1131761858774197297

/-! ## A371287.P15855349572259420267

`eq[2, A001221(A003963(n+1))]+1`
-/

namespace A371287.P15855349572259420267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371287.P15855349572259420267

/-!
# A371288: Numbers whose distinct prime indices form the set of divisors of some positive integer.

The programs for A371288, there is no canonical definition to state claims against.
-/

/-! ## A371288.P9489476213008527944

`∑[A247257(A137613(2*(n+2)))]`
-/

namespace A371288.P9489476213008527944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247257 (A137613 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371288.P9489476213008527944

/-! ## A371288.P15462191675479838967

`record[and(A000720(2*(n+2)), A239933(n+1))]`
-/

namespace A371288.P15462191675479838967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000720 (2 * (n + 2))) (A239933 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371288.P15462191675479838967

/-! ## A371288.P16298259169072724396

`eq[A333382(A005408(n)), A358525(n)]`
-/

namespace A371288.P16298259169072724396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A005408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358525 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371288.P16298259169072724396

/-! ## A371288.P8865951956200039865

`A175861(A102276(n))+A049445(n+2)`
-/

namespace A371288.P8865951956200039865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175861 (A102276 n).toNat + A049445 (n + 2)

end

end A371288.P8865951956200039865

/-! ## A371288.P14834972142978192317

`lt[A333632(2*n+3), A010675(n)]+1`
-/

namespace A371288.P14834972142978192317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371288.P14834972142978192317

/-!
# A371289: Numbers whose binary indices have squarefree product.

The programs for A371289, there is no canonical definition to state claims against.
-/

/-! ## A371289.P13121580460972242071

`∩[A368533(n+1), A087087(n)]`
-/

namespace A371289.P13121580460972242071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371289.P13121580460972242071

/-! ## A371289.P17070974698110570888

`eq[A033783(A279223(n)), A279223(n)]`
-/

namespace A371289.P17070974698110570888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033783 (A279223 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371289.P17070974698110570888

/-!
# A371290: Numbers whose product of binary indices is a prime power > 1.

The programs for A371290, there is no canonical definition to state claims against.
-/

/-! ## A371290.P8188178013739996223

`lt[A129211(A271410(n)), A037459(n+1)]`
-/

namespace A371290.P8188178013739996223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129211 (A271410 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371290.P8188178013739996223

/-! ## A371290.P11146771335068566415

`lt[A345355(A271410(n)), A357186(n)]`
-/

namespace A371290.P11146771335068566415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345355 (A271410 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371290.P11146771335068566415

/-!
# A371291: Numbers whose binary indices are connected, where two numbers are connected iff they have a common factor.

The programs for A371291, there is no canonical definition to state claims against.
-/

/-! ## A371291.P185352801459714712

`eq[1, A371452(n+1)]+1`
-/

namespace A371291.P185352801459714712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371291.P185352801459714712

/-! ## A371291.P11129010034817361465

`record[A000027(n+1)/A371452(n+1)]`
-/

namespace A371291.P11129010034817361465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A371452 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371291.P11129010034817361465

/-! ## A371291.P16996991467163202141

`eq[1, A305079(A019565(n))]`
-/

namespace A371291.P16996991467163202141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371291.P16996991467163202141

/-! ## A371291.P901206564605282323

`record[gcd(A003963(n+1), A298294(n+4))]`
-/

namespace A371291.P901206564605282323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003963 (n + 1)) (A298294 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371291.P901206564605282323

/-! ## A371291.P11114845283178036154

`lt[A218724(A057432(n)), A168521(n+2)]`
-/

namespace A371291.P11114845283178036154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218724 (A057432 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168521 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371291.P11114845283178036154

/-!
# A371292: Numbers whose binary indices have prime indices covering an initial interval of positive integers.

The programs for A371292, the canonical program `A371292.P4011090379698081621` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371292 has offset 0).

The definition of A371292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 856 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371292.P4011090379698081621

`lt[A079068(A271410(n)), 2]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A371292

/-- `lt[A079068(A271410(n)), 2]` -/
def P4011090379698081621.Spec : Prop :=
  ∀ n, (P4011090379698081621.a n : ℤ) = A371292 n

theorem P4011090379698081621.correct : P4011090379698081621.Spec := by
  intro n
  simp only [A371292]

end A371292

/-!
# A371293: Numbers whose binary indices have (1) prime indices covering an initial interval and (2) squarefree product.

The programs for A371293, there is no canonical definition to state claims against.
-/

/-! ## A371293.P9269023712188836691

`∩[A371289(n+1), A371292(n+1)]`
-/

namespace A371293.P9269023712188836691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371293.P9269023712188836691

/-! ## A371293.P10949218078530647780

`∑[A025581((n^(n%2))!)]`
-/

namespace A371293.P10949218078530647780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.factorial (n ^ (n % 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371293.P10949218078530647780

/-! ## A371293.P12828269280703948288

`∑[A195151(C(n, 2*floor(n/2))!)]`
-/

namespace A371293.P12828269280703948288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195151 (Nat.factorial (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371293.P12828269280703948288

/-! ## A371293.P11632452456344584912

`∑[A195664(C(n, 2*floor(n/2))!)]`
-/

namespace A371293.P11632452456344584912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 (Nat.factorial (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371293.P11632452456344584912

/-! ## A371293.P2862684305487154061

`∑[A377776(A145883(3*n+2))]`
-/

namespace A371293.P2862684305487154061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377776 (A145883 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371293.P2862684305487154061

/-!
# A371294: Numbers whose binary indices are connected and pairwise indivisible, where two numbers are connected iff they have a common factor. A hybrid ranking sequence for connected antichains of multisets.

The programs for A371294, there is no canonical definition to state claims against.
-/

/-! ## A371294.P11173689805260086841

`∩[A371291(n+1), A087086(n)]`
-/

namespace A371294.P11173689805260086841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371294.P11173689805260086841

/-! ## A371294.P4119365790334670690

`A244230(A048050(n+1)+A045623(n))`
-/

namespace A371294.P4119365790334670690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (A048050 (n + 1) + A045623 n).toNat

end

end A371294.P4119365790334670690

/-! ## A371294.P16228608124417261289

`A244230(A111787(n+1)+A045623(n))`
-/

namespace A371294.P16228608124417261289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (A111787 (n + 1) + A045623 n).toNat

end

end A371294.P16228608124417261289

/-! ## A371294.P15125744869513953588

`A244230(A325223(n+1)+A045623(n))`
-/

namespace A371294.P15125744869513953588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (A325223 (n + 1) + A045623 n).toNat

end

end A371294.P15125744869513953588

/-! ## A371294.P5297597061362608351

`A000010(A025621(n+1)^A071625(n+1))`
-/

namespace A371294.P5297597061362608351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A025621 (n + 1) : ℚ) ^ (A071625 (n + 1) : ℤ))).toNat

end

end A371294.P5297597061362608351

/-!
# A371298: E.g.f. satisfies A(x) = 2/(3 - exp(2*x*A(x)^2)).

The programs for A371298, there is no canonical definition to state claims against.
-/

/-! ## A371298.P12184782968211216531

`A004746(A214694(n)+A000670(n))`
-/

namespace A371298.P12184782968211216531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004746 (A214694 n + A000670 n).toNat

end

end A371298.P12184782968211216531

/-!
# A371299: E.g.f. satisfies A(x) = 1/(1 + log(1 - 2*x*A(x)^2) / 2).

The programs for A371299, there is no canonical definition to state claims against.
-/

/-! ## A371299.P7417455209309886348

`A331590(A113672(n))`
-/

namespace A371299.P7417455209309886348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (A113672 n).toNat

end

end A371299.P7417455209309886348

