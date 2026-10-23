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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A176702: Triangle T(n,k) read by rows. A051731(n,k)-A051731(n,k+1).

The programs for A176702, the canonical program `A176702.P2242900337551508736` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176702 has offset 1).

The definition of A176702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176702.P2242900337551508736

`char[∑[n-1]]-Δ[(2^A127093(n+1)-1)%2]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A176702

/-- `char[∑[n-1]]-Δ[(2^A127093(n+1)-1)%2]` -/
def P2242900337551508736.Spec : Prop :=
  ∀ n, P2242900337551508736.a n = A176702 (n + 1)

theorem P2242900337551508736.correct : P2242900337551508736.Spec := by
  intro n
  simp only [A176702, Nat.add_sub_cancel]

end A176702

/-! ## A176702.P5353870539122605511

`A051731(n+1)+A051731(n+1)-A128184(n+1)`
-/

namespace A176702.P5353870539122605511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A051731 (n + 1) - A128184 (n + 1))

end

end A176702.P5353870539122605511

namespace A176702

/-- `A051731(n+1)+A051731(n+1)-A128184(n+1)` -/
def P5353870539122605511.Spec : Prop :=
  ∀ n, P5353870539122605511.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P13150516390871944068

`char[∑[n-1]]-Δ[A051731(n+1)]`
-/

namespace A176702.P13150516390871944068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A176702.P13150516390871944068

namespace A176702

/-- `char[∑[n-1]]-Δ[A051731(n+1)]` -/
def P13150516390871944068.Spec : Prop :=
  ∀ n, P13150516390871944068.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P174897085713994662

`char[∑[n]-2]-Δ[A155031(n+1)]`
-/

namespace A176702.P174897085713994662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155031 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A176702.P174897085713994662

namespace A176702

/-- `char[∑[n]-2]-Δ[A155031(n+1)]` -/
def P174897085713994662.Spec : Prop :=
  ∀ n, P174897085713994662.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P3425148738391676339

`char[∑[n-1]]-Δ[A134560(n+1)%2]`
-/

namespace A176702.P3425148738391676339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134560 (n + 1)) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A176702.P3425148738391676339

namespace A176702

/-- `char[∑[n-1]]-Δ[A134560(n+1)%2]` -/
def P3425148738391676339.Spec : Prop :=
  ∀ n, P3425148738391676339.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P10937753745806816496

`char[∑[n-1]]-Δ[A143315(n+1)%2]`
-/

namespace A176702.P10937753745806816496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143315 (n + 1)) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A176702.P10937753745806816496

namespace A176702

/-- `char[∑[n-1]]-Δ[A143315(n+1)%2]` -/
def P10937753745806816496.Spec : Prop :=
  ∀ n, P10937753745806816496.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P10070947531739508906

`Δ[A003056(n)-A051731(n+1)]`
-/

namespace A176702.P10070947531739508906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176702.P10070947531739508906

namespace A176702

/-- `Δ[A003056(n)-A051731(n+1)]` -/
def P10070947531739508906.Spec : Prop :=
  ∀ n, P10070947531739508906.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P8283308248139193538

`A023531(n)+Δ[-A051731(n+1)]`
-/

namespace A176702.P8283308248139193538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + (f1 (n + 1) - f1 n)

end

end A176702.P8283308248139193538

namespace A176702

/-- `A023531(n)+Δ[-A051731(n+1)]` -/
def P8283308248139193538.Spec : Prop :=
  ∀ n, P8283308248139193538.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P12366215746734036691

`Δ[A002024(n+1)-A051731(n+1)]`
-/

namespace A176702.P12366215746734036691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176702.P12366215746734036691

namespace A176702

/-- `Δ[A002024(n+1)-A051731(n+1)]` -/
def P12366215746734036691.Spec : Prop :=
  ∀ n, P12366215746734036691.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P13215832258673911376

`Δ[A133196(n+1)-A051731(n+1)]`
-/

namespace A176702.P13215832258673911376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (n + 1) - A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176702.P13215832258673911376

namespace A176702

/-- `Δ[A133196(n+1)-A051731(n+1)]` -/
def P13215832258673911376.Spec : Prop :=
  ∀ n, P13215832258673911376.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P18033039798773451184

`A051731(n+1)+A023531(n)-A051731(n+2)`
-/

namespace A176702.P18033039798773451184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A023531 n - A051731 (n + 2))

end

end A176702.P18033039798773451184

namespace A176702

/-- `A051731(n+1)+A023531(n)-A051731(n+2)` -/
def P18033039798773451184.Spec : Prop :=
  ∀ n, P18033039798773451184.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P10643275446234500716

`A023531(n+1)+A155031(n+1)-A155031(n+2)`
-/

namespace A176702.P10643275446234500716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) + (A155031 (n + 1) - A155031 (n + 2))

end

end A176702.P10643275446234500716

namespace A176702

/-- `A023531(n+1)+A155031(n+1)-A155031(n+2)` -/
def P10643275446234500716.Spec : Prop :=
  ∀ n, P10643275446234500716.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P14459392132385595507

`A051731(n+1)-A051127(n+2)*A051731(n+2)`
-/

namespace A176702.P14459392132385595507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) - A051127 (n + 2) * A051731 (n + 2)

end

end A176702.P14459392132385595507

namespace A176702

/-- `A051731(n+1)-A051127(n+2)*A051731(n+2)` -/
def P14459392132385595507.Spec : Prop :=
  ∀ n, P14459392132385595507.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P16964059798986259747

`A051731(n+1)-A051731(n+2)*A177978(n+2)`
-/

namespace A176702.P16964059798986259747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) - A051731 (n + 2) * A177978 (n + 2)

end

end A176702.P16964059798986259747

namespace A176702

/-- `A051731(n+1)-A051731(n+2)*A177978(n+2)` -/
def P16964059798986259747.Spec : Prop :=
  ∀ n, P16964059798986259747.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P5104539930360852962

`A051731(n+1)-A051731(n+2)*A191904(n+2)`
-/

namespace A176702.P5104539930360852962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) - A051731 (n + 2) * A191904 (n + 2)

end

end A176702.P5104539930360852962

namespace A176702

/-- `A051731(n+1)-A051731(n+2)*A191904(n+2)` -/
def P5104539930360852962.Spec : Prop :=
  ∀ n, P5104539930360852962.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P4665708760500524276

`A051731(n+1)-A051731(n+2)*A279907(n+2)`
-/

namespace A176702.P4665708760500524276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) - A051731 (n + 2) * A279907 (n + 2)

end

end A176702.P4665708760500524276

namespace A176702

/-- `A051731(n+1)-A051731(n+2)*A279907(n+2)` -/
def P4665708760500524276.Spec : Prop :=
  ∀ n, P4665708760500524276.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P1939681160325446800

`A051731(n+1)-A051731(n+2)*A349317(n+2)`
-/

namespace A176702.P1939681160325446800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) - A051731 (n + 2) * A349317 (n + 2)

end

end A176702.P1939681160325446800

namespace A176702

/-- `A051731(n+1)-A051731(n+2)*A349317(n+2)` -/
def P1939681160325446800.Spec : Prop :=
  ∀ n, P1939681160325446800.a n = A176702 (n + 1)

end A176702

/-! ## A176702.P9787520984524551642

`Δ[A123578(n+1)-A051731(n+1)]`
-/

namespace A176702.P9787520984524551642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) - A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176702.P9787520984524551642

namespace A176702

/-- `Δ[A123578(n+1)-A051731(n+1)]` -/
def P9787520984524551642.Spec : Prop :=
  ∀ n, P9787520984524551642.a n = A176702 (n + 1)

end A176702

/-!
# A176704: Number of twin primes between non-twin prime(n) and non-twin prime(n+1).

The programs for A176704, the canonical program `A176704.P13248784803027545844` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176704 has offset 1).

The definition of A176704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176704.P13248784803027545844

`Δ[A176656(n+1)]-1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A176704

/-- `Δ[A176656(n+1)]-1` -/
def P13248784803027545844.Spec : Prop :=
  ∀ n, P13248784803027545844.a n = A176704 (n + 1)

theorem P13248784803027545844.correct : P13248784803027545844.Spec := by
  intro n
  simp only [A176704, Nat.add_sub_cancel]

end A176704

/-! ## A176704.P29204724137186938

`Δ[A000720(A007510(n+1))]-1`
-/

namespace A176704.P29204724137186938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A176704.P29204724137186938

namespace A176704

/-- `Δ[A000720(A007510(n+1))]-1` -/
def P29204724137186938.Spec : Prop :=
  ∀ n, P29204724137186938.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P14909528968591789815

`A004883(Δ[A000720(A007510(n+1))])`
-/

namespace A176704.P14909528968591789815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (f1 (n + 1) - f1 n).toNat

end

end A176704.P14909528968591789815

namespace A176704

/-- `A004883(Δ[A000720(A007510(n+1))])` -/
def P14909528968591789815.Spec : Prop :=
  ∀ n, P14909528968591789815.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P17493079358009155401

`A023443(Δ[A000720(A007510(n+1))])`
-/

namespace A176704.P17493079358009155401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A176704.P17493079358009155401

namespace A176704

/-- `A023443(Δ[A000720(A007510(n+1))])` -/
def P17493079358009155401.Spec : Prop :=
  ∀ n, P17493079358009155401.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P14251628408490165877

`A033619(Δ[A000720(A007510(n+1))])`
-/

namespace A176704.P14251628408490165877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A176704.P14251628408490165877

namespace A176704

/-- `A033619(Δ[A000720(A007510(n+1))])` -/
def P14251628408490165877.Spec : Prop :=
  ∀ n, P14251628408490165877.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P13968018723804311246

`A004895(Δ[A061395(A007510(n+1))])`
-/

namespace A176704.P13968018723804311246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (f1 (n + 1) - f1 n).toNat

end

end A176704.P13968018723804311246

namespace A176704

/-- `A004895(Δ[A061395(A007510(n+1))])` -/
def P13968018723804311246.Spec : Prop :=
  ∀ n, P13968018723804311246.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P4345814093914551470

`A247750(Δ[A000720(A007510(n+1))])`
-/

namespace A176704.P4345814093914551470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247750 (f1 (n + 1) - f1 n).toNat

end

end A176704.P4345814093914551470

namespace A176704

/-- `A247750(Δ[A000720(A007510(n+1))])` -/
def P4345814093914551470.Spec : Prop :=
  ∀ n, P4345814093914551470.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P13321957859684220302

`Δ[A230980(A007510(n+1)-1)]-1`
-/

namespace A176704.P13321957859684220302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A007510 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A176704.P13321957859684220302

namespace A176704

/-- `Δ[A230980(A007510(n+1)-1)]-1` -/
def P13321957859684220302.Spec : Prop :=
  ∀ n, P13321957859684220302.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P8946089207032376852

`A002113(Δ[A026233(A007510(n+1))])`
-/

namespace A176704.P8946089207032376852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (f1 (n + 1) - f1 n).toNat

end

end A176704.P8946089207032376852

namespace A176704

/-- `A002113(Δ[A026233(A007510(n+1))])` -/
def P8946089207032376852.Spec : Prop :=
  ∀ n, P8946089207032376852.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P7453686917413567434

`A004839(Δ[A036234(A007510(n+1))])`
-/

namespace A176704.P7453686917413567434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004839 (f1 (n + 1) - f1 n).toNat

end

end A176704.P7453686917413567434

namespace A176704

/-- `A004839(Δ[A036234(A007510(n+1))])` -/
def P7453686917413567434.Spec : Prop :=
  ∀ n, P7453686917413567434.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P8609141787446360922

`A004895(Δ[A036234(A007510(n+1))])`
-/

namespace A176704.P8609141787446360922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (f1 (n + 1) - f1 n).toNat

end

end A176704.P8609141787446360922

namespace A176704

/-- `A004895(Δ[A036234(A007510(n+1))])` -/
def P8609141787446360922.Spec : Prop :=
  ∀ n, P8609141787446360922.a n = A176704 (n + 1)

end A176704

/-! ## A176704.P17293419820133075937

`A004873(Δ[A056239(A007510(n+1))])`
-/

namespace A176704.P17293419820133075937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (f1 (n + 1) - f1 n).toNat

end

end A176704.P17293419820133075937

namespace A176704

/-- `A004873(Δ[A056239(A007510(n+1))])` -/
def P17293419820133075937.Spec : Prop :=
  ∀ n, P17293419820133075937.a n = A176704 (n + 1)

end A176704

/-!
# A176705: Number of semiprimes between single (or isolated or non-twin) prime(n) and single (or isolated or non-twin) prime(n+1).

The programs for A176705, the canonical program `A176705.P6967112970786651348` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176705 has offset 1).

The definition of A176705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176705.P13307675643097845250

`Δ[A072000(A007510(n+1))]`
-/

namespace A176705.P13307675643097845250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A007510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176705.P13307675643097845250

namespace A176705

/-- `Δ[A072000(A007510(n+1))]` -/
def P13307675643097845250.Spec : Prop :=
  ∀ n, P13307675643097845250.a n = A176705 (n + 1)

end A176705

/-! ## A176705.P13114971946105275592

`Δ[A072000(A167277(n+1))]`
-/

namespace A176705.P13114971946105275592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A167277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176705.P13114971946105275592

namespace A176705

/-- `Δ[A072000(A167277(n+1))]` -/
def P13114971946105275592.Spec : Prop :=
  ∀ n, P13114971946105275592.a n = A176705 (n + 1)

end A176705

/-! ## A176705.P6967112970786651348

`Δ[A072000(p?[A062729(n+1)])]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176705

/-- `Δ[A072000(p?[A062729(n+1)])]` -/
def P6967112970786651348.Spec : Prop :=
  ∀ n, P6967112970786651348.a n = A176705 (n + 1)

theorem P6967112970786651348.correct : P6967112970786651348.Spec := by
  intro n
  simp only [A176705, Nat.add_sub_cancel]

end A176705

/-! ## A176705.P9160934850986914394

`Δ[A144740(p?[A007510(n+1)])]`
-/

namespace A176705.P9160934850986914394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176705.P9160934850986914394

namespace A176705

/-- `Δ[A144740(p?[A007510(n+1)])]` -/
def P9160934850986914394.Spec : Prop :=
  ∀ n, P9160934850986914394.a n = A176705 (n + 1)

end A176705

/-! ## A176705.P1964261504958453820

`Δ[A072000(p?[A167706(n+1)])]`
-/

namespace A176705.P1964261504958453820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176705.P1964261504958453820

namespace A176705

/-- `Δ[A072000(p?[A167706(n+1)])]` -/
def P1964261504958453820.Spec : Prop :=
  ∀ n, P1964261504958453820.a n = A176705 (n + 1)

end A176705

/-! ## A176705.P2276662258518590233

`Δ[A072000(A000040(A176656(n+1)))]`
-/

namespace A176705.P2276662258518590233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000040 (A176656 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176705.P2276662258518590233

namespace A176705

/-- `Δ[A072000(A000040(A176656(n+1)))]` -/
def P2276662258518590233.Spec : Prop :=
  ∀ n, P2276662258518590233.a n = A176705 (n + 1)

end A176705

/-!
# A176706: Primes p such that the p-th semiprime divided by the sum of the digits of p is a prime.

The programs for A176706, there is no canonical definition to state claims against.
-/

/-! ## A176706.P18283688759602231463

`A124180(A135346(n+1))`
-/

namespace A176706.P18283688759602231463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124180 (A135346 (n + 1)).toNat

end

end A176706.P18283688759602231463

/-! ## A176706.P13690025115207631168

`p?[∑[A098465(A048804(n))]]`
-/

namespace A176706.P13690025115207631168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098465 (A048804 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176706.P13690025115207631168

/-!
# A176707: Sum of digits of all distinct prime factors of n-th semiprime.

The programs for A176707, the canonical program `A176707.P12823767520495376653` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176707 has offset 1).

The definition of A176707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176707.P12823767520495376653

`∑{p}[A001358(n+1), A007953(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176707

/-- `∑{p}[A001358(n+1), A007953(#)]` -/
def P12823767520495376653.Spec : Prop :=
  ∀ n, P12823767520495376653.a n = A176707 (n + 1)

theorem P12823767520495376653.correct : P12823767520495376653.Spec := by
  intro n
  simp only [A176707, Nat.add_sub_cancel]

end A176707

/-! ## A176707.P17685083768261860827

`∑{p}[A001358(n+1), A118503(#)]`
-/

namespace A176707.P17685083768261860827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A118503 p

end

end A176707.P17685083768261860827

namespace A176707

/-- `∑{p}[A001358(n+1), A118503(#)]` -/
def P17685083768261860827.Spec : Prop :=
  ∀ n, P17685083768261860827.a n = A176707 (n + 1)

end A176707

/-! ## A176707.P13503994977163942958

`∑{p}[A001358(n+1), A062028(#)-#]`
-/

namespace A176707.P13503994977163942958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A062028 p - (p : ℤ))

end

end A176707.P13503994977163942958

namespace A176707

/-- `∑{p}[A001358(n+1), A062028(#)-#]` -/
def P13503994977163942958.Spec : Prop :=
  ∀ n, P13503994977163942958.a n = A176707 (n + 1)

end A176707

/-! ## A176707.P14609693788070840919

`A095402(A001358(n+1))`
-/

namespace A176707.P14609693788070840919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095402 (A001358 (n + 1)).toNat

end

end A176707.P14609693788070840919

namespace A176707

/-- `A095402(A001358(n+1))` -/
def P14609693788070840919.Spec : Prop :=
  ∀ n, P14609693788070840919.a n = A176707 (n + 1)

end A176707

/-! ## A176707.P4329824301447454220

`A095402(A176540(n+2))`
-/

namespace A176707.P4329824301447454220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095402 (A176540 (n + 2)).toNat

end

end A176707.P4329824301447454220

namespace A176707

/-- `A095402(A176540(n+2))` -/
def P4329824301447454220.Spec : Prop :=
  ∀ n, P4329824301447454220.a n = A176707 (n + 1)

end A176707

/-! ## A176707.P17843867932281711964

`A118503(∏{p}[A001358(n+1), #])`
-/

namespace A176707.P17843867932281711964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A176707.P17843867932281711964

namespace A176707

/-- `A118503(∏{p}[A001358(n+1), #])` -/
def P17843867932281711964.Spec : Prop :=
  ∀ n, P17843867932281711964.a n = A176707 (n + 1)

end A176707

/-! ## A176707.P13342864444335388990

`∑{p}[A074985(n+1), A007953(#)]`
-/

namespace A176707.P13342864444335388990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007953 p

end

end A176707.P13342864444335388990

namespace A176707

/-- `∑{p}[A074985(n+1), A007953(#)]` -/
def P13342864444335388990.Spec : Prop :=
  ∀ n, P13342864444335388990.a n = A176707 (n + 1)

end A176707

/-!
# A176708: Partial sums of A094820.

The programs for A176708, the canonical program `A176708.P7659877798035509081` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176708 has offset 1).

The definition of A176708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176708.P7659877798035509081

`∑[∑[ceil(∏{e}[n+1, #+1]/2)]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176708

/-- `∑[∑[ceil(∏{e}[n+1, #+1]/2)]]` -/
def P7659877798035509081.Spec : Prop :=
  ∀ n, P7659877798035509081.a n = A176708 (n + 1)

theorem P7659877798035509081.correct : P7659877798035509081.Spec := by
  intro n
  simp only [A176708, Nat.add_sub_cancel]

end A176708

/-! ## A176708.P5124698299652432508

`∑[∑[round(∏{e}[n+1, #+1]/2)]]`
-/

namespace A176708.P5124698299652432508
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P5124698299652432508

namespace A176708

/-- `∑[∑[round(∏{e}[n+1, #+1]/2)]]` -/
def P5124698299652432508.Spec : Prop :=
  ∀ n, P5124698299652432508.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P2217886154737024882

`∑[∑[floor((∏{e}[n+1, #+1]+1)/2)]]`
-/

namespace A176708.P2217886154737024882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) + 1 : ℕ) : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P2217886154737024882

namespace A176708

/-- `∑[∑[floor((∏{e}[n+1, #+1]+1)/2)]]` -/
def P2217886154737024882.Spec : Prop :=
  ∀ n, P2217886154737024882.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P1699883117068340438

`∑[∑[ceil(∑{d}[n+1, ((#+1)%2)!]/2)]]`
-/

namespace A176708.P1699883117068340438
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f3 n), Nat.factorial ((d + 1) % 2) : ℕ) : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P1699883117068340438

namespace A176708

/-- `∑[∑[ceil(∑{d}[n+1, ((#+1)%2)!]/2)]]` -/
def P1699883117068340438.Spec : Prop :=
  ∀ n, P1699883117068340438.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P11599388210217044411

`∑[A094820(n+1)]`
-/

namespace A176708.P11599388210217044411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P11599388210217044411

namespace A176708

/-- `∑[A094820(n+1)]` -/
def P11599388210217044411.Spec : Prop :=
  ∀ n, P11599388210217044411.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P9082801275360573408

`∑[∑[A038548(n+1)]]`
-/

namespace A176708.P9082801275360573408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P9082801275360573408

namespace A176708

/-- `∑[∑[A038548(n+1)]]` -/
def P9082801275360573408.Spec : Prop :=
  ∀ n, P9082801275360573408.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P9191236673252199905

`∑[∑[A072670(n)+1]]`
-/

namespace A176708.P9191236673252199905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P9191236673252199905

namespace A176708

/-- `∑[∑[A072670(n)+1]]` -/
def P9191236673252199905.Spec : Prop :=
  ∀ n, P9191236673252199905.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P5608602711157579470

`∑[A091627(n+1)+1]`
-/

namespace A176708.P5608602711157579470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P5608602711157579470

namespace A176708

/-- `∑[A091627(n+1)+1]` -/
def P5608602711157579470.Spec : Prop :=
  ∀ n, P5608602711157579470.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P10742519014542683048

`∑[A161842(n+1)/2]`
-/

namespace A176708.P10742519014542683048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161842 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P10742519014542683048

namespace A176708

/-- `∑[A161842(n+1)/2]` -/
def P10742519014542683048.Spec : Prop :=
  ∀ n, P10742519014542683048.a n = (A176708 (n + 1) : ℚ)

end A176708

/-! ## A176708.P1844358639470362855

`∑[∑[sqrt(A330571(n+1))]]`
-/

namespace A176708.P1844358639470362855
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A330571 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P1844358639470362855

namespace A176708

/-- `∑[∑[sqrt(A330571(n+1))]]` -/
def P1844358639470362855.Spec : Prop :=
  ∀ n, P1844358639470362855.a n = (A176708 (n + 1) : ℝ)

end A176708

/-! ## A176708.P2043939147416880075

`∑[∑[A161841(n+1)/2]]`
-/

namespace A176708.P2043939147416880075
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161841 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P2043939147416880075

namespace A176708

/-- `∑[∑[A161841(n+1)/2]]` -/
def P2043939147416880075.Spec : Prop :=
  ∀ n, P2043939147416880075.a n = (A176708 (n + 1) : ℚ)

end A176708

/-! ## A176708.P15004719783348921264

`∑[A183003(n+1)+1+n]`
-/

namespace A176708.P15004719783348921264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P15004719783348921264

namespace A176708

/-- `∑[A183003(n+1)+1+n]` -/
def P15004719783348921264.Spec : Prop :=
  ∀ n, P15004719783348921264.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P1031087562536976706

`∑[∑[ceil(A000005(n+1)/2)]]`
-/

namespace A176708.P1031087562536976706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (n + 1) : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P1031087562536976706

namespace A176708

/-- `∑[∑[ceil(A000005(n+1)/2)]]` -/
def P1031087562536976706.Spec : Prop :=
  ∀ n, P1031087562536976706.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P17679083307906398055

