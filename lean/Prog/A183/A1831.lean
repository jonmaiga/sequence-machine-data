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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C031
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A183100: a(n) is the sum of divisors d of n which are either 1 or of the form Product_{i} (p_i^e_i) where at least one e_i = 1.

The programs for A183100, the canonical program `A183100.P18299511243728987249` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183100 has offset 1).

The definition of A183100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183098, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183100.P18299511243728987249

`A183098(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A183100

/-- `A183098(n+1)+1` -/
def P18299511243728987249.Spec : Prop :=
  ∀ n, P18299511243728987249.a n = A183100 (n + 1)

theorem P18299511243728987249.correct : P18299511243728987249.Spec := by
  intro n
  simp only [A183100, Nat.add_sub_cancel]

end A183100

/-! ## A183100.P14416266127950785818

`A000203(n+1)-A183099(n+1)`
-/

namespace A183100.P14416266127950785818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A183099 (n + 1)

end

end A183100.P14416266127950785818

namespace A183100

/-- `A000203(n+1)-A183099(n+1)` -/
def P14416266127950785818.Spec : Prop :=
  ∀ n, P14416266127950785818.a n = A183100 (n + 1)

end A183100

/-! ## A183100.P9584019677009733770

`∑{d}[n+1, lcm(#, A080367(#))]+1`
-/

namespace A183100.P9584019677009733770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lcm (d : ℤ) (A080367 d) + 1

end

end A183100.P9584019677009733770

namespace A183100

/-- `∑{d}[n+1, lcm(#, A080367(#))]+1` -/
def P9584019677009733770.Spec : Prop :=
  ∀ n, (P9584019677009733770.a n : ℤ) = A183100 (n + 1)

end A183100

/-! ## A183100.P6089125655973568341

`A088580(n+1)-A183097(n+1)`
-/

namespace A183100.P6089125655973568341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A183097 (n + 1)

end

end A183100.P6089125655973568341

namespace A183100

/-- `A088580(n+1)-A183097(n+1)` -/
def P6089125655973568341.Spec : Prop :=
  ∀ n, P6089125655973568341.a n = A183100 (n + 1)

end A183100

/-! ## A183100.P9560453002422957769

`A000203(n+1)+1-A183097(n+1)`
-/

namespace A183100.P9560453002422957769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A183097 (n + 1))

end

end A183100.P9560453002422957769

namespace A183100

/-- `A000203(n+1)+1-A183097(n+1)` -/
def P9560453002422957769.Spec : Prop :=
  ∀ n, P9560453002422957769.a n = A183100 (n + 1)

end A183100

/-! ## A183100.P12417551465882919025

`A155085(n+1)-(A183097(n+1)+n)`
-/

namespace A183100.P12417551465882919025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (A183097 (n + 1) + (n : ℤ))

end

end A183100.P12417551465882919025

namespace A183100

/-- `A155085(n+1)-(A183097(n+1)+n)` -/
def P12417551465882919025.Spec : Prop :=
  ∀ n, P12417551465882919025.a n = A183100 (n + 1)

end A183100

/-! ## A183100.P13995441292446881599

`A091051(n+1)+A183101(n+1)-A183099(n+1)`
-/

namespace A183100.P13995441292446881599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091051 (n + 1) + (A183101 (n + 1) - A183099 (n + 1))

end

end A183100.P13995441292446881599

namespace A183100

/-- `A091051(n+1)+A183101(n+1)-A183099(n+1)` -/
def P13995441292446881599.Spec : Prop :=
  ∀ n, P13995441292446881599.a n = A183100 (n + 1)

end A183100

/-! ## A183100.P14520090464074644353

`A183101(n+1)+A001222(A183058(n+1))`
-/

namespace A183100.P14520090464074644353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183101 (n + 1) + A001222 (A183058 (n + 1)).toNat

end

end A183100.P14520090464074644353

namespace A183100

/-- `A183101(n+1)+A001222(A183058(n+1))` -/
def P14520090464074644353.Spec : Prop :=
  ∀ n, P14520090464074644353.a n = A183100 (n + 1)

end A183100

/-! ## A183100.P980649568609105545

`A183101(n+1)%A322409(n)+1`
-/

namespace A183100.P980649568609105545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183101 (n + 1)) (A322409 n) + 1

end

end A183100.P980649568609105545

namespace A183100

/-- `A183101(n+1)%A322409(n)+1` -/
def P980649568609105545.Spec : Prop :=
  ∀ n, P980649568609105545.a n = A183100 (n + 1)

end A183100

/-!
# A183101: a(n) = sum of divisors of n that are not perfect powers.

The programs for A183101, the canonical program `A183101.P16697134400805324664` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183101 has offset 1).

The definition of A183101 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183101.P16697134400805324664

`A000203(n+1)-A091051(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A183101

/-- `A000203(n+1)-A091051(n+1)` -/
def P16697134400805324664.Spec : Prop :=
  ∀ n, P16697134400805324664.a n = A183101 (n + 1)

theorem P16697134400805324664.correct : P16697134400805324664.Spec := by
  intro n
  simp only [A183101, Nat.add_sub_cancel]

end A183101

/-! ## A183101.P15420687202051647991

`∑{d}[n+1, #%A175781(#)²]`
-/

namespace A183101.P15420687202051647991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A175781 d ^ 2)

end

end A183101.P15420687202051647991

namespace A183101

/-- `∑{d}[n+1, #%A175781(#)²]` -/
def P15420687202051647991.Spec : Prop :=
  ∀ n, P15420687202051647991.a n = A183101 (n + 1)

end A183101

/-! ## A183101.P4165900739336519004

`∑{d}[n+1, #*A132350(#)]-1`
-/

namespace A183101.P4165900739336519004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A132350 d - 1

end

end A183101.P4165900739336519004

namespace A183101

/-- `∑{d}[n+1, #*A132350(#)]-1` -/
def P4165900739336519004.Spec : Prop :=
  ∀ n, P4165900739336519004.a n = A183101 (n + 1)

end A183101

/-! ## A183101.P7378484968606288857

`Δ[A160664(n)]-A091051(n+1)`
-/

namespace A183101.P7378484968606288857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091051 (n + 1)

end

end A183101.P7378484968606288857

namespace A183101

/-- `Δ[A160664(n)]-A091051(n+1)` -/
def P7378484968606288857.Spec : Prop :=
  ∀ n, P7378484968606288857.a n = A183101 (n + 1)

end A183101

/-! ## A183101.P5584496774535014119

`A245092(Δ[n²])-A091051(n+1)`
-/

namespace A183101.P5584496774535014119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A091051 (n + 1)

end

end A183101.P5584496774535014119

namespace A183101

/-- `A245092(Δ[n²])-A091051(n+1)` -/
def P5584496774535014119.Spec : Prop :=
  ∀ n, P5584496774535014119.a n = A183101 (n + 1)

end A183101

/-! ## A183101.P3280543978873759673

`A088580(n+1)-(A091051(n+1)+1)`
-/

namespace A183101.P3280543978873759673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A091051 (n + 1) + 1)

end

end A183101.P3280543978873759673

namespace A183101

/-- `A088580(n+1)-(A091051(n+1)+1)` -/
def P3280543978873759673.Spec : Prop :=
  ∀ n, P3280543978873759673.a n = A183101 (n + 1)

end A183101

/-! ## A183101.P16096205208489177624

`A183097(n+1)+A183098(n+1)-A091051(n+1)`
-/

namespace A183101.P16096205208489177624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1) + (A183098 (n + 1) - A091051 (n + 1))

end

end A183101.P16096205208489177624

namespace A183101

/-- `A183097(n+1)+A183098(n+1)-A091051(n+1)` -/
def P16096205208489177624.Spec : Prop :=
  ∀ n, P16096205208489177624.a n = A183101 (n + 1)

end A183101

/-! ## A183101.P13579480349527240442

`A183099(n+1)+A183100(n+1)-A091051(n+1)`
-/

namespace A183101.P13579480349527240442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183099 (n + 1) + (A183100 (n + 1) - A091051 (n + 1))

end

end A183101.P13579480349527240442

namespace A183101

/-- `A183099(n+1)+A183100(n+1)-A091051(n+1)` -/
def P13579480349527240442.Spec : Prop :=
  ∀ n, P13579480349527240442.a n = A183101 (n + 1)

end A183101

/-!
# A183102: a(n) = product of powerful divisors d of n.

The programs for A183102, the canonical program `A183102.P5997989869354397297` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183102 has offset 1).

The definition of A183102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183102.P2315571443159527043

`A007955(n+1)/A183103(n+1)`
-/

namespace A183102.P2315571443159527043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A183103 (n + 1) : ℚ)

end

end A183102.P2315571443159527043

namespace A183102

/-- `A007955(n+1)/A183103(n+1)` -/
def P2315571443159527043.Spec : Prop :=
  ∀ n, P2315571443159527043.a n = (A183102 (n + 1) : ℚ)

end A183102

/-! ## A183102.P14894161865123344088

`∏{d}[A003557(n+1), A064549(#)]`
-/

namespace A183102.P14894161865123344088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A064549 d

end

end A183102.P14894161865123344088

namespace A183102

/-- `∏{d}[A003557(n+1), A064549(#)]` -/
def P14894161865123344088.Spec : Prop :=
  ∀ n, P14894161865123344088.a n = A183102 (n + 1)

end A183102

/-! ## A183102.P4105032111288083203

`∏{d}[∑{d}[n+1, A300717(#)], A064549(#)]`
-/

namespace A183102.P4105032111288083203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300717 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A064549 d

end

end A183102.P4105032111288083203

namespace A183102

/-- `∏{d}[∑{d}[n+1, A300717(#)], A064549(#)]` -/
def P4105032111288083203.Spec : Prop :=
  ∀ n, P4105032111288083203.a n = A183102 (n + 1)

end A183102

/-! ## A183102.P8528182086925692593

`∏{d}[1-A010848(n+1)+n, A064549(#)]`
-/

namespace A183102.P8528182086925692593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010848 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A064549 d

end

end A183102.P8528182086925692593

namespace A183102

/-- `∏{d}[1-A010848(n+1)+n, A064549(#)]` -/
def P8528182086925692593.Spec : Prop :=
  ∀ n, P8528182086925692593.a n = A183102 (n + 1)

end A183102

/-! ## A183102.P10558031196099765979

`∏{d}[A102631(n+1)/(n+1), A064549(#)]`
-/

namespace A183102.P10558031196099765979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A064549 d

end

end A183102.P10558031196099765979

namespace A183102

/-- `∏{d}[A102631(n+1)/(n+1), A064549(#)]` -/
def P10558031196099765979.Spec : Prop :=
  ∀ n, P10558031196099765979.a n = A183102 (n + 1)

end A183102

/-! ## A183102.P496592208385194372

`∏{d}[(n+1)/A007947(n+1), #*A007947(#)]`
-/

namespace A183102.P496592208385194372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (d : ℤ) * A007947 d

end

end A183102.P496592208385194372

namespace A183102

/-- `∏{d}[(n+1)/A007947(n+1), #*A007947(#)]` -/
def P496592208385194372.Spec : Prop :=
  ∀ n, P496592208385194372.a n = A183102 (n + 1)

end A183102

/-! ## A183102.P5997989869354397297

`∏{d}[A003557(n+1), A003557(n+1)/A003557(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183102

/-- `∏{d}[A003557(n+1), A003557(n+1)/A003557(#)]` -/
def P5997989869354397297.Spec : Prop :=
  ∀ n, P5997989869354397297.a n = (A183102 (n + 1) : ℚ)

end A183102

/-! ## A183102.P4200434629511534983

`A056925(n+1)*A056926(n+1)/A183103(n+1)`
-/

namespace A183102.P4200434629511534983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056925 (n + 1) * A056926 (n + 1) : ℚ) / (A183103 (n + 1) : ℚ)

end

end A183102.P4200434629511534983

namespace A183102

/-- `A056925(n+1)*A056926(n+1)/A183103(n+1)` -/
def P4200434629511534983.Spec : Prop :=
  ∀ n, P4200434629511534983.a n = (A183102 (n + 1) : ℚ)

end A183102

/-! ## A183102.P16975057680952456147

`A183104(n+1)+A000007(A001844(n))`
-/

namespace A183102.P16975057680952456147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183104 (n + 1) + A000007 (A001844 n).toNat

end

end A183102.P16975057680952456147

namespace A183102

/-- `A183104(n+1)+A000007(A001844(n))` -/
def P16975057680952456147.Spec : Prop :=
  ∀ n, P16975057680952456147.a n = A183102 (n + 1)

end A183102

/-! ## A183102.P12798579639243781845

`A183104(n+1)+A000007(A005893(n))`
-/

namespace A183102.P12798579639243781845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183104 (n + 1) + A000007 (A005893 n).toNat

end

end A183102.P12798579639243781845

namespace A183102

/-- `A183104(n+1)+A000007(A005893(n))` -/
def P12798579639243781845.Spec : Prop :=
  ∀ n, P12798579639243781845.a n = A183102 (n + 1)

end A183102

/-!
# A183103: a(n) = product of non-powerful divisors d of n.

The programs for A183103, the canonical program `A183103.P15947555032237724278` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183103 has offset 1).

The definition of A183103 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A183102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183103.P15947555032237724278

`A007955(n+1)/A183102(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A183103

/-- `A007955(n+1)/A183102(n+1)` -/
def P15947555032237724278.Spec : Prop :=
  ∀ n, P15947555032237724278.a n = (A183103 (n + 1) : ℚ)

end A183103

/-! ## A183103.P18172230113158970771

`(n+1)/A183102(n+1)*A007956(n+1)`
-/

namespace A183103.P18172230113158970771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A183102 (n + 1) : ℚ) * (A007956 (n + 1) : ℚ)

end

end A183103.P18172230113158970771

namespace A183103

/-- `(n+1)/A183102(n+1)*A007956(n+1)` -/
def P18172230113158970771.Spec : Prop :=
  ∀ n, P18172230113158970771.a n = (A183103 (n + 1) : ℚ)

end A183103

/-! ## A183103.P7082521672595317275

`A179937(n+1)/A183102(n+1)*A184392(n+1)`
-/

namespace A183103.P7082521672595317275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179937 (n + 1) : ℚ) / (A183102 (n + 1) : ℚ) * (A184392 (n + 1) : ℚ)

end

end A183103.P7082521672595317275

namespace A183103

/-- `A179937(n+1)/A183102(n+1)*A184392(n+1)` -/
def P7082521672595317275.Spec : Prop :=
  ∀ n, P7082521672595317275.a n = (A183103 (n + 1) : ℚ)

end A183103

/-! ## A183103.P14700886176363232503

`A183091(n+1)*A183092(n+1)/A183102(n+1)`
-/

namespace A183103.P14700886176363232503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) * A183092 (n + 1) : ℚ) / (A183102 (n + 1) : ℚ)

end

end A183103.P14700886176363232503

namespace A183103

/-- `A183091(n+1)*A183092(n+1)/A183102(n+1)` -/
def P14700886176363232503.Spec : Prop :=
  ∀ n, P14700886176363232503.a n = (A183103 (n + 1) : ℚ)

end A183103

/-! ## A183103.P16348342741955975045

`A183104(n+1)/A183102(n+1)*A183105(n+1)`
-/

namespace A183103.P16348342741955975045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183104 (n + 1) : ℚ) / (A183102 (n + 1) : ℚ) * (A183105 (n + 1) : ℚ)

end

end A183103.P16348342741955975045

namespace A183103

/-- `A183104(n+1)/A183102(n+1)*A183105(n+1)` -/
def P16348342741955975045.Spec : Prop :=
  ∀ n, P16348342741955975045.a n = (A183103 (n + 1) : ℚ)

end A183103

/-! ## A183103.P14495905731048183756

`sqrt(A062758(n+1))/A183102(n+1)`
-/

namespace A183103.P14495905731048183756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A183102 (n + 1) : ℝ)

end

end A183103.P14495905731048183756

namespace A183103

/-- `sqrt(A062758(n+1))/A183102(n+1)` -/
def P14495905731048183756.Spec : Prop :=
  ∀ n, P14495905731048183756.a n = (A183103 (n + 1) : ℝ)

end A183103

/-! ## A183103.P17023393753933254479

`A183105(A064505(n+1))`
-/

namespace A183103.P17023393753933254479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183105 (A064505 (n + 1)).toNat

end

end A183103.P17023393753933254479

namespace A183103

/-- `A183105(A064505(n+1))` -/
def P17023393753933254479.Spec : Prop :=
  ∀ n, P17023393753933254479.a n = A183103 (n + 1)

end A183103

/-! ## A183103.P6967006909991969456

`A183105(A103164(n+1))`
-/

namespace A183103.P6967006909991969456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183105 (A103164 (n + 1)).toNat

end

end A183103.P6967006909991969456

namespace A183103

/-- `A183105(A103164(n+1))` -/
def P6967006909991969456.Spec : Prop :=
  ∀ n, P6967006909991969456.a n = A183103 (n + 1)

end A183103

/-! ## A183103.P10657613289861004677

`A183105(A140580(n+1))`
-/

namespace A183103.P10657613289861004677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183105 (A140580 (n + 1)).toNat

end

end A183103.P10657613289861004677

namespace A183103

/-- `A183105(A140580(n+1))` -/
def P10657613289861004677.Spec : Prop :=
  ∀ n, P10657613289861004677.a n = A183103 (n + 1)

end A183103

/-!
# A183104: a(n) = product of divisors of n that are perfect powers.

The programs for A183104, there is no canonical definition to state claims against.
-/

/-! ## A183104.P6913521824234318169

`A007955(n+1)/A183105(n+1)`
-/

namespace A183104.P6913521824234318169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A183105 (n + 1) : ℚ)

end

end A183104.P6913521824234318169

/-! ## A183104.P17547235706828968527

`∏{d}[n+1, gcd(#, A316789(#)%2)]`
-/

namespace A183104.P17547235706828968527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (Int.tmod (A316789 d) 2)

end

end A183104.P17547235706828968527

/-! ## A183104.P10138518307023074076

`(n+1)/A183105(n+1)*A007956(n+1)`
-/

namespace A183104.P10138518307023074076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A183105 (n + 1) : ℚ) * (A007956 (n + 1) : ℚ)

end

end A183104.P10138518307023074076

/-! ## A183104.P2573070324911200299

`A183091(n+1)*A183092(n+1)/A183105(n+1)`
-/

namespace A183104.P2573070324911200299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) * A183092 (n + 1) : ℚ) / (A183105 (n + 1) : ℚ)

end

end A183104.P2573070324911200299

/-! ## A183104.P11784389471619862759

`A183102(n+1)/A183105(n+1)*A183103(n+1)`
-/

namespace A183104.P11784389471619862759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183102 (n + 1) : ℚ) / (A183105 (n + 1) : ℚ) * (A183103 (n + 1) : ℚ)

end

end A183104.P11784389471619862759

/-! ## A183104.P8141317154043900615

`sqrt(A062758(n+1))/A183105(n+1)`
-/

namespace A183104.P8141317154043900615
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A183105 (n + 1) : ℝ)

end

end A183104.P8141317154043900615

/-! ## A183104.P12133866396376137064

`A240694(A006218(n+1))/A183105(n+1)`
-/

namespace A183104.P12133866396376137064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240694 (A006218 (n + 1)).toNat : ℚ) / (A183105 (n + 1) : ℚ)

end

end A183104.P12133866396376137064

/-!
# A183105: a(n) = product of divisors of n that are not perfect powers.

The programs for A183105, there is no canonical definition to state claims against.
-/

/-! ## A183105.P7702340515066706049

`A007955(n+1)/A183104(n+1)`
-/

namespace A183105.P7702340515066706049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A183104 (n + 1) : ℚ)

end

end A183105.P7702340515066706049

/-! ## A183105.P8348457755030883733

`(n+1)/A183104(n+1)*A007956(n+1)`
-/

namespace A183105.P8348457755030883733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A183104 (n + 1) : ℚ) * (A007956 (n + 1) : ℚ)

end

end A183105.P8348457755030883733

/-! ## A183105.P9593872132914288285

`sqrt(n+1)^Δ[A006218(n)]/A183104(n+1)`
-/

namespace A183105.P9593872132914288285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) / (A183104 (n + 1) : ℝ)

end

end A183105.P9593872132914288285

/-! ## A183105.P10364606297608136748

`(n+1)^(A000005(n+1)/2)/A183104(n+1)`
-/

namespace A183105.P10364606297608136748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ) / (A183104 (n + 1) : ℝ)

end

end A183105.P10364606297608136748

/-! ## A183105.P11099626897918163733

`A007947(n+1)*A087652(n+1)/A183104(n+1)`
-/

namespace A183105.P11099626897918163733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) * A087652 (n + 1) : ℚ) / (A183104 (n + 1) : ℚ)

end

end A183105.P11099626897918163733

/-! ## A183105.P10507961947487726656

`A061537(n+1)*A061538(n+1)/A183104(n+1)`
-/

namespace A183105.P10507961947487726656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) * A061538 (n + 1) : ℚ) / (A183104 (n + 1) : ℚ)

end

end A183105.P10507961947487726656

/-! ## A183105.P2940389527100941365

`A179937(n+1)/A183104(n+1)*A184392(n+1)`
-/

namespace A183105.P2940389527100941365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179937 (n + 1) : ℚ) / (A183104 (n + 1) : ℚ) * (A184392 (n + 1) : ℚ)

end

end A183105.P2940389527100941365

/-! ## A183105.P6227516456230387335

`A183091(n+1)*A183092(n+1)/A183104(n+1)`
-/

namespace A183105.P6227516456230387335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) * A183092 (n + 1) : ℚ) / (A183104 (n + 1) : ℚ)

end

end A183105.P6227516456230387335

/-! ## A183105.P11395248162033488969

`A183102(n+1)*A183103(n+1)/A183104(n+1)`
-/

namespace A183105.P11395248162033488969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183102 (n + 1) * A183103 (n + 1) : ℚ) / (A183104 (n + 1) : ℚ)

end

end A183105.P11395248162033488969

/-! ## A183105.P14176111324837775570

`A291186(n+1)/A183104(n+1)*A306671(n+1)`
-/

namespace A183105.P14176111324837775570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291186 (n + 1) : ℚ) / (A183104 (n + 1) : ℚ) * (A306671 (n + 1) : ℚ)

end

end A183105.P14176111324837775570

/-! ## A183105.P7189360580674863624

`sqrt(A062758(n+1))/A183104(n+1)`
-/

namespace A183105.P7189360580674863624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A183104 (n + 1) : ℝ)

end

end A183105.P7189360580674863624

/-! ## A183105.P4940799722606723424

`A240694(A006218(n+1))/A183104(n+1)`
-/

namespace A183105.P4940799722606723424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240694 (A006218 (n + 1)).toNat : ℚ) / (A183104 (n + 1) : ℚ)

end

end A183105.P4940799722606723424

/-!
# A183106: Numbers k such that sum of palindromic divisors of k (A088000(k)) is palindromic.

The programs for A183106, there is no canonical definition to state claims against.
-/

/-! ## A183106.P13020799746026419103

`lt[0, A136522(A088000(n+1))]+1`
-/

namespace A183106.P13020799746026419103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A088000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A183106.P13020799746026419103

/-! ## A183106.P4885410746376582148

`eq[1, A136522(A088000(C(n+1, n)))]+1`
-/

namespace A183106.P4885410746376582148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A088000 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183106.P4885410746376582148

/-! ## A183106.P845480913031666228

`record[A000027(n+1)*A136522(A088000(n+1))]`
-/

namespace A183106.P845480913031666228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A136522 (A088000 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183106.P845480913031666228

/-! ## A183106.P7004131396846278616

`record[(1-A001489(n))*A136522(A088000(n+1))]`
-/

namespace A183106.P7004131396846278616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n) * A136522 (A088000 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183106.P7004131396846278616

/-! ## A183106.P17681687487707218652

`record[A008619(2*n)*A136522(A088000(n+1))]`
-/

namespace A183106.P17681687487707218652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A136522 (A088000 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183106.P17681687487707218652

/-! ## A183106.P7766390837816141474

`record[A136522(A088000(n+1))*A216455(n+1)]`
-/

namespace A183106.P7766390837816141474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A088000 (n + 1)).toNat * A216455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183106.P7766390837816141474

/-!
# A183107: Sum of palindromic divisors of numbers k such that the sum of the palindromic divisors of k is palindromic.

The programs for A183107, there is no canonical definition to state claims against.
-/

/-! ## A183107.P8657250591677601153

`A088000(A183106(n+1))`
-/

namespace A183107.P8657250591677601153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088000 (A183106 (n + 1)).toNat

end

end A183107.P8657250591677601153

/-! ## A183107.P17518489251511329224

`filter[A088000(n+1), A136522(#)]`
-/

namespace A183107.P17518489251511329224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A183107.P17518489251511329224

/-! ## A183107.P9151726621484552881

`filter[A088000(n+1), A202022(#)]`
-/

namespace A183107.P9151726621484552881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A183107.P9151726621484552881

/-!
# A183108: Numbers m such that sum of divisors of m and sum of palindromic divisors of m are both palindromic.

The programs for A183108, there is no canonical definition to state claims against.
-/

/-! ## A183108.P14231568864297432293

`∩[A028980(n+1), A334273(n+1)]`
-/

namespace A183108.P14231568864297432293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183108.P14231568864297432293

/-! ## A183108.P2704969964883256736

`∩[A028980(n+1), A107062(n)]`
-/

namespace A183108.P2704969964883256736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183108.P2704969964883256736

/-! ## A183108.P3617783787660403521

`∩[A028980(n+1), A283970(n+1)]`
-/

namespace A183108.P3617783787660403521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183108.P3617783787660403521

/-! ## A183108.P3106236525387988294

`∩[A028980(n+1), A325266(n+1)]`
-/

namespace A183108.P3106236525387988294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183108.P3106236525387988294

/-!
# A183109: Triangle read by rows: T(n,m) = number of n X m binary matrices with no zero rows or columns (n >= 1, 1 <= m <= n).

The programs for A183109, there is no canonical definition to state claims against.
-/

/-! ## A183109.P17957807387429119709

`A218695(A245300(n)+1)`
-/

namespace A183109.P17957807387429119709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218695 (A245300 n + 1).toNat

end

end A183109.P17957807387429119709

/-! ## A183109.P6561117680593844145

`A081580(∏{e}[10^n, #])`
-/

namespace A183109.P6561117680593844145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081580 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A183109.P6561117680593844145

/-!
# A183110: Period-length of the ultimate periodic behavior of the orbit of a list [1,1,1,...,1] of n 1's under the mapping defined in the comments.

The programs for A183110, the canonical program `A183110.P12340529520489190935` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183110 has offset 1).

The definition of A183110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183110.P16482180528413018830

`a(n-round(sqrt(2*n)))+((∑{d}[8*n+9, #]+1)%2)²²` with `a(0)=1`
-/

