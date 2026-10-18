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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A359100: a(n) = (1/4) * Sum_{d|n} phi(5 * d).

The programs for A359100, the canonical program `A359100.P3178330980824675214` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359100 has offset 1).

The definition of A359100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359100.P8117373074231937374

`∑{d}[n+1, A359101(#)]`
-/

namespace A359100.P8117373074231937374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359101 d

end

end A359100.P8117373074231937374

namespace A359100

/-- `∑{d}[n+1, A359101(#)]` -/
def P8117373074231937374.Spec : Prop :=
  ∀ n, P8117373074231937374.a n = A359100 (n + 1)

end A359100

/-! ## A359100.P12340947175126985674

`∑{d}[n+1, A000010(5*#)/4]`
-/

namespace A359100.P12340947175126985674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (5 * d) : ℚ) / 4

end

end A359100.P12340947175126985674

namespace A359100

/-- `∑{d}[n+1, A000010(5*#)/4]` -/
def P12340947175126985674.Spec : Prop :=
  ∀ n, P12340947175126985674.a n = (A359100 (n + 1) : ℚ)

end A359100

/-! ## A359100.P3178330980824675214

`A132739(n+1)*A339747(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359100

/-- `A132739(n+1)*A339747(n+1)` -/
def P3178330980824675214.Spec : Prop :=
  ∀ n, P3178330980824675214.a n = A359100 (n + 1)

theorem P3178330980824675214.correct : P3178330980824675214.Spec := by
  intro n
  simp only [A359100, Nat.add_sub_cancel]

end A359100

/-! ## A359100.P675955923960888097

`A064987(n+1)/A285896(n+1)`
-/

namespace A359100.P675955923960888097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A285896 (n + 1) : ℚ)

end

end A359100.P675955923960888097

namespace A359100

/-- `A064987(n+1)/A285896(n+1)` -/
def P675955923960888097.Spec : Prop :=
  ∀ n, P675955923960888097.a n = (A359100 (n + 1) : ℚ)

end A359100

/-! ## A359100.P14004765174413015725

`∑{d}[n+1, A059841(#-1)*A372672((n+1)/#)]`
-/

namespace A359100.P14004765174413015725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A372672 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359100.P14004765174413015725

namespace A359100

/-- `∑{d}[n+1, A059841(#-1)*A372672((n+1)/#)]` -/
def P14004765174413015725.Spec : Prop :=
  ∀ n, P14004765174413015725.a n = A359100 (n + 1)

end A359100

/-! ## A359100.P3063921709328450031

`A000203(n+1)*A132739(n+1)/A000203(A132739(n+1))`
-/

namespace A359100.P3063921709328450031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A132739 (n + 1) : ℚ) / (A000203 (A132739 (n + 1)).toNat : ℚ)

end

end A359100.P3063921709328450031

namespace A359100

/-- `A000203(n+1)*A132739(n+1)/A000203(A132739(n+1))` -/
def P3063921709328450031.Spec : Prop :=
  ∀ n, P3063921709328450031.a n = (A359100 (n + 1) : ℚ)

end A359100

/-! ## A359100.P2498216183620559834

`A000593(n+1)*A132739(n+1)/A000593(A132739(n+1))`
-/

namespace A359100.P2498216183620559834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) * A132739 (n + 1) : ℚ) / (A000593 (A132739 (n + 1)).toNat : ℚ)

end

end A359100.P2498216183620559834

namespace A359100

/-- `A000593(n+1)*A132739(n+1)/A000593(A132739(n+1))` -/
def P2498216183620559834.Spec : Prop :=
  ∀ n, P2498216183620559834.a n = (A359100 (n + 1) : ℚ)

end A359100

/-! ## A359100.P4724927476106529073

`A132739(n+1)/A355584(A132739(n+1))*A355584(n+1)`
-/

namespace A359100.P4724927476106529073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132739 (n + 1) : ℚ) / (A355584 (A132739 (n + 1)).toNat : ℚ) * (A355584 (n + 1) : ℚ)

end

end A359100.P4724927476106529073

namespace A359100

/-- `A132739(n+1)/A355584(A132739(n+1))*A355584(n+1)` -/
def P4724927476106529073.Spec : Prop :=
  ∀ n, P4724927476106529073.a n = (A359100 (n + 1) : ℚ)

end A359100

/-!
# A359101: a(n) = phi(5 * n)/4.

The programs for A359101, the canonical program `A359101.P6838976449562858399` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359101 has offset 1).

The definition of A359101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359101.P1485161176348405782

`A000010(5*(n+1))/4`
-/

namespace A359101.P1485161176348405782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (5 * (n + 1)) : ℚ) / 4

end

end A359101.P1485161176348405782

namespace A359101

/-- `A000010(5*(n+1))/4` -/
def P1485161176348405782.Spec : Prop :=
  ∀ n, P1485161176348405782.a n = (A359101 (n + 1) : ℚ)

end A359101

/-! ## A359101.P6838976449562858399

`A372672(A026741(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A359101

/-- `A372672(A026741(n+1))` -/
def P6838976449562858399.Spec : Prop :=
  ∀ n, P6838976449562858399.a n = A359101 (n + 1)

theorem P6838976449562858399.correct : P6838976449562858399.Spec := by
  intro n
  simp only [A359101, Nat.add_sub_cancel]

end A359101

/-! ## A359101.P11047418874538659680

`A372672(n+1)/A000034(n)`
-/

namespace A359101.P11047418874538659680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372672 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A359101.P11047418874538659680

namespace A359101

/-- `A372672(n+1)/A000034(n)` -/
def P11047418874538659680.Spec : Prop :=
  ∀ n, P11047418874538659680.a n = (A359101 (n + 1) : ℚ)

end A359101

/-! ## A359101.P6517926296725223173

`A372672(n+1)/(2-A059841(n))`
-/

namespace A359101.P6517926296725223173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372672 (n + 1) : ℚ) / (2 - A059841 n : ℚ)

end

end A359101.P6517926296725223173

namespace A359101

/-- `A372672(n+1)/(2-A059841(n))` -/
def P6517926296725223173.Spec : Prop :=
  ∀ n, P6517926296725223173.a n = (A359101 (n + 1) : ℚ)

end A359101

/-! ## A359101.P13241507782581671615

`∑{d}[n+1, A008683(#)*A359100((n+1)/#)]`
-/

namespace A359101.P13241507782581671615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A359100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359101.P13241507782581671615

namespace A359101

/-- `∑{d}[n+1, A008683(#)*A359100((n+1)/#)]` -/
def P13241507782581671615.Spec : Prop :=
  ∀ n, P13241507782581671615.a n = A359101 (n + 1)

end A359101

/-! ## A359101.P16021354029511899333

`A000010(A132739(n+1))*A060904(n+1)`
-/

namespace A359101.P16021354029511899333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A132739 (n + 1)).toNat * A060904 (n + 1)

end

end A359101.P16021354029511899333

namespace A359101

/-- `A000010(A132739(n+1))*A060904(n+1)` -/
def P16021354029511899333.Spec : Prop :=
  ∀ n, P16021354029511899333.a n = A359101 (n + 1)

end A359101

/-! ## A359101.P18154443739094834943

`A002265(A000010(5*(n+1)))`
-/

namespace A359101.P18154443739094834943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000010 (5 * (n + 1))).toNat

end

end A359101.P18154443739094834943

namespace A359101

/-- `A002265(A000010(5*(n+1)))` -/
def P18154443739094834943.Spec : Prop :=
  ∀ n, P18154443739094834943.a n = A359101 (n + 1)

end A359101

/-! ## A359101.P7973866050143359889

`A070091(5*(n+1))`
-/

namespace A359101.P7973866050143359889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (5 * (n + 1))

end

end A359101.P7973866050143359889

namespace A359101

/-- `A070091(5*(n+1))` -/
def P7973866050143359889.Spec : Prop :=
  ∀ n, P7973866050143359889.a n = A359101 (n + 1)

end A359101

/-! ## A359101.P4748547165644073198

`A023022(A008706(n+1))/2`
-/

namespace A359101.P4748547165644073198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023022 (A008706 (n + 1)).toNat : ℚ) / 2

end

end A359101.P4748547165644073198

namespace A359101

/-- `A023022(A008706(n+1))/2` -/
def P4748547165644073198.Spec : Prop :=
  ∀ n, P4748547165644073198.a n = (A359101 (n + 1) : ℚ)

end A359101

/-!
# A359102: a(n) = phi(7 * n)/6.

The programs for A359102, the canonical program `A359102.P3385098872197372675` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359102 has offset 1).

The definition of A359102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359102.P16470667107721400162

`A000010(7*(n+1))/6`
-/

namespace A359102.P16470667107721400162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (7 * (n + 1)) : ℚ) / 6

end

end A359102.P16470667107721400162

namespace A359102

/-- `A000010(7*(n+1))/6` -/
def P16470667107721400162.Spec : Prop :=
  ∀ n, P16470667107721400162.a n = (A359102 (n + 1) : ℚ)

end A359102

/-! ## A359102.P3385098872197372675

`A372678(A026741(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A359102

/-- `A372678(A026741(n+1))` -/
def P3385098872197372675.Spec : Prop :=
  ∀ n, P3385098872197372675.a n = A359102 (n + 1)

theorem P3385098872197372675.correct : P3385098872197372675.Spec := by
  intro n
  simp only [A359102, Nat.add_sub_cancel]

end A359102

/-! ## A359102.P8998022598645434523

`A372678(n+1)/A000034(n)`
-/

namespace A359102.P8998022598645434523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372678 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A359102.P8998022598645434523

namespace A359102

/-- `A372678(n+1)/A000034(n)` -/
def P8998022598645434523.Spec : Prop :=
  ∀ n, P8998022598645434523.a n = (A359102 (n + 1) : ℚ)

end A359102

/-! ## A359102.P7785649465203381142

`A372678(n+1)/(2-A059841(n))`
-/

namespace A359102.P7785649465203381142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372678 (n + 1) : ℚ) / (2 - A059841 n : ℚ)

end

end A359102.P7785649465203381142

namespace A359102

/-- `A372678(n+1)/(2-A059841(n))` -/
def P7785649465203381142.Spec : Prop :=
  ∀ n, P7785649465203381142.a n = (A359102 (n + 1) : ℚ)

end A359102

/-! ## A359102.P1370313521036257600

`∑{d}[n+1, A008683(#)*A359099((n+1)/#)]`
-/

namespace A359102.P1370313521036257600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A359099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359102.P1370313521036257600

namespace A359102

/-- `∑{d}[n+1, A008683(#)*A359099((n+1)/#)]` -/
def P1370313521036257600.Spec : Prop :=
  ∀ n, P1370313521036257600.a n = A359102 (n + 1)

end A359102

/-! ## A359102.P12066728884407187617

`A008615(A000010(7*(n+1)))`
-/

namespace A359102.P12066728884407187617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000010 (7 * (n + 1))).toNat

end

end A359102.P12066728884407187617

namespace A359102

/-- `A008615(A000010(7*(n+1)))` -/
def P12066728884407187617.Spec : Prop :=
  ∀ n, P12066728884407187617.a n = A359102 (n + 1)

end A359102

/-! ## A359102.P16980769284247256139

`A130212(A242603(n+1)+∑[n])`
-/

namespace A359102.P16980769284247256139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130212 (A242603 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A359102.P16980769284247256139

namespace A359102

/-- `A130212(A242603(n+1)+∑[n])` -/
def P16980769284247256139.Spec : Prop :=
  ∀ n, P16980769284247256139.a n = A359102 (n + 1)

end A359102

/-!
# A359103: a(n) = Sum_{d|n} d * (n/d)^d.

The programs for A359103, the canonical program `A359103.P9432903221071312981` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359103 has offset 1).

The definition of A359103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359103.P1833160224801445912

`∑{d}[n+1, ((n+1)/#)^#*#]`
-/

namespace A359103.P1833160224801445912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d * (d : ℚ)

end

end A359103.P1833160224801445912

namespace A359103

/-- `∑{d}[n+1, ((n+1)/#)^#*#]` -/
def P1833160224801445912.Spec : Prop :=
  ∀ n, P1833160224801445912.a n = (A359103 (n + 1) : ℚ)

end A359103

/-! ## A359103.P9432903221071312981

`(n+1)*A087909(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359103

/-- `(n+1)*A087909(n+1)` -/
def P9432903221071312981.Spec : Prop :=
  ∀ n, P9432903221071312981.a n = A359103 (n + 1)

theorem P9432903221071312981.correct : P9432903221071312981.Spec := by
  intro n
  simp only [A359103, Nat.add_sub_cancel]

end A359103

/-! ## A359103.P17235921560136382350

`A362683(n+1)-A055225(n+1)`
-/

namespace A359103.P17235921560136382350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362683 (n + 1) - A055225 (n + 1)

end

end A359103.P17235921560136382350

namespace A359103

/-- `A362683(n+1)-A055225(n+1)` -/
def P17235921560136382350.Spec : Prop :=
  ∀ n, P17235921560136382350.a n = A359103 (n + 1)

end A359103

/-! ## A359103.P598049426994155587

`A087909(A131732(2*n))*A131732(2*n)`
-/

namespace A359103.P598049426994155587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087909 (A131732 (2 * n)).toNat * A131732 (2 * n)

end

end A359103.P598049426994155587

namespace A359103

/-- `A087909(A131732(2*n))*A131732(2*n)` -/
def P598049426994155587.Spec : Prop :=
  ∀ n, P598049426994155587.a n = A359103 (n + 1)

end A359103

/-! ## A359103.P7732832616564076917

`(n+1)*A308694(∑[n+2])`
-/

namespace A359103.P7732832616564076917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359103.P7732832616564076917

namespace A359103

/-- `(n+1)*A308694(∑[n+2])` -/
def P7732832616564076917.Spec : Prop :=
  ∀ n, P7732832616564076917.a n = A359103 (n + 1)

end A359103

/-! ## A359103.P17311939763980994209

`(n+1)*A308694(A000096(n+1))%A274104(n)`
-/

namespace A359103.P17311939763980994209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A308694 (A000096 (n + 1)).toNat) (A274104 n)

end

end A359103.P17311939763980994209

namespace A359103

/-- `(n+1)*A308694(A000096(n+1))%A274104(n)` -/
def P17311939763980994209.Spec : Prop :=
  ∀ n, P17311939763980994209.a n = A359103 (n + 1)

end A359103

/-! ## A359103.P9976330936234706680

`(n+1)*(A308694(A000096(n+1))+A000007(A008486(n)))`
-/

namespace A359103.P9976330936234706680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A308694 (A000096 (n + 1)).toNat + A000007 (A008486 n).toNat)

end

end A359103.P9976330936234706680

namespace A359103

/-- `(n+1)*(A308694(A000096(n+1))+A000007(A008486(n)))` -/
def P9976330936234706680.Spec : Prop :=
  ∀ n, P9976330936234706680.a n = A359103 (n + 1)

end A359103

/-!
# A359107: Triangle read by rows, T(n, k) = Sum_{j=0..k} Stirling2(n, j) = Sum_{j=0..k} A048993(n, j).

The programs for A359107, there is no canonical definition to state claims against.
-/

/-! ## A359107.P1770093394354542392

`A108934(A245300(n))`
-/

namespace A359107.P1770093394354542392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108934 (A245300 n).toNat

end

end A359107.P1770093394354542392

/-! ## A359107.P13701359507439010041

`and(A229223(n), A334227(A034448(2*n+5)))`
-/

namespace A359107.P13701359507439010041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A229223 n) (A334227 (A034448 (2 * n + 5)).toNat)

end

end A359107.P13701359507439010041

/-! ## A359107.P6414343999413361558

`A229223(n)-A000122(A359064(n+5))`
-/

namespace A359107.P6414343999413361558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 n - A000122 (A359064 (n + 5)).toNat

end

end A359107.P6414343999413361558

/-! ## A359107.P863540691111071132

`A108947(A245300(n))-A000122(A359064(n+5))`
-/

namespace A359107.P863540691111071132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A245300 n).toNat - A000122 (A359064 (n + 5)).toNat

end

end A359107.P863540691111071132

/-!
# A359108: a(n) = A128899(2*n, n) = 2*binomial(4*n - 1, 3*n) for n >= 1 and a(0) = 1.

The programs for A359108, the canonical program `A359108.P14610961669154602894` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359108 has offset 0).

The definition of A359108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359108.P13940699829343404035

`A208983(A004273(n))`
-/

namespace A359108.P13940699829343404035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208983 (A004273 n).toNat

end

end A359108.P13940699829343404035

namespace A359108

/-- `A208983(A004273(n))` -/
def P13940699829343404035.Spec : Prop :=
  ∀ n, P13940699829343404035.a n = A359108 n

end A359108

/-! ## A359108.P14610961669154602894

`ceil(A005810(n)/2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359108

/-- `ceil(A005810(n)/2)` -/
def P14610961669154602894.Spec : Prop :=
  ∀ n, P14610961669154602894.a n = A359108 n

theorem P14610961669154602894.correct : P14610961669154602894.Spec := by
  intro n
  simp only [A359108]

end A359108

/-! ## A359108.P12683805534954521828

`A005810(n)/(1-A057428(n))`
-/

namespace A359108.P12683805534954521828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n : ℚ) / (1 - A057428 n : ℚ)

end

end A359108.P12683805534954521828

namespace A359108

/-- `A005810(n)/(1-A057428(n))` -/
def P12683805534954521828.Spec : Prop :=
  ∀ n, P12683805534954521828.a n = (A359108 n : ℚ)

end A359108

/-! ## A359108.P13080499261426961120

`2*A262977(n)-A005810(n)`
-/

namespace A359108.P13080499261426961120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262977 n - A005810 n

end

end A359108.P13080499261426961120

namespace A359108

/-- `2*A262977(n)-A005810(n)` -/
def P13080499261426961120.Spec : Prop :=
  ∀ n, P13080499261426961120.a n = A359108 n

end A359108

/-! ## A359108.P9443331912157907530

`ceil(C(4*n, n)/2)`
-/

namespace A359108.P9443331912157907530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (4 * n) n : ℚ) / 2⌉

end

end A359108.P9443331912157907530

namespace A359108

/-- `ceil(C(4*n, n)/2)` -/
def P9443331912157907530.Spec : Prop :=
  ∀ n, P9443331912157907530.a n = A359108 n

end A359108

/-! ## A359108.P11819237230144928755

`round(C(4*n, n)/2)`
-/

namespace A359108.P11819237230144928755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (4 * n) n : ℚ) / 2)

end

end A359108.P11819237230144928755

namespace A359108

/-- `round(C(4*n, n)/2)` -/
def P11819237230144928755.Spec : Prop :=
  ∀ n, P11819237230144928755.a n = A359108 n

end A359108

/-! ## A359108.P14479723144651525929

`lcm(2, C(4*n, n))/2`
-/

namespace A359108.P14479723144651525929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.choose (4 * n) n) : ℚ) / 2

end

end A359108.P14479723144651525929

namespace A359108

/-- `lcm(2, C(4*n, n))/2` -/
def P14479723144651525929.Spec : Prop :=
  ∀ n, P14479723144651525929.a n = (A359108 n : ℚ)

end A359108

/-! ## A359108.P10028396635902648868

`round(cosh(log(C(4*n, n))))`
-/

namespace A359108.P10028396635902648868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (Nat.choose (4 * n) n : ℝ)))

end

end A359108.P10028396635902648868

namespace A359108

/-- `round(cosh(log(C(4*n, n))))` -/
def P10028396635902648868.Spec : Prop :=
  ∀ n, P10028396635902648868.a n = A359108 n

end A359108

/-! ## A359108.P1340513470037022207

`A128899(∑[4*n])`
-/

namespace A359108.P1340513470037022207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359108.P1340513470037022207

namespace A359108

/-- `A128899(∑[4*n])` -/
def P1340513470037022207.Spec : Prop :=
  ∀ n, P1340513470037022207.a n = A359108 n

end A359108

/-! ## A359108.P18141681939626424058

`A050166(2*n²)`
-/

namespace A359108.P18141681939626424058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (2 * n ^ 2)

end

end A359108.P18141681939626424058

namespace A359108

/-- `A050166(2*n²)` -/
def P18141681939626424058.Spec : Prop :=
  ∀ n, P18141681939626424058.a n = A359108 n

end A359108

/-!
# A359109: Row sums of the accumulated Stirling2 triangle A359107.

The programs for A359109, there is no canonical definition to state claims against.
-/

/-! ## A359109.P18201924391870879656

`Δ[A177255(n)-A000110(n)]`
-/

namespace A359109.P18201924391870879656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177255 n - A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359109.P18201924391870879656

/-! ## A359109.P8938752337105497300

`Δ[∑[A052889(n)]-A000110(n)]`
-/

namespace A359109.P8938752337105497300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359109.P8938752337105497300

/-! ## A359109.P7261335239667092699

`Δ[A177255(n)-A011971(A000217(n))]`
-/

namespace A359109.P7261335239667092699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177255 n - A011971 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359109.P7261335239667092699

/-! ## A359109.P6942072990863399763

`A052889(n+1)-(A177257(n)+A177255(n))`
-/

namespace A359109.P6942072990863399763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 (n + 1) - (A177257 n + A177255 n)

end

end A359109.P6942072990863399763

/-! ## A359109.P12090684521061464024

`A052889(n+1)+A000110(n)-A000110(n+1)`
-/

namespace A359109.P12090684521061464024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 (n + 1) + (A000110 n - A000110 (n + 1))

end

end A359109.P12090684521061464024

/-!
# A359111: a(n) is the permanent of the n X n matrix M(n) that is defined by M[i,j] = sigma(gcd(i,j)).

The programs for A359111, there is no canonical definition to state claims against.
-/

/-! ## A359111.P10768655368861694601

`2*A269966(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A359111.P10768655368861694601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A269966 (a (n - 1)).toNat

end

end A359111.P10768655368861694601

/-!
# A359112: a(n) = Sum_{d|n} (n/d) * d^(n-d).

The programs for A359112, the canonical program `A359112.P13531562761726177721` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359112 has offset 1).

The definition of A359112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359112.P13531562761726177721

`∑{d}[n+1, #^(n+1-#)*(n+1)/#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359112

/-- `∑{d}[n+1, #^(n+1-#)*(n+1)/#]` -/
def P13531562761726177721.Spec : Prop :=
  ∀ n, P13531562761726177721.a n = (A359112 (n + 1) : ℚ)

end A359112

/-! ## A359112.P14821153518263521956

`(n+1)*∑{d}[n+1, #^(n-#)]`
-/

namespace A359112.P14821153518263521956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((n : ℤ) - (d : ℤ) : ℤ))

end

end A359112.P14821153518263521956

namespace A359112

/-- `(n+1)*∑{d}[n+1, #^(n-#)]` -/
def P14821153518263521956.Spec : Prop :=
  ∀ n, P14821153518263521956.a n = (A359112 (n + 1) : ℚ)

end A359112

/-!
# A359113: a(n) counts the bases b in the interval 2 to p = prime(n), where p if written in base b gives again a prime number in base b if all digits are written in reverse order.

The programs for A359113, there is no canonical definition to state claims against.
-/

/-! ## A359113.P1704783111633041047

`A074830(A000040(n+1))`
-/

namespace A359113.P1704783111633041047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074830 (A000040 (n + 1)).toNat

end

end A359113.P1704783111633041047

/-! ## A359113.P839416545411819637

`A074830(A006005(n+1))`
-/

namespace A359113.P839416545411819637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074830 (A006005 (n + 1)).toNat

end

end A359113.P839416545411819637

/-! ## A359113.P2641690249417371328

`A074830(A008578(n+2))`
-/

namespace A359113.P2641690249417371328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074830 (A008578 (n + 2)).toNat

end

end A359113.P2641690249417371328

/-! ## A359113.P4517217086850312125

`A074830(A075643(n+2))`
-/

namespace A359113.P4517217086850312125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074830 (A075643 (n + 2)).toNat

end

end A359113.P4517217086850312125

/-! ## A359113.P15967453730636097921

`A074830(A182986(n+2))`
-/

namespace A359113.P15967453730636097921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074830 (A182986 (n + 2)).toNat

end

end A359113.P15967453730636097921

/-!
# A359116: Mark the points of the Farey series F_n on a strip of paper and wrap it around a circle of circumference 1 so the endpoints 0 and 1 coincide; draw a chord between every pair of the Farey points; a(n) is the number of vertices in the resulting graph.

The programs for A359116, there is no canonical definition to state claims against.
-/

/-! ## A359116.P14718178125760849779

`A088637(a(n-1))+n` with `a(0)=1`
-/

namespace A359116.P14718178125760849779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088637 (a (n - 1)).toNat + (n : ℤ)

end

end A359116.P14718178125760849779

/-!
# A359117: Number of regions in the planar Farey Ring graph FR(n) defined in A359116, including the regions between the convex hull and the bounding circle.

The programs for A359117, there is no canonical definition to state claims against.
-/

/-! ## A359117.P17349809630824432832

`A002472(∏[n²/a(n-1)+3])` with `a(0)=3, a(1)=4`
-/

namespace A359117.P17349809630824432832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  (n ^ 2 : ℚ) / f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A359117.P17349809630824432832

/-!
# A359118: Number of edges in the planar Farey Ring graph FR(n) defined in A359116, including the regions between the convex hull and the bounding circle.

The programs for A359118, there is no canonical definition to state claims against.
-/

/-! ## A359118.P1719330589149513980

`A106245(A192706(n+1))`
-/

namespace A359118.P1719330589149513980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106245 (A192706 (n + 1)).toNat

end

end A359118.P1719330589149513980

/-!
# A359120: Number of primes p with 10^(n-1) < p < 10^n such that 10^n-p is also prime.

The programs for A359120, there is no canonical definition to state claims against.
-/

/-! ## A359120.P3814699186473159738

`A310809(A081367(n))-A100889(n+1)`
-/

namespace A359120.P3814699186473159738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310809 (A081367 n).toNat - A100889 (n + 1)

end

end A359120.P3814699186473159738

/-!
# A359121: a(n) = number of terms of A068811 that are <= n.

The programs for A359121, the canonical program `A359121.P4053117108237885316` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359121 has offset 1).

The definition of A359121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359121.P4053117108237885316

`∑[char[A068811(n+1)-1]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359121

/-- `∑[char[A068811(n+1)-1]]` -/
def P4053117108237885316.Spec : Prop :=
  ∀ n, (P4053117108237885316.a n : ℤ) = A359121 (n + 1)

theorem P4053117108237885316.correct : P4053117108237885316.Spec := by
  intro n
  simp only [A359121, Nat.add_sub_cancel]

end A359121

/-! ## A359121.P10185509996880471825

`∑[char[A000010(A068811(n+1))]]`
-/

namespace A359121.P10185509996880471825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A068811 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359121.P10185509996880471825

namespace A359121

/-- `∑[char[A000010(A068811(n+1))]]` -/
def P10185509996880471825.Spec : Prop :=
  ∀ n, (P10185509996880471825.a n : ℤ) = A359121 (n + 1)

end A359121

/-! ## A359121.P9240345969821356001

`A084558(A357215(n+1)-A084558(n))`
-/

namespace A359121.P9240345969821356001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A357215 (n + 1) - A084558 n).toNat

end

end A359121.P9240345969821356001

namespace A359121

/-- `A084558(A357215(n+1)-A084558(n))` -/
def P9240345969821356001.Spec : Prop :=
  ∀ n, P9240345969821356001.a n = A359121 (n + 1)

end A359121

/-! ## A359121.P7358486939004530816

`A225541(A002378(n)*A056171(n+1))`
-/

namespace A359121.P7358486939004530816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A002378 n * A056171 (n + 1)).toNat

end

end A359121.P7358486939004530816

namespace A359121

/-- `A225541(A002378(n)*A056171(n+1))` -/
def P7358486939004530816.Spec : Prop :=
  ∀ n, P7358486939004530816.a n = A359121 (n + 1)

end A359121

/-!
# A359123: First differences of A068811, halved.

The programs for A359123, the canonical program `A359123.P2533263003964580868` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359123 has offset 1).

The definition of A359123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359123.P17722358918918267343

`Δ[A068811(n+1)/2]`
-/

namespace A359123.P17722358918918267343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068811 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359123.P17722358918918267343

namespace A359123

/-- `Δ[A068811(n+1)/2]` -/
def P17722358918918267343.Spec : Prop :=
  ∀ n, P17722358918918267343.a n = (A359123 (n + 1) : ℚ)

end A359123

/-! ## A359123.P6889367801627237869

`A032742(Δ[A068811(n+1)])`
-/

namespace A359123.P6889367801627237869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (n + 1) - f1 n).toNat

end

end A359123.P6889367801627237869

namespace A359123

/-- `A032742(Δ[A068811(n+1)])` -/
def P6889367801627237869.Spec : Prop :=
  ∀ n, P6889367801627237869.a n = A359123 (n + 1)

end A359123

/-! ## A359123.P2533263003964580868

`A004525(A068811(n+2)-A068811(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359123

/-- `A004525(A068811(n+2)-A068811(n+1))` -/
def P2533263003964580868.Spec : Prop :=
  ∀ n, P2533263003964580868.a n = A359123 (n + 1)

theorem P2533263003964580868.correct : P2533263003964580868.Spec := by
  intro n
  simp only [A359123, Nat.add_sub_cancel]

end A359123

/-! ## A359123.P16552695949149811695

`A289441(A068811(n+2)-A068811(n+1))`
-/

namespace A359123.P16552695949149811695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A068811 (n + 2) - A068811 (n + 1)).toNat

end

end A359123.P16552695949149811695

namespace A359123

/-- `A289441(A068811(n+2)-A068811(n+1))` -/
def P16552695949149811695.Spec : Prop :=
  ∀ n, P16552695949149811695.a n = A359123 (n + 1)

end A359123

/-! ## A359123.P15120080823733103329

`Δ[record[A204938(n+1)/2]]`
-/

namespace A359123.P15120080823733103329
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204938 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359123.P15120080823733103329

namespace A359123

/-- `Δ[record[A204938(n+1)/2]]` -/
def P15120080823733103329.Spec : Prop :=
  ∀ n, P15120080823733103329.a n = (A359123 (n + 1) : ℚ)

end A359123

/-! ## A359123.P14632060669920160903

`Δ[A204905(record[A204938(n+1)])]`
-/

namespace A359123.P14632060669920160903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204905 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359123.P14632060669920160903

namespace A359123

/-- `Δ[A204905(record[A204938(n+1)])]` -/
def P14632060669920160903.Spec : Prop :=
  ∀ n, P14632060669920160903.a n = A359123 (n + 1)

end A359123

/-!
# A359124: Concatenate the decimal numbers 1,2,3,...,n, then add 1.

The programs for A359124, there is no canonical definition to state claims against.
-/

/-! ## A359124.P10814700266979849269

`A007908(n+1)+1`
-/

namespace A359124.P10814700266979849269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) + 1