`∑[∑[∑{d}[n+1, (A001222(#)+1)%2]]]`
-/

namespace A176708.P17679083307906398055
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Int.tmod (A001222 d + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P17679083307906398055

namespace A176708

/-- `∑[∑[∑{d}[n+1, (A001222(#)+1)%2]]]` -/
def P17679083307906398055.Spec : Prop :=
  ∀ n, P17679083307906398055.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P12976654222794969898

`∑[∑[A008619(A032741(n+1))]]`
-/

namespace A176708.P12976654222794969898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A032741 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P12976654222794969898

namespace A176708

/-- `∑[∑[A008619(A032741(n+1))]]` -/
def P12976654222794969898.Spec : Prop :=
  ∀ n, P12976654222794969898.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P648001272477348704

`∑[∑[A065033(A000005(n+1))]]`
-/

namespace A176708.P648001272477348704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000005 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P648001272477348704

namespace A176708

/-- `∑[∑[A065033(A000005(n+1))]]` -/
def P648001272477348704.Spec : Prop :=
  ∀ n, P648001272477348704.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P10193280236567413820

`∑[∑[A110656(A145154(n+1))]]`
-/

namespace A176708.P10193280236567413820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A145154 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P10193280236567413820

namespace A176708

/-- `∑[∑[A110656(A145154(n+1))]]` -/
def P10193280236567413820.Spec : Prop :=
  ∀ n, P10193280236567413820.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P5536497367116446400

`∑[∑[A004526(A000005(n+1)+1)]]`
-/

namespace A176708.P5536497367116446400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P5536497367116446400

namespace A176708

/-- `∑[∑[A004526(A000005(n+1)+1)]]` -/
def P5536497367116446400.Spec : Prop :=
  ∀ n, P5536497367116446400.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P17625692220308673401

`∑[∑[A123108(A000005(n+1)+1)]]`
-/

namespace A176708.P17625692220308673401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000005 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P17625692220308673401

namespace A176708

/-- `∑[∑[A123108(A000005(n+1)+1)]]` -/
def P17625692220308673401.Spec : Prop :=
  ∀ n, P17625692220308673401.a n = A176708 (n + 1)

end A176708

/-! ## A176708.P15974571753928731512

`∑[∑[A008619(A000005(n+1)-1)]]`
-/

namespace A176708.P15974571753928731512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000005 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176708.P15974571753928731512

namespace A176708

/-- `∑[∑[A008619(A000005(n+1)-1)]]` -/
def P15974571753928731512.Spec : Prop :=
  ∀ n, P15974571753928731512.a n = A176708 (n + 1)

end A176708

/-!
# A176709: Number of isomorphism classes of 6-fold coverings of a connected graph with Betti number n.

The programs for A176709, there is no canonical definition to state claims against.
-/

/-! ## A176709.P12862287305495378054

`A160449(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A176709.P12862287305495378054
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
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176709.P12862287305495378054

/-! ## A176709.P15925986446739833226

`A160449(A055999(n+3))`
-/

namespace A176709.P15925986446739833226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A055999 (n + 3)).toNat

end

end A176709.P15925986446739833226

/-! ## A176709.P11370053263669406329

`A160449(A056119(n)+15)`
-/

namespace A176709.P11370053263669406329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (A056119 n + 15).toNat

end

end A176709.P11370053263669406329

/-! ## A176709.P11993456540148796339

`A160449(eq[5, A025581(n)])`
-/

namespace A176709.P11993456540148796339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176709.P11993456540148796339

/-! ## A176709.P2139053188904148066

`A160449(Δ[A023545(n+2)]-2)`
-/

namespace A176709.P2139053188904148066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160449 (f1 (n + 1) - f1 n - 2).toNat

end

end A176709.P2139053188904148066

/-!
# A176710: Mix A001021, 2*A001021.

The programs for A176710, the canonical program `A176710.P10767238788469180639` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176710 has offset 0).

The definition of A176710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176710.P10767238788469180639

`12*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176710

/-- `12*a(n-2)` -/
def P10767238788469180639.Spec : Prop :=
  ∀ n, (P10767238788469180639.a n : ℤ) = A176710 n

theorem P10767238788469180639.correct : P10767238788469180639.Spec := by
  intro n
  simp only [A176710]

end A176710

/-! ## A176710.P12541786964065116547

`ogf((1+2x)/(1-12x^2))`
-/

namespace A176710.P12541786964065116547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -12] n

end

end A176710.P12541786964065116547

namespace A176710

/-- `ogf((1+2x)/(1-12x^2))` -/
def P12541786964065116547.Spec : Prop :=
  ∀ n, P12541786964065116547.a n = A176710 n

end A176710

/-! ## A176710.P3219647433566501300

`∏[8-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A176710.P3219647433566501300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P3219647433566501300

namespace A176710

/-- `∏[8-a(n-1)]` -/
def P3219647433566501300.Spec : Prop :=
  ∀ n, P3219647433566501300.a n = A176710 n

end A176710

/-! ## A176710.P6571521674785713182

`∏[((n-1)%2+2)!]`
-/

namespace A176710.P6571521674785713182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((n : ℤ) - 1) 2 + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P6571521674785713182

namespace A176710

/-- `∏[((n-1)%2+2)!]` -/
def P6571521674785713182.Spec : Prop :=
  ∀ n, (P6571521674785713182.a n : ℤ) = A176710 n

end A176710

/-! ## A176710.P4983155591665494667

`2^n*3^floor(n/2)`
-/

namespace A176710.P4983155591665494667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A176710.P4983155591665494667

namespace A176710

/-- `2^n*3^floor(n/2)` -/
def P4983155591665494667.Spec : Prop :=
  ∀ n, P4983155591665494667.a n = (A176710 n : ℚ)

end A176710

/-! ## A176710.P16429086724821210907

`lcm(2^n, 3^floor(n/2))`
-/

namespace A176710.P16429086724821210907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A176710.P16429086724821210907

namespace A176710

/-- `lcm(2^n, 3^floor(n/2))` -/
def P16429086724821210907.Spec : Prop :=
  ∀ n, (P16429086724821210907.a n : ℤ) = A176710 n

end A176710

/-! ## A176710.P16560409196537300320

`∏[Δ[floor(3^(n-1))]%8]`
-/

namespace A176710.P16560409196537300320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P16560409196537300320

namespace A176710

/-- `∏[Δ[floor(3^(n-1))]%8]` -/
def P16560409196537300320.Spec : Prop :=
  ∀ n, P16560409196537300320.a n = A176710 n

end A176710

/-! ## A176710.P12332567704933424914

`∏[and(7, Δ[floor(3^(n-1))])]`
-/

namespace A176710.P12332567704933424914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P12332567704933424914

namespace A176710

/-- `∏[and(7, Δ[floor(3^(n-1))])]` -/
def P12332567704933424914.Spec : Prop :=
  ∀ n, P12332567704933424914.a n = A176710 n

end A176710

/-! ## A176710.P7147477825336147541

`∏[A021796(n+2)]`
-/

namespace A176710.P7147477825336147541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021796 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P7147477825336147541

namespace A176710

/-- `∏[A021796(n+2)]` -/
def P7147477825336147541.Spec : Prop :=
  ∀ n, P7147477825336147541.a n = A176710 n

end A176710

/-! ## A176710.P12323659820894556511

`∏[A091085(2*n)]`
-/

namespace A176710.P12323659820894556511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091085 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P12323659820894556511

namespace A176710

/-- `∏[A091085(2*n)]` -/
def P12323659820894556511.Spec : Prop :=
  ∀ n, P12323659820894556511.a n = A176710 n

end A176710

/-! ## A176710.P7415701272054430566

`∏[gcd(6, A134062(n))]`
-/

namespace A176710.P7415701272054430566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A134062 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P7415701272054430566

namespace A176710

/-- `∏[gcd(6, A134062(n))]` -/
def P7415701272054430566.Spec : Prop :=
  ∀ n, (P7415701272054430566.a n : ℤ) = A176710 n

end A176710

/-! ## A176710.P15733299878833447218

`∏[gcd(36, A141056(n))]`
-/

namespace A176710.P15733299878833447218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 36 (A141056 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P15733299878833447218

namespace A176710

/-- `∏[gcd(36, A141056(n))]` -/
def P15733299878833447218.Spec : Prop :=
  ∀ n, (P15733299878833447218.a n : ℤ) = A176710 n

end A176710

/-! ## A176710.P4396516026948661722

`∏[A158478(n+1)!]`
-/

namespace A176710.P4396516026948661722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A158478 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P4396516026948661722

namespace A176710

/-- `∏[A158478(n+1)!]` -/
def P4396516026948661722.Spec : Prop :=
  ∀ n, (P4396516026948661722.a n : ℤ) = A176710 n

end A176710

/-! ## A176710.P16601544151952678575

`∏[A091084(2*n)+1]`
-/

namespace A176710.P16601544151952678575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091084 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P16601544151952678575

namespace A176710

/-- `∏[A091084(2*n)+1]` -/
def P16601544151952678575.Spec : Prop :=
  ∀ n, P16601544151952678575.a n = A176710 n

end A176710

/-! ## A176710.P7608204932121469434

`∏[A138279(2*n+1)]`
-/

namespace A176710.P7608204932121469434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138279 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P7608204932121469434

namespace A176710

/-- `∏[A138279(2*n+1)]` -/
def P7608204932121469434.Spec : Prop :=
  ∀ n, P7608204932121469434.a n = A176710 n

end A176710

/-! ## A176710.P12305741430452487879

`∏[A018247(a(n-1))]` with `a(0)=1`
-/

namespace A176710.P12305741430452487879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A018247 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P12305741430452487879

namespace A176710

/-- `∏[A018247(a(n-1))]` -/
def P12305741430452487879.Spec : Prop :=
  ∀ n, P12305741430452487879.a n = A176710 n

end A176710

/-! ## A176710.P12807653827859965713

`∏[A039926(a(n-1))]` with `a(0)=1`
-/

namespace A176710.P12807653827859965713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A039926 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P12807653827859965713

namespace A176710

/-- `∏[A039926(a(n-1))]` -/
def P12807653827859965713.Spec : Prop :=
  ∀ n, P12807653827859965713.a n = A176710 n

end A176710

/-! ## A176710.P2045623389175248738

`∏[A053794(a(n-1))]` with `a(0)=1`
-/

namespace A176710.P2045623389175248738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053794 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P2045623389175248738

namespace A176710

/-- `∏[A053794(a(n-1))]` -/
def P2045623389175248738.Spec : Prop :=
  ∀ n, P2045623389175248738.a n = A176710 n

end A176710

/-! ## A176710.P9440957966840243715

`∏[A074382(a(n-1))]` with `a(0)=1`
-/

namespace A176710.P9440957966840243715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A074382 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P9440957966840243715

namespace A176710

/-- `∏[A074382(a(n-1))]` -/
def P9440957966840243715.Spec : Prop :=
  ∀ n, P9440957966840243715.a n = A176710 n

end A176710

/-! ## A176710.P14600201741216771444

`∏[A091664(a(n-1))]` with `a(0)=1`
-/

namespace A176710.P14600201741216771444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A091664 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176710.P14600201741216771444

namespace A176710

/-- `∏[A091664(a(n-1))]` -/
def P14600201741216771444.Spec : Prop :=
  ∀ n, P14600201741216771444.a n = A176710 n

end A176710

/-!
# A176711: a(n) = 16n^4 + 64n^3 + 104n^2 + 80n + 21.

The programs for A176711, the canonical program `A176711.P5722118915718365723` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176711 has offset 0).

The definition of A176711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^4+64*n^3+104*n²+80*n+21` (program `A176711.P5722118915718365723`, by `A176711.P5722118915718365723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176711.P9169370437329037704

`(2*n+1)*(2*n+3)*(4*n²+8*n+7)`
-/

namespace A176711.P9169370437329037704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n + 3) * (4 * n ^ 2 + 8 * n + 7)

end

end A176711.P9169370437329037704

namespace A176711

/-- `(2*n+1)*(2*n+3)*(4*n²+8*n+7)` -/
def P9169370437329037704.Spec : Prop :=
  ∀ n, (P9169370437329037704.a n : ℤ) = A176711 n

theorem P9169370437329037704.correct : P9169370437329037704.Spec := by
  intro n
  simp only [A176711, Nat.add_sub_cancel, A176711.P9169370437329037704.a, A176711.P5722118915718365723.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A176711

/-! ## A176711.P5722118915718365723

`16*n^4+64*n^3+104*n²+80*n+21`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176711

/-- `16*n^4+64*n^3+104*n²+80*n+21` -/
def P5722118915718365723.Spec : Prop :=
  ∀ n, (P5722118915718365723.a n : ℤ) = A176711 n

theorem P5722118915718365723.correct : P5722118915718365723.Spec := by
  intro n
  simp only [A176711]

end A176711

/-! ## A176711.P9286773610207500308

`A085027(n*(n+2))`
-/

namespace A176711.P9286773610207500308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085027 (n * (n + 2))

end

end A176711.P9286773610207500308

namespace A176711

/-- `A085027(n*(n+2))` -/
def P9286773610207500308.Spec : Prop :=
  ∀ n, P9286773610207500308.a n = A176711 n

end A176711

/-! ## A176711.P8807102814602443137

`A276704((n+2)²+n²)`
-/

namespace A176711.P8807102814602443137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276704 ((n + 2) ^ 2 + n ^ 2)

end

end A176711.P8807102814602443137

namespace A176711

/-- `A276704((n+2)²+n²)` -/
def P8807102814602443137.Spec : Prop :=
  ∀ n, P8807102814602443137.a n = A176711 n

end A176711

/-! ## A176711.P2035547253726556598

`A078371(A056220(n+1))`
-/

namespace A176711.P2035547253726556598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A056220 (n + 1)).toNat

end

end A176711.P2035547253726556598

namespace A176711

/-- `A078371(A056220(n+1))` -/
def P2035547253726556598.Spec : Prop :=
  ∀ n, P2035547253726556598.a n = A176711 n

end A176711

/-! ## A176711.P5712012711432183865

`A078371(A060747((n+1)²))`
-/

namespace A176711.P5712012711432183865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A060747 ((n + 1) ^ 2)).toNat

end

end A176711.P5712012711432183865

namespace A176711

/-- `A078371(A060747((n+1)²))` -/
def P5712012711432183865.Spec : Prop :=
  ∀ n, P5712012711432183865.a n = A176711 n

end A176711

/-! ## A176711.P15794503544527495066

`A142717((2*(n+1))²)`
-/

namespace A176711.P15794503544527495066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142717 ((2 * (n + 1)) ^ 2)

end

end A176711.P15794503544527495066

namespace A176711

/-- `A142717((2*(n+1))²)` -/
def P15794503544527495066.Spec : Prop :=
  ∀ n, P15794503544527495066.a n = A176711 n

end A176711

/-! ## A176711.P14801591346972156023

`A070262(A000466(n+1))`
-/

namespace A176711.P14801591346972156023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070262 (A000466 (n + 1)).toNat

end

end A176711.P14801591346972156023

namespace A176711

/-- `A070262(A000466(n+1))` -/
def P14801591346972156023.Spec : Prop :=
  ∀ n, P14801591346972156023.a n = A176711 n

end A176711

/-! ## A176711.P3889966291557189067

`A028347(A053755(n+1))`
-/

namespace A176711.P3889966291557189067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (A053755 (n + 1)).toNat

end

end A176711.P3889966291557189067

namespace A176711

/-- `A028347(A053755(n+1))` -/
def P3889966291557189067.Spec : Prop :=
  ∀ n, P3889966291557189067.a n = A176711 n

end A176711

/-! ## A176711.P8946805414230277789

`A061037(A000466(n+1)+2)`
-/

namespace A176711.P8946805414230277789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (A000466 (n + 1) + 2).toNat

end

end A176711.P8946805414230277789

namespace A176711

/-- `A061037(A000466(n+1)+2)` -/
def P8946805414230277789.Spec : Prop :=
  ∀ n, P8946805414230277789.a n = A176711 n

end A176711

/-!
# A176712: a(n) = 16*n^4 + 256*n^3 + 1160*n^2 + 1088*n + 285.

The programs for A176712, the canonical program `A176712.P16307951482386926317` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176712 has offset 0).

The definition of A176712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176712.P16307951482386926317

`(2*n+1)*(2*n+15)*(4*n²+32*n+19)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176712

/-- `(2*n+1)*(2*n+15)*(4*n²+32*n+19)` -/
def P16307951482386926317.Spec : Prop :=
  ∀ n, (P16307951482386926317.a n : ℤ) = A176712 n

theorem P16307951482386926317.correct : P16307951482386926317.Spec := by
  intro n
  simp only [A176712]

end A176712

/-! ## A176712.P1427669277276941190

`(A305074(n+1)+A078371(n))²-4`
-/

namespace A176712.P1427669277276941190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305074 (n + 1) + A078371 n) ^ 2 - 4

end

end A176712.P1427669277276941190

namespace A176712

/-- `(A305074(n+1)+A078371(n))²-4` -/
def P1427669277276941190.Spec : Prop :=
  ∀ n, P1427669277276941190.a n = A176712 n

end A176712

/-! ## A176712.P8230336440751218842

`A085027(n²+8*n+3)`
-/

namespace A176712.P8230336440751218842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085027 (n ^ 2 + (8 * n + 3))

end

end A176712.P8230336440751218842

namespace A176712

/-- `A085027(n²+8*n+3)` -/
def P8230336440751218842.Spec : Prop :=
  ∀ n, P8230336440751218842.a n = A176712 n

end A176712

/-! ## A176712.P14147333963766640238

`A078371(A154575(n+1)-11)`
-/

namespace A176712.P14147333963766640238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A154575 (n + 1) - 11).toNat

end

end A176712.P14147333963766640238

namespace A176712

/-- `A078371(A154575(n+1)-11)` -/
def P14147333963766640238.Spec : Prop :=
  ∀ n, P14147333963766640238.a n = A176712 n

end A176712

/-! ## A176712.P14207566875470911392

`A078371(A161532(n+2)-18)`
-/

namespace A176712.P14207566875470911392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A161532 (n + 2) - 18).toNat

end

end A176712.P14207566875470911392

namespace A176712

/-- `A078371(A161532(n+2)-18)` -/
def P14207566875470911392.Spec : Prop :=
  ∀ n, P14207566875470911392.a n = A176712 n

end A176712

/-! ## A176712.P5192304430642219952

`A078371(A152811(n+3)-19)`
-/

namespace A176712.P5192304430642219952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A152811 (n + 3) - 19).toNat

end

end A176712.P5192304430642219952

namespace A176712

/-- `A078371(A152811(n+3)-19)` -/
def P5192304430642219952.Spec : Prop :=
  ∀ n, P5192304430642219952.a n = A176712 n

end A176712

/-! ## A176712.P6728406287588703501

`A078371(A268581(n)+A017089(n))`
-/

namespace A176712.P6728406287588703501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A268581 n + A017089 n).toNat

end

end A176712.P6728406287588703501

namespace A176712

/-- `A078371(A268581(n)+A017089(n))` -/
def P6728406287588703501.Spec : Prop :=
  ∀ n, P6728406287588703501.a n = A176712 n

end A176712

/-! ## A176712.P4848628235924509403

`A078371(A275591(n)+A104675(n))`
-/

namespace A176712.P4848628235924509403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A275591 n + A104675 n).toNat

end

end A176712.P4848628235924509403

namespace A176712

/-- `A078371(A275591(n)+A104675(n))` -/
def P4848628235924509403.Spec : Prop :=
  ∀ n, P4848628235924509403.a n = A176712 n

end A176712

/-! ## A176712.P1159456486586983722

`A078371(A054000(n+1)+A017605(n))`
-/

namespace A176712.P1159456486586983722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A054000 (n + 1) + A017605 n).toNat

end

end A176712.P1159456486586983722

namespace A176712

/-- `A078371(A054000(n+1)+A017605(n))` -/
def P1159456486586983722.Spec : Prop :=
  ∀ n, P1159456486586983722.a n = A176712 n

end A176712

/-!
# A176716: a(1) = 1; a(2*n) = prime(n)*a(n), a(2*n+1) = prime(n)*a(n) + a(n+1), where prime(n) is the n-th prime.

The programs for A176716, there is no canonical definition to state claims against.
-/

/-! ## A176716.P9666199975738656810

`∩[A194469(n+1), A333574(n+1)]`
-/

namespace A176716.P9666199975738656810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176716.P9666199975738656810

/-! ## A176716.P10300003164228058400

`eq[A000122((n-1)^((1-(-1)^n)/2)), A140887(n+2)]`
-/

namespace A176716.P10300003164228058400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140887 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176716.P10300003164228058400

/-! ## A176716.P9529348730983433770

`eq[A036131((n-1)^((1-(-1)^n)/2)), A140887(n+2)]`
-/

namespace A176716.P9529348730983433770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036131 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140887 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176716.P9529348730983433770

/-! ## A176716.P4699679241871039786

`lt[A004443(n+1), A135521(A112062(n+1))]`
-/

namespace A176716.P4699679241871039786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135521 (A112062 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176716.P4699679241871039786

/-!
# A176717: Numbers n such that sum of digits of all distinct prime factors of n-th semiprime = sum of digits of all distinct prime factors of (n+1)-th semiprime.

The programs for A176717, there is no canonical definition to state claims against.
-/

/-! ## A176717.P4198592594463061613

`eq[A176707(n+1), A176707(A000038(n)+n)]`
-/

namespace A176717.P4198592594463061613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176707 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176717.P4198592594463061613

/-!
# A176718: Partial sums of A004207.

The programs for A176718, the canonical program `A176718.P17709274811728577594` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176718 has offset 0).

The definition of A176718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176718.P17709274811728577594