namespace A183110.P16482180528413018830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat + (((∑ d ∈ Nat.divisors (f1 n), d + 1) % 2) ^ 2) ^ 2

end

end A183110.P16482180528413018830

namespace A183110

/-- `a(n-round(sqrt(2*n)))+((∑{d}[8*n+9, #]+1)%2)²²` -/
def P16482180528413018830.Spec : Prop :=
  ∀ n, (P16482180528413018830.a n : ℤ) = A183110 (n + 1)

end A183110

/-! ## A183110.P14619924229221813989

`A318274(comp[∑[n]])`
-/

namespace A183110.P14619924229221813989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A183110.P14619924229221813989

namespace A183110

/-- `A318274(comp[∑[n]])` -/
def P14619924229221813989.Spec : Prop :=
  ∀ n, P14619924229221813989.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P9258022322920855558

`ceil(ratio[A076112(n+1)])`
-/

namespace A183110.P9258022322920855558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A183110.P9258022322920855558

namespace A183110

/-- `ceil(ratio[A076112(n+1)])` -/
def P9258022322920855558.Spec : Prop :=
  ∀ n, P9258022322920855558.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P726669105041518123

`∑[char[∑[n]]]/A051340(n)`
-/

namespace A183110.P726669105041518123
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A051340 n : ℚ)

end

end A183110.P726669105041518123

namespace A183110

/-- `∑[char[∑[n]]]/A051340(n)` -/
def P726669105041518123.Spec : Prop :=
  ∀ n, P726669105041518123.a n = (A183110 (n + 1) : ℚ)

end A183110

/-! ## A183110.P12340529520489190935

`A128064(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A183110

/-- `A128064(n)+a(n-1)` -/
def P12340529520489190935.Spec : Prop :=
  ∀ n, P12340529520489190935.a n = A183110 (n + 1)

theorem P12340529520489190935.correct : P12340529520489190935.Spec := by
  intro n
  simp only [A183110, Nat.add_sub_cancel]

end A183110

/-! ## A183110.P8001174787871657667

`a(n-round(sqrt(2*n)))+((A000005(8*n+9)+1)%2)²²` with `a(0)=1`
-/

namespace A183110.P8001174787871657667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat + (Int.tmod (A000005 (8 * n + 9) + 1) 2 ^ 2) ^ 2

end

end A183110.P8001174787871657667

namespace A183110

/-- `a(n-round(sqrt(2*n)))+((A000005(8*n+9)+1)%2)²²` -/
def P8001174787871657667.Spec : Prop :=
  ∀ n, P8001174787871657667.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P18409074309917428410

`A004736(∑[A145677(n)])`
-/

namespace A183110.P18409074309917428410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183110.P18409074309917428410

namespace A183110

/-- `A004736(∑[A145677(n)])` -/
def P18409074309917428410.Spec : Prop :=
  ∀ n, P18409074309917428410.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P16530258812013044165

`A191521(A056942(n+1))`
-/

namespace A183110.P16530258812013044165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191521 (A056942 (n + 1)).toNat

end

end A183110.P16530258812013044165

namespace A183110

/-- `A191521(A056942(n+1))` -/
def P16530258812013044165.Spec : Prop :=
  ∀ n, P16530258812013044165.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P2556607782127084479

`A194195(A063656(n+1))`
-/

namespace A183110.P2556607782127084479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A063656 (n + 1)).toNat

end

end A183110.P2556607782127084479

namespace A183110

/-- `A194195(A063656(n+1))` -/
def P2556607782127084479.Spec : Prop :=
  ∀ n, P2556607782127084479.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P12571072665592073288

`A269501(A133280(n+1))`
-/

namespace A183110.P12571072665592073288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269501 (A133280 (n + 1)).toNat

end

end A183110.P12571072665592073288

namespace A183110

/-- `A269501(A133280(n+1))` -/
def P12571072665592073288.Spec : Prop :=
  ∀ n, P12571072665592073288.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P10074571763836178925

`A193592(A245300(n+1))`
-/

namespace A183110.P10074571763836178925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A245300 (n + 1)).toNat

end

end A183110.P10074571763836178925

namespace A183110

/-- `A193592(A245300(n+1))` -/
def P10074571763836178925.Spec : Prop :=
  ∀ n, P10074571763836178925.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P18424655288352024725

`A168258(A292564(n+1))`
-/

namespace A183110.P18424655288352024725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168258 (A292564 (n + 1)).toNat

end

end A183110.P18424655288352024725

namespace A183110

/-- `A168258(A292564(n+1))` -/
def P18424655288352024725.Spec : Prop :=
  ∀ n, P18424655288352024725.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P8072092593151412704

`A128227(n)+A025581(n)`
-/

namespace A183110.P8072092593151412704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n + A025581 n

end

end A183110.P8072092593151412704

namespace A183110

/-- `A128227(n)+A025581(n)` -/
def P8072092593151412704.Spec : Prop :=
  ∀ n, P8072092593151412704.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P4006666071255472752

`gcd(A059298(n), A138057(n))`
-/

namespace A183110.P4006666071255472752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059298 n) (A138057 n)

end

end A183110.P4006666071255472752

namespace A183110

/-- `gcd(A059298(n), A138057(n))` -/
def P4006666071255472752.Spec : Prop :=
  ∀ n, (P4006666071255472752.a n : ℤ) = A183110 (n + 1)

end A183110

/-! ## A183110.P8005443724646961864

`A132813(A193592(n+1)+n)`
-/

namespace A183110.P8005443724646961864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 (A193592 (n + 1) + (n : ℤ)).toNat

end

end A183110.P8005443724646961864

namespace A183110

/-- `A132813(A193592(n+1)+n)` -/
def P8005443724646961864.Spec : Prop :=
  ∀ n, P8005443724646961864.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P8064927337022285902

`A051162(n+1)-A002262(n)`
-/

namespace A183110.P8064927337022285902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (n + 1) - A002262 n

end

end A183110.P8064927337022285902

namespace A183110

/-- `A051162(n+1)-A002262(n)` -/
def P8064927337022285902.Spec : Prop :=
  ∀ n, P8064927337022285902.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P7406501219452873742

`A132778(n+1)-A003056(n)`
-/

namespace A183110.P7406501219452873742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132778 (n + 1) - A003056 n

end

end A183110.P7406501219452873742

namespace A183110

/-- `A132778(n+1)-A003056(n)` -/
def P7406501219452873742.Spec : Prop :=
  ∀ n, P7406501219452873742.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P2404476300454608029

`A134478(n+1)-A002262(n)`
-/

namespace A183110.P2404476300454608029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (n + 1) - A002262 n

end

end A183110.P2404476300454608029

namespace A183110

/-- `A134478(n+1)-A002262(n)` -/
def P2404476300454608029.Spec : Prop :=
  ∀ n, P2404476300454608029.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P16945404323962503118

`A144328(n+2)+A025581(n)`
-/

namespace A183110.P16945404323962503118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 2) + A025581 n

end

end A183110.P16945404323962503118

namespace A183110

/-- `A144328(n+2)+A025581(n)` -/
def P16945404323962503118.Spec : Prop :=
  ∀ n, P16945404323962503118.a n = A183110 (n + 1)

end A183110

/-! ## A183110.P16350327159351720155

`A002024(n*A023532(n)+1)`
-/

namespace A183110.P16350327159351720155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((n : ℤ) * A023532 n + 1).toNat

end

end A183110.P16350327159351720155

namespace A183110

/-- `A002024(n*A023532(n)+1)` -/
def P16350327159351720155.Spec : Prop :=
  ∀ n, P16350327159351720155.a n = A183110 (n + 1)

end A183110

/-!
# A183111: Magnetic Tower of Hanoi, number of moves of disk number k, optimally solving the [RED ; BLUE ; NEUTRAL] or [NEUTRAL ; RED ; BLUE] pre-colored puzzle.

The programs for A183111, the canonical program `A183111.P10582153524129419430` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183111 has offset 0).

The definition of A183111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183111.P2980975058665592591

`Δ[A183112(log2(A011782(n)))]`
-/

namespace A183111.P2980975058665592591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183111.P2980975058665592591

namespace A183111

/-- `Δ[A183112(log2(A011782(n)))]` -/
def P2980975058665592591.Spec : Prop :=
  ∀ n, P2980975058665592591.a n = A183111 n

end A183111

/-! ## A183111.P10582153524129419430

`record[Δ[A183112(A004523(n))]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183111

/-- `record[Δ[A183112(A004523(n))]]` -/
def P10582153524129419430.Spec : Prop :=
  ∀ n, P10582153524129419430.a n = A183111 n

theorem P10582153524129419430.correct : P10582153524129419430.Spec := by
  intro n
  simp only [A183111]

end A183111

/-! ## A183111.P14060896420737628797

`record[Δ[A183112(A005379(n))]]`
-/

namespace A183111.P14060896420737628797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (A005379 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183111.P14060896420737628797

namespace A183111

/-- `record[Δ[A183112(A005379(n))]]` -/
def P14060896420737628797.Spec : Prop :=
  ∀ n, P14060896420737628797.a n = A183111 n

end A183111

/-! ## A183111.P9657202795847736430

`record[Δ[A183112(A028391(n))]]`
-/

namespace A183111.P9657202795847736430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (A028391 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183111.P9657202795847736430

namespace A183111

/-- `record[Δ[A183112(A028391(n))]]` -/
def P9657202795847736430.Spec : Prop :=
  ∀ n, P9657202795847736430.a n = A183111 n

end A183111

/-! ## A183111.P10790215713025882487

`record[Δ[A183112(A049472(n))]]`
-/

namespace A183111.P10790215713025882487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (A049472 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183111.P10790215713025882487

namespace A183111

/-- `record[Δ[A183112(A049472(n))]]` -/
def P10790215713025882487.Spec : Prop :=
  ∀ n, P10790215713025882487.a n = A183111 n

end A183111

/-! ## A183111.P8430168625974943200

`Δ[A183112(A028310(n)-1)]`
-/

namespace A183111.P8430168625974943200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183111.P8430168625974943200

namespace A183111

/-- `Δ[A183112(A028310(n)-1)]` -/
def P8430168625974943200.Spec : Prop :=
  ∀ n, P8430168625974943200.a n = A183111 n

end A183111

/-! ## A183111.P5735434372085201295

`record[Δ[A183112(A183138(n+1))]]`
-/

namespace A183111.P5735434372085201295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (A183138 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183111.P5735434372085201295

namespace A183111

/-- `record[Δ[A183112(A183138(n+1))]]` -/
def P5735434372085201295.Spec : Prop :=
  ∀ n, P5735434372085201295.a n = A183111 n

end A183111

/-! ## A183111.P6161514164645232615

`Δ[A183112(n+1-A040001(2*n))]`
-/

namespace A183111.P6161514164645232615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 ((n + 1 : ℤ) - A040001 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183111.P6161514164645232615

namespace A183111

/-- `Δ[A183112(n+1-A040001(2*n))]` -/
def P6161514164645232615.Spec : Prop :=
  ∀ n, P6161514164645232615.a n = A183111 n

end A183111

/-! ## A183111.P5063037485598381290

`A183112(n)-A183112(log2(A011782(n)))`
-/

namespace A183111.P5063037485598381290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 n - A183112 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A183111.P5063037485598381290

namespace A183111

/-- `A183112(n)-A183112(log2(A011782(n)))` -/
def P5063037485598381290.Spec : Prop :=
  ∀ n, P5063037485598381290.a n = A183111 n

end A183111

/-! ## A183111.P2176640233742941242

`A183112(n)-A183112(A028310(n)-1)`
-/

namespace A183111.P2176640233742941242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 n - A183112 (A028310 n - 1).toNat

end

end A183111.P2176640233742941242

namespace A183111

/-- `A183112(n)-A183112(A028310(n)-1)` -/
def P2176640233742941242.Spec : Prop :=
  ∀ n, P2176640233742941242.a n = A183111 n

end A183111

/-! ## A183111.P10239044874470616675

`A183113(n+1)+A183115(n)-A183115(n+1)`
-/

namespace A183111.P10239044874470616675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183113 (n + 1) + (A183115 n - A183115 (n + 1))

end

end A183111.P10239044874470616675

namespace A183111

/-- `A183113(n+1)+A183115(n)-A183115(n+1)` -/
def P10239044874470616675.Spec : Prop :=
  ∀ n, P10239044874470616675.a n = A183111 n

end A183111

/-!
# A183112: Magnetic Tower of Hanoi, total number of moves, optimally solving the [RED ; BLUE ; NEUTRAL] or [NEUTRAL ; RED ; BLUE] pre-colored puzzle.

The programs for A183112, the canonical program `A183112.P1136988005582575148` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183112 has offset 0).

The definition of A183112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183112.P1136988005582575148

`4*a(n-1)-2*a(n-2)-2*a(n-3)-5*a(n-4)+6*a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=13, a(4)=38`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183112

/-- `4*a(n-1)-2*a(n-2)-2*a(n-3)-5*a(n-4)+6*a(n-5)` -/
def P1136988005582575148.Spec : Prop :=
  ∀ n, P1136988005582575148.a n = A183112 n

theorem P1136988005582575148.correct : P1136988005582575148.Spec := by
  intro n
  simp only [A183112]

end A183112

/-! ## A183112.P7875901264152329866

`∑[A183111(n)]`
-/

namespace A183112.P7875901264152329866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183112.P7875901264152329866

namespace A183112

/-- `∑[A183111(n)]` -/
def P7875901264152329866.Spec : Prop :=
  ∀ n, P7875901264152329866.a n = A183112 n

end A183112

/-! ## A183112.P1104729983672119263

`3*a(n-1)+2-A159284(n)` with `a(0)=0`
-/

namespace A183112.P1104729983672119263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + (2 - A159284 n)

end

end A183112.P1104729983672119263

namespace A183112

/-- `3*a(n-1)+2-A159284(n)` -/
def P1104729983672119263.Spec : Prop :=
  ∀ n, P1104729983672119263.a n = A183112 n

end A183112

/-! ## A183112.P2365243548373440161

`A183111(n)+A183114(n)-A183115(n)`
-/

namespace A183112.P2365243548373440161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183111 n + (A183114 n - A183115 n)

end

end A183112.P2365243548373440161

namespace A183112

/-- `A183111(n)+A183114(n)-A183115(n)` -/
def P2365243548373440161.Spec : Prop :=
  ∀ n, P2365243548373440161.a n = A183112 n

end A183112

/-! ## A183112.P16613683054883184009

`A183114(n+1)-A183115(n+1)`
-/

namespace A183112.P16613683054883184009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 (n + 1) - A183115 (n + 1)

end

end A183112.P16613683054883184009

namespace A183112

/-- `A183114(n+1)-A183115(n+1)` -/
def P16613683054883184009.Spec : Prop :=
  ∀ n, P16613683054883184009.a n = A183112 n

end A183112

/-! ## A183112.P10611138010901942916

`A000244(n)+A183114(n)-A183111(n+1)`
-/

namespace A183112.P10611138010901942916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A183114 n - A183111 (n + 1))

end

end A183112.P10611138010901942916

namespace A183112

/-- `A000244(n)+A183114(n)-A183111(n+1)` -/
def P10611138010901942916.Spec : Prop :=
  ∀ n, P10611138010901942916.a n = A183112 n

end A183112

/-! ## A183112.P7160786369331530258

`A183118(n+1)+A003462(n)-A183116(n+1)`
-/

namespace A183112.P7160786369331530258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 (n + 1) + (A003462 n - A183116 (n + 1))

end

end A183112.P7160786369331530258

namespace A183112

/-- `A183118(n+1)+A003462(n)-A183116(n+1)` -/
def P7160786369331530258.Spec : Prop :=
  ∀ n, P7160786369331530258.a n = A183112 n

end A183112

/-! ## A183112.P13696982218135952292

`A183114(n+1)-Δ[A183117(n+2)%A007051(n)]`
-/

namespace A183112.P13696982218135952292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183117 (n + 2)) (A007051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 (n + 1) - (f1 (n + 1) - f1 n)

end

end A183112.P13696982218135952292

namespace A183112

/-- `A183114(n+1)-Δ[A183117(n+2)%A007051(n)]` -/
def P13696982218135952292.Spec : Prop :=
  ∀ n, P13696982218135952292.a n = A183112 n

end A183112

/-!
# A183113: Magnetic Tower of Hanoi, number of moves of disk number k, optimally solving the [RED ; NEUTRAL ; BLUE] pre-colored puzzle.

The programs for A183113, the canonical program `A183113.P14373595764470486030` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183113 has offset 0).

The definition of A183113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183113.P14373595764470486030

`3*a(n-1)+a(n-2)-a(n-3)-6*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=21`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183113

/-- `3*a(n-1)+a(n-2)-a(n-3)-6*a(n-4)` -/
def P14373595764470486030.Spec : Prop :=
  ∀ n, P14373595764470486030.a n = A183113 n

theorem P14373595764470486030.correct : P14373595764470486030.Spec := by
  intro n
  simp only [A183113]

end A183113

/-! ## A183113.P4097228641574989092

`Δ[A183114(log2(A011782(n)))]`
-/

namespace A183113.P4097228641574989092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183113.P4097228641574989092

namespace A183113

/-- `Δ[A183114(log2(A011782(n)))]` -/
def P4097228641574989092.Spec : Prop :=
  ∀ n, P4097228641574989092.a n = A183113 n

end A183113

/-! ## A183113.P2107208204437705982

`record[Δ[A183114(A004523(n))]]`
-/

namespace A183113.P2107208204437705982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 (A004523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183113.P2107208204437705982

namespace A183113

/-- `record[Δ[A183114(A004523(n))]]` -/
def P2107208204437705982.Spec : Prop :=
  ∀ n, P2107208204437705982.a n = A183113 n

end A183113

/-! ## A183113.P17070680341905011823

`record[Δ[A183114(A005379(n))]]`
-/

namespace A183113.P17070680341905011823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 (A005379 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183113.P17070680341905011823

namespace A183113

/-- `record[Δ[A183114(A005379(n))]]` -/
def P17070680341905011823.Spec : Prop :=
  ∀ n, P17070680341905011823.a n = A183113 n

end A183113

/-! ## A183113.P12607338444436385388

`record[Δ[A183114(A028391(n))]]`
-/

namespace A183113.P12607338444436385388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 (A028391 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183113.P12607338444436385388

namespace A183113

/-- `record[Δ[A183114(A028391(n))]]` -/
def P12607338444436385388.Spec : Prop :=
  ∀ n, P12607338444436385388.a n = A183113 n

end A183113

/-! ## A183113.P17348278694167643820

`record[Δ[A183114(A049472(n))]]`
-/

namespace A183113.P17348278694167643820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 (A049472 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183113.P17348278694167643820

namespace A183113

/-- `record[Δ[A183114(A049472(n))]]` -/
def P17348278694167643820.Spec : Prop :=
  ∀ n, P17348278694167643820.a n = A183113 n

end A183113

/-! ## A183113.P9223853968444596294

`Δ[A183114(A028310(n)-1)]`
-/

namespace A183113.P9223853968444596294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183113.P9223853968444596294

namespace A183113

/-- `Δ[A183114(A028310(n)-1)]` -/
def P9223853968444596294.Spec : Prop :=
  ∀ n, P9223853968444596294.a n = A183113 n

end A183113

/-! ## A183113.P2405542692222196711

`record[Δ[A183114(A183138(n+1))]]`
-/

namespace A183113.P2405542692222196711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 (A183138 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183113.P2405542692222196711

namespace A183113

/-- `record[Δ[A183114(A183138(n+1))]]` -/
def P2405542692222196711.Spec : Prop :=
  ∀ n, P2405542692222196711.a n = A183113 n

end A183113

/-! ## A183113.P13614750344466171976

`A183114(n)-A183114(log2(A011782(n)))`
-/

namespace A183113.P13614750344466171976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 n - A183114 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A183113.P13614750344466171976

namespace A183113

/-- `A183114(n)-A183114(log2(A011782(n)))` -/
def P13614750344466171976.Spec : Prop :=
  ∀ n, P13614750344466171976.a n = A183113 n

end A183113

/-! ## A183113.P7086857789071224406

`A183114(n)-A183114(A028310(n)-1)`
-/

namespace A183113.P7086857789071224406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 n - A183114 (A028310 n - 1).toNat

end

end A183113.P7086857789071224406

namespace A183113

/-- `A183114(n)-A183114(A028310(n)-1)` -/
def P7086857789071224406.Spec : Prop :=
  ∀ n, P7086857789071224406.a n = A183113 n

end A183113

/-! ## A183113.P10646937350317819714

`A183115(n+1)+A183115(n)-A183117(n+1)`
-/

namespace A183113.P10646937350317819714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183115 (n + 1) + (A183115 n - A183117 (n + 1))

end

end A183113.P10646937350317819714

namespace A183113

/-- `A183115(n+1)+A183115(n)-A183117(n+1)` -/
def P10646937350317819714.Spec : Prop :=
  ∀ n, P10646937350317819714.a n = A183113 n

end A183113

/-!
# A183114: Magnetic Tower of Hanoi, total number of moves, optimally solving the [RED ; NEUTRAL ; BLUE] pre-colored puzzle.

The programs for A183114, the canonical program `A183114.P12538032029697417017` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183114 has offset 0).

The definition of A183114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183114.P12538032029697417017

`a(n-2)+2*a(n-3)+8*3^(n-3)+2` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183114

/-- `a(n-2)+2*a(n-3)+8*3^(n-3)+2` -/
def P12538032029697417017.Spec : Prop :=
  ∀ n, P12538032029697417017.a n = (A183114 n : ℚ)

end A183114

/-! ## A183114.P299706157312442100

`4*a(n-1)-2*a(n-2)-2*a(n-3)-5*a(n-4)+6*a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11, a(4)=32`
-/

namespace A183114.P299706157312442100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 11, 32] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) - 5 * a (n - 4) + 6 * a (n - 5)

end

end A183114.P299706157312442100

namespace A183114

/-- `4*a(n-1)-2*a(n-2)-2*a(n-3)-5*a(n-4)+6*a(n-5)` -/
def P299706157312442100.Spec : Prop :=
  ∀ n, P299706157312442100.a n = A183114 n

end A183114

/-! ## A183114.P4711730299535056320

`∑[A183113(n)]`
-/

namespace A183114.P4711730299535056320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183114.P4711730299535056320

namespace A183114

/-- `∑[A183113(n)]` -/
def P4711730299535056320.Spec : Prop :=
  ∀ n, P4711730299535056320.a n = A183114 n

end A183114

/-! ## A183114.P1182722536956326505

`A003462(n)+A183116(n)-A183112(n)`
-/

namespace A183114.P1182722536956326505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A183116 n - A183112 n)

end

end A183114.P1182722536956326505

namespace A183114

/-- `A003462(n)+A183116(n)-A183112(n)` -/
def P1182722536956326505.Spec : Prop :=
  ∀ n, P1182722536956326505.a n = A183114 n

end A183114

/-! ## A183114.P5076026658202177961

`A183112(n+1)-3^n`
-/

namespace A183114.P5076026658202177961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (n + 1) - (3 ^ n : ℤ)

end

end A183114.P5076026658202177961

namespace A183114

/-- `A183112(n+1)-3^n` -/
def P5076026658202177961.Spec : Prop :=
  ∀ n, P5076026658202177961.a n = A183114 n

end A183114

/-! ## A183114.P5422807558261032021

`A183112(n+1)%A000244(n)`
-/

namespace A183114.P5422807558261032021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183112 (n + 1)) (A000244 n)

end

end A183114.P5422807558261032021

namespace A183114

/-- `A183112(n+1)%A000244(n)` -/
def P5422807558261032021.Spec : Prop :=
  ∀ n, P5422807558261032021.a n = A183114 n

end A183114

/-! ## A183114.P16138593930114741777

`A183112(n+1)+A003462(n)-A003462(n+1)`
-/

namespace A183114.P16138593930114741777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (n + 1) + A003462 n - A003462 (n + 1)

end

end A183114.P16138593930114741777

namespace A183114

/-- `A183112(n+1)+A003462(n)-A003462(n+1)` -/
def P16138593930114741777.Spec : Prop :=
  ∀ n, P16138593930114741777.a n = A183114 n

end A183114

/-! ## A183114.P17047391964360792474

`A183112(n+1)+A007051(n)-A007051(n+1)`
-/

namespace A183114.P17047391964360792474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (n + 1) + A007051 n - A007051 (n + 1)

end

end A183114.P17047391964360792474

namespace A183114

/-- `A183112(n+1)+A007051(n)-A007051(n+1)` -/
def P17047391964360792474.Spec : Prop :=
  ∀ n, P17047391964360792474.a n = A183114 n

end A183114

/-! ## A183114.P12097091067566433746

`A183116(n+1)+A183116(n)-A183118(n+1)`
-/

namespace A183114.P12097091067566433746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183116 (n + 1) + (A183116 n - A183118 (n + 1))

end

end A183114.P12097091067566433746

namespace A183114

/-- `A183116(n+1)+A183116(n)-A183118(n+1)` -/
def P12097091067566433746.Spec : Prop :=
  ∀ n, P12097091067566433746.a n = A183114 n

end A183114

/-! ## A183114.P15503102634417979705

`A000244(n+1)+A183112(n+1)-A003946(n+1)`
-/

namespace A183114.P15503102634417979705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) + (A183112 (n + 1) - A003946 (n + 1))

end

end A183114.P15503102634417979705

namespace A183114

/-- `A000244(n+1)+A183112(n+1)-A003946(n+1)` -/
def P15503102634417979705.Spec : Prop :=
  ∀ n, P15503102634417979705.a n = A183114 n

end A183114

/-!
# A183115: Magnetic Tower of Hanoi, number of moves of disk number k, optimally solving the [RED ; NEUTRAL ; NEUTRAL] or [NEUTRAL ; NEUTRAL ; BLUE] pre-colored puzzle.

The programs for A183115, the canonical program `A183115.P15852955643258259097` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183115 has offset 0).

The definition of A183115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183115.P15852955643258259097

`3*a(n-1)+a(n-2)-a(n-3)-6*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=19`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183115

/-- `3*a(n-1)+a(n-2)-a(n-3)-6*a(n-4)` -/
def P15852955643258259097.Spec : Prop :=
  ∀ n, P15852955643258259097.a n = A183115 n

theorem P15852955643258259097.correct : P15852955643258259097.Spec := by
  intro n
  simp only [A183115]

end A183115

/-! ## A183115.P14026630791455994799

`A183114(n)-A183112(log2(A011782(n)))`
-/

namespace A183115.P14026630791455994799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183114 n - A183112 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A183115.P14026630791455994799

namespace A183115

/-- `A183114(n)-A183112(log2(A011782(n)))` -/
def P14026630791455994799.Spec : Prop :=
  ∀ n, P14026630791455994799.a n = A183115 n

end A183115

/-! ## A183115.P4808967821789217751

`A183111(n)+A183114(n)-A183112(n)`
-/

namespace A183115.P4808967821789217751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183111 n + (A183114 n - A183112 n)

end

end A183115.P4808967821789217751

namespace A183115

/-- `A183111(n)+A183114(n)-A183112(n)` -/
def P4808967821789217751.Spec : Prop :=
  ∀ n, P4808967821789217751.a n = A183115 n

end A183115

/-! ## A183115.P8996034358032492088

`A183111(n+1)+A183111(n)-A000244(n)`
-/

namespace A183115.P8996034358032492088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183111 (n + 1) + (A183111 n - A000244 n)

end

end A183115.P8996034358032492088

namespace A183115

/-- `A183111(n+1)+A183111(n)-A000244(n)` -/
def P8996034358032492088.Spec : Prop :=
  ∀ n, P8996034358032492088.a n = A183115 n

end A183115

/-! ## A183115.P3950639285486838780

`Δ[Δ[A183118(n)]]%(3^n)`
-/

namespace A183115.P3950639285486838780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (3 ^ n : ℤ)

end

end A183115.P3950639285486838780

namespace A183115

/-- `Δ[Δ[A183118(n)]]%(3^n)` -/
def P3950639285486838780.Spec : Prop :=
  ∀ n, P3950639285486838780.a n = A183115 n

end A183115

/-! ## A183115.P5332754232911960543

`Δ[Δ[A183118(n)]%A124302(n)]`
-/

namespace A183115.P5332754232911960543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A124302 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183115.P5332754232911960543

namespace A183115

/-- `Δ[Δ[A183118(n)]%A124302(n)]` -/
def P5332754232911960543.Spec : Prop :=
  ∀ n, P5332754232911960543.a n = A183115 n

end A183115

/-!
# A183116: Magnetic Tower of Hanoi, total number of moves, optimally solving the [RED ; NEUTRAL ; NEUTRAL] or [NEUTRAL ; NEUTRAL ; BLUE] pre-colored puzzle.

The programs for A183116, the canonical program `A183116.P14214458870589238909` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183116 has offset 0).