end

end A359124.P10814700266979849269

/-! ## A359124.P8866575358677973615

`∑[A078998(n+1)]+1`
-/

namespace A359124.P8866575358677973615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A359124.P8866575358677973615

/-! ## A359124.P4063503424023912592

`A252043(A033061(n+1))+1`
-/

namespace A359124.P4063503424023912592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A033061 (n + 1)).toNat + 1

end

end A359124.P4063503424023912592

/-! ## A359124.P876304787573674292

`A252043(A058183(n+1))+1`
-/

namespace A359124.P876304787573674292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A058183 (n + 1)).toNat + 1

end

end A359124.P876304787573674292

/-! ## A359124.P5542691230473464605

`A000422(n+1)+1-A019566(n+1)`
-/

namespace A359124.P5542691230473464605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) + (1 - A019566 (n + 1))

end

end A359124.P5542691230473464605

/-!
# A359125: Largest prime factor of A359124(n).

The programs for A359125, there is no canonical definition to state claims against.
-/

/-! ## A359125.P9966600908263216297

`A006530(∑[∑[10^n]]+1)`
-/

namespace A359125.P9966600908263216297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A359125.P9966600908263216297

/-!
# A359126: A000168(n+1) - A000139(n).

The programs for A359126, the canonical program `A359126.P8935011708423575333` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359126 has offset 0).

The definition of A359126 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000139, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359126.P8935011708423575333

`A000168(n+1)-A000139(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359126

/-- `A000168(n+1)-A000139(n)` -/
def P8935011708423575333.Spec : Prop :=
  ∀ n, P8935011708423575333.a n = A359126 n

theorem P8935011708423575333.correct : P8935011708423575333.Spec := by
  intro n
  simp only [A359126]

end A359126

/-! ## A359126.P17847847301419769914

`A000168(n+1)-A007226(n)/Δ[n²]`
-/

namespace A359126.P17847847301419769914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000168 (n + 1) : ℚ) - (A007226 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A359126.P17847847301419769914

namespace A359126

/-- `A000168(n+1)-A007226(n)/Δ[n²]` -/
def P17847847301419769914.Spec : Prop :=
  ∀ n, P17847847301419769914.a n = (A359126 n : ℚ)

end A359126

/-! ## A359126.P13426908207316289319

`A000168(n+1)-A116637(2*n+1)/(3*n+1)`
-/

namespace A359126.P13426908207316289319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000168 (n + 1) : ℚ) - (A116637 (2 * n + 1) : ℚ) / (3 * n + 1 : ℚ)

end

end A359126.P13426908207316289319

namespace A359126

/-- `A000168(n+1)-A116637(2*n+1)/(3*n+1)` -/
def P13426908207316289319.Spec : Prop :=
  ∀ n, P13426908207316289319.a n = (A359126 n : ℚ)

end A359126

/-! ## A359126.P10526292666978694038

`A000168(n+1)-(A103938(n+1)-A047749(2*n))`
-/

namespace A359126.P10526292666978694038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000168 (n + 1) - (A103938 (n + 1) - A047749 (2 * n))

end

end A359126.P10526292666978694038

namespace A359126

/-- `A000168(n+1)-(A103938(n+1)-A047749(2*n))` -/
def P10526292666978694038.Spec : Prop :=
  ∀ n, P10526292666978694038.a n = A359126 n

end A359126

/-! ## A359126.P2516041216061973707

`A000168(n+1)-(A001764(n+1)-A336945(n+1))/(n+1)`
-/

namespace A359126.P2516041216061973707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000168 (n + 1) : ℚ) - (A001764 (n + 1) - A336945 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A359126.P2516041216061973707

namespace A359126

/-- `A000168(n+1)-(A001764(n+1)-A336945(n+1))/(n+1)` -/
def P2516041216061973707.Spec : Prop :=
  ∀ n, P2516041216061973707.a n = (A359126 n : ℚ)

end A359126

/-!
# A359127: Oblong numbers which are products of six distinct primes.

The programs for A359127, there is no canonical definition to state claims against.
-/

/-! ## A359127.P11432661881627162926

`∩[A067885(n+1), A229882(n+1)]`
-/

namespace A359127.P11432661881627162926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359127.P11432661881627162926

/-! ## A359127.P7250202070276012609

`∩[A067885(n+1), A368249(n+1)]`
-/

namespace A359127.P7250202070276012609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359127.P7250202070276012609

/-! ## A359127.P6863076340941674933

`∩[A002378(A005117(n+1)), A067885(n+1)]`
-/

namespace A359127.P6863076340941674933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A005117 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359127.P6863076340941674933

/-! ## A359127.P15778084175060649916

`∩[A074969(n+1), A229882(n+1)]`
-/

namespace A359127.P15778084175060649916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359127.P15778084175060649916

/-!
# A359128: The Fibostracci sequence: a(0) = 0, a(1) = 1; thereafter a(n) = a(n-1)+a(n-2) if a(n-1) and a(n-2) do not share a digit, otherwise a(n) is the smallest number not yet in the sequence.

The programs for A359128, there is no canonical definition to state claims against.
-/

/-! ## A359128.P11424317003794211766

`A000196(A007598(n))%30`
-/

namespace A359128.P11424317003794211766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A007598 n).toNat) 30

end

end A359128.P11424317003794211766

/-! ## A359128.P12276938242631340938

`A003056(A033192(n))%30`
-/

namespace A359128.P12276938242631340938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A033192 n).toNat) 30

end

end A359128.P12276938242631340938

/-! ## A359128.P6556066288807658979

`A118759(A000045(n))%30`
-/

namespace A359128.P6556066288807658979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 (A000045 n).toNat) 30

end

end A359128.P6556066288807658979

/-! ## A359128.P14666990568031537459

`A000045(n)%A040210(A000129(n))`
-/

namespace A359128.P14666990568031537459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A040210 (A000129 n).toNat)

end

end A359128.P14666990568031537459

/-!
# A359130: F(n*(2*n+1))^2 - F(n)^2, where F(t) is the t-th Fibonacci number.

The programs for A359130, there is no canonical definition to state claims against.
-/

/-! ## A359130.P3669907371859912422

`A000045(C(2*n+1, 2))²-A000045(n)²`
-/

namespace A359130.P3669907371859912422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (2 * n + 1) 2) ^ 2 - A000045 n ^ 2

end

end A359130.P3669907371859912422

/-! ## A359130.P9393942175203762051

`A007598(A014105(n))-A007598(n)`
-/

namespace A359130.P9393942175203762051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (A014105 n).toNat - A007598 n

end

end A359130.P9393942175203762051

/-!
# A359131: Number of odd primes in the Collatz trajectory of A177000(n).

The programs for A359131, there is no canonical definition to state claims against.
-/

/-! ## A359131.P17195246271832335390

`A006667(A177000(n+1))`
-/

namespace A359131.P17195246271832335390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A177000 (n + 1)).toNat

end

end A359131.P17195246271832335390

/-! ## A359131.P877063620075358736

`A055509(p?[A177000(n+1)])`
-/

namespace A359131.P877063620075358736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A359131.P877063620075358736

/-! ## A359131.P9537935204041062131

`A275866(p?[A177000(n+1)])`
-/

namespace A359131.P9537935204041062131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275866 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A359131.P9537935204041062131

/-! ## A359131.P15302560492086086565

`∑{d}[A177000(n+1), A055509(#)]`
-/

namespace A359131.P15302560492086086565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055509 d

end

end A359131.P15302560492086086565

/-! ## A359131.P16852462032405855822

`∑{d}[A177000(n+1), A275866(#)]`
-/

namespace A359131.P16852462032405855822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A275866 d

end

end A359131.P16852462032405855822

/-!
# A359132: Least m such that the sum of the aliquot parts of m (A001065) equals n, or -1 if no such number exists.

The programs for A359132, there is no canonical definition to state claims against.
-/

/-! ## A359132.P8289838877279127307

`A070015(n)-A000007(A070015(n))`
-/

namespace A359132.P8289838877279127307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 n - A000007 (A070015 n).toNat

end

end A359132.P8289838877279127307

/-!
# A359133: Sum of square end-to-end displacements over all n-step self-avoiding walks of A359741.

The programs for A359133, there is no canonical definition to state claims against.
-/

/-! ## A359133.P9081478101791690724

`∑[∑[record[A323525(3*(n+1))]]]`
-/

namespace A359133.P9081478101791690724
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359133.P9081478101791690724

/-!
# A359134: a(n) = Sum_{d|n} (2*d)^(n/d - 1).

The programs for A359134, the canonical program `A359134.P16920741814713644679` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359134 has offset 1).

The definition of A359134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359134.P16920741814713644679

`∑{d}[n+1, (2*#)^((n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359134

/-- `∑{d}[n+1, (2*#)^((n+1)/#-1)]` -/
def P16920741814713644679.Spec : Prop :=
  ∀ n, P16920741814713644679.a n = (A359134 (n + 1) : ℝ)

end A359134

/-!
# A359136: Primes such that there is a nontrivial permutation which when applied to the digits produces a prime (Version 1).

The programs for A359136, there is no canonical definition to state claims against.
-/

/-! ## A359136.P1087671099044264084

`p?[A007934(n+1)]`
-/

namespace A359136.P1087671099044264084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359136.P1087671099044264084

/-! ## A359136.P15790512707914594480

`filter[A007934(n+1), A010051(#)]`
-/

namespace A359136.P15790512707914594480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A359136.P15790512707914594480

/-! ## A359136.P8350677003895982565

`filter[A007934(n+1), A080339(#)]`
-/

namespace A359136.P8350677003895982565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A359136.P8350677003895982565

/-! ## A359136.P7264271144205586747

`filter[A007934(n+1), A080545(#)]`
-/

namespace A359136.P7264271144205586747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A359136.P7264271144205586747

/-! ## A359136.P4060661513203491147

`filter[A007934(n+1), A171387(#)]`
-/

namespace A359136.P4060661513203491147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A359136.P4060661513203491147

/-! ## A359136.P11055270967697199232

`∩[A000040(n+1), A007934(n+1)]`
-/

namespace A359136.P11055270967697199232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P11055270967697199232

/-! ## A359136.P11928726609399302022

`∩[A004139(n+1), A007934(n+1)]`
-/

namespace A359136.P11928726609399302022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P11928726609399302022

/-! ## A359136.P12956098496580893302

`∩[A006005(n+1), A007934(n+1)]`
-/

namespace A359136.P12956098496580893302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P12956098496580893302

/-! ## A359136.P3430928110372993191

`∩[A007934(n+1), A008578(n+1)]`
-/

namespace A359136.P3430928110372993191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P3430928110372993191

/-! ## A359136.P9680022045391219698

`∩[A007934(n+1), A045319(n+1)]`
-/

namespace A359136.P9680022045391219698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P9680022045391219698

/-! ## A359136.P17679460355656110654

`∩[A007934(n+1), A045344(n+1)]`
-/

namespace A359136.P17679460355656110654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P17679460355656110654

/-! ## A359136.P7065631787220373076

`∩[A007934(n+1), A046022(n+1)]`
-/

namespace A359136.P7065631787220373076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P7065631787220373076

/-! ## A359136.P2667002156980940006

`∩[A007934(n+1), A051948(n+1)]`
-/

namespace A359136.P2667002156980940006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P2667002156980940006

/-! ## A359136.P12133798206248942165

`∩[A007934(n+1), A062972(n+1)]`
-/

namespace A359136.P12133798206248942165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P12133798206248942165

/-! ## A359136.P8403153269200687130

`∩[A007934(n+1), A065091(n+1)]`
-/

namespace A359136.P8403153269200687130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P8403153269200687130

/-! ## A359136.P11106514163404726171

`∩[A007934(n+1), A066050(n+1)]`
-/

namespace A359136.P11106514163404726171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P11106514163404726171

/-! ## A359136.P2715267548373269080

`∩[A007934(n+1), A067126(n+1)]`
-/

namespace A359136.P2715267548373269080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P2715267548373269080

/-! ## A359136.P4359560934824967143

`∩[A007934(n+1), A106843(n+1)]`
-/

namespace A359136.P4359560934824967143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P4359560934824967143

/-! ## A359136.P615207137246900830

`∩[A007934(n+1), A161346(n+1)]`
-/

namespace A359136.P615207137246900830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P615207137246900830

/-! ## A359136.P10767619909019690746

`∩[A161428(n+1), A007934(n+1)]`
-/

namespace A359136.P10767619909019690746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359136.P10767619909019690746

/-!
# A359137: Primes such that there is a nontrivial permutation which when applied to the digits produces a prime (Version 2).

The programs for A359137, there is no canonical definition to state claims against.
-/

/-! ## A359137.P13576881374428960216

`A359139(n+5)`
-/

namespace A359137.P13576881374428960216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359139 (n + 5)

end

end A359137.P13576881374428960216

/-! ## A359137.P8812775961462439356

`A359136(lt[A121373(2*n), A327899(n)])`
-/

namespace A359137.P8812775961462439356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359137.P8812775961462439356

/-! ## A359137.P17567378536604486423

`∩[A007934(n+1), A223036(n+1)]`
-/

namespace A359137.P17567378536604486423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359137.P17567378536604486423

/-! ## A359137.P2268841205986581819

`A090933(A062003(n)+5)`
-/

namespace A359137.P2268841205986581819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090933 (A062003 n + 5).toNat

end

end A359137.P2268841205986581819

/-! ## A359137.P12183245660835763190

`A180022(Δ[A130577(n)²])`
-/

namespace A359137.P12183245660835763190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130577 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180022 (f1 (n + 1) - f1 n).toNat

end

end A359137.P12183245660835763190

/-!
# A359138: A359136 together with 2, 3, 5, 7.

The programs for A359138, there is no canonical definition to state claims against.
-/

/-! ## A359138.P14422792963117221973

`∪[A055387(n+1), A073064(n+1)]`
-/

namespace A359138.P14422792963117221973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P14422792963117221973

/-! ## A359138.P11187344803417154885

`∪[A002385(n+1), A359136(n+1)]`
-/

namespace A359138.P11187344803417154885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P11187344803417154885

/-! ## A359138.P8337307221759219669

`∪[A007500(n+1), A359136(n+1)]`
-/

namespace A359138.P8337307221759219669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P8337307221759219669

/-! ## A359138.P16678838529047557609

`∪[A029977(n+1), A359136(n+1)]`
-/

namespace A359138.P16678838529047557609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P16678838529047557609

/-! ## A359138.P837921457337007160

`∪[A029978(n+1), A359136(n+1)]`
-/

namespace A359138.P837921457337007160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P837921457337007160

/-! ## A359138.P1222707618351785723

`∪[A029979(n+1), A359136(n+1)]`
-/

namespace A359138.P1222707618351785723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P1222707618351785723

/-! ## A359138.P13815579706676697664

`∪[A029981(n+1), A359136(n+1)]`
-/

namespace A359138.P13815579706676697664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P13815579706676697664

/-! ## A359138.P15597146550755531103

`∪[A029982(n+1), A359136(n+1)]`
-/

namespace A359138.P15597146550755531103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P15597146550755531103

/-! ## A359138.P1830694400102967078

`∪[A030150(n+1), A359136(n+1)]`
-/

namespace A359138.P1830694400102967078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P1830694400102967078

/-! ## A359138.P3205721504805687477

`∪[A033938(n+1), A359136(n+1)]`
-/

namespace A359138.P3205721504805687477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P3205721504805687477

/-! ## A359138.P11196959586187824781

`∪[A045336(n+1), A359136(n+1)]`
-/

namespace A359138.P11196959586187824781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P11196959586187824781

/-! ## A359138.P14007144717142762107

`∪[A046732(n+1), A359136(n+1)]`
-/

namespace A359138.P14007144717142762107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P14007144717142762107

/-! ## A359138.P97057553114290730

`∪[A050665(n+1), A359136(n+1)]`
-/

namespace A359138.P97057553114290730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P97057553114290730

/-! ## A359138.P3903427809888427282

`∪[A052019(n+1), A359136(n+1)]`
-/

namespace A359138.P3903427809888427282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P3903427809888427282

/-! ## A359138.P10804369774162897649

`∪[A055387(n+1), A359137(n+1)]`
-/

namespace A359138.P10804369774162897649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P10804369774162897649

/-! ## A359138.P15573502038836253795

`∪[A084836(n+1), A359136(n+1)]`
-/

namespace A359138.P15573502038836253795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P15573502038836253795

/-! ## A359138.P11287492222459959252

`∪[A088562(n+1), A359136(n+1)]`
-/

namespace A359138.P11287492222459959252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P11287492222459959252

/-! ## A359138.P16437321191159589890

`∪[A234901(n+1), A359136(n+1)]`
-/

namespace A359138.P16437321191159589890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359138.P16437321191159589890

/-!
# A359139: A359137 together with 2, 3, 5, 7.

The programs for A359139, there is no canonical definition to state claims against.
-/

/-! ## A359139.P1681664790790674555

`∪[A002385(n+1), A359137(n+1)]`
-/

namespace A359139.P1681664790790674555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P1681664790790674555

/-! ## A359139.P767947619111068283

`∪[A007500(n+1), A359137(n+1)]`
-/

namespace A359139.P767947619111068283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P767947619111068283

/-! ## A359139.P10636866820204732964

`∪[A029981(n+1), A359137(n+1)]`
-/

namespace A359139.P10636866820204732964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P10636866820204732964

/-! ## A359139.P14558654666221689541

`∪[A029982(n+1), A359137(n+1)]`
-/

namespace A359139.P14558654666221689541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P14558654666221689541

/-! ## A359139.P1232524391382859290

`∪[A030150(n+1), A359137(n+1)]`
-/

namespace A359139.P1232524391382859290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P1232524391382859290

/-! ## A359139.P10150866900234377051

`∪[A033938(n+1), A359137(n+1)]`
-/

namespace A359139.P10150866900234377051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P10150866900234377051

/-! ## A359139.P1351576296535079753

`∪[A045336(n+1), A359137(n+1)]`
-/

namespace A359139.P1351576296535079753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P1351576296535079753

/-! ## A359139.P11309354526730081628

`∪[A046732(n+1), A359137(n+1)]`
-/

namespace A359139.P11309354526730081628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P11309354526730081628

/-! ## A359139.P6580709480250398910

`∪[A050665(n+1), A359137(n+1)]`
-/

namespace A359139.P6580709480250398910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P6580709480250398910

/-! ## A359139.P3403857590993604565

`∪[A050784(n+1), A359137(n+1)]`
-/

namespace A359139.P3403857590993604565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P3403857590993604565

/-! ## A359139.P13054829735277584759

`∪[A054217(n+1), A359137(n+1)]`
-/

namespace A359139.P13054829735277584759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P13054829735277584759

/-! ## A359139.P1021511982083289154

`∪[A054218(n+1), A359137(n+1)]`
-/

namespace A359139.P1021511982083289154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P1021511982083289154

/-! ## A359139.P11007023501305613128

`∪[A066306(n+1), A359137(n+1)]`
-/

namespace A359139.P11007023501305613128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P11007023501305613128

/-! ## A359139.P8483039017277876285

`∪[A069706(n+1), A359137(n+1)]`
-/

namespace A359139.P8483039017277876285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P8483039017277876285

/-! ## A359139.P14703199985552387787

`∪[A084836(n+1), A359137(n+1)]`
-/

namespace A359139.P14703199985552387787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P14703199985552387787

/-! ## A359139.P7057622962879829442

`∪[A084837(n+1), A359137(n+1)]`
-/

namespace A359139.P7057622962879829442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P7057622962879829442

/-! ## A359139.P18162517534302678080

`∪[A234901(n+1), A359137(n+1)]`
-/

namespace A359139.P18162517534302678080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359139.P18162517534302678080

/-!
# A359142: Let s = sum of digits of n, let t = decimal concatenation of n and s, let u be obtained by deleting all copies of the leading digit of t from t, if this digit occurs in s. Then if u has only zero digits, a(n) = 0; if u has leading digit 0 but not all its digits are 0, delete all leading 0's from u and negate the result to get a(n); otherwise a(n) = u.

The programs for A359142, there is no canonical definition to state claims against.
-/

/-! ## A359142.P8394389690234393074

`A017413(n)%A017413(A029966(n+1))`
-/

namespace A359142.P8394389690234393074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017413 n) (A017413 (A029966 (n + 1)).toNat)

end

end A359142.P8394389690234393074

/-! ## A359142.P12987365379371124466

`A108203(n+1)%A108203(A033075(n+1))`
-/

namespace A359142.P12987365379371124466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108203 (n + 1)) (A108203 (A033075 (n + 1)).toNat)

end

end A359142.P12987365379371124466

/-! ## A359142.P17247670110344728695

`A108773(n+1)%A061816(A108773(n+1))`
-/

namespace A359142.P17247670110344728695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108773 (n + 1)) (A061816 (A108773 (n + 1)).toNat)

end

end A359142.P17247670110344728695

/-! ## A359142.P16387854157191679650

`A216589(A061511(n+1)-A216587(n+1))`
-/

namespace A359142.P16387854157191679650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216589 (A061511 (n + 1) - A216587 (n + 1)).toNat

end

end A359142.P16387854157191679650

/-!
# A359143: The sum-and-erase sequence starting at 11: a(0) = 11; for n>=1, let m = a(n-1), and if m < 0, change m to an improper decimal "number" by replacing the minus sign by a single leading zero; then a(n) = A359142(m).

The programs for A359143, there is no canonical definition to state claims against.
-/

/-! ## A359143.P11662852736704205497

`A361350(lt[A029470(n+1), A113381(3*n+1)])`
-/

namespace A359143.P11662852736704205497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361350 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359143.P11662852736704205497

/-! ## A359143.P13389539786379883902

`A361350(lt[A136230(3*(n+1)), A035076(n+2)])`
-/

namespace A359143.P13389539786379883902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136230 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361350 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359143.P13389539786379883902

/-! ## A359143.P16971860730882535625

`A361350(lt[A364536(3*(n+1)), A113381(3*n+1)])`
-/

namespace A359143.P16971860730882535625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364536 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361350 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359143.P16971860730882535625

/-! ## A359143.P16899623443810870644

`A361350(lt[A000094(2*n+3), A113381(3*n+1)])`
-/

namespace A359143.P16899623443810870644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361350 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359143.P16899623443810870644

/-! ## A359143.P6428330172162321875

`A361350(lt[A092524(3*n+1), A246143(2*(n+2))])`
-/

namespace A359143.P6428330172162321875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246143 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361350 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359143.P6428330172162321875

/-!
# A359146: Divide a square into n similar rectangles; a(n) is the number of different proportions that are possible.

The programs for A359146, there is no canonical definition to state claims against.
-/

/-! ## A359146.P8754174808767525718

`A189029(A047889(n))+A002265(n)`
-/

namespace A359146.P8754174808767525718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189029 (A047889 n).toNat + A002265 n

end

end A359146.P8754174808767525718

/-! ## A359146.P12031492302958099977

`floor(sqrt(A076610(n^n)))`
-/

namespace A359146.P12031492302958099977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A076610 (n ^ n))

end

end A359146.P12031492302958099977

/-!
# A359147: Partial sums of A002326.

The programs for A359147, there is no canonical definition to state claims against.
-/

/-! ## A359147.P14886888449051884880

`∑[A002326(n)]`
-/

namespace A359147.P14886888449051884880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359147.P14886888449051884880

/-! ## A359147.P10370058936092537514

`∑[lcm(A003558(n), A053451(n))]`
-/

namespace A359147.P10370058936092537514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003558 n) (A053451 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359147.P10370058936092537514

/-! ## A359147.P10055852206879430141

`A002326(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A359147.P10055852206879430141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002326 n + a (A023443 n).toNat

end

end A359147.P10055852206879430141

/-! ## A359147.P4191994118922531612

`A002326(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A359147.P4191994118922531612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002326 n + a (A028310 n - 1).toNat

end

end A359147.P4191994118922531612

/-! ## A359147.P7782633163939186504

`∑[A000010(2*n+1)/A037226(n)]`
-/

namespace A359147.P7782633163939186504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A037226 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359147.P7782633163939186504

/-! ## A359147.P9335740294975001476

`A002326(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A359147.P9335740294975001476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002326 n + a (A000027 (n + 1) - 2).toNat

end

end A359147.P9335740294975001476

/-! ## A359147.P835930035887081676

`∑[A007733(Δ[n²])]`
-/

namespace A359147.P835930035887081676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359147.P835930035887081676

/-! ## A359147.P8217483756629346222

`∑[A024222(2*(n+1))]`
-/

namespace A359147.P8217483756629346222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359147.P8217483756629346222

/-! ## A359147.P8928788802778692538

`∑[A054703(2*n+1)]`
-/

namespace A359147.P8928788802778692538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359147.P8928788802778692538

/-! ## A359147.P731523047310414347

`∑[A204987(2*n+1)-1]`
-/

namespace A359147.P731523047310414347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359147.P731523047310414347

/-! ## A359147.P792897095985479939

`∑[log2(A352217(n+1))]`
-/

namespace A359147.P792897095985479939
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A352217 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359147.P792897095985479939

/-! ## A359147.P11403193810039882563

`∑[log2(A204981(2*n+1))]`
-/

namespace A359147.P11403193810039882563
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A204981 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359147.P11403193810039882563

/-!
# A359150: a(n) = 1 if n is a number of the form 4u+1 with an odd number of prime factors (counted with multiplicity), otherwise 0.

The programs for A359150, the canonical program `A359150.P10846391432532706989` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359150 has offset 1).

The definition of A359150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359150.P10747184414705051230

`A121262(n)-A359160(n+1)`
-/

namespace A359150.P10747184414705051230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n - A359160 (n + 1)

end

end A359150.P10747184414705051230

namespace A359150

/-- `A121262(n)-A359160(n+1)` -/
def P10747184414705051230.Spec : Prop :=
  ∀ n, P10747184414705051230.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P10846391432532706989

`A066829(n+1)*A121262(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359150

/-- `A066829(n+1)*A121262(n)` -/
def P10846391432532706989.Spec : Prop :=
  ∀ n, P10846391432532706989.a n = A359150 (n + 1)

theorem P10846391432532706989.correct : P10846391432532706989.Spec := by
  intro n
  simp only [A359150, Nat.add_sub_cancel]

end A359150

/-! ## A359150.P1454742788782959049

`A353558(n+1)-A359152(n+1)`
-/

namespace A359150.P1454742788782959049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (n + 1) - A359152 (n + 1)

end

end A359150.P1454742788782959049

namespace A359150

/-- `A353558(n+1)-A359152(n+1)` -/
def P1454742788782959049.Spec : Prop :=
  ∀ n, P1454742788782959049.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P5719916529440790154

`A369667(2*(n+1))`
-/

namespace A359150.P5719916529440790154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 (2 * (n + 1))

end

end A359150.P5719916529440790154

namespace A359150

/-- `A369667(2*(n+1))` -/
def P5719916529440790154.Spec : Prop :=
  ∀ n, P5719916529440790154.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P4837538430806945535

`A359162(3*(n+1))`
-/

namespace A359150.P4837538430806945535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359162 (3 * (n + 1))

end

end A359150.P4837538430806945535

namespace A359150

/-- `A359162(3*(n+1))` -/
def P4837538430806945535.Spec : Prop :=
  ∀ n, P4837538430806945535.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P12845802300833037957

`A359160(5*(n+1))`
-/

namespace A359150.P12845802300833037957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359160 (5 * (n + 1))

end

end A359150.P12845802300833037957

namespace A359150

/-- `A359160(5*(n+1))` -/
def P12845802300833037957.Spec : Prop :=
  ∀ n, P12845802300833037957.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P17927594888299731448

`and(char[4*n], A001222(n+1))`
-/

namespace A359150.P17927594888299731448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001222 (n + 1))

end

end A359150.P17927594888299731448

namespace A359150

/-- `and(char[4*n], A001222(n+1))` -/
def P17927594888299731448.Spec : Prop :=
  ∀ n, P17927594888299731448.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P3919957051898845838

`and(char[4*n], A001414(n+1))`
-/

namespace A359150.P3919957051898845838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001414 (n + 1))

end

end A359150.P3919957051898845838

namespace A359150

/-- `and(char[4*n], A001414(n+1))` -/
def P3919957051898845838.Spec : Prop :=
  ∀ n, P3919957051898845838.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P7704716778723600690

`and(char[4*n], A046079(n+1))`
-/

namespace A359150.P7704716778723600690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A046079 (n + 1))

