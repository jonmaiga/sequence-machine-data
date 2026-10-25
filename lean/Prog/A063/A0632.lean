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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A063200: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 15 ).

The programs for A063200, the canonical program `A063200.P15218102957685383550` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063200 has offset 1).

The definition of A063200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063200.P15218102957685383550

`a(n-3)+4` with `a(0)=1, a(1)=2, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063200

/-- `a(n-3)+4` -/
def P15218102957685383550.Spec : Prop :=
  ∀ n, (P15218102957685383550.a n : ℤ) = A063200 (n + 1)

theorem P15218102957685383550.correct : P15218102957685383550.Spec := by
  intro n
  simp only [A063200, Nat.add_sub_cancel]

end A063200

/-! ## A063200.P12687453861818340708

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A063200.P12687453861818340708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P12687453861818340708

namespace A063200

/-- `∑[abs(a(n-3))]` -/
def P12687453861818340708.Spec : Prop :=
  ∀ n, (P12687453861818340708.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P15738202692950199893

`∑[2*a(gcd(3, n))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A063200.P15738202692950199893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0] fun n f1 =>
  2 * f1 (Nat.gcd 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P15738202692950199893

namespace A063200

/-- `∑[2*a(gcd(3, n))]` -/
def P15738202692950199893.Spec : Prop :=
  ∀ n, (P15738202692950199893.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P13131799525216175519

`∑[lcm(2, a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A063200.P13131799525216175519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0] fun n f1 =>
  Nat.lcm 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P13131799525216175519

namespace A063200

/-- `∑[lcm(2, a(n-3))]` -/
def P13131799525216175519.Spec : Prop :=
  ∀ n, (P13131799525216175519.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P2325768158008683766

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A063200.P2325768158008683766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P2325768158008683766

namespace A063200

/-- `∑[dr(a(n-3))]` -/
def P2325768158008683766.Spec : Prop :=
  ∀ n, (P2325768158008683766.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P13288513107440340034

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A063200.P13288513107440340034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P13288513107440340034

namespace A063200

/-- `∑[floor(a(n-3))]` -/
def P13288513107440340034.Spec : Prop :=
  ∀ n, (P13288513107440340034.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P4291712881441736022

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A063200.P4291712881441736022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P4291712881441736022

namespace A063200

/-- `∑[ceil(a(n-3))]` -/
def P4291712881441736022.Spec : Prop :=
  ∀ n, (P4291712881441736022.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P9416271785790230452

`∑[round(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A063200.P9416271785790230452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P9416271785790230452

namespace A063200

/-- `∑[round(a(n-3))]` -/
def P9416271785790230452.Spec : Prop :=
  ∀ n, (P9416271785790230452.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P12295386099054195198

`∑[(or(C(2, n), ∑[n])+n)%3]`
-/

namespace A063200.P12295386099054195198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor (Nat.choose 2 n) (∑ j ∈ Finset.range (n + 1), f2 j) + n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P12295386099054195198

namespace A063200

/-- `∑[(or(C(2, n), ∑[n])+n)%3]` -/
def P12295386099054195198.Spec : Prop :=
  ∀ n, (P12295386099054195198.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P2597492985551969546

`∑[(∑[n+1]+ceil(atan(n)))%3]`
-/

namespace A063200.P2597492985551969546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ⌈Real.arctan (n : ℝ)⌉) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P2597492985551969546

namespace A063200

/-- `∑[(∑[n+1]+ceil(atan(n)))%3]` -/
def P2597492985551969546.Spec : Prop :=
  ∀ n, P2597492985551969546.a n = A063200 (n + 1)

end A063200

/-! ## A063200.P629916410582252196

`∑[a(n-3)%3]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A063200.P629916410582252196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P629916410582252196

namespace A063200

/-- `∑[a(n-3)%3]` -/
def P629916410582252196.Spec : Prop :=
  ∀ n, (P629916410582252196.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P10280999994556735599

`∑[and(2, a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A063200.P10280999994556735599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 0, 2] fun n f1 =>
  Nat.land 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P10280999994556735599

namespace A063200

/-- `∑[and(2, a(n-3))]` -/
def P10280999994556735599.Spec : Prop :=
  ∀ n, (P10280999994556735599.a n : ℤ) = A063200 (n + 1)

end A063200

/-! ## A063200.P4854013431283493664

`2*(n-floor(a(n-1)/4))` with `a(0)=1`
-/

namespace A063200.P4854013431283493664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - ⌊(a (n - 1) : ℚ) / 4⌋)

end

end A063200.P4854013431283493664

namespace A063200

/-- `2*(n-floor(a(n-1)/4))` -/
def P4854013431283493664.Spec : Prop :=
  ∀ n, P4854013431283493664.a n = A063200 (n + 1)

end A063200

/-! ## A063200.P18143770961348909998

`∑[a(n-3)²/2]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A063200.P18143770961348909998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 3) ^ 2 / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P18143770961348909998

namespace A063200

/-- `∑[a(n-3)²/2]` -/
def P18143770961348909998.Spec : Prop :=
  ∀ n, P18143770961348909998.a n = (A063200 (n + 1) : ℚ)

end A063200

/-! ## A063200.P17392273930754165533

`2-(and(2, a(n-2))-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A063200.P17392273930754165533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - (Int.land 2 (a (n - 2)) - a (n - 1))

end

end A063200.P17392273930754165533

namespace A063200

/-- `2-(and(2, a(n-2))-a(n-1))` -/
def P17392273930754165533.Spec : Prop :=
  ∀ n, P17392273930754165533.a n = A063200 (n + 1)

end A063200

/-! ## A063200.P12840408978285577167

`2-(a(n-2)%4-a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A063200.P12840408978285577167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 - (Int.tmod (a (n - 2)) 4 - a (n - 1))

end

end A063200.P12840408978285577167

namespace A063200

/-- `2-(a(n-2)%4-a(n-1))` -/
def P12840408978285577167.Spec : Prop :=
  ∀ n, P12840408978285577167.a n = A063200 (n + 1)

end A063200

/-! ## A063200.P17714079332179753522

`∑[4-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A063200.P17714079332179753522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 0] fun n f1 =>
  4 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P17714079332179753522

namespace A063200

/-- `∑[4-a(n-1)-a(n-2)]` -/
def P17714079332179753522.Spec : Prop :=
  ∀ n, P17714079332179753522.a n = A063200 (n + 1)

end A063200

/-! ## A063200.P8816092078216568410

`Δ[A053799(n)]`
-/

namespace A063200.P8816092078216568410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063200.P8816092078216568410

namespace A063200

/-- `Δ[A053799(n)]` -/
def P8816092078216568410.Spec : Prop :=
  ∀ n, P8816092078216568410.a n = A063200 (n + 1)

end A063200

/-! ## A063200.P13943599136390098606

`∑[A347553(n+3)%3]`
-/

namespace A063200.P13943599136390098606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347553 (n + 3)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063200.P13943599136390098606

namespace A063200

/-- `∑[A347553(n+3)%3]` -/
def P13943599136390098606.Spec : Prop :=
  ∀ n, P13943599136390098606.a n = A063200 (n + 1)

end A063200

/-! ## A063200.P7341622783022124192

`A063087(n+1)-2*n`
-/

namespace A063200.P7341622783022124192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) - (2 * n : ℤ)

end

end A063200.P7341622783022124192

namespace A063200

/-- `A063087(n+1)-2*n` -/
def P7341622783022124192.Spec : Prop :=
  ∀ n, P7341622783022124192.a n = A063200 (n + 1)

end A063200

/-!
# A063201: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 18 ).

The programs for A063201, the canonical program `A063201.P863168209842636781` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063201 has offset 1).

The definition of A063201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063201.P863168209842636781

`∑[gcd(2, n)+1-gcd(3, n)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063201

/-- `∑[gcd(2, n)+1-gcd(3, n)]` -/
def P863168209842636781.Spec : Prop :=
  ∀ n, P863168209842636781.a n = A063201 (n + 1)

theorem P863168209842636781.correct : P863168209842636781.Spec := by
  intro n
  simp only [A063201, Nat.add_sub_cancel]

end A063201

/-! ## A063201.P4077437856662567897

`or(1, n)-Δ[ceil(n²/12)]`
-/

namespace A063201.P4077437856662567897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (f1 (n + 1) - f1 n)

end

end A063201.P4077437856662567897

namespace A063201

/-- `or(1, n)-Δ[ceil(n²/12)]` -/
def P4077437856662567897.Spec : Prop :=
  ∀ n, P4077437856662567897.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P8253924310905963877

`∑[and(3, ceil(n²/3)+9)-1]`
-/

namespace A063201.P8253924310905963877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (⌈(n ^ 2 : ℚ) / 3⌉ + 9) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063201.P8253924310905963877

namespace A063201

/-- `∑[and(3, ceil(n²/3)+9)-1]` -/
def P8253924310905963877.Spec : Prop :=
  ∀ n, P8253924310905963877.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P12831960312995457916

`∑[n²%3]+round(xor(1, n)/6)`
-/

namespace A063201.P12831960312995457916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

end

end A063201.P12831960312995457916

namespace A063201

/-- `∑[n²%3]+round(xor(1, n)/6)` -/
def P12831960312995457916.Spec : Prop :=
  ∀ n, P12831960312995457916.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P4733382870626716177

`∑[a(n-3)+(-1)^n]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A063201.P4733382870626716177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063201.P4733382870626716177

namespace A063201

/-- `∑[a(n-3)+(-1)^n]` -/
def P4733382870626716177.Spec : Prop :=
  ∀ n, P4733382870626716177.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P4952887081176114350

`floor(∑[floor(a(n-3))]/2)` with `a(0)=0, a(1)=3, a(2)=3, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A063201.P4952887081176114350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A063201.P4952887081176114350

namespace A063201

/-- `floor(∑[floor(a(n-3))]/2)` -/
def P4952887081176114350.Spec : Prop :=
  ∀ n, P4952887081176114350.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P8298675720610750417

`∑[gcd(1-2*n, n-2)-a(n-1)]` with `a(0)=0`
-/

namespace A063201.P8298675720610750417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Int.gcd (1 - (2 * n : ℤ)) ((n : ℤ) - 2) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063201.P8298675720610750417

namespace A063201

/-- `∑[gcd(1-2*n, n-2)-a(n-1)]` -/
def P8298675720610750417.Spec : Prop :=
  ∀ n, P8298675720610750417.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P4622943486644912075

`∑[gcd(4-a(n-1), ∑[n])]-a(n-1)` with `a(0)=0`
-/

namespace A063201.P4622943486644912075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.gcd (4 - (f1 (n - 1) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A063201.P4622943486644912075

namespace A063201

/-- `∑[gcd(4-a(n-1), ∑[n])]-a(n-1)` -/
def P4622943486644912075.Spec : Prop :=
  ∀ n, P4622943486644912075.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P7043752234555339796

`∑[floor(a(n-3))-(-1)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A063201.P7043752234555339796
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  (⌊f1 (n - 3)⌋ : ℝ) - (-1 : ℝ) ^ (f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063201.P7043752234555339796

namespace A063201

/-- `∑[floor(a(n-3))-(-1)^a(n-1)]` -/
def P7043752234555339796.Spec : Prop :=
  ∀ n, P7043752234555339796.a n = (A063201 (n + 1) : ℝ)

end A063201

/-! ## A063201.P4420933064570090436

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=4`
-/

namespace A063201.P4420933064570090436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2, 4] fun n a =>
  a (n - 2) + (a (n - 3) - a (n - 5))

end

end A063201.P4420933064570090436

namespace A063201

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P4420933064570090436.Spec : Prop :=
  ∀ n, P4420933064570090436.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P5595956585809632726

`∑[a(n-3)^a(a(n-3))]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A063201.P5595956585809632726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 3) ^ f1 (f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A063201.P5595956585809632726

namespace A063201

/-- `∑[a(n-3)^a(a(n-3))]-a(n-1)` -/
def P5595956585809632726.Spec : Prop :=
  ∀ n, P5595956585809632726.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P2859433318323907827

`n-floor(A063942(n)/2)`
-/

namespace A063201.P2859433318323907827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(A063942 n : ℚ) / 2⌋

end

end A063201.P2859433318323907827

namespace A063201

/-- `n-floor(A063942(n)/2)` -/
def P2859433318323907827.Spec : Prop :=
  ∀ n, P2859433318323907827.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P2330952256624338890

`∑[2*A105637(n)-n]`
-/

namespace A063201.P2330952256624338890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105637 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063201.P2330952256624338890

namespace A063201

/-- `∑[2*A105637(n)-n]` -/
def P2330952256624338890.Spec : Prop :=
  ∀ n, P2330952256624338890.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P4607221699139234634

`floor(A063224(n+1)-n/2)`
-/

namespace A063201.P4607221699139234634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063224 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A063201.P4607221699139234634

namespace A063201

/-- `floor(A063224(n+1)-n/2)` -/
def P4607221699139234634.Spec : Prop :=
  ∀ n, P4607221699139234634.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P13050739277453568684

`Δ[A077043(n)-ceil(n²/3)]`
-/

namespace A063201.P13050739277453568684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n - ⌈(n ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063201.P13050739277453568684

namespace A063201

/-- `Δ[A077043(n)-ceil(n²/3)]` -/
def P13050739277453568684.Spec : Prop :=
  ∀ n, P13050739277453568684.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P11249360952082101470

`A063245(n+1)%(2*n+1)`
-/

namespace A063201.P11249360952082101470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063245 (n + 1)) (2 * n + 1 : ℤ)

end

end A063201.P11249360952082101470

namespace A063201

/-- `A063245(n+1)%(2*n+1)` -/
def P11249360952082101470.Spec : Prop :=
  ∀ n, P11249360952082101470.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P15301102312799423229

`A008854(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A063201.P15301102312799423229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008854 (n + 1) - a (n - 1)

end

end A063201.P15301102312799423229

namespace A063201

/-- `A008854(n+1)-a(n-1)` -/
def P15301102312799423229.Spec : Prop :=
  ∀ n, P15301102312799423229.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P8783790678490966056

`ceil((4*n-A047360(n+1))/2)`
-/

namespace A063201.P8783790678490966056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 * n : ℤ) - A047360 (n + 1) : ℚ) / 2⌉

end

end A063201.P8783790678490966056

namespace A063201

/-- `ceil((4*n-A047360(n+1))/2)` -/
def P8783790678490966056.Spec : Prop :=
  ∀ n, P8783790678490966056.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P11862739355633959210

`∑[A000041(a(n-3))]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A063201.P11862739355633959210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A000041 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A063201.P11862739355633959210

namespace A063201

/-- `∑[A000041(a(n-3))]-a(n-1)` -/
def P11862739355633959210.Spec : Prop :=
  ∀ n, P11862739355633959210.a n = A063201 (n + 1)

end A063201

/-! ## A063201.P13677458005035545205

`A109613(n)-A008612(n)`
-/

namespace A063201.P13677458005035545205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A008612 n

end

end A063201.P13677458005035545205

namespace A063201

/-- `A109613(n)-A008612(n)` -/
def P13677458005035545205.Spec : Prop :=
  ∀ n, P13677458005035545205.a n = A063201 (n + 1)

end A063201

/-!
# A063202: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 22 ).

The programs for A063202, the canonical program `A063202.P6595617589327715731` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063202 has offset 1).

The definition of A063202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063202.P6595617589327715731

`a(n-2)+2*gcd(3, n+1)` with `a(0)=0, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063202

/-- `a(n-2)+2*gcd(3, n+1)` -/
def P6595617589327715731.Spec : Prop :=
  ∀ n, (P6595617589327715731.a n : ℤ) = A063202 (n + 1)

theorem P6595617589327715731.correct : P6595617589327715731.Spec := by
  intro n
  simp only [A063202, Nat.add_sub_cancel]

end A063202

/-! ## A063202.P17890408166325771782

`A063214(n+1)-Δ[n²]`
-/

namespace A063202.P17890408166325771782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063202.P17890408166325771782

namespace A063202

/-- `A063214(n+1)-Δ[n²]` -/
def P17890408166325771782.Spec : Prop :=
  ∀ n, P17890408166325771782.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P7738547452050224487

`A004273(1-A008612(n)+n)`
-/

namespace A063202.P7738547452050224487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (1 - A008612 n + (n : ℤ)).toNat

end

end A063202.P7738547452050224487

namespace A063202

/-- `A004273(1-A008612(n)+n)` -/
def P7738547452050224487.Spec : Prop :=
  ∀ n, P7738547452050224487.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P4146057647569349978

`A063244(n+1)-A016945(n)`
-/

namespace A063202.P4146057647569349978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063244 (n + 1) - A016945 n

end

end A063202.P4146057647569349978

namespace A063202

/-- `A063244(n+1)-A016945(n)` -/
def P4146057647569349978.Spec : Prop :=
  ∀ n, P4146057647569349978.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P7423732592030235212

`A004273(1-(A008612(n)-n))`
-/

namespace A063202.P7423732592030235212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (1 - (A008612 n - (n : ℤ))).toNat

end

end A063202.P7423732592030235212

namespace A063202

/-- `A004273(1-(A008612(n)-n))` -/
def P7423732592030235212.Spec : Prop :=
  ∀ n, P7423732592030235212.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P16133427421791704397

`A063224(n+1)+A063195(n+1)`
-/

namespace A063202.P16133427421791704397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1) + A063195 (n + 1)

end

end A063202.P16133427421791704397

namespace A063202

/-- `A063224(n+1)+A063195(n+1)` -/
def P16133427421791704397.Spec : Prop :=
  ∀ n, P16133427421791704397.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P10318349625441295021

`A063222(n+1)-A047235(n+1)`
-/

namespace A063202.P10318349625441295021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) - A047235 (n + 1)

end

end A063202.P10318349625441295021

namespace A063202

/-- `A063222(n+1)-A047235(n+1)` -/
def P10318349625441295021.Spec : Prop :=
  ∀ n, P10318349625441295021.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P15100826211655380538

`A063213(n+1)-A063199(n+1)`
-/

namespace A063202.P15100826211655380538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) - A063199 (n + 1)

end

end A063202.P15100826211655380538

namespace A063202

/-- `A063213(n+1)-A063199(n+1)` -/
def P15100826211655380538.Spec : Prop :=
  ∀ n, P15100826211655380538.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P7380706859891844152

`A063207(n+1)-A063212(n+1)`
-/

namespace A063202.P7380706859891844152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063207 (n + 1) - A063212 (n + 1)

end

end A063202.P7380706859891844152

namespace A063202

/-- `A063207(n+1)-A063212(n+1)` -/
def P7380706859891844152.Spec : Prop :=
  ∀ n, P7380706859891844152.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P16159823299080346670

`A063220(n+1)-A063226(n+1)`
-/

namespace A063202.P16159823299080346670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1) - A063226 (n + 1)

end

end A063202.P16159823299080346670

namespace A063202

/-- `A063220(n+1)-A063226(n+1)` -/
def P16159823299080346670.Spec : Prop :=
  ∀ n, P16159823299080346670.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P5867714217592384618

`A063226(n+1)-A063227(n+1)`
-/

namespace A063202.P5867714217592384618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) - A063227 (n + 1)

end

end A063202.P5867714217592384618

namespace A063202

/-- `A063226(n+1)-A063227(n+1)` -/
def P5867714217592384618.Spec : Prop :=
  ∀ n, P5867714217592384618.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P18325896558114104353

`A063225(n+1)-A063241(n+1)`
-/

namespace A063202.P18325896558114104353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (n + 1) - A063241 (n + 1)

end

end A063202.P18325896558114104353

namespace A063202

/-- `A063225(n+1)-A063241(n+1)` -/
def P18325896558114104353.Spec : Prop :=
  ∀ n, P18325896558114104353.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P4416931691916201454

`A063236(n+1)-A143988(n+1)`
-/

namespace A063202.P4416931691916201454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063236 (n + 1) - A143988 (n + 1)

end

end A063202.P4416931691916201454

namespace A063202

/-- `A063236(n+1)-A143988(n+1)` -/
def P4416931691916201454.Spec : Prop :=
  ∀ n, P4416931691916201454.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P10589332051811049937

`A063198(n+1)+2*A110654(n)`
-/

namespace A063202.P10589332051811049937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (n + 1) + 2 * A110654 n

end

end A063202.P10589332051811049937

namespace A063202

/-- `A063198(n+1)+2*A110654(n)` -/
def P10589332051811049937.Spec : Prop :=
  ∀ n, P10589332051811049937.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P8881512875537474112

`A063237(n+1)%A047410(n+1)`
-/

namespace A063202.P8881512875537474112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063237 (n + 1)) (A047410 (n + 1))

end

end A063202.P8881512875537474112

namespace A063202

/-- `A063237(n+1)%A047410(n+1)` -/
def P8881512875537474112.Spec : Prop :=
  ∀ n, P8881512875537474112.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P8196509210413700070

`A063198(n+1)+A000035(n)+n`
-/

namespace A063202.P8196509210413700070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (n + 1) + (A000035 n + (n : ℤ))

end

end A063202.P8196509210413700070

namespace A063202

/-- `A063198(n+1)+A000035(n)+n` -/
def P8196509210413700070.Spec : Prop :=
  ∀ n, P8196509210413700070.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P15234117937306890596

`A063196(n+1)+2*A063195(n+1)`
-/

namespace A063202.P15234117937306890596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1) + 2 * A063195 (n + 1)

end

end A063202.P15234117937306890596

namespace A063202

/-- `A063196(n+1)+2*A063195(n+1)` -/
def P15234117937306890596.Spec : Prop :=
  ∀ n, P15234117937306890596.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P2902321984103323786

`2*A063213(n+1)-A063206(n+1)`
-/

namespace A063202.P2902321984103323786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063213 (n + 1) - A063206 (n + 1)

end

end A063202.P2902321984103323786

namespace A063202

/-- `2*A063213(n+1)-A063206(n+1)` -/
def P2902321984103323786.Spec : Prop :=
  ∀ n, P2902321984103323786.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P898906234880717896

`Δ[n²]-A000032(C(2, n+2))*A008612(n)`
-/

namespace A063202.P898906234880717896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000032 (Nat.choose 2 (n + 2)) * A008612 n

end

end A063202.P898906234880717896

namespace A063202

/-- `Δ[n²]-A000032(C(2, n+2))*A008612(n)` -/
def P898906234880717896.Spec : Prop :=
  ∀ n, P898906234880717896.a n = A063202 (n + 1)

end A063202

/-! ## A063202.P10303650878941564098

`A004273(A008611(n+1)+A004526(n+1))`
-/

namespace A063202.P10303650878941564098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008611 (n + 1) + A004526 (n + 1)).toNat

end

end A063202.P10303650878941564098

namespace A063202

/-- `A004273(A008611(n+1)+A004526(n+1))` -/
def P10303650878941564098.Spec : Prop :=
  ∀ n, P10303650878941564098.a n = A063202 (n + 1)

end A063202

/-!
# A063203: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 23 ).

The programs for A063203, the canonical program `A063203.P6310427360662625857` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063203 has offset 1).

The definition of A063203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063203.P6310427360662625857

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=2, a(1)=5, a(2)=9, a(3)=13, a(4)=17, a(5)=19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063203

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P6310427360662625857.Spec : Prop :=
  ∀ n, P6310427360662625857.a n = A063203 (n + 1)

theorem P6310427360662625857.correct : P6310427360662625857.Spec := by
  intro n
  simp only [A063203, Nat.add_sub_cancel]

end A063203

/-! ## A063203.P13485026721430778578

`A063199(n+1)+Δ[n²]`
-/

namespace A063203.P13485026721430778578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063203.P13485026721430778578

namespace A063203

/-- `A063199(n+1)+Δ[n²]` -/
def P13485026721430778578.Spec : Prop :=
  ∀ n, P13485026721430778578.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P16930648866157566364

`4*n+2-A063195(n+1)`
-/

namespace A063203.P16930648866157566364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - A063195 (n + 1)

end

end A063203.P16930648866157566364

namespace A063203

/-- `4*n+2-A063195(n+1)` -/
def P16930648866157566364.Spec : Prop :=
  ∀ n, P16930648866157566364.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P7555912366005691725

`A016933(n)-A063081(n+1)`
-/

namespace A063203.P7555912366005691725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n - A063081 (n + 1)

end

end A063203.P7555912366005691725

namespace A063203

/-- `A016933(n)-A063081(n+1)` -/
def P7555912366005691725.Spec : Prop :=
  ∀ n, P7555912366005691725.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P13498150658842289549

`A063215(n+1)-A016825(n)`
-/

namespace A063203.P13498150658842289549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063215 (n + 1) - A016825 n

end

end A063203.P13498150658842289549

namespace A063203

/-- `A063215(n+1)-A016825(n)` -/
def P13498150658842289549.Spec : Prop :=
  ∀ n, P13498150658842289549.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P3701339799652558272

`A063223(n+1)-A016945(n)`
-/

namespace A063203.P3701339799652558272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063223 (n + 1) - A016945 n

end

end A063203.P3701339799652558272

namespace A063203

/-- `A063223(n+1)-A016945(n)` -/
def P3701339799652558272.Spec : Prop :=
  ∀ n, P3701339799652558272.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P15467404204100916187

`A063230(n+1)-A017113(n)`
-/

namespace A063203.P15467404204100916187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) - A017113 n

end

end A063203.P15467404204100916187

namespace A063203

/-- `A063230(n+1)-A017113(n)` -/
def P15467404204100916187.Spec : Prop :=
  ∀ n, P15467404204100916187.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P1576907063530242489

`A017317(n)-A063105(n+1)`
-/

namespace A063203.P1576907063530242489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A063105 (n + 1)

end

end A063203.P1576907063530242489

namespace A063203

/-- `A017317(n)-A063105(n+1)` -/
def P1576907063530242489.Spec : Prop :=
  ∀ n, P1576907063530242489.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P8386557845607447172

`A063235(n+1)-A017329(n)`
-/

namespace A063203.P8386557845607447172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063235 (n + 1) - A017329 n

end

end A063203.P8386557845607447172

namespace A063203

/-- `A063235(n+1)-A017329(n)` -/
def P8386557845607447172.Spec : Prop :=
  ∀ n, P8386557845607447172.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P14338640162483333671

`A063242(n+1)-A062157(n)`
-/

namespace A063203.P14338640162483333671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063242 (n + 1) - A062157 n

end

end A063203.P14338640162483333671

namespace A063203

/-- `A063242(n+1)-A062157(n)` -/
def P14338640162483333671.Spec : Prop :=
  ∀ n, P14338640162483333671.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P585035287327897110

`A063199(n+1)+A005843(n)+1`
-/

namespace A063203.P585035287327897110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 1) + A005843 n + 1

end

end A063203.P585035287327897110

namespace A063203

/-- `A063199(n+1)+A005843(n)+1` -/
def P585035287327897110.Spec : Prop :=
  ∀ n, P585035287327897110.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P16691266198662250261

`A063196(n+1)+A047410(n+1)`
-/

namespace A063203.P16691266198662250261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1) + A047410 (n + 1)

end

end A063203.P16691266198662250261

namespace A063203

/-- `A063196(n+1)+A047410(n+1)` -/
def P16691266198662250261.Spec : Prop :=
  ∀ n, P16691266198662250261.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P10155320010555010365

`A063212(n+1)+A063210(n+1)`
-/

namespace A063203.P10155320010555010365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063212 (n + 1) + A063210 (n + 1)

end

end A063203.P10155320010555010365

namespace A063203

/-- `A063212(n+1)+A063210(n+1)` -/
def P10155320010555010365.Spec : Prop :=
  ∀ n, P10155320010555010365.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P17168266135229059728

`A063209(n+1)-A007310(n+1)`
-/

namespace A063203.P17168266135229059728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063209 (n + 1) - A007310 (n + 1)

end

end A063203.P17168266135229059728

namespace A063203

/-- `A063209(n+1)-A007310(n+1)` -/
def P17168266135229059728.Spec : Prop :=
  ∀ n, P17168266135229059728.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P3719147325510717777

`A063206(n+1)-A063224(n+1)`
-/

namespace A063203.P3719147325510717777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (n + 1) - A063224 (n + 1)

end

end A063203.P3719147325510717777

namespace A063203

/-- `A063206(n+1)-A063224(n+1)` -/
def P3719147325510717777.Spec : Prop :=
  ∀ n, P3719147325510717777.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P5373260725125165546

`A063211(n+1)-A063213(n+1)`
-/

namespace A063203.P5373260725125165546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063211 (n + 1) - A063213 (n + 1)

end

end A063203.P5373260725125165546

namespace A063203

/-- `A063211(n+1)-A063213(n+1)` -/
def P5373260725125165546.Spec : Prop :=
  ∀ n, P5373260725125165546.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P4842821513272359303

`A063226(n+1)-A063200(n+1)`
-/

namespace A063203.P4842821513272359303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) - A063200 (n + 1)

end

end A063203.P4842821513272359303

namespace A063203

/-- `A063226(n+1)-A063200(n+1)` -/
def P4842821513272359303.Spec : Prop :=
  ∀ n, P4842821513272359303.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P11340279005360939371

`A063246(n+1)-A063222(n+1)`
-/

namespace A063203.P11340279005360939371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063246 (n + 1) - A063222 (n + 1)

end

end A063203.P11340279005360939371

namespace A063203

/-- `A063246(n+1)-A063222(n+1)` -/
def P11340279005360939371.Spec : Prop :=
  ∀ n, P11340279005360939371.a n = A063203 (n + 1)

end A063203

/-! ## A063203.P10659243113998207135

`A063219(n+1)-A090772(n+1)`
-/

namespace A063203.P10659243113998207135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063219 (n + 1) - A090772 (n + 1)

end

end A063203.P10659243113998207135

namespace A063203

/-- `A063219(n+1)-A090772(n+1)` -/
def P10659243113998207135.Spec : Prop :=
  ∀ n, P10659243113998207135.a n = A063203 (n + 1)

end A063203

/-!
# A063204: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 25 ).

The programs for A063204, the canonical program `A063204.P309394886215100245` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063204 has offset 1).

The definition of A063204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063204.P309394886215100245

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=9, a(4)=13`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063204

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P309394886215100245.Spec : Prop :=
  ∀ n, P309394886215100245.a n = A063204 (n + 1)

theorem P309394886215100245.correct : P309394886215100245.Spec := by
  intro n
  simp only [A063204, Nat.add_sub_cancel]

end A063204

/-! ## A063204.P14997625696980275633

`round(xor(1, n)/6+3*n)`
-/

namespace A063204.P14997625696980275633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6 + (3 * n : ℚ))

end

end A063204.P14997625696980275633

namespace A063204

/-- `round(xor(1, n)/6+3*n)` -/
def P14997625696980275633.Spec : Prop :=
  ∀ n, P14997625696980275633.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P11451533028174128206

`floor(7*n/2-floor(n/3))`
-/

namespace A063204.P11451533028174128206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 2) - (⌊(n : ℚ) / 3⌋ : ℚ)⌋

end

end A063204.P11451533028174128206

namespace A063204

/-- `floor(7*n/2-floor(n/3))` -/
def P11451533028174128206.Spec : Prop :=
  ∀ n, P11451533028174128206.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P13404960745272443504

`∑[∑{d}[n, C(2, #)]+n²%3]`
-/

namespace A063204.P13404960745272443504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose 2 d + n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063204.P13404960745272443504

namespace A063204

/-- `∑[∑{d}[n, C(2, #)]+n²%3]` -/
def P13404960745272443504.Spec : Prop :=
  ∀ n, (P13404960745272443504.a n : ℤ) = A063204 (n + 1)

end A063204

/-! ## A063204.P18202235487190315260

`a(n-3)-and(1, n)+10` with `a(0)=0, a(1)=3, a(2)=7`
-/

namespace A063204.P18202235487190315260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 7] fun n a =>
  a (n - 3) - (Nat.land 1 n : ℤ) + 10

end

end A063204.P18202235487190315260

namespace A063204

/-- `a(n-3)-and(1, n)+10` -/
def P18202235487190315260.Spec : Prop :=
  ∀ n, P18202235487190315260.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P11421149381690024357

`10-(and(1, n)-a(n-3))` with `a(0)=0, a(1)=3, a(2)=7`
-/

namespace A063204.P11421149381690024357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 7] fun n a =>
  10 - ((Nat.land 1 n : ℤ) - a (n - 3))

end

end A063204.P11421149381690024357

namespace A063204

/-- `10-(and(1, n)-a(n-3))` -/
def P11421149381690024357.Spec : Prop :=
  ∀ n, P11421149381690024357.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P2917148914646312647

`∑[(a(n-2)+n)%3+2]` with `a(0)=0, a(1)=3`
-/

namespace A063204.P2917148914646312647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  (f1 (n - 2) + n) % 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063204.P2917148914646312647

namespace A063204

/-- `∑[(a(n-2)+n)%3+2]` -/
def P2917148914646312647.Spec : Prop :=
  ∀ n, (P2917148914646312647.a n : ℤ) = A063204 (n + 1)

end A063204

/-! ## A063204.P7182966160947250244

`A008615(n)+3*n`
-/

namespace A063204.P7182966160947250244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n + (3 * n : ℤ)

end

end A063204.P7182966160947250244

namespace A063204

/-- `A008615(n)+3*n` -/
def P7182966160947250244.Spec : Prop :=
  ∀ n, P7182966160947250244.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P15946776608310125342

`4*n-A063197(n+1)`
-/

namespace A063204.P15946776608310125342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A063197 (n + 1)

end

end A063204.P15946776608310125342

namespace A063204

/-- `4*n-A063197(n+1)` -/
def P15946776608310125342.Spec : Prop :=
  ∀ n, P15946776608310125342.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P1044440322680545062

`A063246(n+1)/2-(n+2)`
-/

namespace A063204.P1044440322680545062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063246 (n + 1) : ℚ) / 2 - (n + 2 : ℚ)

end

end A063204.P1044440322680545062

namespace A063204

/-- `A063246(n+1)/2-(n+2)` -/
def P1044440322680545062.Spec : Prop :=
  ∀ n, P1044440322680545062.a n = (A063204 (n + 1) : ℚ)

end A063204

/-! ## A063204.P6021344229034372976

`a(n-1)+A117447(n)+2` with `a(0)=0`
-/

namespace A063204.P6021344229034372976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A117447 n + 2)

end

end A063204.P6021344229034372976

namespace A063204

/-- `a(n-1)+A117447(n)+2` -/
def P6021344229034372976.Spec : Prop :=
  ∀ n, P6021344229034372976.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P11180984734913993921

`2*n+2*n+1-∑[A001222(gcd(n+3, 2*n))]`
-/

namespace A063204.P11180984734913993921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd (n + 3) (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063204.P11180984734913993921

namespace A063204

/-- `2*n+2*n+1-∑[A001222(gcd(n+3, 2*n))]` -/
def P11180984734913993921.Spec : Prop :=
  ∀ n, P11180984734913993921.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P16239054324721216319

`A047399(n+1)+A004526(n)`
-/

namespace A063204.P16239054324721216319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047399 (n + 1) + A004526 n

end

end A063204.P16239054324721216319

namespace A063204

/-- `A047399(n+1)+A004526(n)` -/
def P16239054324721216319.Spec : Prop :=
  ∀ n, P16239054324721216319.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P8923839925966284088

`A047212(n+1)+A032766(n)`
-/

namespace A063204.P8923839925966284088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047212 (n + 1) + A032766 n

end

end A063204.P8923839925966284088

namespace A063204

/-- `A047212(n+1)+A032766(n)` -/
def P8923839925966284088.Spec : Prop :=
  ∀ n, P8923839925966284088.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P16996337001747081475

`A090168(n)+A047386(n+1)`
-/

namespace A063204.P16996337001747081475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 n + A047386 (n + 1)

end

end A063204.P16996337001747081475

namespace A063204

/-- `A090168(n)+A047386(n+1)` -/
def P16996337001747081475.Spec : Prop :=
  ∀ n, P16996337001747081475.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P4108050979524167552

`A105637(n)+A047618(n+1)`
-/

namespace A063204.P4108050979524167552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 n + A047618 (n + 1)

end

end A063204.P4108050979524167552

namespace A063204

/-- `A105637(n)+A047618(n+1)` -/
def P4108050979524167552.Spec : Prop :=
  ∀ n, P4108050979524167552.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P15368711987305990749

`A322042(n+1)+A047215(n)`
-/

namespace A063204.P15368711987305990749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (n + 1) + A047215 n

end

end A063204.P15368711987305990749

namespace A063204

/-- `A322042(n+1)+A047215(n)` -/
def P15368711987305990749.Spec : Prop :=
  ∀ n, P15368711987305990749.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P11263891317800988280

`A047355(n+1)-A002264(n)`
-/

namespace A063204.P11263891317800988280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1) - A002264 n

end

end A063204.P11263891317800988280

namespace A063204

/-- `A047355(n+1)-A002264(n)` -/
def P11263891317800988280.Spec : Prop :=
  ∀ n, P11263891317800988280.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P1809139434301301958

`A047346(n+1)-A008620(n)`
-/

namespace A063204.P1809139434301301958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (n + 1) - A008620 n

end

end A063204.P1809139434301301958

namespace A063204

/-- `A047346(n+1)-A008620(n)` -/
def P1809139434301301958.Spec : Prop :=
  ∀ n, P1809139434301301958.a n = A063204 (n + 1)

end A063204

/-! ## A063204.P3255106360409455697

`A063247(n+1)-A000034(n)`
-/

namespace A063204.P3255106360409455697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063247 (n + 1) - A000034 n

end

end A063204.P3255106360409455697

namespace A063204

/-- `A063247(n+1)-A000034(n)` -/
def P3255106360409455697.Spec : Prop :=
  ∀ n, P3255106360409455697.a n = A063204 (n + 1)

end A063204

/-!
# A063205: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 29 ).

The programs for A063205, the canonical program `A063205.P10959968045936974589` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063205 has offset 1).

The definition of A063205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063205.P10959968045936974589

`a(n-3)+14` with `a(0)=2, a(1)=7, a(2)=11, a(3)=17`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063205

/-- `a(n-3)+14` -/
def P10959968045936974589.Spec : Prop :=
  ∀ n, (P10959968045936974589.a n : ℤ) = A063205 (n + 1)

theorem P10959968045936974589.correct : P10959968045936974589.Spec := by
  intro n
  simp only [A063205, Nat.add_sub_cancel]

end A063205

/-! ## A063205.P15635584018161637181

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=5, a(2)=4, a(3)=6, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A063205.P15635584018161637181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 4, 6, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063205.P15635584018161637181

namespace A063205

/-- `∑[floor(a(n-3))]` -/
def P15635584018161637181.Spec : Prop :=
  ∀ n, (P15635584018161637181.a n : ℤ) = A063205 (n + 1)

end A063205

/-! ## A063205.P6673712987499363598

`∑[a(n-3)%7]` with `a(0)=2, a(1)=5, a(2)=4, a(3)=6, a(4)=4`
-/

namespace A063205.P6673712987499363598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 4, 6, 4] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063205.P6673712987499363598

namespace A063205

/-- `∑[a(n-3)%7]` -/
def P6673712987499363598.Spec : Prop :=
  ∀ n, (P6673712987499363598.a n : ℤ) = A063205 (n + 1)

end A063205

/-! ## A063205.P16910132461261799021

`A063209(n+1)-Δ[n²]`
-/

namespace A063205.P16910132461261799021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063209 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063205.P16910132461261799021

namespace A063205

/-- `A063209(n+1)-Δ[n²]` -/
def P16910132461261799021.Spec : Prop :=
  ∀ n, P16910132461261799021.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P2889264852267086690

`A000027(Δ[floor(abs(7*n²-1)/3)])`
-/

namespace A063205.P2889264852267086690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|(7 * n ^ 2 : ℤ) - 1| : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A063205.P2889264852267086690

namespace A063205

/-- `A000027(Δ[floor(abs(7*n²-1)/3)])` -/
def P2889264852267086690.Spec : Prop :=
  ∀ n, P2889264852267086690.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P13383557468046898316

`(comp[4*n]+n)*(A157532(n+1)-1)+1`
-/

namespace A063205.P13383557468046898316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) * (A157532 (n + 1) - 1) + 1

end

end A063205.P13383557468046898316

namespace A063205

/-- `(comp[4*n]+n)*(A157532(n+1)-1)+1` -/
def P13383557468046898316.Spec : Prop :=
  ∀ n, P13383557468046898316.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P13833119791735356400

`A301298(n)+A082204(n)`
-/

namespace A063205.P13833119791735356400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A082204 n

end

end A063205.P13833119791735356400

namespace A063205

/-- `A301298(n)+A082204(n)` -/
def P13833119791735356400.Spec : Prop :=
  ∀ n, P13833119791735356400.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P830915492434007216

`A103517(n)+A047623(n+1)`
-/

namespace A063205.P830915492434007216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A047623 (n + 1)

end

end A063205.P830915492434007216

namespace A063205

/-- `A103517(n)+A047623(n+1)` -/
def P830915492434007216.Spec : Prop :=
  ∀ n, P830915492434007216.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P7422637103671245615

`A063219(n+1)-A016825(n)`
-/

namespace A063205.P7422637103671245615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063219 (n + 1) - A016825 n

end

end A063205.P7422637103671245615

namespace A063205

/-- `A063219(n+1)-A016825(n)` -/
def P7422637103671245615.Spec : Prop :=
  ∀ n, P7422637103671245615.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P3158597594530119548

`A016945(n)-A063200(n+1)`
-/

namespace A063205.P3158597594530119548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - A063200 (n + 1)

end

end A063205.P3158597594530119548

namespace A063205

/-- `A016945(n)-A063200(n+1)` -/
def P3158597594530119548.Spec : Prop :=
  ∀ n, P3158597594530119548.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P2837538857981786007

`A017101(n)-A063087(n+1)`
-/

namespace A063205.P2837538857981786007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - A063087 (n + 1)

end

end A063205.P2837538857981786007

namespace A063205

/-- `A017101(n)-A063087(n+1)` -/
def P2837538857981786007.Spec : Prop :=
  ∀ n, P2837538857981786007.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P13597410387264733256

`A017305(n)-A063089(n+1)`
-/

namespace A063205.P13597410387264733256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - A063089 (n + 1)

end

end A063205.P13597410387264733256

namespace A063205

/-- `A017305(n)-A063089(n+1)` -/
def P13597410387264733256.Spec : Prop :=
  ∀ n, P13597410387264733256.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P4625422285233414287

`A017317(n)-A063099(n+1)`
-/

namespace A063205.P4625422285233414287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A063099 (n + 1)

end

end A063205.P4625422285233414287

namespace A063205

/-- `A017317(n)-A063099(n+1)` -/
def P4625422285233414287.Spec : Prop :=
  ∀ n, P4625422285233414287.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P2537364977768087014

`A017329(n)-A063218(n+1)`
-/

namespace A063205.P2537364977768087014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A063218 (n + 1)

end

end A063205.P2537364977768087014

namespace A063205

/-- `A017329(n)-A063218(n+1)` -/
def P2537364977768087014.Spec : Prop :=
  ∀ n, P2537364977768087014.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P17712396559879731560

`A063240(n+1)-A017329(n)`
-/

namespace A063205.P17712396559879731560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063240 (n + 1) - A017329 n

end

end A063205.P17712396559879731560

namespace A063205

/-- `A063240(n+1)-A017329(n)` -/
def P17712396559879731560.Spec : Prop :=
  ∀ n, P17712396559879731560.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P8192269893388784581

`A017581(n)-A063111(n+1)`
-/

namespace A063205.P8192269893388784581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n - A063111 (n + 1)

end

end A063205.P8192269893388784581

namespace A063205

/-- `A017581(n)-A063111(n+1)` -/
def P8192269893388784581.Spec : Prop :=
  ∀ n, P8192269893388784581.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P119930141214489876

`A147587(n)-A063238(n+1)`
-/

namespace A063205.P119930141214489876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n - A063238 (n + 1)

end

end A063205.P119930141214489876

namespace A063205

/-- `A147587(n)-A063238(n+1)` -/
def P119930141214489876.Spec : Prop :=
  ∀ n, P119930141214489876.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P4546704044417146868

`A281813(n)-A063213(n+1)`
-/

namespace A063205.P4546704044417146868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n - A063213 (n + 1)

end

end A063205.P4546704044417146868

namespace A063205

/-- `A281813(n)-A063213(n+1)` -/
def P4546704044417146868.Spec : Prop :=
  ∀ n, P4546704044417146868.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P7498521644474535646

`A063199(n+1)+A007310(n+1)`
-/

namespace A063205.P7498521644474535646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 1) + A007310 (n + 1)

end

end A063205.P7498521644474535646

namespace A063205

/-- `A063199(n+1)+A007310(n+1)` -/
def P7498521644474535646.Spec : Prop :=
  ∀ n, P7498521644474535646.a n = A063205 (n + 1)

end A063205

/-! ## A063205.P17373331326634257062

`A063242(n+1)+A063196(n+1)`
-/

namespace A063205.P17373331326634257062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063242 (n + 1) + A063196 (n + 1)

end

end A063205.P17373331326634257062

namespace A063205

/-- `A063242(n+1)+A063196(n+1)` -/
def P17373331326634257062.Spec : Prop :=
  ∀ n, P17373331326634257062.a n = A063205 (n + 1)

end A063205

/-!
# A063206: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 31 ).

The programs for A063206, the canonical program `A063206.P12553831353234623464` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063206 has offset 1).

The definition of A063206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063206.P12553831353234623464

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=7, a(2)=13, a(3)=17`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063206

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P12553831353234623464.Spec : Prop :=
  ∀ n, P12553831353234623464.a n = A063206 (n + 1)

theorem P12553831353234623464.correct : P12553831353234623464.Spec := by
  intro n
  simp only [A063206, Nat.add_sub_cancel]

end A063206

/-! ## A063206.P7836043251699474766

`a(n-2)+10` with `a(0)=2, a(1)=7, a(2)=13`
-/

namespace A063206.P7836043251699474766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 13] fun n a =>
  a (n - 2) + 10

end

end A063206.P7836043251699474766

namespace A063206

/-- `a(n-2)+10` -/
def P7836043251699474766.Spec : Prop :=
  ∀ n, (P7836043251699474766.a n : ℤ) = A063206 (n + 1)

end A063206

/-! ## A063206.P11520034320308103723

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=5, a(2)=6, a(3)=4`
-/

namespace A063206.P11520034320308103723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063206.P11520034320308103723

namespace A063206

/-- `∑[abs(a(n-2))]` -/
def P11520034320308103723.Spec : Prop :=
  ∀ n, (P11520034320308103723.a n : ℤ) = A063206 (n + 1)

end A063206

/-! ## A063206.P7436610415897455857

`∑[10-a(n-1)]` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A063206.P7436610415897455857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063206.P7436610415897455857

namespace A063206

/-- `∑[10-a(n-1)]` -/
def P7436610415897455857.Spec : Prop :=
  ∀ n, P7436610415897455857.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P14902676815102853393

`10*n-a(n-1)` with `a(0)=2, a(1)=7`
-/

namespace A063206.P14902676815102853393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  (10 * n : ℤ) - a (n - 1)

end

end A063206.P14902676815102853393

namespace A063206

/-- `10*n-a(n-1)` -/
def P14902676815102853393.Spec : Prop :=
  ∀ n, P14902676815102853393.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P5129921413574237541

`∑[∑[ogf((2+5x+4x^2-x^3)/(1+x))]]`
-/

namespace A063206.P5129921413574237541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 4, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063206.P5129921413574237541

namespace A063206

/-- `∑[∑[ogf((2+5x+4x^2-x^3)/(1+x))]]` -/
def P5129921413574237541.Spec : Prop :=
  ∀ n, P5129921413574237541.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P16563475425157606565

`ogf((2+5x+4x^2-x^3)/(1-x-x^2+x^3))`
-/

namespace A063206.P16563475425157606565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 4, -1] [1, -1, -1, 1] n

end

end A063206.P16563475425157606565

namespace A063206

/-- `ogf((2+5x+4x^2-x^3)/(1-x-x^2+x^3))` -/
def P16563475425157606565.Spec : Prop :=
  ∀ n, P16563475425157606565.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P2200398597689149167

`A063211(n+1)-Δ[n²]`
-/

namespace A063206.P2200398597689149167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063211 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063206.P2200398597689149167

namespace A063206

/-- `A063211(n+1)-Δ[n²]` -/
def P2200398597689149167.Spec : Prop :=
  ∀ n, P2200398597689149167.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P1456675557891386694

`A016873(n)+char[2*(n+1)]`
-/

namespace A063206.P1456675557891386694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063206.P1456675557891386694

namespace A063206

/-- `A016873(n)+char[2*(n+1)]` -/
def P1456675557891386694.Spec : Prop :=
  ∀ n, P1456675557891386694.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P15512624271793162888

`A063226(n+1)-C(2, n+2)`
-/

namespace A063206.P15512624271793162888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A063206.P15512624271793162888

namespace A063206

/-- `A063226(n+1)-C(2, n+2)` -/
def P15512624271793162888.Spec : Prop :=
  ∀ n, P15512624271793162888.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P13536838150050390308

`A040001(n)+A016861(n)`
-/

namespace A063206.P13536838150050390308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + A016861 n

end

end A063206.P13536838150050390308

namespace A063206

/-- `A040001(n)+A016861(n)` -/
def P13536838150050390308.Spec : Prop :=
  ∀ n, P13536838150050390308.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P9457365826665653463

`A164356(n)+A100531(n)`
-/

namespace A063206.P9457365826665653463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164356 n + A100531 n

end

end A063206.P9457365826665653463

namespace A063206

/-- `A164356(n)+A100531(n)` -/
def P9457365826665653463.Spec : Prop :=
  ∀ n, P9457365826665653463.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P15040945166467803476

`A063196(n+1)+A016825(n)`
-/

namespace A063206.P15040945166467803476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1) + A016825 n

end

end A063206.P15040945166467803476

namespace A063206

/-- `A063196(n+1)+A016825(n)` -/
def P15040945166467803476.Spec : Prop :=
  ∀ n, P15040945166467803476.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P11008723533818369744

`A049636(n)+A047352(n+1)`
-/

namespace A063206.P11008723533818369744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n + A047352 (n + 1)

end

end A063206.P11008723533818369744

namespace A063206

/-- `A049636(n)+A047352(n+1)` -/
def P11008723533818369744.Spec : Prop :=
  ∀ n, P11008723533818369744.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P11584974266836164545

`A063093(n+1)+A040003(n)`
-/

namespace A063206.P11584974266836164545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1) + A040003 n

end

end A063206.P11584974266836164545

namespace A063206

/-- `A063093(n+1)+A040003(n)` -/
def P11584974266836164545.Spec : Prop :=
  ∀ n, P11584974266836164545.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P13601623334013147549

`A103517(n)+A047241(n+1)`
-/

namespace A063206.P13601623334013147549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A047241 (n + 1)

end

end A063206.P13601623334013147549

namespace A063206

/-- `A103517(n)+A047241(n+1)` -/
def P13601623334013147549.Spec : Prop :=
  ∀ n, P13601623334013147549.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P14333053296703973394

`A114119(n)+A047346(n+1)`
-/

namespace A063206.P14333053296703973394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n + A047346 (n + 1)

end

end A063206.P14333053296703973394

namespace A063206

/-- `A114119(n)+A047346(n+1)` -/
def P14333053296703973394.Spec : Prop :=
  ∀ n, P14333053296703973394.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P15074199952381950945

`A133653(n+1)+A109613(n)`
-/

namespace A063206.P15074199952381950945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1) + A109613 n

end

end A063206.P15074199952381950945

namespace A063206

/-- `A133653(n+1)+A109613(n)` -/
def P15074199952381950945.Spec : Prop :=
  ∀ n, P15074199952381950945.a n = A063206 (n + 1)

end A063206

/-! ## A063206.P76506825465246538

`A157532(n+1)+A146763(n)`
-/

namespace A063206.P76506825465246538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + A146763 n

end

end A063206.P76506825465246538

namespace A063206

/-- `A157532(n+1)+A146763(n)` -/
def P76506825465246538.Spec : Prop :=
  ∀ n, P76506825465246538.a n = A063206 (n + 1)

end A063206

/-!
# A063207: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 33 ).

The programs for A063207, the canonical program `A063207.P4152208277931986503` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063207 has offset 1).

The definition of A063207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063207.P4152208277931986503

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=6, a(2)=8, a(3)=12, a(4)=14, a(5)=20`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063207

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P4152208277931986503.Spec : Prop :=
  ∀ n, P4152208277931986503.a n = A063207 (n + 1)

theorem P4152208277931986503.correct : P4152208277931986503.Spec := by
  intro n
  simp only [A063207, Nat.add_sub_cancel]

end A063207

/-! ## A063207.P17848863099965280626

`and(2, a(n-1))+a(n-2)+6` with `a(0)=1, a(1)=6, a(2)=8`
-/

namespace A063207.P17848863099965280626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 8] fun n a =>
  Nat.land 2 (a (n - 1)) + (a (n - 2) + 6)

end

end A063207.P17848863099965280626

namespace A063207

/-- `and(2, a(n-1))+a(n-2)+6` -/
def P17848863099965280626.Spec : Prop :=
  ∀ n, (P17848863099965280626.a n : ℤ) = A063207 (n + 1)

end A063207

/-! ## A063207.P4329327361697282933

`A014681(n)+∑[A169609(n)]`
-/

namespace A063207.P4329327361697282933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063207.P4329327361697282933

namespace A063207

/-- `A014681(n)+∑[A169609(n)]` -/
def P4329327361697282933.Spec : Prop :=
  ∀ n, P4329327361697282933.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P8654917385108787783

`A063087(n+1)+A010673(n)`
-/

namespace A063207.P8654917385108787783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + A010673 n

end

end A063207.P8654917385108787783

namespace A063207

/-- `A063087(n+1)+A010673(n)` -/
def P8654917385108787783.Spec : Prop :=
  ∀ n, P8654917385108787783.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P17997887995781272967

`A063213(n+1)+A062157(n)`
-/

namespace A063207.P17997887995781272967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A062157 n

end

end A063207.P17997887995781272967

namespace A063207

/-- `A063213(n+1)+A062157(n)` -/
def P17997887995781272967.Spec : Prop :=
  ∀ n, P17997887995781272967.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P6208208036852849842

`A063229(n+1)-A016825(n)`
-/

namespace A063207.P6208208036852849842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1) - A016825 n

end

end A063207.P6208208036852849842

namespace A063207

/-- `A063229(n+1)-A016825(n)` -/
def P6208208036852849842.Spec : Prop :=
  ∀ n, P6208208036852849842.a n = A063207 (n + 1)

theorem P6208208036852849842.correct : P6208208036852849842.Spec := by
  intro n
  simp only [A063207, Nat.add_sub_cancel, A063207.P6208208036852849842.a, A063207.P4152208277931986503.a, A016825, A016825.P4712696052905976233.a, A063229, A063229.P2455044806351860707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063207

/-! ## A063207.P11100972766066737221

`A063087(n+1)+Δ[A109613(n)]`
-/

namespace A063207.P11100972766066737221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + (f1 (n + 1) - f1 n)

end

end A063207.P11100972766066737221

namespace A063207

/-- `A063087(n+1)+Δ[A109613(n)]` -/
def P11100972766066737221.Spec : Prop :=
  ∀ n, P11100972766066737221.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P17002247702826810824

`A063195(n+1)+A007310(n+1)`
-/

namespace A063207.P17002247702826810824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1) + A007310 (n + 1)

end

end A063207.P17002247702826810824

namespace A063207

/-- `A063195(n+1)+A007310(n+1)` -/
def P17002247702826810824.Spec : Prop :=
  ∀ n, P17002247702826810824.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P7474876330827293981

`A065190(n+1)+A047281(n+1)`
-/

namespace A063207.P7474876330827293981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1) + A047281 (n + 1)

end

end A063207.P7474876330827293981

namespace A063207

/-- `A065190(n+1)+A047281(n+1)` -/
def P7474876330827293981.Spec : Prop :=
  ∀ n, P7474876330827293981.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P6436336213586535358

`A063212(n+1)+A063202(n+1)`
-/

namespace A063207.P6436336213586535358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063212 (n + 1) + A063202 (n + 1)

end

end A063207.P6436336213586535358

namespace A063207

/-- `A063212(n+1)+A063202(n+1)` -/
def P6436336213586535358.Spec : Prop :=
  ∀ n, P6436336213586535358.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P6312861965021211124

`A168273(n+1)+A063200(n+1)`
-/

namespace A063207.P6312861965021211124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) + A063200 (n + 1)

end

end A063207.P6312861965021211124

namespace A063207

/-- `A168273(n+1)+A063200(n+1)` -/
def P6312861965021211124.Spec : Prop :=
  ∀ n, P6312861965021211124.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P3651995715203094288

`A063105(n+1)-A047241(n+1)`
-/

namespace A063207.P3651995715203094288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) - A047241 (n + 1)

end

end A063207.P3651995715203094288

namespace A063207

/-- `A063105(n+1)-A047241(n+1)` -/
def P3651995715203094288.Spec : Prop :=
  ∀ n, P3651995715203094288.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P13041699573964184276

`A063111(n+1)-A047463(n+1)`
-/

namespace A063207.P13041699573964184276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) - A047463 (n + 1)

end

end A063207.P13041699573964184276

namespace A063207

/-- `A063111(n+1)-A047463(n+1)` -/
def P13041699573964184276.Spec : Prop :=
  ∀ n, P13041699573964184276.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P2674621159417785933

`A063221(n+1)-A047410(n+1)`
-/

namespace A063207.P2674621159417785933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1) - A047410 (n + 1)

end

end A063207.P2674621159417785933

namespace A063207

/-- `A063221(n+1)-A047410(n+1)` -/
def P2674621159417785933.Spec : Prop :=
  ∀ n, P2674621159417785933.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P12006117865729599009

`A090772(n+1)-A063199(n+1)`
-/

namespace A063207.P12006117865729599009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) - A063199 (n + 1)

end

end A063207.P12006117865729599009

namespace A063207

/-- `A090772(n+1)-A063199(n+1)` -/
def P12006117865729599009.Spec : Prop :=
  ∀ n, P12006117865729599009.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P13564461557349607781

`A063238(n+1)-A092259(n+1)`
-/

namespace A063207.P13564461557349607781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - A092259 (n + 1)

end

end A063207.P13564461557349607781

namespace A063207

/-- `A063238(n+1)-A092259(n+1)` -/
def P13564461557349607781.Spec : Prop :=
  ∀ n, P13564461557349607781.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P9459546555585280220

`A113803(n+1)-A063203(n+1)`
-/

namespace A063207.P9459546555585280220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) - A063203 (n + 1)

end

end A063207.P9459546555585280220

namespace A063207

/-- `A113803(n+1)-A063203(n+1)` -/
def P9459546555585280220.Spec : Prop :=
  ∀ n, P9459546555585280220.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P5568713406207507285

`A063099(n+1)-A168277(n+1)`
-/

namespace A063207.P5568713406207507285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) - A168277 (n + 1)

end

end A063207.P5568713406207507285

namespace A063207

/-- `A063099(n+1)-A168277(n+1)` -/
def P5568713406207507285.Spec : Prop :=
  ∀ n, P5568713406207507285.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P1661631029991838230

`A063218(n+1)-A168276(n+1)`
-/

namespace A063207.P1661631029991838230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) - A168276 (n + 1)

end

end A063207.P1661631029991838230

namespace A063207

/-- `A063218(n+1)-A168276(n+1)` -/
def P1661631029991838230.Spec : Prop :=
  ∀ n, P1661631029991838230.a n = A063207 (n + 1)

end A063207

/-! ## A063207.P8040862854850822986

`A063105(n+1)+2-A047270(n+1)`
-/

namespace A063207.P8040862854850822986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) + (2 - A047270 (n + 1))

end

end A063207.P8040862854850822986

namespace A063207

/-- `A063105(n+1)+2-A047270(n+1)` -/
def P8040862854850822986.Spec : Prop :=
  ∀ n, P8040862854850822986.a n = A063207 (n + 1)

end A063207

/-!
# A063208: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 36 ).

The programs for A063208, the canonical program `A063208.P10724846621838265583` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063208 has offset 1).

The definition of A063208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063208.P10724846621838265583

`ceil(xor(1, 5*n)/6)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063208

/-- `ceil(xor(1, 5*n)/6)` -/
def P10724846621838265583.Spec : Prop :=
  ∀ n, P10724846621838265583.a n = A063208 (n + 1)

theorem P10724846621838265583.correct : P10724846621838265583.Spec := by
  intro n
  simp only [A063208, Nat.add_sub_cancel]

end A063208

/-! ## A063208.P15262460556761111755

`Δ[ceil(5/12*n²)]`
-/

namespace A063208.P15262460556761111755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℚ) / 12 * (n ^ 2 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063208.P15262460556761111755

namespace A063208

/-- `Δ[ceil(5/12*n²)]` -/
def P15262460556761111755.Spec : Prop :=
  ∀ n, P15262460556761111755.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P13509066212139784250

`∑[floor(log2(gcd(6, n)))]-1`
-/

namespace A063208.P13509066212139784250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.gcd 6 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A063208.P13509066212139784250

namespace A063208

/-- `∑[floor(log2(gcd(6, n)))]-1` -/
def P13509066212139784250.Spec : Prop :=
  ∀ n, P13509066212139784250.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P7148178085093151122

`comp[lcm(4, n)]-ceil(n/2)`
-/

namespace A063208.P7148178085093151122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ⌈(n : ℚ) / 2⌉

end

end A063208.P7148178085093151122

namespace A063208

/-- `comp[lcm(4, n)]-ceil(n/2)` -/
def P7148178085093151122.Spec : Prop :=
  ∀ n, P7148178085093151122.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P7781232296740516159

`comp[4*n]-∑[n%2]`
-/

namespace A063208.P7781232296740516159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A063208.P7781232296740516159

namespace A063208

/-- `comp[4*n]-∑[n%2]` -/
def P7781232296740516159.Spec : Prop :=
  ∀ n, P7781232296740516159.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P15595144088733722861

`∑[∑{p}[n, floor(3/#)]]+1`
-/

namespace A063208.P15595144088733722861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊3 / (p : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A063208.P15595144088733722861

namespace A063208

/-- `∑[∑{p}[n, floor(3/#)]]+1` -/
def P15595144088733722861.Spec : Prop :=
  ∀ n, P15595144088733722861.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P12443847571983872156

`ceil(xor(1, n)/3+n/2)`
-/

namespace A063208.P12443847571983872156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 3 + (n : ℚ) / 2⌉

end

end A063208.P12443847571983872156

namespace A063208

/-- `ceil(xor(1, n)/3+n/2)` -/
def P12443847571983872156.Spec : Prop :=
  ∀ n, P12443847571983872156.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P4268104855568451274

`floor(∑[5-a(n-1)]/3)` with `a(0)=3, a(1)=1`
-/

namespace A063208.P4268104855568451274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A063208.P4268104855568451274

namespace A063208

/-- `floor(∑[5-a(n-1)]/3)` -/
def P4268104855568451274.Spec : Prop :=
  ∀ n, P4268104855568451274.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P18415354316426160602

`∑[a(n-3)+(-1)^n]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A063208.P18415354316426160602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  f1 (n - 3) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063208.P18415354316426160602

namespace A063208

/-- `∑[a(n-3)+(-1)^n]` -/
def P18415354316426160602.Spec : Prop :=
  ∀ n, P18415354316426160602.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P6617734318152072814

`a(n-2)+gcd(2, (1-n)%3)` with `a(0)=1, a(1)=1`
-/

namespace A063208.P6617734318152072814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Int.gcd 2 (Int.tmod (1 - (n : ℤ)) 3)

end

end A063208.P6617734318152072814

namespace A063208

/-- `a(n-2)+gcd(2, (1-n)%3)` -/
def P6617734318152072814.Spec : Prop :=
  ∀ n, (P6617734318152072814.a n : ℤ) = A063208 (n + 1)

end A063208

/-! ## A063208.P8327352512346066774

`n-floor((a(n-1)-floor(n/2))/2)` with `a(0)=1`
-/

namespace A063208.P8327352512346066774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) - ⌊(n : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A063208.P8327352512346066774

namespace A063208

/-- `n-floor((a(n-1)-floor(n/2))/2)` -/
def P8327352512346066774.Spec : Prop :=
  ∀ n, P8327352512346066774.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P15357804008048973482

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A063208.P15357804008048973482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n a =>
  a (n - 2) + (a (n - 3) - a (n - 5))

end

end A063208.P15357804008048973482

namespace A063208

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P15357804008048973482.Spec : Prop :=
  ∀ n, P15357804008048973482.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P10203432868247631407

`A242774(n+1)-1`
-/

namespace A063208.P10203432868247631407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242774 (n + 1) - 1

end

end A063208.P10203432868247631407

namespace A063208

/-- `A242774(n+1)-1` -/
def P10203432868247631407.Spec : Prop :=
  ∀ n, P10203432868247631407.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P7038580638376654470

`or(1, n)-A008615(n)`
-/

namespace A063208.P7038580638376654470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A008615 n

end

end A063208.P7038580638376654470

namespace A063208

/-- `or(1, n)-A008615(n)` -/
def P7038580638376654470.Spec : Prop :=
  ∀ n, P7038580638376654470.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P10646215263326908287

`floor(A047202(n+1)/2)`
-/

namespace A063208.P10646215263326908287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047202 (n + 1) : ℚ) / 2⌋

end

end A063208.P10646215263326908287

namespace A063208

/-- `floor(A047202(n+1)/2)` -/
def P10646215263326908287.Spec : Prop :=
  ∀ n, P10646215263326908287.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P841289454148029525

`n+1-Δ[A001399(n)]`
-/

namespace A063208.P841289454148029525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A063208.P841289454148029525

namespace A063208

/-- `n+1-Δ[A001399(n)]` -/
def P841289454148029525.Spec : Prop :=
  ∀ n, P841289454148029525.a n = A063208 (n + 1)

end A063208

/-! ## A063208.P16960267374832806028

`lcm(2, A063199(n+1))/2`
-/

namespace A063208.P16960267374832806028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A063199 (n + 1)) : ℚ) / 2

end

end A063208.P16960267374832806028

namespace A063208

/-- `lcm(2, A063199(n+1))/2` -/
def P16960267374832806028.Spec : Prop :=
  ∀ n, P16960267374832806028.a n = (A063208 (n + 1) : ℚ)

end A063208

/-! ## A063208.P7724893372603888688

`1-A011960(n+1)+n`
-/

namespace A063208.P7724893372603888688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011960 (n + 1) + (n : ℤ)

end

end A063208.P7724893372603888688

namespace A063208

/-- `1-A011960(n+1)+n` -/
def P7724893372603888688.Spec : Prop :=
  ∀ n, P7724893372603888688.a n = A063208 (n + 1)

end A063208

/-!
# A063209: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 41 ).

The programs for A063209, the canonical program `A063209.P10207882519954817012` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063209 has offset 1).

The definition of A063209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063209.P10207882519954817012

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=7, a(2)=6, a(3)=8, a(4)=6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063209

/-- `∑[floor(a(n-3))]` -/
def P10207882519954817012.Spec : Prop :=
  ∀ n, (P10207882519954817012.a n : ℤ) = A063209 (n + 1)

theorem P10207882519954817012.correct : P10207882519954817012.Spec := by
  intro n
  simp only [A063209, Nat.add_sub_cancel]

end A063209

/-! ## A063209.P7929743263955232678

`A063205(n+1)+Δ[n²]`
-/

namespace A063209.P7929743263955232678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063205 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063209.P7929743263955232678

namespace A063209

/-- `A063205(n+1)+Δ[n²]` -/
def P7929743263955232678.Spec : Prop :=
  ∀ n, P7929743263955232678.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P9392973980849109926

`A063219(n+1)-Δ[n²]`
-/

namespace A063209.P9392973980849109926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063219 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063209.P9392973980849109926

namespace A063209

/-- `A063219(n+1)-Δ[n²]` -/
def P9392973980849109926.Spec : Prop :=
  ∀ n, P9392973980849109926.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P14967967735223140974

`Δ[(2*n)²-A053799(n)]`
-/

namespace A063209.P14967967735223140974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063209.P14967967735223140974

namespace A063209

/-- `Δ[(2*n)²-A053799(n)]` -/
def P14967967735223140974.Spec : Prop :=
  ∀ n, P14967967735223140974.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P16247231423492178333

`A133653(n+1)+2*comp[4*n]`
-/

namespace A063209.P16247231423492178333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1) + (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A063209.P16247231423492178333

namespace A063209

/-- `A133653(n+1)+2*comp[4*n]` -/
def P16247231423492178333.Spec : Prop :=
  ∀ n, P16247231423492178333.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P7118129342254109310

`A017113(n)-Δ[A053799(n)]`
-/

namespace A063209.P7118129342254109310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n - (f1 (n + 1) - f1 n)

end

end A063209.P7118129342254109310

namespace A063209

/-- `A017113(n)-Δ[A053799(n)]` -/
def P7118129342254109310.Spec : Prop :=
  ∀ n, P7118129342254109310.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P17767352642484808848

`A017113(n)-A063200(n+1)`
-/

namespace A063209.P17767352642484808848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n - A063200 (n + 1)

end

end A063209.P17767352642484808848

namespace A063209

/-- `A017113(n)-A063200(n+1)` -/
def P17767352642484808848.Spec : Prop :=
  ∀ n, P17767352642484808848.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P406495450541002873

`A063240(n+1)-A017113(n)`
-/

namespace A063209.P406495450541002873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063240 (n + 1) - A017113 n

end

end A063209.P406495450541002873

namespace A063209

/-- `A063240(n+1)-A017113(n)` -/
def P406495450541002873.Spec : Prop :=
  ∀ n, P406495450541002873.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P7496350399584514652

`A017317(n)-A063087(n+1)`
-/

namespace A063209.P7496350399584514652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A063087 (n + 1)

end

end A063209.P7496350399584514652

namespace A063209

/-- `A017317(n)-A063087(n+1)` -/
def P7496350399584514652.Spec : Prop :=
  ∀ n, P7496350399584514652.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P3727827571973919832

`A017569(n)-A063089(n+1)`
-/

namespace A063209.P3727827571973919832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n - A063089 (n + 1)

end

end A063209.P3727827571973919832

namespace A063209

/-- `A017569(n)-A063089(n+1)` -/
def P3727827571973919832.Spec : Prop :=
  ∀ n, P3727827571973919832.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P18174068020450364847

`A017581(n)-A063099(n+1)`
-/

namespace A063209.P18174068020450364847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n - A063099 (n + 1)

end

end A063209.P18174068020450364847

namespace A063209

/-- `A017581(n)-A063099(n+1)` -/
def P18174068020450364847.Spec : Prop :=
  ∀ n, P18174068020450364847.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P12476001229415694366

`A017593(n)-A063218(n+1)`
-/

namespace A063209.P12476001229415694366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n - A063218 (n + 1)

end

end A063209.P12476001229415694366

namespace A063209

/-- `A017593(n)-A063218(n+1)` -/
def P12476001229415694366.Spec : Prop :=
  ∀ n, P12476001229415694366.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P4166107732313935557

`A051062(n)-A063238(n+1)`
-/

namespace A063209.P4166107732313935557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n - A063238 (n + 1)

end

end A063209.P4166107732313935557

namespace A063209

/-- `A051062(n)-A063238(n+1)` -/
def P4166107732313935557.Spec : Prop :=
  ∀ n, P4166107732313935557.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P10007609889156813394

`A063215(n+1)-A109613(n)`
-/

namespace A063209.P10007609889156813394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063215 (n + 1) - A109613 n

end

end A063209.P10007609889156813394

namespace A063209

/-- `A063215(n+1)-A109613(n)` -/
def P10007609889156813394.Spec : Prop :=
  ∀ n, P10007609889156813394.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P3354202793074232988

`A281813(n)-A063224(n+1)`
-/

namespace A063209.P3354202793074232988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n - A063224 (n + 1)

end

end A063209.P3354202793074232988

namespace A063209

/-- `A281813(n)-A063224(n+1)` -/
def P3354202793074232988.Spec : Prop :=
  ∀ n, P3354202793074232988.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P3604159501614153923

`Δ[A002939(n)-A053799(n)]+2`
-/

namespace A063209.P3604159501614153923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n - A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A063209.P3604159501614153923

namespace A063209

/-- `Δ[A002939(n)-A053799(n)]+2` -/
def P3604159501614153923.Spec : Prop :=
  ∀ n, P3604159501614153923.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P17781750029500236801

`A063203(n+1)+A007310(n+1)`
-/

namespace A063209.P17781750029500236801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063203 (n + 1) + A007310 (n + 1)

end

end A063209.P17781750029500236801

namespace A063209

/-- `A063203(n+1)+A007310(n+1)` -/
def P17781750029500236801.Spec : Prop :=
  ∀ n, P17781750029500236801.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P15735986606191718185

`A063212(n+1)+A063206(n+1)`
-/

namespace A063209.P15735986606191718185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063212 (n + 1) + A063206 (n + 1)

end

end A063209.P15735986606191718185

namespace A063209

/-- `A063212(n+1)+A063206(n+1)` -/
def P15735986606191718185.Spec : Prop :=
  ∀ n, P15735986606191718185.a n = A063209 (n + 1)

end A063209

/-! ## A063209.P7052486125487444892

`A090772(n+1)+A063199(n+1)`
-/

namespace A063209.P7052486125487444892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) + A063199 (n + 1)

end

end A063209.P7052486125487444892

namespace A063209

/-- `A090772(n+1)+A063199(n+1)` -/
def P7052486125487444892.Spec : Prop :=
  ∀ n, P7052486125487444892.a n = A063209 (n + 1)

end A063209

/-!
# A063210: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 42 ).

The programs for A063210, the canonical program `A063210.P7966168385283118229` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063210 has offset 1).

The definition of A063210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063210.P7966168385283118229

`4*n-a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063210

/-- `4*n-a(n-1)` -/
def P7966168385283118229.Spec : Prop :=
  ∀ n, P7966168385283118229.a n = A063210 (n + 1)

theorem P7966168385283118229.correct : P7966168385283118229.Spec := by
  intro n
  simp only [A063210, Nat.add_sub_cancel]

end A063210

/-! ## A063210.P10180882007425152527

`or(2*n, ceil(cosh(sin(n))))`
-/

namespace A063210.P10180882007425152527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A063210.P10180882007425152527

namespace A063210

/-- `or(2*n, ceil(cosh(sin(n))))` -/
def P10180882007425152527.Spec : Prop :=
  ∀ n, P10180882007425152527.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P838921499070650232

`a(n-2)+4` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A063210.P838921499070650232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 2) + 4

end

end A063210.P838921499070650232

namespace A063210

/-- `a(n-2)+4` -/
def P838921499070650232.Spec : Prop :=
  ∀ n, (P838921499070650232.a n : ℤ) = A063210 (n + 1)

end A063210

/-! ## A063210.P10381435452778980271

`or(2*n, ceil(atan(n+1)))`
-/

namespace A063210.P10381435452778980271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A063210.P10381435452778980271

namespace A063210

/-- `or(2*n, ceil(atan(n+1)))` -/
def P10381435452778980271.Spec : Prop :=
  ∀ n, P10381435452778980271.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P18051673680633732485

`Δ[(n%2)^n+n²]`
-/

namespace A063210.P18051673680633732485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A063210.P18051673680633732485

namespace A063210

/-- `Δ[(n%2)^n+n²]` -/
def P18051673680633732485.Spec : Prop :=
  ∀ n, P18051673680633732485.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P12317759064113381647

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=0`
-/

namespace A063210.P12317759064113381647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063210.P12317759064113381647

namespace A063210

/-- `∑[abs(a(n-2))]` -/
def P12317759064113381647.Spec : Prop :=
  ∀ n, (P12317759064113381647.a n : ℤ) = A063210 (n + 1)

end A063210

/-! ## A063210.P3213028058397060600

`∑[4-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A063210.P3213028058397060600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063210.P3213028058397060600

namespace A063210

/-- `∑[4-a(n-1)]` -/
def P3213028058397060600.Spec : Prop :=
  ∀ n, P3213028058397060600.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P8719017850907189781

`or(2*n, sqrt(4%(n+3)))`
-/

namespace A063210.P8719017850907189781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt ((4 % (n + 3) : ℕ) : ℝ)))

end

end A063210.P8719017850907189781

namespace A063210

/-- `or(2*n, sqrt(4%(n+3)))` -/
def P8719017850907189781.Spec : Prop :=
  ∀ n, P8719017850907189781.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P3658578127479776209

`or(2-C(2, n²), 2*n)`
-/

namespace A063210.P3658578127479776209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 - (Nat.choose 2 (n ^ 2) : ℤ)) (2 * n : ℤ)

end

end A063210.P3658578127479776209

namespace A063210

/-- `or(2-C(2, n²), 2*n)` -/
def P3658578127479776209.Spec : Prop :=
  ∀ n, P3658578127479776209.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P10007870079886775117

`or(2*n, (2%(n+2))!)`
-/

namespace A063210.P10007870079886775117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.factorial (2 % (n + 2)))

end

end A063210.P10007870079886775117

namespace A063210

/-- `or(2*n, (2%(n+2))!)` -/
def P10007870079886775117.Spec : Prop :=
  ∀ n, (P10007870079886775117.a n : ℤ) = A063210 (n + 1)

end A063210

/-! ## A063210.P13221212771358829340

`(n+2)²-record[xor(3, n²)]`
-/

namespace A063210.P13221212771358829340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A063210.P13221212771358829340

namespace A063210

/-- `(n+2)²-record[xor(3, n²)]` -/
def P13221212771358829340.Spec : Prop :=
  ∀ n, P13221212771358829340.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P6896876123794825478

`or(ceil(abs(sin(n)))+1, 2*n)`
-/

namespace A063210.P6896876123794825478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌈|Real.sin (n : ℝ)|⌉ + 1) (2 * n : ℤ)

end

end A063210.P6896876123794825478

namespace A063210

/-- `or(ceil(abs(sin(n)))+1, 2*n)` -/
def P6896876123794825478.Spec : Prop :=
  ∀ n, P6896876123794825478.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P7915896312871233487

`∑[∑[ogf((1+x+3x^2-x^3)/(1+x))]]`
-/

namespace A063210.P7915896312871233487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063210.P7915896312871233487

namespace A063210

/-- `∑[∑[ogf((1+x+3x^2-x^3)/(1+x))]]` -/
def P7915896312871233487.Spec : Prop :=
  ∀ n, P7915896312871233487.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P3162999878473978009

`ogf((1+x+3x^2-x^3)/(1-x-x^2+x^3))`
-/

namespace A063210.P3162999878473978009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, -1] [1, -1, -1, 1] n

end

end A063210.P3162999878473978009

namespace A063210

/-- `ogf((1+x+3x^2-x^3)/(1-x-x^2+x^3))` -/
def P3162999878473978009.Spec : Prop :=
  ∀ n, P3162999878473978009.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P15795404533872437720

`5-or(1, -a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A063210.P15795404533872437720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 - Int.lor 1 (-a (n - 2))

end

end A063210.P15795404533872437720

namespace A063210

/-- `5-or(1, -a(n-2))` -/
def P15795404533872437720.Spec : Prop :=
  ∀ n, P15795404533872437720.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P4015388130643022125

`2*or(1, n)-C(2, n+2)`
-/

namespace A063210.P4015388130643022125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A063210.P4015388130643022125

namespace A063210

/-- `2*or(1, n)-C(2, n+2)` -/
def P4015388130643022125.Spec : Prop :=
  ∀ n, P4015388130643022125.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P2573281953165311181

`xor(1, or(2*n, 3%(n+3)))`
-/

namespace A063210.P2573281953165311181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor (2 * n) (3 % (n + 3)))

end

end A063210.P2573281953165311181

namespace A063210

/-- `xor(1, or(2*n, 3%(n+3)))` -/
def P2573281953165311181.Spec : Prop :=
  ∀ n, (P2573281953165311181.a n : ℤ) = A063210 (n + 1)

end A063210

/-! ## A063210.P15355060079668823242

`or(2, 2*n)-C(n, 2*n)`
-/

namespace A063210.P15355060079668823242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (2 * n) : ℤ) - (Nat.choose n (2 * n) : ℤ)

end

end A063210.P15355060079668823242

namespace A063210

/-- `or(2, 2*n)-C(n, 2*n)` -/
def P15355060079668823242.Spec : Prop :=
  ∀ n, P15355060079668823242.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P9750552739354696036

`Δ[n²-a(and(1, n-1))]` with `a(0)=0`
-/

namespace A063210.P9750552739354696036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 2 : ℤ) - f1 (Int.land 1 ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063210.P9750552739354696036

namespace A063210

/-- `Δ[n²-a(and(1, n-1))]` -/
def P9750552739354696036.Spec : Prop :=
  ∀ n, P9750552739354696036.a n = A063210 (n + 1)

end A063210

/-! ## A063210.P2927512766188109131

`Δ[C(lcm(2, n), 2*n)+n²]`
-/

namespace A063210.P2927512766188109131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lcm 2 n) (2 * n) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A063210.P2927512766188109131

namespace A063210

/-- `Δ[C(lcm(2, n), 2*n)+n²]` -/
def P2927512766188109131.Spec : Prop :=
  ∀ n, P2927512766188109131.a n = A063210 (n + 1)

end A063210

/-!
# A063211: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 43 ).

The programs for A063211, the canonical program `A063211.P15192801344633485790` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063211 has offset 1).

The definition of A063211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063211.P15192801344633485790

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=10, a(2)=18, a(3)=24`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063211

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P15192801344633485790.Spec : Prop :=
  ∀ n, P15192801344633485790.a n = A063211 (n + 1)

theorem P15192801344633485790.correct : P15192801344633485790.Spec := by
  intro n
  simp only [A063211, Nat.add_sub_cancel]

end A063211

/-! ## A063211.P15692566068444388884

`a(n-2)+14` with `a(0)=3, a(1)=10, a(2)=18`
-/

namespace A063211.P15692566068444388884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10, 18] fun n a =>
  a (n - 2) + 14

end

end A063211.P15692566068444388884

namespace A063211

/-- `a(n-2)+14` -/
def P15692566068444388884.Spec : Prop :=
  ∀ n, (P15692566068444388884.a n : ℤ) = A063211 (n + 1)

end A063211

/-! ## A063211.P17136144937704419050

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=7, a(2)=8, a(3)=6`
-/

namespace A063211.P17136144937704419050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 8, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063211.P17136144937704419050

namespace A063211

/-- `∑[abs(a(n-2))]` -/
def P17136144937704419050.Spec : Prop :=
  ∀ n, (P17136144937704419050.a n : ℤ) = A063211 (n + 1)

end A063211

/-! ## A063211.P16770695979666958648

`∑[14-a(n-1)]` with `a(0)=3, a(1)=7, a(2)=8`
-/

namespace A063211.P16770695979666958648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 8] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063211.P16770695979666958648

namespace A063211

/-- `∑[14-a(n-1)]` -/
def P16770695979666958648.Spec : Prop :=
  ∀ n, P16770695979666958648.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P4359834994938991385

`14*n-a(n-1)` with `a(0)=3, a(1)=10`
-/

namespace A063211.P4359834994938991385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  (14 * n : ℤ) - a (n - 1)

end

end A063211.P4359834994938991385

namespace A063211

/-- `14*n-a(n-1)` -/
def P4359834994938991385.Spec : Prop :=
  ∀ n, P4359834994938991385.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P2385668224967827174

`char[2*(n+1)]+7*n+3`
-/

namespace A063211.P2385668224967827174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (7 * n + 3)

end

end A063211.P2385668224967827174

namespace A063211

/-- `char[2*(n+1)]+7*n+3` -/
def P2385668224967827174.Spec : Prop :=
  ∀ n, (P2385668224967827174.a n : ℤ) = A063211 (n + 1)

end A063211

/-! ## A063211.P14506082645252830823

`abs(A113804(n+1)-floor(acot(n)))`
-/

namespace A063211.P14506082645252830823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113804 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋|

end

end A063211.P14506082645252830823

namespace A063211

/-- `abs(A113804(n+1)-floor(acot(n)))` -/
def P14506082645252830823.Spec : Prop :=
  ∀ n, P14506082645252830823.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P5142576221687961737

`(A177060(n)+2)/A063237(n+1)`
-/

namespace A063211.P5142576221687961737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177060 n + 2 : ℚ) / (A063237 (n + 1) : ℚ)

end

end A063211.P5142576221687961737

namespace A063211

/-- `(A177060(n)+2)/A063237(n+1)` -/
def P5142576221687961737.Spec : Prop :=
  ∀ n, P5142576221687961737.a n = (A063211 (n + 1) : ℚ)

end A063211

/-! ## A063211.P3820369305541800641

`(A063233(n+1)+A063196(n+1))/2`
-/

namespace A063211.P3820369305541800641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063233 (n + 1) + A063196 (n + 1) : ℚ) / 2

end

end A063211.P3820369305541800641

namespace A063211

/-- `(A063233(n+1)+A063196(n+1))/2` -/
def P3820369305541800641.Spec : Prop :=
  ∀ n, P3820369305541800641.a n = (A063211 (n + 1) : ℚ)

end A063211

/-! ## A063211.P11205780440299988935

`Δ[A004277(n)²-A007590(n)]`
-/

namespace A063211.P11205780440299988935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n ^ 2 - A007590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063211.P11205780440299988935

namespace A063211

/-- `Δ[A004277(n)²-A007590(n)]` -/
def P11205780440299988935.Spec : Prop :=
  ∀ n, P11205780440299988935.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P4501143318478841674

`record[A168333(n+1)+gcd(1-n, ∑[n])]`
-/

namespace A063211.P4501143318478841674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (n + 1) + (Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063211.P4501143318478841674

namespace A063211

/-- `record[A168333(n+1)+gcd(1-n, ∑[n])]` -/
def P4501143318478841674.Spec : Prop :=
  ∀ n, P4501143318478841674.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P16629569123535213130

`A316571(A047280(n+1))`
-/

namespace A063211.P16629569123535213130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A047280 (n + 1)).toNat

end

end A063211.P16629569123535213130

namespace A063211

/-- `A316571(A047280(n+1))` -/
def P16629569123535213130.Spec : Prop :=
  ∀ n, P16629569123535213130.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P13814087676220564272

`∩[A047341(n+1), A316571(n+1)]`
-/

namespace A063211.P13814087676220564272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063211.P13814087676220564272

namespace A063211

/-- `∩[A047341(n+1), A316571(n+1)]` -/
def P13814087676220564272.Spec : Prop :=
  ∀ n, (P13814087676220564272.a n : ℤ) = A063211 (n + 1)

end A063211

/-! ## A063211.P4647251245599833789

`∩[A047341(n+1), A326494(n)+1]`
-/

namespace A063211.P4647251245599833789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063211.P4647251245599833789

namespace A063211

/-- `∩[A047341(n+1), A326494(n)+1]` -/
def P4647251245599833789.Spec : Prop :=
  ∀ n, (P4647251245599833789.a n : ℤ) = A063211 (n + 1)

end A063211

/-! ## A063211.P10901886376392324328

`A245092(A063206(n+1)+2*n+1)`
-/

namespace A063211.P10901886376392324328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A063206 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A063211.P10901886376392324328

namespace A063211

/-- `A245092(A063206(n+1)+2*n+1)` -/
def P10901886376392324328.Spec : Prop :=
  ∀ n, P10901886376392324328.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P12637435802885513188

`A047305(A063206(n+1))`
-/

namespace A063211.P12637435802885513188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047305 (A063206 (n + 1)).toNat

end

end A063211.P12637435802885513188

namespace A063211

/-- `A047305(A063206(n+1))` -/
def P12637435802885513188.Spec : Prop :=
  ∀ n, P12637435802885513188.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P2288048306727301250

`A265283(7*n+1)`
-/

namespace A063211.P2288048306727301250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 (7 * n + 1)

end

end A063211.P2288048306727301250

namespace A063211

/-- `A265283(7*n+1)` -/
def P2288048306727301250.Spec : Prop :=
  ∀ n, P2288048306727301250.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P10016901534428029938

`A296388(A238290(n+1))`
-/

namespace A063211.P10016901534428029938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296388 (A238290 (n + 1)).toNat

end

end A063211.P10016901534428029938

namespace A063211

/-- `A296388(A238290(n+1))` -/
def P10016901534428029938.Spec : Prop :=
  ∀ n, P10016901534428029938.a n = A063211 (n + 1)

end A063211

/-! ## A063211.P300320564869081178

`eq[A010151(n), A266792(n)]`
-/

namespace A063211.P300320564869081178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266792 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063211.P300320564869081178

namespace A063211

/-- `eq[A010151(n), A266792(n)]` -/
def P300320564869081178.Spec : Prop :=
  ∀ n, (P300320564869081178.a n : ℤ) = A063211 (n + 1)

end A063211

/-! ## A063211.P8050776667475765598

`eq[A165669(n), A266792(n)]`
-/

namespace A063211.P8050776667475765598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266792 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063211.P8050776667475765598

namespace A063211

/-- `eq[A165669(n), A266792(n)]` -/
def P8050776667475765598.Spec : Prop :=
  ∀ n, (P8050776667475765598.a n : ℤ) = A063211 (n + 1)

end A063211

/-!
# A063212: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 44 ).

The programs for A063212, the canonical program `A063212.P9405659393869729451` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063212 has offset 1).

The definition of A063212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063212.P9405659393869729451

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=7, a(4)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063212

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P9405659393869729451.Spec : Prop :=
  ∀ n, P9405659393869729451.a n = A063212 (n + 1)

theorem P9405659393869729451.correct : P9405659393869729451.Spec := by
  intro n
  simp only [A063212, Nat.add_sub_cancel]

end A063212

/-! ## A063212.P11542022008346993847

`or(1, ∑[gcd(3, n)]-2)`
-/

namespace A063212.P11542022008346993847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A063212.P11542022008346993847

namespace A063212

/-- `or(1, ∑[gcd(3, n)]-2)` -/
def P11542022008346993847.Spec : Prop :=
  ∀ n, P11542022008346993847.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P8404559326907745672

`or(1, ∑[gcd(9, ∏{p}[n, #])])`
-/

namespace A063212.P8404559326907745672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063212.P8404559326907745672

namespace A063212

/-- `or(1, ∑[gcd(9, ∏{p}[n, #])])` -/
def P8404559326907745672.Spec : Prop :=
  ∀ n, (P8404559326907745672.a n : ℤ) = A063212 (n + 1)

end A063212

/-! ## A063212.P18015721138881772846

`2*comp[4*n]-or(1, n)`
-/

namespace A063212.P18015721138881772846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (Nat.lor 1 n : ℤ)

end

end A063212.P18015721138881772846

namespace A063212

/-- `2*comp[4*n]-or(1, n)` -/
def P18015721138881772846.Spec : Prop :=
  ∀ n, P18015721138881772846.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P3118501202594115607

`or(1, ∑[3^∑{p}[n, val(#, 3)]])`
-/

namespace A063212.P3118501202594115607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063212.P3118501202594115607

namespace A063212

/-- `or(1, ∑[3^∑{p}[n, val(#, 3)]])` -/
def P3118501202594115607.Spec : Prop :=
  ∀ n, (P3118501202594115607.a n : ℤ) = A063212 (n + 1)

end A063212

/-! ## A063212.P13444864897411948266

`or(1, ∑[3^val(∏{p}[n, #], 3)])`
-/

namespace A063212.P13444864897411948266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063212.P13444864897411948266

namespace A063212

/-- `or(1, ∑[3^val(∏{p}[n, #], 3)])` -/
def P13444864897411948266.Spec : Prop :=
  ∀ n, (P13444864897411948266.a n : ℤ) = A063212 (n + 1)

end A063212

/-! ## A063212.P1451136968172085831

`or(1, n+1)+2*floor(n/3)`
-/

namespace A063212.P1451136968172085831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) + 2 * ⌊(n : ℚ) / 3⌋

end

end A063212.P1451136968172085831

namespace A063212

/-- `or(1, n+1)+2*floor(n/3)` -/
def P1451136968172085831.Spec : Prop :=
  ∀ n, P1451136968172085831.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P13378880655836526576

`2*floor(floor((n+1)/2)+n/3)+1`
-/

namespace A063212.P13378880655836526576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(⌊(n + 1 : ℚ) / 2⌋ : ℚ) + (n : ℚ) / 3⌋ + 1

end

end A063212.P13378880655836526576

namespace A063212

/-- `2*floor(floor((n+1)/2)+n/3)+1` -/
def P13378880655836526576.Spec : Prop :=
  ∀ n, P13378880655836526576.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P4916236533428330526

`or(1, A047223(n+1))`
-/

namespace A063212.P4916236533428330526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047223 (n + 1))

end

end A063212.P4916236533428330526

namespace A063212

/-- `or(1, A047223(n+1))` -/
def P4916236533428330526.Spec : Prop :=
  ∀ n, P4916236533428330526.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P10372756493952246109

`or(1, ∑[A109007(n)]-2)`
-/

namespace A063212.P10372756493952246109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A063212.P10372756493952246109

namespace A063212

/-- `or(1, ∑[A109007(n)]-2)` -/
def P10372756493952246109.Spec : Prop :=
  ∀ n, P10372756493952246109.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P398210180735877

`or(1, A047202(n+1)-1)`
-/

namespace A063212.P398210180735877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047202 (n + 1) - 1)

end

end A063212.P398210180735877

namespace A063212

/-- `or(1, A047202(n+1)-1)` -/
def P398210180735877.Spec : Prop :=
  ∀ n, P398210180735877.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P14858335668613450898

`or(1, A130823(n+1)+n)`
-/

namespace A063212.P14858335668613450898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A130823 (n + 1) + (n : ℤ))

end

end A063212.P14858335668613450898

namespace A063212

/-- `or(1, A130823(n+1)+n)` -/
def P14858335668613450898.Spec : Prop :=
  ∀ n, P14858335668613450898.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P11224134689854312064

`A033465(A063197(n+1))`
-/

namespace A063212.P11224134689854312064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (A063197 (n + 1)).toNat

end

end A063212.P11224134689854312064

namespace A063212

/-- `A033465(A063197(n+1))` -/
def P11224134689854312064.Spec : Prop :=
  ∀ n, P11224134689854312064.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P4741480396596699488

`A005408(n-A008615(n))`
-/

namespace A063212.P4741480396596699488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((n : ℤ) - A008615 n).toNat

end

end A063212.P4741480396596699488

namespace A063212

/-- `A005408(n-A008615(n))` -/
def P4741480396596699488.Spec : Prop :=
  ∀ n, P4741480396596699488.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P5833596765508673462

`A004273(1-A008615(n)+n)`
-/

namespace A063212.P5833596765508673462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (1 - A008615 n + (n : ℤ)).toNat

end

end A063212.P5833596765508673462

namespace A063212

/-- `A004273(1-A008615(n)+n)` -/
def P5833596765508673462.Spec : Prop :=
  ∀ n, P5833596765508673462.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P7118538787624152232

`A060747(n+1-A008615(n))`
-/

namespace A063212.P7118538787624152232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 ((n + 1 : ℤ) - A008615 n).toNat

end

end A063212.P7118538787624152232

namespace A063212

/-- `A060747(n+1-A008615(n))` -/
def P7118538787624152232.Spec : Prop :=
  ∀ n, P7118538787624152232.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P6585601309157966014

`A017329(n)%A063246(n+1)`
-/

namespace A063212.P6585601309157966014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017329 n) (A063246 (n + 1))

end

end A063212.P6585601309157966014

namespace A063212

/-- `A017329(n)%A063246(n+1)` -/
def P6585601309157966014.Spec : Prop :=
  ∀ n, P6585601309157966014.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P2070151269366742320

`xor(A000035(n), A047223(n+1))`
-/

namespace A063212.P2070151269366742320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A047223 (n + 1))

end

end A063212.P2070151269366742320

namespace A063212

/-- `xor(A000035(n), A047223(n+1))` -/
def P2070151269366742320.Spec : Prop :=
  ∀ n, P2070151269366742320.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P6580192889958692432

`A063109(n+1)%A063099(n+1)`
-/

namespace A063212.P6580192889958692432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063109 (n + 1)) (A063099 (n + 1))

end

end A063212.P6580192889958692432

namespace A063212

/-- `A063109(n+1)%A063099(n+1)` -/
def P6580192889958692432.Spec : Prop :=
  ∀ n, P6580192889958692432.a n = A063212 (n + 1)

end A063212

/-! ## A063212.P13640104500742221608

`A063121(n+1)%A063111(n+1)`
-/

namespace A063212.P13640104500742221608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063121 (n + 1)) (A063111 (n + 1))

end

end A063212.P13640104500742221608

namespace A063212

/-- `A063121(n+1)%A063111(n+1)` -/
def P13640104500742221608.Spec : Prop :=
  ∀ n, P13640104500742221608.a n = A063212 (n + 1)

end A063212

/-!
# A063213: Dimension of the space of weight 2n cuspidal newforms for Gamma_0(45).

The programs for A063213, the canonical program `A063213.P18219456136379897559` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063213 has offset 1).

The definition of A063213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063213.P18219456136379897559

`4*(n+1)-2*floor((n+1)/3-1/3)-3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063213

/-- `4*(n+1)-2*floor((n+1)/3-1/3)-3` -/
def P18219456136379897559.Spec : Prop :=
  ∀ n, P18219456136379897559.a n = A063213 (n + 1)

theorem P18219456136379897559.correct : P18219456136379897559.Spec := by
  intro n
  simp only [A063213, Nat.add_sub_cancel]

end A063213

/-! ## A063213.P3198348488528977467

`record[n+1-n²%10]`
-/

namespace A063213.P3198348488528977467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n ^ 2 % 10 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063213.P3198348488528977467

namespace A063213

/-- `record[n+1-n²%10]` -/
def P3198348488528977467.Spec : Prop :=
  ∀ n, P3198348488528977467.a n = A063213 (n + 1)

end A063213

/-! ## A063213.P6996742588719913695

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=2`
-/

namespace A063213.P6996742588719913695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063213.P6996742588719913695

namespace A063213

/-- `∑[abs(a(n-3))]` -/
def P6996742588719913695.Spec : Prop :=
  ∀ n, (P6996742588719913695.a n : ℤ) = A063213 (n + 1)

end A063213

/-! ## A063213.P15789773550447591185

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A063213.P15789773550447591185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063213.P15789773550447591185

namespace A063213

/-- `∑[floor(a(n-3))]` -/
def P15789773550447591185.Spec : Prop :=
  ∀ n, (P15789773550447591185.a n : ℤ) = A063213 (n + 1)

end A063213

/-! ## A063213.P3962469160087225208

`∑[round(a(n-3))]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A063213.P3962469160087225208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063213.P3962469160087225208

namespace A063213

/-- `∑[round(a(n-3))]` -/
def P3962469160087225208.Spec : Prop :=
  ∀ n, (P3962469160087225208.a n : ℤ) = A063213 (n + 1)

end A063213

/-! ## A063213.P6693973250123254892

`ogf((1+4x+4x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A063213.P6693973250123254892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4, 1] [1, -1, 0, -1, 1] n

end

end A063213.P6693973250123254892

namespace A063213

/-- `ogf((1+4x+4x^2+x^3)/(1-x-x^3+x^4))` -/
def P6693973250123254892.Spec : Prop :=
  ∀ n, P6693973250123254892.a n = A063213 (n + 1)

end A063213

/-! ## A063213.P16412188797143628030

`or(1, floor((2*n+1)*5/3))`
-/

namespace A063213.P16412188797143628030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(2 * n + 1 : ℚ) * ((5 : ℚ) / 3)⌋

end

end A063213.P16412188797143628030

namespace A063213

/-- `or(1, floor((2*n+1)*5/3))` -/
def P16412188797143628030.Spec : Prop :=
  ∀ n, P16412188797143628030.a n = A063213 (n + 1)

end A063213

/-! ## A063213.P11757331450876325114

`∑[2^(a(n-3)/2)]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=2`
-/

namespace A063213.P11757331450876325114
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 4, 4, 2] fun n f1 =>
  (2 : ℝ) ^ (f1 (n - 3) / 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063213.P11757331450876325114

namespace A063213

/-- `∑[2^(a(n-3)/2)]` -/
def P11757331450876325114.Spec : Prop :=
  ∀ n, P11757331450876325114.a n = (A063213 (n + 1) : ℝ)

end A063213

/-! ## A063213.P15535911113384239432

`∑[((n²+1)*ceil(atan(n+1)))%6]`
-/

namespace A063213.P15535911113384239432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063213.P15535911113384239432

namespace A063213

/-- `∑[((n²+1)*ceil(atan(n+1)))%6]` -/
def P15535911113384239432.Spec : Prop :=
  ∀ n, P15535911113384239432.a n = A063213 (n + 1)

end A063213

/-! ## A063213.P12436171073681320938

`∑[2*a(n-3)-a(n-3)]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=2`
-/

namespace A063213.P12436171073681320938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4, 2] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063213.P12436171073681320938

namespace A063213

/-- `∑[2*a(n-3)-a(n-3)]` -/
def P12436171073681320938.Spec : Prop :=
  ∀ n, P12436171073681320938.a n = A063213 (n + 1)

end A063213

/-! ## A063213.P12010737684501966415

`record[(2*n+1)/gcd(5, (n+2)*(n-1))]`
-/

namespace A063213.P12010737684501966415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.gcd 5 ((n + 2 : ℤ) * ((n : ℤ) - 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063213.P12010737684501966415

namespace A063213

/-- `record[(2*n+1)/gcd(5, (n+2)*(n-1))]` -/
def P12010737684501966415.Spec : Prop :=
  ∀ n, P12010737684501966415.a n = (A063213 (n + 1) : ℚ)

end A063213

/-! ## A063213.P3623410051258098456

`∑[dr(A040350(n))]`
-/

namespace A063213.P3623410051258098456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040350 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063213.P3623410051258098456

namespace A063213

/-- `∑[dr(A040350(n))]` -/
def P3623410051258098456.Spec : Prop :=
  ∀ n, (P3623410051258098456.a n : ℤ) = A063213 (n + 1)

end A063213

/-! ## A063213.P3526371743414597924

`A063107(n+1)%A271114(n)`
-/

namespace A063213.P3526371743414597924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063107 (n + 1)) (A271114 n)

end

end A063213.P3526371743414597924

namespace A063213

/-- `A063107(n+1)%A271114(n)` -/
def P3526371743414597924.Spec : Prop :=
  ∀ n, P3526371743414597924.a n = A063213 (n + 1)

end A063213

/-! ## A063213.P15102365574228545527

`A281813(n)%A063205(n+1)`
-/

namespace A063213.P15102365574228545527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281813 n) (A063205 (n + 1))

end

end A063213.P15102365574228545527

namespace A063213

/-- `A281813(n)%A063205(n+1)` -/
def P15102365574228545527.Spec : Prop :=
  ∀ n, P15102365574228545527.a n = A063213 (n + 1)

end A063213

/-! ## A063213.P3158308504445774428

`∪[A017329(n), A090771(n+1)]`
-/

namespace A063213.P3158308504445774428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063213.P3158308504445774428

namespace A063213

/-- `∪[A017329(n), A090771(n+1)]` -/
def P3158308504445774428.Spec : Prop :=
  ∀ n, (P3158308504445774428.a n : ℤ) = A063213 (n + 1)

end A063213

/-! ## A063213.P13532052832917290294

`∪[A088648(n), A090771(n+1)]`
-/

namespace A063213.P13532052832917290294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063213.P13532052832917290294

namespace A063213

/-- `∪[A088648(n), A090771(n+1)]` -/
def P13532052832917290294.Spec : Prop :=
  ∀ n, (P13532052832917290294.a n : ℤ) = A063213 (n + 1)

end A063213

/-! ## A063213.P15331035228800146002

`∪[A017377(n), A187715(n+1)]`
-/

namespace A063213.P15331035228800146002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063213.P15331035228800146002

namespace A063213

/-- `∪[A017377(n), A187715(n+1)]` -/
def P15331035228800146002.Spec : Prop :=
  ∀ n, (P15331035228800146002.a n : ℤ) = A063213 (n + 1)

end A063213

/-! ## A063213.P12265377277634390755

`A063129(n+1)%A063109(n+1)`
-/

namespace A063213.P12265377277634390755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063129 (n + 1)) (A063109 (n + 1))

end

end A063213.P12265377277634390755

namespace A063213

/-- `A063129(n+1)%A063109(n+1)` -/
def P12265377277634390755.Spec : Prop :=
  ∀ n, P12265377277634390755.a n = A063213 (n + 1)

end A063213

/-! ## A063213.P15317864875465723046

`A063141(n+1)%A063121(n+1)`
-/

namespace A063213.P15317864875465723046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063141 (n + 1)) (A063121 (n + 1))

end

end A063213.P15317864875465723046

namespace A063213

/-- `A063141(n+1)%A063121(n+1)` -/
def P15317864875465723046.Spec : Prop :=
  ∀ n, P15317864875465723046.a n = A063213 (n + 1)

end A063213

/-! ## A063213.P297283623589166226

`A063228(n+1)%A063215(n+1)`
-/

namespace A063213.P297283623589166226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063228 (n + 1)) (A063215 (n + 1))

end

end A063213.P297283623589166226

namespace A063213

/-- `A063228(n+1)%A063215(n+1)` -/
def P297283623589166226.Spec : Prop :=
  ∀ n, P297283623589166226.a n = A063213 (n + 1)

end A063213

/-!
# A063214: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 46 ).

The programs for A063214, the canonical program `A063214.P10588406300896630407` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063214 has offset 1).

The definition of A063214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063214.P10588406300896630407

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=6, a(2)=10, a(3)=12, a(4)=16, a(5)=22`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063214

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P10588406300896630407.Spec : Prop :=
  ∀ n, P10588406300896630407.a n = A063214 (n + 1)

theorem P10588406300896630407.correct : P10588406300896630407.Spec := by
  intro n
  simp only [A063214, Nat.add_sub_cancel]

end A063214

/-! ## A063214.P5528042242269466905

`∑[(6-char[1])/gcd(3, n)]-or(1, n)`
-/

namespace A063214.P5528042242269466905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / (Nat.gcd 3 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.lor 1 n : ℚ)

end

end A063214.P5528042242269466905

namespace A063214

/-- `∑[(6-char[1])/gcd(3, n)]-or(1, n)` -/
def P5528042242269466905.Spec : Prop :=
  ∀ n, P5528042242269466905.a n = (A063214 (n + 1) : ℚ)

end A063214

/-! ## A063214.P670686166086814173

`A063222(n+1)-or(1, n)`
-/

namespace A063214.P670686166086814173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A063214.P670686166086814173

namespace A063214

/-- `A063222(n+1)-or(1, n)` -/
def P670686166086814173.Spec : Prop :=
  ∀ n, P670686166086814173.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P4577050092553638129

`A063202(n+1)+Δ[n²]`
-/

namespace A063214.P4577050092553638129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063202 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063214.P4577050092553638129

namespace A063214

/-- `A063202(n+1)+Δ[n²]` -/
def P4577050092553638129.Spec : Prop :=
  ∀ n, P4577050092553638129.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P15507636224635106170

`A063244(n+1)-A016825(n)`
-/

namespace A063214.P15507636224635106170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063244 (n + 1) - A016825 n

end

end A063214.P15507636224635106170

namespace A063214

/-- `A063244(n+1)-A016825(n)` -/
def P15507636224635106170.Spec : Prop :=
  ∀ n, P15507636224635106170.a n = A063214 (n + 1)

theorem P15507636224635106170.correct : P15507636224635106170.Spec := by
  intro n
  simp only [A063214, Nat.add_sub_cancel, A063214.P15507636224635106170.a, A063214.P10588406300896630407.a, A016825, A016825.P4712696052905976233.a, A063244, A063244.P3216975161231170830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063214

/-! ## A063214.P14012141601557911627

`A063222(n+1)-A109613(n)`
-/

namespace A063214.P14012141601557911627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) - A109613 n

end

end A063214.P14012141601557911627

namespace A063214

/-- `A063222(n+1)-A109613(n)` -/
def P14012141601557911627.Spec : Prop :=
  ∀ n, P14012141601557911627.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P1694069028127708328

`A063198(n+1)+A007310(n+1)`
-/

namespace A063214.P1694069028127708328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (n + 1) + A007310 (n + 1)

end

end A063214.P1694069028127708328

namespace A063214

/-- `A063198(n+1)+A007310(n+1)` -/
def P1694069028127708328.Spec : Prop :=
  ∀ n, P1694069028127708328.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P9634875217548604929

`A063213(n+1)+A063195(n+1)`
-/

namespace A063214.P9634875217548604929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A063195 (n + 1)

end

end A063214.P9634875217548604929

namespace A063214

/-- `A063213(n+1)+A063195(n+1)` -/
def P9634875217548604929.Spec : Prop :=
  ∀ n, P9634875217548604929.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P11724014935277906984

`A063220(n+1)-A047235(n+1)`
-/

namespace A063214.P11724014935277906984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1) - A047235 (n + 1)

end

end A063214.P11724014935277906984

namespace A063214

/-- `A063220(n+1)-A047235(n+1)` -/
def P11724014935277906984.Spec : Prop :=
  ∀ n, P11724014935277906984.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P2584951154402327831

`A063105(n+1)-A047623(n+1)`
-/

namespace A063214.P2584951154402327831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) - A047623 (n + 1)

end

end A063214.P2584951154402327831

namespace A063214

/-- `A063105(n+1)-A047623(n+1)` -/
def P2584951154402327831.Spec : Prop :=
  ∀ n, P2584951154402327831.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P2525239483712375398

`A063229(n+1)-A063242(n+1)`
-/

namespace A063214.P2525239483712375398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1) - A063242 (n + 1)

end

end A063214.P2525239483712375398

namespace A063214

/-- `A063229(n+1)-A063242(n+1)` -/
def P2525239483712375398.Spec : Prop :=
  ∀ n, P2525239483712375398.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P17423518870107828996

`A063237(n+1)-A063241(n+1)`
-/

namespace A063214.P17423518870107828996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063237 (n + 1) - A063241 (n + 1)

end

end A063214.P17423518870107828996

namespace A063214

/-- `A063237(n+1)-A063241(n+1)` -/
def P17423518870107828996.Spec : Prop :=
  ∀ n, P17423518870107828996.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P2030692449431423684

`A113804(n+1)-A063227(n+1)`
-/

namespace A063214.P2030692449431423684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1) - A063227 (n + 1)

end

end A063214.P2030692449431423684

namespace A063214

/-- `A113804(n+1)-A063227(n+1)` -/
def P2030692449431423684.Spec : Prop :=
  ∀ n, P2030692449431423684.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P4204739738608558588

`A063236(n+1)-A113804(n+1)`
-/

namespace A063214.P4204739738608558588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063236 (n + 1) - A113804 (n + 1)

end

end A063214.P4204739738608558588

namespace A063214

/-- `A063236(n+1)-A113804(n+1)` -/
def P4204739738608558588.Spec : Prop :=
  ∀ n, P4204739738608558588.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P1679922327544692350

`A063198(n+1)+A063205(n+1)-A063199(n+1)`
-/

namespace A063214.P1679922327544692350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (n + 1) + (A063205 (n + 1) - A063199 (n + 1))

end

end A063214.P1679922327544692350

namespace A063214

/-- `A063198(n+1)+A063205(n+1)-A063199(n+1)` -/
def P1679922327544692350.Spec : Prop :=
  ∀ n, P1679922327544692350.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P11264202609872662507

`A004275(2*(n+1)-A008612(n))`
-/

namespace A063214.P11264202609872662507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ((2 * (n + 1) : ℤ) - A008612 n).toNat

end

end A063214.P11264202609872662507

namespace A063214

/-- `A004275(2*(n+1)-A008612(n))` -/
def P11264202609872662507.Spec : Prop :=
  ∀ n, P11264202609872662507.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P2892054474438506312

`A063287(2*n+3)`
-/

namespace A063214.P2892054474438506312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (2 * n + 3)

end

end A063214.P2892054474438506312

namespace A063214

/-- `A063287(2*n+3)` -/
def P2892054474438506312.Spec : Prop :=
  ∀ n, P2892054474438506312.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P12057784263856960673

`A063283(2*n+3)+Δ[n²]`
-/

namespace A063214.P12057784263856960673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (2 * n + 3) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063214.P12057784263856960673

namespace A063214

/-- `A063283(2*n+3)+Δ[n²]` -/
def P12057784263856960673.Spec : Prop :=
  ∀ n, P12057784263856960673.a n = A063214 (n + 1)

end A063214

/-! ## A063214.P10985997129417901869

`A063295(2*n+3)-(6*n+3)`
-/

namespace A063214.P10985997129417901869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (2 * n + 3) - (6 * n + 3 : ℤ)

end

end A063214.P10985997129417901869

namespace A063214

/-- `A063295(2*n+3)-(6*n+3)` -/
def P10985997129417901869.Spec : Prop :=
  ∀ n, P10985997129417901869.a n = A063214 (n + 1)

end A063214

/-!
# A063215: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 47 ).

The programs for A063215, the canonical program `A063215.P16612473911794581702` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063215 has offset 1).

The definition of A063215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063215.P16612473911794581702

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=4, a(1)=11, a(2)=19, a(3)=27, a(4)=35, a(5)=41`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063215

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P16612473911794581702.Spec : Prop :=
  ∀ n, P16612473911794581702.a n = A063215 (n + 1)

theorem P16612473911794581702.correct : P16612473911794581702.Spec := by
  intro n
  simp only [A063215, Nat.add_sub_cancel]

end A063215

/-! ## A063215.P7469114194851640776

`A063209(n+1)+or(1, n)`
-/

namespace A063215.P7469114194851640776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063209 (n + 1) + (Nat.lor 1 n : ℤ)

end

end A063215.P7469114194851640776

namespace A063215

/-- `A063209(n+1)+or(1, n)` -/
def P7469114194851640776.Spec : Prop :=
  ∀ n, P7469114194851640776.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P5985196066351915205

`A063223(n+1)-Δ[n²]`
-/

namespace A063215.P5985196066351915205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063223 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063215.P5985196066351915205

namespace A063215

/-- `A063223(n+1)-Δ[n²]` -/
def P5985196066351915205.Spec : Prop :=
  ∀ n, P5985196066351915205.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P2357053134770163147

`8*n+4-A063195(n+1)`
-/

namespace A063215.P2357053134770163147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℤ) - A063195 (n + 1)

end

end A063215.P2357053134770163147

namespace A063215

/-- `8*n+4-A063195(n+1)` -/
def P2357053134770163147.Spec : Prop :=
  ∀ n, P2357053134770163147.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P783839255176153568

`10*n-(A063081(n+1)-4)`
-/

namespace A063215.P783839255176153568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - (A063081 (n + 1) - 4)

end

end A063215.P783839255176153568

namespace A063215

/-- `10*n-(A063081(n+1)-4)` -/
def P783839255176153568.Spec : Prop :=
  ∀ n, P783839255176153568.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P6202908323385618520

`A063203(n+1)+A016825(n)`
-/

namespace A063215.P6202908323385618520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063203 (n + 1) + A016825 n

end

end A063215.P6202908323385618520

namespace A063215

/-- `A063203(n+1)+A016825(n)` -/
def P6202908323385618520.Spec : Prop :=
  ∀ n, P6202908323385618520.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P16861063344080550527

`A063199(n+1)+A016945(n)`
-/

namespace A063215.P16861063344080550527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 1) + A016945 n

end

end A063215.P16861063344080550527

namespace A063215

/-- `A063199(n+1)+A016945(n)` -/
def P16861063344080550527.Spec : Prop :=
  ∀ n, P16861063344080550527.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P3987393201529817620

`A109613(n)+A063209(n+1)`
-/

namespace A063215.P3987393201529817620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A063209 (n + 1)

end

end A063215.P3987393201529817620

namespace A063215

/-- `A109613(n)+A063209(n+1)` -/
def P3987393201529817620.Spec : Prop :=
  ∀ n, P3987393201529817620.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P8795555598243557154

`A063230(n+1)-A016825(n)`
-/

namespace A063215.P8795555598243557154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) - A016825 n

end

end A063215.P8795555598243557154

namespace A063215

/-- `A063230(n+1)-A016825(n)` -/
def P8795555598243557154.Spec : Prop :=
  ∀ n, P8795555598243557154.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P13643301938103763705

`A063235(n+1)-A016945(n)`
-/

namespace A063215.P13643301938103763705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063235 (n + 1) - A016945 n

end

end A063215.P13643301938103763705

namespace A063215

/-- `A063235(n+1)-A016945(n)` -/
def P13643301938103763705.Spec : Prop :=
  ∀ n, P13643301938103763705.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P2701311669855393701

`A017317(n)-A063081(n+1)`
-/

namespace A063215.P2701311669855393701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A063081 (n + 1)

end

end A063215.P2701311669855393701

namespace A063215

/-- `A017317(n)-A063081(n+1)` -/
def P2701311669855393701.Spec : Prop :=
  ∀ n, P2701311669855393701.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P8913521644896768286

`A348845(n)-A063165(n+1)`
-/

namespace A063215.P8913521644896768286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n - A063165 (n + 1)

end

end A063215.P8913521644896768286

namespace A063215

/-- `A348845(n)-A063165(n+1)` -/
def P8913521644896768286.Spec : Prop :=
  ∀ n, P8913521644896768286.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P16609969197278225577

`A063205(n+1)+A047235(n+1)`
-/

namespace A063215.P16609969197278225577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063205 (n + 1) + A047235 (n + 1)

end

end A063215.P16609969197278225577

namespace A063215

/-- `A063205(n+1)+A047235(n+1)` -/
def P16609969197278225577.Spec : Prop :=
  ∀ n, P16609969197278225577.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P6201977556503891530

`A063206(n+1)+A047410(n+1)`
-/

namespace A063215.P6201977556503891530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (n + 1) + A047410 (n + 1)

end

end A063215.P6201977556503891530

namespace A063215

/-- `A063206(n+1)+A047410(n+1)` -/
def P6201977556503891530.Spec : Prop :=
  ∀ n, P6201977556503891530.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P2483390702322764545

`A130823(n+1)+A063211(n+1)`
-/

namespace A063215.P2483390702322764545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 1) + A063211 (n + 1)

end

end A063215.P2483390702322764545

namespace A063215

/-- `A130823(n+1)+A063211(n+1)` -/
def P2483390702322764545.Spec : Prop :=
  ∀ n, P2483390702322764545.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P2255922026841215082

`A063228(n+1)-A063213(n+1)`
-/

namespace A063215.P2255922026841215082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063228 (n + 1) - A063213 (n + 1)

end

end A063215.P2255922026841215082

namespace A063215

/-- `A063228(n+1)-A063213(n+1)` -/
def P2255922026841215082.Spec : Prop :=
  ∀ n, P2255922026841215082.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P10637437697938969204

`A063246(n+1)-A063198(n+1)`
-/

namespace A063215.P10637437697938969204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063246 (n + 1) - A063198 (n + 1)

end

end A063215.P10637437697938969204

namespace A063215

/-- `A063246(n+1)-A063198(n+1)` -/
def P10637437697938969204.Spec : Prop :=
  ∀ n, P10637437697938969204.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P16262117951054843925

`A063240(n+1)-A113803(n+1)`
-/

namespace A063215.P16262117951054843925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063240 (n + 1) - A113803 (n + 1)

end

end A063215.P16262117951054843925

namespace A063215

/-- `A063240(n+1)-A113803(n+1)` -/
def P16262117951054843925.Spec : Prop :=
  ∀ n, P16262117951054843925.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P17311183327584395992

`A143988(n+1)-A063200(n+1)`
-/

namespace A063215.P17311183327584395992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1) - A063200 (n + 1)

end

end A063215.P17311183327584395992

namespace A063215

/-- `A143988(n+1)-A063200(n+1)` -/
def P17311183327584395992.Spec : Prop :=
  ∀ n, P17311183327584395992.a n = A063215 (n + 1)

end A063215

/-! ## A063215.P7097459112891582734

`A063203(n+1)+A017113(n)/2`
-/

namespace A063215.P7097459112891582734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063203 (n + 1) : ℚ) + (A017113 n : ℚ) / 2

end

end A063215.P7097459112891582734

namespace A063215

/-- `A063203(n+1)+A017113(n)/2` -/
def P7097459112891582734.Spec : Prop :=
  ∀ n, P7097459112891582734.a n = (A063215 (n + 1) : ℚ)

end A063215

/-!
# A063216: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 49 ).

The programs for A063216, the canonical program `A063216.P16832493926664578224` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063216 has offset 1).

The definition of A063216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063216.P16832493926664578224

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=8, a(2)=14, a(3)=22, a(4)=28`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063216

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P16832493926664578224.Spec : Prop :=
  ∀ n, P16832493926664578224.a n = A063216 (n + 1)

theorem P16832493926664578224.correct : P16832493926664578224.Spec := by
  intro n
  simp only [A063216, Nat.add_sub_cancel]

end A063216

/-! ## A063216.P14391970795288740204

`ceil(round(13*n/2)+(n+1)/3)`
-/

namespace A063216.P14391970795288740204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (13 * ((n : ℚ) / 2)) : ℚ) + (n + 1 : ℚ) / 3⌉

end

end A063216.P14391970795288740204

namespace A063216

/-- `ceil(round(13*n/2)+(n+1)/3)` -/
def P14391970795288740204.Spec : Prop :=
  ∀ n, P14391970795288740204.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P13370212722620509728

`7*n+1-A008615(n)`
-/

namespace A063216.P13370212722620509728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 1 : ℤ) - A008615 n

end

end A063216.P13370212722620509728

namespace A063216

/-- `7*n+1-A008615(n)` -/
def P13370212722620509728.Spec : Prop :=
  ∀ n, P13370212722620509728.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P7547642004055107828

`A016993(n)-round(xor(1, n)/6)`
-/

namespace A063216.P7547642004055107828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

end

end A063216.P7547642004055107828

namespace A063216

/-- `A016993(n)-round(xor(1, n)/6)` -/
def P7547642004055107828.Spec : Prop :=
  ∀ n, P7547642004055107828.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P12058514939769773925

`A063197(n+1)+A016921(n)`
-/

namespace A063216.P12058514939769773925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063197 (n + 1) + A016921 n

end

end A063216.P12058514939769773925

namespace A063216

/-- `A063197(n+1)+A016921(n)` -/
def P12058514939769773925.Spec : Prop :=
  ∀ n, P12058514939769773925.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P10795711452657559235

`A131912(n+1)+A004773(n)`
-/

namespace A063216.P10795711452657559235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131912 (n + 1) + A004773 n

end

end A063216.P10795711452657559235

namespace A063216

/-- `A131912(n+1)+A004773(n)` -/
def P10795711452657559235.Spec : Prop :=
  ∀ n, P10795711452657559235.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P10576169657503600291

`A017005(n)-(A008615(n)+1)`
-/

namespace A063216.P10576169657503600291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n - (A008615 n + 1)

end

end A063216.P10576169657503600291

namespace A063216

/-- `A017005(n)-(A008615(n)+1)` -/
def P10576169657503600291.Spec : Prop :=
  ∀ n, P10576169657503600291.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P11655483097917146521

`A017281(n)-A063204(n+1)`
-/

namespace A063216.P11655483097917146521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A063204 (n + 1)

end

end A063216.P11655483097917146521

namespace A063216

/-- `A017281(n)-A063204(n+1)` -/
def P11655483097917146521.Spec : Prop :=
  ∀ n, P11655483097917146521.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P3813822490100839065

`A017017(n)-(A008615(n)+2)`
-/

namespace A063216.P3813822490100839065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - (A008615 n + 2)

end

end A063216.P3813822490100839065

namespace A063216

/-- `A017017(n)-(A008615(n)+2)` -/
def P3813822490100839065.Spec : Prop :=
  ∀ n, P3813822490100839065.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P12590995986833346248

`A016921(n)+n-A008615(n)`
-/

namespace A063216.P12590995986833346248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + ((n : ℤ) - A008615 n)

end

end A063216.P12590995986833346248

namespace A063216

/-- `A016921(n)+n-A008615(n)` -/
def P12590995986833346248.Spec : Prop :=
  ∀ n, P12590995986833346248.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P4727724505803704046

`A017077(n)-(A008615(n)+n)`
-/

namespace A063216.P4727724505803704046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n - (A008615 n + (n : ℤ))

end

end A063216.P4727724505803704046

namespace A063216

/-- `A017077(n)-(A008615(n)+n)` -/
def P4727724505803704046.Spec : Prop :=
  ∀ n, P4727724505803704046.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P8696554801601355132

`A078309(n+1)+A047345(n+1)`
-/

namespace A063216.P8696554801601355132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078309 (n + 1) + A047345 (n + 1)

end

end A063216.P8696554801601355132

namespace A063216

/-- `A078309(n+1)+A047345(n+1)` -/
def P8696554801601355132.Spec : Prop :=
  ∀ n, P8696554801601355132.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P2388565590179945860

`A130877(n+1)+A047391(n+1)`
-/

namespace A063216.P2388565590179945860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 1) + A047391 (n + 1)

end

end A063216.P2388565590179945860

namespace A063216

/-- `A130877(n+1)+A047391(n+1)` -/
def P2388565590179945860.Spec : Prop :=
  ∀ n, P2388565590179945860.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P15375534449612525499

`A272975(n+1)+A063208(n+1)`
-/

namespace A063216.P15375534449612525499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1) + A063208 (n + 1)

end

end A063216.P15375534449612525499

namespace A063216

/-- `A272975(n+1)+A063208(n+1)` -/
def P15375534449612525499.Spec : Prop :=
  ∀ n, P15375534449612525499.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P10195185867342048555

`A063204(n+1)+A063242(n+1)-1`
-/

namespace A063216.P10195185867342048555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063204 (n + 1) + (A063242 (n + 1) - 1)

end

end A063216.P10195185867342048555

namespace A063216

/-- `A063204(n+1)+A063242(n+1)-1` -/
def P10195185867342048555.Spec : Prop :=
  ∀ n, P10195185867342048555.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P14814422883366399635

`A042968(n+1)+A008586(n)+A007494(n)`
-/

namespace A063216.P14814422883366399635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) + (A008586 n + A007494 n)

end

end A063216.P14814422883366399635

namespace A063216

/-- `A042968(n+1)+A008586(n)+A007494(n)` -/
def P14814422883366399635.Spec : Prop :=
  ∀ n, P14814422883366399635.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P10920770507283253884

`6*n+A090168(n+1)`
-/

namespace A063216.P10920770507283253884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + A090168 (n + 1)

end

end A063216.P10920770507283253884

namespace A063216

/-- `6*n+A090168(n+1)` -/
def P10920770507283253884.Spec : Prop :=
  ∀ n, P10920770507283253884.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P17433402715071495883

`(A063293(2*n+3)-1)/2`
-/

namespace A063216.P17433402715071495883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063293 (2 * n + 3) - 1 : ℚ) / 2

end

end A063216.P17433402715071495883

namespace A063216

/-- `(A063293(2*n+3)-1)/2` -/
def P17433402715071495883.Spec : Prop :=
  ∀ n, P17433402715071495883.a n = (A063216 (n + 1) : ℚ)

end A063216

/-! ## A063216.P15972087172475532202

`A047383(n+1)+A047220(2*n+1)`
-/

namespace A063216.P15972087172475532202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047383 (n + 1) + A047220 (2 * n + 1)

end

end A063216.P15972087172475532202

namespace A063216

/-- `A047383(n+1)+A047220(2*n+1)` -/
def P15972087172475532202.Spec : Prop :=
  ∀ n, P15972087172475532202.a n = A063216 (n + 1)

end A063216

/-! ## A063216.P14638226387667052129

`A343028(2*n)+1-A002265(2*n)`
-/

namespace A063216.P14638226387667052129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343028 (2 * n) + (1 - A002265 (2 * n))

end

end A063216.P14638226387667052129

namespace A063216

/-- `A343028(2*n)+1-A002265(2*n)` -/
def P14638226387667052129.Spec : Prop :=
  ∀ n, P14638226387667052129.a n = A063216 (n + 1)

end A063216

/-!
# A063217: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 50 ).

The programs for A063217, the canonical program `A063217.P14881326508109598123` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063217 has offset 1).

The definition of A063217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063217.P14881326508109598123

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=12, a(4)=14`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063217

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P14881326508109598123.Spec : Prop :=
  ∀ n, P14881326508109598123.a n = A063217 (n + 1)

theorem P14881326508109598123.correct : P14881326508109598123.Spec := by
  intro n
  simp only [A063217, Nat.add_sub_cancel]

end A063217

/-! ## A063217.P16705479654274619859

`floor(∑[gcd(3, n)+3/2])-2`
-/

namespace A063217.P16705479654274619859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℚ) + (3 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - 2

end

end A063217.P16705479654274619859

namespace A063217

/-- `floor(∑[gcd(3, n)+3/2])-2` -/
def P16705479654274619859.Spec : Prop :=
  ∀ n, P16705479654274619859.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P1457157790590600416

`ceil(n/2+2*comp[4*n])`
-/

namespace A063217.P1457157790590600416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 + (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ)⌉

end

end A063217.P1457157790590600416

namespace A063217

/-- `ceil(n/2+2*comp[4*n])` -/
def P1457157790590600416.Spec : Prop :=
  ∀ n, P1457157790590600416.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P9934460939353762310

`∑[n%2]+2*comp[4*n]`
-/

namespace A063217.P9934460939353762310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A063217.P9934460939353762310

namespace A063217

/-- `∑[n%2]+2*comp[4*n]` -/
def P9934460939353762310.Spec : Prop :=
  ∀ n, (P9934460939353762310.a n : ℤ) = A063217 (n + 1)

end A063217

/-! ## A063217.P15575140267908046384

`∑[and(1, n)]+2*comp[4*n]`
-/

namespace A063217.P15575140267908046384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A063217.P15575140267908046384

namespace A063217

/-- `∑[and(1, n)]+2*comp[4*n]` -/
def P15575140267908046384.Spec : Prop :=
  ∀ n, (P15575140267908046384.a n : ℤ) = A063217 (n + 1)

end A063217

/-! ## A063217.P10489192737268446183

`∑[5-a(n-3)%4]` with `a(0)=2, a(1)=3, a(2)=2, a(3)=5`
-/

namespace A063217.P10489192737268446183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2, 5] fun n f1 =>
  5 - Int.tmod (f1 (n - 3)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063217.P10489192737268446183

namespace A063217

/-- `∑[5-a(n-3)%4]` -/
def P10489192737268446183.Spec : Prop :=
  ∀ n, P10489192737268446183.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P11333815689748162661

`and(1, n)+a(n-3)+9` with `a(0)=2, a(1)=5, a(2)=7`
-/

namespace A063217.P11333815689748162661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 7] fun n a =>
  Nat.land 1 n + (a (n - 3) + 9)

end

end A063217.P11333815689748162661

namespace A063217

/-- `and(1, n)+a(n-3)+9` -/
def P11333815689748162661.Spec : Prop :=
  ∀ n, (P11333815689748162661.a n : ℤ) = A063217 (n + 1)

end A063217

/-! ## A063217.P14070728953342372435

`∑[and(1, n)+2]+2*floor(n/3)`
-/

namespace A063217.P14070728953342372435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * ⌊(n : ℚ) / 3⌋

end

end A063217.P14070728953342372435

namespace A063217

/-- `∑[and(1, n)+2]+2*floor(n/3)` -/
def P14070728953342372435.Spec : Prop :=
  ∀ n, P14070728953342372435.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P11821161487011477753

`A063242(n+1)-ceil(n/2)`
-/

namespace A063217.P11821161487011477753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063242 (n + 1) - ⌈(n : ℚ) / 2⌉

end

end A063217.P11821161487011477753

namespace A063217

/-- `A063242(n+1)-ceil(n/2)` -/
def P11821161487011477753.Spec : Prop :=
  ∀ n, P11821161487011477753.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P4445407003903267798

`A008612(n)+A007310(n+1)`
-/

namespace A063217.P4445407003903267798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n + A007310 (n + 1)

end

end A063217.P4445407003903267798

namespace A063217

/-- `A008612(n)+A007310(n+1)` -/
def P4445407003903267798.Spec : Prop :=
  ∀ n, P4445407003903267798.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P12843686678688847611

`A047202(n+1)+A007494(n)`
-/

namespace A063217.P12843686678688847611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (n + 1) + A007494 n

end

end A063217.P12843686678688847611

namespace A063217

/-- `A047202(n+1)+A007494(n)` -/
def P12843686678688847611.Spec : Prop :=
  ∀ n, P12843686678688847611.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P11940716834052561721

`A063247(n+1)+A057078(n)`
-/

namespace A063217.P11940716834052561721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063247 (n + 1) + A057078 n

end

end A063217.P11940716834052561721

namespace A063217

/-- `A063247(n+1)+A057078(n)` -/
def P11940716834052561721.Spec : Prop :=
  ∀ n, P11940716834052561721.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P12816104856953068341

`A080513(n)+A047623(n+1)`
-/

namespace A063217.P12816104856953068341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A047623 (n + 1)

end

end A063217.P12816104856953068341

namespace A063217

/-- `A080513(n)+A047623(n+1)` -/
def P12816104856953068341.Spec : Prop :=
  ∀ n, P12816104856953068341.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P12551202960159376644

`A110654(n)+A047410(n+1)`
-/

namespace A063217.P12551202960159376644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A047410 (n + 1)

end

end A063217.P12551202960159376644

namespace A063217

/-- `A110654(n)+A047410(n+1)` -/
def P12551202960159376644.Spec : Prop :=
  ∀ n, P12551202960159376644.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P10646402971850107030

`A137719(n)+A047402(n+1)`
-/

namespace A063217.P10646402971850107030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137719 n + A047402 (n + 1)

end

end A063217.P10646402971850107030

namespace A063217

/-- `A137719(n)+A047402(n+1)` -/
def P10646402971850107030.Spec : Prop :=
  ∀ n, P10646402971850107030.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P6291973615290195674

`A350668(n)+A011960(n+1)`
-/

namespace A063217.P6291973615290195674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n + A011960 (n + 1)

end

end A063217.P6291973615290195674

namespace A063217

/-- `A350668(n)+A011960(n+1)` -/
def P6291973615290195674.Spec : Prop :=
  ∀ n, P6291973615290195674.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P9530078693219478991

`A063241(n+1)-A008612(n)`
-/

namespace A063217.P9530078693219478991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 1) - A008612 n

end

end A063217.P9530078693219478991

namespace A063217

/-- `A063241(n+1)-A008612(n)` -/
def P9530078693219478991.Spec : Prop :=
  ∀ n, P9530078693219478991.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P8208908111817826033

`A016825(n)-A063201(n+1)`
-/

namespace A063217.P8208908111817826033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A063201 (n + 1)

end

end A063217.P8208908111817826033

namespace A063217

/-- `A016825(n)-A063201(n+1)` -/
def P8208908111817826033.Spec : Prop :=
  ∀ n, P8208908111817826033.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P5898844511821899236

`A017329(n)-A063245(n+1)`
-/

namespace A063217.P5898844511821899236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A063245 (n + 1)

end

end A063217.P5898844511821899236

namespace A063217

/-- `A017329(n)-A063245(n+1)` -/
def P5898844511821899236.Spec : Prop :=
  ∀ n, P5898844511821899236.a n = A063217 (n + 1)

end A063217

/-! ## A063217.P1812148503174716275

`A047378(n+1)+A010761(n+1)`
-/

namespace A063217.P1812148503174716275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047378 (n + 1) + A010761 (n + 1)

end

end A063217.P1812148503174716275

namespace A063217

/-- `A047378(n+1)+A010761(n+1)` -/
def P1812148503174716275.Spec : Prop :=
  ∀ n, P1812148503174716275.a n = A063217 (n + 1)

end A063217

/-!
# A063218: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 51 ).

The programs for A063218, the canonical program `A063218.P12008912409708754126` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063218 has offset 1).

The definition of A063218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063218.P12008912409708754126

`a(n-3)+16` with `a(0)=3, a(1)=8, a(2)=14, a(3)=18`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063218

/-- `a(n-3)+16` -/
def P12008912409708754126.Spec : Prop :=
  ∀ n, (P12008912409708754126.a n : ℤ) = A063218 (n + 1)

theorem P12008912409708754126.correct : P12008912409708754126.Spec := by
  intro n
  simp only [A063218, Nat.add_sub_cancel]

end A063218

/-! ## A063218.P5014362026084862331

`∑[a(n²%3)+1]` with `a(0)=3, a(1)=5`
-/

namespace A063218.P5014362026084862331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n ^ 2 % 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063218.P5014362026084862331

namespace A063218

/-- `∑[a(n²%3)+1]` -/
def P5014362026084862331.Spec : Prop :=
  ∀ n, (P5014362026084862331.a n : ℤ) = A063218 (n + 1)

end A063218

/-! ## A063218.P17659663165772430557

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=5, a(2)=6, a(3)=4, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A063218.P17659663165772430557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 6, 4, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063218.P17659663165772430557

namespace A063218

/-- `∑[floor(a(n-3))]` -/
def P17659663165772430557.Spec : Prop :=
  ∀ n, (P17659663165772430557.a n : ℤ) = A063218 (n + 1)

end A063218

/-! ## A063218.P5008758445077509620

`∑[a(n-3)%7]` with `a(0)=3, a(1)=5, a(2)=6, a(3)=4, a(4)=6`
-/

namespace A063218.P5008758445077509620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 6, 4, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063218.P5008758445077509620

namespace A063218

/-- `∑[a(n-3)%7]` -/
def P5008758445077509620.Spec : Prop :=
  ∀ n, (P5008758445077509620.a n : ℤ) = A063218 (n + 1)

end A063218

/-! ## A063218.P13219725237417881756

`6-(sqrt(and(5, a(n-1)))-a(n-1))` with `a(0)=3`
-/

namespace A063218.P13219725237417881756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  6 - (Real.sqrt (Int.land 5 (SequenceMachineLib.roundAway (a (n - 1))) : ℝ) - a (n - 1))

end

end A063218.P13219725237417881756

namespace A063218

/-- `6-(sqrt(and(5, a(n-1)))-a(n-1))` -/
def P13219725237417881756.Spec : Prop :=
  ∀ n, P13219725237417881756.a n = (A063218 (n + 1) : ℝ)

end A063218

/-! ## A063218.P5699199873423669259

`Δ[ogf((1+2x+5x^2+5x^3+2x^4+x^5)/(1-2x+x^2-x^3+2x^4-x^5))]`
-/

namespace A063218.P5699199873423669259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5, 5, 2, 1] [1, -2, 1, -1, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063218.P5699199873423669259

namespace A063218

/-- `Δ[ogf((1+2x+5x^2+5x^3+2x^4+x^5)/(1-2x+x^2-x^3+2x^4-x^5))]` -/
def P5699199873423669259.Spec : Prop :=
  ∀ n, P5699199873423669259.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P13891514961461409359

`A063099(n+1)+1`
-/

namespace A063218.P13891514961461409359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) + 1

end

end A063218.P13891514961461409359

namespace A063218

/-- `A063099(n+1)+1` -/
def P13891514961461409359.Spec : Prop :=
  ∀ n, P13891514961461409359.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P18143220598057153563

`A063089(n+1)+2`
-/

namespace A063218.P18143220598057153563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + 2

end

end A063218.P18143220598057153563

namespace A063218

/-- `A063089(n+1)+2` -/
def P18143220598057153563.Spec : Prop :=
  ∀ n, P18143220598057153563.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P11776000885153021139

`ceil(A063236(n+1)/2)`
-/

namespace A063218.P11776000885153021139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063236 (n + 1) : ℚ) / 2⌉

end

end A063218.P11776000885153021139

namespace A063218

/-- `ceil(A063236(n+1)/2)` -/
def P11776000885153021139.Spec : Prop :=
  ∀ n, P11776000885153021139.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P2489695183872189643

`A063111(n+1)-2*n`
-/

namespace A063218.P2489695183872189643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) - (2 * n : ℤ)

end

end A063218.P2489695183872189643

namespace A063218

/-- `A063111(n+1)-2*n` -/
def P2489695183872189643.Spec : Prop :=
  ∀ n, P2489695183872189643.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P4790843368617777802

`A063107(n+1)-4*n`
-/

namespace A063218.P4790843368617777802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) - (4 * n : ℤ)

end

end A063218.P4790843368617777802

namespace A063218

/-- `A063107(n+1)-4*n` -/
def P4790843368617777802.Spec : Prop :=
  ∀ n, P4790843368617777802.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P3918195306733575826

`∑[A000203(a(n²%3))]` with `a(0)=3, a(1)=5`
-/

namespace A063218.P3918195306733575826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  A000203 (f1 (n ^ 2 % 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063218.P3918195306733575826

namespace A063218

/-- `∑[A000203(a(n²%3))]` -/
def P3918195306733575826.Spec : Prop :=
  ∀ n, P3918195306733575826.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P2729575721348809027

`A063087(n+1)+2*(n+1)`
-/

namespace A063218.P2729575721348809027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + (2 * (n + 1) : ℤ)

end

end A063218.P2729575721348809027

namespace A063218

/-- `A063087(n+1)+2*(n+1)` -/
def P2729575721348809027.Spec : Prop :=
  ∀ n, P2729575721348809027.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P12187666185254049401

`A063200(n+1)+A016825(n)`
-/

namespace A063218.P12187666185254049401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + A016825 n

end

end A063218.P12187666185254049401

namespace A063218

/-- `A063200(n+1)+A016825(n)` -/
def P12187666185254049401.Spec : Prop :=
  ∀ n, P12187666185254049401.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P505314723725879592

`A130196(n)+A219529(n)+1`
-/

namespace A063218.P505314723725879592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 n + (A219529 n + 1)

end

end A063218.P505314723725879592

namespace A063218

/-- `A130196(n)+A219529(n)+1` -/
def P505314723725879592.Spec : Prop :=
  ∀ n, P505314723725879592.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P226147951477138179

`A063135(n+1)-A016933(n)`
-/

namespace A063218.P226147951477138179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) - A016933 n

end

end A063218.P226147951477138179

namespace A063218

/-- `A063135(n+1)-A016933(n)` -/
def P226147951477138179.Spec : Prop :=
  ∀ n, P226147951477138179.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P5089532488973950435

`A063238(n+1)-A016825(n)`
-/

namespace A063218.P5089532488973950435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - A016825 n

end

end A063218.P5089532488973950435

namespace A063218

/-- `A063238(n+1)-A016825(n)` -/
def P5089532488973950435.Spec : Prop :=
  ∀ n, P5089532488973950435.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P7519902196548486734

`A063125(n+1)-A017089(n)`
-/

namespace A063218.P7519902196548486734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063125 (n + 1) - A017089 n

end

end A063218.P7519902196548486734

namespace A063218

/-- `A063125(n+1)-A017089(n)` -/
def P7519902196548486734.Spec : Prop :=
  ∀ n, P7519902196548486734.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P50557180328687122

`A063147(n+1)-A017101(n)`
-/

namespace A063218.P50557180328687122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - A017101 n

end

end A063218.P50557180328687122

namespace A063218

/-- `A063147(n+1)-A017101(n)` -/
def P50557180328687122.Spec : Prop :=
  ∀ n, P50557180328687122.a n = A063218 (n + 1)

end A063218

/-! ## A063218.P11108508320702447646

`A017329(n)-A063205(n+1)`
-/

namespace A063218.P11108508320702447646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A063205 (n + 1)

end

end A063218.P11108508320702447646

namespace A063218

/-- `A017329(n)-A063205(n+1)` -/
def P11108508320702447646.Spec : Prop :=
  ∀ n, P11108508320702447646.a n = A063218 (n + 1)

end A063218

/-!
# A063219: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 53 ).

The programs for A063219, the canonical program `A063219.P5256409622068863211` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063219 has offset 1).

The definition of A063219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063219.P5256409622068863211

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=4, a(1)=13, a(2)=21, a(3)=31, a(4)=39`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063219

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5256409622068863211.Spec : Prop :=
  ∀ n, P5256409622068863211.a n = A063219 (n + 1)

theorem P5256409622068863211.correct : P5256409622068863211.Spec := by
  intro n
  simp only [A063219, Nat.add_sub_cancel]

end A063219

/-! ## A063219.P12618099922043006506

`∑[floor(a(n-3))]` with `a(0)=4, a(1)=9, a(2)=8, a(3)=10, a(4)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A063219.P12618099922043006506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 8, 10, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063219.P12618099922043006506

namespace A063219

/-- `∑[floor(a(n-3))]` -/
def P12618099922043006506.Spec : Prop :=
  ∀ n, (P12618099922043006506.a n : ℤ) = A063219 (n + 1)

end A063219

/-! ## A063219.P18260112284337514804

`A063223(n+1)-or(1, n)`
-/

namespace A063219.P18260112284337514804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063223 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A063219.P18260112284337514804

namespace A063219

/-- `A063223(n+1)-or(1, n)` -/
def P18260112284337514804.Spec : Prop :=
  ∀ n, P18260112284337514804.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P2396628637718635713

`A063209(n+1)+Δ[n²]`
-/

namespace A063219.P2396628637718635713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063209 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063219.P2396628637718635713

namespace A063219

/-- `A063209(n+1)+Δ[n²]` -/
def P2396628637718635713.Spec : Prop :=
  ∀ n, P2396628637718635713.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P2379670709658336398

`A063205(n+1)+4*n+2`
-/

namespace A063219.P2379670709658336398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063205 (n + 1) + (4 * n + 2 : ℤ)

end

end A063219.P2379670709658336398

namespace A063219

/-- `A063205(n+1)+4*n+2` -/
def P2379670709658336398.Spec : Prop :=
  ∀ n, P2379670709658336398.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P17435747064798968269

`A017329(n)-Δ[A053799(n)]`
-/

namespace A063219.P17435747064798968269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - (f1 (n + 1) - f1 n)

end

end A063219.P17435747064798968269

namespace A063219

/-- `A017329(n)-Δ[A053799(n)]` -/
def P17435747064798968269.Spec : Prop :=
  ∀ n, P17435747064798968269.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P11991605811527953869

`A281813(n)+A130823(n+1)`
-/

namespace A063219.P11991605811527953869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n + A130823 (n + 1)

end

end A063219.P11991605811527953869

namespace A063219

/-- `A281813(n)+A130823(n+1)` -/
def P11991605811527953869.Spec : Prop :=
  ∀ n, P11991605811527953869.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P5053239167630216762

`A063240(n+1)-A016945(n)`
-/

namespace A063219.P5053239167630216762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063240 (n + 1) - A016945 n

end

end A063219.P5053239167630216762

namespace A063219

/-- `A063240(n+1)-A016945(n)` -/
def P5053239167630216762.Spec : Prop :=
  ∀ n, P5053239167630216762.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P13056586168937575954

`A017329(n)-A063200(n+1)`
-/

namespace A063219.P13056586168937575954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A063200 (n + 1)

end

end A063219.P13056586168937575954

namespace A063219

/-- `A017329(n)-A063200(n+1)` -/
def P13056586168937575954.Spec : Prop :=
  ∀ n, P13056586168937575954.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P4714652635286307564

`A017581(n)-A063087(n+1)`
-/

namespace A063219.P4714652635286307564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n - A063087 (n + 1)

end

end A063219.P4714652635286307564

namespace A063219

/-- `A017581(n)-A063087(n+1)` -/
def P4714652635286307564.Spec : Prop :=
  ∀ n, P4714652635286307564.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P484523781384310422

`A063223(n+1)-A109613(n)`
-/

namespace A063219.P484523781384310422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063223 (n + 1) - A109613 n

end

end A063219.P484523781384310422

namespace A063219

/-- `A063223(n+1)-A109613(n)` -/
def P484523781384310422.Spec : Prop :=
  ∀ n, P484523781384310422.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P4028754885700220516

`A147587(n)-A063218(n+1)`
-/

namespace A063219.P4028754885700220516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n - A063218 (n + 1)

end

end A063219.P4028754885700220516

namespace A063219

/-- `A147587(n)-A063218(n+1)` -/
def P4028754885700220516.Spec : Prop :=
  ∀ n, P4028754885700220516.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P7468024159404964498

`A242215(n)-A063117(n+1)`
-/

namespace A063219.P7468024159404964498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n - A063117 (n + 1)

end

end A063219.P7468024159404964498

namespace A063219

/-- `A242215(n)-A063117(n+1)` -/
def P7468024159404964498.Spec : Prop :=
  ∀ n, P7468024159404964498.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P2522348952358590338

`A063212(n+1)+A063211(n+1)`
-/

namespace A063219.P2522348952358590338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063212 (n + 1) + A063211 (n + 1)

end

end A063219.P2522348952358590338

namespace A063219

/-- `A063212(n+1)+A063211(n+1)` -/
def P2522348952358590338.Spec : Prop :=
  ∀ n, P2522348952358590338.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P4522101946779466364

`A063242(n+1)+A063206(n+1)`
-/

namespace A063219.P4522101946779466364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063242 (n + 1) + A063206 (n + 1)

end

end A063219.P4522101946779466364

namespace A063219

/-- `A063242(n+1)+A063206(n+1)` -/
def P4522101946779466364.Spec : Prop :=
  ∀ n, P4522101946779466364.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P15469493156812681097

`A090772(n+1)+A063203(n+1)`
-/

namespace A063219.P15469493156812681097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) + A063203 (n + 1)

end

end A063219.P15469493156812681097

namespace A063219

/-- `A090772(n+1)+A063203(n+1)` -/
def P15469493156812681097.Spec : Prop :=
  ∀ n, P15469493156812681097.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P908982501768784444

`A113803(n+1)+A063199(n+1)`
-/

namespace A063219.P908982501768784444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) + A063199 (n + 1)

end

end A063219.P908982501768784444

namespace A063219

/-- `A113803(n+1)+A063199(n+1)` -/
def P908982501768784444.Spec : Prop :=
  ∀ n, P908982501768784444.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P12258315106987034380

`A017317(n)+1-A063200(n+1)`
-/

namespace A063219.P12258315106987034380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n + (1 - A063200 (n + 1))

end

end A063219.P12258315106987034380

namespace A063219

/-- `A017317(n)+1-A063200(n+1)` -/
def P12258315106987034380.Spec : Prop :=
  ∀ n, P12258315106987034380.a n = A063219 (n + 1)

end A063219

/-! ## A063219.P5732158513983527126

`A063230(n+1)-A047235(n+1)`
-/

namespace A063219.P5732158513983527126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) - A047235 (n + 1)

end

end A063219.P5732158513983527126

namespace A063219

/-- `A063230(n+1)-A047235(n+1)` -/
def P5732158513983527126.Spec : Prop :=
  ∀ n, P5732158513983527126.a n = A063219 (n + 1)

end A063219

/-!
# A063220: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 55 ).

The programs for A063220, the canonical program `A063220.P1165827545311593591` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063220 has offset 1).

The definition of A063220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063220.P1165827545311593591

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=7, a(2)=8, a(3)=4, a(4)=8`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063220

/-- `∑[floor(a(n-3))]` -/
def P1165827545311593591.Spec : Prop :=
  ∀ n, (P1165827545311593591.a n : ℤ) = A063220 (n + 1)

theorem P1165827545311593591.correct : P1165827545311593591.Spec := by
  intro n
  simp only [A063220, Nat.add_sub_cancel]

end A063220

/-! ## A063220.P10799753595037443556

`∑[gcd(8, a(n-3))]` with `a(0)=3, a(1)=7, a(2)=8, a(3)=4, a(4)=8`
-/

namespace A063220.P10799753595037443556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 8, 4, 8] fun n f1 =>
  Nat.gcd 8 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063220.P10799753595037443556

namespace A063220

/-- `∑[gcd(8, a(n-3))]` -/
def P10799753595037443556.Spec : Prop :=
  ∀ n, (P10799753595037443556.a n : ℤ) = A063220 (n + 1)

end A063220

/-! ## A063220.P3959888962240909673

`record[(2*n+3)*gcd(2, (n+1)%5)]`
-/

namespace A063220.P3959888962240909673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * Nat.gcd 2 ((n + 1) % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063220.P3959888962240909673

namespace A063220

/-- `record[(2*n+3)*gcd(2, (n+1)%5)]` -/
def P3959888962240909673.Spec : Prop :=
  ∀ n, (P3959888962240909673.a n : ℤ) = A063220 (n + 1)

end A063220

/-! ## A063220.P12585413007554572855

`∑[a(n-3)+a(n-3)%2]` with `a(0)=3, a(1)=7, a(2)=8`
-/

namespace A063220.P12585413007554572855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 8] fun n f1 =>
  f1 (n - 3) + f1 (n - 3) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063220.P12585413007554572855

namespace A063220

/-- `∑[a(n-3)+a(n-3)%2]` -/
def P12585413007554572855.Spec : Prop :=
  ∀ n, (P12585413007554572855.a n : ℤ) = A063220 (n + 1)

end A063220

/-! ## A063220.P16478199013782808507

`A063222(n+1)+Δ[n²]`
-/

namespace A063220.P16478199013782808507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063220.P16478199013782808507

namespace A063220

/-- `A063222(n+1)+Δ[n²]` -/
def P16478199013782808507.Spec : Prop :=
  ∀ n, P16478199013782808507.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P14314054617879215087

`∑[A000203(a(n²%3))]` with `a(0)=3, a(1)=7`
-/

namespace A063220.P14314054617879215087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  A000203 (f1 (n ^ 2 % 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063220.P14314054617879215087

namespace A063220

/-- `∑[A000203(a(n²%3))]` -/
def P14314054617879215087.Spec : Prop :=
  ∀ n, P14314054617879215087.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P2549494105635759352

`A063198(n+1)+A016945(n)`
-/

namespace A063220.P2549494105635759352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (n + 1) + A016945 n

end

end A063220.P2549494105635759352

namespace A063220

/-- `A063198(n+1)+A016945(n)` -/
def P2549494105635759352.Spec : Prop :=
  ∀ n, P2549494105635759352.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P2737101344997587791

`A063236(n+1)-A016825(n)`
-/

namespace A063220.P2737101344997587791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063236 (n + 1) - A016825 n

end

end A063220.P2737101344997587791

namespace A063220

/-- `A063236(n+1)-A016825(n)` -/
def P2737101344997587791.Spec : Prop :=
  ∀ n, P2737101344997587791.a n = A063220 (n + 1)

theorem P2737101344997587791.correct : P2737101344997587791.Spec := by
  intro n
  simp only [A063220, Nat.add_sub_cancel, A063220.P2737101344997587791.a, A063220.P1165827545311593591.f1, A063220.P1165827545311593591.a, A016825, A016825.P4712696052905976233.a, A063236, A063236.P5255982037722682345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063220

/-! ## A063220.P2902422917893252771

`A063159(n+1)-A017569(n)`
-/

namespace A063220.P2902422917893252771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063159 (n + 1) - A017569 n

end

end A063220.P2902422917893252771

namespace A063220

/-- `A063159(n+1)-A017569(n)` -/
def P2902422917893252771.Spec : Prop :=
  ∀ n, P2902422917893252771.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P1454565089159540517

`A063214(n+1)+A047235(n+1)`
-/

namespace A063220.P1454565089159540517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) + A047235 (n + 1)

end

end A063220.P1454565089159540517

namespace A063220

/-- `A063214(n+1)+A047235(n+1)` -/
def P1454565089159540517.Spec : Prop :=
  ∀ n, P1454565089159540517.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P12280386430591730932

`A063226(n+1)+A063202(n+1)`
-/

namespace A063220.P12280386430591730932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) + A063202 (n + 1)

end

end A063220.P12280386430591730932

namespace A063220

/-- `A063226(n+1)+A063202(n+1)` -/
def P12280386430591730932.Spec : Prop :=
  ∀ n, P12280386430591730932.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P14471231734621845685

`A063224(n+1)+A063218(n+1)`
-/

namespace A063220.P14471231734621845685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1) + A063218 (n + 1)

end

end A063220.P14471231734621845685

namespace A063220

/-- `A063224(n+1)+A063218(n+1)` -/
def P14471231734621845685.Spec : Prop :=
  ∀ n, P14471231734621845685.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P15412096985187426613

`A063107(n+1)-A047464(n+1)`
-/

namespace A063220.P15412096985187426613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) - A047464 (n + 1)

end

end A063220.P15412096985187426613

namespace A063220

/-- `A063107(n+1)-A047464(n+1)` -/
def P15412096985187426613.Spec : Prop :=
  ∀ n, P15412096985187426613.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P1001120987948205773

`A063238(n+1)-A047410(n+1)`
-/

namespace A063220.P1001120987948205773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - A047410 (n + 1)

end

end A063220.P1001120987948205773

namespace A063220

/-- `A063238(n+1)-A047410(n+1)` -/
def P1001120987948205773.Spec : Prop :=
  ∀ n, P1001120987948205773.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P16589799476373093016

`A063246(n+1)-A063199(n+1)`
-/

namespace A063220.P16589799476373093016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063246 (n + 1) - A063199 (n + 1)

end

end A063220.P16589799476373093016

namespace A063220

/-- `A063246(n+1)-A063199(n+1)` -/
def P16589799476373093016.Spec : Prop :=
  ∀ n, P16589799476373093016.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P13977254052800293539

`A063098(n+1)-2*A047464(n+1)`
-/

namespace A063220.P13977254052800293539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063098 (n + 1) - 2 * A047464 (n + 1)

end

end A063220.P13977254052800293539

namespace A063220

/-- `A063098(n+1)-2*A047464(n+1)` -/
def P13977254052800293539.Spec : Prop :=
  ∀ n, P13977254052800293539.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P17519037419722455643

`2*A063226(n+1)-A063227(n+1)`
-/

namespace A063220.P17519037419722455643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063226 (n + 1) - A063227 (n + 1)

end

end A063220.P17519037419722455643

namespace A063220

/-- `2*A063226(n+1)-A063227(n+1)` -/
def P17519037419722455643.Spec : Prop :=
  ∀ n, P17519037419722455643.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P16459860783697623043

`A063198(n+1)+A063205(n+1)+A063200(n+1)`
-/

namespace A063220.P16459860783697623043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (n + 1) + (A063205 (n + 1) + A063200 (n + 1))

end

end A063220.P16459860783697623043

namespace A063220

/-- `A063198(n+1)+A063205(n+1)+A063200(n+1)` -/
def P16459860783697623043.Spec : Prop :=
  ∀ n, P16459860783697623043.a n = A063220 (n + 1)

end A063220

/-! ## A063220.P16213581233767122331

`A049347(n+1)+A298786(n+1)+A298786(n)`
-/

namespace A063220.P16213581233767122331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + (A298786 (n + 1) + A298786 n)

end

end A063220.P16213581233767122331

namespace A063220

/-- `A049347(n+1)+A298786(n+1)+A298786(n)` -/
def P16213581233767122331.Spec : Prop :=
  ∀ n, P16213581233767122331.a n = A063220 (n + 1)

end A063220

/-!
# A063221: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 57 ).

The programs for A063221, the canonical program `A063221.P6529527685248435411` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063221 has offset 1).

The definition of A063221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063221.P6529527685248435411

`a(n-2)+12` with `a(0)=3, a(1)=10, a(2)=14`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063221

/-- `a(n-2)+12` -/
def P6529527685248435411.Spec : Prop :=
  ∀ n, (P6529527685248435411.a n : ℤ) = A063221 (n + 1)

theorem P6529527685248435411.correct : P6529527685248435411.Spec := by
  intro n
  simp only [A063221, Nat.add_sub_cancel]

end A063221

/-! ## A063221.P6504709971113329645

`∑[a(and(1, n))+1]` with `a(0)=3, a(1)=7`
-/

namespace A063221.P6504709971113329645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  f1 (Nat.land 1 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063221.P6504709971113329645

namespace A063221

/-- `∑[a(and(1, n))+1]` -/
def P6504709971113329645.Spec : Prop :=
  ∀ n, (P6504709971113329645.a n : ℤ) = A063221 (n + 1)

end A063221

/-! ## A063221.P10518745575584369343

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=7, a(2)=4, a(3)=8`
-/

namespace A063221.P10518745575584369343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 4, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063221.P10518745575584369343

namespace A063221

/-- `∑[abs(a(n-2))]` -/
def P10518745575584369343.Spec : Prop :=
  ∀ n, (P10518745575584369343.a n : ℤ) = A063221 (n + 1)

end A063221

/-! ## A063221.P12993522765485999229

`∑[12-a(n-1)]` with `a(0)=3, a(1)=7, a(2)=4`
-/

namespace A063221.P12993522765485999229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 4] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063221.P12993522765485999229

namespace A063221

/-- `∑[12-a(n-1)]` -/
def P12993522765485999229.Spec : Prop :=
  ∀ n, P12993522765485999229.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P15109854537414687376

`12*n-a(n-1)` with `a(0)=3, a(1)=10`
-/

namespace A063221.P15109854537414687376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  (12 * n : ℤ) - a (n - 1)

end

end A063221.P15109854537414687376

namespace A063221

/-- `12*n-a(n-1)` -/
def P15109854537414687376.Spec : Prop :=
  ∀ n, P15109854537414687376.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P8380950096037547171

`or(2, A271114(n)+1)`
-/

namespace A063221.P8380950096037547171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A271114 n + 1)

end

end A063221.P8380950096037547171

namespace A063221

/-- `or(2, A271114(n)+1)` -/
def P8380950096037547171.Spec : Prop :=
  ∀ n, P8380950096037547171.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P4799139947529306687

`or(2, A008458(n)+2)`
-/

namespace A063221.P4799139947529306687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A008458 n + 2)

end

end A063221.P4799139947529306687

namespace A063221

/-- `or(2, A008458(n)+2)` -/
def P4799139947529306687.Spec : Prop :=
  ∀ n, P4799139947529306687.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P17641684925474269640

`∑[A000203(a(n%2))]` with `a(0)=3, a(1)=7`
-/

namespace A063221.P17641684925474269640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  A000203 (f1 (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063221.P17641684925474269640

namespace A063221

/-- `∑[A000203(a(n%2))]` -/
def P17641684925474269640.Spec : Prop :=
  ∀ n, P17641684925474269640.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P9403320706178402598

`∑[A000203(a(and(1, n)))]` with `a(0)=3, a(1)=7`
-/

namespace A063221.P9403320706178402598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  A000203 (f1 (Nat.land 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063221.P9403320706178402598

namespace A063221

/-- `∑[A000203(a(and(1, n)))]` -/
def P9403320706178402598.Spec : Prop :=
  ∀ n, P9403320706178402598.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P5144570644136214253

`or(2, A019426(2*n+1)+1)`
-/

namespace A063221.P5144570644136214253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A019426 (2 * n + 1) + 1)

end

end A063221.P5144570644136214253

namespace A063221

/-- `or(2, A019426(2*n+1)+1)` -/
def P5144570644136214253.Spec : Prop :=
  ∀ n, P5144570644136214253.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P5424842623064305331

`6*(n+1)-3+A062157(n)`
-/

namespace A063221.P5424842623064305331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - 3 + A062157 n

end

end A063221.P5424842623064305331

namespace A063221

/-- `6*(n+1)-3+A062157(n)` -/
def P5424842623064305331.Spec : Prop :=
  ∀ n, P5424842623064305331.a n = A063221 (n + 1)

theorem P5424842623064305331.correct : P5424842623064305331.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A063221, Nat.add_sub_cancel, A063221.P5424842623064305331.a, A063221.P6529527685248435411.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h2 := ih (m + 1) (by omega)
      simp only [A063221, Nat.add_sub_cancel, A063221.P5424842623064305331.a, A063221.P6529527685248435411.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 2 = m + 1 by omega, show m + 1 < m + 3 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A063221

/-! ## A063221.P14484505518825161056

`A010694(n)+A008458(n)`
-/

namespace A063221.P14484505518825161056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n + A008458 n

end

end A063221.P14484505518825161056

namespace A063221

/-- `A010694(n)+A008458(n)` -/
def P14484505518825161056.Spec : Prop :=
  ∀ n, P14484505518825161056.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P8551723154630853249

`A016885(n)+A014681(n)`
-/

namespace A063221.P8551723154630853249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + A014681 n

end

end A063221.P8551723154630853249

namespace A063221

/-- `A016885(n)+A014681(n)` -/
def P8551723154630853249.Spec : Prop :=
  ∀ n, P8551723154630853249.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P2103505120421829015

`A062157(n)+A016945(n)`
-/

namespace A063221.P2103505120421829015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A016945 n

end

end A063221.P2103505120421829015

namespace A063221

/-- `A062157(n)+A016945(n)` -/
def P2103505120421829015.Spec : Prop :=
  ∀ n, P2103505120421829015.a n = A063221 (n + 1)

theorem P2103505120421829015.correct : P2103505120421829015.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A063221, Nat.add_sub_cancel, A063221.P2103505120421829015.a, A063221.P6529527685248435411.a, A016945, A016945.P12463160785118576711.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h2 := ih (m + 1) (by omega)
      simp only [A063221, Nat.add_sub_cancel, A063221.P2103505120421829015.a, A063221.P6529527685248435411.a, A016945, A016945.P12463160785118576711.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 2 = m + 1 by omega, show m + 1 < m + 3 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A063221

/-! ## A063221.P7717177318351221318

`A271114(n)+A010684(n)`
-/

namespace A063221.P7717177318351221318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n + A010684 n

end

end A063221.P7717177318351221318

namespace A063221

/-- `A271114(n)+A010684(n)` -/
def P7717177318351221318.Spec : Prop :=
  ∀ n, P7717177318351221318.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P10962882799256169724

`A008458(n)+A010684(n)+1`
-/

namespace A063221.P10962882799256169724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A010684 n + 1)

end

end A063221.P10962882799256169724

namespace A063221

/-- `A008458(n)+A010684(n)+1` -/
def P10962882799256169724.Spec : Prop :=
  ∀ n, P10962882799256169724.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P5097773523173494877

`A014681(n)+A016873(n)+1`
-/

namespace A063221.P5097773523173494877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n + (A016873 n + 1)

end

end A063221.P5097773523173494877

namespace A063221

/-- `A014681(n)+A016873(n)+1` -/
def P5097773523173494877.Spec : Prop :=
  ∀ n, P5097773523173494877.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P1622700584831307653

`A065190(n+1)+A016873(n)`
-/

namespace A063221.P1622700584831307653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1) + A016873 n

end

end A063221.P1622700584831307653

namespace A063221

/-- `A065190(n+1)+A016873(n)` -/
def P1622700584831307653.Spec : Prop :=
  ∀ n, P1622700584831307653.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P7879824161635171961

`A091999(n+1)+A000007(n)`
-/

namespace A063221.P7879824161635171961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1) + A000007 n

end

end A063221.P7879824161635171961

namespace A063221

/-- `A091999(n+1)+A000007(n)` -/
def P7879824161635171961.Spec : Prop :=
  ∀ n, P7879824161635171961.a n = A063221 (n + 1)

end A063221

/-! ## A063221.P6473646955059103535

`A273669(n+1)+A028310(n)`
-/

namespace A063221.P6473646955059103535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1) + A028310 n

end

end A063221.P6473646955059103535

namespace A063221

/-- `A273669(n+1)+A028310(n)` -/
def P6473646955059103535.Spec : Prop :=
  ∀ n, P6473646955059103535.a n = A063221 (n + 1)

end A063221

/-!
# A063222: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 58 ).

The programs for A063222, the canonical program `A063222.P18006565172130122509` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063222 has offset 1).

The definition of A063222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063222.P15270388758532979618

`∑[(6-char[1])/gcd(3, n)]`
-/

namespace A063222.P15270388758532979618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / (Nat.gcd 3 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063222.P15270388758532979618

namespace A063222

/-- `∑[(6-char[1])/gcd(3, n)]` -/
def P15270388758532979618.Spec : Prop :=
  ∀ n, P15270388758532979618.a n = (A063222 (n + 1) : ℚ)

end A063222

/-! ## A063222.P18006565172130122509

`a(n-3)+14` with `a(0)=2, a(1)=7, a(2)=13, a(3)=15`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063222

/-- `a(n-3)+14` -/
def P18006565172130122509.Spec : Prop :=
  ∀ n, (P18006565172130122509.a n : ℤ) = A063222 (n + 1)

theorem P18006565172130122509.correct : P18006565172130122509.Spec := by
  intro n
  simp only [A063222, Nat.add_sub_cancel]

end A063222

/-! ## A063222.P9087573363708664803

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=5, a(2)=6, a(3)=2, a(4)=6`
-/

namespace A063222.P9087573363708664803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6, 2, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063222.P9087573363708664803

namespace A063222

/-- `∑[abs(a(n-3))]` -/
def P9087573363708664803.Spec : Prop :=
  ∀ n, (P9087573363708664803.a n : ℤ) = A063222 (n + 1)

end A063222

/-! ## A063222.P13745633703999814219

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=5, a(2)=6, a(3)=2, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A063222.P13745633703999814219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6, 2, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063222.P13745633703999814219

namespace A063222

/-- `∑[floor(a(n-3))]` -/
def P13745633703999814219.Spec : Prop :=
  ∀ n, (P13745633703999814219.a n : ℤ) = A063222 (n + 1)

end A063222

/-! ## A063222.P6623150601709994578

`∑[ceil(a(n-3))]` with `a(0)=2, a(1)=5, a(2)=6, a(3)=2, a(4)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A063222.P6623150601709994578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6, 2, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063222.P6623150601709994578

namespace A063222

/-- `∑[ceil(a(n-3))]` -/
def P6623150601709994578.Spec : Prop :=
  ∀ n, (P6623150601709994578.a n : ℤ) = A063222 (n + 1)

end A063222

/-! ## A063222.P6928034923389555056

`∑[6%a(n-3)²]` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A063222.P6928034923389555056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6] fun n f1 =>
  6 % f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063222.P6928034923389555056

namespace A063222

/-- `∑[6%a(n-3)²]` -/
def P6928034923389555056.Spec : Prop :=
  ∀ n, (P6928034923389555056.a n : ℤ) = A063222 (n + 1)

end A063222

/-! ## A063222.P14157758981532851361

`∑[gcd(6, a(n-3))]` with `a(0)=2, a(1)=5, a(2)=6, a(3)=2, a(4)=6`
-/

namespace A063222.P14157758981532851361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6, 2, 6] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063222.P14157758981532851361

namespace A063222

/-- `∑[gcd(6, a(n-3))]` -/
def P14157758981532851361.Spec : Prop :=
  ∀ n, (P14157758981532851361.a n : ℤ) = A063222 (n + 1)

end A063222

/-! ## A063222.P6487236414161147157

`∑[a(n-3)%7]` with `a(0)=2, a(1)=5, a(2)=6, a(3)=2, a(4)=6`
-/

namespace A063222.P6487236414161147157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6, 2, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063222.P6487236414161147157

namespace A063222

/-- `∑[a(n-3)%7]` -/
def P6487236414161147157.Spec : Prop :=
  ∀ n, (P6487236414161147157.a n : ℤ) = A063222 (n + 1)

end A063222

/-! ## A063222.P8805529422245410193

`Δ[ogf((1+x+5x^2+5x^3+x^4+x^5)/(1-2x+x^2-x^3+2x^4-x^5))]`
-/

namespace A063222.P8805529422245410193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5, 5, 1, 1] [1, -2, 1, -1, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063222.P8805529422245410193

namespace A063222

/-- `Δ[ogf((1+x+5x^2+5x^3+x^4+x^5)/(1-2x+x^2-x^3+2x^4-x^5))]` -/
def P8805529422245410193.Spec : Prop :=
  ∀ n, P8805529422245410193.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P15579838431756984646

`A063214(n+1)+or(1, n)`
-/

namespace A063222.P15579838431756984646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) + (Nat.lor 1 n : ℤ)

end

end A063222.P15579838431756984646

namespace A063222

/-- `A063214(n+1)+or(1, n)` -/
def P15579838431756984646.Spec : Prop :=
  ∀ n, P15579838431756984646.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P3839991094496401694

`A063220(n+1)-Δ[n²]`
-/

namespace A063222.P3839991094496401694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063222.P3839991094496401694

namespace A063222

/-- `A063220(n+1)-Δ[n²]` -/
def P3839991094496401694.Spec : Prop :=
  ∀ n, P3839991094496401694.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P14838179448946508797

`A063198(n+1)+4*n+2`
-/

namespace A063222.P14838179448946508797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (n + 1) + (4 * n + 2 : ℤ)

end

end A063222.P14838179448946508797

namespace A063222

/-- `A063198(n+1)+4*n+2` -/
def P14838179448946508797.Spec : Prop :=
  ∀ n, P14838179448946508797.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P13112201136502912372

`2*(A298024(n)/2+1-char[3*n])+1`
-/

namespace A063222.P13112201136502912372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A298024 n : ℚ) / 2 + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)) + 1

end

end A063222.P13112201136502912372

namespace A063222

/-- `2*(A298024(n)/2+1-char[3*n])+1` -/
def P13112201136502912372.Spec : Prop :=
  ∀ n, P13112201136502912372.a n = (A063222 (n + 1) : ℚ)

end A063222

/-! ## A063222.P10003587393349282116

`A301298(n)+A069705(n)`
-/

namespace A063222.P10003587393349282116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A069705 n

end

end A063222.P10003587393349282116

namespace A063222

/-- `A301298(n)+A069705(n)` -/
def P10003587393349282116.Spec : Prop :=
  ∀ n, P10003587393349282116.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P4272999562316096534

`A298024(n)+A169609(n)`
-/

namespace A063222.P4272999562316096534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A169609 n

end

end A063222.P4272999562316096534

namespace A063222

/-- `A298024(n)+A169609(n)` -/
def P4272999562316096534.Spec : Prop :=
  ∀ n, P4272999562316096534.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P15787600291153153326

`A109613(n)+A063214(n+1)`
-/

namespace A063222.P15787600291153153326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A063214 (n + 1)

end

end A063222.P15787600291153153326

namespace A063222

/-- `A109613(n)+A063214(n+1)` -/
def P15787600291153153326.Spec : Prop :=
  ∀ n, P15787600291153153326.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P10865710838539240989

`A063236(n+1)-A016945(n)`
-/

namespace A063222.P10865710838539240989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063236 (n + 1) - A016945 n

end

end A063222.P10865710838539240989

namespace A063222

/-- `A063236(n+1)-A016945(n)` -/
def P10865710838539240989.Spec : Prop :=
  ∀ n, P10865710838539240989.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P10514279952901588736

`A063202(n+1)+A047235(n+1)`
-/

namespace A063222.P10514279952901588736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063202 (n + 1) + A047235 (n + 1)

end

end A063222.P10514279952901588736

namespace A063222

/-- `A063202(n+1)+A047235(n+1)` -/
def P10514279952901588736.Spec : Prop :=
  ∀ n, P10514279952901588736.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P9634856253308164873

`A063213(n+1)+A063200(n+1)`
-/

namespace A063222.P9634856253308164873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A063200 (n + 1)

end

end A063222.P9634856253308164873

namespace A063222

/-- `A063213(n+1)+A063200(n+1)` -/
def P9634856253308164873.Spec : Prop :=
  ∀ n, P9634856253308164873.a n = A063222 (n + 1)

end A063222

/-! ## A063222.P5048378263952329445

`A063244(n+1)-A007310(n+1)`
-/

namespace A063222.P5048378263952329445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063244 (n + 1) - A007310 (n + 1)

end

end A063222.P5048378263952329445

namespace A063222

/-- `A063244(n+1)-A007310(n+1)` -/
def P5048378263952329445.Spec : Prop :=
  ∀ n, P5048378263952329445.a n = A063222 (n + 1)

end A063222

/-!
# A063223: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 59 ).

The programs for A063223, the canonical program `A063223.P8636699475728164837` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063223 has offset 1).

The definition of A063223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063223.P8636699475728164837

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=5, a(1)=14, a(2)=24, a(3)=34, a(4)=44, a(5)=52`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063223

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P8636699475728164837.Spec : Prop :=
  ∀ n, P8636699475728164837.a n = A063223 (n + 1)

theorem P8636699475728164837.correct : P8636699475728164837.Spec := by
  intro n
  simp only [A063223, Nat.add_sub_cancel]

end A063223

/-! ## A063223.P4421637177987383729

`A063215(n+1)+Δ[n²]`
-/

namespace A063223.P4421637177987383729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063215 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063223.P4421637177987383729

namespace A063223

/-- `A063215(n+1)+Δ[n²]` -/
def P4421637177987383729.Spec : Prop :=
  ∀ n, P4421637177987383729.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P3287019401575811149

`A063230(n+1)-Δ[n²]`
-/

namespace A063223.P3287019401575811149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063223.P3287019401575811149

namespace A063223

/-- `A063230(n+1)-Δ[n²]` -/
def P3287019401575811149.Spec : Prop :=
  ∀ n, P3287019401575811149.a n = A063223 (n + 1)

theorem P3287019401575811149.correct : P3287019401575811149.Spec := by
  intro n
  simp only [A063223, Nat.add_sub_cancel, A063223.P3287019401575811149.f1, A063223.P3287019401575811149.a, A063223.P8636699475728164837.a, A063230, A063230.P14545759985604796724.f1, A063230.P14545759985604796724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063223

/-! ## A063223.P10503807186562687744

`A063199(n+1)+8*n+4`
-/

namespace A063223.P10503807186562687744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 1) + (8 * n + 4 : ℤ)

end

end A063223.P10503807186562687744

namespace A063223

/-- `A063199(n+1)+8*n+4` -/
def P10503807186562687744.Spec : Prop :=
  ∀ n, P10503807186562687744.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P3063246909625568751

`A063203(n+1)+3*(2*n+1)`
-/

namespace A063223.P3063246909625568751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063203 (n + 1) + (3 * (2 * n + 1) : ℤ)

end

end A063223.P3063246909625568751

namespace A063223

/-- `A063203(n+1)+3*(2*n+1)` -/
def P3063246909625568751.Spec : Prop :=
  ∀ n, P3063246909625568751.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P2211858557797984092

`A063235(n+1)-(Δ[n²]+Δ[n²])`
-/

namespace A063223.P2211858557797984092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063235 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

end

end A063223.P2211858557797984092

namespace A063223

/-- `A063235(n+1)-(Δ[n²]+Δ[n²])` -/
def P2211858557797984092.Spec : Prop :=
  ∀ n, P2211858557797984092.a n = A063223 (n + 1)

theorem P2211858557797984092.correct : P2211858557797984092.Spec := by
  intro n
  simp only [A063223, Nat.add_sub_cancel, A063223.P2211858557797984092.f1, A063223.P2211858557797984092.f2, A063223.P2211858557797984092.a, A063223.P8636699475728164837.a, A063235, A063235.P16999452272687535801.f1, A063235.P16999452272687535801.a, A063230, A063230.P14545759985604796724.f1, A063230.P14545759985604796724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063223

/-! ## A063223.P10656754440532275687

`A109613(n)+A063219(n+1)`
-/

namespace A063223.P10656754440532275687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A063219 (n + 1)

end

end A063223.P10656754440532275687

namespace A063223

/-- `A109613(n)+A063219(n+1)` -/
def P10656754440532275687.Spec : Prop :=
  ∀ n, P10656754440532275687.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P2985705924851824773

`A017329(n)-A063195(n+1)`
-/

namespace A063223.P2985705924851824773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A063195 (n + 1)

end

end A063223.P2985705924851824773

namespace A063223

/-- `A017329(n)-A063195(n+1)` -/
def P2985705924851824773.Spec : Prop :=
  ∀ n, P2985705924851824773.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P17567356407771132507

`A017581(n)-A063081(n+1)`
-/

namespace A063223.P17567356407771132507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n - A063081 (n + 1)

end

end A063223.P17567356407771132507

namespace A063223

/-- `A017581(n)-A063081(n+1)` -/
def P17567356407771132507.Spec : Prop :=
  ∀ n, P17567356407771132507.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P5344098732642246145

`A063209(n+1)+A047235(n+1)`
-/

namespace A063223.P5344098732642246145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063209 (n + 1) + A047235 (n + 1)

end

end A063223.P5344098732642246145

namespace A063223

/-- `A063209(n+1)+A047235(n+1)` -/
def P5344098732642246145.Spec : Prop :=
  ∀ n, P5344098732642246145.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P14641494484800306805

`A063211(n+1)+A047410(n+1)`
-/

namespace A063223.P14641494484800306805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063211 (n + 1) + A047410 (n + 1)

end

end A063223.P14641494484800306805

namespace A063223

/-- `A063211(n+1)+A047410(n+1)` -/
def P14641494484800306805.Spec : Prop :=
  ∀ n, P14641494484800306805.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P16081428301922262562

`A063226(n+1)+A063205(n+1)`
-/

namespace A063223.P16081428301922262562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) + A063205 (n + 1)

end

end A063223.P16081428301922262562

namespace A063223

/-- `A063226(n+1)+A063205(n+1)` -/
def P16081428301922262562.Spec : Prop :=
  ∀ n, P16081428301922262562.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P1541096699458679691

`A017317(n)+1-A063195(n+1)`
-/

namespace A063223.P1541096699458679691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n + (1 - A063195 (n + 1))

end

end A063223.P1541096699458679691

namespace A063223

/-- `A017317(n)+1-A063195(n+1)` -/
def P1541096699458679691.Spec : Prop :=
  ∀ n, P1541096699458679691.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P10661069837999826783

`A063228(n+1)-A063224(n+1)`
-/

namespace A063223.P10661069837999826783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063228 (n + 1) - A063224 (n + 1)

end

end A063223.P10661069837999826783

namespace A063223

/-- `A063228(n+1)-A063224(n+1)` -/
def P10661069837999826783.Spec : Prop :=
  ∀ n, P10661069837999826783.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P500532851156804925

`A063233(n+1)-A063213(n+1)`
-/

namespace A063223.P500532851156804925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (n + 1) - A063213 (n + 1)

end

end A063223.P500532851156804925

namespace A063223

/-- `A063233(n+1)-A063213(n+1)` -/
def P500532851156804925.Spec : Prop :=
  ∀ n, P500532851156804925.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P16946733537411569375

`A063240(n+1)-A090772(n+1)`
-/

namespace A063223.P16946733537411569375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063240 (n + 1) - A090772 (n + 1)

end

end A063223.P16946733537411569375

namespace A063223

/-- `A063240(n+1)-A090772(n+1)` -/
def P16946733537411569375.Spec : Prop :=
  ∀ n, P16946733537411569375.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P6118802431215780365

`A017305(n)+2-A063195(n+1)`
-/

namespace A063223.P6118802431215780365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + (2 - A063195 (n + 1))

end

end A063223.P6118802431215780365

namespace A063223

/-- `A017305(n)+2-A063195(n+1)` -/
def P6118802431215780365.Spec : Prop :=
  ∀ n, P6118802431215780365.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P8112085339393594789

`A017353(n)-(A063195(n+1)+2)`
-/

namespace A063223.P8112085339393594789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - (A063195 (n + 1) + 2)

end

end A063223.P8112085339393594789

namespace A063223

/-- `A017353(n)-(A063195(n+1)+2)` -/
def P8112085339393594789.Spec : Prop :=
  ∀ n, P8112085339393594789.a n = A063223 (n + 1)

end A063223

/-! ## A063223.P2929771833062016255

`A017317(n)+1-Δ[A008749(n)]`
-/

namespace A063223.P2929771833062016255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n + (1 - (f1 (n + 1) - f1 n))

end

end A063223.P2929771833062016255

namespace A063223

/-- `A017317(n)+1-Δ[A008749(n)]` -/
def P2929771833062016255.Spec : Prop :=
  ∀ n, P2929771833062016255.a n = A063223 (n + 1)

end A063223

/-!
# A063224: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 60 ).

The programs for A063224, the canonical program `A063224.P2851558114836419567` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063224 has offset 1).

The definition of A063224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063224.P13651322111332460807

`2*floor(2*(n+1)/3)`
-/

namespace A063224.P13651322111332460807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(2 * (n + 1) : ℚ) / 3⌋

end

end A063224.P13651322111332460807

namespace A063224

/-- `2*floor(2*(n+1)/3)` -/
def P13651322111332460807.Spec : Prop :=
  ∀ n, P13651322111332460807.a n = A063224 (n + 1)

end A063224

/-! ## A063224.P2851558114836419567

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063224

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P2851558114836419567.Spec : Prop :=
  ∀ n, P2851558114836419567.a n = A063224 (n + 1)

theorem P2851558114836419567.correct : P2851558114836419567.Spec := by
  intro n
  simp only [A063224, Nat.add_sub_cancel]

end A063224

/-! ## A063224.P8150288663855220185

`∑[3-gcd(3, n)]`
-/

namespace A063224.P8150288663855220185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P8150288663855220185

namespace A063224

/-- `∑[3-gcd(3, n)]` -/
def P8150288663855220185.Spec : Prop :=
  ∀ n, P8150288663855220185.a n = A063224 (n + 1)

end A063224

/-! ## A063224.P17852332547949343436

`∑[lcm(2, n%3)]`
-/

namespace A063224.P17852332547949343436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P17852332547949343436

namespace A063224

/-- `∑[lcm(2, n%3)]` -/
def P17852332547949343436.Spec : Prop :=
  ∀ n, (P17852332547949343436.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P6579394519088196416

`∑[2*n²%3]`
-/

namespace A063224.P6579394519088196416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P6579394519088196416

namespace A063224

/-- `∑[2*n²%3]` -/
def P6579394519088196416.Spec : Prop :=
  ∀ n, (P6579394519088196416.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P5354714582159004339

`∑[and(2, -n%3)]`
-/

namespace A063224.P5354714582159004339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (Int.tmod (-(n : ℤ)) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P5354714582159004339

namespace A063224

/-- `∑[and(2, -n%3)]` -/
def P5354714582159004339.Spec : Prop :=
  ∀ n, P5354714582159004339.a n = A063224 (n + 1)

end A063224

/-! ## A063224.P15195134573752469570

`∑[and(2, dr(3*n))]`
-/

namespace A063224.P15195134573752469570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (SequenceMachineLib.digitalRoot (3 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P15195134573752469570

namespace A063224

/-- `∑[and(2, dr(3*n))]` -/
def P15195134573752469570.Spec : Prop :=
  ∀ n, (P15195134573752469570.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P10804818788017908760

`∑[(∑[n]+n)%3]`
-/

namespace A063224.P10804818788017908760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P10804818788017908760

namespace A063224

/-- `∑[(∑[n]+n)%3]` -/
def P10804818788017908760.Spec : Prop :=
  ∀ n, (P10804818788017908760.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P11582579767157019338

`∑[C(2, gcd(9, n+3))]`
-/

namespace A063224.P11582579767157019338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.gcd 9 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P11582579767157019338

namespace A063224

/-- `∑[C(2, gcd(9, n+3))]` -/
def P11582579767157019338.Spec : Prop :=
  ∀ n, (P11582579767157019338.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P16613823342413645709

`a(n-3)+4` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A063224.P16613823342413645709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  a (n - 3) + 4

end

end A063224.P16613823342413645709

namespace A063224

/-- `a(n-3)+4` -/
def P16613823342413645709.Spec : Prop :=
  ∀ n, (P16613823342413645709.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P6515060808702376552

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A063224.P6515060808702376552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P6515060808702376552

namespace A063224

/-- `∑[abs(a(n-3))]` -/
def P6515060808702376552.Spec : Prop :=
  ∀ n, (P6515060808702376552.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P10151548060798187077

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A063224.P10151548060798187077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P10151548060798187077

namespace A063224

/-- `∑[dr(a(n-3))]` -/
def P10151548060798187077.Spec : Prop :=
  ∀ n, (P10151548060798187077.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P10539690582329725573

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A063224.P10539690582329725573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P10539690582329725573

namespace A063224

/-- `∑[floor(a(n-3))]` -/
def P10539690582329725573.Spec : Prop :=
  ∀ n, (P10539690582329725573.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P10418049323253815558

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A063224.P10418049323253815558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P10418049323253815558

namespace A063224

/-- `∑[ceil(a(n-3))]` -/
def P10418049323253815558.Spec : Prop :=
  ∀ n, (P10418049323253815558.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P3113350428783918001

`∑[round(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A063224.P3113350428783918001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P3113350428783918001

namespace A063224

/-- `∑[round(a(n-3))]` -/
def P3113350428783918001.Spec : Prop :=
  ∀ n, (P3113350428783918001.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P13668960604806076716

`∑[sqrt(((2*n)^10)%6)]`
-/

namespace A063224.P13668960604806076716
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((2 * n) ^ 10 % 6 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P13668960604806076716

namespace A063224

/-- `∑[sqrt(((2*n)^10)%6)]` -/
def P13668960604806076716.Spec : Prop :=
  ∀ n, P13668960604806076716.a n = (A063224 (n + 1) : ℝ)

end A063224

/-! ## A063224.P3333014401930563439

`∑[val(dr((n²+8)²), 3)]`
-/

namespace A063224.P3333014401930563439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot ((n ^ 2 + 8) ^ 2 : ℤ)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P3333014401930563439

namespace A063224

/-- `∑[val(dr((n²+8)²), 3)]` -/
def P3333014401930563439.Spec : Prop :=
  ∀ n, (P3333014401930563439.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P4114161845617571411

`∑[and(2, a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A063224.P4114161845617571411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  Nat.land 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P4114161845617571411

namespace A063224

/-- `∑[and(2, a(n-3))]` -/
def P4114161845617571411.Spec : Prop :=
  ∀ n, (P4114161845617571411.a n : ℤ) = A063224 (n + 1)

end A063224

/-! ## A063224.P5975153995256372752

`∑[2-C(2, dr(∑[n+1]))]`
-/

namespace A063224.P5975153995256372752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063224.P5975153995256372752

namespace A063224

/-- `∑[2-C(2, dr(∑[n+1]))]` -/
def P5975153995256372752.Spec : Prop :=
  ∀ n, P5975153995256372752.a n = A063224 (n + 1)

end A063224

/-! ## A063224.P2925925360149600333

`4*n-record[and(n, n+3)]`
-/

namespace A063224.P2925925360149600333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A063224.P2925925360149600333

namespace A063224

/-- `4*n-record[and(n, n+3)]` -/
def P2925925360149600333.Spec : Prop :=
  ∀ n, P2925925360149600333.a n = A063224 (n + 1)

end A063224

/-!
# A063225: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 62 ).

The programs for A063225, the canonical program `A063225.P17139391306117208946` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063225 has offset 1).

The definition of A063225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063225.P17139391306117208946

`a(n-2)+10` with `a(0)=3, a(1)=8, a(2)=12`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063225

/-- `a(n-2)+10` -/
def P17139391306117208946.Spec : Prop :=
  ∀ n, (P17139391306117208946.a n : ℤ) = A063225 (n + 1)

theorem P17139391306117208946.correct : P17139391306117208946.Spec := by
  intro n
  simp only [A063225, Nat.add_sub_cancel]

end A063225

/-! ## A063225.P5909599210496618042

`∑[a(and(1, n))+1]` with `a(0)=3, a(1)=5`
-/

namespace A063225.P5909599210496618042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (Nat.land 1 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063225.P5909599210496618042

namespace A063225

/-- `∑[a(and(1, n))+1]` -/
def P5909599210496618042.Spec : Prop :=
  ∀ n, (P5909599210496618042.a n : ℤ) = A063225 (n + 1)

end A063225

/-! ## A063225.P7222945315180210005

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=5, a(2)=4, a(3)=6`
-/

namespace A063225.P7222945315180210005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 4, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063225.P7222945315180210005

namespace A063225

/-- `∑[abs(a(n-2))]` -/
def P7222945315180210005.Spec : Prop :=
  ∀ n, (P7222945315180210005.a n : ℤ) = A063225 (n + 1)

end A063225

/-! ## A063225.P12724253229040688537

`∑[10-a(n-1)]` with `a(0)=3, a(1)=5, a(2)=4`
-/

namespace A063225.P12724253229040688537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 4] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063225.P12724253229040688537

namespace A063225

/-- `∑[10-a(n-1)]` -/
def P12724253229040688537.Spec : Prop :=
  ∀ n, P12724253229040688537.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P4250572565255482346

`10*n-a(n-1)` with `a(0)=3, a(1)=8`
-/

namespace A063225.P4250572565255482346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  (10 * n : ℤ) - a (n - 1)

end

end A063225.P4250572565255482346

namespace A063225

/-- `10*n-a(n-1)` -/
def P4250572565255482346.Spec : Prop :=
  ∀ n, P4250572565255482346.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P6708158266171032896

`∑[∑[ogf((3+5x+x^2+x^3)/(1+x))]]`
-/

namespace A063225.P6708158266171032896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 1, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063225.P6708158266171032896

namespace A063225

/-- `∑[∑[ogf((3+5x+x^2+x^3)/(1+x))]]` -/
def P6708158266171032896.Spec : Prop :=
  ∀ n, P6708158266171032896.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P3912696840087263572

`ogf((3+5x+x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063225.P3912696840087263572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 1, 1] [1, -1, -1, 1] n

end

end A063225.P3912696840087263572

namespace A063225

/-- `ogf((3+5x+x^2+x^3)/(1-x-x^2+x^3))` -/
def P3912696840087263572.Spec : Prop :=
  ∀ n, P3912696840087263572.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P2761335307733353350

`A063097(n+1)+1`
-/

namespace A063225.P2761335307733353350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 1) + 1

end

end A063225.P2761335307733353350

namespace A063225

/-- `A063097(n+1)+1` -/
def P2761335307733353350.Spec : Prop :=
  ∀ n, P2761335307733353350.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P7879853779739006791

`A063093(n+1)+3`
-/

namespace A063225.P7879853779739006791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1) + 3

end

end A063225.P7879853779739006791

namespace A063225

/-- `A063093(n+1)+3` -/
def P7879853779739006791.Spec : Prop :=
  ∀ n, P7879853779739006791.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P6877304356363914588

`∑[A000203(a(n%2))]` with `a(0)=3, a(1)=5`
-/

namespace A063225.P6877304356363914588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  A000203 (f1 (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063225.P6877304356363914588

namespace A063225

/-- `∑[A000203(a(n%2))]` -/
def P6877304356363914588.Spec : Prop :=
  ∀ n, P6877304356363914588.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P1922111086032363067

`∑[A000203(a(and(1, n)))]` with `a(0)=3, a(1)=5`
-/

namespace A063225.P1922111086032363067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  A000203 (f1 (Nat.land 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063225.P1922111086032363067

namespace A063225

/-- `∑[A000203(a(and(1, n)))]` -/
def P1922111086032363067.Spec : Prop :=
  ∀ n, P1922111086032363067.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P14313693038640493495

`A063109(n+1)-2*n`
-/

namespace A063225.P14313693038640493495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063109 (n + 1) - (2 * n : ℤ)

end

end A063225.P14313693038640493495

namespace A063225

/-- `A063109(n+1)-2*n` -/
def P14313693038640493495.Spec : Prop :=
  ∀ n, P14313693038640493495.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P5743648167069655276

`A063102(n+1)-4*n`
-/

namespace A063225.P5743648167069655276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063102 (n + 1) - (4 * n : ℤ)

end

end A063225.P5743648167069655276

namespace A063225

/-- `A063102(n+1)-4*n` -/
def P5743648167069655276.Spec : Prop :=
  ∀ n, P5743648167069655276.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P18111713799736648763

`A213222(n+3)+4*n`
-/

namespace A063225.P18111713799736648763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213222 (n + 3) + (4 * n : ℤ)

end

end A063225.P18111713799736648763

namespace A063225

/-- `A213222(n+3)+4*n` -/
def P18111713799736648763.Spec : Prop :=
  ∀ n, P18111713799736648763.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P1836571591993217371

`A063237(n+1)-Δ[n²]`
-/

namespace A063225.P1836571591993217371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063237 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063225.P1836571591993217371

namespace A063225

/-- `A063237(n+1)-Δ[n²]` -/
def P1836571591993217371.Spec : Prop :=
  ∀ n, P1836571591993217371.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P9725110215199647472

`A010693(n)+A008706(n)`
-/

namespace A063225.P9725110215199647472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n + A008706 n

end

end A063225.P9725110215199647472

namespace A063225

/-- `A010693(n)+A008706(n)` -/
def P9725110215199647472.Spec : Prop :=
  ∀ n, P9725110215199647472.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P13125431656747020924

`A016897(n)-A040001(n)`
-/

namespace A063225.P13125431656747020924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A040001 n

end

end A063225.P13125431656747020924

namespace A063225

/-- `A016897(n)-A040001(n)` -/
def P13125431656747020924.Spec : Prop :=
  ∀ n, P13125431656747020924.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P3314824117059001661

`A000034(n)+A008706(n)+1`
-/

namespace A063225.P3314824117059001661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A008706 n + 1)

end

end A063225.P3314824117059001661

namespace A063225

/-- `A000034(n)+A008706(n)+1` -/
def P3314824117059001661.Spec : Prop :=
  ∀ n, P3314824117059001661.a n = A063225 (n + 1)

end A063225

/-! ## A063225.P6047158590473005900

`A047398(n+1)+A014681(n)`
-/

namespace A063225.P6047158590473005900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047398 (n + 1) + A014681 n

end

end A063225.P6047158590473005900

namespace A063225

/-- `A047398(n+1)+A014681(n)` -/
def P6047158590473005900.Spec : Prop :=
  ∀ n, P6047158590473005900.a n = A063225 (n + 1)

end A063225

/-!
# A063226: Dimension of the space of weight 2n cuspidal newforms for Gamma_0(63).

The programs for A063226, the canonical program `A063226.P10617879665855353397` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063226 has offset 1).

The definition of A063226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063226.P11221299707197645470

`5*(n+1)-3+(n+1)%2`
-/

namespace A063226.P11221299707197645470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - 3 + (((n + 1) % 2 : ℕ) : ℤ)

end

end A063226.P11221299707197645470

namespace A063226

/-- `5*(n+1)-3+(n+1)%2` -/
def P11221299707197645470.Spec : Prop :=
  ∀ n, P11221299707197645470.a n = A063226 (n + 1)

end A063226

/-! ## A063226.P10617879665855353397

`4*floor((n+1)/2)+6*floor(n/2)+3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063226

/-- `4*floor((n+1)/2)+6*floor(n/2)+3` -/
def P10617879665855353397.Spec : Prop :=
  ∀ n, P10617879665855353397.a n = A063226 (n + 1)

theorem P10617879665855353397.correct : P10617879665855353397.Spec := by
  intro n
  simp only [A063226, Nat.add_sub_cancel]

end A063226

/-! ## A063226.P6704442166426070218

`or(1, 5*n+2)`
-/

namespace A063226.P6704442166426070218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * n + 2)

end

end A063226.P6704442166426070218

namespace A063226

/-- `or(1, 5*n+2)` -/
def P6704442166426070218.Spec : Prop :=
  ∀ n, (P6704442166426070218.a n : ℤ) = A063226 (n + 1)

end A063226

/-! ## A063226.P9056208373763373390

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A063226.P9056208373763373390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063226.P9056208373763373390

namespace A063226

/-- `∑[abs(a(n-2))]` -/
def P9056208373763373390.Spec : Prop :=
  ∀ n, (P9056208373763373390.a n : ℤ) = A063226 (n + 1)

end A063226

/-! ## A063226.P3791404255732494776

`∑[10-a(n-1)]` with `a(0)=3, a(1)=4`
-/

namespace A063226.P3791404255732494776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063226.P3791404255732494776

namespace A063226

/-- `∑[10-a(n-1)]` -/
def P3791404255732494776.Spec : Prop :=
  ∀ n, P3791404255732494776.a n = A063226 (n + 1)

end A063226

/-! ## A063226.P11078525421256024161

`∑[∑[ogf((3+4x+3x^2)/(1+x))]]`
-/

namespace A063226.P11078525421256024161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063226.P11078525421256024161

namespace A063226

/-- `∑[∑[ogf((3+4x+3x^2)/(1+x))]]` -/
def P11078525421256024161.Spec : Prop :=
  ∀ n, P11078525421256024161.a n = A063226 (n + 1)

end A063226

/-! ## A063226.P17235384283457997557

`ogf((3+4x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A063226.P17235384283457997557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 3] [1, -1, -1, 1] n

end

end A063226.P17235384283457997557

namespace A063226

/-- `ogf((3+4x+3x^2)/(1-x-x^2+x^3))` -/
def P17235384283457997557.Spec : Prop :=
  ∀ n, P17235384283457997557.a n = A063226 (n + 1)

end A063226

/-! ## A063226.P11987466154215832594

`floor(10*n-a(n-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A063226.P11987466154215832594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (10 * n : ℤ) - a (n - 1)

end

end A063226.P11987466154215832594

namespace A063226

/-- `floor(10*n-a(n-1))` -/
def P11987466154215832594.Spec : Prop :=
  ∀ n, P11987466154215832594.a n = A063226 (n + 1)

end A063226

/-! ## A063226.P3816677529733549503

`10*(n-a(n-1)/10)` with `a(0)=3`
-/

namespace A063226.P3816677529733549503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  10 * ((n : ℚ) - a (n - 1) / 10)

end

end A063226.P3816677529733549503

namespace A063226

/-- `10*(n-a(n-1)/10)` -/
def P3816677529733549503.Spec : Prop :=
  ∀ n, P3816677529733549503.a n = (A063226 (n + 1) : ℚ)

end A063226

/-! ## A063226.P4977184110725064964

`record[5*n-a(n-2)]` with `a(0)=3, a(1)=2`
-/

namespace A063226.P4977184110725064964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (5 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063226.P4977184110725064964

namespace A063226

/-- `record[5*n-a(n-2)]` -/
def P4977184110725064964.Spec : Prop :=
  ∀ n, P4977184110725064964.a n = A063226 (n + 1)

end A063226

/-! ## A063226.P1441680381994486196

`record[(n+1)²%10+n+2]`
-/

namespace A063226.P1441680381994486196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 10 + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063226.P1441680381994486196

namespace A063226

/-- `record[(n+1)²%10+n+2]` -/
def P1441680381994486196.Spec : Prop :=
  ∀ n, (P1441680381994486196.a n : ℤ) = A063226 (n + 1)

end A063226

/-! ## A063226.P3764504952963266197

`∩[2*n+1, round(2*n*5/3)]`
-/

namespace A063226.P3764504952963266197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) * ((5 : ℚ) / 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063226.P3764504952963266197

namespace A063226

/-- `∩[2*n+1, round(2*n*5/3)]` -/
def P3764504952963266197.Spec : Prop :=
  ∀ n, (P3764504952963266197.a n : ℤ) = A063226 (n + 1)

end A063226

/-! ## A063226.P15789229200302546047

`∑[dr(A040137(n))]`
-/

namespace A063226.P15789229200302546047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040137 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063226.P15789229200302546047

namespace A063226

/-- `∑[dr(A040137(n))]` -/
def P15789229200302546047.Spec : Prop :=
  ∀ n, (P15789229200302546047.a n : ℤ) = A063226 (n + 1)

end A063226

/-! ## A063226.P7434123564233394983

`∑[dr(A040884(n))]`
-/

namespace A063226.P7434123564233394983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040884 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063226.P7434123564233394983

namespace A063226

/-- `∑[dr(A040884(n))]` -/
def P7434123564233394983.Spec : Prop :=
  ∀ n, (P7434123564233394983.a n : ℤ) = A063226 (n + 1)

end A063226

/-! ## A063226.P10456671151511742012

`sqrt(A273374(n+1))`
-/

namespace A063226.P10456671151511742012
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A273374 (n + 1) : ℝ)

end

end A063226.P10456671151511742012

namespace A063226

/-- `sqrt(A273374(n+1))` -/
def P10456671151511742012.Spec : Prop :=
  ∀ n, P10456671151511742012.a n = (A063226 (n + 1) : ℝ)

end A063226

/-! ## A063226.P14446674974503649271

`A269044(n)%A173512(n)`
-/

namespace A063226.P14446674974503649271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269044 n) (A173512 n)

end

end A063226.P14446674974503649271

namespace A063226

/-- `A269044(n)%A173512(n)` -/
def P14446674974503649271.Spec : Prop :=
  ∀ n, P14446674974503649271.a n = A063226 (n + 1)

end A063226

/-! ## A063226.P4409047740606926320

`xor(A016873(n), A059841(n))`
-/

namespace A063226.P4409047740606926320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016873 n) (A059841 n)

end

end A063226.P4409047740606926320

namespace A063226

/-- `xor(A016873(n), A059841(n))` -/
def P4409047740606926320.Spec : Prop :=
  ∀ n, P4409047740606926320.a n = A063226 (n + 1)

end A063226

/-! ## A063226.P13191061356080965726

`∪[A017305(n), A017353(n)]`
-/

namespace A063226.P13191061356080965726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063226.P13191061356080965726

namespace A063226

/-- `∪[A017305(n), A017353(n)]` -/
def P13191061356080965726.Spec : Prop :=
  ∀ n, (P13191061356080965726.a n : ℤ) = A063226 (n + 1)

end A063226

/-! ## A063226.P4488366581798455499

`gcd(A001509(n), A273374(n+1))`
-/

namespace A063226.P4488366581798455499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001509 n) (A273374 (n + 1))

end

end A063226.P4488366581798455499

namespace A063226

/-- `gcd(A001509(n), A273374(n+1))` -/
def P4488366581798455499.Spec : Prop :=
  ∀ n, (P4488366581798455499.a n : ℤ) = A063226 (n + 1)

end A063226

/-! ## A063226.P12430084894397409384

`A063142(n+1)%A063133(n+1)`
-/

namespace A063226.P12430084894397409384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063142 (n + 1)) (A063133 (n + 1))

end

end A063226.P12430084894397409384

namespace A063226

/-- `A063142(n+1)%A063133(n+1)` -/
def P12430084894397409384.Spec : Prop :=
  ∀ n, P12430084894397409384.a n = A063226 (n + 1)

end A063226

/-!
# A063227: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 66 ).

The programs for A063227, the canonical program `A063227.P709757166809240282` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063227 has offset 1).

The definition of A063227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063227.P709757166809240282

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=3, a(1)=4, a(2)=8, a(3)=12, a(4)=16, a(5)=16`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063227

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P709757166809240282.Spec : Prop :=
  ∀ n, P709757166809240282.a n = A063227 (n + 1)

theorem P709757166809240282.correct : P709757166809240282.Spec := by
  intro n
  simp only [A063227, Nat.add_sub_cancel]

end A063227

/-! ## A063227.P11862206545274317020

`A063241(n+1)-A062157(n)`
-/

namespace A063227.P11862206545274317020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 1) - A062157 n

end

end A063227.P11862206545274317020

namespace A063227

/-- `A063241(n+1)-A062157(n)` -/
def P11862206545274317020.Spec : Prop :=
  ∀ n, P11862206545274317020.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P3620507426136914708

`A063208(n+1)*A255176(n)`
-/

namespace A063227.P3620507426136914708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063208 (n + 1) * A255176 n

end

end A063227.P3620507426136914708

namespace A063227

/-- `A063208(n+1)*A255176(n)` -/
def P3620507426136914708.Spec : Prop :=
  ∀ n, P3620507426136914708.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P6148855351674562698

`A047621(n+1)-A063198(n+1)`
-/

namespace A063227.P6148855351674562698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (n + 1) - A063198 (n + 1)

end

end A063227.P6148855351674562698

namespace A063227

/-- `A047621(n+1)-A063198(n+1)` -/
def P6148855351674562698.Spec : Prop :=
  ∀ n, P6148855351674562698.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P15621309000806867235

`A063226(n+1)-A063202(n+1)`
-/

namespace A063227.P15621309000806867235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) - A063202 (n + 1)

end

end A063227.P15621309000806867235

namespace A063227

/-- `A063226(n+1)-A063202(n+1)` -/
def P15621309000806867235.Spec : Prop :=
  ∀ n, P15621309000806867235.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P305064697420724084

`A113804(n+1)-A063214(n+1)`
-/

namespace A063227.P305064697420724084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1) - A063214 (n + 1)

end

end A063227.P305064697420724084

namespace A063227

/-- `A113804(n+1)-A063214(n+1)` -/
def P305064697420724084.Spec : Prop :=
  ∀ n, P305064697420724084.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P10840965336684064302

`A063162(n+1)%A063129(n+1)`
-/

namespace A063227.P10840965336684064302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063162 (n + 1)) (A063129 (n + 1))

end

end A063227.P10840965336684064302

namespace A063227

/-- `A063162(n+1)%A063129(n+1)` -/
def P10840965336684064302.Spec : Prop :=
  ∀ n, P10840965336684064302.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P12584317701271849009

`2*A063226(n+1)-A063220(n+1)`
-/

namespace A063227.P12584317701271849009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063226 (n + 1) - A063220 (n + 1)

end

end A063227.P12584317701271849009

namespace A063227

/-- `2*A063226(n+1)-A063220(n+1)` -/
def P12584317701271849009.Spec : Prop :=
  ∀ n, P12584317701271849009.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P2066007409375422978

`2*A113804(n+1)-A063236(n+1)`
-/

namespace A063227.P2066007409375422978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113804 (n + 1) - A063236 (n + 1)

end

end A063227.P2066007409375422978

namespace A063227

/-- `2*A113804(n+1)-A063236(n+1)` -/
def P2066007409375422978.Spec : Prop :=
  ∀ n, P2066007409375422978.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P16787894372700140700

`A063199(n+1)+lcm(2, A063199(n+1))`
-/

namespace A063227.P16787894372700140700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 1) + (Int.lcm 2 (A063199 (n + 1)) : ℤ)

end

end A063227.P16787894372700140700

namespace A063227

/-- `A063199(n+1)+lcm(2, A063199(n+1))` -/
def P16787894372700140700.Spec : Prop :=
  ∀ n, P16787894372700140700.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P9905027439713612983

`A020639(A051755(n+2))*A063199(n+1)`
-/

namespace A063227.P9905027439713612983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051755 (n + 2)).toNat * A063199 (n + 1)

end

end A063227.P9905027439713612983

namespace A063227

/-- `A020639(A051755(n+2))*A063199(n+1)` -/
def P9905027439713612983.Spec : Prop :=
  ∀ n, P9905027439713612983.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P1641293607270739420

`A020639(A063199(n+1)+2)*A063199(n+1)`
-/

namespace A063227.P1641293607270739420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063199 (n + 1) + 2).toNat * A063199 (n + 1)

end

end A063227.P1641293607270739420

namespace A063227

/-- `A020639(A063199(n+1)+2)*A063199(n+1)` -/
def P1641293607270739420.Spec : Prop :=
  ∀ n, P1641293607270739420.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P7927405588594621326

`A014601(A063199(n+1))`
-/

namespace A063227.P7927405588594621326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A063199 (n + 1)).toNat

end

end A063227.P7927405588594621326

namespace A063227

/-- `A014601(A063199(n+1))` -/
def P7927405588594621326.Spec : Prop :=
  ∀ n, P7927405588594621326.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P1669923968694311230

`A051755(A063199(n+1)+1)`
-/

namespace A063227.P1669923968694311230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A063199 (n + 1) + 1).toNat

end

end A063227.P1669923968694311230

namespace A063227

/-- `A051755(A063199(n+1)+1)` -/
def P1669923968694311230.Spec : Prop :=
  ∀ n, P1669923968694311230.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P12714861507083226513

`A005843(A063199(n+1))+and(1, A000010(n+2))`
-/

namespace A063227.P12714861507083226513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063199 (n + 1)).toNat + Int.land 1 (A000010 (n + 2))

end

end A063227.P12714861507083226513

namespace A063227

/-- `A005843(A063199(n+1))+and(1, A000010(n+2))` -/
def P12714861507083226513.Spec : Prop :=
  ∀ n, P12714861507083226513.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P2829948757775392898

`A063303(2*n+3)-(8*n+4)`
-/

namespace A063227.P2829948757775392898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (2 * n + 3) - (8 * n + 4 : ℤ)

end

end A063227.P2829948757775392898

namespace A063227

/-- `A063303(2*n+3)-(8*n+4)` -/
def P2829948757775392898.Spec : Prop :=
  ∀ n, P2829948757775392898.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P9256745938593784566

`A004277(A063278(2*n+3))+2`
-/

namespace A063227.P9256745938593784566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A063278 (2 * n + 3)).toNat + 2

end

end A063227.P9256745938593784566

namespace A063227

/-- `A004277(A063278(2*n+3))+2` -/
def P9256745938593784566.Spec : Prop :=
  ∀ n, P9256745938593784566.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P2388100636200554202

`A063210(A063226(n+1))-A063220(n+1)`
-/

namespace A063227.P2388100636200554202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063210 (A063226 (n + 1)).toNat - A063220 (n + 1)

end

end A063227.P2388100636200554202

namespace A063227

/-- `A063210(A063226(n+1))-A063220(n+1)` -/
def P2388100636200554202.Spec : Prop :=
  ∀ n, P2388100636200554202.a n = A063227 (n + 1)

end A063227

/-! ## A063227.P18050286109953354029

`A063198(A113803(n+1)-n)-A063198(n+1)`
-/

namespace A063227.P18050286109953354029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (A113803 (n + 1) - (n : ℤ)).toNat - A063198 (n + 1)

end

end A063227.P18050286109953354029

namespace A063227

/-- `A063198(A113803(n+1)-n)-A063198(n+1)` -/
def P18050286109953354029.Spec : Prop :=
  ∀ n, P18050286109953354029.a n = A063227 (n + 1)

end A063227

/-!
# A063228: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 67 ).

The programs for A063228, the canonical program `A063228.P2110612994570635045` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063228 has offset 1).

The definition of A063228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063228.P2110612994570635045

`a(n-2)+22` with `a(0)=5, a(1)=16, a(2)=28`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063228

/-- `a(n-2)+22` -/
def P2110612994570635045.Spec : Prop :=
  ∀ n, (P2110612994570635045.a n : ℤ) = A063228 (n + 1)

theorem P2110612994570635045.correct : P2110612994570635045.Spec := by
  intro n
  simp only [A063228, Nat.add_sub_cancel]

end A063228

/-! ## A063228.P3238694930822150929

`∑[abs(a(n-2))]` with `a(0)=5, a(1)=11, a(2)=12, a(3)=10`
-/

namespace A063228.P3238694930822150929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 11, 12, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063228.P3238694930822150929

namespace A063228

/-- `∑[abs(a(n-2))]` -/
def P3238694930822150929.Spec : Prop :=
  ∀ n, (P3238694930822150929.a n : ℤ) = A063228 (n + 1)

end A063228

/-! ## A063228.P14470678593347708928

`∑[floor(a(n-2))]` with `a(0)=5, a(1)=11, a(2)=12, a(3)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A063228.P14470678593347708928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 11, 12, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063228.P14470678593347708928

namespace A063228

/-- `∑[floor(a(n-2))]` -/
def P14470678593347708928.Spec : Prop :=
  ∀ n, (P14470678593347708928.a n : ℤ) = A063228 (n + 1)

end A063228

/-! ## A063228.P5626604044196971111

`∑[ceil(a(n-2))]` with `a(0)=5, a(1)=11, a(2)=12, a(3)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A063228.P5626604044196971111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 11, 12, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063228.P5626604044196971111

namespace A063228

/-- `∑[ceil(a(n-2))]` -/
def P5626604044196971111.Spec : Prop :=
  ∀ n, (P5626604044196971111.a n : ℤ) = A063228 (n + 1)

end A063228

/-! ## A063228.P12703512960205814159

`∑[round(a(n-2))]` with `a(0)=5, a(1)=11, a(2)=12, a(3)=10`

`round` is left out, it is the identity on integers.
-/

namespace A063228.P12703512960205814159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 11, 12, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063228.P12703512960205814159

namespace A063228

/-- `∑[round(a(n-2))]` -/
def P12703512960205814159.Spec : Prop :=
  ∀ n, (P12703512960205814159.a n : ℤ) = A063228 (n + 1)

end A063228

/-! ## A063228.P4760827993509345582

`22*n-a(n-1)` with `a(0)=5, a(1)=16`
-/

namespace A063228.P4760827993509345582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 16] fun n a =>
  (22 * n : ℤ) - a (n - 1)

end

end A063228.P4760827993509345582

namespace A063228

/-- `22*n-a(n-1)` -/
def P4760827993509345582.Spec : Prop :=
  ∀ n, P4760827993509345582.a n = A063228 (n + 1)

end A063228

/-! ## A063228.P16526257430168766831

`char[2*(n+1)]+11*n+5`
-/

namespace A063228.P16526257430168766831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (11 * n + 5)

end

end A063228.P16526257430168766831

namespace A063228

/-- `char[2*(n+1)]+11*n+5` -/
def P16526257430168766831.Spec : Prop :=
  ∀ n, (P16526257430168766831.a n : ℤ) = A063228 (n + 1)

end A063228

/-! ## A063228.P7183929900878800909

`∑[12-val(A000045(a(n-1)), a(n-1))]` with `a(0)=5`
-/

namespace A063228.P7183929900878800909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  12 - (SequenceMachineLib.valuation (A000045 (f1 (n - 1)).toNat).toNat (f1 (n - 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063228.P7183929900878800909

namespace A063228

/-- `∑[12-val(A000045(a(n-1)), a(n-1))]` -/
def P7183929900878800909.Spec : Prop :=
  ∀ n, P7183929900878800909.a n = A063228 (n + 1)

end A063228

/-! ## A063228.P16272294697754392996

`A082369(n+1)%A063142(n+1)`
-/

namespace A063228.P16272294697754392996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082369 (n + 1)) (A063142 (n + 1))

end

end A063228.P16272294697754392996

namespace A063228

/-- `A082369(n+1)%A063142(n+1)` -/
def P16272294697754392996.Spec : Prop :=
  ∀ n, P16272294697754392996.a n = A063228 (n + 1)

end A063228

/-! ## A063228.P3479150952121223561

`A162330(A063154(n+1))`
-/

namespace A063228.P3479150952121223561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162330 (A063154 (n + 1)).toNat

end

end A063228.P3479150952121223561

namespace A063228

/-- `A162330(A063154(n+1))` -/
def P3479150952121223561.Spec : Prop :=
  ∀ n, P3479150952121223561.a n = A063228 (n + 1)

end A063228

/-!
# A063229: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 69 ).

The programs for A063229, the canonical program `A063229.P2455044806351860707` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063229 has offset 1).

The definition of A063229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063229.P2455044806351860707

`4*n+A063207(n+1)+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063229

/-- `4*n+A063207(n+1)+2` -/
def P2455044806351860707.Spec : Prop :=
  ∀ n, P2455044806351860707.a n = A063229 (n + 1)

theorem P2455044806351860707.correct : P2455044806351860707.Spec := by
  intro n
  simp only [A063229, Nat.add_sub_cancel]

end A063229

/-! ## A063229.P3614322645110261892

`A063111(n+1)+A010673(n)`
-/

namespace A063229.P3614322645110261892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) + A010673 n

end

end A063229.P3614322645110261892

namespace A063229

/-- `A063111(n+1)+A010673(n)` -/
def P3614322645110261892.Spec : Prop :=
  ∀ n, P3614322645110261892.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P11871246728453740042

`A063207(n+1)+A016825(n)`
-/

namespace A063229.P11871246728453740042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063207 (n + 1) + A016825 n

end

end A063229.P11871246728453740042

namespace A063229

/-- `A063207(n+1)+A016825(n)` -/
def P11871246728453740042.Spec : Prop :=
  ∀ n, P11871246728453740042.a n = A063229 (n + 1)

theorem P11871246728453740042.correct : P11871246728453740042.Spec := by
  intro n
  simp only [A063229, Nat.add_sub_cancel, A063229.P11871246728453740042.a, A063229.P2455044806351860707.a, A016825, A016825.P4712696052905976233.a, A063207, A063207.P4152208277931986503.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063229

/-! ## A063229.P13476983502146869937

`A063207(n+1)+sqrt(A016826(n))`
-/

namespace A063229.P13476983502146869937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063207 (n + 1) : ℝ) + Real.sqrt (A016826 n : ℝ)

end

end A063229.P13476983502146869937

namespace A063229

/-- `A063207(n+1)+sqrt(A016826(n))` -/
def P13476983502146869937.Spec : Prop :=
  ∀ n, P13476983502146869937.a n = (A063229 (n + 1) : ℝ)

end A063229

/-! ## A063229.P10413270111395652050

`A063224(n+1)+A063221(n+1)`
-/

namespace A063229.P10413270111395652050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1) + A063221 (n + 1)

end

end A063229.P10413270111395652050

namespace A063229

/-- `A063224(n+1)+A063221(n+1)` -/
def P10413270111395652050.Spec : Prop :=
  ∀ n, P10413270111395652050.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P13088062064064792392

`A063242(n+1)+A063214(n+1)`
-/

namespace A063229.P13088062064064792392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063242 (n + 1) + A063214 (n + 1)

end

end A063229.P13088062064064792392

namespace A063229

/-- `A063242(n+1)+A063214(n+1)` -/
def P13088062064064792392.Spec : Prop :=
  ∀ n, P13088062064064792392.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P5881497060255780632

`A091999(n+1)+A063200(n+1)`
-/

namespace A063229.P5881497060255780632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1) + A063200 (n + 1)

end

end A063229.P5881497060255780632

namespace A063229

/-- `A091999(n+1)+A063200(n+1)` -/
def P5881497060255780632.Spec : Prop :=
  ∀ n, P5881497060255780632.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P6457213353312420727

`A113803(n+1)+A063195(n+1)`
-/

namespace A063229.P6457213353312420727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) + A063195 (n + 1)

end

end A063229.P6457213353312420727

namespace A063229

/-- `A113803(n+1)+A063195(n+1)` -/
def P6457213353312420727.Spec : Prop :=
  ∀ n, P6457213353312420727.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P8510250405677641270

`A163980(n+1)+A063099(n+1)`
-/

namespace A063229.P8510250405677641270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (n + 1) + A063099 (n + 1)

end

end A063229.P8510250405677641270

namespace A063229

/-- `A163980(n+1)+A063099(n+1)` -/
def P8510250405677641270.Spec : Prop :=
  ∀ n, P8510250405677641270.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P5826903971463659459

`A168273(n+1)+A063218(n+1)`
-/

namespace A063229.P5826903971463659459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) + A063218 (n + 1)

end

end A063229.P5826903971463659459

namespace A063229

/-- `A168273(n+1)+A063218(n+1)` -/
def P5826903971463659459.Spec : Prop :=
  ∀ n, P5826903971463659459.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P15367076220037937417

`A268044(n+1)+A063081(n+1)`
-/

namespace A063229.P15367076220037937417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1) + A063081 (n + 1)

end

end A063229.P15367076220037937417

namespace A063229

/-- `A268044(n+1)+A063081(n+1)` -/
def P15367076220037937417.Spec : Prop :=
  ∀ n, P15367076220037937417.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P11808910511303017574

`A063207(n+1)+A004767(n)-1`
-/

namespace A063229.P11808910511303017574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063207 (n + 1) + (A004767 n - 1)

end

end A063229.P11808910511303017574

namespace A063229

/-- `A063207(n+1)+A004767(n)-1` -/
def P11808910511303017574.Spec : Prop :=
  ∀ n, P11808910511303017574.a n = A063229 (n + 1)

theorem P11808910511303017574.correct : P11808910511303017574.Spec := by
  intro n
  simp only [A063229, Nat.add_sub_cancel, A063229.P11808910511303017574.a, A063229.P2455044806351860707.a, A004767, A004767.P13352534504447192883.a, A063207, A063207.P4152208277931986503.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063229

/-! ## A063229.P16067679678946605353

`A063129(n+1)-A047241(n+1)`
-/

namespace A063229.P16067679678946605353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063129 (n + 1) - A047241 (n + 1)

end

end A063229.P16067679678946605353

namespace A063229

/-- `A063129(n+1)-A047241(n+1)` -/
def P16067679678946605353.Spec : Prop :=
  ∀ n, P16067679678946605353.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P18125284873890628804

`A063135(n+1)-A047463(n+1)`
-/

namespace A063229.P18125284873890628804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) - A047463 (n + 1)

end

end A063229.P18125284873890628804

namespace A063229

/-- `A063135(n+1)-A047463(n+1)` -/
def P18125284873890628804.Spec : Prop :=
  ∀ n, P18125284873890628804.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P7821023023597036624

`A063232(n+1)-A047410(n+1)`
-/

namespace A063229.P7821023023597036624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063232 (n + 1) - A047410 (n + 1)

end

end A063229.P7821023023597036624

namespace A063229

/-- `A063232(n+1)-A047410(n+1)` -/
def P7821023023597036624.Spec : Prop :=
  ∀ n, P7821023023597036624.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P813082320076997087

`A063238(n+1)-A168276(n+1)`
-/

namespace A063229.P813082320076997087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - A168276 (n + 1)

end

end A063229.P813082320076997087

namespace A063229

/-- `A063238(n+1)-A168276(n+1)` -/
def P813082320076997087.Spec : Prop :=
  ∀ n, P813082320076997087.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P5259137346361035878

`Δ[A032525(n)+A008749(n)]`
-/

namespace A063229.P5259137346361035878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032525 n + A008749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063229.P5259137346361035878

namespace A063229

/-- `Δ[A032525(n)+A008749(n)]` -/
def P5259137346361035878.Spec : Prop :=
  ∀ n, P5259137346361035878.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P7267994084211754579

`A063207(n+1)+Δ[A001105(n)]`
-/

namespace A063229.P7267994084211754579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063207 (n + 1) + (f1 (n + 1) - f1 n)

end

end A063229.P7267994084211754579

namespace A063229

/-- `A063207(n+1)+Δ[A001105(n)]` -/
def P7267994084211754579.Spec : Prop :=
  ∀ n, P7267994084211754579.a n = A063229 (n + 1)

theorem P7267994084211754579.correct : P7267994084211754579.Spec := by
  intro n
  simp only [A063229, Nat.add_sub_cancel, A063229.P7267994084211754579.f1, A063229.P7267994084211754579.a, A063229.P2455044806351860707.a, A001105, A001105.P6098599260439307493.a, A063207, A063207.P4152208277931986503.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063229

/-! ## A063229.P6256356641595686191

`A063195(n+1)+Δ[A032525(n)]`
-/

namespace A063229.P6256356641595686191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1) + (f1 (n + 1) - f1 n)

end

end A063229.P6256356641595686191

namespace A063229

/-- `A063195(n+1)+Δ[A032525(n)]` -/
def P6256356641595686191.Spec : Prop :=
  ∀ n, P6256356641595686191.a n = A063229 (n + 1)

end A063229

/-! ## A063229.P7648519756858557376

`A063207(n+1)+A005843(Δ[n²])`
-/

namespace A063229.P7648519756858557376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063207 (n + 1) + A005843 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063229.P7648519756858557376

namespace A063229

/-- `A063207(n+1)+A005843(Δ[n²])` -/
def P7648519756858557376.Spec : Prop :=
  ∀ n, P7648519756858557376.a n = A063229 (n + 1)

end A063229

/-!
# A063230: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 71 ).

The programs for A063230, the canonical program `A063230.P14545759985604796724` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063230 has offset 1).

The definition of A063230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063230.P14545759985604796724

`A063223(n+1)+Δ[n²]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063230

/-- `A063223(n+1)+Δ[n²]` -/
def P14545759985604796724.Spec : Prop :=
  ∀ n, P14545759985604796724.a n = A063230 (n + 1)

theorem P14545759985604796724.correct : P14545759985604796724.Spec := by
  intro n
  simp only [A063230, Nat.add_sub_cancel]

end A063230

/-! ## A063230.P18390314434876827470

`A063235(n+1)-Δ[n²]`
-/

namespace A063230.P18390314434876827470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063235 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063230.P18390314434876827470

namespace A063230

/-- `A063235(n+1)-Δ[n²]` -/
def P18390314434876827470.Spec : Prop :=
  ∀ n, P18390314434876827470.a n = A063230 (n + 1)

theorem P18390314434876827470.correct : P18390314434876827470.Spec := by
  intro n
  simp only [A063230, Nat.add_sub_cancel, A063230.P18390314434876827470.f1, A063230.P18390314434876827470.a, A063230.P14545759985604796724.f1, A063230.P14545759985604796724.a, A063223, A063223.P8636699475728164837.a, A063235, A063235.P16999452272687535801.f1, A063235.P16999452272687535801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063230

/-! ## A063230.P8895509749952606715

`4*n+A063215(n+1)+2`
-/

namespace A063230.P8895509749952606715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063215 (n + 1) + 2)

end

end A063230.P8895509749952606715

namespace A063230

/-- `4*n+A063215(n+1)+2` -/
def P8895509749952606715.Spec : Prop :=
  ∀ n, P8895509749952606715.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P9582170947478205543

`A063203(n+1)+8*n+4`
-/

namespace A063230.P9582170947478205543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063203 (n + 1) + (8 * n + 4 : ℤ)

end

end A063230.P9582170947478205543

namespace A063230

/-- `A063203(n+1)+8*n+4` -/
def P9582170947478205543.Spec : Prop :=
  ∀ n, P9582170947478205543.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P12032996634098726853

`10*n+A063199(n+1)+5`
-/

namespace A063230.P12032996634098726853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + (A063199 (n + 1) + 5)

end

end A063230.P12032996634098726853

namespace A063230

/-- `10*n+A063199(n+1)+5` -/
def P12032996634098726853.Spec : Prop :=
  ∀ n, P12032996634098726853.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P8663114772645086035

`A063215(n+1)+A016825(n)`
-/

namespace A063230.P8663114772645086035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063215 (n + 1) + A016825 n

end

end A063230.P8663114772645086035

namespace A063230

/-- `A063215(n+1)+A016825(n)` -/
def P8663114772645086035.Spec : Prop :=
  ∀ n, P8663114772645086035.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P14077432234750654938

`A063199(n+1)+A017329(n)`
-/

namespace A063230.P14077432234750654938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 1) + A017329 n

end

end A063230.P14077432234750654938

namespace A063230

/-- `A063199(n+1)+A017329(n)` -/
def P14077432234750654938.Spec : Prop :=
  ∀ n, P14077432234750654938.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P300175611296208626

`A017593(n)-A063195(n+1)`
-/

namespace A063230.P300175611296208626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n - A063195 (n + 1)

end

end A063230.P300175611296208626

namespace A063230

/-- `A017593(n)-A063195(n+1)` -/
def P300175611296208626.Spec : Prop :=
  ∀ n, P300175611296208626.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P6747107908021941002

`A348845(n)-A063141(n+1)`
-/

namespace A063230.P6747107908021941002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n - A063141 (n + 1)

end

end A063230.P6747107908021941002

namespace A063230

/-- `A348845(n)-A063141(n+1)` -/
def P6747107908021941002.Spec : Prop :=
  ∀ n, P6747107908021941002.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P792310222483681879

`A063219(n+1)+A047235(n+1)`
-/

namespace A063230.P792310222483681879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063219 (n + 1) + A047235 (n + 1)

end

end A063230.P792310222483681879

namespace A063230

/-- `A063219(n+1)+A047235(n+1)` -/
def P792310222483681879.Spec : Prop :=
  ∀ n, P792310222483681879.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P4844866363624464248

`A063226(n+1)+A063209(n+1)`
-/

namespace A063230.P4844866363624464248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) + A063209 (n + 1)

end

end A063230.P4844866363624464248

namespace A063230

/-- `A063226(n+1)+A063209(n+1)` -/
def P4844866363624464248.Spec : Prop :=
  ∀ n, P4844866363624464248.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P9362477213036067015

`A113804(n+1)+A063205(n+1)`
-/

namespace A063230.P9362477213036067015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1) + A063205 (n + 1)

end

end A063230.P9362477213036067015

namespace A063230

/-- `A113804(n+1)+A063205(n+1)` -/
def P9362477213036067015.Spec : Prop :=
  ∀ n, P9362477213036067015.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P13028358157849546820

`A130823(n+1)+A063228(n+1)`
-/

namespace A063230.P13028358157849546820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 1) + A063228 (n + 1)

end

end A063230.P13028358157849546820

namespace A063230

/-- `A130823(n+1)+A063228(n+1)` -/
def P13028358157849546820.Spec : Prop :=
  ∀ n, P13028358157849546820.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P7505872271046455150

`A063240(n+1)-A007310(n+1)`
-/

namespace A063230.P7505872271046455150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063240 (n + 1) - A007310 (n + 1)

end

end A063230.P7505872271046455150

namespace A063230

/-- `A063240(n+1)-A007310(n+1)` -/
def P7505872271046455150.Spec : Prop :=
  ∀ n, P7505872271046455150.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P6787971529576682646

`A017581(n)+1-A063195(n+1)`
-/

namespace A063230.P6787971529576682646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n + (1 - A063195 (n + 1))

end

end A063230.P6787971529576682646

namespace A063230

/-- `A017581(n)+1-A063195(n+1)` -/
def P6787971529576682646.Spec : Prop :=
  ∀ n, P6787971529576682646.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P9101839001408410598

`A063233(n+1)-A063224(n+1)`
-/

namespace A063230.P9101839001408410598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (n + 1) - A063224 (n + 1)

end

end A063230.P9101839001408410598

namespace A063230

/-- `A063233(n+1)-A063224(n+1)` -/
def P9101839001408410598.Spec : Prop :=
  ∀ n, P9101839001408410598.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P15724121124045053693

`A147587(n)-(A063081(n+1)+1)`
-/

namespace A063230.P15724121124045053693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n - (A063081 (n + 1) + 1)

end

end A063230.P15724121124045053693

namespace A063230

/-- `A147587(n)-(A063081(n+1)+1)` -/
def P15724121124045053693.Spec : Prop :=
  ∀ n, P15724121124045053693.a n = A063230 (n + 1)

end A063230

/-! ## A063230.P16436841325273524379

`A063215(n+1)+A017113(n)/2`
-/

namespace A063230.P16436841325273524379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063215 (n + 1) : ℚ) + (A017113 n : ℚ) / 2

end

end A063230.P16436841325273524379

namespace A063230

/-- `A063215(n+1)+A017113(n)/2` -/
def P16436841325273524379.Spec : Prop :=
  ∀ n, P16436841325273524379.a n = (A063230 (n + 1) : ℚ)

end A063230

/-! ## A063230.P1916709582565671201

`Δ[A033581(n)-A008749(n)]`
-/

namespace A063230.P1916709582565671201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - A008749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063230.P1916709582565671201

namespace A063230

/-- `Δ[A033581(n)-A008749(n)]` -/
def P1916709582565671201.Spec : Prop :=
  ∀ n, P1916709582565671201.a n = A063230 (n + 1)

end A063230

/-!
# A063231: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 75 ).

The programs for A063231, the canonical program `A063231.P12835314924208144101` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063231 has offset 1).

The definition of A063231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063231.P12835314924208144101

`or(1, 7*n+3)-∑[n²%3]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063231

/-- `or(1, 7*n+3)-∑[n²%3]` -/
def P12835314924208144101.Spec : Prop :=
  ∀ n, P12835314924208144101.a n = A063231 (n + 1)

theorem P12835314924208144101.correct : P12835314924208144101.Spec := by
  intro n
  simp only [A063231, Nat.add_sub_cancel]

end A063231

/-! ## A063231.P6433425692664710681

`floor(or(1, 7*n+3)-2*n/3)`
-/

namespace A063231.P6433425692664710681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (7 * n + 3) : ℚ) - (2 * n : ℚ) / 3⌋

end

end A063231.P6433425692664710681

namespace A063231

/-- `floor(or(1, 7*n+3)-2*n/3)` -/
def P6433425692664710681.Spec : Prop :=
  ∀ n, P6433425692664710681.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P16740238807616453704

`and(1, n)+floor(n/3)+6*n+3`
-/

namespace A063231.P16740238807616453704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (⌊(n : ℚ) / 3⌋ + (6 * n + 3 : ℤ))

end

end A063231.P16740238807616453704

namespace A063231

/-- `and(1, n)+floor(n/3)+6*n+3` -/
def P16740238807616453704.Spec : Prop :=
  ∀ n, P16740238807616453704.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P10957017597390887929

`comp[4*n]+5*n+n%2+2`
-/

namespace A063231.P10957017597390887929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (5 * n + (n % 2 + 2))

end

end A063231.P10957017597390887929

namespace A063231

/-- `comp[4*n]+5*n+n%2+2` -/
def P10957017597390887929.Spec : Prop :=
  ∀ n, (P10957017597390887929.a n : ℤ) = A063231 (n + 1)

end A063231

/-! ## A063231.P18411408014477554736

`A090772(n+1)+comp[4*n]`
-/

namespace A063231.P18411408014477554736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A063231.P18411408014477554736

namespace A063231

/-- `A090772(n+1)+comp[4*n]` -/
def P18411408014477554736.Spec : Prop :=
  ∀ n, P18411408014477554736.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P4776451310739933508

`A173512(n)-∑[(n²+1)%3]`
-/

namespace A063231.P4776451310739933508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173512 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063231.P4776451310739933508

namespace A063231

/-- `A173512(n)-∑[(n²+1)%3]` -/
def P4776451310739933508.Spec : Prop :=
  ∀ n, P4776451310739933508.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P10698280564240949403

`A091999(n+1)+A051274(n)`
-/

namespace A063231.P10698280564240949403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1) + A051274 n

end

end A063231.P10698280564240949403

namespace A063231

/-- `A091999(n+1)+A051274(n)` -/
def P10698280564240949403.Spec : Prop :=
  ∀ n, P10698280564240949403.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P15635399145421833933

`A268044(n+1)+A004773(n)`
-/

namespace A063231.P15635399145421833933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1) + A004773 n

end

end A063231.P15635399145421833933

namespace A063231

/-- `A268044(n+1)+A004773(n)` -/
def P15635399145421833933.Spec : Prop :=
  ∀ n, P15635399145421833933.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P15912406147266731114

`comp[A004767(n)]+or(1, A016885(n))`
-/

namespace A063231.P15912406147266731114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + Int.lor 1 (A016885 n)

end

end A063231.P15912406147266731114

namespace A063231

/-- `comp[A004767(n)]+or(1, A016885(n))` -/
def P15912406147266731114.Spec : Prop :=
  ∀ n, P15912406147266731114.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P9893113551927314195

`A047452(n+1)+A047292(n+1)`
-/

namespace A063231.P9893113551927314195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (n + 1) + A047292 (n + 1)

end

end A063231.P9893113551927314195

namespace A063231

/-- `A047452(n+1)+A047292(n+1)` -/
def P9893113551927314195.Spec : Prop :=
  ∀ n, P9893113551927314195.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P12310118484826561052

`A047524(n+1)+A047391(n+1)`
-/

namespace A063231.P12310118484826561052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1) + A047391 (n + 1)

end

end A063231.P12310118484826561052

namespace A063231

/-- `A047524(n+1)+A047391(n+1)` -/
def P12310118484826561052.Spec : Prop :=
  ∀ n, P12310118484826561052.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P2988076012311101479

`A063242(n+1)+A047537(n+1)`
-/

namespace A063231.P2988076012311101479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063242 (n + 1) + A047537 (n + 1)

end

end A063231.P2988076012311101479

namespace A063231

/-- `A063242(n+1)+A047537(n+1)` -/
def P2988076012311101479.Spec : Prop :=
  ∀ n, P2988076012311101479.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P4539523908185766753

`A063247(n+1)+A063217(n+1)`
-/

namespace A063231.P4539523908185766753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063247 (n + 1) + A063217 (n + 1)

end

end A063231.P4539523908185766753

namespace A063231

/-- `A063247(n+1)+A063217(n+1)` -/
def P4539523908185766753.Spec : Prop :=
  ∀ n, P4539523908185766753.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P14465567814173656491

`A242774(n+1)+A168670(n+1)`
-/

namespace A063231.P14465567814173656491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242774 (n + 1) + A168670 (n + 1)

end

end A063231.P14465567814173656491

namespace A063231

/-- `A242774(n+1)+A168670(n+1)` -/
def P14465567814173656491.Spec : Prop :=
  ∀ n, P14465567814173656491.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P9418263525529085997

`A134965(n+1)-A047212(n+1)`
-/

namespace A063231.P9418263525529085997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134965 (n + 1) - A047212 (n + 1)

end

end A063231.P9418263525529085997

namespace A063231

/-- `A134965(n+1)-A047212(n+1)` -/
def P9418263525529085997.Spec : Prop :=
  ∀ n, P9418263525529085997.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P10255952282020323635

`A113803(n+1)-A322042(n+1)`
-/

namespace A063231.P10255952282020323635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) - A322042 (n + 1)

end

end A063231.P10255952282020323635

namespace A063231

/-- `A113803(n+1)-A322042(n+1)` -/
def P10255952282020323635.Spec : Prop :=
  ∀ n, P10255952282020323635.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P11695885594749348736

`A057078(n)+2*A063247(n+1)`
-/

namespace A063231.P11695885594749348736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n + 2 * A063247 (n + 1)

end

end A063231.P11695885594749348736

namespace A063231

/-- `A057078(n)+2*A063247(n+1)` -/
def P11695885594749348736.Spec : Prop :=
  ∀ n, P11695885594749348736.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P13750887347007303034

`2*A063217(n+1)-A057078(n)`
-/

namespace A063231.P13750887347007303034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063217 (n + 1) - A057078 n

end

end A063231.P13750887347007303034

namespace A063231

/-- `2*A063217(n+1)-A057078(n)` -/
def P13750887347007303034.Spec : Prop :=
  ∀ n, P13750887347007303034.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P11477904964701105485

`A007310(n+1)+A047292(n+1)+n`
-/

namespace A063231.P11477904964701105485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) + (A047292 (n + 1) + (n : ℤ))

end

end A063231.P11477904964701105485

namespace A063231

/-- `A007310(n+1)+A047292(n+1)+n` -/
def P11477904964701105485.Spec : Prop :=
  ∀ n, P11477904964701105485.a n = A063231 (n + 1)

end A063231

/-! ## A063231.P10728362024639410588

`Δ[A032525(n)-A000212(n)]`
-/

namespace A063231.P10728362024639410588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032525 n - A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063231.P10728362024639410588

namespace A063231

/-- `Δ[A032525(n)-A000212(n)]` -/
def P10728362024639410588.Spec : Prop :=
  ∀ n, P10728362024639410588.a n = A063231 (n + 1)

end A063231

/-!
# A063232: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 77 ).

The programs for A063232, the canonical program `A063232.P6767471423208825915` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063232 has offset 1).

The definition of A063232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063232.P6767471423208825915

`20*n-a(n-1)` with `a(0)=5, a(1)=16`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063232

/-- `20*n-a(n-1)` -/
def P6767471423208825915.Spec : Prop :=
  ∀ n, P6767471423208825915.a n = A063232 (n + 1)

theorem P6767471423208825915.correct : P6767471423208825915.Spec := by
  intro n
  simp only [A063232, Nat.add_sub_cancel]

end A063232

/-! ## A063232.P4493636036366765826

`5+10*n+(-1)^(n+1)+C(2*n, n)%2`
-/

namespace A063232.P4493636036366765826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 + 10 * n : ℤ) + (-1) ^ (n + 1) + ((Nat.choose (2 * n) n % 2 : ℕ) : ℤ)

end

end A063232.P4493636036366765826

namespace A063232

/-- `5+10*n+(-1)^(n+1)+C(2*n, n)%2` -/
def P4493636036366765826.Spec : Prop :=
  ∀ n, P4493636036366765826.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P4933227530807370954

`a(n-2)+20` with `a(0)=5, a(1)=16, a(2)=24`
-/

namespace A063232.P4933227530807370954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 16, 24] fun n a =>
  a (n - 2) + 20

end

end A063232.P4933227530807370954

namespace A063232

/-- `a(n-2)+20` -/
def P4933227530807370954.Spec : Prop :=
  ∀ n, (P4933227530807370954.a n : ℤ) = A063232 (n + 1)

end A063232

/-! ## A063232.P8934151965300544368

`∑[20-a(n-1)]` with `a(0)=5, a(1)=11, a(2)=8`
-/

namespace A063232.P8934151965300544368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 11, 8] fun n f1 =>
  20 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063232.P8934151965300544368

namespace A063232

/-- `∑[20-a(n-1)]` -/
def P8934151965300544368.Spec : Prop :=
  ∀ n, P8934151965300544368.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P17736725963166519123

`A063133(n+1)-4*n`
-/

namespace A063232.P17736725963166519123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063133 (n + 1) - (4 * n : ℤ)

end

end A063232.P17736725963166519123

namespace A063232

/-- `A063133(n+1)-4*n` -/
def P17736725963166519123.Spec : Prop :=
  ∀ n, P17736725963166519123.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P6527448064299496155

`9*n+5+A014681(n)`
-/

namespace A063232.P6527448064299496155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 5 : ℤ) + A014681 n

end

end A063232.P6527448064299496155

namespace A063232

/-- `9*n+5+A014681(n)` -/
def P6527448064299496155.Spec : Prop :=
  ∀ n, P6527448064299496155.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P8395763708363114647

`Δ[A040001(n)+5*n²]`
-/

namespace A063232.P8395763708363114647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + (5 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063232.P8395763708363114647

namespace A063232

/-- `Δ[A040001(n)+5*n²]` -/
def P8395763708363114647.Spec : Prop :=
  ∀ n, P8395763708363114647.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P2520018076854610733

`A091999(n+1)+Δ[(n²+1)*ceil(atan(n+1))]`
-/

namespace A063232.P2520018076854610733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1) + (f1 (n + 1) - f1 n)

end

end A063232.P2520018076854610733

namespace A063232

/-- `A091999(n+1)+Δ[(n²+1)*ceil(atan(n+1))]` -/
def P2520018076854610733.Spec : Prop :=
  ∀ n, P2520018076854610733.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P5587108762563097206

`A062157(n)+A017329(n)`
-/

namespace A063232.P5587108762563097206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A017329 n

end

end A063232.P5587108762563097206

namespace A063232

/-- `A062157(n)+A017329(n)` -/
def P5587108762563097206.Spec : Prop :=
  ∀ n, P5587108762563097206.a n = A063232 (n + 1)

theorem P5587108762563097206.correct : P5587108762563097206.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A063232, Nat.add_sub_cancel, A063232.P5587108762563097206.a, A063232.P6767471423208825915.a, A017329, A017329.P13641332030280969901.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A063232, Nat.add_sub_cancel, A063232.P5587108762563097206.a, A063232.P6767471423208825915.a, A017329, A017329.P13641332030280969901.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A063232

/-! ## A063232.P9220003502088379272

`A063221(n+1)+A016825(n)`
-/

namespace A063232.P9220003502088379272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1) + A016825 n

end

end A063232.P9220003502088379272

namespace A063232

/-- `A063221(n+1)+A016825(n)` -/
def P9220003502088379272.Spec : Prop :=
  ∀ n, P9220003502088379272.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P14112675327672958192

`A065190(n+1)+A017209(n)`
-/

namespace A063232.P14112675327672958192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1) + A017209 n

end

end A063232.P14112675327672958192

namespace A063232

/-- `A065190(n+1)+A017209(n)` -/
def P14112675327672958192.Spec : Prop :=
  ∀ n, P14112675327672958192.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P11440953343759071987

`A014681(n)+A017233(n)-1`
-/

namespace A063232.P11440953343759071987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n + (A017233 n - 1)

end

end A063232.P11440953343759071987

namespace A063232

/-- `A014681(n)+A017233(n)-1` -/
def P11440953343759071987.Spec : Prop :=
  ∀ n, P11440953343759071987.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P310370822308178799

`A017341(n)+A062157(n)-1`
-/

namespace A063232.P310370822308178799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n + (A062157 n - 1)

end

end A063232.P310370822308178799

namespace A063232

/-- `A017341(n)+A062157(n)-1` -/
def P310370822308178799.Spec : Prop :=
  ∀ n, P310370822308178799.a n = A063232 (n + 1)

theorem P310370822308178799.correct : P310370822308178799.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A063232, Nat.add_sub_cancel, A063232.P310370822308178799.a, A063232.P6767471423208825915.a, A017341, A017341.P14977180853961305525.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A063232, Nat.add_sub_cancel, A063232.P310370822308178799.a, A063232.P6767471423208825915.a, A017341, A017341.P14977180853961305525.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A063232

/-! ## A063232.P1386552266338525665

`A063153(n+1)-A017089(n)`
-/

namespace A063232.P1386552266338525665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063153 (n + 1) - A017089 n

end

end A063232.P1386552266338525665

namespace A063232

/-- `A063153(n+1)-A017089(n)` -/
def P1386552266338525665.Spec : Prop :=
  ∀ n, P1386552266338525665.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P4431367846529873861

`A017593(n)-A063210(n+1)`
-/

namespace A063232.P4431367846529873861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n - A063210 (n + 1)

end

end A063232.P4431367846529873861

namespace A063232

/-- `A017593(n)-A063210(n+1)` -/
def P4431367846529873861.Spec : Prop :=
  ∀ n, P4431367846529873861.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P17637014940184491474

`A063237(n+1)+A007310(n+1)`
-/

namespace A063232.P17637014940184491474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063237 (n + 1) + A007310 (n + 1)

end

end A063232.P17637014940184491474

namespace A063232

/-- `A063237(n+1)+A007310(n+1)` -/
def P17637014940184491474.Spec : Prop :=
  ∀ n, P17637014940184491474.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P790093278757156500

`A063229(n+1)+A047410(n+1)`
-/

namespace A063232.P790093278757156500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1) + A047410 (n + 1)

end

end A063232.P790093278757156500

namespace A063232

/-- `A063229(n+1)+A047410(n+1)` -/
def P790093278757156500.Spec : Prop :=
  ∀ n, P790093278757156500.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P3652398649693922529

`A090772(n+1)+A063225(n+1)`
-/

namespace A063232.P3652398649693922529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) + A063225 (n + 1)

end

end A063232.P3652398649693922529

namespace A063232

/-- `A090772(n+1)+A063225(n+1)` -/
def P3652398649693922529.Spec : Prop :=
  ∀ n, P3652398649693922529.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P924755830801347905

`A268044(n+1)+A063097(n+1)`
-/

namespace A063232.P924755830801347905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1) + A063097 (n + 1)

end

end A063232.P924755830801347905

namespace A063232

/-- `A268044(n+1)+A063097(n+1)` -/
def P924755830801347905.Spec : Prop :=
  ∀ n, P924755830801347905.a n = A063232 (n + 1)

end A063232

/-! ## A063232.P2201020777416881991

`A063120(n+1)-A047467(n+1)`
-/

namespace A063232.P2201020777416881991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063120 (n + 1) - A047467 (n + 1)

end

end A063232.P2201020777416881991

namespace A063232

/-- `A063120(n+1)-A047467(n+1)` -/
def P2201020777416881991.Spec : Prop :=
  ∀ n, P2201020777416881991.a n = A063232 (n + 1)

end A063232

/-!
# A063233: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 79 ).

The programs for A063233, the canonical program `A063233.P15658935437451909845` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063233 has offset 1).

The definition of A063233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063233.P15658935437451909845

`26*n-a(n-1)` with `a(0)=6, a(1)=19`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063233

/-- `26*n-a(n-1)` -/
def P15658935437451909845.Spec : Prop :=
  ∀ n, P15658935437451909845.a n = A063233 (n + 1)

theorem P15658935437451909845.correct : P15658935437451909845.Spec := by
  intro n
  simp only [A063233, Nat.add_sub_cancel]

end A063233

/-! ## A063233.P7660963654982518275

`a(n-2)+26` with `a(0)=6, a(1)=19, a(2)=33`
-/

namespace A063233.P7660963654982518275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 19, 33] fun n a =>
  a (n - 2) + 26

end

end A063233.P7660963654982518275

namespace A063233

/-- `a(n-2)+26` -/
def P7660963654982518275.Spec : Prop :=
  ∀ n, (P7660963654982518275.a n : ℤ) = A063233 (n + 1)

end A063233

/-! ## A063233.P10373918068729664872

`∑[abs(a(n-2))]` with `a(0)=6, a(1)=13, a(2)=14, a(3)=12`
-/

namespace A063233.P10373918068729664872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 13, 14, 12] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063233.P10373918068729664872

namespace A063233

/-- `∑[abs(a(n-2))]` -/
def P10373918068729664872.Spec : Prop :=
  ∀ n, (P10373918068729664872.a n : ℤ) = A063233 (n + 1)

end A063233

/-! ## A063233.P131867595320017817

`∑[and(14, a(n-2))]` with `a(0)=6, a(1)=13, a(2)=14`
-/

namespace A063233.P131867595320017817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 13, 14] fun n f1 =>
  Nat.land 14 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063233.P131867595320017817

namespace A063233

/-- `∑[and(14, a(n-2))]` -/
def P131867595320017817.Spec : Prop :=
  ∀ n, (P131867595320017817.a n : ℤ) = A063233 (n + 1)

end A063233

/-! ## A063233.P11785829834599116272

`∑[floor(a(n-2))]` with `a(0)=6, a(1)=13, a(2)=14, a(3)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A063233.P11785829834599116272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 13, 14, 12] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063233.P11785829834599116272

namespace A063233

/-- `∑[floor(a(n-2))]` -/
def P11785829834599116272.Spec : Prop :=
  ∀ n, (P11785829834599116272.a n : ℤ) = A063233 (n + 1)

end A063233

/-! ## A063233.P15510412785363922333

`∑[ceil(a(n-2))]` with `a(0)=6, a(1)=13, a(2)=14, a(3)=12`

`ceil` is left out, it is the identity on integers.
-/

namespace A063233.P15510412785363922333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 13, 14, 12] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063233.P15510412785363922333

namespace A063233

/-- `∑[ceil(a(n-2))]` -/
def P15510412785363922333.Spec : Prop :=
  ∀ n, (P15510412785363922333.a n : ℤ) = A063233 (n + 1)

end A063233

/-! ## A063233.P1704499225263156828

`∑[or(13, a(n-2))-1]` with `a(0)=6, a(1)=13`
-/

namespace A063233.P1704499225263156828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 13] fun n f1 =>
  Int.lor 13 (f1 (n - 2)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063233.P1704499225263156828

namespace A063233

/-- `∑[or(13, a(n-2))-1]` -/
def P1704499225263156828.Spec : Prop :=
  ∀ n, P1704499225263156828.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P16194792654915764172

`record[3*(n+1)/and(n+1, -(n+1))]+char[2*(n+1)]+7*n+3`
-/

namespace A063233.P16194792654915764172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (((if ∃ j, f2 j = n then 1 else 0) + (7 * n + 3) : ℕ) : ℚ)

end

end A063233.P16194792654915764172

namespace A063233

/-- `record[3*(n+1)/and(n+1, -(n+1))]+char[2*(n+1)]+7*n+3` -/
def P16194792654915764172.Spec : Prop :=
  ∀ n, P16194792654915764172.a n = (A063233 (n + 1) : ℚ)

end A063233

/-! ## A063233.P12060721892448381448

`A063228(n+1)+Δ[n²]`
-/

namespace A063233.P12060721892448381448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063228 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063233.P12060721892448381448

namespace A063233

/-- `A063228(n+1)+Δ[n²]` -/
def P12060721892448381448.Spec : Prop :=
  ∀ n, P12060721892448381448.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P6152593645608959105

`∑[A000203(a((n+1)%2))]` with `a(0)=6, a(1)=13`
-/

namespace A063233.P6152593645608959105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 13] fun n f1 =>
  A000203 (f1 ((n + 1) % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063233.P6152593645608959105

namespace A063233

/-- `∑[A000203(a((n+1)%2))]` -/
def P6152593645608959105.Spec : Prop :=
  ∀ n, P6152593645608959105.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P17716893818379922549

`∑[14-val(A000108(a(n-1)), 6)]` with `a(0)=6`
-/

namespace A063233.P17716893818379922549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  14 - (SequenceMachineLib.valuation (A000108 (f1 (n - 1)).toNat).toNat 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063233.P17716893818379922549

namespace A063233

/-- `∑[14-val(A000108(a(n-1)), 6)]` -/
def P17716893818379922549.Spec : Prop :=
  ∀ n, P17716893818379922549.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P7441723190974029159

`A154609(n)+A040001(n)`
-/

namespace A063233.P7441723190974029159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n + A040001 n

end

end A063233.P7441723190974029159

namespace A063233

/-- `A154609(n)+A040001(n)` -/
def P7441723190974029159.Spec : Prop :=
  ∀ n, P7441723190974029159.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P3208780228819854644

`A063211(n+1)+A016945(n)`
-/

namespace A063233.P3208780228819854644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063211 (n + 1) + A016945 n

end

end A063233.P3208780228819854644

namespace A063233

/-- `A063211(n+1)+A016945(n)` -/
def P3208780228819854644.Spec : Prop :=
  ∀ n, P3208780228819854644.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P8156790455524982381

`A063206(n+1)+A017113(n)`
-/

namespace A063233.P8156790455524982381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (n + 1) + A017113 n

end

end A063233.P8156790455524982381

namespace A063233

/-- `A063206(n+1)+A017113(n)` -/
def P8156790455524982381.Spec : Prop :=
  ∀ n, P8156790455524982381.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P8410833032012897504

`A063196(n+1)+A017593(n)`
-/

namespace A063233.P8410833032012897504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1) + A017593 n

end

end A063233.P8410833032012897504

namespace A063233

/-- `A063196(n+1)+A017593(n)` -/
def P8410833032012897504.Spec : Prop :=
  ∀ n, P8410833032012897504.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P112192007995012058

`A281813(n)+A063226(n+1)`
-/

namespace A063233.P112192007995012058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n + A063226 (n + 1)

end

end A063233.P112192007995012058

namespace A063233

/-- `A281813(n)+A063226(n+1)` -/
def P112192007995012058.Spec : Prop :=
  ∀ n, P112192007995012058.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P2313180108849002143

`A139608(n)-A063118(n+1)`
-/

namespace A063233.P2313180108849002143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n - A063118 (n + 1)

end

end A063233.P2313180108849002143

namespace A063233

/-- `A139608(n)-A063118(n+1)` -/
def P2313180108849002143.Spec : Prop :=
  ∀ n, P2313180108849002143.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P9326955986500028615

`A147587(n)-A131055(n+1)`
-/

namespace A063233.P9326955986500028615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n - A131055 (n + 1)

end

end A063233.P9326955986500028615

namespace A063233

/-- `A147587(n)-A131055(n+1)` -/
def P9326955986500028615.Spec : Prop :=
  ∀ n, P9326955986500028615.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P3047985898980942742

`A269044(n)-A135528(n+1)`
-/

namespace A063233.P3047985898980942742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n - A135528 (n + 1)

end

end A063233.P3047985898980942742

namespace A063233

/-- `A269044(n)-A135528(n+1)` -/
def P3047985898980942742.Spec : Prop :=
  ∀ n, P3047985898980942742.a n = A063233 (n + 1)

end A063233

/-! ## A063233.P8419855961183522731

`A063223(n+1)+A063213(n+1)`
-/

namespace A063233.P8419855961183522731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063223 (n + 1) + A063213 (n + 1)

end

end A063233.P8419855961183522731

namespace A063233

/-- `A063223(n+1)+A063213(n+1)` -/
def P8419855961183522731.Spec : Prop :=
  ∀ n, P8419855961183522731.a n = A063233 (n + 1)

end A063233

/-!
# A063235: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 83 ).

The programs for A063235, the canonical program `A063235.P16999452272687535801` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063235 has offset 1).

The definition of A063235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063235.P16999452272687535801

`A063230(n+1)+Δ[n²]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063235

/-- `A063230(n+1)+Δ[n²]` -/
def P16999452272687535801.Spec : Prop :=
  ∀ n, P16999452272687535801.a n = A063235 (n + 1)

theorem P16999452272687535801.correct : P16999452272687535801.Spec := by
  intro n
  simp only [A063235, Nat.add_sub_cancel]

end A063235

/-! ## A063235.P12522967415424785506

`A063223(n+1)+4*n+2`
-/

namespace A063235.P12522967415424785506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063223 (n + 1) + (4 * n + 2 : ℤ)

end

end A063235.P12522967415424785506

namespace A063235

/-- `A063223(n+1)+4*n+2` -/
def P12522967415424785506.Spec : Prop :=
  ∀ n, P12522967415424785506.a n = A063235 (n + 1)

theorem P12522967415424785506.correct : P12522967415424785506.Spec := by
  intro n
  simp only [A063235, Nat.add_sub_cancel, A063235.P12522967415424785506.a, A063235.P16999452272687535801.f1, A063235.P16999452272687535801.a, A063223, A063223.P8636699475728164837.a, A063230, A063230.P14545759985604796724.f1, A063230.P14545759985604796724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063235

/-! ## A063235.P11336368564475138258

`10*n+A063203(n+1)+5`
-/

namespace A063235.P11336368564475138258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + (A063203 (n + 1) + 5)

end

end A063235.P11336368564475138258

namespace A063235

/-- `10*n+A063203(n+1)+5` -/
def P11336368564475138258.Spec : Prop :=
  ∀ n, P11336368564475138258.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P9453141490658825270

`A063199(n+1)+12*n+6`
-/

namespace A063235.P9453141490658825270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 1) + (12 * n + 6 : ℤ)

end

end A063235.P9453141490658825270

namespace A063235

/-- `A063199(n+1)+12*n+6` -/
def P9453141490658825270.Spec : Prop :=
  ∀ n, P9453141490658825270.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P13236090705558819245

`A063240(n+1)-and(1, n)-n`
-/

namespace A063235.P13236090705558819245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063240 (n + 1) - (Nat.land 1 n : ℤ) - (n : ℤ)

end

end A063235.P13236090705558819245

namespace A063235

/-- `A063240(n+1)-and(1, n)-n` -/
def P13236090705558819245.Spec : Prop :=
  ∀ n, P13236090705558819245.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P15543844710729004935

`A063215(n+1)+3*(2*n+1)`
-/

namespace A063235.P15543844710729004935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063215 (n + 1) + (3 * (2 * n + 1) : ℤ)

end

end A063235.P15543844710729004935

namespace A063235

/-- `A063215(n+1)+3*(2*n+1)` -/
def P15543844710729004935.Spec : Prop :=
  ∀ n, P15543844710729004935.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P5485861045424802914

`A063203(n+1)+A017329(n)`
-/

namespace A063235.P5485861045424802914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063203 (n + 1) + A017329 n

end

end A063235.P5485861045424802914

namespace A063235

/-- `A063203(n+1)+A017329(n)` -/
def P5485861045424802914.Spec : Prop :=
  ∀ n, P5485861045424802914.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P6943462345324199955

`A147587(n)-A063195(n+1)`
-/

namespace A063235.P6943462345324199955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n - A063195 (n + 1)

end

end A063235.P6943462345324199955

namespace A063235

/-- `A147587(n)-A063195(n+1)` -/
def P6943462345324199955.Spec : Prop :=
  ∀ n, P6943462345324199955.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P13078697601209339259

`A348845(n)-A063129(n+1)`
-/

namespace A063235.P13078697601209339259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n - A063129 (n + 1)

end

end A063235.P13078697601209339259

namespace A063235

/-- `A348845(n)-A063129(n+1)` -/
def P13078697601209339259.Spec : Prop :=
  ∀ n, P13078697601209339259.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P12737552119311835711

`A063203(n+1)+A017317(n)+1`
-/

namespace A063235.P12737552119311835711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063203 (n + 1) + (A017317 n + 1)

end

end A063235.P12737552119311835711

namespace A063235

/-- `A063203(n+1)+A017317(n)+1` -/
def P12737552119311835711.Spec : Prop :=
  ∀ n, P12737552119311835711.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P8843345420968396969

`A063228(n+1)+A047410(n+1)`
-/

namespace A063235.P8843345420968396969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063228 (n + 1) + A047410 (n + 1)

end

end A063235.P8843345420968396969

namespace A063235

/-- `A063228(n+1)+A047410(n+1)` -/
def P8843345420968396969.Spec : Prop :=
  ∀ n, P8843345420968396969.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P1118968584297043436

`A063226(n+1)+A063219(n+1)`
-/

namespace A063235.P1118968584297043436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) + A063219 (n + 1)

end

end A063235.P1118968584297043436

namespace A063235

/-- `A063226(n+1)+A063219(n+1)` -/
def P1118968584297043436.Spec : Prop :=
  ∀ n, P1118968584297043436.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P999555755686295263

`A113804(n+1)+A063209(n+1)`
-/

namespace A063235.P999555755686295263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1) + A063209 (n + 1)

end

end A063235.P999555755686295263

namespace A063235

/-- `A113804(n+1)+A063209(n+1)` -/
def P999555755686295263.Spec : Prop :=
  ∀ n, P999555755686295263.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P18191017759399095354

`A130823(n+1)+A063233(n+1)`
-/

namespace A063235.P18191017759399095354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 1) + A063233 (n + 1)

end

end A063235.P18191017759399095354

namespace A063235

/-- `A130823(n+1)+A063233(n+1)` -/
def P18191017759399095354.Spec : Prop :=
  ∀ n, P18191017759399095354.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P5151988197379230699

`A143988(n+1)+A063205(n+1)`
-/

namespace A063235.P5151988197379230699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1) + A063205 (n + 1)

end

end A063235.P5151988197379230699

namespace A063235

/-- `A143988(n+1)+A063205(n+1)` -/
def P5151988197379230699.Spec : Prop :=
  ∀ n, P5151988197379230699.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P9378527541227478205

`Δ[n²+A033581(n)-A008749(n)]`
-/

namespace A063235.P9378527541227478205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A033581 n - A008749 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063235.P9378527541227478205

namespace A063235

/-- `Δ[n²+A033581(n)-A008749(n)]` -/
def P9378527541227478205.Spec : Prop :=
  ∀ n, P9378527541227478205.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P11507276880366682051

`A091572(2*n)-A183919(n+12)`
-/

namespace A063235.P11507276880366682051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091572 (2 * n) - A183919 (n + 12)

end

end A063235.P11507276880366682051

namespace A063235

/-- `A091572(2*n)-A183919(n+12)` -/
def P11507276880366682051.Spec : Prop :=
  ∀ n, P11507276880366682051.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P14126785094955837220

`4*n+1+A063280(2*n+3)+A008458(n+1)`
-/

namespace A063235.P14126785094955837220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) + (A063280 (2 * n + 3) + A008458 (n + 1))

end

end A063235.P14126785094955837220

namespace A063235

/-- `4*n+1+A063280(2*n+3)+A008458(n+1)` -/
def P14126785094955837220.Spec : Prop :=
  ∀ n, P14126785094955837220.a n = A063235 (n + 1)

end A063235

/-! ## A063235.P8993899054724546994

`A091572(2*n)-A162518(2*(n+1))*A162518(n+2)`
-/

namespace A063235.P8993899054724546994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091572 (2 * n) - A162518 (2 * (n + 1)) * A162518 (n + 2)

end

end A063235.P8993899054724546994

namespace A063235

/-- `A091572(2*n)-A162518(2*(n+1))*A162518(n+2)` -/
def P8993899054724546994.Spec : Prop :=
  ∀ n, P8993899054724546994.a n = A063235 (n + 1)

end A063235

/-!
# A063236: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 85 ).

The programs for A063236, the canonical program `A063236.P5255982037722682345` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063236 has offset 1).

The definition of A063236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063236.P5255982037722682345

`4*n+A063220(n+1)+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063236

/-- `4*n+A063220(n+1)+2` -/
def P5255982037722682345.Spec : Prop :=
  ∀ n, P5255982037722682345.a n = A063236 (n + 1)

theorem P5255982037722682345.correct : P5255982037722682345.Spec := by
  intro n
  simp only [A063236, Nat.add_sub_cancel]

end A063236

/-! ## A063236.P5011239018621952896

`A063222(n+1)+6*n+3`
-/

namespace A063236.P5011239018621952896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) + (6 * n + 3 : ℤ)

end

end A063236.P5011239018621952896

namespace A063236

/-- `A063222(n+1)+6*n+3` -/
def P5011239018621952896.Spec : Prop :=
  ∀ n, P5011239018621952896.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P18243392254024882220

`A063198(n+1)+10*n+5`
-/

namespace A063236.P18243392254024882220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (n + 1) + (10 * n + 5 : ℤ)

end

end A063236.P18243392254024882220

namespace A063236

/-- `A063198(n+1)+10*n+5` -/
def P18243392254024882220.Spec : Prop :=
  ∀ n, P18243392254024882220.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P3267097404098605930

`A063220(n+1)+A016825(n)`
-/

namespace A063236.P3267097404098605930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1) + A016825 n

end

end A063236.P3267097404098605930

namespace A063236

/-- `A063220(n+1)+A016825(n)` -/
def P3267097404098605930.Spec : Prop :=
  ∀ n, P3267097404098605930.a n = A063236 (n + 1)

theorem P3267097404098605930.correct : P3267097404098605930.Spec := by
  intro n
  simp only [A063236, Nat.add_sub_cancel, A063236.P3267097404098605930.a, A063236.P5255982037722682345.a, A016825, A016825.P4712696052905976233.a, A063220, A063220.P1165827545311593591.f1, A063220.P1165827545311593591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063236

/-! ## A063236.P16574337086333240683

`A063159(n+1)-A017089(n)`
-/

namespace A063236.P16574337086333240683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063159 (n + 1) - A017089 n

end

end A063236.P16574337086333240683

namespace A063236

/-- `A063159(n+1)-A017089(n)` -/
def P16574337086333240683.Spec : Prop :=
  ∀ n, P16574337086333240683.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P6492472204261113451

`A063244(n+1)+A047235(n+1)`
-/

namespace A063236.P6492472204261113451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063244 (n + 1) + A047235 (n + 1)

end

end A063236.P6492472204261113451

namespace A063236

/-- `A063244(n+1)+A047235(n+1)` -/
def P6492472204261113451.Spec : Prop :=
  ∀ n, P6492472204261113451.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P8984595605507991264

`A063238(n+1)+A063224(n+1)`
-/

namespace A063236.P8984595605507991264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) + A063224 (n + 1)

end

end A063236.P8984595605507991264

namespace A063236

/-- `A063238(n+1)+A063224(n+1)` -/
def P8984595605507991264.Spec : Prop :=
  ∀ n, P8984595605507991264.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P5240603314231747610

`A113804(n+1)+A063214(n+1)`
-/

namespace A063236.P5240603314231747610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1) + A063214 (n + 1)

end

end A063236.P5240603314231747610

namespace A063236

/-- `A113804(n+1)+A063214(n+1)` -/
def P5240603314231747610.Spec : Prop :=
  ∀ n, P5240603314231747610.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P3237094318690149959

`A143988(n+1)+A063202(n+1)`
-/

namespace A063236.P3237094318690149959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1) + A063202 (n + 1)

end

end A063236.P3237094318690149959

namespace A063236

/-- `A143988(n+1)+A063202(n+1)` -/
def P3237094318690149959.Spec : Prop :=
  ∀ n, P3237094318690149959.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P13651466254916281996

`A063125(n+1)-A047464(n+1)`
-/

namespace A063236.P13651466254916281996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063125 (n + 1) - A047464 (n + 1)

end

end A063236.P13651466254916281996

namespace A063236

/-- `A063125(n+1)-A047464(n+1)` -/
def P13651466254916281996.Spec : Prop :=
  ∀ n, P13651466254916281996.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P14706565177889801466

`A063147(n+1)-A047623(n+1)`
-/

namespace A063236.P14706565177889801466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - A047623 (n + 1)

end

end A063236.P14706565177889801466

namespace A063236

/-- `A063147(n+1)-A047623(n+1)` -/
def P14706565177889801466.Spec : Prop :=
  ∀ n, P14706565177889801466.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P12123095476949207682

`A063110(n+1)-2*A047464(n+1)`
-/

namespace A063236.P12123095476949207682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063110 (n + 1) - 2 * A047464 (n + 1)

end

end A063236.P12123095476949207682

namespace A063236

/-- `A063110(n+1)-2*A047464(n+1)` -/
def P12123095476949207682.Spec : Prop :=
  ∀ n, P12123095476949207682.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P17767519009837294111

`A063130(n+1)-2*A047623(n+1)`
-/

namespace A063236.P17767519009837294111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063130 (n + 1) - 2 * A047623 (n + 1)

end

end A063236.P17767519009837294111

namespace A063236

/-- `A063130(n+1)-2*A047623(n+1)` -/
def P17767519009837294111.Spec : Prop :=
  ∀ n, P17767519009837294111.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P18217216936168215281

`2*A113804(n+1)-A063227(n+1)`
-/

namespace A063236.P18217216936168215281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113804 (n + 1) - A063227 (n + 1)

end

end A063236.P18217216936168215281

namespace A063236

/-- `2*A113804(n+1)-A063227(n+1)` -/
def P18217216936168215281.Spec : Prop :=
  ∀ n, P18217216936168215281.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P1926948685234281721

`Δ[A299255(n)-n²%3]`
-/

namespace A063236.P1926948685234281721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299255 n - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063236.P1926948685234281721

namespace A063236

/-- `Δ[A299255(n)-n²%3]` -/
def P1926948685234281721.Spec : Prop :=
  ∀ n, P1926948685234281721.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P1976285446273298500

`A063220(n+1)+Δ[A001105(n)]`
-/

namespace A063236.P1976285446273298500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1) + (f1 (n + 1) - f1 n)

end

end A063236.P1976285446273298500

namespace A063236

/-- `A063220(n+1)+Δ[A001105(n)]` -/
def P1976285446273298500.Spec : Prop :=
  ∀ n, P1976285446273298500.a n = A063236 (n + 1)

theorem P1976285446273298500.correct : P1976285446273298500.Spec := by
  intro n
  simp only [A063236, Nat.add_sub_cancel, A063236.P1976285446273298500.f1, A063236.P1976285446273298500.a, A063236.P5255982037722682345.a, A001105, A001105.P6098599260439307493.a, A063220, A063220.P1165827545311593591.f1, A063220.P1165827545311593591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063236

/-! ## A063236.P8988922818974476600

`A008574(A004523(n+1))+8*n+4`
-/

namespace A063236.P8988922818974476600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A004523 (n + 1)).toNat + (8 * n + 4 : ℤ)

end

end A063236.P8988922818974476600

namespace A063236

/-- `A008574(A004523(n+1))+8*n+4` -/
def P8988922818974476600.Spec : Prop :=
  ∀ n, P8988922818974476600.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P2897866208553943033

`A219529(n+1)+A219529(n)-A057078(n)`
-/

namespace A063236.P2897866208553943033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 (n + 1) + (A219529 n - A057078 n)

end

end A063236.P2897866208553943033

namespace A063236

/-- `A219529(n+1)+A219529(n)-A057078(n)` -/
def P2897866208553943033.Spec : Prop :=
  ∀ n, P2897866208553943033.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P12316933330908111523

`A049347(n+1)+A219529(n+1)+A219529(n)`
-/

namespace A063236.P12316933330908111523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + (A219529 (n + 1) + A219529 n)

end

end A063236.P12316933330908111523

namespace A063236

/-- `A049347(n+1)+A219529(n+1)+A219529(n)` -/
def P12316933330908111523.Spec : Prop :=
  ∀ n, P12316933330908111523.a n = A063236 (n + 1)

end A063236

/-! ## A063236.P17491454605329094323

`A049347(n+1)+A299255(n+1)-A299255(n)`
-/

namespace A063236.P17491454605329094323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + (A299255 (n + 1) - A299255 n)

end

end A063236.P17491454605329094323

namespace A063236

/-- `A049347(n+1)+A299255(n+1)-A299255(n)` -/
def P17491454605329094323.Spec : Prop :=
  ∀ n, P17491454605329094323.a n = A063236 (n + 1)

end A063236

/-!
# A063237: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 86 ).

The programs for A063237, the canonical program `A063237.P7134032457122781092` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063237 has offset 1).

The definition of A063237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063237.P7134032457122781092

`a(n-2)+14` with `a(0)=4, a(1)=11, a(2)=17`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063237

/-- `a(n-2)+14` -/
def P7134032457122781092.Spec : Prop :=
  ∀ n, (P7134032457122781092.a n : ℤ) = A063237 (n + 1)

theorem P7134032457122781092.correct : P7134032457122781092.Spec := by
  intro n
  simp only [A063237, Nat.add_sub_cancel]

end A063237

/-! ## A063237.P17683478703662207743

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=7, a(2)=6, a(3)=8`
-/

namespace A063237.P17683478703662207743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 7, 6, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063237.P17683478703662207743

namespace A063237

/-- `∑[abs(a(n-2))]` -/
def P17683478703662207743.Spec : Prop :=
  ∀ n, (P17683478703662207743.a n : ℤ) = A063237 (n + 1)

end A063237

/-! ## A063237.P6387339610596431179

`∑[14-a(n-1)]` with `a(0)=4, a(1)=7, a(2)=6`
-/

namespace A063237.P6387339610596431179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 7, 6] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063237.P6387339610596431179

namespace A063237

/-- `∑[14-a(n-1)]` -/
def P6387339610596431179.Spec : Prop :=
  ∀ n, P6387339610596431179.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P7312381149450492997

`14*n-a(n-1)` with `a(0)=4, a(1)=11`
-/

namespace A063237.P7312381149450492997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 11] fun n a =>
  (14 * n : ℤ) - a (n - 1)

end

end A063237.P7312381149450492997

namespace A063237

/-- `14*n-a(n-1)` -/
def P7312381149450492997.Spec : Prop :=
  ∀ n, P7312381149450492997.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P13752173753201841372

`Δ[floor((2/acot(n))²)]-or(1, n)`
-/

namespace A063237.P13752173753201841372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.lor 1 n : ℤ)

end

end A063237.P13752173753201841372

namespace A063237

/-- `Δ[floor((2/acot(n))²)]-or(1, n)` -/
def P13752173753201841372.Spec : Prop :=
  ∀ n, P13752173753201841372.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P16094765626386388670

`7*n+4-char[2*(n+1)]`
-/

namespace A063237.P16094765626386388670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 4 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063237.P16094765626386388670

namespace A063237

/-- `7*n+4-char[2*(n+1)]` -/
def P16094765626386388670.Spec : Prop :=
  ∀ n, P16094765626386388670.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P17404329875196257884

`∑[9-A007318(a(n-1))]` with `a(0)=4`
-/

namespace A063237.P17404329875196257884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  9 - A007318 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063237.P17404329875196257884

namespace A063237

/-- `∑[9-A007318(a(n-1))]` -/
def P17404329875196257884.Spec : Prop :=
  ∀ n, P17404329875196257884.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P7667339605219005051

`Δ[or(1, A005897(n)+n²)]/2`
-/

namespace A063237.P7667339605219005051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005897 n + (n ^ 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A063237.P7667339605219005051

namespace A063237

/-- `Δ[or(1, A005897(n)+n²)]/2` -/
def P7667339605219005051.Spec : Prop :=
  ∀ n, P7667339605219005051.a n = (A063237 (n + 1) : ℚ)

end A063237

/-! ## A063237.P6282183225370726495

`Δ[A008253(n)+n²]`
-/

namespace A063237.P6282183225370726495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063237.P6282183225370726495

namespace A063237

/-- `Δ[A008253(n)+n²]` -/
def P6282183225370726495.Spec : Prop :=
  ∀ n, P6282183225370726495.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P11546690835128663839

`Δ[A009946(n)-n²]`
-/

namespace A063237.P11546690835128663839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063237.P11546690835128663839

namespace A063237

/-- `Δ[A009946(n)-n²]` -/
def P11546690835128663839.Spec : Prop :=
  ∀ n, P11546690835128663839.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P13797328245849680986

`Δ[A003682(2*n+1)-Δ[A005232(2*n)]]`
-/

namespace A063237.P13797328245849680986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003682 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063237.P13797328245849680986

namespace A063237

/-- `Δ[A003682(2*n+1)-Δ[A005232(2*n)]]` -/
def P13797328245849680986.Spec : Prop :=
  ∀ n, P13797328245849680986.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P5602391999364319084

`A223134(A047383(n+1))`
-/

namespace A063237.P5602391999364319084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A047383 (n + 1)).toNat

end

end A063237.P5602391999364319084

namespace A063237

/-- `A223134(A047383(n+1))` -/
def P5602391999364319084.Spec : Prop :=
  ∀ n, P5602391999364319084.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P5109634011109694259

`A004281(A047355(n+2))`
-/

namespace A063237.P5109634011109694259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A047355 (n + 2)).toNat

end

end A063237.P5109634011109694259

namespace A063237

/-- `A004281(A047355(n+2))` -/
def P5109634011109694259.Spec : Prop :=
  ∀ n, P5109634011109694259.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P8504435050247246969

`∩[A047341(n+1), A223134(n)]`
-/

namespace A063237.P8504435050247246969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063237.P8504435050247246969

namespace A063237

/-- `∩[A047341(n+1), A223134(n)]` -/
def P8504435050247246969.Spec : Prop :=
  ∀ n, (P8504435050247246969.a n : ℤ) = A063237 (n + 1)

end A063237

/-! ## A063237.P8322257704794185249

`∩[A047341(n+1), A326494(n)]`
-/

namespace A063237.P8322257704794185249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063237.P8322257704794185249

namespace A063237

/-- `∩[A047341(n+1), A326494(n)]` -/
def P8322257704794185249.Spec : Prop :=
  ∀ n, (P8322257704794185249.a n : ℤ) = A063237 (n + 1)

end A063237

/-! ## A063237.P9495149882817793522

`A004276(A047346(n+2))`
-/

namespace A063237.P9495149882817793522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A047346 (n + 2)).toNat

end

end A063237.P9495149882817793522

namespace A063237

/-- `A004276(A047346(n+2))` -/
def P9495149882817793522.Spec : Prop :=
  ∀ n, P9495149882817793522.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P12476204261019893675

`A047305(A063225(n+1))`
-/

namespace A063237.P12476204261019893675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047305 (A063225 (n + 1)).toNat

end

end A063237.P12476204261019893675

namespace A063237

/-- `A047305(A063225(n+1))` -/
def P12476204261019893675.Spec : Prop :=
  ∀ n, P12476204261019893675.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P4808908993177088572

`A047305(A063097(n+1)+1)`
-/

namespace A063237.P4808908993177088572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047305 (A063097 (n + 1) + 1).toNat

end

end A063237.P4808908993177088572

namespace A063237

/-- `A047305(A063097(n+1)+1)` -/
def P4808908993177088572.Spec : Prop :=
  ∀ n, P4808908993177088572.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P5048279829381929146

`A009056(A063094(n+1))`
-/

namespace A063237.P5048279829381929146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A063094 (n + 1)).toNat

end

end A063237.P5048279829381929146

namespace A063237

/-- `A009056(A063094(n+1))` -/
def P5048279829381929146.Spec : Prop :=
  ∀ n, P5048279829381929146.a n = A063237 (n + 1)

end A063237

/-! ## A063237.P14187409075526575570

`A020725(A063109(n+1))`
-/

namespace A063237.P14187409075526575570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A063109 (n + 1)).toNat

end

end A063237.P14187409075526575570

namespace A063237

/-- `A020725(A063109(n+1))` -/
def P14187409075526575570.Spec : Prop :=
  ∀ n, P14187409075526575570.a n = A063237 (n + 1)

end A063237

/-!
# A063238: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 87 ).

The programs for A063238, the canonical program `A063238.P11345210530109085450` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063238 has offset 1).

The definition of A063238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063238.P11345210530109085450

`∑[floor(a(n-3))]` with `a(0)=5, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063238

/-- `∑[floor(a(n-3))]` -/
def P11345210530109085450.Spec : Prop :=
  ∀ n, (P11345210530109085450.a n : ℤ) = A063238 (n + 1)

theorem P11345210530109085450.correct : P11345210530109085450.Spec := by
  intro n
  simp only [A063238, Nat.add_sub_cancel]

end A063238

/-! ## A063238.P1358050853605273376

`A063107(n+1)+2`
-/

namespace A063238.P1358050853605273376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) + 2

end

end A063238.P1358050853605273376

namespace A063238

/-- `A063107(n+1)+2` -/
def P1358050853605273376.Spec : Prop :=
  ∀ n, P1358050853605273376.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P13287190085162696745

`A063117(n+1)+4`
-/

namespace A063238.P13287190085162696745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063117 (n + 1) + 4

end

end A063238.P13287190085162696745

namespace A063238

/-- `A063117(n+1)+4` -/
def P13287190085162696745.Spec : Prop :=
  ∀ n, P13287190085162696745.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P7367852860090116945

`A063135(n+1)-2*n`
-/

namespace A063238.P7367852860090116945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) - (2 * n : ℤ)

end

end A063238.P7367852860090116945

namespace A063238

/-- `A063135(n+1)-2*n` -/
def P7367852860090116945.Spec : Prop :=
  ∀ n, P7367852860090116945.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P6263596483008683958

`A063125(n+1)-4*n`
-/

namespace A063238.P6263596483008683958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063125 (n + 1) - (4 * n : ℤ)

end

end A063238.P6263596483008683958

namespace A063238

/-- `A063125(n+1)-4*n` -/
def P6263596483008683958.Spec : Prop :=
  ∀ n, P6263596483008683958.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P3456017246660679800

`Δ[A053799(n)+(2*n)²]`
-/

namespace A063238.P3456017246660679800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n + ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063238.P3456017246660679800

namespace A063238

/-- `Δ[A053799(n)+(2*n)²]` -/
def P3456017246660679800.Spec : Prop :=
  ∀ n, P3456017246660679800.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P8924842236204472751

`A063111(n+1)+2*(n+1)`
-/

namespace A063238.P8924842236204472751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) + (2 * (n + 1) : ℤ)

end

end A063238.P8924842236204472751

namespace A063238

/-- `A063111(n+1)+2*(n+1)` -/
def P8924842236204472751.Spec : Prop :=
  ∀ n, P8924842236204472751.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P10184511440972886593

`A063089(n+1)+4*(n+1)`
-/

namespace A063238.P10184511440972886593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + (4 * (n + 1) : ℤ)

end

end A063238.P10184511440972886593

namespace A063238

/-- `A063089(n+1)+4*(n+1)` -/
def P10184511440972886593.Spec : Prop :=
  ∀ n, P10184511440972886593.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P17781196837331113042

`A063200(n+1)+8*n+4`
-/

namespace A063238.P17781196837331113042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + (8 * n + 4 : ℤ)

end

end A063238.P17781196837331113042

namespace A063238

/-- `A063200(n+1)+8*n+4` -/
def P17781196837331113042.Spec : Prop :=
  ∀ n, P17781196837331113042.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P18212761051453676960

`Δ[A005897(n)]-2*comp[4*n]`
-/

namespace A063238.P18212761051453676960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A063238.P18212761051453676960

namespace A063238

/-- `Δ[A005897(n)]-2*comp[4*n]` -/
def P18212761051453676960.Spec : Prop :=
  ∀ n, P18212761051453676960.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P3638686499754050241

`A063218(n+1)+2*(2*n+1)`
-/

namespace A063238.P3638686499754050241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) + (2 * (2 * n + 1) : ℤ)

end

end A063238.P3638686499754050241

namespace A063238

/-- `A063218(n+1)+2*(2*n+1)` -/
def P3638686499754050241.Spec : Prop :=
  ∀ n, P3638686499754050241.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P8650320762055918809

`A017113(n)+Δ[A053799(n)]`
-/

namespace A063238.P8650320762055918809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n + (f1 (n + 1) - f1 n)

end

end A063238.P8650320762055918809

namespace A063238

/-- `A017113(n)+Δ[A053799(n)]` -/
def P8650320762055918809.Spec : Prop :=
  ∀ n, P8650320762055918809.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P11673317549982493011

`A063099(n+1)+A004767(n)`
-/

namespace A063238.P11673317549982493011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) + A004767 n

end

end A063238.P11673317549982493011

namespace A063238

/-- `A063099(n+1)+A004767(n)` -/
def P11673317549982493011.Spec : Prop :=
  ∀ n, P11673317549982493011.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P2025475733392026207

`A063087(n+1)+A016957(n)`
-/

namespace A063238.P2025475733392026207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + A016957 n

end

end A063238.P2025475733392026207

namespace A063238

/-- `A063087(n+1)+A016957(n)` -/
def P2025475733392026207.Spec : Prop :=
  ∀ n, P2025475733392026207.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P18360530226294148753

`A063147(n+1)-A016813(n)`
-/

namespace A063238.P18360530226294148753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - A016813 n

end

end A063238.P18360530226294148753

namespace A063238

/-- `A063147(n+1)-A016813(n)` -/
def P18360530226294148753.Spec : Prop :=
  ∀ n, P18360530226294148753.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P6276027256752697732

`A063161(n+1)-A017569(n)`
-/

namespace A063238.P6276027256752697732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063161 (n + 1) - A017569 n

end

end A063238.P6276027256752697732

namespace A063238

/-- `A063161(n+1)-A017569(n)` -/
def P6276027256752697732.Spec : Prop :=
  ∀ n, P6276027256752697732.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P16396556803805617658

`A051062(n)-A063209(n+1)`
-/

namespace A063238.P16396556803805617658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n - A063209 (n + 1)

end

end A063238.P16396556803805617658

namespace A063238

/-- `A051062(n)-A063209(n+1)` -/
def P16396556803805617658.Spec : Prop :=
  ∀ n, P16396556803805617658.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P17003034888406225834

`A147587(n)-A063205(n+1)`
-/

namespace A063238.P17003034888406225834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n - A063205 (n + 1)

end

end A063238.P17003034888406225834

namespace A063238

/-- `A147587(n)-A063205(n+1)` -/
def P17003034888406225834.Spec : Prop :=
  ∀ n, P17003034888406225834.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P4545016406427253588

`Δ[A053799(n)+A002939(n)]+2`
-/

namespace A063238.P4545016406427253588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n + A002939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A063238.P4545016406427253588

namespace A063238

/-- `Δ[A053799(n)+A002939(n)]+2` -/
def P4545016406427253588.Spec : Prop :=
  ∀ n, P4545016406427253588.a n = A063238 (n + 1)

end A063238

/-! ## A063238.P14576539582664501054

`A063105(n+1)+A047270(n+1)`
-/

namespace A063238.P14576539582664501054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) + A047270 (n + 1)

end

end A063238.P14576539582664501054

namespace A063238

/-- `A063105(n+1)+A047270(n+1)` -/
def P14576539582664501054.Spec : Prop :=
  ∀ n, P14576539582664501054.a n = A063238 (n + 1)

end A063238

/-!
# A063240: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 89 ).

The programs for A063240, the canonical program `A063240.P17061771090218456608` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063240 has offset 1).

The definition of A063240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063240.P17061771090218456608

`Δ[8*n²-A053799(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063240

/-- `Δ[8*n²-A053799(n)]` -/
def P17061771090218456608.Spec : Prop :=
  ∀ n, P17061771090218456608.a n = A063240 (n + 1)

theorem P17061771090218456608.correct : P17061771090218456608.Spec := by
  intro n
  simp only [A063240, Nat.add_sub_cancel]

end A063240

/-! ## A063240.P16999126854259420024

`A063219(n+1)+6*n+3`
-/

namespace A063240.P16999126854259420024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063219 (n + 1) + (6 * n + 3 : ℤ)

end

end A063240.P16999126854259420024

namespace A063240

/-- `A063219(n+1)+6*n+3` -/
def P16999126854259420024.Spec : Prop :=
  ∀ n, P16999126854259420024.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P1131548007589097009

`A063209(n+1)+8*n+4`
-/

namespace A063240.P1131548007589097009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063209 (n + 1) + (8 * n + 4 : ℤ)

end

end A063240.P1131548007589097009

namespace A063240

/-- `A063209(n+1)+8*n+4` -/
def P1131548007589097009.Spec : Prop :=
  ∀ n, P1131548007589097009.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P15611110686169506188

`A063235(n+1)+2*round(n/2)`
-/

namespace A063240.P15611110686169506188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063235 (n + 1) + 2 * SequenceMachineLib.roundAway ((n : ℚ) / 2)

end

end A063240.P15611110686169506188

namespace A063240

/-- `A063235(n+1)+2*round(n/2)` -/
def P15611110686169506188.Spec : Prop :=
  ∀ n, P15611110686169506188.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P4035078796131439849

`A051062(n)-Δ[A053799(n)]`
-/

namespace A063240.P4035078796131439849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n - (f1 (n + 1) - f1 n)

end

end A063240.P4035078796131439849

namespace A063240

/-- `A051062(n)-Δ[A053799(n)]` -/
def P4035078796131439849.Spec : Prop :=
  ∀ n, P4035078796131439849.a n = A063240 (n + 1)

theorem P4035078796131439849.correct : P4035078796131439849.Spec := by
  intro n
  simp only [A063240, Nat.add_sub_cancel, A063240.P4035078796131439849.f1, A063240.P4035078796131439849.a, A063240.P17061771090218456608.f1, A063240.P17061771090218456608.a, A051062, A051062.P11177069363644223625.a, A053799, A053799.P904661431918655857.a, A000982, A000982.P7286196366017051516.a, A008749, A008749.P8595837798728956858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063240

/-! ## A063240.P14450478647052316283

`A063205(n+1)+A017329(n)`
-/

namespace A063240.P14450478647052316283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063205 (n + 1) + A017329 n

end

end A063240.P14450478647052316283

namespace A063240

/-- `A063205(n+1)+A017329(n)` -/
def P14450478647052316283.Spec : Prop :=
  ∀ n, P14450478647052316283.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P2782950334000908714

`A051062(n)-A063200(n+1)`
-/

namespace A063240.P2782950334000908714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n - A063200 (n + 1)

end

end A063240.P2782950334000908714

namespace A063240

/-- `A051062(n)-A063200(n+1)` -/
def P2782950334000908714.Spec : Prop :=
  ∀ n, P2782950334000908714.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P17164081965038654774

`2*A017113(n)-Δ[A053799(n)]`
-/

namespace A063240.P17164081965038654774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017113 n - (f1 (n + 1) - f1 n)

end

end A063240.P17164081965038654774

namespace A063240

/-- `2*A017113(n)-Δ[A053799(n)]` -/
def P17164081965038654774.Spec : Prop :=
  ∀ n, P17164081965038654774.a n = A063240 (n + 1)

theorem P17164081965038654774.correct : P17164081965038654774.Spec := by
  intro n
  simp only [A063240, Nat.add_sub_cancel, A063240.P17164081965038654774.f1, A063240.P17164081965038654774.a, A063240.P17061771090218456608.f1, A063240.P17061771090218456608.a, A017113, A017113.P3624354701485579327.a, A053799, A053799.P904661431918655857.a, A000982, A000982.P7286196366017051516.a, A008749, A008749.P8595837798728956858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063240

/-! ## A063240.P807458858572624918

`A063230(n+1)+A007310(n+1)`
-/

namespace A063240.P807458858572624918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + A007310 (n + 1)

end

end A063240.P807458858572624918

namespace A063240

/-- `A063230(n+1)+A007310(n+1)` -/
def P807458858572624918.Spec : Prop :=
  ∀ n, P807458858572624918.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P11595307316478948042

`A063205(n+1)+A017317(n)+1`
-/

namespace A063240.P11595307316478948042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063205 (n + 1) + (A017317 n + 1)

end

end A063240.P11595307316478948042

namespace A063240

/-- `A063205(n+1)+A017317(n)+1` -/
def P11595307316478948042.Spec : Prop :=
  ∀ n, P11595307316478948042.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P10371345131436035548

`A063233(n+1)+A063212(n+1)`
-/

namespace A063240.P10371345131436035548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (n + 1) + A063212 (n + 1)

end

end A063240.P10371345131436035548

namespace A063240

/-- `A063233(n+1)+A063212(n+1)` -/
def P10371345131436035548.Spec : Prop :=
  ∀ n, P10371345131436035548.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P9711370787410582923

`A063242(n+1)+A063228(n+1)`
-/

namespace A063240.P9711370787410582923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063242 (n + 1) + A063228 (n + 1)

end

end A063240.P9711370787410582923

namespace A063240

/-- `A063242(n+1)+A063228(n+1)` -/
def P9711370787410582923.Spec : Prop :=
  ∀ n, P9711370787410582923.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P18130450310694289901

`A090772(n+1)+A063223(n+1)`
-/

namespace A063240.P18130450310694289901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) + A063223 (n + 1)

end

end A063240.P18130450310694289901

namespace A063240

/-- `A090772(n+1)+A063223(n+1)` -/
def P18130450310694289901.Spec : Prop :=
  ∀ n, P18130450310694289901.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P15911111516198764188

`A113803(n+1)+A063215(n+1)`
-/

namespace A063240.P15911111516198764188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) + A063215 (n + 1)

end

end A063240.P15911111516198764188

namespace A063240

/-- `A113803(n+1)+A063215(n+1)` -/
def P15911111516198764188.Spec : Prop :=
  ∀ n, P15911111516198764188.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P13416279085098444211

`A073762(n+1)-A063238(n+1)`
-/

namespace A063240.P13416279085098444211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (n + 1) - A063238 (n + 1)

end

end A063240.P13416279085098444211

namespace A063240

/-- `A073762(n+1)-A063238(n+1)` -/
def P13416279085098444211.Spec : Prop :=
  ∀ n, P13416279085098444211.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P10709168375041257620

`2*A017113(n)-A063200(n+1)`
-/

namespace A063240.P10709168375041257620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017113 n - A063200 (n + 1)

end

end A063240.P10709168375041257620

namespace A063240

/-- `2*A017113(n)-A063200(n+1)` -/
def P10709168375041257620.Spec : Prop :=
  ∀ n, P10709168375041257620.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P13181042631646939744

`2*A017329(n)-A063218(n+1)`
-/

namespace A063240.P13181042631646939744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017329 n - A063218 (n + 1)

end

end A063240.P13181042631646939744

namespace A063240

/-- `2*A017329(n)-A063218(n+1)` -/
def P13181042631646939744.Spec : Prop :=
  ∀ n, P13181042631646939744.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P10226478619065754941

`5*A016825(n)-A063218(n+1)`
-/

namespace A063240.P10226478619065754941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A016825 n - A063218 (n + 1)

end

end A063240.P10226478619065754941

namespace A063240

/-- `5*A016825(n)-A063218(n+1)` -/
def P10226478619065754941.Spec : Prop :=
  ∀ n, P10226478619065754941.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P1354201896380474681

`A063226(n+2)+A008592(n)-A063195(n+1)`
-/

namespace A063240.P1354201896380474681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 2) + (A008592 n - A063195 (n + 1))

end

end A063240.P1354201896380474681

namespace A063240

/-- `A063226(n+2)+A008592(n)-A063195(n+1)` -/
def P1354201896380474681.Spec : Prop :=
  ∀ n, P1354201896380474681.a n = A063240 (n + 1)

end A063240

/-! ## A063240.P18205796945403427960

`A063203(2*n+1)+A063203(2*(n+1))`
-/

namespace A063240.P18205796945403427960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063203 (2 * n + 1) + A063203 (2 * (n + 1))

end

end A063240.P18205796945403427960

namespace A063240

/-- `A063203(2*n+1)+A063203(2*(n+1))` -/
def P18205796945403427960.Spec : Prop :=
  ∀ n, P18205796945403427960.a n = A063240 (n + 1)

end A063240

/-!
# A063241: Dimension of the space of weight 2n cuspidal newforms for Gamma_0(90).

The programs for A063241, the canonical program `A063241.P6416788700961572868` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063241 has offset 1).

The definition of A063241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063241.P6416788700961572868

`2*(n+1)+4*floor((n+1)/3-1/3)+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063241

/-- `2*(n+1)+4*floor((n+1)/3-1/3)+1` -/
def P6416788700961572868.Spec : Prop :=
  ∀ n, P6416788700961572868.a n = A063241 (n + 1)

theorem P6416788700961572868.correct : P6416788700961572868.Spec := by
  intro n
  simp only [A063241, Nat.add_sub_cancel]

end A063241

/-! ## A063241.P15984515300657150398

`∑[abs(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=6`
-/

namespace A063241.P15984515300657150398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063241.P15984515300657150398

namespace A063241

/-- `∑[abs(a(n-3))]` -/
def P15984515300657150398.Spec : Prop :=
  ∀ n, (P15984515300657150398.a n : ℤ) = A063241 (n + 1)

end A063241

/-! ## A063241.P13938382448211073264

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A063241.P13938382448211073264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063241.P13938382448211073264

namespace A063241

/-- `∑[floor(a(n-3))]` -/
def P13938382448211073264.Spec : Prop :=
  ∀ n, (P13938382448211073264.a n : ℤ) = A063241 (n + 1)

end A063241

/-! ## A063241.P15780156263192505100

`∑[ceil(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A063241.P15780156263192505100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063241.P15780156263192505100

namespace A063241

/-- `∑[ceil(a(n-3))]` -/
def P15780156263192505100.Spec : Prop :=
  ∀ n, (P15780156263192505100.a n : ℤ) = A063241 (n + 1)

end A063241

/-! ## A063241.P5923233418850967576

`∑[a(n-3)%7]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=6`
-/

namespace A063241.P5923233418850967576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063241.P5923233418850967576

namespace A063241

/-- `∑[a(n-3)%7]` -/
def P5923233418850967576.Spec : Prop :=
  ∀ n, (P5923233418850967576.a n : ℤ) = A063241 (n + 1)

end A063241

/-! ## A063241.P7240054916778801111

`∑[∑[ogf((3+2x+2x^2+3x^3)/(1+x+x^2))]]`
-/

namespace A063241.P7240054916778801111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 2, 3] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063241.P7240054916778801111

namespace A063241

/-- `∑[∑[ogf((3+2x+2x^2+3x^3)/(1+x+x^2))]]` -/
def P7240054916778801111.Spec : Prop :=
  ∀ n, P7240054916778801111.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P16467690380993111766

`ogf((3+2x+2x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A063241.P16467690380993111766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 2, 3] [1, -1, 0, -1, 1] n

end

end A063241.P16467690380993111766

namespace A063241

/-- `ogf((3+2x+2x^2+3x^3)/(1-x-x^3+x^4))` -/
def P16467690380993111766.Spec : Prop :=
  ∀ n, P16467690380993111766.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P7365542177294154258

`record[gcd(5, n+2)+2*(n+1)]`
-/

namespace A063241.P7365542177294154258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n + 2) + 2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063241.P7365542177294154258

namespace A063241

/-- `record[gcd(5, n+2)+2*(n+1)]` -/
def P7365542177294154258.Spec : Prop :=
  ∀ n, (P7365542177294154258.a n : ℤ) = A063241 (n + 1)

end A063241

/-! ## A063241.P13968058476594096896

`∩[2*n+1, round(5*n/3)]`
-/

namespace A063241.P13968058476594096896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063241.P13968058476594096896

namespace A063241

/-- `∩[2*n+1, round(5*n/3)]` -/
def P13968058476594096896.Spec : Prop :=
  ∀ n, (P13968058476594096896.a n : ℤ) = A063241 (n + 1)

end A063241

/-! ## A063241.P245414049782173412

`∑[dr(A040436(n))]`
-/

namespace A063241.P245414049782173412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040436 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063241.P245414049782173412

namespace A063241

/-- `∑[dr(A040436(n))]` -/
def P245414049782173412.Spec : Prop :=
  ∀ n, (P245414049782173412.a n : ℤ) = A063241 (n + 1)

end A063241

/-! ## A063241.P16811304645427250388

`∑[and(7, A040118(n))]`
-/

namespace A063241.P16811304645427250388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A040118 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063241.P16811304645427250388

namespace A063241

/-- `∑[and(7, A040118(n))]` -/
def P16811304645427250388.Spec : Prop :=
  ∀ n, P16811304645427250388.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P4294822061424946131

`∪[A017329(n), A063226(n+1)]`
-/

namespace A063241.P4294822061424946131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063241.P4294822061424946131

namespace A063241

/-- `∪[A017329(n), A063226(n+1)]` -/
def P4294822061424946131.Spec : Prop :=
  ∀ n, (P4294822061424946131.a n : ℤ) = A063241 (n + 1)

end A063241

/-! ## A063241.P9052981767523421021

`A063154(n+1)%A063159(n+1)`
-/

namespace A063241.P9052981767523421021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063154 (n + 1)) (A063159 (n + 1))

end

end A063241.P9052981767523421021

namespace A063241

/-- `A063154(n+1)%A063159(n+1)` -/
def P9052981767523421021.Spec : Prop :=
  ∀ n, P9052981767523421021.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P5669365832744738416

`A260181(A004772(n+2))`
-/

namespace A063241.P5669365832744738416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (A004772 (n + 2)).toNat

end

end A063241.P5669365832744738416

namespace A063241

/-- `A260181(A004772(n+2))` -/
def P5669365832744738416.Spec : Prop :=
  ∀ n, P5669365832744738416.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P8892293966869817949

`A260181(A319371(n+2))`
-/

namespace A063241.P8892293966869817949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (A319371 (n + 2)).toNat

end

end A063241.P8892293966869817949

namespace A063241

/-- `A260181(A319371(n+2))` -/
def P8892293966869817949.Spec : Prop :=
  ∀ n, P8892293966869817949.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P17083203349693074851

`filter[A260181(n+1), A379952(#)]`
-/

namespace A063241.P17083203349693074851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A063241.P17083203349693074851

namespace A063241

/-- `filter[A260181(n+1), A379952(#)]` -/
def P17083203349693074851.Spec : Prop :=
  ∀ n, P17083203349693074851.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P8047864343550656925

`A004273(A047202(n+1))`
-/

namespace A063241.P8047864343550656925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047202 (n + 1)).toNat

end

end A063241.P8047864343550656925

namespace A063241

/-- `A004273(A047202(n+1))` -/
def P8047864343550656925.Spec : Prop :=
  ∀ n, P8047864343550656925.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P18218373461339237047

`A144396(A047223(n+1))`
-/

namespace A063241.P18218373461339237047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A047223 (n + 1)).toNat

end

end A063241.P18218373461339237047

namespace A063241

/-- `A144396(A047223(n+1))` -/
def P18218373461339237047.Spec : Prop :=
  ∀ n, P18218373461339237047.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P18421956070214323601

`A004274(A047205(n+2))`
-/

namespace A063241.P18421956070214323601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A047205 (n + 2)).toNat

end

end A063241.P18421956070214323601

namespace A063241

/-- `A004274(A047205(n+2))` -/
def P18421956070214323601.Spec : Prop :=
  ∀ n, P18421956070214323601.a n = A063241 (n + 1)

end A063241

/-! ## A063241.P16245815597248129852

`A187332(A047228(n+1))`
-/

namespace A063241.P16245815597248129852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (A047228 (n + 1)).toNat

end

end A063241.P16245815597248129852

namespace A063241

/-- `A187332(A047228(n+1))` -/
def P16245815597248129852.Spec : Prop :=
  ∀ n, P16245815597248129852.a n = A063241 (n + 1)

end A063241

/-!
# A063242: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 92 ).

The programs for A063242, the canonical program `A063242.P2977745325607408242` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063242 has offset 1).

The definition of A063242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063242.P2977745325607408242

`2*floor(∑[gcd(3, n)/2]+n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063242

/-- `2*floor(∑[gcd(3, n)/2]+n)` -/
def P2977745325607408242.Spec : Prop :=
  ∀ n, P2977745325607408242.a n = A063242 (n + 1)

theorem P2977745325607408242.correct : P2977745325607408242.Spec := by
  intro n
  simp only [A063242, Nat.add_sub_cancel]

end A063242

/-! ## A063242.P10236297702468791867

`∑[gcd(9, ∏{p}[n, #])+3^(n%2)]`
-/

namespace A063242.P10236297702468791867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 (∏ p ∈ Nat.primeFactors (f2 n), p) + 3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063242.P10236297702468791867

namespace A063242

/-- `∑[gcd(9, ∏{p}[n, #])+3^(n%2)]` -/
def P10236297702468791867.Spec : Prop :=
  ∀ n, (P10236297702468791867.a n : ℤ) = A063242 (n + 1)

end A063242

/-! ## A063242.P12953968303960667873

`2*(2*n+1-round(xor(1, n)/6))`
-/

namespace A063242.P12953968303960667873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℤ) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6))

end

end A063242.P12953968303960667873

namespace A063242

/-- `2*(2*n+1-round(xor(1, n)/6))` -/
def P12953968303960667873.Spec : Prop :=
  ∀ n, P12953968303960667873.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P11901503652308208395

`record[and(n, n+3)]+or(1, n+1)+1`
-/

namespace A063242.P11901503652308208395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.lor 1 (n + 1) + 1)

end

end A063242.P11901503652308208395

namespace A063242

/-- `record[and(n, n+3)]+or(1, n+1)+1` -/
def P11901503652308208395.Spec : Prop :=
  ∀ n, (P11901503652308208395.a n : ℤ) = A063242 (n + 1)

end A063242

/-! ## A063242.P14836451403598504622

`and(1, n)+record[and(n, n+3)]+n+2`
-/

namespace A063242.P14836451403598504622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 2))

end

end A063242.P14836451403598504622

namespace A063242

/-- `and(1, n)+record[and(n, n+3)]+n+2` -/
def P14836451403598504622.Spec : Prop :=
  ∀ n, (P14836451403598504622.a n : ℤ) = A063242 (n + 1)

end A063242

/-! ## A063242.P4657736774791642304

`A063212(n+1)+Δ[n²]`
-/

namespace A063242.P4657736774791642304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063212 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063242.P4657736774791642304

namespace A063242

/-- `A063212(n+1)+Δ[n²]` -/
def P4657736774791642304.Spec : Prop :=
  ∀ n, P4657736774791642304.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P16787022576341074039

`2*(A063197(n+1)+n+1)`
-/

namespace A063242.P16787022576341074039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063197 (n + 1) + (n + 1 : ℤ))

end

end A063242.P16787022576341074039

namespace A063242

/-- `2*(A063197(n+1)+n+1)` -/
def P16787022576341074039.Spec : Prop :=
  ∀ n, P16787022576341074039.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P14847574020224925658

`2*(∑[A001222(gcd(n+3, 2*n))]+n)`
-/

namespace A063242.P14847574020224925658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd (n + 3) (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A063242.P14847574020224925658

namespace A063242

/-- `2*(∑[A001222(gcd(n+3, 2*n))]+n)` -/
def P14847574020224925658.Spec : Prop :=
  ∀ n, P14847574020224925658.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P10318981500026713235

`A047336(n+1)+A008612(n)`
-/

namespace A063242.P10318981500026713235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1) + A008612 n

end

end A063242.P10318981500026713235

namespace A063242

/-- `A047336(n+1)+A008612(n)` -/
def P10318981500026713235.Spec : Prop :=
  ∀ n, P10318981500026713235.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P8508428687700594673

`A047202(n+1)+A014601(n)`
-/

namespace A063242.P8508428687700594673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (n + 1) + A014601 n

end

end A063242.P8508428687700594673

namespace A063242

/-- `A047202(n+1)+A014601(n)` -/
def P8508428687700594673.Spec : Prop :=
  ∀ n, P8508428687700594673.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P9333949122769798786

`A063203(n+1)+A062157(n)`
-/

namespace A063242.P9333949122769798786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063203 (n + 1) + A062157 n

end

end A063242.P9333949122769798786

namespace A063242

/-- `A063203(n+1)+A062157(n)` -/
def P9333949122769798786.Spec : Prop :=
  ∀ n, P9333949122769798786.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P5991229650118601548

`A110654(n)+A063217(n+1)`
-/

namespace A063242.P5991229650118601548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A063217 (n + 1)

end

end A063242.P5991229650118601548

namespace A063242

/-- `A110654(n)+A063217(n+1)` -/
def P5991229650118601548.Spec : Prop :=
  ∀ n, P5991229650118601548.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P1881329354844566237

`A017593(n)-A063246(n+1)`
-/

namespace A063242.P1881329354844566237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n - A063246 (n + 1)

end

end A063242.P1881329354844566237

namespace A063242

/-- `A017593(n)-A063246(n+1)` -/
def P1881329354844566237.Spec : Prop :=
  ∀ n, P1881329354844566237.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P16775111570937811988

`2*(A005408(n)-A008615(n))`
-/

namespace A063242.P16775111570937811988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005408 n - A008615 n)

end

end A063242.P16775111570937811988

namespace A063242

/-- `2*(A005408(n)-A008615(n))` -/
def P16775111570937811988.Spec : Prop :=
  ∀ n, P16775111570937811988.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P823987443998867901

`A016825(n)-2*A008615(n)`
-/

namespace A063242.P823987443998867901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - 2 * A008615 n

end

end A063242.P823987443998867901

namespace A063242

/-- `A016825(n)-2*A008615(n)` -/
def P823987443998867901.Spec : Prop :=
  ∀ n, P823987443998867901.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P2581323336285572460

`2*(A002264(n)+∑[A000034(n)])`
-/

namespace A063242.P2581323336285572460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002264 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063242.P2581323336285572460

namespace A063242

/-- `2*(A002264(n)+∑[A000034(n)])` -/
def P2581323336285572460.Spec : Prop :=
  ∀ n, P2581323336285572460.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P14814186950623651439

`A047223(n+1)+A014601(n)+1`
-/

namespace A063242.P14814186950623651439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047223 (n + 1) + (A014601 n + 1)

end

end A063242.P14814186950623651439

namespace A063242

/-- `A047223(n+1)+A014601(n)+1` -/
def P14814186950623651439.Spec : Prop :=
  ∀ n, P14814186950623651439.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P3461419324159340036

`A130823(n+1)+A007310(n+1)`
-/

namespace A063242.P3461419324159340036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 1) + A007310 (n + 1)

end

end A063242.P3461419324159340036

namespace A063242

/-- `A130823(n+1)+A007310(n+1)` -/
def P3461419324159340036.Spec : Prop :=
  ∀ n, P3461419324159340036.a n = A063242 (n + 1)

end A063242

/-! ## A063242.P2494558868351175860

`A063231(n+1)-A047537(n+1)`
-/

namespace A063242.P2494558868351175860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063231 (n + 1) - A047537 (n + 1)

end

end A063242.P2494558868351175860

namespace A063242

/-- `A063231(n+1)-A047537(n+1)` -/
def P2494558868351175860.Spec : Prop :=
  ∀ n, P2494558868351175860.a n = A063242 (n + 1)

end A063242

/-!
# A063244: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 94 ).

The programs for A063244, the canonical program `A063244.P3216975161231170830` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063244 has offset 1).

The definition of A063244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063244.P3216975161231170830

`4*n+A063214(n+1)+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063244

/-- `4*n+A063214(n+1)+2` -/
def P3216975161231170830.Spec : Prop :=
  ∀ n, P3216975161231170830.a n = A063244 (n + 1)

theorem P3216975161231170830.correct : P3216975161231170830.Spec := by
  intro n
  simp only [A063244, Nat.add_sub_cancel]

end A063244

/-! ## A063244.P7853382047072577882

`A063202(n+1)+6*n+3`
-/

namespace A063244.P7853382047072577882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063202 (n + 1) + (6 * n + 3 : ℤ)

end

end A063244.P7853382047072577882

namespace A063244

/-- `A063202(n+1)+6*n+3` -/
def P7853382047072577882.Spec : Prop :=
  ∀ n, P7853382047072577882.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P5113842849230584883

`A063220(n+1)+and(1, n)+n`
-/

namespace A063244.P5113842849230584883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1) + (Nat.land 1 n + n : ℤ)

end

end A063244.P5113842849230584883

namespace A063244

/-- `A063220(n+1)+and(1, n)+n` -/
def P5113842849230584883.Spec : Prop :=
  ∀ n, P5113842849230584883.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P5527423094100378099

`A063214(n+1)+A016825(n)`
-/

namespace A063244.P5527423094100378099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) + A016825 n

end

end A063244.P5527423094100378099

namespace A063244

/-- `A063214(n+1)+A016825(n)` -/
def P5527423094100378099.Spec : Prop :=
  ∀ n, P5527423094100378099.a n = A063244 (n + 1)

theorem P5527423094100378099.correct : P5527423094100378099.Spec := by
  intro n
  simp only [A063244, Nat.add_sub_cancel, A063244.P5527423094100378099.a, A063244.P3216975161231170830.a, A016825, A016825.P4712696052905976233.a, A063214, A063214.P10588406300896630407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063244

/-! ## A063244.P13963642428642457426

`A063222(n+1)+A007310(n+1)`
-/

namespace A063244.P13963642428642457426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) + A007310 (n + 1)

end

end A063244.P13963642428642457426

namespace A063244

/-- `A063222(n+1)+A007310(n+1)` -/
def P13963642428642457426.Spec : Prop :=
  ∀ n, P13963642428642457426.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P3302300107359547576

`A113803(n+1)+A063198(n+1)`
-/

namespace A063244.P3302300107359547576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) + A063198 (n + 1)

end

end A063244.P3302300107359547576

namespace A063244

/-- `A113803(n+1)+A063198(n+1)` -/
def P3302300107359547576.Spec : Prop :=
  ∀ n, P3302300107359547576.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P8733216809050795783

`A063236(n+1)-A047235(n+1)`
-/

namespace A063244.P8733216809050795783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063236 (n + 1) - A047235 (n + 1)

end

end A063244.P8733216809050795783

namespace A063244

/-- `A063236(n+1)-A047235(n+1)` -/
def P8733216809050795783.Spec : Prop :=
  ∀ n, P8733216809050795783.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P7718643162482011409

`A063129(n+1)-A047623(n+1)`
-/

namespace A063244.P7718643162482011409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063129 (n + 1) - A047623 (n + 1)

end

end A063244.P7718643162482011409

namespace A063244

/-- `A063129(n+1)-A047623(n+1)` -/
def P7718643162482011409.Spec : Prop :=
  ∀ n, P7718643162482011409.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P16118598622563727155

`A063214(n+1)-A005843(n+1)+A016969(n)-1`
-/

namespace A063244.P16118598622563727155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) - A005843 (n + 1) + (A016969 n - 1)

end

end A063244.P16118598622563727155

namespace A063244

/-- `A063214(n+1)-A005843(n+1)+A016969(n)-1` -/
def P16118598622563727155.Spec : Prop :=
  ∀ n, P16118598622563727155.a n = A063244 (n + 1)

theorem P16118598622563727155.correct : P16118598622563727155.Spec := by
  intro n
  simp only [A063244, Nat.add_sub_cancel, A063244.P16118598622563727155.a, A063244.P3216975161231170830.a, A005843, A005843.P3167286115683555970.a, A016969, A016969.P9377817521032485226.a, A063214, A063214.P10588406300896630407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063244

/-! ## A063244.P2716532218313671567

`A063214(n+1)+Δ[A001105(n)]`
-/

namespace A063244.P2716532218313671567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) + (f1 (n + 1) - f1 n)

end

end A063244.P2716532218313671567

namespace A063244

/-- `A063214(n+1)+Δ[A001105(n)]` -/
def P2716532218313671567.Spec : Prop :=
  ∀ n, P2716532218313671567.a n = A063244 (n + 1)

theorem P2716532218313671567.correct : P2716532218313671567.Spec := by
  intro n
  simp only [A063244, Nat.add_sub_cancel, A063244.P2716532218313671567.f1, A063244.P2716532218313671567.a, A063244.P3216975161231170830.a, A001105, A001105.P6098599260439307493.a, A063214, A063214.P10588406300896630407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063244

/-! ## A063244.P16854382334623624731

`A063214(n+1)+Δ[A058331(n)]`
-/

namespace A063244.P16854382334623624731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) + (f1 (n + 1) - f1 n)

end

end A063244.P16854382334623624731

namespace A063244

/-- `A063214(n+1)+Δ[A058331(n)]` -/
def P16854382334623624731.Spec : Prop :=
  ∀ n, P16854382334623624731.a n = A063244 (n + 1)

theorem P16854382334623624731.correct : P16854382334623624731.Spec := by
  intro n
  simp only [A063244, Nat.add_sub_cancel, A063244.P16854382334623624731.f1, A063244.P16854382334623624731.a, A063244.P3216975161231170830.a, A058331, A058331.P11448505833250118096.a, A063214, A063214.P10588406300896630407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063244

/-! ## A063244.P747617905563741653

`A063283(2*n+3)+(12*n+6)/2`
-/

namespace A063244.P747617905563741653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063283 (2 * n + 3) : ℚ) + (12 * n + 6 : ℚ) / 2

end

end A063244.P747617905563741653

namespace A063244

/-- `A063283(2*n+3)+(12*n+6)/2` -/
def P747617905563741653.Spec : Prop :=
  ∀ n, P747617905563741653.a n = (A063244 (n + 1) : ℚ)

end A063244

/-! ## A063244.P8571241371363087134

`A063299(2*n+3)-(12*n+6)/2`
-/

namespace A063244.P8571241371363087134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063299 (2 * n + 3) : ℚ) - (12 * n + 6 : ℚ) / 2

end

end A063244.P8571241371363087134

namespace A063244

/-- `A063299(2*n+3)-(12*n+6)/2` -/
def P8571241371363087134.Spec : Prop :=
  ∀ n, P8571241371363087134.a n = (A063244 (n + 1) : ℚ)

end A063244

/-! ## A063244.P17682100650070872341

`A063214(n+1)+A005843(n+1+n)`
-/

namespace A063244.P17682100650070872341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) + A005843 (n + 1 + n)

end

end A063244.P17682100650070872341

namespace A063244

/-- `A063214(n+1)+A005843(n+1+n)` -/
def P17682100650070872341.Spec : Prop :=
  ∀ n, P17682100650070872341.a n = A063244 (n + 1)

theorem P17682100650070872341.correct : P17682100650070872341.Spec := by
  intro n
  simp only [A063244, Nat.add_sub_cancel, A063244.P17682100650070872341.a, A063244.P3216975161231170830.a, A005843, A005843.P3167286115683555970.a, A063214, A063214.P10588406300896630407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063244

/-! ## A063244.P12923432927298970490

`A063295(2*n+3)+1-A005843(n+1)`
-/

namespace A063244.P12923432927298970490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (2 * n + 3) + (1 - A005843 (n + 1))

end

end A063244.P12923432927298970490

namespace A063244

/-- `A063295(2*n+3)+1-A005843(n+1)` -/
def P12923432927298970490.Spec : Prop :=
  ∀ n, P12923432927298970490.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P16856307639450379867

`A063319(2*n+3)-A008600(2*n+1)`
-/

namespace A063244.P16856307639450379867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (2 * n + 3) - A008600 (2 * n + 1)

end

end A063244.P16856307639450379867

namespace A063244

/-- `A063319(2*n+3)-A008600(2*n+1)` -/
def P16856307639450379867.Spec : Prop :=
  ∀ n, P16856307639450379867.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P3671516748063601140

`A063287(2*n+3)-2*A001489(2*n+1)`
-/

namespace A063244.P3671516748063601140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (2 * n + 3) - 2 * A001489 (2 * n + 1)

end

end A063244.P3671516748063601140

namespace A063244

/-- `A063287(2*n+3)-2*A001489(2*n+1)` -/
def P3671516748063601140.Spec : Prop :=
  ∀ n, P3671516748063601140.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P857445931595123887

`A063335(2*n+3)-2*A008600(2*n+1)`
-/

namespace A063244.P857445931595123887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (2 * n + 3) - 2 * A008600 (2 * n + 1)

end

end A063244.P857445931595123887

namespace A063244

/-- `A063335(2*n+3)-2*A008600(2*n+1)` -/
def P857445931595123887.Spec : Prop :=
  ∀ n, P857445931595123887.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P7263402127961452760

`10*n+5+A063307(2*n+3)-A008595(2*n+1)`
-/

namespace A063244.P7263402127961452760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 5 : ℤ) + (A063307 (2 * n + 3) - A008595 (2 * n + 1))

end

end A063244.P7263402127961452760

namespace A063244

/-- `10*n+5+A063307(2*n+3)-A008595(2*n+1)` -/
def P7263402127961452760.Spec : Prop :=
  ∀ n, P7263402127961452760.a n = A063244 (n + 1)

end A063244

/-! ## A063244.P7010170413866008911

`A004278(4*(n+1)-A008612(n))`
-/

namespace A063244.P7010170413866008911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 ((4 * (n + 1) : ℤ) - A008612 n).toNat

end

end A063244.P7010170413866008911

namespace A063244

/-- `A004278(4*(n+1)-A008612(n))` -/
def P7010170413866008911.Spec : Prop :=
  ∀ n, P7010170413866008911.a n = A063244 (n + 1)

end A063244

/-!
# A063245: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 98 ).

The programs for A063245, the canonical program `A063245.P12587339197299949899` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063245 has offset 1).

The definition of A063245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063245.P12587339197299949899

`or(1, 7*n)+3-Δ[ceil(n²/12)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063245

/-- `or(1, 7*n)+3-Δ[ceil(n²/12)]` -/
def P12587339197299949899.Spec : Prop :=
  ∀ n, P12587339197299949899.a n = A063245 (n + 1)

theorem P12587339197299949899.correct : P12587339197299949899.Spec := by
  intro n
  simp only [A063245, Nat.add_sub_cancel]

end A063245

/-! ## A063245.P13885478993035046279

`∑[dr(7*A010213(n))]`
-/

namespace A063245.P13885478993035046279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (7 * A010213 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063245.P13885478993035046279

namespace A063245

/-- `∑[dr(7*A010213(n))]` -/
def P13885478993035046279.Spec : Prop :=
  ∀ n, (P13885478993035046279.a n : ℤ) = A063245 (n + 1)

end A063245

/-! ## A063245.P698285718750900645

`∑[dr(7*A040926(n))]`
-/

namespace A063245.P698285718750900645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (7 * A040926 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063245.P698285718750900645

namespace A063245

/-- `∑[dr(7*A040926(n))]` -/
def P698285718750900645.Spec : Prop :=
  ∀ n, (P698285718750900645.a n : ℤ) = A063245 (n + 1)

end A063245

/-! ## A063245.P18308262056217082022

`∑[dr(9-A040434(n))]`
-/

namespace A063245.P18308262056217082022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (9 - A040434 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063245.P18308262056217082022

namespace A063245

/-- `∑[dr(9-A040434(n))]` -/
def P18308262056217082022.Spec : Prop :=
  ∀ n, (P18308262056217082022.a n : ℤ) = A063245 (n + 1)

end A063245

/-! ## A063245.P12149252076267698246

`A063201(n+1)+A016945(n)`
-/

namespace A063245.P12149252076267698246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063201 (n + 1) + A016945 n

end

end A063245.P12149252076267698246

namespace A063245

/-- `A063201(n+1)+A016945(n)` -/
def P12149252076267698246.Spec : Prop :=
  ∀ n, P12149252076267698246.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P2319997412726498001

`A114119(n)+A063099(n+1)`
-/

namespace A063245.P2319997412726498001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n + A063099 (n + 1)

end

end A063245.P2319997412726498001

namespace A063245

/-- `A114119(n)+A063099(n+1)` -/
def P2319997412726498001.Spec : Prop :=
  ∀ n, P2319997412726498001.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P8575635729510776688

`A017329(n)-A063217(n+1)`
-/

namespace A063245.P8575635729510776688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A063217 (n + 1)

end

end A063245.P8575635729510776688

namespace A063245

/-- `A017329(n)-A063217(n+1)` -/
def P8575635729510776688.Spec : Prop :=
  ∀ n, P8575635729510776688.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P1263436327520715441

`A113804(n+1)-A008612(n)`
-/

namespace A063245.P1263436327520715441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1) - A008612 n

end

end A063245.P1263436327520715441

namespace A063245

/-- `A113804(n+1)-A008612(n)` -/
def P1263436327520715441.Spec : Prop :=
  ∀ n, P1263436327520715441.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P17547267324201023503

`A063213(n+1)+A047385(n+1)`
-/

namespace A063245.P17547267324201023503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A047385 (n + 1)

end

end A063245.P17547267324201023503

namespace A063245

/-- `A063213(n+1)+A047385(n+1)` -/
def P17547267324201023503.Spec : Prop :=
  ∀ n, P17547267324201023503.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P7113109957937232837

`A299647(n+1)+A063224(n+1)`
-/

namespace A063245.P7113109957937232837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299647 (n + 1) + A063224 (n + 1)

end

end A063245.P7113109957937232837

namespace A063245

/-- `A299647(n+1)+A063224(n+1)` -/
def P7113109957937232837.Spec : Prop :=
  ∀ n, P7113109957937232837.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P4871134478418175920

`A063246(n+1)-A001651(n+1)`
-/

namespace A063245.P4871134478418175920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063246 (n + 1) - A001651 (n + 1)

end

end A063245.P4871134478418175920

namespace A063245

/-- `A063246(n+1)-A001651(n+1)` -/
def P4871134478418175920.Spec : Prop :=
  ∀ n, P4871134478418175920.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P10875374214563309690

`A063111(n+1)-A140106(n+1)`
-/

namespace A063245.P10875374214563309690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) - A140106 (n + 1)

end

end A063245.P10875374214563309690

namespace A063245

/-- `A063111(n+1)-A140106(n+1)` -/
def P10875374214563309690.Spec : Prop :=
  ∀ n, P10875374214563309690.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P5073260523601813152

`A155095(n+1)-A063212(n+1)`
-/

namespace A063245.P5073260523601813152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155095 (n + 1) - A063212 (n + 1)

end

end A063245.P5073260523601813152

namespace A063245

/-- `A155095(n+1)-A063212(n+1)` -/
def P5073260523601813152.Spec : Prop :=
  ∀ n, P5073260523601813152.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P7953685314060616967

`A047280(n+1)+A047281(n+1)+n`
-/

namespace A063245.P7953685314060616967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (n + 1) + (A047281 (n + 1) + (n : ℤ))

end

end A063245.P7953685314060616967

namespace A063245

/-- `A047280(n+1)+A047281(n+1)+n` -/
def P7953685314060616967.Spec : Prop :=
  ∀ n, P7953685314060616967.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P2270546640659855058

`A063213(n+1)+A193910(n+1)-n`
-/

namespace A063245.P2270546640659855058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + (A193910 (n + 1) - (n : ℤ))

end

end A063245.P2270546640659855058

namespace A063245

/-- `A063213(n+1)+A193910(n+1)-n` -/
def P2270546640659855058.Spec : Prop :=
  ∀ n, P2270546640659855058.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P11504456390621954615

`A063200(n+1)+A063205(n+1)+A063201(n+1)`
-/

namespace A063245.P11504456390621954615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + (A063205 (n + 1) + A063201 (n + 1))

end

end A063245.P11504456390621954615

namespace A063245

/-- `A063200(n+1)+A063205(n+1)+A063201(n+1)` -/
def P11504456390621954615.Spec : Prop :=
  ∀ n, P11504456390621954615.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P13578760607515277439

`A001651(n+1)+A047395(n+1)+A047395(n+2)`
-/

namespace A063245.P13578760607515277439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + (A047395 (n + 1) + A047395 (n + 2))

end

end A063245.P13578760607515277439

namespace A063245

/-- `A001651(n+1)+A047395(n+1)+A047395(n+2)` -/
def P13578760607515277439.Spec : Prop :=
  ∀ n, P13578760607515277439.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P12178226215097088379

`A001651(n+1)+A047464(n+2)+A047407(n+1)`
-/

namespace A063245.P12178226215097088379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + (A047464 (n + 2) + A047407 (n + 1))

end

end A063245.P12178226215097088379

namespace A063245

/-- `A001651(n+1)+A047464(n+2)+A047407(n+1)` -/
def P12178226215097088379.Spec : Prop :=
  ∀ n, P12178226215097088379.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P11589516358082459604

`A017029(n)-A008612(n+3)`
-/

namespace A063245.P11589516358082459604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - A008612 (n + 3)

end

end A063245.P11589516358082459604

namespace A063245

/-- `A017029(n)-A008612(n+3)` -/
def P11589516358082459604.Spec : Prop :=
  ∀ n, P11589516358082459604.a n = A063245 (n + 1)

end A063245

/-! ## A063245.P12273797308851225762

`sqrt(A017030(n))-A008612(n+3)`
-/

namespace A063245.P12273797308851225762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017030 n : ℝ) - (A008612 (n + 3) : ℝ)

end

end A063245.P12273797308851225762

namespace A063245

/-- `sqrt(A017030(n))-A008612(n+3)` -/
def P12273797308851225762.Spec : Prop :=
  ∀ n, P12273797308851225762.a n = (A063245 (n + 1) : ℝ)

end A063245

/-!
# A063246: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 99 ).

The programs for A063246, the canonical program `A063246.P15627297055228981031` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063246 has offset 1).

The definition of A063246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063246.P15627297055228981031

`∑[2*n²%3]+or(1, 7*n)+3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063246

/-- `∑[2*n²%3]+or(1, 7*n)+3` -/
def P15627297055228981031.Spec : Prop :=
  ∀ n, (P15627297055228981031.a n : ℤ) = A063246 (n + 1)

theorem P15627297055228981031.correct : P15627297055228981031.Spec := by
  intro n
  simp only [A063246, Nat.add_sub_cancel]

end A063246

/-! ## A063246.P9715968346090194572

`2*(A063204(n+1)+n+2)`
-/

namespace A063246.P9715968346090194572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063204 (n + 1) + (n + 2 : ℤ))

end

end A063246.P9715968346090194572

namespace A063246

/-- `2*(A063204(n+1)+n+2)` -/
def P9715968346090194572.Spec : Prop :=
  ∀ n, P9715968346090194572.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P15334064177642670459

`A017329(n)-A063212(n+1)`
-/

namespace A063246.P15334064177642670459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A063212 (n + 1)

end

end A063246.P15334064177642670459

namespace A063246

/-- `A017329(n)-A063212(n+1)` -/
def P15334064177642670459.Spec : Prop :=
  ∀ n, P15334064177642670459.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P13206629230809048439

`A017593(n)-A063242(n+1)`
-/

namespace A063246.P13206629230809048439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n - A063242 (n + 1)

end

end A063246.P13206629230809048439

namespace A063246

/-- `A017593(n)-A063242(n+1)` -/
def P13206629230809048439.Spec : Prop :=
  ∀ n, P13206629230809048439.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P2765728995929169747

`2*(A016825(n)+A008615(n))`
-/

namespace A063246.P2765728995929169747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016825 n + A008615 n)

end

end A063246.P2765728995929169747

namespace A063246

/-- `2*(A016825(n)+A008615(n))` -/
def P2765728995929169747.Spec : Prop :=
  ∀ n, P2765728995929169747.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P8301089995880663010

`A063245(n+1)+A001651(n+1)`
-/

namespace A063246.P8301089995880663010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063245 (n + 1) + A001651 (n + 1)

end

end A063246.P8301089995880663010

namespace A063246

/-- `A063245(n+1)+A001651(n+1)` -/
def P8301089995880663010.Spec : Prop :=
  ∀ n, P8301089995880663010.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P3114536682210174714

`A063211(n+1)+A063200(n+1)`
-/

namespace A063246.P3114536682210174714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063211 (n + 1) + A063200 (n + 1)

end

end A063246.P3114536682210174714

namespace A063246

/-- `A063211(n+1)+A063200(n+1)` -/
def P3114536682210174714.Spec : Prop :=
  ∀ n, P3114536682210174714.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P13842012918393945464

`A063215(n+1)+A063198(n+1)`
-/

namespace A063246.P13842012918393945464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063215 (n + 1) + A063198 (n + 1)

end

end A063246.P13842012918393945464

namespace A063246

/-- `A063215(n+1)+A063198(n+1)` -/
def P13842012918393945464.Spec : Prop :=
  ∀ n, P13842012918393945464.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P6322226194962065382

`A063220(n+1)+A063199(n+1)`
-/

namespace A063246.P6322226194962065382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1) + A063199 (n + 1)

end

end A063246.P6322226194962065382

namespace A063246

/-- `A063220(n+1)+A063199(n+1)` -/
def P6322226194962065382.Spec : Prop :=
  ∀ n, P6322226194962065382.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P948471031582694519

`A063222(n+1)+A063203(n+1)`
-/

namespace A063246.P948471031582694519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) + A063203 (n + 1)

end

end A063246.P948471031582694519

namespace A063246

/-- `A063222(n+1)+A063203(n+1)` -/
def P948471031582694519.Spec : Prop :=
  ∀ n, P948471031582694519.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P10476600538395055590

`A063226(n+1)+A063213(n+1)`
-/

namespace A063246.P10476600538395055590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) + A063213 (n + 1)

end

end A063246.P10476600538395055590

namespace A063246

/-- `A063226(n+1)+A063213(n+1)` -/
def P10476600538395055590.Spec : Prop :=
  ∀ n, P10476600538395055590.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P9438830687296878218

`A113804(n+1)+A063224(n+1)`
-/

namespace A063246.P9438830687296878218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1) + A063224 (n + 1)

end

end A063246.P9438830687296878218

namespace A063246

/-- `A113804(n+1)+A063224(n+1)` -/
def P9438830687296878218.Spec : Prop :=
  ∀ n, P9438830687296878218.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P1569853585738163613

`A063147(n+1)-A063097(n+1)`
-/

namespace A063246.P1569853585738163613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063147 (n + 1) - A063097 (n + 1)

end

end A063246.P1569853585738163613

namespace A063246

/-- `A063147(n+1)-A063097(n+1)` -/
def P1569853585738163613.Spec : Prop :=
  ∀ n, P1569853585738163613.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P576270092530464814

`A063233(n+1)-A063205(n+1)`
-/

namespace A063246.P576270092530464814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (n + 1) - A063205 (n + 1)

end

end A063246.P576270092530464814

namespace A063246

/-- `A063233(n+1)-A063205(n+1)` -/
def P576270092530464814.Spec : Prop :=
  ∀ n, P576270092530464814.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P17599545208543001729

`A063238(n+1)-A131055(n+1)`
-/

namespace A063246.P17599545208543001729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - A131055 (n + 1)

end

end A063246.P17599545208543001729

namespace A063246

/-- `A063238(n+1)-A131055(n+1)` -/
def P17599545208543001729.Spec : Prop :=
  ∀ n, P17599545208543001729.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P15174711986283628617

`A143988(n+1)-A130823(n+1)`
-/

namespace A063246.P15174711986283628617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1) - A130823 (n + 1)

end

end A063246.P15174711986283628617

namespace A063246

/-- `A143988(n+1)-A130823(n+1)` -/
def P15174711986283628617.Spec : Prop :=
  ∀ n, P15174711986283628617.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P6299624250983115370

`Δ[2*A256321(n)]`
-/

namespace A063246.P6299624250983115370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063246.P6299624250983115370

namespace A063246

/-- `Δ[2*A256321(n)]` -/
def P6299624250983115370.Spec : Prop :=
  ∀ n, P6299624250983115370.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P10429622903262609367

`A063213(A001651(n+1))+A063213(n+1)+2`
-/

namespace A063246.P10429622903262609367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (A001651 (n + 1)).toNat + (A063213 (n + 1) + 2)

end

end A063246.P10429622903262609367

namespace A063246

/-- `A063213(A001651(n+1))+A063213(n+1)+2` -/
def P10429622903262609367.Spec : Prop :=
  ∀ n, P10429622903262609367.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P15981489325020952174

`A298024(2*n+1)-(n%2+n)`
-/

namespace A063246.P15981489325020952174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 (2 * n + 1) - ((n % 2 + n : ℕ) : ℤ)

end

end A063246.P15981489325020952174

namespace A063246

/-- `A298024(2*n+1)-(n%2+n)` -/
def P15981489325020952174.Spec : Prop :=
  ∀ n, P15981489325020952174.a n = A063246 (n + 1)

end A063246

/-! ## A063246.P2320939883564943123

`A301291(2*n+1)-A008611(2*n)`
-/

namespace A063246.P2320939883564943123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (2 * n + 1) - A008611 (2 * n)

end

end A063246.P2320939883564943123

namespace A063246

/-- `A301291(2*n+1)-A008611(2*n)` -/
def P2320939883564943123.Spec : Prop :=
  ∀ n, P2320939883564943123.a n = A063246 (n + 1)

end A063246

/-!
# A063247: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 100 ).

The programs for A063247, the canonical program `A063247.P12863676235286375461` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063247 has offset 1).

The definition of A063247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063247.P7691902612800533519

`Δ[floor(19/12*n²)]`
-/

namespace A063247.P7691902612800533519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(19 : ℚ) / 12 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063247.P7691902612800533519

namespace A063247

/-- `Δ[floor(19/12*n²)]` -/
def P7691902612800533519.Spec : Prop :=
  ∀ n, P7691902612800533519.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P4879602022970316427

`∑[xor(3, n²)%3+2]-1`
-/

namespace A063247.P4879602022970316427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n ^ 2) % 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A063247.P4879602022970316427

namespace A063247

/-- `∑[xor(3, n²)%3+2]-1` -/
def P4879602022970316427.Spec : Prop :=
  ∀ n, P4879602022970316427.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P15200577018480652469

`floor(∑[8-gcd(3, n)]/2)-1`
-/

namespace A063247.P15200577018480652469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ - 1

end

end A063247.P15200577018480652469

namespace A063247

/-- `floor(∑[8-gcd(3, n)]/2)-1` -/
def P15200577018480652469.Spec : Prop :=
  ∀ n, P15200577018480652469.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P11072090575721132091

`floor(∑[floor(a(n-2))]/3)` with `a(0)=5, a(1)=11, a(2)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A063247.P11072090575721132091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 11, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A063247.P11072090575721132091

namespace A063247

/-- `floor(∑[floor(a(n-2))]/3)` -/
def P11072090575721132091.Spec : Prop :=
  ∀ n, P11072090575721132091.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P8502481878732195315

`∑[Δ[ceil(xor(1, n)/6)]+3]-1`
-/

namespace A063247.P8502481878732195315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 6⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A063247.P8502481878732195315

namespace A063247

/-- `∑[Δ[ceil(xor(1, n)/6)]+3]-1` -/
def P8502481878732195315.Spec : Prop :=
  ∀ n, P8502481878732195315.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P7675699546920023992

`comp[round(8*n/5)]+∑[n%2]`
-/

namespace A063247.P7675699546920023992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A063247.P7675699546920023992

namespace A063247

/-- `comp[round(8*n/5)]+∑[n%2]` -/
def P7675699546920023992.Spec : Prop :=
  ∀ n, (P7675699546920023992.a n : ℤ) = A063247 (n + 1)

end A063247

/-! ## A063247.P14263213639469307097

`and(1, n)+a(n-3)+9` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A063247.P14263213639469307097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  Nat.land 1 n + (a (n - 3) + 9)

end

end A063247.P14263213639469307097

namespace A063247

/-- `and(1, n)+a(n-3)+9` -/
def P14263213639469307097.Spec : Prop :=
  ∀ n, (P14263213639469307097.a n : ℤ) = A063247 (n + 1)

end A063247

/-! ## A063247.P10807766720642737240

`∑[(n²+1)%3]+ceil(3*n/2)`
-/

namespace A063247.P10807766720642737240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈3 * ((n : ℚ) / 2)⌉

end

end A063247.P10807766720642737240

namespace A063247

/-- `∑[(n²+1)%3]+ceil(3*n/2)` -/
def P10807766720642737240.Spec : Prop :=
  ∀ n, P10807766720642737240.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P11606734665344371941

`∑[∑[ogf((1+4x+5x^2+3x^3)/(1+2x+2x^2+x^3))]]+n`
-/

namespace A063247.P11606734665344371941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 5, 3] [1, 2, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063247.P11606734665344371941

namespace A063247

/-- `∑[∑[ogf((1+4x+5x^2+3x^3)/(1+2x+2x^2+x^3))]]+n` -/
def P11606734665344371941.Spec : Prop :=
  ∀ n, P11606734665344371941.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P1704290107760799340

`comp[2*lcm(2, n)-n]+round(xor(1, n)/6)`
-/

namespace A063247.P1704290107760799340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

end

end A063247.P1704290107760799340

namespace A063247

/-- `comp[2*lcm(2, n)-n]+round(xor(1, n)/6)` -/
def P1704290107760799340.Spec : Prop :=
  ∀ n, P1704290107760799340.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P14838024803042124208

`comp[round(4*n/3)]-ceil(xor(1, 5*n)/6)`
-/

namespace A063247.P14838024803042124208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ⌈(Nat.xor 1 (5 * n) : ℚ) / 6⌉

end

end A063247.P14838024803042124208

namespace A063247

/-- `comp[round(4*n/3)]-ceil(xor(1, 5*n)/6)` -/
def P14838024803042124208.Spec : Prop :=
  ∀ n, P14838024803042124208.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P12863676235286375461

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=8, a(3)=11, a(4)=14`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063247

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P12863676235286375461.Spec : Prop :=
  ∀ n, P12863676235286375461.a n = A063247 (n + 1)

theorem P12863676235286375461.correct : P12863676235286375461.Spec := by
  intro n
  simp only [A063247, Nat.add_sub_cancel]

end A063247

/-! ## A063247.P6058634755354287355

`ceil(A063105(n+1)/2)`
-/

namespace A063247.P6058634755354287355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063105 (n + 1) : ℚ) / 2⌉

end

end A063247.P6058634755354287355

namespace A063247

/-- `ceil(A063105(n+1)/2)` -/
def P6058634755354287355.Spec : Prop :=
  ∀ n, P6058634755354287355.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P5378647029776809630

`A219529(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A063247.P5378647029776809630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A219529 n - a (n - 1) + (n : ℤ)

end

end A063247.P5378647029776809630

namespace A063247

/-- `A219529(n)-a(n-1)+n` -/
def P5378647029776809630.Spec : Prop :=
  ∀ n, P5378647029776809630.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P13021317114134332388

`∑[A000034(n)+n²%3]+n`
-/

namespace A063247.P13021317114134332388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063247.P13021317114134332388

namespace A063247

/-- `∑[A000034(n)+n²%3]+n` -/
def P13021317114134332388.Spec : Prop :=
  ∀ n, P13021317114134332388.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P13211406957489355662

`A008615(n)+A007310(n+1)`
-/

namespace A063247.P13211406957489355662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n + A007310 (n + 1)

end

end A063247.P13211406957489355662

namespace A063247

/-- `A008615(n)+A007310(n+1)` -/
def P13211406957489355662.Spec : Prop :=
  ∀ n, P13211406957489355662.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P3131609285884438494

`A016777(n)+A011960(n+1)`
-/

namespace A063247.P3131609285884438494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A011960 (n + 1)

end

end A063247.P3131609285884438494

namespace A063247

/-- `A016777(n)+A011960(n+1)` -/
def P3131609285884438494.Spec : Prop :=
  ∀ n, P3131609285884438494.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P15603149515453379681

`A063204(n+1)+A000034(n)`
-/

namespace A063247.P15603149515453379681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063204 (n + 1) + A000034 n

end

end A063247.P15603149515453379681

namespace A063247

/-- `A063204(n+1)+A000034(n)` -/
def P15603149515453379681.Spec : Prop :=
  ∀ n, P15603149515453379681.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P6402376400389588795

`A103221(n+1)+A016777(n)`
-/

namespace A063247.P6402376400389588795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1) + A016777 n

end

end A063247.P6402376400389588795

namespace A063247

/-- `A103221(n+1)+A016777(n)` -/
def P6402376400389588795.Spec : Prop :=
  ∀ n, P6402376400389588795.a n = A063247 (n + 1)

end A063247

/-! ## A063247.P9681810584885138847

`A080513(n)+A047399(n+1)`
-/

namespace A063247.P9681810584885138847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A047399 (n + 1)

end

end A063247.P9681810584885138847

namespace A063247

/-- `A080513(n)+A047399(n+1)` -/
def P9681810584885138847.Spec : Prop :=
  ∀ n, P9681810584885138847.a n = A063247 (n + 1)

end A063247

/-!
# A063249: Doubly hexagonal numbers.

The programs for A063249, the canonical program `A063249.P16857193437308004342` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063249 has offset 0).

The definition of A063249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063249.P16857193437308004342

`n*(2*n-1)*(4*n²-2*n-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063249

/-- `n*(2*n-1)*(4*n²-2*n-1)` -/
def P16857193437308004342.Spec : Prop :=
  ∀ n, P16857193437308004342.a n = A063249 n

theorem P16857193437308004342.correct : P16857193437308004342.Spec := by
  intro n
  simp only [A063249]

end A063249

/-! ## A063249.P8920799035033896040

`A000384(A000384(n))`
-/

namespace A063249.P8920799035033896040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A000384 n).toNat

end

end A063249.P8920799035033896040

namespace A063249

/-- `A000384(A000384(n))` -/
def P8920799035033896040.Spec : Prop :=
  ∀ n, P8920799035033896040.a n = A063249 n

end A063249

/-! ## A063249.P12486159125640207494

`C(n*record[lcm(2, n)], 2)`
-/

namespace A063249.P12486159125640207494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A063249.P12486159125640207494

namespace A063249

/-- `C(n*record[lcm(2, n)], 2)` -/
def P12486159125640207494.Spec : Prop :=
  ∀ n, (P12486159125640207494.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P14407668246368951532

`C(2*C(2*n, 2), 2)`
-/

namespace A063249.P14407668246368951532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * Nat.choose (2 * n) 2) 2

end

end A063249.P14407668246368951532

namespace A063249

/-- `C(2*C(2*n, 2), 2)` -/
def P14407668246368951532.Spec : Prop :=
  ∀ n, (P14407668246368951532.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P6080530614546224728

`C(∑[ogf((2x+6x^2)/(1-2x+x^2))], 2)`
-/

namespace A063249.P6080530614546224728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 6] [1, -2, 1] n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A063249.P6080530614546224728

namespace A063249

/-- `C(∑[ogf((2x+6x^2)/(1-2x+x^2))], 2)` -/
def P6080530614546224728.Spec : Prop :=
  ∀ n, (P6080530614546224728.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P5216691703347123110

`C(∑[a(n-1)+8], 2)` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A063249.P5216691703347123110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 10] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A063249.P5216691703347123110

namespace A063249

/-- `C(∑[a(n-1)+8], 2)` -/
def P5216691703347123110.Spec : Prop :=
  ∀ n, (P5216691703347123110.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P6964908210481830254

`C(A002939(n), 2)`
-/

namespace A063249.P6964908210481830254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002939 n).toNat 2

end

end A063249.P6964908210481830254

namespace A063249

/-- `C(A002939(n), 2)` -/
def P6964908210481830254.Spec : Prop :=
  ∀ n, (P6964908210481830254.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P7543373843619587522

`C(A118239(n+1), 2)`
-/

namespace A063249.P7543373843619587522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A118239 (n + 1)).toNat 2

end

end A063249.P7543373843619587522

namespace A063249

/-- `C(A118239(n+1), 2)` -/
def P7543373843619587522.Spec : Prop :=
  ∀ n, (P7543373843619587522.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P8029666031332492254

`C(A001107(n)+n, 2)`
-/

namespace A063249.P8029666031332492254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001107 n + (n : ℤ)).toNat 2

end

end A063249.P8029666031332492254

namespace A063249

/-- `C(A001107(n)+n, 2)` -/
def P8029666031332492254.Spec : Prop :=
  ∀ n, (P8029666031332492254.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P15063367068306858566

`C(A033991(n)-n, 2)`
-/

namespace A063249.P15063367068306858566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033991 n - (n : ℤ)).toNat 2

end

end A063249.P15063367068306858566

namespace A063249

/-- `C(A033991(n)-n, 2)` -/
def P15063367068306858566.Spec : Prop :=
  ∀ n, (P15063367068306858566.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P430318473027026616

`C(n*A130824(n), 2)`
-/

namespace A063249.P430318473027026616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) * A130824 n).toNat 2

end

end A063249.P430318473027026616

namespace A063249

/-- `C(n*A130824(n), 2)` -/
def P430318473027026616.Spec : Prop :=
  ∀ n, (P430318473027026616.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P10281100493383722525

`C(A000567(n)+n², 2)`
-/

namespace A063249.P10281100493383722525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000567 n + (n ^ 2 : ℤ)).toNat 2

end

end A063249.P10281100493383722525

namespace A063249

/-- `C(A000567(n)+n², 2)` -/
def P10281100493383722525.Spec : Prop :=
  ∀ n, (P10281100493383722525.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P158622762379599436

`C(n*A111284(n+1), 2)`
-/

namespace A063249.P158622762379599436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) * A111284 (n + 1)).toNat 2

end

end A063249.P158622762379599436

namespace A063249

/-- `C(n*A111284(n+1), 2)` -/
def P158622762379599436.Spec : Prop :=
  ∀ n, (P158622762379599436.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P2326163572310733111

`C(2*n*A004273(n), 2)`
-/

namespace A063249.P2326163572310733111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * ((n : ℤ) * A004273 n)).toNat 2

end

end A063249.P2326163572310733111

namespace A063249

/-- `C(2*n*A004273(n), 2)` -/
def P2326163572310733111.Spec : Prop :=
  ∀ n, (P2326163572310733111.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P11313780715446032148

`C(A165747(n)²-A165747(n), 2)`
-/

namespace A063249.P11313780715446032148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A165747 n ^ 2 - A165747 n).toNat 2

end

end A063249.P11313780715446032148

namespace A063249

/-- `C(A165747(n)²-A165747(n), 2)` -/
def P11313780715446032148.Spec : Prop :=
  ∀ n, (P11313780715446032148.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P9020886405160488764

`C(A103505(2*n), 2)`
-/

namespace A063249.P9020886405160488764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A103505 (2 * n)).toNat 2

end

end A063249.P9020886405160488764

namespace A063249

/-- `C(A103505(2*n), 2)` -/
def P9020886405160488764.Spec : Prop :=
  ∀ n, (P9020886405160488764.a n : ℤ) = A063249 n

end A063249

/-! ## A063249.P977057720585475287

`A062392(A004273(n))`
-/

namespace A063249.P977057720585475287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 (A004273 n).toNat

end

end A063249.P977057720585475287

namespace A063249

/-- `A062392(A004273(n))` -/
def P977057720585475287.Spec : Prop :=
  ∀ n, P977057720585475287.a n = A063249 n

end A063249

/-! ## A063249.P12125388690273582343

`A027441(2*n)-A000578(2*n)`
-/

namespace A063249.P12125388690273582343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 (2 * n) - A000578 (2 * n)

end

end A063249.P12125388690273582343

namespace A063249

/-- `A027441(2*n)-A000578(2*n)` -/
def P12125388690273582343.Spec : Prop :=
  ∀ n, P12125388690273582343.a n = A063249 n

end A063249

/-! ## A063249.P14114566259108104278

`A000583(2*n)-A062392(2*n)`
-/

namespace A063249.P14114566259108104278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (2 * n) - A062392 (2 * n)

end

end A063249.P14114566259108104278

namespace A063249

/-- `A000583(2*n)-A062392(2*n)` -/
def P14114566259108104278.Spec : Prop :=
  ∀ n, P14114566259108104278.a n = A063249 n

end A063249

/-! ## A063249.P12545613064461943227

`A062392(2*n)-A007588(2*n)`
-/

namespace A063249.P12545613064461943227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 (2 * n) - A007588 (2 * n)

end

end A063249.P12545613064461943227

namespace A063249

/-- `A062392(2*n)-A007588(2*n)` -/
def P12545613064461943227.Spec : Prop :=
  ∀ n, P12545613064461943227.a n = A063249 n

end A063249

/-!
# A063250: Number of binary right-rotations (iterations of A038572) to reach fixed point.

The programs for A063250, the canonical program `A063250.P9111133968187368532` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063250 has offset 0).

The definition of A063250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063250.P9111133968187368532

`floor(log2(or(1, n-and(n, 2*n))))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063250

/-- `floor(log2(or(1, n-and(n, 2*n))))` -/
def P9111133968187368532.Spec : Prop :=
  ∀ n, (P9111133968187368532.a n : ℤ) = A063250 n

theorem P9111133968187368532.correct : P9111133968187368532.Spec := by
  intro n
  simp only [A063250]

end A063250

/-! ## A063250.P1413959769052613489

`ceil(log2(2^ceil(log2(n+1))-n))`
-/

namespace A063250.P1413959769052613489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (n : ℚ) : ℝ)⌉

end

end A063250.P1413959769052613489

namespace A063250

/-- `ceil(log2(2^ceil(log2(n+1))-n))` -/
def P1413959769052613489.Spec : Prop :=
  ∀ n, P1413959769052613489.a n = A063250 n

end A063250

/-! ## A063250.P4327865170044958943

`floor(log2(and(n, -(2*(n+1)))+1))`
-/

namespace A063250.P4327865170044958943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Int.land (n : ℤ) (-(2 * (n + 1) : ℤ)) + 1).toNat

end

end A063250.P4327865170044958943

namespace A063250

/-- `floor(log2(and(n, -(2*(n+1)))+1))` -/
def P4327865170044958943.Spec : Prop :=
  ∀ n, (P4327865170044958943.a n : ℤ) = A063250 n

end A063250

/-! ## A063250.P11252548573753746138

`floor(log2(n+1-and(n, 2*n+1)))`
-/

namespace A063250.P11252548573753746138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((n + 1 : ℤ) - (Nat.land n (2 * n + 1) : ℤ)).toNat

end

end A063250.P11252548573753746138

namespace A063250

/-- `floor(log2(n+1-and(n, 2*n+1)))` -/
def P11252548573753746138.Spec : Prop :=
  ∀ n, (P11252548573753746138.a n : ℤ) = A063250 n

end A063250

/-! ## A063250.P16062664458316916439

`a(floor(n/2))+1-char[2^n-1]` with `a(0)=0`
-/

namespace A063250.P16062664458316916439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A063250.P16062664458316916439

namespace A063250

/-- `a(floor(n/2))+1-char[2^n-1]` -/
def P16062664458316916439.Spec : Prop :=
  ∀ n, P16062664458316916439.a n = A063250 n

end A063250

/-! ## A063250.P9020907289455106929

`floor(log2(abs(xor(n+1, 2*n)-n)+1))-1`
-/

namespace A063250.P9020907289455106929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (|(Nat.xor (n + 1) (2 * n) : ℤ) - (n : ℤ)| + 1).toNat : ℤ) - 1

end

end A063250.P9020907289455106929

namespace A063250

/-- `floor(log2(abs(xor(n+1, 2*n)-n)+1))-1` -/
def P9020907289455106929.Spec : Prop :=
  ∀ n, P9020907289455106929.a n = A063250 n

end A063250

/-! ## A063250.P10385028809736708635

`A070939(and(n, Δ[-n²]))-1`
-/

namespace A063250.P10385028809736708635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat - 1

end

end A063250.P10385028809736708635

namespace A063250

/-- `A070939(and(n, Δ[-n²]))-1` -/
def P10385028809736708635.Spec : Prop :=
  ∀ n, P10385028809736708635.a n = A063250 n

end A063250

/-! ## A063250.P8953211241796463109

`∑{e}[A053644(and(n, Δ[-n²])), #]`
-/

namespace A063250.P8953211241796463109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (Int.land (n : ℤ) (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A063250.P8953211241796463109

namespace A063250

/-- `∑{e}[A053644(and(n, Δ[-n²])), #]` -/
def P8953211241796463109.Spec : Prop :=
  ∀ n, (P8953211241796463109.a n : ℤ) = A063250 n

end A063250

/-! ## A063250.P1454254462392543685

`A000523(or(1, n-and(n, 2*n)))`
-/

namespace A063250.P1454254462392543685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.lor 1 ((n : ℤ) - (Nat.land n (2 * n) : ℤ))).toNat

end

end A063250.P1454254462392543685

namespace A063250

/-- `A000523(or(1, n-and(n, 2*n)))` -/
def P1454254462392543685.Spec : Prop :=
  ∀ n, P1454254462392543685.a n = A063250 n

end A063250

/-! ## A063250.P15354356784576690266

`A029837(2^ceil(log2(n+1))-n)`
-/

namespace A063250.P15354356784576690266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (n : ℚ))).toNat

end

end A063250.P15354356784576690266

namespace A063250

/-- `A029837(2^ceil(log2(n+1))-n)` -/
def P15354356784576690266.Spec : Prop :=
  ∀ n, P15354356784576690266.a n = A063250 n

end A063250

/-! ## A063250.P16041148345779703207

`A000523(or(1, -or(2*n, -n)))`
-/

namespace A063250.P16041148345779703207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.lor 1 (-Int.lor (2 * n : ℤ) (-(n : ℤ)))).toNat

end

end A063250.P16041148345779703207

namespace A063250

/-- `A000523(or(1, -or(2*n, -n)))` -/
def P16041148345779703207.Spec : Prop :=
  ∀ n, P16041148345779703207.a n = A063250 n

end A063250

/-! ## A063250.P15219091940098303897

`floor(log2(A028310(n-and(n, 2*n))))`
-/

namespace A063250.P15219091940098303897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A028310 (n - Nat.land n (2 * n))).toNat

end

end A063250.P15219091940098303897

namespace A063250

/-- `floor(log2(A028310(n-and(n, 2*n))))` -/
def P15219091940098303897.Spec : Prop :=
  ∀ n, (P15219091940098303897.a n : ℤ) = A063250 n

end A063250

/-! ## A063250.P11021128701926471568

`A000523(n-and(n, Δ[n²])+1)`
-/

namespace A063250.P11021128701926471568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ((n : ℤ) - Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1).toNat

end

end A063250.P11021128701926471568

namespace A063250

/-- `A000523(n-and(n, Δ[n²])+1)` -/
def P11021128701926471568.Spec : Prop :=
  ∀ n, P11021128701926471568.a n = A063250 n

end A063250

/-! ## A063250.P582022117464645188

`A000523(n+1-and(n, 2*n+1))`
-/

namespace A063250.P582022117464645188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1 - Nat.land n (2 * n + 1))

end

end A063250.P582022117464645188

namespace A063250

/-- `A000523(n+1-and(n, 2*n+1))` -/
def P582022117464645188.Spec : Prop :=
  ∀ n, P582022117464645188.a n = A063250 n

end A063250

/-! ## A063250.P6168481209049094984

`A080791(A342126(n))`
-/

namespace A063250.P6168481209049094984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A342126 n).toNat

end

end A063250.P6168481209049094984

namespace A063250

/-- `A080791(A342126(n))` -/
def P6168481209049094984.Spec : Prop :=
  ∀ n, P6168481209049094984.a n = A063250 n

end A063250

/-! ## A063250.P5446416845743003714

`A029837(n+1)-A090996(n)`
-/

namespace A063250.P5446416845743003714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A090996 n

end

end A063250.P5446416845743003714

namespace A063250

/-- `A029837(n+1)-A090996(n)` -/
def P5446416845743003714.Spec : Prop :=
  ∀ n, P5446416845743003714.a n = A063250 n

end A063250

/-! ## A063250.P18369835442575668697

`A000523(n+1)-A153036(n)`
-/

namespace A063250.P18369835442575668697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A153036 n

end

end A063250.P18369835442575668697

namespace A063250

/-- `A000523(n+1)-A153036(n)` -/
def P18369835442575668697.Spec : Prop :=
  ∀ n, P18369835442575668697.a n = A063250 n

end A063250

/-! ## A063250.P17246666193359697779

`A080791(A035327(n))+A080791(n)`
-/

namespace A063250.P17246666193359697779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A035327 n).toNat + A080791 n

end

end A063250.P17246666193359697779

namespace A063250

/-- `A080791(A035327(n))+A080791(n)` -/
def P17246666193359697779.Spec : Prop :=
  ∀ n, P17246666193359697779.a n = A063250 n

end A063250

/-! ## A063250.P1888649996206235883

`A000120(A003817(A003817(n)-n))`
-/

namespace A063250.P1888649996206235883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 (A003817 n - (n : ℤ)).toNat).toNat

end

end A063250.P1888649996206235883

namespace A063250

/-- `A000120(A003817(A003817(n)-n))` -/
def P1888649996206235883.Spec : Prop :=
  ∀ n, P1888649996206235883.a n = A063250 n

end A063250

/-! ## A063250.P18297471906904855375

`A090996(A003817(n))-A090996(n)`
-/

namespace A063250.P18297471906904855375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A003817 n).toNat - A090996 n

end

end A063250.P18297471906904855375

namespace A063250

/-- `A090996(A003817(n))-A090996(n)` -/
def P18297471906904855375.Spec : Prop :=
  ∀ n, P18297471906904855375.a n = A063250 n

end A063250

/-!
# A063251: Least number of binary rotations needed to reach fixed point (with either left or right rotation allowed at each iteration).

The programs for A063251, there is no canonical definition to state claims against.
-/

/-! ## A063251.P1667757836990686531

`A007814(gcd(A001405(n), A007165(n+1)))`
-/

namespace A063251.P1667757836990686531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A001405 n) (A007165 (n + 1)))

end

end A063251.P1667757836990686531

/-! ## A063251.P14898542800757040438

`log2(gcd(A301363(n), A302535(n)))`
-/

namespace A063251.P14898542800757040438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A301363 n) (A302535 n) : ℝ)

end

end A063251.P14898542800757040438

/-! ## A063251.P18106635634955649242

`A061498(A278531(n)^A337323(n+1))`
-/

namespace A063251.P18106635634955649242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (SequenceMachineLib.roundAway ((A278531 n : ℚ) ^ (A337323 (n + 1) : ℤ))).toNat

end

end A063251.P18106635634955649242

/-! ## A063251.P4585352445876706629

`A056975(A000695(3*n+4)+A000695(n))`
-/

namespace A063251.P4585352445876706629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (A000695 (3 * n + 4) + A000695 n).toNat

end

end A063251.P4585352445876706629

/-! ## A063251.P219152267768808983

`A000700(A334299(2*n+3)-A267602(3*n+5))`
-/

namespace A063251.P219152267768808983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A334299 (2 * n + 3) - A267602 (3 * n + 5)).toNat

end

end A063251.P219152267768808983

/-!
# A063252: Numbers for which a mixed L/R binary rotation sequence will reach a fixed point sooner than either a pure only-left or only-right iteration.

The programs for A063252, there is no canonical definition to state claims against.
-/

/-! ## A063252.P11144784320358838566

`A004773(lt[A230093(n+3), A332671(n+1)])`
-/

namespace A063252.P11144784320358838566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063252.P11144784320358838566

/-!
# A063253: Values of A063178 on folding point positions of the spiral.

The programs for A063253, there is no canonical definition to state claims against.
-/

/-! ## A063253.P28219788658160708

`A063178(lt[A062298(n+1), A342511(n)])`
-/

namespace A063253.P28219788658160708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063253.P28219788658160708

/-! ## A063253.P11952835255317066620

`A257011(A274201(3*n+2)+2)`
-/

namespace A063253.P11952835255317066620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257011 (A274201 (3 * n + 2) + 2).toNat

end

end A063253.P11952835255317066620

/-! ## A063253.P311377600326893511

`A063178(lt[A342516(n), A342511(n)])`
-/

namespace A063253.P311377600326893511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063253.P311377600326893511

/-! ## A063253.P3878771131848110593

`A156080(A077374(n+1))+A026520(n)`
-/

namespace A063253.P3878771131848110593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156080 (A077374 (n + 1)).toNat + A026520 n

end

end A063253.P3878771131848110593

/-!
# A063254: Values of A062410 on folding point positions of the spiral.

The programs for A063254, there is no canonical definition to state claims against.
-/

/-! ## A063254.P7331862346166362527

`A062410(∑[A008619(n)]+1)`
-/

namespace A063254.P7331862346166362527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062410 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A063254.P7331862346166362527

/-! ## A063254.P13670343785879836677

`record[A062410(n+1)*A240025(n)]`
-/

namespace A063254.P13670343785879836677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062410 (n + 1) * A240025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063254.P13670343785879836677

/-! ## A063254.P13461906663620382829

`∩[∑[A062410(n+1)], A062410(n+2)]`
-/

namespace A063254.P13461906663620382829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062410 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062410 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A063254.P13461906663620382829

/-!
# A063255: Values of A063177 on folding point positions of the spiral.

The programs for A063255, there is no canonical definition to state claims against.
-/

/-! ## A063255.P12873299873953154358

`A063177(∑[n+1])`
-/

namespace A063255.P12873299873953154358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063177 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063255.P12873299873953154358

/-! ## A063255.P5134485517215916362

`record[A063177(A133825(n))]`
-/

namespace A063255.P5134485517215916362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063177 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063255.P5134485517215916362

/-! ## A063255.P15127883232317296375

`record[A063177(A158822(n))]`
-/

namespace A063255.P15127883232317296375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063177 (A158822 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063255.P15127883232317296375

/-! ## A063255.P3825411990779933564

`abs(1-A063177(A000124(n+1)))+1`
-/

namespace A063255.P3825411990779933564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A063177 (A000124 (n + 1)).toNat| + 1

end

end A063255.P3825411990779933564

/-! ## A063255.P5996069005973860043

`record[A063177(n+1)/A304894(n+1)]`
-/

namespace A063255.P5996069005973860043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063177 (n + 1) : ℚ) / (A304894 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063255.P5996069005973860043

/-!
# A063258: a(n) = binomial(n+5,4) - 1.

The programs for A063258, the canonical program `A063258.P15942271711916095043` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063258 has offset 0).

The definition of A063258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 4)-1` (program `A063258.P15942271711916095043`, by `A063258.P15942271711916095043.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063258.P15942271711916095043

`C(n+5, 4)-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063258

/-- `C(n+5, 4)-1` -/
def P15942271711916095043.Spec : Prop :=
  ∀ n, P15942271711916095043.a n = A063258 n

theorem P15942271711916095043.correct : P15942271711916095043.Spec := by
  intro n
  simp only [A063258]

end A063258

/-! ## A063258.P2123925811815869963

`A000332(n+5)-1`
-/

namespace A063258.P2123925811815869963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 5) - 1

end

end A063258.P2123925811815869963

namespace A063258

/-- `A000332(n+5)-1` -/
def P2123925811815869963.Spec : Prop :=
  ∀ n, P2123925811815869963.a n = A063258 n

end A063258

/-! ## A063258.P11104486607129489842

`∑[C(n+4, 3)]`
-/

namespace A063258.P11104486607129489842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063258.P11104486607129489842

namespace A063258

/-- `∑[C(n+4, 3)]` -/
def P11104486607129489842.Spec : Prop :=
  ∀ n, (P11104486607129489842.a n : ℤ) = A063258 n

end A063258

/-! ## A063258.P1701944440024604250

`∑[∏[3/(n+1)+1]]`
-/

namespace A063258.P1701944440024604250
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063258.P1701944440024604250

namespace A063258

/-- `∑[∏[3/(n+1)+1]]` -/
def P1701944440024604250.Spec : Prop :=
  ∀ n, P1701944440024604250.a n = (A063258 n : ℚ)

end A063258

/-! ## A063258.P11825657815212965942

`floor(∑[∑[∑[a(n-1)+1]]])` with `a(0)=4, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A063258.P11825657815212965942
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 4] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063258.P11825657815212965942

namespace A063258

/-- `floor(∑[∑[∑[a(n-1)+1]]])` -/
def P11825657815212965942.Spec : Prop :=
  ∀ n, (P11825657815212965942.a n : ℤ) = A063258 n

end A063258

/-! ## A063258.P11114581018819255375

`∑[∑[lcm(n+2, n+3)]+2]/2`
-/

namespace A063258.P11114581018819255375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A063258.P11114581018819255375

namespace A063258

/-- `∑[∑[lcm(n+2, n+3)]+2]/2` -/
def P11114581018819255375.Spec : Prop :=
  ∀ n, P11114581018819255375.a n = (A063258 n : ℚ)

end A063258

/-! ## A063258.P4798867172053506016

`((n+5)*a(n-1)+4)/(n+1)` with `a(0)=4`
-/

namespace A063258.P4798867172053506016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  ((n + 5 : ℚ) * a (n - 1) + 4) / (n + 1 : ℚ)

end

end A063258.P4798867172053506016

namespace A063258

/-- `((n+5)*a(n-1)+4)/(n+1)` -/
def P4798867172053506016.Spec : Prop :=
  ∀ n, P4798867172053506016.a n = (A063258 n : ℚ)

end A063258

/-! ## A063258.P9957736747124266200

`∑[∑[∑[a(n-1)+1]]]+n+1` with `a(0)=3, a(1)=3`
-/

namespace A063258.P9957736747124266200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A063258.P9957736747124266200

namespace A063258

/-- `∑[∑[∑[a(n-1)+1]]]+n+1` -/
def P9957736747124266200.Spec : Prop :=
  ∀ n, (P9957736747124266200.a n : ℤ) = A063258 n

end A063258

/-! ## A063258.P17072175256717300552

`A166805(n+1)+1`
-/

namespace A063258.P17072175256717300552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (n + 1) + 1

end

end A063258.P17072175256717300552

namespace A063258

/-- `A166805(n+1)+1` -/
def P17072175256717300552.Spec : Prop :=
  ∀ n, P17072175256717300552.a n = A063258 n

theorem P17072175256717300552.correct : P17072175256717300552.Spec := by
  intro n
  simp only [A063258, Nat.add_sub_cancel, A063258.P17072175256717300552.a, A063258.P15942271711916095043.a, A166805, A166805.P7400736969641790203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063258

/-! ## A063258.P12353830488190958486

`A005718(n)+1+n`
-/

namespace A063258.P12353830488190958486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n + 1 + (n : ℤ)

end

end A063258.P12353830488190958486

namespace A063258

/-- `A005718(n)+1+n` -/
def P12353830488190958486.Spec : Prop :=
  ∀ n, P12353830488190958486.a n = A063258 n

end A063258

/-! ## A063258.P9689241584292214252

`A005582(n+1)+∑[n+2]`
-/

namespace A063258.P9689241584292214252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063258.P9689241584292214252

namespace A063258

/-- `A005582(n+1)+∑[n+2]` -/
def P9689241584292214252.Spec : Prop :=
  ∀ n, P9689241584292214252.a n = A063258 n

end A063258

/-! ## A063258.P5966022871098469363

`∑[A074742(n+1)]+(n+1)²`
-/

namespace A063258.P5966022871098469363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A063258.P5966022871098469363

namespace A063258

/-- `∑[A074742(n+1)]+(n+1)²` -/
def P5966022871098469363.Spec : Prop :=
  ∀ n, P5966022871098469363.a n = A063258 n

end A063258

/-! ## A063258.P16825155657602721317

`∑[A240001(n+1)]-(n+1)²`
-/

namespace A063258.P16825155657602721317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A063258.P16825155657602721317

namespace A063258

/-- `∑[A240001(n+1)]-(n+1)²` -/
def P16825155657602721317.Spec : Prop :=
  ∀ n, P16825155657602721317.a n = A063258 n

end A063258

/-! ## A063258.P17442159387136669302

`∑[∑[A000217(n+2)]]+n+1`
-/

namespace A063258.P17442159387136669302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A063258.P17442159387136669302

namespace A063258

/-- `∑[∑[A000217(n+2)]]+n+1` -/
def P17442159387136669302.Spec : Prop :=
  ∀ n, P17442159387136669302.a n = A063258 n

end A063258

/-! ## A063258.P15592468770480233813

`A000096(n+1)+∑[∑[∑[n+2]]]`
-/

namespace A063258.P15592468770480233813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063258.P15592468770480233813

namespace A063258

/-- `A000096(n+1)+∑[∑[∑[n+2]]]` -/
def P15592468770480233813.Spec : Prop :=
  ∀ n, P15592468770480233813.a n = A063258 n

end A063258

/-! ## A063258.P9239239082581868192

`A227259(n+1)+A028387(n)`
-/

namespace A063258.P9239239082581868192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227259 (n + 1) + A028387 n

end

end A063258.P9239239082581868192

namespace A063258

/-- `A227259(n+1)+A028387(n)` -/
def P9239239082581868192.Spec : Prop :=
  ∀ n, P9239239082581868192.a n = A063258 n

end A063258

/-! ## A063258.P5949983536799871530

`A005287(n+4)-A005286(n)`
-/

namespace A063258.P5949983536799871530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4) - A005286 n

end

end A063258.P5949983536799871530

namespace A063258

/-- `A005287(n+4)-A005286(n)` -/
def P5949983536799871530.Spec : Prop :=
  ∀ n, P5949983536799871530.a n = A063258 n

end A063258

/-! ## A063258.P16756496134339428588

`A001752(n+1)+A001752(n)-1`
-/

namespace A063258.P16756496134339428588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (n + 1) + (A001752 n - 1)

end

end A063258.P16756496134339428588

namespace A063258

/-- `A001752(n+1)+A001752(n)-1` -/
def P16756496134339428588.Spec : Prop :=
  ∀ n, P16756496134339428588.a n = A063258 n

end A063258

/-! ## A063258.P5604289827966260045

`A005287(n+4)-(A005586(n)+1)`
-/

namespace A063258.P5604289827966260045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4) - (A005586 n + 1)

end

end A063258.P5604289827966260045

namespace A063258

/-- `A005287(n+4)-(A005586(n)+1)` -/
def P5604289827966260045.Spec : Prop :=
  ∀ n, P5604289827966260045.a n = A063258 n

end A063258

/-! ## A063258.P18369565111897082612

`A051744(n+1)+A223718(n+1)-A223718(n)`
-/

namespace A063258.P18369565111897082612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) + (A223718 (n + 1) - A223718 n)

end

end A063258.P18369565111897082612

namespace A063258

/-- `A051744(n+1)+A223718(n+1)-A223718(n)` -/
def P18369565111897082612.Spec : Prop :=
  ∀ n, P18369565111897082612.a n = A063258 n

end A063258

/-!
# A063262: Eighth column (k=7) of sextinomial array A063260.

The programs for A063262, the canonical program `A063262.P8795539107600880781` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063262 has offset 0).

The definition of A063262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063262.P8795539107600880781

`∑[∑[C(n+6, 5)-2]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063262

/-- `∑[∑[C(n+6, 5)-2]]` -/
def P8795539107600880781.Spec : Prop :=
  ∀ n, P8795539107600880781.a n = A063262 n

theorem P8795539107600880781.correct : P8795539107600880781.Spec := by
  intro n
  simp only [A063262]

end A063262

/-! ## A063262.P1945968740679998961

`C(n+8, 7)-(n+2)²`
-/

namespace A063262.P1945968740679998961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 7 : ℤ) - ((n + 2) ^ 2 : ℤ)

end

end A063262.P1945968740679998961

namespace A063262

/-- `C(n+8, 7)-(n+2)²` -/
def P1945968740679998961.Spec : Prop :=
  ∀ n, P1945968740679998961.a n = A063262 n

end A063262

/-! ## A063262.P6518359890306515441

`∑[∑[C(n+6, 5)]+xor(2*n, -2)]`
-/

namespace A063262.P6518359890306515441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + Int.xor (2 * n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063262.P6518359890306515441

namespace A063262

/-- `∑[∑[C(n+6, 5)]+xor(2*n, -2)]` -/
def P6518359890306515441.Spec : Prop :=
  ∀ n, P6518359890306515441.a n = A063262 n

end A063262

/-! ## A063262.P8077448515004830858

`∑[∑[A166808(n+1)]]`
-/

namespace A063262.P8077448515004830858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063262.P8077448515004830858

namespace A063262

/-- `∑[∑[A166808(n+1)]]` -/
def P8077448515004830858.Spec : Prop :=
  ∀ n, P8077448515004830858.a n = A063262 n

end A063262

/-! ## A063262.P7416229436590513607

`∑[∑[A062988(n)-1]]`
-/

namespace A063262.P7416229436590513607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063262.P7416229436590513607

namespace A063262

/-- `∑[∑[A062988(n)-1]]` -/
def P7416229436590513607.Spec : Prop :=
  ∀ n, P7416229436590513607.a n = A063262 n

theorem P7416229436590513607.correct : P7416229436590513607.Spec := by
  intro n
  simp only [A063262, Nat.add_sub_cancel, A063262.P7416229436590513607.f2, A063262.P7416229436590513607.f1, A063262.P7416229436590513607.a, A063262.P8795539107600880781.f2, A063262.P8795539107600880781.f1, A063262.P8795539107600880781.a, A062988, A062988.P10319984421922645529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063262

/-! ## A063262.P12020671926676615985

`∑[∑[A027659(n)+n]]`
-/

namespace A063262.P12020671926676615985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063262.P12020671926676615985

namespace A063262

/-- `∑[∑[A027659(n)+n]]` -/
def P12020671926676615985.Spec : Prop :=
  ∀ n, P12020671926676615985.a n = A063262 n

end A063262

/-! ## A063262.P2706668971991028952

`∑[A062966(n)+∑[n]]`
-/

namespace A063262.P2706668971991028952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062966 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063262.P2706668971991028952

namespace A063262

/-- `∑[A062966(n)+∑[n]]` -/
def P2706668971991028952.Spec : Prop :=
  ∀ n, P2706668971991028952.a n = A063262 n

end A063262

/-! ## A063262.P6213691490099133796

`A062990(n)-∑[n+1]`
-/

namespace A063262.P6213691490099133796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063262.P6213691490099133796

namespace A063262

/-- `A062990(n)-∑[n+1]` -/
def P6213691490099133796.Spec : Prop :=
  ∀ n, P6213691490099133796.a n = A063262 n

end A063262

/-! ## A063262.P2383557063171624184

`A063417(n)-C(n+8, 8)`
-/

namespace A063262.P2383557063171624184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063417 n - (Nat.choose (n + 8) 8 : ℤ)

end

end A063262.P2383557063171624184

namespace A063262

/-- `A063417(n)-C(n+8, 8)` -/
def P2383557063171624184.Spec : Prop :=
  ∀ n, P2383557063171624184.a n = A063262 n

end A063262

/-! ## A063262.P17335276220998981704

`∑[A064056(n)+(n+1)²]`
-/

namespace A063262.P17335276220998981704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064056 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063262.P17335276220998981704

namespace A063262

/-- `∑[A064056(n)+(n+1)²]` -/
def P17335276220998981704.Spec : Prop :=
  ∀ n, P17335276220998981704.a n = A063262 n

end A063262

/-! ## A063262.P8318905845918967675

`A063267(n)-(n+1)*(n+2)`
-/

namespace A063262.P8318905845918967675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063267 n - ((n + 1) * (n + 2) : ℤ)

end

end A063262.P8318905845918967675

namespace A063262

/-- `A063267(n)-(n+1)*(n+2)` -/
def P8318905845918967675.Spec : Prop :=
  ∀ n, P8318905845918967675.a n = A063262 n

end A063262

/-! ## A063262.P6033204162222516848

`∑[A166810(n+1)]-(n+1)²`
-/

namespace A063262.P6033204162222516848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A063262.P6033204162222516848

namespace A063262

/-- `∑[A166810(n+1)]-(n+1)²` -/
def P6033204162222516848.Spec : Prop :=
  ∀ n, P6033204162222516848.a n = A063262 n

end A063262

/-! ## A063262.P10129818486625797795

`A064056(n)+A000580(n+7)`
-/

namespace A063262.P10129818486625797795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064056 n + A000580 (n + 7)

end

end A063262.P10129818486625797795

namespace A063262

/-- `A064056(n)+A000580(n+7)` -/
def P10129818486625797795.Spec : Prop :=
  ∀ n, P10129818486625797795.a n = A063262 n

end A063262

/-! ## A063262.P10809108699246613973

`A063417(n)-A000581(n+8)`
-/

namespace A063262.P10809108699246613973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063417 n - A000581 (n + 8)

end

end A063262.P10809108699246613973

namespace A063262

/-- `A063417(n)-A000581(n+8)` -/
def P10809108699246613973.Spec : Prop :=
  ∀ n, P10809108699246613973.a n = A063262 n

end A063262

/-! ## A063262.P3989009683712631923

`A062990(n)-A034856(n+1)+n`
-/

namespace A063262.P3989009683712631923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n - A034856 (n + 1) + (n : ℤ)

end

end A063262.P3989009683712631923

namespace A063262

/-- `A062990(n)-A034856(n+1)+n` -/
def P3989009683712631923.Spec : Prop :=
  ∀ n, P3989009683712631923.a n = A063262 n

end A063262

/-! ## A063262.P5327618295947339489

`A000292(n)+A062990(n)-A000292(n+1)`
-/

namespace A063262.P5327618295947339489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A062990 n - A000292 (n + 1))

end

end A063262.P5327618295947339489

namespace A063262

/-- `A000292(n)+A062990(n)-A000292(n+1)` -/
def P5327618295947339489.Spec : Prop :=
  ∀ n, P5327618295947339489.a n = A063262 n

end A063262

/-! ## A063262.P4331928143339731903

`Δ[A165618(n)]-(n+2)²`
-/

namespace A063262.P4331928143339731903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 2) ^ 2 : ℤ)

end

end A063262.P4331928143339731903

namespace A063262

/-- `Δ[A165618(n)]-(n+2)²` -/
def P4331928143339731903.Spec : Prop :=
  ∀ n, P4331928143339731903.a n = A063262 n

end A063262

/-! ## A063262.P1855652723405603644

`A000580(n+8)-(n+2)²`
-/

namespace A063262.P1855652723405603644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - ((n + 2) ^ 2 : ℤ)

end

end A063262.P1855652723405603644

namespace A063262

/-- `A000580(n+8)-(n+2)²` -/
def P1855652723405603644.Spec : Prop :=
  ∀ n, P1855652723405603644.a n = A063262 n

end A063262

/-! ## A063262.P18231204881992246261

`∑[A062989(n+1)-(n+1)]`
-/

namespace A063262.P18231204881992246261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063262.P18231204881992246261

namespace A063262

/-- `∑[A062989(n+1)-(n+1)]` -/
def P18231204881992246261.Spec : Prop :=
  ∀ n, P18231204881992246261.a n = A063262 n

end A063262

/-! ## A063262.P10761062922016890547

`A124090(n+8)-(A000217(n+1)+A000096(n+1))`
-/

namespace A063262.P10761062922016890547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 8) - (A000217 (n + 1) + A000096 (n + 1))

end

end A063262.P10761062922016890547

namespace A063262

/-- `A124090(n+8)-(A000217(n+1)+A000096(n+1))` -/
def P10761062922016890547.Spec : Prop :=
  ∀ n, P10761062922016890547.a n = A063262 n

end A063262

/-!
# A063263: Ninth column (k=8) of sextinomial array A063260.

The programs for A063263, the canonical program `A063263.P3578646153030098628` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063263 has offset 0).

The definition of A063263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063263.P3578646153030098628

`∑[∑[∑[A062988(n)-2]]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063263

/-- `∑[∑[∑[A062988(n)-2]]]` -/
def P3578646153030098628.Spec : Prop :=
  ∀ n, P3578646153030098628.a n = A063263 n

theorem P3578646153030098628.correct : P3578646153030098628.Spec := by
  intro n
  simp only [A063263]

end A063263

/-! ## A063263.P9168645853234652975

`∑[A063262(n)-∑[n+1]]`
-/

namespace A063263.P9168645853234652975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063262 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063263.P9168645853234652975

namespace A063263

/-- `∑[A063262(n)-∑[n+1]]` -/
def P9168645853234652975.Spec : Prop :=
  ∀ n, P9168645853234652975.a n = A063263 n

end A063263

/-! ## A063263.P292509216307038388

`A064057(n)+A000581(n+8)`
-/

namespace A063263.P292509216307038388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064057 n + A000581 (n + 8)

end

end A063263.P292509216307038388

namespace A063263

/-- `A064057(n)+A000581(n+8)` -/
def P292509216307038388.Spec : Prop :=
  ∀ n, P292509216307038388.a n = A063263 n

end A063263

/-! ## A063263.P6667550753108139150

`A063418(n)-A000582(n+9)`
-/

namespace A063263.P6667550753108139150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063418 n - A000582 (n + 9)

end

end A063263.P6667550753108139150

namespace A063263

/-- `A063418(n)-A000582(n+9)` -/
def P6667550753108139150.Spec : Prop :=
  ∀ n, P6667550753108139150.a n = A063263 n

end A063263

/-! ## A063263.P14108955044543862687

`A064057(n)+∑[A064057(n)-A005720(n+2)]`
-/

namespace A063263.P14108955044543862687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064057 n - A005720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064057 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063263.P14108955044543862687

namespace A063263

/-- `A064057(n)+∑[A064057(n)-A005720(n+2)]` -/
def P14108955044543862687.Spec : Prop :=
  ∀ n, P14108955044543862687.a n = A063263 n

end A063263

/-! ## A063263.P10684678534974795963

`∑[∑[A062989(n+1)-2*(n+1)]]`
-/

namespace A063263.P10684678534974795963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (n + 1) - (2 * (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063263.P10684678534974795963

namespace A063263

/-- `∑[∑[A062989(n+1)-2*(n+1)]]` -/
def P10684678534974795963.Spec : Prop :=
  ∀ n, P10684678534974795963.a n = A063263 n

end A063263

/-! ## A063263.P1961367924769600933

`Δ[A000582(n+9)-A001296(n+1)]`
-/

namespace A063263.P1961367924769600933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - A001296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063263.P1961367924769600933

namespace A063263

/-- `Δ[A000582(n+9)-A001296(n+1)]` -/
def P1961367924769600933.Spec : Prop :=
  ∀ n, P1961367924769600933.a n = A063263 n

end A063263

/-! ## A063263.P17307980334286545274

`A063417(n)-Δ[A000914(n)]`
-/

namespace A063263.P17307980334286545274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063417 n - (f1 (n + 1) - f1 n)

end

end A063263.P17307980334286545274

namespace A063263

/-- `A063417(n)-Δ[A000914(n)]` -/
def P17307980334286545274.Spec : Prop :=
  ∀ n, P17307980334286545274.a n = A063263 n

end A063263

/-! ## A063263.P601812858504794132

`A063260(A167614(2*n+1)+A167614(n+2))`
-/

namespace A063263.P601812858504794132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063260 (A167614 (2 * n + 1) + A167614 (n + 2)).toNat

end

end A063263.P601812858504794132

namespace A063263

/-- `A063260(A167614(2*n+1)+A167614(n+2))` -/
def P601812858504794132.Spec : Prop :=
  ∀ n, P601812858504794132.a n = A063263 n

end A063263

/-!
# A063264: Tenth column (k=9) of sextinomial array A063260.

The programs for A063264, the canonical program `A063264.P15008203233816380364` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063264 has offset 0).

The definition of A063264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063264.P15008203233816380364

`A034263(n)+∑[A064058(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A063264

/-- `A034263(n)+∑[A064058(n)]` -/
def P15008203233816380364.Spec : Prop :=
  ∀ n, P15008203233816380364.a n = A063264 n

theorem P15008203233816380364.correct : P15008203233816380364.Spec := by
  intro n
  simp only [A063264]

end A063264

/-! ## A063264.P17965381018111852574

`A064058(n)+A000582(n+9)`
-/

namespace A063264.P17965381018111852574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 n + A000582 (n + 9)

end

end A063264.P17965381018111852574

namespace A063264

/-- `A064058(n)+A000582(n+9)` -/
def P17965381018111852574.Spec : Prop :=
  ∀ n, P17965381018111852574.a n = A063264 n

end A063264

/-! ## A063264.P9985993049533717216

`∑[A063263(n)-sqrt(A001249(n))]`
-/

namespace A063264.P9985993049533717216
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063263 n : ℝ) - Real.sqrt (A001249 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063264.P9985993049533717216

namespace A063264

/-- `∑[A063263(n)-sqrt(A001249(n))]` -/
def P9985993049533717216.Spec : Prop :=
  ∀ n, P9985993049533717216.a n = (A063264 n : ℝ)

end A063264

/-! ## A063264.P11106464030770838326

`∑[A064058(n)+A002417(n+1)]`
-/

namespace A063264.P11106464030770838326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 n + A002417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063264.P11106464030770838326

namespace A063264

/-- `∑[A064058(n)+A002417(n+1)]` -/
def P11106464030770838326.Spec : Prop :=
  ∀ n, P11106464030770838326.a n = A063264 n

end A063264

/-! ## A063264.P14324193100554863360

`A064058(n)+∑[A000581(n+8)]`
-/

namespace A063264.P14324193100554863360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063264.P14324193100554863360

namespace A063264

/-- `A064058(n)+∑[A000581(n+8)]` -/
def P14324193100554863360.Spec : Prop :=
  ∀ n, P14324193100554863360.a n = A063264 n

end A063264

/-! ## A063264.P9097152641879758689

`Δ[A001287(n)-A034263(n)]`
-/

namespace A063264.P9097152641879758689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) - A034263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063264.P9097152641879758689

namespace A063264

/-- `Δ[A001287(n)-A034263(n)]` -/
def P9097152641879758689.Spec : Prop :=
  ∀ n, P9097152641879758689.a n = A063264 n

end A063264

/-! ## A063264.P15379369271857023856

`A000582(n+10)-Δ[A034263(n)]`
-/

namespace A063264.P15379369271857023856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 10) - (f1 (n + 1) - f1 n)

end

end A063264.P15379369271857023856

namespace A063264

/-- `A000582(n+10)-Δ[A034263(n)]` -/
def P15379369271857023856.Spec : Prop :=
  ∀ n, P15379369271857023856.a n = A063264 n

end A063264

/-!
# A063267: Eighth column (k=7) of septinomial array A063265.

The programs for A063267, the canonical program `A063267.P8729524999753635741` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063267 has offset 0).

The definition of A063267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063267.P8729524999753635741

`∑[∑[C(n+6, 5)]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063267

/-- `∑[∑[C(n+6, 5)]]` -/
def P8729524999753635741.Spec : Prop :=
  ∀ n, (P8729524999753635741.a n : ℤ) = A063267 n

theorem P8729524999753635741.correct : P8729524999753635741.Spec := by
  intro n
  simp only [A063267]

end A063267

/-! ## A063267.P13699780650626609437

`record[C(n, 7)+6-n]`
-/

namespace A063267.P13699780650626609437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 7 : ℤ) + (6 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063267.P13699780650626609437

namespace A063267

/-- `record[C(n, 7)+6-n]` -/
def P13699780650626609437.Spec : Prop :=
  ∀ n, P13699780650626609437.a n = A063267 n

end A063267

/-! ## A063267.P8428667726919688444

`record[6-(n-C(n, 7))]`
-/

namespace A063267.P8428667726919688444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ((n : ℤ) - (Nat.choose n 7 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063267.P8428667726919688444

namespace A063267

/-- `record[6-(n-C(n, 7))]` -/
def P8428667726919688444.Spec : Prop :=
  ∀ n, P8428667726919688444.a n = A063267 n

end A063267

/-! ## A063267.P5228185740191455795

`C(n+8, 7)-(n+2)`
-/

namespace A063267.P5228185740191455795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 7 : ℤ) - (n + 2 : ℤ)

end

end A063267.P5228185740191455795

namespace A063267

/-- `C(n+8, 7)-(n+2)` -/
def P5228185740191455795.Spec : Prop :=
  ∀ n, P5228185740191455795.a n = A063267 n

end A063267

/-! ## A063267.P12355049528619025456

`∑[∑[∏[(n+6)/(n+1)]]]`
-/

namespace A063267.P12355049528619025456
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063267.P12355049528619025456

namespace A063267

/-- `∑[∑[∏[(n+6)/(n+1)]]]` -/
def P12355049528619025456.Spec : Prop :=
  ∀ n, P12355049528619025456.a n = (A063267 n : ℚ)

end A063267

/-! ## A063267.P7068120888814583346

`A166812(n+1)-n`
-/

namespace A063267.P7068120888814583346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1) - (n : ℤ)

end

end A063267.P7068120888814583346

namespace A063267

/-- `A166812(n+1)-n` -/
def P7068120888814583346.Spec : Prop :=
  ∀ n, P7068120888814583346.a n = A063267 n

end A063267

/-! ## A063267.P11924832889855079317

`A062990(n)+∑[n+1]`
-/

namespace A063267.P11924832889855079317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063267.P11924832889855079317

namespace A063267

/-- `A062990(n)+∑[n+1]` -/
def P11924832889855079317.Spec : Prop :=
  ∀ n, P11924832889855079317.a n = A063267 n

end A063267

/-! ## A063267.P2878512756896334379

`∑[A166810(n+1)]+1+n`
-/

namespace A063267.P2878512756896334379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A063267.P2878512756896334379

namespace A063267

/-- `∑[A166810(n+1)]+1+n` -/
def P2878512756896334379.Spec : Prop :=
  ∀ n, P2878512756896334379.a n = A063267 n

end A063267

/-! ## A063267.P5682491955559580895

`A063262(n)+(n+1)*(n+2)`
-/

namespace A063267.P5682491955559580895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063262 n + ((n + 1) * (n + 2) : ℤ)

end

end A063267.P5682491955559580895

namespace A063267

/-- `A063262(n)+(n+1)*(n+2)` -/
def P5682491955559580895.Spec : Prop :=
  ∀ n, P5682491955559580895.a n = A063267 n

end A063267

/-! ## A063267.P6887425117576603865

`A056001(n+1)/(n+2)-(n+2)`
-/

namespace A063267.P6887425117576603865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056001 (n + 1) : ℚ) / (n + 2 : ℚ) - (n + 2 : ℚ)

end

end A063267.P6887425117576603865

namespace A063267

/-- `A056001(n+1)/(n+2)-(n+2)` -/
def P6887425117576603865.Spec : Prop :=
  ∀ n, P6887425117576603865.a n = (A063267 n : ℚ)

end A063267

/-! ## A063267.P13277380639184268907

`A000096(n)+A062990(n)+1`
-/

namespace A063267.P13277380639184268907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (A062990 n + 1)

end

end A063267.P13277380639184268907

namespace A063267

/-- `A000096(n)+A062990(n)+1` -/
def P13277380639184268907.Spec : Prop :=
  ∀ n, P13277380639184268907.a n = A063267 n

end A063267

/-! ## A063267.P16887816012722892672

`A034856(n+1)+A062990(n)-n`
-/

namespace A063267.P16887816012722892672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + (A062990 n - (n : ℤ))

end

end A063267.P16887816012722892672

namespace A063267

/-- `A034856(n+1)+A062990(n)-n` -/
def P16887816012722892672.Spec : Prop :=
  ∀ n, P16887816012722892672.a n = A063267 n

end A063267

/-! ## A063267.P544230480916836178

`A166810(n+1)+A000580(n+7)-n`
-/

namespace A063267.P544230480916836178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) + (A000580 (n + 7) - (n : ℤ))

end

end A063267.P544230480916836178

namespace A063267

/-- `A166810(n+1)+A000580(n+7)-n` -/
def P544230480916836178.Spec : Prop :=
  ∀ n, P544230480916836178.a n = A063267 n

end A063267

/-! ## A063267.P5386242142745390935

`A166813(n+1)-(A000581(n+8)+n)`
-/

namespace A063267.P5386242142745390935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1) - (A000581 (n + 8) + (n : ℤ))

end

end A063267.P5386242142745390935

namespace A063267

/-- `A166813(n+1)-(A000581(n+8)+n)` -/
def P5386242142745390935.Spec : Prop :=
  ∀ n, P5386242142745390935.a n = A063267 n

end A063267

/-! ## A063267.P16720212200282009925

`A000292(n+1)+A062990(n)-A000292(n)`
-/

namespace A063267.P16720212200282009925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A062990 n - A000292 n)

end

end A063267.P16720212200282009925

namespace A063267

/-- `A000292(n+1)+A062990(n)-A000292(n)` -/
def P16720212200282009925.Spec : Prop :=
  ∀ n, P16720212200282009925.a n = A063267 n

end A063267

/-! ## A063267.P10762478489896160552

`Δ[A165618(n)]-(n+2)`
-/

namespace A063267.P10762478489896160552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A063267.P10762478489896160552

namespace A063267

/-- `Δ[A165618(n)]-(n+2)` -/
def P10762478489896160552.Spec : Prop :=
  ∀ n, P10762478489896160552.a n = A063267 n

end A063267

/-! ## A063267.P8912711923196657241

`A124090(n+8)-(n+1)`
-/

namespace A063267.P8912711923196657241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (n + 8) - (n + 1 : ℤ)

end

end A063267.P8912711923196657241

namespace A063267

/-- `A124090(n+8)-(n+1)` -/
def P8912711923196657241.Spec : Prop :=
  ∀ n, P8912711923196657241.a n = A063267 n

end A063267

/-! ## A063267.P979768955005578523

`A000580(n+8)-(n+2)`
-/

namespace A063267.P979768955005578523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - (n + 2 : ℤ)

end

end A063267.P979768955005578523

namespace A063267

/-- `A000580(n+8)-(n+2)` -/
def P979768955005578523.Spec : Prop :=
  ∀ n, P979768955005578523.a n = A063267 n

end A063267

/-! ## A063267.P16936477266152522210

`Δ[A000581(n+8)]-(n+2)`
-/

namespace A063267.P16936477266152522210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A063267.P16936477266152522210

namespace A063267

/-- `Δ[A000581(n+8)]-(n+2)` -/
def P16936477266152522210.Spec : Prop :=
  ∀ n, P16936477266152522210.a n = A063267 n

end A063267

/-! ## A063267.P10998794109241359124

`A001478(n+2)+A000580(n+8)`
-/

namespace A063267.P10998794109241359124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 2) + A000580 (n + 8)

end

end A063267.P10998794109241359124

namespace A063267

/-- `A001478(n+2)+A000580(n+8)` -/
def P10998794109241359124.Spec : Prop :=
  ∀ n, P10998794109241359124.a n = A063267 n

end A063267

/-!
# A063269: a(1) = 3, a(n) = concatenation of two closest factors of a(n-1) whose product equals a(n-1) or if a(n-1) is a prime then the concatenation of 1 and a(n-1).

The programs for A063269, there is no canonical definition to state claims against.
-/

/-! ## A063269.P13892557385320540381

`∑[A249817(A097756(n+1)*A171559(n))]`
-/

namespace A063269.P13892557385320540381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A097756 (n + 1) * A171559 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063269.P13892557385320540381

/-!
# A063270: a(n) = 9^(2*n) + 1.

The programs for A063270, the canonical program `A063270.P13187597729236919533` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063270 has offset 0).

The definition of A063270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^(2*n)+1` (program `A063270.P13187597729236919533`, by `A063270.P13187597729236919533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063270.P13187597729236919533

`9^(2*n)+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063270

/-- `9^(2*n)+1` -/
def P13187597729236919533.Spec : Prop :=
  ∀ n, (P13187597729236919533.a n : ℤ) = A063270 n

theorem P13187597729236919533.correct : P13187597729236919533.Spec := by
  intro n
  simp only [A063270]

end A063270

/-! ## A063270.P2550218234456537602

`A062396(2*n)`
-/

namespace A063270.P2550218234456537602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062396 (2 * n)

end

end A063270.P2550218234456537602

namespace A063270

/-- `A062396(2*n)` -/
def P2550218234456537602.Spec : Prop :=
  ∀ n, P2550218234456537602.a n = A063270 n

end A063270

/-! ## A063270.P5805164088331205954

`xor(3, (9^n)²)`
-/

namespace A063270.P5805164088331205954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 ((9 ^ n) ^ 2)

end

end A063270.P5805164088331205954

namespace A063270

/-- `xor(3, (9^n)²)` -/
def P5805164088331205954.Spec : Prop :=
  ∀ n, (P5805164088331205954.a n : ℤ) = A063270 n

end A063270

/-! ## A063270.P3616965775595102436

`or(2, (9^n)²-1)`
-/

namespace A063270.P3616965775595102436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (((9 ^ n) ^ 2 : ℤ) - 1)

end

end A063270.P3616965775595102436

namespace A063270

/-- `or(2, (9^n)²-1)` -/
def P3616965775595102436.Spec : Prop :=
  ∀ n, P3616965775595102436.a n = A063270 n

end A063270

/-! ## A063270.P15105305824464264470

`A034472(4*n)`
-/

namespace A063270.P15105305824464264470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (4 * n)

end

end A063270.P15105305824464264470

namespace A063270

/-- `A034472(4*n)` -/
def P15105305824464264470.Spec : Prop :=
  ∀ n, P15105305824464264470.a n = A063270 n

end A063270

/-! ## A063270.P9743841558914069310

`A052929(4*n)`
-/

namespace A063270.P9743841558914069310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052929 (4 * n)

end

end A063270.P9743841558914069310

namespace A063270

/-- `A052929(4*n)` -/
def P9743841558914069310.Spec : Prop :=
  ∀ n, P9743841558914069310.a n = A063270 n

end A063270

/-! ## A063270.P2166040289519982644

`A102345(4*n)`
-/

namespace A063270.P2166040289519982644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 (4 * n)

end

end A063270.P2166040289519982644

namespace A063270

/-- `A102345(4*n)` -/
def P2166040289519982644.Spec : Prop :=
  ∀ n, P2166040289519982644.a n = A063270 n

end A063270

/-! ## A063270.P979467293174166740

`2*A083884(2*n)`
-/

namespace A063270.P979467293174166740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083884 (2 * n)

end

end A063270.P979467293174166740

namespace A063270

/-- `2*A083884(2*n)` -/
def P979467293174166740.Spec : Prop :=
  ∀ n, P979467293174166740.a n = A063270 n

end A063270

/-! ## A063270.P8458820286105188085

`lcm(2, A103460(2*n))`
-/

namespace A063270.P8458820286105188085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A103460 (2 * n))

end

end A063270.P8458820286105188085

namespace A063270

/-- `lcm(2, A103460(2*n))` -/
def P8458820286105188085.Spec : Prop :=
  ∀ n, (P8458820286105188085.a n : ℤ) = A063270 n

end A063270

/-! ## A063270.P668650196136660620

`A055260(n*Δ[n²])`
-/

namespace A063270.P668650196136660620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055260 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A063270.P668650196136660620

namespace A063270

/-- `A055260(n*Δ[n²])` -/
def P668650196136660620.Spec : Prop :=
  ∀ n, P668650196136660620.a n = A063270 n

end A063270

/-!
# A063271: Largest prime factor of 9^(2n)+1 (A063270).

The programs for A063271, the canonical program `A063271.P3500976719291592108` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063271 has offset 0).

The definition of A063271 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002592, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063271.P3500976719291592108

`A002592(2*n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A063271

/-- `A002592(2*n)` -/
def P3500976719291592108.Spec : Prop :=
  ∀ n, P3500976719291592108.a n = A063271 n

theorem P3500976719291592108.correct : P3500976719291592108.Spec := by
  intro n
  simp only [A063271]

end A063271

/-! ## A063271.P15858918778922856362

`A074476(4*n)`
-/

namespace A063271.P15858918778922856362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074476 (4 * n)

end

end A063271.P15858918778922856362

namespace A063271

/-- `A074476(4*n)` -/
def P15858918778922856362.Spec : Prop :=
  ∀ n, P15858918778922856362.a n = A063271 n

theorem P15858918778922856362.correct : P15858918778922856362.Spec := by
  intro n
  simp only [A063271, Nat.add_sub_cancel, A063271.P15858918778922856362.a, A063271.P3500976719291592108.a, A002592, A002592.P13531105049726928344.a, A074476, A074476.P1190046633127875077.a, A006530, A006530.P13372528560459906635.a, A034472, A034472.P6935477064191477456.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063271

/-! ## A063271.P15010768961543716841

`or(A002592(A005843(n)), A157928(n))`
-/

namespace A063271.P15010768961543716841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002592 (A005843 n).toNat) (A157928 n)

end

end A063271.P15010768961543716841

namespace A063271

/-- `or(A002592(A005843(n)), A157928(n))` -/
def P15010768961543716841.Spec : Prop :=
  ∀ n, P15010768961543716841.a n = A063271 n

end A063271

/-! ## A063271.P5317679469553186530

`or(A074476(A008574(n)), A178334(n))`
-/

namespace A063271.P5317679469553186530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074476 (A008574 n).toNat) (A178334 n)

end

end A063271.P5317679469553186530

namespace A063271

/-- `or(A074476(A008574(n)), A178334(n))` -/
def P5317679469553186530.Spec : Prop :=
  ∀ n, P5317679469553186530.a n = A063271 n

end A063271

/-! ## A063271.P17832438553333638742

`A074476(A008574(n))/A178334(n+1)`
-/

namespace A063271.P17832438553333638742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074476 (A008574 n).toNat : ℚ) / (A178334 (n + 1) : ℚ)

end

end A063271.P17832438553333638742

namespace A063271

/-- `A074476(A008574(n))/A178334(n+1)` -/
def P17832438553333638742.Spec : Prop :=
  ∀ n, P17832438553333638742.a n = (A063271 n : ℚ)

end A063271

/-! ## A063271.P5526108225964340235

`A002592(A005843(n))/A033999(n)^2`
-/

namespace A063271.P5526108225964340235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002592 (A005843 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A063271.P5526108225964340235

namespace A063271

/-- `A002592(A005843(n))/A033999(n)^2` -/
def P5526108225964340235.Spec : Prop :=
  ∀ n, P5526108225964340235.a n = (A063271 n : ℚ)

end A063271

/-! ## A063271.P4138738672543680306

`A002592(A005843(n))+and(1, A017141(n))`
-/

namespace A063271.P4138738672543680306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002592 (A005843 n).toNat + Int.land 1 (A017141 n)

end

end A063271.P4138738672543680306

namespace A063271

/-- `A002592(A005843(n))+and(1, A017141(n))` -/
def P4138738672543680306.Spec : Prop :=
  ∀ n, P4138738672543680306.a n = A063271 n

end A063271

/-! ## A063271.P7102059512086601477

`A002592(A005843(n))+and(2, A000290(n))`
-/

namespace A063271.P7102059512086601477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002592 (A005843 n).toNat + Int.land 2 (A000290 n)

end

end A063271.P7102059512086601477

namespace A063271

/-- `A002592(A005843(n))+and(2, A000290(n))` -/
def P7102059512086601477.Spec : Prop :=
  ∀ n, P7102059512086601477.a n = A063271 n

end A063271

/-!
# A063272: Number of times most common final digit of primes appears in first n primes.

The programs for A063272, there is no canonical definition to state claims against.
-/

/-! ## A063272.P4043318438320065894

`A185712(A185284(n)+A008864(n+1))`
-/

namespace A063272.P4043318438320065894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A185284 n + A008864 (n + 1)).toNat

end

end A063272.P4043318438320065894

/-! ## A063272.P15440115989849317130

`A185712(A008864(n+1))%A024054(A016825(n))`
-/

namespace A063272.P15440115989849317130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185712 (A008864 (n + 1)).toNat) (A024054 (A016825 n).toNat)

end

end A063272.P15440115989849317130

/-! ## A063272.P7722056121065254761

`A185712(A008864(n+1))+A000007(A224850(n+1))`
-/

namespace A063272.P7722056121065254761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A008864 (n + 1)).toNat + A000007 (A224850 (n + 1)).toNat

end

end A063272.P7722056121065254761

/-!
# A063273: Number of times most common digit of primes appears in first n primes.

The programs for A063273, there is no canonical definition to state claims against.
-/

/-! ## A063273.P1707573998080081989

`A007318(A000124(∑[A085975(n+1)]))`
-/

namespace A063273.P1707573998080081989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A063273.P1707573998080081989

/-! ## A063273.P14957020831508016514

`A003056(A097050(∑[A085975(n+1)]))`
-/

namespace A063273.P14957020831508016514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A097050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A063273.P14957020831508016514

/-! ## A063273.P9340069998672132009

`A003056(A133263(∑[A085975(n+1)]))`
-/

namespace A063273.P9340069998672132009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A133263 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A063273.P9340069998672132009

/-!
# A063274: Number of powerful numbers (definition 1) required to sum to n.

The programs for A063274, there is no canonical definition to state claims against.
-/

/-! ## A063274.P2851900457289451673

`A274459(lcm(n+1, A322020(n+1)))`
-/

namespace A063274.P2851900457289451673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (Int.lcm (n + 1 : ℤ) (A322020 (n + 1)))

end

end A063274.P2851900457289451673

/-! ## A063274.P8892447064395309929

`A274459(n+1)-A025461(A321271(n+1))`
-/

namespace A063274.P8892447064395309929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (n + 1) - A025461 (A321271 (n + 1)).toNat

end

end A063274.P8892447064395309929

/-! ## A063274.P6789023521327228142

`A274459(n+1)/A232439(A325770(n+1))`
-/

namespace A063274.P6789023521327228142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274459 (n + 1) : ℚ) / (A232439 (A325770 (n + 1)).toNat : ℚ)

end

end A063274.P6789023521327228142

/-! ## A063274.P14038240901132524924

`A274459(n+1)/gcd(A112622(n+1), A335516(n+1))`
-/

namespace A063274.P14038240901132524924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274459 (n + 1) : ℚ) / (Int.gcd (A112622 (n + 1)) (A335516 (n + 1)) : ℚ)

end

end A063274.P14038240901132524924

/-! ## A063274.P5501585300378312452

`A274459(n+1)-A062535(A326975(n+1))`
-/

namespace A063274.P5501585300378312452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (n + 1) - A062535 (A326975 (n + 1)).toNat

end

end A063274.P5501585300378312452

/-! ## A063274.P4684472041617465117

`gcd(A057400(n), A274459(n+1))`
-/

namespace A063274.P4684472041617465117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057400 n) (A274459 (n + 1))

end

end A063274.P4684472041617465117

/-! ## A063274.P15986335478585124016

`A274459(A112622(n+1))*A274459(n+1)`
-/

namespace A063274.P15986335478585124016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (A112622 (n + 1)).toNat * A274459 (n + 1)

end

end A063274.P15986335478585124016

/-! ## A063274.P5519764003552002235

`and(A002223(n+1), A274459(n+1))`
-/

namespace A063274.P5519764003552002235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A274459 (n + 1))

end

end A063274.P5519764003552002235

/-! ## A063274.P3405831513478558596

`A274459(A274459(A025475(n+1))+n)`
-/

namespace A063274.P3405831513478558596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (A274459 (A025475 (n + 1)).toNat + (n : ℤ)).toNat

end

end A063274.P3405831513478558596

/-! ## A063274.P8962657314828685622

`A274459(n+1)*A274459(A162753(n)²)`
-/

namespace A063274.P8962657314828685622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (n + 1) * A274459 (A162753 n ^ 2).toNat

end

end A063274.P8962657314828685622

/-!
# A063275: Numbers that require three powerful numbers (definition 1) to sum to them.

The programs for A063275, there is no canonical definition to state claims against.
-/

/-! ## A063275.P2280698649444300592

`eq[3, A063274(n+1)]+1`
-/

namespace A063275.P2280698649444300592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063275.P2280698649444300592

/-! ## A063275.P692504488856283899

`eq[3, A063274(A028310(n))]`
-/

namespace A063275.P692504488856283899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063275.P692504488856283899

/-! ## A063275.P8079527973996518527

`A020725(eq[3, A063274(n+1)])`
-/

namespace A063275.P8079527973996518527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063275.P8079527973996518527

/-! ## A063275.P9129471982324198083

`A065475(eq[3, A063274(n+1)])`
-/

namespace A063275.P9129471982324198083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063275.P9129471982324198083

/-! ## A063275.P10637366024504183249

`A114637(eq[3, A063274(n+1)])`
-/

namespace A063275.P10637366024504183249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063275.P10637366024504183249

/-! ## A063275.P17463343957473576801

`A153152(eq[3, A063274(n+1)])`
-/

namespace A063275.P17463343957473576801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063275.P17463343957473576801

/-! ## A063275.P7489633889208826623

`eq[3, A063274(A000007(n)+n)]`
-/

namespace A063275.P7489633889208826623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063275.P7489633889208826623

/-! ## A063275.P3862395121198787436

`eq[3, A063274(A000038(n)+n)]`
-/

namespace A063275.P3862395121198787436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063275.P3862395121198787436

/-! ## A063275.P7710909423574731615

`eq[3, A063274(A123108(2*n))]`
-/

namespace A063275.P7710909423574731615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063275.P7710909423574731615

/-! ## A063275.P14515405631293999001

`eq[3, A063274(A233583(n+1))]`
-/

namespace A063275.P14515405631293999001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063275.P14515405631293999001

/-!
# A063276: Dimension of the space of weight n cuspidal newforms for Gamma_1( 3 ).

The programs for A063276, there is no canonical definition to state claims against.
-/

/-! ## A063276.P9661691761206537692

`A063278(n+2)-A004396(n)--1%(n+1)`
-/

namespace A063276.P9661691761206537692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) - A004396 n - Int.tmod (-1) (n + 1 : ℤ)

end

end A063276.P9661691761206537692

/-! ## A063276.P300139940300286958

`1-A000007(n)+A063278(n+2)-A004396(n)`
-/

namespace A063276.P300139940300286958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 n + (A063278 (n + 2) - A004396 n)

end

end A063276.P300139940300286958

/-! ## A063276.P1433197833682223110

`A000040(n+1)%2+A063278(n+2)-A004396(n)`
-/

namespace A063276.P1433197833682223110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 + (A063278 (n + 2) - A004396 n)

end

end A063276.P1433197833682223110

/-! ## A063276.P14610981423847656888

`A000045(ceil(n/(n+1)))+A063278(n+2)-A004396(n)`
-/

namespace A063276.P14610981423847656888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat + (A063278 (n + 2) - A004396 n)

end

end A063276.P14610981423847656888

/-! ## A063276.P702355428922306245

`A008683(2*A000040(n+1))+A063278(n+2)-A004396(n)`
-/

namespace A063276.P702355428922306245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat + (A063278 (n + 2) - A004396 n)

end

end A063276.P702355428922306245

/-! ## A063276.P4784960392745764325

`A063278(n+2)-A002264(A004275(n))`
-/

namespace A063276.P4784960392745764325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) - A002264 (A004275 n).toNat

end

end A063276.P4784960392745764325

/-!
# A063277: Dimension of the space of weight n cuspidal newforms for Gamma_1( 4 ).

The programs for A063277, the canonical program `A063277.P16896625443768556237` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063277 has offset 2).

The definition of A063277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063277.P16896625443768556237

`a(n-4)+a(n-6)-a(n-10)` with `a(0)=-1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=2, a(7)=0, a(8)=3, a(9)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063277

/-- `a(n-4)+a(n-6)-a(n-10)` -/
def P16896625443768556237.Spec : Prop :=
  ∀ n, P16896625443768556237.a n = A063277 (n + 2)

theorem P16896625443768556237.correct : P16896625443768556237.Spec := by
  intro n
  simp only [A063277, Nat.add_sub_cancel]

end A063277

/-! ## A063277.P302056970883666731

`A004525(n)-A063208(A152271(n))`
-/

namespace A063277.P302056970883666731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n - A063208 (A152271 n).toNat

end

end A063277.P302056970883666731

namespace A063277

/-- `A004525(n)-A063208(A152271(n))` -/
def P302056970883666731.Spec : Prop :=
  ∀ n, P302056970883666731.a n = A063277 (n + 2)

end A063277

/-! ## A063277.P1876702614838134317

`A110654(n)-A090168(A152271(n))`
-/

namespace A063277.P1876702614838134317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A090168 (A152271 n).toNat

end

end A063277.P1876702614838134317

namespace A063277

/-- `A110654(n)-A090168(A152271(n))` -/
def P1876702614838134317.Spec : Prop :=
  ∀ n, P1876702614838134317.a n = A063277 (n + 2)

end A063277

/-! ## A063277.P773009175903238218

`∑[A000035(n)]-A090168(A152271(n))`
-/

namespace A063277.P773009175903238218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A090168 (A152271 n).toNat

end

end A063277.P773009175903238218

namespace A063277

/-- `∑[A000035(n)]-A090168(A152271(n))` -/
def P773009175903238218.Spec : Prop :=
  ∀ n, P773009175903238218.a n = A063277 (n + 2)

end A063277

/-! ## A063277.P6897378532092620805

`Δ[A002620(n)]-A090168(A152271(n))`
-/

namespace A063277.P6897378532092620805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A090168 (A152271 n).toNat

end

end A063277.P6897378532092620805

namespace A063277

/-- `Δ[A002620(n)]-A090168(A152271(n))` -/
def P6897378532092620805.Spec : Prop :=
  ∀ n, P6897378532092620805.a n = A063277 (n + 2)

end A063277

/-! ## A063277.P9330664389451216189

`A226107(n+1)-A004773(A057979(n))`
-/

namespace A063277.P9330664389451216189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 (n + 1) - A004773 (A057979 n).toNat

end

end A063277.P9330664389451216189

namespace A063277

/-- `A226107(n+1)-A004773(A057979(n))` -/
def P9330664389451216189.Spec : Prop :=
  ∀ n, P9330664389451216189.a n = A063277 (n + 2)

end A063277

/-! ## A063277.P12141405091133541761

`A004526(n+1)-A090168(A057979(n+2))`
-/

namespace A063277.P12141405091133541761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A090168 (A057979 (n + 2)).toNat

end

end A063277.P12141405091133541761

namespace A063277

/-- `A004526(n+1)-A090168(A057979(n+2))` -/
def P12141405091133541761.Spec : Prop :=
  ∀ n, P12141405091133541761.a n = A063277 (n + 2)

end A063277

/-! ## A063277.P4478560306084426113

`A110655(A022998(n))-A097992(A093178(n))`
-/

namespace A063277.P4478560306084426113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A022998 n).toNat - A097992 (A093178 n).toNat

end

end A063277.P4478560306084426113

namespace A063277

/-- `A110655(A022998(n))-A097992(A093178(n))` -/
def P4478560306084426113.Spec : Prop :=
  ∀ n, P4478560306084426113.a n = A063277 (n + 2)

end A063277

/-! ## A063277.P4356203737823422882

`A004525(n)-A008679(A017305(A057979(n)))`
-/

namespace A063277.P4356203737823422882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n - A008679 (A017305 (A057979 n).toNat).toNat

end

end A063277.P4356203737823422882

namespace A063277

/-- `A004525(n)-A008679(A017305(A057979(n)))` -/
def P4356203737823422882.Spec : Prop :=
  ∀ n, P4356203737823422882.a n = A063277 (n + 2)

end A063277

/-! ## A063277.P164405308019700823

`A103221(3*n+1)-A103221(A142150(5*n+1))`
-/

namespace A063277.P164405308019700823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (3 * n + 1) - A103221 (A142150 (5 * n + 1)).toNat

end

end A063277.P164405308019700823

namespace A063277

/-- `A103221(3*n+1)-A103221(A142150(5*n+1))` -/
def P164405308019700823.Spec : Prop :=
  ∀ n, P164405308019700823.a n = A063277 (n + 2)

end A063277

/-! ## A063277.P12889328596539623673

`A008624(A008624(8*n))-A103221(A142150(5*n+1))`
-/

namespace A063277.P12889328596539623673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A008624 (8 * n)).toNat - A103221 (A142150 (5 * n + 1)).toNat

end

end A063277.P12889328596539623673

namespace A063277

/-- `A008624(A008624(8*n))-A103221(A142150(5*n+1))` -/
def P12889328596539623673.Spec : Prop :=
  ∀ n, P12889328596539623673.a n = A063277 (n + 2)

end A063277

/-!
# A063278: Dimension of the space of weight n cuspidal newforms for Gamma_1( 5 ).

The programs for A063278, there is no canonical definition to state claims against.
-/

/-! ## A063278.P13278224707662763491

`A063280(n+2)-(2*n)%(n+1)`
-/

namespace A063278.P13278224707662763491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) - ((2 * n % (n + 1) : ℕ) : ℤ)

end

end A063278.P13278224707662763491

/-! ## A063278.P2239221611646391153

`A063280(n+2)+n-A004273(n)`
-/

namespace A063278.P2239221611646391153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) + ((n : ℤ) - A004273 n)

end

end A063278.P2239221611646391153

/-! ## A063278.P9979006223508935505

`A063284(n+2)-A004273(A004273(n))`
-/

namespace A063278.P9979006223508935505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063284 (n + 2) - A004273 (A004273 n).toNat

end

end A063278.P9979006223508935505

/-! ## A063278.P5786566806081920619

`A063280(n+2)-A004524(A004273(n))`
-/

namespace A063278.P5786566806081920619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) - A004524 (A004273 n).toNat

end

end A063278.P5786566806081920619

/-! ## A063278.P18376654393622681951

`A063280(n+2)-A004526(A004275(n))`
-/

namespace A063278.P18376654393622681951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) - A004526 (A004275 n).toNat

end

end A063278.P18376654393622681951

/-! ## A063278.P12482723800023323191

`A063286(n+2)-(A004273(n)+A004273(A004273(n)))`
-/

namespace A063278.P12482723800023323191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063286 (n + 2) - (A004273 n + A004273 (A004273 n).toNat)

end

end A063278.P12482723800023323191

/-! ## A063278.P7182070130746101942

`A063280(n+2)-A059169(A008574(n))`
-/

namespace A063278.P7182070130746101942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) - A059169 (A008574 n).toNat

end

end A063278.P7182070130746101942

/-! ## A063278.P11281699565736732977

`A063280(n+2)-A003056(A007590(n))`
-/

namespace A063278.P11281699565736732977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) - A003056 (A007590 n).toNat

end

end A063278.P11281699565736732977

/-! ## A063278.P18158135384191962697

`A063280(n+2)-A003056(A161680(n))`
-/

namespace A063278.P18158135384191962697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) - A003056 (A161680 n).toNat

end

end A063278.P18158135384191962697

/-! ## A063278.P8786121730469072182

`A063280(n+2)-A097805(A133263(n))`
-/

namespace A063278.P8786121730469072182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) - A097805 (A133263 n).toNat

end

end A063278.P8786121730469072182

/-! ## A063278.P6159815121881881899

`A063280(n+2)-A002262(A027379(n))`
-/

namespace A063278.P6159815121881881899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) - A002262 (A027379 n).toNat

end

end A063278.P6159815121881881899

/-! ## A063278.P7033116438660588015

`A063280(n+2)-A259361(n²)`
-/

namespace A063278.P7033116438660588015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) - A259361 (n ^ 2)

end

end A063278.P7033116438660588015

/-!
# A063279: Dimension of the space of weight n cuspidal newforms for Gamma_1( 6 ).

The programs for A063279, there is no canonical definition to state claims against.
-/

/-! ## A063279.P8393960642075263882

`A063287(n+2)-A008854(n+1)`
-/

namespace A063279.P8393960642075263882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) - A008854 (n + 1)

end

end A063279.P8393960642075263882

/-! ## A063279.P12659950645173079361

`A063283(n+2)-A008854(n+1)+n`
-/

namespace A063279.P12659950645173079361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) - A008854 (n + 1) + (n : ℤ)

end

end A063279.P12659950645173079361

/-! ## A063279.P2070961449414090247

`A063295(n+2)-3*n-A008854(n+1)`
-/

namespace A063279.P2070961449414090247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) - (3 * n : ℤ) - A008854 (n + 1)

end

end A063279.P2070961449414090247

/-! ## A063279.P16350378591595408134

`A063299(n+2)-5*n-A008854(n+1)`
-/

namespace A063279.P16350378591595408134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) - (5 * n : ℤ) - A008854 (n + 1)

end

end A063279.P16350378591595408134

/-! ## A063279.P10005853520867675932

`A063307(n+2)-10*n-A008854(n+1)`
-/

namespace A063279.P10005853520867675932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) - (10 * n : ℤ) - A008854 (n + 1)

end

end A063279.P10005853520867675932

/-! ## A063279.P2254482994030414021

`A063295(n+2)%A014682(A298024(n))`
-/

namespace A063279.P2254482994030414021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063295 (n + 2)) (A014682 (A298024 n).toNat)

end

end A063279.P2254482994030414021

/-! ## A063279.P17503787812655574034

`A063295(n+2)-(A008854(n+1)+A008585(n))`
-/

namespace A063279.P17503787812655574034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) - (A008854 (n + 1) + A008585 n)

end

end A063279.P17503787812655574034

/-! ## A063279.P17542555771405103817

`A063299(n+2)-(A008854(n+1)+A008587(n))`
-/

namespace A063279.P17542555771405103817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) - (A008854 (n + 1) + A008587 n)

end

end A063279.P17542555771405103817

/-! ## A063279.P17223318459152828654

`A063307(n+2)-(A008854(n+1)+A008592(n))`
-/

namespace A063279.P17223318459152828654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) - (A008854 (n + 1) + A008592 n)

end

end A063279.P17223318459152828654

/-! ## A063279.P3782042278848972282

`A063299(n+2)%A065502(A008574(n))`
-/

namespace A063279.P3782042278848972282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063299 (n + 2)) (A065502 (A008574 n).toNat)

end

end A063279.P3782042278848972282

/-!
# A063280: Dimension of the space of weight n cuspidal newforms for Gamma_1( 7 ).

The programs for A063280, there is no canonical definition to state claims against.
-/

/-! ## A063280.P9327876656094028802

`A063278(n+2)%(n+1)+n-1`
-/

namespace A063280.P9327876656094028802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063278 (n + 2)) (n + 1 : ℤ) + ((n : ℤ) - 1)

end

end A063280.P9327876656094028802

/-! ## A063280.P17625530003804210649

`A063278(n+2)+A004273(n)-n`
-/

namespace A063280.P17625530003804210649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + (A004273 n - (n : ℤ))

end

end A063280.P17625530003804210649

/-! ## A063280.P11772438616908943661

`A063278(n+2)+n-A057427(n)`
-/

namespace A063280.P11772438616908943661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + ((n : ℤ) - A057427 n)

end

end A063280.P11772438616908943661

/-! ## A063280.P2943383445796961052

`A063278(n+2)+record[A006257(n)]-n`
-/

namespace A063280.P2943383445796961052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))

end

end A063280.P2943383445796961052

/-! ## A063280.P16359849454064100885

`A063278(n+2)+A004277(n)-(n+1)`
-/

namespace A063280.P16359849454064100885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + (A004277 n - (n + 1 : ℤ))

end

end A063280.P16359849454064100885

/-! ## A063280.P8923622166814482195

`A063278(n+2)+A045991(n)%(n+1)`
-/

namespace A063280.P8923622166814482195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + Int.tmod (A045991 n) (n + 1 : ℤ)

end

end A063280.P8923622166814482195

/-! ## A063280.P9609837282311470724

`A063278(n+2)+A008486(n)-Δ[n²]`
-/

namespace A063280.P9609837282311470724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + (A008486 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A063280.P9609837282311470724

/-! ## A063280.P823467882662243442

`A063278(n+2)+n-A107286(A107286(n))`
-/

namespace A063280.P823467882662243442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + ((n : ℤ) - A107286 (A107286 n).toNat)

end

end A063280.P823467882662243442

/-! ## A063280.P1562870255951215278

`A063278(n+2)-A024000(n)%A056109(n)`
-/

namespace A063280.P1562870255951215278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) - Int.tmod (A024000 n) (A056109 n)

end

end A063280.P1562870255951215278

/-! ## A063280.P12950698235550024688

`A063278(n+2)+n+1-A020639(A103517(n))`
-/

namespace A063280.P12950698235550024688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + ((n + 1 : ℤ) - A020639 (A103517 n).toNat)

end

end A063280.P12950698235550024688

/-! ## A063280.P9236628597934591903

`A063278(n+2)+A004524(A004273(n))`
-/

namespace A063280.P9236628597934591903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + A004524 (A004273 n).toNat

end

end A063280.P9236628597934591903

/-! ## A063280.P15228650301336902667

`A063278(n+2)+A004526(A004275(n))`
-/

namespace A063280.P15228650301336902667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + A004526 (A004275 n).toNat

end

end A063280.P15228650301336902667

/-! ## A063280.P12485587530967916861

`A063286(n+2)-(A004273(A004273(n))+n)`
-/

namespace A063280.P12485587530967916861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063286 (n + 2) - (A004273 (A004273 n).toNat + (n : ℤ))

end

end A063280.P12485587530967916861

/-! ## A063280.P880742867542348627

`A063278(n+2)+A002264(A004275(n)+n)`
-/

namespace A063280.P880742867542348627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + A002264 (A004275 n + (n : ℤ)).toNat

end

end A063280.P880742867542348627

/-! ## A063280.P15296056417453446555

`A063278(n+2)+A059169(A008574(n))`
-/

namespace A063280.P15296056417453446555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + A059169 (A008574 n).toNat

end

end A063280.P15296056417453446555

/-! ## A063280.P4273054865041688878

`A063278(n+2)+A233583(n+2)-2`
-/

namespace A063280.P4273054865041688878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + (A233583 (n + 2) - 2)

end

end A063280.P4273054865041688878

/-! ## A063280.P15403930169547435010

`A063278(n+2)+log2(A011782(n))`
-/

namespace A063280.P15403930169547435010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063278 (n + 2) : ℝ) + Real.logb 2 (A011782 n : ℝ)

end

end A063280.P15403930169547435010

/-! ## A063280.P9243585947454192932

`A063278(n+2)+A003056(A007590(n))`
-/

namespace A063280.P9243585947454192932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + A003056 (A007590 n).toNat

end

end A063280.P9243585947454192932

/-! ## A063280.P11469579325557549195

`A063278(n+2)+A002262(A027379(n))`
-/

namespace A063280.P11469579325557549195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + A002262 (A027379 n).toNat

end

end A063280.P11469579325557549195

/-! ## A063280.P18213333754188264031

`A259361(n²)+A063278(n+2)`
-/

namespace A063280.P18213333754188264031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (n ^ 2) + A063278 (n + 2)

end

end A063280.P18213333754188264031

/-!
# A063281: Dimension of the space of weight n cuspidal newforms for Gamma_1( 8 ).

The programs for A063281, the canonical program `A063281.P4522217296163462892` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063281 has offset 2).

The definition of A063281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063281.P4522217296163462892

`round(5*n/(gcd(2, n)+3))-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063281

/-- `round(5*n/(gcd(2, n)+3))-1` -/
def P4522217296163462892.Spec : Prop :=
  ∀ n, P4522217296163462892.a n = A063281 (n + 2)

theorem P4522217296163462892.correct : P4522217296163462892.Spec := by
  intro n
  simp only [A063281, Nat.add_sub_cancel]

end A063281

/-! ## A063281.P16884376970305309583

`ceil((and(1, n)+4)*(n-1)/4)`
-/

namespace A063281.P16884376970305309583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 1 n + 4 : ℚ) * (((n : ℤ) - 1 : ℚ) / 4)⌉

end

end A063281.P16884376970305309583

namespace A063281

/-- `ceil((and(1, n)+4)*(n-1)/4)` -/
def P16884376970305309583.Spec : Prop :=
  ∀ n, P16884376970305309583.a n = A063281 (n + 2)

end A063281

/-! ## A063281.P6529874684876384290

`round((and(1, n)+4)*n/4)-1`
-/

namespace A063281.P6529874684876384290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 1 n + 4 : ℚ) * ((n : ℚ) / 4)) - 1

end

end A063281.P6529874684876384290

namespace A063281

/-- `round((and(1, n)+4)*n/4)-1` -/
def P6529874684876384290.Spec : Prop :=
  ∀ n, P6529874684876384290.a n = A063281 (n + 2)

end A063281

/-! ## A063281.P8653336864648831072

`floor((lcm(2, n)-(n+3))/4+n)`
-/

namespace A063281.P8653336864648831072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 2 n : ℤ) - (n + 3 : ℤ) : ℚ) / 4 + (n : ℚ)⌋

end

end A063281.P8653336864648831072

namespace A063281

/-- `floor((lcm(2, n)-(n+3))/4+n)` -/
def P8653336864648831072.Spec : Prop :=
  ∀ n, P8653336864648831072.a n = A063281 (n + 2)

end A063281

/-! ## A063281.P1337986264129282032

`n%2*round(n/4)+n-1`
-/

namespace A063281.P1337986264129282032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * SequenceMachineLib.roundAway ((n : ℚ) / 4) + ((n : ℤ) - 1)

end

end A063281.P1337986264129282032

namespace A063281

/-- `n%2*round(n/4)+n-1` -/
def P1337986264129282032.Spec : Prop :=
  ∀ n, P1337986264129282032.a n = A063281 (n + 2)

end A063281

/-! ## A063281.P1038171536890527287

`round(n^and(1, n)/4)+n-1`
-/

namespace A063281.P1038171536890527287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ Nat.land 1 n : ℚ) / 4) + ((n : ℤ) - 1)

end

end A063281.P1038171536890527287

namespace A063281

/-- `round(n^and(1, n)/4)+n-1` -/
def P1038171536890527287.Spec : Prop :=
  ∀ n, P1038171536890527287.a n = A063281 (n + 2)

end A063281

/-! ## A063281.P14073689649061877572

`floor(Δ[(or(1, n)/4)²]+n-1)`
-/

namespace A063281.P14073689649061877572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℚ) / 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n + ((n : ℤ) - 1 : ℚ)⌋

end

end A063281.P14073689649061877572

namespace A063281

/-- `floor(Δ[(or(1, n)/4)²]+n-1)` -/
def P14073689649061877572.Spec : Prop :=
  ∀ n, P14073689649061877572.a n = A063281 (n + 2)

end A063281

/-! ## A063281.P13585992407375755129

`floor(∑[n]%(n+1)/2-1+n)`
-/

namespace A063281.P13585992407375755129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℚ) / 2 - 1 + (n : ℚ)⌋

end

end A063281.P13585992407375755129

namespace A063281

/-- `floor(∑[n]%(n+1)/2-1+n)` -/
def P13585992407375755129.Spec : Prop :=
  ∀ n, P13585992407375755129.a n = A063281 (n + 2)

end A063281

/-! ## A063281.P18310035013883248434

`floor(gcd(xor(1, n²), ∑[n])/2)-1+n`
-/

namespace A063281.P18310035013883248434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋ - 1 + (n : ℤ)

end

end A063281.P18310035013883248434

namespace A063281

/-- `floor(gcd(xor(1, n²), ∑[n])/2)-1+n` -/
def P18310035013883248434.Spec : Prop :=
  ∀ n, P18310035013883248434.a n = A063281 (n + 2)

end A063281

/-! ## A063281.P7339130749726683832

`round(n/4*char[2*n+1]+n)-1`
-/

namespace A063281.P7339130749726683832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 4 * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (n : ℚ)) - 1

end

end A063281.P7339130749726683832

namespace A063281

/-- `round(n/4*char[2*n+1]+n)-1` -/
def P7339130749726683832.Spec : Prop :=
  ∀ n, P7339130749726683832.a n = A063281 (n + 2)

end A063281

/-! ## A063281.P5197188372102343445

`floor((A004526(n*A000035(n))-1)/2+n)`
-/

namespace A063281.P5197188372102343445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004526 ((n : ℤ) * A000035 n).toNat - 1 : ℚ) / 2 + (n : ℚ)⌋

end

end A063281.P5197188372102343445

namespace A063281

/-- `floor((A004526(n*A000035(n))-1)/2+n)` -/
def P5197188372102343445.Spec : Prop :=
  ∀ n, P5197188372102343445.a n = A063281 (n + 2)

end A063281

/-!
# A063283: Dimension of the space of weight n cuspidal newforms for Gamma_1( 10 ).

The programs for A063283, there is no canonical definition to state claims against.
-/

/-! ## A063283.P11693506091141636474

`A063287(n+2)-n`
-/

namespace A063283.P11693506091141636474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) - (n : ℤ)

end

end A063283.P11693506091141636474

/-! ## A063283.P5525962564248941073

`A063295(n+2)-4*n`
-/

namespace A063283.P5525962564248941073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) - (4 * n : ℤ)

end

end A063283.P5525962564248941073

/-! ## A063283.P8937814047322163641

`A063299(n+2)-6*n`
-/

namespace A063283.P8937814047322163641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) - (6 * n : ℤ)

end

end A063283.P8937814047322163641

/-! ## A063283.P3319289764165920987

`A063307(n+2)-11*n`
-/

namespace A063283.P3319289764165920987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) - (11 * n : ℤ)

end

end A063283.P3319289764165920987

/-! ## A063283.P9927853088569432558

`A063311(n+2)-A008596(n)`
-/

namespace A063283.P9927853088569432558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) - A008596 n

end

end A063283.P9927853088569432558

/-! ## A063283.P8067306780617824682

`A063319(n+2)-A008603(n)`
-/

namespace A063283.P8067306780617824682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - A008603 n

end

end A063283.P8067306780617824682

/-! ## A063283.P17005415860042189610

`A063311(n+2)-2*A008589(n)`
-/

namespace A063283.P17005415860042189610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) - 2 * A008589 n

end

end A063283.P17005415860042189610

/-! ## A063283.P17539902537936698684

`A063311(n+2)-(A008595(n)+n)`
-/

namespace A063283.P17539902537936698684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) - (A008595 n + (n : ℤ))

end

end A063283.P17539902537936698684

/-! ## A063283.P6822027541914922646

`A063319(n+2)-(A008602(n)+n)`
-/

namespace A063283.P6822027541914922646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - (A008602 n + (n : ℤ))

end

end A063283.P6822027541914922646

/-! ## A063283.P6039850314762648874

`A063347(n+2)-n*A040756(n)`
-/

namespace A063283.P6039850314762648874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063347 (n + 2) - (n : ℤ) * A040756 n

end

end A063283.P6039850314762648874

/-! ## A063283.P11031546153903430225

`A008854(n+1)+A063279(n+2)-n`
-/

namespace A063283.P11031546153903430225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1) + (A063279 (n + 2) - (n : ℤ))

end

end A063283.P11031546153903430225

/-! ## A063283.P17908880039211831383

`A063295(n+2)-A005843(n)-A005843(n)`
-/

namespace A063283.P17908880039211831383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) - A005843 n - A005843 n

end

end A063283.P17908880039211831383

/-! ## A063283.P7094733478598592258

`A002264(n+1)+A063279(n+2)+A002264(n+1)`
-/

namespace A063283.P7094733478598592258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + (A063279 (n + 2) + A002264 (n + 1))

end

end A063283.P7094733478598592258

/-!
# A063284: Dimension of the space of weight n cuspidal newforms for Gamma_1( 11 ).

The programs for A063284, there is no canonical definition to state claims against.
-/

/-! ## A063284.P6601874023687146869

`A063286(n+2)-A004273(n)`
-/

namespace A063284.P6601874023687146869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063286 (n + 2) - A004273 n

end

end A063284.P6601874023687146869

/-! ## A063284.P10178267810640221351

`A063286(n+2)-A130824(n)/2`
-/

namespace A063284.P10178267810640221351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063286 (n + 2) : ℚ) - (A130824 n : ℚ) / 2

end

end A063284.P10178267810640221351

/-! ## A063284.P6456045566487494617

`A063280(n+2)+2*A004273(n)-n`
-/

namespace A063284.P6456045566487494617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) + (2 * A004273 n - (n : ℤ))

end

end A063284.P6456045566487494617

/-! ## A063284.P5112486752413766451

`A063278(n+2)+record[A266222(n)]`
-/

namespace A063284.P5112486752413766451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063284.P5112486752413766451

/-! ## A063284.P8096489648374823549

`A063280(n+2)+record[A001281(n)/2]`
-/

namespace A063284.P8096489648374823549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001281 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063280 (n + 2) : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063284.P8096489648374823549

/-! ## A063284.P8179109543666804326

`A063278(n+2)+record[A001281(n)-n]`
-/

namespace A063284.P8179109543666804326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063284.P8179109543666804326

/-! ## A063284.P14562435089989927613

`A063278(n+2)+A004273(A004273(n))`
-/

namespace A063284.P14562435089989927613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + A004273 (A004273 n).toNat

end

end A063284.P14562435089989927613

/-! ## A063284.P11289189709321874129

`A266222(A004275(n))+A063278(n+2)`
-/

namespace A063284.P11289189709321874129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 (A004275 n).toNat + A063278 (n + 2)

end

end A063284.P11289189709321874129

/-! ## A063284.P14581360994869365991

`A325168(2*n+1)+A063278(n+2)`
-/

namespace A063284.P14581360994869365991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325168 (2 * n + 1) + A063278 (n + 2)

end

end A063284.P14581360994869365991

/-! ## A063284.P11644124238354825551

`A063278(n+2)+record[A006257(A005843(n))]`
-/

namespace A063284.P11644124238354825551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063284.P11644124238354825551

/-! ## A063284.P17902832818145227569

`A063280(n+2)+record[A226782(n+1)]`
-/

namespace A063284.P17902832818145227569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063284.P17902832818145227569

/-! ## A063284.P2003051076623303002

`A063278(n+2)+A014681(A130824(n))`
-/

namespace A063284.P2003051076623303002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + A014681 (A130824 n).toNat

end

end A063284.P2003051076623303002

/-! ## A063284.P476238739241785504

`A063280(n+2)+A001281(record[A001281(n)])`
-/

namespace A063284.P476238739241785504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) + A001281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063284.P476238739241785504

/-! ## A063284.P11200713420768234018

`A063280(n+2)+A002265(A008458(A004273(n)))`
-/

namespace A063284.P11200713420768234018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) + A002265 (A008458 (A004273 n).toNat).toNat

end

end A063284.P11200713420768234018

/-!
# A063286: Dimension of the space of weight n cuspidal newforms for Gamma_1( 13 ).

The programs for A063286, there is no canonical definition to state claims against.
-/

/-! ## A063286.P936764634958899880

`A063284(n+2)+A004273(n)`
-/

namespace A063286.P936764634958899880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063284 (n + 2) + A004273 n

end

end A063286.P936764634958899880

/-! ## A063286.P1390411130165643730

`A063284(n+2)+record[A006257(n)]`
-/

namespace A063286.P1390411130165643730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063284 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063286.P1390411130165643730

/-! ## A063286.P15386515614732405151

`A063290(n+2)-record[A014682(n)+n]`
-/

namespace A063286.P15386515614732405151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063286.P15386515614732405151

/-! ## A063286.P15774585456773729253

`A063290(n+2)-(2*A004273(n)+n)`
-/

namespace A063286.P15774585456773729253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) - (2 * A004273 n + (n : ℤ))

end

end A063286.P15774585456773729253

/-! ## A063286.P375214950946020128

`A063284(n+2)+record[A006369(n)]`
-/

namespace A063286.P375214950946020128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063284 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063286.P375214950946020128

/-! ## A063286.P14491856685678578950

`A063278(n+2)+record[A001281(n)]`
-/

namespace A063286.P14491856685678578950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063286.P14491856685678578950

/-! ## A063286.P12150118432972892696

`A063284(n+2)+record[A026741(n)]`
-/

namespace A063286.P12150118432972892696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063284 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063286.P12150118432972892696

/-! ## A063286.P8425792516325757550

`A063284(n+2)+record[A106617(n)]`
-/

namespace A063286.P8425792516325757550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063284 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063286.P8425792516325757550

/-! ## A063286.P5069062383139830200

`A063284(n+2)+record[A255563(n)]`
-/

namespace A063286.P5069062383139830200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063284 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063286.P5069062383139830200

/-! ## A063286.P7128627060842562562

`A063284(n+2)+A014681(2*n)`
-/

namespace A063286.P7128627060842562562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063284 (n + 2) + A014681 (2 * n)

end

end A063286.P7128627060842562562

/-! ## A063286.P2383498287249342839

`A063290(n+2)-record[A185727(n)+n]`
-/

namespace A063286.P2383498287249342839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063286.P2383498287249342839

/-! ## A063286.P8322859063356241021

`A063280(n+2)+A004273(A004273(n))+n`
-/

namespace A063286.P8322859063356241021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) + (A004273 (A004273 n).toNat + (n : ℤ))

end

end A063286.P8322859063356241021

/-! ## A063286.P4475626210312081467

`A063278(n+2)+A004273(n)+A004273(A004273(n))`
-/

namespace A063286.P4475626210312081467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + (A004273 n + A004273 (A004273 n).toNat)

end

end A063286.P4475626210312081467

/-!
# A063287: Dimension of the space of weight n cuspidal newforms for Gamma_1( 14 ).

The programs for A063287, there is no canonical definition to state claims against.
-/

/-! ## A063287.P755051435070315078

`A063283(n+2)+n`
-/

namespace A063287.P755051435070315078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + (n : ℤ)

end

end A063287.P755051435070315078

/-! ## A063287.P9568131347062703334

`A063295(n+2)-3*n`
-/

namespace A063287.P9568131347062703334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) - (3 * n : ℤ)

end

end A063287.P9568131347062703334

/-! ## A063287.P3459419831760518668

`A063299(n+2)-5*n`
-/

namespace A063287.P3459419831760518668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) - (5 * n : ℤ)

end

end A063287.P3459419831760518668

/-! ## A063287.P6739389474866550034

`A063307(n+2)-10*n`
-/

namespace A063287.P6739389474866550034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) - (10 * n : ℤ)

end

end A063287.P6739389474866550034

/-! ## A063287.P8623999331586247765

`A063311(n+2)-A008595(n)`
-/

namespace A063287.P8623999331586247765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) - A008595 n

end

end A063287.P8623999331586247765

/-! ## A063287.P9971296050735033109

`A063319(n+2)-A008602(n)`
-/

namespace A063287.P9971296050735033109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - A008602 n

end

end A063287.P9971296050735033109

/-! ## A063287.P10356701956018266485

`A063367(n+2)%A168101(n)`
-/

namespace A063287.P10356701956018266485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063367 (n + 2)) (A168101 n)

end

end A063287.P10356701956018266485

/-! ## A063287.P3385568026644480012

`A063279(n+2)+A008854(n+1)`
-/

namespace A063287.P3385568026644480012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063279 (n + 2) + A008854 (n + 1)

end

end A063287.P3385568026644480012

/-! ## A063287.P15869998589312647507

`A063319(n+2)-2*A008592(n)`
-/

namespace A063287.P15869998589312647507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - 2 * A008592 n

end

end A063287.P15869998589312647507

/-! ## A063287.P15850385665111574200

`A063311(n+2)+n-A008596(n)`
-/

namespace A063287.P15850385665111574200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + ((n : ℤ) - A008596 n)

end

end A063287.P15850385665111574200

/-! ## A063287.P13135700340073058946

`A063319(n+2)+n-A008603(n)`
-/

namespace A063287.P13135700340073058946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) + ((n : ℤ) - A008603 n)

end

end A063287.P13135700340073058946

/-! ## A063287.P5687916552569241371

`A063335(n+2)-(A085959(n)+n)`
-/

namespace A063287.P5687916552569241371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - (A085959 n + (n : ℤ))

end

end A063287.P5687916552569241371

/-! ## A063287.P15000837624731265772

`A063307(n+2)-A008587(n)-A008587(n)`
-/

namespace A063287.P15000837624731265772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) - A008587 n - A008587 n

end

end A063287.P15000837624731265772

/-!
# A063288: Dimension of the space of weight n cuspidal newforms for Gamma_1( 15 ).

The programs for A063288, there is no canonical definition to state claims against.
-/

/-! ## A063288.P2040385856950193507

`A063294(n+2)-record[A006370(n)]`
-/

namespace A063288.P2040385856950193507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063288.P2040385856950193507

/-! ## A063288.P674249831799160442

`A063294(n+2)-A006370(A004273(n))`
-/

namespace A063288.P674249831799160442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) - A006370 (A004273 n).toNat

end

end A063288.P674249831799160442

/-! ## A063288.P12160364317596180601

`A063294(n+2)-A004275(3*n)`
-/

namespace A063288.P12160364317596180601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) - A004275 (3 * n)

end

end A063288.P12160364317596180601

/-! ## A063288.P14297335535091999643

`A063294(n+2)-A289207(A008458(n))`
-/

namespace A063288.P14297335535091999643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) - A289207 (A008458 n).toNat

end

end A063288.P14297335535091999643

/-! ## A063288.P18168065068264729579

`A063294(n+2)-eq[A063282(n+2), A063291(n+2)]`
-/

namespace A063288.P18168065068264729579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063282 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A063288.P18168065068264729579

/-!
# A063289: Dimension of the space of weight n cuspidal newforms for Gamma_1( 16 ).

The programs for A063289, the canonical program `A063289.P401268230358747086` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063289 has offset 2).

The definition of A063289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063289.P401268230358747086

`a(n-2)+9` with `a(0)=-1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063289

/-- `a(n-2)+9` -/
def P401268230358747086.Spec : Prop :=
  ∀ n, P401268230358747086.a n = A063289 (n + 2)

theorem P401268230358747086.correct : P401268230358747086.Spec := by
  intro n
  simp only [A063289, Nat.add_sub_cancel]

end A063289

/-! ## A063289.P9375737846714026323

`record[ceil(n/2)-3^dr(n)]`
-/

namespace A063289.P9375737846714026323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - (3 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063289.P9375737846714026323

namespace A063289

/-- `record[ceil(n/2)-3^dr(n)]` -/
def P9375737846714026323.Spec : Prop :=
  ∀ n, P9375737846714026323.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P15057706362300639460

`6*n-∑[ceil(ratio[or(1, n)])]`
-/

namespace A063289.P15057706362300639460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063289.P15057706362300639460

namespace A063289

/-- `6*n-∑[ceil(ratio[or(1, n)])]` -/
def P15057706362300639460.Spec : Prop :=
  ∀ n, P15057706362300639460.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P14948588128516116059

`∑[9-a(n-1)]` with `a(0)=-1, a(1)=3, a(2)=5`
-/

namespace A063289.P14948588128516116059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3, 5] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063289.P14948588128516116059

namespace A063289

/-- `∑[9-a(n-1)]` -/
def P14948588128516116059.Spec : Prop :=
  ∀ n, P14948588128516116059.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P12059416505366695346

`∑[∑[ogf((-1+3x+6x^2+x^3)/(1+x))]]`
-/

namespace A063289.P12059416505366695346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, 6, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063289.P12059416505366695346

namespace A063289

/-- `∑[∑[ogf((-1+3x+6x^2+x^3)/(1+x))]]` -/
def P12059416505366695346.Spec : Prop :=
  ∀ n, P12059416505366695346.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P7245998847288832962

`ogf((-1+3x+6x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063289.P7245998847288832962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, 6, 1] [1, -1, -1, 1] n

end

end A063289.P7245998847288832962

namespace A063289

/-- `ogf((-1+3x+6x^2+x^3)/(1-x-x^2+x^3))` -/
def P7245998847288832962.Spec : Prop :=
  ∀ n, P7245998847288832962.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P6549462589906467954

`round(record[lcm(2, n)]-(1-n)/2)`
-/

namespace A063289.P6549462589906467954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (1 - (n : ℤ) : ℚ) / 2)

end

end A063289.P6549462589906467954

namespace A063289

/-- `round(record[lcm(2, n)]-(1-n)/2)` -/
def P6549462589906467954.Spec : Prop :=
  ∀ n, P6549462589906467954.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P1119432397124803910

`record[n²%7+n]+n-1`
-/

namespace A063289.P1119432397124803910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 7 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((n : ℤ) - 1)

end

end A063289.P1119432397124803910

namespace A063289

/-- `record[n²%7+n]+n-1` -/
def P1119432397124803910.Spec : Prop :=
  ∀ n, P1119432397124803910.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P15154229827794131648

`record[(n*(n+1))%9-1+n]`
-/

namespace A063289.P15154229827794131648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) % 9 : ℕ) : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063289.P15154229827794131648

namespace A063289

/-- `record[(n*(n+1))%9-1+n]` -/
def P15154229827794131648.Spec : Prop :=
  ∀ n, P15154229827794131648.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P12619256707349734307

`record[dr(n²+1+n)+n-2]`
-/

namespace A063289.P12619256707349734307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n ^ 2 + 1 + n : ℤ) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063289.P12619256707349734307

namespace A063289

/-- `record[dr(n²+1+n)+n-2]` -/
def P12619256707349734307.Spec : Prop :=
  ∀ n, P12619256707349734307.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P15144516580492952922

`A016921(n)-A049636(n)`
-/

namespace A063289.P15144516580492952922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - A049636 n

end

end A063289.P15144516580492952922

namespace A063289

/-- `A016921(n)-A049636(n)` -/
def P15144516580492952922.Spec : Prop :=
  ∀ n, P15144516580492952922.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P10902388180099032661

`A032766(n)-A112335(n)`
-/

namespace A063289.P10902388180099032661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n - A112335 n

end

end A063289.P10902388180099032661

namespace A063289

/-- `A032766(n)-A112335(n)` -/
def P10902388180099032661.Spec : Prop :=
  ∀ n, P10902388180099032661.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P16012293861404071771

`A056000(n)-A105343(n)`
-/

namespace A063289.P16012293861404071771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n - A105343 n

end

end A063289.P16012293861404071771

namespace A063289

/-- `A056000(n)-A105343(n)` -/
def P16012293861404071771.Spec : Prop :=
  ∀ n, P16012293861404071771.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P17048224539290915868

`A211013(n)-A054275(n)`
-/

namespace A063289.P17048224539290915868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n - A054275 n

end

end A063289.P17048224539290915868

namespace A063289

/-- `A211013(n)-A054275(n)` -/
def P17048224539290915868.Spec : Prop :=
  ∀ n, P17048224539290915868.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P5143900352257204954

`A146763(n)-A266977(n)`
-/

namespace A063289.P5143900352257204954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n - A266977 n

end

end A063289.P5143900352257204954

namespace A063289

/-- `A146763(n)-A266977(n)` -/
def P5143900352257204954.Spec : Prop :=
  ∀ n, P5143900352257204954.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P11542082485963033820

`A056991(A004275(n+1))-2`
-/

namespace A063289.P11542082485963033820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A004275 (n + 1)).toNat - 2

end

end A063289.P11542082485963033820

namespace A063289

/-- `A056991(A004275(n+1))-2` -/
def P11542082485963033820.Spec : Prop :=
  ∀ n, P11542082485963033820.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P1559008293696184552

`A022144(n)-A047276(n+1)`
-/

namespace A063289.P1559008293696184552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047276 (n + 1)

end

end A063289.P1559008293696184552

namespace A063289

/-- `A022144(n)-A047276(n+1)` -/
def P1559008293696184552.Spec : Prop :=
  ∀ n, P1559008293696184552.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P14077816111515835467

`A008706(n)-(A080513(n)+1)`
-/

namespace A063289.P14077816111515835467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (A080513 n + 1)

end

end A063289.P14077816111515835467

namespace A063289

/-- `A008706(n)-(A080513(n)+1)` -/
def P14077816111515835467.Spec : Prop :=
  ∀ n, P14077816111515835467.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P1070408473429888897

`A063093(n+1)-A052938(n)`
-/

namespace A063289.P1070408473429888897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1) - A052938 n

end

end A063289.P1070408473429888897

namespace A063289

/-- `A063093(n+1)-A052938(n)` -/
def P1070408473429888897.Spec : Prop :=
  ∀ n, P1070408473429888897.a n = A063289 (n + 2)

end A063289

/-! ## A063289.P14113779020089433248

`A090570(n+1)-A280193(n)`
-/

namespace A063289.P14113779020089433248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (n + 1) - A280193 n

end

end A063289.P14113779020089433248

namespace A063289

/-- `A090570(n+1)-A280193(n)` -/
def P14113779020089433248.Spec : Prop :=
  ∀ n, P14113779020089433248.a n = A063289 (n + 2)

end A063289

/-!
# A063290: Dimension of the space of weight n cuspidal newforms for Gamma_1( 17 ).

The programs for A063290, there is no canonical definition to state claims against.
-/

/-! ## A063290.P1670313620002527971

`A063292(n+2)-record[A014682(n)]`
-/

namespace A063290.P1670313620002527971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063290.P1670313620002527971

/-! ## A063290.P7710797821854152861

`A063292(n+2)+1-A008486(n)`
-/

namespace A063290.P7710797821854152861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) + (1 - A008486 n)

end

end A063290.P7710797821854152861

/-! ## A063290.P18364110394632486522

`A063280(n+2)+5*A004273(n)`
-/

namespace A063290.P18364110394632486522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063280 (n + 2) + 5 * A004273 n

end

end A063290.P18364110394632486522

/-! ## A063290.P11088891827116397164

`A063286(n+2)+A130824(n)+n`
-/

namespace A063290.P11088891827116397164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063286 (n + 2) + (A130824 n + (n : ℤ))

end

end A063290.P11088891827116397164

/-! ## A063290.P7396255681678730098

`A063292(n+2)-(A004273(n)+n)`
-/

namespace A063290.P7396255681678730098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) - (A004273 n + (n : ℤ))

end

end A063290.P7396255681678730098

/-! ## A063290.P16551171993698963991

`A063292(n+2)-record[A185727(n)]`
-/

namespace A063290.P16551171993698963991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063290.P16551171993698963991

/-! ## A063290.P15564421090508798623

`A063292(n+2)-A007494(A004273(n))`
-/

namespace A063290.P15564421090508798623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) - A007494 (A004273 n).toNat

end

end A063290.P15564421090508798623

/-! ## A063290.P17826280712647017432

`A063292(n+2)+A024000(A008486(n))`
-/

namespace A063290.P17826280712647017432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) + A024000 (A008486 n).toNat

end

end A063290.P17826280712647017432

/-! ## A063290.P5196205751394020186

`A063292(n+2)-A143051(A008585(n))`
-/

namespace A063290.P5196205751394020186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) - A143051 (A008585 n).toNat

end

end A063290.P5196205751394020186

/-! ## A063290.P15999479440397690625

`A063292(n+2)-A249738(A008458(n))`
-/

namespace A063290.P15999479440397690625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) - A249738 (A008458 n).toNat

end

end A063290.P15999479440397690625

/-!
# A063292: Dimension of the space of weight n cuspidal newforms for Gamma_1( 19 ).

The programs for A063292, there is no canonical definition to state claims against.
-/

/-! ## A063292.P13978923757635516334

`A063290(n+2)+record[A014682(n)]`
-/

namespace A063292.P13978923757635516334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063292.P13978923757635516334

/-! ## A063292.P6285611545076590340

`A063290(n+2)+A008486(n)-1`
-/

namespace A063292.P6285611545076590340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + (A008486 n - 1)

end

end A063292.P6285611545076590340

/-! ## A063292.P9312762432527889165

`A063290(n+2)+A004273(n)+n`
-/

namespace A063292.P9312762432527889165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + (A004273 n + (n : ℤ))

end

end A063292.P9312762432527889165

/-! ## A063292.P14048402757623007000

`A063290(n+2)+record[A185727(n)]`
-/

namespace A063292.P14048402757623007000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063292.P14048402757623007000

/-! ## A063292.P5287140907918408051

`A063290(n+2)+A007494(A004273(n))`
-/

namespace A063292.P5287140907918408051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + A007494 (A004273 n).toNat

end

end A063292.P5287140907918408051

/-! ## A063292.P5000240219847648868

`A063278(n+2)+A008589(A004273(n))`
-/

namespace A063292.P5000240219847648868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (n + 2) + A008589 (A004273 n).toNat

end

end A063292.P5000240219847648868

/-! ## A063292.P13707031307130998866

`A143051(A008585(n))+A063290(n+2)`
-/

namespace A063292.P13707031307130998866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A008585 n).toNat + A063290 (n + 2)

end

end A063292.P13707031307130998866

/-! ## A063292.P13300709077588778472

`A063290(n+2)-A024000(A008486(n))`
-/

namespace A063292.P13300709077588778472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) - A024000 (A008486 n).toNat

end

end A063292.P13300709077588778472

/-! ## A063292.P561459965109348413

`A249738(A008458(n))+A063290(n+2)`
-/

namespace A063292.P561459965109348413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A008458 n).toNat + A063290 (n + 2)

end

end A063292.P561459965109348413

/-!
# A063293: Dimension of the space of weight n cuspidal newforms for Gamma_1( 20 ).

The programs for A063293, there is no canonical definition to state claims against.
-/

/-! ## A063293.P17869753093462454548

`A063301(n+2)%(2-A008589(n))`
-/

namespace A063293.P17869753093462454548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063301 (n + 2)) (2 - A008589 n)

end

end A063293.P17869753093462454548

/-! ## A063293.P14627005478022793160

`A063292(n+2)+A063301(n+2)-A063296(n+2)`
-/

namespace A063293.P14627005478022793160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) + (A063301 (n + 2) - A063296 (n + 2))

end

end A063293.P14627005478022793160

/-! ## A063293.P4991637643624788568

`A063304(n+2)+A063365(n+2)-A063340(n+2)`
-/

namespace A063293.P4991637643624788568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (A063365 (n + 2) - A063340 (n + 2))

end

end A063293.P4991637643624788568

/-!
# A063294: Dimension of the space of weight n cuspidal newforms for Gamma_1( 21 ).

The programs for A063294, there is no canonical definition to state claims against.
-/

/-! ## A063294.P15944247730722696468

`A063306(n+2)-(A063305(n+2)+1)`
-/

namespace A063294.P15944247730722696468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063306 (n + 2) - (A063305 (n + 2) + 1)

end

end A063294.P15944247730722696468

/-! ## A063294.P7950055824596504934

`A063288(n+2)+record[A006370(n)]`
-/

namespace A063294.P7950055824596504934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063294.P7950055824596504934

/-! ## A063294.P2907631974172641994

`A063288(n+2)+A006370(A004273(n))`
-/

namespace A063294.P2907631974172641994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + A006370 (A004273 n).toNat

end

end A063294.P2907631974172641994

/-! ## A063294.P256345846008064732

`A063288(n+2)+A004275(3*n)`
-/

namespace A063294.P256345846008064732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + A004275 (3 * n)

end

end A063294.P256345846008064732

/-! ## A063294.P9853635601445240200

`A289207(A008458(n))+A063288(n+2)`
-/

namespace A063294.P9853635601445240200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008458 n).toNat + A063288 (n + 2)

end

end A063294.P9853635601445240200

/-!
# A063295: Dimension of the space of weight n cuspidal newforms for Gamma_1( 22 ).

The programs for A063295, there is no canonical definition to state claims against.
-/

/-! ## A063295.P14576546968697011161

`A063287(n+2)+3*n`
-/

namespace A063295.P14576546968697011161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + (3 * n : ℤ)

end

end A063295.P14576546968697011161

/-! ## A063295.P1689248505685349970

`A063299(n+2)-2*n`
-/

namespace A063295.P1689248505685349970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) - (2 * n : ℤ)

end

end A063295.P1689248505685349970

/-! ## A063295.P8670590807451769664

`A063283(n+2)+4*n`
-/

namespace A063295.P8670590807451769664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + (4 * n : ℤ)

end

end A063295.P8670590807451769664

/-! ## A063295.P1385430378709958419

`A063311(n+2)-10*n`
-/

namespace A063295.P1385430378709958419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) - (10 * n : ℤ)

end

end A063295.P1385430378709958419

/-! ## A063295.P17866486143597298129

`A063307(n+2)-A008589(n)`
-/

namespace A063295.P17866486143597298129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) - A008589 n

end

end A063295.P17866486143597298129

/-! ## A063295.P57312751993998735

`A063319(n+2)-A008599(n)`
-/

namespace A063295.P57312751993998735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - A008599 n

end

end A063295.P57312751993998735

/-! ## A063295.P9527285466689943833

`A063331(n+2)-A249674(n)`
-/

namespace A063295.P9527285466689943833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - A249674 n

end

end A063295.P9527285466689943833

/-! ## A063295.P13680524720618406593

`A063319(n+2)+n-A008600(n)`
-/

namespace A063295.P13680524720618406593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) + ((n : ℤ) - A008600 n)

end

end A063295.P13680524720618406593

/-! ## A063295.P13620077706233693687

`A005843(n)+A063283(n+2)+A005843(n)`
-/

namespace A063295.P13620077706233693687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A063283 (n + 2) + A005843 n)

end

end A063295.P13620077706233693687

/-! ## A063295.P7263216584091453956

`A063331(n+2)-A008587(6*n)`
-/

namespace A063295.P7263216584091453956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - A008587 (6 * n)

end

end A063295.P7263216584091453956

/-!
# A063296: Dimension of the space of weight n cuspidal newforms for Gamma_1( 23 ).

The programs for A063296, there is no canonical definition to state claims against.
-/

/-! ## A063296.P7162452066636849996

`A063304(n+2)-(A063305(n+2)+1)`
-/

namespace A063296.P7162452066636849996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) - (A063305 (n + 2) + 1)

end

end A063296.P7162452066636849996

/-! ## A063296.P9137625541928955367

`A063292(n+2)+A063301(n+2)-A063293(n+2)`
-/

namespace A063296.P9137625541928955367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063292 (n + 2) + (A063301 (n + 2) - A063293 (n + 2))

end

end A063296.P9137625541928955367

/-! ## A063296.P1358918421604713852

`A063297(n+2)+A063304(n+2)-A063313(n+2)`
-/

namespace A063296.P1358918421604713852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063297 (n + 2) + (A063304 (n + 2) - A063313 (n + 2))

end

end A063296.P1358918421604713852

/-! ## A063296.P9344470889010338660

`A063290(n+2)+A047217(A008458(n))`
-/

namespace A063296.P9344470889010338660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + A047217 (A008458 n).toNat

end

end A063296.P9344470889010338660

/-! ## A063296.P12282130622850601899

`A023443(A063304(n+2)-A063305(n+2))`
-/

namespace A063296.P12282130622850601899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063304 (n + 2) - A063305 (n + 2)).toNat

end

end A063296.P12282130622850601899

/-!
# A063297: Dimension of the space of weight n cuspidal newforms for Gamma_1( 24 ).

The programs for A063297, the canonical program `A063297.P1609756068591715116` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063297 has offset 2).

The definition of A063297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063297.P1609756068591715116

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=5, a(2)=12, a(3)=17, a(4)=26, a(5)=31, a(6)=40`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063297

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P1609756068591715116.Spec : Prop :=
  ∀ n, P1609756068591715116.a n = A063297 (n + 2)

theorem P1609756068591715116.correct : P1609756068591715116.Spec := by
  intro n
  simp only [A063297, Nat.add_sub_cancel]

end A063297

/-! ## A063297.P4234815838337703701

`A008458(n)+A186421(n)-2`
-/

namespace A063297.P4234815838337703701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A186421 n - 2)

end

end A063297.P4234815838337703701

namespace A063297

/-- `A008458(n)+A186421(n)-2` -/
def P4234815838337703701.Spec : Prop :=
  ∀ n, P4234815838337703701.a n = A063297 (n + 2)

end A063297

/-! ## A063297.P11500909182451299935

`A008458(n)-A022958(A186421(n))`
-/

namespace A063297.P11500909182451299935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A022958 (A186421 n).toNat

end

end A063297.P11500909182451299935

namespace A063297

/-- `A008458(n)-A022958(A186421(n))` -/
def P11500909182451299935.Spec : Prop :=
  ∀ n, P11500909182451299935.a n = A063297 (n + 2)

end A063297

/-! ## A063297.P8189157986499929461

`record[A165998(n)]+A186421(n)-2`
-/

namespace A063297.P8189157986499929461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A186421 n - 2)

end

end A063297.P8189157986499929461

namespace A063297

/-- `record[A165998(n)]+A186421(n)-2` -/
def P8189157986499929461.Spec : Prop :=
  ∀ n, P8189157986499929461.a n = A063297 (n + 2)

end A063297

/-! ## A063297.P12162464181745248535

`A008486(2*n)+A186421(n)-2`
-/

namespace A063297.P12162464181745248535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A186421 n - 2)

end

end A063297.P12162464181745248535

namespace A063297

/-- `A008486(2*n)+A186421(n)-2` -/
def P12162464181745248535.Spec : Prop :=
  ∀ n, P12162464181745248535.a n = A063297 (n + 2)

end A063297

/-! ## A063297.P7146661880253905921

`A004273(A008585(n))+A186421(n)-1`
-/

namespace A063297.P7146661880253905921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008585 n).toNat + (A186421 n - 1)

end

end A063297.P7146661880253905921

namespace A063297

/-- `A004273(A008585(n))+A186421(n)-1` -/
def P7146661880253905921.Spec : Prop :=
  ∀ n, P7146661880253905921.a n = A063297 (n + 2)

end A063297

/-! ## A063297.P7557713941496777425

`A023443(A186421(n))+A004273(A008585(n))`
-/

namespace A063297.P7557713941496777425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A186421 n).toNat + A004273 (A008585 n).toNat

end

end A063297.P7557713941496777425

namespace A063297

/-- `A023443(A186421(n))+A004273(A008585(n))` -/
def P7557713941496777425.Spec : Prop :=
  ∀ n, P7557713941496777425.a n = A063297 (n + 2)

end A063297

/-!
# A063299: Dimension of the space of weight n cuspidal newforms for Gamma_1( 26 ).

The programs for A063299, there is no canonical definition to state claims against.
-/

/-! ## A063299.P6998837903868829072

`A063295(n+2)+2*n`
-/

namespace A063299.P6998837903868829072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (2 * n : ℤ)

end

end A063299.P6998837903868829072

/-! ## A063299.P14254419559953373308

`A063287(n+2)+5*n`
-/

namespace A063299.P14254419559953373308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + (5 * n : ℤ)

end

end A063299.P14254419559953373308

/-! ## A063299.P5107945763394934525

`A063283(n+2)+6*n`
-/

namespace A063299.P5107945763394934525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + (6 * n : ℤ)

end

end A063299.P5107945763394934525

/-! ## A063299.P7631803928342323655

`A063307(n+2)-5*n`
-/

namespace A063299.P7631803928342323655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) - (5 * n : ℤ)

end

end A063299.P7631803928342323655

/-! ## A063299.P8040234068416432041

`A063311(n+2)-8*n`
-/

namespace A063299.P8040234068416432041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) - (8 * n : ℤ)

end

end A063299.P8040234068416432041

/-! ## A063299.P15710779645160664639

`A063319(n+2)-A008597(n)`
-/

namespace A063299.P15710779645160664639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - A008597 n

end

end A063299.P15710779645160664639

/-! ## A063299.P7217263654940779129

`A063331(n+2)-A135628(n)`
-/

namespace A063299.P7217263654940779129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - A135628 n

end

end A063299.P7217263654940779129

/-! ## A063299.P2282033077005119408

`A063331(n+2)-2*A008596(n)`
-/

namespace A063299.P2282033077005119408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - 2 * A008596 n

end

end A063299.P2282033077005119408