The definition of A183116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183116.P14214458870589238909

`∑[A183115(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183116

/-- `∑[A183115(n)]` -/
def P14214458870589238909.Spec : Prop :=
  ∀ n, P14214458870589238909.a n = A183116 n

theorem P14214458870589238909.correct : P14214458870589238909.Spec := by
  intro n
  simp only [A183116]

end A183116

/-! ## A183116.P15260775211641623913

`∑[Δ[A183117(n+1)]%(3^n)]`
-/

namespace A183116.P15260775211641623913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183116.P15260775211641623913

namespace A183116

/-- `∑[Δ[A183117(n+1)]%(3^n)]` -/
def P15260775211641623913.Spec : Prop :=
  ∀ n, P15260775211641623913.a n = A183116 n

end A183116

/-! ## A183116.P5531747806986353239

`A183117(n+2)%∑[ceil(3^(n-1))]`
-/

namespace A183116.P5531747806986353239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183117 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183116.P5531747806986353239

namespace A183116

/-- `A183117(n+2)%∑[ceil(3^(n-1))]` -/
def P5531747806986353239.Spec : Prop :=
  ∀ n, P5531747806986353239.a n = A183116 n

end A183116

/-! ## A183116.P3751708416807610606

`A183112(n+1)+A183112(n)-A003462(n+1)`
-/

namespace A183116.P3751708416807610606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (n + 1) + (A183112 n - A003462 (n + 1))

end

end A183116.P3751708416807610606

namespace A183116

/-- `A183112(n+1)+A183112(n)-A003462(n+1)` -/
def P3751708416807610606.Spec : Prop :=
  ∀ n, P3751708416807610606.a n = A183116 n

end A183116

/-! ## A183116.P4389202076821612547

`∑[Δ[Δ[A183118(n)]]%(3^n)]`
-/

namespace A183116.P4389202076821612547
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183116.P4389202076821612547

namespace A183116

/-- `∑[Δ[Δ[A183118(n)]]%(3^n)]` -/
def P4389202076821612547.Spec : Prop :=
  ∀ n, P4389202076821612547.a n = A183116 n

end A183116

/-! ## A183116.P11093848100705703468

`Δ[A183118(n+1)]%A007051(n)`
-/

namespace A183116.P11093848100705703468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A007051 n)

end

end A183116.P11093848100705703468

namespace A183116

/-- `Δ[A183118(n+1)]%A007051(n)` -/
def P11093848100705703468.Spec : Prop :=
  ∀ n, P11093848100705703468.a n = A183116 n

end A183116

/-!
# A183117: Magnetic Tower of Hanoi, number of moves of disk number k, optimally solving the [NEUTRAL ; NEUTRAL ; NEUTRAL] pre-colored puzzle.

The programs for A183117, the canonical program `A183117.P1630622554033562283` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183117 has offset 0).

The definition of A183117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183117.P1630622554033562283

`3*a(n-1)+a(n-2)-a(n-3)-6*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=19, a(5)=53`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183117

/-- `3*a(n-1)+a(n-2)-a(n-3)-6*a(n-4)` -/
def P1630622554033562283.Spec : Prop :=
  ∀ n, P1630622554033562283.a n = A183117 n

theorem P1630622554033562283.correct : P1630622554033562283.Spec := by
  intro n
  simp only [A183117]

end A183117

/-! ## A183117.P18301670908390349211

`record[Δ[A183118(floor(n/ϕ))]]`
-/

namespace A183117.P18301670908390349211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183117.P18301670908390349211

namespace A183117

/-- `record[Δ[A183118(floor(n/ϕ))]]` -/
def P18301670908390349211.Spec : Prop :=
  ∀ n, P18301670908390349211.a n = A183117 n

end A183117

/-! ## A183117.P11916250760589090922

`Δ[A183118(log2(ceil(2^(n-1))))]`
-/

namespace A183117.P11916250760589090922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183117.P11916250760589090922

namespace A183117

/-- `Δ[A183118(log2(ceil(2^(n-1))))]` -/
def P11916250760589090922.Spec : Prop :=
  ∀ n, P11916250760589090922.a n = A183117 n

end A183117

/-! ## A183117.P3827083520986612468

`A183118(n)-A183118(A028310(n)-1)`
-/

namespace A183117.P3827083520986612468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183118 n - A183118 (A028310 n - 1).toNat

end

end A183117.P3827083520986612468

namespace A183117

/-- `A183118(n)-A183118(A028310(n)-1)` -/
def P3827083520986612468.Spec : Prop :=
  ∀ n, P3827083520986612468.a n = A183117 n

end A183117

/-! ## A183117.P17601192059198980572

`∑{e}[5^n, A183124(#)]`
-/

namespace A183117.P17601192059198980572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A183124 (Nat.factorization (f1 n) p)

end

end A183117.P17601192059198980572

namespace A183117

/-- `∑{e}[5^n, A183124(#)]` -/
def P17601192059198980572.Spec : Prop :=
  ∀ n, P17601192059198980572.a n = A183117 n

end A183117

/-!
# A183118: Magnetic Tower of Hanoi, total number of moves, optimally solving the [NEUTRAL ; NEUTRAL ; NEUTRAL] pre-colored puzzle.

The programs for A183118, the canonical program `A183118.P1322329897683414282` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183118 has offset 0).

The definition of A183118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183118.P1322329897683414282

`∑[A183117(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183118

/-- `∑[A183117(n)]` -/
def P1322329897683414282.Spec : Prop :=
  ∀ n, P1322329897683414282.a n = A183118 n

theorem P1322329897683414282.correct : P1322329897683414282.Spec := by
  intro n
  simp only [A183118]

end A183118

/-! ## A183118.P5669285075964798383

`∑{d}[2^n, A183117(log2(#))]`
-/

namespace A183118.P5669285075964798383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A183117 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A183118.P5669285075964798383

namespace A183118

/-- `∑{d}[2^n, A183117(log2(#))]` -/
def P5669285075964798383.Spec : Prop :=
  ∀ n, P5669285075964798383.a n = A183118 n

end A183118

/-! ## A183118.P14979784093635199854

`xor(A183125(n), A185035(A185035(n+3)))`
-/

namespace A183118.P14979784093635199854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A183125 n) (A185035 (A185035 (n + 3)).toNat)

end

end A183118.P14979784093635199854

namespace A183118

/-- `xor(A183125(n), A185035(A185035(n+3)))` -/
def P14979784093635199854.Spec : Prop :=
  ∀ n, P14979784093635199854.a n = A183118 n

end A183118

/-! ## A183118.P449512146513766248

`A183125(n)-A025442(A171872(3*n+1))`
-/

namespace A183118.P449512146513766248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 n - A025442 (A171872 (3 * n + 1)).toNat

end

end A183118.P449512146513766248

namespace A183118

/-- `A183125(n)-A025442(A171872(3*n+1))` -/
def P449512146513766248.Spec : Prop :=
  ∀ n, P449512146513766248.a n = A183118 n

end A183118

/-!
# A183119: Magnetic Tower of Hanoi, total number of moves generated by a certain algorithm, yielding a "forward moving" non-optimal solution of the [RED ; NEUTRAL ; BLUE] pre-colored puzzle.

The programs for A183119, the canonical program `A183119.P11583159022905054324` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183119 has offset 0).

The definition of A183119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183119.P11583159022905054324

`a(n-2)+3^(n-1)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183119

/-- `a(n-2)+3^(n-1)+1` -/
def P11583159022905054324.Spec : Prop :=
  ∀ n, P11583159022905054324.a n = (A183119 n : ℚ)

end A183119

/-! ## A183119.P11932132955865284272

`∑[ceil(∑[3^(n-1)/2])]-1`
-/

namespace A183119.P11932132955865284272
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A183119.P11932132955865284272

namespace A183119

/-- `∑[ceil(∑[3^(n-1)/2])]-1` -/
def P11932132955865284272.Spec : Prop :=
  ∀ n, P11932132955865284272.a n = A183119 n

end A183119

/-! ## A183119.P5042325424224365291

`∑[∑[xor(2, 3*a(n-1))]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A183119.P5042325424224365291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  Nat.xor 2 (3 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183119.P5042325424224365291

namespace A183119

/-- `∑[∑[xor(2, 3*a(n-1))]]` -/
def P5042325424224365291.Spec : Prop :=
  ∀ n, (P5042325424224365291.a n : ℤ) = A183119 n

end A183119

/-! ## A183119.P1562483564433409682

`record[n-3-3*a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A183119.P1562483564433409682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) - 3 - 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183119.P1562483564433409682

namespace A183119

/-- `record[n-3-3*a(n-2)]` -/
def P1562483564433409682.Spec : Prop :=
  ∀ n, P1562483564433409682.a n = A183119 n

end A183119

/-! ## A183119.P10775244068109900954

`∑[or(1, 3^(n-1)-a(n-1))]` with `a(0)=0`
-/

namespace A183119.P10775244068109900954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor 1 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (f1 (n - 1) : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183119.P10775244068109900954

namespace A183119

/-- `∑[or(1, 3^(n-1)-a(n-1))]` -/
def P10775244068109900954.Spec : Prop :=
  ∀ n, P10775244068109900954.a n = A183119 n

end A183119

/-! ## A183119.P9116946045114943791

`(A080926(n)+n)/2`
-/

namespace A183119.P9116946045114943791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080926 n + (n : ℤ) : ℚ) / 2

end

end A183119.P9116946045114943791

namespace A183119

/-- `(A080926(n)+n)/2` -/
def P9116946045114943791.Spec : Prop :=
  ∀ n, P9116946045114943791.a n = (A183119 n : ℚ)

end A183119

/-! ## A183119.P7201502599668443260

`(∑[A080925(n)]+n)/2`
-/

namespace A183119.P7201502599668443260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080925 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℚ) / 2

end

end A183119.P7201502599668443260

namespace A183119

/-- `(∑[A080925(n)]+n)/2` -/
def P7201502599668443260.Spec : Prop :=
  ∀ n, P7201502599668443260.a n = (A183119 n : ℚ)

end A183119

/-! ## A183119.P8691268034644976390

`A104743(n)%A104522(n)`
-/

namespace A183119.P8691268034644976390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104743 n) (A104522 n)

end

end A183119.P8691268034644976390

namespace A183119

/-- `A104743(n)%A104522(n)` -/
def P8691268034644976390.Spec : Prop :=
  ∀ n, P8691268034644976390.a n = A183119 n

end A183119

/-! ## A183119.P6677795802382377065

`∑[∑[A152011(n)]-A152011(n)]`
-/

namespace A183119.P6677795802382377065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152011 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A152011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183119.P6677795802382377065

namespace A183119

/-- `∑[∑[A152011(n)]-A152011(n)]` -/
def P6677795802382377065.Spec : Prop :=
  ∀ n, P6677795802382377065.a n = A183119 n

end A183119

/-! ## A183119.P11228279992620356958

`A090328(n+1)%A153774(n+1)`
-/

namespace A183119.P11228279992620356958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090328 (n + 1)) (A153774 (n + 1))

end

end A183119.P11228279992620356958

namespace A183119

/-- `A090328(n+1)%A153774(n+1)` -/
def P11228279992620356958.Spec : Prop :=
  ∀ n, P11228279992620356958.a n = A183119 n

end A183119

/-!
# A183120: Magnetic Tower of Hanoi, number of moves of disk number k, generated by a certain algorithm, yielding a "forward moving" non-optimal solution of the [RED ; NEUTRAL ; NEUTRAL] or [NEUTRAL ; NEUTRAL ; BLUE] pre-colored puzzle.

The programs for A183120, the canonical program `A183120.P567255154679092161` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183120 has offset 0).

The definition of A183120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183120.P567255154679092161

`4*a(n-1)-2*a(n-2)-4*a(n-3)+3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=19, a(5)=55, a(6)=159`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183120

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)+3*a(n-4)` -/
def P567255154679092161.Spec : Prop :=
  ∀ n, P567255154679092161.a n = A183120 n

theorem P567255154679092161.correct : P567255154679092161.Spec := by
  intro n
  simp only [A183120]

end A183120

/-! ## A183120.P18263656446040614608

`Δ[A183121(log2(A011782(n)))]`
-/

namespace A183120.P18263656446040614608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183121 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183120.P18263656446040614608

namespace A183120

/-- `Δ[A183121(log2(A011782(n)))]` -/
def P18263656446040614608.Spec : Prop :=
  ∀ n, P18263656446040614608.a n = A183120 n

end A183120

/-! ## A183120.P13411214005719184844

`record[Δ[A183121(A004523(n))]]`
-/

namespace A183120.P13411214005719184844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183121 (A004523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183120.P13411214005719184844

namespace A183120

/-- `record[Δ[A183121(A004523(n))]]` -/
def P13411214005719184844.Spec : Prop :=
  ∀ n, P13411214005719184844.a n = A183120 n

end A183120

/-! ## A183120.P17487809286562306835

`record[Δ[A183121(A005379(n))]]`
-/

namespace A183120.P17487809286562306835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183121 (A005379 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183120.P17487809286562306835

namespace A183120

/-- `record[Δ[A183121(A005379(n))]]` -/
def P17487809286562306835.Spec : Prop :=
  ∀ n, P17487809286562306835.a n = A183120 n

end A183120

/-! ## A183120.P4642006866095957076

`record[Δ[A183121(A028391(n))]]`
-/

namespace A183120.P4642006866095957076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183121 (A028391 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183120.P4642006866095957076

namespace A183120

/-- `record[Δ[A183121(A028391(n))]]` -/
def P4642006866095957076.Spec : Prop :=
  ∀ n, P4642006866095957076.a n = A183120 n

end A183120

/-! ## A183120.P12881704069242396304

`record[Δ[A183121(A049472(n))]]`
-/

namespace A183120.P12881704069242396304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183121 (A049472 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183120.P12881704069242396304

namespace A183120

/-- `record[Δ[A183121(A049472(n))]]` -/
def P12881704069242396304.Spec : Prop :=
  ∀ n, P12881704069242396304.a n = A183120 n

end A183120

/-! ## A183120.P17110896751852619427

`record[Δ[A183121(A183138(n+1))]]`
-/

namespace A183120.P17110896751852619427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183121 (A183138 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183120.P17110896751852619427

namespace A183120

/-- `record[Δ[A183121(A183138(n+1))]]` -/
def P17110896751852619427.Spec : Prop :=
  ∀ n, P17110896751852619427.a n = A183120 n

end A183120

/-! ## A183120.P5793956108137970090

`A183121(n)-A183121(log2(A011782(n)))`
-/

namespace A183120.P5793956108137970090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183121 n - A183121 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A183120.P5793956108137970090

namespace A183120

/-- `A183121(n)-A183121(log2(A011782(n)))` -/
def P5793956108137970090.Spec : Prop :=
  ∀ n, P5793956108137970090.a n = A183120 n

end A183120

/-!
# A183121: Magnetic Tower of Hanoi, total number of moves, generated by a certain algorithm, yielding a "forward moving" non-optimal solution of the [RED ; NEUTRAL ; NEUTRAL] or [NEUTRAL ; NEUTRAL ; BLUE] pre-colored puzzle.

The programs for A183121, the canonical program `A183121.P10056443279133338240` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183121 has offset 0).

The definition of A183121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183121.P10056443279133338240

`∑[A183120(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183121

/-- `∑[A183120(n)]` -/
def P10056443279133338240.Spec : Prop :=
  ∀ n, P10056443279133338240.a n = A183121 n

theorem P10056443279133338240.correct : P10056443279133338240.Spec := by
  intro n
  simp only [A183121]

end A183121

/-! ## A183121.P4517865161962128874

`∑{d}[A000079(n), A183120(log2(#))]`
-/

namespace A183121.P4517865161962128874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A183120 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A183121.P4517865161962128874

namespace A183121

/-- `∑{d}[A000079(n), A183120(log2(#))]` -/
def P4517865161962128874.Spec : Prop :=
  ∀ n, P4517865161962128874.a n = A183121 n

end A183121

/-!
# A183122: Magnetic Tower of Hanoi, number of moves of disk number k, generated by a certain algorithm, yielding a "forward moving" non-optimal solution of the [NEUTRAL ; NEUTRAL ; NEUTRAL] pre-colored puzzle.

The programs for A183122, the canonical program `A183122.P15113777353597004259` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183122 has offset 0).

The definition of A183122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183122.P15113777353597004259

`3*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=19, a(5)=53, a(6)=153`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183122

/-- `3*a(n-1)+a(n-2)-3*a(n-3)` -/
def P15113777353597004259.Spec : Prop :=
  ∀ n, P15113777353597004259.a n = A183122 n

theorem P15113777353597004259.correct : P15113777353597004259.Spec := by
  intro n
  simp only [A183122]

end A183122

/-! ## A183122.P15517948864186167075

`Δ[A183123(log2(A011782(n)))]`
-/

namespace A183122.P15517948864186167075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183123 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183122.P15517948864186167075

namespace A183122

/-- `Δ[A183123(log2(A011782(n)))]` -/
def P15517948864186167075.Spec : Prop :=
  ∀ n, P15517948864186167075.a n = A183122 n

end A183122

/-! ## A183122.P16480266155913922325

`record[Δ[A183123(A004523(n))]]`
-/

namespace A183122.P16480266155913922325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183123 (A004523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183122.P16480266155913922325

namespace A183122

/-- `record[Δ[A183123(A004523(n))]]` -/
def P16480266155913922325.Spec : Prop :=
  ∀ n, P16480266155913922325.a n = A183122 n

end A183122

/-! ## A183122.P10704798222954215279

`record[Δ[A183123(A005379(n))]]`
-/

namespace A183122.P10704798222954215279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183123 (A005379 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183122.P10704798222954215279

namespace A183122

/-- `record[Δ[A183123(A005379(n))]]` -/
def P10704798222954215279.Spec : Prop :=
  ∀ n, P10704798222954215279.a n = A183122 n

end A183122

/-! ## A183122.P4064290819673505948

`record[Δ[A183123(A028391(n))]]`
-/

namespace A183122.P4064290819673505948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183123 (A028391 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183122.P4064290819673505948

namespace A183122

/-- `record[Δ[A183123(A028391(n))]]` -/
def P4064290819673505948.Spec : Prop :=
  ∀ n, P4064290819673505948.a n = A183122 n

end A183122

/-! ## A183122.P7770973179417177048

`record[Δ[A183123(A049472(n))]]`
-/

namespace A183122.P7770973179417177048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183123 (A049472 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183122.P7770973179417177048

namespace A183122

/-- `record[Δ[A183123(A049472(n))]]` -/
def P7770973179417177048.Spec : Prop :=
  ∀ n, P7770973179417177048.a n = A183122 n

end A183122

/-! ## A183122.P10092211293860899083

`record[Δ[A183123(A183138(n+1))]]`
-/

namespace A183122.P10092211293860899083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183123 (A183138 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183122.P10092211293860899083

namespace A183122

/-- `record[Δ[A183123(A183138(n+1))]]` -/
def P10092211293860899083.Spec : Prop :=
  ∀ n, P10092211293860899083.a n = A183122 n

end A183122

/-! ## A183122.P6259408477180955321

`A183123(n)-A183123(log2(A011782(n)))`
-/

namespace A183122.P6259408477180955321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183123 n - A183123 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A183122.P6259408477180955321

namespace A183122

/-- `A183123(n)-A183123(log2(A011782(n)))` -/
def P6259408477180955321.Spec : Prop :=
  ∀ n, P6259408477180955321.a n = A183122 n

end A183122

/-!
# A183123: Magnetic Tower of Hanoi, total number of moves, generated by a certain algorithm, yielding a "forward moving" non-optimal solution of the [NEUTRAL ; NEUTRAL ; NEUTRAL] pre-colored puzzle.

The programs for A183123, the canonical program `A183123.P9336656746788519640` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183123 has offset 0).

The definition of A183123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183123.P9336656746788519640

`4*a(n-1)-2*a(n-2)-4*a(n-3)+3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11, a(4)=30, a(5)=83, a(6)=236`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183123

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)+3*a(n-4)` -/
def P9336656746788519640.Spec : Prop :=
  ∀ n, P9336656746788519640.a n = A183123 n

theorem P9336656746788519640.correct : P9336656746788519640.Spec := by
  intro n
  simp only [A183123]

end A183123

/-! ## A183123.P7921325025657020739

`∑[A183122(n)]`
-/

namespace A183123.P7921325025657020739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183123.P7921325025657020739

namespace A183123

/-- `∑[A183122(n)]` -/
def P7921325025657020739.Spec : Prop :=
  ∀ n, P7921325025657020739.a n = A183123 n

end A183123

/-! ## A183123.P618412688435342846

`∑{d}[A000079(n), A183122(val(#, 2))]`
-/

namespace A183123.P618412688435342846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A183122 (SequenceMachineLib.valuation d 2)

end

end A183123.P618412688435342846

namespace A183123

/-- `∑{d}[A000079(n), A183122(val(#, 2))]` -/
def P618412688435342846.Spec : Prop :=
  ∀ n, P618412688435342846.a n = A183123 n

end A183123

/-! ## A183123.P7484800668416763291

`∑{d}[A000079(n), A183122(A001222(#))]`
-/

namespace A183123.P7484800668416763291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A183122 (A001222 d).toNat

end

end A183123.P7484800668416763291

namespace A183123

/-- `∑{d}[A000079(n), A183122(A001222(#))]` -/
def P7484800668416763291.Spec : Prop :=
  ∀ n, P7484800668416763291.a n = A183123 n

end A183123

/-!
# A183124: Magnetic Tower of Hanoi, number of moves of disk number n, generated by a certain algorithm, yielding a "forward moving" non-optimal solution of the [NEUTRAL ; NEUTRAL ; NEUTRAL] pre-colored puzzle.

The programs for A183124, there is no canonical definition to state claims against.
-/

/-! ## A183124.P14146169498028730573

`Δ[A183125(log2(A011782(n)))]`
-/

namespace A183124.P14146169498028730573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183124.P14146169498028730573

/-! ## A183124.P2042969361109077500

`record[Δ[A183125(A004523(n))]]`
-/

namespace A183124.P2042969361109077500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 (A004523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183124.P2042969361109077500

/-! ## A183124.P7452555038545701684

`record[Δ[A183125(A004524(n))]]`
-/

namespace A183124.P7452555038545701684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 (A004524 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183124.P7452555038545701684

/-! ## A183124.P187122980563026583

`record[Δ[A183125(A004526(n))]]`
-/

namespace A183124.P187122980563026583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 (A004526 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183124.P187122980563026583

/-! ## A183124.P8586843182217621557

`record[Δ[A183125(A005379(n))]]`
-/

namespace A183124.P8586843182217621557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 (A005379 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183124.P8586843182217621557

/-! ## A183124.P2369312223370802181

`record[Δ[A183125(A183138(n+1))]]`
-/

namespace A183124.P2369312223370802181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 (A183138 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183124.P2369312223370802181

/-! ## A183124.P9837721170417401223

`A183125(n)-A183125(log2(A011782(n)))`
-/

namespace A183124.P9837721170417401223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 n - A183125 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A183124.P9837721170417401223

/-! ## A183124.P1714507795917341806

`record[Δ[A183125(A002262(n))]]`
-/

namespace A183124.P1714507795917341806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183125 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183124.P1714507795917341806

/-!
# A183125: Magnetic Tower of Hanoi, total number of moves, generated by a certain algorithm, yielding a "forward moving" non-optimal solution of the [NEUTRAL ; NEUTRAL ; NEUTRAL] pre-colored puzzle.

The programs for A183125, there is no canonical definition to state claims against.
-/

/-! ## A183125.P17813038171217984157

`∑[A183124(n)]`
-/

namespace A183125.P17813038171217984157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183125.P17813038171217984157

/-! ## A183125.P2097930476152793496

`A183124(n)+a(A023443(n))` with `a(0)=0, a(1)=1`
-/

namespace A183125.P2097930476152793496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A183124 n + a (A023443 n).toNat

end

end A183125.P2097930476152793496

/-! ## A183125.P9030648235878891548

`a(n-1)+A057427(n)*A183124(n)` with `a(0)=0`
-/

namespace A183125.P9030648235878891548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A057427 n * A183124 n

end

end A183125.P9030648235878891548

/-! ## A183125.P13412335623197432296

`∑{d}[A000079(n), A183124(log2(#))]`
-/

namespace A183125.P13412335623197432296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A183124 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A183125.P13412335623197432296

/-! ## A183125.P2372716192735733711

`∑[A127287(A183117(n))]`
-/

namespace A183125.P2372716192735733711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A183117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183125.P2372716192735733711

/-!
# A183126: Toothpick sequence with toothpicks connected by their endpoints.

The programs for A183126, the canonical program `A183126.P13932271397595957484` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183126 has offset 0).

The definition of A183126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183126.P13932271397595957484

`record[A160410(A142150(n))+A004273(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A183126

/-- `record[A160410(A142150(n))+A004273(n)]` -/
def P13932271397595957484.Spec : Prop :=
  ∀ n, P13932271397595957484.a n = A183126 n

theorem P13932271397595957484.correct : P13932271397595957484.Spec := by
  intro n
  simp only [A183126]

end A183126

/-! ## A183126.P4620738932840030039

`∑[A183127(n)]`
-/

namespace A183126.P4620738932840030039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183126.P4620738932840030039

namespace A183126

/-- `∑[A183127(n)]` -/
def P4620738932840030039.Spec : Prop :=
  ∀ n, P4620738932840030039.a n = A183126 n

end A183126

/-! ## A183126.P9392464095396269124

`a(n-1)+A183127(n)+A000038(n)` with `a(0)=0`
-/

namespace A183126.P9392464095396269124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A183127 n + A000038 n)

end

end A183126.P9392464095396269124

namespace A183126

/-- `a(n-1)+A183127(n)+A000038(n)` -/
def P9392464095396269124.Spec : Prop :=
  ∀ n, P9392464095396269124.a n = A183126 n

end A183126

/-! ## A183126.P15246840991275831304

`a(n-1)+A183127(n)%A001105(n)` with `a(0)=0`
-/

namespace A183126.P15246840991275831304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A183127 n) (A001105 n)

end

end A183126.P15246840991275831304

namespace A183126

/-- `a(n-1)+A183127(n)%A001105(n)` -/
def P15246840991275831304.Spec : Prop :=
  ∀ n, P15246840991275831304.a n = A183126 n

end A183126

/-! ## A183126.P8382841288079530507

`A183127(n)+a(A025581(A000124(n)))` with `a(0)=0`
-/

namespace A183126.P8382841288079530507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A183127 n + a (A025581 (A000124 n).toNat).toNat

end

end A183126.P8382841288079530507

namespace A183126

/-- `A183127(n)+a(A025581(A000124(n)))` -/
def P8382841288079530507.Spec : Prop :=
  ∀ n, P8382841288079530507.a n = A183126 n

end A183126

/-!
# A183127: Number of toothpicks added at n-th stage to the toothpick structure of A183126.

The programs for A183127, there is no canonical definition to state claims against.
-/

/-! ## A183127.P1323474412546874281

`Δ[A183126(log2(ceil(2^(n-1))))]`
-/

namespace A183127.P1323474412546874281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183126 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183127.P1323474412546874281

/-!
# A183128: G.f.: A(x) = exp( Sum_{n>=1} [Sum_{k>=0} C(n+k-1,k)^(k^2+1)*x^k]*x^n/n ).

The programs for A183128, there is no canonical definition to state claims against.
-/

/-! ## A183128.P11041626686528938959

`a(n-1)!+11` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A183128.P11041626686528938959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  Nat.factorial (a (n - 1)) + 11

end

end A183128.P11041626686528938959

/-!
# A183129: G.f.: A(x) = exp( Sum_{n>=1} [Sum_{k>=0} C(n+k-1,k)^(k^2+k)*x^k]*x^n/n ).

The programs for A183129, there is no canonical definition to state claims against.
-/

/-! ## A183129.P16116232825497094780

`floor(2^a(n-1)^(4/3))` with `a(0)=1, a(1)=1`
-/

namespace A183129.P16116232825497094780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(2 : ℝ) ^ ((a (n - 1) : ℝ) ^ ((4 : ℚ) / 3 : ℝ))⌋

end

end A183129.P16116232825497094780

/-!
# A183134: Square array A(n,k) by antidiagonals. A(n,k) is the number of length 2n k-ary words (n,k>=0), either empty or beginning with the first character of the alphabet, that can be built by repeatedly inserting doublets into the initially empty word.

The programs for A183134, there is no canonical definition to state claims against.
-/

/-! ## A183134.P10104822130778467129

`A002487(8*A289481(n))`
-/

namespace A183134.P10104822130778467129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (8 * A289481 n).toNat

end

end A183134.P10104822130778467129

/-! ## A183134.P16789064574391378644

`A283976(8*A289481(n))`
-/

namespace A183134.P16789064574391378644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (8 * A289481 n).toNat

end

end A183134.P16789064574391378644

/-! ## A183134.P5766166421402817668

`A283977(8*A289481(n))`
-/

namespace A183134.P5766166421402817668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (8 * A289481 n).toNat

end

end A183134.P5766166421402817668

/-! ## A183134.P18209540342635025682

`A002487(lcm(8, A289481(n)))`
-/

namespace A183134.P18209540342635025682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.lcm 8 (A289481 n))

end

end A183134.P18209540342635025682

/-! ## A183134.P8972316814501006557

`A318557(n)+A044941(A008958(n))`
-/

namespace A183134.P8972316814501006557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 n + A044941 (A008958 n).toNat

end

end A183134.P8972316814501006557

/-!
# A183135: Square array A(n,k) by antidiagonals. A(n,k) is the number of length 2n k-ary words (n,k>=0) that can be built by repeatedly inserting doublets into the initially empty word.

The programs for A183135, there is no canonical definition to state claims against.
-/

/-! ## A183135.P17630136302642794822

`gcd(A025581(n), A322280(n))*A183134(n)`
-/

namespace A183135.P17630136302642794822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A025581 n) (A322280 n) : ℤ) * A183134 n

end

end A183135.P17630136302642794822

/-! ## A183135.P8857011025397354394

`A294042(A135382(n+1))%record[xor(3, n)]`
-/

namespace A183135.P8857011025397354394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294042 (A135382 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A183135.P8857011025397354394

/-! ## A183135.P9028634917353927500

`A294042(n)%A001214(n+1)`
-/

namespace A183135.P9028634917353927500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294042 n) (A001214 (n + 1))

end

end A183135.P9028634917353927500

/-! ## A183135.P10842265007294158362

`A294042(n)+A185014(A005900(n))`
-/

namespace A183135.P10842265007294158362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 n + A185014 (A005900 n).toNat

end

end A183135.P10842265007294158362

/-! ## A183135.P14581167822558219904

`A294042(n)+A000007(A226275(n))`
-/

namespace A183135.P14581167822558219904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 n + A000007 (A226275 n).toNat

end

end A183135.P14581167822558219904

/-!
# A183136: a(n) = [1/r]+[2/r]+...+[n/r], where r = golden ratio = (1+sqrt(5))/2 and []=floor.

The programs for A183136, the canonical program `A183136.P409138312576625076` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183136 has offset 1).

The definition of A183136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183136.P5565647596032909316

`∑[floor((n+1)/ϕ)]`
-/

namespace A183136.P5565647596032909316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183136.P5565647596032909316

namespace A183136

/-- `∑[floor((n+1)/ϕ)]` -/
def P5565647596032909316.Spec : Prop :=
  ∀ n, P5565647596032909316.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P4575231436478725852

`abs(∑[ceil(xor(n, -1)/ϕ)])`
-/

namespace A183136.P4575231436478725852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A183136.P4575231436478725852

namespace A183136

/-- `abs(∑[ceil(xor(n, -1)/ϕ)])` -/
def P4575231436478725852.Spec : Prop :=
  ∀ n, P4575231436478725852.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P14738233764670484653

`-∑[ceil(xor(n, -1)/ϕ)]`
-/

namespace A183136.P14738233764670484653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183136.P14738233764670484653

namespace A183136

/-- `-∑[ceil(xor(n, -1)/ϕ)]` -/
def P14738233764670484653.Spec : Prop :=
  ∀ n, P14738233764670484653.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P409138312576625076

`abs(∑[n-a(a(n-1))])` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183136

/-- `abs(∑[n-a(a(n-1))])` -/
def P409138312576625076.Spec : Prop :=
  ∀ n, P409138312576625076.a n = A183136 (n + 1)

theorem P409138312576625076.correct : P409138312576625076.Spec := by
  intro n
  simp only [A183136, Nat.add_sub_cancel]

end A183136

/-! ## A183136.P2648951539191907667

`floor(∑[n-a(a(n-1))])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A183136.P2648951539191907667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183136.P2648951539191907667

namespace A183136

/-- `floor(∑[n-a(a(n-1))])` -/
def P2648951539191907667.Spec : Prop :=
  ∀ n, P2648951539191907667.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P5292178403573781388

`ceil(∑[n-a(a(n-1))])` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A183136.P5292178403573781388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183136.P5292178403573781388

namespace A183136

/-- `ceil(∑[n-a(a(n-1))])` -/
def P5292178403573781388.Spec : Prop :=
  ∀ n, P5292178403573781388.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P3967956026849725439

`∑[comp[floor(ϕ*n)]]%∑[n+1]`
-/

namespace A183136.P3967956026849725439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A183136.P3967956026849725439

namespace A183136

/-- `∑[comp[floor(ϕ*n)]]%∑[n+1]` -/
def P3967956026849725439.Spec : Prop :=
  ∀ n, (P3967956026849725439.a n : ℤ) = A183136 (n + 1)

end A183136

/-! ## A183136.P3141478060145323542

`∑[n-a(a(n-1))]-1` with `a(0)=1, a(1)=1`
-/

namespace A183136.P3141478060145323542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A183136.P3141478060145323542

namespace A183136

/-- `∑[n-a(a(n-1))]-1` -/
def P3141478060145323542.Spec : Prop :=
  ∀ n, P3141478060145323542.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P11870409449037659348

`floor(a(n-1)+(n+1)/ϕ)` with `a(0)=0`
-/

namespace A183136.P11870409449037659348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌋

end

end A183136.P11870409449037659348

namespace A183136

/-- `floor(a(n-1)+(n+1)/ϕ)` -/
def P11870409449037659348.Spec : Prop :=
  ∀ n, P11870409449037659348.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P9462709584752372588

`∑[floor(ϕ*(n+1))]-C(n+2, 2)`
-/

namespace A183136.P9462709584752372588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n + 2) 2 : ℤ)

end

end A183136.P9462709584752372588

namespace A183136

/-- `∑[floor(ϕ*(n+1))]-C(n+2, 2)` -/
def P9462709584752372588.Spec : Prop :=
  ∀ n, P9462709584752372588.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P6457980799885986576

`a(n-1)+floor((n+1)*(ϕ-1))` with `a(0)=0`
-/

namespace A183136.P6457980799885986576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n + 1 : ℝ) * (Real.goldenRatio - 1)⌋

end

end A183136.P6457980799885986576

namespace A183136

/-- `a(n-1)+floor((n+1)*(ϕ-1))` -/
def P6457980799885986576.Spec : Prop :=
  ∀ n, P6457980799885986576.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P18394626528321857316

`A385177(n+1)-(n+1)`
-/

namespace A183136.P18394626528321857316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385177 (n + 1) - (n + 1 : ℤ)

end

end A183136.P18394626528321857316

namespace A183136

/-- `A385177(n+1)-(n+1)` -/
def P18394626528321857316.Spec : Prop :=
  ∀ n, P18394626528321857316.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P5151791140229723455

`A054347(n+1)-∑[n+1]`
-/

namespace A183136.P5151791140229723455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183136.P5151791140229723455

namespace A183136

/-- `A054347(n+1)-∑[n+1]` -/
def P5151791140229723455.Spec : Prop :=
  ∀ n, P5151791140229723455.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P4918632198165272859

`∑[A003622(n+1)]-(n+1)²`
-/

namespace A183136.P4918632198165272859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A183136.P4918632198165272859

namespace A183136

/-- `∑[A003622(n+1)]-(n+1)²` -/
def P4918632198165272859.Spec : Prop :=
  ∀ n, P4918632198165272859.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P3765060384094326415

`(n+1)²-∑[A249115(n+1)]`
-/

namespace A183136.P3765060384094326415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183136.P3765060384094326415

namespace A183136

/-- `(n+1)²-∑[A249115(n+1)]` -/
def P3765060384094326415.Spec : Prop :=
  ∀ n, P3765060384094326415.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P10075047489736668751

`A194126(n+1)-A028387(n)`
-/

namespace A183136.P10075047489736668751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194126 (n + 1) - A028387 n

end

end A183136.P10075047489736668751

namespace A183136

/-- `A194126(n+1)-A028387(n)` -/
def P10075047489736668751.Spec : Prop :=
  ∀ n, P10075047489736668751.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P17323953263920565504

`A054066(n+1)-A283968(n)`
-/

namespace A183136.P17323953263920565504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054066 (n + 1) - A283968 n

end

end A183136.P17323953263920565504

namespace A183136

/-- `A054066(n+1)-A283968(n)` -/
def P17323953263920565504.Spec : Prop :=
  ∀ n, P17323953263920565504.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P3338387293994692860

`A283733(n)-A372231(n+1)`
-/

namespace A183136.P3338387293994692860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n - A372231 (n + 1)

end

end A183136.P3338387293994692860

namespace A183136

/-- `A283733(n)-A372231(n+1)` -/
def P3338387293994692860.Spec : Prop :=
  ∀ n, P3338387293994692860.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P10678850991104231271

`A088207(n+1)-A002378(n+1)`
-/

namespace A183136.P10678850991104231271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) - A002378 (n + 1)

end

end A183136.P10678850991104231271

namespace A183136

/-- `A088207(n+1)-A002378(n+1)` -/
def P10678850991104231271.Spec : Prop :=
  ∀ n, P10678850991104231271.a n = A183136 (n + 1)

end A183136

/-! ## A183136.P4953207996494495082

`A088207(n+1)-A000217(n+1)-A000217(n+1)`
-/

namespace A183136.P4953207996494495082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) - A000217 (n + 1) - A000217 (n + 1)

end

end A183136.P4953207996494495082

namespace A183136

/-- `A088207(n+1)-A000217(n+1)-A000217(n+1)` -/
def P4953207996494495082.Spec : Prop :=
  ∀ n, P4953207996494495082.a n = A183136 (n + 1)

end A183136

/-!
# A183137: a(n) = [1/s] + [2/s] + ... + [n/s], where s = (golden ratio)^2 = (3+sqrt(5))/2 and [] = floor.

The programs for A183137, there is no canonical definition to state claims against.
-/

/-! ## A183137.P426622040476805990

`∑[floor((n+1)/ϕ²)]`
-/

namespace A183137.P426622040476805990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183137.P426622040476805990

/-! ## A183137.P1119999594825941569

`abs(∑[ceil(xor(n, -1)/ϕ)+n])`
-/

namespace A183137.P1119999594825941569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A183137.P1119999594825941569

/-! ## A183137.P18203315419522045879

`∑[ceil(xor(n, -1)/ϕ)]+∑[n]`
-/

namespace A183137.P18203315419522045879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A183137.P18203315419522045879

/-! ## A183137.P18280861579386639661

`∑[n]-∑[ceil(n/(acot(n)+ϕ))]`
-/

namespace A183137.P18280861579386639661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (SequenceMachineLib.acot (n : ℝ) + Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A183137.P18280861579386639661

/-! ## A183137.P11430074633818300637

`(n+1)²%∑[floor(ϕ*(n+1))]`
-/

namespace A183137.P11430074633818300637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183137.P11430074633818300637

/-! ## A183137.P6929795648275553551

`∑[n]-∑[n-a(a(n-1))]` with `a(0)=0`
-/

namespace A183137.P6929795648275553551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) - f2 (f2 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A183137.P6929795648275553551

/-! ## A183137.P15290104451134731618

`floor(a(n-1)+(n+1)/ϕ²)` with `a(0)=0`
-/

namespace A183137.P15290104451134731618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio ^ 2⌋

end

end A183137.P15290104451134731618

/-! ## A183137.P10281506138716977215

`C(n+1, 2)-∑[floor((n+1)/ϕ)]`
-/

namespace A183137.P10281506138716977215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183137.P10281506138716977215

/-! ## A183137.P15285486506788362190

`a(n-1)+floor((n+1)/(ϕ+1))` with `a(0)=0`
-/

namespace A183137.P15285486506788362190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n + 1 : ℝ) / (Real.goldenRatio + 1)⌋

end

end A183137.P15285486506788362190

/-! ## A183137.P7038380231618131106

`a(n-1)+2*n+1-floor(ϕ*(n+1))` with `a(0)=0`
-/

namespace A183137.P7038380231618131106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 * n + 1 : ℤ) - ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A183137.P7038380231618131106

/-!
# A183138: a(n) = floor(n/(2+sqrt(2))).

The programs for A183138, the canonical program `A183138.P3528231843107441536` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183138 has offset 1).

The definition of A183138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/(2+sqrt(2)))` (program `A183138.P3528231843107441536`, by `A183138.P3528231843107441536.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183138.P3528231843107441536

`floor((n+1)/(2+sqrt(2)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183138

/-- `floor((n+1)/(2+sqrt(2)))` -/
def P3528231843107441536.Spec : Prop :=
  ∀ n, P3528231843107441536.a n = A183138 (n + 1)

theorem P3528231843107441536.correct : P3528231843107441536.Spec := by
  intro n
  simp only [A183138, Nat.add_sub_cancel]

end A183138

/-! ## A183138.P9260369859815279529

`n-ceil(sqrt(∑[or(1, n)]))+1`
-/

namespace A183138.P9260369859815279529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1

end

end A183138.P9260369859815279529

namespace A183138

/-- `n-ceil(sqrt(∑[or(1, n)]))+1` -/
def P9260369859815279529.Spec : Prop :=
  ∀ n, P9260369859815279529.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P3095736123761299396

`(n+1)%ceil(sqrt(∑[or(1, n)]))`
-/

namespace A183138.P3095736123761299396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A183138.P3095736123761299396

namespace A183138

/-- `(n+1)%ceil(sqrt(∑[or(1, n)]))` -/
def P3095736123761299396.Spec : Prop :=
  ∀ n, P3095736123761299396.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P4185428363274610118

`∑[char[comp[A001951(n)]]]`
-/

namespace A183138.P4185428363274610118
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183138.P4185428363274610118

namespace A183138

/-- `∑[char[comp[A001951(n)]]]` -/
def P4185428363274610118.Spec : Prop :=
  ∀ n, (P4185428363274610118.a n : ℤ) = A183138 (n + 1)

end A183138

/-! ## A183138.P17776467737224929447

`A194920(n+1)-1`
-/

namespace A183138.P17776467737224929447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (n + 1) - 1

end

end A183138.P17776467737224929447

namespace A183138

/-- `A194920(n+1)-1` -/
def P17776467737224929447.Spec : Prop :=
  ∀ n, P17776467737224929447.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P14287990960946101611

`n-A049472(n+1)`
-/

namespace A183138.P14287990960946101611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A049472 (n + 1)

end

end A183138.P14287990960946101611

namespace A183138

/-- `n-A049472(n+1)` -/
def P14287990960946101611.Spec : Prop :=
  ∀ n, P14287990960946101611.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P10370303862705595645

`Δ[A183140(abs(1-n))]`
-/

namespace A183138.P10370303862705595645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183140 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183138.P10370303862705595645

namespace A183138

/-- `Δ[A183140(abs(1-n))]` -/
def P10370303862705595645.Spec : Prop :=
  ∀ n, P10370303862705595645.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P3996059619551785588

`∑[1-Δ[A049474(n)]]`
-/

namespace A183138.P3996059619551785588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183138.P3996059619551785588

namespace A183138

/-- `∑[1-Δ[A049474(n)]]` -/
def P3996059619551785588.Spec : Prop :=
  ∀ n, P3996059619551785588.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P5229458427720474412

`∑[char[A001952(n+1)]]`
-/

namespace A183138.P5229458427720474412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183138.P5229458427720474412

namespace A183138

/-- `∑[char[A001952(n+1)]]` -/
def P5229458427720474412.Spec : Prop :=
  ∀ n, (P5229458427720474412.a n : ℤ) = A183138 (n + 1)

end A183138

/-! ## A183138.P1134516073405313130

`n-floor(sqrt(A194274(n)))`
-/

namespace A183138.P1134516073405313130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt (A194274 n)

end

end A183138.P1134516073405313130

namespace A183138

/-- `n-floor(sqrt(A194274(n)))` -/
def P1134516073405313130.Spec : Prop :=
  ∀ n, P1134516073405313130.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P3244625676374225765

`∑[n]-A081946(n+1)`
-/

namespace A183138.P3244625676374225765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A081946 (n + 1)

end

end A183138.P3244625676374225765

namespace A183138

/-- `∑[n]-A081946(n+1)` -/
def P3244625676374225765.Spec : Prop :=
  ∀ n, P3244625676374225765.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P884370965554289230

`n-∑[A188295(n+1)]`
-/

namespace A183138.P884370965554289230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183138.P884370965554289230

namespace A183138

/-- `n-∑[A188295(n+1)]` -/
def P884370965554289230.Spec : Prop :=
  ∀ n, P884370965554289230.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P5185582043878886563

`n-∑[Δ[A049472(n)]²]`
-/

namespace A183138.P5185582043878886563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183138.P5185582043878886563

namespace A183138

/-- `n-∑[Δ[A049472(n)]²]` -/
def P5185582043878886563.Spec : Prop :=
  ∀ n, P5185582043878886563.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P372703158492545901

`1-A049474(n+1)+n`
-/

namespace A183138.P372703158492545901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049474 (n + 1) + (n : ℤ)

end

end A183138.P372703158492545901

namespace A183138

/-- `1-A049474(n+1)+n` -/
def P372703158492545901.Spec : Prop :=
  ∀ n, P372703158492545901.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P11358049358884826378

`A187328(n+1)-(n+1)`
-/

namespace A183138.P11358049358884826378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (n + 1) - (n + 1 : ℤ)

end

end A183138.P11358049358884826378

namespace A183138

/-- `A187328(n+1)-(n+1)` -/
def P11358049358884826378.Spec : Prop :=
  ∀ n, P11358049358884826378.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P7100271167951199494

`A195128(n+1)-(n+2)`
-/

namespace A183138.P7100271167951199494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (n + 1) - (n + 2 : ℤ)

end

end A183138.P7100271167951199494

namespace A183138

/-- `A195128(n+1)-(n+2)` -/
def P7100271167951199494.Spec : Prop :=
  ∀ n, P7100271167951199494.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P6326739695372174142

`A171588(n)+a(n-1)` with `a(0)=0`
-/

namespace A183138.P6326739695372174142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A171588 n + a (n - 1)

end

end A183138.P6326739695372174142

namespace A183138

/-- `A171588(n)+a(n-1)` -/
def P6326739695372174142.Spec : Prop :=
  ∀ n, P6326739695372174142.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P1819414686949458147

`A097508(n-a(n-1))` with `a(0)=0`
-/

namespace A183138.P1819414686949458147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A097508 ((n : ℤ) - a (n - 1)).toNat

end

end A183138.P1819414686949458147

namespace A183138

/-- `A097508(n-a(n-1))` -/
def P1819414686949458147.Spec : Prop :=
  ∀ n, P1819414686949458147.a n = A183138 (n + 1)

end A183138

/-! ## A183138.P14478206831913320972

`∑[char[A003152(2*(n+1))]]`
-/

namespace A183138.P14478206831913320972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183138.P14478206831913320972

namespace A183138

/-- `∑[char[A003152(2*(n+1))]]` -/
def P14478206831913320972.Spec : Prop :=
  ∀ n, (P14478206831913320972.a n : ℤ) = A183138 (n + 1)

end A183138

/-!
# A183139: a(n) = [1/r]+[2/r]+...+[n/r], where r=sqrt(2) and []=floor.

The programs for A183139, the canonical program `A183139.P922356334192034262` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183139 has offset 1).

The definition of A183139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183139.P11723322760227961489

`∑[floor((n+1)/sqrt(2))]`
-/

namespace A183139.P11723322760227961489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183139.P11723322760227961489

namespace A183139

/-- `∑[floor((n+1)/sqrt(2))]` -/
def P11723322760227961489.Spec : Prop :=
  ∀ n, P11723322760227961489.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P5881233659608744247

`floor(a(n-1)+(n+1)/sqrt(2))` with `a(0)=0`
-/

namespace A183139.P5881233659608744247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A183139.P5881233659608744247

namespace A183139

/-- `floor(a(n-1)+(n+1)/sqrt(2))` -/
def P5881233659608744247.Spec : Prop :=
  ∀ n, P5881233659608744247.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P14134439175331677902

`∑[n]-A183140(n)`
-/

namespace A183139.P14134439175331677902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A183140 n

end

end A183139.P14134439175331677902

namespace A183139

/-- `∑[n]-A183140(n)` -/
def P14134439175331677902.Spec : Prop :=
  ∀ n, P14134439175331677902.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P922356334192034262

`∑[A049474(n+1)]-(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183139

/-- `∑[A049474(n+1)]-(n+1)` -/
def P922356334192034262.Spec : Prop :=
  ∀ n, P922356334192034262.a n = A183139 (n + 1)

theorem P922356334192034262.correct : P922356334192034262.Spec := by
  intro n
  simp only [A183139, Nat.add_sub_cancel]

end A183139

/-! ## A183139.P1502308064082288543

`A049472(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A183139.P1502308064082288543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A049472 (n + 1) + a (n - 1)

end

end A183139.P1502308064082288543

namespace A183139

/-- `A049472(n+1)+a(n-1)` -/
def P1502308064082288543.Spec : Prop :=
  ∀ n, P1502308064082288543.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P16252523169660123172

`(n+1)²-∑[A187328(n+1)]`
-/

namespace A183139.P16252523169660123172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183139.P16252523169660123172

namespace A183139

/-- `(n+1)²-∑[A187328(n+1)]` -/
def P16252523169660123172.Spec : Prop :=
  ∀ n, P16252523169660123172.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P9306271773358551321

`∑[A003152(n+1)]-∑[n+1]`
-/

namespace A183139.P9306271773358551321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A183139.P9306271773358551321

namespace A183139

/-- `∑[A003152(n+1)]-∑[n+1]` -/
def P9306271773358551321.Spec : Prop :=
  ∀ n, P9306271773358551321.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P6370308517462203833

`∑[A188376(n+1)-n-1]/2`
-/

namespace A183139.P6370308517462203833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) - (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A183139.P6370308517462203833

namespace A183139

/-- `∑[A188376(n+1)-n-1]/2` -/
def P6370308517462203833.Spec : Prop :=
  ∀ n, P6370308517462203833.a n = (A183139 (n + 1) : ℚ)

end A183139

/-! ## A183139.P11921498121249352301

`∑[A188295(n+1)]+a(n-1)` with `a(0)=0`
-/

namespace A183139.P11921498121249352301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A183139.P11921498121249352301

namespace A183139

/-- `∑[A188295(n+1)]+a(n-1)` -/
def P11921498121249352301.Spec : Prop :=
  ∀ n, P11921498121249352301.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P3174141014861891765

`∑[∑[char[A001951(n+1)]]-1]+1+n`
-/

namespace A183139.P3174141014861891765
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A183139.P3174141014861891765

namespace A183139

/-- `∑[∑[char[A001951(n+1)]]-1]+1+n` -/
def P3174141014861891765.Spec : Prop :=
  ∀ n, P3174141014861891765.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P7051048245926128647

`A000096(n)-(A183140(n)+n)`
-/

namespace A183139.P7051048245926128647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A183140 n + (n : ℤ))

end

end A183139.P7051048245926128647

namespace A183139

/-- `A000096(n)-(A183140(n)+n)` -/
def P7051048245926128647.Spec : Prop :=
  ∀ n, P7051048245926128647.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P3904639082903154317

`A022776(n+1)-A194920(n+1)`
-/

namespace A183139.P3904639082903154317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022776 (n + 1) - A194920 (n + 1)

end

end A183139.P3904639082903154317

namespace A183139

/-- `A022776(n+1)-A194920(n+1)` -/
def P3904639082903154317.Spec : Prop :=
  ∀ n, P3904639082903154317.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P16251256584848195947

`A022776(n+2)-(n+2)`
-/

namespace A183139.P16251256584848195947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022776 (n + 2) - (n + 2 : ℤ)

end

end A183139.P16251256584848195947

namespace A183139

/-- `A022776(n+2)-(n+2)` -/
def P16251256584848195947.Spec : Prop :=
  ∀ n, P16251256584848195947.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P3645716176889332255

`∑[2*A002265(A022842(n+1))]/2`
-/

namespace A183139.P3645716176889332255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002265 (A022842 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A183139.P3645716176889332255

namespace A183139

/-- `∑[2*A002265(A022842(n+1))]/2` -/
def P3645716176889332255.Spec : Prop :=
  ∀ n, P3645716176889332255.a n = (A183139 (n + 1) : ℚ)

end A183139

/-! ## A183139.P6012911742176504212

`A000007(n+2)+∑[A002265(A022842(n+1))]`
-/

namespace A183139.P6012911742176504212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022842 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183139.P6012911742176504212

namespace A183139

/-- `A000007(n+2)+∑[A002265(A022842(n+1))]` -/
def P6012911742176504212.Spec : Prop :=
  ∀ n, P6012911742176504212.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P1371189592287896310

`∑[A049472(n+1)]^A014963(4*n+2)`
-/

namespace A183139.P1371189592287896310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A183139.P1371189592287896310

namespace A183139

/-- `∑[A049472(n+1)]^A014963(4*n+2)` -/
def P1371189592287896310.Spec : Prop :=
  ∀ n, P1371189592287896310.a n = (A183139 (n + 1) : ℚ)

end A183139

/-! ## A183139.P11505035178908475385

`eq[1, A023115(n+2)]-n`
-/

namespace A183139.P11505035178908475385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A183139.P11505035178908475385

namespace A183139

/-- `eq[1, A023115(n+2)]-n` -/
def P11505035178908475385.Spec : Prop :=
  ∀ n, P11505035178908475385.a n = A183139 (n + 1)

end A183139

/-! ## A183139.P11258001764376804505

`lt[A023115(lt[1, A023115(n+1)]), 2]`
-/

namespace A183139.P11258001764376804505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A183139.P11258001764376804505

namespace A183139

/-- `lt[A023115(lt[1, A023115(n+1)]), 2]` -/
def P11258001764376804505.Spec : Prop :=
  ∀ n, (P11258001764376804505.a n : ℤ) = A183139 (n + 1)

end A183139

/-!
# A183140: a(n) = [1/s]+[2/s]+...+[n/s], where s=2+sqrt(2) and []=floor.

The programs for A183140, the canonical program `A183140.P17476098312596561031` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183140 has offset 0).

The definition of A183140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183140.P10601819838873927532

`∑[floor((n+1)/(sqrt(2)+2))]`
-/

namespace A183140.P10601819838873927532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183140.P10601819838873927532

namespace A183140

/-- `∑[floor((n+1)/(sqrt(2)+2))]` -/
def P10601819838873927532.Spec : Prop :=
  ∀ n, P10601819838873927532.a n = A183140 n

end A183140

/-! ## A183140.P17476098312596561031

`∑[n]-A183139(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183140

/-- `∑[n]-A183139(n+1)` -/
def P17476098312596561031.Spec : Prop :=
  ∀ n, P17476098312596561031.a n = A183140 n

theorem P17476098312596561031.correct : P17476098312596561031.Spec := by
  intro n
  simp only [A183140]

end A183140

/-! ## A183140.P5784844175500474748

`∑[A194920(n+1)]-(n+1)`
-/

namespace A183140.P5784844175500474748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A183140.P5784844175500474748

namespace A183140

/-- `∑[A194920(n+1)]-(n+1)` -/
def P5784844175500474748.Spec : Prop :=
  ∀ n, P5784844175500474748.a n = A183140 n

end A183140

/-! ## A183140.P1141886420988534934

`A183138(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A183140.P1141886420988534934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A183138 (n + 1) + a (n - 1)

end

end A183140.P1141886420988534934

namespace A183140

/-- `A183138(n+1)+a(n-1)` -/
def P1141886420988534934.Spec : Prop :=
  ∀ n, P1141886420988534934.a n = A183140 n

end A183140

/-! ## A183140.P16015059595167971564

`(n+1)²-∑[A003152(n+1)]`
-/

namespace A183140.P16015059595167971564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183140.P16015059595167971564

namespace A183140

/-- `(n+1)²-∑[A003152(n+1)]` -/
def P16015059595167971564.Spec : Prop :=
  ∀ n, P16015059595167971564.a n = A183140 n

end A183140

/-! ## A183140.P15326134617406095542

`∑[∑[(4*A188295(n+1))!%2]]-(n+1)`
-/

namespace A183140.P15326134617406095542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (4 * A188295 (n + 1)).toNat % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A183140.P15326134617406095542

namespace A183140

/-- `∑[∑[(4*A188295(n+1))!%2]]-(n+1)` -/
def P15326134617406095542.Spec : Prop :=
  ∀ n, P15326134617406095542.a n = A183140 n

end A183140

/-! ## A183140.P4524288189982461072

`A000096(n)-(A183139(n+1)+n)`
-/

namespace A183140.P4524288189982461072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A183139 (n + 1) + (n : ℤ))

end

end A183140.P4524288189982461072

namespace A183140

/-- `A000096(n)-(A183139(n+1)+n)` -/
def P4524288189982461072.Spec : Prop :=
  ∀ n, P4524288189982461072.a n = A183140 n

end A183140

/-! ## A183140.P6573999227085390702

`∑[A187328(n+1)]-A000217(n+1)`
-/

namespace A183140.P6573999227085390702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 (n + 1)

end

end A183140.P6573999227085390702

namespace A183140

/-- `∑[A187328(n+1)]-A000217(n+1)` -/
def P6573999227085390702.Spec : Prop :=
  ∀ n, P6573999227085390702.a n = A183140 n

end A183140

/-! ## A183140.P17503602930467366544

`∑[A004277(n)-A003152(n+1)]+n`
-/

namespace A183140.P17503602930467366544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A003152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183140.P17503602930467366544

namespace A183140

/-- `∑[A004277(n)-A003152(n+1)]+n` -/
def P17503602930467366544.Spec : Prop :=
  ∀ n, P17503602930467366544.a n = A183140 n

end A183140

/-! ## A183140.P11795469970819574593

`∑[A183138(n+2)]-A183138(n+2)`
-/

namespace A183140.P11795469970819574593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A183138 (n + 2)

end

end A183140.P11795469970819574593

namespace A183140

/-- `∑[A183138(n+2)]-A183138(n+2)` -/
def P11795469970819574593.Spec : Prop :=
  ∀ n, P11795469970819574593.a n = A183140 n

end A183140

/-! ## A183140.P14690947691155374998

`A000217(n+1)-(A183139(n+2)+A183138(n+2))`
-/

namespace A183140.P14690947691155374998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (A183139 (n + 2) + A183138 (n + 2))

end

end A183140.P14690947691155374998

namespace A183140

/-- `A000217(n+1)-(A183139(n+2)+A183138(n+2))` -/
def P14690947691155374998.Spec : Prop :=
  ∀ n, P14690947691155374998.a n = A183140 n

end A183140

/-! ## A183140.P18192378081750268723

`∑[A183138(n+1)]%A183139(3*n+5)`
-/

namespace A183140.P18192378081750268723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A183139 (3 * n + 5))

end

end A183140.P18192378081750268723

namespace A183140

/-- `∑[A183138(n+1)]%A183139(3*n+5)` -/
def P18192378081750268723.Spec : Prop :=
  ∀ n, P18192378081750268723.a n = A183140 n

end A183140

/-! ## A183140.P2972761922813141455

`∑[A183138(n+1)]%A183133(n+1)`
-/

namespace A183140.P2972761922813141455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A183133 (n + 1))

end

end A183140.P2972761922813141455

namespace A183140

/-- `∑[A183138(n+1)]%A183133(n+1)` -/
def P2972761922813141455.Spec : Prop :=
  ∀ n, P2972761922813141455.a n = A183140 n

end A183140

/-!
# A183142: Beatty sequence for 2/(3+sqrt(3)).

The programs for A183142, the canonical program `A183142.P3586559148799607420` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183142 has offset 1).

The definition of A183142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183142.P3586559148799607420

`floor(2*(n+1)/(3+sqrt(3)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183142

/-- `floor(2*(n+1)/(3+sqrt(3)))` -/
def P3586559148799607420.Spec : Prop :=
  ∀ n, P3586559148799607420.a n = A183142 (n + 1)

theorem P3586559148799607420.correct : P3586559148799607420.Spec := by
  intro n
  simp only [A183142, Nat.add_sub_cancel]

end A183142

/-! ## A183142.P1740283339239541549

`(n+1)%ceil((n+1)/sqrt(3))`
-/

namespace A183142.P1740283339239541549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) ⌈(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌉

end

end A183142.P1740283339239541549

namespace A183142

/-- `(n+1)%ceil((n+1)/sqrt(3))` -/
def P1740283339239541549.Spec : Prop :=
  ∀ n, P1740283339239541549.a n = A183142 (n + 1)

end A183142

/-! ## A183142.P4097292475609850393

`∑[char[A054406(n+1)]]`
-/

namespace A183142.P4097292475609850393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183142.P4097292475609850393

namespace A183142

/-- `∑[char[A054406(n+1)]]` -/
def P4097292475609850393.Spec : Prop :=
  ∀ n, (P4097292475609850393.a n : ℤ) = A183142 (n + 1)

end A183142

/-! ## A183142.P11143991338361356914

`abs(A097337(n+1)-n)`
-/

namespace A183142.P11143991338361356914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097337 (n + 1) - (n : ℤ)|

end

end A183142.P11143991338361356914

namespace A183142

/-- `abs(A097337(n+1)-n)` -/
def P11143991338361356914.Spec : Prop :=
  ∀ n, P11143991338361356914.a n = A183142 (n + 1)

end A183142

/-! ## A183142.P13352576960485665698

`∑[char[record[A026255(n+1)]]]`
-/

namespace A183142.P13352576960485665698
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183142.P13352576960485665698

namespace A183142

/-- `∑[char[record[A026255(n+1)]]]` -/
def P13352576960485665698.Spec : Prop :=
  ∀ n, (P13352576960485665698.a n : ℤ) = A183142 (n + 1)

end A183142

/-! ## A183142.P3707727216535869339

`A023443(A195072(n+1))`
-/

namespace A183142.P3707727216535869339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A195072 (n + 1)).toNat

end

end A183142.P3707727216535869339

namespace A183142

/-- `A023443(A195072(n+1))` -/
def P3707727216535869339.Spec : Prop :=
  ∀ n, P3707727216535869339.a n = A183142 (n + 1)

end A183142

/-! ## A183142.P3653665762520900962

`A004526(2*(n-A097337(n+1)))`
-/

namespace A183142.P3653665762520900962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * ((n : ℤ) - A097337 (n + 1))).toNat

end

end A183142.P3653665762520900962

namespace A183142

/-- `A004526(2*(n-A097337(n+1)))` -/
def P3653665762520900962.Spec : Prop :=
  ∀ n, P3653665762520900962.a n = A183142 (n + 1)

end A183142

/-! ## A183142.P12985082348059346322

`A097337(A022838(n+1-A097337(n+1)))`
-/

namespace A183142.P12985082348059346322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A022838 ((n + 1 : ℤ) - A097337 (n + 1)).toNat).toNat

end

end A183142.P12985082348059346322

namespace A183142

/-- `A097337(A022838(n+1-A097337(n+1)))` -/
def P12985082348059346322.Spec : Prop :=
  ∀ n, P12985082348059346322.a n = A183142 (n + 1)

end A183142

/-! ## A183142.P1057551751615987982

`A330091(A329303(n+1-A194979(n+1)))`
-/

namespace A183142.P1057551751615987982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330091 (A329303 ((n + 1 : ℤ) - A194979 (n + 1)).toNat).toNat

end

end A183142.P1057551751615987982

namespace A183142

/-- `A330091(A329303(n+1-A194979(n+1)))` -/
def P1057551751615987982.Spec : Prop :=
  ∀ n, P1057551751615987982.a n = A183142 (n + 1)

end A183142

/-! ## A183142.P8091267467095348799

`ceil(n-sqrt(A000212(n+1)))`
-/

namespace A183142.P8091267467095348799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.sqrt (A000212 (n + 1) : ℝ)⌉

end

end A183142.P8091267467095348799

namespace A183142

/-- `ceil(n-sqrt(A000212(n+1)))` -/
def P8091267467095348799.Spec : Prop :=
  ∀ n, P8091267467095348799.a n = A183142 (n + 1)

end A183142

/-! ## A183142.P3542967430520145940

`A002264(A182777(n+1))`
-/

namespace A183142.P3542967430520145940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A182777 (n + 1)).toNat

end

end A183142.P3542967430520145940

namespace A183142

/-- `A002264(A182777(n+1))` -/
def P3542967430520145940.Spec : Prop :=
  ∀ n, P3542967430520145940.a n = A183142 (n + 1)

end A183142

/-! ## A183142.P5142186320230226530

`A002264(A195120(n+1)+n)`
-/

namespace A183142.P5142186320230226530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A195120 (n + 1) + (n : ℤ)).toNat

end

end A183142.P5142186320230226530

namespace A183142

/-- `A002264(A195120(n+1)+n)` -/
def P5142186320230226530.Spec : Prop :=
  ∀ n, P5142186320230226530.a n = A183142 (n + 1)

end A183142

/-! ## A183142.P12239142850873632245

`A053616(A083704(n+1))`
-/

namespace A183142.P12239142850873632245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A083704 (n + 1)).toNat

end

end A183142.P12239142850873632245

namespace A183142

/-- `A053616(A083704(n+1))` -/
def P12239142850873632245.Spec : Prop :=
  ∀ n, P12239142850873632245.a n = A183142 (n + 1)

end A183142

/-!
# A183143: [1/r]+[2/r]+...+[n/r], where r=sqrt(3) and []=floor.

The programs for A183143, the canonical program `A183143.P15961995698808160381` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183143 has offset 1).

The definition of A183143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183143.P8205360852585933268

`∑[floor((n+1)/sqrt(3))]`
-/

namespace A183143.P8205360852585933268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183143.P8205360852585933268

namespace A183143

/-- `∑[floor((n+1)/sqrt(3))]` -/
def P8205360852585933268.Spec : Prop :=
  ∀ n, P8205360852585933268.a n = A183143 (n + 1)

end A183143

/-! ## A183143.P15467100558903349748

`a(n-1)+floor((n+1)/sqrt(3))` with `a(0)=0`
-/

namespace A183143.P15467100558903349748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋

end

end A183143.P15467100558903349748

namespace A183143

/-- `a(n-1)+floor((n+1)/sqrt(3))` -/
def P15467100558903349748.Spec : Prop :=
  ∀ n, P15467100558903349748.a n = A183143 (n + 1)

end A183143

/-! ## A183143.P2190547328508457602

`∑[n]-A183144(n+1)`
-/

namespace A183143.P2190547328508457602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A183144 (n + 1)

end

end A183143.P2190547328508457602

namespace A183143

/-- `∑[n]-A183144(n+1)` -/
def P2190547328508457602.Spec : Prop :=
  ∀ n, P2190547328508457602.a n = A183143 (n + 1)

end A183143

/-! ## A183143.P15961995698808160381

`∑[n]-∑[A183142(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183143

/-- `∑[n]-∑[A183142(n+1)]` -/
def P15961995698808160381.Spec : Prop :=
  ∀ n, P15961995698808160381.a n = A183143 (n + 1)

theorem P15961995698808160381.correct : P15961995698808160381.Spec := by
  intro n
  simp only [A183143, Nat.add_sub_cancel]

end A183143

/-! ## A183143.P5523030213765648640

`∑[A194979(n+1)]-(n+1)`
-/

namespace A183143.P5523030213765648640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A183143.P5523030213765648640

namespace A183143

/-- `∑[A194979(n+1)]-(n+1)` -/
def P5523030213765648640.Spec : Prop :=
  ∀ n, P5523030213765648640.a n = A183143 (n + 1)

end A183143

/-! ## A183143.P4235438358011134143

`A022778(n+1)-A195072(n+1)`
-/

namespace A183143.P4235438358011134143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022778 (n + 1) - A195072 (n + 1)

end

end A183143.P4235438358011134143

namespace A183143

/-- `A022778(n+1)-A195072(n+1)` -/
def P4235438358011134143.Spec : Prop :=
  ∀ n, P4235438358011134143.a n = A183143 (n + 1)

end A183143

/-! ## A183143.P10330435517743967440

`A022778(n+2)-(n+2)`
-/

namespace A183143.P10330435517743967440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022778 (n + 2) - (n + 2 : ℤ)

end

end A183143.P10330435517743967440

namespace A183143

/-- `A022778(n+2)-(n+2)` -/
def P10330435517743967440.Spec : Prop :=
  ∀ n, P10330435517743967440.a n = A183143 (n + 1)

end A183143

/-! ## A183143.P15755530015252325543

`∑[A097337(n+1)]%A075253(n)`
-/

namespace A183143.P15755530015252325543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A075253 n)

end

end A183143.P15755530015252325543

namespace A183143

/-- `∑[A097337(n+1)]%A075253(n)` -/
def P15755530015252325543.Spec : Prop :=
  ∀ n, P15755530015252325543.a n = A183143 (n + 1)

end A183143

/-!
# A183144: [1/s]+[2/s]+...+[n/s], where s=(3+sqrt(3))/2, []=floor.

The programs for A183144, the canonical program `A183144.P18038817372177583572` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183144 has offset 1).

The definition of A183144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183144.P12252475142675115241

`∑[n-floor((n+1)/sqrt(3))]`
-/

namespace A183144.P12252475142675115241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183144.P12252475142675115241

namespace A183144

/-- `∑[n-floor((n+1)/sqrt(3))]` -/
def P12252475142675115241.Spec : Prop :=
  ∀ n, P12252475142675115241.a n = A183144 (n + 1)

end A183144

/-! ## A183144.P18038817372177583572

`∑[n]-A183143(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183144

/-- `∑[n]-A183143(n+1)` -/
def P18038817372177583572.Spec : Prop :=
  ∀ n, P18038817372177583572.a n = A183144 (n + 1)

theorem P18038817372177583572.correct : P18038817372177583572.Spec := by
  intro n
  simp only [A183144, Nat.add_sub_cancel]

end A183144

/-! ## A183144.P1205336175925501905

`and(∑[A183142(n+1)], -1)`
-/

namespace A183144.P1205336175925501905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A183144.P1205336175925501905

namespace A183144

/-- `and(∑[A183142(n+1)], -1)` -/
def P1205336175925501905.Spec : Prop :=
  ∀ n, P1205336175925501905.a n = A183144 (n + 1)

end A183144

/-! ## A183144.P4965220330689003079

`∑[n]-∑[A097337(n+1)]`
-/

namespace A183144.P4965220330689003079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A183144.P4965220330689003079

namespace A183144

/-- `∑[n]-∑[A097337(n+1)]` -/
def P4965220330689003079.Spec : Prop :=
  ∀ n, P4965220330689003079.a n = A183144 (n + 1)

end A183144

/-! ## A183144.P15087791763149087377

`∑[A195072(n+1)]-(n+1)`
-/

namespace A183144.P15087791763149087377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A183144.P15087791763149087377

namespace A183144

/-- `∑[A195072(n+1)]-(n+1)` -/
def P15087791763149087377.Spec : Prop :=
  ∀ n, P15087791763149087377.a n = A183144 (n + 1)

end A183144

/-! ## A183144.P8206303314307424671

`abs(∑[A194979(n+1)-1-n])`
-/

namespace A183144.P8206303314307424671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1) - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A183144.P8206303314307424671

namespace A183144

/-- `abs(∑[A194979(n+1)-1-n])` -/
def P8206303314307424671.Spec : Prop :=
  ∀ n, P8206303314307424671.a n = A183144 (n + 1)

end A183144

/-! ## A183144.P9987163287379115689

`(n+1)²-∑[A186539(n+1)]`
-/

namespace A183144.P9987163287379115689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183144.P9987163287379115689

namespace A183144

/-- `(n+1)²-∑[A186539(n+1)]` -/
def P9987163287379115689.Spec : Prop :=
  ∀ n, P9987163287379115689.a n = A183144 (n + 1)

end A183144

/-! ## A183144.P4087695043407180878

`abs(∑[A023443(A195072(n+1))])`
-/

namespace A183144.P4087695043407180878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A195072 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A183144.P4087695043407180878

namespace A183144

/-- `abs(∑[A023443(A195072(n+1))])` -/
def P4087695043407180878.Spec : Prop :=
  ∀ n, P4087695043407180878.a n = A183144 (n + 1)

end A183144

/-! ## A183144.P8477103344064159324

`∑[A183142(n+1)]*A057427(n)`
-/

namespace A183144.P8477103344064159324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A183144.P8477103344064159324

namespace A183144

/-- `∑[A183142(n+1)]*A057427(n)` -/
def P8477103344064159324.Spec : Prop :=
  ∀ n, P8477103344064159324.a n = A183144 (n + 1)

end A183144

/-! ## A183144.P6066284771008245451

`∑[A183142(n+1)]%A001844(n)`
-/

namespace A183144.P6066284771008245451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001844 n)

end

end A183144.P6066284771008245451

namespace A183144

/-- `∑[A183142(n+1)]%A001844(n)` -/
def P6066284771008245451.Spec : Prop :=
  ∀ n, P6066284771008245451.a n = A183144 (n + 1)

end A183144

/-! ## A183144.P8091443627761190265

`lcm(∑[A183142(n+1)], A008836(n+1))`
-/

namespace A183144.P8091443627761190265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A008836 (n + 1))

end

end A183144.P8091443627761190265

namespace A183144

/-- `lcm(∑[A183142(n+1)], A008836(n+1))` -/
def P8091443627761190265.Spec : Prop :=
  ∀ n, (P8091443627761190265.a n : ℤ) = A183144 (n + 1)

end A183144

/-!
# A183145: G.f.: Sum_{n>=0} [Sum_{k=0..n} C(n,k)^3*x^k]^2 * x^n.

The programs for A183145, there is no canonical definition to state claims against.
-/

/-! ## A183145.P124446547279071028

`A209260(A138808(n!))`
-/

namespace A183145.P124446547279071028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209260 (A138808 (Nat.factorial n)).toNat

end

end A183145.P124446547279071028

/-! ## A183145.P2571918131789270281

`A052382(A330626(n+1))`
-/

namespace A183145.P2571918131789270281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A330626 (n + 1)).toNat

end

end A183145.P2571918131789270281

/-!
# A183146: G.f.: Sum_{n>=0} [Sum_{k=0..n} C(n,k)^2*x^k]^3 * x^n.

The programs for A183146, there is no canonical definition to state claims against.
-/

/-! ## A183146.P17060285279459517245

`A002330(A193421(n))`
-/

namespace A183146.P17060285279459517245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A193421 n).toNat

end

end A183146.P17060285279459517245

/-! ## A183146.P7088083457652664817

`A008612(A317877(2*n+5)+n+1)`
-/

namespace A183146.P7088083457652664817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A317877 (2 * n + 5) + (n + 1 : ℤ)).toNat

end

end A183146.P7088083457652664817

/-!
# A183147: 1 together with the numbers with property that at least two successive of their divisors are odd or even.

The programs for A183147, there is no canonical definition to state claims against.
-/

/-! ## A183147.P7388068697288432942

`comp[2*comp[A350803(n+1)]]`
-/

namespace A183147.P7388068697288432942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350803 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183147.P7388068697288432942

/-! ## A183147.P3294847101215752790

`comp[A182991(n+2)-1]+1`
-/

namespace A183147.P3294847101215752790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182991 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183147.P3294847101215752790

/-! ## A183147.P13020204087618438325

`comp[eq[2, A356166(n+1)]]+1`
-/

namespace A183147.P13020204087618438325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356166 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A183147.P13020204087618438325

/-! ## A183147.P11144276985913951750

`comp[A182991(n+1)%(3^n)]`
-/

namespace A183147.P11144276985913951750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182991 (n + 1)) (3 ^ n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183147.P11144276985913951750

/-! ## A183147.P4218478809587253009

`∪[∑[C(2, n%3)], A024364(n+1)]`
-/

namespace A183147.P4218478809587253009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A183147.P4218478809587253009

/-! ## A183147.P11676469797437187879

`∪[ceil((4*n+3)/3), A291046(n+1)]`
-/

namespace A183147.P11676469797437187879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * n + 3 : ℚ) / 3⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183147.P11676469797437187879

/-! ## A183147.P1055523867166453285

`lt[4, (n-1)*a(A345994(n+1)-1)]+1` with `a(0)=6`
-/

namespace A183147.P1055523867166453285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  ((n : ℤ) - 1) * f2 (A345994 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A183147.P1055523867166453285

/-! ## A183147.P15409634694846697313

`A028310(comp[A182991(n+1)])`
-/

namespace A183147.P15409634694846697313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A183147.P15409634694846697313

/-! ## A183147.P10474922467780008340

`eq[2, A105500(A102419(n+1))]`
-/

namespace A183147.P10474922467780008340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 (A102419 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183147.P10474922467780008340

/-! ## A183147.P4411368963500799968

`∪[A122906(n+1), A002755(n)]`
-/

namespace A183147.P4411368963500799968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183147.P4411368963500799968

/-!
# A183148: Toothpick sequence on the semi-infinite square grid with toothpicks connected by their endpoints.

The programs for A183148, there is no canonical definition to state claims against.
-/

/-! ## A183148.P17219505555530613388

`∑[A105637(A183127(n))]`
-/

namespace A183148.P17219505555530613388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (A183127 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183148.P17219505555530613388

/-! ## A183148.P7073762163840618683

`A122461(∑[A183127(n)])+n`
-/

namespace A183148.P7073762163840618683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A183148.P7073762163840618683

/-! ## A183148.P4013881761317411575

`∑[A004524(A183127(n))+A000040(n+1)%2]`
-/

namespace A183148.P4013881761317411575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A183127 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183148.P4013881761317411575

/-! ## A183148.P5113433248796128583

`∑[A183149(n)]`
-/

namespace A183148.P5113433248796128583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183148.P5113433248796128583

/-!
# A183149: Number of toothpicks added at n-th stage to the toothpick structure of A183148.

The programs for A183149, there is no canonical definition to state claims against.
-/

/-! ## A183149.P4500402898913090629

`Δ[A183148(log2(ceil(2^(n-1))))]`
-/

namespace A183149.P4500402898913090629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183148 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183149.P4500402898913090629

/-! ## A183149.P16738624225520559099

`A105637(A183127(n))`
-/

namespace A183149.P16738624225520559099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (A183127 n).toNat

end

end A183149.P16738624225520559099

/-! ## A183149.P15693053972749251668

`A004525(floor(A183127(n)+atan(n)))`
-/

namespace A183149.P15693053972749251668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌊(A183127 n : ℝ) + Real.arctan (n : ℝ)⌋.toNat

end

end A183149.P15693053972749251668

/-! ## A183149.P1713363315969591622

`A004525(A183127(n)+A106140(n+1))`
-/

namespace A183149.P1713363315969591622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A183127 n + A106140 (n + 1)).toNat

end

end A183149.P1713363315969591622

/-! ## A183149.P7780029270766975457

`A004524(A183127(n))+A000040(n+1)%2`
-/

namespace A183149.P7780029270766975457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A183127 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A183149.P7780029270766975457

/-!
# A183150: Semiprimes s such that s^2 is expressible as the sum of two positive cubes.

The programs for A183150, there is no canonical definition to state claims against.
-/

/-! ## A183150.P3224878742681789642

`∩[A050801(n+1), A349202(n+1)]`
-/

namespace A183150.P3224878742681789642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183150.P3224878742681789642

/-! ## A183150.P4580937032279728107

`∩[A051394(n+1), A349202(n+1)]`
-/

namespace A183150.P4580937032279728107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183150.P4580937032279728107

/-! ## A183150.P4913673980635104344

`∩[A217248(n+1), A349202(n+1)]`
-/

namespace A183150.P4913673980635104344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183150.P4913673980635104344

/-!
# A183151: Number of partitions of n minus the number of primes <= n.

The programs for A183151, there is no canonical definition to state claims against.
-/

/-! ## A183151.P12007384477894483138

`A000041(n+1)-A000720(n+1)`
-/

namespace A183151.P12007384477894483138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A000720 (n + 1)

end

end A183151.P12007384477894483138

/-! ## A183151.P4434372240193791603

`A086739(n+1)+A037228(n+1)`
-/

namespace A183151.P4434372240193791603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086739 (n + 1) + A037228 (n + 1)

end

end A183151.P4434372240193791603

/-! ## A183151.P11186712050279653079

`A152991(n+1)+A086738(n+1)`
-/

namespace A183151.P11186712050279653079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152991 (n + 1) + A086738 (n + 1)

end

end A183151.P11186712050279653079

/-! ## A183151.P17791057282742886740

`A144300(n+1)-A082513(n+1)`
-/

namespace A183151.P17791057282742886740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (n + 1) - A082513 (n + 1)

end

end A183151.P17791057282742886740

/-! ## A183151.P18017351475105253565

`A000041(n+1)-A230980(n+1)`
-/

namespace A183151.P18017351475105253565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A230980 (n + 1)

end

end A183151.P18017351475105253565

/-! ## A183151.P7888795592466236790

`A195364(n+1)-A082514(n+1)`
-/

namespace A183151.P7888795592466236790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195364 (n + 1) - A082514 (n + 1)

end

end A183151.P7888795592466236790

/-! ## A183151.P9745903301180969950

`A000041(n+1)-∑[char[record[A000010(n+1)]]]`
-/

namespace A183151.P9745903301180969950
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183151.P9745903301180969950

/-! ## A183151.P4491090422618492832

`A000041(n+1)-∑[char[A000040(n+1)-1]]`
-/

namespace A183151.P4491090422618492832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183151.P4491090422618492832

/-! ## A183151.P9169905919931010783

`A000041(n+1)-∑[char[A006530(n+2)-1]]`
-/

namespace A183151.P9169905919931010783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183151.P9169905919931010783

/-! ## A183151.P7833218460101744266

`A000041(n+1)-∑[char[A020639(n+2)-1]]`
-/

namespace A183151.P7833218460101744266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183151.P7833218460101744266

/-! ## A183151.P5905384300842318991

`A000041(n+1)-∑[1-char[A018252(n+1)-1]]`
-/

namespace A183151.P5905384300842318991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183151.P5905384300842318991

/-! ## A183151.P4049588632772507404

`A000041(n+1)-∑[floor(n/(A000203(n+1)-2))]`
-/

namespace A183151.P4049588632772507404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A000203 (n + 1) - 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183151.P4049588632772507404

/-! ## A183151.P18229193543419886211

`A000041(n+1)-∑[round(A020639(n+1)/(n+3))]`
-/

namespace A183151.P18229193543419886211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) / (n + 3 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183151.P18229193543419886211

/-! ## A183151.P5397328130767067960

`A000041(n+1)-∑[val(A000040(A000005(n+1)), 3)]`
-/

namespace A183151.P5397328130767067960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A000005 (n + 1)).toNat).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183151.P5397328130767067960

/-! ## A183151.P6747153816875432742

`A000837(n+1)+A018783(n+1)-A000720(n+1)`
-/

namespace A183151.P6747153816875432742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) + (A018783 (n + 1) - A000720 (n + 1))

end

end A183151.P6747153816875432742

/-!
# A183153: T(n,k) is the number of order-preserving partial isometries of an n-chain of height k (height of alpha = |Im(alpha)|).

The programs for A183153, the canonical program `A183153.P5427202907270694970` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183153 has offset 0).

The definition of A183153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183153.P5066249803844905422

`A110813(n-char[∑[n+1]])`
-/

namespace A183153.P5066249803844905422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A183153.P5066249803844905422

namespace A183153

/-- `A110813(n-char[∑[n+1]])` -/
def P5066249803844905422.Spec : Prop :=
  ∀ n, P5066249803844905422.a n = A183153 n

end A183153

/-! ## A183153.P3773408193502845114

`gcd(2*char[∑[n]], A110813(n))`
-/

namespace A183153.P3773408193502845114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A110813 n)