end

end A359150.P7704716778723600690

namespace A359150

/-- `and(char[4*n], A046079(n+1))` -/
def P7704716778723600690.Spec : Prop :=
  ∀ n, P7704716778723600690.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P13218961020581474581

`and(∑[7*n]+1, A359372(n+1))`
-/

namespace A359150.P13218961020581474581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A359372 (n + 1))

end

end A359150.P13218961020581474581

namespace A359150

/-- `and(∑[7*n]+1, A359372(n+1))` -/
def P13218961020581474581.Spec : Prop :=
  ∀ n, P13218961020581474581.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P2136986245081914780

`A353558(A396674(n))`
-/

namespace A359150.P2136986245081914780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (A396674 n).toNat

end

end A359150.P2136986245081914780

namespace A359150

/-- `A353558(A396674(n))` -/
def P2136986245081914780.Spec : Prop :=
  ∀ n, P2136986245081914780.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P14306858792593746899

`and(A121262(n), A258057(n))`
-/

namespace A359150.P14306858792593746899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121262 n) (A258057 n)

end

end A359150.P14306858792593746899

namespace A359150

/-- `and(A121262(n), A258057(n))` -/
def P14306858792593746899.Spec : Prop :=
  ∀ n, P14306858792593746899.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P11511405943320567499

`A011765(A359160(n+1)+n)`
-/

namespace A359150.P11511405943320567499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A359160 (n + 1) + (n : ℤ)).toNat

end

end A359150.P11511405943320567499

namespace A359150

/-- `A011765(A359160(n+1)+n)` -/
def P11511405943320567499.Spec : Prop :=
  ∀ n, P11511405943320567499.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P9227481758490080186

`A121262(A353557(n+1)+n)`
-/

namespace A359150.P9227481758490080186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A353557 (n + 1) + (n : ℤ)).toNat

end

end A359150.P9227481758490080186

namespace A359150

/-- `A121262(A353557(n+1)+n)` -/
def P9227481758490080186.Spec : Prop :=
  ∀ n, P9227481758490080186.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P3842873585054690802

`A121262(A354036(n+1)+n)`
-/

namespace A359150.P3842873585054690802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A354036 (n + 1) + (n : ℤ)).toNat

end

end A359150.P3842873585054690802

namespace A359150

/-- `A121262(A354036(n+1)+n)` -/
def P3842873585054690802.Spec : Prop :=
  ∀ n, P3842873585054690802.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P6394990662219249224

`A121262(A359160(n+1)+n)`
-/

namespace A359150.P6394990662219249224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A359160 (n + 1) + (n : ℤ)).toNat

end

end A359150.P6394990662219249224

namespace A359150

/-- `A121262(A359160(n+1)+n)` -/
def P6394990662219249224.Spec : Prop :=
  ∀ n, P6394990662219249224.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P3538364528862662085

`A165560((n+1)*A121262(n))`
-/

namespace A359150.P3538364528862662085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 ((n + 1 : ℤ) * A121262 n).toNat

end

end A359150.P3538364528862662085

namespace A359150

/-- `A165560((n+1)*A121262(n))` -/
def P3538364528862662085.Spec : Prop :=
  ∀ n, P3538364528862662085.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P3992060511815014542

`A014577(n)*A353558(n+1)`
-/

namespace A359150.P3992060511815014542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A353558 (n + 1)

end

end A359150.P3992060511815014542

namespace A359150

/-- `A014577(n)*A353558(n+1)` -/
def P3992060511815014542.Spec : Prop :=
  ∀ n, P3992060511815014542.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P2493711761917596425

`A014577(n)*A354035(n+1)`
-/

namespace A359150.P2493711761917596425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A354035 (n + 1)

end

end A359150.P2493711761917596425

namespace A359150

/-- `A014577(n)*A354035(n+1)` -/
def P2493711761917596425.Spec : Prop :=
  ∀ n, P2493711761917596425.a n = A359150 (n + 1)

end A359150

/-! ## A359150.P5249489457173063584

`A102560(n)*A353558(n+1)`
-/

namespace A359150.P5249489457173063584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A353558 (n + 1)

end

end A359150.P5249489457173063584

namespace A359150

/-- `A102560(n)*A353558(n+1)` -/
def P5249489457173063584.Spec : Prop :=
  ∀ n, P5249489457173063584.a n = A359150 (n + 1)

end A359150

/-!
# A359151: Numbers of the form 4u+1 with an odd number of prime factors (counted with multiplicity).

The programs for A359151, the canonical program `A359151.P11123410445715459201` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359151 has offset 1).

The definition of A359151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359151.P14116301631062501908

`A369668(n+1)/2`
-/

namespace A359151.P14116301631062501908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369668 (n + 1) : ℚ) / 2

end

end A359151.P14116301631062501908

namespace A359151

/-- `A369668(n+1)/2` -/
def P14116301631062501908.Spec : Prop :=
  ∀ n, P14116301631062501908.a n = (A359151 (n + 1) : ℚ)

end A359151

/-! ## A359151.P10506859079506737140

`eq[1, A369667(2*n)]`
-/

namespace A359151.P10506859079506737140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359151.P10506859079506737140

namespace A359151

/-- `eq[1, A369667(2*n)]` -/
def P10506859079506737140.Spec : Prop :=
  ∀ n, (P10506859079506737140.a n : ℤ) = A359151 (n + 1)

end A359151

/-! ## A359151.P4648923273757036508

`eq[1, A359150(n+1)]+1`
-/

namespace A359151.P4648923273757036508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359151.P4648923273757036508

namespace A359151

/-- `eq[1, A359150(n+1)]+1` -/
def P4648923273757036508.Spec : Prop :=
  ∀ n, (P4648923273757036508.a n : ℤ) = A359151 (n + 1)

end A359151

/-! ## A359151.P9757075005395318342

`A000265(A369668(n+1))`
-/

namespace A359151.P9757075005395318342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A369668 (n + 1)).toNat

end

end A359151.P9757075005395318342

namespace A359151

/-- `A000265(A369668(n+1))` -/
def P9757075005395318342.Spec : Prop :=
  ∀ n, P9757075005395318342.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P10815697312575509240

`eq[A358680(n)+1, A010873(n)]`
-/

namespace A359151.P10815697312575509240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359151.P10815697312575509240

namespace A359151

/-- `eq[A358680(n)+1, A010873(n)]` -/
def P10815697312575509240.Spec : Prop :=
  ∀ n, (P10815697312575509240.a n : ℤ) = A359151 (n + 1)

end A359151

/-! ## A359151.P8135936548922098489

`filter[A324909(n+1), A066829(#)]`
-/

namespace A359151.P8135936548922098489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359151.P8135936548922098489

namespace A359151

/-- `filter[A324909(n+1), A066829(#)]` -/
def P8135936548922098489.Spec : Prop :=
  ∀ n, P8135936548922098489.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P16569605162510884988

`filter[A324909(n+1), A353558(#)]`
-/

namespace A359151.P16569605162510884988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A359151.P16569605162510884988

namespace A359151

/-- `filter[A324909(n+1), A353558(#)]` -/
def P16569605162510884988.Spec : Prop :=
  ∀ n, P16569605162510884988.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P3838192419099845665

`filter[A324909(n+1), A359150(#)]`
-/

namespace A359151.P3838192419099845665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A359151.P3838192419099845665

namespace A359151

/-- `filter[A324909(n+1), A359150(#)]` -/
def P3838192419099845665.Spec : Prop :=
  ∀ n, P3838192419099845665.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P12483033588610115402

`filter[A324909(n+1), A359372(#)]`
-/

namespace A359151.P12483033588610115402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359151.P12483033588610115402

namespace A359151

/-- `filter[A324909(n+1), A359372(#)]` -/
def P12483033588610115402.Spec : Prop :=
  ∀ n, P12483033588610115402.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P4961091456635520820

`filter[A324909(n+1), A373141(#)]`
-/

namespace A359151.P4961091456635520820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A359151.P4961091456635520820

namespace A359151

/-- `filter[A324909(n+1), A373141(#)]` -/
def P4961091456635520820.Spec : Prop :=
  ∀ n, P4961091456635520820.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P9085713897850007511

`filter[A077425(n+1), A066829(#)]`
-/

namespace A359151.P9085713897850007511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359151.P9085713897850007511

namespace A359151

/-- `filter[A077425(n+1), A066829(#)]` -/
def P9085713897850007511.Spec : Prop :=
  ∀ n, P9085713897850007511.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P3671060770120213125

`filter[A077425(n+1), A353558(#)]`
-/

namespace A359151.P3671060770120213125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A359151.P3671060770120213125

namespace A359151

/-- `filter[A077425(n+1), A353558(#)]` -/
def P3671060770120213125.Spec : Prop :=
  ∀ n, P3671060770120213125.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P11123410445715459201

`filter[A077425(n+1), A354035(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359151

/-- `filter[A077425(n+1), A354035(#)]` -/
def P11123410445715459201.Spec : Prop :=
  ∀ n, P11123410445715459201.a n = A359151 (n + 1)

theorem P11123410445715459201.correct : P11123410445715459201.Spec := by
  intro n
  simp only [A359151, Nat.add_sub_cancel]

end A359151

/-! ## A359151.P4355267081890204210

`filter[A077425(n+1), A359150(#)]`
-/

namespace A359151.P4355267081890204210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A359151.P4355267081890204210

namespace A359151

/-- `filter[A077425(n+1), A359150(#)]` -/
def P4355267081890204210.Spec : Prop :=
  ∀ n, P4355267081890204210.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P11486778700768624982

`filter[A077425(n+1), A359372(#)]`
-/

namespace A359151.P11486778700768624982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359151.P11486778700768624982

namespace A359151

/-- `filter[A077425(n+1), A359372(#)]` -/
def P11486778700768624982.Spec : Prop :=
  ∀ n, P11486778700768624982.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P7567203907368029375

`filter[A077425(n+1), A373141(#)]`
-/

namespace A359151.P7567203907368029375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A359151.P7567203907368029375

namespace A359151

/-- `filter[A077425(n+1), A373141(#)]` -/
def P7567203907368029375.Spec : Prop :=
  ∀ n, P7567203907368029375.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P12214616626634457686

`filter[A004766(n+1), A066829(#)]`
-/

namespace A359151.P12214616626634457686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359151.P12214616626634457686

namespace A359151

/-- `filter[A004766(n+1), A066829(#)]` -/
def P12214616626634457686.Spec : Prop :=
  ∀ n, P12214616626634457686.a n = A359151 (n + 1)

end A359151

/-! ## A359151.P1252907170237636310

`filter[A004766(n+1), A353558(#)]`
-/

namespace A359151.P1252907170237636310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A359151.P1252907170237636310

namespace A359151

/-- `filter[A004766(n+1), A353558(#)]` -/
def P1252907170237636310.Spec : Prop :=
  ∀ n, P1252907170237636310.a n = A359151 (n + 1)

end A359151

/-!
# A359152: a(n) = 1 if n is a number of the form 4u+3 with an odd number of prime factors (counted with multiplicity), otherwise 0.

The programs for A359152, the canonical program `A359152.P7216444529102150674` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359152 has offset 1).

The definition of A359152 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353558, A359150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359152.P7216444529102150674

`A353558(n+1)-A359150(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359152

/-- `A353558(n+1)-A359150(n+1)` -/
def P7216444529102150674.Spec : Prop :=
  ∀ n, P7216444529102150674.a n = A359152 (n + 1)

theorem P7216444529102150674.correct : P7216444529102150674.Spec := by
  intro n
  simp only [A359152, Nat.add_sub_cancel]

end A359152

/-! ## A359152.P6350453112465378244

`A359160(3*(n+1))`
-/

namespace A359152.P6350453112465378244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359160 (3 * (n + 1))

end

end A359152.P6350453112465378244

namespace A359152

/-- `A359160(3*(n+1))` -/
def P6350453112465378244.Spec : Prop :=
  ∀ n, P6350453112465378244.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P16973981468285252489

`A359162(5*(n+1))`
-/

namespace A359152.P16973981468285252489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359162 (5 * (n + 1))

end

end A359152.P16973981468285252489

namespace A359152

/-- `A359162(5*(n+1))` -/
def P16973981468285252489.Spec : Prop :=
  ∀ n, P16973981468285252489.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P18216336030401662968

`and(∑[n], A353558(n+1))`
-/

namespace A359152.P18216336030401662968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A353558 (n + 1))

end

end A359152.P18216336030401662968

namespace A359152

/-- `and(∑[n], A353558(n+1))` -/
def P18216336030401662968.Spec : Prop :=
  ∀ n, P18216336030401662968.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P7061986610764807393

`and(∑[n], A354036(n+1))`
-/

namespace A359152.P7061986610764807393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A354036 (n + 1))

end

end A359152.P7061986610764807393

namespace A359152

/-- `and(∑[n], A354036(n+1))` -/
def P7061986610764807393.Spec : Prop :=
  ∀ n, P7061986610764807393.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P7843703902980548180

`and(floor(n/2), A359372(n+1))`
-/

namespace A359152.P7843703902980548180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 2⌋ (A359372 (n + 1))

end

end A359152.P7843703902980548180

namespace A359152

/-- `and(floor(n/2), A359372(n+1))` -/
def P7843703902980548180.Spec : Prop :=
  ∀ n, P7843703902980548180.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P1738646795652879993

`and(∑[n], A353374(3*(n+1)))`
-/

namespace A359152.P1738646795652879993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A353374 (3 * (n + 1)))

end

end A359152.P1738646795652879993

namespace A359152

/-- `and(∑[n], A353374(3*(n+1)))` -/
def P1738646795652879993.Spec : Prop :=
  ∀ n, P1738646795652879993.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P5288503245548317009

`and(floor((n/2)²), 1-A065043(n+1))`
-/

namespace A359152.P5288503245548317009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊((n : ℚ) / 2) ^ 2⌋ (1 - A065043 (n + 1))

end

end A359152.P5288503245548317009

namespace A359152

/-- `and(floor((n/2)²), 1-A065043(n+1))` -/
def P5288503245548317009.Spec : Prop :=
  ∀ n, P5288503245548317009.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P1109237691757238304

`and(floor((n/2)²), A065043(2*(n+1)))`
-/

namespace A359152.P1109237691757238304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊((n : ℚ) / 2) ^ 2⌋ (A065043 (2 * (n + 1)))

end

end A359152.P1109237691757238304

namespace A359152

/-- `and(floor((n/2)²), A065043(2*(n+1)))` -/
def P1109237691757238304.Spec : Prop :=
  ∀ n, P1109237691757238304.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P713751859579635308

`and(((n+1)*∑[n])²², A001222(n+1))`
-/

namespace A359152.P713751859579635308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2) ^ 2 : ℕ) : ℤ) (A001222 (n + 1))

end

end A359152.P713751859579635308

namespace A359152

/-- `and(((n+1)*∑[n])²², A001222(n+1))` -/
def P713751859579635308.Spec : Prop :=
  ∀ n, P713751859579635308.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P6933759348831529755

`A165560(A003815(n))`
-/

namespace A359152.P6933759348831529755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A003815 n).toNat

end

end A359152.P6933759348831529755

namespace A359152

/-- `A165560(A003815(n))` -/
def P6933759348831529755.Spec : Prop :=
  ∀ n, P6933759348831529755.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P11392604537758045812

`A353555(A047576(n+1))`
-/

namespace A359152.P11392604537758045812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (A047576 (n + 1)).toNat

end

end A359152.P11392604537758045812

namespace A359152

/-- `A353555(A047576(n+1))` -/
def P11392604537758045812.Spec : Prop :=
  ∀ n, P11392604537758045812.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P7304951297176896849

`A353558(A121262(n)+1+n)`
-/

namespace A359152.P7304951297176896849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (A121262 n + 1 + (n : ℤ)).toNat

end

end A359152.P7304951297176896849

namespace A359152

/-- `A353558(A121262(n)+1+n)` -/
def P7304951297176896849.Spec : Prop :=
  ∀ n, P7304951297176896849.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P2856744409286930614

`A354036(A121262(n)+1+n)`
-/

namespace A359152.P2856744409286930614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354036 (A121262 n + 1 + (n : ℤ)).toNat

end

end A359152.P2856744409286930614

namespace A359152

/-- `A354036(A121262(n)+1+n)` -/
def P2856744409286930614.Spec : Prop :=
  ∀ n, P2856744409286930614.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P6355016336271389789

`A014707(n*A353558(n+1))`
-/

namespace A359152.P6355016336271389789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 ((n : ℤ) * A353558 (n + 1)).toNat

end

end A359152.P6355016336271389789

namespace A359152

/-- `A014707(n*A353558(n+1))` -/
def P6355016336271389789.Spec : Prop :=
  ∀ n, P6355016336271389789.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P18262800105809688716

`A014707(n)*A354036(n+1)`
-/

namespace A359152.P18262800105809688716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n * A354036 (n + 1)

end

end A359152.P18262800105809688716

namespace A359152

/-- `A014707(n)*A354036(n+1)` -/
def P18262800105809688716.Spec : Prop :=
  ∀ n, P18262800105809688716.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P7608172237232882703

`A021913(n)*A353558(n+1)`
-/

namespace A359152.P7608172237232882703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A353558 (n + 1)

end

end A359152.P7608172237232882703

namespace A359152

/-- `A021913(n)*A353558(n+1)` -/
def P7608172237232882703.Spec : Prop :=
  ∀ n, P7608172237232882703.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P3217766321990114290

`A165560(n*A353558(n+1))`
-/

namespace A359152.P3217766321990114290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 ((n : ℤ) * A353558 (n + 1)).toNat

end

end A359152.P3217766321990114290

namespace A359152

/-- `A165560(n*A353558(n+1))` -/
def P3217766321990114290.Spec : Prop :=
  ∀ n, P3217766321990114290.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P11027728045962974664

`A330602(n)*A353558(n+1)`
-/

namespace A359152.P11027728045962974664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330602 n * A353558 (n + 1)

end

end A359152.P11027728045962974664

namespace A359152

/-- `A330602(n)*A353558(n+1)` -/
def P11027728045962974664.Spec : Prop :=
  ∀ n, P11027728045962974664.a n = A359152 (n + 1)

end A359152

/-! ## A359152.P8968754886742552602

`A066959(n+1)%A014695(n)`
-/

namespace A359152.P8968754886742552602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066959 (n + 1)) (A014695 n)

end

end A359152.P8968754886742552602

namespace A359152

/-- `A066959(n+1)%A014695(n)` -/
def P8968754886742552602.Spec : Prop :=
  ∀ n, P8968754886742552602.a n = A359152 (n + 1)

end A359152

/-!
# A359153: Numbers of the form 4u+3 with an odd number of prime factors (counted with multiplicity).

The programs for A359153, the canonical program `A359153.P11980574962426657024` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359153 has offset 1).

The definition of A359153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359153.P17255113367701294343

`eq[1, A359152(n+1)]+1`
-/

namespace A359153.P17255113367701294343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359153.P17255113367701294343

namespace A359153

/-- `eq[1, A359152(n+1)]+1` -/
def P17255113367701294343.Spec : Prop :=
  ∀ n, (P17255113367701294343.a n : ℤ) = A359153 (n + 1)

end A359153

/-! ## A359153.P13764449321890220066

`filter[A004767(n), A066829(#)]`
-/

namespace A359153.P13764449321890220066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359153.P13764449321890220066

namespace A359153

/-- `filter[A004767(n), A066829(#)]` -/
def P13764449321890220066.Spec : Prop :=
  ∀ n, P13764449321890220066.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P9423363922535668327

`filter[A004767(n), A353558(#)]`
-/

namespace A359153.P9423363922535668327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A359153.P9423363922535668327

namespace A359153

/-- `filter[A004767(n), A353558(#)]` -/
def P9423363922535668327.Spec : Prop :=
  ∀ n, P9423363922535668327.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P11980574962426657024

`filter[A004767(n), A354036(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A359153

/-- `filter[A004767(n), A354036(#)]` -/
def P11980574962426657024.Spec : Prop :=
  ∀ n, P11980574962426657024.a n = A359153 (n + 1)

theorem P11980574962426657024.correct : P11980574962426657024.Spec := by
  intro n
  simp only [A359153, Nat.add_sub_cancel]

end A359153

/-! ## A359153.P11528910243795885270

`filter[A004767(n), A359152(#)]`
-/

namespace A359153.P11528910243795885270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A359153.P11528910243795885270

namespace A359153

/-- `filter[A004767(n), A359152(#)]` -/
def P11528910243795885270.Spec : Prop :=
  ∀ n, P11528910243795885270.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P1310607033510427582

`filter[A004767(n), A359372(#)]`
-/

namespace A359153.P1310607033510427582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359153.P1310607033510427582

namespace A359153

/-- `filter[A004767(n), A359372(#)]` -/
def P1310607033510427582.Spec : Prop :=
  ∀ n, P1310607033510427582.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P14996945563286882174

`filter[A004767(n), A373141(#)]`
-/

namespace A359153.P14996945563286882174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A359153.P14996945563286882174

namespace A359153

/-- `filter[A004767(n), A373141(#)]` -/
def P14996945563286882174.Spec : Prop :=
  ∀ n, P14996945563286882174.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P7641210408945447457

`filter[A131098(n+1), A066829(#)]`
-/

namespace A359153.P7641210408945447457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359153.P7641210408945447457

namespace A359153

/-- `filter[A131098(n+1), A066829(#)]` -/
def P7641210408945447457.Spec : Prop :=
  ∀ n, P7641210408945447457.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P17249566530580198719

`filter[A131098(n+1), A353558(#)]`
-/

namespace A359153.P17249566530580198719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A359153.P17249566530580198719

namespace A359153

/-- `filter[A131098(n+1), A353558(#)]` -/
def P17249566530580198719.Spec : Prop :=
  ∀ n, P17249566530580198719.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P12530017967546357249

`filter[A131098(n+1), A359152(#)]`
-/

namespace A359153.P12530017967546357249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A359153.P12530017967546357249

namespace A359153

/-- `filter[A131098(n+1), A359152(#)]` -/
def P12530017967546357249.Spec : Prop :=
  ∀ n, P12530017967546357249.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P8908689558142331767

`filter[A131098(n+1), A359372(#)]`
-/

namespace A359153.P8908689558142331767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A359153.P8908689558142331767

namespace A359153

/-- `filter[A131098(n+1), A359372(#)]` -/
def P8908689558142331767.Spec : Prop :=
  ∀ n, P8908689558142331767.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P11185107341410150792

`filter[A131098(n+1), A373141(#)]`
-/

namespace A359153.P11185107341410150792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A359153.P11185107341410150792

namespace A359153

/-- `filter[A131098(n+1), A373141(#)]` -/
def P11185107341410150792.Spec : Prop :=
  ∀ n, P11185107341410150792.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P14656991765797651975

`filter[A131098(n+2), A354036(#)]`
-/

namespace A359153.P14656991765797651975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A359153.P14656991765797651975

namespace A359153

/-- `filter[A131098(n+2), A354036(#)]` -/
def P14656991765797651975.Spec : Prop :=
  ∀ n, P14656991765797651975.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P16905518681109173649

`filter[A354039(n+1), A066829(#)]`
-/

namespace A359153.P16905518681109173649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359153.P16905518681109173649

namespace A359153

/-- `filter[A354039(n+1), A066829(#)]` -/
def P16905518681109173649.Spec : Prop :=
  ∀ n, P16905518681109173649.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P17607172744976565117

`∩[A354039(n+1), A004767(n)]`
-/

namespace A359153.P17607172744976565117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359153.P17607172744976565117

namespace A359153

/-- `∩[A354039(n+1), A004767(n)]` -/
def P17607172744976565117.Spec : Prop :=
  ∀ n, (P17607172744976565117.a n : ℤ) = A359153 (n + 1)

end A359153

/-! ## A359153.P17523242321800829815

`∩[A354039(n+1), A016813(n)+2]`
-/

namespace A359153.P17523242321800829815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359153.P17523242321800829815

namespace A359153

/-- `∩[A354039(n+1), A016813(n)+2]` -/
def P17523242321800829815.Spec : Prop :=
  ∀ n, (P17523242321800829815.a n : ℤ) = A359153 (n + 1)

end A359153

/-! ## A359153.P5478525158944251705

`filter[A067019(n+1), A354036(#)]`
-/

namespace A359153.P5478525158944251705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A359153.P5478525158944251705

namespace A359153

/-- `filter[A067019(n+1), A354036(#)]` -/
def P5478525158944251705.Spec : Prop :=
  ∀ n, P5478525158944251705.a n = A359153 (n + 1)

end A359153

/-! ## A359153.P10176574239256767372

`filter[A067019(n+1), A359152(#)]`
-/

namespace A359153.P10176574239256767372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A359153.P10176574239256767372

namespace A359153

/-- `filter[A067019(n+1), A359152(#)]` -/
def P10176574239256767372.Spec : Prop :=
  ∀ n, P10176574239256767372.a n = A359153 (n + 1)

end A359153

/-!
# A359154: a(n) = (-1)^sopfr(n), where sopfr is the sum of prime factors with repetition.

The programs for A359154, the canonical program `A359154.P14645597383295465287` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359154 has offset 1).

The definition of A359154 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359154.P14645597383295465287

`(-1)^A001414(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359154

/-- `(-1)^A001414(n+1)` -/
def P14645597383295465287.Spec : Prop :=
  ∀ n, P14645597383295465287.a n = (A359154 (n + 1) : ℚ)

end A359154

/-! ## A359154.P2869651554015322705

`(-1)^(1+A356163(n+1))`
-/

namespace A359154.P2869651554015322705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (1 + A356163 (n + 1) : ℤ)

end

end A359154.P2869651554015322705

namespace A359154

/-- `(-1)^(1+A356163(n+1))` -/
def P2869651554015322705.Spec : Prop :=
  ∀ n, P2869651554015322705.a n = (A359154 (n + 1) : ℚ)

end A359154

/-! ## A359154.P9977456344159950483

`(-1)^∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A359154.P9977456344159950483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p)

end

end A359154.P9977456344159950483

namespace A359154

/-- `(-1)^∑{p}[n+1, #*val(n+1, #)]` -/
def P9977456344159950483.Spec : Prop :=
  ∀ n, P9977456344159950483.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P424856860145347211

`(-1)^Δ[A025281(n)]`
-/

namespace A359154.P424856860145347211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A359154.P424856860145347211

namespace A359154

/-- `(-1)^Δ[A025281(n)]` -/
def P424856860145347211.Spec : Prop :=
  ∀ n, P424856860145347211.a n = (A359154 (n + 1) : ℚ)

end A359154

/-! ## A359154.P18358962739517452170

`(-1)^A067666(n+1)`
-/

namespace A359154.P18358962739517452170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A067666 (n + 1) : ℤ)

end

end A359154.P18358962739517452170

namespace A359154

/-- `(-1)^A067666(n+1)` -/
def P18358962739517452170.Spec : Prop :=
  ∀ n, P18358962739517452170.a n = (A359154 (n + 1) : ℚ)

end A359154

/-! ## A359154.P5567826542555704804

`(-1)^A071321(n+1)`
-/

namespace A359154.P5567826542555704804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A071321 (n + 1) : ℤ)

end

end A359154.P5567826542555704804

namespace A359154

/-- `(-1)^A071321(n+1)` -/
def P5567826542555704804.Spec : Prop :=
  ∀ n, P5567826542555704804.a n = (A359154 (n + 1) : ℚ)

end A359154

/-! ## A359154.P3278240805594569310

`(-1)^A079635(n+1)`
-/

namespace A359154.P3278240805594569310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A079635 (n + 1) : ℤ)

end

end A359154.P3278240805594569310

namespace A359154

/-- `(-1)^A079635(n+1)` -/
def P3278240805594569310.Spec : Prop :=
  ∀ n, P3278240805594569310.a n = (A359154 (n + 1) : ℚ)

end A359154

/-! ## A359154.P8072310716480153274

`(-1)^A087436(n+1)`
-/

namespace A359154.P8072310716480153274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A087436 (n + 1) : ℤ)

end

end A359154.P8072310716480153274

namespace A359154

/-- `(-1)^A087436(n+1)` -/
def P8072310716480153274.Spec : Prop :=
  ∀ n, P8072310716480153274.a n = (A359154 (n + 1) : ℚ)

end A359154

/-! ## A359154.P7544583172883521039

`(-1)^A023889(n+1)`
-/

namespace A359154.P7544583172883521039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A023889 (n + 1) : ℤ)

end

end A359154.P7544583172883521039

namespace A359154

/-- `(-1)^A023889(n+1)` -/
def P7544583172883521039.Spec : Prop :=
  ∀ n, P7544583172883521039.a n = (A359154 (n + 1) : ℚ)

end A359154

/-! ## A359154.P12479719072396551968

`2*A356163(n+1)-1`
-/

namespace A359154.P12479719072396551968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356163 (n + 1) - 1

end

end A359154.P12479719072396551968

namespace A359154

/-- `2*A356163(n+1)-1` -/
def P12479719072396551968.Spec : Prop :=
  ∀ n, P12479719072396551968.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P1116281172328709064