`∑[A004207(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176718

/-- `∑[A004207(n)]` -/
def P17709274811728577594.Spec : Prop :=
  ∀ n, P17709274811728577594.a n = A176718 n

theorem P17709274811728577594.correct : P17709274811728577594.Spec := by
  intro n
  simp only [A176718]

end A176718

/-! ## A176718.P9020985559500368534

`∑[A219675(n)]+1`
-/

namespace A176718.P9020985559500368534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A176718.P9020985559500368534

namespace A176718

/-- `∑[A219675(n)]+1` -/
def P9020985559500368534.Spec : Prop :=
  ∀ n, P9020985559500368534.a n = A176718 n

end A176718

/-! ## A176718.P7565217802744502639

`∑[A219675(or(n, A000007(n)))]`
-/

namespace A176718.P7565217802744502639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176718.P7565217802744502639

namespace A176718

/-- `∑[A219675(or(n, A000007(n)))]` -/
def P7565217802744502639.Spec : Prop :=
  ∀ n, P7565217802744502639.a n = A176718 n

end A176718

/-! ## A176718.P11366007100205155342

`∑[A219675(xor(n, A000007(n)))]`
-/

namespace A176718.P11366007100205155342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176718.P11366007100205155342

namespace A176718

/-- `∑[A219675(xor(n, A000007(n)))]` -/
def P11366007100205155342.Spec : Prop :=
  ∀ n, P11366007100205155342.a n = A176718 n

end A176718

/-! ## A176718.P5309239962572454952

`A000124(n)-∑[n-A219675(n)]`
-/

namespace A176718.P5309239962572454952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176718.P5309239962572454952

namespace A176718

/-- `A000124(n)-∑[n-A219675(n)]` -/
def P5309239962572454952.Spec : Prop :=
  ∀ n, P5309239962572454952.a n = A176718 n

end A176718

/-! ## A176718.P2802945853363652065

`a(n-1)+A004207(n)%Δ[64*A005586(n)]` with `a(0)=1, a(1)=2`
-/

namespace A176718.P2802945853363652065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A005586 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A004207 n) (f1 (n + 1) - f1 n)

end

end A176718.P2802945853363652065

namespace A176718

/-- `a(n-1)+A004207(n)%Δ[64*A005586(n)]` -/
def P2802945853363652065.Spec : Prop :=
  ∀ n, P2802945853363652065.a n = A176718 n

end A176718

/-! ## A176718.P7319608409896781972

`∑[A219675(gcd(n, ∏{d}[n, #]))]`
-/

namespace A176718.P7319608409896781972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (Nat.gcd n (∏ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176718.P7319608409896781972

namespace A176718

/-- `∑[A219675(gcd(n, ∏{d}[n, #]))]` -/
def P7319608409896781972.Spec : Prop :=
  ∀ n, P7319608409896781972.a n = A176718 n

end A176718

/-! ## A176718.P17655268065821769739

`∑[A062028(a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A176718.P17655268065821769739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A062028 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176718.P17655268065821769739

namespace A176718

/-- `∑[A062028(a(n-1))]` -/
def P17655268065821769739.Spec : Prop :=
  ∀ n, P17655268065821769739.a n = A176718 n

end A176718

/-! ## A176718.P7406222990146225421

`a(n-1)+A004207(n)%A022121(n)` with `a(0)=1, a(1)=2`
-/

namespace A176718.P7406222990146225421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A004207 n) (A022121 n)

end

end A176718.P7406222990146225421

namespace A176718

/-- `a(n-1)+A004207(n)%A022121(n)` -/
def P7406222990146225421.Spec : Prop :=
  ∀ n, P7406222990146225421.a n = A176718 n

end A176718

/-! ## A176718.P1968541094610163985

`∑[A219675(A007318(A000124(n)))]`
-/

namespace A176718.P1968541094610163985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176718.P1968541094610163985

namespace A176718

/-- `∑[A219675(A007318(A000124(n)))]` -/
def P1968541094610163985.Spec : Prop :=
  ∀ n, P1968541094610163985.a n = A176718 n

end A176718

/-!
# A176719: G.f. satisfies: A(x) = 1 + Sum_{n>=1} 2*x^n * A(x)^(n^2).

The programs for A176719, there is no canonical definition to state claims against.
-/

/-! ## A176719.P13331634080869817833

`A252461((∑[n+1]-3)*n!+3)`
-/

namespace A176719.P13331634080869817833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) * (Nat.factorial n : ℤ) + 3).toNat

end

end A176719.P13331634080869817833

/-! ## A176719.P12328928741977641955

`A250476(A375796(n+1))`
-/

namespace A176719.P12328928741977641955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250476 (A375796 (n + 1)).toNat

end

end A176719.P12328928741977641955

/-!
# A176720: G.f. satisfies: A(x) = 1 + Sum_{n>=0} 2*x^(n^2)*A(x)^n.

The programs for A176720, there is no canonical definition to state claims against.
-/

/-! ## A176720.P3143390427918846275

`A100132(n)+A055999(A172550(n+1))`
-/

namespace A176720.P3143390427918846275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100132 n + A055999 (A172550 (n + 1)).toNat

end

end A176720.P3143390427918846275

/-!
# A176722: Primes of the form k^3 + 13, k >= 0.

The programs for A176722, there is no canonical definition to state claims against.
-/

/-! ## A176722.P15370848792887066149

`p?[n^3+13]`
-/

namespace A176722.P15370848792887066149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176722.P15370848792887066149

/-! ## A176722.P9593129914686368160

`or(1, p?[n*n²+13])`
-/

namespace A176722.P9593129914686368160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A176722.P9593129914686368160

/-!
# A176723: Characteristic array for partitions which define multiset repetition classes.

The programs for A176723, there is no canonical definition to state claims against.
-/

/-! ## A176723.P11824777663340572800

`A322585(A185974(n))`
-/

namespace A176723.P11824777663340572800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A185974 n).toNat

end

end A176723.P11824777663340572800

/-! ## A176723.P209887815844776516

`A322585(A334438(n))`
-/

namespace A176723.P209887815844776516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A334438 n).toNat

end

end A176723.P209887815844776516

/-! ## A176723.P5343764927840337149

`A008683(A064839(A185974(n))²)`
-/

namespace A176723.P5343764927840337149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A064839 (A185974 n).toNat ^ 2).toNat

end

end A176723.P5343764927840337149

/-! ## A176723.P15913831669444236613

`A008966(A064839(A185974(n))²)`
-/

namespace A176723.P15913831669444236613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A064839 (A185974 n).toNat ^ 2).toNat

end

end A176723.P15913831669444236613

/-! ## A176723.P11049195843947091855

`A147612(A064839(A185974(n))²)`
-/

namespace A176723.P11049195843947091855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (A064839 (A185974 n).toNat ^ 2).toNat

end

end A176723.P11049195843947091855

/-! ## A176723.P5148197697873526304

`A000007(A064839(A185974(n))-1)`
-/

namespace A176723.P5148197697873526304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A064839 (A185974 n).toNat - 1).toNat

end

end A176723.P5148197697873526304

/-! ## A176723.P3379995153072076046

`∑{d}[A064839(A185974(n)), A008683(#)]`
-/

namespace A176723.P3379995153072076046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A185974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A176723.P3379995153072076046

/-! ## A176723.P2759130394198707007

`∏{p}[A064839(A185974(n)), A000007(#)]`
-/

namespace A176723.P2759130394198707007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A185974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000007 p

end

end A176723.P2759130394198707007

/-! ## A176723.P18289957058309392198

`∏{p}[A064839(A185974(n)), A007423(#)]`
-/

namespace A176723.P18289957058309392198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A185974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007423 p

end

end A176723.P18289957058309392198

/-! ## A176723.P5312733363382464146

`∏{p}[A064839(A185974(n)), A014026(#)]`
-/

namespace A176723.P5312733363382464146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A185974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014026 p

end

end A176723.P5312733363382464146

/-! ## A176723.P4578514685502815383

`A064839(A185974(n))^-A226801(n)`
-/

namespace A176723.P4578514685502815383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064839 (A185974 n).toNat : ℚ) ^ (-A226801 n : ℤ)

end

end A176723.P4578514685502815383

/-! ## A176723.P2361654936767975909

`round(A064839(A185974(n))²^A001489(n))`
-/

namespace A176723.P2361654936767975909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064839 (A185974 n).toNat ^ 2 : ℚ) ^ (A001489 n : ℤ))

end

end A176723.P2361654936767975909

/-! ## A176723.P13368252924760684639

`1-A052409(n²+1)%A064839(A185974(n))`
-/

namespace A176723.P13368252924760684639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A052409 (n ^ 2 + 1)) (A064839 (A185974 n).toNat)

end

end A176723.P13368252924760684639

/-! ## A176723.P18103995729462967058

`floor(1/A064839(A185974(n))^A001222(n+1))`
-/

namespace A176723.P18103995729462967058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A064839 (A185974 n).toNat : ℚ) ^ (A001222 (n + 1) : ℤ)⌋

end

end A176723.P18103995729462967058

/-!
# A176724: Triangle for number of partitions which define multiset repetition classes.

The programs for A176724, there is no canonical definition to state claims against.
-/

/-! ## A176724.P11235353891546960671

`A059607(n)^A074650(A219529(n))`
-/

namespace A176724.P11235353891546960671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059607 n : ℚ) ^ (A074650 (A219529 n).toNat : ℤ)

end

end A176724.P11235353891546960671

/-! ## A176724.P3376798232066587113

`A089198(n)^A074650(A219529(n))`
-/

namespace A176724.P3376798232066587113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089198 n : ℚ) ^ (A074650 (A219529 n).toNat : ℤ)

end

end A176724.P3376798232066587113

/-! ## A176724.P16592645698569583972

`A059607(n)^A071417(2*n+1)^A288530(n+2)`
-/

namespace A176724.P16592645698569583972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059607 n : ℝ) ^ ((A071417 (2 * n + 1) : ℚ) ^ (A288530 (n + 2) : ℤ) : ℝ)

end

end A176724.P16592645698569583972

/-! ## A176724.P14690290213678184812

`A010054(lcm(A099884(n), A144299(n)))`
-/

namespace A176724.P14690290213678184812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.lcm (A099884 n) (A144299 n))

end

end A176724.P14690290213678184812

/-! ## A176724.P1749025505363731481

`A055641(C(A104244(n+1), A066657(n+1)))`
-/

namespace A176724.P1749025505363731481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Nat.choose (A104244 (n + 1)).toNat (A066657 (n + 1)).toNat)

end

end A176724.P1749025505363731481

/-!
# A176725: Number of ways to choose one element from the multiset corresponding to the k-th multiset repetition class defining partition of n in canonical Abramowitz-Stegun order.

The programs for A176725, there is no canonical definition to state claims against.
-/

/-! ## A176725.P18311817658662770301

`A103921(lt[0, A176723(n)])`
-/

namespace A176725.P18311817658662770301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A176725.P18311817658662770301

/-! ## A176725.P10193785696705370190

`A103921(eq[1, A176723(n)])`
-/

namespace A176725.P10193785696705370190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176725.P10193785696705370190

/-! ## A176725.P14283531425807569157

`A103921(record[n*A176723(n)])`
-/

namespace A176725.P14283531425807569157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176725.P14283531425807569157

/-! ## A176725.P15449075151308431502

`A001221(A367995(n+1)+A178403(n+1))`
-/

namespace A176725.P15449075151308431502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A367995 (n + 1) + A178403 (n + 1)).toNat

end

end A176725.P15449075151308431502

/-! ## A176725.P7276448023383914389

`∑{e}[A281754(n), A000035(#)]`
-/

namespace A176725.P7276448023383914389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 (Nat.factorization (f1 n).natAbs p)

end

end A176725.P7276448023383914389

/-!
# A176726: Numerator of a-sequence for Sheffer triangle A060081.

The programs for A176726, there is no canonical definition to state claims against.
-/

/-! ## A176726.P11718997917632816382

`A208384(A326890(n+1)*A326894(n+1))`
-/

namespace A176726.P11718997917632816382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208384 (A326890 (n + 1) * A326894 (n + 1)).toNat

end

end A176726.P11718997917632816382

/-! ## A176726.P5233763407447279548

`A208384(lcm(A326890(n+1), A326894(n+1)))`
-/

namespace A176726.P5233763407447279548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208384 (Int.lcm (A326890 (n + 1)) (A326894 (n + 1)))

end

end A176726.P5233763407447279548

/-!
# A176727: Denominator of a-sequence for Sheffer triangle A060081.

The programs for A176727, there is no canonical definition to state claims against.
-/

/-! ## A176727.P7196415201921918065

`A261274(A276457(n))%A090539(3*n+4)`
-/

namespace A176727.P7196415201921918065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261274 (A276457 n).toNat) (A090539 (3 * n + 4))

end

end A176727.P7196415201921918065

/-! ## A176727.P13862008579206218005

`gcd(A227540(n)%A326890(n+4), A071968(n))`
-/

namespace A176727.P13862008579206218005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A227540 n) (A326890 (n + 4))) (A071968 n)

end

end A176727.P13862008579206218005

/-! ## A176727.P4355340870725527880

`A028234(A064538(n)^A238130(A006519(n+1)))`
-/

namespace A176727.P4355340870725527880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (SequenceMachineLib.roundAway ((A064538 n : ℚ) ^ (A238130 (A006519 (n + 1)).toNat : ℤ))).toNat

end

end A176727.P4355340870725527880

/-! ## A176727.P9382130756620272717

`gcd(A000290(2^n-1), A002790(n))`
-/

namespace A176727.P9382130756620272717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (2 ^ n - 1)) (A002790 n)

end

end A176727.P9382130756620272717

/-! ## A176727.P3609478038097348300

`gcd(A000578(2^n-1), A064538(n))`
-/

namespace A176727.P3609478038097348300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 (2 ^ n - 1)) (A064538 n)

end

end A176727.P3609478038097348300

/-!
# A176729: Denominator of z-sequence for Sheffer triangle A060081.

The programs for A176729, there is no canonical definition to state claims against.
-/

/-! ## A176729.P12566665565126388087

`A003484(A077168(n))*A213621(n)`
-/

namespace A176729.P12566665565126388087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A077168 n).toNat * A213621 n

end

end A176729.P12566665565126388087

/-! ## A176729.P15874252376354182415

`lcm(A003484(A077168(n)), A286515(n))`
-/

namespace A176729.P15874252376354182415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003484 (A077168 n).toNat) (A286515 n)

end

end A176729.P15874252376354182415

/-! ## A176729.P15263234136839665104

`(A006519(A077168(n))*A213621(n))^A050932(n)`
-/

namespace A176729.P15263234136839665104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (A077168 n).toNat * A213621 n : ℚ) ^ (A050932 n : ℤ)

end

end A176729.P15263234136839665104

/-! ## A176729.P12428687689972059798

`(A006519(A077168(n))*A213621(n))^A141459(n)`
-/

namespace A176729.P12428687689972059798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (A077168 n).toNat * A213621 n : ℚ) ^ (A141459 n : ℤ)

end

end A176729.P12428687689972059798

/-! ## A176729.P1960845602493278540

`(A006519(A077168(n))*A213621(n))^A176727(n)`
-/

namespace A176729.P1960845602493278540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (A077168 n).toNat * A213621 n : ℚ) ^ (A176727 n : ℤ)

end

end A176729.P1960845602493278540

/-!
# A176730: Denominators of coefficients of a series, called f, related to Airy functions.

The programs for A176730, the canonical program `A176730.P5959297970730619864` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176730 has offset 0).

The definition of A176730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176730.P5959297970730619864

`3*n*(3*n-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176730

/-- `3*n*(3*n-1)*a(n-1)` -/
def P5959297970730619864.Spec : Prop :=
  ∀ n, P5959297970730619864.a n = A176730 n

theorem P5959297970730619864.correct : P5959297970730619864.Spec := by
  intro n
  simp only [A176730]

end A176730

/-! ## A176730.P14845591505447667561

`A014402(2*n)`
-/

namespace A176730.P14845591505447667561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014402 (2 * n)

end

end A176730.P14845591505447667561

namespace A176730

/-- `A014402(2*n)` -/
def P14845591505447667561.Spec : Prop :=
  ∀ n, P14845591505447667561.a n = A176730 n

end A176730

/-! ## A176730.P12519340936574722402

`A014403(2*n)`
-/

namespace A176730.P12519340936574722402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014403 (2 * n)

end

end A176730.P12519340936574722402

namespace A176730

/-- `A014403(2*n)` -/
def P12519340936574722402.Spec : Prop :=
  ∀ n, P12519340936574722402.a n = A176730 n

end A176730

/-! ## A176730.P15708194215328639638

`A293653(2*n)`
-/

namespace A176730.P15708194215328639638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293653 (2 * n)

end

end A176730.P15708194215328639638

namespace A176730

/-- `A293653(2*n)` -/
def P15708194215328639638.Spec : Prop :=
  ∀ n, P15708194215328639638.a n = A176730 n

end A176730

/-! ## A176730.P14073834238991731838

`A318918(3*n)`
-/

namespace A176730.P14073834238991731838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318918 (3 * n)

end

end A176730.P14073834238991731838

namespace A176730

/-- `A318918(3*n)` -/
def P14073834238991731838.Spec : Prop :=
  ∀ n, P14073834238991731838.a n = A176730 n

end A176730

/-!
# A176731: Denominators of coefficients of a series, called g, related to Airy functions.

The programs for A176731, the canonical program `A176731.P3413743117113743138` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176731 has offset 0).

The definition of A176731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176731.P3413743117113743138

`3*n*(3*n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176731

/-- `3*n*(3*n+1)*a(n-1)` -/
def P3413743117113743138.Spec : Prop :=
  ∀ n, (P3413743117113743138.a n : ℤ) = A176731 n

theorem P3413743117113743138.correct : P3413743117113743138.Spec := by
  intro n
  simp only [A176731]

end A176731

/-! ## A176731.P16862274380961485110

`record[a(n-3)*∑[2*n]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A176731.P16862274380961485110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176731.P16862274380961485110

namespace A176731

/-- `record[a(n-3)*∑[2*n]]` -/
def P16862274380961485110.Spec : Prop :=
  ∀ n, (P16862274380961485110.a n : ℤ) = A176731 n

end A176731

/-! ## A176731.P17323968617160762660

`(9*n+3)*n*a(n-1)` with `a(0)=1`
-/

namespace A176731.P17323968617160762660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n + 3) * (n * a (n - 1))

end

end A176731.P17323968617160762660

namespace A176731

/-- `(9*n+3)*n*a(n-1)` -/
def P17323968617160762660.Spec : Prop :=
  ∀ n, (P17323968617160762660.a n : ℤ) = A176731 n

theorem P17323968617160762660.correct : P17323968617160762660.Spec := by
  intro n
  simp only [A176731, Nat.add_sub_cancel, A176731.P17323968617160762660.a, A176731.P3413743117113743138.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A176731

/-! ## A176731.P3087568437287092151

`A014402(Δ[n²])`
-/

namespace A176731.P3087568437287092151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014402 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A176731.P3087568437287092151

namespace A176731

/-- `A014402(Δ[n²])` -/
def P3087568437287092151.Spec : Prop :=
  ∀ n, P3087568437287092151.a n = A176731 n

end A176731

/-! ## A176731.P13831686856521790342

`A319948(Δ[n²])`
-/

namespace A176731.P13831686856521790342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A176731.P13831686856521790342

namespace A176731

/-- `A319948(Δ[n²])` -/
def P13831686856521790342.Spec : Prop :=
  ∀ n, P13831686856521790342.a n = A176731 n

end A176731

/-!
# A176732: a(n) = (n+5)*a(n-1) + (n-1)*a(n-2), a(-1)=0, a(0)=1.

The programs for A176732, the canonical program `A176732.P552379963643721040` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176732 has offset 0).

The definition of A176732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)*a(n-1)+(n-1)*a(n-2)` (program `A176732.P552379963643721040`, by `A176732.P552379963643721040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176732.P552379963643721040

`(n+5)*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176732

/-- `(n+5)*a(n-1)+(n-1)*a(n-2)` -/
def P552379963643721040.Spec : Prop :=
  ∀ n, P552379963643721040.a n = A176732 n

theorem P552379963643721040.correct : P552379963643721040.Spec := by
  intro n
  simp only [A176732]

end A176732

/-! ## A176732.P11389264570454785171

`A090015(n+1)/6`
-/

namespace A176732.P11389264570454785171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090015 (n + 1) : ℚ) / 6

end

end A176732.P11389264570454785171

namespace A176732

/-- `A090015(n+1)/6` -/
def P11389264570454785171.Spec : Prop :=
  ∀ n, P11389264570454785171.a n = (A176732 n : ℚ)

end A176732

/-! ## A176732.P9506924868375393088

`A090016(n)-a(n-1)` with `a(0)=1`
-/

namespace A176732.P9506924868375393088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090016 n - a (n - 1)

end

end A176732.P9506924868375393088

namespace A176732

/-- `A090016(n)-a(n-1)` -/
def P9506924868375393088.Spec : Prop :=
  ∀ n, P9506924868375393088.a n = A176732 n

end A176732

/-! ## A176732.P5767409763802774887

`A060475(eq[6, A025581(n)])`
-/

namespace A176732.P5767409763802774887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176732.P5767409763802774887

namespace A176732

/-- `A060475(eq[6, A025581(n)])` -/
def P5767409763802774887.Spec : Prop :=
  ∀ n, P5767409763802774887.a n = A176732 n

end A176732

/-! ## A176732.P18399755516259322157

`A060475(A055999(n+4)-1)`
-/

namespace A176732.P18399755516259322157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A055999 (n + 4) - 1).toNat

end

end A176732.P18399755516259322157

namespace A176732

/-- `A060475(A055999(n+4)-1)` -/
def P18399755516259322157.Spec : Prop :=
  ∀ n, P18399755516259322157.a n = A176732 n

end A176732

/-! ## A176732.P14382968458475831661

`A060475(A056115(n+2)+8)`
-/

namespace A176732.P14382968458475831661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A056115 (n + 2) + 8).toNat

end

end A176732.P14382968458475831661

namespace A176732

/-- `A060475(A056115(n+2)+8)` -/
def P14382968458475831661.Spec : Prop :=
  ∀ n, P14382968458475831661.a n = A176732 n

end A176732

/-! ## A176732.P8733113204046363488

`A060475(A000217(n+7)-7)`
-/

namespace A176732.P8733113204046363488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000217 (n + 7) - 7).toNat

end

end A176732.P8733113204046363488

namespace A176732

/-- `A060475(A000217(n+7)-7)` -/
def P8733113204046363488.Spec : Prop :=
  ∀ n, P8733113204046363488.a n = A176732 n

end A176732

/-! ## A176732.P5469545514192536778

`A060475(eq[7, A004736(n+1)])`
-/

namespace A176732.P5469545514192536778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176732.P5469545514192536778

namespace A176732

/-- `A060475(eq[7, A004736(n+1)])` -/
def P5469545514192536778.Spec : Prop :=
  ∀ n, P5469545514192536778.a n = A176732 n

end A176732

/-! ## A176732.P15877029857276673218

`A060475(Δ[A023551(n+2)]-1)`
-/

namespace A176732.P15877029857276673218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (f1 (n + 1) - f1 n - 1).toNat

end

end A176732.P15877029857276673218

namespace A176732

/-- `A060475(Δ[A023551(n+2)]-1)` -/
def P15877029857276673218.Spec : Prop :=
  ∀ n, P15877029857276673218.a n = A176732 n

end A176732

/-! ## A176732.P2969633574607433277

`A090016(n+1)-A090010(n+1)`
-/

namespace A176732.P2969633574607433277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090016 (n + 1) - A090010 (n + 1)

end

end A176732.P2969633574607433277

namespace A176732

/-- `A090016(n+1)-A090010(n+1)` -/
def P2969633574607433277.Spec : Prop :=
  ∀ n, P2969633574607433277.a n = A176732 n

end A176732

/-!
# A176733: a(n) = (n+6)*a(n-1) + (n-1)*a(n-2), a(-1)=0, a(0)=1.

The programs for A176733, the canonical program `A176733.P3459241865164109862` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176733 has offset 0).

The definition of A176733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+6)*a(n-1)+(n-1)*a(n-2)` (program `A176733.P3459241865164109862`, by `A176733.P3459241865164109862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176733.P3459241865164109862

`(n+6)*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176733

/-- `(n+6)*a(n-1)+(n-1)*a(n-2)` -/
def P3459241865164109862.Spec : Prop :=
  ∀ n, P3459241865164109862.a n = A176733 n

theorem P3459241865164109862.correct : P3459241865164109862.Spec := by
  intro n
  simp only [A176733]

end A176733

/-! ## A176733.P10565930044798009762

`A176732(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A176733.P10565930044798009762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176732 n + (n : ℤ) * a (n - 1)

end

end A176733.P10565930044798009762

namespace A176733

/-- `A176732(n)+n*a(n-1)` -/
def P10565930044798009762.Spec : Prop :=
  ∀ n, P10565930044798009762.a n = A176733 n

end A176733

/-! ## A176733.P2836818554448697094

`A090016(n+1)/7`
-/

namespace A176733.P2836818554448697094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090016 (n + 1) : ℚ) / 7

end

end A176733.P2836818554448697094

namespace A176733

/-- `A090016(n+1)/7` -/
def P2836818554448697094.Spec : Prop :=
  ∀ n, P2836818554448697094.a n = (A176733 n : ℚ)

end A176733

/-! ## A176733.P414557407384835923

`A060475(eq[7, A025581(n)])`
-/

namespace A176733.P414557407384835923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176733.P414557407384835923