end

end A183153.P3773408193502845114

namespace A183153

/-- `gcd(2*char[∑[n]], A110813(n))` -/
def P3773408193502845114.Spec : Prop :=
  ∀ n, (P3773408193502845114.a n : ℤ) = A183153 n

end A183153

/-! ## A183153.P50445504508464872

`A125165((2*n)%comp[∑[n-1]])`
-/

namespace A183153.P50445504508464872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125165 (2 * n % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A183153.P50445504508464872

namespace A183153

/-- `A125165((2*n)%comp[∑[n-1]])` -/
def P50445504508464872.Spec : Prop :=
  ∀ n, P50445504508464872.a n = A183153 n

end A183153

/-! ## A183153.P3339332684096016136

`A110813(n)^A166124(n)`
-/

namespace A183153.P3339332684096016136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110813 n : ℚ) ^ (A166124 n : ℤ)

end

end A183153.P3339332684096016136

namespace A183153

/-- `A110813(n)^A166124(n)` -/
def P3339332684096016136.Spec : Prop :=
  ∀ n, P3339332684096016136.a n = (A183153 n : ℚ)

end A183153

/-! ## A183153.P5427202907270694970

`2*A184049(n)-A007318(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A183153

/-- `2*A184049(n)-A007318(n)` -/
def P5427202907270694970.Spec : Prop :=
  ∀ n, P5427202907270694970.a n = A183153 n

theorem P5427202907270694970.correct : P5427202907270694970.Spec := by
  intro n
  simp only [A183153]

end A183153

/-! ## A183153.P17159444904158433589

`A028326(comp[∑[n]+1])-A007318(n)`
-/

namespace A183153.P17159444904158433589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A007318 n

end

end A183153.P17159444904158433589

namespace A183153

/-- `A028326(comp[∑[n]+1])-A007318(n)` -/
def P17159444904158433589.Spec : Prop :=
  ∀ n, P17159444904158433589.a n = A183153 n

end A183153

/-! ## A183153.P5283803567130096022

`A029655(char[comp[∑[n]]]+n)`
-/

namespace A183153.P5283803567130096022
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A183153.P5283803567130096022

namespace A183153

/-- `A029655(char[comp[∑[n]]]+n)` -/
def P5283803567130096022.Spec : Prop :=
  ∀ n, P5283803567130096022.a n = A183153 n

end A183153

/-! ## A183153.P5543826867115882552

`A208510(comp[∑[n]+1]+1)`
-/

namespace A183153.P5543826867115882552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A183153.P5543826867115882552

namespace A183153

/-- `A208510(comp[∑[n]+1]+1)` -/
def P5543826867115882552.Spec : Prop :=
  ∀ n, P5543826867115882552.a n = A183153 n

end A183153

/-! ## A183153.P13683699945938810384

`abs(A028326(n)-A249757(n))`
-/

namespace A183153.P13683699945938810384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028326 n - A249757 n|

end

end A183153.P13683699945938810384

namespace A183153

/-- `abs(A028326(n)-A249757(n))` -/
def P13683699945938810384.Spec : Prop :=
  ∀ n, P13683699945938810384.a n = A183153 n

end A183153

/-! ## A183153.P859098538315350481

`A110813(n)%A069138(n+1)`
-/

namespace A183153.P859098538315350481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110813 n) (A069138 (n + 1))

end

end A183153.P859098538315350481

namespace A183153

/-- `A110813(n)%A069138(n+1)` -/
def P859098538315350481.Spec : Prop :=
  ∀ n, P859098538315350481.a n = A183153 n

end A183153

/-! ## A183153.P13184504076871244702

`A110813(n)^A001221(A059268(n))`
-/

namespace A183153.P13184504076871244702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110813 n : ℚ) ^ (A001221 (A059268 n).toNat : ℤ)

end

end A183153.P13184504076871244702

namespace A183153

/-- `A110813(n)^A001221(A059268(n))` -/
def P13184504076871244702.Spec : Prop :=
  ∀ n, P13184504076871244702.a n = (A183153 n : ℚ)

end A183153

/-!
# A183154: T(n,k) is the number of order-preserving partial isometries (of an n-chain) of fixed k (fix of alpha is the number of fixed points of alpha).

The programs for A183154, the canonical program `A183154.P7623041928284597540` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183154 has offset 0).

The definition of A183154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183154.P18408143750283961678

`(char[∑[n]]+1)*A091918(n)-A198954(n)`
-/

namespace A183154.P18408143750283961678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A091918 n - A198954 n

end

end A183154.P18408143750283961678

namespace A183154

/-- `(char[∑[n]]+1)*A091918(n)-A198954(n)` -/
def P18408143750283961678.Spec : Prop :=
  ∀ n, P18408143750283961678.a n = A183154 n

end A183154

/-! ## A183154.P7623041928284597540

`A005803(A130296(n+1))+A007318(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A183154

/-- `A005803(A130296(n+1))+A007318(n)` -/
def P7623041928284597540.Spec : Prop :=
  ∀ n, P7623041928284597540.a n = A183154 n

theorem P7623041928284597540.correct : P7623041928284597540.Spec := by
  intro n
  simp only [A183154]

end A183154

/-! ## A183154.P10387294474444833940

`A007318(n)+2*A000295(A158821(n))`
-/

namespace A183154.P10387294474444833940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A000295 (A158821 n).toNat

end

end A183154.P10387294474444833940

namespace A183154

/-- `A007318(n)+2*A000295(A158821(n))` -/
def P10387294474444833940.Spec : Prop :=
  ∀ n, P10387294474444833940.a n = A183154 n

end A183154

/-! ## A183154.P10682916609429903657

`A005803(A130296(n+1))+abs(A108086(n))`
-/

namespace A183154.P10682916609429903657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (A130296 (n + 1)).toNat + |A108086 n|

end

end A183154.P10682916609429903657

namespace A183154

/-- `A005803(A130296(n+1))+abs(A108086(n))` -/
def P10682916609429903657.Spec : Prop :=
  ∀ n, P10682916609429903657.a n = A183154 n

end A183154

/-! ## A183154.P394108249282069838

`A005803(A130296(n+1))+abs(A117440(n))`
-/

namespace A183154.P394108249282069838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (A130296 (n + 1)).toNat + |A117440 n|

end

end A183154.P394108249282069838

namespace A183154

/-- `A005803(A130296(n+1))+abs(A117440(n))` -/
def P394108249282069838.Spec : Prop :=
  ∀ n, P394108249282069838.a n = A183154 n

end A183154

/-! ## A183154.P2061630772763794266

`A005803(A130296(n+1))+sqrt(A008459(n))`
-/

namespace A183154.P2061630772763794266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005803 (A130296 (n + 1)).toNat : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A183154.P2061630772763794266

namespace A183154

/-- `A005803(A130296(n+1))+sqrt(A008459(n))` -/
def P2061630772763794266.Spec : Prop :=
  ∀ n, P2061630772763794266.a n = (A183154 n : ℝ)

end A183154

/-! ## A183154.P14845260021893414093

`A005803(A130296(n+1))+Δ[A102363(n)]`
-/

namespace A183154.P14845260021893414093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (A130296 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A183154.P14845260021893414093

namespace A183154

/-- `A005803(A130296(n+1))+Δ[A102363(n)]` -/
def P14845260021893414093.Spec : Prop :=
  ∀ n, P14845260021893414093.a n = A183154 n

end A183154

/-! ## A183154.P16534859059037373656

`A005803(A130296(n+1))+A014473(n)+1`
-/

namespace A183154.P16534859059037373656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (A130296 (n + 1)).toNat + (A014473 n + 1)

end

end A183154.P16534859059037373656

namespace A183154

/-- `A005803(A130296(n+1))+A014473(n)+1` -/
def P16534859059037373656.Spec : Prop :=
  ∀ n, P16534859059037373656.a n = A183154 n

end A183154

/-!
# A183155: The number of order-preserving partial isometries (of an n-chain) of fix zero (fix of alpha = 0). Equivalently, the number of order-preserving partial derangement isometries (of an n-chain).

The programs for A183155, the canonical program `A183155.P5859391603233512906` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183155 has offset 0).

The definition of A183155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183155.P5859391603233512906

`2^(n+1)-(2*n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183155

/-- `2^(n+1)-(2*n+1)` -/
def P5859391603233512906.Spec : Prop :=
  ∀ n, P5859391603233512906.a n = A183155 n

theorem P5859391603233512906.correct : P5859391603233512906.Spec := by
  intro n
  simp only [A183155]

end A183155

/-! ## A183155.P9814609851208438299

`xor(2*n, ∑[2^n])`
-/

namespace A183155.P9814609851208438299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183155.P9814609851208438299

namespace A183155

/-- `xor(2*n, ∑[2^n])` -/
def P9814609851208438299.Spec : Prop :=
  ∀ n, (P9814609851208438299.a n : ℤ) = A183155 n

end A183155

/-! ## A183155.P9665413791181483395

`or(1, ∑[2^n]-2*n)`
-/

namespace A183155.P9665413791181483395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ))

end

end A183155.P9665413791181483395

namespace A183155

/-- `or(1, ∑[2^n]-2*n)` -/
def P9665413791181483395.Spec : Prop :=
  ∀ n, P9665413791181483395.a n = A183155 n

end A183155

/-! ## A183155.P18372745411064732326

`-or(2*n, ∑[-2^n])`
-/

namespace A183155.P18372745411064732326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183155.P18372745411064732326

namespace A183155

/-- `-or(2*n, ∑[-2^n])` -/
def P18372745411064732326.Spec : Prop :=
  ∀ n, P18372745411064732326.a n = A183155 n

end A183155

/-! ## A183155.P1441462662205318775

`∑[2*(a(n-1)+1)]` with `a(0)=1, a(1)=0`
-/

namespace A183155.P1441462662205318775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183155.P1441462662205318775

namespace A183155

/-- `∑[2*(a(n-1)+1)]` -/
def P1441462662205318775.Spec : Prop :=
  ∀ n, (P1441462662205318775.a n : ℤ) = A183155 n

end A183155

/-! ## A183155.P2686501193132571188

`and(-(2*n+1), ∑[2^n])`
-/

namespace A183155.P2686501193132571188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(2 * n + 1 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183155.P2686501193132571188

namespace A183155

/-- `and(-(2*n+1), ∑[2^n])` -/
def P2686501193132571188.Spec : Prop :=
  ∀ n, P2686501193132571188.a n = A183155 n

end A183155

/-! ## A183155.P15537369147260437871

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A183155.P15537369147260437871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183155.P15537369147260437871

namespace A183155

/-- `∑[∑[2*a(n-1)]]` -/
def P15537369147260437871.Spec : Prop :=
  ∀ n, P15537369147260437871.a n = A183155 n

end A183155

/-! ## A183155.P3342636312052754800

`floor(2^n+a(n-1)-2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183155.P3342636312052754800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - 2)

end

end A183155.P3342636312052754800

namespace A183155

/-- `floor(2^n+a(n-1)-2)` -/
def P3342636312052754800.Spec : Prop :=
  ∀ n, P3342636312052754800.a n = A183155 n

theorem P3342636312052754800.correct : P3342636312052754800.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A183155, Nat.add_sub_cancel, A183155.P3342636312052754800.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A183155, Nat.add_sub_cancel, A183155.P3342636312052754800.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183155

/-! ## A183155.P775276742975870164

`floor(2^n-(2-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183155.P775276742975870164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - (2 - a (n - 1))

end

end A183155.P775276742975870164

namespace A183155

/-- `floor(2^n-(2-a(n-1)))` -/
def P775276742975870164.Spec : Prop :=
  ∀ n, P775276742975870164.a n = A183155 n

theorem P775276742975870164.correct : P775276742975870164.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A183155, Nat.add_sub_cancel, A183155.P775276742975870164.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A183155, Nat.add_sub_cancel, A183155.P775276742975870164.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183155

/-! ## A183155.P12348908844846696636

`2*(a(n-1)-3/2+n)` with `a(0)=1`
-/

namespace A183155.P12348908844846696636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - (3 : ℚ) / 2 + (n : ℚ))

end

end A183155.P12348908844846696636

namespace A183155

/-- `2*(a(n-1)-3/2+n)` -/
def P12348908844846696636.Spec : Prop :=
  ∀ n, P12348908844846696636.a n = (A183155 n : ℚ)

theorem P12348908844846696636.correct : P12348908844846696636.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A183155, Nat.add_sub_cancel, A183155.P12348908844846696636.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A183155, Nat.add_sub_cancel, A183155.P12348908844846696636.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183155

/-! ## A183155.P7072262712330024944

`2*(a(n-1)-(3/2-n))` with `a(0)=1`
-/

namespace A183155.P7072262712330024944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ((3 : ℚ) / 2 - (n : ℚ)))

end

end A183155.P7072262712330024944

namespace A183155

/-- `2*(a(n-1)-(3/2-n))` -/
def P7072262712330024944.Spec : Prop :=
  ∀ n, P7072262712330024944.a n = (A183155 n : ℚ)

theorem P7072262712330024944.correct : P7072262712330024944.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A183155, Nat.add_sub_cancel, A183155.P7072262712330024944.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A183155, Nat.add_sub_cancel, A183155.P7072262712330024944.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183155

/-! ## A183155.P15252485717033305515

`abs(or(2*n+1, -2^(n+1)))`
-/

namespace A183155.P15252485717033305515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (2 * n + 1 : ℤ) (-(2 ^ (n + 1) : ℤ))|

end

end A183155.P15252485717033305515

namespace A183155

/-- `abs(or(2*n+1, -2^(n+1)))` -/
def P15252485717033305515.Spec : Prop :=
  ∀ n, P15252485717033305515.a n = A183155 n

end A183155

/-! ## A183155.P5845284590603675516

`floor(2*a(n-1)+2*n-3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183155.P5845284590603675516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + ((2 * n : ℤ) - 3)

end

end A183155.P5845284590603675516

namespace A183155

/-- `floor(2*a(n-1)+2*n-3)` -/
def P5845284590603675516.Spec : Prop :=
  ∀ n, P5845284590603675516.a n = A183155 n

theorem P5845284590603675516.correct : P5845284590603675516.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A183155, Nat.add_sub_cancel, A183155.P5845284590603675516.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A183155, Nat.add_sub_cancel, A183155.P5845284590603675516.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183155

/-! ## A183155.P15552146033678277313

`floor(2*n-(3-2*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183155.P15552146033678277313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - (3 - 2 * a (n - 1))

end

end A183155.P15552146033678277313

namespace A183155

/-- `floor(2*n-(3-2*a(n-1)))` -/
def P15552146033678277313.Spec : Prop :=
  ∀ n, P15552146033678277313.a n = A183155 n

theorem P15552146033678277313.correct : P15552146033678277313.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A183155, Nat.add_sub_cancel, A183155.P15552146033678277313.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A183155, Nat.add_sub_cancel, A183155.P15552146033678277313.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183155

/-! ## A183155.P17067978133614142146

`∑[a(n-1)+a(n-1)+2]` with `a(0)=1, a(1)=0`
-/

namespace A183155.P17067978133614142146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183155.P17067978133614142146

namespace A183155

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P17067978133614142146.Spec : Prop :=
  ∀ n, (P17067978133614142146.a n : ℤ) = A183155 n

end A183155

/-! ## A183155.P16391727884759243453

`floor(a(n-1)-3+a(n-1)+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183155.P16391727884759243453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 3 + (a (n - 1) + (n : ℤ) + (n : ℤ))

end

end A183155.P16391727884759243453

namespace A183155

/-- `floor(a(n-1)-3+a(n-1)+n+n)` -/
def P16391727884759243453.Spec : Prop :=
  ∀ n, P16391727884759243453.a n = A183155 n

theorem P16391727884759243453.correct : P16391727884759243453.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A183155, Nat.add_sub_cancel, A183155.P16391727884759243453.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A183155, Nat.add_sub_cancel, A183155.P16391727884759243453.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183155

/-! ## A183155.P15514390670442093439

`floor(a(n-1)-(3-a(n-1)-n-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183155.P15514390670442093439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (3 - a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A183155.P15514390670442093439

namespace A183155

/-- `floor(a(n-1)-(3-a(n-1)-n-n))` -/
def P15514390670442093439.Spec : Prop :=
  ∀ n, P15514390670442093439.a n = A183155 n

theorem P15514390670442093439.correct : P15514390670442093439.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A183155, Nat.add_sub_cancel, A183155.P15514390670442093439.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A183155, Nat.add_sub_cancel, A183155.P15514390670442093439.a, A183155.P5859391603233512906.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183155

/-! ## A183155.P17212172879157751801

`∑[abs(A000918(n))]`
-/

namespace A183155.P17212172879157751801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000918 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183155.P17212172879157751801

namespace A183155

/-- `∑[abs(A000918(n))]` -/
def P17212172879157751801.Spec : Prop :=
  ∀ n, P17212172879157751801.a n = A183155 n

end A183155

/-!
# A183156: The number T(n) of isometries of all subspaces of the finite metric space {1,2,...,n} (as a subspace of the reals with the Euclidean metric).

The programs for A183156, the canonical program `A183156.P3829462642693290082` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183156 has offset 0).

The definition of A183156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183156.P3829462642693290082

`2*a(n-1)+n²-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183156

/-- `2*a(n-1)+n²-1` -/
def P3829462642693290082.Spec : Prop :=
  ∀ n, P3829462642693290082.a n = A183156 n

theorem P3829462642693290082.correct : P3829462642693290082.Spec := by
  intro n
  simp only [A183156]

end A183156

/-! ## A183156.P10644907384627306657

`3*2^(n+1)-(n+2)²-1`
-/

namespace A183156.P10644907384627306657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ (n + 1) : ℤ) - ((n + 2) ^ 2 : ℤ) - 1

end

end A183156.P10644907384627306657

namespace A183156

/-- `3*2^(n+1)-(n+2)²-1` -/
def P10644907384627306657.Spec : Prop :=
  ∀ n, P10644907384627306657.a n = A183156 n

theorem P10644907384627306657.correct : P10644907384627306657.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A183156, Nat.add_sub_cancel, A183156.P10644907384627306657.a, A183156.P3829462642693290082.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A183156, Nat.add_sub_cancel, A183156.P10644907384627306657.a, A183156.P3829462642693290082.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183156

/-! ## A183156.P1085743223502715264

`∑[∑[2*(a(n-1)+1)]]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A183156.P1085743223502715264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f2 =>
  2 * (f2 (n - 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183156.P1085743223502715264

namespace A183156

/-- `∑[∑[2*(a(n-1)+1)]]` -/
def P1085743223502715264.Spec : Prop :=
  ∀ n, (P1085743223502715264.a n : ℤ) = A183156 n

end A183156

/-! ## A183156.P1902630606306176248

`floor(2*a(n-1)-(1-n²))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183156.P1902630606306176248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (1 - (n ^ 2 : ℤ))

end

end A183156.P1902630606306176248

namespace A183156

/-- `floor(2*a(n-1)-(1-n²))` -/
def P1902630606306176248.Spec : Prop :=
  ∀ n, P1902630606306176248.a n = A183156 n

theorem P1902630606306176248.correct : P1902630606306176248.Spec := by
  intro n
  simp only [A183156, Nat.add_sub_cancel, A183156.P1902630606306176248.a, A183156.P3829462642693290082.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A183156

/-! ## A183156.P1168319448142417015

`∑[∑[a(n-1)+a(n-1)+2]]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A183156.P1168319448142417015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183156.P1168319448142417015

namespace A183156

/-- `∑[∑[a(n-1)+a(n-1)+2]]` -/
def P1168319448142417015.Spec : Prop :=
  ∀ n, (P1168319448142417015.a n : ℤ) = A183156 n

end A183156

/-! ## A183156.P11339883411797278715

`∑[or(1, A050488(n))]`
-/

namespace A183156.P11339883411797278715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050488 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183156.P11339883411797278715

namespace A183156

/-- `∑[or(1, A050488(n))]` -/
def P11339883411797278715.Spec : Prop :=
  ∀ n, P11339883411797278715.a n = A183156 n

end A183156

/-! ## A183156.P17799609489108226876

`∑[A077802(n)-n]`
-/

namespace A183156.P17799609489108226876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077802 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183156.P17799609489108226876

namespace A183156

/-- `∑[A077802(n)-n]` -/
def P17799609489108226876.Spec : Prop :=
  ∀ n, P17799609489108226876.a n = A183156 n

end A183156

/-! ## A183156.P16511604976715496705

`record[A290114(n)-n²]`
-/

namespace A183156.P16511604976715496705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183156.P16511604976715496705

namespace A183156

/-- `record[A290114(n)-n²]` -/
def P16511604976715496705.Spec : Prop :=
  ∀ n, P16511604976715496705.a n = A183156 n

end A183156

/-! ## A183156.P2874346821018149996

`∑[A068156(n)-2*n]`
-/

namespace A183156.P2874346821018149996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183156.P2874346821018149996

namespace A183156

/-- `∑[A068156(n)-2*n]` -/
def P2874346821018149996.Spec : Prop :=
  ∀ n, P2874346821018149996.a n = A183156 n

end A183156

/-! ## A183156.P5699149724363630124

`∑[∑[abs(2-A111286(n+1))]]`
-/

namespace A183156.P5699149724363630124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A111286 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183156.P5699149724363630124

namespace A183156

/-- `∑[∑[abs(2-A111286(n+1))]]` -/
def P5699149724363630124.Spec : Prop :=
  ∀ n, P5699149724363630124.a n = A183156 n

end A183156

/-! ## A183156.P15648202075080388132

`∑[A060482(2*n+1)-2*n]`
-/

namespace A183156.P15648202075080388132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (2 * n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183156.P15648202075080388132

namespace A183156

/-- `∑[A060482(2*n+1)-2*n]` -/
def P15648202075080388132.Spec : Prop :=
  ∀ n, P15648202075080388132.a n = A183156 n

end A183156

/-! ## A183156.P16675114339664399553

`-(n*(n+3)-∑[A007283(n)-1]+1)`
-/

namespace A183156.P16675114339664399553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n * (n + 3) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183156.P16675114339664399553

namespace A183156

/-- `-(n*(n+3)-∑[A007283(n)-1]+1)` -/
def P16675114339664399553.Spec : Prop :=
  ∀ n, P16675114339664399553.a n = A183156 n

end A183156

/-! ## A183156.P13169497082001363008

`xor(A010684(n), A047520(n))`
-/

namespace A183156.P13169497082001363008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A047520 n)

end

end A183156.P13169497082001363008

namespace A183156

/-- `xor(A010684(n), A047520(n))` -/
def P13169497082001363008.Spec : Prop :=
  ∀ n, P13169497082001363008.a n = A183156 n

end A183156

/-! ## A183156.P4846141085429271747

`∑[A052955(2*n+1)-A103517(n)]`
-/

namespace A183156.P4846141085429271747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n + 1) - A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183156.P4846141085429271747

namespace A183156

/-- `∑[A052955(2*n+1)-A103517(n)]` -/
def P4846141085429271747.Spec : Prop :=
  ∀ n, P4846141085429271747.a n = A183156 n

end A183156

/-!
# A183157: Triangle read by rows: T(n,k) is the number of partial isometries of an n-chain of height k (height of alpha = |Im(alpha)|).

The programs for A183157, there is no canonical definition to state claims against.
-/

/-! ## A183157.P17830167276955351980

`A020639(A233543(n))*A183153(n)`
-/

namespace A183157.P17830167276955351980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A233543 n).toNat * A183153 n

end

end A183157.P17830167276955351980

/-!
# A183159: The number of partial isometries (of an n-chain) of fix zero (fix of alpha = 0). Equivalently, the number of partial derangement isometries (of an n-chain).

The programs for A183159, the canonical program `A183159.P9239487381901080605` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183159 has offset 0).

The definition of A183159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183159.P9239487381901080605

`(51*2^n+(-2)^n-40)/12-n*(n+3)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183159

/-- `(51*2^n+(-2)^n-40)/12-n*(n+3)` -/
def P9239487381901080605.Spec : Prop :=
  ∀ n, P9239487381901080605.a n = (A183159 n : ℚ)

end A183159

/-! ## A183159.P17607023634104319340

`∑[A075255(A029744(n+1)²)]`
-/

namespace A183159.P17607023634104319340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A029744 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183159.P17607023634104319340

namespace A183159

/-- `∑[A075255(A029744(n+1)²)]` -/
def P17607023634104319340.Spec : Prop :=
  ∀ n, P17607023634104319340.a n = A183159 n

end A183159

/-! ## A183159.P3767012841570364401

`A183158(∑[n])`
-/

namespace A183159.P3767012841570364401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183159.P3767012841570364401

namespace A183159

/-- `A183158(∑[n])` -/
def P3767012841570364401.Spec : Prop :=
  ∀ n, P3767012841570364401.a n = A183159 n

end A183159

/-! ## A183159.P7646864174615999390

`and(-1, A183158(A000217(n)))`
-/

namespace A183159.P7646864174615999390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A183158 (A000217 n).toNat)

end

end A183159.P7646864174615999390

namespace A183159

/-- `and(-1, A183158(A000217(n)))` -/
def P7646864174615999390.Spec : Prop :=
  ∀ n, P7646864174615999390.a n = A183159 n

end A183159

/-! ## A183159.P4085174004369645122

`A028310(A183158(C(n+1, 2)))`
-/

namespace A183159.P4085174004369645122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A183158 (Nat.choose (n + 1) 2)).toNat

end

end A183159.P4085174004369645122

namespace A183159

/-- `A028310(A183158(C(n+1, 2)))` -/
def P4085174004369645122.Spec : Prop :=
  ∀ n, P4085174004369645122.a n = A183159 n

end A183159

/-!
# A183160: a(n) = Sum_{k=0..n} C(n+k,n-k)*C(2*n-k,k).

The programs for A183160, there is no canonical definition to state claims against.
-/

/-! ## A183160.P6410572220647430983

`A109244(∑[4*n])`
-/

namespace A183160.P6410572220647430983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183160.P6410572220647430983

/-! ## A183160.P6796971840150683446

`abs(A158454(∑[4*n]))`
-/

namespace A183160.P6796971840150683446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158454 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A183160.P6796971840150683446

/-! ## A183160.P5729579212881826776

`A109244(A046092(n))%(10^n+1)`
-/

namespace A183160.P5729579212881826776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109244 (A046092 n).toNat) (10 ^ n + 1 : ℤ)