`2*A023888(n+1)%2-1`
-/

namespace A359154.P1116281172328709064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A023888 (n + 1)) 2 - 1

end

end A359154.P1116281172328709064

namespace A359154

/-- `2*A023888(n+1)%2-1` -/
def P1116281172328709064.Spec : Prop :=
  ∀ n, P1116281172328709064.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P16897175568541617575

`(-1)^A001222((n+1)/2^val(n+1, 2))`
-/

namespace A359154.P16897175568541617575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℤ)

end

end A359154.P16897175568541617575

namespace A359154

/-- `(-1)^A001222((n+1)/2^val(n+1, 2))` -/
def P16897175568541617575.Spec : Prop :=
  ∀ n, P16897175568541617575.a n = (A359154 (n + 1) : ℚ)

end A359154

/-! ## A359154.P3181942113121263531

`A067856(A364900(n))`
-/

namespace A359154.P3181942113121263531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A364900 n).toNat

end

end A359154.P3181942113121263531

namespace A359154

/-- `A067856(A364900(n))` -/
def P3181942113121263531.Spec : Prop :=
  ∀ n, P3181942113121263531.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P6360002960451620020

`A008836(A000265(n+1))`
-/

namespace A359154.P6360002960451620020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000265 (n + 1)).toNat

end

end A359154.P6360002960451620020

namespace A359154

/-- `A008836(A000265(n+1))` -/
def P6360002960451620020.Spec : Prop :=
  ∀ n, P6360002960451620020.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P10546791414657671309

`A033999(A001414(n+1))`
-/

namespace A359154.P10546791414657671309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001414 (n + 1)).toNat

end

end A359154.P10546791414657671309

namespace A359154

/-- `A033999(A001414(n+1))` -/
def P10546791414657671309.Spec : Prop :=
  ∀ n, P10546791414657671309.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P1556091163673031029

`A008836(A064989(n+1))`
-/

namespace A359154.P1556091163673031029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A064989 (n + 1)).toNat

end

end A359154.P1556091163673031029

namespace A359154

/-- `A008836(A064989(n+1))` -/
def P1556091163673031029.Spec : Prop :=
  ∀ n, P1556091163673031029.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P9528501129494739814

`A067856(A007913(n+1))`
-/

namespace A359154.P9528501129494739814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A007913 (n + 1)).toNat

end

end A359154.P9528501129494739814

namespace A359154

/-- `A067856(A007913(n+1))` -/
def P9528501129494739814.Spec : Prop :=
  ∀ n, P9528501129494739814.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P783209124288905931

`A011584(A079065(n+1))`
-/

namespace A359154.P783209124288905931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 (A079065 (n + 1)).toNat

end

end A359154.P783209124288905931

namespace A359154

/-- `A011584(A079065(n+1))` -/
def P783209124288905931.Spec : Prop :=
  ∀ n, P783209124288905931.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P15876977406220517181

`A062157(A036288(n+1))`
-/

namespace A359154.P15876977406220517181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A036288 (n + 1)).toNat

end

end A359154.P15876977406220517181

namespace A359154

/-- `A062157(A036288(n+1))` -/
def P15876977406220517181.Spec : Prop :=
  ∀ n, P15876977406220517181.a n = A359154 (n + 1)

end A359154

/-! ## A359154.P17906597134294473002

`A033999(A071322(n+1))`
-/

namespace A359154.P17906597134294473002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A071322 (n + 1)).toNat

end

end A359154.P17906597134294473002

namespace A359154

/-- `A033999(A071322(n+1))` -/
def P17906597134294473002.Spec : Prop :=
  ∀ n, P17906597134294473002.a n = A359154 (n + 1)

end A359154

/-!
# A359155: Dirichlet inverse of A359154, where A359154 is multiplicative with a(p^e) = (-1)^(p*e).

The programs for A359155, the canonical program `A359155.P11603315306347377476` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359155 has offset 1).

The definition of A359155 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A359154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359155.P11603315306347377476

`A008683(n+1)*A359154(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A359155

/-- `A008683(n+1)*A359154(n+1)` -/
def P11603315306347377476.Spec : Prop :=
  ∀ n, P11603315306347377476.a n = A359155 (n + 1)

theorem P11603315306347377476.correct : P11603315306347377476.Spec := by
  intro n
  simp only [A359155, Nat.add_sub_cancel]

end A359155

/-! ## A359155.P9937685700491026385

`round((-∏{e}[n+1, #])^-n)`
-/

namespace A359155.P9937685700491026385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((-((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) : ℚ) ^ (-(n : ℤ) : ℤ))

end

end A359155.P9937685700491026385

namespace A359155

/-- `round((-∏{e}[n+1, #])^-n)` -/
def P9937685700491026385.Spec : Prop :=
  ∀ n, P9937685700491026385.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P8726073556071751144

`(-C(∏{p}[n+1, #], n+1))^n`
-/

namespace A359155.P8726073556071751144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) (n + 1) : ℤ)) ^ n

end

end A359155.P8726073556071751144

namespace A359155

/-- `(-C(∏{p}[n+1, #], n+1))^n` -/
def P8726073556071751144.Spec : Prop :=
  ∀ n, P8726073556071751144.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P8356530343197005657

`A308077(n+1)%2`
-/

namespace A359155.P8356530343197005657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308077 (n + 1)) 2

end

end A359155.P8356530343197005657

namespace A359155

/-- `A308077(n+1)%2` -/
def P8356530343197005657.Spec : Prop :=
  ∀ n, P8356530343197005657.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P13641406057435508922

`(-A080323(n+1))^n`
-/

namespace A359155.P13641406057435508922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A080323 (n + 1)) ^ n

end

end A359155.P13641406057435508922

namespace A359155

/-- `(-A080323(n+1))^n` -/
def P13641406057435508922.Spec : Prop :=
  ∀ n, P13641406057435508922.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P9507888516956088646

`(A087049(n+1)-1)^n`
-/

namespace A359155.P9507888516956088646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087049 (n + 1) - 1) ^ n

end

end A359155.P9507888516956088646

namespace A359155

/-- `(A087049(n+1)-1)^n` -/
def P9507888516956088646.Spec : Prop :=
  ∀ n, P9507888516956088646.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P11516423477355722862

`(A107078(n+1)-1)^n`
-/

namespace A359155.P11516423477355722862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107078 (n + 1) - 1) ^ n

end

end A359155.P11516423477355722862

namespace A359155

/-- `(A107078(n+1)-1)^n` -/
def P11516423477355722862.Spec : Prop :=
  ∀ n, P11516423477355722862.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P14542584505301846474

`(A007424(n+1)-2)^n`
-/

namespace A359155.P14542584505301846474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007424 (n + 1) - 2) ^ n

end

end A359155.P14542584505301846474

namespace A359155

/-- `(A007424(n+1)-2)^n` -/
def P14542584505301846474.Spec : Prop :=
  ∀ n, P14542584505301846474.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P7104286102876176235

`(-A008683(n+1)²)^n`
-/

namespace A359155.P7104286102876176235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(A008683 (n + 1) ^ 2)) ^ n

end

end A359155.P7104286102876176235

namespace A359155

/-- `(-A008683(n+1)²)^n` -/
def P7104286102876176235.Spec : Prop :=
  ∀ n, P7104286102876176235.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P6069631087411113326

`xor(n, A008966(n+1))-n`
-/

namespace A359155.P6069631087411113326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008966 (n + 1)) - (n : ℤ)

end

end A359155.P6069631087411113326

namespace A359155

/-- `xor(n, A008966(n+1))-n` -/
def P6069631087411113326.Spec : Prop :=
  ∀ n, P6069631087411113326.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P17308297489832757663

`(-dr(A008683(2*n+1-n)))^n`
-/

namespace A359155.P17308297489832757663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(SequenceMachineLib.digitalRoot (A008683 (2 * n + 1 - n)) : ℤ)) ^ n

end

end A359155.P17308297489832757663

namespace A359155

/-- `(-dr(A008683(2*n+1-n)))^n` -/
def P17308297489832757663.Spec : Prop :=
  ∀ n, P17308297489832757663.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P8545428272848036992

`A008683(A235872(n+1))`
-/

namespace A359155.P8545428272848036992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A235872 (n + 1)).toNat

end

end A359155.P8545428272848036992

namespace A359155

/-- `A008683(A235872(n+1))` -/
def P8545428272848036992.Spec : Prop :=
  ∀ n, P8545428272848036992.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P4956298640056308908

`A154955(A357689(n+1))`
-/

namespace A359155.P4956298640056308908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A357689 (n + 1)).toNat

end

end A359155.P4956298640056308908

namespace A359155

/-- `A154955(A357689(n+1))` -/
def P4956298640056308908.Spec : Prop :=
  ∀ n, P4956298640056308908.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P17722249182349137629

`A008966(n+1)*A033999(n)`
-/

namespace A359155.P17722249182349137629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A033999 n

end

end A359155.P17722249182349137629

namespace A359155

/-- `A008966(n+1)*A033999(n)` -/
def P17722249182349137629.Spec : Prop :=
  ∀ n, P17722249182349137629.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P1916392204229916697

`∑{d}[A357689(n+1), A092673(#)]`
-/

namespace A359155.P1916392204229916697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A092673 d

end

end A359155.P1916392204229916697

namespace A359155

/-- `∑{d}[A357689(n+1), A092673(#)]` -/
def P1916392204229916697.Spec : Prop :=
  ∀ n, P1916392204229916697.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P11796415026463587924

`A008683(n+1)²*A033999(n)`
-/

namespace A359155.P11796415026463587924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A033999 n

end

end A359155.P11796415026463587924

namespace A359155

/-- `A008683(n+1)²*A033999(n)` -/
def P11796415026463587924.Spec : Prop :=
  ∀ n, P11796415026463587924.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P1468601479459592674

`A323239(n+1)-A379966(n+1)`
-/

namespace A359155.P1468601479459592674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (n + 1) - A379966 (n + 1)

end

end A359155.P1468601479459592674

namespace A359155

/-- `A323239(n+1)-A379966(n+1)` -/
def P1468601479459592674.Spec : Prop :=
  ∀ n, P1468601479459592674.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P1303054467654420480

`A008683(n+1)*A067856(n+1)`
-/

namespace A359155.P1303054467654420480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A067856 (n + 1)

end

end A359155.P1303054467654420480

namespace A359155

/-- `A008683(n+1)*A067856(n+1)` -/
def P1303054467654420480.Spec : Prop :=
  ∀ n, P1303054467654420480.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P15920386474691922462

`A008683(n+1)*A085384(n+1)`
-/

namespace A359155.P15920386474691922462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A085384 (n + 1)

end

end A359155.P15920386474691922462

namespace A359155

/-- `A008683(n+1)*A085384(n+1)` -/
def P15920386474691922462.Spec : Prop :=
  ∀ n, P15920386474691922462.a n = A359155 (n + 1)

end A359155

/-! ## A359155.P6349880295324473731

`A008683(n+1)*A086831(n+1)`
-/

namespace A359155.P6349880295324473731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A086831 (n + 1)

end

end A359155.P6349880295324473731

namespace A359155

/-- `A008683(n+1)*A086831(n+1)` -/
def P6349880295324473731.Spec : Prop :=
  ∀ n, P6349880295324473731.a n = A359155 (n + 1)

end A359155

/-!
# A359156: a(n) = 1 if the odd part of n is squarefree and the number of prime factors of n (with multiplicity) is even, otherwise 0.

The programs for A359156, the canonical program `A359156.P3267023376151009926` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359156 has offset 1).

The definition of A359156 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A353627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359156.P6764564297936269756

`A353627(n+1)-A359158(n+1)`
-/

namespace A359156.P6764564297936269756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) - A359158 (n + 1)

end

end A359156.P6764564297936269756

namespace A359156

/-- `A353627(n+1)-A359158(n+1)` -/
def P6764564297936269756.Spec : Prop :=
  ∀ n, P6764564297936269756.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P3267023376151009926

`A065043(n+1)*A353627(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359156

/-- `A065043(n+1)*A353627(n+1)` -/
def P3267023376151009926.Spec : Prop :=
  ∀ n, P3267023376151009926.a n = A359156 (n + 1)

theorem P3267023376151009926.correct : P3267023376151009926.Spec := by
  intro n
  simp only [A359156, Nat.add_sub_cancel]

end A359156

/-! ## A359156.P812508116774093841

`A359158(2*(n+1))`
-/

namespace A359156.P812508116774093841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359158 (2 * (n + 1))

end

end A359156.P812508116774093841

namespace A359156

/-- `A359158(2*(n+1))` -/
def P812508116774093841.Spec : Prop :=
  ∀ n, P812508116774093841.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P5024749022429742718

`ceil(A355689(n+1)/2)`
-/

namespace A359156.P5024749022429742718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A355689 (n + 1) : ℚ) / 2⌉

end

end A359156.P5024749022429742718

namespace A359156

/-- `ceil(A355689(n+1)/2)` -/
def P5024749022429742718.Spec : Prop :=
  ∀ n, P5024749022429742718.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P5114735778979275127

`char[A359157(n+1)-1]`
-/

namespace A359156.P5114735778979275127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359157 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359156.P5114735778979275127

namespace A359156

/-- `char[A359157(n+1)-1]` -/
def P5114735778979275127.Spec : Prop :=
  ∀ n, (P5114735778979275127.a n : ℤ) = A359156 (n + 1)

end A359156

/-! ## A359156.P1791898589493176269

`floor(1/(A355689(2*(n+1))+2))`
-/

namespace A359156.P1791898589493176269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A355689 (2 * (n + 1)) + 2 : ℚ)⌋

end

end A359156.P1791898589493176269

namespace A359156

/-- `floor(1/(A355689(2*(n+1))+2))` -/
def P1791898589493176269.Spec : Prop :=
  ∀ n, P1791898589493176269.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P6386943720717232175

`A252233(A065883(2*(n+1)))`
-/

namespace A359156.P6386943720717232175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252233 (A065883 (2 * (n + 1))).toNat

end

end A359156.P6386943720717232175

namespace A359156

/-- `A252233(A065883(2*(n+1)))` -/
def P6386943720717232175.Spec : Prop :=
  ∀ n, P6386943720717232175.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P10842834913650550566

`A359158(n+1)+A355689(n+1)`
-/

namespace A359156.P10842834913650550566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359158 (n + 1) + A355689 (n + 1)

end

end A359156.P10842834913650550566

namespace A359156

/-- `A359158(n+1)+A355689(n+1)` -/
def P10842834913650550566.Spec : Prop :=
  ∀ n, P10842834913650550566.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P16257531289624051414

`A065043(n+1)*A355689(n+1)`
-/

namespace A359156.P16257531289624051414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A355689 (n + 1)

end

end A359156.P16257531289624051414

namespace A359156

/-- `A065043(n+1)*A355689(n+1)` -/
def P16257531289624051414.Spec : Prop :=
  ∀ n, P16257531289624051414.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P13915434243929946405

`and(A065043(n+1), A101035(n+1))`
-/

namespace A359156.P13915434243929946405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065043 (n + 1)) (A101035 (n + 1))

end

end A359156.P13915434243929946405

namespace A359156

/-- `and(A065043(n+1), A101035(n+1))` -/
def P13915434243929946405.Spec : Prop :=
  ∀ n, P13915434243929946405.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P16950346629147307631

`(1-A066829(n+1))*A353627(n+1)`
-/

namespace A359156.P16950346629147307631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A066829 (n + 1)) * A353627 (n + 1)

end

end A359156.P16950346629147307631

namespace A359156

/-- `(1-A066829(n+1))*A353627(n+1)` -/
def P16950346629147307631.Spec : Prop :=
  ∀ n, P16950346629147307631.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P7103430726126016245

`(1-A066829(n+1))*A355689(n+1)`
-/

namespace A359156.P7103430726126016245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A066829 (n + 1)) * A355689 (n + 1)

end

end A359156.P7103430726126016245

namespace A359156

/-- `(1-A066829(n+1))*A355689(n+1)` -/
def P7103430726126016245.Spec : Prop :=
  ∀ n, P7103430726126016245.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P8648508718138236278

`A066829(2*(n+1))*A353627(n+1)`
-/

namespace A359156.P8648508718138236278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (2 * (n + 1)) * A353627 (n + 1)

end

end A359156.P8648508718138236278

namespace A359156

/-- `A066829(2*(n+1))*A353627(n+1)` -/
def P8648508718138236278.Spec : Prop :=
  ∀ n, P8648508718138236278.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P14897074177990319436

`A066829(2*(n+1))*A355689(n+1)`
-/

namespace A359156.P14897074177990319436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (2 * (n + 1)) * A355689 (n + 1)

end

end A359156.P14897074177990319436

namespace A359156

/-- `A066829(2*(n+1))*A355689(n+1)` -/
def P14897074177990319436.Spec : Prop :=
  ∀ n, P14897074177990319436.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P11404880011571902822

`and(A001222(n+1)+1, A353627(n+1))`
-/

namespace A359156.P11404880011571902822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (n + 1) + 1) (A353627 (n + 1))

end

end A359156.P11404880011571902822

namespace A359156

/-- `and(A001222(n+1)+1, A353627(n+1))` -/
def P11404880011571902822.Spec : Prop :=
  ∀ n, P11404880011571902822.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P63631727338620841

`and(1-A066829(n+1), A101035(n+1))`
-/

namespace A359156.P63631727338620841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A066829 (n + 1)) (A101035 (n + 1))

end

end A359156.P63631727338620841

namespace A359156

/-- `and(1-A066829(n+1), A101035(n+1))` -/
def P63631727338620841.Spec : Prop :=
  ∀ n, P63631727338620841.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P13643537788280426475

`∑{d}[n+1, A007875(#)*A355689((n+1)/#)]`
-/

namespace A359156.P13643537788280426475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359156.P13643537788280426475

namespace A359156

/-- `∑{d}[n+1, A007875(#)*A355689((n+1)/#)]` -/
def P13643537788280426475.Spec : Prop :=
  ∀ n, P13643537788280426475.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P5235925995679538558

`and(A038994(2*(n+1)), 1-A066829(n+1))`
-/

namespace A359156.P5235925995679538558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038994 (2 * (n + 1))) (1 - A066829 (n + 1))

end

end A359156.P5235925995679538558

namespace A359156

/-- `and(A038994(2*(n+1)), 1-A066829(n+1))` -/
def P5235925995679538558.Spec : Prop :=
  ∀ n, P5235925995679538558.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P15538847461864461516

`and(A038994(2*(n+1)), A066829(2*(n+1)))`
-/

namespace A359156.P15538847461864461516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038994 (2 * (n + 1))) (A066829 (2 * (n + 1)))

end

end A359156.P15538847461864461516

namespace A359156

/-- `and(A038994(2*(n+1)), A066829(2*(n+1)))` -/
def P15538847461864461516.Spec : Prop :=
  ∀ n, P15538847461864461516.a n = A359156 (n + 1)

end A359156

/-! ## A359156.P9636907517261079220

`and(A066829(2*(n+1)), A101035(2*(n+1)))`
-/

namespace A359156.P9636907517261079220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066829 (2 * (n + 1))) (A101035 (2 * (n + 1)))

end

end A359156.P9636907517261079220

namespace A359156

/-- `and(A066829(2*(n+1)), A101035(2*(n+1)))` -/
def P9636907517261079220.Spec : Prop :=
  ∀ n, P9636907517261079220.a n = A359156 (n + 1)

end A359156

/-!
# A359157: Numbers whose odd part is squarefree and the number of prime factors (with multiplicity) is even.

The programs for A359157, the canonical program `A359157.P6462962473637986217` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359157 has offset 1).

The definition of A359157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359157.P4665906257004905130

`eq[1, A355689(n+1)]+1`
-/

namespace A359157.P4665906257004905130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359157.P4665906257004905130

namespace A359157

/-- `eq[1, A355689(n+1)]+1` -/
def P4665906257004905130.Spec : Prop :=
  ∀ n, (P4665906257004905130.a n : ℤ) = A359157 (n + 1)

end A359157

/-! ## A359157.P12365193033734141192

`eq[1, A359156(n+1)]+1`
-/

namespace A359157.P12365193033734141192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359157.P12365193033734141192

namespace A359157

/-- `eq[1, A359156(n+1)]+1` -/
def P12365193033734141192.Spec : Prop :=
  ∀ n, (P12365193033734141192.a n : ℤ) = A359157 (n + 1)

end A359157

/-! ## A359157.P6462962473637986217