namespace A176733

/-- `A060475(eq[7, A025581(n)])` -/
def P414557407384835923.Spec : Prop :=
  ∀ n, P414557407384835923.a n = A176733 n

end A176733

/-! ## A176733.P16188504271669913986

`A060475(A000217(n+8)-8)`
-/

namespace A176733.P16188504271669913986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000217 (n + 8) - 8).toNat

end

end A176733.P16188504271669913986

namespace A176733

/-- `A060475(A000217(n+8)-8)` -/
def P16188504271669913986.Spec : Prop :=
  ∀ n, P16188504271669913986.a n = A176733 n

end A176733

/-! ## A176733.P17267275247919136865

`A060475(eq[8, A004736(n+1)])`
-/

namespace A176733.P17267275247919136865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176733.P17267275247919136865

namespace A176733

/-- `A060475(eq[8, A004736(n+1)])` -/
def P17267275247919136865.Spec : Prop :=
  ∀ n, P17267275247919136865.a n = A176733 n

end A176733

/-!
# A176734: a(n) = (n+7)*a(n-1) + (n-1)*a(n-2), a(-1)=0, a(0)=1.

The programs for A176734, the canonical program `A176734.P13277326762057157258` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176734 has offset 0).

The definition of A176734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+7)*a(n-1)+(n-1)*a(n-2)` (program `A176734.P13277326762057157258`, by `A176734.P13277326762057157258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176734.P13277326762057157258

`(n+7)*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176734

/-- `(n+7)*a(n-1)+(n-1)*a(n-2)` -/
def P13277326762057157258.Spec : Prop :=
  ∀ n, P13277326762057157258.a n = A176734 n

theorem P13277326762057157258.correct : P13277326762057157258.Spec := by
  intro n
  simp only [A176734]

end A176734

/-! ## A176734.P6302015188792318599

`A176733(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A176734.P6302015188792318599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176733 n + (n : ℤ) * a (n - 1)

end

end A176734.P6302015188792318599

namespace A176734

/-- `A176733(n)+n*a(n-1)` -/
def P6302015188792318599.Spec : Prop :=
  ∀ n, P6302015188792318599.a n = A176734 n

end A176734

/-! ## A176734.P11734918155546109611

`A060475(eq[8, A025581(n)])`
-/

namespace A176734.P11734918155546109611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176734.P11734918155546109611

namespace A176734

/-- `A060475(eq[8, A025581(n)])` -/
def P11734918155546109611.Spec : Prop :=
  ∀ n, P11734918155546109611.a n = A176734 n

end A176734

/-! ## A176734.P14740548626207578387

`A060475(A000217(n+9)-9)`
-/

namespace A176734.P14740548626207578387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000217 (n + 9) - 9).toNat

end

end A176734.P14740548626207578387

namespace A176734

/-- `A060475(A000217(n+9)-9)` -/
def P14740548626207578387.Spec : Prop :=
  ∀ n, P14740548626207578387.a n = A176734 n

end A176734

/-! ## A176734.P6037839551298446703

`A060475(eq[9, A004736(n+1)])`
-/

namespace A176734.P6037839551298446703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176734.P6037839551298446703

namespace A176734

/-- `A060475(eq[9, A004736(n+1)])` -/
def P6037839551298446703.Spec : Prop :=
  ∀ n, P6037839551298446703.a n = A176734 n

end A176734

/-! ## A176734.P13128599869859499991

`A060475(A000124(n+8)+n-1)`
-/

namespace A176734.P13128599869859499991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A176734.P13128599869859499991

namespace A176734

/-- `A060475(A000124(n+8)+n-1)` -/
def P13128599869859499991.Spec : Prop :=
  ∀ n, P13128599869859499991.a n = A176734 n

end A176734

/-!
# A176735: a(n) = (n+8)*a(n-1) + (n-1)*a(n-2), a(-1)=0, a(0)=1.

The programs for A176735, the canonical program `A176735.P8500304201677050749` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176735 has offset 0).

The definition of A176735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+8)*a(n-1)+(n-1)*a(n-2)` (program `A176735.P8500304201677050749`, by `A176735.P8500304201677050749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176735.P8500304201677050749

`(n+8)*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176735

/-- `(n+8)*a(n-1)+(n-1)*a(n-2)` -/
def P8500304201677050749.Spec : Prop :=
  ∀ n, P8500304201677050749.a n = A176735 n

theorem P8500304201677050749.correct : P8500304201677050749.Spec := by
  intro n
  simp only [A176735]

end A176735

/-! ## A176735.P10126767121044999055

`A176734(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A176735.P10126767121044999055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176734 n + (n : ℤ) * a (n - 1)

end

end A176735.P10126767121044999055

namespace A176735

/-- `A176734(n)+n*a(n-1)` -/
def P10126767121044999055.Spec : Prop :=
  ∀ n, P10126767121044999055.a n = A176735 n

end A176735

/-! ## A176735.P11824750446218554622

`A060475(eq[9, A025581(n)])`
-/

namespace A176735.P11824750446218554622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176735.P11824750446218554622

namespace A176735

/-- `A060475(eq[9, A025581(n)])` -/
def P11824750446218554622.Spec : Prop :=
  ∀ n, P11824750446218554622.a n = A176735 n

end A176735

/-! ## A176735.P13295616658324214306

`A060475(eq[19, A099375(n)])`
-/

namespace A176735.P13295616658324214306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176735.P13295616658324214306

namespace A176735

/-- `A060475(eq[19, A099375(n)])` -/
def P13295616658324214306.Spec : Prop :=
  ∀ n, P13295616658324214306.a n = A176735 n

end A176735

/-! ## A176735.P3943934800469697299

`A060475(eq[10, A004736(n+1)])`
-/

namespace A176735.P3943934800469697299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176735.P3943934800469697299

namespace A176735

/-- `A060475(eq[10, A004736(n+1)])` -/
def P3943934800469697299.Spec : Prop :=
  ∀ n, P3943934800469697299.a n = A176735 n

end A176735

/-!
# A176736: a(n) = (n+9)*a(n-1) + (n-1)*a(n-2), a(-1)=0, a(0)=1.

The programs for A176736, the canonical program `A176736.P8416562531565498775` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176736 has offset 0).

The definition of A176736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+9)*a(n-1)+(n-1)*a(n-2)` (program `A176736.P8416562531565498775`, by `A176736.P8416562531565498775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176736.P8416562531565498775

`(n+9)*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176736

/-- `(n+9)*a(n-1)+(n-1)*a(n-2)` -/
def P8416562531565498775.Spec : Prop :=
  ∀ n, P8416562531565498775.a n = A176736 n

theorem P8416562531565498775.correct : P8416562531565498775.Spec := by
  intro n
  simp only [A176736]

end A176736

/-! ## A176736.P12422957265202234505

`A176735(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A176736.P12422957265202234505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176735 n + (n : ℤ) * a (n - 1)

end

end A176736.P12422957265202234505

namespace A176736

/-- `A176735(n)+n*a(n-1)` -/
def P12422957265202234505.Spec : Prop :=
  ∀ n, P12422957265202234505.a n = A176736 n

end A176736

/-! ## A176736.P16310027878183811343

`A060475(eq[10, A025581(n)])`
-/

namespace A176736.P16310027878183811343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176736.P16310027878183811343

namespace A176736

/-- `A060475(eq[10, A025581(n)])` -/
def P16310027878183811343.Spec : Prop :=
  ∀ n, P16310027878183811343.a n = A176736 n

end A176736

/-! ## A176736.P3297758922922272398

`A060475(A000217(n+11)-11)`
-/

namespace A176736.P3297758922922272398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000217 (n + 11) - 11).toNat

end

end A176736.P3297758922922272398

namespace A176736

/-- `A060475(A000217(n+11)-11)` -/
def P3297758922922272398.Spec : Prop :=
  ∀ n, P3297758922922272398.a n = A176736 n

end A176736

/-! ## A176736.P10513186273200223019

`A060475(eq[11, A004736(n+1)])`
-/

namespace A176736.P10513186273200223019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176736.P10513186273200223019

namespace A176736

/-- `A060475(eq[11, A004736(n+1)])` -/
def P10513186273200223019.Spec : Prop :=
  ∀ n, P10513186273200223019.a n = A176736 n

end A176736

/-!
# A176737: Expansion of 1 / (1-4*x^2-3*x^3). (4,3)-Padovan sequence.

The programs for A176737, the canonical program `A176737.P12113581685333255418` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176737 has offset 0).

The definition of A176737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x^2-3x^3))` (program `A176737.P12113581685333255418`, by `A176737.P12113581685333255418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176737.P12113581685333255418

`ogf(1/(1-4x^2-3x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176737

/-- `ogf(1/(1-4x^2-3x^3))` -/
def P12113581685333255418.Spec : Prop :=
  ∀ n, P12113581685333255418.a n = A176737 n

theorem P12113581685333255418.correct : P12113581685333255418.Spec := by
  intro n
  simp only [A176737]

end A176737

/-! ## A176737.P4590047295803822746

`4*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A176737.P4590047295803822746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  4 * a (n - 2) + 3 * a (n - 3)

end

end A176737.P4590047295803822746

namespace A176737

/-- `4*a(n-2)+3*a(n-3)` -/
def P4590047295803822746.Spec : Prop :=
  ∀ n, (P4590047295803822746.a n : ℤ) = A176737 n

end A176737

/-! ## A176737.P1050814071535007005

`abs(1-A140165(n+2))`
-/

namespace A176737.P1050814071535007005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A140165 (n + 2)|

end

end A176737.P1050814071535007005

namespace A176737

/-- `abs(1-A140165(n+2))` -/
def P1050814071535007005.Spec : Prop :=
  ∀ n, P1050814071535007005.a n = A176737 n

end A176737

/-! ## A176737.P12881190386685488647

`A052533(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A176737.P12881190386685488647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A052533 n + a (n - 2)

end

end A176737.P12881190386685488647

namespace A176737

/-- `A052533(n)+a(n-2)` -/
def P12881190386685488647.Spec : Prop :=
  ∀ n, P12881190386685488647.a n = A176737 n

end A176737

/-! ## A176737.P4631933786481318236

`A006130(n)-a(n-1)` with `a(0)=1`
-/

namespace A176737.P4631933786481318236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006130 n - a (n - 1)

end

end A176737.P4631933786481318236

namespace A176737

/-- `A006130(n)-a(n-1)` -/
def P4631933786481318236.Spec : Prop :=
  ∀ n, P4631933786481318236.a n = A176737 n

end A176737

/-! ## A176737.P1685943094553497534

`abs(∑[A182228(n+1)])`
-/

namespace A176737.P1685943094553497534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A176737.P1685943094553497534

namespace A176737

/-- `abs(∑[A182228(n+1)])` -/
def P1685943094553497534.Spec : Prop :=
  ∀ n, P1685943094553497534.a n = A176737 n

end A176737

/-! ## A176737.P18065710698692836168

`abs(∑[A140167(n+1)])`
-/

namespace A176737.P18065710698692836168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A176737.P18065710698692836168

namespace A176737

/-- `abs(∑[A140167(n+1)])` -/
def P18065710698692836168.Spec : Prop :=
  ∀ n, P18065710698692836168.a n = A176737 n

end A176737

/-! ## A176737.P10953726499503954391

`Δ[A095343(n+2)/6]`
-/

namespace A176737.P10953726499503954391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095343 (n + 2) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176737.P10953726499503954391

namespace A176737

/-- `Δ[A095343(n+2)/6]` -/
def P10953726499503954391.Spec : Prop :=
  ∀ n, P10953726499503954391.a n = (A176737 n : ℚ)

end A176737

/-!
# A176738: Expansion of 1 / ((1+x)*(1-x-4*x^2)). (5,4)-Padovan sequence.

The programs for A176738, the canonical program `A176738.P14626355311205104954` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176738 has offset 0).

The definition of A176738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x^2-4x^3))` (program `A176738.P14626355311205104954`, by `A176738.P14626355311205104954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176738.P14626355311205104954

`ogf(1/(1-5x^2-4x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176738

/-- `ogf(1/(1-5x^2-4x^3))` -/
def P14626355311205104954.Spec : Prop :=
  ∀ n, P14626355311205104954.a n = A176738 n

theorem P14626355311205104954.correct : P14626355311205104954.Spec := by
  intro n
  simp only [A176738]

end A176738

/-! ## A176738.P14128790342356233949

`5*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A176738.P14128790342356233949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  5 * a (n - 2) + 4 * a (n - 3)

end

end A176738.P14128790342356233949

namespace A176738

/-- `5*a(n-2)+4*a(n-3)` -/
def P14128790342356233949.Spec : Prop :=
  ∀ n, (P14128790342356233949.a n : ℤ) = A176738 n

end A176738

/-! ## A176738.P13012330498612236473

`xor(1, a(n-1)+4*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A176738.P13012330498612236473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.xor 1 (a (n - 1) + 4 * a (n - 2))

end

end A176738.P13012330498612236473

namespace A176738

/-- `xor(1, a(n-1)+4*a(n-2))` -/
def P13012330498612236473.Spec : Prop :=
  ∀ n, (P13012330498612236473.a n : ℤ) = A176738 n

end A176738

/-! ## A176738.P10396703192818937817

`A006131(n)-a(n-1)` with `a(0)=1`
-/

namespace A176738.P10396703192818937817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006131 n - a (n - 1)

end

end A176738.P10396703192818937817

namespace A176738

/-- `A006131(n)-a(n-1)` -/
def P10396703192818937817.Spec : Prop :=
  ∀ n, P10396703192818937817.a n = A176738 n

end A176738

/-! ## A176738.P17712453677026654523

`A052923(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A176738.P17712453677026654523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A052923 n + a (n - 2)

end

end A176738.P17712453677026654523

namespace A176738

/-- `A052923(n)+a(n-2)` -/
def P17712453677026654523.Spec : Prop :=
  ∀ n, P17712453677026654523.a n = A176738 n

end A176738

/-! ## A176738.P9548577804021510234

`2*A052923(n)-A344261(n)`
-/

namespace A176738.P9548577804021510234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052923 n - A344261 n

end

end A176738.P9548577804021510234

namespace A176738

/-- `2*A052923(n)-A344261(n)` -/
def P9548577804021510234.Spec : Prop :=
  ∀ n, P9548577804021510234.a n = A176738 n

end A176738

/-! ## A176738.P1051399076427416278

`A006131(n)+A006131(n)-A344236(n+1)`
-/

namespace A176738.P1051399076427416278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n + (A006131 n - A344236 (n + 1))

end

end A176738.P1051399076427416278

namespace A176738

/-- `A006131(n)+A006131(n)-A344236(n+1)` -/
def P1051399076427416278.Spec : Prop :=
  ∀ n, P1051399076427416278.a n = A176738 n

end A176738

/-! ## A176738.P11395111112658586468

`abs(∑[∑[A122112(n)]])`
-/

namespace A176738.P11395111112658586468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A176738.P11395111112658586468

namespace A176738

/-- `abs(∑[∑[A122112(n)]])` -/
def P11395111112658586468.Spec : Prop :=
  ∀ n, P11395111112658586468.a n = A176738 n

end A176738

/-! ## A176738.P10948035216269266148

`A102446(n)-A344236(n+1)`
-/

namespace A176738.P10948035216269266148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102446 n - A344236 (n + 1)

end

end A176738.P10948035216269266148

namespace A176738

/-- `A102446(n)-A344236(n+1)` -/
def P10948035216269266148.Spec : Prop :=
  ∀ n, P10948035216269266148.a n = A176738 n

end A176738

/-! ## A176738.P14010325792593599086

`A344236(n+2)-A006131(n+1)`
-/

namespace A176738.P14010325792593599086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 (n + 2) - A006131 (n + 1)

end

end A176738.P14010325792593599086

namespace A176738

/-- `A344236(n+2)-A006131(n+1)` -/
def P14010325792593599086.Spec : Prop :=
  ∀ n, P14010325792593599086.a n = A176738 n

end A176738

/-! ## A176738.P7380542805034722355

`A052923(n+2)-A344261(n+2)`
-/

namespace A176738.P7380542805034722355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 (n + 2) - A344261 (n + 2)

end

end A176738.P7380542805034722355

namespace A176738

/-- `A052923(n+2)-A344261(n+2)` -/
def P7380542805034722355.Spec : Prop :=
  ∀ n, P7380542805034722355.a n = A176738 n

end A176738

/-! ## A176738.P6152331566328666883

`Δ[A095344(n+2)/8]`
-/

namespace A176738.P6152331566328666883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095344 (n + 2) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176738.P6152331566328666883

namespace A176738

/-- `Δ[A095344(n+2)/8]` -/
def P6152331566328666883.Spec : Prop :=
  ∀ n, P6152331566328666883.a n = (A176738 n : ℚ)

end A176738

/-! ## A176738.P9846235829007171417

`A190864(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A176738.P9846235829007171417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A190864 (2 * n) - a (n - 1)

end

end A176738.P9846235829007171417

namespace A176738

/-- `A190864(2*n)-a(n-1)` -/
def P9846235829007171417.Spec : Prop :=
  ∀ n, P9846235829007171417.a n = A176738 n

end A176738

/-!
# A176739: Expansion of 1/(1-2*x^2-4*x^3). (2,4)-Padovan sequence.

The programs for A176739, the canonical program `A176739.P6173369708825510355` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176739 has offset 0).

The definition of A176739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^2-4x^3))` (program `A176739.P6173369708825510355`, by `A176739.P6173369708825510355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176739.P6173369708825510355

`ogf(1/(1-2x^2-4x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176739

/-- `ogf(1/(1-2x^2-4x^3))` -/
def P6173369708825510355.Spec : Prop :=
  ∀ n, P6173369708825510355.a n = A176739 n

theorem P6173369708825510355.correct : P6173369708825510355.Spec := by
  intro n
  simp only [A176739]

end A176739

/-! ## A176739.P11029401012719415545

`2*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A176739.P11029401012719415545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * a (n - 2) + 4 * a (n - 3)

end

end A176739.P11029401012719415545

namespace A176739

/-- `2*a(n-2)+4*a(n-3)` -/
def P11029401012719415545.Spec : Prop :=
  ∀ n, (P11029401012719415545.a n : ℤ) = A176739 n

end A176739

/-! ## A176739.P15431418818422355545

`A108520(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A176739.P15431418818422355545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108520 n + 2 * a (n - 1)

end

end A176739.P15431418818422355545

namespace A176739

/-- `A108520(n)+2*a(n-1)` -/
def P15431418818422355545.Spec : Prop :=
  ∀ n, P15431418818422355545.a n = A176739 n

end A176739

/-! ## A176739.P12049248215986883657

`2*a(n-1)-A084102(n)` with `a(0)=1`
-/

namespace A176739.P12049248215986883657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A084102 n

end

end A176739.P12049248215986883657

namespace A176739

/-- `2*a(n-1)-A084102(n)` -/
def P12049248215986883657.Spec : Prop :=
  ∀ n, P12049248215986883657.a n = A176739 n

end A176739

/-! ## A176739.P13501854868258264210

`∑[A038519(n)-A134812(n)]`
-/

namespace A176739.P13501854868258264210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 n - A134812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176739.P13501854868258264210

namespace A176739

/-- `∑[A038519(n)-A134812(n)]` -/
def P13501854868258264210.Spec : Prop :=
  ∀ n, P13501854868258264210.a n = A176739 n

end A176739

/-! ## A176739.P968304067062667284

`A134812(n+1)+A134136(n)`
-/

namespace A176739.P968304067062667284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134812 (n + 1) + A134136 n

end

end A176739.P968304067062667284

namespace A176739

/-- `A134812(n+1)+A134136(n)` -/
def P968304067062667284.Spec : Prop :=
  ∀ n, P968304067062667284.a n = A176739 n

end A176739

/-! ## A176739.P5498315387889347468

`A134812(n+3)+A090132(n+1)`
-/

namespace A176739.P5498315387889347468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134812 (n + 3) + A090132 (n + 1)

end

end A176739.P5498315387889347468

namespace A176739

/-- `A134812(n+3)+A090132(n+1)` -/
def P5498315387889347468.Spec : Prop :=
  ∀ n, P5498315387889347468.a n = A176739 n

end A176739

/-! ## A176739.P6828596417311389908

`A134812(n+3)-A009116(n+2)`
-/

namespace A176739.P6828596417311389908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134812 (n + 3) - A009116 (n + 2)

end

end A176739.P6828596417311389908

namespace A176739

/-- `A134812(n+3)-A009116(n+2)` -/
def P6828596417311389908.Spec : Prop :=
  ∀ n, P6828596417311389908.a n = A176739 n

end A176739

/-! ## A176739.P14443406143401116086

`A134812(n+1)+A134812(n)+A038521(n)`
-/

namespace A176739.P14443406143401116086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134812 (n + 1) + (A134812 n + A038521 n)

end

end A176739.P14443406143401116086

namespace A176739

/-- `A134812(n+1)+A134812(n)+A038521(n)` -/
def P14443406143401116086.Spec : Prop :=
  ∀ n, P14443406143401116086.a n = A176739 n

end A176739

/-! ## A176739.P18150854543844792864

`A134136(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A176739.P18150854543844792864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134136 (n + 1) - a (n - 1)

end

end A176739.P18150854543844792864

namespace A176739

/-- `A134136(n+1)-a(n-1)` -/
def P18150854543844792864.Spec : Prop :=
  ∀ n, P18150854543844792864.a n = A176739 n

end A176739

/-! ## A176739.P15937435558339813313

`A000079(n)-2*A134136(n)`
-/

namespace A176739.P15937435558339813313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 2 * A134136 n

end

end A176739.P15937435558339813313

namespace A176739

/-- `A000079(n)-2*A134136(n)` -/
def P15937435558339813313.Spec : Prop :=
  ∀ n, P15937435558339813313.a n = A176739 n

end A176739

/-! ## A176739.P3001002827979093547

`A038521(n+2)-A134136(n+1)`
-/

namespace A176739.P3001002827979093547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038521 (n + 2) - A134136 (n + 1)

end

end A176739.P3001002827979093547

namespace A176739

/-- `A038521(n+2)-A134136(n+1)` -/
def P3001002827979093547.Spec : Prop :=
  ∀ n, P3001002827979093547.a n = A176739 n

end A176739

/-! ## A176739.P14820332265182895388

`A108520(n)+A134068(n)-A038519(n+1)`
-/

namespace A176739.P14820332265182895388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n + (A134068 n - A038519 (n + 1))

end

end A176739.P14820332265182895388

namespace A176739

/-- `A108520(n)+A134068(n)-A038519(n+1)` -/
def P14820332265182895388.Spec : Prop :=
  ∀ n, P14820332265182895388.a n = A176739 n

end A176739

/-! ## A176739.P4386178483893153255

`A134068(n)-(A108520(n+1)+A038518(n+1))`
-/

namespace A176739.P4386178483893153255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134068 n - (A108520 (n + 1) + A038518 (n + 1))

end

end A176739.P4386178483893153255

namespace A176739

/-- `A134068(n)-(A108520(n+1)+A038518(n+1))` -/
def P4386178483893153255.Spec : Prop :=
  ∀ n, P4386178483893153255.a n = A176739 n

end A176739

/-! ## A176739.P16249673775794753303

`A038518(n+1)+A038520(n+1)-A134136(n+1)`
-/

namespace A176739.P16249673775794753303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (n + 1) + (A038520 (n + 1) - A134136 (n + 1))

end

end A176739.P16249673775794753303

namespace A176739

/-- `A038518(n+1)+A038520(n+1)-A134136(n+1)` -/
def P16249673775794753303.Spec : Prop :=
  ∀ n, P16249673775794753303.a n = A176739 n

end A176739

/-! ## A176739.P12832528273201140449

`Δ[A038518(n+3)/5]`
-/

namespace A176739.P12832528273201140449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038518 (n + 3) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176739.P12832528273201140449

namespace A176739

/-- `Δ[A038518(n+3)/5]` -/
def P12832528273201140449.Spec : Prop :=
  ∀ n, P12832528273201140449.a n = (A176739 n : ℚ)

end A176739

/-! ## A176739.P16400089032791745591

`Δ[A275016(n+3)/5]`
-/

namespace A176739.P16400089032791745591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275016 (n + 3) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176739.P16400089032791745591

namespace A176739

/-- `Δ[A275016(n+3)/5]` -/
def P16400089032791745591.Spec : Prop :=
  ∀ n, P16400089032791745591.a n = (A176739 n : ℚ)

end A176739

/-! ## A176739.P4599006983113741836

`A134136(n+3)-A038518(n+3)`
-/

namespace A176739.P4599006983113741836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134136 (n + 3) - A038518 (n + 3)

end

end A176739.P4599006983113741836

namespace A176739

/-- `A134136(n+3)-A038518(n+3)` -/
def P4599006983113741836.Spec : Prop :=
  ∀ n, P4599006983113741836.a n = A176739 n

end A176739

/-!
# A176741: Fibonacci-Chebyshev sequence depending on rabbit sequence A005614.

The programs for A176741, there is no canonical definition to state claims against.
-/

/-! ## A176741.P4562696568712621463

`A008624(and(A018698(n+1), A098162(n+1)))`
-/

namespace A176741.P4562696568712621463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.land (A018698 (n + 1)) (A098162 (n + 1))).toNat

end

end A176741.P4562696568712621463

/-!
# A176742: Expansion of (1 - x^2) / (1 + x^2) in powers of x.

The programs for A176742, the canonical program `A176742.P13679403702882205445` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176742 has offset 0).

The definition of A176742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1+x^2))` (program `A176742.P13679403702882205445`, by `A176742.P13679403702882205445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176742.P13679403702882205445