end

end A183160.P5729579212881826776

/-! ## A183160.P16404932430461875037

`A109244(A046092(n))+floor(A025581(n)/16)`
-/

namespace A183160.P16404932430461875037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A046092 n).toNat + ⌊(A025581 n : ℚ) / 16⌋

end

end A183160.P16404932430461875037

/-! ## A183160.P607921528535864936

`A109244(A046092(n))+floor(A037855(n+1)/16)`
-/

namespace A183160.P607921528535864936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A046092 n).toNat + ⌊(A037855 (n + 1) : ℚ) / 16⌋

end

end A183160.P607921528535864936

/-! ## A183160.P10705095570865122766

`A123521(n*Δ[n²])`
-/

namespace A183160.P10705095570865122766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123521 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A183160.P10705095570865122766

/-! ## A183160.P8781035587940311632

`A201635(A056220(n+1))`
-/

namespace A183160.P8781035587940311632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A056220 (n + 1)).toNat

end

end A183160.P8781035587940311632

/-! ## A183160.P16440360100566060955

`A201635(A098486((n+1)²))`
-/

namespace A183160.P16440360100566060955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A098486 ((n + 1) ^ 2)).toNat

end

end A183160.P16440360100566060955

/-! ## A183160.P1264533617787604010

`A201635(A054000(n+1)+1)`
-/