`filter[A028260(n+1), A353627(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359157

/-- `filter[A028260(n+1), A353627(#)]` -/
def P6462962473637986217.Spec : Prop :=
  ∀ n, P6462962473637986217.a n = A359157 (n + 1)

theorem P6462962473637986217.correct : P6462962473637986217.Spec := by
  intro n
  simp only [A359157, Nat.add_sub_cancel]

end A359157

/-! ## A359157.P10020135499276098527

`filter[A028260(n+1), A359156(#)]`
-/

namespace A359157.P10020135499276098527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P10020135499276098527

namespace A359157

/-- `filter[A028260(n+1), A359156(#)]` -/
def P10020135499276098527.Spec : Prop :=
  ∀ n, P10020135499276098527.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P17811585664286428057

`filter[A347450(n+1), A359156(#)]`
-/

namespace A359157.P17811585664286428057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P17811585664286428057

namespace A359157

/-- `filter[A347450(n+1), A359156(#)]` -/
def P17811585664286428057.Spec : Prop :=
  ∀ n, P17811585664286428057.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P9546732467254247455

`filter[A359825(n+1), A359156(#)]`
-/

namespace A359157.P9546732467254247455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P9546732467254247455

namespace A359157

/-- `filter[A359825(n+1), A359156(#)]` -/
def P9546732467254247455.Spec : Prop :=
  ∀ n, P9546732467254247455.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P11784355102557594371

`filter[A174891(n+1), A359156(#)]`
-/

namespace A359157.P11784355102557594371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P11784355102557594371

namespace A359157

/-- `filter[A174891(n+1), A359156(#)]` -/
def P11784355102557594371.Spec : Prop :=
  ∀ n, P11784355102557594371.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P1733555193785908177

`filter[A239289(n+1), A359156(#)]`
-/

namespace A359157.P1733555193785908177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P1733555193785908177

namespace A359157

/-- `filter[A239289(n+1), A359156(#)]` -/
def P1733555193785908177.Spec : Prop :=
  ∀ n, P1733555193785908177.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P103289207013707107

`filter[A233182(n+1), A359156(#)]`
-/

namespace A359157.P103289207013707107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P103289207013707107

namespace A359157

/-- `filter[A233182(n+1), A359156(#)]` -/
def P103289207013707107.Spec : Prop :=
  ∀ n, P103289207013707107.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P6130056355140813471

`filter[A122132(n+1), A065043(#)]`
-/

namespace A359157.P6130056355140813471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A359157.P6130056355140813471

namespace A359157

/-- `filter[A122132(n+1), A065043(#)]` -/
def P6130056355140813471.Spec : Prop :=
  ∀ n, P6130056355140813471.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P15322149669731293139

`filter[A122132(n+1), A359156(#)]`
-/

namespace A359157.P15322149669731293139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P15322149669731293139

namespace A359157

/-- `filter[A122132(n+1), A359156(#)]` -/
def P15322149669731293139.Spec : Prop :=
  ∀ n, P15322149669731293139.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P15511811366801265715

`∩[A028260(n+1), A122132(n+1)]`
-/

namespace A359157.P15511811366801265715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359157.P15511811366801265715

namespace A359157

/-- `∩[A028260(n+1), A122132(n+1)]` -/
def P15511811366801265715.Spec : Prop :=
  ∀ n, (P15511811366801265715.a n : ℤ) = A359157 (n + 1)

end A359157

/-! ## A359157.P3565869172987130640

`filter[A353511(n+1), A359156(#)]`
-/

namespace A359157.P3565869172987130640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P3565869172987130640

namespace A359157

/-- `filter[A353511(n+1), A359156(#)]` -/
def P3565869172987130640.Spec : Prop :=
  ∀ n, P3565869172987130640.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P3950872769356920296

`filter[A018252(n+1), A359156(#)]`
-/

namespace A359157.P3950872769356920296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P3950872769356920296

namespace A359157

/-- `filter[A018252(n+1), A359156(#)]` -/
def P3950872769356920296.Spec : Prop :=
  ∀ n, P3950872769356920296.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P14763014135177947488

`filter[A065090(n+1), A359156(#)]`
-/

namespace A359157.P14763014135177947488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P14763014135177947488

namespace A359157

/-- `filter[A065090(n+1), A359156(#)]` -/
def P14763014135177947488.Spec : Prop :=
  ∀ n, P14763014135177947488.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P4671472309104833168

`filter[A171581(n+1), A359156(#)]`
-/

namespace A359157.P4671472309104833168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P4671472309104833168

namespace A359157

/-- `filter[A171581(n+1), A359156(#)]` -/
def P4671472309104833168.Spec : Prop :=
  ∀ n, P4671472309104833168.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P5900090235001944426

`filter[A141468(n+2), A359156(#)]`
-/

namespace A359157.P5900090235001944426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P5900090235001944426

namespace A359157

/-- `filter[A141468(n+2), A359156(#)]` -/
def P5900090235001944426.Spec : Prop :=
  ∀ n, P5900090235001944426.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P10499610622264798659

`filter[A222307(2*n+1), A359156(#)]`
-/

namespace A359157.P10499610622264798659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P10499610622264798659

namespace A359157

/-- `filter[A222307(2*n+1), A359156(#)]` -/
def P10499610622264798659.Spec : Prop :=
  ∀ n, P10499610622264798659.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P6879581563095914967

`filter[A173905(n+2), A359156(#)]`
-/

namespace A359157.P6879581563095914967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P6879581563095914967

namespace A359157

/-- `filter[A173905(n+2), A359156(#)]` -/
def P6879581563095914967.Spec : Prop :=
  ∀ n, P6879581563095914967.a n = A359157 (n + 1)

end A359157

/-! ## A359157.P14301024531677048223

`filter[A338924(n+1), A359156(#)]`
-/

namespace A359157.P14301024531677048223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A359157.P14301024531677048223

namespace A359157

/-- `filter[A338924(n+1), A359156(#)]` -/
def P14301024531677048223.Spec : Prop :=
  ∀ n, P14301024531677048223.a n = A359157 (n + 1)

end A359157

/-!
# A359158: a(n) = 1 if the odd part of n is squarefree and the number of prime factors of n (with multiplicity) is odd, otherwise 0.

The programs for A359158, the canonical program `A359158.P14804396004552753222` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359158 has offset 1).

The definition of A359158 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353627, A359156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359158.P14804396004552753222

`A353627(n+1)-A359156(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A359158

/-- `A353627(n+1)-A359156(n+1)` -/
def P14804396004552753222.Spec : Prop :=
  ∀ n, P14804396004552753222.a n = A359158 (n + 1)

theorem P14804396004552753222.correct : P14804396004552753222.Spec := by
  intro n
  simp only [A359158, Nat.add_sub_cancel]

end A359158

/-! ## A359158.P14238479786351601606

`A066829(n+1)*A353627(n+1)`
-/

namespace A359158.P14238479786351601606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * A353627 (n + 1)

end

end A359158.P14238479786351601606

namespace A359158

/-- `A066829(n+1)*A353627(n+1)` -/
def P14238479786351601606.Spec : Prop :=
  ∀ n, P14238479786351601606.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P14526704980448155778

`A359156(2*(n+1))`
-/

namespace A359158.P14526704980448155778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (2 * (n + 1))

end

end A359158.P14526704980448155778

namespace A359158

/-- `A359156(2*(n+1))` -/
def P14526704980448155778.Spec : Prop :=
  ∀ n, P14526704980448155778.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P17541372307304655087

`char[A359159(n+1)-1]`
-/

namespace A359158.P17541372307304655087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359159 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359158.P17541372307304655087

namespace A359158

/-- `char[A359159(n+1)-1]` -/
def P17541372307304655087.Spec : Prop :=
  ∀ n, (P17541372307304655087.a n : ℤ) = A359158 (n + 1)

end A359158

/-! ## A359158.P11745487640842761072

`char[eq[-1, A355689(n+1)]]`
-/

namespace A359158.P11745487640842761072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359158.P11745487640842761072

namespace A359158

/-- `char[eq[-1, A355689(n+1)]]` -/
def P11745487640842761072.Spec : Prop :=
  ∀ n, (P11745487640842761072.a n : ℤ) = A359158 (n + 1)

end A359158

/-! ## A359158.P5005754636894198214

`ceil(A355689(2*(n+1))/2)`
-/

namespace A359158.P5005754636894198214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A355689 (2 * (n + 1)) : ℚ) / 2⌉

end

end A359158.P5005754636894198214

namespace A359158

/-- `ceil(A355689(2*(n+1))/2)` -/
def P5005754636894198214.Spec : Prop :=
  ∀ n, P5005754636894198214.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P15055156536328546374

`A252233(A065883(n+1))`
-/

namespace A359158.P15055156536328546374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252233 (A065883 (n + 1)).toNat

end

end A359158.P15055156536328546374

namespace A359158

/-- `A252233(A065883(n+1))` -/
def P15055156536328546374.Spec : Prop :=
  ∀ n, P15055156536328546374.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P3398555784400651159

`A359156(n+1)-A355689(n+1)`
-/

namespace A359158.P3398555784400651159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (n + 1) - A355689 (n + 1)

end

end A359158.P3398555784400651159

namespace A359158

/-- `A359156(n+1)-A355689(n+1)` -/
def P3398555784400651159.Spec : Prop :=
  ∀ n, P3398555784400651159.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P5015164462025971050

`and(A038994(n+1), A066829(n+1))`
-/

namespace A359158.P5015164462025971050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038994 (n + 1)) (A066829 (n + 1))

end

end A359158.P5015164462025971050

namespace A359158

/-- `and(A038994(n+1), A066829(n+1))` -/
def P5015164462025971050.Spec : Prop :=
  ∀ n, P5015164462025971050.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P16899813150097727641

`and(A066829(n+1), A101035(n+1))`
-/

namespace A359158.P16899813150097727641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066829 (n + 1)) (A101035 (n + 1))

end

end A359158.P16899813150097727641

namespace A359158

/-- `and(A066829(n+1), A101035(n+1))` -/
def P16899813150097727641.Spec : Prop :=
  ∀ n, P16899813150097727641.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P9997344172395677535

`and(A001222(n+1), A353627(n+1))`
-/

namespace A359158.P9997344172395677535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (n + 1)) (A353627 (n + 1))

end

end A359158.P9997344172395677535

namespace A359158

/-- `and(A001222(n+1), A353627(n+1))` -/
def P9997344172395677535.Spec : Prop :=
  ∀ n, P9997344172395677535.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P10631781528626031919

`(A066829(n+1)*A355689(n+1))²`
-/

namespace A359158.P10631781528626031919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066829 (n + 1) * A355689 (n + 1)) ^ 2

end

end A359158.P10631781528626031919

namespace A359158

/-- `(A066829(n+1)*A355689(n+1))²` -/
def P10631781528626031919.Spec : Prop :=
  ∀ n, P10631781528626031919.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P7107451183635086813

`(1-A065043(n+1))*A353627(n+1)`
-/

namespace A359158.P7107451183635086813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A065043 (n + 1)) * A353627 (n + 1)

end

end A359158.P7107451183635086813

namespace A359158

/-- `(1-A065043(n+1))*A353627(n+1)` -/
def P7107451183635086813.Spec : Prop :=
  ∀ n, P7107451183635086813.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P10298709584785324212

`(A065043(n+1)-1)*A355689(n+1)`
-/

namespace A359158.P10298709584785324212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065043 (n + 1) - 1) * A355689 (n + 1)

end

end A359158.P10298709584785324212

namespace A359158

/-- `(A065043(n+1)-1)*A355689(n+1)` -/
def P10298709584785324212.Spec : Prop :=
  ∀ n, P10298709584785324212.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P8789173670324207127

`A065043(2*(n+1))*A353627(n+1)`
-/

namespace A359158.P8789173670324207127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (2 * (n + 1)) * A353627 (n + 1)

end

end A359158.P8789173670324207127

namespace A359158

/-- `A065043(2*(n+1))*A353627(n+1)` -/
def P8789173670324207127.Spec : Prop :=
  ∀ n, P8789173670324207127.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P17120648529660609445

`A066829(n+1)*A355689(2*(n+1))`
-/

namespace A359158.P17120648529660609445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * A355689 (2 * (n + 1))

end

end A359158.P17120648529660609445

namespace A359158

/-- `A066829(n+1)*A355689(2*(n+1))` -/
def P17120648529660609445.Spec : Prop :=
  ∀ n, P17120648529660609445.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P11030910911199869933

`and(1-A065043(n+1), A101035(n+1))`
-/

namespace A359158.P11030910911199869933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A065043 (n + 1)) (A101035 (n + 1))

end

end A359158.P11030910911199869933

namespace A359158

/-- `and(1-A065043(n+1), A101035(n+1))` -/
def P11030910911199869933.Spec : Prop :=
  ∀ n, P11030910911199869933.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P7423460388649869059

`and(A348049(n+1)²²², A001222(n+1))`
-/

namespace A359158.P7423460388649869059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((A348049 (n + 1) ^ 2) ^ 2) ^ 2) (A001222 (n + 1))

end

end A359158.P7423460388649869059

namespace A359158

/-- `and(A348049(n+1)²²², A001222(n+1))` -/
def P7423460388649869059.Spec : Prop :=
  ∀ n, P7423460388649869059.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P5966965101002269325

`A065043(2*(n+1))*A355689(2*(n+1))`
-/

namespace A359158.P5966965101002269325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (2 * (n + 1)) * A355689 (2 * (n + 1))

end

end A359158.P5966965101002269325

namespace A359158

/-- `A065043(2*(n+1))*A355689(2*(n+1))` -/
def P5966965101002269325.Spec : Prop :=
  ∀ n, P5966965101002269325.a n = A359158 (n + 1)

end A359158

/-! ## A359158.P4419219020276097050

`and(A065043(2*(n+1)), A101035(2*(n+1)))`
-/

namespace A359158.P4419219020276097050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065043 (2 * (n + 1))) (A101035 (2 * (n + 1)))

end

end A359158.P4419219020276097050

namespace A359158

/-- `and(A065043(2*(n+1)), A101035(2*(n+1)))` -/
def P4419219020276097050.Spec : Prop :=
  ∀ n, P4419219020276097050.a n = A359158 (n + 1)

end A359158

/-!
# A359159: Numbers whose odd part is squarefree and the number of prime factors (with multiplicity) is odd.

The programs for A359159, the canonical program `A359159.P5613364767986315554` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359159 has offset 1).

The definition of A359159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359159.P8472537227580464858

`lt[0, A359158(n+1)]+1`
-/

namespace A359159.P8472537227580464858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359159.P8472537227580464858

namespace A359159

/-- `lt[0, A359158(n+1)]+1` -/
def P8472537227580464858.Spec : Prop :=
  ∀ n, (P8472537227580464858.a n : ℤ) = A359159 (n + 1)

end A359159

/-! ## A359159.P5347781348716473624

`eq[1, A359158(n+2)]+2`
-/

namespace A359159.P5347781348716473624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359158 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A359159.P5347781348716473624

namespace A359159

/-- `eq[1, A359158(n+2)]+2` -/
def P5347781348716473624.Spec : Prop :=
  ∀ n, (P5347781348716473624.a n : ℤ) = A359159 (n + 1)

end A359159

/-! ## A359159.P5721641595398198150

`eq[-1, A355689(n+1)]+1`
-/

namespace A359159.P5721641595398198150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359159.P5721641595398198150

namespace A359159

/-- `eq[-1, A355689(n+1)]+1` -/
def P5721641595398198150.Spec : Prop :=
  ∀ n, (P5721641595398198150.a n : ℤ) = A359159 (n + 1)

end A359159

/-! ## A359159.P3527755838246403871

`lt[0, A359156(2*(n+2))]+2`
-/

namespace A359159.P3527755838246403871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A359159.P3527755838246403871

namespace A359159

/-- `lt[0, A359156(2*(n+2))]+2` -/
def P3527755838246403871.Spec : Prop :=
  ∀ n, (P3527755838246403871.a n : ℤ) = A359159 (n + 1)

end A359159

/-! ## A359159.P3506413944032972275

`lt[1, A359156(abs(1-n)+n+1)+1]`
-/

namespace A359159.P3506413944032972275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (|1 - (n : ℤ)| + (n : ℤ) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359159.P3506413944032972275

namespace A359159

/-- `lt[1, A359156(abs(1-n)+n+1)+1]` -/
def P3506413944032972275.Spec : Prop :=
  ∀ n, (P3506413944032972275.a n : ℤ) = A359159 (n + 1)

end A359159

/-! ## A359159.P5613364767986315554

`filter[A026424(n+1), A353627(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A359159

/-- `filter[A026424(n+1), A353627(#)]` -/
def P5613364767986315554.Spec : Prop :=
  ∀ n, P5613364767986315554.a n = A359159 (n + 1)

theorem P5613364767986315554.correct : P5613364767986315554.Spec := by
  intro n
  simp only [A359159, Nat.add_sub_cancel]

end A359159

/-! ## A359159.P1755276145381615651

`filter[A026424(n+1), A359158(#)]`
-/

namespace A359159.P1755276145381615651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P1755276145381615651

namespace A359159

/-- `filter[A026424(n+1), A359158(#)]` -/
def P1755276145381615651.Spec : Prop :=
  ∀ n, P1755276145381615651.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P5701629703924461402

`filter[A026422(n+1), A359158(#)]`
-/

namespace A359159.P5701629703924461402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P5701629703924461402

namespace A359159

/-- `filter[A026422(n+1), A359158(#)]` -/
def P5701629703924461402.Spec : Prop :=
  ∀ n, P5701629703924461402.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P11627369036815125408

`filter[A026422(n+2), A353627(#)]`
-/

namespace A359159.P11627369036815125408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A359159.P11627369036815125408

namespace A359159

/-- `filter[A026422(n+2), A353627(#)]` -/
def P11627369036815125408.Spec : Prop :=
  ∀ n, P11627369036815125408.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P5156249404377633087

`filter[A344609(n+1), A359158(#)]`
-/

namespace A359159.P5156249404377633087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P5156249404377633087

namespace A359159

/-- `filter[A344609(n+1), A359158(#)]` -/
def P5156249404377633087.Spec : Prop :=
  ∀ n, P5156249404377633087.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P4406425258420565211

`filter[A359766(n+1), A359158(#)]`
-/

namespace A359159.P4406425258420565211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P4406425258420565211

namespace A359159

/-- `filter[A359766(n+1), A359158(#)]` -/
def P4406425258420565211.Spec : Prop :=
  ∀ n, P4406425258420565211.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P15980199303181534811

`filter[A371782(n+1), A359158(#)]`
-/

namespace A359159.P15980199303181534811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P15980199303181534811

namespace A359159

/-- `filter[A371782(n+1), A359158(#)]` -/
def P15980199303181534811.Spec : Prop :=
  ∀ n, P15980199303181534811.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P12301698889374831080

`filter[A374473(n+1), A359158(#)]`
-/

namespace A359159.P12301698889374831080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P12301698889374831080

namespace A359159

/-- `filter[A374473(n+1), A359158(#)]` -/
def P12301698889374831080.Spec : Prop :=
  ∀ n, P12301698889374831080.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P1498825801785671119

`filter[A100959(n+1), A359158(#)]`
-/

namespace A359159.P1498825801785671119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P1498825801785671119

namespace A359159

/-- `filter[A100959(n+1), A359158(#)]` -/
def P1498825801785671119.Spec : Prop :=
  ∀ n, P1498825801785671119.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P9459670904399299931

`filter[A246716(n+1), A359158(#)]`
-/

namespace A359159.P9459670904399299931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P9459670904399299931

namespace A359159

/-- `filter[A246716(n+1), A359158(#)]` -/
def P9459670904399299931.Spec : Prop :=
  ∀ n, P9459670904399299931.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P2100796707275587811

`filter[A122132(n+1), A066829(#)]`
-/

namespace A359159.P2100796707275587811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359159.P2100796707275587811

namespace A359159

/-- `filter[A122132(n+1), A066829(#)]` -/
def P2100796707275587811.Spec : Prop :=
  ∀ n, P2100796707275587811.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P15881626056303799891

`filter[A122132(n+1), A359158(#)]`
-/

namespace A359159.P15881626056303799891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P15881626056303799891

namespace A359159

/-- `filter[A122132(n+1), A359158(#)]` -/
def P15881626056303799891.Spec : Prop :=
  ∀ n, P15881626056303799891.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P7467788371248559676

`∩[A026424(n+1), A122132(n+1)]`
-/

namespace A359159.P7467788371248559676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359159.P7467788371248559676

namespace A359159

/-- `∩[A026424(n+1), A122132(n+1)]` -/
def P7467788371248559676.Spec : Prop :=
  ∀ n, (P7467788371248559676.a n : ℤ) = A359159 (n + 1)

end A359159

/-! ## A359159.P9757583241190929597

`filter[A353511(n+1), A359158(#)]`
-/

namespace A359159.P9757583241190929597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P9757583241190929597

namespace A359159

/-- `filter[A353511(n+1), A359158(#)]` -/
def P9757583241190929597.Spec : Prop :=
  ∀ n, P9757583241190929597.a n = A359159 (n + 1)

end A359159

/-! ## A359159.P13054126891117199477

`filter[A168183(n+1), A359158(#)]`
-/

namespace A359159.P13054126891117199477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A359159.P13054126891117199477

namespace A359159

/-- `filter[A168183(n+1), A359158(#)]` -/
def P13054126891117199477.Spec : Prop :=
  ∀ n, P13054126891117199477.a n = A359159 (n + 1)

end A359159

/-!
# A359160: a(n) = 1 if n is a number of the form 4u+1 with an even number of prime factors (counted with multiplicity), otherwise 0.

The programs for A359160, the canonical program `A359160.P3373714347686738838` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359160 has offset 1).

The definition of A359160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359160.P8993419021793990854

`A121262(n)-A359150(n+1)`
-/

namespace A359160.P8993419021793990854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n - A359150 (n + 1)

end

end A359160.P8993419021793990854

namespace A359160

/-- `A121262(n)-A359150(n+1)` -/
def P8993419021793990854.Spec : Prop :=
  ∀ n, P8993419021793990854.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P3373714347686738838

`A065043(n+1)*A121262(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359160

/-- `A065043(n+1)*A121262(n)` -/
def P3373714347686738838.Spec : Prop :=
  ∀ n, P3373714347686738838.a n = A359160 (n + 1)

theorem P3373714347686738838.correct : P3373714347686738838.Spec := by
  intro n
  simp only [A359160, Nat.add_sub_cancel]

end A359160

/-! ## A359160.P1855693352800928675

`A353557(n+1)-A359162(n+1)`
-/

namespace A359160.P1855693352800928675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A359162 (n + 1)

end

end A359160.P1855693352800928675

namespace A359160

/-- `A353557(n+1)-A359162(n+1)` -/
def P1855693352800928675.Spec : Prop :=
  ∀ n, P1855693352800928675.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P445405436563868040

`A359152(3*(n+1))`
-/

namespace A359160.P445405436563868040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359152 (3 * (n + 1))

end

end A359160.P445405436563868040

namespace A359160

/-- `A359152(3*(n+1))` -/
def P445405436563868040.Spec : Prop :=
  ∀ n, P445405436563868040.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P2533191682123325419

`A359150(5*(n+1))`
-/

namespace A359160.P2533191682123325419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359150 (5 * (n + 1))

end

end A359160.P2533191682123325419

namespace A359160

/-- `A359150(5*(n+1))` -/
def P2533191682123325419.Spec : Prop :=
  ∀ n, P2533191682123325419.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P800958635348971532

`and(∑[n]+1, A359820(n+1))`
-/

namespace A359160.P800958635348971532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A359820 (n + 1))

end

end A359160.P800958635348971532

namespace A359160

/-- `and(∑[n]+1, A359820(n+1))` -/
def P800958635348971532.Spec : Prop :=
  ∀ n, P800958635348971532.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P8974344770273136037

`and(∑[1-n], A359372(2*(n+1)))`
-/

namespace A359160.P8974344770273136037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A359372 (2 * (n + 1)))

end

end A359160.P8974344770273136037

namespace A359160

/-- `and(∑[1-n], A359372(2*(n+1)))` -/
def P8974344770273136037.Spec : Prop :=
  ∀ n, P8974344770273136037.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P4312924909267900139

`and(char[4*n], A001222(n+1)+1)`
-/

namespace A359160.P4312924909267900139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001222 (n + 1) + 1)

end

end A359160.P4312924909267900139

namespace A359160

/-- `and(char[4*n], A001222(n+1)+1)` -/
def P4312924909267900139.Spec : Prop :=
  ∀ n, P4312924909267900139.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P2784089779698073034

`(A001414(n+1)+1)%(char[4*n]+1)`
-/

namespace A359160.P2784089779698073034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (n + 1) + 1) (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A359160.P2784089779698073034

namespace A359160

/-- `(A001414(n+1)+1)%(char[4*n]+1)` -/
def P2784089779698073034.Spec : Prop :=
  ∀ n, P2784089779698073034.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P13411345314943465272

`A353557(A127932(n))`
-/

namespace A359160.P13411345314943465272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (A127932 n).toNat

end

end A359160.P13411345314943465272

namespace A359160

/-- `A353557(A127932(n))` -/
def P13411345314943465272.Spec : Prop :=
  ∀ n, P13411345314943465272.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P2285111510389565536

`A353557(A396674(n))`
-/

namespace A359160.P2285111510389565536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (A396674 n).toNat

end

end A359160.P2285111510389565536

namespace A359160

/-- `A353557(A396674(n))` -/
def P2285111510389565536.Spec : Prop :=
  ∀ n, P2285111510389565536.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P18329715924819843642

`A353557(A358680(n)+n)`
-/

namespace A359160.P18329715924819843642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (A358680 n + (n : ℤ)).toNat

end

end A359160.P18329715924819843642

namespace A359160

/-- `A353557(A358680(n)+n)` -/
def P18329715924819843642.Spec : Prop :=
  ∀ n, P18329715924819843642.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P10496043107436192615

`A121262(A165560(n+1)+n)`
-/

namespace A359160.P10496043107436192615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A165560 (n + 1) + (n : ℤ)).toNat

end

end A359160.P10496043107436192615

namespace A359160

/-- `A121262(A165560(n+1)+n)` -/
def P10496043107436192615.Spec : Prop :=
  ∀ n, P10496043107436192615.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P4166662681244340120

`A121262(A353558(n+1)+n)`
-/

namespace A359160.P4166662681244340120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A353558 (n + 1) + (n : ℤ)).toNat

end

end A359160.P4166662681244340120

namespace A359160

/-- `A121262(A353558(n+1)+n)` -/
def P4166662681244340120.Spec : Prop :=
  ∀ n, P4166662681244340120.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P18333884294289950999

`A121262(A354035(n+1)+n)`
-/

namespace A359160.P18333884294289950999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A354035 (n + 1) + (n : ℤ)).toNat

end

end A359160.P18333884294289950999

namespace A359160

/-- `A121262(A354035(n+1)+n)` -/
def P18333884294289950999.Spec : Prop :=
  ∀ n, P18333884294289950999.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P14157492297603023307

`A121262(A359150(n+1)+n)`
-/

namespace A359160.P14157492297603023307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A359150 (n + 1) + (n : ℤ)).toNat

end

end A359160.P14157492297603023307

namespace A359160

/-- `A121262(A359150(n+1)+n)` -/
def P14157492297603023307.Spec : Prop :=
  ∀ n, P14157492297603023307.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P486176445518134509

`A353557(1-A165560(n)+n)`
-/

namespace A359160.P486176445518134509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (1 - A165560 n + (n : ℤ)).toNat

end

end A359160.P486176445518134509

namespace A359160

/-- `A353557(1-A165560(n)+n)` -/
def P486176445518134509.Spec : Prop :=
  ∀ n, P486176445518134509.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P16620178963139630053

`A014577(n)*A353557(n+1)`
-/

namespace A359160.P16620178963139630053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A353557 (n + 1)

end

end A359160.P16620178963139630053

namespace A359160

/-- `A014577(n)*A353557(n+1)` -/
def P16620178963139630053.Spec : Prop :=
  ∀ n, P16620178963139630053.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P12310675325989047586

`A014577(n)*A354036(n+1)`
-/

namespace A359160.P12310675325989047586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A354036 (n + 1)

end

end A359160.P12310675325989047586

namespace A359160

/-- `A014577(n)*A354036(n+1)` -/
def P12310675325989047586.Spec : Prop :=
  ∀ n, P12310675325989047586.a n = A359160 (n + 1)

end A359160

/-! ## A359160.P17570370788639258656

`A121262(n)*A353557(n+1)`
-/

namespace A359160.P17570370788639258656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n * A353557 (n + 1)

end

end A359160.P17570370788639258656

namespace A359160

/-- `A121262(n)*A353557(n+1)` -/
def P17570370788639258656.Spec : Prop :=
  ∀ n, P17570370788639258656.a n = A359160 (n + 1)

end A359160

/-!
# A359161: Numbers of the form 4u+1 with an even number of prime factors (counted with multiplicity).

The programs for A359161, the canonical program `A359161.P8726554361443463211` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359161 has offset 1).

The definition of A359161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359161.P11616103241392643105

`filter[A091113(n+1), A065043(#)]`
-/

namespace A359161.P11616103241392643105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A359161.P11616103241392643105

namespace A359161

/-- `filter[A091113(n+1), A065043(#)]` -/
def P11616103241392643105.Spec : Prop :=
  ∀ n, P11616103241392643105.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P8705790296667952427

`filter[A091113(n+1), A353374(#)]`
-/

namespace A359161.P8705790296667952427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A359161.P8705790296667952427

namespace A359161

/-- `filter[A091113(n+1), A353374(#)]` -/
def P8705790296667952427.Spec : Prop :=
  ∀ n, P8705790296667952427.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P8726554361443463211

`filter[A091113(n+1), A353557(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A359161

/-- `filter[A091113(n+1), A353557(#)]` -/
def P8726554361443463211.Spec : Prop :=
  ∀ n, P8726554361443463211.a n = A359161 (n + 1)

theorem P8726554361443463211.correct : P8726554361443463211.Spec := by
  intro n
  simp only [A359161, Nat.add_sub_cancel]

end A359161

/-! ## A359161.P17927214354353994784

`filter[A091113(n+1), A354036(#)]`
-/

namespace A359161.P17927214354353994784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A359161.P17927214354353994784

namespace A359161

/-- `filter[A091113(n+1), A354036(#)]` -/
def P17927214354353994784.Spec : Prop :=
  ∀ n, P17927214354353994784.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P8568310070605860974

`filter[A091113(n+1), A356163(#)]`
-/

namespace A359161.P8568310070605860974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A359161.P8568310070605860974

namespace A359161

/-- `filter[A091113(n+1), A356163(#)]` -/
def P8568310070605860974.Spec : Prop :=
  ∀ n, P8568310070605860974.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P953067604014899961

`filter[A091113(n+1), A358680(#)]`
-/

namespace A359161.P953067604014899961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A359161.P953067604014899961

namespace A359161

/-- `filter[A091113(n+1), A358680(#)]` -/
def P953067604014899961.Spec : Prop :=
  ∀ n, P953067604014899961.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P16509921796789812477

`filter[A091113(n+1), A359160(#)]`
-/

namespace A359161.P16509921796789812477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359160 (f1 j).toNat = 1) n)

end

end A359161.P16509921796789812477

namespace A359161

/-- `filter[A091113(n+1), A359160(#)]` -/
def P16509921796789812477.Spec : Prop :=
  ∀ n, P16509921796789812477.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P14234840713845588439

`filter[A091113(n+1), A359370(#)]`
-/

namespace A359161.P14234840713845588439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A359161.P14234840713845588439

namespace A359161

/-- `filter[A091113(n+1), A359370(#)]` -/
def P14234840713845588439.Spec : Prop :=
  ∀ n, P14234840713845588439.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P1066238651264410656

`filter[A091113(n+1), A359770(#)]`
-/

namespace A359161.P1066238651264410656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359161.P1066238651264410656

namespace A359161

/-- `filter[A091113(n+1), A359770(#)]` -/
def P1066238651264410656.Spec : Prop :=
  ∀ n, P1066238651264410656.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P610065065859011017

`filter[A091113(n+1), A359820(#)]`
-/

namespace A359161.P610065065859011017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A359161.P610065065859011017

namespace A359161

/-- `filter[A091113(n+1), A359820(#)]` -/
def P610065065859011017.Spec : Prop :=
  ∀ n, P610065065859011017.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P1080085597486764218

`filter[A091113(n+1), A368997(#)]`
-/

namespace A359161.P1080085597486764218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A359161.P1080085597486764218

namespace A359161

/-- `filter[A091113(n+1), A368997(#)]` -/
def P1080085597486764218.Spec : Prop :=
  ∀ n, P1080085597486764218.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P13379636984684363057

`filter[A091113(n+1), A369001(#)]`
-/

namespace A359161.P13379636984684363057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A359161.P13379636984684363057

namespace A359161

/-- `filter[A091113(n+1), A369001(#)]` -/
def P13379636984684363057.Spec : Prop :=
  ∀ n, P13379636984684363057.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P18388334973276532979

`filter[A091113(n+1), A370124(#)]`
-/

namespace A359161.P18388334973276532979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A359161.P18388334973276532979

namespace A359161

/-- `filter[A091113(n+1), A370124(#)]` -/
def P18388334973276532979.Spec : Prop :=
  ∀ n, P18388334973276532979.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P13224531261822943540

`filter[A091113(n+1), A373374(#)]`
-/

namespace A359161.P13224531261822943540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A359161.P13224531261822943540

namespace A359161

/-- `filter[A091113(n+1), A373374(#)]` -/
def P13224531261822943540.Spec : Prop :=
  ∀ n, P13224531261822943540.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P6381811913154943426

`eq[1, A359160(n+1)]+1`
-/

namespace A359161.P6381811913154943426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359161.P6381811913154943426

namespace A359161

/-- `eq[1, A359160(n+1)]+1` -/
def P6381811913154943426.Spec : Prop :=
  ∀ n, (P6381811913154943426.a n : ℤ) = A359161 (n + 1)

end A359161

/-! ## A359161.P1534775226888787958

`eq[A010873(n), A358680(n)]`
-/

namespace A359161.P1534775226888787958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359161.P1534775226888787958

namespace A359161

/-- `eq[A010873(n), A358680(n)]` -/
def P1534775226888787958.Spec : Prop :=
  ∀ n, (P1534775226888787958.a n : ℤ) = A359161 (n + 1)

end A359161

/-! ## A359161.P7890930609314439377

`filter[A046337(n+1), A354036(#)]`
-/

namespace A359161.P7890930609314439377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A359161.P7890930609314439377

namespace A359161

/-- `filter[A046337(n+1), A354036(#)]` -/
def P7890930609314439377.Spec : Prop :=
  ∀ n, P7890930609314439377.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P6033244060075185025

`filter[A046337(n+1), A359160(#)]`
-/

namespace A359161.P6033244060075185025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359160 (f1 j).toNat = 1) n)

end

end A359161.P6033244060075185025

namespace A359161

/-- `filter[A046337(n+1), A359160(#)]` -/
def P6033244060075185025.Spec : Prop :=
  ∀ n, P6033244060075185025.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P10433535822158136169

`filter[A046337(n+1), A373978(#)]`
-/

namespace A359161.P10433535822158136169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A359161.P10433535822158136169

namespace A359161

/-- `filter[A046337(n+1), A373978(#)]` -/
def P10433535822158136169.Spec : Prop :=
  ∀ n, P10433535822158136169.a n = A359161 (n + 1)

end A359161

/-! ## A359161.P8102038589878739775

`filter[A016813(n), A065043(#)]`
-/

namespace A359161.P8102038589878739775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A359161.P8102038589878739775

namespace A359161

/-- `filter[A016813(n), A065043(#)]` -/
def P8102038589878739775.Spec : Prop :=
  ∀ n, P8102038589878739775.a n = A359161 (n + 1)

end A359161

/-!
# A359162: a(n) = 1 if n is a number of the form 4u+3 with an even number of prime factors (counted with multiplicity), otherwise 0.

The programs for A359162, the canonical program `A359162.P13529402606392842985` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359162 has offset 1).

The definition of A359162 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, A359160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359162.P13529402606392842985

`A353557(n+1)-A359160(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359162

/-- `A353557(n+1)-A359160(n+1)` -/
def P13529402606392842985.Spec : Prop :=
  ∀ n, P13529402606392842985.a n = A359162 (n + 1)

theorem P13529402606392842985.correct : P13529402606392842985.Spec := by
  intro n
  simp only [A359162, Nat.add_sub_cancel]

end A359162

/-! ## A359162.P2306014454866626236

`A359150(3*(n+1))`
-/

namespace A359162.P2306014454866626236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359150 (3 * (n + 1))

end

end A359162.P2306014454866626236

namespace A359162

/-- `A359150(3*(n+1))` -/
def P2306014454866626236.Spec : Prop :=
  ∀ n, P2306014454866626236.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P11134382650319207582

`A359152(5*(n+1))`
-/

namespace A359162.P11134382650319207582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359152 (5 * (n + 1))

end

end A359162.P11134382650319207582

namespace A359162

/-- `A359152(5*(n+1))` -/
def P11134382650319207582.Spec : Prop :=
  ∀ n, P11134382650319207582.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P16144793269652696295

`A369667(6*(n+1))`
-/

namespace A359162.P16144793269652696295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 (6 * (n + 1))

end

end A359162.P16144793269652696295

namespace A359162

/-- `A369667(6*(n+1))` -/
def P16144793269652696295.Spec : Prop :=
  ∀ n, P16144793269652696295.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P3018913168764712294

`and(∑[n], A353374(n+1))`
-/

namespace A359162.P3018913168764712294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A353374 (n + 1))

end

end A359162.P3018913168764712294

namespace A359162

/-- `and(∑[n], A353374(n+1))` -/
def P3018913168764712294.Spec : Prop :=
  ∀ n, P3018913168764712294.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P17524652345109111040

`and(∑[n], A353557(n+1))`
-/

namespace A359162.P17524652345109111040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A353557 (n + 1))

end

end A359162.P17524652345109111040

namespace A359162

/-- `and(∑[n], A353557(n+1))` -/
def P17524652345109111040.Spec : Prop :=
  ∀ n, P17524652345109111040.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P15455332148752686184

`and(∑[n], A359372(2*(n+1)))`
-/

namespace A359162.P15455332148752686184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A359372 (2 * (n + 1)))

end

end A359162.P15455332148752686184

namespace A359162

/-- `and(∑[n], A359372(2*(n+1)))` -/
def P15455332148752686184.Spec : Prop :=
  ∀ n, P15455332148752686184.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P9374547304197245305

`and(∑[n], A353558(3*(n+1)))`
-/

namespace A359162.P9374547304197245305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A353558 (3 * (n + 1)))

end

end A359162.P9374547304197245305

namespace A359162

/-- `and(∑[n], A353558(3*(n+1)))` -/
def P9374547304197245305.Spec : Prop :=
  ∀ n, P9374547304197245305.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P18299898076229928362

`and(floor((n/2)²), A065043(n+1))`
-/

namespace A359162.P18299898076229928362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊((n : ℚ) / 2) ^ 2⌋ (A065043 (n + 1))

end

end A359162.P18299898076229928362

namespace A359162

/-- `and(floor((n/2)²), A065043(n+1))` -/
def P18299898076229928362.Spec : Prop :=
  ∀ n, P18299898076229928362.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P4285268632395866759

`A353557(A121262(n)+1+n)`
-/

namespace A359162.P4285268632395866759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (A121262 n + 1 + (n : ℤ)).toNat

end

end A359162.P4285268632395866759

namespace A359162

/-- `A353557(A121262(n)+1+n)` -/
def P4285268632395866759.Spec : Prop :=
  ∀ n, P4285268632395866759.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P15268642778535958213

`A354035(A121262(n)+1+n)`
-/

namespace A359162.P15268642778535958213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354035 (A121262 n + 1 + (n : ℤ)).toNat

end

end A359162.P15268642778535958213

namespace A359162

/-- `A354035(A121262(n)+1+n)` -/
def P15268642778535958213.Spec : Prop :=
  ∀ n, P15268642778535958213.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P9959616565325609066

`A014707(n)*A353557(n+1)`
-/

namespace A359162.P9959616565325609066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n * A353557 (n + 1)

end

end A359162.P9959616565325609066

namespace A359162

/-- `A014707(n)*A353557(n+1)` -/
def P9959616565325609066.Spec : Prop :=
  ∀ n, P9959616565325609066.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P1083698764290913016

`A014707(n)*A354035(n+1)`
-/

namespace A359162.P1083698764290913016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n * A354035 (n + 1)

end

end A359162.P1083698764290913016

namespace A359162

/-- `A014707(n)*A354035(n+1)` -/
def P1083698764290913016.Spec : Prop :=
  ∀ n, P1083698764290913016.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P6824946273832259085

`A021913(n)*A353557(n+1)`
-/

namespace A359162.P6824946273832259085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A353557 (n + 1)

end

end A359162.P6824946273832259085

namespace A359162

/-- `A021913(n)*A353557(n+1)` -/
def P6824946273832259085.Spec : Prop :=
  ∀ n, P6824946273832259085.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P13872430149553369892

`A059125(n)*A353557(n+1)`
-/

namespace A359162.P13872430149553369892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059125 n * A353557 (n + 1)

end

end A359162.P13872430149553369892

namespace A359162

/-- `A059125(n)*A353557(n+1)` -/
def P13872430149553369892.Spec : Prop :=
  ∀ n, P13872430149553369892.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P16111244200366130199

`A140081(n)*A353557(n+1)`
-/

namespace A359162.P16111244200366130199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n * A353557 (n + 1)

end

end A359162.P16111244200366130199

namespace A359162

/-- `A140081(n)*A353557(n+1)` -/
def P16111244200366130199.Spec : Prop :=
  ∀ n, P16111244200366130199.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P14625310135677555148

`A002620(n)%A007421(n+1)`
-/

namespace A359162.P14625310135677555148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002620 n) (A007421 (n + 1))

end

end A359162.P14625310135677555148

namespace A359162

/-- `A002620(n)%A007421(n+1)` -/
def P14625310135677555148.Spec : Prop :=
  ∀ n, P14625310135677555148.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P5063290503651976618

`A121262(2+n)*A065043(n+1)`
-/

namespace A359162.P5063290503651976618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 + n) * A065043 (n + 1)

end

end A359162.P5063290503651976618

namespace A359162

/-- `A121262(2+n)*A065043(n+1)` -/
def P5063290503651976618.Spec : Prop :=
  ∀ n, P5063290503651976618.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P6931398642932266076

`A353557(n+1)*A358680(n+2)`
-/

namespace A359162.P6931398642932266076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) * A358680 (n + 2)

end

end A359162.P6931398642932266076

namespace A359162

/-- `A353557(n+1)*A358680(n+2)` -/
def P6931398642932266076.Spec : Prop :=
  ∀ n, P6931398642932266076.a n = A359162 (n + 1)

end A359162

/-! ## A359162.P15382613442313995719

`and(A001222(n+1)+1, A354035(n+1))`
-/

namespace A359162.P15382613442313995719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (n + 1) + 1) (A354035 (n + 1))

end

end A359162.P15382613442313995719

namespace A359162

/-- `and(A001222(n+1)+1, A354035(n+1))` -/
def P15382613442313995719.Spec : Prop :=
  ∀ n, P15382613442313995719.a n = A359162 (n + 1)

end A359162

/-!
# A359163: Numbers of the form 4u+3 with an even number of prime factors (counted with multiplicity).

The programs for A359163, the canonical program `A359163.P2654985658167397465` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359163 has offset 1).

The definition of A359163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359163.P2808326059092200710

`comp[A359162(n+1)+xor(1, n)]`
-/

namespace A359163.P2808326059092200710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359162 (n + 1) + (Nat.xor 1 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359163.P2808326059092200710

namespace A359163

/-- `comp[A359162(n+1)+xor(1, n)]` -/
def P2808326059092200710.Spec : Prop :=
  ∀ n, (P2808326059092200710.a n : ℤ) = A359163 (n + 1)

end A359163

/-! ## A359163.P5347226299573709229

`filter[A091236(n+1), A065043(#)]`
-/

namespace A359163.P5347226299573709229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A359163.P5347226299573709229

namespace A359163

/-- `filter[A091236(n+1), A065043(#)]` -/
def P5347226299573709229.Spec : Prop :=
  ∀ n, P5347226299573709229.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P3886893249427799347

`filter[A091236(n+1), A353374(#)]`
-/

namespace A359163.P3886893249427799347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A359163.P3886893249427799347

namespace A359163

/-- `filter[A091236(n+1), A353374(#)]` -/
def P3886893249427799347.Spec : Prop :=
  ∀ n, P3886893249427799347.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P2654985658167397465

`filter[A091236(n+1), A353557(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A359163

/-- `filter[A091236(n+1), A353557(#)]` -/
def P2654985658167397465.Spec : Prop :=
  ∀ n, P2654985658167397465.a n = A359163 (n + 1)

theorem P2654985658167397465.correct : P2654985658167397465.Spec := by
  intro n
  simp only [A359163, Nat.add_sub_cancel]

end A359163

/-! ## A359163.P15249677113847700881

`filter[A091236(n+1), A353669(#)]`
-/

namespace A359163.P15249677113847700881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A359163.P15249677113847700881

namespace A359163

/-- `filter[A091236(n+1), A353669(#)]` -/
def P15249677113847700881.Spec : Prop :=
  ∀ n, P15249677113847700881.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P3391326076070798513

`filter[A091236(n+1), A354035(#)]`
-/

namespace A359163.P3391326076070798513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A359163.P3391326076070798513

namespace A359163

/-- `filter[A091236(n+1), A354035(#)]` -/
def P3391326076070798513.Spec : Prop :=
  ∀ n, P3391326076070798513.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P15533499983696883047

`filter[A091236(n+1), A356163(#)]`
-/

namespace A359163.P15533499983696883047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A359163.P15533499983696883047

namespace A359163

/-- `filter[A091236(n+1), A356163(#)]` -/
def P15533499983696883047.Spec : Prop :=
  ∀ n, P15533499983696883047.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P4873472285969951160

`filter[A091236(n+1), A358680(#)]`
-/

namespace A359163.P4873472285969951160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A359163.P4873472285969951160

namespace A359163

/-- `filter[A091236(n+1), A358680(#)]` -/
def P4873472285969951160.Spec : Prop :=
  ∀ n, P4873472285969951160.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P10572175652142108796

`filter[A091236(n+1), A359162(#)]`
-/

namespace A359163.P10572175652142108796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359162 (f1 j).toNat = 1) n)

end

end A359163.P10572175652142108796

namespace A359163

/-- `filter[A091236(n+1), A359162(#)]` -/
def P10572175652142108796.Spec : Prop :=
  ∀ n, P10572175652142108796.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P13481845259866007294

`filter[A091236(n+1), A359370(#)]`
-/

namespace A359163.P13481845259866007294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A359163.P13481845259866007294

namespace A359163

/-- `filter[A091236(n+1), A359370(#)]` -/
def P13481845259866007294.Spec : Prop :=
  ∀ n, P13481845259866007294.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P17080257408756261327

`filter[A091236(n+1), A359770(#)]`
-/

namespace A359163.P17080257408756261327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359163.P17080257408756261327

namespace A359163

/-- `filter[A091236(n+1), A359770(#)]` -/
def P17080257408756261327.Spec : Prop :=
  ∀ n, P17080257408756261327.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P2508324342819317306

`filter[A091236(n+1), A359820(#)]`
-/

namespace A359163.P2508324342819317306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A359163.P2508324342819317306

namespace A359163

/-- `filter[A091236(n+1), A359820(#)]` -/
def P2508324342819317306.Spec : Prop :=
  ∀ n, P2508324342819317306.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P4126114412835558737

`filter[A091236(n+1), A368997(#)]`
-/

namespace A359163.P4126114412835558737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A359163.P4126114412835558737

namespace A359163

/-- `filter[A091236(n+1), A368997(#)]` -/
def P4126114412835558737.Spec : Prop :=
  ∀ n, P4126114412835558737.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P15564904207704807651

`eq[A010873(n+1), A358771(2*n)]`
-/

namespace A359163.P15564904207704807651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359163.P15564904207704807651

namespace A359163

/-- `eq[A010873(n+1), A358771(2*n)]` -/
def P15564904207704807651.Spec : Prop :=
  ∀ n, (P15564904207704807651.a n : ℤ) = A359163 (n + 1)

end A359163

/-! ## A359163.P14295575162429952486

`filter[A345331(n+1), A359162(#)]`
-/

namespace A359163.P14295575162429952486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359162 (f1 j).toNat = 1) n)

end

end A359163.P14295575162429952486

namespace A359163

/-- `filter[A345331(n+1), A359162(#)]` -/
def P14295575162429952486.Spec : Prop :=
  ∀ n, P14295575162429952486.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P2464235179632038363

`filter[A046337(n+1), A354035(#)]`
-/

namespace A359163.P2464235179632038363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A359163.P2464235179632038363

namespace A359163

/-- `filter[A046337(n+1), A354035(#)]` -/
def P2464235179632038363.Spec : Prop :=
  ∀ n, P2464235179632038363.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P10704053007172047465

`filter[A046337(n+1), A359162(#)]`
-/

namespace A359163.P10704053007172047465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359162 (f1 j).toNat = 1) n)