`ogf((1-x^2)/(1+x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176742

/-- `ogf((1-x^2)/(1+x^2))` -/
def P13679403702882205445.Spec : Prop :=
  ∀ n, P13679403702882205445.a n = A176742 n

theorem P13679403702882205445.correct : P13679403702882205445.Spec := by
  intro n
  simp only [A176742]

end A176742

/-!
# A176743: a(n) = gcd(A000217(n+1), A002378(n+2)).

The programs for A176743, the canonical program `A176743.P16166337781164789737` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176743 has offset 0).

The definition of A176743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000217(n+1), A002378(n+2))` (program `A176743.P16166337781164789737`, by `A176743.P16166337781164789737.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176743.P7976979780653152547

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=10, a(4)=3, a(5)=7, a(6)=4, a(7)=18`
-/

namespace A176743.P7976979780653152547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 10, 3, 7, 4, 18] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A176743.P7976979780653152547

namespace A176743

/-- `2*a(n-4)-a(n-8)` -/
def P7976979780653152547.Spec : Prop :=
  ∀ n, P7976979780653152547.a n = A176743 n

end A176743

/-! ## A176743.P16166337781164789737

`gcd(A000217(n+1), A002378(n+2))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A176743

/-- `gcd(A000217(n+1), A002378(n+2))` -/
def P16166337781164789737.Spec : Prop :=
  ∀ n, (P16166337781164789737.a n : ℤ) = A176743 n

theorem P16166337781164789737.correct : P16166337781164789737.Spec := by
  intro n
  simp only [A176743]

end A176743

/-! ## A176743.P9685964712454096212

`gcd(2*(n+2), ∑[n+1])`
-/

namespace A176743.P9685964712454096212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176743.P9685964712454096212

namespace A176743

/-- `gcd(2*(n+2), ∑[n+1])` -/
def P9685964712454096212.Spec : Prop :=
  ∀ n, (P9685964712454096212.a n : ℤ) = A176743 n

end A176743

/-! ## A176743.P10816056320665664969

`(n/2+1)*gcd(4, n+1)`
-/

namespace A176743.P10816056320665664969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (Nat.gcd 4 (n + 1) : ℚ)

end

end A176743.P10816056320665664969

namespace A176743

/-- `(n/2+1)*gcd(4, n+1)` -/
def P10816056320665664969.Spec : Prop :=
  ∀ n, P10816056320665664969.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P3512778425992940346

`lcm(and(2, n)+2, n+2)/2`
-/

namespace A176743.P3512778425992940346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (Nat.land 2 n + 2) (n + 2) : ℚ) / 2

end

end A176743.P3512778425992940346

namespace A176743

/-- `lcm(and(2, n)+2, n+2)/2` -/
def P3512778425992940346.Spec : Prop :=
  ∀ n, P3512778425992940346.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P18154624554624460151

`4/lcm(4, n+1)*∑[n+1]`
-/

namespace A176743.P18154624554624460151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.lcm 4 (n + 1) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A176743.P18154624554624460151

namespace A176743

/-- `4/lcm(4, n+1)*∑[n+1]` -/
def P18154624554624460151.Spec : Prop :=
  ∀ n, P18154624554624460151.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P11548577708166416832

`∑[n+2+n]/lcm(2, a(n-1))` with `a(0)=1`
-/

namespace A176743.P11548577708166416832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Int.lcm 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A176743.P11548577708166416832

namespace A176743

/-- `∑[n+2+n]/lcm(2, a(n-1))` -/
def P11548577708166416832.Spec : Prop :=
  ∀ n, P11548577708166416832.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P14976349261194300230

`∑[n+1]/A060819(n+1)`
-/

namespace A176743.P14976349261194300230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A060819 (n + 1) : ℚ)

end

end A176743.P14976349261194300230

namespace A176743

/-- `∑[n+1]/A060819(n+1)` -/
def P14976349261194300230.Spec : Prop :=
  ∀ n, P14976349261194300230.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P9092777520631851822

`(n+2)/2^A008683(gcd(n+3, n-1))`
-/

namespace A176743.P9092777520631851822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (2 : ℚ) ^ (A008683 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) : ℤ)

end

end A176743.P9092777520631851822

namespace A176743

/-- `(n+2)/2^A008683(gcd(n+3, n-1))` -/
def P9092777520631851822.Spec : Prop :=
  ∀ n, P9092777520631851822.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P17955269541369310732

`A145979(n)/A014695(n)`
-/

namespace A176743.P17955269541369310732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145979 n : ℚ) / (A014695 n : ℚ)

end

end A176743.P17955269541369310732

namespace A176743

/-- `A145979(n)/A014695(n)` -/
def P17955269541369310732.Spec : Prop :=
  ∀ n, P17955269541369310732.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P7043850920503569679

`A145051(n+1)*A177704(n)`
-/

namespace A176743.P7043850920503569679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) * A177704 n

end

end A176743.P7043850920503569679

namespace A176743

/-- `A145051(n+1)*A177704(n)` -/
def P7043850920503569679.Spec : Prop :=
  ∀ n, P7043850920503569679.a n = A176743 n

end A176743

/-! ## A176743.P7511728233654887938

`A045896(n)/A186646(n+1)`
-/

namespace A176743.P7511728233654887938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045896 n : ℚ) / (A186646 (n + 1) : ℚ)

end

end A176743.P7511728233654887938

namespace A176743

/-- `A045896(n)/A186646(n+1)` -/
def P7511728233654887938.Spec : Prop :=
  ∀ n, P7511728233654887938.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P8228362122730311978

`A257942(n)/A062828(n+1)`
-/

namespace A176743.P8228362122730311978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257942 n : ℚ) / (A062828 (n + 1) : ℚ)

end

end A176743.P8228362122730311978

namespace A176743

/-- `A257942(n)/A062828(n+1)` -/
def P8228362122730311978.Spec : Prop :=
  ∀ n, P8228362122730311978.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P8526685002860710042

`lcm(A130658(n), A145051(n+1))`
-/

namespace A176743.P8526685002860710042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130658 n) (A145051 (n + 1))

end

end A176743.P8526685002860710042

namespace A176743

/-- `lcm(A130658(n), A145051(n+1))` -/
def P8526685002860710042.Spec : Prop :=
  ∀ n, (P8526685002860710042.a n : ℤ) = A176743 n

end A176743

/-! ## A176743.P2937496101611949718

`A040001(A026741(n+1))*A145051(n+1)`
-/

namespace A176743.P2937496101611949718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A026741 (n + 1)).toNat * A145051 (n + 1)

end

end A176743.P2937496101611949718

namespace A176743

/-- `A040001(A026741(n+1))*A145051(n+1)` -/
def P2937496101611949718.Spec : Prop :=
  ∀ n, P2937496101611949718.a n = A176743 n

end A176743

/-! ## A176743.P4512087286624286916

`A000217(n+1)/A026741(A026741(n+1))`
-/

namespace A176743.P4512087286624286916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A026741 (A026741 (n + 1)).toNat : ℚ)

end

end A176743.P4512087286624286916

namespace A176743

/-- `A000217(n+1)/A026741(A026741(n+1))` -/
def P4512087286624286916.Spec : Prop :=
  ∀ n, P4512087286624286916.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P12460606380349847131

`A220466(n+1)/A160467(A026741(n+1))`
-/

namespace A176743.P12460606380349847131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220466 (n + 1) : ℚ) / (A160467 (A026741 (n + 1)).toNat : ℚ)

end

end A176743.P12460606380349847131

namespace A176743

/-- `A220466(n+1)/A160467(A026741(n+1))` -/
def P12460606380349847131.Spec : Prop :=
  ∀ n, P12460606380349847131.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P12904211107906703654

`A220466(n+1)/A160467(A160467(n+1))`
-/

namespace A176743.P12904211107906703654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220466 (n + 1) : ℚ) / (A160467 (A160467 (n + 1)).toNat : ℚ)

end

end A176743.P12904211107906703654

namespace A176743

/-- `A220466(n+1)/A160467(A160467(n+1))` -/
def P12904211107906703654.Spec : Prop :=
  ∀ n, P12904211107906703654.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P18358971531406612306

`A026741(n+1)/A060819(n+1)*A145051(n+1)`
-/

namespace A176743.P18358971531406612306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) : ℚ) / (A060819 (n + 1) : ℚ) * (A145051 (n + 1) : ℚ)

end

end A176743.P18358971531406612306

namespace A176743

/-- `A026741(n+1)/A060819(n+1)*A145051(n+1)` -/
def P18358971531406612306.Spec : Prop :=
  ∀ n, P18358971531406612306.a n = (A176743 n : ℚ)

end A176743

/-! ## A176743.P11002531246821978565

`A145051(n+1)*A160467(n+1)/A160467(A160467(n+1))`
-/

namespace A176743.P11002531246821978565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145051 (n + 1) * A160467 (n + 1) : ℚ) / (A160467 (A160467 (n + 1)).toNat : ℚ)

end

end A176743.P11002531246821978565

namespace A176743

/-- `A145051(n+1)*A160467(n+1)/A160467(A160467(n+1))` -/
def P11002531246821978565.Spec : Prop :=
  ∀ n, P11002531246821978565.a n = (A176743 n : ℚ)

end A176743

/-!
# A176745: Zero followed by powers of 2 (A131577) and the integers that cannot be represented as a sum of two earlier terms in the sequence.

The programs for A176745, there is no canonical definition to state claims against.
-/

/-! ## A176745.P15511396474698983976

`lt[A335474(A020639(2*n+1)), A005681(n+1)]`
-/

namespace A176745.P15511396474698983976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A020639 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176745.P15511396474698983976

/-! ## A176745.P15159849385649587061

`eq[A001285(n), A233777(A020639(2*n+1))]`
-/

namespace A176745.P15159849385649587061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233777 (A020639 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176745.P15159849385649587061

/-! ## A176745.P18028604401529954881

`lt[A067029(A000041(n)), A001285(n)]`
-/

namespace A176745.P18028604401529954881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176745.P18028604401529954881

/-! ## A176745.P3886855894472890653

`lt[A337430(2*(n+1)), A337384(A337442(n))]`
-/

namespace A176745.P3886855894472890653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337430 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337384 (A337442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176745.P3886855894472890653

/-! ## A176745.P2177352623758115294

`lt[A009994(n+1), A048691(A115339(n+5))]`
-/

namespace A176745.P2177352623758115294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A115339 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176745.P2177352623758115294

/-!
# A176747: Triangular numbers and numbers which cannot be represented as a sum of two earlier members of the sequence.

The programs for A176747, there is no canonical definition to state claims against.
-/

/-! ## A176747.P11104738042405064181

`eq[A202941(A321449(n)), A370050(n+1)]`
-/

namespace A176747.P11104738042405064181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202941 (A321449 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176747.P11104738042405064181

/-! ## A176747.P10460994093233627223

`eq[A000161(A193710(n+1)), A003989(n+1)]`
-/

namespace A176747.P10460994093233627223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A193710 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176747.P10460994093233627223

/-! ## A176747.P14202034215134516303

`eq[A020639(A071949(n)), A031242(n+1)]`
-/

namespace A176747.P14202034215134516303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A071949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176747.P14202034215134516303

/-! ## A176747.P2365271441189110327

`eq[A038500(n+1), A238847(A059268(n))]`
-/

namespace A176747.P2365271441189110327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238847 (A059268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176747.P2365271441189110327

/-! ## A176747.P11673699998605477822

`eq[A031242(n+1), A064895(A059268(n)²)]`
-/

namespace A176747.P11673699998605477822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064895 (A059268 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176747.P11673699998605477822

/-!
# A176748: a(n) = a(n-1)^3-a(n-2) with a(1)=1, a(2)=2.

The programs for A176748, the canonical program `A176748.P11642442845100194350` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176748 has offset 1).

The definition of A176748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^3-a(n-2)` (program `A176748.P11642442845100194350`, by `A176748.P11642442845100194350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176748.P11642442845100194350

`a(n-1)^3-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176748

/-- `a(n-1)^3-a(n-2)` -/
def P11642442845100194350.Spec : Prop :=
  ∀ n, P11642442845100194350.a n = A176748 (n + 1)

theorem P11642442845100194350.correct : P11642442845100194350.Spec := by
  intro n
  simp only [A176748, Nat.add_sub_cancel]

end A176748

/-! ## A176748.P7467286225062711386

`a(n-1)²*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A176748.P7467286225062711386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ 2 * a (n - 1) - a (n - 2)

end

end A176748.P7467286225062711386

namespace A176748

/-- `a(n-1)²*a(n-1)-a(n-2)` -/
def P7467286225062711386.Spec : Prop :=
  ∀ n, P7467286225062711386.a n = A176748 (n + 1)

theorem P7467286225062711386.correct : P7467286225062711386.Spec := by
  intro n
  simp only [A176748, Nat.add_sub_cancel, A176748.P7467286225062711386.a, A176748.P11642442845100194350.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A176748

/-! ## A176748.P628531197128110897

`a(n-1)²²/floor(a(n-1))-a(n-2)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A176748.P628531197128110897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) ^ 2) ^ 2 / (⌊a (n - 1)⌋ : ℚ) - a (n - 2)

end

end A176748.P628531197128110897

namespace A176748

/-- `a(n-1)²²/floor(a(n-1))-a(n-2)` -/
def P628531197128110897.Spec : Prop :=
  ∀ n, P628531197128110897.a n = (A176748 (n + 1) : ℚ)

end A176748

/-!
# A176749: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=3, k=0 and l=-1.

The programs for A176749, there is no canonical definition to state claims against.
-/

/-! ## A176749.P1718698687831457749

`∑[A108839(∑[A110170(n)]+1)]`
-/

namespace A176749.P1718698687831457749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108839 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176749.P1718698687831457749

/-! ## A176749.P5916699998800594561

`A238690(A072597(n)+A025581(n))`
-/

namespace A176749.P5916699998800594561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A072597 n + A025581 n).toNat

end

end A176749.P5916699998800594561

/-!
# A176750: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=4, k=0 and l=-1.

The programs for A176750, there is no canonical definition to state claims against.
-/

/-! ## A176750.P3938947136092907439

`A278950(xor(A060867(n+1), A299274(n+2)))`
-/

namespace A176750.P3938947136092907439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278950 (Int.xor (A060867 (n + 1)) (A299274 (n + 2))).toNat

end

end A176750.P3938947136092907439

/-!
# A176751: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=5, k=0 and l=-1.

The programs for A176751, there is no canonical definition to state claims against.
-/

/-! ## A176751.P18594803356567232

`A256100(A306477(n+4)+A022138(3*n))`
-/

namespace A176751.P18594803356567232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256100 (A306477 (n + 4) + A022138 (3 * n)).toNat

end

end A176751.P18594803356567232

/-!
# A176753: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=1, k=0 and l=-2.

The programs for A176753, there is no canonical definition to state claims against.
-/

/-! ## A176753.P12022501983076182746

`A378283(A006450(n+1))-A032009(n+1)`
-/

namespace A176753.P12022501983076182746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378283 (A006450 (n + 1)).toNat - A032009 (n + 1)

end

end A176753.P12022501983076182746

/-!
# A176754: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=2, k=0 and l=-2.

The programs for A176754, there is no canonical definition to state claims against.
-/

/-! ## A176754.P7608517125085359500

`A030603(A026770(n)+5)`
-/

namespace A176754.P7608517125085359500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030603 (A026770 n + 5).toNat

end

end A176754.P7608517125085359500

/-! ## A176754.P17370820828740075215

`A165190(A228339(n)+11)`
-/

namespace A176754.P17370820828740075215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A228339 n + 11).toNat

end

end A176754.P17370820828740075215

/-! ## A176754.P14307670020214840949

`∑{e}[A164161(3*n+2), A052284(#)]`
-/

namespace A176754.P14307670020214840949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164161 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A052284 (Nat.factorization (f1 n).natAbs p)

end

end A176754.P14307670020214840949

/-!
# A176755: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=3, k=0 and l=-2.

The programs for A176755, there is no canonical definition to state claims against.
-/

/-! ## A176755.P3167709263913326785

`A247908(or(n, A150257(n)))`
-/

namespace A176755.P3167709263913326785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (Int.lor (n : ℤ) (A150257 n)).toNat

end

end A176755.P3167709263913326785

/-! ## A176755.P5392305795659155671

`∑[A274651(∑[A015456(n)])]`
-/

namespace A176755.P5392305795659155671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176755.P5392305795659155671

/-!
# A176756: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=4, k=0 and l=-2.

The programs for A176756, there is no canonical definition to state claims against.
-/

/-! ## A176756.P13333436722103493412

`A338252(or(A000700(n), A338279(n+1)))`
-/

namespace A176756.P13333436722103493412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338252 (Int.lor (A000700 n) (A338279 (n + 1))).toNat

end

end A176756.P13333436722103493412

/-! ## A176756.P14540629531359008844

`A338252(or(A086063(n), A338279(n+1)))`
-/

namespace A176756.P14540629531359008844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338252 (Int.lor (A086063 n) (A338279 (n + 1))).toNat

end

end A176756.P14540629531359008844

/-!
# A176757: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=5, k=0 and l=-2.

The programs for A176757, there is no canonical definition to state claims against.
-/

/-! ## A176757.P32943054966763411

`xor(n, A101909(A109877(n+1)))`
-/

namespace A176757.P32943054966763411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A101909 (A109877 (n + 1)).toNat)

end

end A176757.P32943054966763411

/-!
# A176758: a(n) = Sum_{k=0..floor((n-1)/2)} (3^k-1)*binomial(n, 2*k+1).

The programs for A176758, the canonical program `A176758.P4647366096493658833` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176758 has offset 3).

The definition of A176758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176758.P4647366096493658833