namespace A183160.P1264533617787604010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A054000 (n + 1) + 1).toNat

end

end A183160.P1264533617787604010

/-! ## A183160.P2898868362720003130

`A201635(2*A005563(n)+1)`
-/

namespace A183160.P2898868362720003130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (2 * A005563 n + 1).toNat

end

end A183160.P2898868362720003130

/-!
# A183161: Self-convolution equals A183160.

The programs for A183161, there is no canonical definition to state claims against.
-/

/-! ## A183161.P2176289114854395419

`A265911(A002203(n)²)`
-/

namespace A183161.P2176289114854395419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265911 (A002203 n ^ 2).toNat

end

end A183161.P2176289114854395419

/-! ## A183161.P9800029938342011118

`A194245(A001108(n)+3)`
-/

namespace A183161.P9800029938342011118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194245 (A001108 n + 3).toNat

end

end A183161.P9800029938342011118

/-!
# A183162: Least integer k such that floor(k*sqrt(n+1)) > k*sqrt(n).

The programs for A183162, there is no canonical definition to state claims against.
-/

/-! ## A183162.P3122068418240928323

`A275817(n)-Δ[A048760(n)]`
-/

namespace A183162.P3122068418240928323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275817 n - (f1 (n + 1) - f1 n)

end

end A183162.P3122068418240928323