end

end A359163.P10704053007172047465

namespace A359163

/-- `filter[A046337(n+1), A359162(#)]` -/
def P10704053007172047465.Spec : Prop :=
  ∀ n, P10704053007172047465.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P13976559437769236282

`filter[A046337(n+1), A373979(#)]`
-/

namespace A359163.P13976559437769236282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A359163.P13976559437769236282

namespace A359163

/-- `filter[A046337(n+1), A373979(#)]` -/
def P13976559437769236282.Spec : Prop :=
  ∀ n, P13976559437769236282.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P4099547506413753931

`filter[A324909(n+1), A065043(#)]`
-/

namespace A359163.P4099547506413753931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A359163.P4099547506413753931

namespace A359163

/-- `filter[A324909(n+1), A065043(#)]` -/
def P4099547506413753931.Spec : Prop :=
  ∀ n, P4099547506413753931.a n = A359163 (n + 1)

end A359163

/-! ## A359163.P2837659544050751530

`filter[A324909(n+1), A353374(#)]`
-/

namespace A359163.P2837659544050751530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A359163.P2837659544050751530

namespace A359163

/-- `filter[A324909(n+1), A353374(#)]` -/
def P2837659544050751530.Spec : Prop :=
  ∀ n, P2837659544050751530.a n = A359163 (n + 1)

end A359163

/-!
# A359164: Difference between Kimberling's paraphrase, A003602, and its Möbius transform.

The programs for A359164, the canonical program `A359164.P14566603840914614086` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359164 has offset 1).

The definition of A359164 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A349136, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359164.P14566603840914614086

`A003602(n+1)-A349136(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A359164

/-- `A003602(n+1)-A349136(n+1)` -/
def P14566603840914614086.Spec : Prop :=
  ∀ n, P14566603840914614086.a n = A359164 (n + 1)

theorem P14566603840914614086.correct : P14566603840914614086.Spec := by
  intro n
  simp only [A359164, Nat.add_sub_cancel]

end A359164

/-! ## A359164.P7016822950670400859

`round((n+1)/(xor(n, n+1)+1))-abs(A349444(2*(n+1)))`
-/

namespace A359164.P7016822950670400859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)) - |A349444 (2 * (n + 1))|

end

end A359164.P7016822950670400859

namespace A359164

/-- `round((n+1)/(xor(n, n+1)+1))-abs(A349444(2*(n+1)))` -/
def P7016822950670400859.Spec : Prop :=
  ∀ n, P7016822950670400859.a n = A359164 (n + 1)

end A359164

/-! ## A359164.P13110415817233514798

`A349444(2*(n+1))+A003602(n+1)`
-/

namespace A359164.P13110415817233514798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349444 (2 * (n + 1)) + A003602 (n + 1)

end

end A359164.P13110415817233514798

namespace A359164

/-- `A349444(2*(n+1))+A003602(n+1)` -/
def P13110415817233514798.Spec : Prop :=
  ∀ n, P13110415817233514798.a n = A359164 (n + 1)

end A359164

/-! ## A359164.P10426542413361931104

`A110963(2*n+1)-A349136(n+1)`
-/

namespace A359164.P10426542413361931104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (2 * n + 1) - A349136 (n + 1)

end

end A359164.P10426542413361931104

namespace A359164

/-- `A110963(2*n+1)-A349136(n+1)` -/
def P10426542413361931104.Spec : Prop :=
  ∀ n, P10426542413361931104.a n = A359164 (n + 1)

end A359164

/-! ## A359164.P8901145852606745360

`A110962(2*n)+1-A349136(n+1)`
-/

namespace A359164.P8901145852606745360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * n) + 1 - A349136 (n + 1)

end

end A359164.P8901145852606745360

namespace A359164

/-- `A110962(2*n)+1-A349136(n+1)` -/
def P8901145852606745360.Spec : Prop :=
  ∀ n, P8901145852606745360.a n = A359164 (n + 1)

end A359164

/-! ## A359164.P2509868972215698439

`∑{d}[n+1, A003602(#)*A157658((n+1)/#)]`
-/

namespace A359164.P2509868972215698439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359164.P2509868972215698439

namespace A359164

/-- `∑{d}[n+1, A003602(#)*A157658((n+1)/#)]` -/
def P2509868972215698439.Spec : Prop :=
  ∀ n, P2509868972215698439.a n = A359164 (n + 1)

end A359164

/-! ## A359164.P7951401103739917846

`∑{d}[n+1, A051953(#)*A349431((n+1)/#)]`
-/

namespace A359164.P7951401103739917846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359164.P7951401103739917846

namespace A359164

/-- `∑{d}[n+1, A051953(#)*A349431((n+1)/#)]` -/
def P7951401103739917846.Spec : Prop :=
  ∀ n, P7951401103739917846.a n = A359164 (n + 1)

end A359164

/-! ## A359164.P12646756074413585312

`∑{d}[n+1, A062790(#)*A349373((n+1)/#)]`
-/

namespace A359164.P12646756074413585312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062790 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359164.P12646756074413585312

namespace A359164

/-- `∑{d}[n+1, A062790(#)*A349373((n+1)/#)]` -/
def P12646756074413585312.Spec : Prop :=
  ∀ n, P12646756074413585312.a n = A359164 (n + 1)

end A359164

/-! ## A359164.P15636040655248990538

`∑{d}[n+1, A353461(#)*A359165((n+1)/#)]`
-/

namespace A359164.P15636040655248990538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353461 d * A359165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359164.P15636040655248990538

namespace A359164

/-- `∑{d}[n+1, A353461(#)*A359165((n+1)/#)]` -/
def P15636040655248990538.Spec : Prop :=
  ∀ n, P15636040655248990538.a n = A359164 (n + 1)

end A359164

/-! ## A359164.P9231579223602793197

`A349135(n+1)-(A349136(n+1)+A349134(n+1))`
-/

namespace A359164.P9231579223602793197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349135 (n + 1) - (A349136 (n + 1) + A349134 (n + 1))

end

end A359164.P9231579223602793197

namespace A359164

/-- `A349135(n+1)-(A349136(n+1)+A349134(n+1))` -/
def P9231579223602793197.Spec : Prop :=
  ∀ n, P9231579223602793197.a n = A359164 (n + 1)

end A359164

/-!
# A359165: Difference between A126760 and its Möbius transform.

The programs for A359165, there is no canonical definition to state claims against.
-/

/-! ## A359165.P2066709482311783570

`A126760(n+1)-A347233(n+1)`
-/

namespace A359165.P2066709482311783570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (n + 1) - A347233 (n + 1)

end

end A359165.P2066709482311783570

/-! ## A359165.P5850422507407477900

`∑{d}[n+1, A353460(#)*A359164((n+1)/#)]`
-/

namespace A359165.P5850422507407477900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353460 d * A359164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359165.P5850422507407477900

/-! ## A359165.P6809028019738164463

`A323882(n+1)-(A347233(n+1)+A323881(n+1))`
-/

namespace A359165.P6809028019738164463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (n + 1) - (A347233 (n + 1) + A323881 (n + 1))

end

end A359165.P6809028019738164463

/-! ## A359165.P12994377730996598467

`A254048(2*(n+1))-A347233(n+1)`
-/

namespace A359165.P12994377730996598467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (2 * (n + 1)) - A347233 (n + 1)

end

end A359165.P12994377730996598467

/-! ## A359165.P9210751869436558445

`A126760(n+1)-A349339(A174571(2*n)+1)`
-/

namespace A359165.P9210751869436558445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (n + 1) - A349339 (A174571 (2 * n) + 1).toNat

end

end A359165.P9210751869436558445

/-!
# A359166: a(n) = lambda(n) * lambda(sigma(n)), where lambda is Liouville's lambda, and sigma is the sum of divisors function.

The programs for A359166, the canonical program `A359166.P15871561201319806432` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359166 has offset 1).

The definition of A359166 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A358766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359166.P15871561201319806432

`A008836(n+1)*A358766(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359166

/-- `A008836(n+1)*A358766(n+1)` -/
def P15871561201319806432.Spec : Prop :=
  ∀ n, P15871561201319806432.a n = A359166 (n + 1)

theorem P15871561201319806432.correct : P15871561201319806432.Spec := by
  intro n
  simp only [A359166, Nat.add_sub_cancel]

end A359166

/-! ## A359166.P3079204510495664869

`A008836(n+1)*A008836(A000203(n+1))`
-/

namespace A359166.P3079204510495664869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008836 (A000203 (n + 1)).toNat

end

end A359166.P3079204510495664869

namespace A359166

/-- `A008836(n+1)*A008836(A000203(n+1))` -/
def P3079204510495664869.Spec : Prop :=
  ∀ n, P3079204510495664869.a n = A359166 (n + 1)

end A359166

/-! ## A359166.P2004878437759478405

`(-1)^A336386(n+1)`
-/

namespace A359166.P2004878437759478405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A336386 (n + 1) : ℤ)

end

end A359166.P2004878437759478405

namespace A359166

/-- `(-1)^A336386(n+1)` -/
def P2004878437759478405.Spec : Prop :=
  ∀ n, P2004878437759478405.a n = (A359166 (n + 1) : ℚ)

end A359166

/-! ## A359166.P15535893929383760658

`A030203(and(1, A336386(n+1)))`
-/

namespace A359166.P15535893929383760658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (Int.land 1 (A336386 (n + 1))).toNat

end

end A359166.P15535893929383760658

namespace A359166

/-- `A030203(and(1, A336386(n+1)))` -/
def P15535893929383760658.Spec : Prop :=
  ∀ n, P15535893929383760658.a n = A359166 (n + 1)

end A359166

/-! ## A359166.P12162081876000206907

`A008836(n+1)*A008836(A276528(n+1))`
-/

namespace A359166.P12162081876000206907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008836 (A276528 (n + 1)).toNat

end

end A359166.P12162081876000206907

namespace A359166

/-- `A008836(n+1)*A008836(A276528(n+1))` -/
def P12162081876000206907.Spec : Prop :=
  ∀ n, P12162081876000206907.a n = A359166 (n + 1)

end A359166

/-! ## A359166.P3422829298612544599

`A008836(n+1)*A008836(A319528(n+1)/8)`
-/

namespace A359166.P3422829298612544599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008836 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 8)).toNat

end

end A359166.P3422829298612544599

namespace A359166

/-- `A008836(n+1)*A008836(A319528(n+1)/8)` -/
def P3422829298612544599.Spec : Prop :=
  ∀ n, P3422829298612544599.a n = A359166 (n + 1)

end A359166

/-! ## A359166.P899989102485368188

`(1-and(2, A165840(n+1)))/A008836(A000203(n+1))`
-/

namespace A359166.P899989102485368188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - Int.land 2 (A165840 (n + 1)) : ℚ) / (A008836 (A000203 (n + 1)).toNat : ℚ)

end

end A359166.P899989102485368188

namespace A359166

/-- `(1-and(2, A165840(n+1)))/A008836(A000203(n+1))` -/
def P899989102485368188.Spec : Prop :=
  ∀ n, P899989102485368188.a n = (A359166 (n + 1) : ℚ)

end A359166

/-! ## A359166.P7898785642672017882

`A008836(n+1)*A008836(A239050(n+1))`
-/

namespace A359166.P7898785642672017882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008836 (A239050 (n + 1)).toNat

end

end A359166.P7898785642672017882

namespace A359166

/-- `A008836(n+1)*A008836(A239050(n+1))` -/
def P7898785642672017882.Spec : Prop :=
  ∀ n, P7898785642672017882.a n = A359166 (n + 1)

end A359166

/-! ## A359166.P16453098433285322810

`A008836(n+1)*A008836(A274536(n+1))`
-/

namespace A359166.P16453098433285322810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008836 (A274536 (n + 1)).toNat

end

end A359166.P16453098433285322810

namespace A359166

/-- `A008836(n+1)*A008836(A274536(n+1))` -/
def P16453098433285322810.Spec : Prop :=
  ∀ n, P16453098433285322810.a n = A359166 (n + 1)

end A359166

/-! ## A359166.P5359038088401535039

`A008836(n+1)*A008836(A325299(n+1))`
-/

namespace A359166.P5359038088401535039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008836 (A325299 (n + 1)).toNat

end

end A359166.P5359038088401535039

namespace A359166

/-- `A008836(n+1)*A008836(A325299(n+1))` -/
def P5359038088401535039.Spec : Prop :=
  ∀ n, P5359038088401535039.a n = A359166 (n + 1)

end A359166

/-! ## A359166.P14528758821171525987

`A008836(n+1)*A008836(A326122(n+1))`
-/

namespace A359166.P14528758821171525987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008836 (A326122 (n + 1)).toNat

end

end A359166.P14528758821171525987

namespace A359166

/-- `A008836(n+1)*A008836(A326122(n+1))` -/
def P14528758821171525987.Spec : Prop :=
  ∀ n, P14528758821171525987.a n = A359166 (n + 1)

end A359166

/-! ## A359166.P9920429806474255483

`(-1)^A001222((n+1)*A000203(n+1))`
-/

namespace A359166.P9920429806474255483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 ((n + 1 : ℤ) * A000203 (n + 1)).toNat : ℤ)

end

end A359166.P9920429806474255483

namespace A359166

/-- `(-1)^A001222((n+1)*A000203(n+1))` -/
def P9920429806474255483.Spec : Prop :=
  ∀ n, P9920429806474255483.a n = (A359166 (n + 1) : ℚ)

end A359166

/-! ## A359166.P13460127681031148443

`A008683(A007913((n+1)*A000203(n+1)))`
-/

namespace A359166.P13460127681031148443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 ((n + 1 : ℤ) * A000203 (n + 1)).toNat).toNat

end

end A359166.P13460127681031148443

namespace A359166

/-- `A008683(A007913((n+1)*A000203(n+1)))` -/
def P13460127681031148443.Spec : Prop :=
  ∀ n, P13460127681031148443.a n = A359166 (n + 1)

end A359166

/-!
# A359167: Numbers k for which there is an even number of prime factors (when counted with multiplicity) in k*sigma(k), where sigma is the sum of divisors function.

The programs for A359167, the canonical program `A359167.P9620402831004912511` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359167 has offset 1).

The definition of A359167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359167.P9620402831004912511

`lt[0, A359166(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A359167

/-- `lt[0, A359166(n+1)]+1` -/
def P9620402831004912511.Spec : Prop :=
  ∀ n, (P9620402831004912511.a n : ℤ) = A359167 (n + 1)

theorem P9620402831004912511.correct : P9620402831004912511.Spec := by
  intro n
  simp only [A359167, Nat.add_sub_cancel]

end A359167

/-! ## A359167.P13892544986238182642

`record[A000027(n+1)*A359166(n+1)]`
-/

namespace A359167.P13892544986238182642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359167.P13892544986238182642

namespace A359167

/-- `record[A000027(n+1)*A359166(n+1)]` -/
def P13892544986238182642.Spec : Prop :=
  ∀ n, P13892544986238182642.a n = A359167 (n + 1)

end A359167

/-! ## A359167.P14226198557788825150

`eq[1, A030203(and(1, A336386(n+1)))]+1`
-/

namespace A359167.P14226198557788825150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (Int.land 1 (A336386 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359167.P14226198557788825150

namespace A359167

/-- `eq[1, A030203(and(1, A336386(n+1)))]+1` -/
def P14226198557788825150.Spec : Prop :=
  ∀ n, (P14226198557788825150.a n : ℤ) = A359167 (n + 1)

end A359167

/-! ## A359167.P12019499008443071210

`eq[1, A359166(n-a(A000038(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A359167.P12019499008443071210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A359166 ((n : ℤ) - f2 (A000038 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359167.P12019499008443071210

namespace A359167

/-- `eq[1, A359166(n-a(A000038(n)))]` -/
def P12019499008443071210.Spec : Prop :=
  ∀ n, (P12019499008443071210.a n : ℤ) = A359167 (n + 1)

end A359167

/-! ## A359167.P9228444993242802903

`eq[A008836(n+1), A358766(n+1)]+1`
-/

namespace A359167.P9228444993242802903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359167.P9228444993242802903

namespace A359167

/-- `eq[A008836(n+1), A358766(n+1)]+1` -/
def P9228444993242802903.Spec : Prop :=
  ∀ n, (P9228444993242802903.a n : ℤ) = A359167 (n + 1)

end A359167

/-! ## A359167.P4491583496517977376

`record[A158416(2*n)/A359166(n+1)]`
-/

namespace A359167.P4491583496517977376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158416 (2 * n) : ℚ) / (A359166 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359167.P4491583496517977376

namespace A359167

/-- `record[A158416(2*n)/A359166(n+1)]` -/
def P4491583496517977376.Spec : Prop :=
  ∀ n, P4491583496517977376.a n = (A359167 (n + 1) : ℚ)

end A359167

/-! ## A359167.P13182208601818577531

`record[A158416(n)*A359166(A158416(n))]`
-/

namespace A359167.P13182208601818577531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n * A359166 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359167.P13182208601818577531

namespace A359167

/-- `record[A158416(n)*A359166(A158416(n))]` -/
def P13182208601818577531.Spec : Prop :=
  ∀ n, P13182208601818577531.a n = A359167 (n + 1)

end A359167

/-! ## A359167.P462428997503335552

`eq[A008836(n+1), A008836(A276528(n+1))]+1`
-/

namespace A359167.P462428997503335552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A276528 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359167.P462428997503335552

namespace A359167

/-- `eq[A008836(n+1), A008836(A276528(n+1))]+1` -/
def P462428997503335552.Spec : Prop :=
  ∀ n, (P462428997503335552.a n : ℤ) = A359167 (n + 1)

end A359167

/-!
# A359168: Numbers k for which there is an odd number of prime factors (when counted with multiplicity) in k*sigma(k), where sigma is the sum of divisors function.

The programs for A359168, there is no canonical definition to state claims against.
-/

/-! ## A359168.P5463388316881563318

`lt[A359166(n+1), 0]+1`
-/

namespace A359168.P5463388316881563318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359168.P5463388316881563318

/-! ## A359168.P17720970034513612663

`eq[1, and(1, A336386(n+1))]+1`
-/

namespace A359168.P17720970034513612663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A336386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359168.P17720970034513612663

/-! ## A359168.P18358069884845219972

`lt[A359166(A028310(n)), 0]`
-/

namespace A359168.P18358069884845219972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359166 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359168.P18358069884845219972

/-! ## A359168.P8363686968846535537

`lt[A320655(A064987(n+1)), 1]+1`
-/

namespace A359168.P8363686968846535537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A064987 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359168.P8363686968846535537

/-! ## A359168.P17882080362382160462

`eq[A057428(n), A359166(n+1)]+1`
-/

namespace A359168.P17882080362382160462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359168.P17882080362382160462

/-! ## A359168.P6854855445271403573

`eq[A153881(n+2), A359166(n+1)]+1`
-/

namespace A359168.P6854855445271403573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359168.P6854855445271403573

/-! ## A359168.P2247851532205907723

`eq[A307445(A000040(n+1)), A359166(n+1)]+1`
-/

namespace A359168.P2247851532205907723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359168.P2247851532205907723

/-!
# A359169: Dirichlet inverse of the pointwise sum of A349905 (arithmetic derivative of prime shifted n) and A063524 (1, 0, 0, 0, ...).

The programs for A359169, there is no canonical definition to state claims against.
-/

/-! ## A359169.P2945679654993630060

`A346241(A003961(n+1))`
-/

namespace A359169.P2945679654993630060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A003961 (n + 1)).toNat

end

end A359169.P2945679654993630060

/-! ## A359169.P18038273897484769539

`A346241(A286385(n+1)+A000203(n+1))`
-/

namespace A359169.P18038273897484769539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A359169.P18038273897484769539

/-! ## A359169.P10335459915709483121

`A346241(A348937(n+1)+A003415(n+1))`
-/

namespace A359169.P10335459915709483121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A348937 (n + 1) + A003415 (n + 1)).toNat

end

end A359169.P10335459915709483121

/-! ## A359169.P8459975043235274428

`A346241(A252748(n+1)+A000027(2*(n+1)))`
-/

namespace A359169.P8459975043235274428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A252748 (n + 1) + A000027 (2 * (n + 1))).toNat

end

end A359169.P8459975043235274428

/-! ## A359169.P9345553626061147814

`A346241(A048673(2*(n+1))-A048673(n+1))`
-/

namespace A359169.P9345553626061147814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A048673 (2 * (n + 1)) - A048673 (n + 1)).toNat

end

end A359169.P9345553626061147814

/-!
# A359170: a(n) = 1 if n is not a multiple of 3 and has an even number of prime factors (with multiplicity), otherwise a(n) = 0.

The programs for A359170, the canonical program `A359170.P16904216499328120622` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359170 has offset 1).

The definition of A359170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359170.P5866275128526718488

`A011655(n+1)-A359172(n+1)`
-/

namespace A359170.P5866275128526718488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) - A359172 (n + 1)

end

end A359170.P5866275128526718488

namespace A359170

/-- `A011655(n+1)-A359172(n+1)` -/
def P5866275128526718488.Spec : Prop :=
  ∀ n, P5866275128526718488.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P16904216499328120622

`A011655(n+1)*A065043(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359170

/-- `A011655(n+1)*A065043(n+1)` -/
def P16904216499328120622.Spec : Prop :=
  ∀ n, P16904216499328120622.a n = A359170 (n + 1)

theorem P16904216499328120622.correct : P16904216499328120622.Spec := by
  intro n
  simp only [A359170, Nat.add_sub_cancel]

end A359170

/-! ## A359170.P12778943265999934588

`A359172(2*(n+1))`
-/

namespace A359170.P12778943265999934588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359172 (2 * (n + 1))

end

end A359170.P12778943265999934588

namespace A359170

/-- `A359172(2*(n+1))` -/
def P12778943265999934588.Spec : Prop :=
  ∀ n, P12778943265999934588.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P2757165259742604150

`ceil(A359378(n+1)/2)`
-/

namespace A359170.P2757165259742604150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A359378 (n + 1) : ℚ) / 2⌉

end

end A359170.P2757165259742604150

namespace A359170

/-- `ceil(A359378(n+1)/2)` -/
def P2757165259742604150.Spec : Prop :=
  ∀ n, P2757165259742604150.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P18348845719777070972

`char[lt[val(n+1, 3)+1, A007421(n+1)]]`
-/

namespace A359170.P18348845719777070972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3 + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359170.P18348845719777070972

namespace A359170

/-- `char[lt[val(n+1, 3)+1, A007421(n+1)]]` -/
def P18348845719777070972.Spec : Prop :=
  ∀ n, (P18348845719777070972.a n : ℤ) = A359170 (n + 1)

end A359170

/-! ## A359170.P301790082406815499

`A007306(n)%A007421(n+1)`
-/

namespace A359170.P301790082406815499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007306 n) (A007421 (n + 1))

end

end A359170.P301790082406815499

namespace A359170

/-- `A007306(n)%A007421(n+1)` -/
def P301790082406815499.Spec : Prop :=
  ∀ n, P301790082406815499.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P5594489292996294224

`A008747(n)%A007421(n+1)`
-/

namespace A359170.P5594489292996294224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008747 n) (A007421 (n + 1))

end

end A359170.P5594489292996294224

namespace A359170

/-- `A008747(n)%A007421(n+1)` -/
def P5594489292996294224.Spec : Prop :=
  ∀ n, P5594489292996294224.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P8593410363337983084

`A008769(n)%A007421(n+1)`
-/

namespace A359170.P8593410363337983084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008769 n) (A007421 (n + 1))

end

end A359170.P8593410363337983084

namespace A359170

/-- `A008769(n)%A007421(n+1)` -/
def P8593410363337983084.Spec : Prop :=
  ∀ n, P8593410363337983084.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P8176125399396912634

`and(A007306(n), A065043(n+1))`
-/

namespace A359170.P8176125399396912634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007306 n) (A065043 (n + 1))

end

end A359170.P8176125399396912634

namespace A359170

/-- `and(A007306(n), A065043(n+1))` -/
def P8176125399396912634.Spec : Prop :=
  ∀ n, P8176125399396912634.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P9079310337093957703

`and(A008747(n), A065043(n+1))`
-/

namespace A359170.P9079310337093957703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008747 n) (A065043 (n + 1))