`2*A094309(n+3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A176758

/-- `2*A094309(n+3)` -/
def P4647366096493658833.Spec : Prop :=
  ∀ n, P4647366096493658833.a n = A176758 (n + 3)

theorem P4647366096493658833.correct : P4647366096493658833.Spec := by
  intro n
  simp only [A176758, Nat.add_sub_cancel]

end A176758

/-! ## A176758.P11550078522848912657

`A002605(n+3)-2^(n+2)`
-/

namespace A176758.P11550078522848912657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 3) - (2 ^ (n + 2) : ℤ)

end

end A176758.P11550078522848912657

namespace A176758

/-- `A002605(n+3)-2^(n+2)` -/
def P11550078522848912657.Spec : Prop :=
  ∀ n, P11550078522848912657.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P1972043637342677431

`ogf(2/(1-4x+2x^2+4x^3))`
-/

namespace A176758.P1972043637342677431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -4, 2, 4] n

end

end A176758.P1972043637342677431

namespace A176758

/-- `ogf(2/(1-4x+2x^2+4x^3))` -/
def P1972043637342677431.Spec : Prop :=
  ∀ n, P1972043637342677431.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P4119634106320295286

`∑[2*A094306(n+2)]`
-/

namespace A176758.P4119634106320295286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094306 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176758.P4119634106320295286

namespace A176758

/-- `∑[2*A094306(n+2)]` -/
def P4119634106320295286.Spec : Prop :=
  ∀ n, P4119634106320295286.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P186412519302835166

`∑[2*Δ[A028859(n)-2^n]]`
-/

namespace A176758.P186412519302835166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176758.P186412519302835166

namespace A176758

/-- `∑[2*Δ[A028859(n)-2^n]]` -/
def P186412519302835166.Spec : Prop :=
  ∀ n, P186412519302835166.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P874363519984749066

`∑[2*(A052945(n+1)-2^n)]`
-/

namespace A176758.P874363519984749066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052945 (n + 1) - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176758.P874363519984749066

namespace A176758

/-- `∑[2*(A052945(n+1)-2^n)]` -/
def P874363519984749066.Spec : Prop :=
  ∀ n, P874363519984749066.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P11858239023087168638

`∑[2*(A026150(n)+a(n-1))]` with `a(0)=2`
-/

namespace A176758.P11858239023087168638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * (A026150 n + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176758.P11858239023087168638

namespace A176758

/-- `∑[2*(A026150(n)+a(n-1))]` -/
def P11858239023087168638.Spec : Prop :=
  ∀ n, P11858239023087168638.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P4363288701787699768

`2*(A002605(n+1)+a(n-1))` with `a(0)=2`
-/

namespace A176758.P4363288701787699768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A002605 (n + 1) + a (n - 1))

end

end A176758.P4363288701787699768

namespace A176758

/-- `2*(A002605(n+1)+a(n-1))` -/
def P4363288701787699768.Spec : Prop :=
  ∀ n, P4363288701787699768.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P14242713959008537503

`record[2*(A155020(n)-A131577(n))]`
-/

namespace A176758.P14242713959008537503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155020 n - A131577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176758.P14242713959008537503

namespace A176758

/-- `record[2*(A155020(n)-A131577(n))]` -/
def P14242713959008537503.Spec : Prop :=
  ∀ n, P14242713959008537503.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P10698745290693417327

`A005665(n+2)-A000225(n+2)`
-/

namespace A176758.P10698745290693417327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005665 (n + 2) - A000225 (n + 2)

end

end A176758.P10698745290693417327

namespace A176758

/-- `A005665(n+2)-A000225(n+2)` -/
def P10698745290693417327.Spec : Prop :=
  ∀ n, P10698745290693417327.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P10727578453545037758

`A094309(n+4)-A002605(n+2)`
-/

namespace A176758.P10727578453545037758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094309 (n + 4) - A002605 (n + 2)

end

end A176758.P10727578453545037758

namespace A176758

/-- `A094309(n+4)-A002605(n+2)` -/
def P10727578453545037758.Spec : Prop :=
  ∀ n, P10727578453545037758.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P11789896617634767269

`∑[∑[A083337(n+1)-A000079(n)]]`
-/

namespace A176758.P11789896617634767269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 (n + 1) - A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176758.P11789896617634767269

namespace A176758

/-- `∑[∑[A083337(n+1)-A000079(n)]]` -/
def P11789896617634767269.Spec : Prop :=
  ∀ n, P11789896617634767269.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P10760414971679741278

`A094309(n+3)+∑[A094306(n+2)]`
-/

namespace A176758.P10760414971679741278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094306 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094309 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176758.P10760414971679741278

namespace A176758

/-- `A094309(n+3)+∑[A094306(n+2)]` -/
def P10760414971679741278.Spec : Prop :=
  ∀ n, P10760414971679741278.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P11839347128172539078

`2*(A028859(n+1)-A000079(n+1))`
-/

namespace A176758.P11839347128172539078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028859 (n + 1) - A000079 (n + 1))

end

end A176758.P11839347128172539078

namespace A176758

/-- `2*(A028859(n+1)-A000079(n+1))` -/
def P11839347128172539078.Spec : Prop :=
  ∀ n, P11839347128172539078.a n = A176758 (n + 3)

end A176758

/-! ## A176758.P17562433675457526835

`2*A209240(A000124(n+1))`
-/

namespace A176758.P17562433675457526835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209240 (A000124 (n + 1)).toNat

end

end A176758.P17562433675457526835

namespace A176758

/-- `2*A209240(A000124(n+1))` -/
def P17562433675457526835.Spec : Prop :=
  ∀ n, P17562433675457526835.a n = A176758 (n + 3)

end A176758

/-!
# A176759: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=0, k=1 and l=-1.

The programs for A176759, there is no canonical definition to state claims against.
-/

/-! ## A176759.P12440342059736896547

`∑[A025261(n+1)]-ceil(acot(n))`
-/

namespace A176759.P12440342059736896547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A176759.P12440342059736896547

/-! ## A176759.P13110138517474461417

`∑[A025261(n+1)]-A054977(n)`
-/

namespace A176759.P13110138517474461417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054977 n

end

end A176759.P13110138517474461417

/-! ## A176759.P8458791366769461376

`∑[A025261(n+1)]-A000034(A004277(n))`
-/

namespace A176759.P8458791366769461376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000034 (A004277 n).toNat

end

end A176759.P8458791366769461376

/-! ## A176759.P17712376159684582742

`∑[A025261(n+1)]-A027642(A048883(n))`
-/

namespace A176759.P17712376159684582742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027642 (A048883 n).toNat

end

end A176759.P17712376159684582742

/-! ## A176759.P3302986696198081111

`∑[A025261(n+1)]-A266303(A014457(n))`
-/

namespace A176759.P3302986696198081111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A266303 (A014457 n).toNat

end

end A176759.P3302986696198081111

/-! ## A176759.P16847532442443345051

`∑[A025261(n+1)]-A000124(A151909(n))`
-/

namespace A176759.P16847532442443345051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000124 (A151909 n).toNat

end

end A176759.P16847532442443345051

/-!
# A176760: Numbers k such that k^2 and k^4 have the same sum of digits.

The programs for A176760, there is no canonical definition to state claims against.
-/

/-! ## A176760.P570416131332280007

`eq[A004159(n), A055565(n)]`
-/

namespace A176760.P570416131332280007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176760.P570416131332280007

/-! ## A176760.P838088937957860126

`eq[A224977(n)+A055565(n), n²]`
-/

namespace A176760.P838088937957860126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224977 n + A055565 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A176760.P838088937957860126

/-! ## A176760.P15595201077538156703

`sqrt(∩[A058369(n+1), n²])`
-/

namespace A176760.P15595201077538156703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A176760.P15595201077538156703

/-! ## A176760.P14144889938431424281

`record[A037213(A058369(n+1))]`
-/

namespace A176760.P14144889938431424281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A058369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176760.P14144889938431424281

/-! ## A176760.P5033220374807905110

`eq[A004159(n²), A004159(n)]`
-/

namespace A176760.P5033220374807905110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176760.P5033220374807905110

/-!
# A176761: Partial sums of A030001, starting at n=1.

The programs for A176761, there is no canonical definition to state claims against.
-/

/-! ## A176761.P13753037761680653878

`∑[A030001(n+1)]`
-/

namespace A176761.P13753037761680653878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176761.P13753037761680653878

/-! ## A176761.P6557374972234360910

`∑[2^A030000(n+1)]`
-/

namespace A176761.P6557374972234360910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A030000 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176761.P6557374972234360910

/-! ## A176761.P4211326385900850765

`∑[A000079(A030000(n+1))]`
-/

namespace A176761.P4211326385900850765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A030000 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176761.P4211326385900850765

/-! ## A176761.P9864488453603317306

`∑[ratio[A030001(n)]*A030001(n)]`
-/

namespace A176761.P9864488453603317306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030001 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A030001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176761.P9864488453603317306

/-!
# A176763: Smallest power of 3 whose decimal expansion contains n.

The programs for A176763, there is no canonical definition to state claims against.
-/

/-! ## A176763.P955469478029295545

`3^A062520(n)`
-/

namespace A176763.P955469478029295545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A062520 n : ℤ)

end

end A176763.P955469478029295545

/-! ## A176763.P9827041359729953710

`3^((1-char[1])*A063566(n))`
-/

namespace A176763.P9827041359729953710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063566 n : ℤ)

end

end A176763.P9827041359729953710

/-! ## A176763.P16522470758192085334

`A000244(A062520(n))`
-/

namespace A176763.P16522470758192085334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A062520 n).toNat

end

end A176763.P16522470758192085334

/-! ## A176763.P8660851309304103556

`A108411(2*A062520(n))`
-/

namespace A176763.P8660851309304103556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * A062520 n).toNat

end

end A176763.P8660851309304103556

/-! ## A176763.P3954698286935015538

`A000244(lcm(A063566(n), A134323(n+1)))`
-/

namespace A176763.P3954698286935015538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (Int.lcm (A063566 n) (A134323 (n + 1)))

end

end A176763.P3954698286935015538

/-!
# A176764: Smallest power of 4 whose decimal expansion contains n.

The programs for A176764, there is no canonical definition to state claims against.
-/

/-! ## A176764.P1129019259329399166

`4^A062521(n)`
-/

namespace A176764.P1129019259329399166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A062521 n : ℤ)

end

end A176764.P1129019259329399166

/-! ## A176764.P6213690922305473798

`((2-char[1])^A063567(n))²`
-/

namespace A176764.P6213690922305473798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A063567 n : ℤ)) ^ 2

end

end A176764.P6213690922305473798

/-! ## A176764.P12060759143986170404

`A000302(A062521(n))`
-/

namespace A176764.P12060759143986170404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A062521 n).toNat

end

end A176764.P12060759143986170404

/-! ## A176764.P9205005571277308174

`A000079(2*A062521(n))`
-/

namespace A176764.P9205005571277308174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A062521 n).toNat

end

end A176764.P9205005571277308174

/-! ## A176764.P8052779982065555130

`A016116(4*A062521(n))`
-/

namespace A176764.P8052779982065555130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (4 * A062521 n).toNat

end

end A176764.P8052779982065555130

/-!
# A176765: Smallest power of 5 whose decimal expansion contains n.

The programs for A176765, there is no canonical definition to state claims against.
-/

/-! ## A176765.P15053065021313735221

`5^A062522(n)`
-/

namespace A176765.P15053065021313735221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A062522 n : ℤ)

end

end A176765.P15053065021313735221

/-! ## A176765.P6898843717025921352

`A000351(A062522(n))`
-/

namespace A176765.P6898843717025921352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A062522 n).toNat

end

end A176765.P6898843717025921352

/-!
# A176766: Smallest power of 6 whose decimal expansion contains n.

The programs for A176766, there is no canonical definition to state claims against.
-/

/-! ## A176766.P13510942365386804409

`6^A062523(n)`
-/

namespace A176766.P13510942365386804409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A062523 n : ℤ)

end

end A176766.P13510942365386804409

/-! ## A176766.P6573869198217741882

`6^((1-char[1])*A063569(n))`
-/

namespace A176766.P6573869198217741882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063569 n : ℤ)

end

end A176766.P6573869198217741882

/-! ## A176766.P17434183656802256890

`A000400(A062523(n))`
-/

namespace A176766.P17434183656802256890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A062523 n).toNat

end

end A176766.P17434183656802256890

/-! ## A176766.P12667939481525328570

`6^(A063569(n)%A112033(n))`
-/

namespace A176766.P12667939481525328570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (Int.tmod (A063569 n) (A112033 n) : ℤ)

end

end A176766.P12667939481525328570

/-! ## A176766.P5920460584277968407

`6^lcm(A063569(n), A105812(n))`
-/

namespace A176766.P5920460584277968407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ Int.lcm (A063569 n) (A105812 n)

end

end A176766.P5920460584277968407

/-! ## A176766.P6052731918381067343

`A017922(2*(1-char[1])*A063569(n))`
-/

namespace A176766.P6052731918381067343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (2 * ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063569 n)).toNat

end

end A176766.P6052731918381067343

/-!
# A176767: Smallest power of 7 whose decimal expansion contains n.

The programs for A176767, there is no canonical definition to state claims against.
-/

/-! ## A176767.P16520867680313135557

`7^A062524(n)`
-/

namespace A176767.P16520867680313135557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A062524 n : ℤ)

end

end A176767.P16520867680313135557

/-! ## A176767.P16899607342875823371

`7^((1-char[1])*A063570(n))`
-/

namespace A176767.P16899607342875823371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063570 n : ℤ)

end

end A176767.P16899607342875823371

/-! ## A176767.P8683399100074168065

`A000420(A062524(n))`
-/

namespace A176767.P8683399100074168065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A062524 n).toNat

end

end A176767.P8683399100074168065

/-! ## A176767.P10714170882383252684

`7^lcm(A063570(n), A105812(n))`
-/

namespace A176767.P10714170882383252684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ Int.lcm (A063570 n) (A105812 n)

end

end A176767.P10714170882383252684

/-! ## A176767.P15428368316141995961

`7^(A063570(n)%xor(1, A000040(n+1))²)`
-/

namespace A176767.P15428368316141995961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (Int.tmod (A063570 n) (Int.xor 1 (A000040 (n + 1)) ^ 2) : ℤ)

end

end A176767.P15428368316141995961

/-! ## A176767.P13753010187346723615

`7^(A063570(n)%A007572(n))`
-/

namespace A176767.P13753010187346723615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (Int.tmod (A063570 n) (A007572 n) : ℤ)

end

end A176767.P13753010187346723615

/-! ## A176767.P5656316248926542029

`7^and(A063570(n), A156760(n))`
-/

namespace A176767.P5656316248926542029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (Int.land (A063570 n) (A156760 n) : ℤ)

end

end A176767.P5656316248926542029

/-!
# A176768: Smallest power of 8 whose decimal expansion contains n.

The programs for A176768, there is no canonical definition to state claims against.
-/

/-! ## A176768.P9295499455287268588

`8^A062525(n)`
-/

namespace A176768.P9295499455287268588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A062525 n : ℤ)

end

end A176768.P9295499455287268588

/-! ## A176768.P9810905386419155714

`A001018(A062525(n))`
-/

namespace A176768.P9810905386419155714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A062525 n).toNat

end

end A176768.P9810905386419155714

/-! ## A176768.P6112800285449901776

`A000079(3*A062525(n))`
-/

namespace A176768.P6112800285449901776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * A062525 n).toNat

end

end A176768.P6112800285449901776

/-! ## A176768.P9337582164343575448

`A016116(6*A062525(n))`
-/

namespace A176768.P9337582164343575448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (6 * A062525 n).toNat

end

end A176768.P9337582164343575448

/-! ## A176768.P4101472050542051711

`A143095(6*A062525(n))`
-/

namespace A176768.P4101472050542051711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (6 * A062525 n).toNat

end

end A176768.P4101472050542051711

/-! ## A176768.P10002998199698286840

`A000079(A016789(A062525(n))-2)`
-/

namespace A176768.P10002998199698286840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A016789 (A062525 n).toNat - 2).toNat

end

end A176768.P10002998199698286840

/-!
# A176769: Smallest power of 9 whose decimal expansion contains n.

The programs for A176769, there is no canonical definition to state claims against.
-/

/-! ## A176769.P3893412631068227685

`9^A062526(n)`
-/

namespace A176769.P3893412631068227685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A062526 n : ℤ)

end

end A176769.P3893412631068227685

/-! ## A176769.P16331736679718912158

`A001019(A062526(n))`
-/

namespace A176769.P16331736679718912158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A062526 n).toNat

end

end A176769.P16331736679718912158

/-! ## A176769.P4676811791432232658

`A000244(2*A062526(n))`
-/

namespace A176769.P4676811791432232658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A062526 n).toNat

end

end A176769.P4676811791432232658

/-! ## A176769.P7281074623878590089

`A001019(A105812(n)²*A063572(n))`
-/

namespace A176769.P7281074623878590089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A105812 n ^ 2 * A063572 n).toNat

end

end A176769.P7281074623878590089

/-!
# A176774: Smallest polygonality of n = smallest integer m>=3 such that n is m-gonal number.

The programs for A176774, there is no canonical definition to state claims against.
-/

/-! ## A176774.P14401546064372998872

`A177028(∑[A177025(n+3)]+2)`
-/

namespace A176774.P14401546064372998872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177028 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A176774.P14401546064372998872

/-! ## A176774.P9401720208291781526

`A177028(∑[A129654(n+3)-1]+2)`
-/

namespace A176774.P9401720208291781526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177028 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A176774.P9401720208291781526

/-! ## A176774.P18289808171142458398

`A177028(∑[A153881(n+2)+A129654(n+3)]+2)`
-/

namespace A176774.P18289808171142458398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A129654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177028 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A176774.P18289808171142458398

/-! ## A176774.P14807618815619876367

`A177028(∑[A333822(n+3)-A333836(n+3)]+2)`
-/

namespace A176774.P14807618815619876367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333822 (n + 3) - A333836 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177028 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A176774.P14807618815619876367

/-!
# A176775: Index of n as m-gonal number for the smallest possible m (=A176774(n)).

The programs for A176775, there is no canonical definition to state claims against.
-/

/-! ## A176775.P7677266426469342042

`A055642(A342550(n+3)^4)`
-/

namespace A176775.P7677266426469342042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A342550 (n + 3) ^ 4).toNat

end

end A176775.P7677266426469342042

/-! ## A176775.P7941218289500483935

`A055642(A342550(n+3)²²)`
-/

namespace A176775.P7941218289500483935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((A342550 (n + 3) ^ 2) ^ 2).toNat

end

end A176775.P7941218289500483935

/-! ## A176775.P7627315822260309109

`A001221(2*A063778(A342550(n+3)))`
-/

namespace A176775.P7627315822260309109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A063778 (A342550 (n + 3)).toNat).toNat

end

end A176775.P7627315822260309109

/-! ## A176775.P3319594426843910177

`A001221(lcm(2, A063778(A342550(n+3))))`
-/

namespace A176775.P3319594426843910177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 2 (A063778 (A342550 (n + 3)).toNat))

end

end A176775.P3319594426843910177

/-!
# A176776: a(n) = 2^n - n*(n-2).

The programs for A176776, the canonical program `A176776.P13247492135036740170` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176776 has offset 0).

The definition of A176776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n-2)` (program `A176776.P13247492135036740170`, by `A176776.P13247492135036740170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176776.P13247492135036740170

`2^n-n*(n-2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176776

/-- `2^n-n*(n-2)` -/
def P13247492135036740170.Spec : Prop :=
  ∀ n, P13247492135036740170.a n = A176776 n

theorem P13247492135036740170.correct : P13247492135036740170.Spec := by
  intro n
  simp only [A176776]

end A176776

/-! ## A176776.P2147957568909265687

`∑[∑[2*(a(n-1)+1)]]` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A176776.P2147957568909265687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n f2 =>
  2 * (f2 (n - 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176776.P2147957568909265687

namespace A176776

/-- `∑[∑[2*(a(n-1)+1)]]` -/
def P2147957568909265687.Spec : Prop :=
  ∀ n, P2147957568909265687.a n = A176776 n

end A176776

/-! ## A176776.P11633391762317626583

`∑[∑[∑[2*a(n-1)]]]` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=1`
-/

namespace A176776.P11633391762317626583
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176776.P11633391762317626583

namespace A176776

/-- `∑[∑[∑[2*a(n-1)]]]` -/
def P11633391762317626583.Spec : Prop :=
  ∀ n, P11633391762317626583.a n = A176776 n

end A176776

/-! ## A176776.P6863606487396187712

`∑[∑[a(n-1)+a(n-1)+2]]` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A176776.P6863606487396187712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176776.P6863606487396187712

namespace A176776

/-- `∑[∑[a(n-1)+a(n-1)+2]]` -/
def P6863606487396187712.Spec : Prop :=
  ∀ n, P6863606487396187712.a n = A176776 n

end A176776

/-! ## A176776.P14718080003651095778

`abs(n-A176777(n))`
-/

namespace A176776.P14718080003651095778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A176777 n|

end

end A176776.P14718080003651095778

namespace A176776

/-- `abs(n-A176777(n))` -/
def P14718080003651095778.Spec : Prop :=
  ∀ n, P14718080003651095778.a n = A176776 n

end A176776

/-! ## A176776.P16602651662592360985

`abs(n²-A100314(n))`
-/

namespace A176776.P16602651662592360985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A100314 n|

end

end A176776.P16602651662592360985

namespace A176776

/-- `abs(n²-A100314(n))` -/
def P16602651662592360985.Spec : Prop :=
  ∀ n, P16602651662592360985.a n = A176776 n

end A176776

/-! ## A176776.P348154640430723156

`abs(A024012(n)+2*n)`
-/

namespace A176776.P348154640430723156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024012 n + (2 * n : ℤ)|

end

end A176776.P348154640430723156

namespace A176776

/-- `abs(A024012(n)+2*n)` -/
def P348154640430723156.Spec : Prop :=
  ∀ n, P348154640430723156.a n = A176776 n

end A176776

/-! ## A176776.P5889005957771788812

`abs(A176778(n)+4*n)`
-/

namespace A176776.P5889005957771788812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176778 n + (4 * n : ℤ)|

end

end A176776.P5889005957771788812

namespace A176776

/-- `abs(A176778(n)+4*n)` -/
def P5889005957771788812.Spec : Prop :=
  ∀ n, P5889005957771788812.a n = A176776 n

end A176776

/-! ## A176776.P18113250092627126635

`abs(2^n-A067998(n))`
-/

namespace A176776.P18113250092627126635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A067998 n|

end

end A176776.P18113250092627126635

namespace A176776

/-- `abs(2^n-A067998(n))` -/
def P18113250092627126635.Spec : Prop :=
  ∀ n, P18113250092627126635.a n = A176776 n

end A176776

/-! ## A176776.P12431405432548951267

`abs((1-n)²-A000051(n))`
-/

namespace A176776.P12431405432548951267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 2 - A000051 n|

end

end A176776.P12431405432548951267

namespace A176776

/-- `abs((1-n)²-A000051(n))` -/
def P12431405432548951267.Spec : Prop :=
  ∀ n, P12431405432548951267.a n = A176776 n

end A176776

/-! ## A176776.P6507844300839703677

`abs((1-n)²-A000079(n)-1)`
-/

namespace A176776.P6507844300839703677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 2 - A000079 n - 1|

end

end A176776.P6507844300839703677

namespace A176776

/-- `abs((1-n)²-A000079(n)-1)` -/
def P6507844300839703677.Spec : Prop :=
  ∀ n, P6507844300839703677.a n = A176776 n

end A176776

/-! ## A176776.P17976273773308938061

`abs(∑[A011782(n)+2]-2-n²)`
-/

namespace A176776.P17976273773308938061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 2 - (n ^ 2 : ℤ)|

end

end A176776.P17976273773308938061

namespace A176776

/-- `abs(∑[A011782(n)+2]-2-n²)` -/
def P17976273773308938061.Spec : Prop :=
  ∀ n, P17976273773308938061.a n = A176776 n

end A176776

/-! ## A176776.P3945016282398739461

`xor(A220588(n)+3*n, (6*n)%2)`
-/

namespace A176776.P3945016282398739461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A220588 n + (3 * n : ℤ)) ((6 * n % 2 : ℕ) : ℤ)

end

end A176776.P3945016282398739461

namespace A176776

/-- `xor(A220588(n)+3*n, (6*n)%2)` -/
def P3945016282398739461.Spec : Prop :=
  ∀ n, P3945016282398739461.a n = A176776 n

end A176776

/-! ## A176776.P1432262105449844782

`abs(2*n+A000225(n)+1-n²)`
-/

namespace A176776.P1432262105449844782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) + (A000225 n + 1) - (n ^ 2 : ℤ)|

end

end A176776.P1432262105449844782

namespace A176776

/-- `abs(2*n+A000225(n)+1-n²)` -/
def P1432262105449844782.Spec : Prop :=
  ∀ n, P1432262105449844782.a n = A176776 n

end A176776

/-! ## A176776.P10268558420274597635

`abs(A000290(n)-A000079(n)-n-n)`
-/

namespace A176776.P10268558420274597635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n - A000079 n - (n : ℤ) - (n : ℤ)|

end

end A176776.P10268558420274597635

namespace A176776

/-- `abs(A000290(n)-A000079(n)-n-n)` -/
def P10268558420274597635.Spec : Prop :=
  ∀ n, P10268558420274597635.a n = A176776 n

end A176776

/-! ## A176776.P13819639592734269082

`abs(2^n-1-A243860(n))`
-/

namespace A176776.P13819639592734269082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A243860 n|

end

end A176776.P13819639592734269082

namespace A176776

/-- `abs(2^n-1-A243860(n))` -/
def P13819639592734269082.Spec : Prop :=
  ∀ n, P13819639592734269082.a n = A176776 n

end A176776

/-! ## A176776.P6318334432917474600

`abs(n*(n-2)-Δ[A000225(n)])`
-/

namespace A176776.P6318334432917474600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((n : ℤ) - 2) - (f1 (n + 1) - f1 n)|

end

end A176776.P6318334432917474600

namespace A176776

/-- `abs(n*(n-2)-Δ[A000225(n)])` -/
def P6318334432917474600.Spec : Prop :=
  ∀ n, P6318334432917474600.a n = A176776 n

end A176776

/-!
# A176777: a(n) = 2^n - n*(n-3).

The programs for A176777, the canonical program `A176777.P641054745865325767` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176777 has offset 0).

The definition of A176777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n-3)` (program `A176777.P641054745865325767`, by `A176777.P641054745865325767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176777.P641054745865325767

`2^n-n*(n-3)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176777

/-- `2^n-n*(n-3)` -/
def P641054745865325767.Spec : Prop :=
  ∀ n, P641054745865325767.a n = A176777 n

theorem P641054745865325767.correct : P641054745865325767.Spec := by
  intro n
  simp only [A176777]

end A176777

/-! ## A176777.P17892944667180814027

`∑[2*(a(n-1)-4+n)]` with `a(0)=1, a(1)=3`
-/

namespace A176777.P17892944667180814027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * (f1 (n - 1) - 4 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176777.P17892944667180814027

namespace A176777

/-- `∑[2*(a(n-1)-4+n)]` -/
def P17892944667180814027.Spec : Prop :=
  ∀ n, P17892944667180814027.a n = A176777 n

end A176777

/-! ## A176777.P13298211827809910944

`∑[2*(a(n-1)-(4-n))]` with `a(0)=1, a(1)=3`
-/

namespace A176777.P13298211827809910944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * (f1 (n - 1) - (4 - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176777.P13298211827809910944

namespace A176777

/-- `∑[2*(a(n-1)-(4-n))]` -/
def P13298211827809910944.Spec : Prop :=
  ∀ n, P13298211827809910944.a n = A176777 n

end A176777

/-! ## A176777.P17724290342442602287

`∑[∑[a(n-1)+a(n-1)+2]]` with `a(0)=1, a(1)=2, a(2)=-1`
-/

namespace A176777.P17724290342442602287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176777.P17724290342442602287

namespace A176777

/-- `∑[∑[a(n-1)+a(n-1)+2]]` -/
def P17724290342442602287.Spec : Prop :=
  ∀ n, P17724290342442602287.a n = A176777 n

end A176777

/-! ## A176777.P3957788930870673048

`abs(A024012(n)+3*n)`
-/

namespace A176777.P3957788930870673048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024012 n + (3 * n : ℤ)|

end

end A176777.P3957788930870673048

namespace A176777

/-- `abs(A024012(n)+3*n)` -/
def P3957788930870673048.Spec : Prop :=
  ∀ n, P3957788930870673048.a n = A176777 n

end A176777

/-! ## A176777.P4195610074212246202

`abs(n²-n-A100314(n))`
-/

namespace A176777.P4195610074212246202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - (n : ℤ) - A100314 n|

end

end A176777.P4195610074212246202

namespace A176777

/-- `abs(n²-n-A100314(n))` -/
def P4195610074212246202.Spec : Prop :=
  ∀ n, P4195610074212246202.a n = A176777 n

end A176777

/-! ## A176777.P11589475118654950862

`abs(n²-A000079(n)-3*n)`
-/

namespace A176777.P11589475118654950862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000079 n - (3 * n : ℤ)|

end

end A176777.P11589475118654950862

namespace A176777

/-- `abs(n²-A000079(n)-3*n)` -/
def P11589475118654950862.Spec : Prop :=
  ∀ n, P11589475118654950862.a n = A176777 n

end A176777

/-! ## A176777.P17637098868743593511

`abs(n²-∑[A011782(n)]-3*n)`
-/

namespace A176777.P17637098868743593511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ)|

end

end A176777.P17637098868743593511

namespace A176777

/-- `abs(n²-∑[A011782(n)]-3*n)` -/
def P17637098868743593511.Spec : Prop :=
  ∀ n, P17637098868743593511.a n = A176777 n

end A176777

/-! ## A176777.P15091978628901311686

`abs(A016789(n)+A000918(n)-n²)`
-/

namespace A176777.P15091978628901311686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016789 n + (A000918 n - (n ^ 2 : ℤ))|

end

end A176777.P15091978628901311686

namespace A176777

/-- `abs(A016789(n)+A000918(n)-n²)` -/
def P15091978628901311686.Spec : Prop :=
  ∀ n, P15091978628901311686.a n = A176777 n

end A176777

/-! ## A176777.P13131015496071326386

`(A176776(n)+n)%A305481(n+1)`
-/

namespace A176777.P13131015496071326386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176776 n + (n : ℤ)) (A305481 (n + 1))

end

end A176777.P13131015496071326386

namespace A176777

/-- `(A176776(n)+n)%A305481(n+1)` -/
def P13131015496071326386.Spec : Prop :=
  ∀ n, P13131015496071326386.a n = A176777 n

end A176777

/-!
# A176778: a(n) = 2^n - n*(n+2).

The programs for A176778, the canonical program `A176778.P5076845865671727231` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176778 has offset 0).

The definition of A176778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n+2)` (program `A176778.P5076845865671727231`, by `A176778.P5076845865671727231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176778.P5076845865671727231

`2^n-n*(n+2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176778

/-- `2^n-n*(n+2)` -/
def P5076845865671727231.Spec : Prop :=
  ∀ n, P5076845865671727231.a n = A176778 n

theorem P5076845865671727231.correct : P5076845865671727231.Spec := by
  intro n
  simp only [A176778]

end A176778

/-! ## A176778.P1720290648172414329

`ceil(2^n-(sin(11)-n)²)`
-/

namespace A176778.P1720290648172414329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) - (Real.sin (11 : ℝ) - (n : ℝ)) ^ 2⌉

end

end A176778.P1720290648172414329

namespace A176778

/-- `ceil(2^n-(sin(11)-n)²)` -/
def P1720290648172414329.Spec : Prop :=
  ∀ n, P1720290648172414329.a n = A176778 n

end A176778

/-! ## A176778.P12452466053128167252

`∑[2*(a(n-1)+n)-3]` with `a(0)=1, a(1)=-2`
-/

namespace A176778.P12452466053128167252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  2 * (f1 (n - 1) + (n : ℤ)) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176778.P12452466053128167252

namespace A176778

/-- `∑[2*(a(n-1)+n)-3]` -/
def P12452466053128167252.Spec : Prop :=
  ∀ n, P12452466053128167252.a n = A176778 n

end A176778

/-! ## A176778.P8844964603163271685

`floor(n²+2*(a(n-1)-(n+1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A176778.P8844964603163271685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 2 : ℤ) + 2 * (a (n - 1) - (n + 1 : ℤ))

end

end A176778.P8844964603163271685

namespace A176778

/-- `floor(n²+2*(a(n-1)-(n+1)))` -/
def P8844964603163271685.Spec : Prop :=
  ∀ n, P8844964603163271685.a n = A176778 n

theorem P8844964603163271685.correct : P8844964603163271685.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176778, Nat.add_sub_cancel, A176778.P8844964603163271685.a, A176778.P5076845865671727231.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176778, Nat.add_sub_cancel, A176778.P8844964603163271685.a, A176778.P5076845865671727231.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176778

/-! ## A176778.P9803628471513594224

`floor(2*(a(n-1)-1)+n*(n-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A176778.P9803628471513594224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - 1) + (n : ℤ) * ((n : ℤ) - 2)

end

end A176778.P9803628471513594224

namespace A176778

/-- `floor(2*(a(n-1)-1)+n*(n-2))` -/
def P9803628471513594224.Spec : Prop :=
  ∀ n, P9803628471513594224.a n = A176778 n

theorem P9803628471513594224.correct : P9803628471513594224.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176778, Nat.add_sub_cancel, A176778.P9803628471513594224.a, A176778.P5076845865671727231.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176778, Nat.add_sub_cancel, A176778.P9803628471513594224.a, A176778.P5076845865671727231.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176778

/-! ## A176778.P7780592181935119353

`floor(n*(n-2)-2*(1-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A176778.P7780592181935119353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((n : ℤ) - 2) - 2 * (1 - a (n - 1))

end

end A176778.P7780592181935119353

namespace A176778

/-- `floor(n*(n-2)-2*(1-a(n-1)))` -/
def P7780592181935119353.Spec : Prop :=
  ∀ n, P7780592181935119353.a n = A176778 n

theorem P7780592181935119353.correct : P7780592181935119353.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A176778, Nat.add_sub_cancel, A176778.P7780592181935119353.a, A176778.P5076845865671727231.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A176778, Nat.add_sub_cancel, A176778.P7780592181935119353.a, A176778.P5076845865671727231.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176778

/-! ## A176778.P4777556838731143200

`xor(A220588(n)-n, (6*n)%2)`
-/

namespace A176778.P4777556838731143200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A220588 n - (n : ℤ)) ((6 * n % 2 : ℕ) : ℤ)

end

end A176778.P4777556838731143200

namespace A176778

/-- `xor(A220588(n)-n, (6*n)%2)` -/
def P4777556838731143200.Spec : Prop :=
  ∀ n, P4777556838731143200.a n = A176778 n

end A176778

/-! ## A176778.P5458506863202696459

`∑[A000225(abs(1-n))-2*n]`
-/

namespace A176778.P5458506863202696459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 |1 - (n : ℤ)|.toNat - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176778.P5458506863202696459

namespace A176778

/-- `∑[A000225(abs(1-n))-2*n]` -/
def P5458506863202696459.Spec : Prop :=
  ∀ n, P5458506863202696459.a n = A176778 n

end A176778

/-! ## A176778.P3567279328251598466

`floor(A000051(n)-(cos(2)+(n+1)²))`
-/

namespace A176778.P3567279328251598466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 n : ℝ) - (Real.cos (2 : ℝ) + ((n + 1) ^ 2 : ℝ))⌋

end

end A176778.P3567279328251598466

namespace A176778

/-- `floor(A000051(n)-(cos(2)+(n+1)²))` -/
def P3567279328251598466.Spec : Prop :=
  ∀ n, P3567279328251598466.a n = A176778 n

end A176778

/-! ## A176778.P13558838917056335938

`∑[A000079(abs(1-n))-(2*n+1)]`
-/

namespace A176778.P13558838917056335938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |1 - (n : ℤ)|.toNat - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176778.P13558838917056335938

namespace A176778

/-- `∑[A000079(abs(1-n))-(2*n+1)]` -/
def P13558838917056335938.Spec : Prop :=
  ∀ n, P13558838917056335938.a n = A176778 n

end A176778

/-! ## A176778.P8571466870505774387

`∑[abs(3-A056469(n))+1-Δ[n²]]`
-/

namespace A176778.P8571466870505774387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A056469 n| + 1 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176778.P8571466870505774387

namespace A176778

/-- `∑[abs(3-A056469(n))+1-Δ[n²]]` -/
def P8571466870505774387.Spec : Prop :=
  ∀ n, P8571466870505774387.a n = A176778 n

end A176778

/-! ## A176778.P15895797974368368914

`∑[A011782(n)-record[A131738(n)]]`
-/

namespace A176778.P15895797974368368914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176778.P15895797974368368914

namespace A176778

/-- `∑[A011782(n)-record[A131738(n)]]` -/
def P15895797974368368914.Spec : Prop :=
  ∀ n, P15895797974368368914.a n = A176778 n

end A176778

/-! ## A176778.P9499698167434661816

`-(A005563(n)-A000051(n)+1)`
-/

namespace A176778.P9499698167434661816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A005563 n - A000051 n + 1)

end

end A176778.P9499698167434661816

namespace A176778

/-- `-(A005563(n)-A000051(n)+1)` -/
def P9499698167434661816.Spec : Prop :=
  ∀ n, P9499698167434661816.a n = A176778 n

end A176778

/-! ## A176778.P10162576736711427958

`∑[A094373(n)-A163300(n+1)]`
-/

namespace A176778.P10162576736711427958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A163300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176778.P10162576736711427958

namespace A176778

/-- `∑[A094373(n)-A163300(n+1)]` -/
def P10162576736711427958.Spec : Prop :=
  ∀ n, P10162576736711427958.a n = A176778 n

end A176778

/-! ## A176778.P7462501344757212235

`xor(A132045(n)+n-(n+1)², A000007(n))`
-/

namespace A176778.P7462501344757212235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A132045 n + (n : ℤ) - ((n + 1) ^ 2 : ℤ)) (A000007 n)

end

end A176778.P7462501344757212235

namespace A176778

/-- `xor(A132045(n)+n-(n+1)², A000007(n))` -/
def P7462501344757212235.Spec : Prop :=
  ∀ n, P7462501344757212235.a n = A176778 n

end A176778

/-! ## A176778.P3488507367153322629

`(A000051(n)-∑[A005408(n)])%A000051(n)`
-/

namespace A176778.P3488507367153322629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n - ∑ j ∈ Finset.range (n + 1), f1 j) (A000051 n)

end

end A176778.P3488507367153322629

namespace A176778

/-- `(A000051(n)-∑[A005408(n)])%A000051(n)` -/
def P3488507367153322629.Spec : Prop :=
  ∀ n, P3488507367153322629.a n = A176778 n

end A176778

/-! ## A176778.P8279855238420083872

`Δ[2^n-A051925(n)]`
-/

namespace A176778.P8279855238420083872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A051925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176778.P8279855238420083872

namespace A176778

/-- `Δ[2^n-A051925(n)]` -/
def P8279855238420083872.Spec : Prop :=
  ∀ n, P8279855238420083872.a n = A176778 n

end A176778

/-! ## A176778.P697711487496638126

`Δ[A000079(n)-∑[n²-1]]`
-/

namespace A176778.P697711487496638126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176778.P697711487496638126

namespace A176778

/-- `Δ[A000079(n)-∑[n²-1]]` -/
def P697711487496638126.Spec : Prop :=
  ∀ n, P697711487496638126.a n = A176778 n

end A176778

/-! ## A176778.P9240934157607506451

`Δ[A006127(n)-A000330(n)]`
-/

namespace A176778.P9240934157607506451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176778.P9240934157607506451

namespace A176778

/-- `Δ[A006127(n)-A000330(n)]` -/
def P9240934157607506451.Spec : Prop :=
  ∀ n, P9240934157607506451.a n = A176778 n

end A176778

/-!
# A176779: Smallest number appearing exactly n times in the concatenation of all integers from 1 to itself.

The programs for A176779, there is no canonical definition to state claims against.
-/

/-! ## A176779.P3102497970753214124

`A167503(A248860(n)-A054239(n))`
-/

namespace A176779.P3102497970753214124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167503 (A248860 n - A054239 n).toNat

end

end A176779.P3102497970753214124

/-!
# A176782: a(n)=a(n-1)^3-2*a(n-2) with a(1)=1, a(2)=2.

The programs for A176782, the canonical program `A176782.P13747366166987111621` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176782 has offset 1).

The definition of A176782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^3-2*a(n-2)` (program `A176782.P13747366166987111621`, by `A176782.P13747366166987111621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176782.P13747366166987111621

`a(n-1)^3-2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176782

/-- `a(n-1)^3-2*a(n-2)` -/
def P13747366166987111621.Spec : Prop :=
  ∀ n, P13747366166987111621.a n = A176782 (n + 1)

theorem P13747366166987111621.correct : P13747366166987111621.Spec := by
  intro n
  simp only [A176782, Nat.add_sub_cancel]

end A176782

/-! ## A176782.P7881332593674338671

`a(n-1)^3-a(n-2)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A176782.P7881332593674338671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ 3 - a (n - 2) - a (n - 2)

end

end A176782.P7881332593674338671

namespace A176782

/-- `a(n-1)^3-a(n-2)-a(n-2)` -/
def P7881332593674338671.Spec : Prop :=
  ∀ n, P7881332593674338671.a n = A176782 (n + 1)

theorem P7881332593674338671.correct : P7881332593674338671.Spec := by
  intro n
  simp only [A176782, Nat.add_sub_cancel, A176782.P7881332593674338671.a, A176782.P13747366166987111621.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A176782

/-! ## A176782.P11751592628961639283

`a(n-1)²*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A176782.P11751592628961639283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ 2 * a (n - 1) - 2 * a (n - 2)

end

end A176782.P11751592628961639283

namespace A176782

/-- `a(n-1)²*a(n-1)-2*a(n-2)` -/
def P11751592628961639283.Spec : Prop :=
  ∀ n, P11751592628961639283.a n = A176782 (n + 1)

theorem P11751592628961639283.correct : P11751592628961639283.Spec := by
  intro n
  simp only [A176782, Nat.add_sub_cancel, A176782.P11751592628961639283.a, A176782.P13747366166987111621.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A176782

/-!
# A176783: Primes of the form 13*n^2+3*n+1.

The programs for A176783, there is no canonical definition to state claims against.
-/

/-! ## A176783.P16049959787927607726

`A005901(A155152(n+1))+A004538(A155152(n+1))`
-/

namespace A176783.P16049959787927607726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 (A155152 (n + 1)).toNat + A004538 (A155152 (n + 1)).toNat

end

end A176783.P16049959787927607726

/-! ## A176783.P17792059622764629975

`p?[n*(13*n+3)+1]`
-/

namespace A176783.P17792059622764629975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (13 * n + 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176783.P17792059622764629975

/-! ## A176783.P10968623889606180380

`or(1, p?[A244805(n+1)+n²])`
-/

namespace A176783.P10968623889606180380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244805 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176783.P10968623889606180380

/-! ## A176783.P12161389117520049566

`or(1, p?[A016778(n)+A001107(n)])`
-/

namespace A176783.P12161389117520049566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n + A001107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176783.P12161389117520049566

/-! ## A176783.P8897616821989028364

`or(1, p?[A033583(n)+A003215(n)])`
-/

namespace A176783.P8897616821989028364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176783.P8897616821989028364

/-! ## A176783.P11501510386038625819

`or(1, p?[A144312(n)+A000124(n)])`
-/

namespace A176783.P11501510386038625819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144312 n + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176783.P11501510386038625819

/-! ## A176783.P16679176741420505847

`p?[A016778(n)+A001107(n)]%A017619(n)`
-/

namespace A176783.P16679176741420505847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n + A001107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017619 n)

end

end A176783.P16679176741420505847

/-! ## A176783.P3358639898655090021

`p?[A033583(n)+A003215(n)]%A002997(n+1)`
-/

namespace A176783.P3358639898655090021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002997 (n + 1))

end

end A176783.P3358639898655090021

/-!
# A176785: Sequence with e.g.f. g(x) = -(1/2)*sqrt(2*exp(-2*x)-1) + 1/2.

The programs for A176785, there is no canonical definition to state claims against.
-/

/-! ## A176785.P15376534945563781399

`A028577((n-2)^n+n)`
-/

namespace A176785.P15376534945563781399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028577 (((n : ℤ) - 2) ^ n + (n : ℤ)).toNat

end

end A176785.P15376534945563781399

/-! ## A176785.P1947356773636941138

`A347462(a(n-1))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4, a(4)=24`
-/

namespace A176785.P1947356773636941138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 4, 24] fun n a =>
  A347462 (a (n - 1)).toNat

end

end A176785.P1947356773636941138

/-!
# A176787: a(n) = (0!-1!+2!-3!....(-1)^(n-1)*(n-1)!) mod n.

The programs for A176787, the canonical program `A176787.P17062270663618039594` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176787 has offset 1).

The definition of A176787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176787.P17062270663618039594

`A084348(A212342(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A176787

/-- `A084348(A212342(n+1))` -/
def P17062270663618039594.Spec : Prop :=
  ∀ n, P17062270663618039594.a n = A176787 (n + 1)

theorem P17062270663618039594.correct : P17062270663618039594.Spec := by
  intro n
  simp only [A176787, Nat.add_sub_cancel]

end A176787

/-! ## A176787.P16690801106813657548

`(n!*∑[1/n!])%(n+1)`
-/

namespace A176787.P16690801106813657548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))) (n + 1 : ℤ)

end

end A176787.P16690801106813657548

namespace A176787

/-- `(n!*∑[1/n!])%(n+1)` -/
def P16690801106813657548.Spec : Prop :=
  ∀ n, P16690801106813657548.a n = A176787 (n + 1)

end A176787

/-! ## A176787.P4553754323611216983

`A000522(n)%(n+1)`
-/

namespace A176787.P4553754323611216983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000522 n) (n + 1 : ℤ)

end

end A176787.P4553754323611216983

namespace A176787

/-- `A000522(n)%(n+1)` -/
def P4553754323611216983.Spec : Prop :=
  ∀ n, P4553754323611216983.a n = A176787 (n + 1)

end A176787

/-! ## A176787.P14268718541424143935

`A038154(n)%(n+1)`
-/

namespace A176787.P14268718541424143935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038154 n) (n + 1 : ℤ)

