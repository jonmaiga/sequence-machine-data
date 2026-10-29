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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A314200: Coordination sequence Gal.4.147.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314200, there is no canonical definition to state claims against.
-/

/-! ## A314200.P17980372677658277710

`or(A001222(A073063(n)), A314138(n))`
-/

namespace A314200.P17980372677658277710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A073063 n).toNat) (A314138 n)

end

end A314200.P17980372677658277710

/-! ## A314200.P1990242637236029845

`or(A249442(n), A314183(A351870(n)))`
-/

namespace A314200.P1990242637236029845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A249442 n) (A314183 (A351870 n).toNat)

end

end A314200.P1990242637236029845

/-! ## A314200.P7658081382949527335

`or(A139351(A000084(n+1)), A314183(n))`
-/

namespace A314200.P7658081382949527335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139351 (A000084 (n + 1)).toNat) (A314183 n)

end

end A314200.P7658081382949527335

/-! ## A314200.P8432644106947996075

`A075326(n)+A000120(3^n)`
-/

namespace A314200.P8432644106947996075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n + A000120 (3 ^ n)

end

end A314200.P8432644106947996075

/-! ## A314200.P13355753156510521684

`or(A030341(3^n), A314138(n))`
-/

namespace A314200.P13355753156510521684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030341 (3 ^ n)) (A314138 n)

end

end A314200.P13355753156510521684

/-!
# A314201: Coordination sequence Gal.6.157.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314201, the canonical program `A314201.P5631130414281267533` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314201 has offset 0).

The definition of A314201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314201.P5631130414281267533

`A004396(n)+A314085(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314201

/-- `A004396(n)+A314085(n)-A004525(A004396(n))` -/
def P5631130414281267533.Spec : Prop :=
  ∀ n, P5631130414281267533.a n = A314201 n

theorem P5631130414281267533.correct : P5631130414281267533.Spec := by
  intro n
  simp only [A314201]

end A314201

/-! ## A314201.P4317442437222758073

`A315670(n)-A128834(n)`
-/

namespace A314201.P4317442437222758073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 n - A128834 n

end

end A314201.P4317442437222758073

namespace A314201

/-- `A315670(n)-A128834(n)` -/
def P4317442437222758073.Spec : Prop :=
  ∀ n, P4317442437222758073.a n = A314201 n

end A314201

/-! ## A314201.P5099222072689202599

`A315670(n)+A010892(n+2)`
-/

namespace A314201.P5099222072689202599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 n + A010892 (n + 2)

end

end A314201.P5099222072689202599

namespace A314201

/-- `A315670(n)+A010892(n+2)` -/
def P5099222072689202599.Spec : Prop :=
  ∀ n, P5099222072689202599.a n = A314201 n

end A314201

/-! ## A314201.P13857994632554708897

`abs(A008592(n)-A314742(n))`
-/

namespace A314201.P13857994632554708897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314742 n|

end

end A314201.P13857994632554708897

namespace A314201

/-- `abs(A008592(n)-A314742(n))` -/
def P13857994632554708897.Spec : Prop :=
  ∀ n, P13857994632554708897.a n = A314201 n

end A314201

/-! ## A314201.P10141716375279788591

`floor(A010015(n)/A314742(n))`
-/

namespace A314201.P10141716375279788591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314742 n : ℚ)⌋

end

end A314201.P10141716375279788591

namespace A314201

/-- `floor(A010015(n)/A314742(n))` -/
def P10141716375279788591.Spec : Prop :=
  ∀ n, P10141716375279788591.a n = A314201 n

end A314201

/-! ## A314201.P1967525085076024240

`2*A008706(n)-A314742(n)`
-/

namespace A314201.P1967525085076024240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314742 n

end

end A314201.P1967525085076024240

namespace A314201

/-- `2*A008706(n)-A314742(n)` -/
def P1967525085076024240.Spec : Prop :=
  ∀ n, P1967525085076024240.a n = A314201 n

end A314201

/-! ## A314201.P5306483981897437718

`A008458(n)+A008574(n)-A314742(n)`
-/

namespace A314201.P5306483981897437718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314742 n)

end

end A314201.P5306483981897437718

namespace A314201

/-- `A008458(n)+A008574(n)-A314742(n)` -/
def P5306483981897437718.Spec : Prop :=
  ∀ n, P5306483981897437718.a n = A314201 n

end A314201

/-! ## A314201.P9323317446673848766

`A315738(n)-A004525(A004396(n))`
-/

namespace A314201.P9323317446673848766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315738 n - A004525 (A004396 n).toNat

end

end A314201.P9323317446673848766

namespace A314201

/-- `A315738(n)-A004525(A004396(n))` -/
def P9323317446673848766.Spec : Prop :=
  ∀ n, P9323317446673848766.a n = A314201 n

end A314201

/-! ## A314201.P17147664196814678217

`A315758(n)-A004525(n)`
-/

namespace A314201.P17147664196814678217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315758 n - A004525 n

end

end A314201.P17147664196814678217

namespace A314201

/-- `A315758(n)-A004525(n)` -/
def P17147664196814678217.Spec : Prop :=
  ∀ n, P17147664196814678217.a n = A314201 n

end A314201

/-! ## A314201.P11113374715136551550

`A315758(n)-Δ[A054925(n)]`
-/

namespace A314201.P11113374715136551550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315758 n - (f1 (n + 1) - f1 n)

end

end A314201.P11113374715136551550

namespace A314201

/-- `A315758(n)-Δ[A054925(n)]` -/
def P11113374715136551550.Spec : Prop :=
  ∀ n, P11113374715136551550.a n = A314201 n

end A314201

/-! ## A314201.P16654223690143316295

`A313717(n)+∑[A021913(A313717(n))]`
-/

namespace A314201.P16654223690143316295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314201.P16654223690143316295

namespace A314201

/-- `A313717(n)+∑[A021913(A313717(n))]` -/
def P16654223690143316295.Spec : Prop :=
  ∀ n, P16654223690143316295.a n = A314201 n

end A314201

/-! ## A314201.P12891255071138409246

`A005843(A008706(n))-A314742(n)`
-/

namespace A314201.P12891255071138409246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314742 n

end

end A314201.P12891255071138409246

namespace A314201

/-- `A005843(A008706(n))-A314742(n)` -/
def P12891255071138409246.Spec : Prop :=
  ∀ n, P12891255071138409246.a n = A314201 n

end A314201

/-! ## A314201.P15432314817571650931

`A074067(A314742(n))`
-/

namespace A314201.P15432314817571650931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314742 n).toNat

end

end A314201.P15432314817571650931

namespace A314201

/-- `A074067(A314742(n))` -/
def P15432314817571650931.Spec : Prop :=
  ∀ n, P15432314817571650931.a n = A314201 n

end A314201

/-!
# A314202: Coordination sequence Gal.6.251.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314202, the canonical program `A314202.P1809144844224815008` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314202 has offset 0).

The definition of A314202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314202.P8508304360497203083

`abs(A008592(n)-A314741(n))`
-/

namespace A314202.P8508304360497203083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314741 n|

end

end A314202.P8508304360497203083

namespace A314202

/-- `abs(A008592(n)-A314741(n))` -/
def P8508304360497203083.Spec : Prop :=
  ∀ n, P8508304360497203083.a n = A314202 n

end A314202

/-! ## A314202.P554280513491982706

`2*A008706(n)-A314741(n)`
-/

namespace A314202.P554280513491982706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314741 n

end

end A314202.P554280513491982706

namespace A314202

/-- `2*A008706(n)-A314741(n)` -/
def P554280513491982706.Spec : Prop :=
  ∀ n, P554280513491982706.a n = A314202 n

end A314202

/-! ## A314202.P10415426377825428805

`A008458(n)+A008574(n)-A314741(n)`
-/

namespace A314202.P10415426377825428805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314741 n)

end

end A314202.P10415426377825428805

namespace A314202

/-- `A008458(n)+A008574(n)-A314741(n)` -/
def P10415426377825428805.Spec : Prop :=
  ∀ n, P10415426377825428805.a n = A314202 n

end A314202

/-! ## A314202.P1809144844224815008

`2*A314109(n)-A314032(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A314202

/-- `2*A314109(n)-A314032(n)` -/
def P1809144844224815008.Spec : Prop :=
  ∀ n, P1809144844224815008.a n = A314202 n

theorem P1809144844224815008.correct : P1809144844224815008.Spec := by
  intro n
  simp only [A314202]

end A314202

/-! ## A314202.P18360164206796815566

`A005843(A008706(n))-A314741(n)`
-/

namespace A314202.P18360164206796815566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314741 n

end

end A314202.P18360164206796815566

namespace A314202

/-- `A005843(A008706(n))-A314741(n)` -/
def P18360164206796815566.Spec : Prop :=
  ∀ n, P18360164206796815566.a n = A314202 n

end A314202

/-! ## A314202.P5625390347164280874

`A005843(A314109(n))-A314032(n)`
-/

namespace A314202.P5625390347164280874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314109 n).toNat - A314032 n

end

end A314202.P5625390347164280874

namespace A314202

/-- `A005843(A314109(n))-A314032(n)` -/
def P5625390347164280874.Spec : Prop :=
  ∀ n, P5625390347164280874.a n = A314202 n

end A314202

/-! ## A314202.P5280501919640983087

`(A315725(n)+A310517(n))/2`
-/

namespace A314202.P5280501919640983087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315725 n + A310517 n : ℚ) / 2

end

end A314202.P5280501919640983087

namespace A314202

/-- `(A315725(n)+A310517(n))/2` -/
def P5280501919640983087.Spec : Prop :=
  ∀ n, P5280501919640983087.a n = (A314202 n : ℚ)

end A314202

/-! ## A314202.P2885177158692973256

`A065502(A008458(n))-A314741(n)`
-/

namespace A314202.P2885177158692973256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A314741 n

end

end A314202.P2885177158692973256

namespace A314202

/-- `A065502(A008458(n))-A314741(n)` -/
def P2885177158692973256.Spec : Prop :=
  ∀ n, P2885177158692973256.a n = A314202 n

end A314202

/-! ## A314202.P4851700590203779486

`A001281(A315725(n)+A310517(n))`
-/

namespace A314202.P4851700590203779486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315725 n + A310517 n).toNat

end

end A314202.P4851700590203779486

namespace A314202

/-- `A001281(A315725(n)+A310517(n))` -/
def P4851700590203779486.Spec : Prop :=
  ∀ n, P4851700590203779486.a n = A314202 n

end A314202

/-! ## A314202.P2021002056396720360

`A004525(A315725(n)+A310517(n))`
-/

namespace A314202.P2021002056396720360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315725 n + A310517 n).toNat

end

end A314202.P2021002056396720360

namespace A314202

/-- `A004525(A315725(n)+A310517(n))` -/
def P2021002056396720360.Spec : Prop :=
  ∀ n, P2021002056396720360.a n = A314202 n

end A314202

/-! ## A314202.P8928511610580411719

`A004526(A315725(n)+A310517(n))`
-/

namespace A314202.P8928511610580411719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315725 n + A310517 n).toNat

end

end A314202.P8928511610580411719

namespace A314202

/-- `A004526(A315725(n)+A310517(n))` -/
def P8928511610580411719.Spec : Prop :=
  ∀ n, P8928511610580411719.a n = A314202 n

end A314202

/-!
# A314203: Coordination sequence Gal.5.88.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314203, the canonical program `A314203.P8872604243500081186` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314203 has offset 0).

The definition of A314203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314203.P8026963151781685179

`ogf((1+3x+3x^2+3x^3+2x^4+2x^5+2x^6+3x^7+3x^8+3x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))`
-/

namespace A314203.P8026963151781685179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 3, 2, 2, 2, 3, 3, 3, 1] [1, -2, 2, -2, 2, -2, 2, -2, 2, -2, 1] n

end

end A314203.P8026963151781685179

namespace A314203

/-- `ogf((1+3x+3x^2+3x^3+2x^4+2x^5+2x^6+3x^7+3x^8+3x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))` -/
def P8026963151781685179.Spec : Prop :=
  ∀ n, P8026963151781685179.a n = A314203 n

end A314203

/-! ## A314203.P5090983180017421537

`A330025(n)+A310512(n)`
-/

namespace A314203.P5090983180017421537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A310512 n

end

end A314203.P5090983180017421537

namespace A314203

/-- `A330025(n)+A310512(n)` -/
def P5090983180017421537.Spec : Prop :=
  ∀ n, P5090983180017421537.a n = A314203 n

end A314203

/-! ## A314203.P11313660481089198226

`abs(A008592(n)-A314740(n))`
-/

namespace A314203.P11313660481089198226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314740 n|

end

end A314203.P11313660481089198226

namespace A314203

/-- `abs(A008592(n)-A314740(n))` -/
def P11313660481089198226.Spec : Prop :=
  ∀ n, P11313660481089198226.a n = A314203 n

end A314203

/-! ## A314203.P9245186112565751542

`2*A008706(n)-A314740(n)`
-/

namespace A314203.P9245186112565751542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314740 n

end

end A314203.P9245186112565751542

namespace A314203

/-- `2*A008706(n)-A314740(n)` -/
def P9245186112565751542.Spec : Prop :=
  ∀ n, P9245186112565751542.a n = A314203 n

end A314203

/-! ## A314203.P8872604243500081186

`A265227(n+1)+A313476(n)-n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314203

/-- `A265227(n+1)+A313476(n)-n` -/
def P8872604243500081186.Spec : Prop :=
  ∀ n, P8872604243500081186.a n = A314203 n

theorem P8872604243500081186.correct : P8872604243500081186.Spec := by
  intro n
  simp only [A314203]

end A314203

/-! ## A314203.P12023486789543075653

`A008458(n)+A008574(n)-A314740(n)`
-/

namespace A314203.P12023486789543075653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314740 n)

end

end A314203.P12023486789543075653

namespace A314203

/-- `A008458(n)+A008574(n)-A314740(n)` -/
def P12023486789543075653.Spec : Prop :=
  ∀ n, P12023486789543075653.a n = A314203 n

end A314203

/-! ## A314203.P1324709006111769421

`A008486(n)+A313682(n)-A072154(n)`
-/

namespace A314203.P1324709006111769421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313682 n - A072154 n)

end

end A314203.P1324709006111769421

namespace A314203

/-- `A008486(n)+A313682(n)-A072154(n)` -/
def P1324709006111769421.Spec : Prop :=
  ∀ n, P1324709006111769421.a n = A314203 n

end A314203

/-! ## A314203.P8815727430252872683

`A008458(n)-A314740(n)%A004277(n)`
-/

namespace A314203.P8815727430252872683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - Int.tmod (A314740 n) (A004277 n)

end

end A314203.P8815727430252872683

namespace A314203

/-- `A008458(n)-A314740(n)%A004277(n)` -/
def P8815727430252872683.Spec : Prop :=
  ∀ n, P8815727430252872683.a n = A314203 n

end A314203

/-! ## A314203.P15917291703470815039

`∑{d}[A008592(n)-A314740(n), A000010(#)]`
-/

namespace A314203.P15917291703470815039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314203.P15917291703470815039

namespace A314203

/-- `∑{d}[A008592(n)-A314740(n), A000010(#)]` -/
def P15917291703470815039.Spec : Prop :=
  ∀ n, P15917291703470815039.a n = A314203 n

end A314203

/-! ## A314203.P6948449574492923204

`A314740(n)+A005843(A008706(n)-A314740(n))`
-/

namespace A314203.P6948449574492923204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314740 n + A005843 (A008706 n - A314740 n).toNat

end

end A314203.P6948449574492923204

namespace A314203

/-- `A314740(n)+A005843(A008706(n)-A314740(n))` -/
def P6948449574492923204.Spec : Prop :=
  ∀ n, P6948449574492923204.a n = A314203 n

end A314203

/-! ## A314203.P8280272519504412946

`A313284(n)+A253262(n)`
-/

namespace A314203.P8280272519504412946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313284 n + A253262 n

end

end A314203.P8280272519504412946

namespace A314203

/-- `A313284(n)+A253262(n)` -/
def P8280272519504412946.Spec : Prop :=
  ∀ n, P8280272519504412946.a n = A314203 n

theorem P8280272519504412946.correct : P8280272519504412946.Spec := by
  intro n
  simp only [A314203, Nat.add_sub_cancel, A314203.P8280272519504412946.a, A314203.P8872604243500081186.a, A253262, A253262.P6184646248567078382.a, A265227, A265227.P9793585144549180262.a, A313284, A313284.P7231035941228258190.a, A313476, A313476.P1237108097731061015.a, A312903, A312903.P5186887365123370171.a, A330025, A330025.P8729701065839544525.a, A311384, A311384.P2354907441128154650.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314203

/-! ## A314203.P512464485045779788

`A005843(A008706(n))-A314740(n)`
-/

namespace A314203.P512464485045779788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314740 n

end

end A314203.P512464485045779788

namespace A314203

/-- `A005843(A008706(n))-A314740(n)` -/
def P512464485045779788.Spec : Prop :=
  ∀ n, P512464485045779788.a n = A314203 n

end A314203

/-! ## A314203.P3088768415440888376

`A004277(A008458(n)-n)-A314740(n)`
-/

namespace A314203.P3088768415440888376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008458 n - (n : ℤ)).toNat - A314740 n

end

end A314203.P3088768415440888376

namespace A314203

/-- `A004277(A008458(n)-n)-A314740(n)` -/
def P3088768415440888376.Spec : Prop :=
  ∀ n, P3088768415440888376.a n = A314203 n

end A314203

/-! ## A314203.P7644013834377755413

`lcm(A008592(n)-A314740(n), A014963(12*(n+1)))`
-/

namespace A314203.P7644013834377755413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A314740 n) (A014963 (12 * (n + 1)))

end

end A314203.P7644013834377755413

namespace A314203

/-- `lcm(A008592(n)-A314740(n), A014963(12*(n+1)))` -/
def P7644013834377755413.Spec : Prop :=
  ∀ n, (P7644013834377755413.a n : ℤ) = A314203 n

end A314203

/-!
# A314204: Coordination sequence Gal.6.341.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314204, the canonical program `A314204.P2426223721515965919` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314204 has offset 0).

The definition of A314204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314204.P8641285319702286307

`A313717(n)+∑[A021913(n)]`
-/

namespace A314204.P8641285319702286307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314204.P8641285319702286307

namespace A314204

/-- `A313717(n)+∑[A021913(n)]` -/
def P8641285319702286307.Spec : Prop :=
  ∀ n, P8641285319702286307.a n = A314204 n

end A314204

/-! ## A314204.P5142690967673140229

`A313717(n)+Δ[A011848(n)]`
-/

namespace A314204.P5142690967673140229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + (f1 (n + 1) - f1 n)

end

end A314204.P5142690967673140229

namespace A314204

/-- `A313717(n)+Δ[A011848(n)]` -/
def P5142690967673140229.Spec : Prop :=
  ∀ n, P5142690967673140229.a n = A314204 n

end A314204

/-! ## A314204.P4153787488814418921

`A313717(n)+A004524(n+1)`
-/

namespace A314204.P4153787488814418921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + A004524 (n + 1)

end

end A314204.P4153787488814418921

namespace A314204

/-- `A313717(n)+A004524(n+1)` -/
def P4153787488814418921.Spec : Prop :=
  ∀ n, P4153787488814418921.a n = A314204 n

end A314204

/-! ## A314204.P8998635408441327055

`A313717(n)+n-A004525(n)`
-/

namespace A314204.P8998635408441327055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ((n : ℤ) - A004525 n)

end

end A314204.P8998635408441327055

namespace A314204

/-- `A313717(n)+n-A004525(n)` -/
def P8998635408441327055.Spec : Prop :=
  ∀ n, P8998635408441327055.a n = A314204 n

end A314204

/-! ## A314204.P1776928055423462208

`A313717(n)+n-Δ[A054925(n)]`
-/

namespace A314204.P1776928055423462208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314204.P1776928055423462208

namespace A314204

/-- `A313717(n)+n-Δ[A054925(n)]` -/
def P1776928055423462208.Spec : Prop :=
  ∀ n, P1776928055423462208.a n = A314204 n

end A314204

/-! ## A314204.P10497038012189490226

`A313859(n)+A004525(n-A004396(n))`
-/

namespace A314204.P10497038012189490226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314204.P10497038012189490226

namespace A314204

/-- `A313859(n)+A004525(n-A004396(n))` -/
def P10497038012189490226.Spec : Prop :=
  ∀ n, P10497038012189490226.a n = A314204 n

end A314204

/-! ## A314204.P2426223721515965919

`A004396(n)+A314108(n)-A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314204

/-- `A004396(n)+A314108(n)-A004525(n)` -/
def P2426223721515965919.Spec : Prop :=
  ∀ n, P2426223721515965919.a n = A314204 n

theorem P2426223721515965919.correct : P2426223721515965919.Spec := by
  intro n
  simp only [A314204]

end A314204

/-! ## A314204.P4533608883913618041

`A004396(n)+A314089(n)-A004525(A004396(n))`
-/

namespace A314204.P4533608883913618041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314089 n - A004525 (A004396 n).toNat)

end

end A314204.P4533608883913618041

namespace A314204

/-- `A004396(n)+A314089(n)-A004525(A004396(n))` -/
def P4533608883913618041.Spec : Prop :=
  ∀ n, P4533608883913618041.a n = A314204 n

end A314204

/-! ## A314204.P4344373386121978154

`A004396(n)+A314091(n)-A004396(A004525(n))`
-/

namespace A314204.P4344373386121978154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314091 n - A004396 (A004525 n).toNat)

end

end A314204.P4344373386121978154

namespace A314204

/-- `A004396(n)+A314091(n)-A004396(A004525(n))` -/
def P4344373386121978154.Spec : Prop :=
  ∀ n, P4344373386121978154.a n = A314204 n

end A314204

/-! ## A314204.P243664028466288904

`A315485(n)-A101455(n)`
-/

namespace A314204.P243664028466288904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315485 n - A101455 n

end

end A314204.P243664028466288904

namespace A314204

/-- `A315485(n)-A101455(n)` -/
def P243664028466288904.Spec : Prop :=
  ∀ n, P243664028466288904.a n = A314204 n

end A314204

/-! ## A314204.P2200074958062765206

`abs(A008592(n)-A314737(n))`
-/

namespace A314204.P2200074958062765206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314737 n|

end

end A314204.P2200074958062765206

namespace A314204

/-- `abs(A008592(n)-A314737(n))` -/
def P2200074958062765206.Spec : Prop :=
  ∀ n, P2200074958062765206.a n = A314204 n

end A314204

/-! ## A314204.P17845478065534975859

`2*A008706(n)-A314737(n)`
-/

namespace A314204.P17845478065534975859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314737 n

end

end A314204.P17845478065534975859

namespace A314204

/-- `2*A008706(n)-A314737(n)` -/
def P17845478065534975859.Spec : Prop :=
  ∀ n, P17845478065534975859.a n = A314204 n

end A314204

/-! ## A314204.P6998895311378697863

`A008458(n)+A008574(n)-A314737(n)`
-/

namespace A314204.P6998895311378697863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314737 n)

end

end A314204.P6998895311378697863

namespace A314204

/-- `A008458(n)+A008574(n)-A314737(n)` -/
def P6998895311378697863.Spec : Prop :=
  ∀ n, P6998895311378697863.a n = A314204 n

end A314204

/-! ## A314204.P13949051958974419568

`A315741(n)-A004396(A004525(n))`
-/

namespace A314204.P13949051958974419568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - A004396 (A004525 n).toNat

end

end A314204.P13949051958974419568

namespace A314204

/-- `A315741(n)-A004396(A004525(n))` -/
def P13949051958974419568.Spec : Prop :=
  ∀ n, P13949051958974419568.a n = A314204 n

end A314204

/-! ## A314204.P6624139267332480480

`A315760(n)-A004525(n)`
-/

namespace A314204.P6624139267332480480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - A004525 n

end

end A314204.P6624139267332480480

namespace A314204

/-- `A315760(n)-A004525(n)` -/
def P6624139267332480480.Spec : Prop :=
  ∀ n, P6624139267332480480.a n = A314204 n

end A314204

/-! ## A314204.P13289217435100780950

`A315760(n)-Δ[A054925(n)]`
-/

namespace A314204.P13289217435100780950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - (f1 (n + 1) - f1 n)

end

end A314204.P13289217435100780950

namespace A314204

/-- `A315760(n)-Δ[A054925(n)]` -/
def P13289217435100780950.Spec : Prop :=
  ∀ n, P13289217435100780950.a n = A314204 n

end A314204

/-! ## A314204.P6677986867308641570

`∑[A021913(n)]+A315760(n)-n`
-/

namespace A314204.P6677986867308641570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315760 n - (n : ℤ))

end

end A314204.P6677986867308641570

namespace A314204

/-- `∑[A021913(n)]+A315760(n)-n` -/
def P6677986867308641570.Spec : Prop :=
  ∀ n, P6677986867308641570.a n = A314204 n

end A314204

/-! ## A314204.P17505561618039057098

`Δ[A011848(n)]+A315760(n)-n`
-/

namespace A314204.P17505561618039057098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315760 n - (n : ℤ))

end

end A314204.P17505561618039057098

namespace A314204

/-- `Δ[A011848(n)]+A315760(n)-n` -/
def P17505561618039057098.Spec : Prop :=
  ∀ n, P17505561618039057098.a n = A314204 n

end A314204

/-! ## A314204.P15794296279166895914

`A005843(A008706(n))-A314737(n)`
-/

namespace A314204.P15794296279166895914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314737 n

end

end A314204.P15794296279166895914

namespace A314204

/-- `A005843(A008706(n))-A314737(n)` -/
def P15794296279166895914.Spec : Prop :=
  ∀ n, P15794296279166895914.a n = A314204 n

end A314204

/-! ## A314204.P4326812408157156237

`∏{d}[A008592(n)-A314737(n), A014963(#)]`
-/

namespace A314204.P4326812408157156237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A314204.P4326812408157156237

namespace A314204

/-- `∏{d}[A008592(n)-A314737(n), A014963(#)]` -/
def P4326812408157156237.Spec : Prop :=
  ∀ n, P4326812408157156237.a n = A314204 n

end A314204

/-!
# A314205: Coordination sequence Gal.5.133.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314205, the canonical program `A314205.P7191445224176703751` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314205 has offset 0).

The definition of A314205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314205.P8773840084050444435

`abs(A008592(n)-A314736(n))`
-/

namespace A314205.P8773840084050444435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314736 n|

end

end A314205.P8773840084050444435

namespace A314205

/-- `abs(A008592(n)-A314736(n))` -/
def P8773840084050444435.Spec : Prop :=
  ∀ n, P8773840084050444435.a n = A314205 n

end A314205

/-! ## A314205.P7653315457754999976

`2*A008706(n)-A314736(n)`
-/

namespace A314205.P7653315457754999976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314736 n

end

end A314205.P7653315457754999976

namespace A314205

/-- `2*A008706(n)-A314736(n)` -/
def P7653315457754999976.Spec : Prop :=
  ∀ n, P7653315457754999976.a n = A314205 n

end A314205

/-! ## A314205.P1269222648028067794

`A310493(n)+A004396(A004396(n))`
-/

namespace A314205.P1269222648028067794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310493 n + A004396 (A004396 n).toNat

end

end A314205.P1269222648028067794

namespace A314205

/-- `A310493(n)+A004396(A004396(n))` -/
def P1269222648028067794.Spec : Prop :=
  ∀ n, P1269222648028067794.a n = A314205 n

end A314205

/-! ## A314205.P13414098665873316221

`A310369(n)+A004396(2*A004396(n))`
-/

namespace A314205.P13414098665873316221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310369 n + A004396 (2 * A004396 n).toNat

end

end A314205.P13414098665873316221

namespace A314205

/-- `A310369(n)+A004396(2*A004396(n))` -/
def P13414098665873316221.Spec : Prop :=
  ∀ n, P13414098665873316221.a n = A314205 n

end A314205

/-! ## A314205.P17093916677420419513

`A315646(n)-A128834(2*A004396(n))`
-/

namespace A314205.P17093916677420419513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 n - A128834 (2 * A004396 n).toNat

end

end A314205.P17093916677420419513

namespace A314205

/-- `A315646(n)-A128834(2*A004396(n))` -/
def P17093916677420419513.Spec : Prop :=
  ∀ n, P17093916677420419513.a n = A314205 n

end A314205

/-! ## A314205.P7191445224176703751

`A313860(n)+A004396(n-A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314205

/-- `A313860(n)+A004396(n-A004396(n))` -/
def P7191445224176703751.Spec : Prop :=
  ∀ n, P7191445224176703751.a n = A314205 n

theorem P7191445224176703751.correct : P7191445224176703751.Spec := by
  intro n
  simp only [A314205]

end A314205

/-! ## A314205.P11391238093935222437

`A008458(n)+A008574(n)-A314736(n)`
-/

namespace A314205.P11391238093935222437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314736 n)

end

end A314205.P11391238093935222437

namespace A314205

/-- `A008458(n)+A008574(n)-A314736(n)` -/
def P11391238093935222437.Spec : Prop :=
  ∀ n, P11391238093935222437.a n = A314205 n

end A314205

/-! ## A314205.P4528693191621132153

`A315475(n)-A128834(2*A006369(n))`
-/

namespace A314205.P4528693191621132153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A128834 (2 * A006369 n).toNat

end

end A314205.P4528693191621132153

namespace A314205

/-- `A315475(n)-A128834(2*A006369(n))` -/
def P4528693191621132153.Spec : Prop :=
  ∀ n, P4528693191621132153.a n = A314205 n

end A314205

/-! ## A314205.P3459621053874481145

`A313962(n)-A134667(A006369(2*n))`
-/

namespace A314205.P3459621053874481145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313962 n - A134667 (A006369 (2 * n)).toNat

end

end A314205.P3459621053874481145

namespace A314205

/-- `A313962(n)-A134667(A006369(2*n))` -/
def P3459621053874481145.Spec : Prop :=
  ∀ n, P3459621053874481145.a n = A314205 n

end A314205

/-! ## A314205.P10625982679424758539

`(A315739(n)+A310509(n))/2`
-/

namespace A314205.P10625982679424758539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315739 n + A310509 n : ℚ) / 2

end

end A314205.P10625982679424758539

namespace A314205

/-- `(A315739(n)+A310509(n))/2` -/
def P10625982679424758539.Spec : Prop :=
  ∀ n, P10625982679424758539.a n = (A314205 n : ℚ)

end A314205

/-! ## A314205.P8428954549332687267

`A047263(A313026(n)+1)`
-/

namespace A314205.P8428954549332687267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A313026 n + 1).toNat

end

end A314205.P8428954549332687267

namespace A314205

/-- `A047263(A313026(n)+1)` -/
def P8428954549332687267.Spec : Prop :=
  ∀ n, P8428954549332687267.a n = A314205 n

end A314205

/-! ## A314205.P11357304448957715994

`A315757(n)-A004396(A004396(n))`
-/

namespace A314205.P11357304448957715994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 n - A004396 (A004396 n).toNat

end

end A314205.P11357304448957715994

namespace A314205

/-- `A315757(n)-A004396(A004396(n))` -/
def P11357304448957715994.Spec : Prop :=
  ∀ n, P11357304448957715994.a n = A314205 n

end A314205

/-! ## A314205.P8867879714378720261

`A005843(A008706(n))-A314736(n)`
-/

namespace A314205.P8867879714378720261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314736 n

end

end A314205.P8867879714378720261

namespace A314205

/-- `A005843(A008706(n))-A314736(n)` -/
def P8867879714378720261.Spec : Prop :=
  ∀ n, P8867879714378720261.a n = A314205 n

end A314205

/-! ## A314205.P13047146443452632022

`2*A008574(n)-A004525(A315267(n))`
-/

namespace A314205.P13047146443452632022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A315267 n).toNat

end

end A314205.P13047146443452632022

namespace A314205

/-- `2*A008574(n)-A004525(A315267(n))` -/
def P13047146443452632022.Spec : Prop :=
  ∀ n, P13047146443452632022.a n = A314205 n

end A314205

/-! ## A314205.P1276478860672810846

`A312975(2*n)-4*n`
-/

namespace A314205.P1276478860672810846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312975 (2 * n) - (4 * n : ℤ)

end

end A314205.P1276478860672810846

namespace A314205

/-- `A312975(2*n)-4*n` -/
def P1276478860672810846.Spec : Prop :=
  ∀ n, P1276478860672810846.a n = A314205 n

end A314205

/-! ## A314205.P2506644573227227507

`A004525(A313293(2*n))`
-/

namespace A314205.P2506644573227227507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313293 (2 * n)).toNat

end

end A314205.P2506644573227227507

namespace A314205

/-- `A004525(A313293(2*n))` -/
def P2506644573227227507.Spec : Prop :=
  ∀ n, P2506644573227227507.a n = A314205 n

end A314205

/-! ## A314205.P7912048878097025264

`A315510(n)-A134667(A004396(2*n))`
-/

namespace A314205.P7912048878097025264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315510 n - A134667 (A004396 (2 * n)).toNat

end

end A314205.P7912048878097025264

namespace A314205

/-- `A315510(n)-A134667(A004396(2*n))` -/
def P7912048878097025264.Spec : Prop :=
  ∀ n, P7912048878097025264.a n = A314205 n

end A314205

/-! ## A314205.P12007162234692451314

`2*A008574(2*n)-A315510(2*n)`
-/

namespace A314205.P12007162234692451314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315510 (2 * n)

end

end A314205.P12007162234692451314

namespace A314205

/-- `2*A008574(2*n)-A315510(2*n)` -/
def P12007162234692451314.Spec : Prop :=
  ∀ n, P12007162234692451314.a n = A314205 n

end A314205

/-!
# A314206: Coordination sequence Gal.6.483.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314206, there is no canonical definition to state claims against.
-/

/-! ## A314206.P13821509980179251021

`A303787(n)+A118168(A315763(n))`
-/

namespace A314206.P13821509980179251021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 n + A118168 (A315763 n).toNat

end

end A314206.P13821509980179251021

/-! ## A314206.P18435913248927671276

`A057354(A047412(2*(n+1)))+xor(A266619(A008956(n)), A311792(n))`
-/

namespace A314206.P18435913248927671276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A047412 (2 * (n + 1))).toNat + Int.xor (A266619 (A008956 n).toNat) (A311792 n)

end

end A314206.P18435913248927671276

/-! ## A314206.P18087506545022351642

`A057354(A047412(2*(n+1)))+A311809(n)-A055641(A083606(n+1))`
-/

namespace A314206.P18087506545022351642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A047412 (2 * (n + 1))).toNat + (A311809 n - A055641 (A083606 (n + 1)).toNat)

end

end A314206.P18087506545022351642

/-! ## A314206.P1674370794198718549

`A315745(n)-A001221(A018533(n+1))`
-/

namespace A314206.P1674370794198718549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315745 n - A001221 (A018533 (n + 1)).toNat

end

end A314206.P1674370794198718549

/-! ## A314206.P11136555333764551526

`A047486(n+1)+A321177(n+1)-A188432(A000292(n+1))`
-/

namespace A314206.P11136555333764551526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A321177 (n + 1) - A188432 (A000292 (n + 1)).toNat)

end

end A314206.P11136555333764551526

/-!
# A314207: Coordination sequence Gal.5.325.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314207, there is no canonical definition to state claims against.
-/

/-! ## A314207.P10064523323977148825

`A314240(n)-A220400(A005183(n))`
-/

namespace A314207.P10064523323977148825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A220400 (A005183 n).toNat

end

end A314207.P10064523323977148825

/-! ## A314207.P3133201644253794458

`A161790(3*n+1)+A121373(A278957(n+2))`
-/

namespace A314207.P3133201644253794458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (3 * n + 1) + A121373 (A278957 (n + 2)).toNat

end

end A314207.P3133201644253794458

/-! ## A314207.P4589961995104844405

`A314213(n)-A275926(A060995(n+2))`
-/

namespace A314207.P4589961995104844405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314213 n - A275926 (A060995 (n + 2)).toNat

end

end A314207.P4589961995104844405

/-! ## A314207.P8110913355121859257

`A346127(A312083(n))+A244895(A313883(n+1))`
-/

namespace A314207.P8110913355121859257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A312083 n).toNat + A244895 (A313883 (n + 1)).toNat

end

end A314207.P8110913355121859257

/-!
# A314208: Coordination sequence Gal.6.619.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314208, the canonical program `A314208.P13024500297364737836` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314208 has offset 0).

The definition of A314208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314208.P14397032193021418022

`A313023(n)+n`
-/

namespace A314208.P14397032193021418022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313023 n + (n : ℤ)

end

end A314208.P14397032193021418022

namespace A314208

/-- `A313023(n)+n` -/
def P14397032193021418022.Spec : Prop :=
  ∀ n, P14397032193021418022.a n = A314208 n

end A314208

/-! ## A314208.P6889576931736466818

`A315675(n)-A128834(n)`
-/

namespace A314208.P6889576931736466818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315675 n - A128834 n

end

end A314208.P6889576931736466818

namespace A314208

/-- `A315675(n)-A128834(n)` -/
def P6889576931736466818.Spec : Prop :=
  ∀ n, P6889576931736466818.a n = A314208 n

end A314208

/-! ## A314208.P1223409237555251153

`A313859(n)+A002264(n+1)`
-/

namespace A314208.P1223409237555251153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n + A002264 (n + 1)

end

end A314208.P1223409237555251153

namespace A314208

/-- `A313859(n)+A002264(n+1)` -/
def P1223409237555251153.Spec : Prop :=
  ∀ n, P1223409237555251153.a n = A314208 n

end A314208

/-! ## A314208.P13684004601367310258

`A313729(n)+n-A004525(n)`
-/

namespace A314208.P13684004601367310258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313729 n + ((n : ℤ) - A004525 n)

end

end A314208.P13684004601367310258

namespace A314208

/-- `A313729(n)+n-A004525(n)` -/
def P13684004601367310258.Spec : Prop :=
  ∀ n, P13684004601367310258.a n = A314208 n

end A314208

/-! ## A314208.P6324953110607207398

`A313859(n)+n-A004396(n)`
-/

namespace A314208.P6324953110607207398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n + ((n : ℤ) - A004396 n)

end

end A314208.P6324953110607207398

namespace A314208

/-- `A313859(n)+n-A004396(n)` -/
def P6324953110607207398.Spec : Prop :=
  ∀ n, P6324953110607207398.a n = A314208 n

end A314208

/-! ## A314208.P13024500297364737836

`A313872(n)+A004525(n-A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314208

/-- `A313872(n)+A004525(n-A004396(n))` -/
def P13024500297364737836.Spec : Prop :=
  ∀ n, P13024500297364737836.a n = A314208 n

theorem P13024500297364737836.correct : P13024500297364737836.Spec := by
  intro n
  simp only [A314208]

end A314208

/-! ## A314208.P7819424750714405024

`A008486(n)+A313859(n)-A008576(n)`
-/

namespace A314208.P7819424750714405024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313859 n - A008576 n)

end

end A314208.P7819424750714405024

namespace A314208

/-- `A008486(n)+A313859(n)-A008576(n)` -/
def P7819424750714405024.Spec : Prop :=
  ∀ n, P7819424750714405024.a n = A314208 n

end A314208

/-! ## A314208.P961681845374407725

`A008458(n)+A008574(n)-A314726(n)`
-/

namespace A314208.P961681845374407725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314726 n)

end

end A314208.P961681845374407725

namespace A314208

/-- `A008458(n)+A008574(n)-A314726(n)` -/
def P961681845374407725.Spec : Prop :=
  ∀ n, P961681845374407725.a n = A314208 n

end A314208

/-! ## A314208.P16317248211201116944

`A004396(n)+A314094(n)-A004525(A004396(n))`
-/

namespace A314208.P16317248211201116944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314094 n - A004525 (A004396 n).toNat)

end

end A314208.P16317248211201116944

namespace A314208

/-- `A004396(n)+A314094(n)-A004525(A004396(n))` -/
def P16317248211201116944.Spec : Prop :=
  ∀ n, P16317248211201116944.a n = A314208 n

end A314208

/-! ## A314208.P4936971445484811997

`A315744(n)-A047424(n+1)+n`
-/

namespace A314208.P4936971445484811997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315744 n - A047424 (n + 1) + (n : ℤ)

end

end A314208.P4936971445484811997

namespace A314208

/-- `A315744(n)-A047424(n+1)+n` -/
def P4936971445484811997.Spec : Prop :=
  ∀ n, P4936971445484811997.a n = A314208 n

end A314208

/-! ## A314208.P4324867747521603902

`A315768(n)-A004525(n)`
-/

namespace A314208.P4324867747521603902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315768 n - A004525 n

end

end A314208.P4324867747521603902

namespace A314208

/-- `A315768(n)-A004525(n)` -/
def P4324867747521603902.Spec : Prop :=
  ∀ n, P4324867747521603902.a n = A314208 n

theorem P4324867747521603902.correct : P4324867747521603902.Spec := by
  intro n
  simp only [A314208, Nat.add_sub_cancel, A314208.P4324867747521603902.a, A314208.P13024500297364737836.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A313872, A313872.P15679373648552162511.a, A315768, A315768.P5080605822707988904.a, A008592, A008592.P4981059802862696142.a, A313569, A313569.P8131727440747983242.a, A312896, A312896.P16473508619976293498.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314208

/-! ## A314208.P3999752643926499621

`A315768(n)-A047229(n+1)+n`
-/

namespace A314208.P3999752643926499621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315768 n - A047229 (n + 1) + (n : ℤ)

end

end A314208.P3999752643926499621

namespace A314208

/-- `A315768(n)-A047229(n+1)+n` -/
def P3999752643926499621.Spec : Prop :=
  ∀ n, P3999752643926499621.a n = A314208 n

end A314208

/-! ## A314208.P484166889388865954

`A004396(A314108(n))+2*n`
-/

namespace A314208.P484166889388865954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314108 n).toNat + (2 * n : ℤ)

end

end A314208.P484166889388865954

namespace A314208

/-- `A004396(A314108(n))+2*n` -/
def P484166889388865954.Spec : Prop :=
  ∀ n, P484166889388865954.a n = A314208 n

end A314208

/-! ## A314208.P13484767881968577520

`A004396(2*A313023(n)-A004396(n))`
-/

namespace A314208.P13484767881968577520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313023 n - A004396 n).toNat

end

end A314208.P13484767881968577520

namespace A314208

/-- `A004396(2*A313023(n)-A004396(n))` -/
def P13484767881968577520.Spec : Prop :=
  ∀ n, P13484767881968577520.a n = A314208 n

end A314208

/-! ## A314208.P14649103506565924831

`A004396(A313023(n)-(A004396(n)-A313023(n)))`
-/

namespace A314208.P14649103506565924831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313023 n - (A004396 n - A313023 n)).toNat

end

end A314208.P14649103506565924831

namespace A314208

/-- `A004396(A313023(n)-(A004396(n)-A313023(n)))` -/
def P14649103506565924831.Spec : Prop :=
  ∀ n, P14649103506565924831.a n = A314208 n

end A314208

/-! ## A314208.P14221486514452126568

`A004525(2*A310452(n)+n)`
-/

namespace A314208.P14221486514452126568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A310452 n + (n : ℤ)).toNat

end

end A314208.P14221486514452126568

namespace A314208

/-- `A004525(2*A310452(n)+n)` -/
def P14221486514452126568.Spec : Prop :=
  ∀ n, P14221486514452126568.a n = A314208 n

end A314208

/-! ## A314208.P11201318118866445318

`A004525(2*A313720(n)+n)`
-/

namespace A314208.P11201318118866445318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313720 n + (n : ℤ)).toNat

end

end A314208.P11201318118866445318

namespace A314208

/-- `A004525(2*A313720(n)+n)` -/
def P11201318118866445318.Spec : Prop :=
  ∀ n, P11201318118866445318.a n = A314208 n

end A314208

/-! ## A314208.P13633200434083588029

`A004525(2*A313729(n)+n)`
-/

namespace A314208.P13633200434083588029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313729 n + (n : ℤ)).toNat

end

end A314208.P13633200434083588029

namespace A314208

/-- `A004525(2*A313729(n)+n)` -/
def P13633200434083588029.Spec : Prop :=
  ∀ n, P13633200434083588029.a n = A314208 n

end A314208

/-! ## A314208.P11052245410992089675

`A004525(2*A313824(n)+n)`
-/

namespace A314208.P11052245410992089675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313824 n + (n : ℤ)).toNat

end

end A314208.P11052245410992089675

namespace A314208

/-- `A004525(2*A313824(n)+n)` -/
def P11052245410992089675.Spec : Prop :=
  ∀ n, P11052245410992089675.a n = A314208 n

end A314208

/-! ## A314208.P18081569761538944351

`A004525(A310452(n)+A310452(n)+n)`
-/

namespace A314208.P18081569761538944351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310452 n + (A310452 n + (n : ℤ))).toNat

end

end A314208.P18081569761538944351

namespace A314208

/-- `A004525(A310452(n)+A310452(n)+n)` -/
def P18081569761538944351.Spec : Prop :=
  ∀ n, P18081569761538944351.a n = A314208 n

end A314208

/-!
# A314209: Coordination sequence Gal.5.293.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314209, the canonical program `A314209.P11294401320322084331` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314209 has offset 0).

The definition of A314209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314209.P7445947662387159548

`A313025(n)+n`
-/

namespace A314209.P7445947662387159548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313025 n + (n : ℤ)

end

end A314209.P7445947662387159548

namespace A314209

/-- `A313025(n)+n` -/
def P7445947662387159548.Spec : Prop :=
  ∀ n, P7445947662387159548.a n = A314209 n

end A314209

/-! ## A314209.P11294401320322084331

`A074232(A312892(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314209

/-- `A074232(A312892(n))` -/
def P11294401320322084331.Spec : Prop :=
  ∀ n, P11294401320322084331.a n = A314209 n

theorem P11294401320322084331.correct : P11294401320322084331.Spec := by
  intro n
  simp only [A314209]

end A314209

/-! ## A314209.P8937652877623581855

`A313295(n)+A253262(n)`
-/

namespace A314209.P8937652877623581855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313295 n + A253262 n

end

end A314209.P8937652877623581855

namespace A314209

/-- `A313295(n)+A253262(n)` -/
def P8937652877623581855.Spec : Prop :=
  ∀ n, P8937652877623581855.a n = A314209 n

end A314209

/-! ## A314209.P5915701393737654453

`A301724(n)-A330033(n)`
-/

namespace A314209.P5915701393737654453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - A330033 n

end

end A314209.P5915701393737654453

namespace A314209

/-- `A301724(n)-A330033(n)` -/
def P5915701393737654453.Spec : Prop :=
  ∀ n, P5915701393737654453.a n = A314209 n

end A314209

/-! ## A314209.P14383954188795039599

`A315737(n)-A330025(n)`
-/

namespace A314209.P14383954188795039599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315737 n - A330025 n

end

end A314209.P14383954188795039599

namespace A314209

/-- `A315737(n)-A330025(n)` -/
def P14383954188795039599.Spec : Prop :=
  ∀ n, P14383954188795039599.a n = A314209 n

end A314209

/-! ## A314209.P7614469969257024969

`A312892(n)+A047263(n+1)`
-/

namespace A314209.P7614469969257024969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 n + A047263 (n + 1)

end

end A314209.P7614469969257024969

namespace A314209

/-- `A312892(n)+A047263(n+1)` -/
def P7614469969257024969.Spec : Prop :=
  ∀ n, P7614469969257024969.a n = A314209 n

end A314209

/-! ## A314209.P1168404440042156059

`(A310492(n)+A008458(n))/2`
-/

namespace A314209.P1168404440042156059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310492 n + A008458 n : ℚ) / 2

end

end A314209.P1168404440042156059

namespace A314209

/-- `(A310492(n)+A008458(n))/2` -/
def P1168404440042156059.Spec : Prop :=
  ∀ n, P1168404440042156059.a n = (A314209 n : ℚ)

end A314209

/-! ## A314209.P2696680696491681929

`2*A008706(n)-A314725(n)`
-/

namespace A314209.P2696680696491681929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314725 n

end

end A314209.P2696680696491681929

namespace A314209

/-- `2*A008706(n)-A314725(n)` -/
def P2696680696491681929.Spec : Prop :=
  ∀ n, P2696680696491681929.a n = A314209 n

end A314209

/-! ## A314209.P10538459531651778800

`A151988(n)+A314203(n)-n`
-/

namespace A314209.P10538459531651778800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A314203 n - (n : ℤ))

end

end A314209.P10538459531651778800

namespace A314209

/-- `A151988(n)+A314203(n)-n` -/
def P10538459531651778800.Spec : Prop :=
  ∀ n, P10538459531651778800.a n = A314209 n

end A314209

/-! ## A314209.P6509630982490789649

`A005843(n)-(n-A313025(n))`
-/

namespace A314209.P6509630982490789649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313025 n)

end

end A314209.P6509630982490789649

namespace A314209

/-- `A005843(n)-(n-A313025(n))` -/
def P6509630982490789649.Spec : Prop :=
  ∀ n, P6509630982490789649.a n = A314209 n

end A314209

/-! ## A314209.P5416067693819728703

`abs(A008591(n)+n-A314725(n))`
-/

namespace A314209.P5416067693819728703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A314725 n)|

end

end A314209.P5416067693819728703

namespace A314209

/-- `abs(A008591(n)+n-A314725(n))` -/
def P5416067693819728703.Spec : Prop :=
  ∀ n, P5416067693819728703.a n = A314209 n

end A314209

/-! ## A314209.P13292720588690378843

`A314111(n)+A008676(A016777(n))`
-/

namespace A314209.P13292720588690378843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n + A008676 (A016777 n).toNat

end

end A314209.P13292720588690378843

namespace A314209

/-- `A314111(n)+A008676(A016777(n))` -/
def P13292720588690378843.Spec : Prop :=
  ∀ n, P13292720588690378843.a n = A314209 n

end A314209

/-! ## A314209.P4171574271835359854

`A008458(n)+A008574(n)-A314725(n)`
-/

namespace A314209.P4171574271835359854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314725 n)

end

end A314209.P4171574271835359854

namespace A314209

/-- `A008458(n)+A008574(n)-A314725(n)` -/
def P4171574271835359854.Spec : Prop :=
  ∀ n, P4171574271835359854.a n = A314209 n

end A314209

/-! ## A314209.P4541042076592420844

`A005843(n)+A005843(A008574(n))-A314725(n)`
-/

namespace A314209.P4541042076592420844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314725 n)

end

end A314209.P4541042076592420844

namespace A314209

/-- `A005843(n)+A005843(A008574(n))-A314725(n)` -/
def P4541042076592420844.Spec : Prop :=
  ∀ n, P4541042076592420844.a n = A314209 n

end A314209

/-! ## A314209.P4248016102798264729

`abs(A008592(n)+n-A315496(n))`
-/

namespace A314209.P4248016102798264729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A315496 n)|

end

end A314209.P4248016102798264729

namespace A314209

/-- `abs(A008592(n)+n-A315496(n))` -/
def P4248016102798264729.Spec : Prop :=
  ∀ n, P4248016102798264729.a n = A314209 n

end A314209

/-! ## A314209.P5404880697260096964

`A330025(n-A330025(n))+A313898(n)`
-/

namespace A314209.P5404880697260096964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A313898 n

end

end A314209.P5404880697260096964

namespace A314209

/-- `A330025(n-A330025(n))+A313898(n)` -/
def P5404880697260096964.Spec : Prop :=
  ∀ n, P5404880697260096964.a n = A314209 n

end A314209

/-! ## A314209.P9837696645681231843

`A314220(n)+n-A151988(n)`
-/

namespace A314209.P9837696645681231843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n + ((n : ℤ) - A151988 n)

end

end A314209.P9837696645681231843

namespace A314209

/-- `A314220(n)+n-A151988(n)` -/
def P9837696645681231843.Spec : Prop :=
  ∀ n, P9837696645681231843.a n = A314209 n

end A314209

/-! ## A314209.P9286733390977152903

`A315749(n)-A047363(n+1)+n`
-/

namespace A314209.P9286733390977152903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315749 n - A047363 (n + 1) + (n : ℤ)

end

end A314209.P9286733390977152903

namespace A314209

/-- `A315749(n)-A047363(n+1)+n` -/
def P9286733390977152903.Spec : Prop :=
  ∀ n, P9286733390977152903.a n = A314209 n

end A314209

/-! ## A314209.P7144317680480333260

`A005843(A008574(n)+n)-A314725(n)`
-/

namespace A314209.P7144317680480333260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314725 n

end

end A314209.P7144317680480333260

namespace A314209

/-- `A005843(A008574(n)+n)-A314725(n)` -/
def P7144317680480333260.Spec : Prop :=
  ∀ n, P7144317680480333260.a n = A314209 n

end A314209

/-! ## A314209.P16059342550160595209

`A180004(A314111(n))`
-/

namespace A314209.P16059342550160595209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A314111 n).toNat

end

end A314209.P16059342550160595209

namespace A314209

/-- `A180004(A314111(n))` -/
def P16059342550160595209.Spec : Prop :=
  ∀ n, P16059342550160595209.a n = A314209 n

end A314209

/-!
# A314210: Coordination sequence Gal.6.623.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314210, the canonical program `A314210.P1704120020659904217` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314210 has offset 0).

The definition of A314210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314210.P4582837318781338008

`abs(A008592(n)-A314720(n))`
-/

namespace A314210.P4582837318781338008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314720 n|

end

end A314210.P4582837318781338008

namespace A314210

/-- `abs(A008592(n)-A314720(n))` -/
def P4582837318781338008.Spec : Prop :=
  ∀ n, P4582837318781338008.a n = A314210 n

end A314210

/-! ## A314210.P2738714148011089344

`A314140(n)+Δ[A011864(n)]`
-/

namespace A314210.P2738714148011089344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314140 n + (f1 (n + 1) - f1 n)

end

end A314210.P2738714148011089344

namespace A314210

/-- `A314140(n)+Δ[A011864(n)]` -/
def P2738714148011089344.Spec : Prop :=
  ∀ n, P2738714148011089344.a n = A314210 n

end A314210

/-! ## A314210.P1704120020659904217

`(A310496(n)+A008458(n))/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A314210

/-- `(A310496(n)+A008458(n))/2` -/
def P1704120020659904217.Spec : Prop :=
  ∀ n, P1704120020659904217.a n = (A314210 n : ℚ)

end A314210

/-! ## A314210.P302823009032119569

`2*A008706(n)-A314720(n)`
-/

namespace A314210.P302823009032119569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314720 n

end

end A314210.P302823009032119569

namespace A314210

/-- `2*A008706(n)-A314720(n)` -/
def P302823009032119569.Spec : Prop :=
  ∀ n, P302823009032119569.a n = A314210 n

end A314210

/-! ## A314210.P16170820268247368495

`A008458(n)+A008574(n)-A314720(n)`
-/

namespace A314210.P16170820268247368495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314720 n)

end

end A314210.P16170820268247368495

namespace A314210

/-- `A008458(n)+A008574(n)-A314720(n)` -/
def P16170820268247368495.Spec : Prop :=
  ∀ n, P16170820268247368495.a n = A314210 n

end A314210

/-! ## A314210.P5474461732798473876

`A005843(n)+A005843(A008574(n))-A314720(n)`
-/

namespace A314210.P5474461732798473876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314720 n)

end

end A314210.P5474461732798473876

namespace A314210

/-- `A005843(n)+A005843(A008574(n))-A314720(n)` -/
def P5474461732798473876.Spec : Prop :=
  ∀ n, P5474461732798473876.a n = A314210 n

end A314210

/-! ## A314210.P12426850487107590245

`A008458(n)-A004525(A008458(n)-A310455(n))`
-/

namespace A314210.P12426850487107590245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A310455 n).toNat

end

end A314210.P12426850487107590245

namespace A314210

/-- `A008458(n)-A004525(A008458(n)-A310455(n))` -/
def P12426850487107590245.Spec : Prop :=
  ∀ n, P12426850487107590245.a n = A314210 n

end A314210

/-! ## A314210.P9594645682809173782

`A008458(n)-A004525(A008458(n)-A310456(n))`
-/

namespace A314210.P9594645682809173782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A310456 n).toNat

end

end A314210.P9594645682809173782

namespace A314210

/-- `A008458(n)-A004525(A008458(n)-A310456(n))` -/
def P9594645682809173782.Spec : Prop :=
  ∀ n, P9594645682809173782.a n = A314210 n

end A314210

/-! ## A314210.P3812091818793912454

`A008585(n)+A004525(A310496(n))`
-/

namespace A314210.P3812091818793912454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A310496 n).toNat

end

end A314210.P3812091818793912454

namespace A314210

/-- `A008585(n)+A004525(A310496(n))` -/
def P3812091818793912454.Spec : Prop :=
  ∀ n, P3812091818793912454.a n = A314210 n

end A314210

/-! ## A314210.P5959988209601577022

`A005843(A008574(n)+n)-A314720(n)`
-/

namespace A314210.P5959988209601577022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314720 n

end

end A314210.P5959988209601577022

namespace A314210

/-- `A005843(A008574(n)+n)-A314720(n)` -/
def P5959988209601577022.Spec : Prop :=
  ∀ n, P5959988209601577022.a n = A314210 n

end A314210

/-! ## A314210.P13274706055070348919

`A005843(n)+A004396(A311804(n)+n)`
-/

namespace A314210.P13274706055070348919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A311804 n + (n : ℤ)).toNat

end

end A314210.P13274706055070348919

namespace A314210

/-- `A005843(n)+A004396(A311804(n)+n)` -/
def P13274706055070348919.Spec : Prop :=
  ∀ n, P13274706055070348919.a n = A314210 n

end A314210

/-! ## A314210.P5641283398285512173

`A314890(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A314210.P5641283398285512173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314890 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ))

end

end A314210.P5641283398285512173

namespace A314210

/-- `A314890(2*n)+A008574(n+1)-(8*n+4)` -/
def P5641283398285512173.Spec : Prop :=
  ∀ n, P5641283398285512173.a n = A314210 n

end A314210

/-! ## A314210.P2460063663066986287

`A008574(2*n)+A314890(2*n)-A008458(2*n)`
-/

namespace A314210.P2460063663066986287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (A314890 (2 * n) - A008458 (2 * n))

end

end A314210.P2460063663066986287

namespace A314210

/-- `A008574(2*n)+A314890(2*n)-A008458(2*n)` -/
def P2460063663066986287.Spec : Prop :=
  ∀ n, P2460063663066986287.a n = A314210 n

end A314210

/-! ## A314210.P3623688287636754320

`A004396(A313772(2*n)-A005843(n))`
-/

namespace A314210.P3623688287636754320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313772 (2 * n) - A005843 n).toNat

end

end A314210.P3623688287636754320

namespace A314210

/-- `A004396(A313772(2*n)-A005843(n))` -/
def P3623688287636754320.Spec : Prop :=
  ∀ n, P3623688287636754320.a n = A314210 n

end A314210

/-! ## A314210.P6615955324234544557

`2*A008574(2*n)-A314127(2*n)`
-/

namespace A314210.P6615955324234544557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314127 (2 * n)

end

end A314210.P6615955324234544557

namespace A314210

/-- `2*A008574(2*n)-A314127(2*n)` -/
def P6615955324234544557.Spec : Prop :=
  ∀ n, P6615955324234544557.a n = A314210 n

end A314210

/-! ## A314210.P4381416663685180342

`A004525(A313899(2*n))`
-/

namespace A314210.P4381416663685180342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313899 (2 * n)).toNat

end

end A314210.P4381416663685180342

namespace A314210

/-- `A004525(A313899(2*n))` -/
def P4381416663685180342.Spec : Prop :=
  ∀ n, P4381416663685180342.a n = A314210 n

end A314210

/-! ## A314210.P17681617437367666860

`A004525(A313918(2*n))`
-/

namespace A314210.P17681617437367666860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313918 (2 * n)).toNat

end

end A314210.P17681617437367666860

namespace A314210

/-- `A004525(A313918(2*n))` -/
def P17681617437367666860.Spec : Prop :=
  ∀ n, P17681617437367666860.a n = A314210 n

end A314210

/-! ## A314210.P774800125556029225

`A004525(A314133(2*n))`
-/

namespace A314210.P774800125556029225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314133 (2 * n)).toNat

end

end A314210.P774800125556029225

namespace A314210

/-- `A004525(A314133(2*n))` -/
def P774800125556029225.Spec : Prop :=
  ∀ n, P774800125556029225.a n = A314210 n

end A314210

/-! ## A314210.P5071524507713724528

`A004525(A314149(2*n))`
-/

namespace A314210.P5071524507713724528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314149 (2 * n)).toNat

end

end A314210.P5071524507713724528

namespace A314210

/-- `A004525(A314149(2*n))` -/
def P5071524507713724528.Spec : Prop :=
  ∀ n, P5071524507713724528.a n = A314210 n

end A314210

/-!
# A314211: Coordination sequence Gal.6.650.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314211, the canonical program `A314211.P14972301941053130044` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314211 has offset 0).

The definition of A314211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314211.P3087732000294292804

`A312895(n)+comp[Δ[lcm(3, n)]]`
-/

namespace A314211.P3087732000294292804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A314211.P3087732000294292804

namespace A314211

/-- `A312895(n)+comp[Δ[lcm(3, n)]]` -/
def P3087732000294292804.Spec : Prop :=
  ∀ n, P3087732000294292804.a n = A314211 n

end A314211

/-! ## A314211.P14972301941053130044

`A312895(n)+A047263(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314211

/-- `A312895(n)+A047263(n+1)` -/
def P14972301941053130044.Spec : Prop :=
  ∀ n, P14972301941053130044.a n = A314211 n

theorem P14972301941053130044.correct : P14972301941053130044.Spec := by
  intro n
  simp only [A314211]

end A314211

/-! ## A314211.P15791199173334258502

`A311807(n)+A057357(A016777(n))`
-/

namespace A314211.P15791199173334258502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A057357 (A016777 n).toNat

end

end A314211.P15791199173334258502

namespace A314211

/-- `A311807(n)+A057357(A016777(n))` -/
def P15791199173334258502.Spec : Prop :=
  ∀ n, P15791199173334258502.a n = A314211 n

end A314211

/-! ## A314211.P13113760388413677616

`A312895(n)+A057354(A016777(n))`
-/

namespace A314211.P13113760388413677616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A057354 (A016777 n).toNat

end

end A314211.P13113760388413677616

namespace A314211

/-- `A312895(n)+A057354(A016777(n))` -/
def P13113760388413677616.Spec : Prop :=
  ∀ n, P13113760388413677616.a n = A314211 n

end A314211

/-! ## A314211.P12077283004477522850

`A313873(n)+A110654(A057358(n))`
-/

namespace A314211.P12077283004477522850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n + A110654 (A057358 n).toNat

end

end A314211.P12077283004477522850

namespace A314211

/-- `A313873(n)+A110654(A057358(n))` -/
def P12077283004477522850.Spec : Prop :=
  ∀ n, P12077283004477522850.a n = A314211 n

end A314211

/-! ## A314211.P8420574699063530120

`A312895(n)+A004396(A265227(n+1))`
-/

namespace A314211.P8420574699063530120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A004396 (A265227 (n + 1)).toNat

end

end A314211.P8420574699063530120

namespace A314211

/-- `A312895(n)+A004396(A265227(n+1))` -/
def P8420574699063530120.Spec : Prop :=
  ∀ n, P8420574699063530120.a n = A314211 n

end A314211

/-! ## A314211.P4422213902739455681

`A312895(n)+A057354(A033627(n+2))`
-/

namespace A314211.P4422213902739455681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A057354 (A033627 (n + 2)).toNat

end

end A314211.P4422213902739455681

namespace A314211

/-- `A312895(n)+A057354(A033627(n+2))` -/
def P4422213902739455681.Spec : Prop :=
  ∀ n, P4422213902739455681.a n = A314211 n

end A314211

/-! ## A314211.P6514710079346873719

`A311807(n)+A004525(A060464(2*n+1))`
-/

namespace A314211.P6514710079346873719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A004525 (A060464 (2 * n + 1)).toNat

end

end A314211.P6514710079346873719

namespace A314211

/-- `A311807(n)+A004525(A060464(2*n+1))` -/
def P6514710079346873719.Spec : Prop :=
  ∀ n, P6514710079346873719.a n = A314211 n

end A314211

/-! ## A314211.P8995978401671280081

`A047263(n+1)+A310341(n)+A238468(n)`
-/

namespace A314211.P8995978401671280081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A310341 n + A238468 n)

end

end A314211.P8995978401671280081

namespace A314211

/-- `A047263(n+1)+A310341(n)+A238468(n)` -/
def P8995978401671280081.Spec : Prop :=
  ∀ n, P8995978401671280081.a n = A314211 n

end A314211

/-! ## A314211.P13748680754818080285

`A047263(A271114(n))-A083033(n+1)`
-/

namespace A314211.P13748680754818080285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A271114 n).toNat - A083033 (n + 1)

end

end A314211.P13748680754818080285

namespace A314211

/-- `A047263(A271114(n))-A083033(n+1)` -/
def P13748680754818080285.Spec : Prop :=
  ∀ n, P13748680754818080285.a n = A314211 n

end A314211

/-! ## A314211.P6739909780104123316

`A311807(n)+A057357(A008619(A008458(n)))`
-/

namespace A314211.P6739909780104123316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A057357 (A008619 (A008458 n).toNat).toNat

end

end A314211.P6739909780104123316

namespace A314211

/-- `A311807(n)+A057357(A008619(A008458(n)))` -/
def P6739909780104123316.Spec : Prop :=
  ∀ n, P6739909780104123316.a n = A314211 n

end A314211

/-!
# A314212: Coordination sequence Gal.6.664.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314212, there is no canonical definition to state claims against.
-/

/-! ## A314212.P687222271825485025

`or(A001221(A113860(n)), A313909(n))`
-/

namespace A314212.P687222271825485025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A113860 n).toNat) (A313909 n)

end

end A314212.P687222271825485025

/-! ## A314212.P15837416362038593543

`or(A001222(A202062(n)), A301697(n))`
-/

namespace A314212.P15837416362038593543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A202062 n).toNat) (A301697 n)

end

end A314212.P15837416362038593543

/-! ## A314212.P1582010229072973090

`or(A001222(A271270(n)), A314143(n))`
-/

namespace A314212.P1582010229072973090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A271270 n).toNat) (A314143 n)

end

end A314212.P1582010229072973090

/-! ## A314212.P3571571964003043131

`or(A001221(A271270(n)), A314209(n))`
-/

namespace A314212.P3571571964003043131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A271270 n).toNat) (A314209 n)

end

end A314212.P3571571964003043131

/-!
# A314213: Coordination sequence Gal.6.630.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314213, there is no canonical definition to state claims against.
-/

/-! ## A314213.P6486309077935890405

`A313514(n)+A061395(A000108(n))`
-/

namespace A314213.P6486309077935890405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313514 n + A061395 (A000108 n).toNat

end

end A314213.P6486309077935890405

/-! ## A314213.P6853810001942283945

`A301710(n)+A003849(A130287(n))`
-/

namespace A314213.P6853810001942283945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A003849 (A130287 (n + 10)).toNat

end

end A314213.P6853810001942283945

/-! ## A314213.P1716358968687457002

`A352823(A059110(n))+A301726(n)`
-/

namespace A314213.P1716358968687457002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352823 (A059110 n).toNat + A301726 n

end

end A314213.P1716358968687457002

/-! ## A314213.P9194888502245525403

`A323014(A321229(n))+A301678(n)`
-/

namespace A314213.P9194888502245525403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A321229 n).toNat + A301678 n

end

end A314213.P9194888502245525403

/-! ## A314213.P17130559812063675214

`A314212(n)+A054845(A080747(n+1))`
-/

namespace A314213.P17130559812063675214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314212 n + A054845 (A080747 (n + 1)).toNat

end

end A314213.P17130559812063675214

/-!
# A314214: Coordination sequence Gal.6.629.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314214, there is no canonical definition to state claims against.
-/

/-! ## A314214.P10319964682521033152

`A313694(n)+A000120(A014335(n))`
-/

namespace A314214.P10319964682521033152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n + A000120 (A014335 n).toNat

end

end A314214.P10319964682521033152

/-! ## A314214.P13074809597287496079

`A314210(n)+A033665(A004148(n))`
-/

namespace A314214.P13074809597287496079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314210 n + A033665 (A004148 n).toNat

end

end A314214.P13074809597287496079

/-! ## A314214.P9490027665893292880

`A008458(n)-A001221(A149957(n))`
-/

namespace A314214.P9490027665893292880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A149957 n).toNat

end

end A314214.P9490027665893292880

/-! ## A314214.P11161556034402987649

`A008458(n)-A303536(A246657(n))`
-/

namespace A314214.P11161556034402987649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A303536 (A246657 n).toNat

end

end A314214.P11161556034402987649

/-! ## A314214.P15479235428074383532

`A169864(3*n+1)-A285565(A384071(n))`
-/

namespace A314214.P15479235428074383532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169864 (3 * n + 1) - A285565 (A384071 n).toNat

end

end A314214.P15479235428074383532

/-!
# A314215: Coordination sequence Gal.6.656.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314215, there is no canonical definition to state claims against.
-/

/-! ## A314215.P12748954119356854852

`A229850(n+2)+A219529(n)`
-/

namespace A314215.P12748954119356854852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229850 (n + 2) + A219529 n

end

end A314215.P12748954119356854852

/-! ## A314215.P22411757310922662

`A301708(n)-A260118(A218610(n+3))`
-/

namespace A314215.P22411757310922662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A260118 (A218610 (n + 3)).toNat

end

end A314215.P22411757310922662

/-! ## A314215.P14551801950931530822

`A313867(n)+A001222(A051296(n))`
-/

namespace A314215.P14551801950931530822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313867 n + A001222 (A051296 n).toNat

end

end A314215.P14551801950931530822

/-! ## A314215.P2127797510681864083

`or(A001826(A001835(n)), A310525(n))`
-/

namespace A314215.P2127797510681864083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001826 (A001835 n).toNat) (A310525 n)

end

end A314215.P2127797510681864083

/-! ## A314215.P14502460527244926940

`or(A178695(A178742(n)), A313922(n))`
-/

namespace A314215.P14502460527244926940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178695 (A178742 n).toNat) (A313922 n)

end

end A314215.P14502460527244926940

/-!
# A314216: Coordination sequence Gal.6.624.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314216, the canonical program `A314216.P14114423026474714885` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314216 has offset 0).

The definition of A314216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314216.P9064282058869603190

`ogf((1+3x+3x^2+3x^3+2x^4+4x^5+x^6+4x^7+2x^8+3x^9+3x^10+3x^11+x^12)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+2x^10-2x^11+x^12))`
-/

namespace A314216.P9064282058869603190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 3, 2, 4, 1, 4, 2, 3, 3, 3, 1] [1, -2, 2, -2, 2, -2, 2, -2, 2, -2, 2, -2, 1] n

end

end A314216.P9064282058869603190

namespace A314216

/-- `ogf((1+3x+3x^2+3x^3+2x^4+4x^5+x^6+4x^7+2x^8+3x^9+3x^10+3x^11+x^12)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+2x^10-2x^11+x^12))` -/
def P9064282058869603190.Spec : Prop :=
  ∀ n, P9064282058869603190.a n = A314216 n

end A314216

/-! ## A314216.P14114423026474714885

`round(A313872(n)+n/3)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314216

/-- `round(A313872(n)+n/3)` -/
def P14114423026474714885.Spec : Prop :=
  ∀ n, P14114423026474714885.a n = A314216 n

theorem P14114423026474714885.correct : P14114423026474714885.Spec := by
  intro n
  simp only [A314216]

end A314216

/-! ## A314216.P3316040838552532402

`A313744(n)-∑[(n-∑[n])%2]`
-/

namespace A314216.P3316040838552532402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313744 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314216.P3316040838552532402

namespace A314216

/-- `A313744(n)-∑[(n-∑[n])%2]` -/
def P3316040838552532402.Spec : Prop :=
  ∀ n, P3316040838552532402.a n = A314216 n

end A314216

/-! ## A314216.P4222508197189477661

`abs(A008592(n)-A314712(n))`
-/

namespace A314216.P4222508197189477661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314712 n|

end

end A314216.P4222508197189477661

namespace A314216

/-- `abs(A008592(n)-A314712(n))` -/
def P4222508197189477661.Spec : Prop :=
  ∀ n, P4222508197189477661.a n = A314216 n

end A314216

/-! ## A314216.P2933998835439241342

`A313744(n)+∑[A021913(n)]`
-/

namespace A314216.P2933998835439241342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313744 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314216.P2933998835439241342

namespace A314216

/-- `A313744(n)+∑[A021913(n)]` -/
def P2933998835439241342.Spec : Prop :=
  ∀ n, P2933998835439241342.a n = A314216 n

end A314216

/-! ## A314216.P11741142643031907287

`A313872(n)+∑[A022003(n)]`
-/

namespace A314216.P11741142643031907287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314216.P11741142643031907287

namespace A314216

/-- `A313872(n)+∑[A022003(n)]` -/
def P11741142643031907287.Spec : Prop :=
  ∀ n, P11741142643031907287.a n = A314216 n

end A314216

/-! ## A314216.P7068833968541451337

`A313744(n)+Δ[A011848(n)]`
-/

namespace A314216.P7068833968541451337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313744 n + (f1 (n + 1) - f1 n)

end

end A314216.P7068833968541451337

namespace A314216

/-- `A313744(n)+Δ[A011848(n)]` -/
def P7068833968541451337.Spec : Prop :=
  ∀ n, P7068833968541451337.a n = A314216 n

end A314216

/-! ## A314216.P15408471176959257446

`A314144(n)+Δ[A011865(n)]`
-/

namespace A314216.P15408471176959257446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n + (f1 (n + 1) - f1 n)

end

end A314216.P15408471176959257446

namespace A314216

/-- `A314144(n)+Δ[A011865(n)]` -/
def P15408471176959257446.Spec : Prop :=
  ∀ n, P15408471176959257446.a n = A314216 n

end A314216

/-! ## A314216.P17689974259212300227

`A311801(n)+record[A283971(n)]`
-/

namespace A314216.P17689974259212300227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314216.P17689974259212300227

namespace A314216

/-- `A311801(n)+record[A283971(n)]` -/
def P17689974259212300227.Spec : Prop :=
  ∀ n, P17689974259212300227.a n = A314216 n

end A314216

/-! ## A314216.P14898450923942497489

`A311801(n)+A042965(n+1)`
-/

namespace A314216.P14898450923942497489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + A042965 (n + 1)

end

end A314216.P14898450923942497489

namespace A314216

/-- `A311801(n)+A042965(n+1)` -/
def P14898450923942497489.Spec : Prop :=
  ∀ n, P14898450923942497489.a n = A314216 n

end A314216

/-! ## A314216.P9306410055161776604

`A311801(n)+A004396(2*n)`
-/

namespace A314216.P9306410055161776604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + A004396 (2 * n)

end

end A314216.P9306410055161776604

namespace A314216

/-- `A311801(n)+A004396(2*n)` -/
def P9306410055161776604.Spec : Prop :=
  ∀ n, P9306410055161776604.a n = A314216 n

end A314216

/-! ## A314216.P7571245910894767232

`2*A008706(n)-A314712(n)`
-/

namespace A314216.P7571245910894767232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314712 n

end

end A314216.P7571245910894767232

namespace A314216

/-- `2*A008706(n)-A314712(n)` -/
def P7571245910894767232.Spec : Prop :=
  ∀ n, P7571245910894767232.a n = A314216 n

end A314216

/-! ## A314216.P6176064465226137918

`A313872(n)+n-A004396(n)`
-/

namespace A314216.P6176064465226137918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n + ((n : ℤ) - A004396 n)

end

end A314216.P6176064465226137918

namespace A314216

/-- `A313872(n)+n-A004396(n)` -/
def P6176064465226137918.Spec : Prop :=
  ∀ n, P6176064465226137918.a n = A314216 n

end A314216

/-! ## A314216.P9908877839395644813

`A313744(n)+n-A004525(n)`
-/

namespace A314216.P9908877839395644813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313744 n + ((n : ℤ) - A004525 n)

end

end A314216.P9908877839395644813

namespace A314216

/-- `A313744(n)+n-A004525(n)` -/
def P9908877839395644813.Spec : Prop :=
  ∀ n, P9908877839395644813.a n = A314216 n

end A314216

/-! ## A314216.P12883360267916833830

`A310511(n)+A004396(A004525(n))`
-/

namespace A314216.P12883360267916833830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n + A004396 (A004525 n).toNat

end

end A314216.P12883360267916833830

namespace A314216

/-- `A310511(n)+A004396(A004525(n))` -/
def P12883360267916833830.Spec : Prop :=
  ∀ n, P12883360267916833830.a n = A314216 n

end A314216

/-! ## A314216.P738553252223751565

`A313693(n)+n-A004525(A004396(n))`
-/

namespace A314216.P738553252223751565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A314216.P738553252223751565

namespace A314216

/-- `A313693(n)+n-A004525(A004396(n))` -/
def P738553252223751565.Spec : Prop :=
  ∀ n, P738553252223751565.a n = A314216 n

end A314216

/-! ## A314216.P7446777053253862020

`A313884(n)+A004396(n-A004525(n))`
-/

namespace A314216.P7446777053253862020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313884 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A314216.P7446777053253862020

namespace A314216

/-- `A313884(n)+A004396(n-A004525(n))` -/
def P7446777053253862020.Spec : Prop :=
  ∀ n, P7446777053253862020.a n = A314216 n

end A314216

/-! ## A314216.P16245590894903852408

`A008574(n)+A311801(n)-A008576(n)`
-/

namespace A314216.P16245590894903852408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A311801 n - A008576 n)

end

end A314216.P16245590894903852408

namespace A314216

/-- `A008574(n)+A311801(n)-A008576(n)` -/
def P16245590894903852408.Spec : Prop :=
  ∀ n, P16245590894903852408.a n = A314216 n

end A314216

/-! ## A314216.P14338875192928987158

`A008486(n)+A313872(n)-A008576(n)`
-/

namespace A314216.P14338875192928987158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313872 n - A008576 n)

end

end A314216.P14338875192928987158

namespace A314216

/-- `A008486(n)+A313872(n)-A008576(n)` -/
def P14338875192928987158.Spec : Prop :=
  ∀ n, P14338875192928987158.a n = A314216 n

end A314216

/-!
# A314217: Coordination sequence Gal.6.645.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314217, there is no canonical definition to state claims against.
-/

/-! ## A314217.P18294768848772117019

`A313924(n)+A124762(A313934(n+3))`
-/

namespace A314217.P18294768848772117019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n + A124762 (A313934 (n + 3)).toNat

end

end A314217.P18294768848772117019

/-! ## A314217.P6827469640178469932

`A314220(n)-A307990(A070871(2^n))`
-/

namespace A314217.P6827469640178469932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n - A307990 (A070871 (2 ^ n)).toNat

end

end A314217.P6827469640178469932

/-! ## A314217.P1415670546640763793

`A351870(A313045(n))+n`
-/

namespace A314217.P1415670546640763793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A313045 n).toNat + (n : ℤ)

end

end A314217.P1415670546640763793

/-! ## A314217.P115526108243305316

`A313045(n)+A122288(∑[n])`
-/

namespace A314217.P115526108243305316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 n + A122288 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A314217.P115526108243305316

/-! ## A314217.P5266458951076829

`A352241(A016993(n))`
-/

namespace A314217.P5266458951076829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352241 (A016993 n).toNat

end

end A314217.P5266458951076829

/-!
# A314218: Coordination sequence Gal.5.304.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314218, the canonical program `A314218.P5748656243468499932` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314218 has offset 0).

The definition of A314218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314218.P5748656243468499932

`A219529(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A314218

/-- `A219529(n)+Δ[A011862(n)]` -/
def P5748656243468499932.Spec : Prop :=
  ∀ n, P5748656243468499932.a n = A314218 n

theorem P5748656243468499932.correct : P5748656243468499932.Spec := by
  intro n
  simp only [A314218]

end A314218

/-! ## A314218.P4914163706097889178

`A311816(n)+A042965(n+1)`
-/

namespace A314218.P4914163706097889178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A042965 (n + 1)

end

end A314218.P4914163706097889178

namespace A314218

/-- `A311816(n)+A042965(n+1)` -/
def P4914163706097889178.Spec : Prop :=
  ∀ n, P4914163706097889178.a n = A314218 n

end A314218

/-! ## A314218.P243403794130206486

`A312901(n)+A265187(n+1)`
-/

namespace A314218.P243403794130206486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n + A265187 (n + 1)

end

end A314218.P243403794130206486

namespace A314218

/-- `A312901(n)+A265187(n+1)` -/
def P243403794130206486.Spec : Prop :=
  ∀ n, P243403794130206486.a n = A314218 n

end A314218

/-! ## A314218.P1387951174704373350

`A311816(n)+A004396(2*n)`
-/

namespace A314218.P1387951174704373350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A004396 (2 * n)

end

end A314218.P1387951174704373350

namespace A314218

/-- `A311816(n)+A004396(2*n)` -/
def P1387951174704373350.Spec : Prop :=
  ∀ n, P1387951174704373350.a n = A314218 n

end A314218

/-! ## A314218.P1892187949553324263

`(A310502(n)+A008458(n))/2`
-/

namespace A314218.P1892187949553324263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310502 n + A008458 n : ℚ) / 2

end

end A314218.P1892187949553324263

namespace A314218

/-- `(A310502(n)+A008458(n))/2` -/
def P1892187949553324263.Spec : Prop :=
  ∀ n, P1892187949553324263.a n = (A314218 n : ℚ)

end A314218

/-! ## A314218.P1900352379422347510

`A008576(2*n)+Δ[A011862(n)]`
-/

namespace A314218.P1900352379422347510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) + (f1 (n + 1) - f1 n)

end

end A314218.P1900352379422347510

namespace A314218

/-- `A008576(2*n)+Δ[A011862(n)]` -/
def P1900352379422347510.Spec : Prop :=
  ∀ n, P1900352379422347510.a n = A314218 n

end A314218

/-! ## A314218.P11113743978656162853

`A008458(n)-A004396(A004396(n))`
-/

namespace A314218.P11113743978656162853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 (A004396 n).toNat

end

end A314218.P11113743978656162853

namespace A314218

/-- `A008458(n)-A004396(A004396(n))` -/
def P11113743978656162853.Spec : Prop :=
  ∀ n, P11113743978656162853.a n = A314218 n

end A314218

/-! ## A314218.P4395694133977927607

`A298024(n)+A004396(2*A004396(n))`
-/

namespace A314218.P4395694133977927607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A004396 (2 * A004396 n).toNat

end

end A314218.P4395694133977927607

namespace A314218

/-- `A298024(n)+A004396(2*A004396(n))` -/
def P4395694133977927607.Spec : Prop :=
  ∀ n, P4395694133977927607.a n = A314218 n

end A314218

/-! ## A314218.P1040144487860446651

`A313100(n)+A004396(A004396(2*n))`
-/

namespace A314218.P1040144487860446651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004396 (A004396 (2 * n)).toNat

end

end A314218.P1040144487860446651

namespace A314218

/-- `A313100(n)+A004396(A004396(2*n))` -/
def P1040144487860446651.Spec : Prop :=
  ∀ n, P1040144487860446651.a n = A314218 n

end A314218

/-! ## A314218.P14404030421005622964

`A008486(2*n)-A004396(A004396(n))`
-/

namespace A314218.P14404030421005622964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004396 (A004396 n).toNat

end

end A314218.P14404030421005622964

namespace A314218

/-- `A008486(2*n)-A004396(A004396(n))` -/
def P14404030421005622964.Spec : Prop :=
  ∀ n, P14404030421005622964.a n = A314218 n

end A314218

/-! ## A314218.P10132395059248535688

`A298026(2*n)-A004396(A004396(n))`
-/

namespace A314218.P10132395059248535688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (2 * n) - A004396 (A004396 n).toNat

end

end A314218.P10132395059248535688

namespace A314218

/-- `A298026(2*n)-A004396(A004396(n))` -/
def P10132395059248535688.Spec : Prop :=
  ∀ n, P10132395059248535688.a n = A314218 n

end A314218

/-! ## A314218.P816663099287285317

`A008706(n)+n-A004396(A004396(n))`
-/

namespace A314218.P816663099287285317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((n : ℤ) - A004396 (A004396 n).toNat)

end

end A314218.P816663099287285317

namespace A314218

/-- `A008706(n)+n-A004396(A004396(n))` -/
def P816663099287285317.Spec : Prop :=
  ∀ n, P816663099287285317.a n = A314218 n

end A314218

/-! ## A314218.P17949180853502412077

`A008574(n)+A311816(n)-A008576(n)`
-/

namespace A314218.P17949180853502412077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A311816 n - A008576 n)

end

end A314218.P17949180853502412077

namespace A314218

/-- `A008574(n)+A311816(n)-A008576(n)` -/
def P17949180853502412077.Spec : Prop :=
  ∀ n, P17949180853502412077.a n = A314218 n

end A314218

/-! ## A314218.P17420402397813976827

`A008458(n)+A008574(n)-A314710(n)`
-/

namespace A314218.P17420402397813976827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314710 n)

end

end A314218.P17420402397813976827

namespace A314218

/-- `A008458(n)+A008574(n)-A314710(n)` -/
def P17420402397813976827.Spec : Prop :=
  ∀ n, P17420402397813976827.a n = A314218 n

end A314218

/-! ## A314218.P18134853749181372132

`(A298784(A047386(n+1))+A298784(n))/2`
-/

namespace A314218.P18134853749181372132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298784 (A047386 (n + 1)).toNat + A298784 n : ℚ) / 2

end

end A314218.P18134853749181372132

namespace A314218

/-- `(A298784(A047386(n+1))+A298784(n))/2` -/
def P18134853749181372132.Spec : Prop :=
  ∀ n, P18134853749181372132.a n = (A314218 n : ℚ)

end A314218

/-! ## A314218.P13071462308288102504

`A006368(A008574(n))-A004396(A004396(n))`
-/

namespace A314218.P13071462308288102504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A008574 n).toNat - A004396 (A004396 n).toNat

end

end A314218.P13071462308288102504

namespace A314218

/-- `A006368(A008574(n))-A004396(A004396(n))` -/
def P13071462308288102504.Spec : Prop :=
  ∀ n, P13071462308288102504.a n = A314218 n

end A314218

/-! ## A314218.P2072515288112477262

`A004396(n)+A219529(n)-A004396(A004396(n))`
-/

namespace A314218.P2072515288112477262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A219529 n - A004396 (A004396 n).toNat)

end

end A314218.P2072515288112477262

namespace A314218

/-- `A004396(n)+A219529(n)-A004396(A004396(n))` -/
def P2072515288112477262.Spec : Prop :=
  ∀ n, P2072515288112477262.a n = A314218 n

end A314218

/-! ## A314218.P3205908927529353856

`A151988(A008706(n))-A004396(A004396(n))`
-/

namespace A314218.P3205908927529353856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008706 n).toNat - A004396 (A004396 n).toNat

end

end A314218.P3205908927529353856

namespace A314218

/-- `A151988(A008706(n))-A004396(A004396(n))` -/
def P3205908927529353856.Spec : Prop :=
  ∀ n, P3205908927529353856.a n = A314218 n

end A314218

/-! ## A314218.P918237340970079797

`A004396(A313894(n))+2*n`
-/

namespace A314218.P918237340970079797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313894 n).toNat + (2 * n : ℤ)

end

end A314218.P918237340970079797

namespace A314218

/-- `A004396(A313894(n))+2*n` -/
def P918237340970079797.Spec : Prop :=
  ∀ n, P918237340970079797.a n = A314218 n

end A314218

/-! ## A314218.P12671750196201629506

`A004396(A313962(n))+2*n`
-/

namespace A314218.P12671750196201629506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313962 n).toNat + (2 * n : ℤ)

end

end A314218.P12671750196201629506

namespace A314218

/-- `A004396(A313962(n))+2*n` -/
def P12671750196201629506.Spec : Prop :=
  ∀ n, P12671750196201629506.a n = A314218 n

end A314218

/-!
# A314219: Coordination sequence Gal.5.314.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314219, the canonical program `A314219.P2464898984584468030` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314219 has offset 0).

The definition of A314219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314219.P2464898984584468030

`ogf((1+3x+3x^2+4x^3+5x^4+7x^5+5x^6+4x^7+5x^8+7x^9+5x^10+4x^11+3x^12+3x^13+x^14)/(1-2x+2x^2-x^3-x^11+2x^12-2x^13+x^14))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A314219

/-- `ogf((1+3x+3x^2+4x^3+5x^4+7x^5+5x^6+4x^7+5x^8+7x^9+5x^10+4x^11+3x^12+3x^13+x^14)/(1-2x+2x^2-x^3-x^11+2x^12-2x^13+x^14))` -/
def P2464898984584468030.Spec : Prop :=
  ∀ n, P2464898984584468030.a n = A314219 n

theorem P2464898984584468030.correct : P2464898984584468030.Spec := by
  intro n
  simp only [A314219]

end A314219

/-! ## A314219.P7655035830772242540

`A141515(n+1)-A301636(A051800(n+1))`
-/

namespace A314219.P7655035830772242540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1) - A301636 (A051800 (n + 1)).toNat

end

end A314219.P7655035830772242540

namespace A314219

/-- `A141515(n+1)-A301636(A051800(n+1))` -/
def P7655035830772242540.Spec : Prop :=
  ∀ n, P7655035830772242540.a n = A314219 n

end A314219

/-! ## A314219.P3093442045737346430

`A314220(n)-A285006(A104722(n))`
-/

namespace A314219.P3093442045737346430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n - A285006 (A104722 n).toNat

end

end A314219.P3093442045737346430

namespace A314219

/-- `A314220(n)-A285006(A104722(n))` -/
def P3093442045737346430.Spec : Prop :=
  ∀ n, P3093442045737346430.a n = A314219 n

end A314219

/-!
# A314220: Coordination sequence Gal.5.306.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314220, the canonical program `A314220.P5659571598859034226` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314220 has offset 0).

The definition of A314220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314220.P8722788859109001408

`ogf((1+3x+3x^2+3x^3+2x^4+4x^5+2x^6+3x^7+3x^8+3x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))`
-/

namespace A314220.P8722788859109001408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 3, 2, 4, 2, 3, 3, 3, 1] [1, -2, 2, -2, 2, -2, 2, -2, 2, -2, 1] n

end

end A314220.P8722788859109001408

namespace A314220

/-- `ogf((1+3x+3x^2+3x^3+2x^4+4x^5+2x^6+3x^7+3x^8+3x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))` -/
def P8722788859109001408.Spec : Prop :=
  ∀ n, P8722788859109001408.a n = A314220 n

end A314220

/-! ## A314220.P5659571598859034226

`A313053(n)+n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314220

/-- `A313053(n)+n` -/
def P5659571598859034226.Spec : Prop :=
  ∀ n, P5659571598859034226.a n = A314220 n

theorem P5659571598859034226.correct : P5659571598859034226.Spec := by
  intro n
  simp only [A314220]

end A314220

/-! ## A314220.P1842931256906738784

`A313025(n)+A151988(n)`
-/

namespace A314220.P1842931256906738784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313025 n + A151988 n

end

end A314220.P1842931256906738784

namespace A314220

/-- `A313025(n)+A151988(n)` -/
def P1842931256906738784.Spec : Prop :=
  ∀ n, P1842931256906738784.a n = A314220 n

end A314220

/-! ## A314220.P15312321181365155063

`abs(A008592(n)-A314708(n))`
-/

namespace A314220.P15312321181365155063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314708 n|

end

end A314220.P15312321181365155063

namespace A314220

/-- `abs(A008592(n)-A314708(n))` -/
def P15312321181365155063.Spec : Prop :=
  ∀ n, P15312321181365155063.a n = A314220 n

end A314220

/-! ## A314220.P14901819603599218214

`abs(A008593(n)-A315489(n))`
-/

namespace A314220.P14901819603599218214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315489 n|

end

end A314220.P14901819603599218214

namespace A314220

/-- `abs(A008593(n)-A315489(n))` -/
def P14901819603599218214.Spec : Prop :=
  ∀ n, P14901819603599218214.a n = A314220 n

end A314220

/-! ## A314220.P588078605378552601

`A312903(n)+A047263(n+1)`
-/

namespace A314220.P588078605378552601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + A047263 (n + 1)

end

end A314220.P588078605378552601

namespace A314220

/-- `A312903(n)+A047263(n+1)` -/
def P588078605378552601.Spec : Prop :=
  ∀ n, P588078605378552601.a n = A314220 n

end A314220

/-! ## A314220.P14032938208844198960

`(A310504(n)+A008458(n))/2`
-/

namespace A314220.P14032938208844198960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310504 n + A008458 n : ℚ) / 2

end

end A314220.P14032938208844198960

namespace A314220

/-- `(A310504(n)+A008458(n))/2` -/
def P14032938208844198960.Spec : Prop :=
  ∀ n, P14032938208844198960.a n = (A314220 n : ℚ)

end A314220

/-! ## A314220.P8887345944972006254

`2*A008706(n)-A314708(n)`
-/

namespace A314220.P8887345944972006254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314708 n

end

end A314220.P8887345944972006254

namespace A314220

/-- `2*A008706(n)-A314708(n)` -/
def P8887345944972006254.Spec : Prop :=
  ∀ n, P8887345944972006254.a n = A314220 n

end A314220

/-! ## A314220.P5950684715587132355

`A313682(n)+n-A330025(n)`
-/

namespace A314220.P5950684715587132355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n + ((n : ℤ) - A330025 n)

end

end A314220.P5950684715587132355

namespace A314220

/-- `A313682(n)+n-A330025(n)` -/
def P5950684715587132355.Spec : Prop :=
  ∀ n, P5950684715587132355.a n = A314220 n

end A314220

/-! ## A314220.P6739472082630697082

`A005843(n)-(n-A313053(n))`
-/

namespace A314220.P6739472082630697082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313053 n)

end

end A314220.P6739472082630697082

namespace A314220

/-- `A005843(n)-(n-A313053(n))` -/
def P6739472082630697082.Spec : Prop :=
  ∀ n, P6739472082630697082.a n = A314220 n

theorem P6739472082630697082.correct : P6739472082630697082.Spec := by
  intro n
  simp only [A314220, Nat.add_sub_cancel, A314220.P6739472082630697082.a, A314220.P5659571598859034226.a, A005843, A005843.P3167286115683555970.a, A313053, A313053.P8254110359425895258.a, A002266, A002266.P12055520221930490546.a, A312903, A312903.P5186887365123370171.a, A311384, A311384.P2354907441128154650.a, A330025, A330025.P8729701065839544525.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314220

/-! ## A314220.P14701561681302910192

`A312903(n)+A004525(A151988(2*n))`
-/

namespace A314220.P14701561681302910192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + A004525 (A151988 (2 * n)).toNat

end

end A314220.P14701561681302910192

namespace A314220

/-- `A312903(n)+A004525(A151988(2*n))` -/
def P14701561681302910192.Spec : Prop :=
  ∀ n, P14701561681302910192.a n = A314220 n

end A314220

/-! ## A314220.P15084027855252208774

`A330025(A330025(n)+n)+A310532(n)`
-/

namespace A314220.P15084027855252208774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A310532 n

end

end A314220.P15084027855252208774

namespace A314220

/-- `A330025(A330025(n)+n)+A310532(n)` -/
def P15084027855252208774.Spec : Prop :=
  ∀ n, P15084027855252208774.a n = A314220 n

end A314220

/-! ## A314220.P7071809092930070171

`A008458(n)+A008574(n)-A314708(n)`
-/

namespace A314220.P7071809092930070171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314708 n)

end

end A314220.P7071809092930070171

namespace A314220

/-- `A008458(n)+A008574(n)-A314708(n)` -/
def P7071809092930070171.Spec : Prop :=
  ∀ n, P7071809092930070171.a n = A314220 n

end A314220

/-! ## A314220.P1366066358209785478

`A250120(n)+A310398(n)-A008574(n)`
-/

namespace A314220.P1366066358209785478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A310398 n - A008574 n)

end

end A314220.P1366066358209785478

namespace A314220

/-- `A250120(n)+A310398(n)-A008574(n)` -/
def P1366066358209785478.Spec : Prop :=
  ∀ n, P1366066358209785478.a n = A314220 n

end A314220

/-! ## A314220.P13241513027794461171

`A008458(n)+A250120(n)-A315319(n)`
-/

namespace A314220.P13241513027794461171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315319 n)

end

end A314220.P13241513027794461171

namespace A314220

/-- `A008458(n)+A250120(n)-A315319(n)` -/
def P13241513027794461171.Spec : Prop :=
  ∀ n, P13241513027794461171.a n = A314220 n

end A314220

/-! ## A314220.P377176755855487010

`A005843(n)+A005843(A008574(n))-A314708(n)`
-/

namespace A314220.P377176755855487010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314708 n)

end

end A314220.P377176755855487010

namespace A314220

/-- `A005843(n)+A005843(A008574(n))-A314708(n)` -/
def P377176755855487010.Spec : Prop :=
  ∀ n, P377176755855487010.a n = A314220 n

end A314220

/-! ## A314220.P15683218450327723519

`A047263(n+1)+A008706(n)-A004525(A047263(n+1))`
-/

namespace A314220.P15683218450327723519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A008706 n - A004525 (A047263 (n + 1)).toNat)

end

end A314220.P15683218450327723519

namespace A314220

/-- `A047263(n+1)+A008706(n)-A004525(A047263(n+1))` -/
def P15683218450327723519.Spec : Prop :=
  ∀ n, P15683218450327723519.a n = A314220 n

end A314220

/-! ## A314220.P15625332787296191078

`A315742(n)-A330025(n)`
-/

namespace A314220.P15625332787296191078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - A330025 n

end

end A314220.P15625332787296191078

namespace A314220

/-- `A315742(n)-A330025(n)` -/
def P15625332787296191078.Spec : Prop :=
  ∀ n, P15625332787296191078.a n = A314220 n

end A314220

/-! ## A314220.P9496205756814348932

`A005843(A008574(n)+n)-A314708(n)`
-/

namespace A314220.P9496205756814348932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314708 n

end

end A314220.P9496205756814348932

namespace A314220

/-- `A005843(A008574(n)+n)-A314708(n)` -/
def P9496205756814348932.Spec : Prop :=
  ∀ n, P9496205756814348932.a n = A314220 n

end A314220

/-! ## A314220.P7501332387844987966

`A004396(A313898(n))+2*n`
-/

namespace A314220.P7501332387844987966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313898 n).toNat + (2 * n : ℤ)

end

end A314220.P7501332387844987966

namespace A314220

/-- `A004396(A313898(n))+2*n` -/
def P7501332387844987966.Spec : Prop :=
  ∀ n, P7501332387844987966.a n = A314220 n

end A314220

/-!
# A314221: Coordination sequence Gal.6.641.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314221, the canonical program `A314221.P2473284069897015570` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314221 has offset 0).

The definition of A314221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2018 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314221.P2269838868408020117

`abs(10*n-A314707(n))`
-/

namespace A314221.P2269838868408020117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314707 n|

end

end A314221.P2269838868408020117

namespace A314221

/-- `abs(10*n-A314707(n))` -/
def P2269838868408020117.Spec : Prop :=
  ∀ n, P2269838868408020117.a n = A314221 n

end A314221

/-! ## A314221.P2473284069897015570

`A314149(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314221

/-- `A314149(n)+Δ[A011864(n)]` -/
def P2473284069897015570.Spec : Prop :=
  ∀ n, P2473284069897015570.a n = A314221 n

theorem P2473284069897015570.correct : P2473284069897015570.Spec := by
  intro n
  simp only [A314221]

end A314221

/-! ## A314221.P18032310190386764567

`(A310505(n)+A008458(n))/2`
-/

namespace A314221.P18032310190386764567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310505 n + A008458 n : ℚ) / 2

end

end A314221.P18032310190386764567

namespace A314221

/-- `(A310505(n)+A008458(n))/2` -/
def P18032310190386764567.Spec : Prop :=
  ∀ n, P18032310190386764567.a n = (A314221 n : ℚ)

end A314221

/-! ## A314221.P11188330713281727859

`2*A008706(n)-A314707(n)`
-/

namespace A314221.P11188330713281727859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314707 n

end

end A314221.P11188330713281727859

namespace A314221

/-- `2*A008706(n)-A314707(n)` -/
def P11188330713281727859.Spec : Prop :=
  ∀ n, P11188330713281727859.a n = A314221 n

end A314221

/-! ## A314221.P4887159757600490703

`A000038(n)+10*n-A314707(n)`
-/

namespace A314221.P4887159757600490703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((10 * n : ℤ) - A314707 n)

end

end A314221.P4887159757600490703

namespace A314221

/-- `A000038(n)+10*n-A314707(n)` -/
def P4887159757600490703.Spec : Prop :=
  ∀ n, P4887159757600490703.a n = A314221 n

end A314221

/-! ## A314221.P4300361819876421184

`gcd(10*n-A314707(n), A000038(2*n))`
-/

namespace A314221.P4300361819876421184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((10 * n : ℤ) - A314707 n) (A000038 (2 * n))

end

end A314221.P4300361819876421184

namespace A314221

/-- `gcd(10*n-A314707(n), A000038(2*n))` -/
def P4300361819876421184.Spec : Prop :=
  ∀ n, (P4300361819876421184.a n : ℤ) = A314221 n

end A314221

/-! ## A314221.P7748366938227261055

`A008458(n)+A008574(n)-A314707(n)`
-/

namespace A314221.P7748366938227261055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314707 n)

end

end A314221.P7748366938227261055

namespace A314221

/-- `A008458(n)+A008574(n)-A314707(n)` -/
def P7748366938227261055.Spec : Prop :=
  ∀ n, P7748366938227261055.a n = A314221 n

end A314221

/-! ## A314221.P7627502367445969333

`A005843(n)+A005843(A008574(n))-A314707(n)`
-/

namespace A314221.P7627502367445969333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314707 n)

end

end A314221.P7627502367445969333

namespace A314221

/-- `A005843(n)+A005843(A008574(n))-A314707(n)` -/
def P7627502367445969333.Spec : Prop :=
  ∀ n, P7627502367445969333.a n = A314221 n

end A314221

/-! ## A314221.P17581411819481920875

`A310505(n)+A004525(A008458(n)-A310505(n))`
-/

namespace A314221.P17581411819481920875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310505 n + A004525 (A008458 n - A310505 n).toNat

end

end A314221.P17581411819481920875

namespace A314221

/-- `A310505(n)+A004525(A008458(n)-A310505(n))` -/
def P17581411819481920875.Spec : Prop :=
  ∀ n, P17581411819481920875.a n = A314221 n

end A314221

/-! ## A314221.P524593092778980364

`A310513(n)+A004525(A008458(n)-A310513(n))`
-/

namespace A314221.P524593092778980364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310513 n + A004525 (A008458 n - A310513 n).toNat

end

end A314221.P524593092778980364

namespace A314221

/-- `A310513(n)+A004525(A008458(n)-A310513(n))` -/
def P524593092778980364.Spec : Prop :=
  ∀ n, P524593092778980364.a n = A314221 n

end A314221

/-! ## A314221.P1527783591405582177

`A008458(n)-A004525(A008458(n)-A310465(n))`
-/

namespace A314221.P1527783591405582177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A310465 n).toNat

end

end A314221.P1527783591405582177

namespace A314221

/-- `A008458(n)-A004525(A008458(n)-A310465(n))` -/
def P1527783591405582177.Spec : Prop :=
  ∀ n, P1527783591405582177.a n = A314221 n

end A314221

/-! ## A314221.P1034109667395093727

`A008458(n)-A004526(A008458(n)-A310505(n))`
-/

namespace A314221.P1034109667395093727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A310505 n).toNat

end

end A314221.P1034109667395093727

namespace A314221

/-- `A008458(n)-A004526(A008458(n)-A310505(n))` -/
def P1034109667395093727.Spec : Prop :=
  ∀ n, P1034109667395093727.a n = A314221 n

end A314221

/-! ## A314221.P9298033520064262303

`A005843(A008574(n)+n)-A314707(n)`
-/

namespace A314221.P9298033520064262303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314707 n

end

end A314221.P9298033520064262303

namespace A314221

/-- `A005843(A008574(n)+n)-A314707(n)` -/
def P9298033520064262303.Spec : Prop :=
  ∀ n, P9298033520064262303.a n = A314221 n

end A314221

/-! ## A314221.P17094697167066398337

`A004396(A313899(n))+2*n`
-/

namespace A314221.P17094697167066398337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313899 n).toNat + (2 * n : ℤ)

end

end A314221.P17094697167066398337

namespace A314221

/-- `A004396(A313899(n))+2*n` -/
def P17094697167066398337.Spec : Prop :=
  ∀ n, P17094697167066398337.a n = A314221 n

end A314221

/-! ## A314221.P14578872630656905551

`A004396(A314133(n))+2*n`
-/

namespace A314221.P14578872630656905551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314133 n).toNat + (2 * n : ℤ)

end

end A314221.P14578872630656905551

namespace A314221

/-- `A004396(A314133(n))+2*n` -/
def P14578872630656905551.Spec : Prop :=
  ∀ n, P14578872630656905551.a n = A314221 n

end A314221

/-! ## A314221.P7920075015209377785

`A004525(A310465(n)+A008458(n))`
-/

namespace A314221.P7920075015209377785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310465 n + A008458 n).toNat

end

end A314221.P7920075015209377785

namespace A314221

/-- `A004525(A310465(n)+A008458(n))` -/
def P7920075015209377785.Spec : Prop :=
  ∀ n, P7920075015209377785.a n = A314221 n

end A314221

/-! ## A314221.P14039068638647384331

`A004525(A310505(n)+A008458(n))`
-/

namespace A314221.P14039068638647384331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310505 n + A008458 n).toNat

end

end A314221.P14039068638647384331

namespace A314221

/-- `A004525(A310505(n)+A008458(n))` -/
def P14039068638647384331.Spec : Prop :=
  ∀ n, P14039068638647384331.a n = A314221 n

end A314221

/-! ## A314221.P12068143325751876508

`A001057(A008458(n)+A310505(n)-1)`
-/

namespace A314221.P12068143325751876508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008458 n + (A310505 n - 1)).toNat

end

end A314221.P12068143325751876508

namespace A314221

/-- `A001057(A008458(n)+A310505(n)-1)` -/
def P12068143325751876508.Spec : Prop :=
  ∀ n, P12068143325751876508.a n = A314221 n

end A314221

/-! ## A314221.P9851455082880146525

`A001057(A008458(n)-(1-A310505(n)))`
-/

namespace A314221.P9851455082880146525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008458 n - (1 - A310505 n)).toNat

end

end A314221.P9851455082880146525

namespace A314221

/-- `A001057(A008458(n)-(1-A310505(n)))` -/
def P9851455082880146525.Spec : Prop :=
  ∀ n, P9851455082880146525.a n = A314221 n

end A314221

/-! ## A314221.P13168618906423478222

`A004526(A310505(n)+A008458(n))`
-/

namespace A314221.P13168618906423478222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310505 n + A008458 n).toNat

end

end A314221.P13168618906423478222

namespace A314221

/-- `A004526(A310505(n)+A008458(n))` -/
def P13168618906423478222.Spec : Prop :=
  ∀ n, P13168618906423478222.a n = A314221 n

end A314221

/-!
# A314222: Coordination sequence Gal.6.643.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314222, the canonical program `A314222.P14712949776478407909` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314222 has offset 0).

The definition of A314222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314222.P3199338048846691355

`A313057(n)+n`
-/

namespace A314222.P3199338048846691355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + (n : ℤ)

end

end A314222.P3199338048846691355

namespace A314222

/-- `A313057(n)+n` -/
def P3199338048846691355.Spec : Prop :=
  ∀ n, P3199338048846691355.a n = A314222 n

end A314222

/-! ## A314222.P14712949776478407909

`A310444(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314222

/-- `A310444(n)+A004396(n)` -/
def P14712949776478407909.Spec : Prop :=
  ∀ n, P14712949776478407909.a n = A314222 n

theorem P14712949776478407909.correct : P14712949776478407909.Spec := by
  intro n
  simp only [A314222]

end A314222

/-! ## A314222.P12925928467373005684

`A313879(n)+∑[A022003(n)]`
-/

namespace A314222.P12925928467373005684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314222.P12925928467373005684

namespace A314222

/-- `A313879(n)+∑[A022003(n)]` -/
def P12925928467373005684.Spec : Prop :=
  ∀ n, P12925928467373005684.a n = A314222 n

end A314222

/-! ## A314222.P215791621718303633

`A314151(n)+Δ[A011865(n)]`
-/

namespace A314222.P215791621718303633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n + (f1 (n + 1) - f1 n)

end

end A314222.P215791621718303633

namespace A314222

/-- `A314151(n)+Δ[A011865(n)]` -/
def P215791621718303633.Spec : Prop :=
  ∀ n, P215791621718303633.a n = A314222 n

end A314222

/-! ## A314222.P4594408111747729895

`A313879(n)+A002264(n+1)`
-/

namespace A314222.P4594408111747729895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n + A002264 (n + 1)

end

end A314222.P4594408111747729895

namespace A314222

/-- `A313879(n)+A002264(n+1)` -/
def P4594408111747729895.Spec : Prop :=
  ∀ n, P4594408111747729895.a n = A314222 n

end A314222

/-! ## A314222.P4395464310445528005

`A311861(n)+A042965(n+1)`
-/

namespace A314222.P4395464310445528005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A042965 (n + 1)

end

end A314222.P4395464310445528005

namespace A314222

/-- `A311861(n)+A042965(n+1)` -/
def P4395464310445528005.Spec : Prop :=
  ∀ n, P4395464310445528005.a n = A314222 n

end A314222

/-! ## A314222.P2960357163758996566

`A311257(n)+A047273(n+1)`
-/

namespace A314222.P2960357163758996566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A047273 (n + 1)

end

end A314222.P2960357163758996566

namespace A314222

/-- `A311257(n)+A047273(n+1)` -/
def P2960357163758996566.Spec : Prop :=
  ∀ n, P2960357163758996566.a n = A314222 n

end A314222

/-! ## A314222.P13224290001460949461

`A311861(n)+A004396(2*n)`
-/

namespace A314222.P13224290001460949461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A004396 (2 * n)

end

end A314222.P13224290001460949461

namespace A314222

/-- `A311861(n)+A004396(2*n)` -/
def P13224290001460949461.Spec : Prop :=
  ∀ n, P13224290001460949461.a n = A314222 n

end A314222

/-! ## A314222.P7235872241333656065

`A313747(n)+n-A004525(n)`
-/

namespace A314222.P7235872241333656065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313747 n + ((n : ℤ) - A004525 n)

end

end A314222.P7235872241333656065

namespace A314222

/-- `A313747(n)+n-A004525(n)` -/
def P7235872241333656065.Spec : Prop :=
  ∀ n, P7235872241333656065.a n = A314222 n

end A314222

/-! ## A314222.P16409049143080198640

`A313879(n)+n-A004396(n)`
-/

namespace A314222.P16409049143080198640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n + ((n : ℤ) - A004396 n)

end

end A314222.P16409049143080198640

namespace A314222

/-- `A313879(n)+n-A004396(n)` -/
def P16409049143080198640.Spec : Prop :=
  ∀ n, P16409049143080198640.a n = A314222 n

end A314222

/-! ## A314222.P10452719734539093684

`A314066(n)+Δ[2*A011865(n)]`
-/

namespace A314222.P10452719734539093684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314066 n + (f1 (n + 1) - f1 n)

end

end A314222.P10452719734539093684

namespace A314222

/-- `A314066(n)+Δ[2*A011865(n)]` -/
def P10452719734539093684.Spec : Prop :=
  ∀ n, P10452719734539093684.a n = A314222 n

end A314222

/-! ## A314222.P3409951544300962359

`record[A283971(n)]+A313879(n)-n`
-/

namespace A314222.P3409951544300962359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A313879 n - (n : ℤ))

end

end A314222.P3409951544300962359

namespace A314222

/-- `record[A283971(n)]+A313879(n)-n` -/
def P3409951544300962359.Spec : Prop :=
  ∀ n, P3409951544300962359.a n = A314222 n

end A314222

/-! ## A314222.P14242994151018445963

`A310444(n)+A002264(2*n+1)`
-/

namespace A314222.P14242994151018445963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n + A002264 (2 * n + 1)

end

end A314222.P14242994151018445963

namespace A314222

/-- `A310444(n)+A002264(2*n+1)` -/
def P14242994151018445963.Spec : Prop :=
  ∀ n, P14242994151018445963.a n = A314222 n

theorem P14242994151018445963.correct : P14242994151018445963.Spec := by
  intro n
  simp only [A314222, Nat.add_sub_cancel, A314222.P14242994151018445963.a, A314222.P14712949776478407909.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A310444, A310444.P14454380161380560796.f1, A310444.P14454380161380560796.a, A011865, A011865.P18048699183673763300.a, A310400, A310400.P64997417812132731.f1, A310400.P64997417812132731.a, A022003, A022003.P8302093470414743033.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314222

/-! ## A314222.P6726414564241851734

`A314151(n)-A001489(Δ[A011865(n)])`
-/

namespace A314222.P6726414564241851734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A001489 (f1 (n + 1) - f1 n).toNat

end

end A314222.P6726414564241851734

namespace A314222

/-- `A314151(n)-A001489(Δ[A011865(n)])` -/
def P6726414564241851734.Spec : Prop :=
  ∀ n, P6726414564241851734.a n = A314222 n

end A314222

/-! ## A314222.P11345276773661007901

`A313698(n)+n-A004525(A004396(n))`
-/

namespace A314222.P11345276773661007901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A314222.P11345276773661007901

namespace A314222

/-- `A313698(n)+n-A004525(A004396(n))` -/
def P11345276773661007901.Spec : Prop :=
  ∀ n, P11345276773661007901.a n = A314222 n

end A314222

/-! ## A314222.P17913083037442680294

`A313707(n)+n-A004396(A004525(n))`
-/

namespace A314222.P17913083037442680294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A314222.P17913083037442680294

namespace A314222

/-- `A313707(n)+n-A004396(A004525(n))` -/
def P17913083037442680294.Spec : Prop :=
  ∀ n, P17913083037442680294.a n = A314222 n

end A314222

/-! ## A314222.P10331815576606205502

`A313891(n)+A004396(n-A004525(n))`
-/

namespace A314222.P10331815576606205502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A314222.P10331815576606205502

namespace A314222

/-- `A313891(n)+A004396(n-A004525(n))` -/
def P10331815576606205502.Spec : Prop :=
  ∀ n, P10331815576606205502.a n = A314222 n

end A314222

/-! ## A314222.P14361707279221709367

`A008574(n)+A311861(n)-A008576(n)`
-/

namespace A314222.P14361707279221709367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A311861 n - A008576 n)

end

end A314222.P14361707279221709367

namespace A314222

/-- `A008574(n)+A311861(n)-A008576(n)` -/
def P14361707279221709367.Spec : Prop :=
  ∀ n, P14361707279221709367.a n = A314222 n

end A314222

/-! ## A314222.P12986102477347074853

`A008486(n)+A313879(n)-A008576(n)`
-/

namespace A314222.P12986102477347074853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313879 n - A008576 n)

end

end A314222.P12986102477347074853

namespace A314222

/-- `A008486(n)+A313879(n)-A008576(n)` -/
def P12986102477347074853.Spec : Prop :=
  ∀ n, P12986102477347074853.a n = A314222 n

end A314222

/-! ## A314222.P5403925313683527943

`A008458(n)+A008574(n)-A314706(n)`
-/

namespace A314222.P5403925313683527943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314706 n)

end

end A314222.P5403925313683527943

namespace A314222

/-- `A008458(n)+A008574(n)-A314706(n)` -/
def P5403925313683527943.Spec : Prop :=
  ∀ n, P5403925313683527943.a n = A314222 n

end A314222

/-!
# A314223: Coordination sequence Gal.6.632.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314223, there is no canonical definition to state claims against.
-/

/-! ## A314223.P12415051815143045506

`A314125(A062399(n))+A057354(n)`
-/

namespace A314223.P12415051815143045506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314125 (A062399 n).toNat + A057354 n

end

end A314223.P12415051815143045506

/-! ## A314223.P10737856508434683461

`A008458(n)-A207328(A103435(n))`
-/

namespace A314223.P10737856508434683461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A207328 (A103435 n).toNat

end

end A314223.P10737856508434683461

/-! ## A314223.P7058339241135727035

`A008458(n)-A326702(A000045(n))`
-/

namespace A314223.P7058339241135727035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A326702 (A000045 n).toNat

end

end A314223.P7058339241135727035

/-! ## A314223.P16416250411067616216

`A004277(3*n)-A326702(A000045(n))`
-/

namespace A314223.P16416250411067616216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n) - A326702 (A000045 n).toNat

end

end A314223.P16416250411067616216

/-! ## A314223.P13543706749988878879

`A118168(∑[A328841(2*(n+2))-A112526(n+1)])`
-/

namespace A314223.P13543706749988878879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328841 (2 * (n + 2)) - A112526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A314223.P13543706749988878879

/-!
# A314224: Coordination sequence Gal.5.317.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314224, there is no canonical definition to state claims against.
-/

/-! ## A314224.P5651847488685102537

`∑[A084558(A045539(n)²)]`
-/

namespace A314224.P5651847488685102537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A045539 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314224.P5651847488685102537

/-! ## A314224.P6163718623329974294

`A311045(A087051(n))+∑[gcd(6, n%5)%5]-1`
-/

namespace A314224.P6163718623329974294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n % 5) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311045 (A087051 n).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A314224.P6163718623329974294

/-! ## A314224.P15548606787112725954

`A313894(n)+A055396(A148442(n))`
-/

namespace A314224.P15548606787112725954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A055396 (A148442 n).toNat

end

end A314224.P15548606787112725954

/-! ## A314224.P8153020494813390855

`A313003(n)+record[A001222(A314940(n))]`
-/

namespace A314224.P8153020494813390855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A314940 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313003 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314224.P8153020494813390855

/-! ## A314224.P14191556918315385038

`A314198(n)+A008683(A254260(n+1))`
-/

namespace A314224.P14191556918315385038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314198 n + A008683 (A254260 (n + 1)).toNat

end

end A314224.P14191556918315385038

/-!
# A314225: Coordination sequence Gal.5.316.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314225, the canonical program `A314225.P10774632468107869878` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314225 has offset 0).

The definition of A314225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314225.P7106901941271922607

`A314157(n)+Δ[A011864(n)]`
-/

namespace A314225.P7106901941271922607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314157 n + (f1 (n + 1) - f1 n)

end

end A314225.P7106901941271922607

namespace A314225

/-- `A314157(n)+Δ[A011864(n)]` -/
def P7106901941271922607.Spec : Prop :=
  ∀ n, P7106901941271922607.a n = A314225 n

end A314225

/-! ## A314225.P15594999273823682926

`2*A314127(n)-A314025(n)`
-/

namespace A314225.P15594999273823682926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314127 n - A314025 n

end

end A314225.P15594999273823682926

namespace A314225

/-- `2*A314127(n)-A314025(n)` -/
def P15594999273823682926.Spec : Prop :=
  ∀ n, P15594999273823682926.a n = A314225 n

end A314225

/-! ## A314225.P10892129843600491175

`2*A313745(n)-A314720(n)`
-/

namespace A314225.P10892129843600491175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313745 n - A314720 n

end

end A314225.P10892129843600491175

namespace A314225

/-- `2*A313745(n)-A314720(n)` -/
def P10892129843600491175.Spec : Prop :=
  ∀ n, P10892129843600491175.a n = A314225 n

end A314225

/-! ## A314225.P10774632468107869878

`A008458(n)+A310501(n)-A314210(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314225

/-- `A008458(n)+A310501(n)-A314210(n)` -/
def P10774632468107869878.Spec : Prop :=
  ∀ n, P10774632468107869878.a n = A314225 n

theorem P10774632468107869878.correct : P10774632468107869878.Spec := by
  intro n
  simp only [A314225]

end A314225

/-! ## A314225.P4019183191380686203

`A310378(n)+A315056(n)-A008574(n)`
-/

namespace A314225.P4019183191380686203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310378 n + (A315056 n - A008574 n)

end

end A314225.P4019183191380686203

namespace A314225

/-- `A310378(n)+A315056(n)-A008574(n)` -/
def P4019183191380686203.Spec : Prop :=
  ∀ n, P4019183191380686203.a n = A314225 n

end A314225

/-! ## A314225.P5243024406847844576

`A008458(n)+A312902(n)-A313543(n)`
-/

namespace A314225.P5243024406847844576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A312902 n - A313543 n)

end

end A314225.P5243024406847844576

namespace A314225

/-- `A008458(n)+A312902(n)-A313543(n)` -/
def P5243024406847844576.Spec : Prop :=
  ∀ n, P5243024406847844576.a n = A314225 n

end A314225

/-! ## A314225.P753031797295011334

`A310501(n)+A314720(n)%A004277(n)`
-/

namespace A314225.P753031797295011334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310501 n + Int.tmod (A314720 n) (A004277 n)

end

end A314225.P753031797295011334

namespace A314225

/-- `A310501(n)+A314720(n)%A004277(n)` -/
def P753031797295011334.Spec : Prop :=
  ∀ n, P753031797295011334.a n = A314225 n

end A314225

/-! ## A314225.P1734919986154111857

`A314025(n)+A005843(A314127(n)-A314025(n))`
-/

namespace A314225.P1734919986154111857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314025 n + A005843 (A314127 n - A314025 n).toNat

end

end A314225.P1734919986154111857

namespace A314225

/-- `A314025(n)+A005843(A314127(n)-A314025(n))` -/
def P1734919986154111857.Spec : Prop :=
  ∀ n, P1734919986154111857.a n = A314225 n

end A314225

/-! ## A314225.P8616068487503409640

`2*A313887(n)-A315056(n)`
-/

namespace A314225.P8616068487503409640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313887 n - A315056 n

end

end A314225.P8616068487503409640

namespace A314225

/-- `2*A313887(n)-A315056(n)` -/
def P8616068487503409640.Spec : Prop :=
  ∀ n, P8616068487503409640.a n = A314225 n

end A314225

/-! ## A314225.P17706404217471941041

`A315056(n)+A005843(A313887(n)-A315056(n))`
-/

namespace A314225.P17706404217471941041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315056 n + A005843 (A313887 n - A315056 n).toNat

end

end A314225.P17706404217471941041

namespace A314225

/-- `A315056(n)+A005843(A313887(n)-A315056(n))` -/
def P17706404217471941041.Spec : Prop :=
  ∀ n, P17706404217471941041.a n = A314225 n

end A314225

/-! ## A314225.P9096459003019894714

`A005843(A313745(n))-A314720(n)`
-/

namespace A314225.P9096459003019894714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313745 n).toNat - A314720 n

end

end A314225.P9096459003019894714

namespace A314225

/-- `A005843(A313745(n))-A314720(n)` -/
def P9096459003019894714.Spec : Prop :=
  ∀ n, P9096459003019894714.a n = A314225 n

end A314225

/-! ## A314225.P10002779078256946388

`A005843(A314127(n))-A314025(n)`
-/

namespace A314225.P10002779078256946388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314127 n).toNat - A314025 n

end

end A314225.P10002779078256946388

namespace A314225

/-- `A005843(A314127(n))-A314025(n)` -/
def P10002779078256946388.Spec : Prop :=
  ∀ n, P10002779078256946388.a n = A314225 n

end A314225

/-! ## A314225.P13360819430725050996

`A005843(A313887(n))-A315056(n)`
-/

namespace A314225.P13360819430725050996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313887 n).toNat - A315056 n

end

end A314225.P13360819430725050996

namespace A314225

/-- `A005843(A313887(n))-A315056(n)` -/
def P13360819430725050996.Spec : Prop :=
  ∀ n, P13360819430725050996.a n = A314225 n

end A314225

/-! ## A314225.P6595673802749572144

`A312944(n)+A134119(A315730(n))`
-/

namespace A314225.P6595673802749572144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 n + A134119 (A315730 n).toNat

end

end A314225.P6595673802749572144

namespace A314225

/-- `A312944(n)+A134119(A315730(n))` -/
def P6595673802749572144.Spec : Prop :=
  ∀ n, P6595673802749572144.a n = A314225 n

end A314225

/-!
# A314226: Coordination sequence Gal.6.653.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314226, the canonical program `A314226.P4583907249877895589` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314226 has offset 0).

The definition of A314226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314226.P4583907249877895589

`A313982(n)+A134667(A006370(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314226

/-- `A313982(n)+A134667(A006370(n))` -/
def P4583907249877895589.Spec : Prop :=
  ∀ n, P4583907249877895589.a n = A314226 n

theorem P4583907249877895589.correct : P4583907249877895589.Spec := by
  intro n
  simp only [A314226]

end A314226

/-! ## A314226.P383569766098932580

`A301710(n)+A141702(A001006(n))`
-/

namespace A314226.P383569766098932580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A141702 (A001006 n).toNat

end

end A314226.P383569766098932580

namespace A314226

/-- `A301710(n)+A141702(A001006(n))` -/
def P383569766098932580.Spec : Prop :=
  ∀ n, P383569766098932580.a n = A314226 n

end A314226

/-! ## A314226.P16337884609509703634

`A314216(n)+A265245(A139045(n+3))`
-/

namespace A314226.P16337884609509703634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n + A265245 (A139045 (n + 3)).toNat

end

end A314226.P16337884609509703634

namespace A314226

/-- `A314216(n)+A265245(A139045(n+3))` -/
def P16337884609509703634.Spec : Prop :=
  ∀ n, P16337884609509703634.a n = A314226 n

end A314226

/-! ## A314226.P14364602802032848087

`or(A092542(A045545(n)), A314156(n))`
-/

namespace A314226.P14364602802032848087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092542 (A045545 n).toNat) (A314156 n)

end

end A314226.P14364602802032848087

namespace A314226

/-- `or(A092542(A045545(n)), A314156(n))` -/
def P14364602802032848087.Spec : Prop :=
  ∀ n, P14364602802032848087.a n = A314226 n

end A314226

/-! ## A314226.P10406390672377485823

`or(A092542(A045545(n)), A314157(n))`
-/

namespace A314226.P10406390672377485823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092542 (A045545 n).toNat) (A314157 n)

end

end A314226.P10406390672377485823

namespace A314226

/-- `or(A092542(A045545(n)), A314157(n))` -/
def P10406390672377485823.Spec : Prop :=
  ∀ n, P10406390672377485823.a n = A314226 n

end A314226

/-!
# A314227: Coordination sequence Gal.4.146.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314227, the canonical program `A314227.P16301604767465595439` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314227 has offset 0).

The definition of A314227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314227.P16301604767465595439

`2*A314161(n)-A314068(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314227

/-- `2*A314161(n)-A314068(n)` -/
def P16301604767465595439.Spec : Prop :=
  ∀ n, P16301604767465595439.a n = A314227 n

theorem P16301604767465595439.correct : P16301604767465595439.Spec := by
  intro n
  simp only [A314227]

end A314227

/-! ## A314227.P4158017036074683566

`A314068(n)+A005843(A314161(n)-A314068(n))`
-/

namespace A314227.P4158017036074683566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314068 n + A005843 (A314161 n - A314068 n).toNat

end

end A314227.P4158017036074683566

namespace A314227

/-- `A314068(n)+A005843(A314161(n)-A314068(n))` -/
def P4158017036074683566.Spec : Prop :=
  ∀ n, P4158017036074683566.a n = A314227 n

end A314227

/-! ## A314227.P1281755454349162811

`A005843(A314161(n))-A314068(n)`
-/

namespace A314227.P1281755454349162811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314161 n).toNat - A314068 n

end

end A314227.P1281755454349162811

namespace A314227

/-- `A005843(A314161(n))-A314068(n)` -/
def P1281755454349162811.Spec : Prop :=
  ∀ n, P1281755454349162811.a n = A314227 n

end A314227

/-! ## A314227.P2223365132067701895

`A005843(A314161(n))-(A310409(n)+A004525(n))`
-/

namespace A314227.P2223365132067701895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314161 n).toNat - (A310409 n + A004525 n)

end

end A314227.P2223365132067701895

namespace A314227

/-- `A005843(A314161(n))-(A310409(n)+A004525(n))` -/
def P2223365132067701895.Spec : Prop :=
  ∀ n, P2223365132067701895.a n = A314227 n

end A314227

/-! ## A314227.P6645115868730546025

`A004277(A314161(n))-A004525(A312658(2*n)+n)`
-/

namespace A314227.P6645115868730546025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314161 n).toNat - A004525 (A312658 (2 * n) + (n : ℤ)).toNat

end

end A314227.P6645115868730546025

namespace A314227

/-- `A004277(A314161(n))-A004525(A312658(2*n)+n)` -/
def P6645115868730546025.Spec : Prop :=
  ∀ n, P6645115868730546025.a n = A314227 n

end A314227

/-!
# A314228: Coordination sequence Gal.6.650.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314228, the canonical program `A314228.P14559526308353507399` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314228 has offset 0).

The definition of A314228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314228.P12953726923271401820

`ogf((1+5x+11x^2+17x^3+23x^4+26x^5+26x^6+26x^7+23x^8+17x^9+11x^10+5x^11+x^12)/(1-x^5-x^7+x^12))`
-/

namespace A314228.P12953726923271401820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 11, 17, 23, 26, 26, 26, 23, 17, 11, 5, 1] [1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 1] n

end

end A314228.P12953726923271401820

namespace A314228

/-- `ogf((1+5x+11x^2+17x^3+23x^4+26x^5+26x^6+26x^7+23x^8+17x^9+11x^10+5x^11+x^12)/(1-x^5-x^7+x^12))` -/
def P12953726923271401820.Spec : Prop :=
  ∀ n, P12953726923271401820.a n = A314228 n

end A314228

/-! ## A314228.P14559526308353507399

`A314674(n)+A008458(n)%A072154(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314228

/-- `A314674(n)+A008458(n)%A072154(n)` -/
def P14559526308353507399.Spec : Prop :=
  ∀ n, P14559526308353507399.a n = A314228 n

theorem P14559526308353507399.correct : P14559526308353507399.Spec := by
  intro n
  simp only [A314228]

end A314228

/-! ## A314228.P16297699137463495264

`A314674(n)+A008588(n)%A072154(n)`
-/

namespace A314228.P16297699137463495264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n + Int.tmod (A008588 n) (A072154 n)

end

end A314228.P16297699137463495264

namespace A314228

/-- `A314674(n)+A008588(n)%A072154(n)` -/
def P16297699137463495264.Spec : Prop :=
  ∀ n, P16297699137463495264.a n = A314228 n

end A314228

/-! ## A314228.P4942755883551691879

`A313694(n)+A315490(n)%A072154(n)`
-/

namespace A314228.P4942755883551691879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n + Int.tmod (A315490 n) (A072154 n)

end

end A314228.P4942755883551691879

namespace A314228

/-- `A313694(n)+A315490(n)%A072154(n)` -/
def P4942755883551691879.Spec : Prop :=
  ∀ n, P4942755883551691879.a n = A314228 n

end A314228

/-! ## A314228.P9781443445876117732

`A008574(n)+A301718(n)-A311273(n)`
-/

namespace A314228.P9781443445876117732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A301718 n - A311273 n)

end

end A314228.P9781443445876117732

namespace A314228

/-- `A008574(n)+A301718(n)-A311273(n)` -/
def P9781443445876117732.Spec : Prop :=
  ∀ n, P9781443445876117732.a n = A314228 n

end A314228

/-! ## A314228.P9612846730820682442

`A313487(n)+A315541(n)%A072154(n)`
-/

namespace A314228.P9612846730820682442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313487 n + Int.tmod (A315541 n) (A072154 n)

end

end A314228.P9612846730820682442

namespace A314228

/-- `A313487(n)+A315541(n)%A072154(n)` -/
def P9612846730820682442.Spec : Prop :=
  ∀ n, P9612846730820682442.a n = A314228 n

end A314228

/-! ## A314228.P16302078123393762577

`2*A301718(n)-A314249(n)`
-/

namespace A314228.P16302078123393762577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301718 n - A314249 n

end

end A314228.P16302078123393762577

namespace A314228

/-- `2*A301718(n)-A314249(n)` -/
def P16302078123393762577.Spec : Prop :=
  ∀ n, P16302078123393762577.a n = A314228 n

end A314228

/-! ## A314228.P3912210504304766583

`A314249(n)-A005843(A314249(n)-A301718(n))`
-/

namespace A314228.P3912210504304766583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314249 n - A005843 (A314249 n - A301718 n).toNat

end

end A314228.P3912210504304766583

namespace A314228

/-- `A314249(n)-A005843(A314249(n)-A301718(n))` -/
def P3912210504304766583.Spec : Prop :=
  ∀ n, P3912210504304766583.a n = A314228 n

end A314228

/-! ## A314228.P17585513045739147195

`A004525(A313487(n))+2*A047486(n+1)`
-/

namespace A314228.P17585513045739147195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313487 n).toNat + 2 * A047486 (n + 1)

end

end A314228.P17585513045739147195

namespace A314228

/-- `A004525(A313487(n))+2*A047486(n+1)` -/
def P17585513045739147195.Spec : Prop :=
  ∀ n, P17585513045739147195.a n = A314228 n

end A314228

/-! ## A314228.P1266618169909107127

`A004525(A314838(n))+2*A047486(n+1)`
-/

namespace A314228.P1266618169909107127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314838 n).toNat + 2 * A047486 (n + 1)

end

end A314228.P1266618169909107127

namespace A314228

/-- `A004525(A314838(n))+2*A047486(n+1)` -/
def P1266618169909107127.Spec : Prop :=
  ∀ n, P1266618169909107127.a n = A314228 n

end A314228

/-! ## A314228.P17912336668922969090

`A004525(A315175(n))+2*A047486(n+1)`
-/

namespace A314228.P17912336668922969090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315175 n).toNat + 2 * A047486 (n + 1)

end

end A314228.P17912336668922969090

namespace A314228

/-- `A004525(A315175(n))+2*A047486(n+1)` -/
def P17912336668922969090.Spec : Prop :=
  ∀ n, P17912336668922969090.a n = A314228 n

end A314228

/-! ## A314228.P8058432566957508835

`A005843(A047486(n+1))+A004525(A313487(n))`
-/

namespace A314228.P8058432566957508835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047486 (n + 1)).toNat + A004525 (A313487 n).toNat

end

end A314228.P8058432566957508835

namespace A314228

/-- `A005843(A047486(n+1))+A004525(A313487(n))` -/
def P8058432566957508835.Spec : Prop :=
  ∀ n, P8058432566957508835.a n = A314228 n

end A314228

/-! ## A314228.P538387158371028072

`A005843(A047486(n+1))+A004525(A314838(n))`
-/

namespace A314228.P538387158371028072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047486 (n + 1)).toNat + A004525 (A314838 n).toNat

end

end A314228.P538387158371028072

namespace A314228

/-- `A005843(A047486(n+1))+A004525(A314838(n))` -/
def P538387158371028072.Spec : Prop :=
  ∀ n, P538387158371028072.a n = A314228 n

end A314228

/-! ## A314228.P10738453063286722251

`A005843(A047486(n+1))+A004525(A315175(n))`
-/

namespace A314228.P10738453063286722251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047486 (n + 1)).toNat + A004525 (A315175 n).toNat

end

end A314228.P10738453063286722251

namespace A314228

/-- `A005843(A047486(n+1))+A004525(A315175(n))` -/
def P10738453063286722251.Spec : Prop :=
  ∀ n, P10738453063286722251.a n = A314228 n

end A314228

/-! ## A314228.P16469123654616262457

`A005843(A301718(n))-A314249(n)`
-/

namespace A314228.P16469123654616262457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A301718 n).toNat - A314249 n

end

end A314228.P16469123654616262457

namespace A314228

/-- `A005843(A301718(n))-A314249(n)` -/
def P16469123654616262457.Spec : Prop :=
  ∀ n, P16469123654616262457.a n = A314228 n

end A314228

/-!
# A314229: Coordination sequence Gal.6.655.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314229, there is no canonical definition to state claims against.
-/

/-! ## A314229.P17933674564261168203

`or(A051903(A274480(n)), A219529(n))`
-/

namespace A314229.P17933674564261168203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051903 (A274480 n).toNat) (A219529 n)

end

end A314229.P17933674564261168203

/-! ## A314229.P16259013958142493461

`or(1, A055572(A310455(n)))`
-/

namespace A314229.P16259013958142493461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055572 (A310455 n).toNat)

end

end A314229.P16259013958142493461

/-! ## A314229.P12547832501963888962

`or(1, ∑[A000005(A258847(2*n+1))]+n)`
-/

namespace A314229.P12547832501963888962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A258847 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A314229.P12547832501963888962

/-! ## A314229.P6012688037622863492

`A250120(n)+A109129(A249936(n))`
-/

namespace A314229.P6012688037622863492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A109129 (A249936 n).toNat

end

end A314229.P6012688037622863492

/-! ## A314229.P2432274307976243651

`or(A176187(A000211(n)), A313975(n))`
-/

namespace A314229.P2432274307976243651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A176187 (A000211 n).toNat) (A313975 n)

end

end A314229.P2432274307976243651

/-!
# A314230: Coordination sequence Gal.5.319.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314230, the canonical program `A314230.P5872414911693199294` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314230 has offset 0).

The definition of A314230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314230.P5872414911693199294

`ceil(A313981(2*n)/2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A314230

/-- `ceil(A313981(2*n)/2)` -/
def P5872414911693199294.Spec : Prop :=
  ∀ n, P5872414911693199294.a n = A314230 n

theorem P5872414911693199294.correct : P5872414911693199294.Spec := by
  intro n
  simp only [A314230]

end A314230

/-! ## A314230.P17867206262831286567

`A313981(2*n)/A014963(A001316(n))`
-/

namespace A314230.P17867206262831286567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313981 (2 * n) : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A314230.P17867206262831286567

namespace A314230

/-- `A313981(2*n)/A014963(A001316(n))` -/
def P17867206262831286567.Spec : Prop :=
  ∀ n, P17867206262831286567.a n = (A314230 n : ℚ)

end A314230

/-! ## A314230.P343356239398293474

`record[A032742(A313981(n))]`
-/

namespace A314230.P343356239398293474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A313981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314230.P343356239398293474

namespace A314230

/-- `record[A032742(A313981(n))]` -/
def P343356239398293474.Spec : Prop :=
  ∀ n, P343356239398293474.a n = A314230 n

end A314230

/-! ## A314230.P10167988264283112207

`A004525(A313981(2*n))`
-/

namespace A314230.P10167988264283112207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313981 (2 * n)).toNat

end

end A314230.P10167988264283112207

namespace A314230

/-- `A004525(A313981(2*n))` -/
def P10167988264283112207.Spec : Prop :=
  ∀ n, P10167988264283112207.a n = A314230 n

end A314230

/-! ## A314230.P9219790041147991007

`record[A025480(A313981(n+1))]`
-/

namespace A314230.P9219790041147991007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A313981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314230.P9219790041147991007

namespace A314230

/-- `record[A025480(A313981(n+1))]` -/
def P9219790041147991007.Spec : Prop :=
  ∀ n, P9219790041147991007.a n = A314230 n

end A314230

/-! ## A314230.P17174680842679029037

`A301718(n)-∑[A102283(A011867(n))]`
-/

namespace A314230.P17174680842679029037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A011867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314230.P17174680842679029037

namespace A314230

/-- `A301718(n)-∑[A102283(A011867(n))]` -/
def P17174680842679029037.Spec : Prop :=
  ∀ n, P17174680842679029037.a n = A314230 n

end A314230

/-! ## A314230.P11175393980126615986

`A313981(A005843(n))/A014963(A001316(n)²)`
-/

namespace A314230.P11175393980126615986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313981 (A005843 n).toNat : ℚ) / (A014963 (A001316 n ^ 2).toNat : ℚ)

end

end A314230.P11175393980126615986

namespace A314230

/-- `A313981(A005843(n))/A014963(A001316(n)²)` -/
def P11175393980126615986.Spec : Prop :=
  ∀ n, P11175393980126615986.a n = (A314230 n : ℚ)

end A314230

/-!
# A314231: Coordination sequence Gal.5.305.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314231, the canonical program `A314231.P16998588149716495728` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314231 has offset 0).

The definition of A314231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314231.P12298157915912056063

`A310454(n)+A004396(n)`
-/

namespace A314231.P12298157915912056063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n + A004396 n

end

end A314231.P12298157915912056063

namespace A314231

/-- `A310454(n)+A004396(n)` -/
def P12298157915912056063.Spec : Prop :=
  ∀ n, P12298157915912056063.a n = A314231 n

end A314231

/-! ## A314231.P499505357062112944

`abs(A008592(n)-A314692(n))`
-/

namespace A314231.P499505357062112944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314692 n|

end

end A314231.P499505357062112944

namespace A314231

/-- `abs(A008592(n)-A314692(n))` -/
def P499505357062112944.Spec : Prop :=
  ∀ n, P499505357062112944.a n = A314231 n

end A314231

/-! ## A314231.P16998588149716495728

`A314141(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314231

/-- `A314141(n)+Δ[A011862(n)]` -/
def P16998588149716495728.Spec : Prop :=
  ∀ n, P16998588149716495728.a n = A314231 n

theorem P16998588149716495728.correct : P16998588149716495728.Spec := by
  intro n
  simp only [A314231]

end A314231

/-! ## A314231.P1426124807211623267

`2*A008706(n)-A314692(n)`
-/

namespace A314231.P1426124807211623267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314692 n

end

end A314231.P1426124807211623267

namespace A314231

/-- `2*A008706(n)-A314692(n)` -/
def P1426124807211623267.Spec : Prop :=
  ∀ n, P1426124807211623267.a n = A314231 n

end A314231

/-! ## A314231.P8729952123208055656

`A314039(n)+Δ[2*A011862(n)]`
-/

namespace A314231.P8729952123208055656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314039 n + (f1 (n + 1) - f1 n)

end

end A314231.P8729952123208055656

namespace A314231

/-- `A314039(n)+Δ[2*A011862(n)]` -/
def P8729952123208055656.Spec : Prop :=
  ∀ n, P8729952123208055656.a n = A314231 n

end A314231

/-! ## A314231.P7427172909940982196

`A310454(n)+A002264(2*n+1)`
-/

namespace A314231.P7427172909940982196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n + A002264 (2 * n + 1)

end

end A314231.P7427172909940982196

namespace A314231

/-- `A310454(n)+A002264(2*n+1)` -/
def P7427172909940982196.Spec : Prop :=
  ∀ n, P7427172909940982196.a n = A314231 n

end A314231

/-! ## A314231.P6564502685813013888

`A310509(n)+A004396(A004396(n))`
-/

namespace A314231.P6564502685813013888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n + A004396 (A004396 n).toNat

end

end A314231.P6564502685813013888

namespace A314231

/-- `A310509(n)+A004396(A004396(n))` -/
def P6564502685813013888.Spec : Prop :=
  ∀ n, P6564502685813013888.a n = A314231 n

end A314231

/-! ## A314231.P10870643606699612899

`A313026(n)+A004396(A004396(n)+n)`
-/

namespace A314231.P10870643606699612899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A314231.P10870643606699612899

namespace A314231

/-- `A313026(n)+A004396(A004396(n)+n)` -/
def P10870643606699612899.Spec : Prop :=
  ∀ n, P10870643606699612899.a n = A314231 n

theorem P10870643606699612899.correct : P10870643606699612899.Spec := by
  intro n
  simp only [A314231, Nat.add_sub_cancel, A314231.P10870643606699612899.a, A314231.P16998588149716495728.f1, A314231.P16998588149716495728.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A313026, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, A314141, A314141.P7118663094909511911.a, A312893, A312893.P922128372979076951.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314231

/-! ## A314231.P4112665572593913573

`A313909(n)+A004396(n-A004396(n))`
-/

namespace A314231.P4112665572593913573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313909 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314231.P4112665572593913573

namespace A314231

/-- `A313909(n)+A004396(n-A004396(n))` -/
def P4112665572593913573.Spec : Prop :=
  ∀ n, P4112665572593913573.a n = A314231 n

end A314231

/-! ## A314231.P4859679384003557267

`A008458(n)+A008574(n)-A314692(n)`
-/

namespace A314231.P4859679384003557267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314692 n)

end

end A314231.P4859679384003557267

namespace A314231

/-- `A008458(n)+A008574(n)-A314692(n)` -/
def P4859679384003557267.Spec : Prop :=
  ∀ n, P4859679384003557267.a n = A314231 n

end A314231

/-! ## A314231.P13342582382356200392

`A004396(n)+A314141(n)-A004396(A004396(n))`
-/

namespace A314231.P13342582382356200392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314141 n - A004396 (A004396 n).toNat)

end

end A314231.P13342582382356200392

namespace A314231

/-- `A004396(n)+A314141(n)-A004396(A004396(n))` -/
def P13342582382356200392.Spec : Prop :=
  ∀ n, P13342582382356200392.a n = A314231 n

end A314231

/-! ## A314231.P16096949464827498870

`A315523(n)-A134667(A004396(2*n))`
-/

namespace A314231.P16096949464827498870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A134667 (A004396 (2 * n)).toNat

end

end A314231.P16096949464827498870

namespace A314231

/-- `A315523(n)-A134667(A004396(2*n))` -/
def P16096949464827498870.Spec : Prop :=
  ∀ n, P16096949464827498870.a n = A314231 n

end A314231

/-! ## A314231.P2344500270730201127

`A004396(A310521(n))+2*n`
-/

namespace A314231.P2344500270730201127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310521 n).toNat + (2 * n : ℤ)

end

end A314231.P2344500270730201127

namespace A314231

/-- `A004396(A310521(n))+2*n` -/
def P2344500270730201127.Spec : Prop :=
  ∀ n, P2344500270730201127.a n = A314231 n

end A314231

/-! ## A314231.P11463969204835010

`A004396(A313909(n))+2*n`
-/

namespace A314231.P11463969204835010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313909 n).toNat + (2 * n : ℤ)

end

end A314231.P11463969204835010

namespace A314231

/-- `A004396(A313909(n))+2*n` -/
def P11463969204835010.Spec : Prop :=
  ∀ n, P11463969204835010.a n = A314231 n

end A314231

/-! ## A314231.P8024572363911071730

`A005843(n)+A004396(A310521(n))`
-/

namespace A314231.P8024572363911071730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A310521 n).toNat

end

end A314231.P8024572363911071730

namespace A314231

/-- `A005843(n)+A004396(A310521(n))` -/
def P8024572363911071730.Spec : Prop :=
  ∀ n, P8024572363911071730.a n = A314231 n

end A314231

/-! ## A314231.P16712820011443047804

`A004396(A310538(n))+2*n`
-/

namespace A314231.P16712820011443047804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310538 n).toNat + (2 * n : ℤ)

end

end A314231.P16712820011443047804

namespace A314231

/-- `A004396(A310538(n))+2*n` -/
def P16712820011443047804.Spec : Prop :=
  ∀ n, P16712820011443047804.a n = A314231 n

end A314231

/-! ## A314231.P6481858710589654401

`A004396(A314205(n))+2*n`
-/

namespace A314231.P6481858710589654401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314205 n).toNat + (2 * n : ℤ)

end

end A314231.P6481858710589654401

namespace A314231

/-- `A004396(A314205(n))+2*n` -/
def P6481858710589654401.Spec : Prop :=
  ∀ n, P6481858710589654401.a n = A314231 n

end A314231

/-! ## A314231.P5860165015345595519

`A005843(n)+A004396(A310538(n))`
-/

namespace A314231.P5860165015345595519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A310538 n).toNat

end

end A314231.P5860165015345595519

namespace A314231

/-- `A005843(n)+A004396(A310538(n))` -/
def P5860165015345595519.Spec : Prop :=
  ∀ n, P5860165015345595519.a n = A314231 n

end A314231

/-! ## A314231.P9817184886754904857

`A099479(A133655(n)-A004396(n))+A004396(n)`
-/

namespace A314231.P9817184886754904857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A133655 n - A004396 n).toNat + A004396 n

end

end A314231.P9817184886754904857

namespace A314231

/-- `A099479(A133655(n)-A004396(n))+A004396(n)` -/
def P9817184886754904857.Spec : Prop :=
  ∀ n, P9817184886754904857.a n = A314231 n

end A314231

/-! ## A314231.P13510434476482256962

`A004396(A312555(2*n)-n)`
-/

namespace A314231.P13510434476482256962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312555 (2 * n) - (n : ℤ)).toNat

end

end A314231.P13510434476482256962

namespace A314231

/-- `A004396(A312555(2*n)-n)` -/
def P13510434476482256962.Spec : Prop :=
  ∀ n, P13510434476482256962.a n = A314231 n

end A314231

/-!
# A314232: Coordination sequence Gal.6.669.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314232, there is no canonical definition to state claims against.
-/

/-! ## A314232.P10210988810736898160

`A314117(n)+A001222(A006229(n))`
-/

namespace A314232.P10210988810736898160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314117 n + A001222 (A006229 n).toNat

end

end A314232.P10210988810736898160

/-! ## A314232.P5509685996534924572

`A302242(A109188(n+1))+A250120(n)`
-/

namespace A314232.P5509685996534924572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A109188 (n + 1)).toNat + A250120 n

end

end A314232.P5509685996534924572

/-! ## A314232.P5131970940815278771

`∑[dr(A128610(A151549(3*n+1)))]`
-/

namespace A314232.P5131970940815278771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A128610 (A151549 (3 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314232.P5131970940815278771

/-! ## A314232.P3503757807315154206

`A313680(n)+A001222(A090755(n))`
-/

namespace A314232.P3503757807315154206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + A001222 (A090755 n).toNat

end

end A314232.P3503757807315154206

/-! ## A314232.P14831141727663835455

`A313903(n)+A001222(A181546(n))`
-/

namespace A314232.P14831141727663835455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313903 n + A001222 (A181546 n).toNat

end

end A314232.P14831141727663835455

/-!
# A314233: Coordination sequence Gal.6.208.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314233, the canonical program `A314233.P17207204264519935212` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314233 has offset 0).

The definition of A314233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314233.P17044792427403326571

`A315683(n)-A128834(n)`
-/

namespace A314233.P17044792427403326571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - A128834 n

end

end A314233.P17044792427403326571

namespace A314233

/-- `A315683(n)-A128834(n)` -/
def P17044792427403326571.Spec : Prop :=
  ∀ n, P17044792427403326571.a n = A314233 n

end A314233

/-! ## A314233.P15283763191081052118

`abs(A008592(n)-A314691(n))`
-/

namespace A314233.P15283763191081052118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314691 n|

end

end A314233.P15283763191081052118

namespace A314233

/-- `abs(A008592(n)-A314691(n))` -/
def P15283763191081052118.Spec : Prop :=
  ∀ n, P15283763191081052118.a n = A314233 n

end A314233

/-! ## A314233.P9573701972111220971

`A313717(n)+∑[A131735(n)]`
-/

namespace A314233.P9573701972111220971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314233.P9573701972111220971

namespace A314233

/-- `A313717(n)+∑[A131735(n)]` -/
def P9573701972111220971.Spec : Prop :=
  ∀ n, P9573701972111220971.a n = A314233 n

end A314233

/-! ## A314233.P12583741420772702829

`A315683(n)+A010892(n+2)`
-/

namespace A314233.P12583741420772702829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n + A010892 (n + 2)

end

end A314233.P12583741420772702829

namespace A314233

/-- `A315683(n)+A010892(n+2)` -/
def P12583741420772702829.Spec : Prop :=
  ∀ n, P12583741420772702829.a n = A314233 n

end A314233

/-! ## A314233.P1586397294558625684

`A030118(n)+A313474(n)-1`
-/

namespace A314233.P1586397294558625684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 n + (A313474 n - 1)

end

end A314233.P1586397294558625684

namespace A314233

/-- `A030118(n)+A313474(n)-1` -/
def P1586397294558625684.Spec : Prop :=
  ∀ n, P1586397294558625684.a n = A314233 n

end A314233

/-! ## A314233.P18257343197235347549

`2*A008706(n)-A314691(n)`
-/

namespace A314233.P18257343197235347549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314691 n

end

end A314233.P18257343197235347549

namespace A314233

/-- `2*A008706(n)-A314691(n)` -/
def P18257343197235347549.Spec : Prop :=
  ∀ n, P18257343197235347549.a n = A314233 n

end A314233

/-! ## A314233.P11810673776045783157

`A008458(n)+A008574(n)-A314691(n)`
-/

namespace A314233.P11810673776045783157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314691 n)

end

end A314233.P11810673776045783157

namespace A314233

/-- `A008458(n)+A008574(n)-A314691(n)` -/
def P11810673776045783157.Spec : Prop :=
  ∀ n, P11810673776045783157.a n = A314233 n

end A314233

/-! ## A314233.P17207204264519935212

`A301697(n)+A128834(n-A004525(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A314233

/-- `A301697(n)+A128834(n-A004525(n))` -/
def P17207204264519935212.Spec : Prop :=
  ∀ n, P17207204264519935212.a n = A314233 n

theorem P17207204264519935212.correct : P17207204264519935212.Spec := by
  intro n
  simp only [A314233]

end A314233

/-! ## A314233.P12617517100853954119

`A004396(n)+A314108(n)-A004525(A004396(n))`
-/

namespace A314233.P12617517100853954119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314108 n - A004525 (A004396 n).toNat)

end

end A314233.P12617517100853954119

namespace A314233

/-- `A004396(n)+A314108(n)-A004525(A004396(n))` -/
def P12617517100853954119.Spec : Prop :=
  ∀ n, P12617517100853954119.a n = A314233 n

end A314233

/-! ## A314233.P6152891971653570674

`A314691(n)+A005843(A008706(n)-A314691(n))`
-/

namespace A314233.P6152891971653570674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314691 n + A005843 (A008706 n - A314691 n).toNat

end

end A314233.P6152891971653570674

namespace A314233

/-- `A314691(n)+A005843(A008706(n)-A314691(n))` -/
def P6152891971653570674.Spec : Prop :=
  ∀ n, P6152891971653570674.a n = A314233 n

end A314233

/-! ## A314233.P1332095518320149720

`A315760(n)-A004525(A004396(n))`
-/

namespace A314233.P1332095518320149720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - A004525 (A004396 n).toNat

end

end A314233.P1332095518320149720

namespace A314233

/-- `A315760(n)-A004525(A004396(n))` -/
def P1332095518320149720.Spec : Prop :=
  ∀ n, P1332095518320149720.a n = A314233 n

end A314233

/-! ## A314233.P15964232927342708610

`A005843(A008706(n))-A314691(n)`
-/

namespace A314233.P15964232927342708610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314691 n

end

end A314233.P15964232927342708610

namespace A314233

/-- `A005843(A008706(n))-A314691(n)` -/
def P15964232927342708610.Spec : Prop :=
  ∀ n, P15964232927342708610.a n = A314233 n

end A314233

/-!
# A314234: Coordination sequence Gal.6.332.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314234, the canonical program `A314234.P3486160622524508479` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314234 has offset 0).

The definition of A314234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314234.P9704539030865221034

`ogf((1+4x+6x^2+6x^3+6x^4+5x^5+4x^6+5x^7+6x^8+6x^9+6x^10+4x^11+x^12)/(1-x-x^11+x^12))`
-/

namespace A314234.P9704539030865221034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 6, 6, 6, 5, 4, 5, 6, 6, 6, 4, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A314234.P9704539030865221034

namespace A314234

/-- `ogf((1+4x+6x^2+6x^3+6x^4+5x^5+4x^6+5x^7+6x^8+6x^9+6x^10+4x^11+x^12)/(1-x-x^11+x^12))` -/
def P9704539030865221034.Spec : Prop :=
  ∀ n, P9704539030865221034.a n = A314234 n

end A314234

/-! ## A314234.P15720356344315804325

`abs(A008592(n)-A314689(n))`
-/

namespace A314234.P15720356344315804325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314689 n|

end

end A314234.P15720356344315804325

namespace A314234

/-- `abs(A008592(n)-A314689(n))` -/
def P15720356344315804325.Spec : Prop :=
  ∀ n, P15720356344315804325.a n = A314234 n

end A314234

/-! ## A314234.P10189459027579109071

`2*A008706(n)-A314689(n)`
-/

namespace A314234.P10189459027579109071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314689 n

end

end A314234.P10189459027579109071

namespace A314234

/-- `2*A008706(n)-A314689(n)` -/
def P10189459027579109071.Spec : Prop :=
  ∀ n, P10189459027579109071.a n = A314234 n

end A314234

/-! ## A314234.P13880671011821848998

`A008458(n)+A008574(n)-A314689(n)`
-/

namespace A314234.P13880671011821848998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314689 n)

end

end A314234.P13880671011821848998

namespace A314234

/-- `A008458(n)+A008574(n)-A314689(n)` -/
def P13880671011821848998.Spec : Prop :=
  ∀ n, P13880671011821848998.a n = A314234 n

end A314234

/-! ## A314234.P8514880894923100071

`A314689(n)+A005843(A008706(n)-A314689(n))`
-/

namespace A314234.P8514880894923100071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314689 n + A005843 (A008706 n - A314689 n).toNat

end

end A314234.P8514880894923100071

namespace A314234

/-- `A314689(n)+A005843(A008706(n)-A314689(n))` -/
def P8514880894923100071.Spec : Prop :=
  ∀ n, P8514880894923100071.a n = A314234 n

end A314234

/-! ## A314234.P13852734073264869362

`(A315754(n)+A310526(n))/2`
-/

namespace A314234.P13852734073264869362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315754 n + A310526 n : ℚ) / 2

end

end A314234.P13852734073264869362

namespace A314234

/-- `(A315754(n)+A310526(n))/2` -/
def P13852734073264869362.Spec : Prop :=
  ∀ n, P13852734073264869362.a n = (A314234 n : ℚ)

end A314234

/-! ## A314234.P13106531337965212811

`A310523(n)+A004525(A314244(n)-A310523(n))`
-/

namespace A314234.P13106531337965212811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310523 n + A004525 (A314244 n - A310523 n).toNat

end

end A314234.P13106531337965212811

namespace A314234

/-- `A310523(n)+A004525(A314244(n)-A310523(n))` -/
def P13106531337965212811.Spec : Prop :=
  ∀ n, P13106531337965212811.a n = A314234 n

end A314234

/-! ## A314234.P2867018159875813245

`A313913(n)+A004525(A314244(n)-A313913(n))`
-/

namespace A314234.P2867018159875813245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313913 n + A004525 (A314244 n - A313913 n).toNat

end

end A314234.P2867018159875813245

namespace A314234

/-- `A313913(n)+A004525(A314244(n)-A313913(n))` -/
def P2867018159875813245.Spec : Prop :=
  ∀ n, P2867018159875813245.a n = A314234 n

end A314234

/-! ## A314234.P13892455764562291835

`A005843(A008706(n))-A314689(n)`
-/

namespace A314234.P13892455764562291835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314689 n

end

end A314234.P13892455764562291835

namespace A314234

/-- `A005843(A008706(n))-A314689(n)` -/
def P13892455764562291835.Spec : Prop :=
  ∀ n, P13892455764562291835.a n = A314234 n

end A314234

/-! ## A314234.P7642554865440949550

`A047263(A313089(n)+1)`
-/

namespace A314234.P7642554865440949550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A313089 n + 1).toNat

end

end A314234.P7642554865440949550

namespace A314234

/-- `A047263(A313089(n)+1)` -/
def P7642554865440949550.Spec : Prop :=
  ∀ n, P7642554865440949550.a n = A314234 n

end A314234

/-! ## A314234.P11738733421394929681

`A065502(A008458(n))-A314689(n)`
-/

namespace A314234.P11738733421394929681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A314689 n

end

end A314234.P11738733421394929681

namespace A314234

/-- `A065502(A008458(n))-A314689(n)` -/
def P11738733421394929681.Spec : Prop :=
  ∀ n, P11738733421394929681.a n = A314234 n

end A314234

/-! ## A314234.P3486160622524508479

`A004396(2*(A313869(n)-n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314234

/-- `A004396(2*(A313869(n)-n))` -/
def P3486160622524508479.Spec : Prop :=
  ∀ n, P3486160622524508479.a n = A314234 n

theorem P3486160622524508479.correct : P3486160622524508479.Spec := by
  intro n
  simp only [A314234]

end A314234

/-! ## A314234.P16095895116521476040

`A312976(2*n)-4*n`
-/

namespace A314234.P16095895116521476040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312976 (2 * n) - (4 * n : ℤ)

end

end A314234.P16095895116521476040

namespace A314234

/-- `A312976(2*n)-4*n` -/
def P16095895116521476040.Spec : Prop :=
  ∀ n, P16095895116521476040.a n = A314234 n

end A314234

/-! ## A314234.P11161103801926416140

`A004396(A313148(2*n)-A005843(n))`
-/

namespace A314234.P11161103801926416140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313148 (2 * n) - A005843 n).toNat

end

end A314234.P11161103801926416140

namespace A314234

/-- `A004396(A313148(2*n)-A005843(n))` -/
def P11161103801926416140.Spec : Prop :=
  ∀ n, P11161103801926416140.a n = A314234 n

end A314234

/-! ## A314234.P15555147450574899982

`A274616(A313148(2*n)-A005843(n))`
-/

namespace A314234.P15555147450574899982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A313148 (2 * n) - A005843 n).toNat

end

end A314234.P15555147450574899982

namespace A314234

/-- `A274616(A313148(2*n)-A005843(n))` -/
def P15555147450574899982.Spec : Prop :=
  ∀ n, P15555147450574899982.a n = A314234 n

end A314234

/-! ## A314234.P3161220325878530221

`2*A008574(2*n)-A315509(2*n)`
-/

namespace A314234.P3161220325878530221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315509 (2 * n)

end

end A314234.P3161220325878530221

namespace A314234

/-- `2*A008574(2*n)-A315509(2*n)` -/
def P3161220325878530221.Spec : Prop :=
  ∀ n, P3161220325878530221.a n = A314234 n

end A314234

/-! ## A314234.P6731673657969195854

`A004525(A313296(2*n))`
-/

namespace A314234.P6731673657969195854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313296 (2 * n)).toNat

end

end A314234.P6731673657969195854

namespace A314234

/-- `A004525(A313296(2*n))` -/
def P6731673657969195854.Spec : Prop :=
  ∀ n, P6731673657969195854.a n = A314234 n

end A314234

/-! ## A314234.P8294482737639274431

`A004525(A314244(n)+A310523(n))`
-/

namespace A314234.P8294482737639274431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314244 n + A310523 n).toNat

end

end A314234.P8294482737639274431

namespace A314234

/-- `A004525(A314244(n)+A310523(n))` -/
def P8294482737639274431.Spec : Prop :=
  ∀ n, P8294482737639274431.a n = A314234 n

end A314234

/-! ## A314234.P14558734705809897989

`A004525(A315754(n)+A310526(n))`
-/

namespace A314234.P14558734705809897989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315754 n + A310526 n).toNat

end

end A314234.P14558734705809897989

namespace A314234

/-- `A004525(A315754(n)+A310526(n))` -/
def P14558734705809897989.Spec : Prop :=
  ∀ n, P14558734705809897989.a n = A314234 n

end A314234

/-! ## A314234.P1463598100551439563

`A004525(A314244(n)+A313913(n))`
-/

namespace A314234.P1463598100551439563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314244 n + A313913 n).toNat

end

end A314234.P1463598100551439563

namespace A314234

/-- `A004525(A314244(n)+A313913(n))` -/
def P1463598100551439563.Spec : Prop :=
  ∀ n, P1463598100551439563.a n = A314234 n

end A314234

/-!
# A314235: Coordination sequence Gal.5.144.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314235, there is no canonical definition to state claims against.
-/

/-! ## A314235.P5187253496609986019

`A008458(n)-A001221(A278815(n))`
-/

namespace A314235.P5187253496609986019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A278815 n).toNat

end

end A314235.P5187253496609986019

/-! ## A314235.P6741007925954862084

`A136110(∑[n+3]-2)-∑[2*n]`
-/

namespace A314235.P6741007925954862084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136110 (∑ j ∈ Finset.range (n + 1), f1 j - 2) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A314235.P6741007925954862084

/-! ## A314235.P10073049829041741543

`A313905(n)+A001221(A064062(n))`
-/

namespace A314235.P10073049829041741543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313905 n + A001221 (A064062 n).toNat

end

end A314235.P10073049829041741543

/-! ## A314235.P8021242699945199384

`A314238(n)-A124761(A017569(n))`
-/

namespace A314235.P8021242699945199384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314238 n - A124761 (A017569 n).toNat

end

end A314235.P8021242699945199384

/-!
# A314236: Coordination sequence Gal.6.626.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314236, the canonical program `A314236.P11197453166256301907` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314236 has offset 0).

The definition of A314236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314236.P2651108059865358451

`ogf((1+2x+x^3+2x^4-x^5+2x^6+x^7+2x^9+x^10)/(1-3x+4x^2-3x^3+x^4+x^6-3x^7+4x^8-3x^9+x^10))`
-/

namespace A314236.P2651108059865358451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 1, 2, -1, 2, 1, 0, 2, 1] [1, -3, 4, -3, 1, 0, 1, -3, 4, -3, 1] n

end

end A314236.P2651108059865358451

namespace A314236

/-- `ogf((1+2x+x^3+2x^4-x^5+2x^6+x^7+2x^9+x^10)/(1-3x+4x^2-3x^3+x^4+x^6-3x^7+4x^8-3x^9+x^10))` -/
def P2651108059865358451.Spec : Prop :=
  ∀ n, P2651108059865358451.a n = A314236 n

end A314236

/-! ## A314236.P11197453166256301907

`A313088(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314236

/-- `A313088(n)+n` -/
def P11197453166256301907.Spec : Prop :=
  ∀ n, P11197453166256301907.a n = A314236 n

theorem P11197453166256301907.correct : P11197453166256301907.Spec := by
  intro n
  simp only [A314236]

end A314236

/-! ## A314236.P1949097166243718523

`A313778(n)+∑[char[or(2, n)]]`
-/

namespace A314236.P1949097166243718523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A314236.P1949097166243718523

namespace A314236

/-- `A313778(n)+∑[char[or(2, n)]]` -/
def P1949097166243718523.Spec : Prop :=
  ∀ n, P1949097166243718523.a n = A314236 n

end A314236

/-! ## A314236.P12411694239332050634

`A315687(n)-A128834(n)`
-/

namespace A314236.P12411694239332050634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n - A128834 n

end

end A314236.P12411694239332050634

namespace A314236

/-- `A315687(n)-A128834(n)` -/
def P12411694239332050634.Spec : Prop :=
  ∀ n, P12411694239332050634.a n = A314236 n

end A314236

/-! ## A314236.P7098146700743676602

`A315534(n)-A134667(n)`
-/

namespace A314236.P7098146700743676602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315534 n - A134667 n

end

end A314236.P7098146700743676602

namespace A314236

/-- `A315534(n)-A134667(n)` -/
def P7098146700743676602.Spec : Prop :=
  ∀ n, P7098146700743676602.a n = A314236 n

end A314236

/-! ## A314236.P1787774607010677155

`abs(A008592(n)-A314688(n))`
-/

namespace A314236.P1787774607010677155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314688 n|

end

end A314236.P1787774607010677155

namespace A314236

/-- `abs(A008592(n)-A314688(n))` -/
def P1787774607010677155.Spec : Prop :=
  ∀ n, P1787774607010677155.a n = A314236 n

end A314236

/-! ## A314236.P14454592308830658970

`A313778(n)+Δ[A011848(n)]`
-/

namespace A314236.P14454592308830658970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + (f1 (n + 1) - f1 n)

end

end A314236.P14454592308830658970

namespace A314236

/-- `A313778(n)+Δ[A011848(n)]` -/
def P14454592308830658970.Spec : Prop :=
  ∀ n, P14454592308830658970.a n = A314236 n

end A314236

/-! ## A314236.P10893525909539076436

`A312890(n)+A047513(n+1)`
-/

namespace A314236.P10893525909539076436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + A047513 (n + 1)

end

end A314236.P10893525909539076436

namespace A314236

/-- `A312890(n)+A047513(n+1)` -/
def P10893525909539076436.Spec : Prop :=
  ∀ n, P10893525909539076436.a n = A314236 n

theorem P10893525909539076436.correct : P10893525909539076436.Spec := by
  intro n
  simp only [A314236, Nat.add_sub_cancel, A314236.P10893525909539076436.a, A314236.P11197453166256301907.a, A047513, A047513.P11792871085229594459.a, A312890, A312890.P5869710039852604831.a, A313088, A313088.P8261115150776480095.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314236

/-! ## A314236.P12613808773715011160

`A315687(n)+A010892(n+2)`
-/

namespace A314236.P12613808773715011160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n + A010892 (n + 2)

end

end A314236.P12613808773715011160

namespace A314236

/-- `A315687(n)+A010892(n+2)` -/
def P12613808773715011160.Spec : Prop :=
  ∀ n, P12613808773715011160.a n = A314236 n

end A314236

/-! ## A314236.P12848195040702181875

`A313778(n)+n-A004525(n)`
-/

namespace A314236.P12848195040702181875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + ((n : ℤ) - A004525 n)

end

end A314236.P12848195040702181875

namespace A314236

/-- `A313778(n)+n-A004525(n)` -/
def P12848195040702181875.Spec : Prop :=
  ∀ n, P12848195040702181875.a n = A314236 n

theorem P12848195040702181875.correct : P12848195040702181875.Spec := by
  intro n
  simp only [A314236, Nat.add_sub_cancel, A314236.P12848195040702181875.a, A314236.P11197453166256301907.a, A004525, A004525.P4158271949796742323.a, A313088, A313088.P8261115150776480095.a, A313778, A313778.P4235496493182944354.a, A047513, A047513.P11792871085229594459.a, A312890, A312890.P5869710039852604831.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314236

/-! ## A314236.P11294293291312662698

`A313485(n)+n-A128834(n)`
-/

namespace A314236.P11294293291312662698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + ((n : ℤ) - A128834 n)

end

end A314236.P11294293291312662698

namespace A314236

/-- `A313485(n)+n-A128834(n)` -/
def P11294293291312662698.Spec : Prop :=
  ∀ n, P11294293291312662698.a n = A314236 n

end A314236

/-! ## A314236.P16627292459674624578

`abs(A008592(n)+n-A315479(n))`
-/

namespace A314236.P16627292459674624578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A315479 n)|

end

end A314236.P16627292459674624578

namespace A314236

/-- `abs(A008592(n)+n-A315479(n))` -/
def P16627292459674624578.Spec : Prop :=
  ∀ n, P16627292459674624578.a n = A314236 n

end A314236

/-! ## A314236.P4109076953924713217

`A008458(n)+A008574(n)-A314688(n)`
-/

namespace A314236.P4109076953924713217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314688 n)

end

end A314236.P4109076953924713217

namespace A314236

/-- `A008458(n)+A008574(n)-A314688(n)` -/
def P4109076953924713217.Spec : Prop :=
  ∀ n, P4109076953924713217.a n = A314236 n

end A314236

/-! ## A314236.P5499106105375027670

`A315763(n)-A047424(n+1)+n`
-/

namespace A314236.P5499106105375027670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A047424 (n + 1) + (n : ℤ)

end

end A314236.P5499106105375027670

namespace A314236

/-- `A315763(n)-A047424(n+1)+n` -/
def P5499106105375027670.Spec : Prop :=
  ∀ n, P5499106105375027670.a n = A314236 n

end A314236

/-! ## A314236.P11103275616823841784

`A004525(A313803(2*n))`
-/

namespace A314236.P11103275616823841784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313803 (2 * n)).toNat

end

end A314236.P11103275616823841784

namespace A314236

/-- `A004525(A313803(2*n))` -/
def P11103275616823841784.Spec : Prop :=
  ∀ n, P11103275616823841784.a n = A314236 n

end A314236

/-! ## A314236.P15668296112644108536

`A004525(A313900(2*n))`
-/

namespace A314236.P15668296112644108536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313900 (2 * n)).toNat

end

end A314236.P15668296112644108536

namespace A314236

/-- `A004525(A313900(2*n))` -/
def P15668296112644108536.Spec : Prop :=
  ∀ n, P15668296112644108536.a n = A314236 n

end A314236

/-! ## A314236.P2819055060202635976

`A004525(A313119(2*n)+n)`
-/

namespace A314236.P2819055060202635976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313119 (2 * n) + (n : ℤ)).toNat

end

end A314236.P2819055060202635976

namespace A314236

/-- `A004525(A313119(2*n)+n)` -/
def P2819055060202635976.Spec : Prop :=
  ∀ n, P2819055060202635976.a n = A314236 n

end A314236

/-! ## A314236.P5577979351743318111

`A004525(A314903(2*n)+n)`
-/

namespace A314236.P5577979351743318111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314903 (2 * n) + (n : ℤ)).toNat

end

end A314236.P5577979351743318111

namespace A314236

/-- `A004525(A314903(2*n)+n)` -/
def P5577979351743318111.Spec : Prop :=
  ∀ n, P5577979351743318111.a n = A314236 n

end A314236

/-! ## A314236.P10978836351005195755

`A004525(A314964(2*n)+A004396(n))`
-/

namespace A314236.P10978836351005195755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314964 (2 * n) + A004396 n).toNat

end

end A314236.P10978836351005195755

namespace A314236

/-- `A004525(A314964(2*n)+A004396(n))` -/
def P10978836351005195755.Spec : Prop :=
  ∀ n, P10978836351005195755.a n = A314236 n

end A314236

/-! ## A314236.P1135635633612278171

`A004525(A314970(2*n)+A004396(n))`
-/

namespace A314236.P1135635633612278171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314970 (2 * n) + A004396 n).toNat

end

end A314236.P1135635633612278171

namespace A314236

/-- `A004525(A314970(2*n)+A004396(n))` -/
def P1135635633612278171.Spec : Prop :=
  ∀ n, P1135635633612278171.a n = A314236 n

end A314236

/-!
# A314237: Coordination sequence Gal.5.298.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314237, there is no canonical definition to state claims against.
-/

/-! ## A314237.P12989449968477753468

`xor(A250214(A214078(2*(n+1))), A301718(n))`
-/

namespace A314237.P12989449968477753468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250214 (A214078 (2 * (n + 1))).toNat) (A301718 n)

end

end A314237.P12989449968477753468

/-! ## A314237.P9134720852740230252

`xor(A043545(A324088(n+1)), A301718(n))`
-/

namespace A314237.P9134720852740230252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043545 (A324088 (n + 1)).toNat) (A301718 n)

end

end A314237.P9134720852740230252

/-! ## A314237.P8971234729125277471

`A313088(n)+lt[A250120(n), A311978(n+1)]`
-/

namespace A314237.P8971234729125277471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A314237.P8971234729125277471

/-! ## A314237.P11541446267583373720

`floor(2/acot(3*n))-A086288(A014137(n))`
-/

namespace A314237.P11541446267583373720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ - A086288 (A014137 n).toNat

end

end A314237.P11541446267583373720

/-!
# A314238: Coordination sequence Gal.6.667.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314238, there is no canonical definition to state claims against.
-/

/-! ## A314238.P1567212288888369716

`A301718(n)+A033665(A045545(n))`
-/

namespace A314238.P1567212288888369716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A033665 (A045545 n).toNat

end

end A314238.P1567212288888369716

/-! ## A314238.P9683145705333555810

`A301718(n)+A085980(A004061(n+1))`
-/

namespace A314238.P9683145705333555810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A085980 (A004061 (n + 1)).toNat

end

end A314238.P9683145705333555810

/-! ## A314238.P18108129401148343240

`A301718(n)-A133944(A075211(n+1))`
-/

namespace A314238.P18108129401148343240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A133944 (A075211 (n + 1)).toNat

end

end A314238.P18108129401148343240

/-! ## A314238.P5203723484608699330

`A087068(2*n+1)-A123740(A180630(2*n+3))`
-/

namespace A314238.P5203723484608699330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087068 (2 * n + 1) - A123740 (A180630 (2 * n + 3)).toNat

end

end A314238.P5203723484608699330

/-! ## A314238.P12062657501477239469

`A301718(n)+A055641(A000108(n))`
-/

namespace A314238.P12062657501477239469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A055641 (A000108 n).toNat

end

end A314238.P12062657501477239469

/-!
# A314239: Coordination sequence Gal.6.642.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314239, the canonical program `A314239.P6616137567385777595` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314239 has offset 0).

The definition of A314239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314239.P4563482944192102470

`abs(A008592(n)-A314684(n))`
-/

namespace A314239.P4563482944192102470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314684 n|

end

end A314239.P4563482944192102470

namespace A314239

/-- `abs(A008592(n)-A314684(n))` -/
def P4563482944192102470.Spec : Prop :=
  ∀ n, P4563482944192102470.a n = A314239 n

end A314239

/-! ## A314239.P6616137567385777595

`A311420(n)+A047273(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314239

/-- `A311420(n)+A047273(n+1)` -/
def P6616137567385777595.Spec : Prop :=
  ∀ n, P6616137567385777595.a n = A314239 n

theorem P6616137567385777595.correct : P6616137567385777595.Spec := by
  intro n
  simp only [A314239]

end A314239

/-! ## A314239.P11709407745334501675

`A311420(n)+A004525(3*n)`
-/

namespace A314239.P11709407745334501675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311420 n + A004525 (3 * n)

end

end A314239.P11709407745334501675

namespace A314239

/-- `A311420(n)+A004525(3*n)` -/
def P11709407745334501675.Spec : Prop :=
  ∀ n, P11709407745334501675.a n = A314239 n

end A314239

/-! ## A314239.P5038610268029918092

`(A310520(n)+A008458(n))/2`
-/

namespace A314239.P5038610268029918092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310520 n + A008458 n : ℚ) / 2

end

end A314239.P5038610268029918092

namespace A314239

/-- `(A310520(n)+A008458(n))/2` -/
def P5038610268029918092.Spec : Prop :=
  ∀ n, P5038610268029918092.a n = (A314239 n : ℚ)

end A314239

/-! ## A314239.P7901172980858113071

`A008458(n)+A008574(n)-A314684(n)`
-/

namespace A314239.P7901172980858113071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314684 n)

end

end A314239.P7901172980858113071

namespace A314239

/-- `A008458(n)+A008574(n)-A314684(n)` -/
def P7901172980858113071.Spec : Prop :=
  ∀ n, P7901172980858113071.a n = A314239 n

end A314239

/-! ## A314239.P11868781567952417557

`A005843(n)+A005843(A008574(n))-A314684(n)`
-/

namespace A314239.P11868781567952417557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314684 n)

end

end A314239.P11868781567952417557

namespace A314239

/-- `A005843(n)+A005843(A008574(n))-A314684(n)` -/
def P11868781567952417557.Spec : Prop :=
  ∀ n, P11868781567952417557.a n = A314239 n

end A314239

/-! ## A314239.P11370406190353293404

`A310520(n)+A001281(A008458(n)-A310520(n))`
-/

namespace A314239.P11370406190353293404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310520 n + A001281 (A008458 n - A310520 n).toNat

end

end A314239.P11370406190353293404

namespace A314239

/-- `A310520(n)+A001281(A008458(n)-A310520(n))` -/
def P11370406190353293404.Spec : Prop :=
  ∀ n, P11370406190353293404.a n = A314239 n

end A314239

/-! ## A314239.P15772890959796178187

`A310520(n)+A004525(A008458(n)-A310520(n))`
-/

namespace A314239.P15772890959796178187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310520 n + A004525 (A008458 n - A310520 n).toNat

end

end A314239.P15772890959796178187

namespace A314239

/-- `A310520(n)+A004525(A008458(n)-A310520(n))` -/
def P15772890959796178187.Spec : Prop :=
  ∀ n, P15772890959796178187.a n = A314239 n

end A314239

/-! ## A314239.P12339237156388836302

`A310523(n)+A004525(A008458(n)-A310523(n))`
-/

namespace A314239.P12339237156388836302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310523 n + A004525 (A008458 n - A310523 n).toNat

end

end A314239.P12339237156388836302

namespace A314239

/-- `A310523(n)+A004525(A008458(n)-A310523(n))` -/
def P12339237156388836302.Spec : Prop :=
  ∀ n, P12339237156388836302.a n = A314239 n

end A314239

/-! ## A314239.P12765774448312002149

`A008458(n)-A004525(A008458(n)-A310513(n))`
-/

namespace A314239.P12765774448312002149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A310513 n).toNat

end

end A314239.P12765774448312002149

namespace A314239

/-- `A008458(n)-A004525(A008458(n)-A310513(n))` -/
def P12765774448312002149.Spec : Prop :=
  ∀ n, P12765774448312002149.a n = A314239 n

end A314239

/-! ## A314239.P8882267374087627793

`A008458(n)-A004526(A008458(n)-A310520(n))`
-/

namespace A314239.P8882267374087627793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A310520 n).toNat

end

end A314239.P8882267374087627793

namespace A314239

/-- `A008458(n)-A004526(A008458(n)-A310520(n))` -/
def P8882267374087627793.Spec : Prop :=
  ∀ n, P8882267374087627793.a n = A314239 n

end A314239

/-! ## A314239.P7282726694827799904

`A005843(A008574(n)+n)-A314684(n)`
-/

namespace A314239.P7282726694827799904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314684 n

end

end A314239.P7282726694827799904

namespace A314239

/-- `A005843(A008574(n)+n)-A314684(n)` -/
def P7282726694827799904.Spec : Prop :=
  ∀ n, P7282726694827799904.a n = A314239 n

end A314239

/-! ## A314239.P3152502492144031980

`A004396(A313918(n))+2*n`
-/

namespace A314239.P3152502492144031980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313918 n).toNat + (2 * n : ℤ)

end

end A314239.P3152502492144031980

namespace A314239

/-- `A004396(A313918(n))+2*n` -/
def P3152502492144031980.Spec : Prop :=
  ∀ n, P3152502492144031980.a n = A314239 n

end A314239

/-! ## A314239.P15943877957300341985

`A004396(A314149(n))+2*n`
-/

namespace A314239.P15943877957300341985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314149 n).toNat + (2 * n : ℤ)

end

end A314239.P15943877957300341985

namespace A314239

/-- `A004396(A314149(n))+2*n` -/
def P15943877957300341985.Spec : Prop :=
  ∀ n, P15943877957300341985.a n = A314239 n

end A314239

/-! ## A314239.P8562630921565414736

`A004396(A314210(n))+2*n`
-/

namespace A314239.P8562630921565414736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314210 n).toNat + (2 * n : ℤ)

end

end A314239.P8562630921565414736

namespace A314239

/-- `A004396(A314210(n))+2*n` -/
def P8562630921565414736.Spec : Prop :=
  ∀ n, P8562630921565414736.a n = A314239 n

end A314239

/-! ## A314239.P13033508278799896172

`A004396(A314765(2*n)-n)`
-/

namespace A314239.P13033508278799896172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314765 (2 * n) - (n : ℤ)).toNat

end

end A314239.P13033508278799896172

namespace A314239

/-- `A004396(A314765(2*n)-n)` -/
def P13033508278799896172.Spec : Prop :=
  ∀ n, P13033508278799896172.a n = A314239 n

end A314239

/-! ## A314239.P559359439063636493

`A004396(A314849(2*n)-n)`
-/

namespace A314239.P559359439063636493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314849 (2 * n) - (n : ℤ)).toNat

end

end A314239.P559359439063636493

namespace A314239

/-- `A004396(A314849(2*n)-n)` -/
def P559359439063636493.Spec : Prop :=
  ∀ n, P559359439063636493.a n = A314239 n

end A314239

/-! ## A314239.P14429830710936662588

`A315345(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A314239.P14429830710936662588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315345 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A314239.P14429830710936662588

namespace A314239

/-- `A315345(2*n)/(4*n+2-A004277(2*n))` -/
def P14429830710936662588.Spec : Prop :=
  ∀ n, P14429830710936662588.a n = (A314239 n : ℚ)

end A314239

/-! ## A314239.P8888757650189689771

`A315548(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314239.P8888757650189689771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315548 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314239.P8888757650189689771

namespace A314239

/-- `A315548(2*n)+A008458(n+1)-(12*n+6)` -/
def P8888757650189689771.Spec : Prop :=
  ∀ n, P8888757650189689771.a n = A314239 n

end A314239

/-! ## A314239.P1343585134937532062

`A313933(2*n)/A020639(A313930(2*n))`
-/

namespace A314239.P1343585134937532062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313933 (2 * n) : ℚ) / (A020639 (A313930 (2 * n)).toNat : ℚ)

end

end A314239.P1343585134937532062

namespace A314239

/-- `A313933(2*n)/A020639(A313930(2*n))` -/
def P1343585134937532062.Spec : Prop :=
  ∀ n, P1343585134937532062.a n = (A314239 n : ℚ)

end A314239

/-!
# A314240: Coordination sequence Gal.6.643.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314240, the canonical program `A314240.P18428589485690285850` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314240 has offset 0).

The definition of A314240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314240.P18428589485690285850

`A313099(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314240

/-- `A313099(n)+n` -/
def P18428589485690285850.Spec : Prop :=
  ∀ n, P18428589485690285850.a n = A314240 n

theorem P18428589485690285850.correct : P18428589485690285850.Spec := by
  intro n
  simp only [A314240]

end A314240

/-! ## A314240.P4562109850164276977

`A310457(n)+A004396(n)`
-/

namespace A314240.P4562109850164276977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n + A004396 n

end

end A314240.P4562109850164276977

namespace A314240

/-- `A310457(n)+A004396(n)` -/
def P4562109850164276977.Spec : Prop :=
  ∀ n, P4562109850164276977.a n = A314240 n

end A314240

/-! ## A314240.P9523546663012513039

`abs(A008592(n)-A314683(n))`
-/

namespace A314240.P9523546663012513039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314683 n|

end

end A314240.P9523546663012513039

namespace A314240

/-- `abs(A008592(n)-A314683(n))` -/
def P9523546663012513039.Spec : Prop :=
  ∀ n, P9523546663012513039.a n = A314240 n

end A314240

/-! ## A314240.P13105391325548856821

`abs(A008593(n)-A315476(n))`
-/

namespace A314240.P13105391325548856821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315476 n|

end

end A314240.P13105391325548856821

namespace A314240

/-- `abs(A008593(n)-A315476(n))` -/
def P13105391325548856821.Spec : Prop :=
  ∀ n, P13105391325548856821.a n = A314240 n

end A314240

/-! ## A314240.P9093632653008983942

`A313726(n)+∑[A131735(n)]`
-/

namespace A314240.P9093632653008983942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314240.P9093632653008983942

namespace A314240

/-- `A313726(n)+∑[A131735(n)]` -/
def P9093632653008983942.Spec : Prop :=
  ∀ n, P9093632653008983942.a n = A314240 n

end A314240

/-! ## A314240.P11837105193944613755

`A313781(n)+Δ[A011848(n)]`
-/

namespace A314240.P11837105193944613755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n + (f1 (n + 1) - f1 n)

end

end A314240.P11837105193944613755

namespace A314240

/-- `A313781(n)+Δ[A011848(n)]` -/
def P11837105193944613755.Spec : Prop :=
  ∀ n, P11837105193944613755.a n = A314240 n

end A314240

/-! ## A314240.P13375503453187837728

`A311426(n)+A047273(n+1)`
-/

namespace A314240.P13375503453187837728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311426 n + A047273 (n + 1)

end

end A314240.P13375503453187837728

namespace A314240

/-- `A311426(n)+A047273(n+1)` -/
def P13375503453187837728.Spec : Prop :=
  ∀ n, P13375503453187837728.a n = A314240 n

theorem P13375503453187837728.correct : P13375503453187837728.Spec := by
  intro n
  simp only [A314240, Nat.add_sub_cancel, A314240.P13375503453187837728.a, A314240.P18428589485690285850.a, A047273, A047273.P5050912492785340480.a, A311426, A311426.P12408021461851380809.a, A313099, A313099.P14754823964277209654.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314240

/-! ## A314240.P7268169500501195342

`A312896(n)+A047513(n+1)`
-/

namespace A314240.P7268169500501195342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + A047513 (n + 1)

end

end A314240.P7268169500501195342

namespace A314240

/-- `A312896(n)+A047513(n+1)` -/
def P7268169500501195342.Spec : Prop :=
  ∀ n, P7268169500501195342.a n = A314240 n

end A314240

/-! ## A314240.P16861728277700325314

`A313781(n)+n-A004525(n)`
-/

namespace A314240.P16861728277700325314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n + ((n : ℤ) - A004525 n)

end

end A314240.P16861728277700325314

namespace A314240

/-- `A313781(n)+n-A004525(n)` -/
def P16861728277700325314.Spec : Prop :=
  ∀ n, P16861728277700325314.a n = A314240 n

end A314240

/-! ## A314240.P6539934274002824828

`A313494(n)+n-A128834(n)`
-/

namespace A314240.P6539934274002824828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313494 n + ((n : ℤ) - A128834 n)

end

end A314240.P6539934274002824828

namespace A314240

/-- `A313494(n)+n-A128834(n)` -/
def P6539934274002824828.Spec : Prop :=
  ∀ n, P6539934274002824828.a n = A314240 n

theorem P6539934274002824828.correct : P6539934274002824828.Spec := by
  intro n
  simp only [A314240, Nat.add_sub_cancel, A314240.P6539934274002824828.a, A314240.P18428589485690285850.a, A128834, A128834.P4430347604004376390.a, A313099, A313099.P14754823964277209654.a, A313494, A313494.P14635809210881396952.a, A047273, A047273.P5050912492785340480.a, A311426, A311426.P12408021461851380809.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314240

/-! ## A314240.P7647095933765441942

`A310457(n)+A002264(Δ[n²])`
-/

namespace A314240.P7647095933765441942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n + A002264 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A314240.P7647095933765441942

namespace A314240

/-- `A310457(n)+A002264(Δ[n²])` -/
def P7647095933765441942.Spec : Prop :=
  ∀ n, P7647095933765441942.a n = A314240 n

end A314240

/-! ## A314240.P3348406685710730003

`A008458(n)-A004396(A004525(n))`
-/

namespace A314240.P3348406685710730003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 (A004525 n).toNat

end

end A314240.P3348406685710730003

namespace A314240

/-- `A008458(n)-A004396(A004525(n))` -/
def P3348406685710730003.Spec : Prop :=
  ∀ n, P3348406685710730003.a n = A314240 n

end A314240

/-! ## A314240.P17333591116529131478

`A310410(n)+A004525(A004396(n)+n)`
-/

namespace A314240.P17333591116529131478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310410 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A314240.P17333591116529131478

namespace A314240

/-- `A310410(n)+A004525(A004396(n)+n)` -/
def P17333591116529131478.Spec : Prop :=
  ∀ n, P17333591116529131478.a n = A314240 n

end A314240

/-! ## A314240.P1188885592891764565

`A004396(n)+A314159(n)-A004525(n)`
-/

namespace A314240.P1188885592891764565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314159 n - A004525 n)

end

end A314240.P1188885592891764565

namespace A314240

/-- `A004396(n)+A314159(n)-A004525(n)` -/
def P1188885592891764565.Spec : Prop :=
  ∀ n, P1188885592891764565.a n = A314240 n

end A314240

/-! ## A314240.P13049646986953374763

`A008458(n)+A008574(n)-A314683(n)`
-/

namespace A314240.P13049646986953374763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314683 n)

end

end A314240.P13049646986953374763

namespace A314240

/-- `A008458(n)+A008574(n)-A314683(n)` -/
def P13049646986953374763.Spec : Prop :=
  ∀ n, P13049646986953374763.a n = A314240 n

end A314240

/-! ## A314240.P3535621974848769339

`A004396(n)+A219529(n)-A004396(A004525(n))`
-/

namespace A314240.P3535621974848769339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A219529 n - A004396 (A004525 n).toNat)

end

end A314240.P3535621974848769339

namespace A314240

/-- `A004396(n)+A219529(n)-A004396(A004525(n))` -/
def P3535621974848769339.Spec : Prop :=
  ∀ n, P3535621974848769339.a n = A314240 n

end A314240

/-! ## A314240.P15646403168698878682

`A004525(A310524(n))+3*n`
-/

namespace A314240.P15646403168698878682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310524 n).toNat + (3 * n : ℤ)

end

end A314240.P15646403168698878682

namespace A314240

/-- `A004525(A310524(n))+3*n` -/
def P15646403168698878682.Spec : Prop :=
  ∀ n, P15646403168698878682.a n = A314240 n

end A314240

/-! ## A314240.P7010000062466220944

`A004396(A301710(n))+2*n`
-/

namespace A314240.P7010000062466220944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301710 n).toNat + (2 * n : ℤ)

end

end A314240.P7010000062466220944

namespace A314240

/-- `A004396(A301710(n))+2*n` -/
def P7010000062466220944.Spec : Prop :=
  ∀ n, P7010000062466220944.a n = A314240 n

end A314240

/-! ## A314240.P18390643909709189319

`A004396(A314151(n))+2*n`
-/

namespace A314240.P18390643909709189319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314151 n).toNat + (2 * n : ℤ)

end

end A314240.P18390643909709189319

namespace A314240

/-- `A004396(A314151(n))+2*n` -/
def P18390643909709189319.Spec : Prop :=
  ∀ n, P18390643909709189319.a n = A314240 n

end A314240

/-! ## A314240.P7753254997350680287

`A004396(A301293(n)+4*n)`
-/

namespace A314240.P7753254997350680287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301293 n + (4 * n : ℤ)).toNat

end

end A314240.P7753254997350680287

namespace A314240

/-- `A004396(A301293(n)+4*n)` -/
def P7753254997350680287.Spec : Prop :=
  ∀ n, P7753254997350680287.a n = A314240 n

end A314240

/-!
# A314241: Coordination sequence Gal.6.631.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314241, there is no canonical definition to state claims against.
-/

/-! ## A314241.P7149804900577066434

`A160755(A311861(n))+A047486(n+1)`
-/

namespace A314241.P7149804900577066434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A311861 n).toNat + A047486 (n + 1)

end

end A314241.P7149804900577066434

/-! ## A314241.P2392239261203250540

`A178686(2*n+1)+A016777(A289207(2*n+1))`
-/

namespace A314241.P2392239261203250540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178686 (2 * n + 1) + A016777 (A289207 (2 * n + 1)).toNat

end

end A314241.P2392239261203250540

/-! ## A314241.P862865526902218088

`A182220(A246298(n+1))`
-/

namespace A314241.P862865526902218088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A246298 (n + 1)).toNat

end

end A314241.P862865526902218088

/-! ## A314241.P10663478028883668615

`A182220(A246299(n+1)+1)`
-/

namespace A314241.P10663478028883668615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A246299 (n + 1) + 1).toNat

end

end A314241.P10663478028883668615

/-! ## A314241.P7134096478044877658

`A182220(A246297(n+1)-1)`
-/

namespace A314241.P7134096478044877658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A246297 (n + 1) - 1).toNat

end

end A314241.P7134096478044877658

/-!
# A314242: Coordination sequence Gal.4.146.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314242, the canonical program `A314242.P9930865792257095390` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314242 has offset 0).

The definition of A314242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314242.P238426975326947291

`2*A313875(n)-A250120(n)`
-/

namespace A314242.P238426975326947291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313875 n - A250120 n

end

end A314242.P238426975326947291

namespace A314242

/-- `2*A313875(n)-A250120(n)` -/
def P238426975326947291.Spec : Prop :=
  ∀ n, P238426975326947291.a n = A314242 n

end A314242

/-! ## A314242.P9930865792257095390

`2*A313875(n)-A072154(A005843(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314242

/-- `2*A313875(n)-A072154(A005843(n))` -/
def P9930865792257095390.Spec : Prop :=
  ∀ n, P9930865792257095390.a n = A314242 n

theorem P9930865792257095390.correct : P9930865792257095390.Spec := by
  intro n
  simp only [A314242]

end A314242

/-! ## A314242.P11535752287531289278

`A008458(n)+A312506(n)-A250120(n)`
-/

namespace A314242.P11535752287531289278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A312506 n - A250120 n)

end

end A314242.P11535752287531289278

namespace A314242

/-- `A008458(n)+A312506(n)-A250120(n)` -/
def P11535752287531289278.Spec : Prop :=
  ∀ n, P11535752287531289278.a n = A314242 n

end A314242

/-! ## A314242.P6203394196221324925

`A313782(n)+A313956(n)-A250120(n)`
-/

namespace A314242.P6203394196221324925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n + (A313956 n - A250120 n)

end

end A314242.P6203394196221324925

namespace A314242

/-- `A313782(n)+A313956(n)-A250120(n)` -/
def P6203394196221324925.Spec : Prop :=
  ∀ n, P6203394196221324925.a n = A314242 n

end A314242

/-! ## A314242.P12948644902123950783

`A201629(A301293(n))+A004525(A072154(n))`
-/

namespace A314242.P12948644902123950783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A301293 n).toNat + A004525 (A072154 n).toNat

end

end A314242.P12948644902123950783

namespace A314242

/-- `A201629(A301293(n))+A004525(A072154(n))` -/
def P12948644902123950783.Spec : Prop :=
  ∀ n, P12948644902123950783.a n = A314242 n

end A314242

/-! ## A314242.P6710244841176222504

`A201629(A301293(n))+A068962(A008486(n))`
-/

namespace A314242.P6710244841176222504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A301293 n).toNat + A068962 (A008486 n).toNat

end

end A314242.P6710244841176222504

namespace A314242

/-- `A201629(A301293(n))+A068962(A008486(n))` -/
def P6710244841176222504.Spec : Prop :=
  ∀ n, P6710244841176222504.a n = A314242 n

end A314242

/-! ## A314242.P12234488267299513078

`A201629(A312506(n))+A004525(A072154(n))`
-/

namespace A314242.P12234488267299513078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A312506 n).toNat + A004525 (A072154 n).toNat

end

end A314242.P12234488267299513078

namespace A314242

/-- `A201629(A312506(n))+A004525(A072154(n))` -/
def P12234488267299513078.Spec : Prop :=
  ∀ n, P12234488267299513078.a n = A314242 n

end A314242

/-! ## A314242.P15890062658333530446

`A201629(A314829(n))+A004525(A072154(n))`
-/

namespace A314242.P15890062658333530446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A314829 n).toNat + A004525 (A072154 n).toNat

end

end A314242.P15890062658333530446

namespace A314242

/-- `A201629(A314829(n))+A004525(A072154(n))` -/
def P15890062658333530446.Spec : Prop :=
  ∀ n, P15890062658333530446.a n = A314242 n

end A314242

/-! ## A314242.P13756519876044276729

`A237420(A312506(n))+A068962(A008486(n))`
-/

namespace A314242.P13756519876044276729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A312506 n).toNat + A068962 (A008486 n).toNat

end

end A314242.P13756519876044276729

namespace A314242

/-- `A237420(A312506(n))+A068962(A008486(n))` -/
def P13756519876044276729.Spec : Prop :=
  ∀ n, P13756519876044276729.a n = A314242 n

end A314242

/-! ## A314242.P2851461003245285330

`A005843(A313875(n))-A250120(n)`
-/

namespace A314242.P2851461003245285330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313875 n).toNat - A250120 n

end

end A314242.P2851461003245285330

namespace A314242

/-- `A005843(A313875(n))-A250120(n)` -/
def P2851461003245285330.Spec : Prop :=
  ∀ n, P2851461003245285330.a n = A314242 n

end A314242

/-! ## A314242.P9888230347162984063

`A005843(A313875(n))-A072154(A005843(n))`
-/

namespace A314242.P9888230347162984063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313875 n).toNat - A072154 (A005843 n).toNat

end

end A314242.P9888230347162984063

namespace A314242

/-- `A005843(A313875(n))-A072154(A005843(n))` -/
def P9888230347162984063.Spec : Prop :=
  ∀ n, P9888230347162984063.a n = A314242 n

end A314242

/-! ## A314242.P3012447481441567583

`2*A311843(n)-A004525(A301718(n))`
-/

namespace A314242.P3012447481441567583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311843 n - A004525 (A301718 n).toNat

end

end A314242.P3012447481441567583

namespace A314242

/-- `2*A311843(n)-A004525(A301718(n))` -/
def P3012447481441567583.Spec : Prop :=
  ∀ n, P3012447481441567583.a n = A314242 n

end A314242

/-! ## A314242.P8574169164231264732

`A005843(A311843(n))-A004525(A301718(n))`
-/

namespace A314242.P8574169164231264732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311843 n).toNat - A004525 (A301718 n).toNat

end

end A314242.P8574169164231264732

namespace A314242

/-- `A005843(A311843(n))-A004525(A301718(n))` -/
def P8574169164231264732.Spec : Prop :=
  ∀ n, P8574169164231264732.a n = A314242 n

end A314242

/-! ## A314242.P11605190560535234345

`A004525(A072154(n)+2*A312506(n))`
-/

namespace A314242.P11605190560535234345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A072154 n + 2 * A312506 n).toNat

end

end A314242.P11605190560535234345

namespace A314242

/-- `A004525(A072154(n)+2*A312506(n))` -/
def P11605190560535234345.Spec : Prop :=
  ∀ n, P11605190560535234345.a n = A314242 n

end A314242

/-! ## A314242.P283485702878093130

`A004525(A312506(n)+A312506(n)+A072154(n))`
-/

namespace A314242.P283485702878093130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312506 n + (A312506 n + A072154 n)).toNat

end

end A314242.P283485702878093130

namespace A314242

/-- `A004525(A312506(n)+A312506(n)+A072154(n))` -/
def P283485702878093130.Spec : Prop :=
  ∀ n, P283485702878093130.a n = A314242 n

end A314242

/-!
# A314243: Coordination sequence Gal.6.659.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314243, there is no canonical definition to state claims against.
-/

/-! ## A314243.P9775614250443919999

`record[A014963(A163301(Δ[n²]))]`
-/

namespace A314243.P9775614250443919999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A163301 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314243.P9775614250443919999

/-! ## A314243.P6667247835175382624

`record[A006530(A163301(2*n+1))]`
-/

namespace A314243.P6667247835175382624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A163301 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314243.P6667247835175382624

/-! ## A314243.P10016834390593979668

`A040028(n+2)%A059801(3*n+1)`
-/

namespace A314243.P10016834390593979668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040028 (n + 2)) (A059801 (3 * n + 1))

end

end A314243.P10016834390593979668

/-! ## A314243.P7582017055323830522

`A140559(n+1)-A010054(∑[Δ[(11*n)²]-1])`
-/

namespace A314243.P7582017055323830522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140559 (n + 1) - A010054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A314243.P7582017055323830522

/-!
# A314244: Coordination sequence Gal.6.644.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314244, the canonical program `A314244.P5686595112287362026` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314244 has offset 0).

The definition of A314244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314244.P12440238016374366127

`abs(A008592(n)-A314680(n))`
-/

namespace A314244.P12440238016374366127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314680 n|

end

end A314244.P12440238016374366127

namespace A314244

/-- `abs(A008592(n)-A314680(n))` -/
def P12440238016374366127.Spec : Prop :=
  ∀ n, P12440238016374366127.a n = A314244 n

end A314244

/-! ## A314244.P15849611563544918827

`A008458(n)+A008574(n)-A314680(n)`
-/

namespace A314244.P15849611563544918827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314680 n)

end

end A314244.P15849611563544918827

namespace A314244

/-- `A008458(n)+A008574(n)-A314680(n)` -/
def P15849611563544918827.Spec : Prop :=
  ∀ n, P15849611563544918827.a n = A314244 n

end A314244

/-! ## A314244.P6512683919509459637

`A008458(n)-A004525(A008458(n)-A310523(n))`
-/

namespace A314244.P6512683919509459637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A310523 n).toNat

end

end A314244.P6512683919509459637

namespace A314244

/-- `A008458(n)-A004525(A008458(n)-A310523(n))` -/
def P6512683919509459637.Spec : Prop :=
  ∀ n, P6512683919509459637.a n = A314244 n

end A314244

/-! ## A314244.P2742164015267006663

`2*n+A004396(A310526(n))`
-/

namespace A314244.P2742164015267006663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310526 n).toNat

end

end A314244.P2742164015267006663

namespace A314244

/-- `2*n+A004396(A310526(n))` -/
def P2742164015267006663.Spec : Prop :=
  ∀ n, P2742164015267006663.a n = A314244 n

end A314244

/-! ## A314244.P5686595112287362026

`A004396(A314157(n))+2*n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314244

/-- `A004396(A314157(n))+2*n` -/
def P5686595112287362026.Spec : Prop :=
  ∀ n, P5686595112287362026.a n = A314244 n

theorem P5686595112287362026.correct : P5686595112287362026.Spec := by
  intro n
  simp only [A314244]

end A314244

/-! ## A314244.P6007230498948684412

`A004396(A314234(n))+2*n`
-/

namespace A314244.P6007230498948684412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314234 n).toNat + (2 * n : ℤ)

end

end A314244.P6007230498948684412

namespace A314244

/-- `A004396(A314234(n))+2*n` -/
def P6007230498948684412.Spec : Prop :=
  ∀ n, P6007230498948684412.a n = A314244 n

end A314244

/-! ## A314244.P10088840685625580392

`A005843(n)+A004396(A314157(n))`
-/

namespace A314244.P10088840685625580392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A314157 n).toNat

end

end A314244.P10088840685625580392

namespace A314244

/-- `A005843(n)+A004396(A314157(n))` -/
def P10088840685625580392.Spec : Prop :=
  ∀ n, P10088840685625580392.a n = A314244 n

theorem P10088840685625580392.correct : P10088840685625580392.Spec := by
  intro n
  simp only [A314244, Nat.add_sub_cancel, A314244.P10088840685625580392.a, A314244.P5686595112287362026.a, A004396, A004396.P17032557045289780609.a, A005843, A005843.P3167286115683555970.a, A314157, A314157.P13095074004396682400.a, A004525, A004525.P4158271949796742323.a, A008458, A008458.P7339383310184415644.a, A310456, A310456.P16640342773671596994.f1, A310456.P16640342773671596994.a, A011864, A011864.P3547417513882699266.a, A310408, A310408.P15738370817569291537.a, A008574, A008574.P1300280032690682112.a, A312927, A312927.P1648662884005407572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314244

/-! ## A314244.P16619654422790613685

`A005843(n)+A004396(A314234(n))`
-/

namespace A314244.P16619654422790613685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A314234 n).toNat

end

end A314244.P16619654422790613685

namespace A314244

/-- `A005843(n)+A004396(A314234(n))` -/
def P16619654422790613685.Spec : Prop :=
  ∀ n, P16619654422790613685.a n = A314244 n

end A314244

/-! ## A314244.P4705767851291084206

`A008585(n)-(n-A004396(A310526(n)))`
-/

namespace A314244.P4705767851291084206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A310526 n).toNat)

end

end A314244.P4705767851291084206

namespace A314244

/-- `A008585(n)-(n-A004396(A310526(n)))` -/
def P4705767851291084206.Spec : Prop :=
  ∀ n, P4705767851291084206.a n = A314244 n

end A314244

/-! ## A314244.P4478093655239151833

`A004396(A310526(n)+A008486(n))`
-/

namespace A314244.P4478093655239151833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310526 n + A008486 n).toNat

end

end A314244.P4478093655239151833

namespace A314244

/-- `A004396(A310526(n)+A008486(n))` -/
def P4478093655239151833.Spec : Prop :=
  ∀ n, P4478093655239151833.a n = A314244 n

end A314244

/-! ## A314244.P3670029960625853758

`A004396(A310526(n)+A008585(n))`
-/

namespace A314244.P3670029960625853758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310526 n + A008585 n).toNat

end

end A314244.P3670029960625853758

namespace A314244

/-- `A004396(A310526(n)+A008585(n))` -/
def P3670029960625853758.Spec : Prop :=
  ∀ n, P3670029960625853758.a n = A314244 n

end A314244

/-! ## A314244.P8289750966861426930

`A310533(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A314244.P8289750966861426930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310533 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A314244.P8289750966861426930

namespace A314244

/-- `A310533(2*n)/(4*n+2-A004277(2*n))` -/
def P8289750966861426930.Spec : Prop :=
  ∀ n, P8289750966861426930.a n = (A314244 n : ℚ)

end A314244

/-! ## A314244.P13578104699712421116

`A314253(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314244.P13578104699712421116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314253 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314244.P13578104699712421116

namespace A314244

/-- `A314253(2*n)+A008458(n+1)-(12*n+6)` -/
def P13578104699712421116.Spec : Prop :=
  ∀ n, P13578104699712421116.a n = A314244 n

end A314244

/-! ## A314244.P6623943744940680740

`A004525(A310533(2*n))`
-/

namespace A314244.P6623943744940680740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310533 (2 * n)).toNat

end

end A314244.P6623943744940680740

namespace A314244

/-- `A004525(A310533(2*n))` -/
def P6623943744940680740.Spec : Prop :=
  ∀ n, P6623943744940680740.a n = A314244 n

end A314244

/-! ## A314244.P15390040327973271085

`A004525(A314239(2*n))`
-/

namespace A314244.P15390040327973271085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314239 (2 * n)).toNat

end

end A314244.P15390040327973271085

namespace A314244

/-- `A004525(A314239(2*n))` -/
def P15390040327973271085.Spec : Prop :=
  ∀ n, P15390040327973271085.a n = A314244 n

end A314244

/-! ## A314244.P8497747839187610217

`A004526(A310533(2*n)+1)`
-/

namespace A314244.P8497747839187610217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310533 (2 * n) + 1).toNat

end

end A314244.P8497747839187610217

namespace A314244

/-- `A004526(A310533(2*n)+1)` -/
def P8497747839187610217.Spec : Prop :=
  ∀ n, P8497747839187610217.a n = A314244 n

end A314244

/-! ## A314244.P14526221359561458425

`A004525(A314057(n)+6*n)`
-/

namespace A314244.P14526221359561458425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314057 n + (6 * n : ℤ)).toNat

end

end A314244.P14526221359561458425

namespace A314244

/-- `A004525(A314057(n)+6*n)` -/
def P14526221359561458425.Spec : Prop :=
  ∀ n, P14526221359561458425.a n = A314244 n

end A314244

/-! ## A314244.P9036864653029346500

`A004525(A310523(n)+A008458(n))`
-/

namespace A314244.P9036864653029346500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310523 n + A008458 n).toNat

end

end A314244.P9036864653029346500

namespace A314244

/-- `A004525(A310523(n)+A008458(n))` -/
def P9036864653029346500.Spec : Prop :=
  ∀ n, P9036864653029346500.a n = A314244 n

end A314244

/-!
# A314245: Coordination sequence Gal.5.317.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314245, the canonical program `A314245.P2036578917269548125` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314245 has offset 0).

The definition of A314245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314245.P2036578917269548125

`A314146(2*n)+A314156(n)-A314156(2*n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314245

/-- `A314146(2*n)+A314156(n)-A314156(2*n)` -/
def P2036578917269548125.Spec : Prop :=
  ∀ n, P2036578917269548125.a n = A314245 n

theorem P2036578917269548125.correct : P2036578917269548125.Spec := by
  intro n
  simp only [A314245]

end A314245

/-! ## A314245.P9149297152738438882

`A301718(n)+A297046(A078356(n+1))`
-/

namespace A314245.P9149297152738438882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A297046 (A078356 (n + 1)).toNat

end

end A314245.P9149297152738438882

namespace A314245

/-- `A301718(n)+A297046(A078356(n+1))` -/
def P9149297152738438882.Spec : Prop :=
  ∀ n, P9149297152738438882.a n = A314245 n

end A314245

/-! ## A314245.P18317058598814038247

`A301718(n)+A102683(A017186(n))`
-/

namespace A314245.P18317058598814038247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A102683 (A017186 n).toNat

end

end A314245.P18317058598814038247

namespace A314245

/-- `A301718(n)+A102683(A017186(n))` -/
def P18317058598814038247.Spec : Prop :=
  ∀ n, P18317058598814038247.a n = A314245 n

end A314245

/-! ## A314245.P14768643257928557322

`A316864(A076906(n))+A301718(n)`
-/

namespace A314245.P14768643257928557322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A076906 n).toNat + A301718 n

end

end A314245.P14768643257928557322

namespace A314245

/-- `A316864(A076906(n))+A301718(n)` -/
def P14768643257928557322.Spec : Prop :=
  ∀ n, P14768643257928557322.a n = A314245 n

end A314245

/-! ## A314245.P3533845162531643144

`A301718(n)+A171588(A001006(n+1))`
-/

namespace A314245.P3533845162531643144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A171588 (A001006 (n + 1)).toNat

end

end A314245.P3533845162531643144

namespace A314245

/-- `A301718(n)+A171588(A001006(n+1))` -/
def P3533845162531643144.Spec : Prop :=
  ∀ n, P3533845162531643144.a n = A314245 n

end A314245

/-!
# A314246: Coordination sequence Gal.5.297.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314246, there is no canonical definition to state claims against.
-/

/-! ## A314246.P16351097362782778548

`A314249(n)-A031286(A000994(n))`
-/

namespace A314246.P16351097362782778548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314249 n - A031286 (A000994 n).toNat

end

end A314246.P16351097362782778548

/-! ## A314246.P1764001411442260674

`or(A007968(A000332(n)), A314234(n))`
-/

namespace A314246.P1764001411442260674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007968 (A000332 n).toNat) (A314234 n)

end

end A314246.P1764001411442260674

/-! ## A314246.P3837979219279234309

`A314249(n)-A001221(A018242(n))`
-/

namespace A314246.P3837979219279234309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314249 n - A001221 (A018242 n).toNat

end

end A314246.P3837979219279234309

/-! ## A314246.P17889831922540550064

`or(A001221(A320950(n)), A314234(n))`
-/

namespace A314246.P17889831922540550064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A320950 n).toNat) (A314234 n)

end

end A314246.P17889831922540550064

/-! ## A314246.P16521998344177382890

`or(A314180(n), A327051(A209568(2*n+5)))`
-/

namespace A314246.P16521998344177382890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314180 n) (A327051 (A209568 (2 * n + 5)).toNat)

end

end A314246.P16521998344177382890

/-!
# A314247: Coordination sequence Gal.3.50.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314247, the canonical program `A314247.P7920899849790497135` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314247 has offset 0).

The definition of A314247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314247.P7920899849790497135

`A313110(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314247

/-- `A313110(n)+n` -/
def P7920899849790497135.Spec : Prop :=
  ∀ n, P7920899849790497135.a n = A314247 n

theorem P7920899849790497135.correct : P7920899849790497135.Spec := by
  intro n
  simp only [A314247]

end A314247

/-! ## A314247.P9609296910020694499

`A313791(n)+∑[char[or(2, n)]]`
-/

namespace A314247.P9609296910020694499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A314247.P9609296910020694499

namespace A314247

/-- `A313791(n)+∑[char[or(2, n)]]` -/
def P9609296910020694499.Spec : Prop :=
  ∀ n, P9609296910020694499.a n = A314247 n

end A314247

/-! ## A314247.P9939401248547568178

`A310461(n)+A004396(n)`
-/

namespace A314247.P9939401248547568178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310461 n + A004396 n

end

end A314247.P9939401248547568178

namespace A314247

/-- `A310461(n)+A004396(n)` -/
def P9939401248547568178.Spec : Prop :=
  ∀ n, P9939401248547568178.a n = A314247 n

end A314247

/-! ## A314247.P14300825479777066422

`A310511(n)+A004525(n)`
-/

namespace A314247.P14300825479777066422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n + A004525 n

end

end A314247.P14300825479777066422

namespace A314247

/-- `A310511(n)+A004525(n)` -/
def P14300825479777066422.Spec : Prop :=
  ∀ n, P14300825479777066422.a n = A314247 n

end A314247

/-! ## A314247.P2710448295932898451

`A271114(n)-A099480(n)`
-/

namespace A314247.P2710448295932898451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A099480 n

end

end A314247.P2710448295932898451

namespace A314247

/-- `A271114(n)-A099480(n)` -/
def P2710448295932898451.Spec : Prop :=
  ∀ n, P2710448295932898451.a n = A314247 n

end A314247

/-! ## A314247.P7541997772828215560

`A315693(n)-A128834(n)`
-/

namespace A314247.P7541997772828215560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - A128834 n

end

end A314247.P7541997772828215560

namespace A314247

/-- `A315693(n)-A128834(n)` -/
def P7541997772828215560.Spec : Prop :=
  ∀ n, P7541997772828215560.a n = A314247 n

end A314247

/-! ## A314247.P3569093976725524294

`A008706(n)+∑[A131735(n)]`
-/

namespace A314247.P3569093976725524294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314247.P3569093976725524294

namespace A314247

/-- `A008706(n)+∑[A131735(n)]` -/
def P3569093976725524294.Spec : Prop :=
  ∀ n, P3569093976725524294.a n = A314247 n

end A314247

/-! ## A314247.P11934459653325806575

`A301697(n)+∑[A022003(n)]`
-/

namespace A314247.P11934459653325806575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314247.P11934459653325806575

namespace A314247

/-- `A301697(n)+∑[A022003(n)]` -/
def P11934459653325806575.Spec : Prop :=
  ∀ n, P11934459653325806575.a n = A314247 n

end A314247

/-! ## A314247.P18107618651238768495

`A312065(n)+record[A283971(n)]`
-/

namespace A314247.P18107618651238768495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314247.P18107618651238768495

namespace A314247

/-- `A312065(n)+record[A283971(n)]` -/
def P18107618651238768495.Spec : Prop :=
  ∀ n, P18107618651238768495.a n = A314247 n

end A314247

/-! ## A314247.P14383995081533609827

`A301697(n)+A002264(n+1)`
-/

namespace A314247.P14383995081533609827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A002264 (n + 1)

end

end A314247.P14383995081533609827

namespace A314247

/-- `A301697(n)+A002264(n+1)` -/
def P14383995081533609827.Spec : Prop :=
  ∀ n, P14383995081533609827.a n = A314247 n

end A314247

/-! ## A314247.P457913856076457908

`A312065(n)+A042965(n+1)`
-/

namespace A314247.P457913856076457908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A042965 (n + 1)

end

end A314247.P457913856076457908

namespace A314247

/-- `A312065(n)+A042965(n+1)` -/
def P457913856076457908.Spec : Prop :=
  ∀ n, P457913856076457908.a n = A314247 n

end A314247

/-! ## A314247.P617357842552018355

`A312941(n)+A047318(n+1)`
-/

namespace A314247.P617357842552018355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312941 n + A047318 (n + 1)

end

end A314247.P617357842552018355

namespace A314247

/-- `A312941(n)+A047318(n+1)` -/
def P617357842552018355.Spec : Prop :=
  ∀ n, P617357842552018355.a n = A314247 n

end A314247

/-! ## A314247.P6331431323576153195

`A312901(n)+A047513(n+1)`
-/

namespace A314247.P6331431323576153195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n + A047513 (n + 1)

end

end A314247.P6331431323576153195

namespace A314247

/-- `A312901(n)+A047513(n+1)` -/
def P6331431323576153195.Spec : Prop :=
  ∀ n, P6331431323576153195.a n = A314247 n

end A314247

/-! ## A314247.P17871015601311225075

`A086161(n)+A301697(n)-1`
-/

namespace A314247.P17871015601311225075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n + (A301697 n - 1)

end

end A314247.P17871015601311225075

namespace A314247

/-- `A086161(n)+A301697(n)-1` -/
def P17871015601311225075.Spec : Prop :=
  ∀ n, P17871015601311225075.a n = A314247 n

end A314247

/-! ## A314247.P15527645160958916832

`A312065(n)+A004396(2*n)`
-/

namespace A314247.P15527645160958916832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A004396 (2 * n)

end

end A314247.P15527645160958916832

namespace A314247

/-- `A312065(n)+A004396(2*n)` -/
def P15527645160958916832.Spec : Prop :=
  ∀ n, P15527645160958916832.a n = A314247 n

end A314247

/-! ## A314247.P7101152943830324267

`A313791(n)+n-A004525(n)`
-/

namespace A314247.P7101152943830324267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n + ((n : ℤ) - A004525 n)

end

end A314247.P7101152943830324267

namespace A314247

/-- `A313791(n)+n-A004525(n)` -/
def P7101152943830324267.Spec : Prop :=
  ∀ n, P7101152943830324267.a n = A314247 n

theorem P7101152943830324267.correct : P7101152943830324267.Spec := by
  intro n
  simp only [A314247, Nat.add_sub_cancel, A314247.P7101152943830324267.a, A314247.P7920899849790497135.a, A004525, A004525.P4158271949796742323.a, A313110, A313110.P8718307215339103209.a, A313791, A313791.P11156003567688367397.a, A002264, A002264.P5647656940077635922.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314247

/-! ## A314247.P6046211470667984177

`A033627(2*(n+1))-A099480(n)`
-/

namespace A314247.P6046211470667984177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (2 * (n + 1)) - A099480 n

end

end A314247.P6046211470667984177

namespace A314247

/-- `A033627(2*(n+1))-A099480(n)` -/
def P6046211470667984177.Spec : Prop :=
  ∀ n, P6046211470667984177.a n = A314247 n

end A314247

/-! ## A314247.P17943623810255973989

`A008458(n)-A047424(n+1)+n`
-/

namespace A314247.P17943623810255973989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047424 (n + 1) + (n : ℤ)

end

end A314247.P17943623810255973989

namespace A314247

/-- `A008458(n)-A047424(n+1)+n` -/
def P17943623810255973989.Spec : Prop :=
  ∀ n, P17943623810255973989.a n = A314247 n

end A314247

/-! ## A314247.P2962819667533415652

`A315538(n)-A134667(n)`
-/

namespace A314247.P2962819667533415652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - A134667 n

end

end A314247.P2962819667533415652

namespace A314247

/-- `A315538(n)-A134667(n)` -/
def P2962819667533415652.Spec : Prop :=
  ∀ n, P2962819667533415652.a n = A314247 n

end A314247

/-!
# A314248: Coordination sequence Gal.6.631.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314248, there is no canonical definition to state claims against.
-/

/-! ## A314248.P12845839148527566308

`or(A133872(A137221(n)), A313930(n))`
-/

namespace A314248.P12845839148527566308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133872 (A137221 n).toNat) (A313930 n)

end

end A314248.P12845839148527566308

/-! ## A314248.P13518630712841615800

`floor(2/acot(3*n))-A071625(A061978(n+1))`
-/

namespace A314248.P13518630712841615800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ - A071625 (A061978 (n + 1)).toNat

end

end A314248.P13518630712841615800

/-! ## A314248.P11689197681567512001

`A313924(n)+A037800(A026787(n))`
-/

namespace A314248.P11689197681567512001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n + A037800 (A026787 n).toNat

end

end A314248.P11689197681567512001

/-! ## A314248.P16137073230800117064

`A314220(n)+A064692(A296968(n+1))`
-/

namespace A314248.P16137073230800117064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n + A064692 (A296968 (n + 1)).toNat

end

end A314248.P16137073230800117064

/-! ## A314248.P16428671089416607571

`A008458(n)-A323022(A083323(n))`
-/

namespace A314248.P16428671089416607571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A323022 (A083323 n).toNat

end

end A314248.P16428671089416607571

/-!
# A314249: Coordination sequence Gal.4.136.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314249, the canonical program `A314249.P1242883519195604286` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314249 has offset 0).

The definition of A314249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314249.P3248766861172374352

`A008706(n)+∑[floor(atan(n%7))]`
-/

namespace A314249.P3248766861172374352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((n % 7 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314249.P3248766861172374352

namespace A314249

/-- `A008706(n)+∑[floor(atan(n%7))]` -/
def P3248766861172374352.Spec : Prop :=
  ∀ n, P3248766861172374352.a n = A314249 n

end A314249

/-! ## A314249.P1242883519195604286

`A042965(A311914(n)+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314249

/-- `A042965(A311914(n)+1)` -/
def P1242883519195604286.Spec : Prop :=
  ∀ n, P1242883519195604286.a n = A314249 n

theorem P1242883519195604286.correct : P1242883519195604286.Spec := by
  intro n
  simp only [A314249]

end A314249

/-! ## A314249.P14176284700827412695

`A315541(n)-A238469(n)`
-/

namespace A314249.P14176284700827412695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315541 n - A238469 n

end

end A314249.P14176284700827412695

namespace A314249

/-- `A315541(n)-A238469(n)` -/
def P14176284700827412695.Spec : Prop :=
  ∀ n, P14176284700827412695.a n = A314249 n

end A314249

/-! ## A314249.P3679699723727585883

`abs(A008592(n)-A314674(n))`
-/

namespace A314249.P3679699723727585883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314674 n|

end

end A314249.P3679699723727585883

namespace A314249

/-- `abs(A008592(n)-A314674(n))` -/
def P3679699723727585883.Spec : Prop :=
  ∀ n, P3679699723727585883.a n = A314249 n

end A314249

/-! ## A314249.P4761411826285502264

`A191275(n+1)+A008574(n)`
-/

namespace A314249.P4761411826285502264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + A008574 n

end

end A314249.P4761411826285502264

namespace A314249

/-- `A191275(n+1)+A008574(n)` -/
def P4761411826285502264.Spec : Prop :=
  ∀ n, P4761411826285502264.a n = A314249 n

end A314249

/-! ## A314249.P16348481810568689333

`A311273(n)+A047486(n+1)`
-/

namespace A314249.P16348481810568689333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311273 n + A047486 (n + 1)

end

end A314249.P16348481810568689333

namespace A314249

/-- `A311273(n)+A047486(n+1)` -/
def P16348481810568689333.Spec : Prop :=
  ∀ n, P16348481810568689333.a n = A314249 n

end A314249

/-! ## A314249.P9653385694317069852

`A313051(n)+A047588(n+1)`
-/

namespace A314249.P9653385694317069852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + A047588 (n + 1)

end

end A314249.P9653385694317069852

namespace A314249

/-- `A313051(n)+A047588(n+1)` -/
def P9653385694317069852.Spec : Prop :=
  ∀ n, P9653385694317069852.a n = A314249 n

end A314249

/-! ## A314249.P5160715838599482938

`(A310529(n)+A008458(n))/2`
-/

namespace A314249.P5160715838599482938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310529 n + A008458 n : ℚ) / 2

end

end A314249.P5160715838599482938

namespace A314249

/-- `(A310529(n)+A008458(n))/2` -/
def P5160715838599482938.Spec : Prop :=
  ∀ n, P5160715838599482938.a n = (A314249 n : ℚ)

end A314249

/-! ## A314249.P16974302415430637996

`A315541(n)-A238470(2*n)`
-/

namespace A314249.P16974302415430637996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315541 n - A238470 (2 * n)

end

end A314249.P16974302415430637996

namespace A314249

/-- `A315541(n)-A238470(2*n)` -/
def P16974302415430637996.Spec : Prop :=
  ∀ n, P16974302415430637996.a n = A314249 n

end A314249

/-! ## A314249.P17585130304302756524

`A314040(n)+Δ[2*A011860(n)]`
-/

namespace A314249.P17585130304302756524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n + (f1 (n + 1) - f1 n)

end

end A314249.P17585130304302756524

namespace A314249

/-- `A314040(n)+Δ[2*A011860(n)]` -/
def P17585130304302756524.Spec : Prop :=
  ∀ n, P17585130304302756524.a n = A314249 n

end A314249

/-! ## A314249.P5196954179158815310

`A191275(n+1)+A008486(n)+n`
-/

namespace A314249.P5196954179158815310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + (A008486 n + (n : ℤ))

end

end A314249.P5196954179158815310

namespace A314249

/-- `A191275(n+1)+A008486(n)+n` -/
def P5196954179158815310.Spec : Prop :=
  ∀ n, P5196954179158815310.a n = A314249 n

end A314249

/-! ## A314249.P1871112946216808775

`A191275(n+1)+A004275(2*n+1)`
-/

namespace A314249.P1871112946216808775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + A004275 (2 * n + 1)

end

end A314249.P1871112946216808775

namespace A314249

/-- `A191275(n+1)+A004275(2*n+1)` -/
def P1871112946216808775.Spec : Prop :=
  ∀ n, P1871112946216808775.a n = A314249 n

end A314249

/-! ## A314249.P4843370179694961495

`A191275(n+1)+A004277(A005843(n))`
-/

namespace A314249.P4843370179694961495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + A004277 (A005843 n).toNat

end

end A314249.P4843370179694961495

namespace A314249

/-- `A191275(n+1)+A004277(A005843(n))` -/
def P4843370179694961495.Spec : Prop :=
  ∀ n, P4843370179694961495.a n = A314249 n

end A314249

/-! ## A314249.P3151585017515591496

`A008458(n)+A008574(n)-A314674(n)`
-/

namespace A314249.P3151585017515591496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314674 n)

end

end A314249.P3151585017515591496

namespace A314249

/-- `A008458(n)+A008574(n)-A314674(n)` -/
def P3151585017515591496.Spec : Prop :=
  ∀ n, P3151585017515591496.a n = A314249 n

end A314249

/-! ## A314249.P13282744575155433462

`A301718(n)+A311273(n)-A008574(n)`
-/

namespace A314249.P13282744575155433462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A311273 n - A008574 n)

end

end A314249.P13282744575155433462

namespace A314249

/-- `A301718(n)+A311273(n)-A008574(n)` -/
def P13282744575155433462.Spec : Prop :=
  ∀ n, P13282744575155433462.a n = A314249 n

end A314249

/-! ## A314249.P1851055223797020163

`A315032(2*n)-4*n`
-/

namespace A314249.P1851055223797020163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 (2 * n) - (4 * n : ℤ)

end

end A314249.P1851055223797020163

namespace A314249

/-- `A315032(2*n)-4*n` -/
def P1851055223797020163.Spec : Prop :=
  ∀ n, P1851055223797020163.a n = A314249 n

end A314249

/-! ## A314249.P7861791506751467821

`2*A008574(2*n)-A314040(2*n)`
-/

namespace A314249.P7861791506751467821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314040 (2 * n)

end

end A314249.P7861791506751467821

namespace A314249

/-- `2*A008574(2*n)-A314040(2*n)` -/
def P7861791506751467821.Spec : Prop :=
  ∀ n, P7861791506751467821.a n = A314249 n

end A314249

/-! ## A314249.P10440259352859771149

`A004396(A311914(2*n))`
-/

namespace A314249.P10440259352859771149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311914 (2 * n)).toNat

end

end A314249.P10440259352859771149

namespace A314249

/-- `A004396(A311914(2*n))` -/
def P10440259352859771149.Spec : Prop :=
  ∀ n, P10440259352859771149.a n = A314249 n

end A314249

/-! ## A314249.P15111133643627268374

`A004396(A312289(2*n))`
-/

namespace A314249.P15111133643627268374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312289 (2 * n)).toNat

end

end A314249.P15111133643627268374

namespace A314249

/-- `A004396(A312289(2*n))` -/
def P15111133643627268374.Spec : Prop :=
  ∀ n, P15111133643627268374.a n = A314249 n

end A314249

/-! ## A314249.P159481053991497923

`A131737(A311914(2*n)+1)`
-/

namespace A314249.P159481053991497923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A311914 (2 * n) + 1).toNat

end

end A314249.P159481053991497923

namespace A314249

/-- `A131737(A311914(2*n)+1)` -/
def P159481053991497923.Spec : Prop :=
  ∀ n, P159481053991497923.a n = A314249 n

end A314249

/-!
# A314250: Coordination sequence Gal.4.137.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314250, the canonical program `A314250.P3588750543650791249` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314250 has offset 0).

The definition of A314250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314250.P3588750543650791249

`A313115(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314250

/-- `A313115(n)+n` -/
def P3588750543650791249.Spec : Prop :=
  ∀ n, P3588750543650791249.a n = A314250 n

theorem P3588750543650791249.correct : P3588750543650791249.Spec := by
  intro n
  simp only [A314250]

end A314250

/-! ## A314250.P6879726345535517861

`abs(11*n-A315469(n))`
-/

namespace A314250.P6879726345535517861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A315469 n|

end

end A314250.P6879726345535517861

namespace A314250

/-- `abs(11*n-A315469(n))` -/
def P6879726345535517861.Spec : Prop :=
  ∀ n, P6879726345535517861.a n = A314250 n

end A314250

/-! ## A314250.P12075912659998867562

`A313793(n)+∑[char[or(2, n)]]`
-/

namespace A314250.P12075912659998867562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A314250.P12075912659998867562

namespace A314250

/-- `A313793(n)+∑[char[or(2, n)]]` -/
def P12075912659998867562.Spec : Prop :=
  ∀ n, P12075912659998867562.a n = A314250 n

end A314250

/-! ## A314250.P1382998270370464006

`A315745(n)-A046978(n)`
-/

namespace A314250.P1382998270370464006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315745 n - A046978 n

end

end A314250.P1382998270370464006

namespace A314250

/-- `A315745(n)-A046978(n)` -/
def P1382998270370464006.Spec : Prop :=
  ∀ n, P1382998270370464006.a n = A314250 n

end A314250

/-! ## A314250.P4759030231673527658

`abs(A008592(n)-A314672(n))`
-/

namespace A314250.P4759030231673527658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314672 n|

end

end A314250.P4759030231673527658

namespace A314250

/-- `abs(A008592(n)-A314672(n))` -/
def P4759030231673527658.Spec : Prop :=
  ∀ n, P4759030231673527658.a n = A314250 n

end A314250

/-! ## A314250.P9052466676548089934

`A314161(n)+Δ[A011861(n)]`
-/

namespace A314250.P9052466676548089934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n + (f1 (n + 1) - f1 n)

end

end A314250.P9052466676548089934

namespace A314250

/-- `A314161(n)+Δ[A011861(n)]` -/
def P9052466676548089934.Spec : Prop :=
  ∀ n, P9052466676548089934.a n = A314250 n

end A314250

/-! ## A314250.P5954630532482481912

`A311501(n)+A047273(n+1)`
-/

namespace A314250.P5954630532482481912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + A047273 (n + 1)

end

end A314250.P5954630532482481912

namespace A314250

/-- `A311501(n)+A047273(n+1)` -/
def P5954630532482481912.Spec : Prop :=
  ∀ n, P5954630532482481912.a n = A314250 n

end A314250

/-! ## A314250.P12245542659605562149

`A314123(n)+A194225(n+1)`
-/

namespace A314250.P12245542659605562149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n + A194225 (n + 1)

end

end A314250.P12245542659605562149

namespace A314250

/-- `A314123(n)+A194225(n+1)` -/
def P12245542659605562149.Spec : Prop :=
  ∀ n, P12245542659605562149.a n = A314250 n

end A314250

/-! ## A314250.P7926182026315333693

`A311501(n)+A004525(3*n)`
-/

namespace A314250.P7926182026315333693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + A004525 (3 * n)

end

end A314250.P7926182026315333693

namespace A314250

/-- `A311501(n)+A004525(3*n)` -/
def P7926182026315333693.Spec : Prop :=
  ∀ n, P7926182026315333693.a n = A314250 n

end A314250

/-! ## A314250.P16080469264913788108

`(A310530(n)+A008458(n))/2`
-/

namespace A314250.P16080469264913788108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310530 n + A008458 n : ℚ) / 2

end

end A314250.P16080469264913788108

namespace A314250

/-- `(A310530(n)+A008458(n))/2` -/
def P16080469264913788108.Spec : Prop :=
  ∀ n, P16080469264913788108.a n = (A314250 n : ℚ)

end A314250

/-! ## A314250.P11274068196119214831

`A313793(n)+n-A004525(n)`
-/

namespace A314250.P11274068196119214831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n + ((n : ℤ) - A004525 n)

end

end A314250.P11274068196119214831

namespace A314250

/-- `A313793(n)+n-A004525(n)` -/
def P11274068196119214831.Spec : Prop :=
  ∀ n, P11274068196119214831.a n = A314250 n

theorem P11274068196119214831.correct : P11274068196119214831.Spec := by
  intro n
  simp only [A314250, Nat.add_sub_cancel, A314250.P11274068196119214831.a, A314250.P3588750543650791249.a, A004525, A004525.P4158271949796742323.a, A313115, A313115.P1984220492497243584.a, A313793, A313793.P9174122524385542970.a, A311501, A311501.P3617403906977629789.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314250

/-! ## A314250.P14779017691602128838

`A313685(n)+n-A046978(n)`
-/

namespace A314250.P14779017691602128838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + ((n : ℤ) - A046978 n)

end

end A314250.P14779017691602128838

namespace A314250

/-- `A313685(n)+n-A046978(n)` -/
def P14779017691602128838.Spec : Prop :=
  ∀ n, P14779017691602128838.a n = A314250 n

end A314250

/-! ## A314250.P1026023365949072112

`A315020(n)+n-A188510(n)`
-/

namespace A314250.P1026023365949072112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n + ((n : ℤ) - A188510 n)

end

end A314250.P1026023365949072112

namespace A314250

/-- `A315020(n)+n-A188510(n)` -/
def P1026023365949072112.Spec : Prop :=
  ∀ n, P1026023365949072112.a n = A314250 n

end A314250

/-! ## A314250.P15093451533593899942

`A310530(n)+A004525(A004525(n))`
-/

namespace A314250.P15093451533593899942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 n + A004525 (A004525 n).toNat

end

end A314250.P15093451533593899942

namespace A314250

/-- `A310530(n)+A004525(A004525(n))` -/
def P15093451533593899942.Spec : Prop :=
  ∀ n, P15093451533593899942.a n = A314250 n

end A314250

/-! ## A314250.P10077120912765974957

`A008458(n)-A004525(A004525(n))`
-/

namespace A314250.P10077120912765974957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A004525 n).toNat

end

end A314250.P10077120912765974957

namespace A314250

/-- `A008458(n)-A004525(A004525(n))` -/
def P10077120912765974957.Spec : Prop :=
  ∀ n, P10077120912765974957.a n = A314250 n

end A314250

/-! ## A314250.P7707876243794270400

`record[A165998(n)]-A004525(A004525(n))`
-/

namespace A314250.P7707876243794270400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004525 (A004525 n).toNat

end

end A314250.P7707876243794270400

namespace A314250

/-- `record[A165998(n)]-A004525(A004525(n))` -/
def P7707876243794270400.Spec : Prop :=
  ∀ n, P7707876243794270400.a n = A314250 n

end A314250

/-! ## A314250.P11747630463305075409

`A008486(2*n)-A004525(A004525(n))`
-/

namespace A314250.P11747630463305075409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004525 (A004525 n).toNat

end

end A314250.P11747630463305075409

namespace A314250

/-- `A008486(2*n)-A004525(A004525(n))` -/
def P11747630463305075409.Spec : Prop :=
  ∀ n, P11747630463305075409.a n = A314250 n

end A314250

/-! ## A314250.P5623653712277845079

`A004277(3*n)-A004525(A004525(n))`
-/

namespace A314250.P5623653712277845079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n) - A004525 (A004525 n).toNat

end

end A314250.P5623653712277845079

namespace A314250

/-- `A004277(3*n)-A004525(A004525(n))` -/
def P5623653712277845079.Spec : Prop :=
  ∀ n, P5623653712277845079.a n = A314250 n

end A314250

/-! ## A314250.P8073438346431431503

`A310458(n)+A004525(A004525(n)+n)`
-/

namespace A314250.P8073438346431431503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A314250.P8073438346431431503

namespace A314250

/-- `A310458(n)+A004525(A004525(n)+n)` -/
def P8073438346431431503.Spec : Prop :=
  ∀ n, P8073438346431431503.a n = A314250 n

end A314250

/-! ## A314250.P2852290229075749805

`A008706(n)+n-A004525(A004525(n))`
-/

namespace A314250.P2852290229075749805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A314250.P2852290229075749805

namespace A314250

/-- `A008706(n)+n-A004525(A004525(n))` -/
def P2852290229075749805.Spec : Prop :=
  ∀ n, P2852290229075749805.a n = A314250 n

end A314250

/-!
# A314251: Coordination sequence Gal.5.294.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314251, the canonical program `A314251.P8552691768143809971` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314251 has offset 0).

The definition of A314251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2087 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314251.P14759990110542503197

`A310462(n)+A004396(n)`
-/

namespace A314251.P14759990110542503197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310462 n + A004396 n

end

end A314251.P14759990110542503197

namespace A314251

/-- `A310462(n)+A004396(n)` -/
def P14759990110542503197.Spec : Prop :=
  ∀ n, P14759990110542503197.a n = A314251 n

end A314251

/-! ## A314251.P12762492762367436325

`abs(A008592(n)-A314671(n))`
-/

namespace A314251.P12762492762367436325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314671 n|

end

end A314251.P12762492762367436325

namespace A314251

/-- `abs(A008592(n)-A314671(n))` -/
def P12762492762367436325.Spec : Prop :=
  ∀ n, P12762492762367436325.a n = A314251 n

end A314251

/-! ## A314251.P12244389099136328671

`A312100(n)+∑[A101825(n)]`
-/

namespace A314251.P12244389099136328671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314251.P12244389099136328671

namespace A314251

/-- `A312100(n)+∑[A101825(n)]` -/
def P12244389099136328671.Spec : Prop :=
  ∀ n, P12244389099136328671.a n = A314251 n

end A314251

/-! ## A314251.P8552691768143809971

`A314163(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314251

/-- `A314163(n)+Δ[A011862(n)]` -/
def P8552691768143809971.Spec : Prop :=
  ∀ n, P8552691768143809971.a n = A314251 n

theorem P8552691768143809971.correct : P8552691768143809971.Spec := by
  intro n
  simp only [A314251]

end A314251

/-! ## A314251.P6442816187719716203

`A312100(n)+record[A283971(n)]`
-/

namespace A314251.P6442816187719716203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314251.P6442816187719716203

namespace A314251

/-- `A312100(n)+record[A283971(n)]` -/
def P6442816187719716203.Spec : Prop :=
  ∀ n, P6442816187719716203.a n = A314251 n

end A314251

/-! ## A314251.P13416248577242704108

`A312100(n)+A042965(n+1)`
-/

namespace A314251.P13416248577242704108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A042965 (n + 1)

end

end A314251.P13416248577242704108

namespace A314251

/-- `A312100(n)+A042965(n+1)` -/
def P13416248577242704108.Spec : Prop :=
  ∀ n, P13416248577242704108.a n = A314251 n

end A314251

/-! ## A314251.P17905968755913211874

`A042965(A313894(n)+1-n)`
-/

namespace A314251.P17905968755913211874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A313894 n + (1 - (n : ℤ))).toNat

end

end A314251.P17905968755913211874

namespace A314251

/-- `A042965(A313894(n)+1-n)` -/
def P17905968755913211874.Spec : Prop :=
  ∀ n, P17905968755913211874.a n = A314251 n

end A314251

/-! ## A314251.P13121027350688507404

`A042965(1-(n-A313894(n)))`
-/

namespace A314251.P13121027350688507404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (1 - ((n : ℤ) - A313894 n)).toNat

end

end A314251.P13121027350688507404

namespace A314251

/-- `A042965(1-(n-A313894(n)))` -/
def P13121027350688507404.Spec : Prop :=
  ∀ n, P13121027350688507404.a n = A314251 n

end A314251

/-! ## A314251.P260027167201034646

`A312100(n)+A004396(2*n)`
-/

namespace A314251.P260027167201034646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A004396 (2 * n)

end

end A314251.P260027167201034646

namespace A314251

/-- `A312100(n)+A004396(2*n)` -/
def P260027167201034646.Spec : Prop :=
  ∀ n, P260027167201034646.a n = A314251 n

end A314251

/-! ## A314251.P10192897852676896257

`(A310531(n)+A008458(n))/2`
-/

namespace A314251.P10192897852676896257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310531 n + A008458 n : ℚ) / 2

end

end A314251.P10192897852676896257

namespace A314251

/-- `(A310531(n)+A008458(n))/2` -/
def P10192897852676896257.Spec : Prop :=
  ∀ n, P10192897852676896257.a n = (A314251 n : ℚ)

end A314251

/-! ## A314251.P17891023467045411880

`A310462(n)+A002264(2*n+1)`
-/

namespace A314251.P17891023467045411880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310462 n + A002264 (2 * n + 1)

end

end A314251.P17891023467045411880

namespace A314251

/-- `A310462(n)+A002264(2*n+1)` -/
def P17891023467045411880.Spec : Prop :=
  ∀ n, P17891023467045411880.a n = A314251 n

end A314251

/-! ## A314251.P8553089942745227089

`A310462(n)+A004525(A004773(n))`
-/

namespace A314251.P8553089942745227089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310462 n + A004525 (A004773 n).toNat

end

end A314251.P8553089942745227089

namespace A314251

/-- `A310462(n)+A004525(A004773(n))` -/
def P8553089942745227089.Spec : Prop :=
  ∀ n, P8553089942745227089.a n = A314251 n

end A314251

/-! ## A314251.P15137274560244394702

`A313927(n)+A004396(n-A004396(n))`
-/

namespace A314251.P15137274560244394702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313927 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314251.P15137274560244394702

namespace A314251

/-- `A313927(n)+A004396(n-A004396(n))` -/
def P15137274560244394702.Spec : Prop :=
  ∀ n, P15137274560244394702.a n = A314251 n

end A314251

/-! ## A314251.P7670876973572153471

`A008574(n)+A312100(n)-A008576(n)`
-/

namespace A314251.P7670876973572153471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A312100 n - A008576 n)

end

end A314251.P7670876973572153471

namespace A314251

/-- `A008574(n)+A312100(n)-A008576(n)` -/
def P7670876973572153471.Spec : Prop :=
  ∀ n, P7670876973572153471.a n = A314251 n

end A314251

/-! ## A314251.P3343507518338641316

`A008458(n)+A008574(n)-A314671(n)`
-/

namespace A314251.P3343507518338641316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314671 n)

end

end A314251.P3343507518338641316

namespace A314251

/-- `A008458(n)+A008574(n)-A314671(n)` -/
def P3343507518338641316.Spec : Prop :=
  ∀ n, P3343507518338641316.a n = A314251 n

end A314251

/-! ## A314251.P475839598624561536

`A005843(A008574(n)+n)-A314671(n)`
-/

namespace A314251.P475839598624561536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314671 n

end

end A314251.P475839598624561536

namespace A314251

/-- `A005843(A008574(n)+n)-A314671(n)` -/
def P475839598624561536.Spec : Prop :=
  ∀ n, P475839598624561536.a n = A314251 n

end A314251

/-! ## A314251.P14435165789032163611

`A004396(A313100(n)+n)+2*n`
-/

namespace A314251.P14435165789032163611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313100 n + (n : ℤ)).toNat + (2 * n : ℤ)

end

end A314251.P14435165789032163611

namespace A314251

/-- `A004396(A313100(n)+n)+2*n` -/
def P14435165789032163611.Spec : Prop :=
  ∀ n, P14435165789032163611.a n = A314251 n

end A314251

/-! ## A314251.P11612869599519880388

`A005843(n)+A004396(A312160(n)+n)`
-/

namespace A314251.P11612869599519880388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312160 n + (n : ℤ)).toNat

end

end A314251.P11612869599519880388

namespace A314251

/-- `A005843(n)+A004396(A312160(n)+n)` -/
def P11612869599519880388.Spec : Prop :=
  ∀ n, P11612869599519880388.a n = A314251 n

end A314251

/-! ## A314251.P6503316737212624746

`A315033(2*n)-4*n`
-/

namespace A314251.P6503316737212624746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 (2 * n) - (4 * n : ℤ)

end

end A314251.P6503316737212624746

namespace A314251

/-- `A315033(2*n)-4*n` -/
def P6503316737212624746.Spec : Prop :=
  ∀ n, P6503316737212624746.a n = A314251 n

end A314251

/-! ## A314251.P744018397269529261

`A004525(A315546(2*n))`
-/

namespace A314251.P744018397269529261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315546 (2 * n)).toNat

end

end A314251.P744018397269529261

namespace A314251

/-- `A004525(A315546(2*n))` -/
def P744018397269529261.Spec : Prop :=
  ∀ n, P744018397269529261.a n = A314251 n

end A314251

/-!
# A314252: Coordination sequence Gal.5.295.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314252, the canonical program `A314252.P9634804335758676249` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314252 has offset 0).

The definition of A314252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314252.P9634804335758676249

`A313116(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314252

/-- `A313116(n)+n` -/
def P9634804335758676249.Spec : Prop :=
  ∀ n, P9634804335758676249.a n = A314252 n

theorem P9634804335758676249.correct : P9634804335758676249.Spec := by
  intro n
  simp only [A314252]

end A314252

/-! ## A314252.P9689304208183041205

`A313090(n)+A151988(n)`
-/

namespace A314252.P9689304208183041205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 n + A151988 n

end

end A314252.P9689304208183041205

namespace A314252

/-- `A313090(n)+A151988(n)` -/
def P9689304208183041205.Spec : Prop :=
  ∀ n, P9689304208183041205.a n = A314252 n

end A314252

/-! ## A314252.P6268263318312368383

`abs(A008592(n)-A314670(n))`
-/

namespace A314252.P6268263318312368383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314670 n|

end

end A314252.P6268263318312368383

namespace A314252

/-- `abs(A008592(n)-A314670(n))` -/
def P6268263318312368383.Spec : Prop :=
  ∀ n, P6268263318312368383.a n = A314252 n

end A314252

/-! ## A314252.P11826603383677815876

`A311289(n)+A047486(n+1)`
-/

namespace A314252.P11826603383677815876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A047486 (n + 1)

end

end A314252.P11826603383677815876

namespace A314252

/-- `A311289(n)+A047486(n+1)` -/
def P11826603383677815876.Spec : Prop :=
  ∀ n, P11826603383677815876.a n = A314252 n

end A314252

/-! ## A314252.P12196062027698266275

`A311958(n)+A047299(n+1)`
-/

namespace A314252.P12196062027698266275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 n + A047299 (n + 1)

end

end A314252.P12196062027698266275

namespace A314252

/-- `A311958(n)+A047299(n+1)` -/
def P12196062027698266275.Spec : Prop :=
  ∀ n, P12196062027698266275.a n = A314252 n

end A314252

/-! ## A314252.P17432978011669061042

`A312948(n)+A047263(n+1)`
-/

namespace A314252.P17432978011669061042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n + A047263 (n + 1)

end

end A314252.P17432978011669061042

namespace A314252

/-- `A312948(n)+A047263(n+1)` -/
def P17432978011669061042.Spec : Prop :=
  ∀ n, P17432978011669061042.a n = A314252 n

end A314252

/-! ## A314252.P13289771423524753464

`A311157(n)+A191275(n+1)`
-/

namespace A314252.P13289771423524753464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311157 n + A191275 (n + 1)

end

end A314252.P13289771423524753464

namespace A314252

/-- `A311157(n)+A191275(n+1)` -/
def P13289771423524753464.Spec : Prop :=
  ∀ n, P13289771423524753464.a n = A314252 n

end A314252

/-! ## A314252.P3732589728319222073

`(A310532(n)+A008458(n))/2`
-/

namespace A314252.P3732589728319222073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310532 n + A008458 n : ℚ) / 2

end

end A314252.P3732589728319222073

namespace A314252

/-- `(A310532(n)+A008458(n))/2` -/
def P3732589728319222073.Spec : Prop :=
  ∀ n, P3732589728319222073.a n = (A314252 n : ℚ)

end A314252

/-! ## A314252.P14690704005400695513

`A314087(n)+n-A253262(n)`
-/

namespace A314252.P14690704005400695513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314087 n + ((n : ℤ) - A253262 n)

end

end A314252.P14690704005400695513

namespace A314252

/-- `A314087(n)+n-A253262(n)` -/
def P14690704005400695513.Spec : Prop :=
  ∀ n, P14690704005400695513.a n = A314252 n

end A314252

/-! ## A314252.P15464222779992316360

`A313719(n)+n-A330025(n)`
-/

namespace A314252.P15464222779992316360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + ((n : ℤ) - A330025 n)

end

end A314252.P15464222779992316360

namespace A314252

/-- `A313719(n)+n-A330025(n)` -/
def P15464222779992316360.Spec : Prop :=
  ∀ n, P15464222779992316360.a n = A314252 n

end A314252

/-! ## A314252.P17674558666069359812

`A005843(n)-(n-A313116(n))`
-/

namespace A314252.P17674558666069359812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313116 n)

end

end A314252.P17674558666069359812

namespace A314252

/-- `A005843(n)-(n-A313116(n))` -/
def P17674558666069359812.Spec : Prop :=
  ∀ n, P17674558666069359812.a n = A314252 n

theorem P17674558666069359812.correct : P17674558666069359812.Spec := by
  intro n
  simp only [A314252, Nat.add_sub_cancel, A314252.P17674558666069359812.a, A314252.P9634804335758676249.a, A005843, A005843.P3167286115683555970.a, A313116, A313116.P8612234978426201844.a, A312162, A312162.P8460047677510331873.a, A330025, A330025.P8729701065839544525.a, A008574, A008574.P1300280032690682112.a, A047263, A047263.P10177617567604490545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314252

/-! ## A314252.P647852439487063761

`abs(A008592(n)+n-A315468(n))`
-/

namespace A314252.P647852439487063761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A315468 n)|

end

end A314252.P647852439487063761

namespace A314252

/-- `abs(A008592(n)+n-A315468(n))` -/
def P647852439487063761.Spec : Prop :=
  ∀ n, P647852439487063761.a n = A314252 n

end A314252

/-! ## A314252.P14170206600040748557

`Δ[A011858(n)]+A311958(n)+n`
-/

namespace A314252.P14170206600040748557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A311958 n + (n : ℤ))

end

end A314252.P14170206600040748557

namespace A314252

/-- `Δ[A011858(n)]+A311958(n)+n` -/
def P14170206600040748557.Spec : Prop :=
  ∀ n, P14170206600040748557.a n = A314252 n

end A314252

/-! ## A314252.P9357802820685663962

`(A310532(n)+A008574(n))/2+n`
-/

namespace A314252.P9357802820685663962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310532 n + A008574 n : ℚ) / 2 + (n : ℚ)

end

end A314252.P9357802820685663962

namespace A314252

/-- `(A310532(n)+A008574(n))/2+n` -/
def P9357802820685663962.Spec : Prop :=
  ∀ n, P9357802820685663962.a n = (A314252 n : ℚ)

end A314252

/-! ## A314252.P12675388906944614680

`A312948(n)+A057354(A016777(n))`
-/

namespace A314252.P12675388906944614680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n + A057354 (A016777 n).toNat

end

end A314252.P12675388906944614680

namespace A314252

/-- `A312948(n)+A057354(A016777(n))` -/
def P12675388906944614680.Spec : Prop :=
  ∀ n, P12675388906944614680.a n = A314252 n

end A314252

/-! ## A314252.P17285423250437664238

`A008458(n)+A008574(n)-A314670(n)`
-/

namespace A314252.P17285423250437664238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314670 n)

end

end A314252.P17285423250437664238

namespace A314252

/-- `A008458(n)+A008574(n)-A314670(n)` -/
def P17285423250437664238.Spec : Prop :=
  ∀ n, P17285423250437664238.a n = A314252 n

end A314252

/-! ## A314252.P17462167479764036597

`A005843(n)+A005843(A008574(n))-A314670(n)`
-/

namespace A314252.P17462167479764036597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314670 n)

end

end A314252.P17462167479764036597

namespace A314252

/-- `A005843(n)+A005843(A008574(n))-A314670(n)` -/
def P17462167479764036597.Spec : Prop :=
  ∀ n, P17462167479764036597.a n = A314252 n

end A314252

/-! ## A314252.P6834559397570046569

`A315761(n)-A330025(n)`
-/

namespace A314252.P6834559397570046569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - A330025 n

end

end A314252.P6834559397570046569

namespace A314252

/-- `A315761(n)-A330025(n)` -/
def P6834559397570046569.Spec : Prop :=
  ∀ n, P6834559397570046569.a n = A314252 n

theorem P6834559397570046569.correct : P6834559397570046569.Spec := by
  intro n
  simp only [A314252, Nat.add_sub_cancel, A314252.P6834559397570046569.a, A314252.P9634804335758676249.a, A313116, A313116.P8612234978426201844.a, A315761, A315761.P1947908363640495384.a, A330025, A330025.P8729701065839544525.a, A312162, A312162.P8460047677510331873.a, A008574, A008574.P1300280032690682112.a, A047263, A047263.P10177617567604490545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314252

/-! ## A314252.P11250416826897562513

`A005843(A008574(n)+n)-A314670(n)`
-/

namespace A314252.P11250416826897562513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314670 n

end

end A314252.P11250416826897562513

namespace A314252

/-- `A005843(A008574(n)+n)-A314670(n)` -/
def P11250416826897562513.Spec : Prop :=
  ∀ n, P11250416826897562513.a n = A314252 n

end A314252

/-! ## A314252.P8738908848278854948

`A005843(A008458(n))-(A315468(n)+n)`
-/

namespace A314252.P8738908848278854948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n).toNat - (A315468 n + (n : ℤ))

end

end A314252.P8738908848278854948

namespace A314252

/-- `A005843(A008458(n))-(A315468(n)+n)` -/
def P8738908848278854948.Spec : Prop :=
  ∀ n, P8738908848278854948.a n = A314252 n

end A314252

/-!
# A314253: Coordination sequence Gal.6.627.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314253, the canonical program `A314253.P2574229848549978750` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314253 has offset 0).

The definition of A314253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314253.P3230255329788929148

`A042965(A311932(n)+1)`
-/

namespace A314253.P3230255329788929148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A311932 n + 1).toNat

end

end A314253.P3230255329788929148

namespace A314253

/-- `A042965(A311932(n)+1)` -/
def P3230255329788929148.Spec : Prop :=
  ∀ n, P3230255329788929148.a n = A314253 n

end A314253

/-! ## A314253.P2574229848549978750

`abs(A008592(n)-A314669(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314253

/-- `abs(A008592(n)-A314669(n))` -/
def P2574229848549978750.Spec : Prop :=
  ∀ n, P2574229848549978750.a n = A314253 n

theorem P2574229848549978750.correct : P2574229848549978750.Spec := by
  intro n
  simp only [A314253]

end A314253

/-! ## A314253.P6142145841177880822

`(A310533(n)+A008458(n))/2`
-/

namespace A314253.P6142145841177880822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310533 n + A008458 n : ℚ) / 2

end

end A314253.P6142145841177880822

namespace A314253

/-- `(A310533(n)+A008458(n))/2` -/
def P6142145841177880822.Spec : Prop :=
  ∀ n, P6142145841177880822.a n = (A314253 n : ℚ)

theorem P6142145841177880822.correct : P6142145841177880822.Spec := by
  intro n
  simp only [A314253, Nat.add_sub_cancel, A314253.P6142145841177880822.a, A314253.P2574229848549978750.a, A008458, A008458.P7339383310184415644.a, A008592, A008592.P4981059802862696142.a, A310533, A310533.P10206175859937310339.a, A314669, A314669.P15172117768028029009.a, A004525, A004525.P4158271949796742323.a, A314707, A314707.P15635996145671668947.f1, A314707.P15635996145671668947.a, A011864, A011864.P3547417513882699266.a, A314837, A314837.P13056047557632493089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314253

/-! ## A314253.P15803359297887114333

`A311932(n)+A002264(A311932(n)+1)`
-/

namespace A314253.P15803359297887114333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A002264 (A311932 n + 1).toNat

end

end A314253.P15803359297887114333

namespace A314253

/-- `A311932(n)+A002264(A311932(n)+1)` -/
def P15803359297887114333.Spec : Prop :=
  ∀ n, P15803359297887114333.a n = A314253 n

end A314253

/-! ## A314253.P5786311222468136897

`A005843(A008574(n)+n)-A314669(n)`
-/

namespace A314253.P5786311222468136897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314669 n

end

end A314253.P5786311222468136897

namespace A314253

/-- `A005843(A008574(n)+n)-A314669(n)` -/
def P5786311222468136897.Spec : Prop :=
  ∀ n, P5786311222468136897.a n = A314253 n

end A314253

/-! ## A314253.P9185594529258632419

`A008458(n)+A008574(n)-A314669(n)`
-/

namespace A314253.P9185594529258632419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314669 n)

end

end A314253.P9185594529258632419

namespace A314253

/-- `A008458(n)+A008574(n)-A314669(n)` -/
def P9185594529258632419.Spec : Prop :=
  ∀ n, P9185594529258632419.a n = A314253 n

end A314253

/-! ## A314253.P2488312530398145931

`A310533(n)+A004525(A008458(n)-A310533(n))`
-/

namespace A314253.P2488312530398145931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310533 n + A004525 (A008458 n - A310533 n).toNat

end

end A314253.P2488312530398145931

namespace A314253

/-- `A310533(n)+A004525(A008458(n)-A310533(n))` -/
def P2488312530398145931.Spec : Prop :=
  ∀ n, P2488312530398145931.a n = A314253 n

end A314253

/-! ## A314253.P7509062378922936299

`A008458(n)-A004526(A008458(n)-A310533(n))`
-/

namespace A314253.P7509062378922936299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A310533 n).toNat

end

end A314253.P7509062378922936299

namespace A314253

/-- `A008458(n)-A004526(A008458(n)-A310533(n))` -/
def P7509062378922936299.Spec : Prop :=
  ∀ n, P7509062378922936299.a n = A314253 n

end A314253

/-! ## A314253.P10451048309370560022

`A008486(n)+A004526(A310533(n))`
-/

namespace A314253.P10451048309370560022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A310533 n).toNat

end

end A314253.P10451048309370560022

namespace A314253

/-- `A008486(n)+A004526(A310533(n))` -/
def P10451048309370560022.Spec : Prop :=
  ∀ n, P10451048309370560022.a n = A314253 n

end A314253

/-! ## A314253.P15765250918486462399

`A315034(2*n)-4*n`
-/

namespace A314253.P15765250918486462399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 (2 * n) - (4 * n : ℤ)

end

end A314253.P15765250918486462399

namespace A314253

/-- `A315034(2*n)-4*n` -/
def P15765250918486462399.Spec : Prop :=
  ∀ n, P15765250918486462399.a n = A314253 n

end A314253

/-! ## A314253.P5308229902675899955

`2*A008574(2*n)-A314038(2*n)`
-/

namespace A314253.P5308229902675899955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314038 (2 * n)

end

end A314253.P5308229902675899955

namespace A314253

/-- `2*A008574(2*n)-A314038(2*n)` -/
def P5308229902675899955.Spec : Prop :=
  ∀ n, P5308229902675899955.a n = A314253 n

end A314253

/-! ## A314253.P4721995636279939044

`A004396(2*A311932(n))`
-/

namespace A314253.P4721995636279939044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A311932 n).toNat

end

end A314253.P4721995636279939044

namespace A314253

/-- `A004396(2*A311932(n))` -/
def P4721995636279939044.Spec : Prop :=
  ∀ n, P4721995636279939044.a n = A314253 n

end A314253

/-! ## A314253.P2614597356456855257

`A004396(A005843(A311932(n)))`
-/

namespace A314253.P2614597356456855257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A311932 n).toNat).toNat

end

end A314253.P2614597356456855257

namespace A314253

/-- `A004396(A005843(A311932(n)))` -/
def P2614597356456855257.Spec : Prop :=
  ∀ n, P2614597356456855257.a n = A314253 n

end A314253

/-! ## A314253.P11193407241722022556

`A004396(A311932(2*n))`
-/

namespace A314253.P11193407241722022556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311932 (2 * n)).toNat

end

end A314253.P11193407241722022556

namespace A314253

/-- `A004396(A311932(2*n))` -/
def P11193407241722022556.Spec : Prop :=
  ∀ n, P11193407241722022556.a n = A314253 n

end A314253

/-! ## A314253.P15678690775428314095

`A004525(A315548(2*n))`
-/

namespace A314253.P15678690775428314095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315548 (2 * n)).toNat

end

end A314253.P15678690775428314095

namespace A314253

/-- `A004525(A315548(2*n))` -/
def P15678690775428314095.Spec : Prop :=
  ∀ n, P15678690775428314095.a n = A314253 n

end A314253

/-! ## A314253.P2460584760708305805

`A004525(A310533(n)+A008458(n))`
-/

namespace A314253.P2460584760708305805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310533 n + A008458 n).toNat

end

end A314253.P2460584760708305805

namespace A314253

/-- `A004525(A310533(n)+A008458(n))` -/
def P2460584760708305805.Spec : Prop :=
  ∀ n, P2460584760708305805.a n = A314253 n

end A314253

/-! ## A314253.P15488575493601921843

`A004526(A310533(n)+A008458(n))`
-/

namespace A314253.P15488575493601921843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310533 n + A008458 n).toNat

end

end A314253.P15488575493601921843

namespace A314253

/-- `A004526(A310533(n)+A008458(n))` -/
def P15488575493601921843.Spec : Prop :=
  ∀ n, P15488575493601921843.a n = A314253 n

end A314253

/-! ## A314253.P3532972327801840675

`A008458(A008574(n))-A314752(A008574(n))`
-/

namespace A314253.P3532972327801840675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A314752 (A008574 n).toNat

end

end A314253.P3532972327801840675

namespace A314253

/-- `A008458(A008574(n))-A314752(A008574(n))` -/
def P3532972327801840675.Spec : Prop :=
  ∀ n, P3532972327801840675.a n = A314253 n

end A314253

/-!
# A314254: Coordination sequence Gal.6.628.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314254, the canonical program `A314254.P14587660656971649234` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314254 has offset 0).

The definition of A314254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314254.P14587660656971649234

`A313117(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314254

/-- `A313117(n)+n` -/
def P14587660656971649234.Spec : Prop :=
  ∀ n, P14587660656971649234.a n = A314254 n

theorem P14587660656971649234.correct : P14587660656971649234.Spec := by
  intro n
  simp only [A314254]

end A314254

/-! ## A314254.P13481034256330900336

`abs(10*n-A314668(n))`
-/

namespace A314254.P13481034256330900336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314668 n|

end

end A314254.P13481034256330900336

namespace A314254

/-- `abs(10*n-A314668(n))` -/
def P13481034256330900336.Spec : Prop :=
  ∀ n, P13481034256330900336.a n = A314254 n

end A314254

/-! ## A314254.P6370389460880018451

`A313794(n)+∑[char[or(2, n)]]`
-/

namespace A314254.P6370389460880018451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A314254.P6370389460880018451

namespace A314254

/-- `A313794(n)+∑[char[or(2, n)]]` -/
def P6370389460880018451.Spec : Prop :=
  ∀ n, P6370389460880018451.a n = A314254 n

end A314254

/-! ## A314254.P12657198498889011732

`abs(A008593(n)-A315467(n))`
-/

namespace A314254.P12657198498889011732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315467 n|

end

end A314254.P12657198498889011732

namespace A314254

/-- `abs(A008593(n)-A315467(n))` -/
def P12657198498889011732.Spec : Prop :=
  ∀ n, P12657198498889011732.a n = A314254 n

end A314254

/-! ## A314254.P2990029716841179002

`A312101(n)+A042965(n+1)`
-/

namespace A314254.P2990029716841179002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 n + A042965 (n + 1)

end

end A314254.P2990029716841179002

namespace A314254

/-- `A312101(n)+A042965(n+1)` -/
def P2990029716841179002.Spec : Prop :=
  ∀ n, P2990029716841179002.a n = A314254 n

end A314254

/-! ## A314254.P4116287011218677237

`A311512(n)+A047273(n+1)`
-/

namespace A314254.P4116287011218677237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + A047273 (n + 1)

end

end A314254.P4116287011218677237

namespace A314254

/-- `A311512(n)+A047273(n+1)` -/
def P4116287011218677237.Spec : Prop :=
  ∀ n, P4116287011218677237.a n = A314254 n

end A314254

/-! ## A314254.P2120696695650042831

`A312101(n)+A004396(2*n)`
-/

namespace A314254.P2120696695650042831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 n + A004396 (2 * n)

end

end A314254.P2120696695650042831

namespace A314254

/-- `A312101(n)+A004396(2*n)` -/
def P2120696695650042831.Spec : Prop :=
  ∀ n, P2120696695650042831.a n = A314254 n

end A314254

/-! ## A314254.P11438347125753306542

`A313794(n)+n-A004525(n)`
-/

namespace A314254.P11438347125753306542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n + ((n : ℤ) - A004525 n)

end

end A314254.P11438347125753306542

namespace A314254

/-- `A313794(n)+n-A004525(n)` -/
def P11438347125753306542.Spec : Prop :=
  ∀ n, P11438347125753306542.a n = A314254 n

end A314254

/-! ## A314254.P14494449674907919715

`A313515(n)+n-A128834(n)`
-/

namespace A314254.P14494449674907919715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313515 n + ((n : ℤ) - A128834 n)

end

end A314254.P14494449674907919715

namespace A314254

/-- `A313515(n)+n-A128834(n)` -/
def P14494449674907919715.Spec : Prop :=
  ∀ n, P14494449674907919715.a n = A314254 n

theorem P14494449674907919715.correct : P14494449674907919715.Spec := by
  intro n
  simp only [A314254, Nat.add_sub_cancel, A314254.P14494449674907919715.a, A314254.P14587660656971649234.a, A128834, A128834.P4430347604004376390.a, A313117, A313117.P16447127706921561156.a, A313515, A313515.P11298845023019683879.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312123, A312123.P2703485450737880313.a, A008592, A008592.P4981059802862696142.a, A315687, A315687.P15169813594904157668.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314254

/-! ## A314254.P14251616377128025886

`Δ[A011848(n)]+A311512(n)+n`
-/

namespace A314254.P14251616377128025886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A311512 n + (n : ℤ))

end

end A314254.P14251616377128025886

namespace A314254

/-- `Δ[A011848(n)]+A311512(n)+n` -/
def P14251616377128025886.Spec : Prop :=
  ∀ n, P14251616377128025886.a n = A314254 n

end A314254

/-! ## A314254.P12593875290497734447

`A008574(n)+A312101(n)-A008576(n)`
-/

namespace A314254.P12593875290497734447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A312101 n - A008576 n)

end

end A314254.P12593875290497734447

namespace A314254

/-- `A008574(n)+A312101(n)-A008576(n)` -/
def P12593875290497734447.Spec : Prop :=
  ∀ n, P12593875290497734447.a n = A314254 n

end A314254

/-! ## A314254.P17393860917256992364

`A008458(n)+A008574(n)-A314668(n)`
-/

namespace A314254.P17393860917256992364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314668 n)

end

end A314254.P17393860917256992364

namespace A314254

/-- `A008458(n)+A008574(n)-A314668(n)` -/
def P17393860917256992364.Spec : Prop :=
  ∀ n, P17393860917256992364.a n = A314254 n

end A314254

/-! ## A314254.P10216051437888239618

`A004525(A315549(2*n))`
-/

namespace A314254.P10216051437888239618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315549 (2 * n)).toNat

end

end A314254.P10216051437888239618

namespace A314254

/-- `A004525(A315549(2*n))` -/
def P10216051437888239618.Spec : Prop :=
  ∀ n, P10216051437888239618.a n = A314254 n

end A314254

/-! ## A314254.P15272038822404082750

`A004525(A313789(2*n)+n)`
-/

namespace A314254.P15272038822404082750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313789 (2 * n) + (n : ℤ)).toNat

end

end A314254.P15272038822404082750

namespace A314254

/-- `A004525(A313789(2*n)+n)` -/
def P15272038822404082750.Spec : Prop :=
  ∀ n, P15272038822404082750.a n = A314254 n

end A314254

/-! ## A314254.P4283234954537170902

`A004525(A313794(2*n)+n)`
-/

namespace A314254.P4283234954537170902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313794 (2 * n) + (n : ℤ)).toNat

end

end A314254.P4283234954537170902

namespace A314254

/-- `A004525(A313794(2*n)+n)` -/
def P4283234954537170902.Spec : Prop :=
  ∀ n, P4283234954537170902.a n = A314254 n

end A314254

/-! ## A314254.P11106428137440556833

`A004525(A313879(2*n)+n)`
-/

namespace A314254.P11106428137440556833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313879 (2 * n) + (n : ℤ)).toNat

end

end A314254.P11106428137440556833

namespace A314254

/-- `A004525(A313879(2*n)+n)` -/
def P11106428137440556833.Spec : Prop :=
  ∀ n, P11106428137440556833.a n = A314254 n

end A314254

/-! ## A314254.P5000216895391453215

`A004525(A313891(2*n)+n)`
-/

namespace A314254.P5000216895391453215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313891 (2 * n) + (n : ℤ)).toNat

end

end A314254.P5000216895391453215

namespace A314254

/-- `A004525(A313891(2*n)+n)` -/
def P5000216895391453215.Spec : Prop :=
  ∀ n, P5000216895391453215.a n = A314254 n

end A314254

/-! ## A314254.P9417847066526870992

`A004525(A315322(2*n)+n)`
-/

namespace A314254.P9417847066526870992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315322 (2 * n) + (n : ℤ)).toNat

end

end A314254.P9417847066526870992

namespace A314254

/-- `A004525(A315322(2*n)+n)` -/
def P9417847066526870992.Spec : Prop :=
  ∀ n, P9417847066526870992.a n = A314254 n

end A314254

/-! ## A314254.P7710662538434222655

`A004525(A313924(2*n)+A004396(n))`
-/

namespace A314254.P7710662538434222655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313924 (2 * n) + A004396 n).toNat

end

end A314254.P7710662538434222655

namespace A314254

/-- `A004525(A313924(2*n)+A004396(n))` -/
def P7710662538434222655.Spec : Prop :=
  ∀ n, P7710662538434222655.a n = A314254 n

end A314254

/-! ## A314254.P11358198724918338084

`A004525(A313739(2*n)+A004396(2*n))`
-/

namespace A314254.P11358198724918338084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313739 (2 * n) + A004396 (2 * n)).toNat

end

end A314254.P11358198724918338084

namespace A314254

/-- `A004525(A313739(2*n)+A004396(2*n))` -/
def P11358198724918338084.Spec : Prop :=
  ∀ n, P11358198724918338084.a n = A314254 n

end A314254

/-!
# A314255: Coordination sequence Gal.6.656.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314255, there is no canonical definition to state claims against.
-/

/-! ## A314255.P3349288695936185996

`A301697(n)+A241910(A003370(n+1))`
-/

namespace A314255.P3349288695936185996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A241910 (A003370 (n + 1)).toNat

end

end A314255.P3349288695936185996

/-! ## A314255.P8583309467656580998

`A263283(A263334(n+1)-3)`
-/

namespace A314255.P8583309467656580998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263283 (A263334 (n + 1) - 3).toNat

end

end A314255.P8583309467656580998

/-! ## A314255.P13462618473667564992

`∑[A002376(∑[A116423(n+2)])]`
-/

namespace A314255.P13462618473667564992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314255.P13462618473667564992

/-! ## A314255.P10946546217082271317

`A001222(A137955(n))+round(1/acot(5*n))`
-/

namespace A314255.P10946546217082271317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A137955 n).toNat + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ))

end

end A314255.P10946546217082271317

/-! ## A314255.P4358495916628324186

`A008706(n)+A001222(A137955(n))`
-/

namespace A314255.P4358495916628324186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A001222 (A137955 n).toNat

end

end A314255.P4358495916628324186

/-!
# A314257: Coordination sequence Gal.4.148.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314257, there is no canonical definition to state claims against.
-/

/-! ## A314257.P4281772386854129139

`A330025(A175164(n))+A313510(n)+n`
-/

namespace A314257.P4281772386854129139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A175164 n).toNat + (A313510 n + (n : ℤ))

end

end A314257.P4281772386854129139

/-! ## A314257.P2758567535199832933

`A004525(n)+A330025(A175164(n))+A314097(n)`
-/

namespace A314257.P2758567535199832933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A330025 (A175164 n).toNat + A314097 n)

end

end A314257.P2758567535199832933

/-! ## A314257.P14879650080605235713

`A330025(A175164(n))+A134667(n)+A298024(n)+n`
-/

namespace A314257.P14879650080605235713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A175164 n).toNat + (A134667 n + (A298024 n + (n : ℤ)))

end

end A314257.P14879650080605235713

/-! ## A314257.P1542197102438775047

`A330025(A175164(n))+A186809(n)+A312655(n)+n`
-/

namespace A314257.P1542197102438775047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A175164 n).toNat + (A186809 n + (A312655 n + (n : ℤ)))

end

end A314257.P1542197102438775047

/-! ## A314257.P8998942315762478730

`A330025(A175164(n))+A315471(n)+n-A004396(n)`
-/

namespace A314257.P8998942315762478730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A175164 n).toNat + (A315471 n + ((n : ℤ) - A004396 n))

end

end A314257.P8998942315762478730

/-!
# A314259: Coordination sequence Gal.3.60.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314259, the canonical program `A314259.P13285665741258548628` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314259 has offset 0).

The definition of A314259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314259.P13285665741258548628

`ogf((1+3x+3x^2+4x^3+6x^5+x^6+9x^7+x^8+6x^9+4x^11+3x^12+3x^13+x^14)/(1-2x+2x^2-2x^3+2x^4-2x^5+3x^6-4x^7+3x^8-2x^9+2x^10-2x^11+2x^12-2x^13+x^14))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A314259

/-- `ogf((1+3x+3x^2+4x^3+6x^5+x^6+9x^7+x^8+6x^9+4x^11+3x^12+3x^13+x^14)/(1-2x+2x^2-2x^3+2x^4-2x^5+3x^6-4x^7+3x^8-2x^9+2x^10-2x^11+2x^12-2x^13+x^14))` -/
def P13285665741258548628.Spec : Prop :=
  ∀ n, P13285665741258548628.a n = A314259 n

theorem P13285665741258548628.correct : P13285665741258548628.Spec := by
  intro n
  simp only [A314259]

end A314259

/-! ## A314259.P4714243503514697709

`A301710(n)+A005614(A001470(n))`
-/

namespace A314259.P4714243503514697709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A005614 (A001470 n).toNat

end

end A314259.P4714243503514697709

namespace A314259

/-- `A301710(n)+A005614(A001470(n))` -/
def P4714243503514697709.Spec : Prop :=
  ∀ n, P4714243503514697709.a n = A314259 n

end A314259

/-! ## A314259.P16662288150037470712

`A301710(n)+A101637(A115099(n))`
-/

namespace A314259.P16662288150037470712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A101637 (A115099 n).toNat

end

end A314259.P16662288150037470712

namespace A314259

/-- `A301710(n)+A101637(A115099(n))` -/
def P16662288150037470712.Spec : Prop :=
  ∀ n, P16662288150037470712.a n = A314259 n

end A314259

/-! ## A314259.P10756118311573608572

`A313876(n)+A001222(A341639(n+1))`
-/

namespace A314259.P10756118311573608572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313876 n + A001222 (A341639 (n + 1)).toNat

end

end A314259.P10756118311573608572

namespace A314259

/-- `A313876(n)+A001222(A341639(n+1))` -/
def P10756118311573608572.Spec : Prop :=
  ∀ n, P10756118311573608572.a n = A314259 n

end A314259

/-! ## A314259.P3073056277279423736

`A301710(n)+A189169(A121223(n+7))`
-/

namespace A314259.P3073056277279423736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A189169 (A121223 (n + 7)).toNat

end

end A314259.P3073056277279423736

namespace A314259

/-- `A301710(n)+A189169(A121223(n+7))` -/
def P3073056277279423736.Spec : Prop :=
  ∀ n, P3073056277279423736.a n = A314259 n

end A314259

/-!
# A314261: Coordination sequence Gal.4.149.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314261, there is no canonical definition to state claims against.
-/

/-! ## A314261.P3141141590326577044

`A313020(n)+A047263(n+1)`
-/

namespace A314261.P3141141590326577044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313020 n + A047263 (n + 1)

end

end A314261.P3141141590326577044

/-! ## A314261.P15404420527774930513

`A313020(n)+A057354(3*n+1)`
-/

namespace A314261.P15404420527774930513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313020 n + A057354 (3 * n + 1)

end

end A314261.P15404420527774930513

/-! ## A314261.P8355612814659753045

`A313020(n)+comp[A298026(n+1)-3]`
-/

namespace A314261.P8355612814659753045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (n + 1) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313020 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A314261.P8355612814659753045

/-! ## A314261.P11202906356463739977

`A313020(n)+A004396(A265227(n+1))`
-/

namespace A314261.P11202906356463739977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313020 n + A004396 (A265227 (n + 1)).toNat

end

end A314261.P11202906356463739977

/-! ## A314261.P18055727920070513717

`A028310(A313020(n)+comp[Δ[lcm(3, n)]])`
-/

namespace A314261.P18055727920070513717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A313020 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A314261.P18055727920070513717

/-! ## A314261.P9686817521221620364

`A313020(n)+A059995(A017581(n))`
-/

namespace A314261.P9686817521221620364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313020 n + A059995 (A017581 n).toNat

end

end A314261.P9686817521221620364

/-!
# A314263: Coordination sequence Gal.6.662.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314263, the canonical program `A314263.P7199020950879472314` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314263 has offset 0).

The definition of A314263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314263.P7199020950879472314

`A315732(n)-A128834(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314263

/-- `A315732(n)-A128834(n)` -/
def P7199020950879472314.Spec : Prop :=
  ∀ n, P7199020950879472314.a n = A314263 n

theorem P7199020950879472314.correct : P7199020950879472314.Spec := by
  intro n
  simp only [A314263]

end A314263

/-! ## A314263.P7186430737402420272

`A315732(n)+A010892(n+2)`
-/

namespace A314263.P7186430737402420272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315732 n + A010892 (n + 2)

end

end A314263.P7186430737402420272

namespace A314263

/-- `A315732(n)+A010892(n+2)` -/
def P7186430737402420272.Spec : Prop :=
  ∀ n, P7186430737402420272.a n = A314263 n

end A314263

/-! ## A314263.P14750478150915798751

`2*A301718(n)-A314172(n)`
-/

namespace A314263.P14750478150915798751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301718 n - A314172 n

end

end A314263.P14750478150915798751

namespace A314263

/-- `2*A301718(n)-A314172(n)` -/
def P14750478150915798751.Spec : Prop :=
  ∀ n, P14750478150915798751.a n = A314263 n

end A314263

/-! ## A314263.P13569194944696835086

`A005843(A301718(n))-A314172(n)`
-/

namespace A314263.P13569194944696835086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A301718 n).toNat - A314172 n

end

end A314263.P13569194944696835086

namespace A314263

/-- `A005843(A301718(n))-A314172(n)` -/
def P13569194944696835086.Spec : Prop :=
  ∀ n, P13569194944696835086.a n = A314263 n

end A314263

/-! ## A314263.P1478912266494555734

`or(A000002(A289317(n)), A357688(n+4))`
-/

namespace A314263.P1478912266494555734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000002 (A289317 n).toNat) (A357688 (n + 4))

end

end A314263.P1478912266494555734

namespace A314263

/-- `or(A000002(A289317(n)), A357688(n+4))` -/
def P1478912266494555734.Spec : Prop :=
  ∀ n, P1478912266494555734.a n = A314263 n

end A314263

/-!
# A314264: Coordination sequence Gal.5.316.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314264, the canonical program `A314264.P14922445283588298086` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314264 has offset 0).

The definition of A314264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314264.P18438084023276954184

`A315733(n)-A128834(n)`
-/

namespace A314264.P18438084023276954184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 n - A128834 n

end

end A314264.P18438084023276954184

namespace A314264

/-- `A315733(n)-A128834(n)` -/
def P18438084023276954184.Spec : Prop :=
  ∀ n, P18438084023276954184.a n = A314264 n

end A314264

/-! ## A314264.P11105924836281965394

`A315733(n)+A010892(n+2)`
-/

namespace A314264.P11105924836281965394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 n + A010892 (n + 2)

end

end A314264.P11105924836281965394

namespace A314264

/-- `A315733(n)+A010892(n+2)` -/
def P11105924836281965394.Spec : Prop :=
  ∀ n, P11105924836281965394.a n = A314264 n

end A314264

/-! ## A314264.P391964782680572361

`A315733(n)-∑[A131736(A014681(n))]`
-/

namespace A314264.P391964782680572361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314264.P391964782680572361

namespace A314264

/-- `A315733(n)-∑[A131736(A014681(n))]` -/
def P391964782680572361.Spec : Prop :=
  ∀ n, P391964782680572361.a n = A314264 n

end A314264

/-! ## A314264.P14922445283588298086

`abs(A008592(n)-(A311593(n)+A128834(n)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A314264

/-- `abs(A008592(n)-(A311593(n)+A128834(n)))` -/
def P14922445283588298086.Spec : Prop :=
  ∀ n, P14922445283588298086.a n = A314264 n

theorem P14922445283588298086.correct : P14922445283588298086.Spec := by
  intro n
  simp only [A314264]

end A314264

/-! ## A314264.P1688907835625956699

`2*A315750(n)-A008458(n)-A128834(n)`
-/

namespace A314264.P1688907835625956699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315750 n - A008458 n - A128834 n

end

end A314264.P1688907835625956699

namespace A314264

/-- `2*A315750(n)-A008458(n)-A128834(n)` -/
def P1688907835625956699.Spec : Prop :=
  ∀ n, P1688907835625956699.a n = A314264 n

end A314264

/-! ## A314264.P12913832155607433257

`Δ[A011864(n)]+A315686(n)-A128834(n)`
-/

namespace A314264.P12913832155607433257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315686 n - A128834 n)

end

end A314264.P12913832155607433257

namespace A314264

/-- `Δ[A011864(n)]+A315686(n)-A128834(n)` -/
def P12913832155607433257.Spec : Prop :=
  ∀ n, P12913832155607433257.a n = A314264 n

end A314264

/-! ## A314264.P7496264484959843702

`A315733(n)-A257628(A001840(n))`
-/

namespace A314264.P7496264484959843702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 n - A257628 (A001840 n).toNat

end

end A314264.P7496264484959843702

namespace A314264

/-- `A315733(n)-A257628(A001840(n))` -/
def P7496264484959843702.Spec : Prop :=
  ∀ n, P7496264484959843702.a n = A314264 n

end A314264

/-!
# A314265: Coordination sequence Gal.6.658.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314265, there is no canonical definition to state claims against.
-/

/-! ## A314265.P1703355165484308620

`A314263(n)+A266608(A000111(n))`
-/

namespace A314265.P1703355165484308620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314263 n + A266608 (A000111 n).toNat

end

end A314265.P1703355165484308620

/-! ## A314265.P1420328603949907553

`A314234(n)+A030373(A075296(3*n+1))`
-/

namespace A314265.P1420328603949907553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314234 n + A030373 (A075296 (3 * n + 1)).toNat

end

end A314265.P1420328603949907553

/-!
# A314266: Coordination sequence Gal.5.321.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314266, there is no canonical definition to state claims against.
-/

/-! ## A314266.P16328968246511099847

`A321081(A007283(n))+A314238(n)`
-/

namespace A314266.P16328968246511099847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321081 (A007283 n).toNat + A314238 n

end

end A314266.P16328968246511099847

/-! ## A314266.P6770469817770198542

`A314270(n)-A270417(A266069(n))`
-/

namespace A314266.P6770469817770198542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314270 n - A270417 (A266069 n).toNat

end

end A314266.P6770469817770198542

/-! ## A314266.P50669473804498949

`A250120(n)+A080791(A193663(n+1))`
-/

namespace A314266.P50669473804498949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A080791 (A193663 (n + 1)).toNat

end

end A314266.P50669473804498949

/-! ## A314266.P9334430771127889104

`A301718(n)+A024316(A210662(n+1))`
-/

namespace A314266.P9334430771127889104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A024316 (A210662 (n + 1)).toNat

end

end A314266.P9334430771127889104

/-! ## A314266.P7608874498372871017

`A301718(n)+A141846(A213427(n+1))`
-/

namespace A314266.P7608874498372871017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A141846 (A213427 (n + 1)).toNat

end

end A314266.P7608874498372871017

/-!
# A314267: Coordination sequence Gal.6.658.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314267, there is no canonical definition to state claims against.
-/

/-! ## A314267.P4508122974833714804

`A120344(n+1)-A082072(A056273(n))`
-/

namespace A314267.P4508122974833714804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120344 (n + 1) - A082072 (A056273 n).toNat

end

end A314267.P4508122974833714804

/-!
# A314268: Coordination sequence Gal.5.320.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314268, there is no canonical definition to state claims against.
-/

/-! ## A314268.P8385691564577037075

`A253281(A192065(n))+A250120(n)`
-/

namespace A314268.P8385691564577037075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253281 (A192065 n).toNat + A250120 n

end

end A314268.P8385691564577037075

/-! ## A314268.P4389055837378608367

`A314269(n)-A286493(A175161(n))`
-/

namespace A314268.P4389055837378608367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314269 n - A286493 (A175161 n).toNat

end

end A314268.P4389055837378608367

/-! ## A314268.P2499201864339317040

`A310521(n)+A001221(A032297(n))`
-/

namespace A314268.P2499201864339317040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n + A001221 (A032297 n).toNat

end

end A314268.P2499201864339317040

/-! ## A314268.P17327345407238570151

`A314238(n)+A033665(A290596(n))`
-/

namespace A314268.P17327345407238570151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314238 n + A033665 (A290596 n).toNat

end

end A314268.P17327345407238570151

/-! ## A314268.P12240230292404043610

`A301718(n)+A158461(A033321(n))`
-/

namespace A314268.P12240230292404043610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A158461 (A033321 n).toNat

end

end A314268.P12240230292404043610

/-!
# A314269: Coordination sequence Gal.5.322.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314269, there is no canonical definition to state claims against.
-/

/-! ## A314269.P10220616507338458033

`A314268(n)+A286493(A175161(n))`
-/

namespace A314269.P10220616507338458033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314268 n + A286493 (A175161 n).toNat

end

end A314269.P10220616507338458033

/-! ## A314269.P691560420278679481

`A047486(n+1)+A062977(A291731(n))+A008574(n)`
-/

namespace A314269.P691560420278679481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A062977 (A291731 n).toNat + A008574 n)

end

end A314269.P691560420278679481

/-! ## A314269.P7235098848766379558

`A301718(n)+A171157(A135335(n))`
-/

namespace A314269.P7235098848766379558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A171157 (A135335 n).toNat

end

end A314269.P7235098848766379558

/-!
# A314270: Coordination sequence Gal.6.665.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314270, there is no canonical definition to state claims against.
-/

/-! ## A314270.P2718029328284399874

`A311790(A087051(n))+A047486(n+1)`
-/

namespace A314270.P2718029328284399874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 (A087051 n).toNat + A047486 (n + 1)

end

end A314270.P2718029328284399874

/-! ## A314270.P4687176036960975353

`A311790(A227549(n+1))+A047486(n+1)`
-/

namespace A314270.P4687176036960975353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 (A227549 (n + 1)).toNat + A047486 (n + 1)

end

end A314270.P4687176036960975353

/-! ## A314270.P7263565596276601739

`A314235(n)+A073484(A073446(n))`
-/

namespace A314270.P7263565596276601739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314235 n + A073484 (A073446 n).toNat

end

end A314270.P7263565596276601739

/-! ## A314270.P3551251581167139503

`A301718(n)+A065339(A149899(n))`
-/

namespace A314270.P3551251581167139503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A065339 (A149899 n).toNat

end

end A314270.P3551251581167139503

/-! ## A314270.P11642142093342782034

`A313907(n)+A001221(A344605(n))`
-/

namespace A314270.P11642142093342782034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313907 n + A001221 (A344605 n).toNat

end

end A314270.P11642142093342782034

/-!
# A314271: Coordination sequence Gal.6.632.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314271, there is no canonical definition to state claims against.
-/

/-! ## A314271.P5035035796413967905

`A301710(n)+A001221(A001349(n))`
-/

namespace A314271.P5035035796413967905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + A001221 (A001349 n).toNat

end

end A314271.P5035035796413967905

/-! ## A314271.P16871995740435245819

`A313906(n)+A001221(A001764(n))`
-/

namespace A314271.P16871995740435245819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313906 n + A001221 (A001764 n).toNat

end

end A314271.P16871995740435245819

/-! ## A314271.P668603703815853630

`A313875(n)+A001221(A008485(n))`
-/

namespace A314271.P668603703815853630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n + A001221 (A008485 n).toNat

end

end A314271.P668603703815853630

/-! ## A314271.P11544367301860359461

`A301697(n)+A051010(A088218(n))`
-/

namespace A314271.P11544367301860359461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A051010 (A088218 n).toNat

end

end A314271.P11544367301860359461

/-! ## A314271.P2914239092512204895

`A313908(n)+A001221(A177550(n))`
-/

namespace A314271.P2914239092512204895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313908 n + A001221 (A177550 n).toNat

end

end A314271.P2914239092512204895

/-!
# A314272: Coordination sequence Gal.6.666.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314272, there is no canonical definition to state claims against.
-/

/-! ## A314272.P1488635828835903533

`A008458(n)-A035226(A305513(n+1))`
-/

namespace A314272.P1488635828835903533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A035226 (A305513 (n + 1)).toNat

end

end A314272.P1488635828835903533

/-! ## A314272.P14126053871945534392

`A310523(A227549(n+1))+A083802(n+1)`
-/

namespace A314272.P14126053871945534392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310523 (A227549 (n + 1)).toNat + A083802 (n + 1)

end

end A314272.P14126053871945534392

/-! ## A314272.P10087526861362675606

`A313913(n)+A001221(n!)`
-/

namespace A314272.P10087526861362675606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313913 n + A001221 (Nat.factorial n)

end

end A314272.P10087526861362675606

/-! ## A314272.P16289680022137776023

`A310513(n)+A001222(A118108(n))`
-/

namespace A314272.P16289680022137776023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310513 n + A001222 (A118108 n).toNat

end

end A314272.P16289680022137776023

/-!
# A314274: Coordination sequence Gal.6.493.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314274, there is no canonical definition to state claims against.
-/

/-! ## A314274.P6123117579499727540

`eq[A046229(n+1), A170957(A179179(n+1))]`
-/

namespace A314274.P6123117579499727540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170957 (A179179 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314274.P6123117579499727540

/-! ## A314274.P103830571252540111

`eq[A020639(A143632(n+1)), A119505(n+2)]`
-/

namespace A314274.P103830571252540111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A143632 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314274.P103830571252540111

/-!
# A314275: Coordination sequence Gal.6.654.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314275, the canonical program `A314275.P1273865093629993724` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314275 has offset 0).

The definition of A314275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314275.P1273865093629993724

`2*A314283(n)-A314287(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314275

/-- `2*A314283(n)-A314287(n)` -/
def P1273865093629993724.Spec : Prop :=
  ∀ n, P1273865093629993724.a n = A314275 n

theorem P1273865093629993724.correct : P1273865093629993724.Spec := by
  intro n
  simp only [A314275]

end A314275

/-! ## A314275.P4545524603621408045

`A005843(A314283(n))-A314287(n)`
-/

namespace A314275.P4545524603621408045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314283 n).toNat - A314287 n

end

end A314275.P4545524603621408045

namespace A314275

/-- `A005843(A314283(n))-A314287(n)` -/
def P4545524603621408045.Spec : Prop :=
  ∀ n, P4545524603621408045.a n = A314275 n

end A314275

/-! ## A314275.P6538177988516640951

`A005843(A314283(n))+A314287(n)/A134824(n+2)`
-/

namespace A314275.P6538177988516640951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A314283 n).toNat : ℚ) + (A314287 n : ℚ) / (A134824 (n + 2) : ℚ)

end

end A314275.P6538177988516640951

namespace A314275

/-- `A005843(A314283(n))+A314287(n)/A134824(n+2)` -/
def P6538177988516640951.Spec : Prop :=
  ∀ n, P6538177988516640951.a n = (A314275 n : ℚ)

end A314275

/-! ## A314275.P15882039198484679541

`A004277(A314283(n))-(2*A314218(n)-A313951(n))`
-/

namespace A314275.P15882039198484679541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314283 n).toNat - (2 * A314218 n - A313951 n)

end

end A314275.P15882039198484679541

namespace A314275

/-- `A004277(A314283(n))-(2*A314218(n)-A313951(n))` -/
def P15882039198484679541.Spec : Prop :=
  ∀ n, P15882039198484679541.a n = A314275 n

end A314275

/-! ## A314275.P187669335521591973

`A014681(A311378(n)+A077739(n+1))`
-/

namespace A314275.P187669335521591973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A311378 n + A077739 (n + 1)).toNat

end

end A314275.P187669335521591973

namespace A314275

/-- `A014681(A311378(n)+A077739(n+1))` -/
def P187669335521591973.Spec : Prop :=
  ∀ n, P187669335521591973.a n = A314275 n

end A314275

/-!
# A314278: Coordination sequence Gal.5.215.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314278, there is no canonical definition to state claims against.
-/

/-! ## A314278.P5558246604514020979

`A194154(2*(n+1))+A085981(A001470(n))`
-/

namespace A314278.P5558246604514020979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194154 (2 * (n + 1)) + A085981 (A001470 n).toNat

end

end A314278.P5558246604514020979

/-! ## A314278.P9817235696439354201

`A194154(2*(n+1))+A085981(A006248(n+1))`
-/

namespace A314278.P9817235696439354201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194154 (2 * (n + 1)) + A085981 (A006248 (n + 1)).toNat

end

end A314278.P9817235696439354201

/-! ## A314278.P8781460926537791655

`A001221(A265227(n+2))+A008683(A006897(n))+5*n`
-/

namespace A314278.P8781460926537791655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A265227 (n + 2)).toNat + (A008683 (A006897 n).toNat + (5 * n : ℤ))

end

end A314278.P8781460926537791655

/-!
# A314279: Coordination sequence Gal.6.490.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314279, there is no canonical definition to state claims against.
-/

/-! ## A314279.P4606297492995919365

`2*A314050(n)-A301678(n)`
-/

namespace A314279.P4606297492995919365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314050 n - A301678 n

end

end A314279.P4606297492995919365

/-! ## A314279.P14377093900960403777

`A005843(A314050(n))-A301678(n)`
-/

namespace A314279.P14377093900960403777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314050 n).toNat - A301678 n

end

end A314279.P14377093900960403777

/-! ## A314279.P3195333837702821276

`A315647(n)-A268643(A073357(n))`
-/

namespace A314279.P3195333837702821276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n - A268643 (A073357 n).toNat

end

end A314279.P3195333837702821276

/-! ## A314279.P10958563072944999059

`A314050(n)+A005614(A328432(n))`
-/

namespace A314279.P10958563072944999059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314050 n + A005614 (A328432 n).toNat

end

end A314279.P10958563072944999059

/-! ## A314279.P6892979179583070411

`A314049(n)+A191250(A033139(n+1))`
-/

namespace A314279.P6892979179583070411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A191250 (A033139 (n + 1)).toNat

end

end A314279.P6892979179583070411

/-!
# A314280: Coordination sequence Gal.6.655.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314280, there is no canonical definition to state claims against.
-/

/-! ## A314280.P12495108152163098883

`A314049(n)+A033264(A148209(n))`
-/

namespace A314280.P12495108152163098883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A033264 (A148209 n).toNat

end

end A314280.P12495108152163098883

/-! ## A314280.P11337043730147261536

`A314123(n)+A014587(A034691(n+2))`
-/

namespace A314280.P11337043730147261536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n + A014587 (A034691 (n + 2)).toNat

end

end A314280.P11337043730147261536

/-! ## A314280.P18437421547712999559

`A160813(2*n+1)-A219009(A020495(2*(n+1)))`
-/

namespace A314280.P18437421547712999559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160813 (2 * n + 1) - A219009 (A020495 (2 * (n + 1))).toNat

end

end A314280.P18437421547712999559

/-! ## A314280.P16588192553631817482

`A314049(n)+A001221(A003470(n))`
-/

namespace A314280.P16588192553631817482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A001221 (A003470 n).toNat

end

end A314280.P16588192553631817482

/-! ## A314280.P5621438441281995594

`A314049(n)+A086600(A114589(n))`
-/

namespace A314280.P5621438441281995594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A086600 (A114589 n).toNat

end

end A314280.P5621438441281995594

/-!
# A314281: Coordination sequence Gal.6.664.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314281, there is no canonical definition to state claims against.
-/

/-! ## A314281.P17878044526814740130

`A301714(n)+A183094(A027914(n))`
-/

namespace A314281.P17878044526814740130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301714 n + A183094 (A027914 n).toNat

end

end A314281.P17878044526814740130

/-! ## A314281.P8027441003488630416

`A004525(A175126(n))+A248333(8*n+5)-A003056(n)²`
-/

namespace A314281.P8027441003488630416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A175126 n).toNat + (A248333 (8 * n + 5) - A003056 n ^ 2)

end

end A314281.P8027441003488630416

/-!
# A314282: Coordination sequence Gal.6.656.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314282, there is no canonical definition to state claims against.
-/

/-! ## A314282.P5995379972736203026

`∑[dr(A323236(A099970(n)))]`
-/

namespace A314282.P5995379972736203026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A323236 (A099970 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314282.P5995379972736203026

/-!
# A314283: Coordination sequence Gal.5.318.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314283, the canonical program `A314283.P2718913626275539959` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314283 has offset 0).

The definition of A314283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314283.P7508880778579627432

`2*A314039(n)-A313538(n)`
-/

namespace A314283.P7508880778579627432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314039 n - A313538 n

end

end A314283.P7508880778579627432

namespace A314283

/-- `2*A314039(n)-A313538(n)` -/
def P7508880778579627432.Spec : Prop :=
  ∀ n, P7508880778579627432.a n = A314283 n

end A314283

/-! ## A314283.P2397808484926424140

`A315690(n)-A128834(A006369(n))`
-/

namespace A314283.P2397808484926424140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - A128834 (A006369 n).toNat

end

end A314283.P2397808484926424140

namespace A314283

/-- `A315690(n)-A128834(A006369(n))` -/
def P2397808484926424140.Spec : Prop :=
  ∀ n, P2397808484926424140.a n = A314283 n

end A314283

/-! ## A314283.P8524375807060719765

`A315653(n)-A134667(A006369(n))`
-/

namespace A314283.P8524375807060719765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315653 n - A134667 (A006369 n).toNat

end

end A314283.P8524375807060719765

namespace A314283

/-- `A315653(n)-A134667(A006369(n))` -/
def P8524375807060719765.Spec : Prop :=
  ∀ n, P8524375807060719765.a n = A314283 n

end A314283

/-! ## A314283.P15746153772274978558

`A315653(n)-A134667(A004396(2*n))`
-/

namespace A314283.P15746153772274978558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315653 n - A134667 (A004396 (2 * n)).toNat

end

end A314283.P15746153772274978558

namespace A314283

/-- `A315653(n)-A134667(A004396(2*n))` -/
def P15746153772274978558.Spec : Prop :=
  ∀ n, P15746153772274978558.a n = A314283 n

end A314283

/-! ## A314283.P2036019606532396040

`A314039(n)+A002264(A086161(4*n))`
-/

namespace A314283.P2036019606532396040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314039 n + A002264 (A086161 (4 * n)).toNat

end

end A314283.P2036019606532396040

namespace A314283

/-- `A314039(n)+A002264(A086161(4*n))` -/
def P2036019606532396040.Spec : Prop :=
  ∀ n, P2036019606532396040.a n = A314283 n

end A314283

/-! ## A314283.P4142965620659214639

`A314039(n)+A002264(A086161(n)+n)`
-/

namespace A314283.P4142965620659214639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314039 n + A002264 (A086161 n + (n : ℤ)).toNat

end

end A314283.P4142965620659214639

namespace A314283

/-- `A314039(n)+A002264(A086161(n)+n)` -/
def P4142965620659214639.Spec : Prop :=
  ∀ n, P4142965620659214639.a n = A314283 n

end A314283

/-! ## A314283.P2718913626275539959

`A314067(n)+A004396(n-A004396(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314283

/-- `A314067(n)+A004396(n-A004396(n))` -/
def P2718913626275539959.Spec : Prop :=
  ∀ n, P2718913626275539959.a n = A314283 n

theorem P2718913626275539959.correct : P2718913626275539959.Spec := by
  intro n
  simp only [A314283]

end A314283

/-! ## A314283.P5684073644367365183

`A313538(n)+A005843(A314039(n)-A313538(n))`
-/

namespace A314283.P5684073644367365183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n + A005843 (A314039 n - A313538 n).toNat

end

end A314283.P5684073644367365183

namespace A314283

/-- `A313538(n)+A005843(A314039(n)-A313538(n))` -/
def P5684073644367365183.Spec : Prop :=
  ∀ n, P5684073644367365183.a n = A314283 n

end A314283

/-! ## A314283.P15512460481059534535

`A067251(A016861(n))-A113217(n)`
-/

namespace A314283.P15512460481059534535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A016861 n).toNat - A113217 n

end

end A314283.P15512460481059534535

namespace A314283

/-- `A067251(A016861(n))-A113217(n)` -/
def P15512460481059534535.Spec : Prop :=
  ∀ n, P15512460481059534535.a n = A314283 n

end A314283

/-! ## A314283.P572735426759791574

`A005843(A314039(n))-A313538(n)`
-/

namespace A314283.P572735426759791574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314039 n).toNat - A313538 n

end

end A314283.P572735426759791574

namespace A314283

/-- `A005843(A314039(n))-A313538(n)` -/
def P572735426759791574.Spec : Prop :=
  ∀ n, P572735426759791574.a n = A314283 n

end A314283

/-! ## A314283.P4272515263620209341

`(A314287(n)+A314275(n))/2`
-/

namespace A314283.P4272515263620209341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314287 n + A314275 n : ℚ) / 2

end

end A314283.P4272515263620209341

namespace A314283

/-- `(A314287(n)+A314275(n))/2` -/
def P4272515263620209341.Spec : Prop :=
  ∀ n, P4272515263620209341.a n = (A314283 n : ℚ)

theorem P4272515263620209341.correct : P4272515263620209341.Spec := by
  intro n
  simp only [A314283, Nat.add_sub_cancel, A314283.P4272515263620209341.a, A314283.P2718913626275539959.a, A004396, A004396.P17032557045289780609.a, A314067, A314067.P8522433514397796165.a, A314275, A314275.P1273865093629993724.a, A314287, A314287.P10443611524641385548.a, A004767, A004767.P13352534504447192883.a, A008574, A008574.P1300280032690682112.a, A093390, A093390.P1811915316347876173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314283

/-! ## A314283.P10859503211237294914

`A004525(A314287(n)+A314275(n))`
-/

namespace A314283.P10859503211237294914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314287 n + A314275 n).toNat

end

end A314283.P10859503211237294914

namespace A314283

/-- `A004525(A314287(n)+A314275(n))` -/
def P10859503211237294914.Spec : Prop :=
  ∀ n, P10859503211237294914.a n = A314283 n

end A314283

/-! ## A314283.P5430336766245843793

`A001281(A314287(n)+A314275(n))`
-/

namespace A314283.P5430336766245843793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A314287 n + A314275 n).toNat

end

end A314283.P5430336766245843793

namespace A314283

/-- `A001281(A314287(n)+A314275(n))` -/
def P5430336766245843793.Spec : Prop :=
  ∀ n, P5430336766245843793.a n = A314283 n

end A314283

/-! ## A314283.P11642141299288819283

`A004526(A314287(n)+A314275(n))`
-/

namespace A314283.P11642141299288819283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A314287 n + A314275 n).toNat

end

end A314283.P11642141299288819283

namespace A314283

/-- `A004526(A314287(n)+A314275(n))` -/
def P11642141299288819283.Spec : Prop :=
  ∀ n, P11642141299288819283.a n = A314283 n

end A314283

/-!
# A314284: Coordination sequence Gal.5.319.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314284, the canonical program `A314284.P1934382854699518132` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314284 has offset 0).

The definition of A314284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314284.P1934382854699518132

`record[A313981(3*n)%A313981(2*n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A314284

/-- `record[A313981(3*n)%A313981(2*n+1)]` -/
def P1934382854699518132.Spec : Prop :=
  ∀ n, P1934382854699518132.a n = A314284 n

theorem P1934382854699518132.correct : P1934382854699518132.Spec := by
  intro n
  simp only [A314284]

end A314284

/-! ## A314284.P1712369071926542799

`A314184(n)+A170980(A032559(n+1))`
-/

namespace A314284.P1712369071926542799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314184 n + A170980 (A032559 (n + 1)).toNat

end

end A314284.P1712369071926542799

namespace A314284

/-- `A314184(n)+A170980(A032559(n+1))` -/
def P1712369071926542799.Spec : Prop :=
  ∀ n, P1712369071926542799.a n = A314284 n

end A314284

/-!
# A314285: Coordination sequence Gal.6.653.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314285, there is no canonical definition to state claims against.
-/

/-! ## A314285.P4803951070902833133

`A313960(n)+A000122(A333652(2*(n+3)))`
-/

namespace A314285.P4803951070902833133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313960 n + A000122 (A333652 (2 * (n + 3))).toNat

end

end A314285.P4803951070902833133

/-!
# A314286: Coordination sequence Gal.3.57.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314286, there is no canonical definition to state claims against.
-/

/-! ## A314286.P16410130481928531840

`A314630(A241403(n+1)%A236137(∑[n]+1))`
-/

namespace A314286.P16410130481928531840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314630 (Int.tmod (A241403 (n + 1)) (A236137 (∑ j ∈ Finset.range (n + 1), f1 j + 1))).toNat

end

end A314286.P16410130481928531840

/-!
# A314287: Coordination sequence Gal.6.654.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314287, the canonical program `A314287.P10443611524641385548` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314287 has offset 0).

The definition of A314287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314287.P10443611524641385548

`ogf((1+4x+8x^2+9x^3+14x^4+8x^5+12x^6+8x^7+14x^8+9x^9+8x^10+4x^11+x^12)/(1-x+x^2-x^3-x^9+x^10-x^11+x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A314287

/-- `ogf((1+4x+8x^2+9x^3+14x^4+8x^5+12x^6+8x^7+14x^8+9x^9+8x^10+4x^11+x^12)/(1-x+x^2-x^3-x^9+x^10-x^11+x^12))` -/
def P10443611524641385548.Spec : Prop :=
  ∀ n, P10443611524641385548.a n = A314287 n

theorem P10443611524641385548.correct : P10443611524641385548.Spec := by
  intro n
  simp only [A314287]

end A314287

/-! ## A314287.P18293031345124378428

`2*A314218(n)-A313951(n)`
-/

namespace A314287.P18293031345124378428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314218 n - A313951 n

end

end A314287.P18293031345124378428

namespace A314287

/-- `2*A314218(n)-A313951(n)` -/
def P18293031345124378428.Spec : Prop :=
  ∀ n, P18293031345124378428.a n = A314287 n

theorem P18293031345124378428.correct : P18293031345124378428.Spec := by
  intro n
  simp only [A314287, Nat.add_sub_cancel, A314287.P18293031345124378428.a, A314287.P10443611524641385548.a, A313951, A313951.P12795868481169645276.a, A314218, A314218.P5748656243468499932.f1, A314218.P5748656243468499932.a, A011862, A011862.P9485299441699197278.a, A219529, A219529.P17213401734047467764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314287

/-! ## A314287.P17566220999956504316

`A005843(A314218(n))-A313951(n)`
-/

namespace A314287.P17566220999956504316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314218 n).toNat - A313951 n

end

end A314287.P17566220999956504316

namespace A314287

/-- `A005843(A314218(n))-A313951(n)` -/
def P17566220999956504316.Spec : Prop :=
  ∀ n, P17566220999956504316.a n = A314287 n

end A314287

/-! ## A314287.P17607698556957108495

`2*A314283(n)-A314275(n)`
-/

namespace A314287.P17607698556957108495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314283 n - A314275 n

end

end A314287.P17607698556957108495

namespace A314287

/-- `2*A314283(n)-A314275(n)` -/
def P17607698556957108495.Spec : Prop :=
  ∀ n, P17607698556957108495.a n = A314287 n

theorem P17607698556957108495.correct : P17607698556957108495.Spec := by
  intro n
  simp only [A314287, Nat.add_sub_cancel, A314287.P17607698556957108495.a, A314287.P10443611524641385548.a, A314275, A314275.P1273865093629993724.a, A314283, A314283.P2718913626275539959.a, A004396, A004396.P17032557045289780609.a, A314067, A314067.P8522433514397796165.a, A004767, A004767.P13352534504447192883.a, A008574, A008574.P1300280032690682112.a, A093390, A093390.P1811915316347876173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314287

/-! ## A314287.P9150035316397850426

`A005843(A314283(n))-A314275(n)`
-/

namespace A314287.P9150035316397850426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314283 n).toNat - A314275 n

end

end A314287.P9150035316397850426

namespace A314287

/-- `A005843(A314283(n))-A314275(n)` -/
def P9150035316397850426.Spec : Prop :=
  ∀ n, P9150035316397850426.a n = A314287 n

end A314287

/-!
# A314289: Coordination sequence Gal.6.630.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314289, there is no canonical definition to state claims against.
-/

/-! ## A314289.P2581091969921912246

`A313103(n)+A001222(A147722(n))`
-/

namespace A314289.P2581091969921912246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313103 n + A001222 (A147722 n).toNat

end

end A314289.P2581091969921912246

/-! ## A314289.P4096487212737107530

`A250120(n)+A089050(A289625(2*n+1))`
-/

namespace A314289.P4096487212737107530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A089050 (A289625 (2 * n + 1)).toNat

end

end A314289.P4096487212737107530

/-!
# A314290: Coordination sequence Gal.6.659.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314290, there is no canonical definition to state claims against.
-/

/-! ## A314290.P8344758798364030190

`or(A038554(A276142(n+1)), A310565(n))`
-/

namespace A314290.P8344758798364030190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038554 (A276142 (n + 1)).toNat) (A310565 n)

end

end A314290.P8344758798364030190

/-!
# A314293: Coordination sequence Gal.6.492.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314293, there is no canonical definition to state claims against.
-/

/-! ## A314293.P2041840828369835305

`A356104(n+1)-A001030(A307755(n))`
-/

namespace A314293.P2041840828369835305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356104 (n + 1) - A001030 (A307755 n).toNat

end

end A314293.P2041840828369835305

/-!
# A314294: Coordination sequence Gal.6.43.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314294, there is no canonical definition to state claims against.
-/

/-! ## A314294.P3611683352758302504

`eq[abs(A352530(n)), A040926(n)]`
-/

namespace A314294.P3611683352758302504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352530 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314294.P3611683352758302504

/-! ## A314294.P16569218860057336534

`or(record[A266394(n+1)], A212389(n))`
-/

namespace A314294.P16569218860057336534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A212389 n)

end

end A314294.P16569218860057336534

/-! ## A314294.P12004343150567645731

`eq[Δ[A085735(n+1)], A092220(n)]`
-/

namespace A314294.P12004343150567645731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A314294.P12004343150567645731

/-! ## A314294.P749727124726544018

`or(3*n+1, A033630(A041341(n)))`
-/

namespace A314294.P749727124726544018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 * n + 1 : ℤ) (A033630 (A041341 n).toNat)

end

end A314294.P749727124726544018

/-! ## A314294.P2966752138853522718

`or(3*n+1, A080495(Δ[A029957(n+1)]))`
-/

namespace A314294.P2966752138853522718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 * n + 1 : ℤ) (A080495 (f1 (n + 1) - f1 n).toNat)

end

end A314294.P2966752138853522718

/-!
# A314295: Coordination sequence Gal.5.5.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314295, there is no canonical definition to state claims against.
-/

/-! ## A314295.P15333780580455034769

`A092596(n+1)+comp[or(2, n)-1]`
-/

namespace A314295.P15333780580455034769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092596 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A314295.P15333780580455034769

/-! ## A314295.P12208193886273727623

`A092596(n+1)+A014601(n)`
-/

namespace A314295.P12208193886273727623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092596 (n + 1) + A014601 n

end

end A314295.P12208193886273727623

/-! ## A314295.P3290446378427934429

`A184964(A211699(n+1))+or(1, 3*n+1)`
-/

namespace A314295.P3290446378427934429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A211699 (n + 1)).toNat + (Nat.lor 1 (3 * n + 1) : ℤ)

end

end A314295.P3290446378427934429

/-! ## A314295.P10830261372983820255

`Δ[n²]+A247227(A061603(n)+n)-and(1, n+1)`
-/

namespace A314295.P10830261372983820255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A247227 (A061603 n + (n : ℤ)).toNat - (Nat.land 1 (n + 1) : ℤ))

end

end A314295.P10830261372983820255

/-!
# A314296: Coordination sequence Gal.4.16.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314296, there is no canonical definition to state claims against.
-/

/-! ## A314296.P18177950418066589539

`A051377(lt[A250994(n+1), A319798(n+2)])`
-/

namespace A314296.P18177950418066589539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319798 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A314296.P18177950418066589539

/-! ## A314296.P13214847577771801529

`or(A164366(n+1), A243903(3*n+1))`
-/

namespace A314296.P13214847577771801529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164366 (n + 1)) (A243903 (3 * n + 1))

end

end A314296.P13214847577771801529

/-! ## A314296.P5129348580821518570

`or(A002033(A045905(n)), A016777(n))`
-/

namespace A314296.P5129348580821518570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002033 (A045905 n).toNat) (A016777 n)

end

end A314296.P5129348580821518570

/-! ## A314296.P15759119580279891913

`or(A004739(A163087(n)), A016777(n))`
-/

namespace A314296.P15759119580279891913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004739 (A163087 n).toNat) (A016777 n)

end

end A314296.P15759119580279891913

/-!
# A314298: Coordination sequence Gal.6.70.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314298, there is no canonical definition to state claims against.
-/

/-! ## A314298.P7919580052924113523

`or(A105588(A022144(n)), A323410(n+1))`
-/

namespace A314298.P7919580052924113523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105588 (A022144 n).toNat) (A323410 (n + 1))

end

end A314298.P7919580052924113523

/-!
# A314299: Coordination sequence Gal.3.3.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314299, the canonical program `A314299.P8107454820952172919` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314299 has offset 0).

The definition of A314299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314299.P16792355525884020111

`A310200(n)+A314313(n)-A310252(n)`
-/

namespace A314299.P16792355525884020111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310200 n + (A314313 n - A310252 n)

end

end A314299.P16792355525884020111

namespace A314299

/-- `A310200(n)+A314313(n)-A310252(n)` -/
def P16792355525884020111.Spec : Prop :=
  ∀ n, P16792355525884020111.a n = A314299 n

end A314299

/-! ## A314299.P8107454820952172919

`A315311(n)-A026741(A047486(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314299

/-- `A315311(n)-A026741(A047486(n+1))` -/
def P8107454820952172919.Spec : Prop :=
  ∀ n, P8107454820952172919.a n = A314299 n

theorem P8107454820952172919.correct : P8107454820952172919.Spec := by
  intro n
  simp only [A314299]

end A314299

/-! ## A314299.P10455621081695617461

`A004525(A314615(2*n))`
-/

namespace A314299.P10455621081695617461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314615 (2 * n)).toNat

end

end A314299.P10455621081695617461

namespace A314299

/-- `A004525(A314615(2*n))` -/
def P10455621081695617461.Spec : Prop :=
  ∀ n, P10455621081695617461.a n = A314299 n

end A314299

/-! ## A314299.P1684821414226916023

`A004525(A315952(2*n))`
-/

namespace A314299.P1684821414226916023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315952 (2 * n)).toNat

end

end A314299.P1684821414226916023

namespace A314299

/-- `A004525(A315952(2*n))` -/
def P1684821414226916023.Spec : Prop :=
  ∀ n, P1684821414226916023.a n = A314299 n

end A314299

/-! ## A314299.P1627872265288420480

`A004524(or(2, A314615(2*n)))`
-/

namespace A314299.P1627872265288420480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 2 (A314615 (2 * n))).toNat

end

end A314299.P1627872265288420480

namespace A314299

/-- `A004524(or(2, A314615(2*n)))` -/
def P1627872265288420480.Spec : Prop :=
  ∀ n, P1627872265288420480.a n = A314299 n

end A314299