end

end A359170.P9079310337093957703

namespace A359170

/-- `and(A008747(n), A065043(n+1))` -/
def P9079310337093957703.Spec : Prop :=
  ∀ n, P9079310337093957703.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P7647020049811512488

`and(A008769(n), A065043(n+1))`
-/

namespace A359170.P7647020049811512488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008769 n) (A065043 (n + 1))

end

end A359170.P7647020049811512488

namespace A359170

/-- `and(A008769(n), A065043(n+1))` -/
def P7647020049811512488.Spec : Prop :=
  ∀ n, P7647020049811512488.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P15851983871658530745

`and(A010892(n), A065043(n+1))`
-/

namespace A359170.P15851983871658530745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 n) (A065043 (n + 1))

end

end A359170.P15851983871658530745

namespace A359170

/-- `and(A010892(n), A065043(n+1))` -/
def P15851983871658530745.Spec : Prop :=
  ∀ n, P15851983871658530745.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P12859045127679102259

`and(A020944(n), A065043(n+1))`
-/

namespace A359170.P12859045127679102259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020944 n) (A065043 (n + 1))

end

end A359170.P12859045127679102259

namespace A359170

/-- `and(A020944(n), A065043(n+1))` -/
def P12859045127679102259.Spec : Prop :=
  ∀ n, P12859045127679102259.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P18066696878960088111

`A359378(n+1)+A359172(n+1)`
-/

namespace A359170.P18066696878960088111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (n + 1) + A359172 (n + 1)

end

end A359170.P18066696878960088111

namespace A359170

/-- `A359378(n+1)+A359172(n+1)` -/
def P18066696878960088111.Spec : Prop :=
  ∀ n, P18066696878960088111.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P4608702187083045441

`A065043(n+1)*A359378(n+1)`
-/

namespace A359170.P4608702187083045441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A359378 (n + 1)

end

end A359170.P4608702187083045441

namespace A359170

/-- `A065043(n+1)*A359378(n+1)` -/
def P4608702187083045441.Spec : Prop :=
  ∀ n, P4608702187083045441.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P1054024754105427619

`A359378(n+1)*A373585(n+1)`
-/

namespace A359170.P1054024754105427619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (n + 1) * A373585 (n + 1)

end

end A359170.P1054024754105427619

namespace A359170

/-- `A359378(n+1)*A373585(n+1)` -/
def P1054024754105427619.Spec : Prop :=
  ∀ n, P1054024754105427619.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P8955527472870766609

`and(A007421(n+1)+1, A078070(n))`
-/

namespace A359170.P8955527472870766609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007421 (n + 1) + 1) (A078070 n)

end

end A359170.P8955527472870766609

namespace A359170

/-- `and(A007421(n+1)+1, A078070(n))` -/
def P8955527472870766609.Spec : Prop :=
  ∀ n, P8955527472870766609.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P2456704315219984055

`and(1-A066829(n+1), A007306(n))`
-/

namespace A359170.P2456704315219984055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A066829 (n + 1)) (A007306 n)

end

end A359170.P2456704315219984055

namespace A359170

/-- `and(1-A066829(n+1), A007306(n))` -/
def P2456704315219984055.Spec : Prop :=
  ∀ n, P2456704315219984055.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P3750158171836048142

`and(1-A066829(n+1), A008747(n))`
-/

namespace A359170.P3750158171836048142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A066829 (n + 1)) (A008747 n)

end

end A359170.P3750158171836048142

namespace A359170

/-- `and(1-A066829(n+1), A008747(n))` -/
def P3750158171836048142.Spec : Prop :=
  ∀ n, P3750158171836048142.a n = A359170 (n + 1)

end A359170

/-! ## A359170.P2486104734810295924

`and(1-A066829(n+1), A008769(n))`
-/

namespace A359170.P2486104734810295924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A066829 (n + 1)) (A008769 n)

end

end A359170.P2486104734810295924

namespace A359170

/-- `and(1-A066829(n+1), A008769(n))` -/
def P2486104734810295924.Spec : Prop :=
  ∀ n, P2486104734810295924.a n = A359170 (n + 1)

end A359170

/-!
# A359171: Nonmultiples of 3 that have an even number of prime factors (with multiplicity).

The programs for A359171, the canonical program `A359171.P3277398292893305348` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359171 has offset 1).

The definition of A359171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359171.P3277398292893305348

`lt[0, A359170(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359171

/-- `lt[0, A359170(n+1)]+1` -/
def P3277398292893305348.Spec : Prop :=
  ∀ n, (P3277398292893305348.a n : ℤ) = A359171 (n + 1)

theorem P3277398292893305348.correct : P3277398292893305348.Spec := by
  intro n
  simp only [A359171, Nat.add_sub_cancel]

end A359171

/-! ## A359171.P474427507446269828

`lt[0, A359378(n+1)]+1`
-/

namespace A359171.P474427507446269828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359171.P474427507446269828

namespace A359171

/-- `lt[0, A359378(n+1)]+1` -/
def P474427507446269828.Spec : Prop :=
  ∀ n, (P474427507446269828.a n : ℤ) = A359171 (n + 1)

end A359171

/-! ## A359171.P1572805598179541775

`eq[1, A359378(abs(1-n)+1)]`
-/

namespace A359171.P1572805598179541775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359171.P1572805598179541775

namespace A359171

/-- `eq[1, A359378(abs(1-n)+1)]` -/
def P1572805598179541775.Spec : Prop :=
  ∀ n, (P1572805598179541775.a n : ℤ) = A359171 (n + 1)

end A359171

/-! ## A359171.P11768814372548440723

`filter[A373586(n+1), A359170(#)]`
-/

namespace A359171.P11768814372548440723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A359171.P11768814372548440723

namespace A359171

/-- `filter[A373586(n+1), A359170(#)]` -/
def P11768814372548440723.Spec : Prop :=
  ∀ n, P11768814372548440723.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P2883312134681868688

`filter[A028260(n+1), A359170(#)]`
-/

namespace A359171.P2883312134681868688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A359171.P2883312134681868688

namespace A359171

/-- `filter[A028260(n+1), A359170(#)]` -/
def P2883312134681868688.Spec : Prop :=
  ∀ n, P2883312134681868688.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P2211482517153352331

`filter[A347450(n+1), A359170(#)]`
-/

namespace A359171.P2211482517153352331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A359171.P2211482517153352331

namespace A359171

/-- `filter[A347450(n+1), A359170(#)]` -/
def P2211482517153352331.Spec : Prop :=
  ∀ n, P2211482517153352331.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P1928302511764304720

`filter[A171993(n+1), A065043(#)]`
-/

namespace A359171.P1928302511764304720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A359171.P1928302511764304720

namespace A359171

/-- `filter[A171993(n+1), A065043(#)]` -/
def P1928302511764304720.Spec : Prop :=
  ∀ n, P1928302511764304720.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P7379429979815047262

`filter[A171993(n+1), A359170(#)]`
-/

namespace A359171.P7379429979815047262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A359171.P7379429979815047262

namespace A359171

/-- `filter[A171993(n+1), A359170(#)]` -/
def P7379429979815047262.Spec : Prop :=
  ∀ n, P7379429979815047262.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P6958805169437226002

`filter[A171993(n+1), A373585(#)]`
-/

namespace A359171.P6958805169437226002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A359171.P6958805169437226002

namespace A359171

/-- `filter[A171993(n+1), A373585(#)]` -/
def P6958805169437226002.Spec : Prop :=
  ∀ n, P6958805169437226002.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P7105448381532417549

`∩[A028260(n+1), A171993(n+1)]`
-/

namespace A359171.P7105448381532417549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359171.P7105448381532417549

namespace A359171

/-- `∩[A028260(n+1), A171993(n+1)]` -/
def P7105448381532417549.Spec : Prop :=
  ∀ n, (P7105448381532417549.a n : ℤ) = A359171 (n + 1)

end A359171

/-! ## A359171.P10129081651363242719

`∩[A171993(n+1), A373586(n+1)]`
-/

namespace A359171.P10129081651363242719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359171.P10129081651363242719

namespace A359171

/-- `∩[A171993(n+1), A373586(n+1)]` -/
def P10129081651363242719.Spec : Prop :=
  ∀ n, (P10129081651363242719.a n : ℤ) = A359171 (n + 1)

end A359171

/-! ## A359171.P3319341802599430801

`filter[A001651(n+1), A065043(#)]`
-/

namespace A359171.P3319341802599430801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A359171.P3319341802599430801

namespace A359171

/-- `filter[A001651(n+1), A065043(#)]` -/
def P3319341802599430801.Spec : Prop :=
  ∀ n, P3319341802599430801.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P5111657266883624750

`filter[A001651(n+1), A359170(#)]`
-/

namespace A359171.P5111657266883624750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A359171.P5111657266883624750

namespace A359171

/-- `filter[A001651(n+1), A359170(#)]` -/
def P5111657266883624750.Spec : Prop :=
  ∀ n, P5111657266883624750.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P5325694022105027868

`filter[A001651(n+1), A373585(#)]`
-/

namespace A359171.P5325694022105027868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A359171.P5325694022105027868

namespace A359171

/-- `filter[A001651(n+1), A373585(#)]` -/
def P5325694022105027868.Spec : Prop :=
  ∀ n, P5325694022105027868.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P13366281172275605760

`filter[A097482(n+2), A065043(#)]`
-/

namespace A359171.P13366281172275605760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A359171.P13366281172275605760

namespace A359171

/-- `filter[A097482(n+2), A065043(#)]` -/
def P13366281172275605760.Spec : Prop :=
  ∀ n, P13366281172275605760.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P9059133238104129058

`filter[A097482(n+2), A359170(#)]`
-/

namespace A359171.P9059133238104129058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A359171.P9059133238104129058

namespace A359171

/-- `filter[A097482(n+2), A359170(#)]` -/
def P9059133238104129058.Spec : Prop :=
  ∀ n, P9059133238104129058.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P12106530794368382922

`filter[A097482(n+2), A373585(#)]`
-/

namespace A359171.P12106530794368382922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A359171.P12106530794368382922

namespace A359171

/-- `filter[A097482(n+2), A373585(#)]` -/
def P12106530794368382922.Spec : Prop :=
  ∀ n, P12106530794368382922.a n = A359171 (n + 1)

end A359171

/-! ## A359171.P1286051267986040504

`∩[A001651(n+1), A028260(n+1)]`
-/

namespace A359171.P1286051267986040504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359171.P1286051267986040504

namespace A359171

/-- `∩[A001651(n+1), A028260(n+1)]` -/
def P1286051267986040504.Spec : Prop :=
  ∀ n, (P1286051267986040504.a n : ℤ) = A359171 (n + 1)

end A359171

/-! ## A359171.P7137172970458204933

`∩[A001651(n+1), A373586(n+1)]`
-/

namespace A359171.P7137172970458204933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359171.P7137172970458204933

namespace A359171

/-- `∩[A001651(n+1), A373586(n+1)]` -/
def P7137172970458204933.Spec : Prop :=
  ∀ n, (P7137172970458204933.a n : ℤ) = A359171 (n + 1)

end A359171

/-! ## A359171.P12306732519729200300

`filter[A174891(n+1), A359170(#)]`
-/

namespace A359171.P12306732519729200300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A359171.P12306732519729200300

namespace A359171

/-- `filter[A174891(n+1), A359170(#)]` -/
def P12306732519729200300.Spec : Prop :=
  ∀ n, P12306732519729200300.a n = A359171 (n + 1)

end A359171

/-!
# A359172: a(n) = 1 if n is not a multiple of 3 and has an odd number of prime factors (with multiplicity), otherwise a(n) = 0.

The programs for A359172, the canonical program `A359172.P12560099474824915828` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359172 has offset 1).

The definition of A359172 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359172.P12560099474824915828

`A011655(n+1)-A359170(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359172

/-- `A011655(n+1)-A359170(n+1)` -/
def P12560099474824915828.Spec : Prop :=
  ∀ n, P12560099474824915828.a n = A359172 (n + 1)

theorem P12560099474824915828.correct : P12560099474824915828.Spec := by
  intro n
  simp only [A359172, Nat.add_sub_cancel]

end A359172

/-! ## A359172.P3747035065352187272

`A011655(n+1)*A066829(n+1)`
-/

namespace A359172.P3747035065352187272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A066829 (n + 1)

end

end A359172.P3747035065352187272

namespace A359172

/-- `A011655(n+1)*A066829(n+1)` -/
def P3747035065352187272.Spec : Prop :=
  ∀ n, P3747035065352187272.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P1751495987688127164

`A359170(2*(n+1))`
-/

namespace A359172.P1751495987688127164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (2 * (n + 1))

end

end A359172.P1751495987688127164

namespace A359172

/-- `A359170(2*(n+1))` -/
def P1751495987688127164.Spec : Prop :=
  ∀ n, P1751495987688127164.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P5283994834365112742

`and(2, A359378(n+1))/2`
-/

namespace A359172.P5283994834365112742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A359378 (n + 1)) : ℚ) / 2

end

end A359172.P5283994834365112742

namespace A359172

/-- `and(2, A359378(n+1))/2` -/
def P5283994834365112742.Spec : Prop :=
  ∀ n, P5283994834365112742.a n = (A359172 (n + 1) : ℚ)

end A359172

/-! ## A359172.P6702578406077037

`ceil(A359378(2*(n+1))/2)`
-/

namespace A359172.P6702578406077037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A359378 (2 * (n + 1)) : ℚ) / 2⌉

end

end A359172.P6702578406077037

namespace A359172

/-- `ceil(A359378(2*(n+1))/2)` -/
def P6702578406077037.Spec : Prop :=
  ∀ n, P6702578406077037.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P12970437281909224334

`and((n+1)²%3, A001222(n+1))`
-/

namespace A359172.P12970437281909224334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) ^ 2 % 3 : ℕ) : ℤ) (A001222 (n + 1))

end

end A359172.P12970437281909224334

namespace A359172

/-- `and((n+1)²%3, A001222(n+1))` -/
def P12970437281909224334.Spec : Prop :=
  ∀ n, P12970437281909224334.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P9533190336285859248

`and(A003417(n), A066829(n+1))`
-/

namespace A359172.P9533190336285859248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003417 n) (A066829 (n + 1))

end

end A359172.P9533190336285859248

namespace A359172

/-- `and(A003417(n), A066829(n+1))` -/
def P9533190336285859248.Spec : Prop :=
  ∀ n, P9533190336285859248.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P10122138790513973320

`and(A007306(n), A066829(n+1))`
-/

namespace A359172.P10122138790513973320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007306 n) (A066829 (n + 1))

end

end A359172.P10122138790513973320

namespace A359172

/-- `and(A007306(n), A066829(n+1))` -/
def P10122138790513973320.Spec : Prop :=
  ∀ n, P10122138790513973320.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P8427926941503336631

`and(A008747(n), A066829(n+1))`
-/

namespace A359172.P8427926941503336631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008747 n) (A066829 (n + 1))

end

end A359172.P8427926941503336631

namespace A359172

/-- `and(A008747(n), A066829(n+1))` -/
def P8427926941503336631.Spec : Prop :=
  ∀ n, P8427926941503336631.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P567523206818361225

`and(A008769(n), A066829(n+1))`
-/

namespace A359172.P567523206818361225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008769 n) (A066829 (n + 1))

end

end A359172.P567523206818361225

namespace A359172

/-- `and(A008769(n), A066829(n+1))` -/
def P567523206818361225.Spec : Prop :=
  ∀ n, P567523206818361225.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P3182118890982197284

`and(A010892(n), A066829(n+1))`
-/

namespace A359172.P3182118890982197284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 n) (A066829 (n + 1))

end

end A359172.P3182118890982197284

namespace A359172

/-- `and(A010892(n), A066829(n+1))` -/
def P3182118890982197284.Spec : Prop :=
  ∀ n, P3182118890982197284.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P5186296117761190294

`and(A007421(n+1), A078070(n))`
-/

namespace A359172.P5186296117761190294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007421 (n + 1)) (A078070 n)

end

end A359172.P5186296117761190294

namespace A359172

/-- `and(A007421(n+1), A078070(n))` -/
def P5186296117761190294.Spec : Prop :=
  ∀ n, P5186296117761190294.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P12145628092733211102

`and(A020944(n), A066829(n+1))`
-/

namespace A359172.P12145628092733211102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020944 n) (A066829 (n + 1))

end

end A359172.P12145628092733211102

namespace A359172

/-- `and(A020944(n), A066829(n+1))` -/
def P12145628092733211102.Spec : Prop :=
  ∀ n, P12145628092733211102.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P1202443446627949491

`A359170(n+1)-A359378(n+1)`
-/

namespace A359172.P1202443446627949491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (n + 1) - A359378 (n + 1)

end

end A359172.P1202443446627949491

namespace A359172

/-- `A359170(n+1)-A359378(n+1)` -/
def P1202443446627949491.Spec : Prop :=
  ∀ n, P1202443446627949491.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P17247583219340738961

`A001222(n+1)%A143098(n+1)`
-/

namespace A359172.P17247583219340738961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1)) (A143098 (n + 1))

end

end A359172.P17247583219340738961

namespace A359172

/-- `A001222(n+1)%A143098(n+1)` -/
def P17247583219340738961.Spec : Prop :=
  ∀ n, P17247583219340738961.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P522335377384703963

`A007421(n+1)%A143098(n+1)`
-/

namespace A359172.P522335377384703963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007421 (n + 1)) (A143098 (n + 1))

end

end A359172.P522335377384703963

namespace A359172

/-- `A007421(n+1)%A143098(n+1)` -/
def P522335377384703963.Spec : Prop :=
  ∀ n, P522335377384703963.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P3609007424072362558

`A008476(n+1)%A143098(n+1)`
-/

namespace A359172.P3609007424072362558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008476 (n + 1)) (A143098 (n + 1))

end

end A359172.P3609007424072362558

namespace A359172

/-- `A008476(n+1)%A143098(n+1)` -/
def P3609007424072362558.Spec : Prop :=
  ∀ n, P3609007424072362558.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P16110265601602753249

`A063647(n+1)%A143098(n+1)`
-/

namespace A359172.P16110265601602753249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063647 (n + 1)) (A143098 (n + 1))

end

end A359172.P16110265601602753249

namespace A359172

/-- `A063647(n+1)%A143098(n+1)` -/
def P16110265601602753249.Spec : Prop :=
  ∀ n, P16110265601602753249.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P2177302503547294435

`A086436(n+1)%A143098(n+1)`
-/

namespace A359172.P2177302503547294435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086436 (n + 1)) (A143098 (n + 1))

end

end A359172.P2177302503547294435

namespace A359172

/-- `A086436(n+1)%A143098(n+1)` -/
def P2177302503547294435.Spec : Prop :=
  ∀ n, P2177302503547294435.a n = A359172 (n + 1)

end A359172

/-! ## A359172.P12456639302402216020

`A090885(n+1)%A143098(n+1)`
-/

namespace A359172.P12456639302402216020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090885 (n + 1)) (A143098 (n + 1))

end

end A359172.P12456639302402216020

namespace A359172

/-- `A090885(n+1)%A143098(n+1)` -/
def P12456639302402216020.Spec : Prop :=
  ∀ n, P12456639302402216020.a n = A359172 (n + 1)

end A359172

/-!
# A359174: First of three consecutive primes p, q, r, such that the reverse of p+q+r is divisible by at least one of p, q and r.

The programs for A359174, there is no canonical definition to state claims against.
-/

/-! ## A359174.P4112948629836776412

`A133956(A292944(2*n+3)+A218790(n+1))`
-/

namespace A359174.P4112948629836776412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (A292944 (2 * n + 3) + A218790 (n + 1)).toNat

end

end A359174.P4112948629836776412

/-! ## A359174.P17299746071117584907

`A106306(A258185(n+1))`
-/

namespace A359174.P17299746071117584907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106306 (A258185 (n + 1)).toNat

end

end A359174.P17299746071117584907

/-!
# A359175: a(n) = binomial(2*n-2,n) - 2*(n-1).

The programs for A359175, the canonical program `A359175.P16994080329541965914` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359175 has offset 3).

The definition of A359175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359175.P16994080329541965914

`A001791(n+2)-2*(n+2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359175

/-- `A001791(n+2)-2*(n+2)` -/
def P16994080329541965914.Spec : Prop :=
  ∀ n, P16994080329541965914.a n = A359175 (n + 3)

theorem P16994080329541965914.correct : P16994080329541965914.Spec := by
  intro n
  simp only [A359175, Nat.add_sub_cancel]

end A359175

/-! ## A359175.P9799609452653087876

`record[n*A120304(n)]`
-/

namespace A359175.P9799609452653087876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359175.P9799609452653087876

namespace A359175

/-- `record[n*A120304(n)]` -/
def P9799609452653087876.Spec : Prop :=
  ∀ n, P9799609452653087876.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P6660595676041746396

`record[n*(A000108(n)-2)]`
-/

namespace A359175.P6660595676041746396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000108 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359175.P6660595676041746396

namespace A359175

/-- `record[n*(A000108(n)-2)]` -/
def P6660595676041746396.Spec : Prop :=
  ∀ n, P6660595676041746396.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P14908953670346209464

`(n+2)*A120304(n+2)`
-/

namespace A359175.P14908953670346209464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A120304 (n + 2)

end

end A359175.P14908953670346209464

namespace A359175

/-- `(n+2)*A120304(n+2)` -/
def P14908953670346209464.Spec : Prop :=
  ∀ n, P14908953670346209464.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P12571898601741755056

`A350653(n+3)-(n+2)`
-/

namespace A359175.P12571898601741755056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350653 (n + 3) - (n + 2 : ℤ)

end

end A359175.P12571898601741755056

namespace A359175

/-- `A350653(n+3)-(n+2)` -/
def P12571898601741755056.Spec : Prop :=
  ∀ n, P12571898601741755056.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P14872125028552264198

`(n+2)*(A001453(n+2)-1)`
-/

namespace A359175.P14872125028552264198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A001453 (n + 2) - 1)

end

end A359175.P14872125028552264198

namespace A359175

/-- `(n+2)*(A001453(n+2)-1)` -/
def P14872125028552264198.Spec : Prop :=
  ∀ n, P14872125028552264198.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P12041138510942045326

`A322938(n+1)-(2*n+3)`
-/

namespace A359175.P12041138510942045326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322938 (n + 1) - (2 * n + 3 : ℤ)

end

end A359175.P12041138510942045326

namespace A359175

/-- `A322938(n+1)-(2*n+3)` -/
def P12041138510942045326.Spec : Prop :=
  ∀ n, P12041138510942045326.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P9616768644709575302

`A194124(2*n+1)-A000108(n+2)`
-/

namespace A359175.P9616768644709575302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194124 (2 * n + 1) - A000108 (n + 2)

end

end A359175.P9616768644709575302

namespace A359175

/-- `A194124(2*n+1)-A000108(n+2)` -/
def P9616768644709575302.Spec : Prop :=
  ∀ n, P9616768644709575302.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P3291518918725199750

`A037952(A103517(n+1))-A103517(n+1)`
-/

namespace A359175.P3291518918725199750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A103517 (n + 1)).toNat - A103517 (n + 1)

end

end A359175.P3291518918725199750

namespace A359175

/-- `A037952(A103517(n+1))-A103517(n+1)` -/
def P3291518918725199750.Spec : Prop :=
  ∀ n, P3291518918725199750.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P3911676010716134509

`A359435(n+3)-(A371036(n+2)+A352027(n+2))`
-/

namespace A359175.P3911676010716134509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359435 (n + 3) - (A371036 (n + 2) + A352027 (n + 2))

end

end A359175.P3911676010716134509