end

end A176787.P14268718541424143935

namespace A176787

/-- `A038154(n)%(n+1)` -/
def P14268718541424143935.Spec : Prop :=
  ∀ n, P14268718541424143935.a n = A176787 (n + 1)

end A176787

/-! ## A176787.P12189387633003538915

`A073107(∑[n])%(n+1)`
-/

namespace A176787.P12189387633003538915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073107 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A176787.P12189387633003538915

namespace A176787

/-- `A073107(∑[n])%(n+1)` -/
def P12189387633003538915.Spec : Prop :=
  ∀ n, P12189387633003538915.a n = A176787 (n + 1)

end A176787

/-! ## A176787.P17208200988519671198

`A143409(∑[n])%(n+1)`
-/

namespace A176787.P17208200988519671198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143409 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A176787.P17208200988519671198

namespace A176787

/-- `A143409(∑[n])%(n+1)` -/
def P17208200988519671198.Spec : Prop :=
  ∀ n, P17208200988519671198.a n = A176787 (n + 1)

end A176787

/-! ## A176787.P6922449328759772322

`Δ[A001338(n)]%(n+1)`
-/

namespace A176787.P6922449328759772322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A176787.P6922449328759772322

namespace A176787

/-- `Δ[A001338(n)]%(n+1)` -/
def P6922449328759772322.Spec : Prop :=
  ∀ n, P6922449328759772322.a n = A176787 (n + 1)

end A176787

/-! ## A176787.P17923785547706722152

`Δ[A002104(n)]%(n+1)`
-/

namespace A176787.P17923785547706722152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A176787.P17923785547706722152

namespace A176787

/-- `Δ[A002104(n)]%(n+1)` -/
def P17923785547706722152.Spec : Prop :=
  ∀ n, P17923785547706722152.a n = A176787 (n + 1)

end A176787

/-! ## A176787.P13919488804153475368

`(A007526(n)+1)%(n+1)`
-/

namespace A176787.P13919488804153475368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007526 n + 1) (n + 1 : ℤ)

end

end A176787.P13919488804153475368

namespace A176787

/-- `(A007526(n)+1)%(n+1)` -/
def P13919488804153475368.Spec : Prop :=
  ∀ n, P13919488804153475368.a n = A176787 (n + 1)

end A176787

/-! ## A176787.P3979227788203281520

`∑[∑[A005359(n)]]%(n+1)`
-/

namespace A176787.P3979227788203281520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005359 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A176787.P3979227788203281520

namespace A176787

/-- `∑[∑[A005359(n)]]%(n+1)` -/
def P3979227788203281520.Spec : Prop :=
  ∀ n, P3979227788203281520.a n = A176787 (n + 1)

end A176787

/-!
# A176788: a(n) = (0!! + 1!! + 2!! + 3!! + ... + (n-1)!!) mod n.

The programs for A176788, the canonical program `A176788.P6633908679777031826` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176788 has offset 1).

The definition of A176788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176788.P6633908679777031826