/-! ## A183162.P13336618566792076856

`A275817(n)/Δ[A061887(n)]`
-/

namespace A183162.P13336618566792076856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275817 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A183162.P13336618566792076856

/-! ## A183162.P3361171772537863680

`gcd(Δ[A000196(n)], A275817(n))`
-/

namespace A183162.P3361171772537863680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A275817 n)

end

end A183162.P3361171772537863680

/-! ## A183162.P2675958646235530958

`A275817(n)^A151878(Δ[A000196(n)])`
-/

namespace A183162.P2675958646235530958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275817 n : ℚ) ^ (A151878 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A183162.P2675958646235530958

/-! ## A183162.P17677642011981118661

`A275817(n)^A151909(Δ[A000196(n)])`
-/

namespace A183162.P17677642011981118661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275817 n : ℚ) ^ (A151909 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A183162.P17677642011981118661

/-! ## A183162.P11215769924659486295

`A275817(n)^A178334(A003285(n+1))`
-/

namespace A183162.P11215769924659486295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275817 n : ℚ) ^ (A178334 (A003285 (n + 1)).toNat : ℤ)

end

end A183162.P11215769924659486295

/-!
# A183163: Least integer k such that floor(k*log(n+1))>k*log(n).

The programs for A183163, there is no canonical definition to state claims against.
-/

/-! ## A183163.P17531263200386828948

`floor(A227634(n+1)+acot(n))`
-/

namespace A183163.P17531263200386828948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227634 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A183163.P17531263200386828948

/-! ## A183163.P6964625725055740436

`A227634(A054977(n)²+n)`
-/

namespace A183163.P6964625725055740436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227634 (A054977 n ^ 2 + (n : ℤ)).toNat

end

end A183163.P6964625725055740436

/-! ## A183163.P8790648447680326591

`A227634(n+1)+A000007(n)`
-/

namespace A183163.P8790648447680326591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227634 (n + 1) + A000007 n

end

end A183163.P8790648447680326591

/-! ## A183163.P2492044317677107685

`A227634(n+1)+A151878(n)`
-/

namespace A183163.P2492044317677107685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227634 (n + 1) + A151878 n

end

end A183163.P2492044317677107685

/-! ## A183163.P7565260792148613772

`A227634(n+1)+A151909(n)`
-/

namespace A183163.P7565260792148613772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227634 (n + 1) + A151909 n

end

end A183163.P7565260792148613772

/-! ## A183163.P17837240518581881322

`A227634(n+1)+A151933(n)`
-/

namespace A183163.P17837240518581881322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227634 (n + 1) + A151933 n

end

end A183163.P17837240518581881322

/-! ## A183163.P284325030672212484

`A054977(n)*A227634(n+1)`
-/

namespace A183163.P284325030672212484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A227634 (n + 1)

end

end A183163.P284325030672212484

/-! ## A183163.P364957180397944482

`A227634(n+1)+∏{d}[n, A001222(#)]`
-/

namespace A183163.P364957180397944482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227634 (n + 1) + ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A183163.P364957180397944482

/-! ## A183163.P16280212792332023915

`A227634(n+1)+C(2, comp[A000032(n)])`
-/

namespace A183163.P16280212792332023915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227634 (n + 1) + (Nat.choose 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ)

end

end A183163.P16280212792332023915

/-! ## A183163.P11235739403781302793

`A227634(n+1)+A000010(n+2)%2`
-/

namespace A183163.P11235739403781302793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227634 (n + 1) + Int.tmod (A000010 (n + 2)) 2

end

end A183163.P11235739403781302793

/-!
# A183165: G.f.: Sum_{n>=0} [Sum_{k>=0} C(n+k-1,k)^2*x^k]^n * x^n.

The programs for A183165, there is no canonical definition to state claims against.
-/

/-! ## A183165.P1833262646214616906

`A332086(∑[A193651(n)])`
-/

namespace A183165.P1833262646214616906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183165.P1833262646214616906

/-! ## A183165.P17913461453562655969

`A285870(A124529(n)+1)`
-/

namespace A183165.P17913461453562655969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A124529 n + 1).toNat

end

end A183165.P17913461453562655969

/-!
# A183166: G.f.: Sum_{n>=0} [Sum_{k=0..n} C(n,k)^2*x^k]^n*x^n.

The programs for A183166, there is no canonical definition to state claims against.
-/

/-! ## A183166.P7661039716744656402

`A063272(∑[A215708(n)])`
-/

namespace A183166.P7661039716744656402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183166.P7661039716744656402

/-! ## A183166.P1937716129100385902

`A113993(A129922(n+1))`
-/

namespace A183166.P1937716129100385902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113993 (A129922 (n + 1)).toNat

end

end A183166.P1937716129100385902

/-!
# A183168: Number of partitions of n^2 into three distinct primes.

The programs for A183168, there is no canonical definition to state claims against.
-/

/-! ## A183168.P7471193267660112596

`A125688((n+1)²)`
-/

namespace A183168.P7471193267660112596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 ((n + 1) ^ 2)

end

end A183168.P7471193267660112596

/-! ## A183168.P6097799429961609693

`and(-1, A125688(A000290(n+1)))`
-/

namespace A183168.P6097799429961609693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A125688 (A000290 (n + 1)).toNat)

end

end A183168.P6097799429961609693

/-! ## A183168.P2534080293854030963

`A125688((n+1)^2)*A178334(n)`
-/

namespace A183168.P2534080293854030963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 ((n + 1) ^ 2) * A178334 n

end

end A183168.P2534080293854030963

/-! ## A183168.P13300227898452206778

`A125688((n+1)^2)%A000041(n)`
-/

namespace A183168.P13300227898452206778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125688 ((n + 1) ^ 2)) (A000041 n)

end

end A183168.P13300227898452206778

/-! ## A183168.P6427991281564883302

`A125688((n+1)^2)+A000007(n+1)`
-/

namespace A183168.P6427991281564883302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 ((n + 1) ^ 2) + A000007 (n + 1)

end

end A183168.P6427991281564883302

/-! ## A183168.P13131878452914741542

`A125688((n+1)^2)+A000038(n+1)`
-/

namespace A183168.P13131878452914741542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 ((n + 1) ^ 2) + A000038 (n + 1)

end

end A183168.P13131878452914741542

/-! ## A183168.P14150465092869294487

`A007318(C(2, n))*A125688((n+1)^2)`
-/

namespace A183168.P14150465092869294487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A125688 ((n + 1) ^ 2)

end

end A183168.P14150465092869294487

/-! ## A183168.P13559369617036002214

`A057427(n)*A125688((n+1)*(n+1))`
-/

namespace A183168.P13559369617036002214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A125688 ((n + 1) * (n + 1))

end

end A183168.P13559369617036002214

/-! ## A183168.P48698277151161063

`A014963(22*(n+1))*A125688((n+1)^2)`
-/

namespace A183168.P48698277151161063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (22 * (n + 1)) * A125688 ((n + 1) ^ 2)

end

end A183168.P48698277151161063

/-! ## A183168.P873626526128977445

`∑{d}[A125688(A000290(n+1)), A000010(#)]`
-/

namespace A183168.P873626526128977445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A000290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A183168.P873626526128977445

/-! ## A183168.P3635810110387504595

`A125688(A000290(n+1))-∑{e}[n, A125688(#)]`
-/

namespace A183168.P3635810110387504595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A000290 (n + 1)).toNat - ∑ p ∈ Nat.primeFactors (f1 n), A125688 (Nat.factorization (f1 n) p)

end

end A183168.P3635810110387504595

/-! ## A183168.P16104698805403305449

`A000041(C(2, n+2))*A125688(A000290(n+1))`
-/

namespace A183168.P16104698805403305449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A125688 (A000290 (n + 1)).toNat

end

end A183168.P16104698805403305449

/-! ## A183168.P15387744414208671164

`A193581(A000120(n))+A125688((n+1)*(n+1))`
-/

namespace A183168.P15387744414208671164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A000120 n).toNat + A125688 ((n + 1) * (n + 1))

end

end A183168.P15387744414208671164

/-! ## A183168.P13360843657778471675

`A000120(A053644(n))*A125688((n+1)*(n+1))`
-/

namespace A183168.P13360843657778471675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053644 n).toNat * A125688 ((n + 1) * (n + 1))

end

end A183168.P13360843657778471675

/-! ## A183168.P7851206175818262562

`∑{p}[A000040(n+1), A125688((n+1)*A000720(#))]`
-/

namespace A183168.P7851206175818262562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A125688 ((n + 1 : ℤ) * A000720 p).toNat

end

end A183168.P7851206175818262562

/-! ## A183168.P4605413996931276324

`A007318(A000045(floor(1/(n+1))))*A125688((n+1)^2)`
-/

namespace A183168.P4605413996931276324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000045 ⌊1 / (n + 1 : ℚ)⌋.toNat).toNat * A125688 ((n + 1) ^ 2)

end

end A183168.P4605413996931276324

/-!
# A183169: Tree generated by the squares.

The programs for A183169, there is no canonical definition to state claims against.
-/

/-! ## A183169.P10707811740757048953

`A334866(n)-A333359(A246006(n))`
-/

namespace A183169.P10707811740757048953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334866 n - A333359 (A246006 n).toNat

end

end A183169.P10707811740757048953

/-!
# A183172: Ordering of the numbers in set S generated by these rules: 1 is in S, and if n is in S then floor(r*n) and floor(s*n) are in S, where r=sqrt(2) and s=r/(r-1).

The programs for A183172, there is no canonical definition to state claims against.
-/

/-! ## A183172.P2829168133117289358

`comp[A183173(n+1)-1]+1`
-/

namespace A183172.P2829168133117289358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183173 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183172.P2829168133117289358

/-! ## A183172.P8962818364951145680

`eq[char[A183173(n+1)], A000007(n)]`
-/

namespace A183172.P8962818364951145680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183173 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183172.P8962818364951145680

/-! ## A183172.P1947205923789463060

`eq[char[A183173(n+1)], A000038(n)]`
-/

namespace A183172.P1947205923789463060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183173 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183172.P1947205923789463060

/-! ## A183172.P18333982911037276454

`eq[A189078(n+1), A189081(n+1)]+1`
-/

namespace A183172.P18333982911037276454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A183172.P18333982911037276454

/-! ## A183172.P6774628964396894144

`eq[char[A183173(n+1)], A134746(2*n)]`
-/

namespace A183172.P6774628964396894144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183173 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183172.P6774628964396894144

/-! ## A183172.P14390565129147453487

`eq[char[A183173(n+1)], A151933(n)]`
-/

namespace A183172.P14390565129147453487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183173 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183172.P14390565129147453487

/-!
# A183173: Ordering of the numbers in set S generated by these rules: 2 is in S, and if n is in S then floor(r*n) and floor(s*n) are in S, where r=sqrt(2) and s=r/(r-1).

The programs for A183173, there is no canonical definition to state claims against.
-/

/-! ## A183173.P3651354902579328926

`eq[char[A183172(n+1)], A000007(n)]`
-/

namespace A183173.P3651354902579328926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183173.P3651354902579328926

/-! ## A183173.P3951328689698467483

`eq[char[A183172(n+1)], A000038(n)]`
-/

namespace A183173.P3951328689698467483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183173.P3951328689698467483

/-! ## A183173.P15914222599010056530

`eq[char[A183172(n+1)], A266070(2*n)]`
-/

namespace A183173.P15914222599010056530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183173.P15914222599010056530

/-! ## A183173.P4808980012825752037

`eq[char[A183172(n+1)], A151909(n)]`
-/

namespace A183173.P4808980012825752037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183173.P4808980012825752037

/-! ## A183173.P876026012833650862

`eq[char[A183172(n+1)], A151933(n)]`
-/

namespace A183173.P876026012833650862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A183173.P876026012833650862

/-!
# A183174: Numbers k such that (10^(2k+1) - 6*10^k - 1)/3 is prime.

The programs for A183174, there is no canonical definition to state claims against.
-/

/-! ## A183174.P10474770280963723517

`(A077775(n+1)-1)/2`
-/

namespace A183174.P10474770280963723517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077775 (n + 1) - 1 : ℚ) / 2

end

end A183174.P10474770280963723517

/-! ## A183174.P73796208017258657

`floor(A077775(n+1)/2)`
-/

namespace A183174.P73796208017258657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077775 (n + 1) : ℚ) / 2⌋

end

end A183174.P73796208017258657

/-! ## A183174.P10020337705383489582

`A014682(A077775(n+1)-1)`
-/

namespace A183174.P10020337705383489582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077775 (n + 1) - 1).toNat

end

end A183174.P10020337705383489582

/-! ## A183174.P8967143123893440876

`A273943(A077775(n+1)-1)`
-/

namespace A183174.P8967143123893440876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A077775 (n + 1) - 1).toNat

end

end A183174.P8967143123893440876

/-! ## A183174.P2025595191435031985

`A014682(xor(1, A077775(n+1)))`
-/

namespace A183174.P2025595191435031985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A077775 (n + 1))).toNat

end

end A183174.P2025595191435031985

/-!
# A183175: Numbers k such that (10^(2k+1) + 6*10^k - 1)/3 is prime.

The programs for A183175, there is no canonical definition to state claims against.
-/

/-! ## A183175.P6426284603491157751

`(A077784(n+1)-1)/2`
-/

namespace A183175.P6426284603491157751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077784 (n + 1) - 1 : ℚ) / 2

end

end A183175.P6426284603491157751

/-! ## A183175.P11206918681484818878

`floor(A077784(n+1)/2)`
-/

namespace A183175.P11206918681484818878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077784 (n + 1) : ℚ) / 2⌋

end

end A183175.P11206918681484818878

/-! ## A183175.P14067141796799524988

`A004524(A077784(n+1))`
-/

namespace A183175.P14067141796799524988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A077784 (n + 1)).toNat

end

end A183175.P14067141796799524988

/-! ## A183175.P902272527022536514

`A140106(A077784(n+1)+1)`
-/

namespace A183175.P902272527022536514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A077784 (n + 1) + 1).toNat

end

end A183175.P902272527022536514

/-! ## A183175.P4580034857721900562

`A001281(A077784(n+1)-1)`
-/

namespace A183175.P4580034857721900562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A077784 (n + 1) - 1).toNat

end

end A183175.P4580034857721900562

/-!
# A183176: Numbers k such that (10^(2k+1) + 12*10^k - 1)/3 is prime.

The programs for A183176, there is no canonical definition to state claims against.
-/

/-! ## A183176.P13946437619835036704

`(A077790(n+1)-1)/2`
-/

namespace A183176.P13946437619835036704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077790 (n + 1) - 1 : ℚ) / 2

end

end A183176.P13946437619835036704

/-! ## A183176.P5028604088719653974

`floor(A077790(n+1)/2)`
-/

namespace A183176.P5028604088719653974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077790 (n + 1) : ℚ) / 2⌋

end

end A183176.P5028604088719653974

/-! ## A183176.P6143926845771438713

`A014682(A077790(n+1)-1)`
-/

namespace A183176.P6143926845771438713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077790 (n + 1) - 1).toNat

end

end A183176.P6143926845771438713

/-! ## A183176.P2208073599842710167

`A273943(A077790(n+1)-1)`
-/

namespace A183176.P2208073599842710167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A077790 (n + 1) - 1).toNat

end

end A183176.P2208073599842710167

/-! ## A183176.P2806322879222949984

`A014682(xor(1, A077790(n+1)))`
-/

namespace A183176.P2806322879222949984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A077790 (n + 1))).toNat

end

end A183176.P2806322879222949984

/-!
# A183177: Numbers k such that (10^(2*k+1)+15*10^k-1)/3 is prime.

The programs for A183177, there is no canonical definition to state claims against.
-/

/-! ## A183177.P7037631728998596995

`(A077792(n+1)-1)/2`
-/

namespace A183177.P7037631728998596995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077792 (n + 1) - 1 : ℚ) / 2

end

end A183177.P7037631728998596995

/-! ## A183177.P3546095438023486476

`floor(A077792(n+1)/2)`
-/

namespace A183177.P3546095438023486476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077792 (n + 1) : ℚ) / 2⌋

end

end A183177.P3546095438023486476

/-! ## A183177.P13154675200723783913

`A014682(A077792(n+1)-1)`
-/

namespace A183177.P13154675200723783913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077792 (n + 1) - 1).toNat

end

end A183177.P13154675200723783913

/-! ## A183177.P8734753966074234608

`A326139(A077792(n+1)-1)`
-/

namespace A183177.P8734753966074234608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A077792 (n + 1) - 1).toNat

end

end A183177.P8734753966074234608

/-! ## A183177.P1960660114281905900

`A014682(xor(1, A077792(n+1)))`
-/

namespace A183177.P1960660114281905900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A077792 (n + 1))).toNat

end

end A183177.P1960660114281905900

/-!
# A183178: Numbers k such that 7*(10^(2*k+1)-1)/9 - 5*10^k is prime.

The programs for A183178, there is no canonical definition to state claims against.
-/

/-! ## A183178.P11850896313694522787

`∪[A083031(n+1), A082977(A084727(n+1))]`
-/

namespace A183178.P11850896313694522787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (A084727 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183178.P11850896313694522787

/-!
# A183179: Numbers k such that 7*(10^(2*k+1)-1)/9 - 3*10^k is prime.

The programs for A183179, there is no canonical definition to state claims against.
-/

/-! ## A183179.P2957799095494206571

`(A077781(n+1)-1)/2`
-/

namespace A183179.P2957799095494206571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077781 (n + 1) - 1 : ℚ) / 2

end

end A183179.P2957799095494206571

/-! ## A183179.P7394782174561350447

`floor(A077781(n+1)/2)`
-/

namespace A183179.P7394782174561350447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077781 (n + 1) : ℚ) / 2⌋

end

end A183179.P7394782174561350447

/-! ## A183179.P2872066582807732837

`A014682(A077781(n+1)-1)`
-/

namespace A183179.P2872066582807732837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077781 (n + 1) - 1).toNat

end

end A183179.P2872066582807732837

/-! ## A183179.P5492435775038838987

`A273943(A077781(n+1)-1)`
-/

namespace A183179.P5492435775038838987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A077781 (n + 1) - 1).toNat

end

end A183179.P5492435775038838987

/-! ## A183179.P14682580833995174950

`A302042(A077781(n+1)-1)`
-/

namespace A183179.P14682580833995174950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A077781 (n + 1) - 1).toNat

end

end A183179.P14682580833995174950

/-!
# A183180: Numbers k such that (7*10^(2k+1) - 18*10^k - 7)/9 is prime.

The programs for A183180, there is no canonical definition to state claims against.
-/

/-! ## A183180.P13798790212849857588

`A122330(∑[∑[A037456(n)]])`
-/

namespace A183180.P13798790212849857588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183180.P13798790212849857588

/-! ## A183180.P4239184040569487917

`A089862(xor(2, A107316(n+1)))`
-/

namespace A183180.P4239184040569487917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089862 (Int.xor 2 (A107316 (n + 1))).toNat

end

end A183180.P4239184040569487917

/-!
# A183181: Numbers k such that (7*10^(2*k+1) - 9*10^k - 7)/9 is prime.