namespace A359175

/-- `A359435(n+3)-(A371036(n+2)+A352027(n+2))` -/
def P3911676010716134509.Spec : Prop :=
  ∀ n, P3911676010716134509.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P13516475703815693691

`record[C(2*n, n+1)-2*n]`
-/

namespace A359175.P13516475703815693691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) (n + 1) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359175.P13516475703815693691

namespace A359175

/-- `record[C(2*n, n+1)-2*n]` -/
def P13516475703815693691.Spec : Prop :=
  ∀ n, P13516475703815693691.a n = A359175 (n + 3)

end A359175

/-! ## A359175.P3111472782831092307

`C(2*(n+2), n+1)-2*(n+2)`
-/

namespace A359175.P3111472782831092307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) (n + 1) : ℤ) - (2 * (n + 2) : ℤ)

end

end A359175.P3111472782831092307

namespace A359175

/-- `C(2*(n+2), n+1)-2*(n+2)` -/
def P3111472782831092307.Spec : Prop :=
  ∀ n, P3111472782831092307.a n = A359175 (n + 3)

end A359175

/-!
# A359176: a(n) = binomial(2*n-2,n-1) - n.

The programs for A359176, the canonical program `A359176.P5051099858537090795` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359176 has offset 1).

The definition of A359176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359176.P5051099858537090795

`A000984(n)-(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359176

/-- `A000984(n)-(n+1)` -/
def P5051099858537090795.Spec : Prop :=
  ∀ n, P5051099858537090795.a n = A359176 (n + 1)

theorem P5051099858537090795.correct : P5051099858537090795.Spec := by
  intro n
  simp only [A359176, Nat.add_sub_cancel]

end A359176

/-! ## A359176.P3548591906736110983

`record[a(n-1)/(floor(n/2)/n-1)]-(n+1)` with `a(0)=1`
-/

namespace A359176.P3548591906736110983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℚ)

end

end A359176.P3548591906736110983

namespace A359176

/-- `record[a(n-1)/(floor(n/2)/n-1)]-(n+1)` -/
def P3548591906736110983.Spec : Prop :=
  ∀ n, P3548591906736110983.a n = (A359176 (n + 1) : ℚ)

end A359176

/-! ## A359176.P7905553972309239511

`A045992(n)-1`
-/

namespace A359176.P7905553972309239511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n - 1

end

end A359176.P7905553972309239511

namespace A359176

/-- `A045992(n)-1` -/
def P7905553972309239511.Spec : Prop :=
  ∀ n, P7905553972309239511.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P6155748903027991754

`A014495(2*n)-n`
-/

namespace A359176.P6155748903027991754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * n) - (n : ℤ)

end

end A359176.P6155748903027991754

namespace A359176

/-- `A014495(2*n)-n` -/
def P6155748903027991754.Spec : Prop :=
  ∀ n, P6155748903027991754.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P8882641692939725277

`∑[Δ[A323230(n)]-1]`
-/

namespace A359176.P8882641692939725277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359176.P8882641692939725277

namespace A359176

/-- `∑[Δ[A323230(n)]-1]` -/
def P8882641692939725277.Spec : Prop :=
  ∀ n, P8882641692939725277.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P2316858173735316682

`A134758(n)-Δ[n²]`
-/

namespace A359176.P2316858173735316682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134758 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A359176.P2316858173735316682

namespace A359176

/-- `A134758(n)-Δ[n²]` -/
def P2316858173735316682.Spec : Prop :=
  ∀ n, P2316858173735316682.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P7143720903187711243

`(n+1)*(A120304(n)+1)`
-/

namespace A359176.P7143720903187711243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A120304 n + 1)

end

end A359176.P7143720903187711243

namespace A359176

/-- `(n+1)*(A120304(n)+1)` -/
def P7143720903187711243.Spec : Prop :=
  ∀ n, P7143720903187711243.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P13542615619643176283

`A323230(n+1)-(n+2)`
-/

namespace A359176.P13542615619643176283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 (n + 1) - (n + 2 : ℤ)

end

end A359176.P13542615619643176283

namespace A359176

/-- `A323230(n+1)-(n+2)` -/
def P13542615619643176283.Spec : Prop :=
  ∀ n, P13542615619643176283.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P3241830549221832039

`(n+1)*(A000108(n)-1)`
-/

namespace A359176.P3241830549221832039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 n - 1)

end

end A359176.P3241830549221832039

namespace A359176

/-- `(n+1)*(A000108(n)-1)` -/
def P3241830549221832039.Spec : Prop :=
  ∀ n, P3241830549221832039.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P7763094566462398957

`A001405(2*n)-(n+1)`
-/

namespace A359176.P7763094566462398957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - (n + 1 : ℤ)

end

end A359176.P7763094566462398957

namespace A359176

/-- `A001405(2*n)-(n+1)` -/
def P7763094566462398957.Spec : Prop :=
  ∀ n, P7763094566462398957.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P9925036213170159535

`A063886(2*n)-(n+1)`
-/

namespace A359176.P9925036213170159535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - (n + 1 : ℤ)

end

end A359176.P9925036213170159535

namespace A359176

/-- `A063886(2*n)-(n+1)` -/
def P9925036213170159535.Spec : Prop :=
  ∀ n, P9925036213170159535.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P15057517513690235993

`A081668(2*n)-(n+1)`
-/

namespace A359176.P15057517513690235993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - (n + 1 : ℤ)

end

end A359176.P15057517513690235993

namespace A359176

/-- `A081668(2*n)-(n+1)` -/
def P15057517513690235993.Spec : Prop :=
  ∀ n, P15057517513690235993.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P9606956155079559703

`A089849(2*n)-(n+1)`
-/

namespace A359176.P9606956155079559703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (2 * n) - (n + 1 : ℤ)

end

end A359176.P9606956155079559703

namespace A359176

/-- `A089849(2*n)-(n+1)` -/
def P9606956155079559703.Spec : Prop :=
  ∀ n, P9606956155079559703.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P14205965770629625898

`A126869(2*n)-(n+1)`
-/

namespace A359176.P14205965770629625898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - (n + 1 : ℤ)

end

end A359176.P14205965770629625898

namespace A359176

/-- `A126869(2*n)-(n+1)` -/
def P14205965770629625898.Spec : Prop :=
  ∀ n, P14205965770629625898.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P1927055007147007119

`A126930(2*n)-(n+1)`
-/

namespace A359176.P1927055007147007119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - (n + 1 : ℤ)

end

end A359176.P1927055007147007119

namespace A359176

/-- `A126930(2*n)-(n+1)` -/
def P1927055007147007119.Spec : Prop :=
  ∀ n, P1927055007147007119.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P953662554106603182

`A128014(2*n)-(n+1)`
-/

namespace A359176.P953662554106603182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 * n) - (n + 1 : ℤ)

end

end A359176.P953662554106603182

namespace A359176

/-- `A128014(2*n)-(n+1)` -/
def P953662554106603182.Spec : Prop :=
  ∀ n, P953662554106603182.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P13721809837570826015

`A129383(2*n)-(n+1)`
-/

namespace A359176.P13721809837570826015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (2 * n) - (n + 1 : ℤ)

end

end A359176.P13721809837570826015

namespace A359176

/-- `A129383(2*n)-(n+1)` -/
def P13721809837570826015.Spec : Prop :=
  ∀ n, P13721809837570826015.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P7880051549871799659

`A318910(2*n)-(n+1)`
-/

namespace A359176.P7880051549871799659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318910 (2 * n) - (n + 1 : ℤ)

end

end A359176.P7880051549871799659

namespace A359176

/-- `A318910(2*n)-(n+1)` -/
def P7880051549871799659.Spec : Prop :=
  ∀ n, P7880051549871799659.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P2576897568707641056

`A051920(2*n)-(n+2)`
-/

namespace A359176.P2576897568707641056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (2 * n) - (n + 2 : ℤ)

end

end A359176.P2576897568707641056

namespace A359176

/-- `A051920(2*n)-(n+2)` -/
def P2576897568707641056.Spec : Prop :=
  ∀ n, P2576897568707641056.a n = A359176 (n + 1)

end A359176

/-! ## A359176.P5747324534140003557

`A201686(2*n)-(n-1)`
-/

namespace A359176.P5747324534140003557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (2 * n) - ((n : ℤ) - 1)

end

end A359176.P5747324534140003557

namespace A359176

/-- `A201686(2*n)-(n-1)` -/
def P5747324534140003557.Spec : Prop :=
  ∀ n, P5747324534140003557.a n = A359176 (n + 1)

end A359176

/-!
# A359178: Numbers with a unique smallest prime exponent.

The programs for A359178, there is no canonical definition to state claims against.
-/

/-! ## A359178.P10702455564892073022

`A130091(A000196((n+2)²))`
-/

namespace A359178.P10702455564892073022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A000196 ((n + 2) ^ 2)).toNat

end

end A359178.P10702455564892073022

/-! ## A359178.P1612995586525924542

`A130091(A175781((n+2)²))`
-/

namespace A359178.P1612995586525924542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A175781 ((n + 2) ^ 2)).toNat

end

end A359178.P1612995586525924542

/-! ## A359178.P8384629291389651699

`A130091(A272679((n+2)²))`
-/

namespace A359178.P8384629291389651699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A272679 ((n + 2) ^ 2)).toNat

end

end A359178.P8384629291389651699

/-! ## A359178.P5288773374527012900

`A130091(A218993((n+1)*(n+2)))`
-/

namespace A359178.P5288773374527012900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A218993 ((n + 1) * (n + 2))).toNat

end

end A359178.P5288773374527012900

/-! ## A359178.P6256396696669992560

`A130091(A057427((n+1)²)+n+1)`
-/

namespace A359178.P6256396696669992560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A057427 ((n + 1) ^ 2) + (n + 1 : ℤ)).toNat

end

end A359178.P6256396696669992560

/-!
# A359181: Number of commutative BCK-algebras of order n up to isomorphism.

The programs for A359181, there is no canonical definition to state claims against.
-/

/-! ## A359181.P13248600239712973914

`A108141(A136704(n+2))`
-/

namespace A359181.P13248600239712973914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A136704 (n + 2)).toNat

end

end A359181.P13248600239712973914

/-! ## A359181.P17510004663668708829

`A001462(∑[A002931(n+2)])`
-/

namespace A359181.P17510004663668708829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002931 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A359181.P17510004663668708829

/-! ## A359181.P890812851836115389

`A172471(round(∑[A344805(n+5)]^(n/3)))`
-/

namespace A359181.P890812851836115389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344805 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat

end

end A359181.P890812851836115389

/-!
# A359182: Totient of numbers of least prime signature: a(n) = A000010(A025487(n)).

The programs for A359182, there is no canonical definition to state claims against.
-/

/-! ## A359182.P18039125112708950223

`A000010(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359182.P18039125112708950223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A025487 (n + 1)).toNat

end

end A359182.P18039125112708950223

/-! ## A359182.P9433469695563317464

`A000010(A247451(n+1))*A307107(n+1)`
-/

namespace A359182.P9433469695563317464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A247451 (n + 1)).toNat * A307107 (n + 1)

end

end A359182.P9433469695563317464

/-! ## A359182.P1838801955558206380

`A000010(record[A329899(n+1)])`
-/

namespace A359182.P1838801955558206380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359182.P1838801955558206380

/-! ## A359182.P14417701230396660982

`A000010(record[A051466(n+2)])`
-/

namespace A359182.P14417701230396660982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359182.P14417701230396660982

/-! ## A359182.P17676484717288900244

`A000010(∪[A364710(n+1), A070175(n)])`
-/

namespace A359182.P17676484717288900244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A359182.P17676484717288900244

/-! ## A359182.P1553641338440230324

`A000010(A181817(n+1)/A181816(n+1))`
-/

namespace A359182.P1553641338440230324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A359182.P1553641338440230324

/-! ## A359182.P2350099646053487642

`A000010(∪[A181824(n+1), A181827(n+1)])`
-/

namespace A359182.P2350099646053487642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181827 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A359182.P2350099646053487642

/-! ## A359182.P11893969565331587033

`A160595(A025487(1-char[1]+n))`
-/

namespace A359182.P11893969565331587033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (A025487 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat

end

end A359182.P11893969565331587033

/-! ## A359182.P7401968402219494745

`A000010(record[A328479(n+1)])`
-/

namespace A359182.P7401968402219494745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359182.P7401968402219494745

/-! ## A359182.P17573556289114977975

`A000010(record[A046523(n+1)])`
-/

namespace A359182.P17573556289114977975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359182.P17573556289114977975

/-!
# A359184: Numbers k such that 30*k - 1, 30*k + 1, 30*k^2 - 1 and 30*k^2 + 1 are all prime.

The programs for A359184, there is no canonical definition to state claims against.
-/

/-! ## A359184.P12583563625031256862

`∩[A176114(n+1), A283867(n+1)]`
-/

namespace A359184.P12583563625031256862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359184.P12583563625031256862

/-!
# A359185: Numbers k such that for any positive integers x,y, if x*y=k then (x+y)^2+1 is a prime number.

The programs for A359185, there is no canonical definition to state claims against.
-/

/-! ## A359185.P5236718423060463998

`eq[A115073(A069003(n+1)), A214716(n+1)]`
-/

namespace A359185.P5236718423060463998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115073 (A069003 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359185.P5236718423060463998

/-! ## A359185.P17286475667194813054

`record[A046933(A068535(n+1)+2)]`
-/

namespace A359185.P17286475667194813054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (A068535 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359185.P17286475667194813054

/-! ## A359185.P7907865989699289202

`A156081(A037095(n+1))+record[and(2*n, -n)]`
-/

namespace A359185.P7907865989699289202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156081 (A037095 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359185.P7907865989699289202

/-! ## A359185.P6102239564912728870

`eq[A030308(A353853(n)), A069003(n+1)]`
-/

namespace A359185.P6102239564912728870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A353853 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359185.P6102239564912728870

/-! ## A359185.P13300876725422997041

`lt[A139250(n), A174257(A092951(n+1))]`
-/

namespace A359185.P13300876725422997041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A092951 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359185.P13300876725422997041

/-!
# A359186: a(n) = Sum_{d|n} d * 4^(d-1).

The programs for A359186, the canonical program `A359186.P9110849259159057107` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359186 has offset 1).

The definition of A359186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359186.P9110849259159057107

`∑{d}[n+1, 4^(#-1)*#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359186

/-- `∑{d}[n+1, 4^(#-1)*#]` -/
def P9110849259159057107.Spec : Prop :=
  ∀ n, P9110849259159057107.a n = (A359186 (n + 1) : ℚ)

end A359186

/-! ## A359186.P13073280912888319443

`A000027(∑{d}[n+1, A002697(#)])`
-/

namespace A359186.P13073280912888319443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), A002697 d).toNat

end

end A359186.P13073280912888319443

namespace A359186

/-- `A000027(∑{d}[n+1, A002697(#)])` -/
def P13073280912888319443.Spec : Prop :=
  ∀ n, P13073280912888319443.a n = A359186 (n + 1)

end A359186

/-! ## A359186.P4992029784860765814

`A006520(A339684(n+1))`
-/

namespace A359186.P4992029784860765814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006520 (A339684 (n + 1)).toNat

end

end A359186.P4992029784860765814

namespace A359186

/-- `A006520(A339684(n+1))` -/
def P4992029784860765814.Spec : Prop :=
  ∀ n, P4992029784860765814.a n = A359186 (n + 1)

end A359186

/-!
# A359187: Decimal expansion of the real part of (-sqrt(2))^^9, where ^^ indicates tetration or hyper-4 (e.g., 2^^4 = 2^(2^(2^2))).

The programs for A359187, there is no canonical definition to state claims against.
-/

/-! ## A359187.P1995941327674060986

`A000120(floor((A171966(n)/A003376(2*(n+2)))^n))`
-/

namespace A359187.P1995941327674060986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊((A171966 n : ℚ) / (A003376 (2 * (n + 2)) : ℚ)) ^ n⌋.toNat

end

end A359187.P1995941327674060986

/-! ## A359187.P11396325572489801541

`A065120(C(∑[n+2]-1, 25*n))`
-/

namespace A359187.P11396325572489801541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1).toNat (25 * n))

end

end A359187.P11396325572489801541

/-! ## A359187.P8477583312600997385

`and(floor(2/acot(3*n)), A307608(2*(n+1)))²`
-/

namespace A359187.P8477583312600997385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ (A307608 (2 * (n + 1))) ^ 2

end

end A359187.P8477583312600997385

/-! ## A359187.P5999509167491628060

`and(12*n, A326334(a(n-1)/n^(-1)+n))` with `a(0)=1`
-/

namespace A359187.P5999509167491628060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (12 * n : ℤ) (A326334 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ) + (n : ℚ))).toNat)

end

end A359187.P5999509167491628060

/-! ## A359187.P15690195958821698158

`A087780(A105185(n+1))`
-/

namespace A359187.P15690195958821698158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A105185 (n + 1)).toNat

end

end A359187.P15690195958821698158

/-!
# A359189: a(n) = Sum_{d|n} d * 3^(n/d-1).

The programs for A359189, the canonical program `A359189.P3487482950995534039` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359189 has offset 1).

The definition of A359189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359189.P3487482950995534039

`∑{d}[n+1, 3^((n+1)/#-1)*#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359189

/-- `∑{d}[n+1, 3^((n+1)/#-1)*#]` -/
def P3487482950995534039.Spec : Prop :=
  ∀ n, P3487482950995534039.a n = (A359189 (n + 1) : ℝ)

end A359189

/-!
# A359190: a(n) = Sum_{d|n} d * 4^(n/d-1).

The programs for A359190, the canonical program `A359190.P10021431323358399263` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359190 has offset 1).

The definition of A359190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359190.P10021431323358399263

`∑{d}[n+1, 4^((n+1)/#-1)*#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359190

/-- `∑{d}[n+1, 4^((n+1)/#-1)*#]` -/
def P10021431323358399263.Spec : Prop :=
  ∀ n, P10021431323358399263.a n = (A359190 (n + 1) : ℝ)

end A359190

/-!
# A359191: Number of length n inversion sequences avoiding the patterns 010 and 110.

The programs for A359191, there is no canonical definition to state claims against.
-/

/-! ## A359191.P5740200086314785251

`A279559(n)+A029905(A025597(n))`
-/

namespace A359191.P5740200086314785251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279559 n + A029905 (A025597 n).toNat

end

end A359191.P5740200086314785251

/-! ## A359191.P2841674351255886800

`A279559(n)+A086017(A001791(n))`
-/

namespace A359191.P2841674351255886800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279559 n + A086017 (A001791 n).toNat

end

end A359191.P2841674351255886800

/-! ## A359191.P17336085497069914519

`A279559(n)+A058841(A058834(n))`
-/

namespace A359191.P17336085497069914519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279559 n + A058841 (A058834 n).toNat

end

end A359191.P17336085497069914519

/-! ## A359191.P5445754174455726798

`A279559(n)+A112315(A007299(n))`
-/

namespace A359191.P5445754174455726798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279559 n + A112315 (A007299 n).toNat

end

end A359191.P5445754174455726798

/-!
# A359192: a(n) is the smallest square pyramidal number with exactly n prime factors (counted with multiplicity).

The programs for A359192, there is no canonical definition to state claims against.
-/

/-! ## A359192.P5890578825127530007

`A000330(A359193(n))`
-/

namespace A359192.P5890578825127530007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A359193 n).toNat

end

end A359192.P5890578825127530007

/-! ## A359192.P9672972366403166836

`A358927(n+2)/A059139(A059474(3*n+4))`
-/

namespace A359192.P9672972366403166836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358927 (n + 2) : ℚ) / (A059139 (A059474 (3 * n + 4)).toNat : ℚ)

end

end A359192.P9672972366403166836

/-! ## A359192.P16502019431898472044

`A000330(eq[A216440(n+1), A243056(n+1)])`
-/

namespace A359192.P16502019431898472044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A359192.P16502019431898472044

/-! ## A359192.P17078405035346976435

`A000330(lt[A233547(n+1), A052409(n+1)])`
-/

namespace A359192.P17078405035346976435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359192.P17078405035346976435

/-! ## A359192.P3206475611246130369

`A000330(eq[A109008(n), A141564(n+1)])`
-/

namespace A359192.P3206475611246130369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A359192.P3206475611246130369

/-!
# A359193: a(n) is the index of the smallest square pyramidal number with exactly n prime factors (counted with multiplicity).

The programs for A359193, there is no canonical definition to state claims against.
-/

/-! ## A359193.P12333569417172020845

`A008615(3*A359090(n+2))`
-/

namespace A359193.P12333569417172020845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A359090 (n + 2)).toNat

end

end A359193.P12333569417172020845

/-! ## A359193.P9063919253911194413

`eq[A216440(n+1), A243056(n+1)]`
-/

namespace A359193.P9063919253911194413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359193.P9063919253911194413

/-! ## A359193.P2049018255620988467

`lt[A233547(n+1), A052409(n+1)]`
-/

namespace A359193.P2049018255620988467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359193.P2049018255620988467

/-! ## A359193.P1591349245967859204

`lt[2*A007947(n+1), A110647(n)]`
-/

namespace A359193.P1591349245967859204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359193.P1591349245967859204

/-! ## A359193.P5351782062595995708

`lt[A005843(A007947(n+1)), A110647(n)]`
-/

namespace A359193.P5351782062595995708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359193.P5351782062595995708

/-!
# A359194: Binary complement of 3*n.

The programs for A359194, the canonical program `A359194.P7714065540488624570` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359194 has offset 0).

The definition of A359194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035327, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359194.P7714065540488624570

`A035327(3*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359194

/-- `A035327(3*n)` -/
def P7714065540488624570.Spec : Prop :=
  ∀ n, P7714065540488624570.a n = A359194 n

theorem P7714065540488624570.correct : P7714065540488624570.Spec := by
  intro n
  simp only [A359194]

end A359194

/-! ## A359194.P2212835908440388740

`and(-A016777(n), A000203(A062383(n)))`
-/

namespace A359194.P2212835908440388740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A016777 n) (A000203 (A062383 n).toNat)

end

end A359194.P2212835908440388740

namespace A359194

/-- `and(-A016777(n), A000203(A062383(n)))` -/
def P2212835908440388740.Spec : Prop :=
  ∀ n, P2212835908440388740.a n = A359194 n

end A359194

/-! ## A359194.P16107914225970182149

`and(n-(4*n+1), A003817(2*n+1))`
-/

namespace A359194.P16107914225970182149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - (4 * n + 1 : ℤ)) (A003817 (2 * n + 1))

end

end A359194.P16107914225970182149

namespace A359194

/-- `and(n-(4*n+1), A003817(2*n+1))` -/
def P16107914225970182149.Spec : Prop :=
  ∀ n, P16107914225970182149.a n = A359194 n

end A359194

/-! ## A359194.P2240372058294377874

`A035327(A163617(n)+A048735(n))-A048735(n)`
-/

namespace A359194.P2240372058294377874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A163617 n + A048735 n).toNat - A048735 n

end

end A359194.P2240372058294377874

namespace A359194

/-- `A035327(A163617(n)+A048735(n))-A048735(n)` -/
def P2240372058294377874.Spec : Prop :=
  ∀ n, P2240372058294377874.a n = A359194 n

end A359194

/-! ## A359194.P8890740871217508898

`A003817(abs(1-2*n)+n)-n-2*n`
-/

namespace A359194.P8890740871217508898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (|1 - (2 * n : ℤ)| + (n : ℤ)).toNat - (n : ℤ) - (2 * n : ℤ)

end

end A359194.P8890740871217508898

namespace A359194

/-- `A003817(abs(1-2*n)+n)-n-2*n` -/
def P8890740871217508898.Spec : Prop :=
  ∀ n, P8890740871217508898.a n = A359194 n

end A359194

/-! ## A359194.P4993773282943426661

`A028310(n)+A003817(3*n)-4*n`
-/

namespace A359194.P4993773282943426661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A003817 (3 * n) - (4 * n : ℤ))

end

end A359194.P4993773282943426661

namespace A359194

/-- `A028310(n)+A003817(3*n)-4*n` -/
def P4993773282943426661.Spec : Prop :=
  ∀ n, P4993773282943426661.a n = A359194 n

end A359194

/-! ## A359194.P17354948817165313776

`A080079(3*n+1)%A053644(A054429(3*n+2))`
-/

namespace A359194.P17354948817165313776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080079 (3 * n + 1)) (A053644 (A054429 (3 * n + 2)).toNat)

end

end A359194.P17354948817165313776

namespace A359194

/-- `A080079(3*n+1)%A053644(A054429(3*n+2))` -/
def P17354948817165313776.Spec : Prop :=
  ∀ n, P17354948817165313776.a n = A359194 n

end A359194

/-! ## A359194.P13653156495695610660

`A080079(A016777(n))%A053644(A006068(3*n+2))`
-/

namespace A359194.P13653156495695610660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080079 (A016777 n).toNat) (A053644 (A006068 (3 * n + 2)).toNat)

end

end A359194.P13653156495695610660

namespace A359194

/-- `A080079(A016777(n))%A053644(A006068(3*n+2))` -/
def P13653156495695610660.Spec : Prop :=
  ∀ n, P13653156495695610660.a n = A359194 n

end A359194

/-! ## A359194.P5520830709792121788

`A003817(A233583(3*n+1))-A233583(3*n+1)`
-/

namespace A359194.P5520830709792121788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A233583 (3 * n + 1)).toNat - A233583 (3 * n + 1)

end

end A359194.P5520830709792121788

namespace A359194

/-- `A003817(A233583(3*n+1))-A233583(3*n+1)` -/
def P5520830709792121788.Spec : Prop :=
  ∀ n, P5520830709792121788.a n = A359194 n

end A359194

/-! ## A359194.P8256562585798114411

`A132226(3*n+1)-A358217(p?[round(8*n/7)]²)`
-/

namespace A359194.P8256562585798114411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132226 (3 * n + 1) - A358217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A359194.P8256562585798114411

namespace A359194

/-- `A132226(3*n+1)-A358217(p?[round(8*n/7)]²)` -/
def P8256562585798114411.Spec : Prop :=
  ∀ n, P8256562585798114411.a n = A359194 n

end A359194

/-!
# A359195: Positive integers k with a smaller fraction of powers (mod k) than any smaller positive integers.

The programs for A359195, there is no canonical definition to state claims against.
-/

/-! ## A359195.P8387082066490954218

`∩[A039163(n+1), A377138(n+1)]`
-/

namespace A359195.P8387082066490954218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359195.P8387082066490954218

/-! ## A359195.P3720836167212705904

`∩[A039207(n+1), A377138(n+1)]`
-/

namespace A359195.P3720836167212705904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359195.P3720836167212705904

/-! ## A359195.P12947370580293731176

`A049599(A000142(n))*A329506(n)`
-/

namespace A359195.P12947370580293731176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A000142 n).toNat * A329506 n

end

end A359195.P12947370580293731176

/-! ## A359195.P8111650362302178687

`record[A212173(A000040(n+1)-A000005(n+1))]`
-/

namespace A359195.P8111650362302178687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212173 (A000040 (n + 1) - A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359195.P8111650362302178687

/-!
# A359196: a(n) is the number of subsets of the divisors of n which sum to n+1.

The programs for A359196, there is no canonical definition to state claims against.
-/

/-! ## A359196.P6138213954179295700

`A119026(A001221(n+1)^A266477(n))`
-/

namespace A359196.P6138213954179295700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (SequenceMachineLib.roundAway ((A001221 (n + 1) : ℚ) ^ (A266477 n : ℤ))).toNat

end

end A359196.P6138213954179295700

/-! ## A359196.P13430804779226344697

`A070939(A318679(n+1))%A213363(n+1)`
-/

namespace A359196.P13430804779226344697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A318679 (n + 1)).toNat) (A213363 (n + 1))

end

end A359196.P13430804779226344697

/-! ## A359196.P10859085208364036924

`A180346(n+1)%A328401(n+1)`
-/

namespace A359196.P10859085208364036924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180346 (n + 1)) (A328401 (n + 1))

end

end A359196.P10859085208364036924

/-! ## A359196.P15136314476624392596

`A340827(n+1)+A010815(A056994(n+1))`
-/

namespace A359196.P15136314476624392596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340827 (n + 1) + A010815 (A056994 (n + 1)).toNat

end

end A359196.P15136314476624392596

/-! ## A359196.P7984805940891527952

`A271410(A318679(n+1))%A353399(2*n+1)`
-/

namespace A359196.P7984805940891527952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271410 (A318679 (n + 1)).toNat) (A353399 (2 * n + 1))

end

end A359196.P7984805940891527952

/-!
# A359197: Least number k having n subsets of its divisors whose sum is k+1.

The programs for A359197, there is no canonical definition to state claims against.
-/

/-! ## A359197.P8816211772878304542

`A271269(a(n-1))` with `a(0)=1, a(1)=2, a(2)=18, a(3)=12`
-/

namespace A359197.P8816211772878304542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 18, 12] fun n a =>
  A271269 (a (n - 1)).toNat

end

end A359197.P8816211772878304542

/-!
# A359198: Numbers k such that 2*phi(k)-k is a prime, where phi is A000010.

The programs for A359198, there is no canonical definition to state claims against.
-/

/-! ## A359198.P11709598329987213463

`A102564(A043885(n+2))`
-/

namespace A359198.P11709598329987213463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102564 (A043885 (n + 2)).toNat

end

end A359198.P11709598329987213463

