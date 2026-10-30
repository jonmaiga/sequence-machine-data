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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
# A313700: Coordination sequence Gal.6.573.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313700, there is no canonical definition to state claims against.
-/

/-! ## A313700.P10619111169646841493

`A016813(n)+A001222(A353180(n))`
-/

namespace A313700.P10619111169646841493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001222 (A353180 n).toNat

end

end A313700.P10619111169646841493

/-! ## A313700.P10822194373340468188

`A250120(n)+A231122(A027914(n))`
-/

namespace A313700.P10822194373340468188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A231122 (A027914 n).toNat

end

end A313700.P10822194373340468188

/-! ## A313700.P6923622140515405300

`A301726(n)-A064547(A325850(n))`
-/

namespace A313700.P6923622140515405300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A064547 (A325850 n).toNat

end

end A313700.P6923622140515405300

/-! ## A313700.P7666768215518163260

`xor(A063725(A074061(n)), A313714(n))`
-/

namespace A313700.P7666768215518163260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063725 (A074061 n).toNat) (A313714 n)

end

end A313700.P7666768215518163260

/-! ## A313700.P214741780509929558

`A311123(n)+A001222(A018784(n+1))`
-/

namespace A313700.P214741780509929558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311123 n + A001222 (A018784 (n + 1)).toNat

end

end A313700.P214741780509929558

/-!
# A313701: Coordination sequence Gal.5.203.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313701, there is no canonical definition to state claims against.
-/

/-! ## A313701.P14371925233078172518

`A353354(A001700(n))+A316033(n)`
-/

namespace A313701.P14371925233078172518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A001700 n).toNat + A316033 n

end

end A313701.P14371925233078172518

/-! ## A313701.P16129168088215861163

`A161358(A056391(n+1))+A008586(n)`
-/

namespace A313701.P16129168088215861163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A056391 (n + 1)).toNat + A008586 n

end

end A313701.P16129168088215861163

/-!
# A313702: Coordination sequence Gal.6.337.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313702, the canonical program `A313702.P4952802704360513873` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313702 has offset 0).

The definition of A313702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313702.P4952802704360513873

`abs(A008592(n)-A313774(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313702

/-- `abs(A008592(n)-A313774(n))` -/
def P4952802704360513873.Spec : Prop :=
  ∀ n, P4952802704360513873.a n = A313702 n

theorem P4952802704360513873.correct : P4952802704360513873.Spec := by
  intro n
  simp only [A313702]

end A313702

/-! ## A313702.P4102542796654777098

`A314836(n)+A002264(n+1)`
-/

namespace A313702.P4102542796654777098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + A002264 (n + 1)

end

end A313702.P4102542796654777098

namespace A313702

/-- `A314836(n)+A002264(n+1)` -/
def P4102542796654777098.Spec : Prop :=
  ∀ n, P4102542796654777098.a n = A313702 n

end A313702

/-! ## A313702.P9305707210673349846

`A314836(n)+n-A004396(n)`
-/

namespace A313702.P9305707210673349846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + ((n : ℤ) - A004396 n)

end

end A313702.P9305707210673349846

namespace A313702

/-- `A314836(n)+n-A004396(n)` -/
def P9305707210673349846.Spec : Prop :=
  ∀ n, P9305707210673349846.a n = A313702 n

end A313702

/-! ## A313702.P3839758164273287380

`A008458(n)+A008574(n)-A313774(n)`
-/

namespace A313702.P3839758164273287380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313774 n)

end

end A313702.P3839758164273287380

namespace A313702

/-- `A008458(n)+A008574(n)-A313774(n)` -/
def P3839758164273287380.Spec : Prop :=
  ∀ n, P3839758164273287380.a n = A313702 n

end A313702

/-! ## A313702.P3337710236661752058

`A008486(n)+A314836(n)-A008576(n)`
-/

namespace A313702.P3337710236661752058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314836 n - A008576 n)

end

end A313702.P3337710236661752058

namespace A313702

/-- `A008486(n)+A314836(n)-A008576(n)` -/
def P3337710236661752058.Spec : Prop :=
  ∀ n, P3337710236661752058.a n = A313702 n

end A313702

/-! ## A313702.P6794941663814711951

`A315244(n)-A134667(n)`
-/

namespace A313702.P6794941663814711951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315244 n - A134667 n

end

end A313702.P6794941663814711951

namespace A313702

/-- `A315244(n)-A134667(n)` -/
def P6794941663814711951.Spec : Prop :=
  ∀ n, P6794941663814711951.a n = A313702 n

end A313702

/-! ## A313702.P7850571669621484828

`A314189(n)-A201629(n)/2`
-/

namespace A313702.P7850571669621484828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314189 n : ℚ) - (A201629 n : ℚ) / 2

end

end A313702.P7850571669621484828

namespace A313702

/-- `A314189(n)-A201629(n)/2` -/
def P7850571669621484828.Spec : Prop :=
  ∀ n, P7850571669621484828.a n = (A313702 n : ℚ)

end A313702

/-! ## A313702.P14715077598502081950

`A315522(n)-A004396(n)`
-/

namespace A313702.P14715077598502081950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - A004396 n

end

end A313702.P14715077598502081950

namespace A313702

/-- `A315522(n)-A004396(n)` -/
def P14715077598502081950.Spec : Prop :=
  ∀ n, P14715077598502081950.a n = A313702 n

end A313702

/-! ## A313702.P8791637873887270906

`∑[A022003(n)]+A315522(n)-n`
-/

namespace A313702.P8791637873887270906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315522 n - (n : ℤ))

end

end A313702.P8791637873887270906

namespace A313702

/-- `∑[A022003(n)]+A315522(n)-n` -/
def P8791637873887270906.Spec : Prop :=
  ∀ n, P8791637873887270906.a n = A313702 n

end A313702

/-! ## A313702.P8423234867756083073

`Δ[A130518(n)]+A315522(n)-n`
-/

namespace A313702.P8423234867756083073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315522 n - (n : ℤ))

end

end A313702.P8423234867756083073

namespace A313702

/-- `Δ[A130518(n)]+A315522(n)-n` -/
def P8423234867756083073.Spec : Prop :=
  ∀ n, P8423234867756083073.a n = A313702 n

end A313702

/-! ## A313702.P3863121861752132432

`A315522(n)-A002264(2*n+1)`
-/

namespace A313702.P3863121861752132432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - A002264 (2 * n + 1)

end

end A313702.P3863121861752132432

namespace A313702

/-- `A315522(n)-A002264(2*n+1)` -/
def P3863121861752132432.Spec : Prop :=
  ∀ n, P3863121861752132432.a n = A313702 n

end A313702

/-! ## A313702.P3822503401114558715

`A004525(n)+A004396(A314094(n))+n`
-/

namespace A313702.P3822503401114558715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A314094 n).toNat + (n : ℤ))

end

end A313702.P3822503401114558715

namespace A313702

/-- `A004525(n)+A004396(A314094(n))+n` -/
def P3822503401114558715.Spec : Prop :=
  ∀ n, P3822503401114558715.a n = A313702 n

end A313702

/-! ## A313702.P10322662199880899179

`A004525(A315703(n))+2*n`
-/

namespace A313702.P10322662199880899179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315703 n).toNat + (2 * n : ℤ)

end

end A313702.P10322662199880899179

namespace A313702

/-- `A004525(A315703(n))+2*n` -/
def P10322662199880899179.Spec : Prop :=
  ∀ n, P10322662199880899179.a n = A313702 n

end A313702

/-! ## A313702.P16370229797949985894

`A004525(A315747(n))+2*n`
-/

namespace A313702.P16370229797949985894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315747 n).toNat + (2 * n : ℤ)

end

end A313702.P16370229797949985894

namespace A313702

/-- `A004525(A315747(n))+2*n` -/
def P16370229797949985894.Spec : Prop :=
  ∀ n, P16370229797949985894.a n = A313702 n

end A313702

/-! ## A313702.P1212506733339844572

`A004525(A313145(2*n))`
-/

namespace A313702.P1212506733339844572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313145 (2 * n)).toNat

end

end A313702.P1212506733339844572

namespace A313702

/-- `A004525(A313145(2*n))` -/
def P1212506733339844572.Spec : Prop :=
  ∀ n, P1212506733339844572.a n = A313702 n

end A313702

/-! ## A313702.P6992321942222829632

`A004525(A313237(2*n))`
-/

namespace A313702.P6992321942222829632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313237 (2 * n)).toNat

end

end A313702.P6992321942222829632

namespace A313702

/-- `A004525(A313237(2*n))` -/
def P6992321942222829632.Spec : Prop :=
  ∀ n, P6992321942222829632.a n = A313702 n

end A313702

/-! ## A313702.P8467378370395450417

`A004525(A313246(2*n))`
-/

namespace A313702.P8467378370395450417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313246 (2 * n)).toNat

end

end A313702.P8467378370395450417

namespace A313702

/-- `A004525(A313246(2*n))` -/
def P8467378370395450417.Spec : Prop :=
  ∀ n, P8467378370395450417.a n = A313702 n

end A313702

/-! ## A313702.P4602682733541705225

`A004525(A314953(2*n))`
-/

namespace A313702.P4602682733541705225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314953 (2 * n)).toNat

end

end A313702.P4602682733541705225

namespace A313702

/-- `A004525(A314953(2*n))` -/
def P4602682733541705225.Spec : Prop :=
  ∀ n, P4602682733541705225.a n = A313702 n

end A313702

/-! ## A313702.P10417876047430343926

`A004525(A312065(2*n)+n)`
-/

namespace A313702.P10417876047430343926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312065 (2 * n) + (n : ℤ)).toNat

end

end A313702.P10417876047430343926

namespace A313702

/-- `A004525(A312065(2*n)+n)` -/
def P10417876047430343926.Spec : Prop :=
  ∀ n, P10417876047430343926.a n = A313702 n

end A313702

/-! ## A313702.P12218432007971513864

`A004525(2*A312901(n)+n)`
-/

namespace A313702.P12218432007971513864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A312901 n + (n : ℤ)).toNat

end

end A313702.P12218432007971513864

namespace A313702

/-- `A004525(2*A312901(n)+n)` -/
def P12218432007971513864.Spec : Prop :=
  ∀ n, P12218432007971513864.a n = A313702 n

end A313702

/-!
# A313703: Coordination sequence Gal.5.129.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313703, the canonical program `A313703.P15146623144074543038` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313703 has offset 0).

The definition of A313703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313703.P14943492747897410983

`A008706(n)-Δ[A011871(n)]`
-/

namespace A313703.P14943492747897410983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A313703.P14943492747897410983

namespace A313703

/-- `A008706(n)-Δ[A011871(n)]` -/
def P14943492747897410983.Spec : Prop :=
  ∀ n, P14943492747897410983.a n = A313703 n

end A313703

/-! ## A313703.P15146623144074543038

`A008574(n)+A004396(A042965(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313703

/-- `A008574(n)+A004396(A042965(n+1))` -/
def P15146623144074543038.Spec : Prop :=
  ∀ n, P15146623144074543038.a n = A313703 n

theorem P15146623144074543038.correct : P15146623144074543038.Spec := by
  intro n
  simp only [A313703]

end A313703

/-! ## A313703.P13839845528263048379

`A008458(n)-A004396(A047222(n+1))`
-/

namespace A313703.P13839845528263048379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 (A047222 (n + 1)).toNat

end

end A313703.P13839845528263048379

namespace A313703

/-- `A008458(n)-A004396(A047222(n+1))` -/
def P13839845528263048379.Spec : Prop :=
  ∀ n, P13839845528263048379.a n = A313703 n

end A313703

/-! ## A313703.P4385265477506258070

`A008574(n)+A004396(A004396(2*n))`
-/

namespace A313703.P4385265477506258070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A004396 (2 * n)).toNat

end

end A313703.P4385265477506258070

namespace A313703

/-- `A008574(n)+A004396(A004396(2*n))` -/
def P4385265477506258070.Spec : Prop :=
  ∀ n, P4385265477506258070.a n = A313703 n

end A313703

/-! ## A313703.P17775387984153142571

`A008458(n)-A004396(A004396(n)+n)`
-/

namespace A313703.P17775387984153142571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A313703.P17775387984153142571

namespace A313703

/-- `A008458(n)-A004396(A004396(n)+n)` -/
def P17775387984153142571.Spec : Prop :=
  ∀ n, P17775387984153142571.a n = A313703 n

end A313703

/-! ## A313703.P10806243957085050710

`A004396(A004396(2*n))+A004277(2*n)`
-/

namespace A313703.P10806243957085050710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 (2 * n)).toNat + A004277 (2 * n)

end

end A313703.P10806243957085050710

namespace A313703

/-- `A004396(A004396(2*n))+A004277(2*n)` -/
def P10806243957085050710.Spec : Prop :=
  ∀ n, P10806243957085050710.a n = A313703 n

end A313703

/-! ## A313703.P10842779202674437423

`A004396(A004396(2*n))+A004275(2*n+1)`
-/

namespace A313703.P10842779202674437423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 (2 * n)).toNat + A004275 (2 * n + 1)

end

end A313703.P10842779202674437423

namespace A313703

/-- `A004396(A004396(2*n))+A004275(2*n+1)` -/
def P10842779202674437423.Spec : Prop :=
  ∀ n, P10842779202674437423.a n = A313703 n

end A313703

/-! ## A313703.P4593308377906765097

`A314099(n)-A004396(n-A004396(n))`
-/

namespace A313703.P4593308377906765097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314099 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313703.P4593308377906765097

namespace A313703

/-- `A314099(n)-A004396(n-A004396(n))` -/
def P4593308377906765097.Spec : Prop :=
  ∀ n, P4593308377906765097.a n = A313703 n

end A313703

/-! ## A313703.P2112854505916756924

`A313835(n)-Δ[A011862(n)]`
-/

namespace A313703.P2112854505916756924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313835 n - (f1 (n + 1) - f1 n)

end

end A313703.P2112854505916756924

namespace A313703

/-- `A313835(n)-Δ[A011862(n)]` -/
def P2112854505916756924.Spec : Prop :=
  ∀ n, P2112854505916756924.a n = A313703 n

end A313703

/-! ## A313703.P4884623462391876219

`abs(A008592(n)-A313773(n))`
-/

namespace A313703.P4884623462391876219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313773 n|

end

end A313703.P4884623462391876219

namespace A313703

/-- `abs(A008592(n)-A313773(n))` -/
def P4884623462391876219.Spec : Prop :=
  ∀ n, P4884623462391876219.a n = A313703 n

end A313703

/-! ## A313703.P17890486667901644503

`A008458(n)+A008574(n)-A313773(n)`
-/

namespace A313703.P17890486667901644503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313773 n)

end

end A313703.P17890486667901644503

namespace A313703

/-- `A008458(n)+A008574(n)-A313773(n)` -/
def P17890486667901644503.Spec : Prop :=
  ∀ n, P17890486667901644503.a n = A313703 n

end A313703

/-! ## A313703.P4115191400406288661

`A004396(A312901(n))+2*n`
-/

namespace A313703.P4115191400406288661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312901 n).toNat + (2 * n : ℤ)

end

end A313703.P4115191400406288661

namespace A313703

/-- `A004396(A312901(n))+2*n` -/
def P4115191400406288661.Spec : Prop :=
  ∀ n, P4115191400406288661.a n = A313703 n

end A313703

/-! ## A313703.P961590518730642449

`A315475(n)-A004396(A004396(n))`
-/

namespace A313703.P961590518730642449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A004396 (A004396 n).toNat

end

end A313703.P961590518730642449

namespace A313703

/-- `A315475(n)-A004396(A004396(n))` -/
def P961590518730642449.Spec : Prop :=
  ∀ n, P961590518730642449.a n = A313703 n

end A313703

/-! ## A313703.P6793626253487358403

`A313962(n)-Δ[2*A011862(n)]`
-/

namespace A313703.P6793626253487358403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313962 n - (f1 (n + 1) - f1 n)

end

end A313703.P6793626253487358403

namespace A313703

/-- `A313962(n)-Δ[2*A011862(n)]` -/
def P6793626253487358403.Spec : Prop :=
  ∀ n, P6793626253487358403.a n = A313703 n

end A313703

/-! ## A313703.P11169572954639715107

`A315523(n)-A004396(n)`
-/

namespace A313703.P11169572954639715107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A004396 n

end

end A313703.P11169572954639715107

namespace A313703

/-- `A315523(n)-A004396(n)` -/
def P11169572954639715107.Spec : Prop :=
  ∀ n, P11169572954639715107.a n = A313703 n

theorem P11169572954639715107.correct : P11169572954639715107.Spec := by
  intro n
  simp only [A313703, Nat.add_sub_cancel, A313703.P11169572954639715107.a, A313703.P15146623144074543038.a, A004396, A004396.P17032557045289780609.a, A008574, A008574.P1300280032690682112.a, A042965, A042965.P10256174339092268817.a, A315523, A315523.P7408499700622556491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313703

/-! ## A313703.P12927878222952832730

`A315523(n)-A002264(2*n+1)`
-/

namespace A313703.P12927878222952832730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A002264 (2 * n + 1)

end

end A313703.P12927878222952832730

namespace A313703

/-- `A315523(n)-A002264(2*n+1)` -/
def P12927878222952832730.Spec : Prop :=
  ∀ n, P12927878222952832730.a n = A313703 n

theorem P12927878222952832730.correct : P12927878222952832730.Spec := by
  intro n
  simp only [A313703, Nat.add_sub_cancel, A313703.P12927878222952832730.a, A313703.P15146623144074543038.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A008574, A008574.P1300280032690682112.a, A042965, A042965.P10256174339092268817.a, A315523, A315523.P7408499700622556491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313703

/-! ## A313703.P2929663746688709194

`A004396(2*n)+A004396(A315475(n))`
-/

namespace A313703.P2929663746688709194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315475 n).toNat

end

end A313703.P2929663746688709194

namespace A313703

/-- `A004396(2*n)+A004396(A315475(n))` -/
def P2929663746688709194.Spec : Prop :=
  ∀ n, P2929663746688709194.a n = A313703 n

end A313703

/-! ## A313703.P694219544893603694

`A004525(A315748(n))+2*n`
-/

namespace A313703.P694219544893603694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315748 n).toNat + (2 * n : ℤ)

end

end A313703.P694219544893603694

namespace A313703

/-- `A004525(A315748(n))+2*n` -/
def P694219544893603694.Spec : Prop :=
  ∀ n, P694219544893603694.a n = A313703 n

end A313703

/-! ## A313703.P3366412416458782555

`A004396(A219529(n)+2*n)`
-/

namespace A313703.P3366412416458782555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A219529 n + (2 * n : ℤ)).toNat

end

end A313703.P3366412416458782555

namespace A313703

/-- `A004396(A219529(n)+2*n)` -/
def P3366412416458782555.Spec : Prop :=
  ∀ n, P3366412416458782555.a n = A313703 n

end A313703

/-! ## A313703.P14025175447861778948

`A004396(A315475(n)+2*n)`
-/

namespace A313703.P14025175447861778948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315475 n + (2 * n : ℤ)).toNat

end

end A313703.P14025175447861778948

namespace A313703

/-- `A004396(A315475(n)+2*n)` -/
def P14025175447861778948.Spec : Prop :=
  ∀ n, P14025175447861778948.a n = A313703 n

end A313703

/-!
# A313704: Coordination sequence Gal.6.323.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313704, the canonical program `A313704.P6800385676171828535` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313704 has offset 0).

The definition of A313704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313704.P6800385676171828535

`A313560(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313704

/-- `A313560(n)+Δ[A011864(n)]` -/
def P6800385676171828535.Spec : Prop :=
  ∀ n, P6800385676171828535.a n = A313704 n

theorem P6800385676171828535.correct : P6800385676171828535.Spec := by
  intro n
  simp only [A313704]

end A313704

/-! ## A313704.P16192103733154464393

`abs(A008592(n)-A313772(n))`
-/

namespace A313704.P16192103733154464393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313772 n|

end

end A313704.P16192103733154464393

namespace A313704

/-- `abs(A008592(n)-A313772(n))` -/
def P16192103733154464393.Spec : Prop :=
  ∀ n, P16192103733154464393.a n = A313704 n

end A313704

/-! ## A313704.P6584446968558413307

`2*A008706(n)-A313772(n)`
-/

namespace A313704.P6584446968558413307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313772 n

end

end A313704.P6584446968558413307

namespace A313704

/-- `2*A008706(n)-A313772(n)` -/
def P6584446968558413307.Spec : Prop :=
  ∀ n, P6584446968558413307.a n = A313704 n

end A313704

/-! ## A313704.P6824727918326666494

`A008458(n)+A008574(n)-A313772(n)`
-/

namespace A313704.P6824727918326666494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313772 n)

end

end A313704.P6824727918326666494

namespace A313704

/-- `A008458(n)+A008574(n)-A313772(n)` -/
def P6824727918326666494.Spec : Prop :=
  ∀ n, P6824727918326666494.a n = A313704 n

end A313704

/-! ## A313704.P3752527116631609451

`A313772(n)-A005843(A313772(n)-A008706(n))`
-/

namespace A313704.P3752527116631609451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n - A005843 (A313772 n - A008706 n).toNat

end

end A313704.P3752527116631609451

namespace A313704

/-- `A313772(n)-A005843(A313772(n)-A008706(n))` -/
def P3752527116631609451.Spec : Prop :=
  ∀ n, P3752527116631609451.a n = A313704 n

end A313704

/-! ## A313704.P6396598166407295466

`A004396(A312902(n))+2*n`
-/

namespace A313704.P6396598166407295466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312902 n).toNat + (2 * n : ℤ)

end

end A313704.P6396598166407295466

namespace A313704

/-- `A004396(A312902(n))+2*n` -/
def P6396598166407295466.Spec : Prop :=
  ∀ n, P6396598166407295466.a n = A313704 n

end A313704

/-! ## A313704.P3166650702081308536

`A004396(A314684(n))+2*n`
-/

namespace A313704.P3166650702081308536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314684 n).toNat + (2 * n : ℤ)

end

end A313704.P3166650702081308536

namespace A313704

/-- `A004396(A314684(n))+2*n` -/
def P3166650702081308536.Spec : Prop :=
  ∀ n, P3166650702081308536.a n = A313704 n

end A313704

/-! ## A313704.P3885042193113666630

`A005843(n)+A004396(A312902(n))`
-/

namespace A313704.P3885042193113666630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312902 n).toNat

end

end A313704.P3885042193113666630

namespace A313704

/-- `A005843(n)+A004396(A312902(n))` -/
def P3885042193113666630.Spec : Prop :=
  ∀ n, P3885042193113666630.a n = A313704 n

end A313704

/-! ## A313704.P7233349139718547462

`A005843(n)+A004396(A314684(n))`
-/

namespace A313704.P7233349139718547462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A314684 n).toNat

end

end A313704.P7233349139718547462

namespace A313704

/-- `A005843(n)+A004396(A314684(n))` -/
def P7233349139718547462.Spec : Prop :=
  ∀ n, P7233349139718547462.a n = A313704 n

end A313704

/-! ## A313704.P9014247627754534775

`A180004(A313519(n))`
-/

namespace A313704.P9014247627754534775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A313519 n).toNat

end

end A313704.P9014247627754534775

namespace A313704

/-- `A180004(A313519(n))` -/
def P9014247627754534775.Spec : Prop :=
  ∀ n, P9014247627754534775.a n = A313704 n

end A313704

/-! ## A313704.P12802910129226896211

`A005843(A008706(n))-A313772(n)`
-/

namespace A313704.P12802910129226896211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313772 n

end

end A313704.P12802910129226896211

namespace A313704

/-- `A005843(A008706(n))-A313772(n)` -/
def P12802910129226896211.Spec : Prop :=
  ∀ n, P12802910129226896211.a n = A313704 n

end A313704

/-! ## A313704.P17350035094729070905

`A004525(A315709(n))+2*n`
-/

namespace A313704.P17350035094729070905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315709 n).toNat + (2 * n : ℤ)

end

end A313704.P17350035094729070905

namespace A313704

/-- `A004525(A315709(n))+2*n` -/
def P17350035094729070905.Spec : Prop :=
  ∀ n, P17350035094729070905.a n = A313704 n

end A313704

/-! ## A313704.P12556327426131419562

`A004525(A315750(n))+2*n`
-/

namespace A313704.P12556327426131419562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315750 n).toNat + (2 * n : ℤ)

end

end A313704.P12556327426131419562

namespace A313704

/-- `A004525(A315750(n))+2*n` -/
def P12556327426131419562.Spec : Prop :=
  ∀ n, P12556327426131419562.a n = A313704 n

end A313704

/-! ## A313704.P15471142183703762057

`A005843(n)+A004525(A315709(n))`
-/

namespace A313704.P15471142183703762057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315709 n).toNat

end

end A313704.P15471142183703762057

namespace A313704

/-- `A005843(n)+A004525(A315709(n))` -/
def P15471142183703762057.Spec : Prop :=
  ∀ n, P15471142183703762057.a n = A313704 n

end A313704

/-! ## A313704.P7524541077374759810

`A005843(n)+A004525(A315750(n))`
-/

namespace A313704.P7524541077374759810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315750 n).toNat

end

end A313704.P7524541077374759810

namespace A313704

/-- `A005843(n)+A004525(A315750(n))` -/
def P7524541077374759810.Spec : Prop :=
  ∀ n, P7524541077374759810.a n = A313704 n

end A313704

/-! ## A313704.P5896510219882944060

`A004396(A314684(n)+A008486(n))`
-/

namespace A313704.P5896510219882944060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314684 n + A008486 n).toNat

end

end A313704.P5896510219882944060

namespace A313704

/-- `A004396(A314684(n)+A008486(n))` -/
def P5896510219882944060.Spec : Prop :=
  ∀ n, P5896510219882944060.a n = A313704 n

end A313704

/-! ## A313704.P3805502766240184985

`A004396(A311804(2*n)-n)`
-/

namespace A313704.P3805502766240184985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311804 (2 * n) - (n : ℤ)).toNat

end

end A313704.P3805502766240184985

namespace A313704

/-- `A004396(A311804(2*n)-n)` -/
def P3805502766240184985.Spec : Prop :=
  ∀ n, P3805502766240184985.a n = A313704 n

end A313704

/-! ## A313704.P15462090776253009271

`A004396(A312891(2*n)-n)`
-/

namespace A313704.P15462090776253009271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312891 (2 * n) - (n : ℤ)).toNat

end

end A313704.P15462090776253009271

namespace A313704

/-- `A004396(A312891(2*n)-n)` -/
def P15462090776253009271.Spec : Prop :=
  ∀ n, P15462090776253009271.a n = A313704 n

end A313704

/-! ## A313704.P14737515200938873486

`A314210(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313704.P14737515200938873486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314210 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313704.P14737515200938873486

namespace A313704

/-- `A314210(2*n)+A008458(n+1)-(12*n+6)` -/
def P14737515200938873486.Spec : Prop :=
  ∀ n, P14737515200938873486.a n = A313704 n

end A313704

/-! ## A313704.P1956820746494499817

`A004525(A310455(2*n))`
-/

namespace A313704.P1956820746494499817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310455 (2 * n)).toNat

end

end A313704.P1956820746494499817

namespace A313704

/-- `A004525(A310455(2*n))` -/
def P1956820746494499817.Spec : Prop :=
  ∀ n, P1956820746494499817.a n = A313704 n

end A313704

/-!
# A313705: Coordination sequence Gal.6.452.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313705, there is no canonical definition to state claims against.
-/

/-! ## A313705.P1253996602274621702

`A313333(n)+A244895(n)`
-/

namespace A313705.P1253996602274621702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313333 n + A244895 n

end

end A313705.P1253996602274621702

/-! ## A313705.P1725871553412025341

`A330025(2*n)+A313333(n)`
-/

namespace A313705.P1725871553412025341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A313333 n

end

end A313705.P1725871553412025341

/-! ## A313705.P9476577371207056632

`abs(A330025(A005843(n))+A313333(n))`
-/

namespace A313705.P9476577371207056632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330025 (A005843 n).toNat + A313333 n|

end

end A313705.P9476577371207056632

/-! ## A313705.P14577129411450360845

`A063524(n+2)+A330025(A005843(n))+A313333(n)`
-/

namespace A313705.P14577129411450360845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 2) + (A330025 (A005843 n).toNat + A313333 n)

end

end A313705.P14577129411450360845

/-! ## A313705.P14341899160343792168

`A315092(n)+A313709(n)-A315094(n)`
-/

namespace A313705.P14341899160343792168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315092 n + A313709 n - A315094 n

end

end A313705.P14341899160343792168

/-! ## A313705.P2433703495056551924

`A313709(n)+A313333(n)-A313334(n)`
-/

namespace A313705.P2433703495056551924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n + A313333 n - A313334 n

end

end A313705.P2433703495056551924

/-! ## A313705.P4200047324226927313

`A004525(A301299(2*n)+A047263(n+1))`
-/

namespace A313705.P4200047324226927313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301299 (2 * n) + A047263 (n + 1)).toNat

end

end A313705.P4200047324226927313

/-!
# A313706: Coordination sequence Gal.6.607.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313706, there is no canonical definition to state claims against.
-/

/-! ## A313706.P17875324705966013209

`A313707(n)-A002265(A181170(n))`
-/

namespace A313706.P17875324705966013209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n - A002265 (A181170 n).toNat

end

end A313706.P17875324705966013209

/-! ## A313706.P18018917619404139425

`A313707(A062399(n))`
-/

namespace A313706.P18018917619404139425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 (A062399 n).toNat

end

end A313706.P18018917619404139425

/-! ## A313706.P4127601317065638129

`A313707(A120126(n))`
-/

namespace A313706.P4127601317065638129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 (A120126 n).toNat

end

end A313706.P4127601317065638129

/-! ## A313706.P15092588287369961425

`A313707(A351870(n))`
-/

namespace A313706.P15092588287369961425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 (A351870 n).toNat

end

end A313706.P15092588287369961425

/-! ## A313706.P11637356900937959589

`A313707(n)%A008458(A092920(n))`
-/

namespace A313706.P11637356900937959589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A313707 n) (A008458 (A092920 n).toNat)

end

end A313706.P11637356900937959589

/-!
# A313707: Coordination sequence Gal.6.198.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313707, the canonical program `A313707.P5162178319112651376` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313707 has offset 0).

The definition of A313707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313707.P10249830667418977909

`ogf((1+3x+x^2+5x^5+x^8+3x^9+x^10)/(1-2x+x^2+x^4-2x^5+x^6+x^8-2x^9+x^10))`
-/

namespace A313707.P10249830667418977909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 0, 0, 5, 0, 0, 1, 3, 1] [1, -2, 1, 0, 1, -2, 1, 0, 1, -2, 1] n

end

end A313707.P10249830667418977909

namespace A313707

/-- `ogf((1+3x+x^2+5x^5+x^8+3x^9+x^10)/(1-2x+x^2+x^4-2x^5+x^6+x^8-2x^9+x^10))` -/
def P10249830667418977909.Spec : Prop :=
  ∀ n, P10249830667418977909.a n = A313707 n

end A313707

/-! ## A313707.P4568562520837007520

`round(A314841(n)+n/3)`
-/

namespace A313707.P4568562520837007520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314841 n : ℚ) + (n : ℚ) / 3)

end

end A313707.P4568562520837007520

namespace A313707

/-- `round(A314841(n)+n/3)` -/
def P4568562520837007520.Spec : Prop :=
  ∀ n, P4568562520837007520.a n = A313707 n

end A313707

/-! ## A313707.P3044829581339564920

`abs(A008592(n)-A313769(n))`
-/

namespace A313707.P3044829581339564920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313769 n|

end

end A313707.P3044829581339564920

namespace A313707

/-- `abs(A008592(n)-A313769(n))` -/
def P3044829581339564920.Spec : Prop :=
  ∀ n, P3044829581339564920.a n = A313707 n

end A313707

/-! ## A313707.P2151694945845068871

`floor(A010015(n)/A313769(n))`
-/

namespace A313707.P2151694945845068871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313769 n : ℚ)⌋

end

end A313707.P2151694945845068871

namespace A313707

/-- `floor(A010015(n)/A313769(n))` -/
def P2151694945845068871.Spec : Prop :=
  ∀ n, P2151694945845068871.a n = A313707 n

end A313707

/-! ## A313707.P5700102878848607066

`A314841(n)+∑[A022003(n)]`
-/

namespace A313707.P5700102878848607066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313707.P5700102878848607066

namespace A313707

/-- `A314841(n)+∑[A022003(n)]` -/
def P5700102878848607066.Spec : Prop :=
  ∀ n, P5700102878848607066.a n = A313707 n

end A313707

/-! ## A313707.P5162178319112651376

`A313569(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313707

/-- `A313569(n)+Δ[A011865(n)]` -/
def P5162178319112651376.Spec : Prop :=
  ∀ n, P5162178319112651376.a n = A313707 n

theorem P5162178319112651376.correct : P5162178319112651376.Spec := by
  intro n
  simp only [A313707]

end A313707

/-! ## A313707.P8839820424165335039

`A314841(n)+Δ[A130518(n)]`
-/

namespace A313707.P8839820424165335039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + (f1 (n + 1) - f1 n)

end

end A313707.P8839820424165335039

namespace A313707

/-- `A314841(n)+Δ[A130518(n)]` -/
def P8839820424165335039.Spec : Prop :=
  ∀ n, P8839820424165335039.a n = A313707 n

end A313707

/-! ## A313707.P13595355155604588636

`A314841(n)+A002264(n+1)`
-/

namespace A313707.P13595355155604588636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A002264 (n + 1)

end

end A313707.P13595355155604588636

namespace A313707

/-- `A314841(n)+A002264(n+1)` -/
def P13595355155604588636.Spec : Prop :=
  ∀ n, P13595355155604588636.a n = A313707 n

end A313707

/-! ## A313707.P10558856807300324302

`A314841(n)+n-A004396(n)`
-/

namespace A313707.P10558856807300324302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + ((n : ℤ) - A004396 n)

end

end A313707.P10558856807300324302

namespace A313707

/-- `A314841(n)+n-A004396(n)` -/
def P10558856807300324302.Spec : Prop :=
  ∀ n, P10558856807300324302.a n = A313707 n

end A313707

/-! ## A313707.P13469150343608821643

`A313057(n)+A004396(A004525(n))`
-/

namespace A313707.P13469150343608821643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A004396 (A004525 n).toNat

end

end A313707.P13469150343608821643

namespace A313707

/-- `A313057(n)+A004396(A004525(n))` -/
def P13469150343608821643.Spec : Prop :=
  ∀ n, P13469150343608821643.a n = A313707 n

end A313707

/-! ## A313707.P16664876093411729905

`A314847(n)+A004396(n-A004525(n))`
-/

namespace A313707.P16664876093411729905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313707.P16664876093411729905

namespace A313707

/-- `A314847(n)+A004396(n-A004525(n))` -/
def P16664876093411729905.Spec : Prop :=
  ∀ n, P16664876093411729905.a n = A313707 n

end A313707

/-! ## A313707.P4846079360580975898

`A008458(n)+A008574(n)-A313769(n)`
-/

namespace A313707.P4846079360580975898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313769 n)

end

end A313707.P4846079360580975898

namespace A313707

/-- `A008458(n)+A008574(n)-A313769(n)` -/
def P4846079360580975898.Spec : Prop :=
  ∀ n, P4846079360580975898.a n = A313707 n

end A313707

/-! ## A313707.P16522641994913934603

`A008486(n)+A314841(n)-A008576(n)`
-/

namespace A313707.P16522641994913934603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314841 n - A008576 n)

end

end A313707.P16522641994913934603

namespace A313707

/-- `A008486(n)+A314841(n)-A008576(n)` -/
def P16522641994913934603.Spec : Prop :=
  ∀ n, P16522641994913934603.a n = A313707 n

end A313707

/-! ## A313707.P5130973970846587950

`A004525(n)+A313833(n)-A004396(n)`
-/

namespace A313707.P5130973970846587950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313833 n - A004396 n)

end

end A313707.P5130973970846587950

namespace A313707

/-- `A004525(n)+A313833(n)-A004396(n)` -/
def P5130973970846587950.Spec : Prop :=
  ∀ n, P5130973970846587950.a n = A313707 n

end A313707

/-! ## A313707.P17678393290609750272

`A004396(A312909(n))+2*n`
-/

namespace A313707.P17678393290609750272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312909 n).toNat + (2 * n : ℤ)

end

end A313707.P17678393290609750272

namespace A313707

/-- `A004396(A312909(n))+2*n` -/
def P17678393290609750272.Spec : Prop :=
  ∀ n, P17678393290609750272.a n = A313707 n

end A313707

/-! ## A313707.P13783730094877629136

`A004396(A314688(n))+2*n`
-/

namespace A313707.P13783730094877629136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314688 n).toNat + (2 * n : ℤ)

end

end A313707.P13783730094877629136

namespace A313707

/-- `A004396(A314688(n))+2*n` -/
def P13783730094877629136.Spec : Prop :=
  ∀ n, P13783730094877629136.a n = A313707 n

end A313707

/-! ## A313707.P5209503195600191843

`A315527(n)-A004396(n)`
-/

namespace A313707.P5209503195600191843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315527 n - A004396 n

end

end A313707.P5209503195600191843

namespace A313707

/-- `A315527(n)-A004396(n)` -/
def P5209503195600191843.Spec : Prop :=
  ∀ n, P5209503195600191843.a n = A313707 n

end A313707

/-! ## A313707.P7020915696585128376

`A074067(A313769(n))`
-/

namespace A313707.P7020915696585128376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313769 n).toNat

end

end A313707.P7020915696585128376

namespace A313707

/-- `A074067(A313769(n))` -/
def P7020915696585128376.Spec : Prop :=
  ∀ n, P7020915696585128376.a n = A313707 n

end A313707

/-! ## A313707.P12169036281563248825

`A004396(A314134(n)+2*n)`
-/

namespace A313707.P12169036281563248825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314134 n + (2 * n : ℤ)).toNat

end

end A313707.P12169036281563248825

namespace A313707

/-- `A004396(A314134(n)+2*n)` -/
def P12169036281563248825.Spec : Prop :=
  ∀ n, P12169036281563248825.a n = A313707 n

end A313707

/-! ## A313707.P13734397336580798720

`A004396(A315479(n)+2*n)`
-/

namespace A313707.P13734397336580798720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315479 n + (2 * n : ℤ)).toNat

end

end A313707.P13734397336580798720

namespace A313707

/-- `A004396(A315479(n)+2*n)` -/
def P13734397336580798720.Spec : Prop :=
  ∀ n, P13734397336580798720.a n = A313707 n

end A313707

/-!
# A313708: Coordination sequence Gal.6.608.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313708, there is no canonical definition to state claims against.
-/

/-! ## A313708.P11062333935438098650

`A072644(A391600(n))+4*n`
-/

namespace A313708.P11062333935438098650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072644 (A391600 n).toNat + (4 * n : ℤ)

end

end A313708.P11062333935438098650

/-! ## A313708.P13301609552386368991

`A313571(n)+A178226(A001053(n))`
-/

namespace A313708.P13301609552386368991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313571 n + A178226 (A001053 n).toNat

end

end A313708.P13301609552386368991

/-! ## A313708.P2718969831115375360

`A313571(n)+A182936(A007051(n))`
-/

namespace A313708.P2718969831115375360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313571 n + A182936 (A007051 n).toNat

end

end A313708.P2718969831115375360

/-! ## A313708.P14828207742204298191

`A313758(n)-A183063(A099947(n))`
-/

namespace A313708.P14828207742204298191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n - A183063 (A099947 n).toNat

end

end A313708.P14828207742204298191

/-! ## A313708.P10673138823751254546

`A115623(A000583(n))+A002004(n+1)`
-/

namespace A313708.P10673138823751254546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A000583 n).toNat + A002004 (n + 1)

end

end A313708.P10673138823751254546

/-!
# A313709: Coordination sequence Gal.6.453.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313709, there is no canonical definition to state claims against.
-/

/-! ## A313709.P14539942504253370336

`A313334(n)+A244895(n)`
-/

namespace A313709.P14539942504253370336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313334 n + A244895 n

end

end A313709.P14539942504253370336

/-! ## A313709.P17836201485976672249

`A330025(2*n)+A313334(n)`
-/

namespace A313709.P17836201485976672249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A313334 n

end

end A313709.P17836201485976672249

/-! ## A313709.P161233299053507394

`abs(A330025(A005843(n))+A313334(n))`
-/

namespace A313709.P161233299053507394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330025 (A005843 n).toNat + A313334 n|

end

end A313709.P161233299053507394

/-! ## A313709.P12118175532927772837

`A313334(n)+A011582(A265188(n+1))`
-/

namespace A313709.P12118175532927772837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313334 n + A011582 (A265188 (n + 1)).toNat

end

end A313709.P12118175532927772837

/-! ## A313709.P12772611547023012167

`A313334(n)+A315187(n)-A250120(n)`
-/

namespace A313709.P12772611547023012167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313334 n + (A315187 n - A250120 n)

end

end A313709.P12772611547023012167

/-! ## A313709.P5742290845867548441

`A313334(n)-A330025(8*n)`
-/

namespace A313709.P5742290845867548441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313334 n - A330025 (8 * n)

end

end A313709.P5742290845867548441

/-!
# A313710: Coordination sequence Gal.5.145.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313710, there is no canonical definition to state claims against.
-/

/-! ## A313710.P14022882065325940944

`A180017(A321413(n+1))+A008706(n)`
-/

namespace A313710.P14022882065325940944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (A321413 (n + 1)).toNat + A008706 n

end

end A313710.P14022882065325940944

/-! ## A313710.P85943089774289291

`A106744(A314197(n)+1)`
-/

namespace A313710.P85943089774289291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314197 n + 1).toNat

end

end A313710.P85943089774289291

/-! ## A313710.P17152825148808083215

`A250120(n)+A077267(A027914(n))`
-/

namespace A313710.P17152825148808083215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A077267 (A027914 n).toNat

end

end A313710.P17152825148808083215

/-! ## A313710.P3704029093059993027

`A379669(A001629(n))+A250120(n)`
-/

namespace A313710.P3704029093059993027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 (A001629 n).toNat + A250120 n

end

end A313710.P3704029093059993027

/-! ## A313710.P12674587961260267512

`A364045(A088218(n))+A250120(n)`
-/

namespace A313710.P12674587961260267512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364045 (A088218 n).toNat + A250120 n

end

end A313710.P12674587961260267512

/-!
# A313711: Coordination sequence Gal.6.251.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313711, the canonical program `A313711.P360949876952997669` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313711 has offset 0).

The definition of A313711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313711.P11951774942752749139

`abs(A008592(n)-A313768(n))`
-/

namespace A313711.P11951774942752749139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313768 n|

end

end A313711.P11951774942752749139

namespace A313711

/-- `abs(A008592(n)-A313768(n))` -/
def P11951774942752749139.Spec : Prop :=
  ∀ n, P11951774942752749139.a n = A313711 n

end A313711

/-! ## A313711.P360949876952997669

`A313572(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313711

/-- `A313572(n)+Δ[A011864(n)]` -/
def P360949876952997669.Spec : Prop :=
  ∀ n, P360949876952997669.a n = A313711 n

theorem P360949876952997669.correct : P360949876952997669.Spec := by
  intro n
  simp only [A313711]

end A313711

/-! ## A313711.P16040693641871157009

`2*A008706(n)-A313768(n)`
-/

namespace A313711.P16040693641871157009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313768 n

end

end A313711.P16040693641871157009

namespace A313711

/-- `2*A008706(n)-A313768(n)` -/
def P16040693641871157009.Spec : Prop :=
  ∀ n, P16040693641871157009.a n = A313711 n

end A313711

/-! ## A313711.P11804701239397897336

`A184418(A008574(n))-A313768(n)`
-/

namespace A313711.P11804701239397897336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313768 n

end

end A313711.P11804701239397897336

namespace A313711

/-- `A184418(A008574(n))-A313768(n)` -/
def P11804701239397897336.Spec : Prop :=
  ∀ n, P11804701239397897336.a n = A313711 n

end A313711

/-! ## A313711.P7080084579892801089

`A000038(n)+A008592(n)-A313768(n)`
-/

namespace A313711.P7080084579892801089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A313768 n)

end

end A313711.P7080084579892801089

namespace A313711

/-- `A000038(n)+A008592(n)-A313768(n)` -/
def P7080084579892801089.Spec : Prop :=
  ∀ n, P7080084579892801089.a n = A313711 n

end A313711

/-! ## A313711.P16425193426458318620

`A008458(n)+A008574(n)-A313768(n)`
-/

namespace A313711.P16425193426458318620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313768 n)

end

end A313711.P16425193426458318620

namespace A313711

/-- `A008458(n)+A008574(n)-A313768(n)` -/
def P16425193426458318620.Spec : Prop :=
  ∀ n, P16425193426458318620.a n = A313711 n

end A313711

/-! ## A313711.P5587461790907075516

`∑{d}[A008592(n)-A313768(n), A000010(#)]`
-/

namespace A313711.P5587461790907075516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313711.P5587461790907075516

namespace A313711

/-- `∑{d}[A008592(n)-A313768(n), A000010(#)]` -/
def P5587461790907075516.Spec : Prop :=
  ∀ n, P5587461790907075516.a n = A313711 n

end A313711

/-! ## A313711.P16692682125774636818

`Δ[A011864(n)]+abs(10*n-A313869(n))`
-/

namespace A313711.P16692682125774636818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + |(10 * n : ℤ) - A313869 n|

end

end A313711.P16692682125774636818

namespace A313711

/-- `Δ[A011864(n)]+abs(10*n-A313869(n))` -/
def P16692682125774636818.Spec : Prop :=
  ∀ n, P16692682125774636818.a n = A313711 n

end A313711

/-! ## A313711.P2238231832270848845

`(A315733(n)+A311385(n))/2`
-/

namespace A313711.P2238231832270848845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315733 n + A311385 n : ℚ) / 2

end

end A313711.P2238231832270848845

namespace A313711

/-- `(A315733(n)+A311385(n))/2` -/
def P2238231832270848845.Spec : Prop :=
  ∀ n, P2238231832270848845.a n = (A313711 n : ℚ)

end A313711

/-! ## A313711.P3072100451329753097

`A311385(n)+A001281(A315733(n)-A311385(n))`
-/

namespace A313711.P3072100451329753097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n + A001281 (A315733 n - A311385 n).toNat

end

end A313711.P3072100451329753097

namespace A313711

/-- `A311385(n)+A001281(A315733(n)-A311385(n))` -/
def P3072100451329753097.Spec : Prop :=
  ∀ n, P3072100451329753097.a n = A313711 n

end A313711

/-! ## A313711.P9341670051020608195

`A005843(A008706(n))-A313768(n)`
-/

namespace A313711.P9341670051020608195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313768 n

end

end A313711.P9341670051020608195

namespace A313711

/-- `A005843(A008706(n))-A313768(n)` -/
def P9341670051020608195.Spec : Prop :=
  ∀ n, P9341670051020608195.a n = A313711 n

end A313711

/-! ## A313711.P13337915109112075660

`∏{d}[A008592(n)-A313768(n), A014963(#)]`
-/

namespace A313711.P13337915109112075660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A313711.P13337915109112075660

namespace A313711

/-- `∏{d}[A008592(n)-A313768(n), A014963(#)]` -/
def P13337915109112075660.Spec : Prop :=
  ∀ n, P13337915109112075660.a n = A313711 n

end A313711

/-! ## A313711.P2732410227390305588

`A065502(A008458(n))-A313768(n)`
-/

namespace A313711.P2732410227390305588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313768 n

end

end A313711.P2732410227390305588

namespace A313711

/-- `A065502(A008458(n))-A313768(n)` -/
def P2732410227390305588.Spec : Prop :=
  ∀ n, P2732410227390305588.a n = A313711 n

end A313711

/-! ## A313711.P17225744684658771930

`A001281(A315733(n)+A311385(n))`
-/

namespace A313711.P17225744684658771930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315733 n + A311385 n).toNat

end

end A313711.P17225744684658771930

namespace A313711

/-- `A001281(A315733(n)+A311385(n))` -/
def P17225744684658771930.Spec : Prop :=
  ∀ n, P17225744684658771930.a n = A313711 n

end A313711

/-!
# A313712: Coordination sequence Gal.6.494.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313712, the canonical program `A313712.P9731898324180569252` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313712 has offset 0).

The definition of A313712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313712.P9731898324180569252

`A315563(n)-A004525(A315563(n)-A314617(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313712

/-- `A315563(n)-A004525(A315563(n)-A314617(n))` -/
def P9731898324180569252.Spec : Prop :=
  ∀ n, P9731898324180569252.a n = A313712 n

theorem P9731898324180569252.correct : P9731898324180569252.Spec := by
  intro n
  simp only [A313712]

end A313712

/-! ## A313712.P12096215507675363665

`A004525(A315563(n)+A314617(n))`
-/

namespace A313712.P12096215507675363665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315563 n + A314617 n).toNat

end

end A313712.P12096215507675363665

namespace A313712

/-- `A004525(A315563(n)+A314617(n))` -/
def P12096215507675363665.Spec : Prop :=
  ∀ n, P12096215507675363665.a n = A313712 n

end A313712

/-! ## A313712.P16496782730062639081

`A250120(n)+A065339(A042851(n))`
-/

namespace A313712.P16496782730062639081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A065339 (A042851 n).toNat

end

end A313712.P16496782730062639081

namespace A313712

/-- `A250120(n)+A065339(A042851(n))` -/
def P16496782730062639081.Spec : Prop :=
  ∀ n, P16496782730062639081.a n = A313712 n

end A313712

/-! ## A313712.P8608859269771493273

`A002024(or(A160416(n), A244803(n+1)))`
-/

namespace A313712.P8608859269771493273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A160416 n) (A244803 (n + 1))).toNat

end

end A313712.P8608859269771493273

namespace A313712

/-- `A002024(or(A160416(n), A244803(n+1)))` -/
def P8608859269771493273.Spec : Prop :=
  ∀ n, P8608859269771493273.a n = A313712 n

end A313712

/-! ## A313712.P12958483560871541677

`A250120(n)+A046660(A042826(n))`
-/

namespace A313712.P12958483560871541677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A046660 (A042826 n).toNat

end

end A313712.P12958483560871541677

namespace A313712

/-- `A250120(n)+A046660(A042826(n))` -/
def P12958483560871541677.Spec : Prop :=
  ∀ n, P12958483560871541677.a n = A313712 n

end A313712

/-!
# A313713: Coordination sequence Gal.6.608.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313713, there is no canonical definition to state claims against.
-/

/-! ## A313713.P7003707129759588823

`A315036(n)+A284512(A183013(n+1))`
-/

namespace A313713.P7003707129759588823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n + A284512 (A183013 (n + 1)).toNat

end

end A313713.P7003707129759588823

/-! ## A313713.P14889652671816456785

`or(A001222(A199892(n+1)), A312185(n))`
-/

namespace A313713.P14889652671816456785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A199892 (n + 1)).toNat) (A312185 n)

end

end A313713.P14889652671816456785

/-! ## A313713.P13990572822609045377

`or(A001222(A026026(n+2)), A312185(n))`
-/

namespace A313713.P13990572822609045377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A026026 (n + 2)).toNat) (A312185 n)

end

end A313713.P13990572822609045377

/-! ## A313713.P13445638242844325920

`record[A313714(n)-A234277(n)]`
-/

namespace A313713.P13445638242844325920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313714 n - A234277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313713.P13445638242844325920

/-! ## A313713.P8340552228724591084

`A250120(n)+A063725(A002532(n))`
-/

namespace A313713.P8340552228724591084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A063725 (A002532 n).toNat

end

end A313713.P8340552228724591084

/-!
# A313714: Coordination sequence Gal.6.607.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313714, there is no canonical definition to state claims against.
-/

/-! ## A313714.P6663387431864638550

`or(A001222(A150907(n)), A310398(n))`
-/

namespace A313714.P6663387431864638550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A150907 n).toNat) (A310398 n)

end

end A313714.P6663387431864638550

/-!
# A313715: Coordination sequence Gal.6.363.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313715, the canonical program `A313715.P10014129678615076953` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313715 has offset 0).

The definition of A313715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313715.P2328672611273537164

`A008706(n)+A314692(n)-A314708(n)`
-/

namespace A313715.P2328672611273537164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A314692 n - A314708 n)

end

end A313715.P2328672611273537164

namespace A313715

/-- `A008706(n)+A314692(n)-A314708(n)` -/
def P2328672611273537164.Spec : Prop :=
  ∀ n, P2328672611273537164.a n = A313715 n

end A313715

/-! ## A313715.P10014129678615076953

`A313703(n)+A313736(n)-A313721(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313715

/-- `A313703(n)+A313736(n)-A313721(n)` -/
def P10014129678615076953.Spec : Prop :=
  ∀ n, P10014129678615076953.a n = A313715 n

theorem P10014129678615076953.correct : P10014129678615076953.Spec := by
  intro n
  simp only [A313715]

end A313715

/-! ## A313715.P2074397456438413147

`A314692(n)+A314220(n)-A008706(n)`
-/

namespace A313715.P2074397456438413147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n + A314220 n - A008706 n

end

end A313715.P2074397456438413147

namespace A313715

/-- `A314692(n)+A314220(n)-A008706(n)` -/
def P2074397456438413147.Spec : Prop :=
  ∀ n, P2074397456438413147.a n = A313715 n

end A313715

/-! ## A313715.P11483520981271349751

`A313746(n)-A129982(A176642(n))`
-/

namespace A313715.P11483520981271349751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n - A129982 (A176642 n).toNat

end

end A313715.P11483520981271349751

namespace A313715

/-- `A313746(n)-A129982(A176642(n))` -/
def P11483520981271349751.Spec : Prop :=
  ∀ n, P11483520981271349751.a n = A313715 n

end A313715

/-! ## A313715.P17656570307343577676

`A313746(n)-A323022(A176644(n))`
-/

namespace A313715.P17656570307343577676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n - A323022 (A176644 n).toNat

end

end A313715.P17656570307343577676

namespace A313715

/-- `A313746(n)-A323022(A176644(n))` -/
def P17656570307343577676.Spec : Prop :=
  ∀ n, P17656570307343577676.a n = A313715 n

end A313715

/-!
# A313716: Coordination sequence Gal.5.128.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313716, there is no canonical definition to state claims against.
-/

/-! ## A313716.P9215729837143234428

`A315454(n)-A243822(A087111(n+3))`
-/

namespace A313716.P9215729837143234428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315454 n - A243822 (A087111 (n + 3)).toNat

end

end A313716.P9215729837143234428

/-! ## A313716.P6570612225755197869

`A004525(A315728(2*n))-A243822(A087111(n+3))`
-/

namespace A313716.P6570612225755197869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315728 (2 * n)).toNat - A243822 (A087111 (n + 3)).toNat

end

end A313716.P6570612225755197869

/-! ## A313716.P5776696149447483953

`A004526(A315728(2*n)+1)-A243822(A087111(n+3))`
-/

namespace A313716.P5776696149447483953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315728 (2 * n) + 1).toNat - A243822 (A087111 (n + 3)).toNat

end

end A313716.P5776696149447483953

/-! ## A313716.P10737083600460541247

`or(A313599(n), A353377(A149640(n)))`
-/

namespace A313716.P10737083600460541247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313599 n) (A353377 (A149640 n).toNat)

end

end A313716.P10737083600460541247

/-!
# A313717: Coordination sequence Gal.6.151.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313717, the canonical program `A313717.P15469880172162145756` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313717 has offset 0).

The definition of A313717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313717.P15469880172162145756

`abs(9*n-A311312(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313717

/-- `abs(9*n-A311312(n))` -/
def P15469880172162145756.Spec : Prop :=
  ∀ n, P15469880172162145756.a n = A313717 n

theorem P15469880172162145756.correct : P15469880172162145756.Spec := by
  intro n
  simp only [A313717]

end A313717

/-! ## A313717.P14365885202787280612

`A315400(n)-A128834(n)`
-/

namespace A313717.P14365885202787280612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315400 n - A128834 n

end

end A313717.P14365885202787280612

namespace A313717

/-- `A315400(n)-A128834(n)` -/
def P14365885202787280612.Spec : Prop :=
  ∀ n, P14365885202787280612.a n = A313717 n

end A313717

/-! ## A313717.P2622551304797786842

`abs(A008592(n)-(A311312(n)+n))`
-/

namespace A313717.P2622551304797786842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311312 n + (n : ℤ))|

end

end A313717.P2622551304797786842

namespace A313717

/-- `abs(A008592(n)-(A311312(n)+n))` -/
def P2622551304797786842.Spec : Prop :=
  ∀ n, P2622551304797786842.a n = A313717 n

theorem P2622551304797786842.correct : P2622551304797786842.Spec := by
  intro n
  simp only [A313717, Nat.add_sub_cancel, A313717.P2622551304797786842.a, A313717.P15469880172162145756.a, A008592, A008592.P4981059802862696142.a, A311312, A311312.P1118141043632426917.a, A004396, A004396.P17032557045289780609.a, A314903, A314903.P4262956308037847245.a, A004525, A004525.P4158271949796742323.a, A008706, A008706.P1571514609299617601.a, A128834, A128834.P4430347604004376390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313717

/-! ## A313717.P10060985515578658492

`A047513(n+1)+A313474(n)-n`
-/

namespace A313717.P10060985515578658492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A313474 n - (n : ℤ))

end

end A313717.P10060985515578658492

namespace A313717

/-- `A047513(n+1)+A313474(n)-n` -/
def P10060985515578658492.Spec : Prop :=
  ∀ n, P10060985515578658492.a n = A313717 n

end A313717

/-! ## A313717.P2536283896480304430

`A008458(n)+A008486(n)-A311312(n)`
-/

namespace A313717.P2536283896480304430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311312 n)

end

end A313717.P2536283896480304430

namespace A313717

/-- `A008458(n)+A008486(n)-A311312(n)` -/
def P2536283896480304430.Spec : Prop :=
  ∀ n, P2536283896480304430.a n = A313717 n

end A313717

/-! ## A313717.P5372693786640882714

`A004396(n)+A313474(n)-A004525(A004396(n))`
-/

namespace A313717.P5372693786640882714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313474 n - A004525 (A004396 n).toNat)

end

end A313717.P5372693786640882714

namespace A313717

/-- `A004396(n)+A313474(n)-A004525(A004396(n))` -/
def P5372693786640882714.Spec : Prop :=
  ∀ n, P5372693786640882714.a n = A313717 n

end A313717

/-! ## A313717.P8539703769063020994

`round(A314108(n)-n/3)`
-/

namespace A313717.P8539703769063020994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314108 n : ℚ) - (n : ℚ) / 3)

end

end A313717.P8539703769063020994

namespace A313717

/-- `round(A314108(n)-n/3)` -/
def P8539703769063020994.Spec : Prop :=
  ∀ n, P8539703769063020994.a n = A313717 n

end A313717

/-! ## A313717.P1223883604278428848

`A314108(n)-A002264(n+1)`
-/

namespace A313717.P1223883604278428848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314108 n - A002264 (n + 1)

end

end A313717.P1223883604278428848

namespace A313717

/-- `A314108(n)-A002264(n+1)` -/
def P1223883604278428848.Spec : Prop :=
  ∀ n, P1223883604278428848.a n = A313717 n

end A313717

/-! ## A313717.P11264499458117976515

`A004396(n)+A314108(n)-n`
-/

namespace A313717.P11264499458117976515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314108 n - (n : ℤ))

end

end A313717.P11264499458117976515

namespace A313717

/-- `A004396(n)+A314108(n)-n` -/
def P11264499458117976515.Spec : Prop :=
  ∀ n, P11264499458117976515.a n = A313717 n

end A313717

/-! ## A313717.P211551363562084591

`A008576(n)+A314108(n)-A008486(n)`
-/

namespace A313717.P211551363562084591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314108 n - A008486 n)

end

end A313717.P211551363562084591

namespace A313717

/-- `A008576(n)+A314108(n)-A008486(n)` -/
def P211551363562084591.Spec : Prop :=
  ∀ n, P211551363562084591.a n = A313717 n

end A313717

/-! ## A313717.P4924495913066503043

`A004525(n)+A314204(n)-n`
-/

namespace A313717.P4924495913066503043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314204 n - (n : ℤ))

end

end A313717.P4924495913066503043

namespace A313717

/-- `A004525(n)+A314204(n)-n` -/
def P4924495913066503043.Spec : Prop :=
  ∀ n, P4924495913066503043.a n = A313717 n

end A313717

/-! ## A313717.P11235011518457907282

`A315485(n)-A004525(n)`
-/

namespace A313717.P11235011518457907282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315485 n - A004525 n

end

end A313717.P11235011518457907282

namespace A313717

/-- `A315485(n)-A004525(n)` -/
def P11235011518457907282.Spec : Prop :=
  ∀ n, P11235011518457907282.a n = A313717 n

theorem P11235011518457907282.correct : P11235011518457907282.Spec := by
  intro n
  simp only [A313717, Nat.add_sub_cancel, A313717.P11235011518457907282.a, A313717.P15469880172162145756.a, A004525, A004525.P4158271949796742323.a, A311312, A311312.P1118141043632426917.a, A315485, A315485.P8491301675403388189.a, A004396, A004396.P17032557045289780609.a, A314903, A314903.P4262956308037847245.a, A008706, A008706.P1571514609299617601.a, A128834, A128834.P4430347604004376390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313717

/-! ## A313717.P17375290526961533461

`A008458(n)+A008574(n)-A313754(n)`
-/

namespace A313717.P17375290526961533461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313754 n)

end

end A313717.P17375290526961533461

namespace A313717

/-- `A008458(n)+A008574(n)-A313754(n)` -/
def P17375290526961533461.Spec : Prop :=
  ∀ n, P17375290526961533461.a n = A313717 n

end A313717

/-! ## A313717.P365520968051346750

`A315760(n)-n`
-/

namespace A313717.P365520968051346750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - (n : ℤ)

end

end A313717.P365520968051346750

namespace A313717

/-- `A315760(n)-n` -/
def P365520968051346750.Spec : Prop :=
  ∀ n, P365520968051346750.a n = A313717 n

end A313717

/-! ## A313717.P7212468997178652535

`A004396(A315758(n))+n`
-/

namespace A313717.P7212468997178652535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315758 n).toNat + (n : ℤ)

end

end A313717.P7212468997178652535

namespace A313717

/-- `A004396(A315758(n))+n` -/
def P7212468997178652535.Spec : Prop :=
  ∀ n, P7212468997178652535.a n = A313717 n

end A313717

/-! ## A313717.P17067621887191867405

`A004396(n)+A004396(A314108(n)+n)`
-/

namespace A313717.P17067621887191867405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A314108 n + (n : ℤ)).toNat

end

end A313717.P17067621887191867405

namespace A313717

/-- `A004396(n)+A004396(A314108(n)+n)` -/
def P17067621887191867405.Spec : Prop :=
  ∀ n, P17067621887191867405.a n = A313717 n

end A313717

/-! ## A313717.P13375298399592617898

`A004396(n)+A004396(A314201(n)+n)`
-/

namespace A313717.P13375298399592617898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A314201 n + (n : ℤ)).toNat

end

end A313717.P13375298399592617898

namespace A313717

/-- `A004396(n)+A004396(A314201(n)+n)` -/
def P13375298399592617898.Spec : Prop :=
  ∀ n, P13375298399592617898.a n = A313717 n

end A313717

/-! ## A313717.P985069272931742672

`A004396(A314201(n)+2*n)`
-/

namespace A313717.P985069272931742672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314201 n + (2 * n : ℤ)).toNat

end

end A313717.P985069272931742672

namespace A313717

/-- `A004396(A314201(n)+2*n)` -/
def P985069272931742672.Spec : Prop :=
  ∀ n, P985069272931742672.a n = A313717 n

end A313717

/-! ## A313717.P4989499468128602568

`A004396(A314201(n)+n+n)`
-/

namespace A313717.P4989499468128602568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314201 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313717.P4989499468128602568

namespace A313717

/-- `A004396(A314201(n)+n+n)` -/
def P4989499468128602568.Spec : Prop :=
  ∀ n, P4989499468128602568.a n = A313717 n

end A313717

/-!
# A313718: Coordination sequence Gal.6.133.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313718, the canonical program `A313718.P11641125393041820090` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313718 has offset 0).

The definition of A313718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313718.P11773019763717841311

`abs(A008592(n)-A313753(n))`
-/

namespace A313718.P11773019763717841311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313753 n|

end

end A313718.P11773019763717841311

namespace A313718

/-- `abs(A008592(n)-A313753(n))` -/
def P11773019763717841311.Spec : Prop :=
  ∀ n, P11773019763717841311.a n = A313718 n

end A313718

/-! ## A313718.P3079784859391119098

`2*A008706(n)-A313753(n)`
-/

namespace A313718.P3079784859391119098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313753 n

end

end A313718.P3079784859391119098

namespace A313718

/-- `2*A008706(n)-A313753(n)` -/
def P3079784859391119098.Spec : Prop :=
  ∀ n, P3079784859391119098.a n = A313718 n

end A313718

/-! ## A313718.P655863841707748993

`A008458(n)+A008574(n)-A313753(n)`
-/

namespace A313718.P655863841707748993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313753 n)

end

end A313718.P655863841707748993

namespace A313718

/-- `A008458(n)+A008574(n)-A313753(n)` -/
def P655863841707748993.Spec : Prop :=
  ∀ n, P655863841707748993.a n = A313718 n

end A313718

/-! ## A313718.P15499057861651954296

`A313753(n)-A005843(A313753(n)-A008706(n))`
-/

namespace A313718.P15499057861651954296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313753 n - A005843 (A313753 n - A008706 n).toNat

end

end A313718.P15499057861651954296

namespace A313718

/-- `A313753(n)-A005843(A313753(n)-A008706(n))` -/
def P15499057861651954296.Spec : Prop :=
  ∀ n, P15499057861651954296.a n = A313718 n

end A313718

/-! ## A313718.P12929986473630522899

`(A315754(n)+A008574(n))/2`
-/

namespace A313718.P12929986473630522899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315754 n + A008574 n : ℚ) / 2

end

end A313718.P12929986473630522899

namespace A313718

/-- `(A315754(n)+A008574(n))/2` -/
def P12929986473630522899.Spec : Prop :=
  ∀ n, P12929986473630522899.a n = (A313718 n : ℚ)

end A313718

/-! ## A313718.P11641125393041820090

`A008574(n)+A001281(A315754(n)-A008574(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A313718

/-- `A008574(n)+A001281(A315754(n)-A008574(n))` -/
def P11641125393041820090.Spec : Prop :=
  ∀ n, P11641125393041820090.a n = A313718 n

theorem P11641125393041820090.correct : P11641125393041820090.Spec := by
  intro n
  simp only [A313718]

end A313718

/-! ## A313718.P17695162663034927298

`A008458(n)+n-A004526(A311385(n))`
-/

namespace A313718.P17695162663034927298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A311385 n).toNat)

end

end A313718.P17695162663034927298

namespace A313718

/-- `A008458(n)+n-A004526(A311385(n))` -/
def P17695162663034927298.Spec : Prop :=
  ∀ n, P17695162663034927298.a n = A313718 n

end A313718

/-! ## A313718.P12225968291863990720

`A005843(A008706(n))-A313753(n)`
-/

namespace A313718.P12225968291863990720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313753 n

end

end A313718.P12225968291863990720

namespace A313718

/-- `A005843(A008706(n))-A313753(n)` -/
def P12225968291863990720.Spec : Prop :=
  ∀ n, P12225968291863990720.a n = A313718 n

end A313718

/-! ## A313718.P18072912505933485452

`A005843(A008458(n)-n)-A313753(n)`
-/

namespace A313718.P18072912505933485452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313753 n

end

end A313718.P18072912505933485452

namespace A313718

/-- `A005843(A008458(n)-n)-A313753(n)` -/
def P18072912505933485452.Spec : Prop :=
  ∀ n, P18072912505933485452.a n = A313718 n

end A313718

/-! ## A313718.P10688276102532743333

`A004526(A315754(n))+A004277(n)`
-/

namespace A313718.P10688276102532743333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315754 n).toNat + A004277 n

end

end A313718.P10688276102532743333

namespace A313718

/-- `A004526(A315754(n))+A004277(n)` -/
def P10688276102532743333.Spec : Prop :=
  ∀ n, P10688276102532743333.a n = A313718 n

end A313718

/-! ## A313718.P13832273445032530958

`A005843(n)+A004525(A315754(n))`
-/

namespace A313718.P13832273445032530958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315754 n).toNat

end

end A313718.P13832273445032530958

namespace A313718

/-- `A005843(n)+A004525(A315754(n))` -/
def P13832273445032530958.Spec : Prop :=
  ∀ n, P13832273445032530958.a n = A313718 n

end A313718

/-! ## A313718.P14837353273713780107

`A004396(A314202(n)+2*n)`
-/

namespace A313718.P14837353273713780107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314202 n + (2 * n : ℤ)).toNat

end

end A313718.P14837353273713780107

namespace A313718

/-- `A004396(A314202(n)+2*n)` -/
def P14837353273713780107.Spec : Prop :=
  ∀ n, P14837353273713780107.a n = A313718 n

end A313718

/-! ## A313718.P17747166390310181703

`A004396(A314202(n)+n+n)`
-/

namespace A313718.P17747166390310181703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314202 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313718.P17747166390310181703

namespace A313718

/-- `A004396(A314202(n)+n+n)` -/
def P17747166390310181703.Spec : Prop :=
  ∀ n, P17747166390310181703.a n = A313718 n

end A313718

/-! ## A313718.P258405223701869885

`A082928(A315754(n)+4*n)`
-/

namespace A313718.P258405223701869885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (A315754 n + (4 * n : ℤ)).toNat

end

end A313718.P258405223701869885

namespace A313718

/-- `A082928(A315754(n)+4*n)` -/
def P258405223701869885.Spec : Prop :=
  ∀ n, P258405223701869885.a n = A313718 n

end A313718

/-! ## A313718.P11603820367374822880

`A001281(A315754(n)+A008574(n))`
-/

namespace A313718.P11603820367374822880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315754 n + A008574 n).toNat

end

end A313718.P11603820367374822880

namespace A313718

/-- `A001281(A315754(n)+A008574(n))` -/
def P11603820367374822880.Spec : Prop :=
  ∀ n, P11603820367374822880.a n = A313718 n

end A313718

/-!
# A313719: Coordination sequence Gal.5.116.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313719, the canonical program `A313719.P4530197353488080189` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313719 has offset 0).

The definition of A313719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313719.P5428920543730763660

`record[(2-(-1)^n)*(n+1)]-comp[xor(2, 6*n)+3]`
-/

namespace A313719.P5428920543730763660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (-1) ^ n) * (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A313719.P5428920543730763660

namespace A313719

/-- `record[(2-(-1)^n)*(n+1)]-comp[xor(2, 6*n)+3]` -/
def P5428920543730763660.Spec : Prop :=
  ∀ n, P5428920543730763660.a n = A313719 n

end A313719

/-! ## A313719.P4530197353488080189

`A312195(n)+A253262(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313719

/-- `A312195(n)+A253262(n)` -/
def P4530197353488080189.Spec : Prop :=
  ∀ n, P4530197353488080189.a n = A313719 n

theorem P4530197353488080189.correct : P4530197353488080189.Spec := by
  intro n
  simp only [A313719]

end A313719

/-! ## A313719.P7214916417677286984

`A008458(n)-A151988(n)`
-/

namespace A313719.P7214916417677286984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A151988 n

end

end A313719.P7214916417677286984

namespace A313719

/-- `A008458(n)-A151988(n)` -/
def P7214916417677286984.Spec : Prop :=
  ∀ n, P7214916417677286984.a n = A313719 n

end A313719

/-! ## A313719.P8109509976609674279

`record[A165998(n)]-A151988(n)`
-/

namespace A313719.P8109509976609674279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A151988 n

end

end A313719.P8109509976609674279

namespace A313719

/-- `record[A165998(n)]-A151988(n)` -/
def P8109509976609674279.Spec : Prop :=
  ∀ n, P8109509976609674279.a n = A313719 n

end A313719

/-! ## A313719.P6392099889000686334

`A008486(2*n)-A151988(n)`
-/

namespace A313719.P6392099889000686334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A151988 n

end

end A313719.P6392099889000686334

namespace A313719

/-- `A008486(2*n)-A151988(n)` -/
def P6392099889000686334.Spec : Prop :=
  ∀ n, P6392099889000686334.a n = A313719 n

end A313719

/-! ## A313719.P2917887220191799125

`A008706(n)+n-A151988(n)`
-/

namespace A313719.P2917887220191799125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((n : ℤ) - A151988 n)

end

end A313719.P2917887220191799125

namespace A313719

/-- `A008706(n)+n-A151988(n)` -/
def P2917887220191799125.Spec : Prop :=
  ∀ n, P2917887220191799125.a n = A313719 n

end A313719

/-! ## A313719.P9400877724851058196

`abs(A008592(n)-(A311289(n)+n))`
-/

namespace A313719.P9400877724851058196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311289 n + (n : ℤ))|

end

end A313719.P9400877724851058196

namespace A313719

/-- `abs(A008592(n)-(A311289(n)+n))` -/
def P9400877724851058196.Spec : Prop :=
  ∀ n, P9400877724851058196.a n = A313719 n

end A313719

/-! ## A313719.P5833486171660077743

`A047263(n+1)+A313537(n)-n`
-/

namespace A313719.P5833486171660077743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A313537 n - (n : ℤ))

end

end A313719.P5833486171660077743

namespace A313719

/-- `A047263(n+1)+A313537(n)-n` -/
def P5833486171660077743.Spec : Prop :=
  ∀ n, P5833486171660077743.a n = A313719 n

end A313719

/-! ## A313719.P977275468331712480

`A047299(n+1)+A314827(n)-n`
-/

namespace A313719.P977275468331712480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A314827 n - (n : ℤ))

end

end A313719.P977275468331712480

namespace A313719

/-- `A047299(n+1)+A314827(n)-n` -/
def P977275468331712480.Spec : Prop :=
  ∀ n, P977275468331712480.a n = A313719 n

end A313719

/-! ## A313719.P15875303802763732655

`A047486(n+1)+A314670(n)-n`
-/

namespace A313719.P15875303802763732655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A314670 n - (n : ℤ))

end

end A313719.P15875303802763732655

namespace A313719

/-- `A047486(n+1)+A314670(n)-n` -/
def P15875303802763732655.Spec : Prop :=
  ∀ n, P15875303802763732655.a n = A313719 n

end A313719

/-! ## A313719.P3785053282781599609

`A022144(n)-(A151988(n)+A005843(n))`
-/

namespace A313719.P3785053282781599609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (A151988 n + A005843 n)

end

end A313719.P3785053282781599609

namespace A313719

/-- `A022144(n)-(A151988(n)+A005843(n))` -/
def P3785053282781599609.Spec : Prop :=
  ∀ n, P3785053282781599609.a n = A313719 n

end A313719

/-! ## A313719.P16212344394066730851

`A017089(n)-(A151988(n)+A103517(n))`
-/

namespace A313719.P16212344394066730851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n - (A151988 n + A103517 n)

end

end A313719.P16212344394066730851

namespace A313719

/-- `A017089(n)-(A151988(n)+A103517(n))` -/
def P16212344394066730851.Spec : Prop :=
  ∀ n, P16212344394066730851.a n = A313719 n

end A313719

/-! ## A313719.P14809457032863156358

`A008458(n)+A008486(n)-A311289(n)`
-/

namespace A313719.P14809457032863156358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311289 n)

end

end A313719.P14809457032863156358

namespace A313719

/-- `A008458(n)+A008486(n)-A311289(n)` -/
def P14809457032863156358.Spec : Prop :=
  ∀ n, P14809457032863156358.a n = A313719 n

end A313719

/-! ## A313719.P1187737181759589866

`A314886(n)+n-A004396(A151988(n))`
-/

namespace A313719.P1187737181759589866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314886 n + ((n : ℤ) - A004396 (A151988 n).toNat)

end

end A313719.P1187737181759589866

namespace A313719

/-- `A314886(n)+n-A004396(A151988(n))` -/
def P1187737181759589866.Spec : Prop :=
  ∀ n, P1187737181759589866.a n = A313719 n

end A313719

/-! ## A313719.P7765644488856532364

`A330025(n-A330025(n))+A314898(n)`
-/

namespace A313719.P7765644488856532364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A314898 n

end

end A313719.P7765644488856532364

namespace A313719

/-- `A330025(n-A330025(n))+A314898(n)` -/
def P7765644488856532364.Spec : Prop :=
  ∀ n, P7765644488856532364.a n = A313719 n

end A313719

/-! ## A313719.P3705027292483457251

`A315445(n)-A330025(A330025(n)+n)`
-/

namespace A313719.P3705027292483457251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A313719.P3705027292483457251

namespace A313719

/-- `A315445(n)-A330025(A330025(n)+n)` -/
def P3705027292483457251.Spec : Prop :=
  ∀ n, P3705027292483457251.a n = A313719 n

end A313719

/-! ## A313719.P11843608982735369227

`A004275(A016813(n)-n)-A151988(n)`
-/

namespace A313719.P11843608982735369227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A016813 n - (n : ℤ)).toNat - A151988 n

end

end A313719.P11843608982735369227

namespace A313719

/-- `A004275(A016813(n)-n)-A151988(n)` -/
def P11843608982735369227.Spec : Prop :=
  ∀ n, P11843608982735369227.a n = A313719 n

end A313719

/-! ## A313719.P15684940305522234637

`A004273(n)+A004273(A005408(n))-A151988(n)`
-/

namespace A313719.P15684940305522234637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A004273 (A005408 n).toNat - A151988 n)

end

end A313719.P15684940305522234637

namespace A313719

/-- `A004273(n)+A004273(A005408(n))-A151988(n)` -/
def P15684940305522234637.Spec : Prop :=
  ∀ n, P15684940305522234637.a n = A313719 n

end A313719

/-! ## A313719.P14115597895528605067

`A330025(n)+A313116(n)`
-/

namespace A313719.P14115597895528605067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313116 n

end

end A313719.P14115597895528605067

namespace A313719

/-- `A330025(n)+A313116(n)` -/
def P14115597895528605067.Spec : Prop :=
  ∀ n, P14115597895528605067.a n = A313719 n

end A313719

/-! ## A313719.P13602743396316250578

`A313525(n)+A253262(n-A253262(n))`
-/

namespace A313719.P13602743396316250578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313525 n + A253262 ((n : ℤ) - A253262 n).toNat

end

end A313719.P13602743396316250578

namespace A313719

/-- `A313525(n)+A253262(n-A253262(n))` -/
def P13602743396316250578.Spec : Prop :=
  ∀ n, P13602743396316250578.a n = A313719 n

end A313719

/-!
# A313720: Coordination sequence Gal.6.153.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313720, the canonical program `A313720.P17061328062091106116` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313720 has offset 0).

The definition of A313720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313720.P17247371249319155726

`abs(9*n-A311257(n))`
-/

namespace A313720.P17247371249319155726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A311257 n|

end

end A313720.P17247371249319155726

namespace A313720

/-- `abs(9*n-A311257(n))` -/
def P17247371249319155726.Spec : Prop :=
  ∀ n, P17247371249319155726.a n = A313720 n

end A313720

/-! ## A313720.P17061328062091106116

`A312890(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313720

/-- `A312890(n)+A004396(n)` -/
def P17061328062091106116.Spec : Prop :=
  ∀ n, P17061328062091106116.a n = A313720 n

theorem P17061328062091106116.correct : P17061328062091106116.Spec := by
  intro n
  simp only [A313720]

end A313720

/-! ## A313720.P14765693210490760761

`A314706(n)+n-A004525(n)`
-/

namespace A313720.P14765693210490760761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n + ((n : ℤ) - A004525 n)

end

end A313720.P14765693210490760761

namespace A313720

/-- `A314706(n)+n-A004525(n)` -/
def P14765693210490760761.Spec : Prop :=
  ∀ n, P14765693210490760761.a n = A313720 n

end A313720

/-! ## A313720.P14834526433591741833

`A312890(n)+A002264(2*n+1)`
-/

namespace A313720.P14834526433591741833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + A002264 (2 * n + 1)

end

end A313720.P14834526433591741833

namespace A313720

/-- `A312890(n)+A002264(2*n+1)` -/
def P14834526433591741833.Spec : Prop :=
  ∀ n, P14834526433591741833.a n = A313720 n

theorem P14834526433591741833.correct : P14834526433591741833.Spec := by
  intro n
  simp only [A313720, Nat.add_sub_cancel, A313720.P14834526433591741833.a, A313720.P17061328062091106116.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A312890, A312890.P5869710039852604831.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313720

/-! ## A313720.P12711505363813569601

`A047222(n+1)+A312890(n)-n`
-/

namespace A313720.P12711505363813569601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1) + (A312890 n - (n : ℤ))

end

end A313720.P12711505363813569601

namespace A313720

/-- `A047222(n+1)+A312890(n)-n` -/
def P12711505363813569601.Spec : Prop :=
  ∀ n, P12711505363813569601.a n = A313720 n

end A313720

/-! ## A313720.P2507291199835464982

`A047424(n+1)+A313088(n)-n`
-/

namespace A313720.P2507291199835464982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A313088 n - (n : ℤ))

end

end A313720.P2507291199835464982

namespace A313720

/-- `A047424(n+1)+A313088(n)-n` -/
def P2507291199835464982.Spec : Prop :=
  ∀ n, P2507291199835464982.a n = A313720 n

end A313720

/-! ## A313720.P6327097096106907063

`A047513(n+1)+A313485(n)-n`
-/

namespace A313720.P6327097096106907063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A313485 n - (n : ℤ))

end

end A313720.P6327097096106907063

namespace A313720

/-- `A047513(n+1)+A313485(n)-n` -/
def P6327097096106907063.Spec : Prop :=
  ∀ n, P6327097096106907063.a n = A313720 n

end A313720

/-! ## A313720.P5238585858704203495

`A047273(n+1)+A314706(n)-n`
-/

namespace A313720.P5238585858704203495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A314706 n - (n : ℤ))

end

end A313720.P5238585858704203495

namespace A313720

/-- `A047273(n+1)+A314706(n)-n` -/
def P5238585858704203495.Spec : Prop :=
  ∀ n, P5238585858704203495.a n = A313720 n

end A313720

/-! ## A313720.P11454256635792908189

`A301298(n)+A004525(n-A004396(n))`
-/

namespace A313720.P11454256635792908189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313720.P11454256635792908189

namespace A313720

/-- `A301298(n)+A004525(n-A004396(n))` -/
def P11454256635792908189.Spec : Prop :=
  ∀ n, P11454256635792908189.a n = A313720 n

end A313720

/-! ## A313720.P10610620825824116308

`A008458(n)+A008486(n)-A311257(n)`
-/

namespace A313720.P10610620825824116308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311257 n)

end

end A313720.P10610620825824116308

namespace A313720

/-- `A008458(n)+A008486(n)-A311257(n)` -/
def P10610620825824116308.Spec : Prop :=
  ∀ n, P10610620825824116308.a n = A313720 n

end A313720

/-! ## A313720.P11064068620725686049

`gcd(9*n-A311257(n), A008683(A000118(n)))`
-/

namespace A313720.P11064068620725686049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((9 * n : ℤ) - A311257 n) (A008683 (A000118 n).toNat)

end

end A313720.P11064068620725686049

namespace A313720

/-- `gcd(9*n-A311257(n), A008683(A000118(n)))` -/
def P11064068620725686049.Spec : Prop :=
  ∀ n, (P11064068620725686049.a n : ℤ) = A313720 n

end A313720

/-! ## A313720.P9287185900137008484

`A004396(n)+A313485(n)-A004525(A004396(n))`
-/

namespace A313720.P9287185900137008484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313485 n - A004525 (A004396 n).toNat)

end

end A313720.P9287185900137008484

namespace A313720

/-- `A004396(n)+A313485(n)-A004525(A004396(n))` -/
def P9287185900137008484.Spec : Prop :=
  ∀ n, P9287185900137008484.a n = A313720 n

end A313720

/-! ## A313720.P3713158330038670852

`A004396(A004525(n))+A313769(n)-A004525(n)`
-/

namespace A313720.P3713158330038670852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313769 n - A004525 n)

end

end A313720.P3713158330038670852

namespace A313720

/-- `A004396(A004525(n))+A313769(n)-A004525(n)` -/
def P3713158330038670852.Spec : Prop :=
  ∀ n, P3713158330038670852.a n = A313720 n

end A313720

/-! ## A313720.P13239343055348487907

`A004525(A004396(n))+A313778(n)-A004525(n)`
-/

namespace A313720.P13239343055348487907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313778 n - A004525 n)

end

end A313720.P13239343055348487907

namespace A313720

/-- `A004525(A004396(n))+A313778(n)-A004525(n)` -/
def P13239343055348487907.Spec : Prop :=
  ∀ n, P13239343055348487907.a n = A313720 n

end A313720

/-! ## A313720.P12905066406418136559

`A314107(n)-A004396(n-A004525(n))`
-/

namespace A313720.P12905066406418136559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314107 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313720.P12905066406418136559

namespace A313720

/-- `A314107(n)-A004396(n-A004525(n))` -/
def P12905066406418136559.Spec : Prop :=
  ∀ n, P12905066406418136559.a n = A313720 n

end A313720

/-! ## A313720.P10011124968349113899

`A008458(n)+A008574(n)-A313747(n)`
-/

namespace A313720.P10011124968349113899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313747 n)

end

end A313720.P10011124968349113899

namespace A313720

/-- `A008458(n)+A008574(n)-A313747(n)` -/
def P10011124968349113899.Spec : Prop :=
  ∀ n, P10011124968349113899.a n = A313720 n

end A313720

/-! ## A313720.P9050088720219666332

`A315488(n)-A004525(n)`
-/

namespace A313720.P9050088720219666332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n - A004525 n

end

end A313720.P9050088720219666332

namespace A313720

/-- `A315488(n)-A004525(n)` -/
def P9050088720219666332.Spec : Prop :=
  ∀ n, P9050088720219666332.a n = A313720 n

theorem P9050088720219666332.correct : P9050088720219666332.Spec := by
  intro n
  simp only [A313720, Nat.add_sub_cancel, A313720.P9050088720219666332.a, A313720.P17061328062091106116.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312890, A312890.P5869710039852604831.a, A315488, A315488.P5611134213742253392.a, A008574, A008574.P1300280032690682112.a, A313556, A313556.P12127503874440300930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313720

/-! ## A313720.P11194208242158191117

`A315534(n)-A004396(n)`
-/

namespace A313720.P11194208242158191117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315534 n - A004396 n

end

end A313720.P11194208242158191117

namespace A313720

/-- `A315534(n)-A004396(n)` -/
def P11194208242158191117.Spec : Prop :=
  ∀ n, P11194208242158191117.a n = A313720 n

theorem P11194208242158191117.correct : P11194208242158191117.Spec := by
  intro n
  simp only [A313720, Nat.add_sub_cancel, A313720.P11194208242158191117.a, A313720.P17061328062091106116.a, A004396, A004396.P17032557045289780609.a, A312890, A312890.P5869710039852604831.a, A315534, A315534.P15836177857492630035.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313720

/-! ## A313720.P11670754579953489129

`A315534(n)-A002264(2*n+1)`
-/

namespace A313720.P11670754579953489129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315534 n - A002264 (2 * n + 1)

end

end A313720.P11670754579953489129

namespace A313720

/-- `A315534(n)-A002264(2*n+1)` -/
def P11670754579953489129.Spec : Prop :=
  ∀ n, P11670754579953489129.a n = A313720 n

theorem P11670754579953489129.correct : P11670754579953489129.Spec := by
  intro n
  simp only [A313720, Nat.add_sub_cancel, A313720.P11670754579953489129.a, A313720.P17061328062091106116.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A312890, A312890.P5869710039852604831.a, A315534, A315534.P15836177857492630035.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313720

/-! ## A313720.P12682553323875900132

`A315763(n)-n`
-/

namespace A313720.P12682553323875900132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - (n : ℤ)

end

end A313720.P12682553323875900132

namespace A313720

/-- `A315763(n)-n` -/
def P12682553323875900132.Spec : Prop :=
  ∀ n, P12682553323875900132.a n = A313720 n

theorem P12682553323875900132.correct : P12682553323875900132.Spec := by
  intro n
  simp only [A313720, Nat.add_sub_cancel, A313720.P12682553323875900132.a, A313720.P17061328062091106116.a, A004396, A004396.P17032557045289780609.a, A312890, A312890.P5869710039852604831.a, A315763, A315763.P15886996602990195972.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313720

/-!
# A313721: Coordination sequence Gal.5.129.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313721, the canonical program `A313721.P4481706154216896496` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313721 has offset 0).

The definition of A313721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313721.P16223849054371914531

`ogf((1+4x+5x^2+5x^3+5x^4+4x^5+5x^6+5x^7+5x^8+4x^9+x^10)/(1-x-x^9+x^10))`
-/

namespace A313721.P16223849054371914531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 5, 5, 5, 4, 5, 5, 5, 4, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A313721.P16223849054371914531

namespace A313721

/-- `ogf((1+4x+5x^2+5x^3+5x^4+4x^5+5x^6+5x^7+5x^8+4x^9+x^10)/(1-x-x^9+x^10))` -/
def P16223849054371914531.Spec : Prop :=
  ∀ n, P16223849054371914531.a n = A313721 n

end A313721

/-! ## A313721.P4481706154216896496

`A312932(2*n)-4*n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313721

/-- `A312932(2*n)-4*n` -/
def P4481706154216896496.Spec : Prop :=
  ∀ n, P4481706154216896496.a n = A313721 n

theorem P4481706154216896496.correct : P4481706154216896496.Spec := by
  intro n
  simp only [A313721]

end A313721

/-! ## A313721.P545539563499008105

`A265187(A008574(n)+1)`
-/

namespace A313721.P545539563499008105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A008574 n + 1).toNat

end

end A313721.P545539563499008105

namespace A313721

/-- `A265187(A008574(n)+1)` -/
def P545539563499008105.Spec : Prop :=
  ∀ n, P545539563499008105.a n = A313721 n

end A313721

/-! ## A313721.P11336570409129277727

`A312893(n)+A004396(n)`
-/

namespace A313721.P11336570409129277727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A004396 n

end

end A313721.P11336570409129277727

namespace A313721

/-- `A312893(n)+A004396(n)` -/
def P11336570409129277727.Spec : Prop :=
  ∀ n, P11336570409129277727.a n = A313721 n

end A313721

/-! ## A313721.P17616052478183748785

`A313538(n)+Δ[A011862(n)]`
-/

namespace A313721.P17616052478183748785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n + (f1 (n + 1) - f1 n)

end

end A313721.P17616052478183748785

namespace A313721

/-- `A313538(n)+Δ[A011862(n)]` -/
def P17616052478183748785.Spec : Prop :=
  ∀ n, P17616052478183748785.a n = A313721 n

end A313721

/-! ## A313721.P7213323838923905777

`A265187(A004277(2*n)+1)`
-/

namespace A313721.P7213323838923905777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A004277 (2 * n) + 1).toNat

end

end A313721.P7213323838923905777

namespace A313721

/-- `A265187(A004277(2*n)+1)` -/
def P7213323838923905777.Spec : Prop :=
  ∀ n, P7213323838923905777.a n = A313721 n

end A313721

/-! ## A313721.P15632425780832450758

`A265187(A004273(2*n)+2)`
-/

namespace A313721.P15632425780832450758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A004273 (2 * n) + 2).toNat

end

end A313721.P15632425780832450758

namespace A313721

/-- `A265187(A004273(2*n)+2)` -/
def P15632425780832450758.Spec : Prop :=
  ∀ n, P15632425780832450758.a n = A313721 n

end A313721

/-! ## A313721.P15697085916896724509

`A265187(A008486(n)+1+n)`
-/

namespace A313721.P15697085916896724509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A008486 n + 1 + (n : ℤ)).toNat

end

end A313721.P15697085916896724509

namespace A313721

/-- `A265187(A008486(n)+1+n)` -/
def P15697085916896724509.Spec : Prop :=
  ∀ n, P15697085916896724509.a n = A313721 n

end A313721

/-! ## A313721.P11381582177665292777

`A265187(A008706(n)+1-n)`
-/

namespace A313721.P11381582177665292777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A008706 n + (1 - (n : ℤ))).toNat

end

end A313721.P11381582177665292777

namespace A313721

/-- `A265187(A008706(n)+1-n)` -/
def P11381582177665292777.Spec : Prop :=
  ∀ n, P11381582177665292777.a n = A313721 n

end A313721

/-! ## A313721.P9675132661609352826

`A265187(1-(n-A008706(n)))`
-/

namespace A313721.P9675132661609352826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (1 - ((n : ℤ) - A008706 n)).toNat

end

end A313721.P9675132661609352826

namespace A313721

/-- `A265187(1-(n-A008706(n)))` -/
def P9675132661609352826.Spec : Prop :=
  ∀ n, P9675132661609352826.a n = A313721 n

end A313721

/-! ## A313721.P4225070278479994079

`A008458(n)-comp[A017305(n)+2]`
-/

namespace A313721.P4225070278479994079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313721.P4225070278479994079

namespace A313721

/-- `A008458(n)-comp[A017305(n)+2]` -/
def P4225070278479994079.Spec : Prop :=
  ∀ n, P4225070278479994079.a n = A313721 n

end A313721

/-! ## A313721.P4935687814633028003

`round(A008706(n)-A008576(n)/24)`
-/

namespace A313721.P4935687814633028003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008706 n : ℚ) - (A008576 n : ℚ) / 24)

end

end A313721.P4935687814633028003

namespace A313721

/-- `round(A008706(n)-A008576(n)/24)` -/
def P4935687814633028003.Spec : Prop :=
  ∀ n, P4935687814633028003.a n = A313721 n

end A313721

/-! ## A313721.P2458239346627486856

`A265187(A004275(2*n+1)+1)`
-/

namespace A313721.P2458239346627486856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A004275 (2 * n + 1) + 1).toNat

end

end A313721.P2458239346627486856

namespace A313721

/-- `A265187(A004275(2*n+1)+1)` -/
def P2458239346627486856.Spec : Prop :=
  ∀ n, P2458239346627486856.a n = A313721 n

end A313721

/-! ## A313721.P18096238897738644566

`A312893(n)+A002264(2*n+1)`
-/

namespace A313721.P18096238897738644566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A002264 (2 * n + 1)

end

end A313721.P18096238897738644566

namespace A313721

/-- `A312893(n)+A002264(2*n+1)` -/
def P18096238897738644566.Spec : Prop :=
  ∀ n, P18096238897738644566.a n = A313721 n

end A313721

/-! ## A313721.P8166513288055500180

`A265187(A294732(2*(n+1))+n+1)`
-/

namespace A313721.P8166513288055500180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A294732 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A313721.P8166513288055500180

namespace A313721

/-- `A265187(A294732(2*(n+1))+n+1)` -/
def P8166513288055500180.Spec : Prop :=
  ∀ n, P8166513288055500180.a n = A313721 n

end A313721

/-! ## A313721.P9622536787834027565

`A004277(3*n)-comp[A003961(3*(n+1))]`
-/

namespace A313721.P9622536787834027565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313721.P9622536787834027565

namespace A313721

/-- `A004277(3*n)-comp[A003961(3*(n+1))]` -/
def P9622536787834027565.Spec : Prop :=
  ∀ n, P9622536787834027565.a n = A313721 n

end A313721

/-! ## A313721.P17373285700368750548

`A313026(n)+A004396(A004396(n))`
-/

namespace A313721.P17373285700368750548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + A004396 (A004396 n).toNat

end

end A313721.P17373285700368750548

namespace A313721

/-- `A313026(n)+A004396(A004396(n))` -/
def P17373285700368750548.Spec : Prop :=
  ∀ n, P17373285700368750548.a n = A313721 n

end A313721

/-! ## A313721.P13843533260458980029

`A301298(n)+A004396(n-A004396(n))`
-/

namespace A313721.P13843533260458980029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313721.P13843533260458980029

namespace A313721

/-- `A301298(n)+A004396(n-A004396(n))` -/
def P13843533260458980029.Spec : Prop :=
  ∀ n, P13843533260458980029.a n = A313721 n

end A313721

/-! ## A313721.P12523966044128253353

`A042965(n+1)+A042965(A008576(n)+1)`
-/

namespace A313721.P12523966044128253353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + A042965 (A008576 n + 1).toNat

end

end A313721.P12523966044128253353

namespace A313721

/-- `A042965(n+1)+A042965(A008576(n)+1)` -/
def P12523966044128253353.Spec : Prop :=
  ∀ n, P12523966044128253353.a n = A313721 n

end A313721

/-! ## A313721.P15469021382648867866

`A004396(A004396(n))+A313860(n)-A004396(n)`
-/

namespace A313721.P15469021382648867866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313860 n - A004396 n)

end

end A313721.P15469021382648867866

namespace A313721

/-- `A004396(A004396(n))+A313860(n)-A004396(n)` -/
def P15469021382648867866.Spec : Prop :=
  ∀ n, P15469021382648867866.a n = A313721 n

end A313721

/-!
# A313722: Coordination sequence Gal.6.248.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313722, the canonical program `A313722.P17589787555355658090` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313722 has offset 0).

The definition of A313722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313722.P17589787555355658090

`A008706(n)-Δ[A011875(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313722

/-- `A008706(n)-Δ[A011875(n)]` -/
def P17589787555355658090.Spec : Prop :=
  ∀ n, P17589787555355658090.a n = A313722 n

theorem P17589787555355658090.correct : P17589787555355658090.Spec := by
  intro n
  simp only [A313722]

end A313722

/-! ## A313722.P1499486161820342192

`(A315633(n)+A312668(n))/2`
-/

namespace A313722.P1499486161820342192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315633 n + A312668 n : ℚ) / 2

end

end A313722.P1499486161820342192

namespace A313722

/-- `(A315633(n)+A312668(n))/2` -/
def P1499486161820342192.Spec : Prop :=
  ∀ n, P1499486161820342192.a n = (A313722 n : ℚ)

end A313722

/-! ## A313722.P16317403892958794906

`A313831(n)-Δ[A011864(n)]`
-/

namespace A313722.P16317403892958794906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - (f1 (n + 1) - f1 n)

end

end A313722.P16317403892958794906

namespace A313722

/-- `A313831(n)-Δ[A011864(n)]` -/
def P16317403892958794906.Spec : Prop :=
  ∀ n, P16317403892958794906.a n = A313722 n

theorem P16317403892958794906.correct : P16317403892958794906.Spec := by
  intro n
  simp only [A313722, Nat.add_sub_cancel, A313722.P16317403892958794906.f1, A313722.P16317403892958794906.a, A313722.P17589787555355658090.f1, A313722.P17589787555355658090.a, A008706, A008706.P1571514609299617601.a, A011864, A011864.P3547417513882699266.a, A011875, A011875.P9145820491585483445.a, A313831, A313831.P17675149220499265565.f1, A313831.P17675149220499265565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313722

/-! ## A313722.P14058999032939131253

`abs(A008592(n)-A313745(n))`
-/

namespace A313722.P14058999032939131253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313745 n|

end

end A313722.P14058999032939131253

namespace A313722

/-- `abs(A008592(n)-A313745(n))` -/
def P14058999032939131253.Spec : Prop :=
  ∀ n, P14058999032939131253.a n = A313722 n

end A313722

/-! ## A313722.P9091949801954526640

`2*A008706(n)-A313745(n)`
-/

namespace A313722.P9091949801954526640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313745 n

end

end A313722.P9091949801954526640

namespace A313722

/-- `2*A008706(n)-A313745(n)` -/
def P9091949801954526640.Spec : Prop :=
  ∀ n, P9091949801954526640.a n = A313722 n

end A313722

/-! ## A313722.P16811138305173950079

`A008458(n)+A008574(n)-A313745(n)`
-/

namespace A313722.P16811138305173950079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313745 n)

end

end A313722.P16811138305173950079

namespace A313722

/-- `A008458(n)+A008574(n)-A313745(n)` -/
def P16811138305173950079.Spec : Prop :=
  ∀ n, P16811138305173950079.a n = A313722 n

end A313722

/-! ## A313722.P10269434939281791253

`A313745(n)-A005843(A313745(n)-A008706(n))`
-/

namespace A313722.P10269434939281791253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313745 n - A005843 (A313745 n - A008706 n).toNat

end

end A313722.P10269434939281791253

namespace A313722

/-- `A313745(n)-A005843(A313745(n)-A008706(n))` -/
def P10269434939281791253.Spec : Prop :=
  ∀ n, P10269434939281791253.a n = A313722 n

end A313722

/-! ## A313722.P4366850424988812484

`A180004(A313543(n))`
-/

namespace A313722.P4366850424988812484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A313543 n).toNat

end

end A313722.P4366850424988812484

namespace A313722

/-- `A180004(A313543(n))` -/
def P4366850424988812484.Spec : Prop :=
  ∀ n, P4366850424988812484.a n = A313722 n

end A313722

/-! ## A313722.P16136621539261633349

`A005843(A008706(n))-A313745(n)`
-/

namespace A313722.P16136621539261633349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313745 n

end

end A313722.P16136621539261633349

namespace A313722

/-- `A005843(A008706(n))-A313745(n)` -/
def P16136621539261633349.Spec : Prop :=
  ∀ n, P16136621539261633349.a n = A313722 n

end A313722

/-! ## A313722.P18104756487755977568

`A315491(2*n)+n-7*n`
-/

namespace A313722.P18104756487755977568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315491 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A313722.P18104756487755977568

namespace A313722

/-- `A315491(2*n)+n-7*n` -/
def P18104756487755977568.Spec : Prop :=
  ∀ n, P18104756487755977568.a n = A313722 n

end A313722

/-! ## A313722.P15266578008133811765

`A004525(A315208(2*n))`
-/

namespace A313722.P15266578008133811765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315208 (2 * n)).toNat

end

end A313722.P15266578008133811765

namespace A313722

/-- `A004525(A315208(2*n))` -/
def P15266578008133811765.Spec : Prop :=
  ∀ n, P15266578008133811765.a n = A313722 n

end A313722

/-! ## A313722.P15100718225659221075

`A004525(A315210(2*n))`
-/

namespace A313722.P15100718225659221075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315210 (2 * n)).toNat

end

end A313722.P15100718225659221075

namespace A313722

/-- `A004525(A315210(2*n))` -/
def P15100718225659221075.Spec : Prop :=
  ∀ n, P15100718225659221075.a n = A313722 n

end A313722

/-! ## A313722.P16671235560308526699

`A004526(A315208(2*n)+1)`
-/

namespace A313722.P16671235560308526699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315208 (2 * n) + 1).toNat

end

end A313722.P16671235560308526699

namespace A313722

/-- `A004526(A315208(2*n)+1)` -/
def P16671235560308526699.Spec : Prop :=
  ∀ n, P16671235560308526699.a n = A313722 n

end A313722

/-! ## A313722.P7529155805308800886

`A004526(A315633(n)+A312668(n))`
-/

namespace A313722.P7529155805308800886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315633 n + A312668 n).toNat

end

end A313722.P7529155805308800886

namespace A313722

/-- `A004526(A315633(n)+A312668(n))` -/
def P7529155805308800886.Spec : Prop :=
  ∀ n, P7529155805308800886.a n = A313722 n

end A313722

/-!
# A313723: Coordination sequence Gal.6.462.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313723, there is no canonical definition to state claims against.
-/

/-! ## A313723.P6281143517481816820

`A313726(n)-A283316(A352006(n))`
-/

namespace A313723.P6281143517481816820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n - A283316 (A352006 n).toNat

end

end A313723.P6281143517481816820

/-! ## A313723.P5927082656685012150

`A008706(n)-A079978(A049962(n+1))`
-/

namespace A313723.P5927082656685012150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A079978 (A049962 (n + 1)).toNat

end

end A313723.P5927082656685012150

/-! ## A313723.P6587484543474384932

`A008706(n)-A288670(A164449(n+4))`
-/

namespace A313723.P6587484543474384932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A288670 (A164449 (n + 4)).toNat

end

end A313723.P6587484543474384932

/-! ## A313723.P12178354822342668599

`A008706(n)-A104488(A232697(3*n+1))`
-/

namespace A313723.P12178354822342668599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A104488 (A232697 (3 * n + 1)).toNat

end

end A313723.P12178354822342668599

/-! ## A313723.P16756785904535784865

`A008706(n)-A324883(A018483(n+1))`
-/

namespace A313723.P16756785904535784865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A324883 (A018483 (n + 1)).toNat

end

end A313723.P16756785904535784865

/-!
# A313724: Coordination sequence Gal.6.472.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313724, there is no canonical definition to state claims against.
-/

/-! ## A313724.P14915487602696118577

`A313696(n)+A031346(A189866(n+1))`
-/

namespace A313724.P14915487602696118577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313696 n + A031346 (A189866 (n + 1)).toNat

end

end A313724.P14915487602696118577

/-! ## A313724.P781581953946529739

`A277158(A045677(n))+A331852(A000217(n))+4*n`
-/

namespace A313724.P781581953946529739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277158 (A045677 n).toNat + (A331852 (A000217 n).toNat + (4 * n : ℤ))

end

end A313724.P781581953946529739

/-! ## A313724.P4485450523545323502

`5*n-A286349(A286415(n+1))`
-/

namespace A313724.P4485450523545323502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A286349 (A286415 (n + 1)).toNat

end

end A313724.P4485450523545323502

/-! ## A313724.P227410818599447338

`A163817(round(sqrt(A306017(2*n+1)+1)))+5*n`
-/

namespace A313724.P227410818599447338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163817 (SequenceMachineLib.roundAway (Real.sqrt (A306017 (2 * n + 1) + 1 : ℝ))).toNat + (5 * n : ℤ)

end

end A313724.P227410818599447338

/-! ## A313724.P16532198039708885198

`A313721(n)+A056975(A018007(n))`
-/

namespace A313724.P16532198039708885198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A056975 (A018007 n).toNat

end

end A313724.P16532198039708885198

/-!
# A313725: Coordination sequence Gal.6.484.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313725, there is no canonical definition to state claims against.
-/

/-! ## A313725.P14286167443979416050

`A133137(A313687(n)+A055024(n))`
-/

namespace A313725.P14286167443979416050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A313687 n + A055024 n).toNat

end

end A313725.P14286167443979416050

/-! ## A313725.P1468361223795876123

`A314095(n)-A054521(A097856(3*n+5))`
-/

namespace A313725.P1468361223795876123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314095 n - A054521 (A097856 (3 * n + 5)).toNat

end

end A313725.P1468361223795876123

/-! ## A313725.P13407320020091158388

`A053735(A024175(n))+4*n`
-/

namespace A313725.P13407320020091158388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A024175 n).toNat + (4 * n : ℤ)

end

end A313725.P13407320020091158388

/-! ## A313725.P5876973592723195592

`A329679(A054841(n+1))+and(5*n, -2)`
-/

namespace A313725.P5876973592723195592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329679 (A054841 (n + 1)).toNat + Int.land (5 * n : ℤ) (-2)

end

end A313725.P5876973592723195592

/-! ## A313725.P12968669099256464730

`A008706(n)-A016406(A267193(n))`
-/

namespace A313725.P12968669099256464730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A016406 (A267193 n).toNat

end

end A313725.P12968669099256464730

/-!
# A313726: Coordination sequence Gal.6.340.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313726, the canonical program `A313726.P1465677854736066315` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313726 has offset 0).

The definition of A313726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313726.P1465677854736066315

`A312896(n)+round(2*n/3)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313726

/-- `A312896(n)+round(2*n/3)` -/
def P1465677854736066315.Spec : Prop :=
  ∀ n, P1465677854736066315.a n = A313726 n

theorem P1465677854736066315.correct : P1465677854736066315.Spec := by
  intro n
  simp only [A313726]

end A313726

/-! ## A313726.P9795154538905759243

`abs(A008592(n)-A313744(n))`
-/

namespace A313726.P9795154538905759243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313744 n|

end

end A313726.P9795154538905759243

namespace A313726

/-- `abs(A008592(n)-A313744(n))` -/
def P9795154538905759243.Spec : Prop :=
  ∀ n, P9795154538905759243.a n = A313726 n

end A313726

/-! ## A313726.P11578780876806284402

`floor(A010015(n)/A313744(n))`
-/

namespace A313726.P11578780876806284402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313744 n : ℚ)⌋

end

end A313726.P11578780876806284402

namespace A313726

/-- `floor(A010015(n)/A313744(n))` -/
def P11578780876806284402.Spec : Prop :=
  ∀ n, P11578780876806284402.a n = A313726 n

end A313726

/-! ## A313726.P69567176196680912

`A314712(n)+∑[A021913(n)]`
-/

namespace A313726.P69567176196680912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314712 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313726.P69567176196680912

namespace A313726

/-- `A314712(n)+∑[A021913(n)]` -/
def P69567176196680912.Spec : Prop :=
  ∀ n, P69567176196680912.a n = A313726 n

end A313726

/-! ## A313726.P5531967252508710040

`A314712(n)+Δ[A011848(n)]`
-/

namespace A313726.P5531967252508710040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314712 n + (f1 (n + 1) - f1 n)

end

end A313726.P5531967252508710040

namespace A313726

/-- `A314712(n)+Δ[A011848(n)]` -/
def P5531967252508710040.Spec : Prop :=
  ∀ n, P5531967252508710040.a n = A313726 n

end A313726

/-! ## A313726.P13261699154735850701

`A313099(n)+n-∑[A131735(n)]`
-/

namespace A313726.P13261699154735850701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313726.P13261699154735850701

namespace A313726

/-- `A313099(n)+n-∑[A131735(n)]` -/
def P13261699154735850701.Spec : Prop :=
  ∀ n, P13261699154735850701.a n = A313726 n

end A313726

/-! ## A313726.P3563153027667555120

`A301298(n)+A004396(n-A004525(n))`
-/

namespace A313726.P3563153027667555120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313726.P3563153027667555120

namespace A313726

/-- `A301298(n)+A004396(n-A004525(n))` -/
def P3563153027667555120.Spec : Prop :=
  ∀ n, P3563153027667555120.a n = A313726 n

end A313726

/-! ## A313726.P15904707619476767894

`A004396(n)+A313569(n)-A004525(n)`
-/

namespace A313726.P15904707619476767894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313569 n - A004525 n)

end

end A313726.P15904707619476767894

namespace A313726

/-- `A004396(n)+A313569(n)-A004525(n)` -/
def P15904707619476767894.Spec : Prop :=
  ∀ n, P15904707619476767894.a n = A313726 n

end A313726

/-! ## A313726.P1464688343904363778

`A314677(n)+n-A004396(A004525(n))`
-/

namespace A313726.P1464688343904363778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313726.P1464688343904363778

namespace A313726

/-- `A314677(n)+n-A004396(A004525(n))` -/
def P1464688343904363778.Spec : Prop :=
  ∀ n, P1464688343904363778.a n = A313726 n

end A313726

/-! ## A313726.P6935929458349664152

`A008458(n)+A008574(n)-A313744(n)`
-/

namespace A313726.P6935929458349664152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313744 n)

end

end A313726.P6935929458349664152

namespace A313726

/-- `A008458(n)+A008574(n)-A313744(n)` -/
def P6935929458349664152.Spec : Prop :=
  ∀ n, P6935929458349664152.a n = A313726 n

end A313726

/-! ## A313726.P7333344700634727914

`∑{d}[A008592(n)-A313744(n), A000010(#)]`
-/

namespace A313726.P7333344700634727914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313726.P7333344700634727914

namespace A313726

/-- `∑{d}[A008592(n)-A313744(n), A000010(#)]` -/
def P7333344700634727914.Spec : Prop :=
  ∀ n, P7333344700634727914.a n = A313726 n

end A313726

/-! ## A313726.P15534757079112390085

`A004525(n)+A313687(n)-A004396(A004525(n))`
-/

namespace A313726.P15534757079112390085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313687 n - A004396 (A004525 n).toNat)

end

end A313726.P15534757079112390085

namespace A313726

/-- `A004525(n)+A313687(n)-A004396(A004525(n))` -/
def P15534757079112390085.Spec : Prop :=
  ∀ n, P15534757079112390085.a n = A313726 n

end A313726

/-! ## A313726.P1140919217673646721

`A310457(n)+A134667(n)`
-/

namespace A313726.P1140919217673646721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n + A134667 n

end

end A313726.P1140919217673646721

namespace A313726

/-- `A310457(n)+A134667(n)` -/
def P1140919217673646721.Spec : Prop :=
  ∀ n, P1140919217673646721.a n = A313726 n

end A313726

/-! ## A313726.P14307348902265816558

`A314107(n)-A004525(n-A004396(n))`
-/

namespace A313726.P14307348902265816558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314107 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313726.P14307348902265816558

namespace A313726

/-- `A314107(n)-A004525(n-A004396(n))` -/
def P14307348902265816558.Spec : Prop :=
  ∀ n, P14307348902265816558.a n = A313726 n

end A313726

/-! ## A313726.P17450685515827011969

`A313833(n)-Δ[A011865(n)]`
-/

namespace A313726.P17450685515827011969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n - (f1 (n + 1) - f1 n)

end

end A313726.P17450685515827011969

namespace A313726

/-- `A313833(n)-Δ[A011865(n)]` -/
def P17450685515827011969.Spec : Prop :=
  ∀ n, P17450685515827011969.a n = A313726 n

theorem P17450685515827011969.correct : P17450685515827011969.Spec := by
  intro n
  simp only [A313726, Nat.add_sub_cancel, A313726.P17450685515827011969.f1, A313726.P17450685515827011969.a, A313726.P1465677854736066315.a, A011865, A011865.P18048699183673763300.a, A312896, A312896.P16473508619976293498.a, A313833, A313833.P8730359671552575781.f1, A313833.P8730359671552575781.a, A004396, A004396.P17032557045289780609.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313726

/-! ## A313726.P15881889024446024264

`round(A314124(n)-n/3)`
-/

namespace A313726.P15881889024446024264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314124 n : ℚ) - (n : ℚ) / 3)

end

end A313726.P15881889024446024264

namespace A313726

/-- `round(A314124(n)-n/3)` -/
def P15881889024446024264.Spec : Prop :=
  ∀ n, P15881889024446024264.a n = A313726 n

end A313726

/-! ## A313726.P11028579011896765476

`A314124(n)-Δ[A130518(n)]`
-/

namespace A313726.P11028579011896765476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n - (f1 (n + 1) - f1 n)

end

end A313726.P11028579011896765476

namespace A313726

/-- `A314124(n)-Δ[A130518(n)]` -/
def P11028579011896765476.Spec : Prop :=
  ∀ n, P11028579011896765476.a n = A313726 n

end A313726

/-! ## A313726.P13378422199553720844

`A314124(n)-A002264(n+1)`
-/

namespace A313726.P13378422199553720844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n - A002264 (n + 1)

end

end A313726.P13378422199553720844

namespace A313726

/-- `A314124(n)-A002264(n+1)` -/
def P13378422199553720844.Spec : Prop :=
  ∀ n, P13378422199553720844.a n = A313726 n

end A313726

/-! ## A313726.P4851880497014626167

`A008576(n)+A314124(n)-A008486(n)`
-/

namespace A313726.P4851880497014626167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314124 n - A008486 n)

end

end A313726.P4851880497014626167

namespace A313726

/-- `A008576(n)+A314124(n)-A008486(n)` -/
def P4851880497014626167.Spec : Prop :=
  ∀ n, P4851880497014626167.a n = A313726 n

end A313726

/-! ## A313726.P11919957209437286872

`A004525(A004396(n))+A314240(n)-n`
-/

namespace A313726.P11919957209437286872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314240 n - (n : ℤ))

end

end A313726.P11919957209437286872

namespace A313726

/-- `A004525(A004396(n))+A314240(n)-n` -/
def P11919957209437286872.Spec : Prop :=
  ∀ n, P11919957209437286872.a n = A313726 n

end A313726

/-!
# A313727: Coordination sequence Gal.6.525.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313727, there is no canonical definition to state claims against.
-/

/-! ## A313727.P13518354527429840409

`A313842(n)-A353493(A003462(n))`
-/

namespace A313727.P13518354527429840409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n - A353493 (A003462 n).toNat

end

end A313727.P13518354527429840409

/-! ## A313727.P13985141381225755122

`A313722(n)+A067029(A018242(n))`
-/

namespace A313727.P13985141381225755122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313722 n + A067029 (A018242 n).toNat

end

end A313727.P13985141381225755122

/-! ## A313727.P1026158134177732232

`A313728(n)-A185284(A016813(n))`
-/

namespace A313727.P1026158134177732232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313728 n - A185284 (A016813 n).toNat

end

end A313727.P1026158134177732232

/-! ## A313727.P5576376403388237481

`A313728(n)-A185238(A213598(n))`
-/

namespace A313727.P5576376403388237481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313728 n - A185238 (A213598 n).toNat

end

end A313727.P5576376403388237481

/-! ## A313727.P12341370342648032447

`A374706(A277440(n+1))+A250120(n)`
-/

namespace A313727.P12341370342648032447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (A277440 (n + 1)).toNat + A250120 n

end

end A313727.P12341370342648032447

/-!
# A313728: Coordination sequence Gal.6.524.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313728, there is no canonical definition to state claims against.
-/

/-! ## A313728.P7714665244069554052

`A313727(n)+A185284(A016813(n))`
-/

namespace A313728.P7714665244069554052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313727 n + A185284 (A016813 n).toNat

end

end A313728.P7714665244069554052

/-! ## A313728.P18063428566840228913

`A250120(n)+A124737(A316475(n+1))`
-/

namespace A313728.P18063428566840228913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A124737 (A316475 (n + 1)).toNat

end

end A313728.P18063428566840228913

/-! ## A313728.P1204791664448596525

`A358479(A163888(n+1))+A250120(n)`
-/

namespace A313728.P1204791664448596525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358479 (A163888 (n + 1)).toNat + A250120 n

end

end A313728.P1204791664448596525

/-! ## A313728.P3527522084901784208

`A315695(n)-A333628(A155894(3*n+1))`
-/

namespace A313728.P3527522084901784208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315695 n - A333628 (A155894 (3 * n + 1)).toNat

end

end A313728.P3527522084901784208

/-!
# A313729: Coordination sequence Gal.6.134.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313729, the canonical program `A313729.P4779100435841205839` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313729 has offset 0).

The definition of A313729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313729.P8146061304012452954

`round(A314884(n)+n/3)`
-/

namespace A313729.P8146061304012452954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314884 n : ℚ) + (n : ℚ) / 3)

end

end A313729.P8146061304012452954

namespace A313729

/-- `round(A314884(n)+n/3)` -/
def P8146061304012452954.Spec : Prop :=
  ∀ n, P8146061304012452954.a n = A313729 n

end A313729

/-! ## A313729.P2976527414924400424

`A313023(n)+A004525(n)`
-/

namespace A313729.P2976527414924400424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313023 n + A004525 n

end

end A313729.P2976527414924400424

namespace A313729

/-- `A313023(n)+A004525(n)` -/
def P2976527414924400424.Spec : Prop :=
  ∀ n, P2976527414924400424.a n = A313729 n

end A313729

/-! ## A313729.P3316671549162391410

`A314884(n)+∑[A022003(n)]`
-/

namespace A313729.P3316671549162391410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314884 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313729.P3316671549162391410

namespace A313729

/-- `A314884(n)+∑[A022003(n)]` -/
def P3316671549162391410.Spec : Prop :=
  ∀ n, P3316671549162391410.a n = A313729 n

end A313729

/-! ## A313729.P9558685560407282892

`A314884(n)+A002264(n+1)`
-/

namespace A313729.P9558685560407282892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314884 n + A002264 (n + 1)

end

end A313729.P9558685560407282892

namespace A313729

/-- `A314884(n)+A002264(n+1)` -/
def P9558685560407282892.Spec : Prop :=
  ∀ n, P9558685560407282892.a n = A313729 n

end A313729

/-! ## A313729.P38685168614193247

`A314884(n)+n-A004396(n)`
-/

namespace A313729.P38685168614193247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314884 n + ((n : ℤ) - A004396 n)

end

end A313729.P38685168614193247

namespace A313729

/-- `A314884(n)+n-A004396(n)` -/
def P38685168614193247.Spec : Prop :=
  ∀ n, P38685168614193247.a n = A313729 n

end A313729

/-! ## A313729.P4779100435841205839

`abs(A008592(n)-(A311196(n)+n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313729

/-- `abs(A008592(n)-(A311196(n)+n))` -/
def P4779100435841205839.Spec : Prop :=
  ∀ n, P4779100435841205839.a n = A313729 n

theorem P4779100435841205839.correct : P4779100435841205839.Spec := by
  intro n
  simp only [A313729]

end A313729

/-! ## A313729.P7701217658266325045

`A313023(n)+n-∑[A021913(n)]`
-/

namespace A313729.P7701217658266325045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313023 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313729.P7701217658266325045

namespace A313729

/-- `A313023(n)+n-∑[A021913(n)]` -/
def P7701217658266325045.Spec : Prop :=
  ∀ n, P7701217658266325045.a n = A313729 n

end A313729

/-! ## A313729.P2318490839744300019

`A042965(n+1)+A314884(n)-n`
-/

namespace A313729.P2318490839744300019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A314884 n - (n : ℤ))

end

end A313729.P2318490839744300019

namespace A313729

/-- `A042965(n+1)+A314884(n)-n` -/
def P2318490839744300019.Spec : Prop :=
  ∀ n, P2318490839744300019.a n = A313729 n

end A313729

/-! ## A313729.P5365725547206525831

`A047229(n+1)+A313023(n)-n`
-/

namespace A313729.P5365725547206525831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A313023 n - (n : ℤ))

end

end A313729.P5365725547206525831

namespace A313729

/-- `A047229(n+1)+A313023(n)-n` -/
def P5365725547206525831.Spec : Prop :=
  ∀ n, P5365725547206525831.a n = A313729 n

end A313729

/-! ## A313729.P3450894082684913267

`A314893(n)+A004525(n-A004396(n))`
-/

namespace A313729.P3450894082684913267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313729.P3450894082684913267

namespace A313729

/-- `A314893(n)+A004525(n-A004396(n))` -/
def P3450894082684913267.Spec : Prop :=
  ∀ n, P3450894082684913267.a n = A313729 n

end A313729

/-! ## A313729.P13556332679859872344

`A008458(n)+A008486(n)-A311196(n)`
-/

namespace A313729.P13556332679859872344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311196 n)

end

end A313729.P13556332679859872344

namespace A313729

/-- `A008458(n)+A008486(n)-A311196(n)` -/
def P13556332679859872344.Spec : Prop :=
  ∀ n, P13556332679859872344.a n = A313729 n

end A313729

/-! ## A313729.P13227447226919010190

`A008486(n)+A314884(n)-A008576(n)`
-/

namespace A313729.P13227447226919010190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314884 n - A008576 n)

end

end A313729.P13227447226919010190

namespace A313729

/-- `A008486(n)+A314884(n)-A008576(n)` -/
def P13227447226919010190.Spec : Prop :=
  ∀ n, P13227447226919010190.a n = A313729 n

end A313729

/-! ## A313729.P6563101897514751176

`A315403(n)-A128834(n)`
-/

namespace A313729.P6563101897514751176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315403 n - A128834 n

end

end A313729.P6563101897514751176

namespace A313729

/-- `A315403(n)-A128834(n)` -/
def P6563101897514751176.Spec : Prop :=
  ∀ n, P6563101897514751176.a n = A313729 n

end A313729

/-! ## A313729.P6949578637202360969

`A004525(n)+A313859(n)-A004396(n)`
-/

namespace A313729.P6949578637202360969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313859 n - A004396 n)

end

end A313729.P6949578637202360969

namespace A313729

/-- `A004525(n)+A313859(n)-A004396(n)` -/
def P6949578637202360969.Spec : Prop :=
  ∀ n, P6949578637202360969.a n = A313729 n

end A313729

/-! ## A313729.P154067649702283315

`abs(A008593(n)-(A313739(n)+n))`
-/

namespace A313729.P154067649702283315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A313739 n + (n : ℤ))|

end

end A313729.P154067649702283315

namespace A313729

/-- `abs(A008593(n)-(A313739(n)+n))` -/
def P154067649702283315.Spec : Prop :=
  ∀ n, P154067649702283315.a n = A313729 n

end A313729

/-! ## A313729.P11523134140161168917

`A008458(n)+A008574(n)-A313739(n)`
-/

namespace A313729.P11523134140161168917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313739 n)

end

end A313729.P11523134140161168917

namespace A313729

/-- `A008458(n)+A008574(n)-A313739(n)` -/
def P11523134140161168917.Spec : Prop :=
  ∀ n, P11523134140161168917.a n = A313729 n

end A313729

/-! ## A313729.P7719181899769765497

`A004525(n)+A314208(n)-n`
-/

namespace A313729.P7719181899769765497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314208 n - (n : ℤ))

end

end A313729.P7719181899769765497

namespace A313729

/-- `A004525(n)+A314208(n)-n` -/
def P7719181899769765497.Spec : Prop :=
  ∀ n, P7719181899769765497.a n = A313729 n

end A313729

/-! ## A313729.P6276984959398878811

`Δ[A054925(n)]+A314208(n)-n`
-/

namespace A313729.P6276984959398878811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314208 n - (n : ℤ))

end

end A313729.P6276984959398878811

namespace A313729

/-- `Δ[A054925(n)]+A314208(n)-n` -/
def P6276984959398878811.Spec : Prop :=
  ∀ n, P6276984959398878811.a n = A313729 n

end A313729

/-! ## A313729.P17852141025883019115

`A315768(n)-n`
-/

namespace A313729.P17852141025883019115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315768 n - (n : ℤ)

end

end A313729.P17852141025883019115

namespace A313729

/-- `A315768(n)-n` -/
def P17852141025883019115.Spec : Prop :=
  ∀ n, P17852141025883019115.a n = A313729 n

end A313729

/-! ## A313729.P3457465717855683687

`A004525(n)+A004396(A313859(n))+n`
-/

namespace A313729.P3457465717855683687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A313859 n).toNat + (n : ℤ))

end

end A313729.P3457465717855683687

namespace A313729

/-- `A004525(n)+A004396(A313859(n))+n` -/
def P3457465717855683687.Spec : Prop :=
  ∀ n, P3457465717855683687.a n = A313729 n

end A313729

/-!
# A313730: Coordination sequence Gal.6.234.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313730, the canonical program `A313730.P14992937081356029682` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313730 has offset 0).

The definition of A313730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313730.P17610826726272611297

`ogf((1+4x+5x^2+5x^3+5x^4+5x^5+4x^6+5x^7+5x^8+5x^9+5x^10+4x^11+x^12)/(1-x-x^11+x^12))`
-/

namespace A313730.P17610826726272611297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A313730.P17610826726272611297

namespace A313730

/-- `ogf((1+4x+5x^2+5x^3+5x^4+5x^5+4x^6+5x^7+5x^8+5x^9+5x^10+4x^11+x^12)/(1-x-x^11+x^12))` -/
def P17610826726272611297.Spec : Prop :=
  ∀ n, P17610826726272611297.a n = A313730 n

end A313730

/-! ## A313730.P14992937081356029682

`A008458(n)-comp[12*n+6]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313730

/-- `A008458(n)-comp[12*n+6]` -/
def P14992937081356029682.Spec : Prop :=
  ∀ n, P14992937081356029682.a n = A313730 n

theorem P14992937081356029682.correct : P14992937081356029682.Spec := by
  intro n
  simp only [A313730]

end A313730

/-! ## A313730.P6924250198293719930

`A298026(2*n)-comp[12*n+6]`
-/

namespace A313730.P6924250198293719930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (2 * n) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A313730.P6924250198293719930

namespace A313730

/-- `A298026(2*n)-comp[12*n+6]` -/
def P6924250198293719930.Spec : Prop :=
  ∀ n, P6924250198293719930.a n = A313730 n

end A313730

/-! ## A313730.P10311313028486087659

`A313834(n)-Δ[A011864(n)]`
-/

namespace A313730.P10311313028486087659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313834 n - (f1 (n + 1) - f1 n)

end

end A313730.P10311313028486087659

namespace A313730

/-- `A313834(n)-Δ[A011864(n)]` -/
def P10311313028486087659.Spec : Prop :=
  ∀ n, P10311313028486087659.a n = A313730 n

theorem P10311313028486087659.correct : P10311313028486087659.Spec := by
  intro n
  simp only [A313730, Nat.add_sub_cancel, A313730.P10311313028486087659.f1, A313730.P10311313028486087659.a, A313730.P14992937081356029682.f1, A313730.P14992937081356029682.a, A008458, A008458.P7339383310184415644.a, A011864, A011864.P3547417513882699266.a, A313834, A313834.P4113290971779129752.f1, A313834.P4113290971779129752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313730

/-! ## A313730.P2765951858545227305

`abs(10*n-A313738(n))`
-/

namespace A313730.P2765951858545227305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313738 n|

end

end A313730.P2765951858545227305

namespace A313730

/-- `abs(10*n-A313738(n))` -/
def P2765951858545227305.Spec : Prop :=
  ∀ n, P2765951858545227305.a n = A313730 n

end A313730

/-! ## A313730.P9210647696367645430

`A004396(A312927(n))+2*n`
-/

namespace A313730.P9210647696367645430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312927 n).toNat + (2 * n : ℤ)

end

end A313730.P9210647696367645430

namespace A313730

/-- `A004396(A312927(n))+2*n` -/
def P9210647696367645430.Spec : Prop :=
  ∀ n, P9210647696367645430.a n = A313730 n

end A313730

/-! ## A313730.P2838881687553883242

`A004396(A313024(n))+2*n`
-/

namespace A313730.P2838881687553883242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313024 n).toNat + (2 * n : ℤ)

end

end A313730.P2838881687553883242

namespace A313730

/-- `A004396(A313024(n))+2*n` -/
def P2838881687553883242.Spec : Prop :=
  ∀ n, P2838881687553883242.a n = A313730 n

end A313730

/-! ## A313730.P6670700924965384193

`A005843(n)+A004396(A312927(n))`
-/

namespace A313730.P6670700924965384193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312927 n).toNat

end

end A313730.P6670700924965384193

namespace A313730

/-- `A005843(n)+A004396(A312927(n))` -/
def P6670700924965384193.Spec : Prop :=
  ∀ n, P6670700924965384193.a n = A313730 n

end A313730

/-! ## A313730.P9656473453995270200

`(A315767(n)+A008574(n))/2`
-/

namespace A313730.P9656473453995270200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315767 n + A008574 n : ℚ) / 2

end

end A313730.P9656473453995270200

namespace A313730

/-- `(A315767(n)+A008574(n))/2` -/
def P9656473453995270200.Spec : Prop :=
  ∀ n, P9656473453995270200.a n = (A313730 n : ℚ)

theorem P9656473453995270200.correct : P9656473453995270200.Spec := by
  intro n
  simp only [A313730, Nat.add_sub_cancel, A313730.P9656473453995270200.a, A313730.P14992937081356029682.f1, A313730.P14992937081356029682.a, A008458, A008458.P7339383310184415644.a, A008574, A008574.P1300280032690682112.a, A315767, A315767.P12035328824597699860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313730

/-! ## A313730.P7850260624572735542

`A180004(A313560(n))`
-/

namespace A313730.P7850260624572735542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A313560 n).toNat

end

end A313730.P7850260624572735542

namespace A313730

/-- `A180004(A313560(n))` -/
def P7850260624572735542.Spec : Prop :=
  ∀ n, P7850260624572735542.a n = A313730 n

end A313730

/-! ## A313730.P12970182853987313548

`A005843(A008486(n)+A005843(n))-A313738(n)`
-/

namespace A313730.P12970182853987313548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008486 n + A005843 n).toNat - A313738 n

end

end A313730.P12970182853987313548

namespace A313730

/-- `A005843(A008486(n)+A005843(n))-A313738(n)` -/
def P12970182853987313548.Spec : Prop :=
  ∀ n, P12970182853987313548.a n = A313730 n

end A313730

/-! ## A313730.P14563052083313243826

`A004525(A315762(n))+2*n`
-/

namespace A313730.P14563052083313243826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315762 n).toNat + (2 * n : ℤ)

end

end A313730.P14563052083313243826

namespace A313730

/-- `A004525(A315762(n))+2*n` -/
def P14563052083313243826.Spec : Prop :=
  ∀ n, P14563052083313243826.a n = A313730 n

end A313730

/-! ## A313730.P13703048485625766245

`A004396(A311434(2*n)-n)`
-/

namespace A313730.P13703048485625766245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311434 (2 * n) - (n : ℤ)).toNat

end

end A313730.P13703048485625766245

namespace A313730

/-- `A004396(A311434(2*n)-n)` -/
def P13703048485625766245.Spec : Prop :=
  ∀ n, P13703048485625766245.a n = A313730 n

end A313730

/-! ## A313730.P2343573779761875574

`A314149(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313730.P2343573779761875574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314149 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313730.P2343573779761875574

namespace A313730

/-- `A314149(2*n)+A008458(n+1)-(12*n+6)` -/
def P2343573779761875574.Spec : Prop :=
  ∀ n, P2343573779761875574.a n = A313730 n

end A313730

/-! ## A313730.P1822636469878052107

`A004525(A310413(2*n))`
-/

namespace A313730.P1822636469878052107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310413 (2 * n)).toNat

end

end A313730.P1822636469878052107

namespace A313730

/-- `A004525(A310413(2*n))` -/
def P1822636469878052107.Spec : Prop :=
  ∀ n, P1822636469878052107.a n = A313730 n

end A313730

/-! ## A313730.P11925487168881200356

`A004525(A313620(2*n))`
-/

namespace A313730.P11925487168881200356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313620 (2 * n)).toNat

end

end A313730.P11925487168881200356

namespace A313730

/-- `A004525(A313620(2*n))` -/
def P11925487168881200356.Spec : Prop :=
  ∀ n, P11925487168881200356.a n = A313730 n

end A313730

/-! ## A313730.P12493642601742238112

`A004526(A310413(2*n)+1)`
-/

namespace A313730.P12493642601742238112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310413 (2 * n) + 1).toNat

end

end A313730.P12493642601742238112

namespace A313730

/-- `A004526(A310413(2*n)+1)` -/
def P12493642601742238112.Spec : Prop :=
  ∀ n, P12493642601742238112.a n = A313730 n

end A313730

/-! ## A313730.P5477440926273573945

`A065033(A310413(2*n)-1)`
-/

namespace A313730.P5477440926273573945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A310413 (2 * n) - 1).toNat

end

end A313730.P5477440926273573945

namespace A313730

/-- `A065033(A310413(2*n)-1)` -/
def P5477440926273573945.Spec : Prop :=
  ∀ n, P5477440926273573945.a n = A313730 n

end A313730

/-!
# A313731: Coordination sequence Gal.6.409.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313731, there is no canonical definition to state claims against.
-/

/-! ## A313731.P9377311036446789334

`A313732(n)-A003982(A309864(n))`
-/

namespace A313731.P9377311036446789334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313732 n - A003982 (A309864 n).toNat

end

end A313731.P9377311036446789334

/-! ## A313731.P13966129517180536214

`A313732(n)-A185284(A000040(n+1))`
-/

namespace A313731.P13966129517180536214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313732 n - A185284 (A000040 (n + 1)).toNat

end

end A313731.P13966129517180536214

/-! ## A313731.P8503169279933897012

`A313732(n)-A185284(A284334(n+1))`
-/

namespace A313731.P8503169279933897012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313732 n - A185284 (A284334 (n + 1)).toNat

end

end A313731.P8503169279933897012

/-! ## A313731.P3661651963535395129

`A313732(n)+A244895(A185284((5-n)²))`
-/

namespace A313731.P3661651963535395129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313732 n + A244895 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A313731.P3661651963535395129

/-! ## A313731.P11554217066499467182

`A313732(A062399(n))`
-/

namespace A313731.P11554217066499467182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313732 (A062399 n).toNat

end

end A313731.P11554217066499467182

/-!
# A313732: Coordination sequence Gal.6.408.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313732, there is no canonical definition to state claims against.
-/

/-! ## A313732.P2697978140050993615

`A313709(n)+A143259(A081848(n+1))`
-/

namespace A313732.P2697978140050993615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n + A143259 (A081848 (n + 1)).toNat

end

end A313732.P2697978140050993615

/-! ## A313732.P10292794027679214305

`A143259(A081848(n+1))+A330025(2*n)+A313334(n)`
-/

namespace A313732.P10292794027679214305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A081848 (n + 1)).toNat + (A330025 (2 * n) + A313334 n)

end

end A313732.P10292794027679214305

/-! ## A313732.P6462569654786213003

`A185284(3*n+1)+A313731(n)`
-/

namespace A313732.P6462569654786213003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 1) + A313731 n

end

end A313732.P6462569654786213003

/-! ## A313732.P4285249672128010000

`xor(A185037(A104204(n)), A313731(n))`
-/

namespace A313732.P4285249672128010000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185037 (A104204 n).toNat) (A313731 n)

end

end A313732.P4285249672128010000

/-! ## A313732.P12904976830739763732

`A313731(n)+A185037(A104204(n)-1)`
-/

namespace A313732.P12904976830739763732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313731 n + A185037 (A104204 n - 1).toNat

end

end A313732.P12904976830739763732

/-!
# A313733: Coordination sequence Gal.5.221.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313733, there is no canonical definition to state claims against.
-/

/-! ## A313733.P5337246168682666265

`5*n+1-A087436(A005578(n+2))`
-/

namespace A313733.P5337246168682666265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) - A087436 (A005578 (n + 2)).toNat

end

end A313733.P5337246168682666265

/-! ## A313733.P10052680429641047250

`A008706(n)-A122879(A333882(n))`
-/

namespace A313733.P10052680429641047250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A122879 (A333882 n).toNat

end

end A313733.P10052680429641047250

/-! ## A313733.P1765856103870410751

`round(1/acot(5*n))-A059984(A318191(3*n+1))`
-/

namespace A313733.P1765856103870410751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) - A059984 (A318191 (3 * n + 1)).toNat

end

end A313733.P1765856103870410751

/-! ## A313733.P8123470835453470039

`A008706(n)-A096158(A064642(n))`
-/

namespace A313733.P8123470835453470039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A096158 (A064642 n).toNat

end

end A313733.P8123470835453470039

/-! ## A313733.P14344868430348634875

`A008706(n)-A323473(A051052(n))`
-/

namespace A313733.P14344868430348634875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A323473 (A051052 n).toNat

end

end A313733.P14344868430348634875

/-!
# A313734: Coordination sequence Gal.6.362.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313734, there is no canonical definition to state claims against.
-/

/-! ## A313734.P11841184520733927314

`∑[A078570(A279374(n))+2]-2`
-/

namespace A313734.P11841184520733927314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078570 (A279374 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A313734.P11841184520733927314

/-! ## A313734.P5230520779174375456

`A093110(A062399(n))+A008574(n)`
-/

namespace A313734.P5230520779174375456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (A062399 n).toNat + A008574 n

end

end A313734.P5230520779174375456

/-! ## A313734.P1686101356002786440

`A175402(A005251(n))+A008706(n)`
-/

namespace A313734.P1686101356002786440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175402 (A005251 n).toNat + A008706 n

end

end A313734.P1686101356002786440

/-! ## A313734.P7747191996407885885

`A279210(A003418(n))+A008706(n)`
-/

namespace A313734.P7747191996407885885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279210 (A003418 n).toNat + A008706 n

end

end A313734.P7747191996407885885

/-! ## A313734.P2886914294500724699

`A225633(A103259(n))+A008574(n)`
-/

namespace A313734.P2886914294500724699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 (A103259 n).toNat + A008574 n

end

end A313734.P2886914294500724699

/-!
# A313735: Coordination sequence Gal.6.646.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313735, there is no canonical definition to state claims against.
-/

/-! ## A313735.P1923731697414726771

`A311145(n)+A108611(A008458(n))`
-/

namespace A313735.P1923731697414726771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311145 n + A108611 (A008458 n).toNat

end

end A313735.P1923731697414726771

/-! ## A313735.P3205031794076311964

`A182220(A313683(n)+2)+A108611(A008458(n))`
-/

namespace A313735.P3205031794076311964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A313683 n + 2).toNat + A108611 (A008458 n).toNat

end

end A313735.P3205031794076311964

/-! ## A313735.P464623335349050702

`∑[A235224(A022144(n)²)]`
-/

namespace A313735.P464623335349050702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A022144 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313735.P464623335349050702

/-! ## A313735.P16181422240818500201

`∑[∑[A400249(A236679(3*n+5))]]`
-/

namespace A313735.P16181422240818500201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400249 (A236679 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313735.P16181422240818500201

/-! ## A313735.P1488018105123530422

`A008574(n)+lt[A279824(n), A313753(2*(n+2))]`
-/

namespace A313735.P1488018105123530422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313753 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A313735.P1488018105123530422

/-!
# A313736: Coordination sequence Gal.6.363.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313736, the canonical program `A313736.P16871043691306963978` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313736 has offset 0).

The definition of A313736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313736.P16871043691306963978

`A313053(n)+A004396(A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313736

/-- `A313053(n)+A004396(A004396(n))` -/
def P16871043691306963978.Spec : Prop :=
  ∀ n, P16871043691306963978.a n = A313736 n

theorem P16871043691306963978.correct : P16871043691306963978.Spec := by
  intro n
  simp only [A313736]

end A313736

/-! ## A313736.P2785084051243800511

`A314710(n)+A008706(n)-A314708(n)`
-/

namespace A313736.P2785084051243800511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314710 n + A008706 n - A314708 n

end

end A313736.P2785084051243800511

namespace A313736

/-- `A314710(n)+A008706(n)-A314708(n)` -/
def P2785084051243800511.Spec : Prop :=
  ∀ n, P2785084051243800511.a n = A313736 n

end A313736

/-! ## A313736.P12806387476512882840

`A313715(n)+A313721(n)-A313703(n)`
-/

namespace A313736.P12806387476512882840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313715 n + (A313721 n - A313703 n)

end

end A313736.P12806387476512882840

namespace A313736

/-- `A313715(n)+A313721(n)-A313703(n)` -/
def P12806387476512882840.Spec : Prop :=
  ∀ n, P12806387476512882840.a n = A313736 n

theorem P12806387476512882840.correct : P12806387476512882840.Spec := by
  intro n
  simp only [A313736, Nat.add_sub_cancel, A313736.P12806387476512882840.a, A313736.P16871043691306963978.a, A004396, A004396.P17032557045289780609.a, A313053, A313053.P8254110359425895258.a, A313703, A313703.P15146623144074543038.a, A313715, A313715.P10014129678615076953.a, A313721, A313721.P4481706154216896496.a, A002266, A002266.P12055520221930490546.a, A008574, A008574.P1300280032690682112.a, A042965, A042965.P10256174339092268817.a, A312903, A312903.P5186887365123370171.a, A312932, A312932.P265636690513476108.a, A311384, A311384.P2354907441128154650.a, A330025, A330025.P8729701065839544525.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313736

/-! ## A313736.P5275783536122049724

`A004396(A004396(n))+A314220(n)-n`
-/

namespace A313736.P5275783536122049724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A314220 n - (n : ℤ))

end

end A313736.P5275783536122049724

namespace A313736

/-- `A004396(A004396(n))+A314220(n)-n` -/
def P5275783536122049724.Spec : Prop :=
  ∀ n, P5275783536122049724.a n = A313736 n

theorem P5275783536122049724.correct : P5275783536122049724.Spec := by
  intro n
  simp only [A313736, Nat.add_sub_cancel, A313736.P5275783536122049724.a, A313736.P16871043691306963978.a, A004396, A004396.P17032557045289780609.a, A313053, A313053.P8254110359425895258.a, A314220, A314220.P5659571598859034226.a, A002266, A002266.P12055520221930490546.a, A312903, A312903.P5186887365123370171.a, A311384, A311384.P2354907441128154650.a, A330025, A330025.P8729701065839544525.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313736

/-! ## A313736.P12333666510995572944

`A314710(n)+A314220(n)-A008706(n)`
-/

namespace A313736.P12333666510995572944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314710 n + A314220 n - A008706 n

end

end A313736.P12333666510995572944

namespace A313736

/-- `A314710(n)+A314220(n)-A008706(n)` -/
def P12333666510995572944.Spec : Prop :=
  ∀ n, P12333666510995572944.a n = A313736 n

end A313736

/-! ## A313736.P13049432504753289608

`A004396(A004396(n))+A004396(A313898(n))+n`
-/

namespace A313736.P13049432504753289608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A004396 (A313898 n).toNat + (n : ℤ))

end

end A313736.P13049432504753289608

namespace A313736

/-- `A004396(A004396(n))+A004396(A313898(n))+n` -/
def P13049432504753289608.Spec : Prop :=
  ∀ n, P13049432504753289608.a n = A313736 n

end A313736

/-! ## A313736.P14990206348637156841

`A004396(A004396(n))+A004396(A301726(n))+n`
-/

namespace A313736.P14990206348637156841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A004396 (A301726 n).toNat + (n : ℤ))

end

end A313736.P14990206348637156841

namespace A313736

/-- `A004396(A004396(n))+A004396(A301726(n))+n` -/
def P14990206348637156841.Spec : Prop :=
  ∀ n, P14990206348637156841.a n = A313736 n

end A313736

/-!
# A313737: Coordination sequence Gal.6.363.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313737, the canonical program `A313737.P13552186845538033859` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313737 has offset 0).

The definition of A313737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313737.P13552186845538033859

`A065033(2*n)+A047263(3*n+1)+A002264(A004773(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313737

/-- `A065033(2*n)+A047263(3*n+1)+A002264(A004773(n+1))` -/
def P13552186845538033859.Spec : Prop :=
  ∀ n, P13552186845538033859.a n = A313737 n

theorem P13552186845538033859.correct : P13552186845538033859.Spec := by
  intro n
  simp only [A313737]

end A313737

/-! ## A313737.P8351705344876331578

`A008706(n)+round(C(2, n+2)+n*(3/5+5))%A315523(n)`
-/

namespace A313737.P8351705344876331578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + Int.tmod (SequenceMachineLib.roundAway ((Nat.choose 2 (n + 2) : ℚ) + (n : ℚ) * ((3 : ℚ) / 5 + 5))) (A315523 n)

end

end A313737.P8351705344876331578

namespace A313737

/-- `A008706(n)+round(C(2, n+2)+n*(3/5+5))%A315523(n)` -/
def P8351705344876331578.Spec : Prop :=
  ∀ n, P8351705344876331578.a n = A313737 n

end A313737

/-! ## A313737.P10759646137621115399

`A312932(n)+A315525(n)-A008706(n)`
-/

namespace A313737.P10759646137621115399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n + (A315525 n - A008706 n)

end

end A313737.P10759646137621115399

namespace A313737

/-- `A312932(n)+A315525(n)-A008706(n)` -/
def P10759646137621115399.Spec : Prop :=
  ∀ n, P10759646137621115399.a n = A313737 n

end A313737

/-! ## A313737.P11634120644857172762

`A008706(n)+A315525(n)-A315523(n)`
-/

namespace A313737.P11634120644857172762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A315525 n - A315523 n)

end

end A313737.P11634120644857172762

namespace A313737

/-- `A008706(n)+A315525(n)-A315523(n)` -/
def P11634120644857172762.Spec : Prop :=
  ∀ n, P11634120644857172762.a n = A313737 n

end A313737

/-! ## A313737.P984828823893570193

`A008587(n)+A003849(A117559(n))`
-/

namespace A313737.P984828823893570193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + A003849 (A117559 n).toNat

end

end A313737.P984828823893570193

namespace A313737

/-- `A008587(n)+A003849(A117559(n))` -/
def P984828823893570193.Spec : Prop :=
  ∀ n, P984828823893570193.a n = A313737 n

end A313737

/-!
# A313738: Coordination sequence Gal.6.158.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313738, the canonical program `A313738.P18419223100438122022` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313738 has offset 0).

The definition of A313738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313738.P9155288200892534815

`A004277(2*n)+comp[12*n+6]`
-/

namespace A313738.P9155288200892534815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A313738.P9155288200892534815

namespace A313738

/-- `A004277(2*n)+comp[12*n+6]` -/
def P9155288200892534815.Spec : Prop :=
  ∀ n, P9155288200892534815.a n = A313738 n

end A313738

/-! ## A313738.P18419223100438122022

`round(A008596(A008574(n))/11)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313738

/-- `round(A008596(A008574(n))/11)` -/
def P18419223100438122022.Spec : Prop :=
  ∀ n, P18419223100438122022.a n = A313738 n

theorem P18419223100438122022.correct : P18419223100438122022.Spec := by
  intro n
  simp only [A313738]

end A313738

/-! ## A313738.P9153665701577009621

`abs(A008592(n)-A313730(n))`
-/

namespace A313738.P9153665701577009621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313730 n|

end

end A313738.P9153665701577009621

namespace A313738

/-- `abs(A008592(n)-A313730(n))` -/
def P9153665701577009621.Spec : Prop :=
  ∀ n, P9153665701577009621.a n = A313738 n

end A313738

/-! ## A313738.P12992864197749764345

`A313615(n)+Δ[A011864(n)]`
-/

namespace A313738.P12992864197749764345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313615 n + (f1 (n + 1) - f1 n)

end

end A313738.P12992864197749764345

namespace A313738

/-- `A313615(n)+Δ[A011864(n)]` -/
def P12992864197749764345.Spec : Prop :=
  ∀ n, P12992864197749764345.a n = A313738 n

end A313738

/-! ## A313738.P1490285967408079564

`(A311225(n)+A008458(n))/2`
-/

namespace A313738.P1490285967408079564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311225 n + A008458 n : ℚ) / 2

end

end A313738.P1490285967408079564

namespace A313738

/-- `(A311225(n)+A008458(n))/2` -/
def P1490285967408079564.Spec : Prop :=
  ∀ n, P1490285967408079564.a n = (A313738 n : ℚ)

theorem P1490285967408079564.correct : P1490285967408079564.Spec := by
  intro n
  simp only [A313738, Nat.add_sub_cancel, A313738.P1490285967408079564.a, A313738.P18419223100438122022.a, A008458, A008458.P7339383310184415644.a, A008574, A008574.P1300280032690682112.a, A008596, A008596.P5483684624845691048.a, A311225, A311225.P6004467747735077688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313738

/-! ## A313738.P2931718305107542575

`A008574(n)+comp[2*A016945(n)]`
-/

namespace A313738.P2931718305107542575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016945 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313738.P2931718305107542575

namespace A313738

/-- `A008574(n)+comp[2*A016945(n)]` -/
def P2931718305107542575.Spec : Prop :=
  ∀ n, P2931718305107542575.a n = A313738 n

end A313738

/-! ## A313738.P16429848048413014876

`A008458(n)+A008574(n)-A313730(n)`
-/

namespace A313738.P16429848048413014876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313730 n)

end

end A313738.P16429848048413014876

namespace A313738

/-- `A008458(n)+A008574(n)-A313730(n)` -/
def P16429848048413014876.Spec : Prop :=
  ∀ n, P16429848048413014876.a n = A313738 n

end A313738

/-! ## A313738.P71100327924243952

`A005843(n)+A005843(A008574(n))-A313730(n)`
-/

namespace A313738.P71100327924243952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313730 n)

end

end A313738.P71100327924243952

namespace A313738

/-- `A005843(n)+A005843(A008574(n))-A313730(n)` -/
def P71100327924243952.Spec : Prop :=
  ∀ n, P71100327924243952.a n = A313738 n

end A313738

/-! ## A313738.P18388622903432840403

`A065502(A313572(n))/2+n`
-/

namespace A313738.P18388622903432840403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A313572 n).toNat : ℚ) / 2 + (n : ℚ)

end

end A313738.P18388622903432840403

namespace A313738

/-- `A065502(A313572(n))/2+n` -/
def P18388622903432840403.Spec : Prop :=
  ∀ n, P18388622903432840403.a n = (A313738 n : ℚ)

end A313738

/-! ## A313738.P4713541989113156317

`A005843(A008574(n)+n)-A313730(n)`
-/

namespace A313738.P4713541989113156317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313730 n

end

end A313738.P4713541989113156317

namespace A313738

/-- `A005843(A008574(n)+n)-A313730(n)` -/
def P4713541989113156317.Spec : Prop :=
  ∀ n, P4713541989113156317.a n = A313738 n

end A313738

/-! ## A313738.P2627930414634493906

`A004396(A314165(n)+2*n)`
-/

namespace A313738.P2627930414634493906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314165 n + (2 * n : ℤ)).toNat

end

end A313738.P2627930414634493906

namespace A313738

/-- `A004396(A314165(n)+2*n)` -/
def P2627930414634493906.Spec : Prop :=
  ∀ n, P2627930414634493906.a n = A313738 n

end A313738

/-! ## A313738.P16479159013937836954

`A004396(A314221(n)+2*n)`
-/

namespace A313738.P16479159013937836954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314221 n + (2 * n : ℤ)).toNat

end

end A313738.P16479159013937836954

namespace A313738

/-- `A004396(A314221(n)+2*n)` -/
def P16479159013937836954.Spec : Prop :=
  ∀ n, P16479159013937836954.a n = A313738 n

end A313738

/-! ## A313738.P8369776114636169058

`A004396(A315498(n)+2*n)`
-/

namespace A313738.P8369776114636169058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315498 n + (2 * n : ℤ)).toNat

end

end A313738.P8369776114636169058

namespace A313738

/-- `A004396(A315498(n)+2*n)` -/
def P8369776114636169058.Spec : Prop :=
  ∀ n, P8369776114636169058.a n = A313738 n

end A313738

/-! ## A313738.P819613539043519290

`A004396(A315526(n)+2*n)`
-/

namespace A313738.P819613539043519290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315526 n + (2 * n : ℤ)).toNat

end

end A313738.P819613539043519290

namespace A313738

/-- `A004396(A315526(n)+2*n)` -/
def P819613539043519290.Spec : Prop :=
  ∀ n, P819613539043519290.a n = A313738 n

end A313738

/-! ## A313738.P7513170943406678898

`A004396(A314165(n)+n+n)`
-/

namespace A313738.P7513170943406678898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314165 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313738.P7513170943406678898

namespace A313738

/-- `A004396(A314165(n)+n+n)` -/
def P7513170943406678898.Spec : Prop :=
  ∀ n, P7513170943406678898.a n = A313738 n

end A313738

/-! ## A313738.P6234843880190834203

`A004396(A314221(n)+n+n)`
-/

namespace A313738.P6234843880190834203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314221 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313738.P6234843880190834203

namespace A313738

/-- `A004396(A314221(n)+n+n)` -/
def P6234843880190834203.Spec : Prop :=
  ∀ n, P6234843880190834203.a n = A313738 n

end A313738

/-! ## A313738.P10082126483121372959

`A004396(A315498(n)+n+n)`
-/

namespace A313738.P10082126483121372959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315498 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313738.P10082126483121372959

namespace A313738

/-- `A004396(A315498(n)+n+n)` -/
def P10082126483121372959.Spec : Prop :=
  ∀ n, P10082126483121372959.a n = A313738 n

end A313738

/-! ## A313738.P5412627882567147486

`A004396(A315526(n)+n+n)`
-/

namespace A313738.P5412627882567147486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315526 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313738.P5412627882567147486

namespace A313738

/-- `A004396(A315526(n)+n+n)` -/
def P5412627882567147486.Spec : Prop :=
  ∀ n, P5412627882567147486.a n = A313738 n

end A313738

/-! ## A313738.P12023491409330041419

`A314837(2*n)+1-A004273(2*n+1)`
-/

namespace A313738.P12023491409330041419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314837 (2 * n) + (1 - A004273 (2 * n + 1))

end

end A313738.P12023491409330041419

namespace A313738

/-- `A314837(2*n)+1-A004273(2*n+1)` -/
def P12023491409330041419.Spec : Prop :=
  ∀ n, P12023491409330041419.a n = A313738 n

end A313738

/-! ## A313738.P11801627326058877831

`2*A008574(2*n)-A314149(2*n)`
-/

namespace A313738.P11801627326058877831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314149 (2 * n)

end

end A313738.P11801627326058877831

namespace A313738

/-- `2*A008574(2*n)-A314149(2*n)` -/
def P11801627326058877831.Spec : Prop :=
  ∀ n, P11801627326058877831.a n = A313738 n

end A313738

/-!
# A313739: Coordination sequence Gal.6.159.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313739, the canonical program `A313739.P2057595720554128706` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313739 has offset 0).

The definition of A313739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313739.P10148845473906274144

`A311196(n)+n`
-/

namespace A313739.P10148845473906274144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + (n : ℤ)

end

end A313739.P10148845473906274144

namespace A313739

/-- `A311196(n)+n` -/
def P10148845473906274144.Spec : Prop :=
  ∀ n, P10148845473906274144.a n = A313739 n

end A313739

/-! ## A313739.P1654115341217148223

`A314726(n)+∑[char[or(2, n)]]`
-/

namespace A313739.P1654115341217148223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A313739.P1654115341217148223

namespace A313739

/-- `A314726(n)+∑[char[or(2, n)]]` -/
def P1654115341217148223.Spec : Prop :=
  ∀ n, P1654115341217148223.a n = A313739 n

end A313739

/-! ## A313739.P15394626118557651426

`A313283(n)+A128834(n)`
-/

namespace A313739.P15394626118557651426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313283 n + A128834 n

end

end A313739.P15394626118557651426

namespace A313739

/-- `A313283(n)+A128834(n)` -/
def P15394626118557651426.Spec : Prop :=
  ∀ n, P15394626118557651426.a n = A313739 n

end A313739

/-! ## A313739.P4685861298271441681

`A314726(n)+n-A004525(n)`
-/

namespace A313739.P4685861298271441681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n + ((n : ℤ) - A004525 n)

end

end A313739.P4685861298271441681

namespace A313739

/-- `A314726(n)+n-A004525(n)` -/
def P4685861298271441681.Spec : Prop :=
  ∀ n, P4685861298271441681.a n = A313739 n

end A313739

/-! ## A313739.P6421596647172568688

`A005843(n)-(n-A311196(n))`
-/

namespace A313739.P6421596647172568688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311196 n)

end

end A313739.P6421596647172568688

namespace A313739

/-- `A005843(n)-(n-A311196(n))` -/
def P6421596647172568688.Spec : Prop :=
  ∀ n, P6421596647172568688.a n = A313739 n

end A313739

/-! ## A313739.P4609166369710300338

`A004396(n)+A313583(n)-A004525(n)`
-/

namespace A313739.P4609166369710300338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313583 n - A004525 n)

end

end A313739.P4609166369710300338

namespace A313739

/-- `A004396(n)+A313583(n)-A004525(n)` -/
def P4609166369710300338.Spec : Prop :=
  ∀ n, P4609166369710300338.a n = A313739 n

end A313739

/-! ## A313739.P11151305263518751412

`A314899(n)+A004396(n-A004525(n))`
-/

namespace A313739.P11151305263518751412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313739.P11151305263518751412

namespace A313739

/-- `A314899(n)+A004396(n-A004525(n))` -/
def P11151305263518751412.Spec : Prop :=
  ∀ n, P11151305263518751412.a n = A313739 n

theorem P11151305263518751412.correct : P11151305263518751412.Spec := by
  intro n
  simp only [A313739, Nat.add_sub_cancel, A313739.P11151305263518751412.a, A313739.P2057595720554128706.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A313698, A313698.P13755199689401812010.a, A314899, A314899.P7105760915525544627.a, A128834, A128834.P4430347604004376390.a, A313251, A313251.P8215173569806842908.a, A314841, A314841.P5099753023197914535.a, A312620, A312620.P764241885793850481.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313739

/-! ## A313739.P13388611163713216675

`A314903(n)+A004525(n-A004396(n))`
-/

namespace A313739.P13388611163713216675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313739.P13388611163713216675

namespace A313739

/-- `A314903(n)+A004525(n-A004396(n))` -/
def P13388611163713216675.Spec : Prop :=
  ∀ n, P13388611163713216675.a n = A313739 n

end A313739

/-! ## A313739.P16981422110079288082

`A008458(n)+A008574(n)-A313729(n)`
-/

namespace A313739.P16981422110079288082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313729 n)

end

end A313739.P16981422110079288082

namespace A313739

/-- `A008458(n)+A008574(n)-A313729(n)` -/
def P16981422110079288082.Spec : Prop :=
  ∀ n, P16981422110079288082.a n = A313739 n

end A313739

/-! ## A313739.P2057595720554128706

`A004525(n)+A313698(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313739

/-- `A004525(n)+A313698(n)-A004396(A004525(n))` -/
def P2057595720554128706.Spec : Prop :=
  ∀ n, P2057595720554128706.a n = A313739 n

theorem P2057595720554128706.correct : P2057595720554128706.Spec := by
  intro n
  simp only [A313739]

end A313739

/-! ## A313739.P5830597799468302369

`A314134(n)-A002264(n+1)`
-/

namespace A313739.P5830597799468302369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314134 n - A002264 (n + 1)

end

end A313739.P5830597799468302369

namespace A313739

/-- `A314134(n)-A002264(n+1)` -/
def P5830597799468302369.Spec : Prop :=
  ∀ n, P5830597799468302369.a n = A313739 n

end A313739

/-! ## A313739.P14846584029393603145

`A004396(n)+A314134(n)-n`
-/

namespace A313739.P14846584029393603145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314134 n - (n : ℤ))

end

end A313739.P14846584029393603145

namespace A313739

/-- `A004396(n)+A314134(n)-n` -/
def P14846584029393603145.Spec : Prop :=
  ∀ n, P14846584029393603145.a n = A313739 n

end A313739

/-! ## A313739.P11624264515197354250

`A314134(n)-A042965(n+1)+n`
-/

namespace A313739.P11624264515197354250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314134 n - A042965 (n + 1) + (n : ℤ)

end

end A313739.P11624264515197354250

namespace A313739

/-- `A314134(n)-A042965(n+1)+n` -/
def P11624264515197354250.Spec : Prop :=
  ∀ n, P11624264515197354250.a n = A313739 n

end A313739

/-! ## A313739.P17873315137126313481

`A008576(n)+A314134(n)-A008486(n)`
-/

namespace A313739.P17873315137126313481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314134 n - A008486 n)

end

end A313739.P17873315137126313481

namespace A313739

/-- `A008576(n)+A314134(n)-A008486(n)` -/
def P17873315137126313481.Spec : Prop :=
  ∀ n, P17873315137126313481.a n = A313739 n

end A313739

/-! ## A313739.P1380494789051822759

`A315499(n)-A004525(n)`
-/

namespace A313739.P1380494789051822759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315499 n - A004525 n

end

end A313739.P1380494789051822759

namespace A313739

/-- `A315499(n)-A004525(n)` -/
def P1380494789051822759.Spec : Prop :=
  ∀ n, P1380494789051822759.a n = A313739 n

theorem P1380494789051822759.correct : P1380494789051822759.Spec := by
  intro n
  simp only [A313739, Nat.add_sub_cancel, A313739.P1380494789051822759.a, A313739.P2057595720554128706.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A313698, A313698.P13755199689401812010.a, A315499, A315499.P582473207499707061.a, A128834, A128834.P4430347604004376390.a, A313251, A313251.P8215173569806842908.a, A312620, A312620.P764241885793850481.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313739

/-! ## A313739.P5508671817666681045

`A315499(n)-A047229(n+1)+n`
-/

namespace A313739.P5508671817666681045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315499 n - A047229 (n + 1) + (n : ℤ)

end

end A313739.P5508671817666681045

namespace A313739

/-- `A315499(n)-A047229(n+1)+n` -/
def P5508671817666681045.Spec : Prop :=
  ∀ n, P5508671817666681045.a n = A313739 n

end A313739

/-! ## A313739.P10869959894623208869

`abs(11*n-A315768(n))`
-/

namespace A313739.P10869959894623208869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A315768 n|

end

end A313739.P10869959894623208869

namespace A313739

/-- `abs(11*n-A315768(n))` -/
def P10869959894623208869.Spec : Prop :=
  ∀ n, P10869959894623208869.a n = A313739 n

end A313739

/-! ## A313739.P3921001442287877968

`abs(A008592(n)+n-A315768(n))`
-/

namespace A313739.P3921001442287877968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A315768 n)|

end

end A313739.P3921001442287877968

namespace A313739

/-- `abs(A008592(n)+n-A315768(n))` -/
def P3921001442287877968.Spec : Prop :=
  ∀ n, P3921001442287877968.a n = A313739 n

end A313739

/-! ## A313739.P14421895693568169295

`A004525(A313754(n)+n)+2*n`
-/

namespace A313739.P14421895693568169295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313754 n + (n : ℤ)).toNat + (2 * n : ℤ)

end

end A313739.P14421895693568169295

namespace A313739

/-- `A004525(A313754(n)+n)+2*n` -/
def P14421895693568169295.Spec : Prop :=
  ∀ n, P14421895693568169295.a n = A313739 n

end A313739

/-! ## A313739.P10111834897876310996

`A004525(2*A312950(n)+n)`
-/

namespace A313739.P10111834897876310996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A312950 n + (n : ℤ)).toNat

end

end A313739.P10111834897876310996

namespace A313739

/-- `A004525(2*A312950(n)+n)` -/
def P10111834897876310996.Spec : Prop :=
  ∀ n, P10111834897876310996.a n = A313739 n

end A313739

/-!
# A313740: Coordination sequence Gal.5.309.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313740, the canonical program `A313740.P18216106895098021022` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313740 has offset 0).

The definition of A313740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313740.P18216106895098021022

`ogf((1+3x+x^2+x^5+4x^6+x^7+x^10+3x^11+x^12)/(1-2x+x^2+x^5-2x^6+x^7+x^10-2x^11+x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A313740

/-- `ogf((1+3x+x^2+x^5+4x^6+x^7+x^10+3x^11+x^12)/(1-2x+x^2+x^5-2x^6+x^7+x^10-2x^11+x^12))` -/
def P18216106895098021022.Spec : Prop :=
  ∀ n, P18216106895098021022.a n = A313740 n

theorem P18216106895098021022.correct : P18216106895098021022.Spec := by
  intro n
  simp only [A313740]

end A313740

/-! ## A313740.P13078428194414673201

`A311206(n)+record[A132662(n+1)]`
-/

namespace A313740.P13078428194414673201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311206 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313740.P13078428194414673201

namespace A313740

/-- `A311206(n)+record[A132662(n+1)]` -/
def P13078428194414673201.Spec : Prop :=
  ∀ n, P13078428194414673201.a n = A313740 n

end A313740

/-! ## A313740.P9248425610717806824

`A311207(n)+record[A132662(n+1)]`
-/

namespace A313740.P9248425610717806824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313740.P9248425610717806824

namespace A313740

/-- `A311207(n)+record[A132662(n+1)]` -/
def P9248425610717806824.Spec : Prop :=
  ∀ n, P9248425610717806824.a n = A313740 n

end A313740

/-! ## A313740.P7577907753788689331

`A311212(n)+A000523(A018005(n+1))`
-/

namespace A313740.P7577907753788689331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311212 n + A000523 (A018005 (n + 1)).toNat

end

end A313740.P7577907753788689331

namespace A313740

/-- `A311212(n)+A000523(A018005(n+1))` -/
def P7577907753788689331.Spec : Prop :=
  ∀ n, P7577907753788689331.a n = A313740 n

end A313740

/-! ## A313740.P13571410962832999753

`∑[A182850(A114419(n+1))]`
-/

namespace A313740.P13571410962832999753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A114419 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313740.P13571410962832999753

namespace A313740

/-- `∑[A182850(A114419(n+1))]` -/
def P13571410962832999753.Spec : Prop :=
  ∀ n, P13571410962832999753.a n = A313740 n

end A313740

/-!
# A313741: Coordination sequence Gal.6.495.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313741, there is no canonical definition to state claims against.
-/

/-! ## A313741.P8481797868518811729

`A227389(A081437(n))-n²`
-/

namespace A313741.P8481797868518811729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (A081437 n).toNat - (n ^ 2 : ℤ)

end

end A313741.P8481797868518811729

/-! ## A313741.P4447494868070305100

`A106744(A315564(n)+A048994(n))`
-/

namespace A313741.P4447494868070305100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A315564 n + A048994 n).toNat

end

end A313741.P4447494868070305100

/-! ## A313741.P5525068724209362046

`A008706(n)+Δ[A200213(A147256(n+1))]`
-/

namespace A313741.P5525068724209362046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200213 (A147256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n)

end

end A313741.P5525068724209362046

/-! ## A313741.P10108232219723189408

`A187480(3*n+1)+A001222(A193385(n))`
-/

namespace A313741.P10108232219723189408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187480 (3 * n + 1) + A001222 (A193385 n).toNat

end

end A313741.P10108232219723189408

/-! ## A313741.P11369845249850263440

`eq[A000203(A328025(n+2)), A328050(2*(n+1))]`
-/

namespace A313741.P11369845249850263440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A328025 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328050 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313741.P11369845249850263440

/-!
# A313742: Coordination sequence Gal.6.496.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313742, there is no canonical definition to state claims against.
-/

/-! ## A313742.P1540092483889239245

`A313752(n)-A011731(A106528(n+1))`
-/

namespace A313742.P1540092483889239245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n - A011731 (A106528 (n + 1)).toNat

end

end A313742.P1540092483889239245

/-! ## A313742.P7316911154427218922

`A313752(n)-A011731(A300131(n+1))`
-/

namespace A313742.P7316911154427218922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n - A011731 (A300131 (n + 1)).toNat

end

end A313742.P7316911154427218922

/-! ## A313742.P3638568803346209112

`xor(A314044(n), A353724(A313445(2*n+1)))`
-/

namespace A313742.P3638568803346209112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A314044 n) (A353724 (A313445 (2 * n + 1)).toNat)

end

end A313742.P3638568803346209112

/-! ## A313742.P7049022730773487661

`(A313752(n)-A283991(A300131(n+1)))*A339184(n)!`
-/

namespace A313742.P7049022730773487661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A313752 n - A283991 (A300131 (n + 1)).toNat) * (Nat.factorial (A339184 n).toNat : ℤ)

end

end A313742.P7049022730773487661

/-! ## A313742.P3523262024380195691

`(A313752(n)-A283991(A300131(n+1)))%A106528(n+1)`
-/

namespace A313742.P3523262024380195691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A313752 n - A283991 (A300131 (n + 1)).toNat) (A106528 (n + 1))

end

end A313742.P3523262024380195691

/-!
# A313743: Coordination sequence Gal.6.587.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313743, there is no canonical definition to state claims against.
-/

/-! ## A313743.P13225986006376185825

`record[A314161(n)-A006307(n)]`
-/

namespace A313743.P13225986006376185825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A006307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313743.P13225986006376185825

/-! ## A313743.P16032372498870433772

`A310189(n)+record[A001222(A311586(n))]`
-/

namespace A313743.P16032372498870433772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A311586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310189 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313743.P16032372498870433772

/-! ## A313743.P6533524578979136024

`A312519(n)+A023416(A018480(n+1))`
-/

namespace A313743.P6533524578979136024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312519 n + A023416 (A018480 (n + 1)).toNat

end

end A313743.P6533524578979136024

/-! ## A313743.P11664373771556022662

`A312126(n)+A001221(A107649(n+1))`
-/

namespace A313743.P11664373771556022662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312126 n + A001221 (A107649 (n + 1)).toNat

end

end A313743.P11664373771556022662

/-! ## A313743.P12431210501526397140

`A327695(A142866(n+1))+A313719(n)`
-/

namespace A313743.P12431210501526397140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (A142866 (n + 1)).toNat + A313719 n

end

end A313743.P12431210501526397140

/-!
# A313744: Coordination sequence Gal.6.345.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313744, the canonical program `A313744.P13494615761715777669` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313744 has offset 0).

The definition of A313744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313744.P18143404129002404957

`A314893(n)+∑[A022003(n)]`
-/

namespace A313744.P18143404129002404957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313744.P18143404129002404957

namespace A313744

/-- `A314893(n)+∑[A022003(n)]` -/
def P18143404129002404957.Spec : Prop :=
  ∀ n, P18143404129002404957.a n = A313744 n

end A313744

/-! ## A313744.P16363741888011445406

`A313619(n)+Δ[A011865(n)]`
-/

namespace A313744.P16363741888011445406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313619 n + (f1 (n + 1) - f1 n)

end

end A313744.P16363741888011445406

namespace A313744

/-- `A313619(n)+Δ[A011865(n)]` -/
def P16363741888011445406.Spec : Prop :=
  ∀ n, P16363741888011445406.a n = A313744 n

end A313744

/-! ## A313744.P12497309797346317001

`A314893(n)+A002264(n+1)`
-/

namespace A313744.P12497309797346317001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + A002264 (n + 1)

end

end A313744.P12497309797346317001

namespace A313744

/-- `A314893(n)+A002264(n+1)` -/
def P12497309797346317001.Spec : Prop :=
  ∀ n, P12497309797346317001.a n = A313744 n

end A313744

/-! ## A313744.P4548868800860678630

`A314893(n)+n-A004396(n)`
-/

namespace A313744.P4548868800860678630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + ((n : ℤ) - A004396 n)

end

end A313744.P4548868800860678630

namespace A313744

/-- `A314893(n)+n-A004396(n)` -/
def P4548868800860678630.Spec : Prop :=
  ∀ n, P4548868800860678630.a n = A313744 n

end A313744

/-! ## A313744.P1243487888487480432

`A314912(n)+A004525(n-A004396(n))`
-/

namespace A313744.P1243487888487480432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313744.P1243487888487480432

namespace A313744

/-- `A314912(n)+A004525(n-A004396(n))` -/
def P1243487888487480432.Spec : Prop :=
  ∀ n, P1243487888487480432.a n = A313744 n

end A313744

/-! ## A313744.P15326073193133161518

`A008486(n)+A314893(n)-A008576(n)`
-/

namespace A313744.P15326073193133161518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314893 n - A008576 n)

end

end A313744.P15326073193133161518

namespace A313744

/-- `A008486(n)+A314893(n)-A008576(n)` -/
def P15326073193133161518.Spec : Prop :=
  ∀ n, P15326073193133161518.a n = A313744 n

end A313744

/-! ## A313744.P5808846876924895392

`A005843(A311257(n))+n-A311312(n)`
-/

namespace A313744.P5808846876924895392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311257 n).toNat + ((n : ℤ) - A311312 n)

end

end A313744.P5808846876924895392

namespace A313744

/-- `A005843(A311257(n))+n-A311312(n)` -/
def P5808846876924895392.Spec : Prop :=
  ∀ n, P5808846876924895392.a n = A313744 n

end A313744

/-! ## A313744.P13494615761715777669

`A219529(n)-A004396(n-A004525(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313744

/-- `A219529(n)-A004396(n-A004525(n))` -/
def P13494615761715777669.Spec : Prop :=
  ∀ n, P13494615761715777669.a n = A313744 n

theorem P13494615761715777669.correct : P13494615761715777669.Spec := by
  intro n
  simp only [A313744]

end A313744

/-! ## A313744.P15020026832601349232

`A004525(n)+A313693(n)-A004525(A004396(n))`
-/

namespace A313744.P15020026832601349232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313693 n - A004525 (A004396 n).toNat)

end

end A313744.P15020026832601349232

namespace A313744

/-- `A004525(n)+A313693(n)-A004525(A004396(n))` -/
def P15020026832601349232.Spec : Prop :=
  ∀ n, P15020026832601349232.a n = A313744 n

end A313744

/-! ## A313744.P10932812911960106193

`A314683(n)+n-A004525(A004396(n))`
-/

namespace A313744.P10932812911960106193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313744.P10932812911960106193

namespace A313744

/-- `A314683(n)+n-A004525(A004396(n))` -/
def P10932812911960106193.Spec : Prop :=
  ∀ n, P10932812911960106193.a n = A313744 n

end A313744

/-! ## A313744.P5618407923782420695

`abs(A008592(n)-A313726(n))`
-/

namespace A313744.P5618407923782420695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313726 n|

end

end A313744.P5618407923782420695

namespace A313744

/-- `abs(A008592(n)-A313726(n))` -/
def P5618407923782420695.Spec : Prop :=
  ∀ n, P5618407923782420695.a n = A313744 n

end A313744

/-! ## A313744.P17183057733413714779

`floor(A010015(n)/A313726(n))`
-/

namespace A313744.P17183057733413714779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313726 n : ℚ)⌋

end

end A313744.P17183057733413714779

namespace A313744

/-- `floor(A010015(n)/A313726(n))` -/
def P17183057733413714779.Spec : Prop :=
  ∀ n, P17183057733413714779.a n = A313744 n

end A313744

/-! ## A313744.P1485540053451441186

`A008458(n)+A008574(n)-A313726(n)`
-/

namespace A313744.P1485540053451441186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313726 n)

end

end A313744.P1485540053451441186

namespace A313744

/-- `A008458(n)+A008574(n)-A313726(n)` -/
def P1485540053451441186.Spec : Prop :=
  ∀ n, P1485540053451441186.a n = A313744 n

end A313744

/-! ## A313744.P601022026695650920

`A004525(n)+A313872(n)-A004396(n)`
-/

namespace A313744.P601022026695650920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313872 n - A004396 n)

end

end A313744.P601022026695650920

namespace A313744

/-- `A004525(n)+A313872(n)-A004396(n)` -/
def P601022026695650920.Spec : Prop :=
  ∀ n, P601022026695650920.a n = A313744 n

end A313744

/-! ## A313744.P3979270504361295631

`∑[A131735(n)]+A315476(n)-n`
-/

namespace A313744.P3979270504361295631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315476 n - (n : ℤ))

end

end A313744.P3979270504361295631

namespace A313744

/-- `∑[A131735(n)]+A315476(n)-n` -/
def P3979270504361295631.Spec : Prop :=
  ∀ n, P3979270504361295631.a n = A313744 n

end A313744

/-! ## A313744.P8071942824218262114

`A314216(n)-∑[A021913(n)]`
-/

namespace A313744.P8071942824218262114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313744.P8071942824218262114

namespace A313744

/-- `A314216(n)-∑[A021913(n)]` -/
def P8071942824218262114.Spec : Prop :=
  ∀ n, P8071942824218262114.a n = A313744 n

end A313744

/-! ## A313744.P3311625560453582147

`A314216(n)-Δ[A011848(n)]`
-/

namespace A313744.P3311625560453582147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n - (f1 (n + 1) - f1 n)

end

end A313744.P3311625560453582147

namespace A313744

/-- `A314216(n)-Δ[A011848(n)]` -/
def P3311625560453582147.Spec : Prop :=
  ∀ n, P3311625560453582147.a n = A313744 n

end A313744

/-! ## A313744.P16747991117066741615

`A314216(n)-A004524(n+1)`
-/

namespace A313744.P16747991117066741615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n - A004524 (n + 1)

end

end A313744.P16747991117066741615

namespace A313744

/-- `A314216(n)-A004524(n+1)` -/
def P16747991117066741615.Spec : Prop :=
  ∀ n, P16747991117066741615.a n = A313744 n

end A313744

/-! ## A313744.P14405361925531591914

`A315260(n)-A134667(n)`
-/

namespace A313744.P14405361925531591914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315260 n - A134667 n

end

end A313744.P14405361925531591914

namespace A313744

/-- `A315260(n)-A134667(n)` -/
def P14405361925531591914.Spec : Prop :=
  ∀ n, P14405361925531591914.a n = A313744 n

end A313744

/-! ## A313744.P13377314403597258511

`A315540(n)-A004396(n)`
-/

namespace A313744.P13377314403597258511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A004396 n

end

end A313744.P13377314403597258511

namespace A313744

/-- `A315540(n)-A004396(n)` -/
def P13377314403597258511.Spec : Prop :=
  ∀ n, P13377314403597258511.a n = A313744 n

end A313744

/-!
# A313745: Coordination sequence Gal.6.199.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313745, the canonical program `A313745.P10063043799170297099` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313745 has offset 0).

The definition of A313745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313745.P10063043799170297099

`abs(A008592(n)-A313722(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313745

/-- `abs(A008592(n)-A313722(n))` -/
def P10063043799170297099.Spec : Prop :=
  ∀ n, P10063043799170297099.a n = A313745 n

theorem P10063043799170297099.correct : P10063043799170297099.Spec := by
  intro n
  simp only [A313745]

end A313745

/-! ## A313745.P12014832801784523449

`A008706(n)+Δ[A011875(n)]`
-/

namespace A313745.P12014832801784523449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n)

end

end A313745.P12014832801784523449

namespace A313745

/-- `A008706(n)+Δ[A011875(n)]` -/
def P12014832801784523449.Spec : Prop :=
  ∀ n, P12014832801784523449.a n = A313745 n

end A313745

/-! ## A313745.P5848085977996442789

`A313620(n)+Δ[A011864(n)]`
-/

namespace A313745.P5848085977996442789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313620 n + (f1 (n + 1) - f1 n)

end

end A313745.P5848085977996442789

namespace A313745

/-- `A313620(n)+Δ[A011864(n)]` -/
def P5848085977996442789.Spec : Prop :=
  ∀ n, P5848085977996442789.a n = A313745 n

end A313745

/-! ## A313745.P4722024909216163555

`2*A008706(n)-A313722(n)`
-/

namespace A313745.P4722024909216163555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313722 n

end

end A313745.P4722024909216163555

namespace A313745

/-- `2*A008706(n)-A313722(n)` -/
def P4722024909216163555.Spec : Prop :=
  ∀ n, P4722024909216163555.a n = A313745 n

end A313745

/-! ## A313745.P3405982197592097156

`A310501(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A313745.P3405982197592097156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310501 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A313745.P3405982197592097156

namespace A313745

/-- `A310501(2*n)/(4*n+1-A004273(2*n))` -/
def P3405982197592097156.Spec : Prop :=
  ∀ n, P3405982197592097156.a n = (A313745 n : ℚ)

end A313745

/-! ## A313745.P5002293037324840766

`A310501(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A313745.P5002293037324840766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310501 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A313745.P5002293037324840766

namespace A313745

/-- `A310501(2*n)/(4*n+2-A004277(2*n))` -/
def P5002293037324840766.Spec : Prop :=
  ∀ n, P5002293037324840766.a n = (A313745 n : ℚ)

end A313745

/-! ## A313745.P13263047987095910091

`A008458(n)+A008574(n)-A313722(n)`
-/

namespace A313745.P13263047987095910091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313722 n)

end

end A313745.P13263047987095910091

namespace A313745

/-- `A008458(n)+A008574(n)-A313722(n)` -/
def P13263047987095910091.Spec : Prop :=
  ∀ n, P13263047987095910091.a n = A313745 n

end A313745

/-! ## A313745.P11169715222265218650

`A005843(A008706(n))-A313722(n)`
-/

namespace A313745.P11169715222265218650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313722 n

end

end A313745.P11169715222265218650

namespace A313745

/-- `A005843(A008706(n))-A313722(n)` -/
def P11169715222265218650.Spec : Prop :=
  ∀ n, P11169715222265218650.a n = A313745 n

end A313745

/-! ## A313745.P17438062080334433660

`A004396(A314225(n)+2*n)`
-/

namespace A313745.P17438062080334433660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314225 n + (2 * n : ℤ)).toNat

end

end A313745.P17438062080334433660

namespace A313745

/-- `A004396(A314225(n)+2*n)` -/
def P17438062080334433660.Spec : Prop :=
  ∀ n, P17438062080334433660.a n = A313745 n

end A313745

/-! ## A313745.P5713630640069537832

`A004396(A314225(n)+n+n)`
-/

namespace A313745.P5713630640069537832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314225 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313745.P5713630640069537832

namespace A313745

/-- `A004396(A314225(n)+n+n)` -/
def P5713630640069537832.Spec : Prop :=
  ∀ n, P5713630640069537832.a n = A313745 n

end A313745

/-! ## A313745.P5309142811451741350

`A313045(2*n)-4*n`
-/

namespace A313745.P5309142811451741350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 (2 * n) - (4 * n : ℤ)

end

end A313745.P5309142811451741350

namespace A313745

/-- `A313045(2*n)-4*n` -/
def P5309142811451741350.Spec : Prop :=
  ∀ n, P5309142811451741350.a n = A313745 n

end A313745

/-! ## A313745.P1958205930796529993

`2*A008574(2*n)-A315491(2*n)`
-/

namespace A313745.P1958205930796529993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315491 (2 * n)

end

end A313745.P1958205930796529993

namespace A313745

/-- `2*A008574(2*n)-A315491(2*n)` -/
def P1958205930796529993.Spec : Prop :=
  ∀ n, P1958205930796529993.a n = A313745 n

end A313745

/-! ## A313745.P3332176235511074304

`A180004(2*A314894(n))-A314894(n)`
-/

namespace A313745.P3332176235511074304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (2 * A314894 n).toNat - A314894 n

end

end A313745.P3332176235511074304

namespace A313745

/-- `A180004(2*A314894(n))-A314894(n)` -/
def P3332176235511074304.Spec : Prop :=
  ∀ n, P3332176235511074304.a n = A313745 n

end A313745

/-! ## A313745.P3502059363184145183

`A004525(A310499(2*n))`
-/

namespace A313745.P3502059363184145183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310499 (2 * n)).toNat

end

end A313745.P3502059363184145183

namespace A313745

/-- `A004525(A310499(2*n))` -/
def P3502059363184145183.Spec : Prop :=
  ∀ n, P3502059363184145183.a n = A313745 n

end A313745

/-! ## A313745.P13604124362601966916

`A004525(A310501(2*n))`
-/

namespace A313745.P13604124362601966916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310501 (2 * n)).toNat

end

end A313745.P13604124362601966916

namespace A313745

/-- `A004525(A310501(2*n))` -/
def P13604124362601966916.Spec : Prop :=
  ∀ n, P13604124362601966916.a n = A313745 n

end A313745

/-! ## A313745.P7489771093994425500

`A004526(A310501(2*n)+1)`
-/

namespace A313745.P7489771093994425500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310501 (2 * n) + 1).toNat

end

end A313745.P7489771093994425500

namespace A313745

/-- `A004526(A310501(2*n)+1)` -/
def P7489771093994425500.Spec : Prop :=
  ∀ n, P7489771093994425500.a n = A313745 n

end A313745

/-! ## A313745.P13766960115556057029

`A008619(A310501(2*n)-1)`
-/

namespace A313745.P13766960115556057029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A310501 (2 * n) - 1).toNat

end

end A313745.P13766960115556057029

namespace A313745

/-- `A008619(A310501(2*n)-1)` -/
def P13766960115556057029.Spec : Prop :=
  ∀ n, P13766960115556057029.a n = A313745 n

end A313745

/-! ## A313745.P11060640962230764356

`A004525(A314190(2*n)-A004396(n))`
-/

namespace A313745.P11060640962230764356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314190 (2 * n) - A004396 n).toNat

end

end A313745.P11060640962230764356

namespace A313745

/-- `A004525(A314190(2*n)-A004396(n))` -/
def P11060640962230764356.Spec : Prop :=
  ∀ n, P11060640962230764356.a n = A313745 n

end A313745

/-! ## A313745.P12010202901633646644

`A008458(A008574(n))-A313560(A008574(n))`
-/

namespace A313745.P12010202901633646644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A313560 (A008574 n).toNat

end

end A313745.P12010202901633646644

namespace A313745

/-- `A008458(A008574(n))-A313560(A008574(n))` -/
def P12010202901633646644.Spec : Prop :=
  ∀ n, P12010202901633646644.a n = A313745 n

end A313745

/-!
# A313746: Coordination sequence Gal.5.113.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313746, the canonical program `A313746.P691207156092889607` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313746 has offset 0).

The definition of A313746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313746.P691207156092889607

`A312908(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313746

/-- `A312908(n)+A004396(n)` -/
def P691207156092889607.Spec : Prop :=
  ∀ n, P691207156092889607.a n = A313746 n

theorem P691207156092889607.correct : P691207156092889607.Spec := by
  intro n
  simp only [A313746]

end A313746

/-! ## A313746.P14039907129948522295

`abs(A008592(n)-A313721(n))`
-/

namespace A313746.P14039907129948522295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313721 n|

end

end A313746.P14039907129948522295

namespace A313746

/-- `abs(A008592(n)-A313721(n))` -/
def P14039907129948522295.Spec : Prop :=
  ∀ n, P14039907129948522295.a n = A313746 n

end A313746

/-! ## A313746.P3177753722623795497

`A313580(n)+Δ[A011862(n)]`
-/

namespace A313746.P3177753722623795497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + (f1 (n + 1) - f1 n)

end

end A313746.P3177753722623795497

namespace A313746

/-- `A313580(n)+Δ[A011862(n)]` -/
def P3177753722623795497.Spec : Prop :=
  ∀ n, P3177753722623795497.a n = A313746 n

end A313746

/-! ## A313746.P10671912767356256901

`A313894(n)-Δ[A011862(n)]`
-/

namespace A313746.P10671912767356256901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - (f1 (n + 1) - f1 n)

end

end A313746.P10671912767356256901

namespace A313746

/-- `A313894(n)-Δ[A011862(n)]` -/
def P10671912767356256901.Spec : Prop :=
  ∀ n, P10671912767356256901.a n = A313746 n

end A313746

/-! ## A313746.P8915586405999902827

`A004525(A311344(n))+3*n`
-/

namespace A313746.P8915586405999902827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311344 n).toNat + (3 * n : ℤ)

end

end A313746.P8915586405999902827

namespace A313746

/-- `A004525(A311344(n))+3*n` -/
def P8915586405999902827.Spec : Prop :=
  ∀ n, P8915586405999902827.a n = A313746 n

end A313746

/-! ## A313746.P12609698017159549732

`(A311344(n)+A008458(n))/2`
-/

namespace A313746.P12609698017159549732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311344 n + A008458 n : ℚ) / 2

end

end A313746.P12609698017159549732

namespace A313746

/-- `(A311344(n)+A008458(n))/2` -/
def P12609698017159549732.Spec : Prop :=
  ∀ n, P12609698017159549732.a n = (A313746 n : ℚ)

end A313746

/-! ## A313746.P8300285661634657388

`A008618(A004273(n))+5*n`
-/

namespace A313746.P8300285661634657388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A004273 n).toNat + (5 * n : ℤ)

end

end A313746.P8300285661634657388

namespace A313746

/-- `A008618(A004273(n))+5*n` -/
def P8300285661634657388.Spec : Prop :=
  ∀ n, P8300285661634657388.a n = A313746 n

end A313746

/-! ## A313746.P18402819279032351029

`A313979(n)-Δ[2*A011862(n)]`
-/

namespace A313746.P18402819279032351029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313979 n - (f1 (n + 1) - f1 n)

end

end A313746.P18402819279032351029

namespace A313746

/-- `A313979(n)-Δ[2*A011862(n)]` -/
def P18402819279032351029.Spec : Prop :=
  ∀ n, P18402819279032351029.a n = A313746 n

end A313746

/-! ## A313746.P3503775979859854011

`round(A008706(n)+A008576(n)/24)`
-/

namespace A313746.P3503775979859854011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008706 n : ℚ) + (A008576 n : ℚ) / 24)

end

end A313746.P3503775979859854011

namespace A313746

/-- `round(A008706(n)+A008576(n)/24)` -/
def P3503775979859854011.Spec : Prop :=
  ∀ n, P3503775979859854011.a n = A313746 n

end A313746

/-! ## A313746.P10452922409366133704

`A312908(n)+A002264(2*n+1)`
-/

namespace A313746.P10452922409366133704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312908 n + A002264 (2 * n + 1)

end

end A313746.P10452922409366133704

namespace A313746

/-- `A312908(n)+A002264(2*n+1)` -/
def P10452922409366133704.Spec : Prop :=
  ∀ n, P10452922409366133704.a n = A313746 n

theorem P10452922409366133704.correct : P10452922409366133704.Spec := by
  intro n
  simp only [A313746, Nat.add_sub_cancel, A313746.P10452922409366133704.a, A313746.P691207156092889607.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A312908, A312908.P18385197356515419689.a, A042965, A042965.P10256174339092268817.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313746

/-! ## A313746.P6531709274063281830

`A315495(n)-A004396(A004396(n))`
-/

namespace A313746.P6531709274063281830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A004396 (A004396 n).toNat

end

end A313746.P6531709274063281830

namespace A313746

/-- `A315495(n)-A004396(A004396(n))` -/
def P6531709274063281830.Spec : Prop :=
  ∀ n, P6531709274063281830.a n = A313746 n

theorem P6531709274063281830.correct : P6531709274063281830.Spec := by
  intro n
  simp only [A313746, Nat.add_sub_cancel, A313746.P6531709274063281830.a, A313746.P691207156092889607.a, A004396, A004396.P17032557045289780609.a, A312908, A312908.P18385197356515419689.a, A315495, A315495.P15314594483852604152.a, A042965, A042965.P10256174339092268817.a, A298786, A298786.P14431482331037710348.a, A313580, A313580.P11382536486156642147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313746

/-! ## A313746.P17461895061693828580

`A311458(n)+A004396(A004396(2*n))`
-/

namespace A313746.P17461895061693828580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A004396 (A004396 (2 * n)).toNat

end

end A313746.P17461895061693828580

namespace A313746

/-- `A311458(n)+A004396(A004396(2*n))` -/
def P17461895061693828580.Spec : Prop :=
  ∀ n, P17461895061693828580.a n = A313746 n

end A313746

/-! ## A313746.P1401121225477346051

`A298786(n)+A004396(A004396(4*n))`
-/

namespace A313746.P1401121225477346051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A004396 (A004396 (4 * n)).toNat

end

end A313746.P1401121225477346051

namespace A313746

/-- `A298786(n)+A004396(A004396(4*n))` -/
def P1401121225477346051.Spec : Prop :=
  ∀ n, P1401121225477346051.a n = A313746 n

end A313746

/-! ## A313746.P11593666118259155141

`A008458(n)+A008574(n)-A313721(n)`
-/

namespace A313746.P11593666118259155141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313721 n)

end

end A313746.P11593666118259155141

namespace A313746

/-- `A008458(n)+A008574(n)-A313721(n)` -/
def P11593666118259155141.Spec : Prop :=
  ∀ n, P11593666118259155141.a n = A313746 n

end A313746

/-! ## A313746.P17125221255440404757

`A219529(n)-A004396(n-A004396(n))`
-/

namespace A313746.P17125221255440404757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313746.P17125221255440404757

namespace A313746

/-- `A219529(n)-A004396(n-A004396(n))` -/
def P17125221255440404757.Spec : Prop :=
  ∀ n, P17125221255440404757.a n = A313746 n

end A313746

/-! ## A313746.P1989098780218502225

`A019425(2*n+1)+A342851(2*(n+1))-A342851(n+2)`
-/

namespace A313746.P1989098780218502225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n + 1) + (A342851 (2 * (n + 1)) - A342851 (n + 2))

end

end A313746.P1989098780218502225

namespace A313746

/-- `A019425(2*n+1)+A342851(2*(n+1))-A342851(n+2)` -/
def P1989098780218502225.Spec : Prop :=
  ∀ n, P1989098780218502225.a n = A313746 n

end A313746

/-! ## A313746.P1238254902138632897

`A298786(n)+A004396(A005843(n)+A004396(n))`
-/

namespace A313746.P1238254902138632897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A004396 (A005843 n + A004396 n).toNat

end

end A313746.P1238254902138632897

namespace A313746

/-- `A298786(n)+A004396(A005843(n)+A004396(n))` -/
def P1238254902138632897.Spec : Prop :=
  ∀ n, P1238254902138632897.a n = A313746 n

end A313746

/-! ## A313746.P7366988147470248834

`A004396(n)+A313580(n)-A004396(A004396(n))`
-/

namespace A313746.P7366988147470248834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313580 n - A004396 (A004396 n).toNat)

end

end A313746.P7366988147470248834

namespace A313746

/-- `A004396(n)+A313580(n)-A004396(A004396(n))` -/
def P7366988147470248834.Spec : Prop :=
  ∀ n, P7366988147470248834.a n = A313746 n

theorem P7366988147470248834.correct : P7366988147470248834.Spec := by
  intro n
  simp only [A313746, Nat.add_sub_cancel, A313746.P7366988147470248834.a, A313746.P691207156092889607.a, A004396, A004396.P17032557045289780609.a, A312908, A312908.P18385197356515419689.a, A313580, A313580.P11382536486156642147.a, A042965, A042965.P10256174339092268817.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313746

/-! ## A313746.P7872197415953992594

`A315546(n)-A004396(n)`
-/

namespace A313746.P7872197415953992594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - A004396 n

end

end A313746.P7872197415953992594

namespace A313746

/-- `A315546(n)-A004396(n)` -/
def P7872197415953992594.Spec : Prop :=
  ∀ n, P7872197415953992594.a n = A313746 n

theorem P7872197415953992594.correct : P7872197415953992594.Spec := by
  intro n
  simp only [A313746, Nat.add_sub_cancel, A313746.P7872197415953992594.a, A313746.P691207156092889607.a, A004396, A004396.P17032557045289780609.a, A312908, A312908.P18385197356515419689.a, A315546, A315546.P1451297170771805050.a, A042965, A042965.P10256174339092268817.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313746

/-! ## A313746.P409722463316177931

`A004396(A314736(n))+2*n`
-/

namespace A313746.P409722463316177931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314736 n).toNat + (2 * n : ℤ)

end

end A313746.P409722463316177931

namespace A313746

/-- `A004396(A314736(n))+2*n` -/
def P409722463316177931.Spec : Prop :=
  ∀ n, P409722463316177931.a n = A313746 n

end A313746

/-!
# A313747: Coordination sequence Gal.6.200.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313747, the canonical program `A313747.P13675197079359879746` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313747 has offset 0).

The definition of A313747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313747.P18309524545411416661

`ogf((1+4x+5x^2+4x^3+x^4+x^5+x^6+4x^7+5x^8+4x^9+x^10)/(1-x-x^3+x^4+x^6-x^7-x^9+x^10))`
-/

namespace A313747.P18309524545411416661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 5, 4, 1, 1, 1, 4, 5, 4, 1] [1, -1, 0, -1, 1, 0, 1, -1, 0, -1, 1] n

end

end A313747.P18309524545411416661

namespace A313747

/-- `ogf((1+4x+5x^2+4x^3+x^4+x^5+x^6+4x^7+5x^8+4x^9+x^10)/(1-x-x^3+x^4+x^6-x^7-x^9+x^10))` -/
def P18309524545411416661.Spec : Prop :=
  ∀ n, P18309524545411416661.a n = A313747 n

end A313747

/-! ## A313747.P10028793060415623036

`A311257(n)+n`
-/

namespace A313747.P10028793060415623036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + (n : ℤ)

end

end A313747.P10028793060415623036

namespace A313747

/-- `A311257(n)+n` -/
def P10028793060415623036.Spec : Prop :=
  ∀ n, P10028793060415623036.a n = A313747 n

end A313747

/-! ## A313747.P13675197079359879746

`A312909(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313747

/-- `A312909(n)+A004396(n)` -/
def P13675197079359879746.Spec : Prop :=
  ∀ n, P13675197079359879746.a n = A313747 n

theorem P13675197079359879746.correct : P13675197079359879746.Spec := by
  intro n
  simp only [A313747]

end A313747

/-! ## A313747.P16221938523507189273

`A313057(n)+A004525(n)`
-/

namespace A313747.P16221938523507189273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A004525 n

end

end A313747.P16221938523507189273

namespace A313747

/-- `A313057(n)+A004525(n)` -/
def P16221938523507189273.Spec : Prop :=
  ∀ n, P16221938523507189273.a n = A313747 n

end A313747

/-! ## A313747.P2972838739065492478

`A314688(n)+∑[A131735(n)]`
-/

namespace A313747.P2972838739065492478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313747.P2972838739065492478

namespace A313747

/-- `A314688(n)+∑[A131735(n)]` -/
def P2972838739065492478.Spec : Prop :=
  ∀ n, P2972838739065492478.a n = A313747 n

end A313747

/-! ## A313747.P17391406082025757597

`A314899(n)+A002264(n+1)`
-/

namespace A313747.P17391406082025757597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A002264 (n + 1)

end

end A313747.P17391406082025757597

namespace A313747

/-- `A314899(n)+A002264(n+1)` -/
def P17391406082025757597.Spec : Prop :=
  ∀ n, P17391406082025757597.a n = A313747 n

end A313747

/-! ## A313747.P12201581332755445541

`A314899(n)+n-A004396(n)`
-/

namespace A313747.P12201581332755445541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + ((n : ℤ) - A004396 n)

end

end A313747.P12201581332755445541

namespace A313747

/-- `A314899(n)+n-A004396(n)` -/
def P12201581332755445541.Spec : Prop :=
  ∀ n, P12201581332755445541.a n = A313747 n

end A313747

/-! ## A313747.P16868289946270322289

`A005843(n)-(n-A311257(n))`
-/

namespace A313747.P16868289946270322289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311257 n)

end

end A313747.P16868289946270322289

namespace A313747

/-- `A005843(n)-(n-A311257(n))` -/
def P16868289946270322289.Spec : Prop :=
  ∀ n, P16868289946270322289.a n = A313747 n

end A313747

/-! ## A313747.P8651940702465991163

`abs(A008591(n)+n-A313720(n))`
-/

namespace A313747.P8651940702465991163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A313720 n)|

end

end A313747.P8651940702465991163

namespace A313747

/-- `abs(A008591(n)+n-A313720(n))` -/
def P8651940702465991163.Spec : Prop :=
  ∀ n, P8651940702465991163.a n = A313747 n

end A313747

/-! ## A313747.P16045916337993095533

`A313057(n)+n-Δ[A011848(n)]`
-/

namespace A313747.P16045916337993095533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313747.P16045916337993095533

namespace A313747

/-- `A313057(n)+n-Δ[A011848(n)]` -/
def P16045916337993095533.Spec : Prop :=
  ∀ n, P16045916337993095533.a n = A313747 n

end A313747

/-! ## A313747.P10050644541362829663

`A312909(n)+A002264(2*n+1)`
-/

namespace A313747.P10050644541362829663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + A002264 (2 * n + 1)

end

end A313747.P10050644541362829663

namespace A313747

/-- `A312909(n)+A002264(2*n+1)` -/
def P10050644541362829663.Spec : Prop :=
  ∀ n, P10050644541362829663.a n = A313747 n

theorem P10050644541362829663.correct : P10050644541362829663.Spec := by
  intro n
  simp only [A313747, Nat.add_sub_cancel, A313747.P10050644541362829663.a, A313747.P13675197079359879746.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A312909, A312909.P9930151025395677949.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313747

/-! ## A313747.P16703143438340055439

`A314912(n)+A004396(n-A004525(n))`
-/

namespace A313747.P16703143438340055439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313747.P16703143438340055439

namespace A313747

/-- `A314912(n)+A004396(n-A004525(n))` -/
def P16703143438340055439.Spec : Prop :=
  ∀ n, P16703143438340055439.a n = A313747 n

end A313747

/-! ## A313747.P3050157608738671974

`A008458(n)+A008574(n)-A313720(n)`
-/

namespace A313747.P3050157608738671974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313720 n)

end

end A313747.P3050157608738671974

namespace A313747

/-- `A008458(n)+A008574(n)-A313720(n)` -/
def P3050157608738671974.Spec : Prop :=
  ∀ n, P3050157608738671974.a n = A313747 n

end A313747

/-! ## A313747.P2566169742283404488

`A008486(n)+A314899(n)-A008576(n)`
-/

namespace A313747.P2566169742283404488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314899 n - A008576 n)

end

end A313747.P2566169742283404488

namespace A313747

/-- `A008486(n)+A314899(n)-A008576(n)` -/
def P2566169742283404488.Spec : Prop :=
  ∀ n, P2566169742283404488.a n = A313747 n

end A313747

/-! ## A313747.P6278286684004108709

`A219529(n)-A004525(n-A004396(n))`
-/

namespace A313747.P6278286684004108709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313747.P6278286684004108709

namespace A313747

/-- `A219529(n)-A004525(n-A004396(n))` -/
def P6278286684004108709.Spec : Prop :=
  ∀ n, P6278286684004108709.a n = A313747 n

end A313747

/-! ## A313747.P14581671290362762410

`A004525(A311312(n))+3*n`
-/

namespace A313747.P14581671290362762410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311312 n).toNat + (3 * n : ℤ)

end

end A313747.P14581671290362762410

namespace A313747

/-- `A004525(A311312(n))+3*n` -/
def P14581671290362762410.Spec : Prop :=
  ∀ n, P14581671290362762410.a n = A313747 n

end A313747

/-! ## A313747.P8576565724221440768

`A004525(n)+A313879(n)-A004396(n)`
-/

namespace A313747.P8576565724221440768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313879 n - A004396 n)

end

end A313747.P8576565724221440768

namespace A313747

/-- `A004525(n)+A313879(n)-A004396(n)` -/
def P8576565724221440768.Spec : Prop :=
  ∀ n, P8576565724221440768.a n = A313747 n

end A313747

/-! ## A313747.P1440788373681939230

`A315479(n)-A047424(n+1)+n`
-/

namespace A313747.P1440788373681939230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315479 n - A047424 (n + 1) + (n : ℤ)

end

end A313747.P1440788373681939230

namespace A313747

/-- `A315479(n)-A047424(n+1)+n` -/
def P1440788373681939230.Spec : Prop :=
  ∀ n, P1440788373681939230.a n = A313747 n

end A313747

/-! ## A313747.P13436960414745387595

`A313924(n)-A047513(n+1)+n`
-/

namespace A313747.P13436960414745387595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A047513 (n + 1) + (n : ℤ)

end

end A313747.P13436960414745387595

namespace A313747

/-- `A313924(n)-A047513(n+1)+n` -/
def P13436960414745387595.Spec : Prop :=
  ∀ n, P13436960414745387595.a n = A313747 n

end A313747

/-! ## A313747.P6519959822883714108

`A004525(A004396(n))+A313924(n)-A004396(n)`
-/

namespace A313747.P6519959822883714108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313924 n - A004396 n)

end

end A313747.P6519959822883714108

namespace A313747

/-- `A004525(A004396(n))+A313924(n)-A004396(n)` -/
def P6519959822883714108.Spec : Prop :=
  ∀ n, P6519959822883714108.a n = A313747 n

end A313747

/-!
# A313748: Coordination sequence Gal.5.226.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313748, there is no canonical definition to state claims against.
-/

/-! ## A313748.P3100418550215816507

`A315478(n)-A071625(A000970(n+5))`
-/

namespace A313748.P3100418550215816507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315478 n - A071625 (A000970 (n + 5)).toNat

end

end A313748.P3100418550215816507

/-! ## A313748.P10200915531126653721

`A301708(n)-A257990(A101509(n))`
-/

namespace A313748.P10200915531126653721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A257990 (A101509 n).toNat

end

end A313748.P10200915531126653721

/-! ## A313748.P2402132095046394036

`A008574(n)+∑[A001221(A229034(n+1))]`
-/

namespace A313748.P2402132095046394036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A229034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313748.P2402132095046394036

/-! ## A313748.P11955696556644406380

`A259899(A009942(n))`
-/

namespace A313748.P11955696556644406380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A009942 n).toNat

end

end A313748.P11955696556644406380

/-! ## A313748.P3138962610875231945

`A070939(A295461(n))+A008586(n)`
-/

namespace A313748.P3138962610875231945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A295461 n).toNat + A008586 n

end

end A313748.P3138962610875231945

/-!
# A313749: Coordination sequence Gal.5.222.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313749, there is no canonical definition to state claims against.
-/

/-! ## A313749.P10139280563831494868

`A313744(n)+A031346(A358590(n+1))`
-/

namespace A313749.P10139280563831494868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313744 n + A031346 (A358590 (n + 1)).toNat

end

end A313749.P10139280563831494868

/-! ## A313749.P14643020641557021894

`A314161(n)-A001221(A003430(n))`
-/

namespace A313749.P14643020641557021894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A001221 (A003430 n).toNat

end

end A313749.P14643020641557021894

/-! ## A313749.P60671505543459311

`A008706(n)+A001222(A146673(n+1))`
-/

namespace A313749.P60671505543459311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A001222 (A146673 (n + 1)).toNat

end

end A313749.P60671505543459311

/-! ## A313749.P11354394178838257281

`A301678(n)+A285949(A059802(n+1))`
-/

namespace A313749.P11354394178838257281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n + A285949 (A059802 (n + 1)).toNat

end

end A313749.P11354394178838257281

/-! ## A313749.P18444661559195047223

`A301678(n)+A064911(A300011(n))`
-/

namespace A313749.P18444661559195047223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n + A064911 (A300011 n).toNat

end

end A313749.P18444661559195047223

/-!
# A313750: Coordination sequence Gal.5.260.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313750, there is no canonical definition to state claims against.
-/

/-! ## A313750.P5542227894288660572

`xor(A225099(A060444(n)), A313786(n))`
-/

namespace A313750.P5542227894288660572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A225099 (A060444 n).toNat) (A313786 n)

end

end A313750.P5542227894288660572

/-! ## A313750.P14185239137614387850

`A301678(n)+A137893(A041572(n))`
-/

namespace A313750.P14185239137614387850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n + A137893 (A041572 n).toNat

end

end A313750.P14185239137614387850

/-! ## A313750.P13119492140713185951

`A313123(n)+A001221(A173422(n))`
-/

namespace A313750.P13119492140713185951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313123 n + A001221 (A173422 n).toNat

end

end A313750.P13119492140713185951

/-! ## A313750.P6625179528127103503

`A301678(n)+A102677(A096746(n))`
-/

namespace A313750.P6625179528127103503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n + A102677 (A096746 n).toNat

end

end A313750.P6625179528127103503

/-! ## A313750.P5399386731235539236

`A250120(n)+A102669(A183118(n))`
-/

namespace A313750.P5399386731235539236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A102669 (A183118 n).toNat

end

end A313750.P5399386731235539236

/-!
# A313751: Coordination sequence Gal.6.496.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313751, there is no canonical definition to state claims against.
-/

/-! ## A313751.P13130073377470226362

`A313752(n)-A266243(A006720(n))`
-/

namespace A313751.P13130073377470226362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n - A266243 (A006720 n).toNat

end

end A313751.P13130073377470226362

/-! ## A313751.P5343399525015538357

`A008706(n)+A005091(A120588(n))`
-/

namespace A313751.P5343399525015538357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A005091 (A120588 n).toNat

end

end A313751.P5343399525015538357

/-! ## A313751.P1953721977257806921

`A313895(n)-A038189(A003418(n))`
-/

namespace A313751.P1953721977257806921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313895 n - A038189 (A003418 n).toNat

end

end A313751.P1953721977257806921

/-! ## A313751.P4085409433687046718

`A008706(n)+A001222(A147163(n+2))`
-/

namespace A313751.P4085409433687046718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A001222 (A147163 (n + 2)).toNat

end

end A313751.P4085409433687046718

/-! ## A313751.P15607653234152742488

`∑[A001222(∑[A025619(3*(n+1))])]`
-/

namespace A313751.P15607653234152742488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025619 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313751.P15607653234152742488

/-!
# A313752: Coordination sequence Gal.5.300.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313752, the canonical program `A313752.P1655055158517470603` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313752 has offset 0).

The definition of A313752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313752.P10093952216650408228

`abs(10*n-(record[(2-(-1)^n)*(n+1)]-comp[xor(2, 6*n)+3]))`
-/

namespace A313752.P10093952216650408228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (-1) ^ n) * (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ))|

end

end A313752.P10093952216650408228

namespace A313752

/-- `abs(10*n-(record[(2-(-1)^n)*(n+1)]-comp[xor(2, 6*n)+3]))` -/
def P10093952216650408228.Spec : Prop :=
  ∀ n, P10093952216650408228.a n = A313752 n

end A313752

/-! ## A313752.P5265234735228464263

`A311289(n)+n`
-/

namespace A313752.P5265234735228464263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + (n : ℤ)

end

end A313752.P5265234735228464263

namespace A313752

/-- `A311289(n)+n` -/
def P5265234735228464263.Spec : Prop :=
  ∀ n, P5265234735228464263.a n = A313752 n

end A313752

/-! ## A313752.P10603865609959089467

`A151988(n)+A008574(n)`
-/

namespace A313752.P10603865609959089467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + A008574 n

end

end A313752.P10603865609959089467

namespace A313752

/-- `A151988(n)+A008574(n)` -/
def P10603865609959089467.Spec : Prop :=
  ∀ n, P10603865609959089467.a n = A313752 n

end A313752

/-! ## A313752.P16838439170499766800

`A315672(n)-A253262(n)`
-/

namespace A313752.P16838439170499766800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315672 n - A253262 n

end

end A313752.P16838439170499766800

namespace A313752

/-- `A315672(n)-A253262(n)` -/
def P16838439170499766800.Spec : Prop :=
  ∀ n, P16838439170499766800.a n = A313752 n

end A313752

/-! ## A313752.P16466284429475269867

`A151988(n)+A004277(2*n)`
-/

namespace A313752.P16466284429475269867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + A004277 (2 * n)

end

end A313752.P16466284429475269867

namespace A313752

/-- `A151988(n)+A004277(2*n)` -/
def P16466284429475269867.Spec : Prop :=
  ∀ n, P16466284429475269867.a n = A313752 n

end A313752

/-! ## A313752.P5500863441153356425

`(A311384(n)+A008458(n))/2`
-/

namespace A313752.P5500863441153356425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311384 n + A008458 n : ℚ) / 2

end

end A313752.P5500863441153356425

namespace A313752

/-- `(A311384(n)+A008458(n))/2` -/
def P5500863441153356425.Spec : Prop :=
  ∀ n, P5500863441153356425.a n = (A313752 n : ℚ)

end A313752

/-! ## A313752.P4983597953624059543

`A008486(n)+A151988(n)+n`
-/

namespace A313752.P4983597953624059543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A151988 n + (n : ℤ))

end

end A313752.P4983597953624059543

namespace A313752

/-- `A008486(n)+A151988(n)+n` -/
def P4983597953624059543.Spec : Prop :=
  ∀ n, P4983597953624059543.a n = A313752 n

end A313752

/-! ## A313752.P1551220106106791792

`A008706(n)+A151988(n)-n`
-/

namespace A313752.P1551220106106791792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A151988 n - (n : ℤ))

end

end A313752.P1551220106106791792

namespace A313752

/-- `A008706(n)+A151988(n)-n` -/
def P1551220106106791792.Spec : Prop :=
  ∀ n, P1551220106106791792.a n = A313752 n

end A313752

/-! ## A313752.P7241487117668300215

`A314670(n)+n-A330025(n)`
-/

namespace A313752.P7241487117668300215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + ((n : ℤ) - A330025 n)

end

end A313752.P7241487117668300215

namespace A313752

/-- `A314670(n)+n-A330025(n)` -/
def P7241487117668300215.Spec : Prop :=
  ∀ n, P7241487117668300215.a n = A313752 n

end A313752

/-! ## A313752.P7801268213755200942

`A151988(n)+A004275(2*n+1)`
-/

namespace A313752.P7801268213755200942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + A004275 (2 * n + 1)

end

end A313752.P7801268213755200942

namespace A313752

/-- `A151988(n)+A004275(2*n+1)` -/
def P7801268213755200942.Spec : Prop :=
  ∀ n, P7801268213755200942.a n = A313752 n

end A313752

/-! ## A313752.P6038960843856054688

`A151988(n)+A019425(2*n+1)`
-/

namespace A313752.P6038960843856054688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + A019425 (2 * n + 1)

end

end A313752.P6038960843856054688

namespace A313752

/-- `A151988(n)+A019425(2*n+1)` -/
def P6038960843856054688.Spec : Prop :=
  ∀ n, P6038960843856054688.a n = A313752 n

end A313752

/-! ## A313752.P11953043834584130916

`A311958(n)+A057354(2*n+1)`
-/

namespace A313752.P11953043834584130916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 n + A057354 (2 * n + 1)

end

end A313752.P11953043834584130916

namespace A313752

/-- `A311958(n)+A057354(2*n+1)` -/
def P11953043834584130916.Spec : Prop :=
  ∀ n, P11953043834584130916.a n = A313752 n

end A313752

/-! ## A313752.P296002618274086607

`A022144(n)+A151988(n)-4*n`
-/

namespace A313752.P296002618274086607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + (A151988 n - (4 * n : ℤ))

end

end A313752.P296002618274086607

namespace A313752

/-- `A022144(n)+A151988(n)-4*n` -/
def P296002618274086607.Spec : Prop :=
  ∀ n, P296002618274086607.a n = A313752 n

end A313752

/-! ## A313752.P6070578885819133979

`record[A080512(n+1)]+A151988(n)+n`
-/

namespace A313752.P6070578885819133979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A151988 n + (n : ℤ))

end

end A313752.P6070578885819133979

namespace A313752

/-- `record[A080512(n+1)]+A151988(n)+n` -/
def P6070578885819133979.Spec : Prop :=
  ∀ n, P6070578885819133979.a n = A313752 n

end A313752

/-! ## A313752.P11997326439423935978

`A004273(n)+A151988(n)+A005408(n)`
-/

namespace A313752.P11997326439423935978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A151988 n + A005408 n)

end

end A313752.P11997326439423935978

namespace A313752

/-- `A004273(n)+A151988(n)+A005408(n)` -/
def P11997326439423935978.Spec : Prop :=
  ∀ n, P11997326439423935978.a n = A313752 n

end A313752

/-! ## A313752.P7380980884592086854

`A008458(n)+A008574(n)-A313719(n)`
-/

namespace A313752.P7380980884592086854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313719 n)

end

end A313752.P7380980884592086854

namespace A313752

/-- `A008458(n)+A008574(n)-A313719(n)` -/
def P7380980884592086854.Spec : Prop :=
  ∀ n, P7380980884592086854.a n = A313752 n

end A313752

/-! ## A313752.P9674595183433454177

`A004396(A151988(n))+A301726(n)-n`
-/

namespace A313752.P9674595183433454177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A151988 n).toNat + (A301726 n - (n : ℤ))

end

end A313752.P9674595183433454177

namespace A313752

/-- `A004396(A151988(n))+A301726(n)-n` -/
def P9674595183433454177.Spec : Prop :=
  ∀ n, P9674595183433454177.a n = A313752 n

end A313752

/-! ## A313752.P1655055158517470603

`A314111(n)-A330025(n-A330025(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313752

/-- `A314111(n)-A330025(n-A330025(n))` -/
def P1655055158517470603.Spec : Prop :=
  ∀ n, P1655055158517470603.a n = A313752 n

theorem P1655055158517470603.correct : P1655055158517470603.Spec := by
  intro n
  simp only [A313752]

end A313752

/-! ## A313752.P13027036647723367328

`A330025(A330025(n)+n)+A313154(n)`
-/

namespace A313752.P13027036647723367328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A313154 n

end

end A313752.P13027036647723367328

namespace A313752

/-- `A330025(A330025(n)+n)+A313154(n)` -/
def P13027036647723367328.Spec : Prop :=
  ∀ n, P13027036647723367328.a n = A313752 n

end A313752

/-! ## A313752.P986923575782026849

`A315468(n)-A330025(n)`
-/

namespace A313752.P986923575782026849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n - A330025 n

end

end A313752.P986923575782026849

namespace A313752

/-- `A315468(n)-A330025(n)` -/
def P986923575782026849.Spec : Prop :=
  ∀ n, P986923575782026849.a n = A313752 n

end A313752

/-!
# A313753: Coordination sequence Gal.6.253.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313753, the canonical program `A313753.P1026158450170667954` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313753 has offset 0).

The definition of A313753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313753.P1026158450170667954

`abs(A008592(n)-A313718(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A313753

/-- `abs(A008592(n)-A313718(n))` -/
def P1026158450170667954.Spec : Prop :=
  ∀ n, P1026158450170667954.a n = A313753 n

theorem P1026158450170667954.correct : P1026158450170667954.Spec := by
  intro n
  simp only [A313753]

end A313753

/-! ## A313753.P1169742893956379044

`(A311385(n)+A008458(n))/2`
-/

namespace A313753.P1169742893956379044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311385 n + A008458 n : ℚ) / 2

end

end A313753.P1169742893956379044

namespace A313753

/-- `(A311385(n)+A008458(n))/2` -/
def P1169742893956379044.Spec : Prop :=
  ∀ n, P1169742893956379044.a n = (A313753 n : ℚ)

end A313753

/-! ## A313753.P9910724782563337280

`2*A008706(n)-A313718(n)`
-/

namespace A313753.P9910724782563337280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313718 n

end

end A313753.P9910724782563337280

namespace A313753

/-- `2*A008706(n)-A313718(n)` -/
def P9910724782563337280.Spec : Prop :=
  ∀ n, P9910724782563337280.a n = A313753 n

end A313753

/-! ## A313753.P9875206487880122932

`A008458(n)+A008574(n)-A313718(n)`
-/

namespace A313753.P9875206487880122932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313718 n)

end

end A313753.P9875206487880122932

namespace A313753

/-- `A008458(n)+A008574(n)-A313718(n)` -/
def P9875206487880122932.Spec : Prop :=
  ∀ n, P9875206487880122932.a n = A313753 n

end A313753

/-! ## A313753.P15434976135928112766

`A005843(n)+A005843(A008574(n))-A313718(n)`
-/

namespace A313753.P15434976135928112766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313718 n)

end

end A313753.P15434976135928112766

namespace A313753

/-- `A005843(n)+A005843(A008574(n))-A313718(n)` -/
def P15434976135928112766.Spec : Prop :=
  ∀ n, P15434976135928112766.a n = A313753 n

end A313753

/-! ## A313753.P4933086123294279306

`A311385(n)+A001281(A008458(n)-A311385(n))`
-/

namespace A313753.P4933086123294279306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n + A001281 (A008458 n - A311385 n).toNat

end

end A313753.P4933086123294279306

namespace A313753

/-- `A311385(n)+A001281(A008458(n)-A311385(n))` -/
def P4933086123294279306.Spec : Prop :=
  ∀ n, P4933086123294279306.a n = A313753 n

end A313753

/-! ## A313753.P13820799467904060435

`A311385(n)+A004525(A008458(n)-A311385(n))`
-/

namespace A313753.P13820799467904060435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n + A004525 (A008458 n - A311385 n).toNat

end

end A313753.P13820799467904060435

namespace A313753

/-- `A311385(n)+A004525(A008458(n)-A311385(n))` -/
def P13820799467904060435.Spec : Prop :=
  ∀ n, P13820799467904060435.a n = A313753 n

end A313753

/-! ## A313753.P2466754531829467276

`A008458(n)-A004526(A008458(n)-A311385(n))`
-/

namespace A313753.P2466754531829467276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A311385 n).toNat

end

end A313753.P2466754531829467276

namespace A313753

/-- `A008458(n)-A004526(A008458(n)-A311385(n))` -/
def P2466754531829467276.Spec : Prop :=
  ∀ n, P2466754531829467276.a n = A313753 n

end A313753

/-! ## A313753.P13416404666619643859

`3*n+A004525(A311385(n))`
-/

namespace A313753.P13416404666619643859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A004525 (A311385 n).toNat

end

end A313753.P13416404666619643859

namespace A313753

/-- `3*n+A004525(A311385(n))` -/
def P13416404666619643859.Spec : Prop :=
  ∀ n, P13416404666619643859.a n = A313753 n

end A313753

/-! ## A313753.P14916304935719335097

`A004525(A311385(n))+A008588(n)/2`
-/

namespace A313753.P14916304935719335097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A311385 n).toNat : ℚ) + (A008588 n : ℚ) / 2

end

end A313753.P14916304935719335097

namespace A313753

/-- `A004525(A311385(n))+A008588(n)/2` -/
def P14916304935719335097.Spec : Prop :=
  ∀ n, P14916304935719335097.a n = (A313753 n : ℚ)

end A313753

/-! ## A313753.P12533869282818193923

`A008486(n)+A004526(A311385(n))`
-/

namespace A313753.P12533869282818193923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A311385 n).toNat

end

end A313753.P12533869282818193923

namespace A313753

/-- `A008486(n)+A004526(A311385(n))` -/
def P12533869282818193923.Spec : Prop :=
  ∀ n, P12533869282818193923.a n = A313753 n

end A313753

/-! ## A313753.P11828217430551262681

`A004396(A314741(n))+2*n`
-/

namespace A313753.P11828217430551262681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314741 n).toNat + (2 * n : ℤ)

end

end A313753.P11828217430551262681

namespace A313753

/-- `A004396(A314741(n))+2*n` -/
def P11828217430551262681.Spec : Prop :=
  ∀ n, P11828217430551262681.a n = A313753 n

end A313753

/-! ## A313753.P6487618451803294230

`A005843(A008706(n))-A313718(n)`
-/

namespace A313753.P6487618451803294230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313718 n

end

end A313753.P6487618451803294230

namespace A313753

/-- `A005843(A008706(n))-A313718(n)` -/
def P6487618451803294230.Spec : Prop :=
  ∀ n, P6487618451803294230.a n = A313753 n

end A313753

/-! ## A313753.P8746629154837743588

`A005843(A008574(n)+n)-A313718(n)`
-/

namespace A313753.P8746629154837743588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313718 n

end

end A313753.P8746629154837743588

namespace A313753

/-- `A005843(A008574(n)+n)-A313718(n)` -/
def P8746629154837743588.Spec : Prop :=
  ∀ n, P8746629154837743588.a n = A313753 n

end A313753

/-! ## A313753.P4768989760096561791

`A004396(A004277(n)+A314741(n)+n)`
-/

namespace A313753.P4768989760096561791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004277 n + (A314741 n + (n : ℤ))).toNat

end

end A313753.P4768989760096561791

namespace A313753

/-- `A004396(A004277(n)+A314741(n)+n)` -/
def P4768989760096561791.Spec : Prop :=
  ∀ n, P4768989760096561791.a n = A313753 n

end A313753

/-! ## A313753.P6613322942598483066

`A001281(A311385(n)+A008458(n))`
-/

namespace A313753.P6613322942598483066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A311385 n + A008458 n).toNat

end

end A313753.P6613322942598483066

namespace A313753

/-- `A001281(A311385(n)+A008458(n))` -/
def P6613322942598483066.Spec : Prop :=
  ∀ n, P6613322942598483066.a n = A313753 n

end A313753

/-! ## A313753.P16098864009243519156

`A004525(A311385(n)+A008458(n))`
-/

namespace A313753.P16098864009243519156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311385 n + A008458 n).toNat

end

end A313753.P16098864009243519156

namespace A313753

/-- `A004525(A311385(n)+A008458(n))` -/
def P16098864009243519156.Spec : Prop :=
  ∀ n, P16098864009243519156.a n = A313753 n

end A313753

/-! ## A313753.P3629819776594670003

`A004526(A311385(n)+A008458(n))`
-/

namespace A313753.P3629819776594670003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311385 n + A008458 n).toNat

end

end A313753.P3629819776594670003

namespace A313753

/-- `A004526(A311385(n)+A008458(n))` -/
def P3629819776594670003.Spec : Prop :=
  ∀ n, P3629819776594670003.a n = A313753 n

end A313753

/-! ## A313753.P4626610359951242931

`A004525(A311385(n)+A008588(n))`
-/

namespace A313753.P4626610359951242931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311385 n + A008588 n).toNat

end

end A313753.P4626610359951242931

namespace A313753

/-- `A004525(A311385(n)+A008588(n))` -/
def P4626610359951242931.Spec : Prop :=
  ∀ n, P4626610359951242931.a n = A313753 n

end A313753

/-!
# A313754: Coordination sequence Gal.4.142.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313754, the canonical program `A313754.P6499129976907502351` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313754 has offset 0).

The definition of A313754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313754.P10604805588364433861

`ogf((1+3x+x^2+x^4+4x^5+x^6+x^8+3x^9+x^10)/(1-2x+x^2+x^4-2x^5+x^6+x^8-2x^9+x^10))`
-/

namespace A313754.P10604805588364433861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 0, 1, 4, 1, 0, 1, 3, 1] [1, -2, 1, 0, 1, -2, 1, 0, 1, -2, 1] n

end

end A313754.P10604805588364433861

namespace A313754

/-- `ogf((1+3x+x^2+x^4+4x^5+x^6+x^8+3x^9+x^10)/(1-2x+x^2+x^4-2x^5+x^6+x^8-2x^9+x^10))` -/
def P10604805588364433861.Spec : Prop :=
  ∀ n, P10604805588364433861.a n = A313754 n

end A313754

/-! ## A313754.P15229526724601198003

`A311312(n)+n`
-/

namespace A313754.P15229526724601198003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + (n : ℤ)

end

end A313754.P15229526724601198003

namespace A313754

/-- `A311312(n)+n` -/
def P15229526724601198003.Spec : Prop :=
  ∀ n, P15229526724601198003.a n = A313754 n

end A313754

/-! ## A313754.P6792125076265372744

`A313064(n)+A004525(n)`
-/

namespace A313754.P6792125076265372744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313064 n + A004525 n

end

end A313754.P6792125076265372744

namespace A313754

/-- `A313064(n)+A004525(n)` -/
def P6792125076265372744.Spec : Prop :=
  ∀ n, P6792125076265372744.a n = A313754 n

end A313754

/-! ## A313754.P10667516664077920481

`abs(A008592(n)-A313717(n))`
-/

namespace A313754.P10667516664077920481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313717 n|

end

end A313754.P10667516664077920481

namespace A313754

/-- `abs(A008592(n)-A313717(n))` -/
def P10667516664077920481.Spec : Prop :=
  ∀ n, P10667516664077920481.a n = A313754 n

end A313754

/-! ## A313754.P14857978574395193936

`A314903(n)+Δ[A130518(n)]`
-/

namespace A313754.P14857978574395193936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n + (f1 (n + 1) - f1 n)

end

end A313754.P14857978574395193936

namespace A313754

/-- `A314903(n)+Δ[A130518(n)]` -/
def P14857978574395193936.Spec : Prop :=
  ∀ n, P14857978574395193936.a n = A313754 n

end A313754

/-! ## A313754.P6499129976907502351

`A314903(n)+A002264(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313754

/-- `A314903(n)+A002264(n+1)` -/
def P6499129976907502351.Spec : Prop :=
  ∀ n, P6499129976907502351.a n = A313754 n

theorem P6499129976907502351.correct : P6499129976907502351.Spec := by
  intro n
  simp only [A313754]

end A313754

/-! ## A313754.P12042876302057087175

`2*A008706(n)-A313717(n)`
-/

namespace A313754.P12042876302057087175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313717 n

end

end A313754.P12042876302057087175

namespace A313754

/-- `2*A008706(n)-A313717(n)` -/
def P12042876302057087175.Spec : Prop :=
  ∀ n, P12042876302057087175.a n = A313754 n

end A313754

/-! ## A313754.P2097544755196022003

`A314903(n)+n-A004396(n)`
-/

namespace A313754.P2097544755196022003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n + ((n : ℤ) - A004396 n)

end

end A313754.P2097544755196022003

namespace A313754

/-- `A314903(n)+n-A004396(n)` -/
def P2097544755196022003.Spec : Prop :=
  ∀ n, P2097544755196022003.a n = A313754 n

end A313754

/-! ## A313754.P4735631884868090192

`A005843(n)-(n-A311312(n))`
-/

namespace A313754.P4735631884868090192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311312 n)

end

end A313754.P4735631884868090192

namespace A313754

/-- `A005843(n)-(n-A311312(n))` -/
def P4735631884868090192.Spec : Prop :=
  ∀ n, P4735631884868090192.a n = A313754 n

end A313754

/-! ## A313754.P3005869405916365787

`A008458(n)+A008574(n)-A313717(n)`
-/

namespace A313754.P3005869405916365787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313717 n)

end

end A313754.P3005869405916365787

namespace A313754

/-- `A008458(n)+A008574(n)-A313717(n)` -/
def P3005869405916365787.Spec : Prop :=
  ∀ n, P3005869405916365787.a n = A313754 n

end A313754

/-! ## A313754.P7544570497630731120

`A008486(n)+A314903(n)-A008576(n)`
-/

namespace A313754.P7544570497630731120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314903 n - A008576 n)

end

end A313754.P7544570497630731120

namespace A313754

/-- `A008486(n)+A314903(n)-A008576(n)` -/
def P7544570497630731120.Spec : Prop :=
  ∀ n, P7544570497630731120.a n = A313754 n

end A313754

/-! ## A313754.P11516851736718775053

`A128834(n)+A301697(n)-A128834(A004525(n))`
-/

namespace A313754.P11516851736718775053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A301697 n - A128834 (A004525 n).toNat)

end

end A313754.P11516851736718775053

namespace A313754

/-- `A128834(n)+A301697(n)-A128834(A004525(n))` -/
def P11516851736718775053.Spec : Prop :=
  ∀ n, P11516851736718775053.a n = A313754 n

end A313754

/-! ## A313754.P15504462137606926448

`A314737(n)+Δ[A011848(n)]`
-/

namespace A313754.P15504462137606926448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n + (f1 (n + 1) - f1 n)

end

end A313754.P15504462137606926448

namespace A313754

/-- `A314737(n)+Δ[A011848(n)]` -/
def P15504462137606926448.Spec : Prop :=
  ∀ n, P15504462137606926448.a n = A313754 n

end A313754

/-! ## A313754.P12154482196719654916

`A314737(n)+A004524(n+1)`
-/

namespace A313754.P12154482196719654916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n + A004524 (n + 1)

end

end A313754.P12154482196719654916

namespace A313754

/-- `A314737(n)+A004524(n+1)` -/
def P12154482196719654916.Spec : Prop :=
  ∀ n, P12154482196719654916.a n = A313754 n

end A313754

/-! ## A313754.P18098295279616812433

`A314737(n)+n-A004525(n)`
-/

namespace A313754.P18098295279616812433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n + ((n : ℤ) - A004525 n)

end

end A313754.P18098295279616812433

namespace A313754

/-- `A314737(n)+n-A004525(n)` -/
def P18098295279616812433.Spec : Prop :=
  ∀ n, P18098295279616812433.a n = A313754 n

end A313754

/-! ## A313754.P11771469967522715591

`A313290(n)+A128834(n)`
-/

namespace A313754.P11771469967522715591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313290 n + A128834 n

end

end A313754.P11771469967522715591

namespace A313754

/-- `A313290(n)+A128834(n)` -/
def P11771469967522715591.Spec : Prop :=
  ∀ n, P11771469967522715591.a n = A313754 n

end A313754

/-! ## A313754.P15918054935841118679

`A313290(n)-A010892(n+2)`
-/

namespace A313754.P15918054935841118679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313290 n - A010892 (n + 2)

end

end A313754.P15918054935841118679

namespace A313754

/-- `A313290(n)-A010892(n+2)` -/
def P15918054935841118679.Spec : Prop :=
  ∀ n, P15918054935841118679.a n = A313754 n

end A313754

/-! ## A313754.P3324950536786261857

`A313930(n)-A047513(n+1)+n`
-/

namespace A313754.P3324950536786261857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - A047513 (n + 1) + (n : ℤ)

end

end A313754.P3324950536786261857

namespace A313754

/-- `A313930(n)-A047513(n+1)+n` -/
def P3324950536786261857.Spec : Prop :=
  ∀ n, P3324950536786261857.a n = A313754 n

end A313754

/-! ## A313754.P12475614805644122427

`A004525(A004396(n))+A313930(n)-A004396(n)`
-/

namespace A313754.P12475614805644122427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313930 n - A004396 n)

end

end A313754.P12475614805644122427

namespace A313754

/-- `A004525(A004396(n))+A313930(n)-A004396(n)` -/
def P12475614805644122427.Spec : Prop :=
  ∀ n, P12475614805644122427.a n = A313754 n

end A313754

/-! ## A313754.P13897975876407548485

`A004396(A314742(n))+2*n`
-/

namespace A313754.P13897975876407548485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314742 n).toNat + (2 * n : ℤ)

end

end A313754.P13897975876407548485

namespace A313754

/-- `A004396(A314742(n))+2*n` -/
def P13897975876407548485.Spec : Prop :=
  ∀ n, P13897975876407548485.a n = A313754 n

end A313754

/-!
# A313755: Coordination sequence Gal.3.37.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313755, there is no canonical definition to state claims against.
-/

/-! ## A313755.P6470173959251368059

`A301712(n)-A105700(A065601(n))`
-/

namespace A313755.P6470173959251368059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n - A105700 (A065601 n).toNat

end

end A313755.P6470173959251368059

/-! ## A313755.P1273830576260343236

`A311249(n)+A001222(A348050(n+1))`
-/

namespace A313755.P1273830576260343236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311249 n + A001222 (A348050 (n + 1)).toNat

end

end A313755.P1273830576260343236

/-! ## A313755.P10164783091886156309

`A311316(n)+lt[A314843(n+1), A310991(n+4)]`
-/

namespace A313755.P10164783091886156309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310991 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311316 n + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A313755.P10164783091886156309

/-! ## A313755.P547206690316482834

`A160755(A314136(n))`
-/

namespace A313755.P547206690316482834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A314136 n).toNat

end

end A313755.P547206690316482834

/-! ## A313755.P12746279200439993312

`A313589(n)+A001221(A032264(n))`
-/

namespace A313755.P12746279200439993312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 n + A001221 (A032264 n).toNat

end

end A313755.P12746279200439993312

/-!
# A313756: Coordination sequence Gal.6.603.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313756, there is no canonical definition to state claims against.
-/

/-! ## A313756.P12808700744563605321

`or(A001222(A006318(n)), A313729(n))`
-/

namespace A313756.P12808700744563605321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A006318 n).toNat) (A313729 n)

end

end A313756.P12808700744563605321

/-! ## A313756.P8218046039897899327

`or(A072491(A005212(n)), A313729(n))`
-/

namespace A313756.P8218046039897899327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072491 (A005212 n).toNat) (A313729 n)

end

end A313756.P8218046039897899327

/-! ## A313756.P17462543175304800437

`or(A101000(A002212(n)), A310410(n))`
-/

namespace A313756.P17462543175304800437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101000 (A002212 n).toNat) (A310410 n)

end

end A313756.P17462543175304800437

/-! ## A313756.P11324034046678463605

`A288601(2*n+1)+A056239(A288583(n+1))`
-/

namespace A313756.P11324034046678463605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288601 (2 * n + 1) + A056239 (A288583 (n + 1)).toNat

end

end A313756.P11324034046678463605

/-!
# A313757: Coordination sequence Gal.5.332.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313757, there is no canonical definition to state claims against.
-/

/-! ## A313757.P6170409880192832421

`A089282(A212087(n))+A004976(n)`
-/

namespace A313757.P6170409880192832421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089282 (A212087 n).toNat + A004976 n

end

end A313757.P6170409880192832421

/-! ## A313757.P5984519677223228748

`A315279(n)-A181674(A023490(n))`
-/

namespace A313757.P5984519677223228748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315279 n - A181674 (A023490 n).toNat

end

end A313757.P5984519677223228748

/-! ## A313757.P1221779202935983279

`A314952(n)+A003285(A253677(n+1))`
-/

namespace A313757.P1221779202935983279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314952 n + A003285 (A253677 (n + 1)).toNat

end

end A313757.P1221779202935983279

/-! ## A313757.P7864635034055065188

`or(5*n, A191255(A041496(n)))`
-/

namespace A313757.P7864635034055065188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (5 * n : ℤ) (A191255 (A041496 n).toNat)

end

end A313757.P7864635034055065188

/-! ## A313757.P12382846098739519530

`A068056(2*n+1)+A000120(2*n^4)`
-/

namespace A313757.P12382846098739519530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068056 (2 * n + 1) + A000120 (2 * n ^ 4)

end

end A313757.P12382846098739519530

/-!
# A313758: Coordination sequence Gal.6.602.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313758, there is no canonical definition to state claims against.
-/

/-! ## A313758.P8657208553512919546

`A313760(n)-A025465(A209553(n+1))`
-/

namespace A313758.P8657208553512919546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313760 n - A025465 (A209553 (n + 1)).toNat

end

end A313758.P8657208553512919546

/-! ## A313758.P16255514727411010043

`A313760(n)-A055641(A285529(n+1))`
-/

namespace A313758.P16255514727411010043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313760 n - A055641 (A285529 (n + 1)).toNat

end

end A313758.P16255514727411010043

/-! ## A313758.P8123271506086880700

`A313760(n)-A115971(A056456(n+1))`
-/

namespace A313758.P8123271506086880700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313760 n - A115971 (A056456 (n + 1)).toNat

end

end A313758.P8123271506086880700

/-! ## A313758.P5189490519830199145

`A313759(n)-A185284(A033627(n+1))`
-/

namespace A313758.P5189490519830199145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313759 n - A185284 (A033627 (n + 1)).toNat

end

end A313758.P5189490519830199145

/-! ## A313758.P491020981274275120

`A313759(n)-A073490(A056456(n+1)+1)`
-/

namespace A313758.P491020981274275120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313759 n - A073490 (A056456 (n + 1) + 1).toNat

end

end A313758.P491020981274275120

/-!
# A313759: Coordination sequence Gal.6.576.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313759, there is no canonical definition to state claims against.
-/

/-! ## A313759.P16511004754366340576

`A313758(n)+A185284(A033627(n+1))`
-/

namespace A313759.P16511004754366340576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n + A185284 (A033627 (n + 1)).toNat

end

end A313759.P16511004754366340576

/-! ## A313759.P3112395814135732511

`A313760(n)-A025465(A056456(n+1))`
-/

namespace A313759.P3112395814135732511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313760 n - A025465 (A056456 (n + 1)).toNat

end

end A313759.P3112395814135732511

/-! ## A313759.P6634772204470688915

`A379669(A185237(2*n))+A313758(n)`
-/

namespace A313759.P6634772204470688915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 (A185237 (2 * n)).toNat + A313758 n

end

end A313759.P6634772204470688915

/-! ## A313759.P13844656923378736097

`A313758(n)+A073490(A056456(n+1)+1)`
-/

namespace A313759.P13844656923378736097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n + A073490 (A056456 (n + 1) + 1).toNat

end

end A313759.P13844656923378736097

/-! ## A313759.P5496194713522567923

`A313758(n)+A185284(A038107(n))`
-/

namespace A313759.P5496194713522567923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n + A185284 (A038107 n).toNat

end

end A313759.P5496194713522567923

/-!
# A313760: Coordination sequence Gal.6.575.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313760, there is no canonical definition to state claims against.
-/

/-! ## A313760.P9028639441215187726

`A313758(n)+A025465(A209553(n+1))`
-/

namespace A313760.P9028639441215187726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n + A025465 (A209553 (n + 1)).toNat

end

end A313760.P9028639441215187726

/-! ## A313760.P1523857386346027380

`A313759(n)+A025465(A056456(n+1))`
-/

namespace A313760.P1523857386346027380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313759 n + A025465 (A056456 (n + 1)).toNat

end

end A313760.P1523857386346027380

/-! ## A313760.P12544243219221312648

`A313758(n)+A115971(A056456(n+1))`
-/

namespace A313760.P12544243219221312648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n + A115971 (A056456 (n + 1)).toNat

end

end A313760.P12544243219221312648

/-! ## A313760.P533010855671593050

`A313758(n)+A185284(A268335(2*(n+2)))`
-/

namespace A313760.P533010855671593050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n + A185284 (A268335 (2 * (n + 2))).toNat

end

end A313760.P533010855671593050

/-! ## A313760.P3896552303191242813

`A313758(n)+A185284(3*n+4)`
-/

namespace A313760.P3896552303191242813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n + A185284 (3 * n + 4)

end

end A313760.P3896552303191242813

/-!
# A313761: Coordination sequence Gal.6.495.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313761, there is no canonical definition to state claims against.
-/

/-! ## A313761.P15976854643856954333

`A250120(n)+A129308(A004300(n+1))`
-/

namespace A313761.P15976854643856954333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A129308 (A004300 (n + 1)).toNat

end

end A313761.P15976854643856954333

/-! ## A313761.P4759022816431163731

`A005843(A004525(n))+A031285(A310298(n))-1`
-/

namespace A313761.P4759022816431163731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004525 n).toNat + (A031285 (A310298 n).toNat - 1)

end

end A313761.P4759022816431163731

/-!
# A313762: Coordination sequence Gal.6.571.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313762, there is no canonical definition to state claims against.
-/

/-! ## A313762.P13503879784706181458

`A064706(n)+A061071(A008490(n))`
-/

namespace A313762.P13503879784706181458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 n + A061071 (A008490 n).toNat

end

end A313762.P13503879784706181458

/-! ## A313762.P16858557495917102196

`A064706(n)+A061071(A008500(n))`
-/

namespace A313762.P16858557495917102196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 n + A061071 (A008500 n).toNat

end

end A313762.P16858557495917102196

/-!
# A313763: Coordination sequence Gal.5.281.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313763, there is no canonical definition to state claims against.
-/

/-! ## A313763.P17595742867387578421

`A313032(n)+A001221(A150756(n))`
-/

namespace A313763.P17595742867387578421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313032 n + A001221 (A150756 n).toNat

end

end A313763.P17595742867387578421

/-! ## A313763.P5450418762983411640

`A314946(n)+A175933(A006012(n))`
-/

namespace A313763.P5450418762983411640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314946 n + A175933 (A006012 n).toNat

end

end A313763.P5450418762983411640

/-! ## A313763.P9300953624816778578

`A314932(n)+A257991(A000110(n))`
-/

namespace A313763.P9300953624816778578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314932 n + A257991 (A000110 n).toNat

end

end A313763.P9300953624816778578

/-! ## A313763.P11270954795633723365

`A312104(n)+A001221(A272452(n))`
-/

namespace A313763.P11270954795633723365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312104 n + A001221 (A272452 n).toNat

end

end A313763.P11270954795633723365

/-! ## A313763.P5832386018016562590

`A313783(n)-A001221(A090339(n))`
-/

namespace A313763.P5832386018016562590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313783 n - A001221 (A090339 n).toNat

end

end A313763.P5832386018016562590

/-!
# A313764: Coordination sequence Gal.3.61.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313764, the canonical program `A313764.P5843086204108749506` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313764 has offset 0).

The definition of A313764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313764.P5843086204108749506

`ogf((1+6x+15x^2+24x^3+30x^4+30x^5+30x^6+24x^7+15x^8+6x^9+x^10)/(1+x-x^3-x^4-x^6-x^7+x^9+x^10))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A313764

/-- `ogf((1+6x+15x^2+24x^3+30x^4+30x^5+30x^6+24x^7+15x^8+6x^9+x^10)/(1+x-x^3-x^4-x^6-x^7+x^9+x^10))` -/
def P5843086204108749506.Spec : Prop :=
  ∀ n, P5843086204108749506.a n = A313764 n

theorem P5843086204108749506.correct : P5843086204108749506.Spec := by
  intro n
  simp only [A313764]

end A313764

/-! ## A313764.P18004864500444390869

`A250120(n)+A102677(A083323(n))`
-/

namespace A313764.P18004864500444390869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A102677 (A083323 n).toNat

end

end A313764.P18004864500444390869

namespace A313764

/-- `A250120(n)+A102677(A083323(n))` -/
def P18004864500444390869.Spec : Prop :=
  ∀ n, P18004864500444390869.a n = A313764 n

end A313764

/-! ## A313764.P10245620166441925431

`A250120(n)+A064532(A122449(n))`
-/

namespace A313764.P10245620166441925431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A064532 (A122449 n).toNat

end

end A313764.P10245620166441925431

namespace A313764

/-- `A250120(n)+A064532(A122449(n))` -/
def P10245620166441925431.Spec : Prop :=
  ∀ n, P10245620166441925431.a n = A313764 n

end A313764

/-! ## A313764.P13977934600580174632

`A008458(n)-A022307(A027973(n))`
-/

namespace A313764.P13977934600580174632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A022307 (A027973 n).toNat

end

end A313764.P13977934600580174632

namespace A313764

/-- `A008458(n)-A022307(A027973(n))` -/
def P13977934600580174632.Spec : Prop :=
  ∀ n, P13977934600580174632.a n = A313764 n

end A313764

/-! ## A313764.P8186246521947669060

`A313772(n)-A056594(A148994(n))`
-/

namespace A313764.P8186246521947669060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n - A056594 (A148994 n).toNat

end

end A313764.P8186246521947669060

namespace A313764

/-- `A313772(n)-A056594(A148994(n))` -/
def P8186246521947669060.Spec : Prop :=
  ∀ n, P8186246521947669060.a n = A313764 n

end A313764

/-!
# A313765: Coordination sequence Gal.6.594.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313765, there is no canonical definition to state claims against.
-/

/-! ## A313765.P2080014474734963927

`A314937(n)+A100073(A048496(n))`
-/

namespace A313765.P2080014474734963927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314937 n + A100073 (A048496 n).toNat

end

end A313765.P2080014474734963927

/-! ## A313765.P8637369212501456118

`A313924(n)-A001222(A102917(n))`
-/

namespace A313765.P8637369212501456118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A001222 (A102917 n).toNat

end

end A313765.P8637369212501456118

/-! ## A313765.P11953147236978932888

`A008574(n)+A001222(A075071(n+1))`
-/

namespace A313765.P11953147236978932888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A075071 (n + 1)).toNat

end

end A313765.P11953147236978932888

/-! ## A313765.P2069970805626482233

`A104483(A292496(n))+A056576(3*n)`
-/

namespace A313765.P2069970805626482233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104483 (A292496 n).toNat + A056576 (3 * n)

end

end A313765.P2069970805626482233

/-! ## A313765.P2018628264012433552

`A257088(2*n)+A001222(A075071(n+1))`
-/

namespace A313765.P2018628264012433552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) + A001222 (A075071 (n + 1)).toNat

end

end A313765.P2018628264012433552

/-!
# A313766: Coordination sequence Gal.6.470.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313766, there is no canonical definition to state claims against.
-/

/-! ## A313766.P9555595552882918340

`A313767(n)+A178780(n²-n)`
-/

namespace A313766.P9555595552882918340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313767 n + A178780 (n ^ 2 - n)

end

end A313766.P9555595552882918340

/-! ## A313766.P6113903353693752784

`A314124(n)-A352514(n²)-A352514(A265227(n+1))`
-/

namespace A313766.P6113903353693752784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n - A352514 (n ^ 2) - A352514 (A265227 (n + 1)).toNat

end

end A313766.P6113903353693752784

/-! ## A313766.P6916992769048744310

`A315700(n)-A001222(∑[4^n])`
-/

namespace A313766.P6916992769048744310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313766.P6916992769048744310

/-! ## A313766.P16189203247894160438

`A313767(n)-A011683(A058275(n))`
-/

namespace A313766.P16189203247894160438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313767 n - A011683 (A058275 n).toNat

end

end A313766.P16189203247894160438

/-! ## A313766.P16182220793584817839

`A250120(n)+A175599(A079374(n+1))`
-/

namespace A313766.P16182220793584817839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A175599 (A079374 (n + 1)).toNat

end

end A313766.P16182220793584817839

/-!
# A313767: Coordination sequence Gal.5.324.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313767, there is no canonical definition to state claims against.
-/

/-! ## A313767.P11942786578807238615

`A313766(n)+A179229(A300500(n+1))`
-/

namespace A313767.P11942786578807238615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313766 n + A179229 (A300500 (n + 1)).toNat

end

end A313767.P11942786578807238615

/-! ## A313767.P2496824511868347700

`A313766(n)+A011683(A058275(n))`
-/

namespace A313767.P2496824511868347700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313766 n + A011683 (A058275 n).toNat

end

end A313767.P2496824511868347700

/-! ## A313767.P6551272580265374492

`A314882(n)+A004218(A071724(n))`
-/

namespace A313767.P6551272580265374492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314882 n + A004218 (A071724 n).toNat

end

end A313767.P6551272580265374492

/-! ## A313767.P1680447565792129834

`A250120(n)+A103668(A191769(n))`
-/

namespace A313767.P1680447565792129834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A103668 (A191769 n).toNat

end

end A313767.P1680447565792129834

/-! ## A313767.P17520434417519392588

`A250120(n)+A064532(A029528(n+1))`
-/

namespace A313767.P17520434417519392588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A064532 (A029528 (n + 1)).toNat

end

end A313767.P17520434417519392588

/-!
# A313768: Coordination sequence Gal.6.261.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313768, the canonical program `A313768.P5164488227941106115` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313768 has offset 0).

The definition of A313768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313768.P5164488227941106115

`abs(A008592(n)-A313711(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313768

/-- `abs(A008592(n)-A313711(n))` -/
def P5164488227941106115.Spec : Prop :=
  ∀ n, P5164488227941106115.a n = A313768 n

theorem P5164488227941106115.correct : P5164488227941106115.Spec := by
  intro n
  simp only [A313768]

end A313768

/-! ## A313768.P11966439103429385502

`2*A008706(n)-A313711(n)`
-/

namespace A313768.P11966439103429385502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313711 n

end

end A313768.P11966439103429385502

namespace A313768

/-- `2*A008706(n)-A313711(n)` -/
def P11966439103429385502.Spec : Prop :=
  ∀ n, P11966439103429385502.a n = A313768 n

end A313768

/-! ## A313768.P5067830488210762530

`A135042(2*n+1)-A313711(n)`
-/

namespace A313768.P5067830488210762530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313711 n

end

end A313768.P5067830488210762530

namespace A313768

/-- `A135042(2*n+1)-A313711(n)` -/
def P5067830488210762530.Spec : Prop :=
  ∀ n, P5067830488210762530.a n = A313768 n

end A313768

/-! ## A313768.P8048026492903664330

`A008458(n)+A008574(n)-A313711(n)`
-/

namespace A313768.P8048026492903664330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313711 n)

end

end A313768.P8048026492903664330

namespace A313768

/-- `A008458(n)+A008574(n)-A313711(n)` -/
def P8048026492903664330.Spec : Prop :=
  ∀ n, P8048026492903664330.a n = A313768 n

end A313768

/-! ## A313768.P3765759915796678828

`∑{d}[A008592(n)-A313711(n), A000010(#)]`
-/

namespace A313768.P3765759915796678828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313768.P3765759915796678828

namespace A313768

/-- `∑{d}[A008592(n)-A313711(n), A000010(#)]` -/
def P3765759915796678828.Spec : Prop :=
  ∀ n, P3765759915796678828.a n = A313768 n

end A313768

/-! ## A313768.P8267402011902201139

`A313869(n)-Δ[A011864(n)]`
-/

namespace A313768.P8267402011902201139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313869 n - (f1 (n + 1) - f1 n)

end

end A313768.P8267402011902201139

namespace A313768

/-- `A313869(n)-Δ[A011864(n)]` -/
def P8267402011902201139.Spec : Prop :=
  ∀ n, P8267402011902201139.a n = A313768 n

end A313768

/-! ## A313768.P8151651290497980631

`A000007(a(n-1))+A008592(n)-A313711(n)` with `a(0)=1`
-/

namespace A313768.P8151651290497980631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a (n - 1)).toNat + (A008592 n - A313711 n)

end

end A313768.P8151651290497980631

namespace A313768

/-- `A000007(a(n-1))+A008592(n)-A313711(n)` -/
def P8151651290497980631.Spec : Prop :=
  ∀ n, P8151651290497980631.a n = A313768 n

end A313768

/-! ## A313768.P1194170850441662032

`A005843(A008706(n))-A313711(n)`
-/

namespace A313768.P1194170850441662032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313711 n

end

end A313768.P1194170850441662032

namespace A313768

/-- `A005843(A008706(n))-A313711(n)` -/
def P1194170850441662032.Spec : Prop :=
  ∀ n, P1194170850441662032.a n = A313768 n

end A313768

/-! ## A313768.P18249714589415922616

`A065502(A008458(n))-A313711(n)`
-/

namespace A313768.P18249714589415922616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313711 n

end

end A313768.P18249714589415922616

namespace A313768

/-- `A065502(A008458(n))-A313711(n)` -/
def P18249714589415922616.Spec : Prop :=
  ∀ n, P18249714589415922616.a n = A313768 n

end A313768

/-! ## A313768.P17855086726447543967

`A004525(A313534(n)+A310520(n))`
-/

namespace A313768.P17855086726447543967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313534 n + A310520 n).toNat

end

end A313768.P17855086726447543967

namespace A313768

/-- `A004525(A313534(n)+A310520(n))` -/
def P17855086726447543967.Spec : Prop :=
  ∀ n, P17855086726447543967.a n = A313768 n

end A313768

/-! ## A313768.P15567382881678868593

`A004525(A313534(n)+A310523(n))`
-/

namespace A313768.P15567382881678868593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313534 n + A310523 n).toNat

end

end A313768.P15567382881678868593

namespace A313768

/-- `A004525(A313534(n)+A310523(n))` -/
def P15567382881678868593.Spec : Prop :=
  ∀ n, P15567382881678868593.a n = A313768 n

end A313768

/-! ## A313768.P12877020149562918462

`A004525(A313543(n)+A310517(n))`
-/

namespace A313768.P12877020149562918462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313543 n + A310517 n).toNat

end

end A313768.P12877020149562918462

namespace A313768

/-- `A004525(A313543(n)+A310517(n))` -/
def P12877020149562918462.Spec : Prop :=
  ∀ n, P12877020149562918462.a n = A313768 n

end A313768

/-! ## A313768.P17237704377565765330

`A310380(A008574(n))/2-A310380(n)`
-/

namespace A313768.P17237704377565765330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310380 (A008574 n).toNat : ℚ) / 2 - (A310380 n : ℚ)

end

end A313768.P17237704377565765330

namespace A313768

/-- `A310380(A008574(n))/2-A310380(n)` -/
def P17237704377565765330.Spec : Prop :=
  ∀ n, P17237704377565765330.a n = (A313768 n : ℚ)

end A313768

/-!
# A313769: Coordination sequence Gal.6.339.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313769, the canonical program `A313769.P5587162002525287589` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313769 has offset 0).

The definition of A313769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313769.P14453250897097560580

`A312926(n)+A004396(n)`
-/

namespace A313769.P14453250897097560580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A004396 n

end

end A313769.P14453250897097560580

namespace A313769

/-- `A312926(n)+A004396(n)` -/
def P14453250897097560580.Spec : Prop :=
  ∀ n, P14453250897097560580.a n = A313769 n

end A313769

/-! ## A313769.P294242745099593416

`A312926(n)+A002264(2*n+1)`
-/

namespace A313769.P294242745099593416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A002264 (2 * n + 1)

end

end A313769.P294242745099593416

namespace A313769

/-- `A312926(n)+A002264(2*n+1)` -/
def P294242745099593416.Spec : Prop :=
  ∀ n, P294242745099593416.a n = A313769 n

end A313769

/-! ## A313769.P13770165778563284440

`A313136(n)+A004525(A004396(n))`
-/

namespace A313769.P13770165778563284440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n + A004525 (A004396 n).toNat

end

end A313769.P13770165778563284440

namespace A313769

/-- `A313136(n)+A004525(A004396(n))` -/
def P13770165778563284440.Spec : Prop :=
  ∀ n, P13770165778563284440.a n = A313769 n

end A313769

/-! ## A313769.P5587162002525287589

`A004396(n)+A313619(n)-A004525(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313769

/-- `A004396(n)+A313619(n)-A004525(n)` -/
def P5587162002525287589.Spec : Prop :=
  ∀ n, P5587162002525287589.a n = A313769 n

theorem P5587162002525287589.correct : P5587162002525287589.Spec := by
  intro n
  simp only [A313769]

end A313769

/-! ## A313769.P4631493012529329628

`abs(A008592(n)-A313707(n))`
-/

namespace A313769.P4631493012529329628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313707 n|

end

end A313769.P4631493012529329628

namespace A313769

/-- `abs(A008592(n)-A313707(n))` -/
def P4631493012529329628.Spec : Prop :=
  ∀ n, P4631493012529329628.a n = A313769 n

end A313769

/-! ## A313769.P2397644605105353467

`floor(A010015(n)/A313707(n))`
-/

namespace A313769.P2397644605105353467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313707 n : ℚ)⌋

end

end A313769.P2397644605105353467

namespace A313769

/-- `floor(A010015(n)/A313707(n))` -/
def P2397644605105353467.Spec : Prop :=
  ∀ n, P2397644605105353467.a n = A313769 n

end A313769

/-! ## A313769.P5118129198203834341

`A008458(n)+A008574(n)-A313707(n)`
-/

namespace A313769.P5118129198203834341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313707 n)

end

end A313769.P5118129198203834341

namespace A313769

/-- `A008458(n)+A008574(n)-A313707(n)` -/
def P5118129198203834341.Spec : Prop :=
  ∀ n, P5118129198203834341.a n = A313769 n

end A313769

/-! ## A313769.P17489569879639744500

`A313872(n)-Δ[A011865(n)]`
-/

namespace A313769.P17489569879639744500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - (f1 (n + 1) - f1 n)

end

end A313769.P17489569879639744500

namespace A313769

/-- `A313872(n)-Δ[A011865(n)]` -/
def P17489569879639744500.Spec : Prop :=
  ∀ n, P17489569879639744500.a n = A313769 n

end A313769

/-! ## A313769.P4923299208255135870

`A315488(n)-A004396(A004525(n))`
-/

namespace A313769.P4923299208255135870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n - A004396 (A004525 n).toNat

end

end A313769.P4923299208255135870

namespace A313769

/-- `A315488(n)-A004396(A004525(n))` -/
def P4923299208255135870.Spec : Prop :=
  ∀ n, P4923299208255135870.a n = A313769 n

end A313769

/-! ## A313769.P2855931544375365649

`A314144(n)-Δ[A130518(n)]`
-/

namespace A313769.P2855931544375365649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - (f1 (n + 1) - f1 n)

end

end A313769.P2855931544375365649

namespace A313769

/-- `A314144(n)-Δ[A130518(n)]` -/
def P2855931544375365649.Spec : Prop :=
  ∀ n, P2855931544375365649.a n = A313769 n

end A313769

/-! ## A313769.P16393943047278284469

`A008576(n)+A314144(n)-A008486(n)`
-/

namespace A313769.P16393943047278284469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314144 n - A008486 n)

end

end A313769.P16393943047278284469

namespace A313769

/-- `A008576(n)+A314144(n)-A008486(n)` -/
def P16393943047278284469.Spec : Prop :=
  ∀ n, P16393943047278284469.a n = A313769 n

end A313769

/-! ## A313769.P5865837643007345080

`A004396(A312969(n))+2*n`
-/

namespace A313769.P5865837643007345080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312969 n).toNat + (2 * n : ℤ)

end

end A313769.P5865837643007345080

namespace A313769

/-- `A004396(A312969(n))+2*n` -/
def P5865837643007345080.Spec : Prop :=
  ∀ n, P5865837643007345080.a n = A313769 n

end A313769

/-! ## A313769.P4314132942068400905

`A004396(A313088(n))+2*n`
-/

namespace A313769.P4314132942068400905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313088 n).toNat + (2 * n : ℤ)

end

end A313769.P4314132942068400905

namespace A313769

/-- `A004396(A313088(n))+2*n` -/
def P4314132942068400905.Spec : Prop :=
  ∀ n, P4314132942068400905.a n = A313769 n

end A313769

/-! ## A313769.P10312029641089467870

`A004396(A314884(n))+2*n`
-/

namespace A313769.P10312029641089467870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314884 n).toNat + (2 * n : ℤ)

end

end A313769.P10312029641089467870

namespace A313769

/-- `A004396(A314884(n))+2*n` -/
def P10312029641089467870.Spec : Prop :=
  ∀ n, P10312029641089467870.a n = A313769 n

end A313769

/-! ## A313769.P16203526283236136997

`A004396(n)+A004396(A310470(n))+n`
-/

namespace A313769.P16203526283236136997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A310470 n).toNat + (n : ℤ))

end

end A313769.P16203526283236136997

namespace A313769

/-- `A004396(n)+A004396(A310470(n))+n` -/
def P16203526283236136997.Spec : Prop :=
  ∀ n, P16203526283236136997.a n = A313769 n

end A313769

/-! ## A313769.P16444135523674817953

`A004396(n)+A004396(A313778(n))+n`
-/

namespace A313769.P16444135523674817953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A313778 n).toNat + (n : ℤ))

end

end A313769.P16444135523674817953

namespace A313769

/-- `A004396(n)+A004396(A313778(n))+n` -/
def P16444135523674817953.Spec : Prop :=
  ∀ n, P16444135523674817953.a n = A313769 n

end A313769

/-! ## A313769.P2248231195210674965

`A074067(A313707(n))`
-/

namespace A313769.P2248231195210674965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313707 n).toNat

end

end A313769.P2248231195210674965

namespace A313769

/-- `A074067(A313707(n))` -/
def P2248231195210674965.Spec : Prop :=
  ∀ n, P2248231195210674965.a n = A313769 n

end A313769

/-! ## A313769.P15967972626068566213

`A005843(n)+A004525(A310470(n)+n)`
-/

namespace A313769.P15967972626068566213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A310470 n + (n : ℤ)).toNat

end

end A313769.P15967972626068566213

namespace A313769

/-- `A005843(n)+A004525(A310470(n)+n)` -/
def P15967972626068566213.Spec : Prop :=
  ∀ n, P15967972626068566213.a n = A313769 n

end A313769

/-! ## A313769.P6072737409399710745

`A004396(n)+A004396(A314236(n)+n)`
-/

namespace A313769.P6072737409399710745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A314236 n + (n : ℤ)).toNat

end

end A313769.P6072737409399710745

namespace A313769

/-- `A004396(n)+A004396(A314236(n)+n)` -/
def P6072737409399710745.Spec : Prop :=
  ∀ n, P6072737409399710745.a n = A313769 n

end A313769

/-! ## A313769.P5881247832804921148

`A004396(A314236(n)+2*n)`
-/

namespace A313769.P5881247832804921148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314236 n + (2 * n : ℤ)).toNat

end

end A313769.P5881247832804921148

namespace A313769

/-- `A004396(A314236(n)+2*n)` -/
def P5881247832804921148.Spec : Prop :=
  ∀ n, P5881247832804921148.a n = A313769 n

end A313769

/-!
# A313770: Coordination sequence Gal.3.44.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313770, the canonical program `A313770.P11892598208290406591` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313770 has offset 0).

The definition of A313770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313770.P11892598208290406591

`A313873(n)-A008624(A093178(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313770

/-- `A313873(n)-A008624(A093178(n))` -/
def P11892598208290406591.Spec : Prop :=
  ∀ n, P11892598208290406591.a n = A313770 n

theorem P11892598208290406591.correct : P11892598208290406591.Spec := by
  intro n
  simp only [A313770]

end A313770

/-! ## A313770.P3005299870316670258

`A314146(n)-∑[A022003(n)]`
-/

namespace A313770.P3005299870316670258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314146 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313770.P3005299870316670258

namespace A313770

/-- `A314146(n)-∑[A022003(n)]` -/
def P3005299870316670258.Spec : Prop :=
  ∀ n, P3005299870316670258.a n = A313770 n

end A313770

/-! ## A313770.P531662652702405805

`A314146(n)-Δ[A130518(n)]`
-/

namespace A313770.P531662652702405805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314146 n - (f1 (n + 1) - f1 n)

end

end A313770.P531662652702405805

namespace A313770

/-- `A314146(n)-Δ[A130518(n)]` -/
def P531662652702405805.Spec : Prop :=
  ∀ n, P531662652702405805.a n = A313770 n

end A313770

/-! ## A313770.P3803564556441721792

`A314146(n)-A002264(n+1)`
-/

namespace A313770.P3803564556441721792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314146 n - A002264 (n + 1)

end

end A313770.P3803564556441721792

namespace A313770

/-- `A314146(n)-A002264(n+1)` -/
def P3803564556441721792.Spec : Prop :=
  ∀ n, P3803564556441721792.a n = A313770 n

end A313770

/-! ## A313770.P6982762479809595813

`A004396(n)+A314146(n)-n`
-/

namespace A313770.P6982762479809595813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314146 n - (n : ℤ))

end

end A313770.P6982762479809595813

namespace A313770

/-- `A004396(n)+A314146(n)-n` -/
def P6982762479809595813.Spec : Prop :=
  ∀ n, P6982762479809595813.a n = A313770 n

end A313770

/-! ## A313770.P11857777101965879418

`A314146(n)-A008615(2*n+1)`
-/

namespace A313770.P11857777101965879418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314146 n - A008615 (2 * n + 1)

end

end A313770.P11857777101965879418

namespace A313770

/-- `A314146(n)-A008615(2*n+1)` -/
def P11857777101965879418.Spec : Prop :=
  ∀ n, P11857777101965879418.a n = A313770 n

end A313770

/-! ## A313770.P11722903629211571532

`A314146(n)-A110654(A004523(n))`
-/

namespace A313770.P11722903629211571532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314146 n - A110654 (A004523 n).toNat

end

end A313770.P11722903629211571532

namespace A313770

/-- `A314146(n)-A110654(A004523(n))` -/
def P11722903629211571532.Spec : Prop :=
  ∀ n, P11722903629211571532.a n = A313770 n

end A313770

/-! ## A313770.P10323170702780928056

`A008576(n)+A314146(n)-A008486(n)`
-/

namespace A313770.P10323170702780928056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314146 n - A008486 n)

end

end A313770.P10323170702780928056

namespace A313770

/-- `A008576(n)+A314146(n)-A008486(n)` -/
def P10323170702780928056.Spec : Prop :=
  ∀ n, P10323170702780928056.a n = A313770 n

end A313770

/-!
# A313771: Coordination sequence Gal.6.604.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313771, there is no canonical definition to state claims against.
-/

/-! ## A313771.P15121990712557752054

`A313770(n)+A126303(A036640(n))`
-/

namespace A313771.P15121990712557752054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313770 n + A126303 (A036640 n).toNat

end

end A313771.P15121990712557752054

/-! ## A313771.P397002863387127296

`A313770(n)+A014082(C(A130518(n), n))`
-/

namespace A313771.P397002863387127296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313770 n + A014082 (Nat.choose (A130518 n).toNat n)

end

end A313771.P397002863387127296

/-! ## A313771.P3657299575071037288

`A008574(n)+A001222(A027741(n))`
-/

namespace A313771.P3657299575071037288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A027741 n).toNat

end

end A313771.P3657299575071037288

/-! ## A313771.P9888229289395253344

`A314944(n)+A001221(A149659(n))`
-/

namespace A313771.P9888229289395253344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314944 n + A001221 (A149659 n).toNat

end

end A313771.P9888229289395253344

/-! ## A313771.P10870001059459019445

`A315049(n)+A001221(A290210(n))`
-/

namespace A313771.P10870001059459019445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315049 n + A001221 (A290210 n).toNat

end

end A313771.P10870001059459019445

/-!
# A313772: Coordination sequence Gal.6.328.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313772, the canonical program `A313772.P6532572318584518292` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313772 has offset 0).

The definition of A313772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313772.P6532572318584518292

`abs(A008592(n)-A313704(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313772

/-- `abs(A008592(n)-A313704(n))` -/
def P6532572318584518292.Spec : Prop :=
  ∀ n, P6532572318584518292.a n = A313772 n

theorem P6532572318584518292.correct : P6532572318584518292.Spec := by
  intro n
  simp only [A313772]

end A313772

/-! ## A313772.P15210327367388883906

`A008458(n)+A008574(n)-A313704(n)`
-/

namespace A313772.P15210327367388883906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313704 n)

end

end A313772.P15210327367388883906

namespace A313772

/-- `A008458(n)+A008574(n)-A313704(n)` -/
def P15210327367388883906.Spec : Prop :=
  ∀ n, P15210327367388883906.a n = A313772 n

end A313772

/-! ## A313772.P6364330141042841508

`A008458(n)-A004525(A008458(n)-A311804(n))`
-/

namespace A313772.P6364330141042841508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A311804 n).toNat

end

end A313772.P6364330141042841508

namespace A313772

/-- `A008458(n)-A004525(A008458(n)-A311804(n))` -/
def P6364330141042841508.Spec : Prop :=
  ∀ n, P6364330141042841508.a n = A313772 n

end A313772

/-! ## A313772.P3706310272694650395

`A313876(n)-Δ[A011864(n)]`
-/

namespace A313772.P3706310272694650395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313876 n - (f1 (n + 1) - f1 n)

end

end A313772.P3706310272694650395

namespace A313772

/-- `A313876(n)-Δ[A011864(n)]` -/
def P3706310272694650395.Spec : Prop :=
  ∀ n, P3706310272694650395.a n = A313772 n

end A313772

/-! ## A313772.P12031523430603558989

`A065502(A313615(n))/2+n`
-/

namespace A313772.P12031523430603558989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A313615 n).toNat : ℚ) / 2 + (n : ℚ)

end

end A313772.P12031523430603558989

namespace A313772

/-- `A065502(A313615(n))/2+n` -/
def P12031523430603558989.Spec : Prop :=
  ∀ n, P12031523430603558989.a n = (A313772 n : ℚ)

end A313772

/-! ## A313772.P2016221359203097940

`2*A008574(n)-A004525(A315709(n))`
-/

namespace A313772.P2016221359203097940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A315709 n).toNat

end

end A313772.P2016221359203097940

namespace A313772

/-- `2*A008574(n)-A004525(A315709(n))` -/
def P2016221359203097940.Spec : Prop :=
  ∀ n, P2016221359203097940.a n = A313772 n

end A313772

/-! ## A313772.P1509597438196296781

`A004396(A314239(n)+2*n)`
-/

namespace A313772.P1509597438196296781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314239 n + (2 * n : ℤ)).toNat

end

end A313772.P1509597438196296781

namespace A313772

/-- `A004396(A314239(n)+2*n)` -/
def P1509597438196296781.Spec : Prop :=
  ∀ n, P1509597438196296781.a n = A313772 n

end A313772

/-! ## A313772.P9389919551948330876

`A004396(A315537(n)+2*n)`
-/

namespace A313772.P9389919551948330876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315537 n + (2 * n : ℤ)).toNat

end

end A313772.P9389919551948330876

namespace A313772

/-- `A004396(A315537(n)+2*n)` -/
def P9389919551948330876.Spec : Prop :=
  ∀ n, P9389919551948330876.a n = A313772 n

end A313772

/-! ## A313772.P8433059261980152375

`A004396(A314239(n)+n+n)`
-/

namespace A313772.P8433059261980152375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314239 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313772.P8433059261980152375

namespace A313772

/-- `A004396(A314239(n)+n+n)` -/
def P8433059261980152375.Spec : Prop :=
  ∀ n, P8433059261980152375.a n = A313772 n

end A313772

/-! ## A313772.P10299394222714347171

`A004396(A315537(n)+n+n)`
-/

namespace A313772.P10299394222714347171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315537 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313772.P10299394222714347171

namespace A313772

/-- `A004396(A315537(n)+n+n)` -/
def P10299394222714347171.Spec : Prop :=
  ∀ n, P10299394222714347171.a n = A313772 n

end A313772

/-! ## A313772.P5052637652006317902

`A314720(2*n)-4*n`
-/

namespace A313772.P5052637652006317902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314720 (2 * n) - (4 * n : ℤ)

end

end A313772.P5052637652006317902

namespace A313772

/-- `A314720(2*n)-4*n` -/
def P5052637652006317902.Spec : Prop :=
  ∀ n, P5052637652006317902.a n = A313772 n

end A313772

/-! ## A313772.P16915779065842861541

`2*A008574(2*n)-A314210(2*n)`
-/

namespace A313772.P16915779065842861541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314210 (2 * n)

end

end A313772.P16915779065842861541

namespace A313772

/-- `2*A008574(2*n)-A314210(2*n)` -/
def P16915779065842861541.Spec : Prop :=
  ∀ n, P16915779065842861541.a n = A313772 n

end A313772

/-! ## A313772.P15947348180262332157

`A004525(A313639(2*n))`
-/

namespace A313772.P15947348180262332157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313639 (2 * n)).toNat

end

end A313772.P15947348180262332157

namespace A313772

/-- `A004525(A313639(2*n))` -/
def P15947348180262332157.Spec : Prop :=
  ∀ n, P15947348180262332157.a n = A313772 n

end A313772

/-! ## A313772.P756108695471572671

`A004525(A313738(2*n))`
-/

namespace A313772.P756108695471572671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313738 (2 * n)).toNat

end

end A313772.P756108695471572671

namespace A313772

/-- `A004525(A313738(2*n))` -/
def P756108695471572671.Spec : Prop :=
  ∀ n, P756108695471572671.a n = A313772 n

end A313772

/-! ## A313772.P9364879634758882206

`A004525(A313745(2*n))`
-/

namespace A313772.P9364879634758882206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313745 (2 * n)).toNat

end

end A313772.P9364879634758882206

namespace A313772

/-- `A004525(A313745(2*n))` -/
def P9364879634758882206.Spec : Prop :=
  ∀ n, P9364879634758882206.a n = A313772 n

end A313772

/-! ## A313772.P16029212037229239427

`A004525(A314029(2*n))`
-/

namespace A313772.P16029212037229239427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314029 (2 * n)).toNat

end

end A313772.P16029212037229239427

namespace A313772

/-- `A004525(A314029(2*n))` -/
def P16029212037229239427.Spec : Prop :=
  ∀ n, P16029212037229239427.a n = A313772 n

end A313772

/-! ## A313772.P14117659089566490107

`A004525(A314032(2*n))`
-/

namespace A313772.P14117659089566490107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314032 (2 * n)).toNat

end

end A313772.P14117659089566490107

namespace A313772

/-- `A004525(A314032(2*n))` -/
def P14117659089566490107.Spec : Prop :=
  ∀ n, P14117659089566490107.a n = A313772 n

end A313772

/-! ## A313772.P8223366250860019895

`A004525(A314963(2*n))`
-/

namespace A313772.P8223366250860019895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314963 (2 * n)).toNat

end

end A313772.P8223366250860019895

namespace A313772

/-- `A004525(A314963(2*n))` -/
def P8223366250860019895.Spec : Prop :=
  ∀ n, P8223366250860019895.a n = A313772 n

end A313772

/-! ## A313772.P2899040264047638877

`A004525(A315062(2*n))`
-/

namespace A313772.P2899040264047638877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315062 (2 * n)).toNat

end

end A313772.P2899040264047638877

namespace A313772

/-- `A004525(A315062(2*n))` -/
def P2899040264047638877.Spec : Prop :=
  ∀ n, P2899040264047638877.a n = A313772 n

end A313772

/-! ## A313772.P15663823389633861398

`A004525(A315212(2*n))`
-/

namespace A313772.P15663823389633861398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315212 (2 * n)).toNat

end

end A313772.P15663823389633861398

namespace A313772

/-- `A004525(A315212(2*n))` -/
def P15663823389633861398.Spec : Prop :=
  ∀ n, P15663823389633861398.a n = A313772 n

end A313772

/-!
# A313773: Coordination sequence Gal.5.131.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313773, the canonical program `A313773.P14022306089365674860` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313773 has offset 0).

The definition of A313773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313773.P14022306089365674860

`A312932(n)+round(2*n/3)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313773

/-- `A312932(n)+round(2*n/3)` -/
def P14022306089365674860.Spec : Prop :=
  ∀ n, P14022306089365674860.a n = A313773 n

theorem P14022306089365674860.correct : P14022306089365674860.Spec := by
  intro n
  simp only [A313773]

end A313773

/-! ## A313773.P17287173435391727871

`abs(A008592(n)-A313703(n))`
-/

namespace A313773.P17287173435391727871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313703 n|

end

end A313773.P17287173435391727871

namespace A313773

/-- `abs(A008592(n)-A313703(n))` -/
def P17287173435391727871.Spec : Prop :=
  ∀ n, P17287173435391727871.a n = A313773 n

end A313773

/-! ## A313773.P4866229941105168346

`A008706(n)+Δ[A011871(n)]`
-/

namespace A313773.P4866229941105168346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n)

end

end A313773.P4866229941105168346

namespace A313773

/-- `A008706(n)+Δ[A011871(n)]` -/
def P4866229941105168346.Spec : Prop :=
  ∀ n, P4866229941105168346.a n = A313773 n

end A313773

/-! ## A313773.P14388305748627727070

`A265187(2*n+1)+A008576(n)`
-/

namespace A313773.P14388305748627727070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (2 * n + 1) + A008576 n

end

end A313773.P14388305748627727070

namespace A313773

/-- `A265187(2*n+1)+A008576(n)` -/
def P14388305748627727070.Spec : Prop :=
  ∀ n, P14388305748627727070.a n = A313773 n

end A313773

/-! ## A313773.P14669695329229751387

`A313100(n)+A004396(A004396(n))`
-/

namespace A313773.P14669695329229751387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004396 (A004396 n).toNat

end

end A313773.P14669695329229751387

namespace A313773

/-- `A313100(n)+A004396(A004396(n))` -/
def P14669695329229751387.Spec : Prop :=
  ∀ n, P14669695329229751387.a n = A313773 n

end A313773

/-! ## A313773.P17139725528511863988

`A008458(n)-A004396(A004396(2*n))`
-/

namespace A313773.P17139725528511863988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 (A004396 (2 * n)).toNat

end

end A313773.P17139725528511863988

namespace A313773

/-- `A008458(n)-A004396(A004396(2*n))` -/
def P17139725528511863988.Spec : Prop :=
  ∀ n, P17139725528511863988.a n = A313773 n

end A313773

/-! ## A313773.P17290876057411753036

`A008574(n)+A004396(A004396(n)+n)`
-/

namespace A313773.P17290876057411753036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A313773.P17290876057411753036

namespace A313773

/-- `A008574(n)+A004396(A004396(n)+n)` -/
def P17290876057411753036.Spec : Prop :=
  ∀ n, P17290876057411753036.a n = A313773 n

end A313773

/-! ## A313773.P6787089966118221025

`A314945(n)+A004396(n-A004396(n))`
-/

namespace A313773.P6787089966118221025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314945 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313773.P6787089966118221025

namespace A313773

/-- `A314945(n)+A004396(n-A004396(n))` -/
def P6787089966118221025.Spec : Prop :=
  ∀ n, P6787089966118221025.a n = A313773 n

end A313773

/-! ## A313773.P11317967591001260676

`A008458(n)+A008574(n)-A313703(n)`
-/

namespace A313773.P11317967591001260676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313703 n)

end

end A313773.P11317967591001260676

namespace A313773

/-- `A008458(n)+A008574(n)-A313703(n)` -/
def P11317967591001260676.Spec : Prop :=
  ∀ n, P11317967591001260676.a n = A313773 n

end A313773

/-! ## A313773.P10668767042408376025

`A298784(n)+A042965(A042965(n+1)+1)`
-/

namespace A313773.P10668767042408376025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + A042965 (A042965 (n + 1) + 1).toNat

end

end A313773.P10668767042408376025

namespace A313773

/-- `A298784(n)+A042965(A042965(n+1)+1)` -/
def P10668767042408376025.Spec : Prop :=
  ∀ n, P10668767042408376025.a n = A313773 n

end A313773

/-! ## A313773.P12500852886869568662

`A008486(2*n)-A004396(A004396(2*n))`
-/

namespace A313773.P12500852886869568662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004396 (A004396 (2 * n)).toNat

end

end A313773.P12500852886869568662

namespace A313773

/-- `A008486(2*n)-A004396(A004396(2*n))` -/
def P12500852886869568662.Spec : Prop :=
  ∀ n, P12500852886869568662.a n = A313773 n

end A313773

/-! ## A313773.P17624848430315660124

`A298026(2*n)-A004396(A004396(2*n))`
-/

namespace A313773.P17624848430315660124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (2 * n) - A004396 (A004396 (2 * n)).toNat

end

end A313773.P17624848430315660124

namespace A313773

/-- `A298026(2*n)-A004396(A004396(2*n))` -/
def P17624848430315660124.Spec : Prop :=
  ∀ n, P17624848430315660124.a n = A313773 n

end A313773

/-! ## A313773.P303737269683832025

`A314141(n)-A004396(n-A004396(n))`
-/

namespace A313773.P303737269683832025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313773.P303737269683832025

namespace A313773

/-- `A314141(n)-A004396(n-A004396(n))` -/
def P303737269683832025.Spec : Prop :=
  ∀ n, P303737269683832025.a n = A313773 n

end A313773

/-! ## A313773.P2640223290596068040

`A004396(A004396(n))+A313909(n)-A004396(n)`
-/

namespace A313773.P2640223290596068040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313909 n - A004396 n)

end

end A313773.P2640223290596068040

namespace A313773

/-- `A004396(A004396(n))+A313909(n)-A004396(n)` -/
def P2640223290596068040.Spec : Prop :=
  ∀ n, P2640223290596068040.a n = A313773 n

end A313773

/-! ## A313773.P16939372880168511595

`A004396(A301298(n))+2*n`
-/

namespace A313773.P16939372880168511595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301298 n).toNat + (2 * n : ℤ)

end

end A313773.P16939372880168511595

namespace A313773

/-- `A004396(A301298(n))+2*n` -/
def P16939372880168511595.Spec : Prop :=
  ∀ n, P16939372880168511595.a n = A313773 n

end A313773

/-! ## A313773.P11619409571719973962

`A005843(n)+A004396(A301298(n))`
-/

namespace A313773.P11619409571719973962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A301298 n).toNat

end

end A313773.P11619409571719973962

namespace A313773

/-- `A005843(n)+A004396(A301298(n))` -/
def P11619409571719973962.Spec : Prop :=
  ∀ n, P11619409571719973962.a n = A313773 n

end A313773

/-! ## A313773.P15908341950874121314

`A004396(A298786(2*n)+n)`
-/

namespace A313773.P15908341950874121314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298786 (2 * n) + (n : ℤ)).toNat

end

end A313773.P15908341950874121314

namespace A313773

/-- `A004396(A298786(2*n)+n)` -/
def P15908341950874121314.Spec : Prop :=
  ∀ n, P15908341950874121314.a n = A313773 n

end A313773

/-! ## A313773.P12806725296348396819

`A004396(A008576(n)+5*n)`
-/

namespace A313773.P12806725296348396819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008576 n + (5 * n : ℤ)).toNat

end

end A313773.P12806725296348396819

namespace A313773

/-- `A004396(A008576(n)+5*n)` -/
def P12806725296348396819.Spec : Prop :=
  ∀ n, P12806725296348396819.a n = A313773 n

end A313773

/-! ## A313773.P6835924668617433750

`A004396(A047222(n+1)+A008458(n))`
-/

namespace A313773.P6835924668617433750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A047222 (n + 1) + A008458 n).toNat

end

end A313773.P6835924668617433750

namespace A313773

/-- `A004396(A047222(n+1)+A008458(n))` -/
def P6835924668617433750.Spec : Prop :=
  ∀ n, P6835924668617433750.a n = A313773 n

end A313773

/-! ## A313773.P4015614357641923474

`A004396(A314683(2*n)-n)`
-/

namespace A313773.P4015614357641923474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314683 (2 * n) - (n : ℤ)).toNat

end

end A313773.P4015614357641923474

namespace A313773

/-- `A004396(A314683(2*n)-n)` -/
def P4015614357641923474.Spec : Prop :=
  ∀ n, P4015614357641923474.a n = A313773 n

end A313773

/-!
# A313774: Coordination sequence Gal.6.622.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313774, the canonical program `A313774.P13874371645225150671` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313774 has offset 0).

The definition of A313774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313774.P3856820616552894063

`ogf((1+4x+5x^2+4x^3+2x^4-x^5+2x^6+4x^7+5x^8+4x^9+x^10)/(1-x-x^3+x^4+x^6-x^7-x^9+x^10))`
-/

namespace A313774.P3856820616552894063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 5, 4, 2, -1, 2, 4, 5, 4, 1] [1, -1, 0, -1, 1, 0, 1, -1, 0, -1, 1] n

end

end A313774.P3856820616552894063

namespace A313774

/-- `ogf((1+4x+5x^2+4x^3+2x^4-x^5+2x^6+4x^7+5x^8+4x^9+x^10)/(1-x-x^3+x^4+x^6-x^7-x^9+x^10))` -/
def P3856820616552894063.Spec : Prop :=
  ∀ n, P3856820616552894063.a n = A313774 n

end A313774

/-! ## A313774.P13874371645225150671

`A312933(n)+round(2*n/3)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313774

/-- `A312933(n)+round(2*n/3)` -/
def P13874371645225150671.Spec : Prop :=
  ∀ n, P13874371645225150671.a n = A313774 n

theorem P13874371645225150671.correct : P13874371645225150671.Spec := by
  intro n
  simp only [A313774]

end A313774

/-! ## A313774.P9157972768876340967

`A314758(n)+Δ[A011848(n)]`
-/

namespace A313774.P9157972768876340967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314758 n + (f1 (n + 1) - f1 n)

end

end A313774.P9157972768876340967

namespace A313774

/-- `A314758(n)+Δ[A011848(n)]` -/
def P9157972768876340967.Spec : Prop :=
  ∀ n, P9157972768876340967.a n = A313774 n

end A313774

/-! ## A313774.P13121760205861219486

`abs(A008592(n)-A313702(n))`
-/

namespace A313774.P13121760205861219486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313702 n|

end

end A313774.P13121760205861219486

namespace A313774

/-- `abs(A008592(n)-A313702(n))` -/
def P13121760205861219486.Spec : Prop :=
  ∀ n, P13121760205861219486.a n = A313774 n

end A313774

/-! ## A313774.P18297325475531955725

`A008458(n)+A008574(n)-A313702(n)`
-/

namespace A313774.P18297325475531955725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313702 n)

end

end A313774.P18297325475531955725

namespace A313774

/-- `A008458(n)+A008574(n)-A313702(n)` -/
def P18297325475531955725.Spec : Prop :=
  ∀ n, P18297325475531955725.a n = A313774 n

end A313774

/-! ## A313774.P15341157682425777524

`A310472(n)+A134667(n)`
-/

namespace A313774.P15341157682425777524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310472 n + A134667 n

end

end A313774.P15341157682425777524

namespace A313774

/-- `A310472(n)+A134667(n)` -/
def P15341157682425777524.Spec : Prop :=
  ∀ n, P15341157682425777524.a n = A313774 n

end A313774

/-! ## A313774.P3195204753779402166

`A314142(n)-A004525(n-A004396(n))`
-/

namespace A313774.P3195204753779402166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314142 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313774.P3195204753779402166

namespace A313774

/-- `A314142(n)-A004525(n-A004396(n))` -/
def P3195204753779402166.Spec : Prop :=
  ∀ n, P3195204753779402166.a n = A313774 n

end A313774

/-! ## A313774.P5041883558394461765

`A314151(n)-∑[A022003(n)]`
-/

namespace A313774.P5041883558394461765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313774.P5041883558394461765

namespace A313774

/-- `A314151(n)-∑[A022003(n)]` -/
def P5041883558394461765.Spec : Prop :=
  ∀ n, P5041883558394461765.a n = A313774 n

end A313774

/-! ## A313774.P2223398310883741372

`A314151(n)-A002264(n+1)`
-/

namespace A313774.P2223398310883741372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A002264 (n + 1)

end

end A313774.P2223398310883741372

namespace A313774

/-- `A314151(n)-A002264(n+1)` -/
def P2223398310883741372.Spec : Prop :=
  ∀ n, P2223398310883741372.a n = A313774 n

end A313774

/-! ## A313774.P8527014795807789330

`A004396(n)+A314151(n)-n`
-/

namespace A313774.P8527014795807789330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314151 n - (n : ℤ))

end

end A313774.P8527014795807789330

namespace A313774

/-- `A004396(n)+A314151(n)-n` -/
def P8527014795807789330.Spec : Prop :=
  ∀ n, P8527014795807789330.a n = A313774 n

end A313774

/-! ## A313774.P4388974001610038922

`A004525(A004773(n))+A314151(n)-n`
-/

namespace A313774.P4388974001610038922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004773 n).toNat + (A314151 n - (n : ℤ))

end

end A313774.P4388974001610038922

namespace A313774

/-- `A004525(A004773(n))+A314151(n)-n` -/
def P4388974001610038922.Spec : Prop :=
  ∀ n, P4388974001610038922.a n = A313774 n

end A313774

/-! ## A313774.P6021961770569599754

`A008576(n)+A314151(n)-A008486(n)`
-/

namespace A313774.P6021961770569599754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314151 n - A008486 n)

end

end A313774.P6021961770569599754

namespace A313774

/-- `A008576(n)+A314151(n)-A008486(n)` -/
def P6021961770569599754.Spec : Prop :=
  ∀ n, P6021961770569599754.a n = A313774 n

end A313774

/-! ## A313774.P14937682663874442462

`A313879(n)-Δ[A011865(n)]`
-/

namespace A313774.P14937682663874442462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - (f1 (n + 1) - f1 n)

end

end A313774.P14937682663874442462

namespace A313774

/-- `A313879(n)-Δ[A011865(n)]` -/
def P14937682663874442462.Spec : Prop :=
  ∀ n, P14937682663874442462.a n = A313774 n

end A313774

/-! ## A313774.P3359009075302706821

`A004525(A314097(2*n))`
-/

namespace A313774.P3359009075302706821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314097 (2 * n)).toNat

end

end A313774.P3359009075302706821

namespace A313774

/-- `A004525(A314097(2*n))` -/
def P3359009075302706821.Spec : Prop :=
  ∀ n, P3359009075302706821.a n = A313774 n

end A313774

/-! ## A313774.P18362056451297391185

`A004525(A315415(2*n))`
-/

namespace A313774.P18362056451297391185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315415 (2 * n)).toNat

end

end A313774.P18362056451297391185

namespace A313774

/-- `A004525(A315415(2*n))` -/
def P18362056451297391185.Spec : Prop :=
  ∀ n, P18362056451297391185.a n = A313774 n

end A313774

/-! ## A313774.P1015470719704126334

`A004525(A315417(2*n))`
-/

namespace A313774.P1015470719704126334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315417 (2 * n)).toNat

end

end A313774.P1015470719704126334

namespace A313774

/-- `A004525(A315417(2*n))` -/
def P1015470719704126334.Spec : Prop :=
  ∀ n, P1015470719704126334.a n = A313774 n

end A313774

/-! ## A313774.P11761641445690786574

`A004525(A298024(2*n)+n)`
-/

namespace A313774.P11761641445690786574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A298024 (2 * n) + (n : ℤ)).toNat

end

end A313774.P11761641445690786574

namespace A313774

/-- `A004525(A298024(2*n)+n)` -/
def P11761641445690786574.Spec : Prop :=
  ∀ n, P11761641445690786574.a n = A313774 n

end A313774

/-! ## A313774.P4283238018479626387

`A004525(2*A301298(n)+n)`
-/

namespace A313774.P4283238018479626387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A301298 n + (n : ℤ)).toNat

end

end A313774.P4283238018479626387

namespace A313774

/-- `A004525(2*A301298(n)+n)` -/
def P4283238018479626387.Spec : Prop :=
  ∀ n, P4283238018479626387.a n = A313774 n

end A313774

/-! ## A313774.P8851211878523357726

`A004525(2*A313099(n)+n)`
-/

namespace A313774.P8851211878523357726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313099 n + (n : ℤ)).toNat

end

end A313774.P8851211878523357726

namespace A313774

/-- `A004525(2*A313099(n)+n)` -/
def P8851211878523357726.Spec : Prop :=
  ∀ n, P8851211878523357726.a n = A313774 n

end A313774

/-! ## A313774.P10762428046180427380

`A004525(A313494(2*n)+n)`
-/

namespace A313774.P10762428046180427380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313494 (2 * n) + (n : ℤ)).toNat

end

end A313774.P10762428046180427380

namespace A313774

/-- `A004525(A313494(2*n)+n)` -/
def P10762428046180427380.Spec : Prop :=
  ∀ n, P10762428046180427380.a n = A313774 n

end A313774

/-!
# A313775: Coordination sequence Gal.5.329.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313775, there is no canonical definition to state claims against.
-/

/-! ## A313775.P17158431321267782645

`A313789(n)-A309061(A167614(n+1))`
-/

namespace A313775.P17158431321267782645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - A309061 (A167614 (n + 1)).toNat

end

end A313775.P17158431321267782645

/-! ## A313775.P6073448039691462898

`or(A089198(A000978(n+1)), A310459(n))`
-/

namespace A313775.P6073448039691462898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089198 (A000978 (n + 1)).toNat) (A310459 n)

end

end A313775.P6073448039691462898

/-! ## A313775.P1341918144689323551

`or(A024940(n), A310459(A120126(n)))`
-/

namespace A313775.P1341918144689323551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024940 n) (A310459 (A120126 n).toNat)

end

end A313775.P1341918144689323551

/-! ## A313775.P16607491512917914568

`or(A097795(A155212(n)), A313739(n))`
-/

namespace A313775.P16607491512917914568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097795 (A155212 n).toNat) (A313739 n)

end

end A313775.P16607491512917914568

/-! ## A313775.P10760435590641483110

`or(A309061(A155212(n)), A310459(n))`
-/

namespace A313775.P10760435590641483110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A309061 (A155212 n).toNat) (A310459 n)

end

end A313775.P10760435590641483110

/-!
# A313776: Coordination sequence Gal.6.442.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313776, the canonical program `A313776.P9904199867289999501` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313776 has offset 0).

The definition of A313776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313776.P9904199867289999501

`A313100(n)+A004525(A283971(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313776

/-- `A313100(n)+A004525(A283971(n))` -/
def P9904199867289999501.Spec : Prop :=
  ∀ n, P9904199867289999501.a n = A313776 n

theorem P9904199867289999501.correct : P9904199867289999501.Spec := by
  intro n
  simp only [A313776]

end A313776

/-! ## A313776.P14501057092663159253

`A313777(n)-A055641(A037223(n))`
-/

namespace A313776.P14501057092663159253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 n - A055641 (A037223 n).toNat

end

end A313776.P14501057092663159253

namespace A313776

/-- `A313777(n)-A055641(A037223(n))` -/
def P14501057092663159253.Spec : Prop :=
  ∀ n, P14501057092663159253.a n = A313776 n

end A313776

/-! ## A313776.P13015619424086489001

`A313777(n)-A216602(A056697(n+1))`
-/

namespace A313776.P13015619424086489001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 n - A216602 (A056697 (n + 1)).toNat

end

end A313776.P13015619424086489001

namespace A313776

/-- `A313777(n)-A216602(A056697(n+1))` -/
def P13015619424086489001.Spec : Prop :=
  ∀ n, P13015619424086489001.a n = A313776 n

end A313776

/-! ## A313776.P12143681709281808941

`A313777(A087051(n))`
-/

namespace A313776.P12143681709281808941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 (A087051 n).toNat

end

end A313776.P12143681709281808941

namespace A313776

/-- `A313777(A087051(n))` -/
def P12143681709281808941.Spec : Prop :=
  ∀ n, P12143681709281808941.a n = A313776 n

end A313776

/-! ## A313776.P14659586078822428799

`A313777(A227549(n+1))`
-/

namespace A313776.P14659586078822428799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 (A227549 (n + 1)).toNat

end

end A313776.P14659586078822428799

namespace A313776

/-- `A313777(A227549(n+1))` -/
def P14659586078822428799.Spec : Prop :=
  ∀ n, P14659586078822428799.a n = A313776 n

end A313776

/-!
# A313777: Coordination sequence Gal.6.441.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313777, there is no canonical definition to state claims against.
-/

/-! ## A313777.P13297612140938815518

`A313776(n)+A055641(A037223(n))`
-/

namespace A313777.P13297612140938815518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313776 n + A055641 (A037223 n).toNat

end

end A313777.P13297612140938815518

/-! ## A313777.P1493843794880547041

`A313776(n)+A011700(A165877(n))`
-/

namespace A313777.P1493843794880547041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313776 n + A011700 (A165877 n).toNat

end

end A313777.P1493843794880547041

/-! ## A313777.P13076150083293249375

`A313776(n)+A175419(A008592(n))`
-/

namespace A313777.P13076150083293249375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313776 n + A175419 (A008592 n).toNat

end

end A313777.P13076150083293249375

/-! ## A313777.P4884437075935142533

`A313659(n)+A010051(A254036(n))`
-/

namespace A313777.P4884437075935142533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313659 n + A010051 (A254036 n).toNat

end

end A313777.P4884437075935142533

/-! ## A313777.P16221587059920955793

`A313659(n)+A185014(A206289(n))`
-/

namespace A313777.P16221587059920955793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313659 n + A185014 (A206289 n).toNat

end

end A313777.P16221587059920955793

/-!
# A313778: Coordination sequence Gal.6.203.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313778, the canonical program `A313778.P4235496493182944354` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313778 has offset 0).

The definition of A313778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313778.P4235496493182944354

`A313088(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313778

/-- `A313088(n)+A004525(n)` -/
def P4235496493182944354.Spec : Prop :=
  ∀ n, P4235496493182944354.a n = A313778 n

theorem P4235496493182944354.correct : P4235496493182944354.Spec := by
  intro n
  simp only [A313778]

end A313778

/-! ## A313778.P13990910507785080965

`abs(A008592(n)-A313698(n))`
-/

namespace A313778.P13990910507785080965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313698 n|

end

end A313778.P13990910507785080965

namespace A313778

/-- `abs(A008592(n)-A313698(n))` -/
def P13990910507785080965.Spec : Prop :=
  ∀ n, P13990910507785080965.a n = A313778 n

end A313778

/-! ## A313778.P1191515905514128389

`floor(A010015(n)/A313698(n))`
-/

namespace A313778.P1191515905514128389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313698 n : ℚ)⌋

end

end A313778.P1191515905514128389

namespace A313778

/-- `floor(A010015(n)/A313698(n))` -/
def P1191515905514128389.Spec : Prop :=
  ∀ n, P1191515905514128389.a n = A313778 n

end A313778

/-! ## A313778.P401982001268119939

`2*A008706(n)-A313698(n)`
-/

namespace A313778.P401982001268119939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313698 n

end

end A313778.P401982001268119939

namespace A313778

/-- `2*A008706(n)-A313698(n)` -/
def P401982001268119939.Spec : Prop :=
  ∀ n, P401982001268119939.a n = A313778 n

end A313778

/-! ## A313778.P12417580241859635295

`lt[A020639(n+6), 4]+A313088(n)-n`
-/

namespace A313778.P12417580241859635295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + (A313088 n - (n : ℤ))

end

end A313778.P12417580241859635295

namespace A313778

/-- `lt[A020639(n+6), 4]+A313088(n)-n` -/
def P12417580241859635295.Spec : Prop :=
  ∀ n, P12417580241859635295.a n = A313778 n

end A313778

/-! ## A313778.P665961429723096643

`A313136(n)+A004396(A004525(n))`
-/

namespace A313778.P665961429723096643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n + A004396 (A004525 n).toNat

end

end A313778.P665961429723096643

namespace A313778

/-- `A313136(n)+A004396(A004525(n))` -/
def P665961429723096643.Spec : Prop :=
  ∀ n, P665961429723096643.a n = A313778 n

end A313778

/-! ## A313778.P10975928154669964083

`A008458(n)+A008574(n)-A313698(n)`
-/

namespace A313778.P10975928154669964083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313698 n)

end

end A313778.P10975928154669964083

namespace A313778

/-- `A008458(n)+A008574(n)-A313698(n)` -/
def P10975928154669964083.Spec : Prop :=
  ∀ n, P10975928154669964083.a n = A313778 n

end A313778

/-! ## A313778.P1198516876809044376

`A315271(n)-A134667(n)`
-/

namespace A313778.P1198516876809044376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315271 n - A134667 n

end

end A313778.P1198516876809044376

namespace A313778

/-- `A315271(n)-A134667(n)` -/
def P1198516876809044376.Spec : Prop :=
  ∀ n, P1198516876809044376.a n = A313778 n

end A313778

/-! ## A313778.P7560297429956922099

`A315413(n)-A128834(n)`
-/

namespace A313778.P7560297429956922099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315413 n - A128834 n

end

end A313778.P7560297429956922099

namespace A313778

/-- `A315413(n)-A128834(n)` -/
def P7560297429956922099.Spec : Prop :=
  ∀ n, P7560297429956922099.a n = A313778 n

end A313778

/-! ## A313778.P6293841984767793253

`A315413(n)+A010892(n+2)`
-/

namespace A313778.P6293841984767793253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315413 n + A010892 (n + 2)

end

end A313778.P6293841984767793253

namespace A313778

/-- `A315413(n)+A010892(n+2)` -/
def P6293841984767793253.Spec : Prop :=
  ∀ n, P6293841984767793253.a n = A313778 n

end A313778

/-! ## A313778.P2386537636925877785

`A315488(n)-A004525(A004396(n))`
-/

namespace A313778.P2386537636925877785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n - A004525 (A004396 n).toNat

end

end A313778.P2386537636925877785

namespace A313778

/-- `A315488(n)-A004525(A004396(n))` -/
def P2386537636925877785.Spec : Prop :=
  ∀ n, P2386537636925877785.a n = A313778 n

end A313778

/-! ## A313778.P7546729298158365617

`A004525(n)+A314236(n)-n`
-/

namespace A313778.P7546729298158365617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314236 n - (n : ℤ))

end

end A313778.P7546729298158365617

namespace A313778

/-- `A004525(n)+A314236(n)-n` -/
def P7546729298158365617.Spec : Prop :=
  ∀ n, P7546729298158365617.a n = A313778 n

theorem P7546729298158365617.correct : P7546729298158365617.Spec := by
  intro n
  simp only [A313778, Nat.add_sub_cancel, A313778.P7546729298158365617.a, A313778.P4235496493182944354.a, A004525, A004525.P4158271949796742323.a, A313088, A313088.P8261115150776480095.a, A314236, A314236.P11197453166256301907.a, A047513, A047513.P11792871085229594459.a, A312890, A312890.P5869710039852604831.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313778

/-! ## A313778.P16963215560363777077

`A005843(A008706(n))-A313698(n)`
-/

namespace A313778.P16963215560363777077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313698 n

end

end A313778.P16963215560363777077

namespace A313778

/-- `A005843(A008706(n))-A313698(n)` -/
def P16963215560363777077.Spec : Prop :=
  ∀ n, P16963215560363777077.a n = A313778 n

end A313778

/-! ## A313778.P15305738116818123527

`A074067(A313698(n))`
-/

namespace A313778.P15305738116818123527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313698 n).toNat

end

end A313778.P15305738116818123527

namespace A313778

/-- `A074067(A313698(n))` -/
def P15305738116818123527.Spec : Prop :=
  ∀ n, P15305738116818123527.a n = A313778 n

end A313778

/-!
# A313779: Coordination sequence Gal.6.328.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313779, the canonical program `A313779.P5705324669876184418` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313779 has offset 0).

The definition of A313779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313779.P5705324669876184418

`A312944(2*n)-4*n`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313779

/-- `A312944(2*n)-4*n` -/
def P5705324669876184418.Spec : Prop :=
  ∀ n, P5705324669876184418.a n = A313779 n

theorem P5705324669876184418.correct : P5705324669876184418.Spec := by
  intro n
  simp only [A313779]

end A313779

/-! ## A313779.P2376495213843590680

`abs(A008592(n)-A313696(n))`
-/

namespace A313779.P2376495213843590680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313696 n|

end

end A313779.P2376495213843590680

namespace A313779

/-- `abs(A008592(n)-A313696(n))` -/
def P2376495213843590680.Spec : Prop :=
  ∀ n, P2376495213843590680.a n = A313779 n

end A313779

/-! ## A313779.P4168010956716115840

`A008458(n)+A008574(n)-A313696(n)`
-/

namespace A313779.P4168010956716115840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313696 n)

end

end A313779.P4168010956716115840

namespace A313779

/-- `A008458(n)+A008574(n)-A313696(n)` -/
def P4168010956716115840.Spec : Prop :=
  ∀ n, P4168010956716115840.a n = A313779 n

end A313779

/-! ## A313779.P9608723465863768542

`A314156(n)-∑[A022003(n)]`
-/

namespace A313779.P9608723465863768542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314156 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313779.P9608723465863768542

namespace A313779

/-- `A314156(n)-∑[A022003(n)]` -/
def P9608723465863768542.Spec : Prop :=
  ∀ n, P9608723465863768542.a n = A313779 n

theorem P9608723465863768542.correct : P9608723465863768542.Spec := by
  intro n
  simp only [A313779, Nat.add_sub_cancel, A313779.P9608723465863768542.f1, A313779.P9608723465863768542.a, A313779.P5705324669876184418.a, A022003, A022003.P8302093470414743033.a, A312944, A312944.P924234285134684546.a, A314156, A314156.P13342112998699093357.f1, A314156.P13342112998699093357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313779

/-! ## A313779.P11393990107563896975

`A314156(n)-Δ[A130518(n)]`
-/

namespace A313779.P11393990107563896975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314156 n - (f1 (n + 1) - f1 n)

end

end A313779.P11393990107563896975

namespace A313779

/-- `A314156(n)-Δ[A130518(n)]` -/
def P11393990107563896975.Spec : Prop :=
  ∀ n, P11393990107563896975.a n = A313779 n

end A313779

/-! ## A313779.P16034201907526493672

`A314156(n)-A008615(2*n+1)`
-/

namespace A313779.P16034201907526493672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314156 n - A008615 (2 * n + 1)

end

end A313779.P16034201907526493672

namespace A313779

/-- `A314156(n)-A008615(2*n+1)` -/
def P16034201907526493672.Spec : Prop :=
  ∀ n, P16034201907526493672.a n = A313779 n

end A313779

/-! ## A313779.P8798686971342975699

`A008576(n)+A314156(n)-A008486(n)`
-/

namespace A313779.P8798686971342975699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314156 n - A008486 n)

end

end A313779.P8798686971342975699

namespace A313779

/-- `A008576(n)+A314156(n)-A008486(n)` -/
def P8798686971342975699.Spec : Prop :=
  ∀ n, P8798686971342975699.a n = A313779 n

end A313779

/-! ## A313779.P13085151966173430713

`A313887(n)-Δ[A011864(n)]`
-/

namespace A313779.P13085151966173430713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313887 n - (f1 (n + 1) - f1 n)

end

end A313779.P13085151966173430713

namespace A313779

/-- `A313887(n)-Δ[A011864(n)]` -/
def P13085151966173430713.Spec : Prop :=
  ∀ n, P13085151966173430713.a n = A313779 n

end A313779

/-! ## A313779.P8874140478365493633

`A005843(A008486(n)+A005843(n))-A313696(n)`
-/

namespace A313779.P8874140478365493633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008486 n + A005843 n).toNat - A313696 n

end

end A313779.P8874140478365493633

namespace A313779

/-- `A005843(A008486(n)+A005843(n))-A313696(n)` -/
def P8874140478365493633.Spec : Prop :=
  ∀ n, P8874140478365493633.a n = A313779 n

end A313779

/-! ## A313779.P2564061226978496404

`A004396(A314244(n)+2*n)`
-/

namespace A313779.P2564061226978496404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314244 n + (2 * n : ℤ)).toNat

end

end A313779.P2564061226978496404

namespace A313779

/-- `A004396(A314244(n)+2*n)` -/
def P2564061226978496404.Spec : Prop :=
  ∀ n, P2564061226978496404.a n = A313779 n

end A313779

/-! ## A313779.P11833595041349485913

`A004396(A314244(n)+n+n)`
-/

namespace A313779.P11833595041349485913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314244 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313779.P11833595041349485913

namespace A313779

/-- `A004396(A314244(n)+n+n)` -/
def P11833595041349485913.Spec : Prop :=
  ∀ n, P11833595041349485913.a n = A313779 n

end A313779

/-! ## A313779.P1238565790924310645

`A310420(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A313779.P1238565790924310645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310420 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A313779.P1238565790924310645

namespace A313779

/-- `A310420(2*n)/(4*n+2-A004277(2*n))` -/
def P1238565790924310645.Spec : Prop :=
  ∀ n, P1238565790924310645.a n = (A313779 n : ℚ)

end A313779

/-! ## A313779.P700980328077232209

`2*A008574(2*n)-A315519(2*n)`
-/

namespace A313779.P700980328077232209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315519 (2 * n)

end

end A313779.P700980328077232209

namespace A313779

/-- `2*A008574(2*n)-A315519(2*n)` -/
def P700980328077232209.Spec : Prop :=
  ∀ n, P700980328077232209.a n = A313779 n

end A313779

/-! ## A313779.P10386296699980052548

`A004525(A310420(2*n))`
-/

namespace A313779.P10386296699980052548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310420 (2 * n)).toNat

end

end A313779.P10386296699980052548

namespace A313779

/-- `A004525(A310420(2*n))` -/
def P10386296699980052548.Spec : Prop :=
  ∀ n, P10386296699980052548.a n = A313779 n

end A313779

/-! ## A313779.P14785613895771013991

`A004525(A313148(2*n))`
-/

namespace A313779.P14785613895771013991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313148 (2 * n)).toNat

end

end A313779.P14785613895771013991

namespace A313779

/-- `A004525(A313148(2*n))` -/
def P14785613895771013991.Spec : Prop :=
  ∀ n, P14785613895771013991.a n = A313779 n

end A313779

/-! ## A313779.P15319340478955890638

`A004525(A313259(2*n))`
-/

namespace A313779.P15319340478955890638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313259 (2 * n)).toNat

end

end A313779.P15319340478955890638

namespace A313779

/-- `A004525(A313259(2*n))` -/
def P15319340478955890638.Spec : Prop :=
  ∀ n, P15319340478955890638.a n = A313779 n

end A313779

/-! ## A313779.P11979913251663903609

`A004526(A310420(2*n)+1)`
-/

namespace A313779.P11979913251663903609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310420 (2 * n) + 1).toNat

end

end A313779.P11979913251663903609

namespace A313779

/-- `A004526(A310420(2*n)+1)` -/
def P11979913251663903609.Spec : Prop :=
  ∀ n, P11979913251663903609.a n = A313779 n

end A313779

/-! ## A313779.P9921146961823465349

`A008458(A008574(n))-A313543(A008574(n))`
-/

namespace A313779.P9921146961823465349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A313543 (A008574 n).toNat

end

end A313779.P9921146961823465349

namespace A313779

/-- `A008458(A008574(n))-A313543(A008574(n))` -/
def P9921146961823465349.Spec : Prop :=
  ∀ n, P9921146961823465349.a n = A313779 n

end A313779

/-! ## A313779.P9910997266508697330

`A004396(A315539(n)+2*n)`
-/

namespace A313779.P9910997266508697330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315539 n + (2 * n : ℤ)).toNat

end

end A313779.P9910997266508697330

namespace A313779

/-- `A004396(A315539(n)+2*n)` -/
def P9910997266508697330.Spec : Prop :=
  ∀ n, P9910997266508697330.a n = A313779 n

end A313779

/-! ## A313779.P567502492890290925

`A004396(A315539(n)+n+n)`
-/

namespace A313779.P567502492890290925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315539 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313779.P567502492890290925

namespace A313779

/-- `A004396(A315539(n)+n+n)` -/
def P567502492890290925.Spec : Prop :=
  ∀ n, P567502492890290925.a n = A313779 n

end A313779

/-!
# A313780: Coordination sequence Gal.3.23.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313780, the canonical program `A313780.P7722541564752106714` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313780 has offset 0).

The definition of A313780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313780.P12801395801636408127

`round(A008706(n)+n/7)`
-/

namespace A313780.P12801395801636408127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008706 n : ℚ) + (n : ℚ) / 7)

end

end A313780.P12801395801636408127

namespace A313780

/-- `round(A008706(n)+n/7)` -/
def P12801395801636408127.Spec : Prop :=
  ∀ n, P12801395801636408127.a n = A313780 n

end A313780

/-! ## A313780.P7722541564752106714

`round(A008574(n)+8*n/7)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313780

/-- `round(A008574(n)+8*n/7)` -/
def P7722541564752106714.Spec : Prop :=
  ∀ n, P7722541564752106714.a n = A313780 n

theorem P7722541564752106714.correct : P7722541564752106714.Spec := by
  intro n
  simp only [A313780]

end A313780

/-! ## A313780.P1605614253593144642

`A004275(2*n+1)+comp[8*n+4]`
-/

namespace A313780.P1605614253593144642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A313780.P1605614253593144642

namespace A313780

/-- `A004275(2*n+1)+comp[8*n+4]` -/
def P1605614253593144642.Spec : Prop :=
  ∀ n, P1605614253593144642.a n = A313780 n

end A313780

/-! ## A313780.P9378599817578167245

`A314040(n)-A238470(n)`
-/

namespace A313780.P9378599817578167245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n - A238470 n

end

end A313780.P9378599817578167245

namespace A313780

/-- `A314040(n)-A238470(n)` -/
def P9378599817578167245.Spec : Prop :=
  ∀ n, P9378599817578167245.a n = A313780 n

end A313780

/-! ## A313780.P5900045265193355060

`A315273(n)-A238469(n)`
-/

namespace A313780.P5900045265193355060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n - A238469 n

end

end A313780.P5900045265193355060

namespace A313780

/-- `A315273(n)-A238469(n)` -/
def P5900045265193355060.Spec : Prop :=
  ∀ n, P5900045265193355060.a n = A313780 n

end A313780

/-! ## A313780.P12318391196106958102

`A008706(n)+Δ[A011867(n)]`
-/

namespace A313780.P12318391196106958102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n)

end

end A313780.P12318391196106958102

namespace A313780

/-- `A008706(n)+Δ[A011867(n)]` -/
def P12318391196106958102.Spec : Prop :=
  ∀ n, P12318391196106958102.a n = A313780 n

end A313780

/-! ## A313780.P1157951330556985434

`A047588(n+1)+A008574(n)`
-/

namespace A313780.P1157951330556985434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1) + A008574 n

end

end A313780.P1157951330556985434

namespace A313780

/-- `A047588(n+1)+A008574(n)` -/
def P1157951330556985434.Spec : Prop :=
  ∀ n, P1157951330556985434.a n = A313780 n

end A313780

/-! ## A313780.P18072857813178196886

`A315423(n)+A238468(2*n)`
-/

namespace A313780.P18072857813178196886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n + A238468 (2 * n)

end

end A313780.P18072857813178196886

namespace A313780

/-- `A315423(n)+A238468(2*n)` -/
def P18072857813178196886.Spec : Prop :=
  ∀ n, P18072857813178196886.a n = A313780 n

end A313780

/-! ## A313780.P1338068705216907866

`(A311586(n)+A008458(n))/2`
-/

namespace A313780.P1338068705216907866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311586 n + A008458 n : ℚ) / 2

end

end A313780.P1338068705216907866

namespace A313780

/-- `(A311586(n)+A008458(n))/2` -/
def P1338068705216907866.Spec : Prop :=
  ∀ n, P1338068705216907866.a n = (A313780 n : ℚ)

end A313780

/-! ## A313780.P10358834314252233423

`A315273(n)-A238470(2*n)`
-/

namespace A313780.P10358834314252233423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n - A238470 (2 * n)

end

end A313780.P10358834314252233423

namespace A313780

/-- `A315273(n)-A238470(2*n)` -/
def P10358834314252233423.Spec : Prop :=
  ∀ n, P10358834314252233423.a n = A313780 n

end A313780

/-! ## A313780.P4717270916685606197

`A047588(n+1)+A004277(2*n)`
-/

namespace A313780.P4717270916685606197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1) + A004277 (2 * n)

end

end A313780.P4717270916685606197

namespace A313780

/-- `A047588(n+1)+A004277(2*n)` -/
def P4717270916685606197.Spec : Prop :=
  ∀ n, P4717270916685606197.a n = A313780 n

end A313780

/-! ## A313780.P2127631859928063231

`A004776(n+2)+A004273(2*n)`
-/

namespace A313780.P2127631859928063231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004776 (n + 2) + A004273 (2 * n)

end

end A313780.P2127631859928063231

namespace A313780

/-- `A004776(n+2)+A004273(2*n)` -/
def P2127631859928063231.Spec : Prop :=
  ∀ n, P2127631859928063231.a n = A313780 n

end A313780

/-! ## A313780.P6030738449716352921

`A008458(n)-A057357(2*n+1)`
-/

namespace A313780.P6030738449716352921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A057357 (2 * n + 1)

end

end A313780.P6030738449716352921

namespace A313780

/-- `A008458(n)-A057357(2*n+1)` -/
def P6030738449716352921.Spec : Prop :=
  ∀ n, P6030738449716352921.a n = A313780 n

end A313780

/-! ## A313780.P7747990623154409408

`A057358(A004273(n))+4*n+1`
-/

namespace A313780.P7747990623154409408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A004273 n).toNat + (4 * n + 1 : ℤ)

end

end A313780.P7747990623154409408

namespace A313780

/-- `A057358(A004273(n))+4*n+1` -/
def P7747990623154409408.Spec : Prop :=
  ∀ n, P7747990623154409408.a n = A313780 n

end A313780

/-! ## A313780.P6688859676503631257

`A008574(n)+comp[A008574(2*n+1)]`
-/

namespace A313780.P6688859676503631257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313780.P6688859676503631257

namespace A313780

/-- `A008574(n)+comp[A008574(2*n+1)]` -/
def P6688859676503631257.Spec : Prop :=
  ∀ n, P6688859676503631257.a n = A313780 n

end A313780

/-! ## A313780.P8228874504235461912

`A008486(2*n)-A057357(2*n+1)`
-/

namespace A313780.P8228874504235461912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A057357 (2 * n + 1)

end

end A313780.P8228874504235461912

namespace A313780

/-- `A008486(2*n)-A057357(2*n+1)` -/
def P8228874504235461912.Spec : Prop :=
  ∀ n, P8228874504235461912.a n = A313780 n

end A313780

/-! ## A313780.P4563709150590712075

`A008458(n)+A008574(n)-A313694(n)`
-/

namespace A313780.P4563709150590712075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313694 n)

end

end A313780.P4563709150590712075

namespace A313780

/-- `A008458(n)+A008574(n)-A313694(n)` -/
def P4563709150590712075.Spec : Prop :=
  ∀ n, P4563709150590712075.a n = A313780 n

end A313780

/-! ## A313780.P13251066658169543387

`A313836(n)+A238469(2*n)`
-/

namespace A313780.P13251066658169543387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + A238469 (2 * n)

end

end A313780.P13251066658169543387

namespace A313780

/-- `A313836(n)+A238469(2*n)` -/
def P13251066658169543387.Spec : Prop :=
  ∀ n, P13251066658169543387.a n = A313780 n

end A313780

/-! ## A313780.P13672957805288404139

`A313836(n)+A238468(A238468(n)+n)`
-/

namespace A313780.P13672957805288404139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + A238468 (A238468 n + (n : ℤ)).toNat

end

end A313780.P13672957805288404139

namespace A313780

/-- `A313836(n)+A238468(A238468(n)+n)` -/
def P13672957805288404139.Spec : Prop :=
  ∀ n, P13672957805288404139.a n = A313780 n

end A313780

/-! ## A313780.P15185855213480356122

`A028310(A191276(3*n+2)-Δ[A191275(n+1)])`
-/

namespace A313780.P15185855213480356122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A191276 (3 * n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A313780.P15185855213480356122

namespace A313780

/-- `A028310(A191276(3*n+2)-Δ[A191275(n+1)])` -/
def P15185855213480356122.Spec : Prop :=
  ∀ n, P15185855213480356122.a n = A313780 n

end A313780

/-!
# A313781: Coordination sequence Gal.6.617.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313781, the canonical program `A313781.P3283423518407474942` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313781 has offset 0).

The definition of A313781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313781.P3283423518407474942

`A311426(n)+n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313781

/-- `A311426(n)+n` -/
def P3283423518407474942.Spec : Prop :=
  ∀ n, P3283423518407474942.a n = A313781 n

theorem P3283423518407474942.correct : P3283423518407474942.Spec := by
  intro n
  simp only [A313781]

end A313781

/-! ## A313781.P9768800461756931131

`A313099(n)+A004525(n)`
-/

namespace A313781.P9768800461756931131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + A004525 n

end

end A313781.P9768800461756931131

namespace A313781

/-- `A313099(n)+A004525(n)` -/
def P9768800461756931131.Spec : Prop :=
  ∀ n, P9768800461756931131.a n = A313781 n

end A313781

/-! ## A313781.P3193701183801740724

`A315415(n)-A128834(n)`
-/

namespace A313781.P3193701183801740724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n - A128834 n

end

end A313781.P3193701183801740724

namespace A313781

/-- `A315415(n)-A128834(n)` -/
def P3193701183801740724.Spec : Prop :=
  ∀ n, P3193701183801740724.a n = A313781 n

end A313781

/-! ## A313781.P17878515180956965567

`abs(A008592(n)-A313693(n))`
-/

namespace A313781.P17878515180956965567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313693 n|

end

end A313781.P17878515180956965567

namespace A313781

/-- `abs(A008592(n)-A313693(n))` -/
def P17878515180956965567.Spec : Prop :=
  ∀ n, P17878515180956965567.a n = A313781 n

end A313781

/-! ## A313781.P10388108434119191344

`A315415(n)+A010892(n+2)`
-/

namespace A313781.P10388108434119191344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n + A010892 (n + 2)

end

end A313781.P10388108434119191344

namespace A313781

/-- `A315415(n)+A010892(n+2)` -/
def P10388108434119191344.Spec : Prop :=
  ∀ n, P10388108434119191344.a n = A313781 n

end A313781

/-! ## A313781.P3762281626856987749

`A005843(n)-(n-A311426(n))`
-/

namespace A313781.P3762281626856987749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311426 n)

end

end A313781.P3762281626856987749

namespace A313781

/-- `A005843(n)-(n-A311426(n))` -/
def P3762281626856987749.Spec : Prop :=
  ∀ n, P3762281626856987749.a n = A313781 n

theorem P3762281626856987749.correct : P3762281626856987749.Spec := by
  intro n
  simp only [A313781, Nat.add_sub_cancel, A313781.P3762281626856987749.a, A313781.P3283423518407474942.a, A005843, A005843.P3167286115683555970.a, A311426, A311426.P12408021461851380809.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313781

/-! ## A313781.P14633433097202763909

`A008458(n)+A008574(n)-A313693(n)`
-/

namespace A313781.P14633433097202763909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313693 n)

end

end A313781.P14633433097202763909

namespace A313781

/-- `A008458(n)+A008574(n)-A313693(n)` -/
def P14633433097202763909.Spec : Prop :=
  ∀ n, P14633433097202763909.a n = A313781 n

end A313781

/-! ## A313781.P9185540743476047689

`A314159(n)-A002264(n+1)`
-/

namespace A313781.P9185540743476047689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314159 n - A002264 (n + 1)

end

end A313781.P9185540743476047689

namespace A313781

/-- `A314159(n)-A002264(n+1)` -/
def P9185540743476047689.Spec : Prop :=
  ∀ n, P9185540743476047689.a n = A313781 n

end A313781

/-! ## A313781.P13871599707896006247

`A004396(n)+A314159(n)-n`
-/

namespace A313781.P13871599707896006247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314159 n - (n : ℤ))

end

end A313781.P13871599707896006247

namespace A313781

/-- `A004396(n)+A314159(n)-n` -/
def P13871599707896006247.Spec : Prop :=
  ∀ n, P13871599707896006247.a n = A313781 n

end A313781

/-! ## A313781.P18067603549322547747

`A314159(n)-A042965(n+1)+n`
-/

namespace A313781.P18067603549322547747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314159 n - A042965 (n + 1) + (n : ℤ)

end

end A313781.P18067603549322547747

namespace A313781

/-- `A314159(n)-A042965(n+1)+n` -/
def P18067603549322547747.Spec : Prop :=
  ∀ n, P18067603549322547747.a n = A313781 n

end A313781

/-! ## A313781.P16034339769557207678

`A008576(n)+A314159(n)-A008486(n)`
-/

namespace A313781.P16034339769557207678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314159 n - A008486 n)

end

end A313781.P16034339769557207678

namespace A313781

/-- `A008576(n)+A314159(n)-A008486(n)` -/
def P16034339769557207678.Spec : Prop :=
  ∀ n, P16034339769557207678.a n = A313781 n

end A313781

/-! ## A313781.P8065432406855364856

`A314240(n)-Δ[A011848(n)]`
-/

namespace A313781.P8065432406855364856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - (f1 (n + 1) - f1 n)

end

end A313781.P8065432406855364856

namespace A313781

/-- `A314240(n)-Δ[A011848(n)]` -/
def P8065432406855364856.Spec : Prop :=
  ∀ n, P8065432406855364856.a n = A313781 n

end A313781

/-! ## A313781.P9251314196073241433

`A004525(n)+A314240(n)-n`
-/

namespace A313781.P9251314196073241433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314240 n - (n : ℤ))

end

end A313781.P9251314196073241433

namespace A313781

/-- `A004525(n)+A314240(n)-n` -/
def P9251314196073241433.Spec : Prop :=
  ∀ n, P9251314196073241433.a n = A313781 n

end A313781

/-! ## A313781.P16836165612369836681

`A314240(n)-A047273(n+1)+n`
-/

namespace A313781.P16836165612369836681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A047273 (n + 1) + (n : ℤ)

end

end A313781.P16836165612369836681

namespace A313781

/-- `A314240(n)-A047273(n+1)+n` -/
def P16836165612369836681.Spec : Prop :=
  ∀ n, P16836165612369836681.a n = A313781 n

theorem P16836165612369836681.correct : P16836165612369836681.Spec := by
  intro n
  simp only [A313781, Nat.add_sub_cancel, A313781.P16836165612369836681.a, A313781.P3283423518407474942.a, A047273, A047273.P5050912492785340480.a, A311426, A311426.P12408021461851380809.a, A314240, A314240.P18428589485690285850.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, A313099, A313099.P14754823964277209654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313781

/-! ## A313781.P16865703922403194023

`abs(A008593(n)-A315751(n))`
-/

namespace A313781.P16865703922403194023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315751 n|

end

end A313781.P16865703922403194023

namespace A313781

/-- `abs(A008593(n)-A315751(n))` -/
def P16865703922403194023.Spec : Prop :=
  ∀ n, P16865703922403194023.a n = A313781 n

end A313781

/-! ## A313781.P8096576156897922065

`abs(8*n-A004525(A315700(n)))`
-/

namespace A313781.P8096576156897922065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n : ℤ) - A004525 (A315700 n).toNat|

end

end A313781.P8096576156897922065

namespace A313781

/-- `abs(8*n-A004525(A315700(n)))` -/
def P8096576156897922065.Spec : Prop :=
  ∀ n, P8096576156897922065.a n = A313781 n

end A313781

/-! ## A313781.P14813326912412100186

`A004525(A301697(n)+n)+2*n`
-/

namespace A313781.P14813326912412100186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301697 n + (n : ℤ)).toNat + (2 * n : ℤ)

end

end A313781.P14813326912412100186

namespace A313781

/-- `A004525(A301697(n)+n)+2*n` -/
def P14813326912412100186.Spec : Prop :=
  ∀ n, P14813326912412100186.a n = A313781 n

end A313781

/-! ## A313781.P13185364248447358577

`A004525(A310459(2*n))`
-/

namespace A313781.P13185364248447358577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310459 (2 * n)).toNat

end

end A313781.P13185364248447358577

namespace A313781

/-- `A004525(A310459(2*n))` -/
def P13185364248447358577.Spec : Prop :=
  ∀ n, P13185364248447358577.a n = A313781 n

end A313781

/-! ## A313781.P15821186810989555167

`A004525(A313646(2*n))`
-/

namespace A313781.P15821186810989555167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313646 (2 * n)).toNat

end

end A313781.P15821186810989555167

namespace A313781

/-- `A004525(A313646(2*n))` -/
def P15821186810989555167.Spec : Prop :=
  ∀ n, P15821186810989555167.a n = A313781 n

end A313781

/-! ## A313781.P6931103792111986467

`A004525(A313739(2*n))`
-/

namespace A313781.P6931103792111986467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313739 (2 * n)).toNat

end

end A313781.P6931103792111986467

namespace A313781

/-- `A004525(A313739(2*n))` -/
def P6931103792111986467.Spec : Prop :=
  ∀ n, P6931103792111986467.a n = A313781 n

end A313781

/-!
# A313782: Coordination sequence Gal.5.289.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313782, the canonical program `A313782.P12193786850322098717` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313782 has offset 0).

The definition of A313782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313782.P15692107992779963751

`ogf((1+3x+2x^2+3x^3+3x^4+2x^5+3x^6+3x^7+2x^8+3x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))`
-/

namespace A313782.P15692107992779963751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, 3, 3, 2, 3, 3, 2, 3, 1] [1, -2, 2, -2, 2, -2, 2, -2, 2, -2, 1] n

end

end A313782.P15692107992779963751

namespace A313782

/-- `ogf((1+3x+2x^2+3x^3+3x^4+2x^5+3x^6+3x^7+2x^8+3x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))` -/
def P15692107992779963751.Spec : Prop :=
  ∀ n, P15692107992779963751.a n = A313782 n

end A313782

/-! ## A313782.P8287410583535469

`A311440(n)+n`
-/

namespace A313782.P8287410583535469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + (n : ℤ)

end

end A313782.P8287410583535469

namespace A313782

/-- `A311440(n)+n` -/
def P8287410583535469.Spec : Prop :=
  ∀ n, P8287410583535469.a n = A313782 n

end A313782

/-! ## A313782.P12193786850322098717

`A330025(n)+A313154(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313782

/-- `A330025(n)+A313154(n)` -/
def P12193786850322098717.Spec : Prop :=
  ∀ n, P12193786850322098717.a n = A313782 n

theorem P12193786850322098717.correct : P12193786850322098717.Spec := by
  intro n
  simp only [A313782]

end A313782

/-! ## A313782.P8018904691340098848

`A315679(n)-A253262(n)`
-/

namespace A313782.P8018904691340098848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - A253262 n

end

end A313782.P8018904691340098848

namespace A313782

/-- `A315679(n)-A253262(n)` -/
def P8018904691340098848.Spec : Prop :=
  ∀ n, P8018904691340098848.a n = A313782 n

end A313782

/-! ## A313782.P6256272809496900921

`(A311601(n)+A008458(n))/2`
-/

namespace A313782.P6256272809496900921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311601 n + A008458 n : ℚ) / 2

end

end A313782.P6256272809496900921

namespace A313782

/-- `(A311601(n)+A008458(n))/2` -/
def P6256272809496900921.Spec : Prop :=
  ∀ n, P6256272809496900921.a n = (A313782 n : ℚ)

end A313782

/-! ## A313782.P6300924285564214528

`A005843(n)-(n-A311440(n))`
-/

namespace A313782.P6300924285564214528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311440 n)

end

end A313782.P6300924285564214528

namespace A313782

/-- `A005843(n)-(n-A311440(n))` -/
def P6300924285564214528.Spec : Prop :=
  ∀ n, P6300924285564214528.a n = A313782 n

end A313782

/-! ## A313782.P16831890067631493714

`A004275(2*n+1)+comp[A168273(3*n+2)]`
-/

namespace A313782.P16831890067631493714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313782.P16831890067631493714

namespace A313782

/-- `A004275(2*n+1)+comp[A168273(3*n+2)]` -/
def P16831890067631493714.Spec : Prop :=
  ∀ n, P16831890067631493714.a n = A313782 n

end A313782

/-! ## A313782.P10668759235105337942

`A008458(n)+A008574(n)-A313692(n)`
-/

namespace A313782.P10668759235105337942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313692 n)

end

end A313782.P10668759235105337942

namespace A313782

/-- `A008458(n)+A008574(n)-A313692(n)` -/
def P10668759235105337942.Spec : Prop :=
  ∀ n, P10668759235105337942.a n = A313782 n

end A313782

/-! ## A313782.P17933169469766825048

`A330025(n-A330025(n))+A314972(n)`
-/

namespace A313782.P17933169469766825048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A314972 n

end

end A313782.P17933169469766825048

namespace A313782

/-- `A330025(n-A330025(n))+A314972(n)` -/
def P17933169469766825048.Spec : Prop :=
  ∀ n, P17933169469766825048.a n = A313782 n

end A313782

/-! ## A313782.P5006819000322560064

`A315468(n)-A330025(A330025(n)+n)`
-/

namespace A313782.P5006819000322560064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A313782.P5006819000322560064

namespace A313782

/-- `A315468(n)-A330025(A330025(n)+n)` -/
def P5006819000322560064.Spec : Prop :=
  ∀ n, P5006819000322560064.a n = A313782 n

end A313782

/-! ## A313782.P10331108573729090417

`round(A313916(n)-n/5)`
-/

namespace A313782.P10331108573729090417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A313916 n : ℚ) - (n : ℚ) / 5)

end

end A313782.P10331108573729090417

namespace A313782

/-- `round(A313916(n)-n/5)` -/
def P10331108573729090417.Spec : Prop :=
  ∀ n, P10331108573729090417.a n = A313782 n

end A313782

/-! ## A313782.P1689586503112456649

`A313916(n)-A047263(n+1)+n`
-/

namespace A313782.P1689586503112456649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n - A047263 (n + 1) + (n : ℤ)

end

end A313782.P1689586503112456649

namespace A313782

/-- `A313916(n)-A047263(n+1)+n` -/
def P1689586503112456649.Spec : Prop :=
  ∀ n, P1689586503112456649.a n = A313782 n

end A313782

/-! ## A313782.P3611078287321736754

`2*A313875(n)-A313956(n)`
-/

namespace A313782.P3611078287321736754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313875 n - A313956 n

end

end A313782.P3611078287321736754

namespace A313782

/-- `2*A313875(n)-A313956(n)` -/
def P3611078287321736754.Spec : Prop :=
  ∀ n, P3611078287321736754.a n = A313782 n

theorem P3611078287321736754.correct : P3611078287321736754.Spec := by
  intro n
  simp only [A313782, Nat.add_sub_cancel, A313782.P3611078287321736754.a, A313782.P12193786850322098717.a, A313154, A313154.P7910125893097236437.f1, A313154.P7910125893097236437.a, A313875, A313875.P9058260822961243366.a, A313956, A313956.P5999280833725996003.a, A330025, A330025.P8729701065839544525.a, A011858, A011858.P16234308487928340219.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A312162, A312162.P8460047677510331873.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, A047263, A047263.P10177617567604490545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313782

/-! ## A313782.P2125457588804386961

`A313801(n)+n-A151988(n)`
-/

namespace A313782.P2125457588804386961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313801 n + ((n : ℤ) - A151988 n)

end

end A313782.P2125457588804386961

namespace A313782

/-- `A313801(n)+n-A151988(n)` -/
def P2125457588804386961.Spec : Prop :=
  ∀ n, P2125457588804386961.a n = A313782 n

end A313782

/-! ## A313782.P10398602262539024132

`A315496(n)-A047363(n+1)+n`
-/

namespace A313782.P10398602262539024132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315496 n - A047363 (n + 1) + (n : ℤ)

end

end A313782.P10398602262539024132

namespace A313782

/-- `A315496(n)-A047363(n+1)+n` -/
def P10398602262539024132.Spec : Prop :=
  ∀ n, P10398602262539024132.a n = A313782 n

end A313782

/-! ## A313782.P275074349312561689

`A315547(n)-A047448(n+1)+n`
-/

namespace A313782.P275074349312561689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A047448 (n + 1) + (n : ℤ)

end

end A313782.P275074349312561689

namespace A313782

/-- `A315547(n)-A047448(n+1)+n` -/
def P275074349312561689.Spec : Prop :=
  ∀ n, P275074349312561689.a n = A313782 n

end A313782

/-! ## A313782.P3118676023076032549

`A315481(n)-A330025(n)`
-/

namespace A313782.P3118676023076032549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315481 n - A330025 n

end

end A313782.P3118676023076032549

namespace A313782

/-- `A315481(n)-A330025(n)` -/
def P3118676023076032549.Spec : Prop :=
  ∀ n, P3118676023076032549.a n = A313782 n

theorem P3118676023076032549.correct : P3118676023076032549.Spec := by
  intro n
  simp only [A313782, Nat.add_sub_cancel, A313782.P3118676023076032549.a, A313782.P12193786850322098717.a, A313154, A313154.P7910125893097236437.f1, A313154.P7910125893097236437.a, A315481, A315481.P74549118950222558.a, A330025, A330025.P8729701065839544525.a, A011858, A011858.P16234308487928340219.a, A312162, A312162.P8460047677510331873.a, A008574, A008574.P1300280032690682112.a, A047263, A047263.P10177617567604490545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313782

/-! ## A313782.P15376816384370784332

`A250120(n)+A314242(n)-A313956(n)`
-/

namespace A313782.P15376816384370784332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A314242 n - A313956 n)

end

end A313782.P15376816384370784332

namespace A313782

/-- `A250120(n)+A314242(n)-A313956(n)` -/
def P15376816384370784332.Spec : Prop :=
  ∀ n, P15376816384370784332.a n = A313782 n

end A313782

/-! ## A313782.P1197525236866313276

`A004396(A312979(n))+2*n`
-/

namespace A313782.P1197525236866313276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312979 n).toNat + (2 * n : ℤ)

end

end A313782.P1197525236866313276

namespace A313782

/-- `A004396(A312979(n))+2*n` -/
def P1197525236866313276.Spec : Prop :=
  ∀ n, P1197525236866313276.a n = A313782 n

end A313782

/-! ## A313782.P16502182767157583764

`A004396(A314898(n))+2*n`
-/

namespace A313782.P16502182767157583764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314898 n).toNat + (2 * n : ℤ)

end

end A313782.P16502182767157583764

namespace A313782

/-- `A004396(A314898(n))+2*n` -/
def P16502182767157583764.Spec : Prop :=
  ∀ n, P16502182767157583764.a n = A313782 n

end A313782

/-!
# A313783: Coordination sequence Gal.6.500.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313783, there is no canonical definition to state claims against.
-/

/-! ## A313783.P12670392748776953925

`A008458(n)-A278043(A278088(n+1))`
-/

namespace A313783.P12670392748776953925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A278043 (A278088 (n + 1)).toNat

end

end A313783.P12670392748776953925

/-! ## A313783.P1863229991306583795

`A008706(n)+A001222(A293607(n))`
-/

namespace A313783.P1863229991306583795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A001222 (A293607 n).toNat

end

end A313783.P1863229991306583795

/-! ## A313783.P703091412276586713

`A313782(n)-A178798(A052905(n))`
-/

namespace A313783.P703091412276586713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n - A178798 (A052905 n).toNat

end

end A313783.P703091412276586713

/-! ## A313783.P10767254762065595119

`A312194(n)+A001221(A116707(n+1))`
-/

namespace A313783.P10767254762065595119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312194 n + A001221 (A116707 (n + 1)).toNat

end

end A313783.P10767254762065595119

/-! ## A313783.P2472330358485316195

`A313781(n)+A219551(A003252(n+1))`
-/

namespace A313783.P2472330358485316195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n + A219551 (A003252 (n + 1)).toNat

end

end A313783.P2472330358485316195

/-!
# A313784: Coordination sequence Gal.6.594.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313784, there is no canonical definition to state claims against.
-/

/-! ## A313784.P7452616023427471586

`A250120(n)+A139351(A128611(n))`
-/

namespace A313784.P7452616023427471586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A139351 (A128611 n).toNat

end

end A313784.P7452616023427471586

/-! ## A313784.P16326066183127560433

`A313786(n)-A107846(A007837(n))`
-/

namespace A313784.P16326066183127560433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 n - A107846 (A007837 n).toNat

end

end A313784.P16326066183127560433

/-! ## A313784.P5706734414866518062

`A313785(n)-A124761(A002378(n))`
-/

namespace A313784.P5706734414866518062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313785 n - A124761 (A002378 n).toNat

end

end A313784.P5706734414866518062

/-! ## A313784.P8523062352265404528

`A313785(n)-A137748(A137748(n))`
-/

namespace A313784.P8523062352265404528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313785 n - A137748 (A137748 n).toNat

end

end A313784.P8523062352265404528

/-! ## A313784.P15387209052855380291

`A313785(n)-A016389(A152054(n+1))`
-/

namespace A313784.P15387209052855380291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313785 n - A016389 (A152054 (n + 1)).toNat

end

end A313784.P15387209052855380291

/-!
# A313785: Coordination sequence Gal.6.604.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313785, there is no canonical definition to state claims against.
-/

/-! ## A313785.P8630406326634267110

`A313786(n)+A311928(n)-A311931(n)`
-/

namespace A313785.P8630406326634267110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 n + A311928 n - A311931 n

end

end A313785.P8630406326634267110

/-! ## A313785.P2408527592925760388

`A313786(A120126(n))-A326468(n)`
-/

namespace A313785.P2408527592925760388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 (A120126 n).toNat - A326468 n

end

end A313785.P2408527592925760388

/-! ## A313785.P12720476502186101655

`A313786(n)-A178798(A050877(n+1))`
-/

namespace A313785.P12720476502186101655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 n - A178798 (A050877 (n + 1)).toNat

end

end A313785.P12720476502186101655

/-! ## A313785.P2323970187635090725

`A314768(n)+A001221(A094433(n))`
-/

namespace A313785.P2323970187635090725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314768 n + A001221 (A094433 n).toNat

end

end A313785.P2323970187635090725

/-!
# A313786: Coordination sequence Gal.4.128.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313786, the canonical program `A313786.P15752277737034767631` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313786 has offset 0).

The definition of A313786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313786.P3607279166144015333

`A315036(n)+A142150(n)`
-/

namespace A313786.P3607279166144015333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n + A142150 n

end

end A313786.P3607279166144015333

namespace A313786

/-- `A315036(n)+A142150(n)` -/
def P3607279166144015333.Spec : Prop :=
  ∀ n, P3607279166144015333.a n = A313786 n

end A313786

/-! ## A313786.P15897188768968091292

`A315036(n)+A237420(n)/2`
-/

namespace A313786.P15897188768968091292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315036 n : ℚ) + (A237420 n : ℚ) / 2

end

end A313786.P15897188768968091292

namespace A313786

/-- `A315036(n)+A237420(n)/2` -/
def P15897188768968091292.Spec : Prop :=
  ∀ n, P15897188768968091292.a n = (A313786 n : ℚ)

end A313786

/-! ## A313786.P3909840079625300573

`A315036(n)+n-A026741(n)`
-/

namespace A313786.P3909840079625300573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n + ((n : ℤ) - A026741 n)

end

end A313786.P3909840079625300573

namespace A313786

/-- `A315036(n)+n-A026741(n)` -/
def P3909840079625300573.Spec : Prop :=
  ∀ n, P3909840079625300573.a n = A313786 n

end A313786

/-! ## A313786.P15169899101570144002

`A315036(n)+(n+1)%A008619(n)`
-/

namespace A313786.P15169899101570144002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n + Int.tmod (n + 1 : ℤ) (A008619 n)

end

end A313786.P15169899101570144002

namespace A313786

/-- `A315036(n)+(n+1)%A008619(n)` -/
def P15169899101570144002.Spec : Prop :=
  ∀ n, P15169899101570144002.a n = A313786 n

end A313786

/-! ## A313786.P15752277737034767631

`A008706(n)+A002265(A266794(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A313786

/-- `A008706(n)+A002265(A266794(n))` -/
def P15752277737034767631.Spec : Prop :=
  ∀ n, P15752277737034767631.a n = A313786 n

theorem P15752277737034767631.correct : P15752277737034767631.Spec := by
  intro n
  simp only [A313786]

end A313786

/-! ## A313786.P7597776904211100687

`A315036(n)+A004525(A237420(n))`
-/

namespace A313786.P7597776904211100687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n + A004525 (A237420 n).toNat

end

end A313786.P7597776904211100687

namespace A313786

/-- `A315036(n)+A004525(A237420(n))` -/
def P7597776904211100687.Spec : Prop :=
  ∀ n, P7597776904211100687.a n = A313786 n

end A313786

/-! ## A313786.P5866682782659625443

`A117248(n)+A008619(A008591(n))`
-/

namespace A313786.P5866682782659625443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117248 n + A008619 (A008591 n).toNat

end

end A313786.P5866682782659625443

namespace A313786

/-- `A117248(n)+A008619(A008591(n))` -/
def P5866682782659625443.Spec : Prop :=
  ∀ n, P5866682782659625443.a n = A313786 n

end A313786

/-! ## A313786.P13127757217129498872

`A117248(n)+A001651(A016777(n))`
-/

namespace A313786.P13127757217129498872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117248 n + A001651 (A016777 n).toNat

end

end A313786.P13127757217129498872

namespace A313786

/-- `A117248(n)+A001651(A016777(n))` -/
def P13127757217129498872.Spec : Prop :=
  ∀ n, P13127757217129498872.a n = A313786 n

end A313786

/-! ## A313786.P4751297440625444065

`A123108(A017185(n))+A117248(n)`
-/

namespace A313786.P4751297440625444065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A017185 n).toNat + A117248 n

end

end A313786.P4751297440625444065

namespace A313786

/-- `A123108(A017185(n))+A117248(n)` -/
def P4751297440625444065.Spec : Prop :=
  ∀ n, P4751297440625444065.a n = A313786 n

end A313786

/-! ## A313786.P1572579236927626470

`A008586(n)+A117248(n)+A008619(n)`
-/

namespace A313786.P1572579236927626470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (A117248 n + A008619 n)

end

end A313786.P1572579236927626470

namespace A313786

/-- `A008586(n)+A117248(n)+A008619(n)` -/
def P1572579236927626470.Spec : Prop :=
  ∀ n, P1572579236927626470.a n = A313786 n

end A313786

/-!
# A313787: Coordination sequence Gal.6.369.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313787, there is no canonical definition to state claims against.
-/

/-! ## A313787.P3937183056390267942

`A313789(n)-A193238(A038518(n))`
-/

namespace A313787.P3937183056390267942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - A193238 (A038518 n).toNat

end

end A313787.P3937183056390267942

/-! ## A313787.P14857531667741848332

`A314163(n)-A107286(A192507(n+1))`
-/

namespace A313787.P14857531667741848332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A107286 (A192507 (n + 1)).toNat

end

end A313787.P14857531667741848332

/-! ## A313787.P5640367415139304734

`A219529(n)-A276254(A059791(3*(n+1)))`
-/

namespace A313787.P5640367415139304734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A276254 (A059791 (3 * (n + 1))).toNat

end

end A313787.P5640367415139304734

/-! ## A313787.P14019845665526610682

`A187330(3*n)+A011685(A187287(3*(n+1)))`
-/

namespace A313787.P14019845665526610682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187330 (3 * n) + A011685 (A187287 (3 * (n + 1))).toNat

end

end A313787.P14019845665526610682

/-! ## A313787.P12953185198273496561

`A301712(n)-A014306(A094543(n))`
-/

namespace A313787.P12953185198273496561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n - A014306 (A094543 n).toNat

end

end A313787.P12953185198273496561

/-!
# A313788: Coordination sequence Gal.6.326.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313788, the canonical program `A313788.P6713366544553221303` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313788 has offset 0).

The definition of A313788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313788.P1608001722089562048

`abs(10*n-A313689(n))`
-/

namespace A313788.P1608001722089562048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313689 n|

end

end A313788.P1608001722089562048

namespace A313788

/-- `abs(10*n-A313689(n))` -/
def P1608001722089562048.Spec : Prop :=
  ∀ n, P1608001722089562048.a n = A313788 n

end A313788

/-! ## A313788.P7570761247692985607

`(A311613(n)+A008458(n))/2`
-/

namespace A313788.P7570761247692985607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311613 n + A008458 n : ℚ) / 2

end

end A313788.P7570761247692985607

namespace A313788

/-- `(A311613(n)+A008458(n))/2` -/
def P7570761247692985607.Spec : Prop :=
  ∀ n, P7570761247692985607.a n = (A313788 n : ℚ)

theorem P7570761247692985607.correct : P7570761247692985607.Spec := by
  intro n
  simp only [A313788, Nat.add_sub_cancel, A313788.P7570761247692985607.a, A313788.P6713366544553221303.a, A008458, A008458.P7339383310184415644.a, A311613, A311613.P7627697520887146138.a, A313696, A313696.P9738400648610204729.f1, A313696.P9738400648610204729.a, A313738, A313738.P18419223100438122022.a, A008574, A008574.P1300280032690682112.a, A008596, A008596.P5483684624845691048.a, A011864, A011864.P3547417513882699266.a, A313543, A313543.P17775607979476667023.a, A004396, A004396.P17032557045289780609.a, A314038, A314038.P12633839293519020832.a, A008592, A008592.P4981059802862696142.a, A315034, A315034.P9202512944006640459.f1, A315034.P9202512944006640459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313788

/-! ## A313788.P6713366544553221303

`2*A313738(n)-A313696(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A313788

/-- `2*A313738(n)-A313696(n)` -/
def P6713366544553221303.Spec : Prop :=
  ∀ n, P6713366544553221303.a n = A313788 n

theorem P6713366544553221303.correct : P6713366544553221303.Spec := by
  intro n
  simp only [A313788]

end A313788

/-! ## A313788.P14355089712645267068

`A135042(2*n+1)-A313689(n)`
-/

namespace A313788.P14355089712645267068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313689 n

end

end A313788.P14355089712645267068

namespace A313788

/-- `A135042(2*n+1)-A313689(n)` -/
def P14355089712645267068.Spec : Prop :=
  ∀ n, P14355089712645267068.a n = A313788 n

end A313788

/-! ## A313788.P10609841817059817362

`A008458(n)+A008574(n)-A313689(n)`
-/

namespace A313788.P10609841817059817362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313689 n)

end

end A313788.P10609841817059817362

namespace A313788

/-- `A008458(n)+A008574(n)-A313689(n)` -/
def P10609841817059817362.Spec : Prop :=
  ∀ n, P10609841817059817362.a n = A313788 n

end A313788

/-! ## A313788.P4076341846870340343

`A005843(n)+A005843(A008574(n))-A313689(n)`
-/

namespace A313788.P4076341846870340343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313689 n)

end

end A313788.P4076341846870340343

namespace A313788

/-- `A005843(n)+A005843(A008574(n))-A313689(n)` -/
def P4076341846870340343.Spec : Prop :=
  ∀ n, P4076341846870340343.a n = A313788 n

end A313788

/-! ## A313788.P637751627602173967

`A311613(n)+A001281(A008458(n)-A311613(n))`
-/

namespace A313788.P637751627602173967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311613 n + A001281 (A008458 n - A311613 n).toNat

end

end A313788.P637751627602173967

namespace A313788

/-- `A311613(n)+A001281(A008458(n)-A311613(n))` -/
def P637751627602173967.Spec : Prop :=
  ∀ n, P637751627602173967.a n = A313788 n

end A313788

/-! ## A313788.P6261889247713113391

`A313899(n)-Δ[A011864(n)]`
-/

namespace A313788.P6261889247713113391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313899 n - (f1 (n + 1) - f1 n)

end

end A313788.P6261889247713113391

namespace A313788

/-- `A313899(n)-Δ[A011864(n)]` -/
def P6261889247713113391.Spec : Prop :=
  ∀ n, P6261889247713113391.a n = A313788 n

theorem P6261889247713113391.correct : P6261889247713113391.Spec := by
  intro n
  simp only [A313788, Nat.add_sub_cancel, A313788.P6261889247713113391.f1, A313788.P6261889247713113391.a, A313788.P6713366544553221303.a, A011864, A011864.P3547417513882699266.a, A313696, A313696.P9738400648610204729.f1, A313696.P9738400648610204729.a, A313738, A313738.P18419223100438122022.a, A313899, A313899.P8562321666356515905.f1, A313899.P8562321666356515905.a, A008574, A008574.P1300280032690682112.a, A008596, A008596.P5483684624845691048.a, A313543, A313543.P17775607979476667023.a, A004396, A004396.P17032557045289780609.a, A314038, A314038.P12633839293519020832.a, A008592, A008592.P4981059802862696142.a, A315034, A315034.P9202512944006640459.f1, A315034.P9202512944006640459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313788

/-! ## A313788.P1095513801700670095

`A004396(A312980(n))+2*n`
-/

namespace A313788.P1095513801700670095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312980 n).toNat + (2 * n : ℤ)

end

end A313788.P1095513801700670095

namespace A313788

/-- `A004396(A312980(n))+2*n` -/
def P1095513801700670095.Spec : Prop :=
  ∀ n, P1095513801700670095.a n = A313788 n

end A313788

/-! ## A313788.P1460545332576781692

`A004396(A313118(n))+2*n`
-/

namespace A313788.P1460545332576781692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313118 n).toNat + (2 * n : ℤ)

end

end A313788.P1460545332576781692

namespace A313788

/-- `A004396(A313118(n))+2*n` -/
def P1460545332576781692.Spec : Prop :=
  ∀ n, P1460545332576781692.a n = A313788 n

end A313788

/-! ## A313788.P1199478360389624224

`A004396(A314902(n))+2*n`
-/

namespace A313788.P1199478360389624224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314902 n).toNat + (2 * n : ℤ)

end

end A313788.P1199478360389624224

namespace A313788

/-- `A004396(A314902(n))+2*n` -/
def P1199478360389624224.Spec : Prop :=
  ∀ n, P1199478360389624224.a n = A313788 n

end A313788

/-! ## A313788.P17560706555384588857

`A005843(n)+A004396(A312980(n))`
-/

namespace A313788.P17560706555384588857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312980 n).toNat

end

end A313788.P17560706555384588857

namespace A313788

/-- `A005843(n)+A004396(A312980(n))` -/
def P17560706555384588857.Spec : Prop :=
  ∀ n, P17560706555384588857.a n = A313788 n

end A313788

/-! ## A313788.P7429445178676105672

`A005843(n)+A004396(A313118(n))`
-/

namespace A313788.P7429445178676105672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313118 n).toNat

end

end A313788.P7429445178676105672

namespace A313788

/-- `A005843(n)+A004396(A313118(n))` -/
def P7429445178676105672.Spec : Prop :=
  ∀ n, P7429445178676105672.a n = A313788 n

end A313788

/-! ## A313788.P13798084827536361228

`A005843(A008574(n)+n)-A313689(n)`
-/

namespace A313788.P13798084827536361228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313689 n

end

end A313788.P13798084827536361228

namespace A313788

/-- `A005843(A008574(n)+n)-A313689(n)` -/
def P13798084827536361228.Spec : Prop :=
  ∀ n, P13798084827536361228.a n = A313788 n

end A313788

/-! ## A313788.P17862068792789978379

`A005843(A313738(n))-A313696(n)`
-/

namespace A313788.P17862068792789978379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313738 n).toNat - A313696 n

end

end A313788.P17862068792789978379

namespace A313788

/-- `A005843(A313738(n))-A313696(n)` -/
def P17862068792789978379.Spec : Prop :=
  ∀ n, P17862068792789978379.a n = A313788 n

end A313788

/-! ## A313788.P15615287817590773837

`A004525(A311541(n)+6*n)`
-/

namespace A313788.P15615287817590773837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311541 n + (6 * n : ℤ)).toNat

end

end A313788.P15615287817590773837

namespace A313788

/-- `A004525(A311541(n)+6*n)` -/
def P15615287817590773837.Spec : Prop :=
  ∀ n, P15615287817590773837.a n = A313788 n

end A313788

/-! ## A313788.P13660007918135996190

`A001281(A311613(n)+A008458(n))`
-/

namespace A313788.P13660007918135996190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A311613 n + A008458 n).toNat

end

end A313788.P13660007918135996190

namespace A313788

/-- `A001281(A311613(n)+A008458(n))` -/
def P13660007918135996190.Spec : Prop :=
  ∀ n, P13660007918135996190.a n = A313788 n

end A313788

/-!
# A313789: Coordination sequence Gal.6.208.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313789, the canonical program `A313789.P14929352302420444219` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313789 has offset 0).

The definition of A313789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313789.P14929352302420444219

`A311475(n)+n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313789

/-- `A311475(n)+n` -/
def P14929352302420444219.Spec : Prop :=
  ∀ n, P14929352302420444219.a n = A313789 n

theorem P14929352302420444219.correct : P14929352302420444219.Spec := by
  intro n
  simp only [A313789]

end A313789

/-! ## A313789.P5031050870639489446

`abs(abs(10*n-A313688(n))-1)+1`
-/

namespace A313789.P5031050870639489446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(10 * n : ℤ) - A313688 n| - 1)| + 1

end

end A313789.P5031050870639489446

namespace A313789

/-- `abs(abs(10*n-A313688(n))-1)+1` -/
def P5031050870639489446.Spec : Prop :=
  ∀ n, P5031050870639489446.a n = A313789 n

end A313789

/-! ## A313789.P14368741486459820829

`A312950(n)+A004396(n)`
-/

namespace A313789.P14368741486459820829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + A004396 n

end

end A313789.P14368741486459820829

namespace A313789

/-- `A312950(n)+A004396(n)` -/
def P14368741486459820829.Spec : Prop :=
  ∀ n, P14368741486459820829.a n = A313789 n

end A313789

/-! ## A313789.P7024508258331613023

`A313103(n)+A004525(n)`
-/

namespace A313789.P7024508258331613023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313103 n + A004525 n

end

end A313789.P7024508258331613023

namespace A313789

/-- `A313103(n)+A004525(n)` -/
def P7024508258331613023.Spec : Prop :=
  ∀ n, P7024508258331613023.a n = A313789 n

end A313789

/-! ## A313789.P3712991773811918721

`A314770(n)+n-A004525(n)`
-/

namespace A313789.P3712991773811918721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314770 n + ((n : ℤ) - A004525 n)

end

end A313789.P3712991773811918721

namespace A313789

/-- `A314770(n)+n-A004525(n)` -/
def P3712991773811918721.Spec : Prop :=
  ∀ n, P3712991773811918721.a n = A313789 n

theorem P3712991773811918721.correct : P3712991773811918721.Spec := by
  intro n
  simp only [A313789, Nat.add_sub_cancel, A313789.P3712991773811918721.a, A313789.P14929352302420444219.a, A004525, A004525.P4158271949796742323.a, A311475, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A314770, A314770.P11227293715083121856.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313789

/-! ## A313789.P17174204250533294992

`A314947(n)+n-A004396(n)`
-/

namespace A313789.P17174204250533294992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314947 n + ((n : ℤ) - A004396 n)

end

end A313789.P17174204250533294992

namespace A313789

/-- `A314947(n)+n-A004396(n)` -/
def P17174204250533294992.Spec : Prop :=
  ∀ n, P17174204250533294992.a n = A313789 n

theorem P17174204250533294992.correct : P17174204250533294992.Spec := by
  intro n
  simp only [A313789, Nat.add_sub_cancel, A313789.P17174204250533294992.a, A313789.P14929352302420444219.a, A004396, A004396.P17032557045289780609.a, A311475, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A314947, A314947.P4377398531179062134.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313789

/-! ## A313789.P5640804500663270476

`A005843(n)-(n-A311475(n))`
-/

namespace A313789.P5640804500663270476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311475 n)

end

end A313789.P5640804500663270476

namespace A313789

/-- `A005843(n)-(n-A311475(n))` -/
def P5640804500663270476.Spec : Prop :=
  ∀ n, P5640804500663270476.a n = A313789 n

theorem P5640804500663270476.correct : P5640804500663270476.Spec := by
  intro n
  simp only [A313789, Nat.add_sub_cancel, A313789.P5640804500663270476.a, A313789.P14929352302420444219.a, A005843, A005843.P3167286115683555970.a, A311475, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313789

/-! ## A313789.P991032810105408574

`A312950(n)+n-∑[A022003(n)]`
-/

namespace A313789.P991032810105408574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313789.P991032810105408574

namespace A313789

/-- `A312950(n)+n-∑[A022003(n)]` -/
def P991032810105408574.Spec : Prop :=
  ∀ n, P991032810105408574.a n = A313789 n

theorem P991032810105408574.correct : P991032810105408574.Spec := by
  intro n
  simp only [A313789, Nat.add_sub_cancel, A313789.P991032810105408574.f1, A313789.P991032810105408574.a, A313789.P14929352302420444219.a, A022003, A022003.P8302093470414743033.a, A311475, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A312950, A312950.P6413655452689753570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313789

/-! ## A313789.P18304339087482431096

`A312950(n)+n-Δ[A130518(n)]`
-/

namespace A313789.P18304339087482431096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313789.P18304339087482431096

namespace A313789

/-- `A312950(n)+n-Δ[A130518(n)]` -/
def P18304339087482431096.Spec : Prop :=
  ∀ n, P18304339087482431096.a n = A313789 n

end A313789

/-! ## A313789.P1655180324679591793

`A312950(n)+A002264(2*n+1)`
-/

namespace A313789.P1655180324679591793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + A002264 (2 * n + 1)

end

end A313789.P1655180324679591793

namespace A313789

/-- `A312950(n)+A002264(2*n+1)` -/
def P1655180324679591793.Spec : Prop :=
  ∀ n, P1655180324679591793.a n = A313789 n

end A313789

/-! ## A313789.P9333550477996267434

`A314959(n)+A004396(n-A004525(n))`
-/

namespace A313789.P9333550477996267434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314959 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313789.P9333550477996267434

namespace A313789

/-- `A314959(n)+A004396(n-A004525(n))` -/
def P9333550477996267434.Spec : Prop :=
  ∀ n, P9333550477996267434.a n = A313789 n

end A313789

/-! ## A313789.P7123772999396772419

`A314964(n)+A004525(n-A004396(n))`
-/

namespace A313789.P7123772999396772419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313789.P7123772999396772419

namespace A313789

/-- `A314964(n)+A004525(n-A004396(n))` -/
def P7123772999396772419.Spec : Prop :=
  ∀ n, P7123772999396772419.a n = A313789 n

end A313789

/-! ## A313789.P12168868969791081165

`A008458(n)+A008574(n)-A313688(n)`
-/

namespace A313789.P12168868969791081165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313688 n)

end

end A313789.P12168868969791081165

namespace A313789

/-- `A008458(n)+A008574(n)-A313688(n)` -/
def P12168868969791081165.Spec : Prop :=
  ∀ n, P12168868969791081165.a n = A313789 n

end A313789

/-! ## A313789.P10744442264226517138

`A008486(n)+A314947(n)-A008576(n)`
-/

namespace A313789.P10744442264226517138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314947 n - A008576 n)

end

end A313789.P10744442264226517138

namespace A313789

/-- `A008486(n)+A314947(n)-A008576(n)` -/
def P10744442264226517138.Spec : Prop :=
  ∀ n, P10744442264226517138.a n = A313789 n

end A313789

/-! ## A313789.P4791357184703830213

`A004396(n)+A313583(n)-A004396(A004525(n))`
-/

namespace A313789.P4791357184703830213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313583 n - A004396 (A004525 n).toNat)

end

end A313789.P4791357184703830213

namespace A313789

/-- `A004396(n)+A313583(n)-A004396(A004525(n))` -/
def P4791357184703830213.Spec : Prop :=
  ∀ n, P4791357184703830213.a n = A313789 n

end A313789

/-! ## A313789.P13696213466876521936

`A314151(n)-A004525(n-A004396(n))`
-/

namespace A313789.P13696213466876521936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313789.P13696213466876521936

namespace A313789

/-- `A314151(n)-A004525(n-A004396(n))` -/
def P13696213466876521936.Spec : Prop :=
  ∀ n, P13696213466876521936.a n = A313789 n

end A313789

/-! ## A313789.P13724903360408047397

`A314167(n)-A002264(n+1)`
-/

namespace A313789.P13724903360408047397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - A002264 (n + 1)

end

end A313789.P13724903360408047397

namespace A313789

/-- `A314167(n)-A002264(n+1)` -/
def P13724903360408047397.Spec : Prop :=
  ∀ n, P13724903360408047397.a n = A313789 n

end A313789

/-! ## A313789.P4330918651621608600

`A004396(n)+A314167(n)-n`
-/

namespace A313789.P4330918651621608600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314167 n - (n : ℤ))

end

end A313789.P4330918651621608600

namespace A313789

/-- `A004396(n)+A314167(n)-n` -/
def P4330918651621608600.Spec : Prop :=
  ∀ n, P4330918651621608600.a n = A313789 n

end A313789

/-! ## A313789.P15774023242917818526

`A314167(n)-A042965(n+1)+n`
-/

namespace A313789.P15774023242917818526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - A042965 (n + 1) + (n : ℤ)

end

end A313789.P15774023242917818526

namespace A313789

/-- `A314167(n)-A042965(n+1)+n` -/
def P15774023242917818526.Spec : Prop :=
  ∀ n, P15774023242917818526.a n = A313789 n

end A313789

/-! ## A313789.P8093562960780378374

`A008576(n)+A314167(n)-A008486(n)`
-/

namespace A313789.P8093562960780378374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314167 n - A008486 n)

end

end A313789.P8093562960780378374

namespace A313789

/-- `A008576(n)+A314167(n)-A008486(n)` -/
def P8093562960780378374.Spec : Prop :=
  ∀ n, P8093562960780378374.a n = A313789 n

end A313789

/-!
# A313790: Coordination sequence Gal.4.101.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313790, there is no canonical definition to state claims against.
-/

/-! ## A313790.P16527752725805281045

`A313916(n)-A062301(A000045(A127739(n+1)))`
-/

namespace A313790.P16527752725805281045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n - A062301 (A000045 (A127739 (n + 1)).toNat).toNat

end

end A313790.P16527752725805281045

/-! ## A313790.P10621212680152360430

`A313898(n)-A021913(A018832(n+1))`
-/

namespace A313790.P10621212680152360430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313898 n - A021913 (A018832 (n + 1)).toNat

end

end A313790.P10621212680152360430

/-! ## A313790.P15865128070564580402

`A313789(n)+A025469(A025506(n))`
-/

namespace A313790.P15865128070564580402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n + A025469 (A025506 n).toNat

end

end A313790.P15865128070564580402

/-! ## A313790.P13338352472489965223

`A313789(n)+A000035(A055022(n))`
-/

namespace A313790.P13338352472489965223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n + A000035 (A055022 n).toNat

end

end A313790.P13338352472489965223

/-! ## A313790.P5222715613117664225

`A313929(n)-A001221(A056612(n+1))`
-/

namespace A313790.P5222715613117664225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313929 n - A001221 (A056612 (n + 1)).toNat

end

end A313790.P5222715613117664225

/-!
# A313791: Coordination sequence Gal.6.354.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313791, the canonical program `A313791.P11156003567688367397` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313791 has offset 0).

The definition of A313791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313791.P11156003567688367397

`A313110(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313791

/-- `A313110(n)+A004525(n)` -/
def P11156003567688367397.Spec : Prop :=
  ∀ n, P11156003567688367397.a n = A313791 n

theorem P11156003567688367397.correct : P11156003567688367397.Spec := by
  intro n
  simp only [A313791]

end A313791

/-! ## A313791.P8390884786169459976

`A310511(n)+A101455(n)`
-/

namespace A313791.P8390884786169459976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n + A101455 n

end

end A313791.P8390884786169459976

namespace A313791

/-- `A310511(n)+A101455(n)` -/
def P8390884786169459976.Spec : Prop :=
  ∀ n, P8390884786169459976.a n = A313791 n

end A313791

/-! ## A313791.P5006251448330835146

`abs(A008592(n)-A313687(n))`
-/

namespace A313791.P5006251448330835146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313687 n|

end

end A313791.P5006251448330835146

namespace A313791

/-- `abs(A008592(n)-A313687(n))` -/
def P5006251448330835146.Spec : Prop :=
  ∀ n, P5006251448330835146.a n = A313791 n

end A313791

/-! ## A313791.P18286386017578697219

`A313110(n)+n-∑[A021913(n)]`
-/

namespace A313791.P18286386017578697219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313791.P18286386017578697219

namespace A313791

/-- `A313110(n)+n-∑[A021913(n)]` -/
def P18286386017578697219.Spec : Prop :=
  ∀ n, P18286386017578697219.a n = A313791 n

end A313791

/-! ## A313791.P12117596995067649151

`A313110(n)+n-Δ[A011848(n)]`
-/

namespace A313791.P12117596995067649151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313791.P12117596995067649151

namespace A313791

/-- `A313110(n)+n-Δ[A011848(n)]` -/
def P12117596995067649151.Spec : Prop :=
  ∀ n, P12117596995067649151.a n = A313791 n

end A313791

/-! ## A313791.P15381583547512691073

`A301291(n)+n-A004525(A004396(n))`
-/

namespace A313791.P15381583547512691073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313791.P15381583547512691073

namespace A313791

/-- `A301291(n)+n-A004525(A004396(n))` -/
def P15381583547512691073.Spec : Prop :=
  ∀ n, P15381583547512691073.a n = A313791 n

end A313791

/-! ## A313791.P18400427131670233866

`A008458(n)+A008574(n)-A313687(n)`
-/

namespace A313791.P18400427131670233866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313687 n)

end

end A313791.P18400427131670233866

namespace A313791

/-- `A008458(n)+A008574(n)-A313687(n)` -/
def P18400427131670233866.Spec : Prop :=
  ∀ n, P18400427131670233866.a n = A313791 n

end A313791

/-! ## A313791.P4414403631993060776

`A008486(n)+A314953(n)-A008576(n)`
-/

namespace A313791.P4414403631993060776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314953 n - A008576 n)

end

end A313791.P4414403631993060776

namespace A313791

/-- `A008486(n)+A314953(n)-A008576(n)` -/
def P4414403631993060776.Spec : Prop :=
  ∀ n, P4414403631993060776.a n = A313791 n

end A313791

/-! ## A313791.P14405486385212473400

`A315274(n)-A134667(n)`
-/

namespace A313791.P14405486385212473400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315274 n - A134667 n

end

end A313791.P14405486385212473400

namespace A313791

/-- `A315274(n)-A134667(n)` -/
def P14405486385212473400.Spec : Prop :=
  ∀ n, P14405486385212473400.a n = A313791 n

end A313791

/-! ## A313791.P5918788043302337753

`A315417(n)-A128834(n)`
-/

namespace A313791.P5918788043302337753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315417 n - A128834 n

end

end A313791.P5918788043302337753

namespace A313791

/-- `A315417(n)-A128834(n)` -/
def P5918788043302337753.Spec : Prop :=
  ∀ n, P5918788043302337753.a n = A313791 n

theorem P5918788043302337753.correct : P5918788043302337753.Spec := by
  intro n
  simp only [A313791, Nat.add_sub_cancel, A313791.P5918788043302337753.a, A313791.P11156003567688367397.a, A004525, A004525.P4158271949796742323.a, A128834, A128834.P4430347604004376390.a, A313110, A313110.P8718307215339103209.a, A315417, A315417.P14288503187681228952.a, A002264, A002264.P5647656940077635922.a, A312065, A312065.P12266081500591104946.a, A313510, A313510.P5280808024420407807.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313791

/-! ## A313791.P17407442567519599863

`A315417(n)+A010892(n+2)`
-/

namespace A313791.P17407442567519599863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315417 n + A010892 (n + 2)

end

end A313791.P17407442567519599863

namespace A313791

/-- `A315417(n)+A010892(n+2)` -/
def P17407442567519599863.Spec : Prop :=
  ∀ n, P17407442567519599863.a n = A313791 n

end A313791

/-! ## A313791.P2039591046759850557

`A314247(n)-∑[A021913(n)]`
-/

namespace A313791.P2039591046759850557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313791.P2039591046759850557

namespace A313791

/-- `A314247(n)-∑[A021913(n)]` -/
def P2039591046759850557.Spec : Prop :=
  ∀ n, P2039591046759850557.a n = A313791 n

end A313791

/-! ## A313791.P10270431894528509606

`A314247(n)-Δ[A011848(n)]`
-/

namespace A313791.P10270431894528509606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - (f1 (n + 1) - f1 n)

end

end A313791.P10270431894528509606

namespace A313791

/-- `A314247(n)-Δ[A011848(n)]` -/
def P10270431894528509606.Spec : Prop :=
  ∀ n, P10270431894528509606.a n = A313791 n

end A313791

/-! ## A313791.P7616246569839720698

`A314247(n)-A004524(n+1)`
-/

namespace A313791.P7616246569839720698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - A004524 (n + 1)

end

end A313791.P7616246569839720698

namespace A313791

/-- `A314247(n)-A004524(n+1)` -/
def P7616246569839720698.Spec : Prop :=
  ∀ n, P7616246569839720698.a n = A313791 n

end A313791

/-! ## A313791.P3655669785825759130

`A004525(n)+A314247(n)-n`
-/

namespace A313791.P3655669785825759130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314247 n - (n : ℤ))

end

end A313791.P3655669785825759130

namespace A313791

/-- `A004525(n)+A314247(n)-n` -/
def P3655669785825759130.Spec : Prop :=
  ∀ n, P3655669785825759130.a n = A313791 n

theorem P3655669785825759130.correct : P3655669785825759130.Spec := by
  intro n
  simp only [A313791, Nat.add_sub_cancel, A313791.P3655669785825759130.a, A313791.P11156003567688367397.a, A004525, A004525.P4158271949796742323.a, A313110, A313110.P8718307215339103209.a, A314247, A314247.P7920899849790497135.a, A002264, A002264.P5647656940077635922.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313791

/-! ## A313791.P9904971679187311095

`Δ[A054925(n)]+A314247(n)-n`
-/

namespace A313791.P9904971679187311095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314247 n - (n : ℤ))

end

end A313791.P9904971679187311095

namespace A313791

/-- `Δ[A054925(n)]+A314247(n)-n` -/
def P9904971679187311095.Spec : Prop :=
  ∀ n, P9904971679187311095.a n = A313791 n

end A313791

/-! ## A313791.P5492283903174963829

`A004525(n)+A004396(A313924(n))+n`
-/

namespace A313791.P5492283903174963829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A313924 n).toNat + (n : ℤ))

end

end A313791.P5492283903174963829

namespace A313791

/-- `A004525(n)+A004396(A313924(n))+n` -/
def P5492283903174963829.Spec : Prop :=
  ∀ n, P5492283903174963829.a n = A313791 n

end A313791

/-! ## A313791.P11988122109840069699

`A004525(n)+A004396(A314159(n))+n`
-/

namespace A313791.P11988122109840069699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A314159 n).toNat + (n : ℤ))

end

end A313791.P11988122109840069699

namespace A313791

/-- `A004525(n)+A004396(A314159(n))+n` -/
def P11988122109840069699.Spec : Prop :=
  ∀ n, P11988122109840069699.a n = A313791 n

end A313791

/-! ## A313791.P6594167232418377465

`A004525(A311549(2*n))+A004525(n)`
-/

namespace A313791.P6594167232418377465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311549 (2 * n)).toNat + A004525 n

end

end A313791.P6594167232418377465

namespace A313791

/-- `A004525(A311549(2*n))+A004525(n)` -/
def P6594167232418377465.Spec : Prop :=
  ∀ n, P6594167232418377465.a n = A313791 n

end A313791

/-! ## A313791.P14030034638886064244

`A004525(A312113(2*n))+A004525(n)`
-/

namespace A313791.P14030034638886064244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312113 (2 * n)).toNat + A004525 n

end

end A313791.P14030034638886064244

namespace A313791

/-- `A004525(A312113(2*n))+A004525(n)` -/
def P14030034638886064244.Spec : Prop :=
  ∀ n, P14030034638886064244.a n = A313791 n

end A313791

/-!
# A313792: Coordination sequence Gal.6.369.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313792, there is no canonical definition to state claims against.
-/

/-! ## A313792.P10355153153738718666

`A315322(n)-A192280(A192297(n+1))`
-/

namespace A313792.P10355153153738718666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n - A192280 (A192297 (n + 1)).toNat

end

end A313792.P10355153153738718666

/-! ## A313792.P6321263537820815895

`A315703(n)-A001221(A054449(n))`
-/

namespace A313792.P6321263537820815895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A001221 (A054449 n).toNat

end

end A313792.P6321263537820815895

/-! ## A313792.P16424621222471446058

`A313891(n)-A066247(A098477(n))`
-/

namespace A313792.P16424621222471446058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n - A066247 (A098477 n).toNat

end

end A313792.P16424621222471446058

/-! ## A313792.P5225065133664098961

`A313888(n)-A188037(A026938(n))`
-/

namespace A313792.P5225065133664098961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313888 n - A188037 (A026938 n).toNat

end

end A313792.P5225065133664098961

/-! ## A313792.P8799419168735701519

`A160755(A314156(n))`
-/

namespace A313792.P8799419168735701519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A314156 n).toNat

end

end A313792.P8799419168735701519

/-!
# A313793: Coordination sequence Gal.4.134.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313793, the canonical program `A313793.P9174122524385542970` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313793 has offset 0).

The definition of A313793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313793.P12837866413925418439

`ogf((1+3x+2x^2+3x^3+3x^4+3x^5+2x^6+3x^7+x^8)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+x^8))`
-/

namespace A313793.P12837866413925418439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, 3, 3, 3, 2, 3, 1] [1, -2, 2, -2, 2, -2, 2, -2, 1] n

end

end A313793.P12837866413925418439

namespace A313793

/-- `ogf((1+3x+2x^2+3x^3+3x^4+3x^5+2x^6+3x^7+x^8)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+x^8))` -/
def P12837866413925418439.Spec : Prop :=
  ∀ n, P12837866413925418439.a n = A313793 n

end A313793

/-! ## A313793.P9174122524385542970

`A311501(n)+n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313793

/-- `A311501(n)+n` -/
def P9174122524385542970.Spec : Prop :=
  ∀ n, P9174122524385542970.a n = A313793 n

theorem P9174122524385542970.correct : P9174122524385542970.Spec := by
  intro n
  simp only [A313793]

end A313793

/-! ## A313793.P8921592078161773102

`A313115(n)+A004525(n)`
-/

namespace A313793.P8921592078161773102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A004525 n

end

end A313793.P8921592078161773102

namespace A313793

/-- `A313115(n)+A004525(n)` -/
def P8921592078161773102.Spec : Prop :=
  ∀ n, P8921592078161773102.a n = A313793 n

theorem P8921592078161773102.correct : P8921592078161773102.Spec := by
  intro n
  simp only [A313793, Nat.add_sub_cancel, A313793.P8921592078161773102.a, A313793.P9174122524385542970.a, A004525, A004525.P4158271949796742323.a, A311501, A311501.P3617403906977629789.a, A313115, A313115.P1984220492497243584.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313793

/-! ## A313793.P4241696191469857038

`A315469(n)-A046978(n)`
-/

namespace A313793.P4241696191469857038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - A046978 n

end

end A313793.P4241696191469857038

namespace A313793

/-- `A315469(n)-A046978(n)` -/
def P4241696191469857038.Spec : Prop :=
  ∀ n, P4241696191469857038.a n = A313793 n

end A313793

/-! ## A313793.P4077352881111102867

`A315320(n)-A188510(n)`
-/

namespace A313793.P4077352881111102867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315320 n - A188510 n

end

end A313793.P4077352881111102867

namespace A313793

/-- `A315320(n)-A188510(n)` -/
def P4077352881111102867.Spec : Prop :=
  ∀ n, P4077352881111102867.a n = A313793 n

end A313793

/-! ## A313793.P4488043825488851639

`(A311625(n)+A008458(n))/2`
-/

namespace A313793.P4488043825488851639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311625 n + A008458 n : ℚ) / 2

end

end A313793.P4488043825488851639

namespace A313793

/-- `(A311625(n)+A008458(n))/2` -/
def P4488043825488851639.Spec : Prop :=
  ∀ n, P4488043825488851639.a n = (A313793 n : ℚ)

end A313793

/-! ## A313793.P2548267496673085912

`A314672(n)+n-A046978(n)`
-/

namespace A313793.P2548267496673085912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + ((n : ℤ) - A046978 n)

end

end A313793.P2548267496673085912

namespace A313793

/-- `A314672(n)+n-A046978(n)` -/
def P2548267496673085912.Spec : Prop :=
  ∀ n, P2548267496673085912.a n = A313793 n

end A313793

/-! ## A313793.P15509396278555511744

`A312140(n)+n-Δ[A011861(n)]`
-/

namespace A313793.P15509396278555511744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313793.P15509396278555511744

namespace A313793

/-- `A312140(n)+n-Δ[A011861(n)]` -/
def P15509396278555511744.Spec : Prop :=
  ∀ n, P15509396278555511744.a n = A313793 n

end A313793

/-! ## A313793.P14606982572894543664

`A313115(n)+n-Δ[A011848(n)]`
-/

namespace A313793.P14606982572894543664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313793.P14606982572894543664

namespace A313793

/-- `A313115(n)+n-Δ[A011848(n)]` -/
def P14606982572894543664.Spec : Prop :=
  ∀ n, P14606982572894543664.a n = A313793 n

end A313793

/-! ## A313793.P14375091080551590828

`A313152(n)+A004525(A004525(n))`
-/

namespace A313793.P14375091080551590828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n + A004525 (A004525 n).toNat

end

end A313793.P14375091080551590828

namespace A313793

/-- `A313152(n)+A004525(A004525(n))` -/
def P14375091080551590828.Spec : Prop :=
  ∀ n, P14375091080551590828.a n = A313793 n

end A313793

/-! ## A313793.P16820606581989524762

`A312943(n)+A004525(A004525(n)+n)`
-/

namespace A313793.P16820606581989524762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A313793.P16820606581989524762

namespace A313793

/-- `A312943(n)+A004525(A004525(n)+n)` -/
def P16820606581989524762.Spec : Prop :=
  ∀ n, P16820606581989524762.a n = A313793 n

end A313793

/-! ## A313793.P16512085063724373693

`A313292(n)+A046978(A046978(n)+n)`
-/

namespace A313793.P16512085063724373693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313292 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A313793.P16512085063724373693

namespace A313793

/-- `A313292(n)+A046978(A046978(n)+n)` -/
def P16512085063724373693.Spec : Prop :=
  ∀ n, P16512085063724373693.a n = A313793 n

end A313793

/-! ## A313793.P788743065991824041

`A301291(n)+n-A004525(A004525(n))`
-/

namespace A313793.P788743065991824041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A313793.P788743065991824041

namespace A313793

/-- `A301291(n)+n-A004525(A004525(n))` -/
def P788743065991824041.Spec : Prop :=
  ∀ n, P788743065991824041.a n = A313793 n

theorem P788743065991824041.correct : P788743065991824041.Spec := by
  intro n
  simp only [A313793, Nat.add_sub_cancel, A313793.P788743065991824041.a, A313793.P9174122524385542970.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, A311501, A311501.P3617403906977629789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313793

/-! ## A313793.P12374243588690863752

`A314969(n)+A004525(n-A004525(n))`
-/

namespace A313793.P12374243588690863752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A313793.P12374243588690863752

namespace A313793

/-- `A314969(n)+A004525(n-A004525(n))` -/
def P12374243588690863752.Spec : Prop :=
  ∀ n, P12374243588690863752.a n = A313793 n

end A313793

/-! ## A313793.P5095835501236896173

`A008458(n)+A008574(n)-A313685(n)`
-/

namespace A313793.P5095835501236896173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313685 n)

end

end A313793.P5095835501236896173

namespace A313793

/-- `A008458(n)+A008574(n)-A313685(n)` -/
def P5095835501236896173.Spec : Prop :=
  ∀ n, P5095835501236896173.a n = A313793 n

end A313793

/-! ## A313793.P5688069134477020959

`A314112(n)-A046978(n-A046978(n))`
-/

namespace A313793.P5688069134477020959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314112 n - A046978 ((n : ℤ) - A046978 n).toNat

end

end A313793.P5688069134477020959

namespace A313793

/-- `A314112(n)-A046978(n-A046978(n))` -/
def P5688069134477020959.Spec : Prop :=
  ∀ n, P5688069134477020959.a n = A313793 n

end A313793

/-! ## A313793.P5581841129307385779

`A004525(n)+A008706(n)-A004525(A004525(n))`
-/

namespace A313793.P5581841129307385779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008706 n - A004525 (A004525 n).toNat)

end

end A313793.P5581841129307385779

namespace A313793

/-- `A004525(n)+A008706(n)-A004525(A004525(n))` -/
def P5581841129307385779.Spec : Prop :=
  ∀ n, P5581841129307385779.a n = A313793 n

end A313793

/-! ## A313793.P5605001228757843120

`A314161(n)-A004525(n-A004525(n))`
-/

namespace A313793.P5605001228757843120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A313793.P5605001228757843120

namespace A313793

/-- `A314161(n)-A004525(n-A004525(n))` -/
def P5605001228757843120.Spec : Prop :=
  ∀ n, P5605001228757843120.a n = A313793 n

end A313793

/-! ## A313793.P6017678786001857195

`abs(A008592(n)+n-A315745(n))`
-/

namespace A313793.P6017678786001857195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A315745 n)|

end

end A313793.P6017678786001857195

namespace A313793

/-- `abs(A008592(n)+n-A315745(n))` -/
def P6017678786001857195.Spec : Prop :=
  ∀ n, P6017678786001857195.a n = A313793 n

end A313793

/-! ## A313793.P8478835991581097635

`A314250(n)-A047273(n+1)+n`
-/

namespace A313793.P8478835991581097635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314250 n - A047273 (n + 1) + (n : ℤ)

end

end A313793.P8478835991581097635

namespace A313793

/-- `A314250(n)-A047273(n+1)+n` -/
def P8478835991581097635.Spec : Prop :=
  ∀ n, P8478835991581097635.a n = A313793 n

end A313793

/-!
# A313794: Coordination sequence Gal.6.619.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313794, the canonical program `A313794.P6065180597494154832` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313794 has offset 0).

The definition of A313794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313794.P4389466224715311355

`A311512(n)+n`
-/

namespace A313794.P4389466224715311355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + (n : ℤ)

end

end A313794.P4389466224715311355

namespace A313794

/-- `A311512(n)+n` -/
def P4389466224715311355.Spec : Prop :=
  ∀ n, P4389466224715311355.a n = A313794 n

end A313794

/-! ## A313794.P6065180597494154832

`abs(10*n-A313684(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313794

/-- `abs(10*n-A313684(n))` -/
def P6065180597494154832.Spec : Prop :=
  ∀ n, P6065180597494154832.a n = A313794 n

theorem P6065180597494154832.correct : P6065180597494154832.Spec := by
  intro n
  simp only [A313794]

end A313794

/-! ## A313794.P2279002546677120378

`A314959(n)+round(n/3)`
-/

namespace A313794.P2279002546677120378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314959 n + SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A313794.P2279002546677120378

namespace A313794

/-- `A314959(n)+round(n/3)` -/
def P2279002546677120378.Spec : Prop :=
  ∀ n, P2279002546677120378.a n = A313794 n

end A313794

/-! ## A313794.P3364129820593753288

`A313117(n)+A004525(n)`
-/

namespace A313794.P3364129820593753288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n + A004525 n

end

end A313794.P3364129820593753288

namespace A313794

/-- `A313117(n)+A004525(n)` -/
def P3364129820593753288.Spec : Prop :=
  ∀ n, P3364129820593753288.a n = A313794 n

end A313794

/-! ## A313794.P11279134886661362728

`A315421(n)-A128834(n)`
-/

namespace A313794.P11279134886661362728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315421 n - A128834 n

end

end A313794.P11279134886661362728

namespace A313794

/-- `A315421(n)-A128834(n)` -/
def P11279134886661362728.Spec : Prop :=
  ∀ n, P11279134886661362728.a n = A313794 n

end A313794

/-! ## A313794.P1832452762554913641

`A005843(n)-(n-A311512(n))`
-/

namespace A313794.P1832452762554913641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311512 n)

end

end A313794.P1832452762554913641

namespace A313794

/-- `A005843(n)-(n-A311512(n))` -/
def P1832452762554913641.Spec : Prop :=
  ∀ n, P1832452762554913641.a n = A313794 n

end A313794

/-! ## A313794.P11042505616038548070

`A313057(n)+A004396(2*A004525(n))`
-/

namespace A313794.P11042505616038548070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A004396 (2 * A004525 n).toNat

end

end A313794.P11042505616038548070

namespace A313794

/-- `A313057(n)+A004396(2*A004525(n))` -/
def P11042505616038548070.Spec : Prop :=
  ∀ n, P11042505616038548070.a n = A313794 n

end A313794

/-! ## A313794.P12577096730684167399

`A008458(n)+A008574(n)-A313684(n)`
-/

namespace A313794.P12577096730684167399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313684 n)

end

end A313794.P12577096730684167399

namespace A313794

/-- `A008458(n)+A008574(n)-A313684(n)` -/
def P12577096730684167399.Spec : Prop :=
  ∀ n, P12577096730684167399.a n = A313794 n

end A313794

/-! ## A313794.P5707645238949315799

`A008486(n)+A314959(n)-A008576(n)`
-/

namespace A313794.P5707645238949315799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314959 n - A008576 n)

end

end A313794.P5707645238949315799

namespace A313794

/-- `A008486(n)+A314959(n)-A008576(n)` -/
def P5707645238949315799.Spec : Prop :=
  ∀ n, P5707645238949315799.a n = A313794 n

end A313794

/-! ## A313794.P11260567252797709051

`A004396(n)+A313583(n)-A004525(A004396(n))`
-/

namespace A313794.P11260567252797709051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313583 n - A004525 (A004396 n).toNat)

end

end A313794.P11260567252797709051

namespace A313794

/-- `A004396(n)+A313583(n)-A004525(A004396(n))` -/
def P11260567252797709051.Spec : Prop :=
  ∀ n, P11260567252797709051.a n = A313794 n

end A313794

/-! ## A313794.P8611261034530013749

`A314159(n)-A004525(n-A004396(n))`
-/

namespace A313794.P8611261034530013749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314159 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313794.P8611261034530013749

namespace A313794

/-- `A314159(n)-A004525(n-A004396(n))` -/
def P8611261034530013749.Spec : Prop :=
  ∀ n, P8611261034530013749.a n = A313794 n

end A313794

/-! ## A313794.P9262156147840416446

`A315499(n)-A047424(n+1)+n`
-/

namespace A313794.P9262156147840416446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315499 n - A047424 (n + 1) + (n : ℤ)

end

end A313794.P9262156147840416446

namespace A313794

/-- `A315499(n)-A047424(n+1)+n` -/
def P9262156147840416446.Spec : Prop :=
  ∀ n, P9262156147840416446.a n = A313794 n

end A313794

/-! ## A313794.P6501124936322804103

`A314254(n)-A004524(n+1)`
-/

namespace A313794.P6501124936322804103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n - A004524 (n + 1)

end

end A313794.P6501124936322804103

namespace A313794

/-- `A314254(n)-A004524(n+1)` -/
def P6501124936322804103.Spec : Prop :=
  ∀ n, P6501124936322804103.a n = A313794 n

end A313794

/-! ## A313794.P11189628290611476012

`A004525(n)+A314254(n)-n`
-/

namespace A313794.P11189628290611476012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314254 n - (n : ℤ))

end

end A313794.P11189628290611476012

namespace A313794

/-- `A004525(n)+A314254(n)-n` -/
def P11189628290611476012.Spec : Prop :=
  ∀ n, P11189628290611476012.a n = A313794 n

end A313794

/-! ## A313794.P4475873982046354829

`A314254(n)-A047273(n+1)+n`
-/

namespace A313794.P4475873982046354829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n - A047273 (n + 1) + (n : ℤ)

end

end A313794.P4475873982046354829

namespace A313794

/-- `A314254(n)-A047273(n+1)+n` -/
def P4475873982046354829.Spec : Prop :=
  ∀ n, P4475873982046354829.a n = A313794 n

end A313794

/-! ## A313794.P18062910793241325150

`A004396(A313126(n))+2*n`
-/

namespace A313794.P18062910793241325150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313126 n).toNat + (2 * n : ℤ)

end

end A313794.P18062910793241325150

namespace A313794

/-- `A004396(A313126(n))+2*n` -/
def P18062910793241325150.Spec : Prop :=
  ∀ n, P18062910793241325150.a n = A313794 n

end A313794

/-! ## A313794.P457343513918795627

`A004396(2*A311512(n)-A004396(n))`
-/

namespace A313794.P457343513918795627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A311512 n - A004396 n).toNat

end

end A313794.P457343513918795627

namespace A313794

/-- `A004396(2*A311512(n)-A004396(n))` -/
def P457343513918795627.Spec : Prop :=
  ∀ n, P457343513918795627.a n = A313794 n

end A313794

/-! ## A313794.P1289818991676457735

`A004396(A311512(n)-(A004396(n)-A311512(n)))`
-/

namespace A313794.P1289818991676457735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311512 n - (A004396 n - A311512 n)).toNat

end

end A313794.P1289818991676457735

namespace A313794

/-- `A004396(A311512(n)-(A004396(n)-A311512(n)))` -/
def P1289818991676457735.Spec : Prop :=
  ∀ n, P1289818991676457735.a n = A313794 n

end A313794

/-! ## A313794.P10559153925013144044

`A004525(2*A314770(n)+n)`
-/

namespace A313794.P10559153925013144044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A314770 n + (n : ℤ)).toNat

end

end A313794.P10559153925013144044

namespace A313794

/-- `A004525(2*A314770(n)+n)` -/
def P10559153925013144044.Spec : Prop :=
  ∀ n, P10559153925013144044.a n = A313794 n

end A313794

/-! ## A313794.P8888597447105522239

`A004525(2*A314899(n)+n)`
-/

namespace A313794.P8888597447105522239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A314899 n + (n : ℤ)).toNat

end

end A313794.P8888597447105522239

namespace A313794

/-- `A004525(2*A314899(n)+n)` -/
def P8888597447105522239.Spec : Prop :=
  ∀ n, P8888597447105522239.a n = A313794 n

end A313794

/-!
# A313795: Coordination sequence Gal.6.647.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313795, the canonical program `A313795.P7231696146047566351` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313795 has offset 0).

The definition of A313795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313795.P7231696146047566351

`A314898(n)+∑[A021913(A032766(n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313795

/-- `A314898(n)+∑[A021913(A032766(n))]` -/
def P7231696146047566351.Spec : Prop :=
  ∀ n, P7231696146047566351.a n = A313795 n

theorem P7231696146047566351.correct : P7231696146047566351.Spec := by
  intro n
  simp only [A313795]

end A313795

/-! ## A313795.P15445772660398126210

`A311501(n)-(A312892(n)-A314112(n))`
-/

namespace A313795.P15445772660398126210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n - (A312892 n - A314112 n)

end

end A313795.P15445772660398126210

namespace A313795

/-- `A311501(n)-(A312892(n)-A314112(n))` -/
def P15445772660398126210.Spec : Prop :=
  ∀ n, P15445772660398126210.a n = A313795 n

end A313795

/-! ## A313795.P12620527619375505507

`A314161(n)-A004525(A057354(n+1))`
-/

namespace A313795.P12620527619375505507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A004525 (A057354 (n + 1)).toNat

end

end A313795.P12620527619375505507

namespace A313795

/-- `A314161(n)-A004525(A057354(n+1))` -/
def P12620527619375505507.Spec : Prop :=
  ∀ n, P12620527619375505507.a n = A313795 n

end A313795

/-! ## A313795.P7567790116205605581

`A008706(n)+A314161(n)-A314111(n)`
-/

namespace A313795.P7567790116205605581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A314161 n - A314111 n)

end

end A313795.P7567790116205605581

namespace A313795

/-- `A008706(n)+A314161(n)-A314111(n)` -/
def P7567790116205605581.Spec : Prop :=
  ∀ n, P7567790116205605581.a n = A313795 n

end A313795

/-! ## A313795.P413349835060715833

`A008458(n)-(n-(A314161(n)-A314111(n)))`
-/

namespace A313795.P413349835060715833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - ((n : ℤ) - (A314161 n - A314111 n))

end

end A313795.P413349835060715833

namespace A313795

/-- `A008458(n)-(n-(A314161(n)-A314111(n)))` -/
def P413349835060715833.Spec : Prop :=
  ∀ n, P413349835060715833.a n = A313795 n

end A313795

/-! ## A313795.P12486421655602602052

`A123108(10*n)+A314161(n)-A314111(n)`
-/

namespace A313795.P12486421655602602052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (10 * n) + (A314161 n - A314111 n)

end

end A313795.P12486421655602602052

namespace A313795

/-- `A123108(10*n)+A314161(n)-A314111(n)` -/
def P12486421655602602052.Spec : Prop :=
  ∀ n, P12486421655602602052.a n = A313795 n

end A313795

/-! ## A313795.P10754838239128096995

`A314898(n)+Δ[A004524(A161680(n))]`
-/

namespace A313795.P10754838239128096995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n + (f1 (n + 1) - f1 n)

end

end A313795.P10754838239128096995

namespace A313795

/-- `A314898(n)+Δ[A004524(A161680(n))]` -/
def P10754838239128096995.Spec : Prop :=
  ∀ n, P10754838239128096995.a n = A313795 n

end A313795

/-!
# A313796: Coordination sequence Gal.6.364.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313796, the canonical program `A313796.P3423147964803462529` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313796 has offset 0).

The definition of A313796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313796.P3423147964803462529

`ogf((1+3x+x^2+x^4+4x^7+x^10+x^12+3x^13+x^14)/(1-2x+x^2+x^6-2x^7+x^8+x^12-2x^13+x^14))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A313796

/-- `ogf((1+3x+x^2+x^4+4x^7+x^10+x^12+3x^13+x^14)/(1-2x+x^2+x^6-2x^7+x^8+x^12-2x^13+x^14))` -/
def P3423147964803462529.Spec : Prop :=
  ∀ n, P3423147964803462529.a n = A313796 n

theorem P3423147964803462529.correct : P3423147964803462529.Spec := by
  intro n
  simp only [A313796]

end A313796

/-! ## A313796.P6926913379341670475

`A000196(A315339(n*A313799(n)))`
-/

namespace A313796.P6926913379341670475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A315339 ((n : ℤ) * A313799 n).toNat).toNat

end

end A313796.P6926913379341670475

namespace A313796

/-- `A000196(A315339(n*A313799(n)))` -/
def P6926913379341670475.Spec : Prop :=
  ∀ n, P6926913379341670475.a n = A313796 n

end A313796

/-! ## A313796.P2188110726484771446

`A313639(n)+A097795(A022144(n))`
-/

namespace A313796.P2188110726484771446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313639 n + A097795 (A022144 n).toNat

end

end A313796.P2188110726484771446

namespace A313796

/-- `A313639(n)+A097795(A022144(n))` -/
def P2188110726484771446.Spec : Prop :=
  ∀ n, P2188110726484771446.a n = A313796 n

end A313796

/-! ## A313796.P9205190809930600647

`A313795(n)+A286907(A286892(n))`
-/

namespace A313796.P9205190809930600647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313795 n + A286907 (A286892 n).toNat

end

end A313796.P9205190809930600647

namespace A313796

/-- `A313795(n)+A286907(A286892(n))` -/
def P9205190809930600647.Spec : Prop :=
  ∀ n, P9205190809930600647.a n = A313796 n

end A313796

/-! ## A313796.P11422012949973233722

`A313894(n)-A156659(record[A129246(n+1)])`
-/

namespace A313796.P11422012949973233722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A156659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A313796.P11422012949973233722

namespace A313796

/-- `A313894(n)-A156659(record[A129246(n+1)])` -/
def P11422012949973233722.Spec : Prop :=
  ∀ n, P11422012949973233722.a n = A313796 n

end A313796

/-!
# A313797: Coordination sequence Gal.4.103.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313797, there is no canonical definition to state claims against.
-/

/-! ## A313797.P9198852536935615227

`A288708(A311523(n)^A208673(n))`
-/

namespace A313797.P9198852536935615227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288708 (SequenceMachineLib.roundAway ((A311523 n : ℚ) ^ (A208673 n : ℤ))).toNat

end

end A313797.P9198852536935615227

/-! ## A313797.P2915103189990644333

`A314134(n)-A322338(A134869(n+1))`
-/

namespace A313797.P2915103189990644333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314134 n - A322338 (A134869 (n + 1)).toNat

end

end A313797.P2915103189990644333

/-! ## A313797.P3987386168166934007

`A314134(n)-A000035(A006451(n))`
-/

namespace A313797.P3987386168166934007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314134 n - A000035 (A006451 n).toNat

end

end A313797.P3987386168166934007

/-! ## A313797.P13285036235460164328

`A313928(n)-A227761(A200748(n))`
-/

namespace A313797.P13285036235460164328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n - A227761 (A200748 n).toNat

end

end A313797.P13285036235460164328

/-! ## A313797.P3078948718730698635

`A311522(n)+record[A001222(A103505(n))]`
-/

namespace A313797.P3078948718730698635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311522 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313797.P3078948718730698635

/-!
# A313798: Coordination sequence Gal.5.209.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313798, there is no canonical definition to state claims against.
-/

/-! ## A313798.P15327896608092755096

`A313636(n)+A001222(A008323(n))`
-/

namespace A313798.P15327896608092755096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313636 n + A001222 (A008323 n).toNat

end

end A313798.P15327896608092755096

/-! ## A313798.P8967405177895076850

`A313637(n)+A001222(A008323(n))`
-/

namespace A313798.P8967405177895076850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313637 n + A001222 (A008323 n).toNat

end

end A313798.P8967405177895076850

/-! ## A313798.P5727032846370094402

`A314151(n)-A025457(A052545(n))`
-/

namespace A313798.P5727032846370094402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A025457 (A052545 n).toNat

end

end A313798.P5727032846370094402

/-! ## A313798.P15194758475123423260

`or(A159631(A048578(n)), A310464(n))`
-/

namespace A313798.P15194758475123423260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A159631 (A048578 n).toNat) (A310464 n)

end

end A313798.P15194758475123423260

/-! ## A313798.P9642264786243675518

`∑[A272886(∑[A347405(3*n+1)])]`
-/

namespace A313798.P9642264786243675518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347405 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272886 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313798.P9642264786243675518

/-!
# A313799: Coordination sequence Gal.3.53.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313799, the canonical program `A313799.P9233664221489644288` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313799 has offset 0).

The definition of A313799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313799.P6799186857467928531

`ogf((1+3x+x^2+x^3+4x^4+x^5+x^6+3x^7+x^8)/(1-2x+x^2+x^3-2x^4+x^5+x^6-2x^7+x^8))`
-/

namespace A313799.P6799186857467928531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 1, 4, 1, 1, 3, 1] [1, -2, 1, 1, -2, 1, 1, -2, 1] n

end

end A313799.P6799186857467928531

namespace A313799

/-- `ogf((1+3x+x^2+x^3+4x^4+x^5+x^6+3x^7+x^8)/(1-2x+x^2+x^3-2x^4+x^5+x^6-2x^7+x^8))` -/
def P6799186857467928531.Spec : Prop :=
  ∀ n, P6799186857467928531.a n = A313799 n

end A313799

/-! ## A313799.P9233664221489644288

`abs(A008592(n)-A313683(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313799

/-- `abs(A008592(n)-A313683(n))` -/
def P9233664221489644288.Spec : Prop :=
  ∀ n, P9233664221489644288.a n = A313799 n

theorem P9233664221489644288.correct : P9233664221489644288.Spec := by
  intro n
  simp only [A313799]

end A313799

/-! ## A313799.P5883302634150485561

`A311287(n)+A047588(n+1)`
-/

namespace A313799.P5883302634150485561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311287 n + A047588 (n + 1)

end

end A313799.P5883302634150485561

namespace A313799

/-- `A311287(n)+A047588(n+1)` -/
def P5883302634150485561.Spec : Prop :=
  ∀ n, P5883302634150485561.a n = A313799 n

end A313799

/-! ## A313799.P17707653715691935811

`A093390(n+3)+A008706(n)`
-/

namespace A313799.P17707653715691935811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (n + 3) + A008706 n

end

end A313799.P17707653715691935811

namespace A313799

/-- `A093390(n+3)+A008706(n)` -/
def P17707653715691935811.Spec : Prop :=
  ∀ n, P17707653715691935811.a n = A313799 n

end A313799

/-! ## A313799.P4244067065576087635

`(A311633(n)+A008458(n))/2`
-/

namespace A313799.P4244067065576087635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311633 n + A008458 n : ℚ) / 2

end

end A313799.P4244067065576087635

namespace A313799

/-- `(A311633(n)+A008458(n))/2` -/
def P4244067065576087635.Spec : Prop :=
  ∀ n, P4244067065576087635.a n = (A313799 n : ℚ)

end A313799

/-! ## A313799.P15920722359411477581

`2*A008706(n)-A313683(n)`
-/

namespace A313799.P15920722359411477581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313683 n

end

end A313799.P15920722359411477581

namespace A313799

/-- `2*A008706(n)-A313683(n)` -/
def P15920722359411477581.Spec : Prop :=
  ∀ n, P15920722359411477581.a n = A313799 n

end A313799

/-! ## A313799.P2297434378882186497

`A311612(n)+A004396(A004396(2*n))`
-/

namespace A313799.P2297434378882186497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311612 n + A004396 (A004396 (2 * n)).toNat

end

end A313799.P2297434378882186497

namespace A313799

/-- `A311612(n)+A004396(A004396(2*n))` -/
def P2297434378882186497.Spec : Prop :=
  ∀ n, P2297434378882186497.a n = A313799 n

end A313799

/-! ## A313799.P10824179942791450958

`A310521(n)+A128834(2*A006369(n))`
-/

namespace A313799.P10824179942791450958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n + A128834 (2 * A006369 n).toNat

end

end A313799.P10824179942791450958

namespace A313799

/-- `A310521(n)+A128834(2*A006369(n))` -/
def P10824179942791450958.Spec : Prop :=
  ∀ n, P10824179942791450958.a n = A313799 n

end A313799

/-! ## A313799.P17157203186981337611

`A311344(n)+A004396(A004396(n)+n)`
-/

namespace A313799.P17157203186981337611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A313799.P17157203186981337611

namespace A313799

/-- `A311344(n)+A004396(A004396(n)+n)` -/
def P17157203186981337611.Spec : Prop :=
  ∀ n, P17157203186981337611.a n = A313799 n

end A313799

/-! ## A313799.P4074275306357184079

`A314971(n)+A004396(n-A004396(n))`
-/

namespace A313799.P4074275306357184079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314971 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313799.P4074275306357184079

namespace A313799

/-- `A314971(n)+A004396(n-A004396(n))` -/
def P4074275306357184079.Spec : Prop :=
  ∀ n, P4074275306357184079.a n = A313799 n

end A313799

/-! ## A313799.P8259751370925459324

`A008458(n)+A008574(n)-A313683(n)`
-/

namespace A313799.P8259751370925459324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313683 n)

end

end A313799.P8259751370925459324

namespace A313799

/-- `A008458(n)+A008574(n)-A313683(n)` -/
def P8259751370925459324.Spec : Prop :=
  ∀ n, P8259751370925459324.a n = A313799 n

end A313799

/-! ## A313799.P15761646982127925993

`A005843(n)+A005843(A008574(n))-A313683(n)`
-/

namespace A313799.P15761646982127925993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313683 n)

end

end A313799.P15761646982127925993

namespace A313799

/-- `A005843(n)+A005843(A008574(n))-A313683(n)` -/
def P15761646982127925993.Spec : Prop :=
  ∀ n, P15761646982127925993.a n = A313799 n

end A313799

/-! ## A313799.P17338364367591636976

`A311633(n)+A001281(A008458(n)-A311633(n))`
-/

namespace A313799.P17338364367591636976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 n + A001281 (A008458 n - A311633 n).toNat

end

end A313799.P17338364367591636976

namespace A313799

/-- `A311633(n)+A001281(A008458(n)-A311633(n))` -/
def P17338364367591636976.Spec : Prop :=
  ∀ n, P17338364367591636976.a n = A313799 n

end A313799

/-! ## A313799.P11402912123572252949

`A311633(n)+A004525(A008458(n)-A311633(n))`
-/

namespace A313799.P11402912123572252949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 n + A004525 (A008458 n - A311633 n).toNat

end

end A313799.P11402912123572252949

namespace A313799

/-- `A311633(n)+A004525(A008458(n)-A311633(n))` -/
def P11402912123572252949.Spec : Prop :=
  ∀ n, P11402912123572252949.a n = A313799 n

end A313799

/-! ## A313799.P15406873716104509316

`A313125(n)+A004396(A004396(n))`
-/

namespace A313799.P15406873716104509316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A004396 (A004396 n).toNat

end

end A313799.P15406873716104509316

namespace A313799

/-- `A313125(n)+A004396(A004396(n))` -/
def P15406873716104509316.Spec : Prop :=
  ∀ n, P15406873716104509316.a n = A313799 n

end A313799

/-! ## A313799.P18312296103336007080

`A314141(n)+A128834(A006369(2*n))`
-/

namespace A313799.P18312296103336007080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + A128834 (A006369 (2 * n)).toNat

end

end A313799.P18312296103336007080

namespace A313799

/-- `A314141(n)+A128834(A006369(2*n))` -/
def P18312296103336007080.Spec : Prop :=
  ∀ n, P18312296103336007080.a n = A313799 n

end A313799

/-! ## A313799.P11818007093282051597

`A314141(n)-A102283(n-A004396(n))`
-/

namespace A313799.P11818007093282051597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n - A102283 ((n : ℤ) - A004396 n).toNat

end

end A313799.P11818007093282051597

namespace A313799

/-- `A314141(n)-A102283(n-A004396(n))` -/
def P11818007093282051597.Spec : Prop :=
  ∀ n, P11818007093282051597.a n = A313799 n

end A313799

/-! ## A313799.P10260105994666345104

`A314163(n)-A004396(n-A004396(n))`
-/

namespace A313799.P10260105994666345104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313799.P10260105994666345104

namespace A313799

/-- `A314163(n)-A004396(n-A004396(n))` -/
def P10260105994666345104.Spec : Prop :=
  ∀ n, P10260105994666345104.a n = A313799 n

end A313799

/-! ## A313799.P11511075687657982593

`A313927(n)-Δ[A011862(n)]`
-/

namespace A313799.P11511075687657982593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313927 n - (f1 (n + 1) - f1 n)

end

end A313799.P11511075687657982593

namespace A313799

/-- `A313927(n)-Δ[A011862(n)]` -/
def P11511075687657982593.Spec : Prop :=
  ∀ n, P11511075687657982593.a n = A313799 n

end A313799

/-! ## A313799.P2706040484916460750

`A004396(A004396(n))+A313927(n)-A004396(n)`
-/

namespace A313799.P2706040484916460750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313927 n - A004396 n)

end

end A313799.P2706040484916460750

namespace A313799

/-- `A004396(A004396(n))+A313927(n)-A004396(n)` -/
def P2706040484916460750.Spec : Prop :=
  ∀ n, P2706040484916460750.a n = A313799 n

end A313799