The programs for A183181, there is no canonical definition to state claims against.
-/

/-! ## A183181.P16501328372663757406

`(A077788(n+1)-1)/2`
-/

namespace A183181.P16501328372663757406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077788 (n + 1) - 1 : ℚ) / 2

end

end A183181.P16501328372663757406

/-! ## A183181.P9355815056590060388

`floor(A077788(n+1)/2)`
-/

namespace A183181.P9355815056590060388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077788 (n + 1) : ℚ) / 2⌋

end

end A183181.P9355815056590060388

/-! ## A183181.P3304459915546474618

`A273943(A077788(n+1)-1)`
-/

namespace A183181.P3304459915546474618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A077788 (n + 1) - 1).toNat

end

end A183181.P3304459915546474618

/-! ## A183181.P10456773249082727220

`A014682(A077788(n+1)-1)`
-/

namespace A183181.P10456773249082727220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077788 (n + 1) - 1).toNat

end

end A183181.P10456773249082727220

/-! ## A183181.P8351454116121598605

`A318518(A077788(n+1)-1)`
-/

namespace A183181.P8351454116121598605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A077788 (n + 1) - 1).toNat

end

end A183181.P8351454116121598605

/-!
# A183182: Numbers k such that (7*10^(2*k+1) + 9*10^k - 7)/9 is prime.

The programs for A183182, there is no canonical definition to state claims against.
-/

/-! ## A183182.P8174373421033624738

`(A077793(n+1)-1)/2`
-/

namespace A183182.P8174373421033624738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077793 (n + 1) - 1 : ℚ) / 2

end

end A183182.P8174373421033624738

/-! ## A183182.P8466115029522541669

`floor(A077793(n+1)/2)`
-/

namespace A183182.P8466115029522541669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077793 (n + 1) : ℚ) / 2⌋

end

end A183182.P8466115029522541669

/-! ## A183182.P3412595902026613860

`A332893(A077793(n+1)-1)`
-/

namespace A183182.P3412595902026613860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A077793 (n + 1) - 1).toNat

end

end A183182.P3412595902026613860

/-! ## A183182.P12659159883366285463

`A332893(xor(1, A077793(n+1)))`
-/

namespace A183182.P12659159883366285463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (Int.xor 1 (A077793 (n + 1))).toNat

end

end A183182.P12659159883366285463

/-!
# A183183: Numbers k such that (7*10^(2*k+1)+18*10^k-7)/9 is prime.

The programs for A183183, there is no canonical definition to state claims against.
-/

/-! ## A183183.P3850154738525334827

`(A077796(n+1)-1)/2`
-/

namespace A183183.P3850154738525334827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077796 (n + 1) - 1 : ℚ) / 2

end

end A183183.P3850154738525334827

/-! ## A183183.P3869155369462778197

`floor(A077796(n+1)/2)`
-/

namespace A183183.P3869155369462778197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077796 (n + 1) : ℚ) / 2⌋

end

end A183183.P3869155369462778197

/-! ## A183183.P16914778937424319664

`A014682(A077796(n+1)-1)`
-/

namespace A183183.P16914778937424319664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077796 (n + 1) - 1).toNat

end

end A183183.P16914778937424319664

/-! ## A183183.P3621430429444741788

`A302042(A077796(n+1)-1)`
-/

namespace A183183.P3621430429444741788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A077796 (n + 1) - 1).toNat

end

end A183183.P3621430429444741788

/-! ## A183183.P15997391064879114046

`A302042(xor(1, A077796(n+1)))`
-/

namespace A183183.P15997391064879114046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (Int.xor 1 (A077796 (n + 1))).toNat

end

end A183183.P15997391064879114046

/-!
# A183184: Numbers k such that 10^(2*k+1)-8*10^k-1 is prime.

The programs for A183184, there is no canonical definition to state claims against.
-/

/-! ## A183184.P16398064221391305232

`(A077776(n+1)-1)/2`
-/

namespace A183184.P16398064221391305232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077776 (n + 1) - 1 : ℚ) / 2

end

end A183184.P16398064221391305232

/-! ## A183184.P8593301455111235023

`floor(A077776(n+1)/2)`
-/

namespace A183184.P8593301455111235023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077776 (n + 1) : ℚ) / 2⌋

end

end A183184.P8593301455111235023

/-! ## A183184.P1843337051670483032

`A004526(A077776(n+1))`
-/

namespace A183184.P1843337051670483032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A077776 (n + 1)).toNat

end

end A183184.P1843337051670483032

/-!
# A183185: Numbers k such that 10^(2*k+1)-5*10^k-1 is prime.

The programs for A183185, there is no canonical definition to state claims against.
-/

/-! ## A183185.P5064352266167606163

`(A077782(n+1)-1)/2`
-/

namespace A183185.P5064352266167606163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077782 (n + 1) - 1 : ℚ) / 2

end

end A183185.P5064352266167606163

/-! ## A183185.P3994046230638066129

`floor(A077782(n+1)/2)`
-/

namespace A183185.P3994046230638066129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077782 (n + 1) : ℚ) / 2⌋

end

end A183185.P3994046230638066129

/-! ## A183185.P12271792346385034474

`A014682(A077782(n+1)-1)`
-/

namespace A183185.P12271792346385034474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077782 (n + 1) - 1).toNat

end

end A183185.P12271792346385034474

/-!
# A183186: Numbers k such that 10^(2k+1) - 4*10^k - 1 is prime.

The programs for A183186, there is no canonical definition to state claims against.
-/

/-! ## A183186.P2419702581357919195

`(A077786(n+1)-1)/2`
-/

namespace A183186.P2419702581357919195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077786 (n + 1) - 1 : ℚ) / 2

end

end A183186.P2419702581357919195

/-! ## A183186.P4360431654528960015

`floor(A077786(n+1)/2)`
-/

namespace A183186.P4360431654528960015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077786 (n + 1) : ℚ) / 2⌋

end

end A183186.P4360431654528960015

/-!
# A183187: Numbers k such that 10^(2*k+1) - 10^k - 1 is prime.

The programs for A183187, there is no canonical definition to state claims against.
-/

/-! ## A183187.P15462544407751355175

`(A077794(n+1)-1)/2`
-/

namespace A183187.P15462544407751355175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077794 (n + 1) - 1 : ℚ) / 2

end

end A183187.P15462544407751355175

/-! ## A183187.P4725385005206684214

`floor(A077794(n+1)/2)`
-/

namespace A183187.P4725385005206684214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077794 (n + 1) : ℚ) / 2⌋

end

end A183187.P4725385005206684214

/-! ## A183187.P9012671232152418484

`A014682(A077794(n+1)-1)`
-/

namespace A183187.P9012671232152418484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077794 (n + 1) - 1).toNat

end

end A183187.P9012671232152418484

/-!
# A183188: a(n) = 3*a(n-1) + a(n-3) with a(0)=1, a(1)=2, a(2)=6.

The programs for A183188, the canonical program `A183188.P17568360898630000309` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183188 has offset 0).

The definition of A183188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-3)` (program `A183188.P17568360898630000309`, by `A183188.P17568360898630000309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183188.P17568360898630000309

`3*a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183188

/-- `3*a(n-1)+a(n-3)` -/
def P17568360898630000309.Spec : Prop :=
  ∀ n, (P17568360898630000309.a n : ℤ) = A183188 n

theorem P17568360898630000309.correct : P17568360898630000309.Spec := by
  intro n
  simp only [A183188]

end A183188

/-! ## A183188.P212288373628159250

`4*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A183188.P212288373628159250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  4 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A183188.P212288373628159250

namespace A183188

/-- `4*a(n-1)-(a(n-1)-a(n-3))` -/
def P212288373628159250.Spec : Prop :=
  ∀ n, P212288373628159250.a n = A183188 n

end A183188

/-! ## A183188.P8633095513324555250

`a(n-1)+a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A183188.P8633095513324555250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 3)))

end

end A183188.P8633095513324555250

namespace A183188

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-3)` -/
def P8633095513324555250.Spec : Prop :=
  ∀ n, (P8633095513324555250.a n : ℤ) = A183188 n

theorem P8633095513324555250.correct : P8633095513324555250.Spec := by
  intro n
  simp only [A183188, Nat.add_sub_cancel, A183188.P8633095513324555250.a, A183188.P17568360898630000309.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A183188

/-! ## A183188.P4986601566831166017

`∑[A098183(n)]`
-/

namespace A183188.P4986601566831166017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183188.P4986601566831166017

namespace A183188

/-- `∑[A098183(n)]` -/
def P4986601566831166017.Spec : Prop :=
  ∀ n, P4986601566831166017.a n = A183188 n

end A183188

/-! ## A183188.P4086715642461272721

`Δ[A052541(n+2)%A052541(n+1)]`
-/

namespace A183188.P4086715642461272721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052541 (n + 2)) (A052541 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183188.P4086715642461272721

namespace A183188

/-- `Δ[A052541(n+2)%A052541(n+1)]` -/
def P4086715642461272721.Spec : Prop :=
  ∀ n, P4086715642461272721.a n = A183188 n

end A183188

/-!
# A183190: Triangle T(n,k), read by rows, given by (1, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A183190, the canonical program `A183190.P10026488769609202842` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183190 has offset 0).

The definition of A183190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183190.P12640189839697736436

`A200139(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A183190.P12640189839697736436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A200139 n - a (n - 1)

end

end A183190.P12640189839697736436

namespace A183190

/-- `A200139(n)-a(n-1)` -/
def P12640189839697736436.Spec : Prop :=
  ∀ n, P12640189839697736436.a n = A183190 n

end A183190

/-! ## A183190.P8907372283527238934

`a(n-1)-A251636(n)` with `a(0)=1, a(1)=1`
-/

namespace A183190.P8907372283527238934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A251636 n

end

end A183190.P8907372283527238934

namespace A183190

/-- `a(n-1)-A251636(n)` -/
def P8907372283527238934.Spec : Prop :=
  ∀ n, P8907372283527238934.a n = A183190 n

end A183190

/-! ## A183190.P18099552210737886461

`A193788(n)%A123966(n)`
-/

namespace A183190.P18099552210737886461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193788 n) (A123966 n)

end

end A183190.P18099552210737886461

namespace A183190

/-- `A193788(n)%A123966(n)` -/
def P18099552210737886461.Spec : Prop :=
  ∀ n, P18099552210737886461.a n = A183190 n

end A183190

/-! ## A183190.P17487371871535679084

`lcm(A071919(n), A193788(n))`
-/

namespace A183190.P17487371871535679084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071919 n) (A193788 n)

end

end A183190.P17487371871535679084

namespace A183190

/-- `lcm(A071919(n), A193788(n))` -/
def P17487371871535679084.Spec : Prop :=
  ∀ n, (P17487371871535679084.a n : ℤ) = A183190 n

end A183190

/-! ## A183190.P10026488769609202842

`Δ[A089633(n)]*A071919(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A183190

/-- `Δ[A089633(n)]*A071919(n)` -/
def P10026488769609202842.Spec : Prop :=
  ∀ n, P10026488769609202842.a n = A183190 n

theorem P10026488769609202842.correct : P10026488769609202842.Spec := by
  intro n
  simp only [A183190]

end A183190

/-! ## A183190.P16746975090787694817

`A071919(n)*A155038(n+1)`
-/

namespace A183190.P16746975090787694817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A155038 (n + 1)

end

end A183190.P16746975090787694817

namespace A183190

/-- `A071919(n)*A155038(n+1)` -/
def P16746975090787694817.Spec : Prop :=
  ∀ n, P16746975090787694817.a n = A183190 n

end A183190

/-! ## A183190.P13727504522975031149

`abs(A000007(n)+∑[A118800(n)]-1)`
-/

namespace A183190.P13727504522975031149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000007 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)|

end

end A183190.P13727504522975031149

namespace A183190

/-- `abs(A000007(n)+∑[A118800(n)]-1)` -/
def P13727504522975031149.Spec : Prop :=
  ∀ n, P13727504522975031149.a n = A183190 n

end A183190

/-! ## A183190.P10656119589328879045

`A011782(A025581(n))*A071919(n)`
-/

namespace A183190.P10656119589328879045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n).toNat * A071919 n

end

end A183190.P10656119589328879045

namespace A183190

/-- `A011782(A025581(n))*A071919(n)` -/
def P10656119589328879045.Spec : Prop :=
  ∀ n, P10656119589328879045.a n = A183190 n

end A183190

/-! ## A183190.P1002281898332572924

`A038207(A000007(n)+n)-A200139(n)`
-/

namespace A183190.P1002281898332572924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A000007 n + (n : ℤ)).toNat - A200139 n

end

end A183190.P1002281898332572924

namespace A183190

/-- `A038207(A000007(n)+n)-A200139(n)` -/
def P1002281898332572924.Spec : Prop :=
  ∀ n, P1002281898332572924.a n = A183190 n

end A183190

/-! ## A183190.P14474667307937831865

`A000007(n)-(A200139(n)-A038207(n))`
-/

namespace A183190.P14474667307937831865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A200139 n - A038207 n)

end

end A183190.P14474667307937831865

namespace A183190

/-- `A000007(n)-(A200139(n)-A038207(n))` -/
def P14474667307937831865.Spec : Prop :=
  ∀ n, P14474667307937831865.a n = A183190 n

end A183190

/-! ## A183190.P17505973023336766425

`A038207(n)-A057427(n)*A200139(n)`
-/

namespace A183190.P17505973023336766425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A057427 n * A200139 n

end

end A183190.P17505973023336766425

namespace A183190

/-- `A038207(n)-A057427(n)*A200139(n)` -/
def P17505973023336766425.Spec : Prop :=
  ∀ n, P17505973023336766425.a n = A183190 n

end A183190

/-! ## A183190.P15608116508582805077

`A057728(n+2)*A071919(n)`
-/

namespace A183190.P15608116508582805077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 2) * A071919 n

end

end A183190.P15608116508582805077

namespace A183190

/-- `A057728(n+2)*A071919(n)` -/
def P15608116508582805077.Spec : Prop :=
  ∀ n, P15608116508582805077.a n = A183190 n

end A183190

/-! ## A183190.P12794323911960715391

`A000010(A130321(n))*A071919(n)`
-/

namespace A183190.P12794323911960715391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130321 n).toNat * A071919 n

end

end A183190.P12794323911960715391

namespace A183190

/-- `A000010(A130321(n))*A071919(n)` -/
def P12794323911960715391.Spec : Prop :=
  ∀ n, P12794323911960715391.a n = A183190 n

end A183190

/-! ## A183190.P2366400676830008915

`A029635(∑[n])-∑[A251636(n)]`
-/

namespace A183190.P2366400676830008915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A183190.P2366400676830008915

namespace A183190

/-- `A029635(∑[n])-∑[A251636(n)]` -/
def P2366400676830008915.Spec : Prop :=
  ∀ n, P2366400676830008915.a n = A183190 n

end A183190

/-!
# A183191: Triangle T(n,m) = coefficient of x^n in expansion of [x/(1-x-x^2-x^3-x^4-2*x^5)]^m = sum(n>=m, T(n,m) x^n).

The programs for A183191, there is no canonical definition to state claims against.
-/

/-! ## A183191.P4719714187595056735

`or(A003849(A281526(n+1)), A105306(n+1))`
-/

namespace A183191.P4719714187595056735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A281526 (n + 1)).toNat) (A105306 (n + 1))

end

end A183191.P4719714187595056735

/-! ## A183191.P10529161284737478869

`A105306(n+1)+A016389(A119502(n))`
-/

namespace A183191.P10529161284737478869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) + A016389 (A119502 n).toNat

end

end A183191.P10529161284737478869

/-! ## A183191.P12725891500241390264

`A185284(A055248(n))+A105306(n+1)`
-/

namespace A183191.P12725891500241390264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A055248 n).toNat + A105306 (n + 1)

end

end A183191.P12725891500241390264

/-! ## A183191.P11230377606314616972

`A185284(A109435(n))+A105306(n+1)`
-/

namespace A183191.P11230377606314616972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A109435 n).toNat + A105306 (n + 1)

end

end A183191.P11230377606314616972

/-! ## A183191.P12931727085304100138

`A384132(A202193(n+1))`
-/

namespace A183191.P12931727085304100138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384132 (A202193 (n + 1)).toNat

end

end A183191.P12931727085304100138

/-!
# A183194: Final prime of first member of A019518 that is divisible by 3^n.

The programs for A183194, there is no canonical definition to state claims against.
-/

/-! ## A183194.P12548412662425918941

`A000040(A183195(n+1))`
-/

namespace A183194.P12548412662425918941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A183195 (n + 1)).toNat

end

end A183194.P12548412662425918941

/-! ## A183194.P4445263078050672842

`A008578(A183195(n+1)+1)`
-/

namespace A183194.P4445263078050672842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A183195 (n + 1) + 1).toNat

end

end A183194.P4445263078050672842

/-! ## A183194.P4496670013896353807

`A064555(A183195(n+1)+1)`
-/

namespace A183194.P4496670013896353807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A183195 (n + 1) + 1).toNat

end

end A183194.P4496670013896353807

/-! ## A183194.P9895327592476913376

`A182986(A183195(n+1)+1)`
-/

namespace A183194.P9895327592476913376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A183195 (n + 1) + 1).toNat

end

end A183194.P9895327592476913376

/-! ## A183194.P11797774910056284833

`A045319(A183195(n+1)-1)`
-/

namespace A183194.P11797774910056284833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A183195 (n + 1) - 1).toNat

end

end A183194.P11797774910056284833

/-!
# A183195: Pi function of the primes given in A183194.

The programs for A183195, there is no canonical definition to state claims against.
-/

/-! ## A183195.P2823288388272277219

`A000720(A183194(n+1))`
-/

namespace A183195.P2823288388272277219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A183194 (n + 1)).toNat

end

end A183195.P2823288388272277219

/-! ## A183195.P7774836698761653953

`A061395(p?[A183194(n+1)])`
-/

namespace A183195.P7774836698761653953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A183195.P7774836698761653953

/-! ## A183195.P4835866356965250904

`A323164(p?[A183194(n+1)])`
-/

namespace A183195.P4835866356965250904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A183195.P4835866356965250904

/-! ## A183195.P258600605455958708

`A061395(or(1, A183194(n+1)))`
-/

namespace A183195.P258600605455958708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A183194 (n + 1))).toNat

end

end A183195.P258600605455958708

/-!
# A183198: Least integer k such that Floor(k*(n+1)^(2/3))

The programs for A183198, there is no canonical definition to state claims against.
-/

/-! ## A183198.P4777999040687972550

`A001221(A118818(n+1)+A000081(n+3))`
-/

namespace A183198.P4777999040687972550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A118818 (n + 1) + A000081 (n + 3)).toNat

end

end A183198.P4777999040687972550

/-! ## A183198.P12026686538121477727

`A318277(A056040(n))+A081603(2*(n+1))`
-/

namespace A183198.P12026686538121477727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318277 (A056040 n).toNat + A081603 (2 * (n + 1))

end

end A183198.P12026686538121477727

/-! ## A183198.P7655412699952384231

`A005681(A368151(3*n+2)-A280161(n+1))`
-/

namespace A183198.P7655412699952384231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005681 (A368151 (3 * n + 2) - A280161 (n + 1)).toNat

end

end A183198.P7655412699952384231

/-! ## A183198.P5195468914486226232

`A177025(A231037(2*n+5)+A052905(3*n+2))`
-/

namespace A183198.P5195468914486226232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (A231037 (2 * n + 5) + A052905 (3 * n + 2)).toNat

end

end A183198.P5195468914486226232

/-! ## A183198.P7068265415377892930

`A375001(∑[A325325(n)])`
-/

namespace A183198.P7068265415377892930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183198.P7068265415377892930

/-!
# A183199: Least integer k such that Floor(k*f(n+1))>k*f(n), where f(n)=(n^2)/(1+n^2).

The programs for A183199, the canonical program `A183199.P9608826618060147428` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183199 has offset 1).

The definition of A183199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183199.P9608826618060147428

`2+(n+1)²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A183199

/-- `2+(n+1)²` -/
def P9608826618060147428.Spec : Prop :=
  ∀ n, (P9608826618060147428.a n : ℤ) = A183199 (n + 1)

theorem P9608826618060147428.correct : P9608826618060147428.Spec := by
  intro n
  simp only [A183199, Nat.add_sub_cancel]

end A183199

/-! ## A183199.P532504666575306106

`or(2, xor(n, -1)²)`
-/

namespace A183199.P532504666575306106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.xor (n : ℤ) (-1) ^ 2)

end

end A183199.P532504666575306106

namespace A183199

/-- `or(2, xor(n, -1)²)` -/
def P532504666575306106.Spec : Prop :=
  ∀ n, P532504666575306106.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P10263958608789294852

`xor(2, xor(n, -1)²)`
-/

namespace A183199.P10263958608789294852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor (n : ℤ) (-1) ^ 2)

end

end A183199.P10263958608789294852

namespace A183199

/-- `xor(2, xor(n, -1)²)` -/
def P10263958608789294852.Spec : Prop :=
  ∀ n, P10263958608789294852.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P12708833905630676413

`or(2, (n+1)^2)`
-/

namespace A183199.P12708833905630676413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((n + 1) ^ 2)

end

end A183199.P12708833905630676413

namespace A183199

/-- `or(2, (n+1)^2)` -/
def P12708833905630676413.Spec : Prop :=
  ∀ n, (P12708833905630676413.a n : ℤ) = A183199 (n + 1)

end A183199

/-! ## A183199.P10884432245218050610

`xor(2, (n+1)^2)`
-/

namespace A183199.P10884432245218050610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((n + 1) ^ 2)

end

end A183199.P10884432245218050610

namespace A183199

/-- `xor(2, (n+1)^2)` -/
def P10884432245218050610.Spec : Prop :=
  ∀ n, (P10884432245218050610.a n : ℤ) = A183199 (n + 1)

end A183199

/-! ## A183199.P12210082650865501107

`record[or(2, (1-n)²)]`
-/

namespace A183199.P12210082650865501107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183199.P12210082650865501107

namespace A183199

/-- `record[or(2, (1-n)²)]` -/
def P12210082650865501107.Spec : Prop :=
  ∀ n, P12210082650865501107.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P5874732642905811828

`record[(1-n)^2+2]`
-/

namespace A183199.P5874732642905811828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183199.P5874732642905811828

namespace A183199

/-- `record[(1-n)^2+2]` -/
def P5874732642905811828.Spec : Prop :=
  ∀ n, P5874732642905811828.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P15752075211179483065

`∑[a(n-1)+2]` with `a(0)=3, a(1)=3`
-/

namespace A183199.P15752075211179483065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183199.P15752075211179483065

namespace A183199

/-- `∑[a(n-1)+2]` -/
def P15752075211179483065.Spec : Prop :=
  ∀ n, (P15752075211179483065.a n : ℤ) = A183199 (n + 1)

end A183199

/-! ## A183199.P1402128389906480906

`abs(record[n²-(2*n-3)])`
-/

namespace A183199.P1402128389906480906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((2 * n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A183199.P1402128389906480906

namespace A183199

/-- `abs(record[n²-(2*n-3)])` -/
def P1402128389906480906.Spec : Prop :=
  ∀ n, P1402128389906480906.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P10175245630000088226

`ceil(record[3-(ϕ-(1-n)²)])`
-/

namespace A183199.P10175245630000088226
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 - (Real.goldenRatio - ((1 - (n : ℤ)) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A183199.P10175245630000088226

namespace A183199

/-- `ceil(record[3-(ϕ-(1-n)²)])` -/
def P10175245630000088226.Spec : Prop :=
  ∀ n, P10175245630000088226.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P2799219829820253482

`floor(record[4-(ϕ-(1-n)²)])`
-/

namespace A183199.P2799219829820253482
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 - (Real.goldenRatio - ((1 - (n : ℤ)) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A183199.P2799219829820253482

namespace A183199

/-- `floor(record[4-(ϕ-(1-n)²)])` -/
def P2799219829820253482.Spec : Prop :=
  ∀ n, P2799219829820253482.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P4892235670966558241

`round(record[4-(ϕ-(1-n)²)])`
-/

namespace A183199.P4892235670966558241
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 - (Real.goldenRatio - ((1 - (n : ℤ)) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A183199.P4892235670966558241

namespace A183199

/-- `round(record[4-(ϕ-(1-n)²)])` -/
def P4892235670966558241.Spec : Prop :=
  ∀ n, P4892235670966558241.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P14701434780619595132

`ceil(2/acot(∑[n+1])-n)`
-/

namespace A183199.P14701434780619595132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (n : ℝ)⌉

end

end A183199.P14701434780619595132

namespace A183199

/-- `ceil(2/acot(∑[n+1])-n)` -/
def P14701434780619595132.Spec : Prop :=
  ∀ n, P14701434780619595132.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P14822880459084051273

`∑[or(2*n+1, ceil(acot(n)))]`
-/

namespace A183199.P14822880459084051273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183199.P14822880459084051273

namespace A183199

/-- `∑[or(2*n+1, ceil(acot(n)))]` -/
def P14822880459084051273.Spec : Prop :=
  ∀ n, P14822880459084051273.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P2284206691948624918

`∑[or(2*n+1, round(acot(n)))]`
-/

namespace A183199.P2284206691948624918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183199.P2284206691948624918

namespace A183199

/-- `∑[or(2*n+1, round(acot(n)))]` -/
def P2284206691948624918.Spec : Prop :=
  ∀ n, P2284206691948624918.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P124632451099800378

`floor(a(n-2)+4*n)` with `a(0)=3, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A183199.P124632451099800378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 2) + 4 * n

end

end A183199.P124632451099800378

namespace A183199

/-- `floor(a(n-2)+4*n)` -/
def P124632451099800378.Spec : Prop :=
  ∀ n, (P124632451099800378.a n : ℤ) = A183199 (n + 1)

theorem P124632451099800378.correct : P124632451099800378.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A183199, Nat.add_sub_cancel, A183199.P124632451099800378.a, A183199.P9608826618060147428.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A183199, Nat.add_sub_cancel, A183199.P124632451099800378.a, A183199.P9608826618060147428.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A183199

/-! ## A183199.P4023793178203768184

`∑[4*n-a(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A183199.P4023793178203768184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183199.P4023793178203768184

namespace A183199

/-- `∑[4*n-a(n-1)]` -/
def P4023793178203768184.Spec : Prop :=
  ∀ n, P4023793178203768184.a n = A183199 (n + 1)

end A183199

/-! ## A183199.P11056377739437637253

`abs(comp[2*n]+a(n-1))` with `a(0)=3`
-/

namespace A183199.P11056377739437637253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + a (n - 1)

end

end A183199.P11056377739437637253

namespace A183199

/-- `abs(comp[2*n]+a(n-1))` -/
def P11056377739437637253.Spec : Prop :=
  ∀ n, (P11056377739437637253.a n : ℤ) = A183199 (n + 1)

end A183199