`∑[n*a(n-2)]%(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176788

/-- `∑[n*a(n-2)]%(n+1)` -/
def P6633908679777031826.Spec : Prop :=
  ∀ n, (P6633908679777031826.a n : ℤ) = A176788 (n + 1)

theorem P6633908679777031826.correct : P6633908679777031826.Spec := by
  intro n
  simp only [A176788, Nat.add_sub_cancel]

end A176788

/-! ## A176788.P11353067862210770194

`∑[∏[n/a(n-1)]]%(n+1)` with `a(0)=1`
-/

namespace A176788.P11353067862210770194
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A176788.P11353067862210770194

namespace A176788

/-- `∑[∏[n/a(n-1)]]%(n+1)` -/
def P11353067862210770194.Spec : Prop :=
  ∀ n, P11353067862210770194.a n = A176788 (n + 1)

end A176788

/-! ## A176788.P8136705716906220504

`A129981(n)%(n+1)`
-/

namespace A176788.P8136705716906220504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129981 n) (n + 1 : ℤ)

end

end A176788.P8136705716906220504

namespace A176788

/-- `A129981(n)%(n+1)` -/
def P8136705716906220504.Spec : Prop :=
  ∀ n, P8136705716906220504.a n = A176788 (n + 1)

end A176788

/-! ## A176788.P11780848647189519976

`∑[A006882(n)]%(n+1)`
-/

namespace A176788.P11780848647189519976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A176788.P11780848647189519976

namespace A176788

/-- `∑[A006882(n)]%(n+1)` -/
def P11780848647189519976.Spec : Prop :=
  ∀ n, P11780848647189519976.a n = A176788 (n + 1)

end A176788

/-! ## A176788.P12944620500129838808

`∑[A128882(n)]%(n+1)`
-/

namespace A176788.P12944620500129838808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A176788.P12944620500129838808

namespace A176788

/-- `∑[A128882(n)]%(n+1)` -/
def P12944620500129838808.Spec : Prop :=
  ∀ n, P12944620500129838808.a n = A176788 (n + 1)

end A176788

/-! ## A176788.P16087647899075565403

`∑[A248809(A161680(n))]%(n+1)`
-/

namespace A176788.P16087647899075565403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A176788.P16087647899075565403

namespace A176788

/-- `∑[A248809(A161680(n))]%(n+1)` -/
def P16087647899075565403.Spec : Prop :=
  ∀ n, P16087647899075565403.a n = A176788 (n + 1)

end A176788

/-! ## A176788.P18309981045543017596

`∑[A230698(∑[n])]%(n+1)`
-/

namespace A176788.P18309981045543017596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A176788.P18309981045543017596

namespace A176788

/-- `∑[A230698(∑[n])]%(n+1)` -/
def P18309981045543017596.Spec : Prop :=
  ∀ n, P18309981045543017596.a n = A176788 (n + 1)

end A176788

/-! ## A176788.P16381796064578032021

`∑[n!/a(n-1)]%(n+1)` with `a(0)=1`
-/

namespace A176788.P16381796064578032021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.factorial n : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A176788.P16381796064578032021

namespace A176788

/-- `∑[n!/a(n-1)]%(n+1)` -/
def P16381796064578032021.Spec : Prop :=
  ∀ n, P16381796064578032021.a n = A176788 (n + 1)

end A176788

/-!
# A176790: Honaker primes of the form k^2 + 1.

The programs for A176790, there is no canonical definition to state claims against.
-/

/-! ## A176790.P12276032320313628780

`∩[A033548(n+1), n²+1]`
-/

namespace A176790.P12276032320313628780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A176790.P12276032320313628780

/-! ## A176790.P5272603345030902623

`∩[A002496(n+1), A033548(n+1)]`
-/

namespace A176790.P5272603345030902623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176790.P5272603345030902623

/-!
# A176791: Triangle t(n,m) read by rows: t(n,m) = binomial(2^n-1, 2^m-1) if n >= 2*m, otherwise symmetrically extended t(n,m) = t(n,n-m).

The programs for A176791, there is no canonical definition to state claims against.
-/

/-! ## A176791.P14380430403400373270

`A000265(C(A137688(n), A144464(n)))`
-/

namespace A176791.P14380430403400373270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Nat.choose (A137688 n).toNat (A144464 n).toNat)

end

end A176791.P14380430403400373270

/-! ## A176791.P1100863534686108405

`A161980(A022166(n))`
-/

namespace A176791.P1100863534686108405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161980 (A022166 n).toNat

end

end A176791.P1100863534686108405

/-! ## A176791.P13804314671151988148

`A161980(A359985(n))`
-/

namespace A176791.P13804314671151988148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161980 (A359985 n).toNat

end

end A176791.P13804314671151988148

/-! ## A176791.P3712521854176425596

`A272402(A302997(n))`
-/

namespace A176791.P3712521854176425596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272402 (A302997 n).toNat

end

end A176791.P3712521854176425596

/-!
# A176793: A symmetrical triangle read by rows: T(n, k) = 2^n*(q^k - 1)*(q^(n - k) - 1) + 1, where q = 2.

The programs for A176793, the canonical program `A176793.P313651183802322861` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176793 has offset 0).

The definition of A176793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176793.P313651183802322861

`A173787(A061579(n))*A173787(n)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A176793

/-- `A173787(A061579(n))*A173787(n)+1` -/
def P313651183802322861.Spec : Prop :=
  ∀ n, P313651183802322861.a n = A176793 n

theorem P313651183802322861.correct : P313651183802322861.Spec := by
  intro n
  simp only [A176793]

end A176793

/-! ## A176793.P10511764687527827886

`A173787(A114327(n)+n)*A173787(n)+1`
-/

namespace A176793.P10511764687527827886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (A114327 n + (n : ℤ)).toNat * A173787 n + 1

end

end A176793.P10511764687527827886

namespace A176793

/-- `A173787(A114327(n)+n)*A173787(n)+1` -/
def P10511764687527827886.Spec : Prop :=
  ∀ n, P10511764687527827886.a n = A176793 n

end A176793

/-! ## A176793.P4828919644110897022

`A173787(A038722(n+1)-1)*A173787(n)+1`
-/

namespace A176793.P4828919644110897022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (A038722 (n + 1) - 1).toNat * A173787 n + 1

end

end A176793.P4828919644110897022

namespace A176793

/-- `A173787(A038722(n+1)-1)*A173787(n)+1` -/
def P4828919644110897022.Spec : Prop :=
  ∀ n, P4828919644110897022.a n = A176793 n

end A176793

/-! ## A176793.P12069185378694419122

`A173787(∑[A198954(n+1)]-n)*A173787(n)+1`
-/

namespace A176793.P12069185378694419122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat * A173787 n + 1

end

end A176793.P12069185378694419122

namespace A176793

/-- `A173787(∑[A198954(n+1)]-n)*A173787(n)+1` -/
def P12069185378694419122.Spec : Prop :=
  ∀ n, P12069185378694419122.a n = A176793 n

end A176793

/-! ## A176793.P14848383172363107104

`1-A173787(A061579(n))*A173787(n)*A134824(n)`
-/

namespace A176793.P14848383172363107104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A173787 (A061579 n).toNat * A173787 n * A134824 n

end

end A176793.P14848383172363107104

namespace A176793

/-- `1-A173787(A061579(n))*A173787(n)*A134824(n)` -/
def P14848383172363107104.Spec : Prop :=
  ∀ n, P14848383172363107104.a n = A176793 n

end A176793

/-! ## A176793.P14040114663718655421

`n-(A023443(n)-A173787(A061579(n))*A173787(n))`
-/

namespace A176793.P14040114663718655421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A173787 (A061579 n).toNat * A173787 n)

end

end A176793.P14040114663718655421

namespace A176793

/-- `n-(A023443(n)-A173787(A061579(n))*A173787(n))` -/
def P14040114663718655421.Spec : Prop :=
  ∀ n, P14040114663718655421.a n = A176793 n

end A176793

/-!
# A176794: Triangle read by rows: T(n, k) = 2^n*(q^k - 1)*(q^(n - k) - 1) + 1, where q = 3.

The programs for A176794, there is no canonical definition to state claims against.
-/

/-! ## A176794.P9460994756203094315

`A163618(∑[∏[A138882(n+1)]])`
-/

namespace A176794.P9460994756203094315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176794.P9460994756203094315

/-! ## A176794.P7312208325818856331

`and(A143007(n)², A113824(n+1))`
-/

namespace A176794.P7312208325818856331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143007 n ^ 2) (A113824 (n + 1))

end

end A176794.P7312208325818856331

/-! ## A176794.P596751518658243926

`A005408(A203732(n+1)%n!)`
-/

namespace A176794.P596751518658243926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A203732 (n + 1)) (Nat.factorial n : ℤ)).toNat

end

end A176794.P596751518658243926

/-! ## A176794.P4269428927637668239

`and(p?[A341397(n)], A221303(n+1))`
-/

namespace A176794.P4269428927637668239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A221303 (n + 1))

end

end A176794.P4269428927637668239

/-! ## A176794.P18338309936454100895

`and(A172196(n), A268930(A006336(n+1)))`
-/

namespace A176794.P18338309936454100895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172196 n) (A268930 (A006336 (n + 1)).toNat)

end

end A176794.P18338309936454100895

/-!
# A176795: Triangle read by rows: T(n, k) = 2^n*(q^k - 1)*(q^(n - k) - 1) + 1, where q = 4.

The programs for A176795, there is no canonical definition to state claims against.
-/

/-! ## A176795.P1919939932821373287

`9*floor(9^A335683(A191872(n+1))/2)+1`
-/

namespace A176795.P1919939932821373287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌊(9 : ℚ) ^ (A335683 (A191872 (n + 1)).toNat : ℤ) / 2⌋ + 1

end

end A176795.P1919939932821373287

/-! ## A176795.P4629217386001843293

`A337227(A265066(n))^A067138(n)`
-/

namespace A176795.P4629217386001843293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337227 (A265066 n).toNat : ℚ) ^ (A067138 n : ℤ)

end

end A176795.P4629217386001843293

/-! ## A176795.P10829938641398409715

`or(A141690(n)², A098725(A033976(n)))`
-/

namespace A176795.P10829938641398409715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141690 n ^ 2) (A098725 (A033976 n).toNat)

end

end A176795.P10829938641398409715

/-! ## A176795.P7411220037021902243

`A025168(A049687(n))%A335457(2*n+3)`
-/

namespace A176795.P7411220037021902243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025168 (A049687 n).toNat) (A335457 (2 * n + 3))

end

end A176795.P7411220037021902243

/-! ## A176795.P11292885568454112769

`A056530(A022173(n)%A000162(2*n+5))`
-/

namespace A176795.P11292885568454112769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056530 (Int.tmod (A022173 n) (A000162 (2 * n + 5))).toNat

end

end A176795.P11292885568454112769

/-!
# A176796: Numbers k such that A129307(k) + A129307(k+1) is a square.

The programs for A176796, there is no canonical definition to state claims against.
-/

/-! ## A176796.P9403131128395656848

`eq[1, Δ[A027861(n+1)]]+1`
-/

namespace A176796.P9403131128395656848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176796.P9403131128395656848

/-! ## A176796.P7183726065718503021

`eq[2, Δ[A002731(n+1)]]+1`
-/

namespace A176796.P7183726065718503021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176796.P7183726065718503021

/-! ## A176796.P2787573592559862325

`eq[2, Δ[A002731(A000038(n)+n)]]`
-/

namespace A176796.P2787573592559862325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176796.P2787573592559862325

/-! ## A176796.P10986914770186486089

`eq[2, A160651(eq[2, A160651(n+1)])]`
-/

namespace A176796.P10986914770186486089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176796.P10986914770186486089

/-! ## A176796.P10653841971631916934

`eq[2, A160651(eq[2, A160651(n)]-1)]`
-/

namespace A176796.P10653841971631916934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176796.P10653841971631916934

/-! ## A176796.P15633310519956257874

`eq[2, A248516(eq[2, A248516(n+2)])]`
-/

namespace A176796.P15633310519956257874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176796.P15633310519956257874

/-!
# A176797: Antiharmonic means of divisors of antiharmonic numbers.

The programs for A176797, the canonical program `A176797.P15933715331666775231` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176797 has offset 1).

The definition of A176797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176797.P8563876941262642759

`A001157(A020487(n+1))/A000203(A020487(n+1))`
-/

namespace A176797.P8563876941262642759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (A020487 (n + 1)).toNat : ℚ) / (A000203 (A020487 (n + 1)).toNat : ℚ)

end

end A176797.P8563876941262642759

namespace A176797

/-- `A001157(A020487(n+1))/A000203(A020487(n+1))` -/
def P8563876941262642759.Spec : Prop :=
  ∀ n, P8563876941262642759.a n = (A176797 (n + 1) : ℚ)

end A176797

/-! ## A176797.P16990754451546627765

`A158274(A020487(n+1))`
-/

namespace A176797.P16990754451546627765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (A020487 (n + 1)).toNat

end

end A176797.P16990754451546627765

namespace A176797

/-- `A158274(A020487(n+1))` -/
def P16990754451546627765.Spec : Prop :=
  ∀ n, P16990754451546627765.a n = A176797 (n + 1)

end A176797

/-! ## A176797.P15933715331666775231

`A158274(eq[1, A158275(n+1)]+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A176797

/-- `A158274(eq[1, A158275(n+1)]+1)` -/
def P15933715331666775231.Spec : Prop :=
  ∀ n, P15933715331666775231.a n = A176797 (n + 1)

theorem P15933715331666775231.correct : P15933715331666775231.Spec := by
  intro n
  simp only [A176797, Nat.add_sub_cancel]

end A176797

/-! ## A176797.P2695244709023066708

`A158274(∪[(n+1)², A227771(n+1)])`
-/

namespace A176797.P2695244709023066708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227771 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A176797.P2695244709023066708

namespace A176797

/-- `A158274(∪[(n+1)², A227771(n+1)])` -/
def P2695244709023066708.Spec : Prop :=
  ∀ n, P2695244709023066708.a n = A176797 (n + 1)

end A176797

/-! ## A176797.P6896191436003979340

`A158274(∪[A227771(n+1), A000290(n+1)])`
-/

namespace A176797.P6896191436003979340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A176797.P6896191436003979340

namespace A176797

/-- `A158274(∪[A227771(n+1), A000290(n+1)])` -/
def P6896191436003979340.Spec : Prop :=
  ∀ n, P6896191436003979340.a n = A176797 (n + 1)

end A176797

/-! ## A176797.P15181792696934693818

`A158274(record[A179931(n+1)-A001065(n+1)])`
-/

namespace A176797.P15181792696934693818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179931 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176797.P15181792696934693818

namespace A176797

/-- `A158274(record[A179931(n+1)-A001065(n+1)])` -/
def P15181792696934693818.Spec : Prop :=
  ∀ n, P15181792696934693818.a n = A176797 (n + 1)

end A176797

/-! ## A176797.P18298607615213969352

`A158274(record[A014684(n+1)/A158275(n+1)])`
-/

namespace A176797.P18298607615213969352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) : ℚ) / (A158275 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A176797.P18298607615213969352

namespace A176797

/-- `A158274(record[A014684(n+1)/A158275(n+1)])` -/
def P18298607615213969352.Spec : Prop :=
  ∀ n, P18298607615213969352.a n = A176797 (n + 1)

end A176797

/-! ## A176797.P4661630245975928998

`A158274(record[A191558(n+1)/A158275(n+1)])`
-/

namespace A176797.P4661630245975928998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) / (A158275 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A176797.P4661630245975928998

namespace A176797

/-- `A158274(record[A191558(n+1)/A158275(n+1)])` -/
def P4661630245975928998.Spec : Prop :=
  ∀ n, P4661630245975928998.a n = A176797 (n + 1)

end A176797

/-!
# A176798: Triangle read by rows: T(n,m)=1 + n*(2*m + 1 + n)/2, 0<=m<=n.

The programs for A176798, the canonical program `A176798.P4590488269369620017` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176798 has offset 0).

The definition of A176798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176798.P4590488269369620017

`A126890(n)+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A176798

/-- `A126890(n)+1` -/
def P4590488269369620017.Spec : Prop :=
  ∀ n, P4590488269369620017.a n = A176798 n

theorem P4590488269369620017.correct : P4590488269369620017.Spec := by
  intro n
  simp only [A176798]

end A176798

/-! ## A176798.P6066494761836068537

`A162609(n+1)+n`
-/

namespace A176798.P6066494761836068537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) + (n : ℤ)

end

end A176798.P6066494761836068537

namespace A176798

/-- `A162609(n+1)+n` -/
def P6066494761836068537.Spec : Prop :=
  ∀ n, P6066494761836068537.a n = A176798 n

end A176798

/-! ## A176798.P15659627301075736779

`(∑[char[∑[n+1]]]-1)*A002262(n)+1+n`
-/

namespace A176798.P15659627301075736779
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A002262 n + 1 + (n : ℤ)

end

end A176798.P15659627301075736779

namespace A176798

/-- `(∑[char[∑[n+1]]]-1)*A002262(n)+1+n` -/
def P15659627301075736779.Spec : Prop :=
  ∀ n, P15659627301075736779.a n = A176798 n

end A176798

/-! ## A176798.P1425632616688131669

`A367964(n)+A303273(n)`
-/

namespace A176798.P1425632616688131669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 n + A303273 n

end

end A176798.P1425632616688131669

namespace A176798

/-- `A367964(n)+A303273(n)` -/
def P1425632616688131669.Spec : Prop :=
  ∀ n, P1425632616688131669.a n = A176798 n

end A176798

/-! ## A176798.P3416183652909786080

`A076110(n+1)+A057944(n)`
-/

namespace A176798.P3416183652909786080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + A057944 n

end

end A176798.P3416183652909786080

namespace A176798

/-- `A076110(n+1)+A057944(n)` -/
def P3416183652909786080.Spec : Prop :=
  ∀ n, P3416183652909786080.a n = A176798 n

end A176798

/-! ## A176798.P17063936461719881983

`A057944(n)+A079904(n)+1`
-/

namespace A176798.P17063936461719881983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + (A079904 n + 1)

end

end A176798.P17063936461719881983

namespace A176798

/-- `A057944(n)+A079904(n)+1` -/
def P17063936461719881983.Spec : Prop :=
  ∀ n, P17063936461719881983.a n = A176798 n

end A176798

/-! ## A176798.P7667205879438290190

`A083920(n)+A159797(n)+1`
-/

namespace A176798.P7667205879438290190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + (A159797 n + 1)

end

end A176798.P7667205879438290190

namespace A176798

/-- `A083920(n)+A159797(n)+1` -/
def P7667205879438290190.Spec : Prop :=
  ∀ n, P7667205879438290190.a n = A176798 n

end A176798

/-! ## A176798.P14561344439434843640

`A159797(n)+A122797(n+1)`
-/

namespace A176798.P14561344439434843640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + A122797 (n + 1)

end

end A176798.P14561344439434843640

namespace A176798

/-- `A159797(n)+A122797(n+1)` -/
def P14561344439434843640.Spec : Prop :=
  ∀ n, P14561344439434843640.a n = A176798 n

end A176798

/-! ## A176798.P5258522044300965100

`n-(A023443(n)-A126890(n))`
-/

namespace A176798.P5258522044300965100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A126890 n)

end

end A176798.P5258522044300965100

namespace A176798

/-- `n-(A023443(n)-A126890(n))` -/
def P5258522044300965100.Spec : Prop :=
  ∀ n, P5258522044300965100.a n = A176798 n

end A176798

/-! ## A176798.P8519108275410889743

`A159798(n+1)+A002262(n)+n`
-/

namespace A176798.P8519108275410889743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159798 (n + 1) + (A002262 n + (n : ℤ))

end

end A176798.P8519108275410889743

namespace A176798

/-- `A159798(n+1)+A002262(n)+n` -/
def P8519108275410889743.Spec : Prop :=
  ∀ n, P8519108275410889743.a n = A176798 n

end A176798

/-! ## A176798.P6524351664500250977

`A076110(n+1)+n-A002262(n)`
-/

namespace A176798.P6524351664500250977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + ((n : ℤ) - A002262 n)

end

end A176798.P6524351664500250977

namespace A176798

/-- `A076110(n+1)+n-A002262(n)` -/
def P6524351664500250977.Spec : Prop :=
  ∀ n, P6524351664500250977.a n = A176798 n

end A176798

/-! ## A176798.P4945632622110446094

`A081493(n+1)+n-A051162(n)`
-/

namespace A176798.P4945632622110446094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) + ((n : ℤ) - A051162 n)

end

end A176798.P4945632622110446094

namespace A176798

/-- `A081493(n+1)+n-A051162(n)` -/
def P4945632622110446094.Spec : Prop :=
  ∀ n, P4945632622110446094.a n = A176798 n

end A176798

/-! ## A176798.P9768605220695581917

`A001614(n+1)+A159797(n)-n`
-/

namespace A176798.P9768605220695581917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1) + (A159797 n - (n : ℤ))

end

end A176798.P9768605220695581917

namespace A176798

/-- `A001614(n+1)+A159797(n)-n` -/
def P9768605220695581917.Spec : Prop :=
  ∀ n, P9768605220695581917.a n = A176798 n

end A176798

/-! ## A176798.P449657098559647699

`A075362(n+1)+A003056(n)²-n`
-/

namespace A176798.P449657098559647699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A003056 n ^ 2 - (n : ℤ))

end

end A176798.P449657098559647699

namespace A176798

/-- `A075362(n+1)+A003056(n)²-n` -/
def P449657098559647699.Spec : Prop :=
  ∀ n, P449657098559647699.a n = A176798 n

end A176798

/-! ## A176798.P4707282197788075097

`A245300(n)+1-A000096(A002262(n))`
-/

namespace A176798.P4707282197788075097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n + (1 - A000096 (A002262 n).toNat)

end

end A176798.P4707282197788075097

namespace A176798

/-- `A245300(n)+1-A000096(A002262(n))` -/
def P4707282197788075097.Spec : Prop :=
  ∀ n, P4707282197788075097.a n = A176798 n

end A176798

/-! ## A176798.P14631689645486722540

`A002061(A002262(n))+A004247(n)+n`
-/

namespace A176798.P14631689645486722540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002262 n).toNat + (A004247 n + (n : ℤ))

end

end A176798.P14631689645486722540

namespace A176798

/-- `A002061(A002262(n))+A004247(n)+n` -/
def P14631689645486722540.Spec : Prop :=
  ∀ n, P14631689645486722540.a n = A176798 n

end A176798

/-! ## A176798.P12107301361736082867

`A152947(A002260(n+1))+A087401(n)+n`
-/

namespace A176798.P12107301361736082867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A002260 (n + 1)).toNat + (A087401 n + (n : ℤ))

end

end A176798.P12107301361736082867

namespace A176798

/-- `A152947(A002260(n+1))+A087401(n)+n` -/
def P12107301361736082867.Spec : Prop :=
  ∀ n, P12107301361736082867.a n = A176798 n

end A176798

/-! ## A176798.P11145168921697568708

`A038722(n+1)+A075362(n+1)-A131507(n)`
-/

namespace A176798.P11145168921697568708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + (A075362 (n + 1) - A131507 n)

end

end A176798.P11145168921697568708

namespace A176798

/-- `A038722(n+1)+A075362(n+1)-A131507(n)` -/
def P11145168921697568708.Spec : Prop :=
  ∀ n, P11145168921697568708.a n = A176798 n

end A176798

/-! ## A176798.P1771833715240922282

`A228312(n+1)+A303273(n)-A182491(n+1)`
-/

namespace A176798.P1771833715240922282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228312 (n + 1) + (A303273 n - A182491 (n + 1))

end

end A176798.P1771833715240922282

namespace A176798

/-- `A228312(n+1)+A303273(n)-A182491(n+1)` -/
def P1771833715240922282.Spec : Prop :=
  ∀ n, P1771833715240922282.a n = A176798 n

end A176798

/-! ## A176798.P6339114698838610019

`A000124(A003056(n))+A002262(n)*A003056(n)`
-/

namespace A176798.P6339114698838610019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A003056 n).toNat + A002262 n * A003056 n

end

end A176798.P6339114698838610019

namespace A176798

/-- `A000124(A003056(n))+A002262(n)*A003056(n)` -/
def P6339114698838610019.Spec : Prop :=
  ∀ n, P6339114698838610019.a n = A176798 n

end A176798

/-!
# A176799: a(n) = possible values of A176797(m) in increasing order, where A176797(m) = antiharmonic means of divisors of antiharmonic numbers A020487.

The programs for A176799, there is no canonical definition to state claims against.
-/

/-! ## A176799.P5597021355579998424

`record[A176800(n+1)-char[6]]`
-/

namespace A176799.P5597021355579998424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176800 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176799.P5597021355579998424

/-! ## A176799.P9619133535557745629

`record[A176800(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A176799.P9619133535557745629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176800 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176799.P9619133535557745629

/-! ## A176799.P1448332239745459813

`record[A176800(A020986(n))]`
-/

namespace A176799.P1448332239745459813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176800 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176799.P1448332239745459813

/-! ## A176799.P2310805976748399948

`record[A176800(A028920(n))]`
-/

namespace A176799.P2310805976748399948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176800 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176799.P2310805976748399948

/-! ## A176799.P9640212714651436370

`record[A176800(A286378(n))]`
-/

namespace A176799.P9640212714651436370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176800 (A286378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176799.P9640212714651436370

