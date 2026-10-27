import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B006.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A279500: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A279500, there is no canonical definition to state claims against.
-/

/-! ## A279500.P13615685087078192808

`A030101(A279501(n))`
-/

namespace A279500.P13615685087078192808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A279501 n).toNat

end

end A279500.P13615685087078192808

/-! ## A279500.P8234272594829339401

`A056539(A279501(n)/A040001(n+1))`
-/

namespace A279500.P8234272594829339401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (SequenceMachineLib.roundAway ((A279501 n : ℚ) / (A040001 (n + 1) : ℚ))).toNat

end

end A279500.P8234272594829339401

/-! ## A279500.P18423273679739280685

`A056539(A279501(n)^A001221(n+1))`
-/

namespace A279500.P18423273679739280685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (SequenceMachineLib.roundAway ((A279501 n : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A279500.P18423273679739280685

/-! ## A279500.P8136636627282058651

`A056539(C(A279501(n), A040001(n+1)))`
-/

namespace A279500.P8136636627282058651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Nat.choose (A279501 n).toNat (A040001 (n + 1)).toNat)

end

end A279500.P8136636627282058651

/-! ## A279500.P7175065747257660492

`A056539(A069777(n)*A279501(n))`
-/

namespace A279500.P7175065747257660492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A069777 n * A279501 n).toNat

end

end A279500.P7175065747257660492

/-!
# A279501: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A279501, there is no canonical definition to state claims against.
-/

/-! ## A279501.P16642612264517368658

`lcm(Δ[A282655(n)], A056594(n))`
-/

namespace A279501.P16642612264517368658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A056594 n)

end

end A279501.P16642612264517368658

/-! ## A279501.P7192133266914422896

`A051049(n+1)-and(A051049(n+1), A282655(n+1))`
-/

namespace A279501.P7192133266914422896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (n + 1) - Int.land (A051049 (n + 1)) (A282655 (n + 1))

end

end A279501.P7192133266914422896

/-! ## A279501.P7244618733013952876

`and(Δ[A282655(n+1)], A051049(n+1))`
-/

namespace A279501.P7244618733013952876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A051049 (n + 1))

end

end A279501.P7244618733013952876

/-! ## A279501.P16406406461578957310

`A030101(A279500(n))`
-/

namespace A279501.P16406406461578957310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A279500 n).toNat

end

end A279501.P16406406461578957310

/-! ## A279501.P4390184391161833157

`C(A284140(n), A351605(2^val(n+1, 2)))`
-/

namespace A279501.P4390184391161833157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284140 n).toNat (A351605 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat

end

end A279501.P4390184391161833157

/-!
# A279502: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A279502, there is no canonical definition to state claims against.
-/

/-! ## A279502.P2968731138335820663

`A007088(A279504(n))`
-/

namespace A279502.P2968731138335820663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279504 n).toNat

end

end A279502.P2968731138335820663

/-! ## A279502.P18174498660223887202

`A185544(2*A279504(n))`
-/

namespace A279502.P18174498660223887202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279504 n).toNat

end

end A279502.P18174498660223887202

/-!
# A279503: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A279503, there is no canonical definition to state claims against.
-/

/-! ## A279503.P13575679893412336104

`A007088(A279505(n))`
-/

namespace A279503.P13575679893412336104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279505 n).toNat

end

end A279503.P13575679893412336104

/-! ## A279503.P8639964295919765242

`A185544(2*A279505(n))`
-/

namespace A279503.P8639964295919765242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279505 n).toNat

end

end A279503.P8639964295919765242

/-! ## A279503.P4987057165940156582

`A000027(A279993(n))`
-/

namespace A279503.P4987057165940156582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A279993 n).toNat

end

end A279503.P4987057165940156582

/-!
# A279504: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A279504, there is no canonical definition to state claims against.
-/

/-! ## A279504.P2481630347502831314

`A279754(n)+Δ[A295295(A298234(n+1))]`
-/

namespace A279504.P2481630347502831314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295295 (A298234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279754 n + (f1 (n + 1) - f1 n)

end

end A279504.P2481630347502831314

/-!
# A279505: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A279505, there is no canonical definition to state claims against.
-/

/-! ## A279505.P2698862966756679439

`A279995(n)-A241464(A264656(n+1))`
-/

namespace A279505.P2698862966756679439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279995 n - A241464 (A264656 (n + 1)).toNat

end

end A279505.P2698862966756679439

/-! ## A279505.P16559752244107341818

`A279995(n)-A241464(A357416(n+2))`
-/

namespace A279505.P16559752244107341818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279995 n - A241464 (A357416 (n + 2)).toNat

end

end A279505.P16559752244107341818

/-! ## A279505.P11583492578651835124

`A279995(n)-A241464(A299393(n+4))`
-/

namespace A279505.P11583492578651835124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279995 n - A241464 (A299393 (n + 4)).toNat

end

end A279505.P11583492578651835124

/-!
# A279507: a(n) = floor(phi(n)/tau(n)).

The programs for A279507, the canonical program `A279507.P3039935428284071331` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279507 has offset 1).

The definition of A279507 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279507.P3039935428284071331

`floor(A000010(n+1)/A000005(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A279507

/-- `floor(A000010(n+1)/A000005(n+1))` -/
def P3039935428284071331.Spec : Prop :=
  ∀ n, P3039935428284071331.a n = A279507 (n + 1)

theorem P3039935428284071331.correct : P3039935428284071331.Spec := by
  intro n
  simp only [A279507, Nat.add_sub_cancel]

end A279507

/-! ## A279507.P12103933138790951163

`floor((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/∏{e}[n+1, #+1])`
-/

namespace A279507.P12103933138790951163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℚ)⌋

end

end A279507.P12103933138790951163

namespace A279507

/-- `floor((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/∏{e}[n+1, #+1])` -/
def P12103933138790951163.Spec : Prop :=
  ∀ n, P12103933138790951163.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P11214936171811205794

`floor((A109606(n+1)+1)/∏{e}[n+1, #+1])`
-/

namespace A279507.P11214936171811205794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109606 (n + 1) + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)⌋

end

end A279507.P11214936171811205794

namespace A279507

/-- `floor((A109606(n+1)+1)/∏{e}[n+1, #+1])` -/
def P11214936171811205794.Spec : Prop :=
  ∀ n, P11214936171811205794.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P13670605576047811344

`floor(Δ[A002088(n)]/A000005(n+1))`
-/

namespace A279507.P13670605576047811344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A279507.P13670605576047811344

namespace A279507

/-- `floor(Δ[A002088(n)]/A000005(n+1))` -/
def P13670605576047811344.Spec : Prop :=
  ∀ n, P13670605576047811344.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P9116802356927250698

`floor(Δ[A005728(n)]/A000005(n+1))`
-/

namespace A279507.P9116802356927250698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A279507.P9116802356927250698

namespace A279507

/-- `floor(Δ[A005728(n)]/A000005(n+1))` -/
def P9116802356927250698.Spec : Prop :=
  ∀ n, P9116802356927250698.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P9702238720262756055

`floor(A000010(n+1)/Δ[A006218(n)])`
-/

namespace A279507.P9702238720262756055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A279507.P9702238720262756055

namespace A279507

/-- `floor(A000010(n+1)/Δ[A006218(n)])` -/
def P9702238720262756055.Spec : Prop :=
  ∀ n, P9702238720262756055.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P6771405663355752445

`floor(A002618(n+1)/A038040(n+1))`
-/

namespace A279507.P6771405663355752445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002618 (n + 1) : ℚ) / (A038040 (n + 1) : ℚ)⌋

end

end A279507.P6771405663355752445

namespace A279507

/-- `floor(A002618(n+1)/A038040(n+1))` -/
def P6771405663355752445.Spec : Prop :=
  ∀ n, P6771405663355752445.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P6010070524959195347

`floor(A062354(n+1)/A064840(n+1))`
-/

namespace A279507.P6010070524959195347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062354 (n + 1) : ℚ) / (A064840 (n + 1) : ℚ)⌋

end

end A279507.P6010070524959195347

namespace A279507

/-- `floor(A062354(n+1)/A064840(n+1))` -/
def P6010070524959195347.Spec : Prop :=
  ∀ n, P6010070524959195347.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P7637526268554387774

`floor((A109606(n+1)+1)/Δ[A006218(n)])`
-/

namespace A279507.P7637526268554387774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109606 (n + 1) + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A279507.P7637526268554387774

namespace A279507

/-- `floor((A109606(n+1)+1)/Δ[A006218(n)])` -/
def P7637526268554387774.Spec : Prop :=
  ∀ n, P7637526268554387774.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P15085242818934840336

`floor(A000010(n+1)/(A032741(n+1)+1))`
-/

namespace A279507.P15085242818934840336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / (A032741 (n + 1) + 1 : ℚ)⌋

end

end A279507.P15085242818934840336

namespace A279507

/-- `floor(A000010(n+1)/(A032741(n+1)+1))` -/
def P15085242818934840336.Spec : Prop :=
  ∀ n, P15085242818934840336.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P15481924247053161644

`floor((1-A051953(n+1)+n)/A000005(n+1))`
-/

namespace A279507.P15481924247053161644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A279507.P15481924247053161644

namespace A279507

/-- `floor((1-A051953(n+1)+n)/A000005(n+1))` -/
def P15481924247053161644.Spec : Prop :=
  ∀ n, P15481924247053161644.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P4561575961869025524

`floor((1-A051953(n+1)+n)/(A032741(n+1)+1))`
-/

namespace A279507.P4561575961869025524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A032741 (n + 1) + 1 : ℚ)⌋

end

end A279507.P4561575961869025524

namespace A279507

/-- `floor((1-A051953(n+1)+n)/(A032741(n+1)+1))` -/
def P4561575961869025524.Spec : Prop :=
  ∀ n, P4561575961869025524.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P11517337486410682499

`floor(A000010(n+1)/(∑{d}[n+1, #+1]-A000203(n+1)))`
-/

namespace A279507.P11517337486410682499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) : ℚ)⌋

end

end A279507.P11517337486410682499

namespace A279507

/-- `floor(A000010(n+1)/(∑{d}[n+1, #+1]-A000203(n+1)))` -/
def P11517337486410682499.Spec : Prop :=
  ∀ n, P11517337486410682499.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P2353465877280856599

`floor((n+1)/∏{p}[n+1, #]*A173557(n+1)/A000005(n+1))`
-/

namespace A279507.P2353465877280856599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A279507.P2353465877280856599

namespace A279507

/-- `floor((n+1)/∏{p}[n+1, #]*A173557(n+1)/A000005(n+1))` -/
def P2353465877280856599.Spec : Prop :=
  ∀ n, P2353465877280856599.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P9494602529522299385

`floor((1-A051953(n+1)+n)/(∑{d}[n+1, #+1]-A000203(n+1)))`
-/

namespace A279507.P9494602529522299385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) : ℚ)⌋

end

end A279507.P9494602529522299385

namespace A279507

/-- `floor((1-A051953(n+1)+n)/(∑{d}[n+1, #+1]-A000203(n+1)))` -/
def P9494602529522299385.Spec : Prop :=
  ∀ n, P9494602529522299385.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P12581044036513574276

`floor((n+1)/∏{p}[n+1, #]*A173557(n+1)/(A032741(n+1)+1))`
-/

namespace A279507.P12581044036513574276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A032741 (n + 1) + 1 : ℚ)⌋

end

end A279507.P12581044036513574276

namespace A279507

/-- `floor((n+1)/∏{p}[n+1, #]*A173557(n+1)/(A032741(n+1)+1))` -/
def P12581044036513574276.Spec : Prop :=
  ∀ n, P12581044036513574276.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P18385303469938357946

`(A000010(n+1)-A358061(n+1))/A000005(n+1)`
-/

namespace A279507.P18385303469938357946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A358061 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A279507.P18385303469938357946

namespace A279507

/-- `(A000010(n+1)-A358061(n+1))/A000005(n+1)` -/
def P18385303469938357946.Spec : Prop :=
  ∀ n, P18385303469938357946.a n = (A279507 (n + 1) : ℚ)

end A279507

/-! ## A279507.P8505485634258848075

`floor((1-A051953(n+1)+n)/∑{d}[n+1, A057427(#)])`
-/

namespace A279507.P8505485634258848075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - A051953 (n + 1) + (n : ℤ) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), A057427 d : ℤ) : ℚ)⌋

end

end A279507.P8505485634258848075

namespace A279507

/-- `floor((1-A051953(n+1)+n)/∑{d}[n+1, A057427(#)])` -/
def P8505485634258848075.Spec : Prop :=
  ∀ n, P8505485634258848075.a n = A279507 (n + 1)

end A279507

/-! ## A279507.P5437705909897122983

`floor((1-A051953(n+1)+n)/∑{d}[n+1, A157532(#+4)/3])`
-/

namespace A279507.P5437705909897122983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (∑ d ∈ Nat.divisors (f1 n), (A157532 (d + 4) : ℚ) / 3)⌋

end

end A279507.P5437705909897122983

namespace A279507

/-- `floor((1-A051953(n+1)+n)/∑{d}[n+1, A157532(#+4)/3])` -/
def P5437705909897122983.Spec : Prop :=
  ∀ n, P5437705909897122983.a n = A279507 (n + 1)

end A279507

/-!
# A279509: a(n) = largest number k such that floor(phi(k)/tau(k)) = n.

The programs for A279509, there is no canonical definition to state claims against.
-/

/-! ## A279509.P12405402229672952768

`∩[A225870(n+1), A323441(n+1)]`
-/

namespace A279509.P12405402229672952768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279509.P12405402229672952768

/-! ## A279509.P7789813806973273589

`A008706(A179016(n))*A078538(2*n+5)`
-/

namespace A279509.P7789813806973273589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A179016 n).toNat * A078538 (2 * n + 5)

end

end A279509.P7789813806973273589

/-!
# A279510: Multiplicative with a(p(i)^j) = p(i+1)^a(j) for i-th prime p(i) and j>0.

The programs for A279510, there is no canonical definition to state claims against.
-/

/-! ## A279510.P5618124390626860534

`A097246(((n+1)²/∏{p}[n+1, #])²)`
-/

namespace A279510.P5618124390626860534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)).toNat

end

end A279510.P5618124390626860534

/-! ## A279510.P2667272994724184822

`sqrt(A003961(((n+1)²/∏{p}[n+1, #])²))`
-/

namespace A279510.P2667272994724184822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003961 (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)).toNat : ℝ)

end

end A279510.P2667272994724184822

/-! ## A279510.P3694253941117535402

`A003961(((n+1)²/∏{p}[n+1, #])^∏{e}[n+1, floor(#/4)+1])`
-/

namespace A279510.P3694253941117535402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ (∏ p ∈ Nat.primeFactors (f2 n), (⌊(Nat.factorization (f2 n) p : ℚ) / 4⌋ + 1) : ℤ))).toNat

end

end A279510.P3694253941117535402

/-! ## A279510.P12936141499521245369

`A003961(((n+1)²/∏{p}[n+1, #])^((n+1)/gcd(n+1, ∏{p}[n+1, #]^3)))`
-/

namespace A279510.P12936141499521245369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f2 n), p) ^ 3) : ℚ) : ℝ))).toNat

end

end A279510.P12936141499521245369

/-! ## A279510.P592804975837002655

`A097246(A102631(n+1)²)`
-/

namespace A279510.P592804975837002655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (A102631 (n + 1) ^ 2).toNat

end

end A279510.P592804975837002655

/-!
# A279511: Sierpinski square-based pyramid numbers: a(n) = 5*a(n-1) - (2^(n+1) + 7).

The programs for A279511, the canonical program `A279511.P4236517519898056086` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279511 has offset 0).

The definition of A279511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-(2^(n+1)+7)` (program `A279511.P4236517519898056086`, by `A279511.P4236517519898056086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279511.P4236517519898056086

`5*a(n-1)-(2^(n+1)+7)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279511

/-- `5*a(n-1)-(2^(n+1)+7)` -/
def P4236517519898056086.Spec : Prop :=
  ∀ n, P4236517519898056086.a n = A279511 n

theorem P4236517519898056086.correct : P4236517519898056086.Spec := by
  intro n
  simp only [A279511]

end A279511

/-! ## A279511.P9280245211677869372

`8*a(n-1)-17*a(n-2)+10*a(n-3)` with `a(0)=5, a(1)=14, a(2)=55`
-/

namespace A279511.P9280245211677869372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 14, 55] fun n a =>
  8 * a (n - 1) - 17 * a (n - 2) + 10 * a (n - 3)

end

end A279511.P9280245211677869372

namespace A279511

/-- `8*a(n-1)-17*a(n-2)+10*a(n-3)` -/
def P9280245211677869372.Spec : Prop :=
  ∀ n, P9280245211677869372.a n = A279511 n

end A279511

/-! ## A279511.P8467131903690303899

`25*5^(n-1)+(2^(n+4)-37*5^n+21)/12`
-/

namespace A279511.P8467131903690303899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  25 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + ((2 ^ (n + 4) : ℤ) - (37 * 5 ^ n : ℤ) + 21 : ℚ) / 12

end

end A279511.P8467131903690303899

namespace A279511

/-- `25*5^(n-1)+(2^(n+4)-37*5^n+21)/12` -/
def P8467131903690303899.Spec : Prop :=
  ∀ n, P8467131903690303899.a n = (A279511 n : ℚ)

theorem P8467131903690303899.correct : P8467131903690303899.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A279511, Nat.add_sub_cancel, A279511.P8467131903690303899.a, A279511.P4236517519898056086.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A279511, Nat.add_sub_cancel, A279511.P8467131903690303899.a, A279511.P4236517519898056086.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A279511

/-!
# A279512: Sierpinski octahedron numbers: a(n) = 2*6^n + 3*2^n + 1.

The programs for A279512, the canonical program `A279512.P2016152174919224180` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279512 has offset 0).

The definition of A279512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*6^n+3*2^n+1` (program `A279512.P2016152174919224180`, by `A279512.P2016152174919224180.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279512.P2016152174919224180

`2*6^n+3*2^n+1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279512

/-- `2*6^n+3*2^n+1` -/
def P2016152174919224180.Spec : Prop :=
  ∀ n, (P2016152174919224180.a n : ℤ) = A279512 n

theorem P2016152174919224180.correct : P2016152174919224180.Spec := by
  intro n
  simp only [A279512]

end A279512

/-! ## A279512.P9489279234885510400

`or(2*A074601(n), A000051(n))`
-/

namespace A279512.P9489279234885510400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A074601 n) (A000051 n)

end

end A279512.P9489279234885510400

namespace A279512

/-- `or(2*A074601(n), A000051(n))` -/
def P9489279234885510400.Spec : Prop :=
  ∀ n, P9489279234885510400.a n = A279512 n

end A279512

/-! ## A279512.P13385671213027438335

`xor(2*A074601(abs(n-2*n)), A000051(n))`
-/

namespace A279512.P13385671213027438335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A074601 |(n : ℤ) - (2 * n : ℤ)|.toNat) (A000051 n)

end

end A279512.P13385671213027438335

namespace A279512

/-- `xor(2*A074601(abs(n-2*n)), A000051(n))` -/
def P13385671213027438335.Spec : Prop :=
  ∀ n, P13385671213027438335.a n = A279512 n

end A279512

/-!
# A279516: Indices of records of A156140 (accumulation of Stern's diatomic series).

The programs for A279516, there is no canonical definition to state claims against.
-/

/-! ## A279516.P17955952063563792237

`record[A277702(n+1)%A194271(2*n+1)]`
-/

namespace A279516.P17955952063563792237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277702 (n + 1)) (A194271 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279516.P17955952063563792237

/-! ## A279516.P6186084785210331800

`∩[A277702(n+1), A095274(n)]`
-/

namespace A279516.P6186084785210331800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279516.P6186084785210331800

/-!
# A279517: Record values of A156140 (accumulation of Stern's diatomic series).

The programs for A279517, there is no canonical definition to state claims against.
-/

/-! ## A279517.P11275683921430457961

`A156140(A279516(n+1))`
-/

namespace A279517.P11275683921430457961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 (A279516 (n + 1)).toNat

end

end A279517.P11275683921430457961

/-! ## A279517.P3650657611289381552

`record[A156140(n)]`
-/

namespace A279517.P3650657611289381552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279517.P3650657611289381552

/-! ## A279517.P1091092430730832130

`record[A321154(n)+A002487(n)]`
-/

namespace A279517.P1091092430730832130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 n + A002487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279517.P1091092430730832130

/-! ## A279517.P14488363507870173989

`record[A321154(n)+A126606(n+1)/2]`
-/

namespace A279517.P14488363507870173989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321154 n : ℚ) + (A126606 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279517.P14488363507870173989

/-! ## A279517.P2051071667283529172

`record[A321154(2*n)]`
-/

namespace A279517.P2051071667283529172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279517.P2051071667283529172

/-! ## A279517.P948425717835755563

`A321154(2*A279516(n+1))`
-/

namespace A279517.P948425717835755563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 (2 * A279516 (n + 1)).toNat

end

end A279517.P948425717835755563

/-! ## A279517.P9364531147868885737

`A321154(A279516(n+1)+A279516(n+1))`
-/

namespace A279517.P9364531147868885737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 (A279516 (n + 1) + A279516 (n + 1)).toNat

end

end A279517.P9364531147868885737

/-!
# A279521: Maximum number of single-direction edges in leveled binary trees with n nodes.

The programs for A279521, the canonical program `A279521.P13549278606039013017` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279521 has offset 1).

The definition of A279521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279521.P7719694707749771670

`n-A277267(n+1)`
-/

namespace A279521.P7719694707749771670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A277267 (n + 1)

end

end A279521.P7719694707749771670

namespace A279521

/-- `n-A277267(n+1)` -/
def P7719694707749771670.Spec : Prop :=
  ∀ n, P7719694707749771670.a n = A279521 (n + 1)

theorem P7719694707749771670.correct : P7719694707749771670.Spec := by
  intro n
  simp only [A279521, Nat.add_sub_cancel, A279521.P7719694707749771670.a, A279521.P13549278606039013017.a, A006165, A006165.P2775593661925565035.a, A277267, A277267.P1918104767288043109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A279521

/-! ## A279521.P13549278606039013017

`A006165(n+2)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A279521

/-- `A006165(n+2)-1` -/
def P13549278606039013017.Spec : Prop :=
  ∀ n, P13549278606039013017.a n = A279521 (n + 1)

theorem P13549278606039013017.correct : P13549278606039013017.Spec := by
  intro n
  simp only [A279521, Nat.add_sub_cancel]

end A279521

/-! ## A279521.P269772882743177306

`∑[abs(a(floor((n-1)/2)))]` with `a(0)=0, a(1)=1`
-/

namespace A279521.P269772882743177306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279521.P269772882743177306

namespace A279521

/-- `∑[abs(a(floor((n-1)/2)))]` -/
def P269772882743177306.Spec : Prop :=
  ∀ n, (P269772882743177306.a n : ℤ) = A279521 (n + 1)

end A279521

/-! ## A279521.P10706014052416435334

`∑[a(floor((n-1)/2))²]` with `a(0)=0, a(1)=1`
-/

namespace A279521.P10706014052416435334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279521.P10706014052416435334

namespace A279521

/-- `∑[a(floor((n-1)/2))²]` -/
def P10706014052416435334.Spec : Prop :=
  ∀ n, (P10706014052416435334.a n : ℤ) = A279521 (n + 1)

end A279521

/-! ## A279521.P17663133115317409956

`∑[char[2^floor(log2(n+1))+n]]`
-/

namespace A279521.P17663133115317409956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279521.P17663133115317409956

namespace A279521

/-- `∑[char[2^floor(log2(n+1))+n]]` -/
def P17663133115317409956.Spec : Prop :=
  ∀ n, (P17663133115317409956.a n : ℤ) = A279521 (n + 1)

end A279521

/-! ## A279521.P18183978353223530120

`floor(∑[a(∑[a(n-2)²]-1)²])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A279521.P18183978353223530120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279521.P18183978353223530120

namespace A279521

/-- `floor(∑[a(∑[a(n-2)²]-1)²])` -/
def P18183978353223530120.Spec : Prop :=
  ∀ n, (P18183978353223530120.a n : ℤ) = A279521 (n + 1)

end A279521

/-! ## A279521.P6392995764480893558

`ceil(∑[a(∑[a(n-2)²]-1)²])` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A279521.P6392995764480893558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279521.P6392995764480893558

namespace A279521

/-- `ceil(∑[a(∑[a(n-2)²]-1)²])` -/
def P6392995764480893558.Spec : Prop :=
  ∀ n, (P6392995764480893558.a n : ℤ) = A279521 (n + 1)

end A279521

/-! ## A279521.P9434495677364983911

`round(∑[a(∑[a(n-2)²]-1)²])` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A279521.P9434495677364983911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279521.P9434495677364983911

namespace A279521

/-- `round(∑[a(∑[a(n-2)²]-1)²])` -/
def P9434495677364983911.Spec : Prop :=
  ∀ n, (P9434495677364983911.a n : ℤ) = A279521 (n + 1)

end A279521

/-! ## A279521.P4203803366047644109

`n-a(floor(n-(a(n-1)+1)/2))` with `a(0)=0`
-/

namespace A279521.P4203803366047644109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ⌊(n : ℚ) - (a (n - 1) + 1 : ℚ) / 2⌋.toNat

end

end A279521.P4203803366047644109

namespace A279521

/-- `n-a(floor(n-(a(n-1)+1)/2))` -/
def P4203803366047644109.Spec : Prop :=
  ∀ n, P4203803366047644109.a n = A279521 (n + 1)

end A279521

/-! ## A279521.P3941206905081555826

`n-a(n-1-floor(a(n-1)/2))` with `a(0)=0`
-/

namespace A279521.P3941206905081555826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ((n : ℤ) - 1 - ⌊(a (n - 1) : ℚ) / 2⌋).toNat

end

end A279521.P3941206905081555826

namespace A279521

/-- `n-a(n-1-floor(a(n-1)/2))` -/
def P3941206905081555826.Spec : Prop :=
  ∀ n, P3941206905081555826.a n = A279521 (n + 1)

end A279521

/-! ## A279521.P16992613407642151289

`n-a(a(a(n-1))-(a(n-1)+1)+n)` with `a(0)=0`
-/

namespace A279521.P16992613407642151289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (a (a (n - 1)).toNat - (a (n - 1) + 1) + (n : ℤ)).toNat

end

end A279521.P16992613407642151289

namespace A279521

/-- `n-a(a(a(n-1))-(a(n-1)+1)+n)` -/
def P16992613407642151289.Spec : Prop :=
  ∀ n, P16992613407642151289.a n = A279521 (n + 1)

end A279521

/-! ## A279521.P10149587927765153337

`n-a(n-(1-(a(a(n-1))-a(n-1))))` with `a(0)=0`
-/

namespace A279521.P10149587927765153337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ((n : ℤ) - (1 - (a (a (n - 1)).toNat - a (n - 1)))).toNat

end

end A279521.P10149587927765153337

namespace A279521

/-- `n-a(n-(1-(a(a(n-1))-a(n-1))))` -/
def P10149587927765153337.Spec : Prop :=
  ∀ n, P10149587927765153337.a n = A279521 (n + 1)

end A279521

/-! ## A279521.P5329267336637573452

`A078881(n+1)-1`
-/

namespace A279521.P5329267336637573452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 1) - 1

end

end A279521.P5329267336637573452

namespace A279521

/-- `A078881(n+1)-1` -/
def P5329267336637573452.Spec : Prop :=
  ∀ n, P5329267336637573452.a n = A279521 (n + 1)

end A279521

/-! ## A279521.P8326845947485430853

`A159615(n+1)-(n+2)`
-/

namespace A279521.P8326845947485430853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159615 (n + 1) - (n + 2 : ℤ)

end

end A279521.P8326845947485430853

namespace A279521

/-- `A159615(n+1)-(n+2)` -/
def P8326845947485430853.Spec : Prop :=
  ∀ n, P8326845947485430853.a n = A279521 (n + 1)

end A279521

/-! ## A279521.P2377646587851616849

`n+2-A166079(n+3)`
-/

namespace A279521.P2377646587851616849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A166079 (n + 3)

end

end A279521.P2377646587851616849

namespace A279521

/-- `n+2-A166079(n+3)` -/
def P2377646587851616849.Spec : Prop :=
  ∀ n, P2377646587851616849.a n = A279521 (n + 1)

end A279521

/-! ## A279521.P6382272878190585192

`A086694(n)+a(n-1)` with `a(0)=0`
-/

namespace A279521.P6382272878190585192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086694 n + a (n - 1)

end

end A279521.P6382272878190585192

namespace A279521

/-- `A086694(n)+a(n-1)` -/
def P6382272878190585192.Spec : Prop :=
  ∀ n, P6382272878190585192.a n = A279521 (n + 1)

end A279521

/-! ## A279521.P2656742173408482234

`Δ[n²]-A115836(n+1)`
-/

namespace A279521.P2656742173408482234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A115836 (n + 1)

end

end A279521.P2656742173408482234

namespace A279521

/-- `Δ[n²]-A115836(n+1)` -/
def P2656742173408482234.Spec : Prop :=
  ∀ n, P2656742173408482234.a n = A279521 (n + 1)

theorem P2656742173408482234.correct : P2656742173408482234.Spec := by
  intro n
  simp only [A279521, Nat.add_sub_cancel, A279521.P2656742173408482234.f1, A279521.P2656742173408482234.a, A279521.P13549278606039013017.a, A006165, A006165.P2775593661925565035.a, A115836, A115836.P4635970898570071194.a, A007378, A007378.P6355740998360001155.a, A060973, A060973.P9569280493827899348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A279521

/-! ## A279521.P12454119616510258214

`n-∑[char[A206332(n+1)]]`
-/

namespace A279521.P12454119616510258214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279521.P12454119616510258214

namespace A279521

/-- `n-∑[char[A206332(n+1)]]` -/
def P12454119616510258214.Spec : Prop :=
  ∀ n, P12454119616510258214.a n = A279521 (n + 1)

end A279521

/-! ## A279521.P4605634273496817169

`2*(n+1)-A080637(n+1)`
-/

namespace A279521.P4605634273496817169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A080637 (n + 1)

end

end A279521.P4605634273496817169

namespace A279521

/-- `2*(n+1)-A080637(n+1)` -/
def P4605634273496817169.Spec : Prop :=
  ∀ n, P4605634273496817169.a n = A279521 (n + 1)

end A279521

/-!
# A279523: Number of n X 2 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279523, there is no canonical definition to state claims against.
-/

/-! ## A279523.P11498499067442081138

`A279527(∑[n+1]+2)`
-/

namespace A279523.P11498499067442081138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279523.P11498499067442081138

/-! ## A279523.P451134348057164762

`A280284(∑[n+1]+2)`
-/

namespace A279523.P451134348057164762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279523.P451134348057164762

/-! ## A279523.P13991054255966864138

`A281653(∑[n+2])`
-/

namespace A279523.P13991054255966864138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279523.P13991054255966864138

/-! ## A279523.P15884452453013647230

`record[A280284(∑[gcd(xor(1, n²), ∑[n])])]`
-/

namespace A279523.P15884452453013647230
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279523.P15884452453013647230

/-! ## A279523.P14662900399384275921

`record[A280284(∑[A152271(n)])]`
-/

namespace A279523.P14662900399384275921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279523.P14662900399384275921

/-!
# A279524: Number of nX3 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279524, there is no canonical definition to state claims against.
-/

/-! ## A279524.P16975524867099318228

`A279527(∑[n+2]+4)`
-/

namespace A279524.P16975524867099318228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279524.P16975524867099318228

/-! ## A279524.P10445898289137212094

`lcm(2, A279527(A167614(n+1)))`
-/

namespace A279524.P10445898289137212094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279527 (A167614 (n + 1)).toNat)

end

end A279524.P10445898289137212094

/-! ## A279524.P12127040754403211385

`A279527(A167614(n+1))%A235826(n+1)`
-/

namespace A279524.P12127040754403211385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279527 (A167614 (n + 1)).toNat) (A235826 (n + 1))

end

end A279524.P12127040754403211385

/-! ## A279524.P14422302688499627802

`A279527(A034856(n+1)+5)%A279525(n+1)`
-/

namespace A279524.P14422302688499627802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279527 (A034856 (n + 1) + 5).toNat) (A279525 (n + 1))

end

end A279524.P14422302688499627802

/-! ## A279524.P1848227391472253588

`record[gcd(A279527(n+1), A328610(n+1))]`
-/

namespace A279524.P1848227391472253588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A279527 (n + 1)) (A328610 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279524.P1848227391472253588

/-!
# A279525: Number of nX4 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279525, there is no canonical definition to state claims against.
-/

/-! ## A279525.P18038097911654040649

`A279527(A374004(n+1))`
-/

namespace A279525.P18038097911654040649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (A374004 (n + 1)).toNat

end

end A279525.P18038097911654040649

/-! ## A279525.P6048043912134164274

`A279527(A141214(n)+7)`
-/

namespace A279525.P6048043912134164274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (A141214 n + 7).toNat

end

end A279525.P6048043912134164274

/-! ## A279525.P8045058664414348521

`A279527(A052905(n)+9)`
-/

namespace A279525.P8045058664414348521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (A052905 n + 9).toNat

end

end A279525.P8045058664414348521

/-! ## A279525.P11060361108221503457

`A279527(A055999(n)+10)`
-/

namespace A279525.P11060361108221503457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (A055999 n + 10).toNat

end

end A279525.P11060361108221503457

/-! ## A279525.P13628043911608224729

`A279527(A167614(n+2)+1)`
-/

namespace A279525.P13628043911608224729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (A167614 (n + 2) + 1).toNat

end

end A279525.P13628043911608224729

/-!
# A279526: Number of nX5 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279526, there is no canonical definition to state claims against.
-/

/-! ## A279526.P11297994156376380651

`A279527(A374005(n+1))`
-/

namespace A279526.P11297994156376380651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (A374005 (n + 1)).toNat

end

end A279526.P11297994156376380651

/-! ## A279526.P3671466128376105913

`A279527(A155212(n)+13)`
-/

namespace A279526.P3671466128376105913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (A155212 n + 13).toNat

end

end A279526.P3671466128376105913

/-! ## A279526.P4038997130474880010

`A279527(A056000(n)+15)`
-/

namespace A279526.P4038997130474880010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (A056000 n + 15).toNat

end

end A279526.P4038997130474880010

/-! ## A279526.P791846733097300771

`A279527(eq[7, A066657(n)])`
-/

namespace A279526.P791846733097300771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279526.P791846733097300771

/-! ## A279526.P10095293749925813850

`A279527(A000124(n+4)+4)`
-/

namespace A279526.P10095293749925813850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (A000124 (n + 4) + 4).toNat

end

end A279526.P10095293749925813850

/-!
# A279527: T(n,k)=Number of nXk 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279527, there is no canonical definition to state claims against.
-/

/-! ## A279527.P16789674904132179763

`A001316(A154638(n))%A034386(n)`
-/

namespace A279527.P16789674904132179763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (A154638 n).toNat) (A034386 n)

end

end A279527.P16789674904132179763

/-! ## A279527.P17990364439187637141

`A001316(A186758(n))%A034386(n)`
-/

namespace A279527.P17990364439187637141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (A186758 n).toNat) (A034386 n)

end

end A279527.P17990364439187637141

/-! ## A279527.P5329167952924360901

`A193448(A148934(n))%A207182(n+1)`
-/

namespace A279527.P5329167952924360901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193448 (A148934 n).toNat) (A207182 (n + 1))

end

end A279527.P5329167952924360901

/-! ## A279527.P15937672714795552814

`lcm(A280284(n+1), A326047(A111124(3*n+2)))`
-/

namespace A279527.P15937672714795552814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A280284 (n + 1)) (A326047 (A111124 (3 * n + 2)).toNat)

end

end A279527.P15937672714795552814

/-!
# A279528: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 179", based on the 5-celled von Neumann neighborhood.

The programs for A279528, there is no canonical definition to state claims against.
-/

/-! ## A279528.P1506154735919008163

`A007088(A279666(n))`
-/

namespace A279528.P1506154735919008163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279666 n).toNat

end

end A279528.P1506154735919008163

/-! ## A279528.P16721870962454061254

`A305989(A279668(n)/A000034(n))`
-/

namespace A279528.P16721870962454061254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279668 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A279528.P16721870962454061254

/-! ## A279528.P14777509769022913797

`A305989(A279668(n)/A132587(n+1))`
-/

namespace A279528.P14777509769022913797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279668 n : ℚ) / (A132587 (n + 1) : ℚ))).toNat

end

end A279528.P14777509769022913797

/-! ## A279528.P12530068003548668495

`A305989(A279668(n))`
-/

namespace A279528.P12530068003548668495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A279668 n).toNat

end

end A279528.P12530068003548668495

/-! ## A279528.P543079977703829310

`A185544(2*A279666(n))`
-/

namespace A279528.P543079977703829310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279666 n).toNat

end

end A279528.P543079977703829310

/-!
# A279530: Number of nX2 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279530, there is no canonical definition to state claims against.
-/

/-! ## A279530.P3582869959472277523

`A280313(A000096(n)+3)+A000007(n)`
-/

namespace A279530.P3582869959472277523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A000096 n + 3).toNat + A000007 n

end

end A279530.P3582869959472277523

/-! ## A279530.P15089562341810881903

`A280313(A000096(n)+3)+A151878(n)`
-/

namespace A279530.P15089562341810881903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A000096 n + 3).toNat + A151878 n

end

end A279530.P15089562341810881903

/-! ## A279530.P12515185376460879372

`A279534(∑[n+1]+2)`
-/

namespace A279530.P12515185376460879372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279530.P12515185376460879372

/-! ## A279530.P16415376720817631270

`A281693(A000096(n+1))+A151878(2*n)`
-/

namespace A279530.P16415376720817631270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A000096 (n + 1)).toNat + A151878 (2 * n)

end

end A279530.P16415376720817631270

/-! ## A279530.P10058038993914499093

`A280313(A000096(n+1))^A109038(n+1)`
-/

namespace A279530.P10058038993914499093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280313 (A000096 (n + 1)).toNat : ℚ) ^ (A109038 (n + 1) : ℤ)

end

end A279530.P10058038993914499093

/-!
# A279531: Number of nX3 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279531, there is no canonical definition to state claims against.
-/

/-! ## A279531.P5100012813623836616

`A279534(∑[n+2]+4)`
-/

namespace A279531.P5100012813623836616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279531.P5100012813623836616

/-! ## A279531.P9322863422404106445

`ceil(acot(n))*A279534(A167614(n+1))`
-/

namespace A279531.P9322863422404106445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A279534 (A167614 (n + 1)).toNat

end

end A279531.P9322863422404106445

/-! ## A279531.P4306039777400321796

`A279534(A167614(n+1))+A011730(n)`
-/

namespace A279531.P4306039777400321796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (A167614 (n + 1)).toNat + A011730 n

end

end A279531.P4306039777400321796

/-! ## A279531.P8662999270870664995

`A279534(A167614(n+1))+A011731(n)`
-/

namespace A279531.P8662999270870664995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (A167614 (n + 1)).toNat + A011731 n

end

end A279531.P8662999270870664995

/-!
# A279532: Number of nX4 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279532, there is no canonical definition to state claims against.
-/

/-! ## A279532.P3092154691107345607

`A279534(A141214(n)+7)`
-/

namespace A279532.P3092154691107345607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (A141214 n + 7).toNat

end

end A279532.P3092154691107345607

/-! ## A279532.P5966004387602297339

`A279534(A052905(n)+9)`
-/

namespace A279532.P5966004387602297339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (A052905 n + 9).toNat

end

end A279532.P5966004387602297339

/-! ## A279532.P10439648144923662193

`A279534(A055999(n)+10)`
-/

namespace A279532.P10439648144923662193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (A055999 n + 10).toNat

end

end A279532.P10439648144923662193

/-! ## A279532.P4691190813797566432

`A279534(eq[5, A066657(n)])`
-/

namespace A279532.P4691190813797566432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279532.P4691190813797566432

/-! ## A279532.P7617172454023704653

`A279534(A167614(n+2)+1)`
-/

namespace A279532.P7617172454023704653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (A167614 (n + 2) + 1).toNat

end

end A279532.P7617172454023704653

/-!
# A279533: Number of nX5 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279533, there is no canonical definition to state claims against.
-/

/-! ## A279533.P8639905504314968228

`A279534(A167499(n+3))`
-/

namespace A279533.P8639905504314968228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (A167499 (n + 3)).toNat

end

end A279533.P8639905504314968228

/-! ## A279533.P7389759017604138072

`A279534(A155212(n)+13)`
-/

namespace A279533.P7389759017604138072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (A155212 n + 13).toNat

end

end A279533.P7389759017604138072

/-! ## A279533.P765182670203003773

`A279534(A056000(n)+15)`
-/

namespace A279533.P765182670203003773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (A056000 n + 15).toNat

end

end A279533.P765182670203003773

/-! ## A279533.P4108170783705476970

`A279534(eq[7, A066657(n)])`
-/

namespace A279533.P4108170783705476970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279533.P4108170783705476970

/-!
# A279534: T(n,k)=Number of nXk 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279534, there is no canonical definition to state claims against.
-/

/-! ## A279534.P16276876051083313258

`A055643(A279925(n+1)^A109038(n))`
-/

namespace A279534.P16276876051083313258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.roundAway ((A279925 (n + 1) : ℚ) ^ (A109038 n : ℤ))).toNat

end

end A279534.P16276876051083313258

/-! ## A279534.P14848117089986713859

`A055643(C(A279925(n+1), A109038(n)))`
-/

namespace A279534.P14848117089986713859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (Nat.choose (A279925 (n + 1)).toNat (A109038 n).toNat)

end

end A279534.P14848117089986713859

/-! ## A279534.P4086178581764739978

`A055643(A279925(n+1)^A139040(n+1))`
-/

namespace A279534.P4086178581764739978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (SequenceMachineLib.roundAway ((A279925 (n + 1) : ℚ) ^ (A139040 (n + 1) : ℤ))).toNat

end

end A279534.P4086178581764739978

/-! ## A279534.P17456552139603570089

`A055643(C(A279925(n+1), A139040(n+1)))`
-/

namespace A279534.P17456552139603570089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (Nat.choose (A279925 (n + 1)).toNat (A139040 (n + 1)).toNat)

end

end A279534.P17456552139603570089

/-!
# A279536: Count the squarefree numbers appearing in each interval [p,q] where (p,q) is a Goldbach partition of 2n such that all primes from p to q (inclusive) appear as a part in some Goldbach partition of p+q = 2n, and then add the results.

The programs for A279536, there is no canonical definition to state claims against.
-/

/-! ## A279536.P7960707083518844831

`Δ[A279585(floor(acot(n)+n))]`
-/

namespace A279536.P7960707083518844831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279585 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279536.P7960707083518844831

/-! ## A279536.P3968702598695266144

`Δ[A279585(round(acot(n)+n))]`
-/

namespace A279536.P3968702598695266144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279585 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279536.P3968702598695266144

/-! ## A279536.P10433370230223756976

`Δ[A279585(abs(1-n)+1)]`
-/

namespace A279536.P10433370230223756976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279585 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279536.P10433370230223756976

/-! ## A279536.P10371534150748789253

`abs(Δ[A279585(A028310(n))])`
-/

namespace A279536.P10371534150748789253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279585 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A279536.P10371534150748789253

/-! ## A279536.P16191078370580279814

`abs(Δ[A279585(A233583(n+1))])`
-/

namespace A279536.P16191078370580279814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279585 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A279536.P16191078370580279814

/-! ## A279536.P16230534901563097486

`A279585(n+1)-A279585(round(acot(n)+n))`
-/

namespace A279536.P16230534901563097486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279585 (n + 1) - A279585 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A279536.P16230534901563097486

/-! ## A279536.P16359684270885623511

`A279585(n+1)-A279585(round(sqrt(n²+1)))`
-/

namespace A279536.P16359684270885623511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279585 (n + 1) - A279585 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A279536.P16359684270885623511

/-!
# A279537: Numbers of the form 2^i * 6^j * 30^k.

The programs for A279537, there is no canonical definition to state claims against.
-/

/-! ## A279537.P3989092232207631880

`∩[A051037(n+1), A333964(n+1)]`
-/

namespace A279537.P3989092232207631880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P3989092232207631880

/-! ## A279537.P13331533064235549106

`record[lcm(7, A025487(n+1))]/7`
-/

namespace A279537.P13331533064235549106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A025487 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 7

end

end A279537.P13331533064235549106

/-! ## A279537.P15600150641315642417

`∩[A025487(n+1), A051037(n+1)]`
-/

namespace A279537.P15600150641315642417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P15600150641315642417

/-! ## A279537.P16724255249157306759

`A025487(record[(n+1)/gcd(7, A025487(n+1))])`
-/

namespace A279537.P16724255249157306759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 7 (A025487 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A279537.P16724255249157306759

/-! ## A279537.P10941567370531156121

`record[A025487(n+1)/A034887(A061394(n+1))]`
-/

namespace A279537.P10941567370531156121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A034887 (A061394 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279537.P10941567370531156121

/-! ## A279537.P16086689436329344137

`record[A329899(n+1)/A034887(A061394(n+1))]`
-/

namespace A279537.P16086689436329344137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329899 (n + 1) : ℚ) / (A034887 (A061394 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279537.P16086689436329344137

/-! ## A279537.P2805885225276556929

`A307107(eq[3, A061394(n+1)]+1)`
-/

namespace A279537.P2805885225276556929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A279537.P2805885225276556929

/-! ## A279537.P10176271865265581360

`∩[A025487(n+1), A143513(n+1)]`
-/

namespace A279537.P10176271865265581360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P10176271865265581360

/-! ## A279537.P15392090113616093535

`∩[A143513(n+1), A333964(n+1)]`
-/

namespace A279537.P15392090113616093535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P15392090113616093535

/-! ## A279537.P14905072939009608434

`∩[A025487(n+1), A068095(n+1)]`
-/

namespace A279537.P14905072939009608434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P14905072939009608434

/-! ## A279537.P17847764538994851672

`∩[A068095(n+1), A333964(n+1)]`
-/

namespace A279537.P17847764538994851672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P17847764538994851672

/-! ## A279537.P6629161356812204742

`∩[A025487(n+1), A325663(n+1)]`
-/

namespace A279537.P6629161356812204742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P6629161356812204742

/-! ## A279537.P4561187387063120912

`∩[A325663(n+1), A333964(n+1)]`
-/

namespace A279537.P4561187387063120912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P4561187387063120912

/-! ## A279537.P1443869135692114883

`∩[A051037(n+1), A324850(n+1)]`
-/

namespace A279537.P1443869135692114883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P1443869135692114883

/-! ## A279537.P3778105201587957624

`∩[A143513(n+1), A324850(n+1)]`
-/

namespace A279537.P3778105201587957624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P3778105201587957624

/-! ## A279537.P17454961696213470146

`∩[A025487(n+1), A156541(n+1)]`
-/

namespace A279537.P17454961696213470146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P17454961696213470146

/-! ## A279537.P4435435118177563300

`∩[A156541(n+1), A333964(n+1)]`
-/

namespace A279537.P4435435118177563300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279537.P4435435118177563300

/-! ## A279537.P5289275264376129764

`filter[A051037(n+1), A322585(#)]`
-/

namespace A279537.P5289275264376129764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A279537.P5289275264376129764

/-! ## A279537.P943344245300998006

`filter[A068095(n+1), A322585(#)]`
-/

namespace A279537.P943344245300998006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A279537.P943344245300998006

/-! ## A279537.P7441682208993447303

`filter[A143513(n+1), A322585(#)]`
-/

namespace A279537.P7441682208993447303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A279537.P7441682208993447303

/-!
# A279539: Sum of ceilings of natural logs of first n integers.

The programs for A279539, the canonical program `A279539.P10358371075013548821` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279539 has offset 1).

The definition of A279539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279539.P16575874123790666210

`∑[ceil(log(n+1))]`
-/

namespace A279539.P16575874123790666210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279539.P16575874123790666210

namespace A279539

/-- `∑[ceil(log(n+1))]` -/
def P16575874123790666210.Spec : Prop :=
  ∀ n, P16575874123790666210.a n = A279539 (n + 1)

theorem P16575874123790666210.correct : P16575874123790666210.Spec := by
  intro n
  simp only [A279539, Nat.add_sub_cancel, A279539.P16575874123790666210.f1, A279539.P16575874123790666210.a, A279539.P10358371075013548821.a, A092755, A092755.P5737678061352933745.f1, A092755.P5737678061352933745.a, A004233, A004233.P5344956152729149784.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A279539

/-! ## A279539.P582553338203680938

`∑[dr(floor(log(n+1)))]+n`
-/

namespace A279539.P582553338203680938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌊Real.log (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A279539.P582553338203680938

namespace A279539

/-- `∑[dr(floor(log(n+1)))]+n` -/
def P582553338203680938.Spec : Prop :=
  ∀ n, (P582553338203680938.a n : ℤ) = A279539 (n + 1)

end A279539

/-! ## A279539.P13749565235752051825

`ceil(a(n-1)+log(n+1))` with `a(0)=0`
-/

namespace A279539.P13749565235752051825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.log (n + 1 : ℝ)⌉

end

end A279539.P13749565235752051825

namespace A279539

/-- `ceil(a(n-1)+log(n+1))` -/
def P13749565235752051825.Spec : Prop :=
  ∀ n, P13749565235752051825.a n = A279539 (n + 1)

end A279539

/-! ## A279539.P10358371075013548821

`A092755(n+1)+n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A279539

/-- `A092755(n+1)+n` -/
def P10358371075013548821.Spec : Prop :=
  ∀ n, P10358371075013548821.a n = A279539 (n + 1)

theorem P10358371075013548821.correct : P10358371075013548821.Spec := by
  intro n
  simp only [A279539, Nat.add_sub_cancel]

end A279539

/-! ## A279539.P8385086792751952426

`∑[A363832(n+1)]-1`
-/

namespace A279539.P8385086792751952426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279539.P8385086792751952426

namespace A279539

/-- `∑[A363832(n+1)]-1` -/
def P8385086792751952426.Spec : Prop :=
  ∀ n, P8385086792751952426.a n = A279539 (n + 1)

end A279539

/-! ## A279539.P6853453228053159311

`∑[A000195(n+1)]+n`
-/

namespace A279539.P6853453228053159311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279539.P6853453228053159311

namespace A279539

/-- `∑[A000195(n+1)]+n` -/
def P6853453228053159311.Spec : Prop :=
  ∀ n, P6853453228053159311.a n = A279539 (n + 1)

end A279539

/-! ## A279539.P8136468240573779057

`∑[A212445(n+1)-n]-1`
-/

namespace A279539.P8136468240573779057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279539.P8136468240573779057

namespace A279539

/-- `∑[A212445(n+1)-n]-1` -/
def P8136468240573779057.Spec : Prop :=
  ∀ n, P8136468240573779057.a n = A279539 (n + 1)

end A279539

/-! ## A279539.P5332065302292941315

`∑[floor(log(A000027(n+1)))]+n`
-/

namespace A279539.P5332065302292941315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A000027 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279539.P5332065302292941315

namespace A279539

/-- `∑[floor(log(A000027(n+1)))]+n` -/
def P5332065302292941315.Spec : Prop :=
  ∀ n, P5332065302292941315.a n = A279539 (n + 1)

end A279539

/-! ## A279539.P1155180190984042603

`A004233(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A279539.P1155180190984042603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004233 (n + 1) + a (n - 1)

end

end A279539.P1155180190984042603

namespace A279539

/-- `A004233(n+1)+a(n-1)` -/
def P1155180190984042603.Spec : Prop :=
  ∀ n, P1155180190984042603.a n = A279539 (n + 1)

end A279539

/-! ## A279539.P7492051172436500235

`∑[A004233(n+2)]-A004233(n+2)`
-/

namespace A279539.P7492051172436500235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004233 (n + 2)

end

end A279539.P7492051172436500235

namespace A279539

/-- `∑[A004233(n+2)]-A004233(n+2)` -/
def P7492051172436500235.Spec : Prop :=
  ∀ n, P7492051172436500235.a n = A279539 (n + 1)

end A279539

/-! ## A279539.P17876988344110990585

`∑[A004233(n+1)]%A004210(n+1)`
-/

namespace A279539.P17876988344110990585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A004210 (n + 1))

end

end A279539.P17876988344110990585

namespace A279539

/-- `∑[A004233(n+1)]%A004210(n+1)` -/
def P17876988344110990585.Spec : Prop :=
  ∀ n, P17876988344110990585.a n = A279539 (n + 1)

end A279539

/-! ## A279539.P3315081386799058807

`A289207(A292621(n+1))+n`
-/

namespace A279539.P3315081386799058807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A292621 (n + 1)).toNat + (n : ℤ)

end

end A279539.P3315081386799058807

namespace A279539

/-- `A289207(A292621(n+1))+n` -/
def P3315081386799058807.Spec : Prop :=
  ∀ n, P3315081386799058807.a n = A279539 (n + 1)

end A279539

/-!
# A279541: Indices of records in A192013: Sum_{d|n} Kronecker(-6, d).

The programs for A279541, there is no canonical definition to state claims against.
-/

/-! ## A279541.P8492217190164278661

`A003961(A053624(n+1)^A055640(n))`
-/

namespace A279541.P8492217190164278661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A053624 (n + 1) : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A279541.P8492217190164278661

/-! ## A279541.P14814630954163426859

`A283980(A053624(n+1)^A055640(n))`
-/

namespace A279541.P14814630954163426859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 (SequenceMachineLib.roundAway ((A053624 (n + 1) : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A279541.P14814630954163426859

/-! ## A279541.P3295025096294555166

`A003961(lcm(A053624(n+1), A131061(n)))`
-/

namespace A279541.P3295025096294555166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.lcm (A053624 (n + 1)) (A131061 n))

end

end A279541.P3295025096294555166

/-! ## A279541.P4283275485255273958

`A003961(C(A053624(n+1), A055640(n)))`
-/

namespace A279541.P4283275485255273958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Nat.choose (A053624 (n + 1)).toNat (A055640 n).toNat)

end

end A279541.P4283275485255273958

/-!
# A279542: Records in A192013: Sum_{d|n} Kronecker(-6, d).

The programs for A279542, there is no canonical definition to state claims against.
-/

/-! ## A279542.P11437940927694594923

`record[A060775(A000010(A025487(n+1)))]`
-/

namespace A279542.P11437940927694594923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A000010 (A025487 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279542.P11437940927694594923

/-! ## A279542.P17724172335310411653

`∪[A134361(A003586(n+1)), A068997(n+1)]`
-/

namespace A279542.P17724172335310411653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A003586 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279542.P17724172335310411653

/-! ## A279542.P8803011980846111026

`∪[A134361(A055600(n+1)), A068997(n+1)]`
-/

namespace A279542.P8803011980846111026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A055600 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279542.P8803011980846111026

/-! ## A279542.P7126208492451683359

`∪[A068997(n+1), A134361(A069353(n+1)+1)]`
-/

namespace A279542.P7126208492451683359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A069353 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279542.P7126208492451683359

/-!
# A279543: a(n) = a(n-1) + 3^n * a(n-2) with a(0) = 1 and a(1) = 1.

The programs for A279543, the canonical program `A279543.P16619506751000432405` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279543 has offset 0).

The definition of A279543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3^n*a(n-2)` (program `A279543.P16619506751000432405`, by `A279543.P16619506751000432405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279543.P16619506751000432405

`a(n-1)+3^n*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279543

/-- `a(n-1)+3^n*a(n-2)` -/
def P16619506751000432405.Spec : Prop :=
  ∀ n, (P16619506751000432405.a n : ℤ) = A279543 n

theorem P16619506751000432405.correct : P16619506751000432405.Spec := by
  intro n
  simp only [A279543]

end A279543

/-! ## A279543.P12057307407064348867

`∏[3^n/a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A279543.P12057307407064348867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (3 ^ n : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A279543.P12057307407064348867

namespace A279543

/-- `∏[3^n/a(n-1)+1]` -/
def P12057307407064348867.Spec : Prop :=
  ∀ n, P12057307407064348867.a n = (A279543 n : ℚ)

end A279543

/-! ## A279543.P13692649512289623748

`a(n-1)+a(n-2)*A000244(n)` with `a(0)=1, a(1)=1`
-/

namespace A279543.P13692649512289623748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * A000244 n

end

end A279543.P13692649512289623748

namespace A279543

/-- `a(n-1)+a(n-2)*A000244(n)` -/
def P13692649512289623748.Spec : Prop :=
  ∀ n, P13692649512289623748.a n = A279543 n

end A279543

/-!
# A279544: Number of length n inversion sequences avoiding the patterns 000, 010, 100, 110, 120, and 210.

The programs for A279544, there is no canonical definition to state claims against.
-/

/-! ## A279544.P11425179570491634073

`round(sqrt(A276623(n!)))`
-/

namespace A279544.P11425179570491634073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A276623 (Nat.factorial n) : ℝ))

end

end A279544.P11425179570491634073

/-! ## A279544.P11738471601563784081

`A024417(A151462(n))`
-/

namespace A279544.P11738471601563784081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A151462 n).toNat

end

end A279544.P11738471601563784081

/-! ## A279544.P1010617125007062955

`A225635(A166286(n))`
-/

namespace A279544.P1010617125007062955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225635 (A166286 n).toNat

end

end A279544.P1010617125007062955

/-! ## A279544.P5525631844632912150

`A325363(A306575(n))`
-/

namespace A279544.P5525631844632912150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A306575 n).toNat

end

end A279544.P5525631844632912150

/-!
# A279545: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A279545, there is no canonical definition to state claims against.
-/

/-! ## A279545.P8918030591875466133

`A007088(A279547(n))`
-/

namespace A279545.P8918030591875466133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279547 n).toNat

end

end A279545.P8918030591875466133

/-! ## A279545.P4201003438181875209

`A007088(floor(A265156(n)/A000079(n)))`
-/

namespace A279545.P4201003438181875209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A265156 n : ℚ) / (A000079 n : ℚ)⌋.toNat

end

end A279545.P4201003438181875209

/-! ## A279545.P14245111406705213064

`A007088(floor(A265156(n)/A051049(n)))`
-/

namespace A279545.P14245111406705213064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A265156 n : ℚ) / (A051049 n : ℚ)⌋.toNat

end

end A279545.P14245111406705213064

/-! ## A279545.P8838052093001880382

`A007088(floor(A265156(n)/∑[A011782(n)]))`
-/

namespace A279545.P8838052093001880382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A265156 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋.toNat

end

end A279545.P8838052093001880382

/-! ## A279545.P16406518770483680463

`A007088(floor(A265156(n)/Δ[A000051(n)]))`
-/

namespace A279545.P16406518770483680463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A265156 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋.toNat

end

end A279545.P16406518770483680463

/-!
# A279546: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A279546, there is no canonical definition to state claims against.
-/

/-! ## A279546.P17293650206927838396

`A007088(A279548(n))`
-/

namespace A279546.P17293650206927838396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279548 n).toNat

end

end A279546.P17293650206927838396

/-! ## A279546.P6821357110062468008

`A007088(and(∑[2^n], A265156(n)))`
-/

namespace A279546.P6821357110062468008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A265156 n)).toNat

end

end A279546.P6821357110062468008

/-! ## A279546.P14187502737964817675

`A007088(A265156(n)%(2^(n+1)))`
-/

namespace A279546.P14187502737964817675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A265156 n) (2 ^ (n + 1) : ℤ)).toNat

end

end A279546.P14187502737964817675

/-! ## A279546.P16540373032278006358

`A007088(and(A265156(n), A281482(n)))`
-/

namespace A279546.P16540373032278006358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A265156 n) (A281482 n)).toNat

end

end A279546.P16540373032278006358

/-! ## A279546.P14288126606970574603

`A007088(and(A265156(n), A283506(n)))`
-/

namespace A279546.P14288126606970574603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A265156 n) (A283506 n)).toNat

end

end A279546.P14288126606970574603

/-!
# A279547: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A279547, there is no canonical definition to state claims against.
-/

/-! ## A279547.P1941937829140220124

`floor(A265156(n)/A000079(n))`
-/

namespace A279547.P1941937829140220124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265156 n : ℚ) / (A000079 n : ℚ)⌋

end

end A279547.P1941937829140220124

/-! ## A279547.P13419102314218870790

`floor(A265156(n)/A051049(n))`
-/

namespace A279547.P13419102314218870790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265156 n : ℚ) / (A051049 n : ℚ)⌋

end

end A279547.P13419102314218870790

/-! ## A279547.P4740864110889049251

`floor(A265156(n)/∑[A011782(n)])`
-/

namespace A279547.P4740864110889049251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265156 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A279547.P4740864110889049251

/-! ## A279547.P9490552791603492837

`floor(A265156(n)/Δ[A000051(n)])`
-/

namespace A279547.P9490552791603492837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265156 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A279547.P9490552791603492837

/-! ## A279547.P16766379783956424110

`floor(A265156(n)/A011782(n+1))`
-/

namespace A279547.P16766379783956424110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265156 n : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A279547.P16766379783956424110

/-!
# A279548: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A279548, there is no canonical definition to state claims against.
-/

/-! ## A279548.P17612060355051247403

`and(∑[2^n], A265156(n))`
-/

namespace A279548.P17612060355051247403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A265156 n)

end

end A279548.P17612060355051247403

/-! ## A279548.P8416776524044578346

`and(A265156(n), A281482(n))`
-/

namespace A279548.P8416776524044578346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A281482 n)

end

end A279548.P8416776524044578346

/-! ## A279548.P1311459408598075416

`and(A265156(n), A283506(n))`
-/

namespace A279548.P1311459408598075416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A283506 n)

end

end A279548.P1311459408598075416

/-! ## A279548.P6942126608898723026

`and(A265156(n), A283523(n))`
-/

namespace A279548.P6942126608898723026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A283523 n)

end

end A279548.P6942126608898723026

/-! ## A279548.P14610910284694577169

`and(A265156(n), A284353(n))`
-/

namespace A279548.P14610910284694577169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A284353 n)

end

end A279548.P14610910284694577169

/-! ## A279548.P101027682590326641

`and(A265156(n), A284354(n))`
-/

namespace A279548.P101027682590326641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A284354 n)

end

end A279548.P101027682590326641

/-! ## A279548.P13589288224483985712

`and(A265156(n), A284405(n))`
-/

namespace A279548.P13589288224483985712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A284405 n)

end

end A279548.P13589288224483985712

/-! ## A279548.P3382166946699039556

`and(A265156(n), A284482(n))`
-/

namespace A279548.P3382166946699039556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A284482 n)

end

end A279548.P3382166946699039556

/-! ## A279548.P9166089374229120477

`and(A265156(n), A286521(n))`
-/

namespace A279548.P9166089374229120477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A286521 n)

end

end A279548.P9166089374229120477

/-! ## A279548.P13039941213623845215

`and(A265156(n), A289098(n))`
-/

namespace A279548.P13039941213623845215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A289098 n)

end

end A279548.P13039941213623845215

/-! ## A279548.P10261298547281238302

`and(A265156(n), A290073(n))`
-/

namespace A279548.P10261298547281238302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A290073 n)

end

end A279548.P10261298547281238302

/-! ## A279548.P2428750931170510751

`and(A265156(n), A290113(n))`
-/

namespace A279548.P2428750931170510751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A290113 n)

end

end A279548.P2428750931170510751

/-! ## A279548.P10359291398348586123

`and(A265156(n), A290682(n))`
-/

namespace A279548.P10359291398348586123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A290682 n)

end

end A279548.P10359291398348586123

/-! ## A279548.P18156293246893912037

`and(A265156(n), A290683(n))`
-/

namespace A279548.P18156293246893912037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265156 n) (A290683 n)

end

end A279548.P18156293246893912037

/-!
# A279550: Composite numbers m for which L(p(i)/p(j)) = -1 for all i, j, where p(k) are the prime factors of m and L(x/y) is the Legendre symbol of x and y, defined to be 1 if x is a quadratic residue (mod y) and -1 if x is a quadratic non-residue (mod y).

The programs for A279550, there is no canonical definition to state claims against.
-/

/-! ## A279550.P13270248428480691664

`A321649(A033485(n+1))+A248387(2*(n+2))`
-/

namespace A279550.P13270248428480691664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321649 (A033485 (n + 1)).toNat + A248387 (2 * (n + 2))

end

end A279550.P13270248428480691664

/-! ## A279550.P10071913794980452678

`A248387(2*(n+2))+A003989(A225816(2*(n+2)))`
-/

namespace A279550.P10071913794980452678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (2 * (n + 2)) + A003989 (A225816 (2 * (n + 2))).toNat

end

end A279550.P10071913794980452678

/-! ## A279550.P17453281344903565892

`A321649(A265821(n))+A248387(2*(n+2))`
-/

namespace A279550.P17453281344903565892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321649 (A265821 n).toNat + A248387 (2 * (n + 2))

end

end A279550.P17453281344903565892

/-! ## A279550.P11634401161052568770

`A356936(A068932(n+3))+A248387(2*(n+2))`
-/

namespace A279550.P11634401161052568770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356936 (A068932 (n + 3)).toNat + A248387 (2 * (n + 2))

end

end A279550.P11634401161052568770

/-! ## A279550.P8190433931735212310

`A248387(2*n+4)+A198067(A050024(n+5))`
-/

namespace A279550.P8190433931735212310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (2 * n + 4) + A198067 (A050024 (n + 5)).toNat

end

end A279550.P8190433931735212310

/-!
# A279551: Number of length n inversion sequences avoiding the patterns 000, 010, 110, and 120.

The programs for A279551, there is no canonical definition to state claims against.
-/

/-! ## A279551.P9195696400164486223

`A226762(A149892(n))`
-/

namespace A279551.P9195696400164486223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A149892 n).toNat

end

end A279551.P9195696400164486223

/-! ## A279551.P4178775263716220996

`A156562(A032203(n+1))`
-/

namespace A279551.P4178775263716220996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A032203 (n + 1)).toNat

end

end A279551.P4178775263716220996

/-! ## A279551.P100114593680985956

`A140343(n)+A001462(A000142(n))`
-/

namespace A279551.P100114593680985956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140343 n + A001462 (A000142 n).toNat

end

end A279551.P100114593680985956

/-! ## A279551.P1887375540434077943

`A035942(A292554(n))+A000085(n)`
-/

namespace A279551.P1887375540434077943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035942 (A292554 n).toNat + A000085 n

end

end A279551.P1887375540434077943

/-!
# A279552: Number of length n inversion sequences avoiding the patterns 000 and 010.

The programs for A279552, there is no canonical definition to state claims against.
-/

/-! ## A279552.P1692071091464038444

`A208237(n)-A002265(A263778(n))`
-/

namespace A279552.P1692071091464038444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208237 n - A002265 (A263778 n).toNat

end

end A279552.P1692071091464038444

/-!
# A279553: Number of length n inversion sequences avoiding the patterns 110, 210, 120, 201, and 010.

The programs for A279553, there is no canonical definition to state claims against.
-/

/-! ## A279553.P6589080528077312844

`∏{e}[7^n, A007853(#)]`
-/

namespace A279553.P6589080528077312844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007853 (Nat.factorization (f1 n) p)

end

end A279553.P6589080528077312844

/-! ## A279553.P17935224277884976341

`A007853(A002034(n!))`
-/

namespace A279553.P17935224277884976341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007853 (A002034 (Nat.factorial n)).toNat

end

end A279553.P17935224277884976341

/-! ## A279553.P4148051129628405196

`A124156(A000237(n+2))`
-/

namespace A279553.P4148051129628405196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124156 (A000237 (n + 2)).toNat

end

end A279553.P4148051129628405196

/-! ## A279553.P2417057194313155280

`A007853(A002034(A000142(n)))`
-/

namespace A279553.P2417057194313155280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007853 (A002034 (A000142 n).toNat).toNat

end

end A279553.P2417057194313155280

/-!
# A279554: Number of length n inversion sequences avoiding the patterns 010, 101, 120, 201, and 210.

The programs for A279554, there is no canonical definition to state claims against.
-/

/-! ## A279554.P3860185356624441984

`round(A183569(A151448(n))/4)`
-/

namespace A279554.P3860185356624441984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A183569 (A151448 n).toNat : ℚ) / 4)

end

end A279554.P3860185356624441984

/-! ## A279554.P9901077605174938105

`∑[A340941(n)%A114572(n)]`
-/

namespace A279554.P9901077605174938105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340941 n) (A114572 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279554.P9901077605174938105

/-! ## A279554.P9951832899450668961

`A008279(n)+A002265(A149967(n))`
-/

namespace A279554.P9951832899450668961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n + A002265 (A149967 n).toNat

end

end A279554.P9951832899450668961

/-! ## A279554.P9561674038751173294

`A181768(n)+A014082(A001096(n))`
-/

namespace A279554.P9561674038751173294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n + A014082 (A001096 n).toNat

end

end A279554.P9561674038751173294

/-!
# A279555: Number of length n inversion sequences avoiding the patterns 110, 210, 120, and 010.

The programs for A279555, there is no canonical definition to state claims against.
-/

/-! ## A279555.P2685628217489529803

`A279554(n)+A025442(A279571(n))`
-/

namespace A279555.P2685628217489529803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279554 n + A025442 (A279571 n).toNat

end

end A279555.P2685628217489529803

/-! ## A279555.P10507384710216118017

`A309785(A296122(n))+A124303(n)`
-/

namespace A279555.P10507384710216118017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A296122 n).toNat + A124303 n

end

end A279555.P10507384710216118017

/-! ## A279555.P7207081611978002983

`A279556(n)-A025442(A279571(n))`
-/

namespace A279555.P7207081611978002983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279556 n - A025442 (A279571 n).toNat

end

end A279555.P7207081611978002983

/-! ## A279555.P14407179944009340593

`A299968(n)-A220400(A279573(n))`
-/

namespace A279555.P14407179944009340593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299968 n - A220400 (A279573 n).toNat

end

end A279555.P14407179944009340593

/-!
# A279556: Number of length n inversion sequences avoiding the patterns 010, 110, and 120.

The programs for A279556, there is no canonical definition to state claims against.
-/

/-! ## A279556.P43115896671760456

`A299968(n)+A216602(A056273(n))`
-/

namespace A279556.P43115896671760456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299968 n + A216602 (A056273 n).toNat

end

end A279556.P43115896671760456

/-! ## A279556.P11581142873027701346

`A279555(n)+A025442(A279571(n))`
-/

namespace A279556.P11581142873027701346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279555 n + A025442 (A279571 n).toNat

end

end A279556.P11581142873027701346

/-! ## A279556.P4749215431590964291

`A299968(n)+A216602(A192855(n))`
-/

namespace A279556.P4749215431590964291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299968 n + A216602 (A192855 n).toNat

end

end A279556.P4749215431590964291

/-! ## A279556.P8368430748315081662

`A299968(n)+A216602(A287667(n))`
-/

namespace A279556.P8368430748315081662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299968 n + A216602 (A287667 n).toNat

end

end A279556.P8368430748315081662

/-!
# A279557: Number of length n inversion sequences avoiding the patterns 110, 120, and 021.

The programs for A279557, the canonical program `A279557.P14817192244775272998` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279557 has offset 0).

The definition of A279557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279557.P14817192244775272998

`∑[A099376(abs(1-n))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A279557

/-- `∑[A099376(abs(1-n))]` -/
def P14817192244775272998.Spec : Prop :=
  ∀ n, P14817192244775272998.a n = A279557 n

theorem P14817192244775272998.correct : P14817192244775272998.Spec := by
  intro n
  simp only [A279557]

end A279557

/-! ## A279557.P3975234659635622749

`abs(A104496(n+1))+1`
-/

namespace A279557.P3975234659635622749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 (n + 1)| + 1

end

end A279557.P3975234659635622749

namespace A279557

/-- `abs(A104496(n+1))+1` -/
def P3975234659635622749.Spec : Prop :=
  ∀ n, P3975234659635622749.a n = A279557 n

end A279557

/-! ## A279557.P3391184986466331209

`3-∑[A115143(n+2)]`
-/

namespace A279557.P3391184986466331209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279557.P3391184986466331209

namespace A279557

/-- `3-∑[A115143(n+2)]` -/
def P3391184986466331209.Spec : Prop :=
  ∀ n, P3391184986466331209.a n = A279557 n

end A279557

/-! ## A279557.P11687061378622758713

`A099376(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A279557.P11687061378622758713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099376 (n - 1) + a (n - 1)

end

end A279557.P11687061378622758713

namespace A279557

/-- `A099376(n-1)+a(n-1)` -/
def P11687061378622758713.Spec : Prop :=
  ∀ n, P11687061378622758713.a n = A279557 n

end A279557

/-! ## A279557.P8065586443564832495

`A002057(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A279557.P8065586443564832495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002057 (n - 2) + a (n - 1)

end

end A279557.P8065586443564832495

namespace A279557

/-- `A002057(n-2)+a(n-1)` -/
def P8065586443564832495.Spec : Prop :=
  ∀ n, P8065586443564832495.a n = A279557 n

end A279557

/-! ## A279557.P2905385094006908070

`A143955(n)+A000108(n)`
-/

namespace A279557.P2905385094006908070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n + A000108 n

end

end A279557.P2905385094006908070

namespace A279557

/-- `A143955(n)+A000108(n)` -/
def P2905385094006908070.Spec : Prop :=
  ∀ n, P2905385094006908070.a n = A279557 n

end A279557

/-! ## A279557.P3427192359530332473

`∑[A071724(n)]-A014138(n)`
-/

namespace A279557.P3427192359530332473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014138 n

end

end A279557.P3427192359530332473

namespace A279557

/-- `∑[A071724(n)]-A014138(n)` -/
def P3427192359530332473.Spec : Prop :=
  ∀ n, P3427192359530332473.a n = A279557 n

end A279557

/-! ## A279557.P12574437736736430590

`record[A097331(n)]-A014138(n)`
-/

namespace A279557.P12574437736736430590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A014138 n

end

end A279557.P12574437736736430590

namespace A279557

/-- `record[A097331(n)]-A014138(n)` -/
def P12574437736736430590.Spec : Prop :=
  ∀ n, P12574437736736430590.a n = A279557 n

end A279557

/-! ## A279557.P5559089148657730905

`record[A126120(n)]-A014138(n)`
-/

namespace A279557.P5559089148657730905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A014138 n

end

end A279557.P5559089148657730905

namespace A279557

/-- `record[A126120(n)]-A014138(n)` -/
def P5559089148657730905.Spec : Prop :=
  ∀ n, P5559089148657730905.a n = A279557 n

end A279557

/-! ## A279557.P4563248485325463257

`A000108(n+1)-A014138(n)`
-/

namespace A279557.P4563248485325463257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A014138 n

end

end A279557.P4563248485325463257

namespace A279557

/-- `A000108(n+1)-A014138(n)` -/
def P4563248485325463257.Spec : Prop :=
  ∀ n, P4563248485325463257.a n = A279557 n

end A279557

/-! ## A279557.P7598206449328728848

`A120588(n+2)-A014138(n)`
-/

namespace A279557.P7598206449328728848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2) - A014138 n

end

end A279557.P7598206449328728848

namespace A279557

/-- `A120588(n+2)-A014138(n)` -/
def P7598206449328728848.Spec : Prop :=
  ∀ n, P7598206449328728848.a n = A279557 n

end A279557

/-! ## A279557.P15752429912490379589

`∑[A071724(n)-A000108(n)]+1`
-/

namespace A279557.P15752429912490379589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A279557.P15752429912490379589

namespace A279557

/-- `∑[A071724(n)-A000108(n)]+1` -/
def P15752429912490379589.Spec : Prop :=
  ∀ n, P15752429912490379589.a n = A279557 n

end A279557

/-! ## A279557.P12984802340917571252

`∑[A000245(n)-A000108(n)]+2`
-/

namespace A279557.P12984802340917571252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A279557.P12984802340917571252

namespace A279557

/-- `∑[A000245(n)-A000108(n)]+2` -/
def P12984802340917571252.Spec : Prop :=
  ∀ n, P12984802340917571252.a n = A279557 n

end A279557

/-! ## A279557.P35119104254546327

`∑[A000245(n)]+2-A014137(n)`
-/

namespace A279557.P35119104254546327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A014137 n)

end

end A279557.P35119104254546327

namespace A279557

/-- `∑[A000245(n)]+2-A014137(n)` -/
def P35119104254546327.Spec : Prop :=
  ∀ n, P35119104254546327.a n = A279557 n

end A279557

/-! ## A279557.P12271808974042118266

`A000108(n+1)+1-A014137(n)`
-/

namespace A279557.P12271808974042118266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (1 - A014137 n)

end

end A279557.P12271808974042118266

namespace A279557

/-- `A000108(n+1)+1-A014137(n)` -/
def P12271808974042118266.Spec : Prop :=
  ∀ n, P12271808974042118266.a n = A279557 n

end A279557

/-! ## A279557.P1805593380360643057

`A028304(2*(n+1))-A014138(n)`
-/

namespace A279557.P1805593380360643057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * (n + 1)) - A014138 n

end

end A279557.P1805593380360643057

namespace A279557

/-- `A028304(2*(n+1))-A014138(n)` -/
def P1805593380360643057.Spec : Prop :=
  ∀ n, P1805593380360643057.a n = A279557 n

end A279557

/-! ## A279557.P10385271884424467360

`A089408(2*n+3)-A014138(n)`
-/

namespace A279557.P10385271884424467360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 3) - A014138 n

end

end A279557.P10385271884424467360

namespace A279557

/-- `A089408(2*n+3)-A014138(n)` -/
def P10385271884424467360.Spec : Prop :=
  ∀ n, P10385271884424467360.a n = A279557 n

end A279557

/-! ## A279557.P13987872492773754702

`A000108(n+1)+1-∑[A000108(n)]`
-/

namespace A279557.P13987872492773754702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279557.P13987872492773754702

namespace A279557

/-- `A000108(n+1)+1-∑[A000108(n)]` -/
def P13987872492773754702.Spec : Prop :=
  ∀ n, P13987872492773754702.a n = A279557 n

end A279557

/-! ## A279557.P11496010688020187882

`A000108(n+1)+2-A155587(n+1)`
-/

namespace A279557.P11496010688020187882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (2 - A155587 (n + 1))

end

end A279557.P11496010688020187882

namespace A279557

/-- `A000108(n+1)+2-A155587(n+1)` -/
def P11496010688020187882.Spec : Prop :=
  ∀ n, P11496010688020187882.a n = A279557 n

end A279557

/-! ## A279557.P8332897601614108913

`A028304(2*(n+1))+1-A014137(n)`
-/

namespace A279557.P8332897601614108913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * (n + 1)) + 1 - A014137 n

end

end A279557.P8332897601614108913

namespace A279557

/-- `A028304(2*(n+1))+1-A014137(n)` -/
def P8332897601614108913.Spec : Prop :=
  ∀ n, P8332897601614108913.a n = A279557 n

end A279557

/-!
# A279558: Number of length n inversion sequences avoiding the patterns 010, 120, and 210.

The programs for A279558, there is no canonical definition to state claims against.
-/

/-! ## A279558.P9487622752010623348

`A202062(n)-A025442(A279571(n))`
-/

namespace A279558.P9487622752010623348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202062 n - A025442 (A279571 n).toNat

end

end A279558.P9487622752010623348

/-! ## A279558.P12987478855351385974

`A000110(n)-A193451(A309210(n+1))`
-/

namespace A279558.P12987478855351385974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A193451 (A309210 (n + 1)).toNat

end

end A279558.P12987478855351385974

/-! ## A279558.P8740599670123398704

`A039708(A109033(n))`
-/

namespace A279558.P8740599670123398704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A109033 n).toNat

end

end A279558.P8740599670123398704

/-!
# A279559: Number of length n inversion sequences avoiding the patterns 010 and 120.

The programs for A279559, there is no canonical definition to state claims against.
-/

/-! ## A279559.P9544229097320455259

`A004277(A287666(n))-A287668(n)`
-/

namespace A279559.P9544229097320455259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A287666 n).toNat - A287668 n

end

end A279559.P9544229097320455259

/-! ## A279559.P3679677511289353736

`A202062(n)+A029905(A025597(n))`
-/

namespace A279559.P3679677511289353736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202062 n + A029905 (A025597 n).toNat

end

end A279559.P3679677511289353736

/-! ## A279559.P7717959435924343551

`A202062(n)+A107846(A001791(n))`
-/

namespace A279559.P7717959435924343551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202062 n + A107846 (A001791 n).toNat

end

end A279559.P7717959435924343551

/-! ## A279559.P7369266093302039842

`A202062(n)+A107846(A020092(n))`
-/

namespace A279559.P7369266093302039842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202062 n + A107846 (A020092 n).toNat

end

end A279559.P7369266093302039842

/-!
# A279560: Number of length n inversion sequences avoiding the patterns 100, 210, 201, and 102.

The programs for A279560, there is no canonical definition to state claims against.
-/

/-! ## A279560.P8357810623965298995

`A032741(A195210(n))+A006027(n+1)`
-/

namespace A279560.P8357810623965298995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A195210 n).toNat + A006027 (n + 1)

end

end A279560.P8357810623965298995

/-! ## A279560.P11966091374193372122

`ceil(sqrt(A090752((1-n)²+n)))`
-/

namespace A279560.P11966091374193372122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A090752 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat : ℝ)⌉

end

end A279560.P11966091374193372122

/-! ## A279560.P3483963565129594218

`A210380(A148165(n))`
-/

namespace A279560.P3483963565129594218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210380 (A148165 n).toNat

end

end A279560.P3483963565129594218

/-!
# A279561: Number of length n inversion sequences avoiding the patterns 101, 102, 201, and 210.

The programs for A279561, the canonical program `A279561.P4289259103180755608` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279561 has offset 0).

The definition of A279561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279561.P4289259103180755608

`∑[A001791(abs(1-n))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A279561

/-- `∑[A001791(abs(1-n))]` -/
def P4289259103180755608.Spec : Prop :=
  ∀ n, P4289259103180755608.a n = A279561 n

theorem P4289259103180755608.correct : P4289259103180755608.Spec := by
  intro n
  simp only [A279561]

end A279561

/-! ## A279561.P12748869435092884828

`∑[(1-n)*A115140(n)]`
-/

namespace A279561.P12748869435092884828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P12748869435092884828

namespace A279561

/-- `∑[(1-n)*A115140(n)]` -/
def P12748869435092884828.Spec : Prop :=
  ∀ n, P12748869435092884828.a n = A279561 n

end A279561

/-! ## A279561.P16309497974795749821

`∑[(1-n)*A115141(n)]`
-/

namespace A279561.P16309497974795749821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A115141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P16309497974795749821

namespace A279561

/-- `∑[(1-n)*A115141(n)]` -/
def P16309497974795749821.Spec : Prop :=
  ∀ n, P16309497974795749821.a n = A279561 n

end A279561

/-! ## A279561.P7305070629618697656

`∑[(1-n)*A246432(n)]`
-/

namespace A279561.P7305070629618697656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A246432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P7305070629618697656

namespace A279561

/-- `∑[(1-n)*A246432(n)]` -/
def P7305070629618697656.Spec : Prop :=
  ∀ n, P7305070629618697656.a n = A279561 n

end A279561

/-! ## A279561.P6302474187803958921

`∑[A037955(abs(2*(1-n)))]`
-/

namespace A279561.P6302474187803958921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P6302474187803958921

namespace A279561

/-- `∑[A037955(abs(2*(1-n)))]` -/
def P6302474187803958921.Spec : Prop :=
  ∀ n, P6302474187803958921.a n = A279561 n

end A279561

/-! ## A279561.P17020616944336575036

`∑[abs(1-n)*A120588(n)]`
-/

namespace A279561.P17020616944336575036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P17020616944336575036

namespace A279561

/-- `∑[abs(1-n)*A120588(n)]` -/
def P17020616944336575036.Spec : Prop :=
  ∀ n, P17020616944336575036.a n = A279561 n

end A279561

/-! ## A279561.P14819272507222743279

`A001791(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A279561.P14819272507222743279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001791 (n - 1) + a (n - 1)

end

end A279561.P14819272507222743279

namespace A279561

/-- `A001791(n-1)+a(n-1)` -/
def P14819272507222743279.Spec : Prop :=
  ∀ n, P14819272507222743279.a n = A279561 n

end A279561

/-! ## A279561.P12677907774580410880

`∑[A037952(abs(3*n-(n+2)))]`
-/

namespace A279561.P12677907774580410880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 |(3 * n : ℤ) - (n + 2 : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P12677907774580410880

namespace A279561

/-- `∑[A037952(abs(3*n-(n+2)))]` -/
def P12677907774580410880.Spec : Prop :=
  ∀ n, P12677907774580410880.a n = A279561 n

end A279561

/-! ## A279561.P16496834069593725247

`∑[abs(1-n)*A000108(abs(1-n))]`
-/

namespace A279561.P16496834069593725247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A000108 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P16496834069593725247

namespace A279561

/-- `∑[abs(1-n)*A000108(abs(1-n))]` -/
def P16496834069593725247.Spec : Prop :=
  ∀ n, P16496834069593725247.a n = A279561 n

end A279561

/-! ## A279561.P4583502161794714259

`a(n-1)+(n-1)*A000108(n-1)` with `a(0)=1`
-/

namespace A279561.P4583502161794714259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * A000108 (n - 1)

end

end A279561.P4583502161794714259

namespace A279561

/-- `a(n-1)+(n-1)*A000108(n-1)` -/
def P4583502161794714259.Spec : Prop :=
  ∀ n, P4583502161794714259.a n = A279561 n

end A279561

/-! ## A279561.P8554566721011478084

`A191790(A163985(n))+1`
-/

namespace A279561.P8554566721011478084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (A163985 n).toNat + 1

end

end A279561.P8554566721011478084

namespace A279561

/-- `A191790(A163985(n))+1` -/
def P8554566721011478084.Spec : Prop :=
  ∀ n, P8554566721011478084.a n = A279561 n

end A279561

/-! ## A279561.P13513942336088069232

`A332754(A004278(n+2))`
-/

namespace A279561.P13513942336088069232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (A004278 (n + 2)).toNat

end

end A279561.P13513942336088069232

namespace A279561

/-- `A332754(A004278(n+2))` -/
def P13513942336088069232.Spec : Prop :=
  ∀ n, P13513942336088069232.a n = A279561 n

end A279561

/-! ## A279561.P5107423051306252333

`A332754(A300576(n+2))`
-/

namespace A279561.P5107423051306252333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (A300576 (n + 2)).toNat

end

end A279561.P5107423051306252333

namespace A279561

/-- `A332754(A300576(n+2))` -/
def P5107423051306252333.Spec : Prop :=
  ∀ n, P5107423051306252333.a n = A279561 n

end A279561

/-! ## A279561.P10514839898759791783

`A371964(n+1)+A000108(n)`
-/

namespace A279561.P10514839898759791783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371964 (n + 1) + A000108 n

end

end A279561.P10514839898759791783

namespace A279561

/-- `A371964(n+1)+A000108(n)` -/
def P10514839898759791783.Spec : Prop :=
  ∀ n, P10514839898759791783.a n = A279561 n

end A279561

/-! ## A279561.P13306876269326038686

`(A281593(n)+1)/2`
-/

namespace A279561.P13306876269326038686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281593 n + 1 : ℚ) / 2

end

end A279561.P13306876269326038686

namespace A279561

/-- `(A281593(n)+1)/2` -/
def P13306876269326038686.Spec : Prop :=
  ∀ n, P13306876269326038686.a n = (A279561 n : ℚ)

end A279561

/-! ## A279561.P3867574539237220357

`∑[A260878(n)-A323230(n)]`
-/

namespace A279561.P3867574539237220357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n - A323230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P3867574539237220357

namespace A279561

/-- `∑[A260878(n)-A323230(n)]` -/
def P3867574539237220357.Spec : Prop :=
  ∀ n, P3867574539237220357.a n = A279561 n

end A279561

/-! ## A279561.P15690168331941753399

`A024718(n)-A100066(2*n)`
-/

namespace A279561.P15690168331941753399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - A100066 (2 * n)

end

end A279561.P15690168331941753399

namespace A279561

/-- `A024718(n)-A100066(2*n)` -/
def P15690168331941753399.Spec : Prop :=
  ∀ n, P15690168331941753399.a n = A279561 n

end A279561

/-! ## A279561.P5501337527312898721

`A000984(n)-A191790(2*n)`
-/

namespace A279561.P5501337527312898721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A191790 (2 * n)

end

end A279561.P5501337527312898721

namespace A279561

/-- `A000984(n)-A191790(2*n)` -/
def P5501337527312898721.Spec : Prop :=
  ∀ n, P5501337527312898721.a n = A279561 n

end A279561

/-! ## A279561.P9609814331414974191

`∑[A001791(n)]+1-A001791(n)`
-/

namespace A279561.P9609814331414974191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A001791 n)

end

end A279561.P9609814331414974191

namespace A279561

/-- `∑[A001791(n)]+1-A001791(n)` -/
def P9609814331414974191.Spec : Prop :=
  ∀ n, P9609814331414974191.a n = A279561 n

end A279561

/-! ## A279561.P8675775509633794554

`A323230(n+1)-∑[A088218(n)]`
-/

namespace A279561.P8675775509633794554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279561.P8675775509633794554

namespace A279561

/-- `A323230(n+1)-∑[A088218(n)]` -/
def P8675775509633794554.Spec : Prop :=
  ∀ n, P8675775509633794554.a n = A279561 n

end A279561

/-!
# A279562: Number of length n inversion sequences avoiding the patterns 100, 102, and 201.

The programs for A279562, there is no canonical definition to state claims against.
-/

/-! ## A279562.P17964861241646285853

`A254316(n)+A184955(2*n+1)`
-/

namespace A279562.P17964861241646285853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254316 n + A184955 (2 * n + 1)

end

end A279562.P17964861241646285853

/-! ## A279562.P12871666899123048685

`A254316(n)+A083894(A102736(n))`
-/

namespace A279562.P12871666899123048685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254316 n + A083894 (A102736 n).toNat

end

end A279562.P12871666899123048685

/-! ## A279562.P3973824861936200356

`A052879(n)-A072273(A003659(n+1))`
-/

namespace A279562.P3973824861936200356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052879 n - A072273 (A003659 (n + 1)).toNat

end

end A279562.P3973824861936200356

/-! ## A279562.P11978695302183804721

`A254316(n)+A055999(A337889(n+2))`
-/

namespace A279562.P11978695302183804721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254316 n + A055999 (A337889 (n + 2)).toNat

end

end A279562.P11978695302183804721

/-!
# A279563: Number of length n inversion sequences avoiding the patterns 102, 201, and 210.

The programs for A279563, the canonical program `A279563.P2925378631213152026` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279563 has offset 0).

The definition of A279563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279563.P2925378631213152026

`1-n+n*A166588(2*n)-A000225(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A279563

/-- `1-n+n*A166588(2*n)-A000225(n)` -/
def P2925378631213152026.Spec : Prop :=
  ∀ n, P2925378631213152026.a n = A279563 n

theorem P2925378631213152026.correct : P2925378631213152026.Spec := by
  intro n
  simp only [A279563]

end A279563

/-! ## A279563.P9596571804479584031

`A351363(n+2)+A194285(A000142(n))`
-/

namespace A279563.P9596571804479584031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351363 (n + 2) + A194285 (A000142 n).toNat

end

end A279563.P9596571804479584031

namespace A279563

/-- `A351363(n+2)+A194285(A000142(n))` -/
def P9596571804479584031.Spec : Prop :=
  ∀ n, P9596571804479584031.a n = A279563 n

end A279563

/-! ## A279563.P16378438848793463415

`A351363(n+2)+A273943(A042055(n))`
-/

namespace A279563.P16378438848793463415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351363 (n + 2) + A273943 (A042055 n).toNat

end

end A279563.P16378438848793463415

namespace A279563

/-- `A351363(n+2)+A273943(A042055(n))` -/
def P16378438848793463415.Spec : Prop :=
  ∀ n, P16378438848793463415.a n = A279563 n

end A279563

/-!
# A279564: Number of length n inversion sequences avoiding the patterns 000 and 100.

The programs for A279564, there is no canonical definition to state claims against.
-/

/-! ## A279564.P7165074810889081279

`A210668(n)+A025459(A212418(n))`
-/

namespace A279564.P7165074810889081279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210668 n + A025459 (A212418 n).toNat

end

end A279564.P7165074810889081279

/-! ## A279564.P15044925632465409330

`A210668(n)+A184954(A184954(n))`
-/

namespace A279564.P15044925632465409330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210668 n + A184954 (A184954 n).toNat

end

end A279564.P15044925632465409330

/-! ## A279564.P153117048098491511

`A220400(A279573(n))+A210668(n)`
-/

namespace A279564.P153117048098491511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A279573 n).toNat + A210668 n

end

end A279564.P153117048098491511

/-! ## A279564.P6754719432684973016

`xor(A124482(A000930(n)), A210668(n))`
-/

namespace A279564.P6754719432684973016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124482 (A000930 n).toNat) (A210668 n)

end

end A279564.P6754719432684973016

/-!
# A279565: Number of length n inversion sequences avoiding the patterns 100, 110, 120, 201, and 210.

The programs for A279565, there is no canonical definition to state claims against.
-/

/-! ## A279565.P7123284404171645187

`A008621(A150201(n)+A005253(n))`
-/

namespace A279565.P7123284404171645187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A150201 n + A005253 n).toNat

end

end A279565.P7123284404171645187

/-! ## A279565.P9323959071249391183

`A008621(A150201(n)+A036657(n))`
-/

namespace A279565.P9323959071249391183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A150201 n + A036657 n).toNat

end

end A279565.P9323959071249391183

/-! ## A279565.P15730895877713821025

`A149298(n)-A004526(A149312(n))`
-/

namespace A279565.P15730895877713821025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149298 n - A004526 (A149312 n).toNat

end

end A279565.P15730895877713821025

/-!
# A279566: Number of length n inversion sequences avoiding the patterns 102 and 201.

The programs for A279566, there is no canonical definition to state claims against.
-/

/-! ## A279566.P3562353642822619289

`xor(A164651(n), A185255(A049885(n+1)))`
-/

namespace A279566.P3562353642822619289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A164651 n) (A185255 (A049885 (n + 1)).toNat)

end

end A279566.P3562353642822619289

/-! ## A279566.P8392755724519165199

`A070000(A100192(n))`
-/

namespace A279566.P8392755724519165199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A100192 n).toNat

end

end A279566.P8392755724519165199

/-! ## A279566.P4211144501388033758

`A076885(A150181(n))`
-/

namespace A279566.P4211144501388033758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A150181 n).toNat

end

end A279566.P4211144501388033758

/-!
# A279567: Number of length n inversion sequences avoiding the patterns 100, 110, 120, and 210.

The programs for A279567, there is no canonical definition to state claims against.
-/

/-! ## A279567.P14069425090566741987

`A076885(A083691(n))`
-/

namespace A279567.P14069425090566741987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A083691 n).toNat

end

end A279567.P14069425090566741987

/-! ## A279567.P16064186980028621941

`A049317(A150246(n))`
-/

namespace A279567.P16064186980028621941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (A150246 n).toNat

end

end A279567.P16064186980028621941

/-! ## A279567.P2980176894212499786

`A062108(A325316(n!))`
-/

namespace A279567.P2980176894212499786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A325316 (Nat.factorial n)).toNat

end

end A279567.P2980176894212499786

/-!
# A279568: Number of length n inversion sequences avoiding the patterns 110, 120, 201, and 210.

The programs for A279568, there is no canonical definition to state claims against.
-/

/-! ## A279568.P7619410222242516413

`A053617(n)-A184955(2*n+1)`
-/

namespace A279568.P7619410222242516413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053617 n - A184955 (2 * n + 1)

end

end A279568.P7619410222242516413

/-! ## A279568.P15768992073941868045

`A053617(n)-A048728(A048742(n))`
-/

namespace A279568.P15768992073941868045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053617 n - A048728 (A048742 n).toNat

end

end A279568.P15768992073941868045

/-! ## A279568.P11331434514687518925

`A053617(n)-A083894(A102736(n))`
-/

namespace A279568.P11331434514687518925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053617 n - A083894 (A102736 n).toNat

end

end A279568.P11331434514687518925

/-! ## A279568.P9102260903086938397

`A264601(n)-A285014(A020711(n))`
-/

namespace A279568.P9102260903086938397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264601 n - A285014 (A020711 n).toNat

end

end A279568.P9102260903086938397

/-!
# A279569: Number of length n inversion sequences avoiding the patterns 110, 120, and 210.

The programs for A279569, there is no canonical definition to state claims against.
-/

/-! ## A279569.P4051539203978977098

`A004525(A279568(n)+A001181(n))`
-/

namespace A279569.P4051539203978977098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A279568 n + A001181 n).toNat

end

end A279569.P4051539203978977098

/-! ## A279569.P4250750745440221346

`A123108(A279568(n)+A001181(n))`
-/

namespace A279569.P4250750745440221346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A279568 n + A001181 n).toNat

end

end A279569.P4250750745440221346

/-! ## A279569.P4544492843304594934

`char[6]+floor(A231494(n+1)/2^n)`
-/

namespace A279569.P4544492843304594934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊(A231494 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A279569.P4544492843304594934

/-!
# A279570: Number of length n inversion sequences avoiding the patterns 110 and 120.

The programs for A279570, there is no canonical definition to state claims against.
-/

/-! ## A279570.P3388561106877094717

`A279571(n)-A316656(A185645(n+1))`
-/

namespace A279570.P3388561106877094717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279571 n - A316656 (A185645 (n + 1)).toNat

end

end A279570.P3388561106877094717

/-! ## A279570.P13422870093212208755

`A338748(A037336(n+1))-A281988(n+1)`
-/

namespace A279570.P13422870093212208755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338748 (A037336 (n + 1)).toNat - A281988 (n + 1)

end

end A279570.P13422870093212208755

/-! ## A279570.P576211505328086635

`A276798(A150783(n))`
-/

namespace A279570.P576211505328086635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150783 n).toNat

end

end A279570.P576211505328086635

/-!
# A279571: Number of length n inversion sequences avoiding the patterns 100, 101, and 201.

The programs for A279571, there is no canonical definition to state claims against.
-/

/-! ## A279571.P13269289282274228259

`A225294(n)-A185036(A006355(n))`
-/

namespace A279571.P13269289282274228259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225294 n - A185036 (A006355 n).toNat

end

end A279571.P13269289282274228259

/-! ## A279571.P2096445642537375498

`A074664(n+1)-A079433(A068041(n))`
-/

namespace A279571.P2096445642537375498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (n + 1) - A079433 (A068041 n).toNat

end

end A279571.P2096445642537375498

/-! ## A279571.P5110883774307293692

`A004277(A001181(n))-A264868(n+1)`
-/

namespace A279571.P5110883774307293692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001181 n).toNat - A264868 (n + 1)

end

end A279571.P5110883774307293692

/-! ## A279571.P1829581887403989902

`A225294(n)-A118096(A309863(n+3))`
-/

namespace A279571.P1829581887403989902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225294 n - A118096 (A309863 (n + 3)).toNat

end

end A279571.P1829581887403989902

/-!
# A279572: Number of length n inversion sequences avoiding the patterns 120, 201, and 210.

The programs for A279572, there is no canonical definition to state claims against.
-/

/-! ## A279572.P6482603632876635924

`A022558(n)-A351977(A332345(n))`
-/

namespace A279572.P6482603632876635924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n - A351977 (A332345 n).toNat

end

end A279572.P6482603632876635924

/-! ## A279572.P17898065385071215959

`A332954(A216818(n+4))+A120038(2*(n+1))`
-/

namespace A279572.P17898065385071215959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 (A216818 (n + 4)).toNat + A120038 (2 * (n + 1))

end

end A279572.P17898065385071215959

/-!
# A279573: Number of length n inversion sequences avoiding the patterns 120 and 210.

The programs for A279573, there is no canonical definition to state claims against.
-/

/-! ## A279573.P2094162960026376314

`A098746(n)+A007949(A111088(n))`
-/

namespace A279573.P2094162960026376314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 n + A007949 (A111088 n).toNat

end

end A279573.P2094162960026376314

/-! ## A279573.P18010971882432218099

`A374550(n)+A129251(A084480(n))`
-/

namespace A279573.P18010971882432218099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374550 n + A129251 (A084480 n).toNat

end

end A279573.P18010971882432218099

/-! ## A279573.P16445866699499187884

`A374550(n)+A170956(A151920(n))`
-/

namespace A279573.P16445866699499187884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374550 n + A170956 (A151920 n).toNat

end

end A279573.P16445866699499187884

/-!
# A279574: Number of n X 2 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279574, the canonical program `A279574.P12593372951877447246` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279574 has offset 1).

The definition of A279574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279574.P12593372951877447246

`A279322(2*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A279574

/-- `A279322(2*(n+1))` -/
def P12593372951877447246.Spec : Prop :=
  ∀ n, P12593372951877447246.a n = A279574 (n + 1)

theorem P12593372951877447246.correct : P12593372951877447246.Spec := by
  intro n
  simp only [A279574, Nat.add_sub_cancel]

end A279574

/-! ## A279574.P12785298415177101187

`record[lcm(n%2, A279322(n+1))]`
-/

namespace A279574.P12785298415177101187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 : ℕ) : ℤ) (A279322 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279574.P12785298415177101187

namespace A279574

/-- `record[lcm(n%2, A279322(n+1))]` -/
def P12785298415177101187.Spec : Prop :=
  ∀ n, (P12785298415177101187.a n : ℤ) = A279574 (n + 1)

end A279574

/-! ## A279574.P14770299223587612691

`and(-n, A279322(A103517(n)))`
-/

namespace A279574.P14770299223587612691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (A279322 (A103517 n).toNat)

end

end A279574.P14770299223587612691

namespace A279574

/-- `and(-n, A279322(A103517(n)))` -/
def P14770299223587612691.Spec : Prop :=
  ∀ n, P14770299223587612691.a n = A279574 (n + 1)

end A279574

/-! ## A279574.P7790513076820347652

`record[A279322(n+2)/A033999(n)]`
-/

namespace A279574.P7790513076820347652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279322 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279574.P7790513076820347652

namespace A279574

/-- `record[A279322(n+2)/A033999(n)]` -/
def P7790513076820347652.Spec : Prop :=
  ∀ n, P7790513076820347652.a n = (A279574 (n + 1) : ℚ)

end A279574

/-! ## A279574.P14830309782341463279

`record[and(A033999(n), A279322(n+1))]`
-/

namespace A279574.P14830309782341463279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A279322 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279574.P14830309782341463279

namespace A279574

/-- `record[and(A033999(n), A279322(n+1))]` -/
def P14830309782341463279.Spec : Prop :=
  ∀ n, P14830309782341463279.a n = A279574 (n + 1)

end A279574

/-! ## A279574.P13924967295591272288

`A279322(A103517(n))+and(1, A279322(n+1))`
-/

namespace A279574.P13924967295591272288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279322 (A103517 n).toNat + Int.land 1 (A279322 (n + 1))

end

end A279574.P13924967295591272288

namespace A279574

/-- `A279322(A103517(n))+and(1, A279322(n+1))` -/
def P13924967295591272288.Spec : Prop :=
  ∀ n, P13924967295591272288.a n = A279574 (n + 1)

end A279574

/-! ## A279574.P4290453429449829368

`16*a(n-1)-72*a(n-2)+64*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=4, a(2)=40, a(3)=352`
-/

namespace A279574.P4290453429449829368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 40, 352] fun n a =>
  16 * a (n - 1) - 72 * a (n - 2) + 64 * a (n - 3) - 16 * a (n - 4)

end

end A279574.P4290453429449829368

namespace A279574

/-- `16*a(n-1)-72*a(n-2)+64*a(n-3)-16*a(n-4)` -/
def P4290453429449829368.Spec : Prop :=
  ∀ n, P4290453429449829368.a n = A279574 (n + 1)

end A279574

/-!
# A279575: Number of n X 3 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279575, there is no canonical definition to state claims against.
-/

/-! ## A279575.P932797553033334249

`A279580(∑[n+3]+1)`
-/

namespace A279575.P932797553033334249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279575.P932797553033334249

/-! ## A279575.P10571958941003018123

`lcm(2, A279580(Δ[A008778(n)]))`
-/

namespace A279575.P10571958941003018123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279580 (f1 (n + 1) - f1 n).toNat)

end

end A279575.P10571958941003018123

/-! ## A279575.P3598504928447884766

`record[Δ[A279580(A130297(n+1))]]`
-/

namespace A279575.P3598504928447884766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A130297 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279575.P3598504928447884766

/-! ## A279575.P16842974867683982595

`record[gcd(A279580(n+1), A328610(n+1))]`
-/

namespace A279575.P16842974867683982595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A279580 (n + 1)) (A328610 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279575.P16842974867683982595

/-!
# A279576: Number of nX4 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279576, there is no canonical definition to state claims against.
-/

/-! ## A279576.P1186195809848920993

`A279580(A141214(n+1))`
-/

namespace A279576.P1186195809848920993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A141214 (n + 1)).toNat

end

end A279576.P1186195809848920993

/-! ## A279576.P2704025911919089458

`A279580(A155212(n)+5)`
-/

namespace A279576.P2704025911919089458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A155212 n + 5).toNat

end

end A279576.P2704025911919089458

/-! ## A279576.P7663629955226905978

`A279580(A056000(n)+7)`
-/

namespace A279576.P7663629955226905978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A056000 n + 7).toNat

end

end A279576.P7663629955226905978

/-! ## A279576.P10064296434455726345

`A279580(eq[3, A193592(n)])`
-/

namespace A279576.P10064296434455726345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279576.P10064296434455726345

/-! ## A279576.P9477743858536492105

`A279580(Δ[A034857(n+1)])`
-/

namespace A279576.P9477743858536492105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (f1 (n + 1) - f1 n).toNat

end

end A279576.P9477743858536492105

/-!
# A279577: Number of n X 5 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279577, there is no canonical definition to state claims against.
-/

/-! ## A279577.P10077129742278576674

`A279580(Δ[A264443(n)])`
-/

namespace A279577.P10077129742278576674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (f1 (n + 1) - f1 n).toNat

end

end A279577.P10077129742278576674

/-! ## A279577.P9276801370320065406

`A279580(eq[4, A193592(n)])`
-/

namespace A279577.P9276801370320065406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279577.P9276801370320065406

/-! ## A279577.P14374954929335814884

`A279580(Δ[A023545(n+1)])`
-/

namespace A279577.P14374954929335814884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (f1 (n + 1) - f1 n).toNat

end

end A279577.P14374954929335814884

/-! ## A279577.P6458779768984745970

`A279580(A141214(n+2)-1)`
-/

namespace A279577.P6458779768984745970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A141214 (n + 2) - 1).toNat

end

end A279577.P6458779768984745970

/-! ## A279577.P16463311820272149979

`A279580(eq[6, A185782(n+1)])`
-/

namespace A279577.P16463311820272149979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279577.P16463311820272149979

/-!
# A279578: Number of nX6 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279578, there is no canonical definition to state claims against.
-/

/-! ## A279578.P5096565002996191509

`A279580(eq[3, A219347(n)])`
-/

namespace A279578.P5096565002996191509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279578.P5096565002996191509

/-! ## A279578.P10726772647244652048

`A279580(eq[5, A193592(n)])`
-/

namespace A279578.P10726772647244652048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279578.P10726772647244652048

/-! ## A279578.P8033660105485938888

`A279580(A027379(n+4)-2)`
-/

namespace A279578.P8033660105485938888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A027379 (n + 4) - 2).toNat

end

end A279578.P8033660105485938888

/-! ## A279578.P6887997472795751686

`A279580(eq[8, A243070(n+1)])`
-/

namespace A279578.P6887997472795751686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279578.P6887997472795751686

/-!
# A279579: Number of nX7 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279579, there is no canonical definition to state claims against.
-/

/-! ## A279579.P4717645249927133027

`A279580(eq[4, A219347(n)])`
-/

namespace A279579.P4717645249927133027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279579.P4717645249927133027

/-! ## A279579.P1788121166266156727

`A279580(eq[6, A193592(n)])`
-/

namespace A279579.P1788121166266156727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279579.P1788121166266156727

/-!
# A279580: T(n,k)=Number of nXk 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279580, there is no canonical definition to state claims against.
-/

/-! ## A279580.P7165088810864031922

`and(∑[A000065(n)], A162694(n+4))`
-/

namespace A279580.P7165088810864031922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A162694 (n + 4))

end

end A279580.P7165088810864031922

/-! ## A279580.P11073383197437653453

`A004524(n)*A350272(C(n, floor(n/3)))`
-/

namespace A279580.P11073383197437653453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n * A350272 (Nat.choose n ⌊(n : ℚ) / 3⌋.toNat)

end

end A279580.P11073383197437653453

/-! ## A279580.P16469887166971792379

`A000005(A242985(n))%A007839(n)`
-/

namespace A279580.P16469887166971792379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A242985 n).toNat) (A007839 n)

end

end A279580.P16469887166971792379

/-! ## A279580.P13635832401898657664

`A103517(A149009(n))%A122391(n)`
-/

namespace A279580.P13635832401898657664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103517 (A149009 n).toNat) (A122391 n)

end

end A279580.P13635832401898657664

/-! ## A279580.P1544994117872433908

`A219175(A000108(n)*A037445(n+1))`
-/

namespace A279580.P1544994117872433908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219175 (A000108 n * A037445 (n + 1)).toNat

end

end A279580.P1544994117872433908

/-!
# A279581: Number of 2 X n 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279581, there is no canonical definition to state claims against.
-/

/-! ## A279581.P12313129316107265817

`A279580(∑[n+1]+2)`
-/

namespace A279581.P12313129316107265817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279581.P12313129316107265817

/-! ## A279581.P12772876109535200886

`A279580(A022856(n+5))%A085260(n+1)`
-/

namespace A279581.P12772876109535200886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279580 (A022856 (n + 5)).toNat) (A085260 (n + 1))

end

end A279581.P12772876109535200886

/-! ## A279581.P10092653755902366457

`record[A279580(A133263(∑{e}[n, #]))]`
-/

namespace A279581.P10092653755902366457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279581.P10092653755902366457

/-!
# A279582: Number of 3Xn 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279582, there is no canonical definition to state claims against.
-/

/-! ## A279582.P8370058834337945258

`A279580(∑[n+2]+4)`
-/

namespace A279582.P8370058834337945258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279582.P8370058834337945258

/-! ## A279582.P8332917487860234365

`lcm(2, A279580(A167614(n+1)))`
-/

namespace A279582.P8332917487860234365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279580 (A167614 (n + 1)).toNat)

end

end A279582.P8332917487860234365

/-! ## A279582.P10663603541785464464

`A279580(A167614(n+1))+A014083(n)`
-/

namespace A279582.P10663603541785464464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A167614 (n + 1)).toNat + A014083 n

end

end A279582.P10663603541785464464

/-! ## A279582.P13662158365037720835

`A279580(A167614(n+1))+A025444(n)`
-/

namespace A279582.P13662158365037720835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A167614 (n + 1)).toNat + A025444 n

end

end A279582.P13662158365037720835

/-! ## A279582.P11561791137363392980

`A279580(A167614(n+1))+A105516(n)`
-/

namespace A279582.P11561791137363392980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A167614 (n + 1)).toNat + A105516 n

end

end A279582.P11561791137363392980

/-!
# A279583: Number of 4Xn 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279583, there is no canonical definition to state claims against.
-/

/-! ## A279583.P14632639784411215717

`A279580(A141214(n)+7)`
-/

namespace A279583.P14632639784411215717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A141214 n + 7).toNat

end

end A279583.P14632639784411215717

/-! ## A279583.P3508776626991696702

`A279580(A052905(n)+9)`
-/

namespace A279583.P3508776626991696702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A052905 n + 9).toNat

end

end A279583.P3508776626991696702

/-! ## A279583.P3525496046017754932

`A279580(A055999(n)+10)`
-/

namespace A279583.P3525496046017754932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A055999 n + 10).toNat

end

end A279583.P3525496046017754932

/-! ## A279583.P12392258867700729507

`A279580(A167614(n+2)+1)`
-/

namespace A279583.P12392258867700729507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A167614 (n + 2) + 1).toNat

end

end A279583.P12392258867700729507

/-! ## A279583.P12734260128375646276

`A279580(eq[5, A131818(n+1)])`
-/

namespace A279583.P12734260128375646276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279583.P12734260128375646276

/-!
# A279584: Number of 5Xn 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279584, there is no canonical definition to state claims against.
-/

/-! ## A279584.P8939118365068925257

`A279580(A167499(n+3))`
-/

namespace A279584.P8939118365068925257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A167499 (n + 3)).toNat

end

end A279584.P8939118365068925257

/-! ## A279584.P11780158579826449204

`A279580(A155212(n)+13)`
-/

namespace A279584.P11780158579826449204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A155212 n + 13).toNat

end

end A279584.P11780158579826449204

/-! ## A279584.P3889483474011095116

`A279580(A056000(n)+15)`
-/

namespace A279584.P3889483474011095116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (A056000 n + 15).toNat

end

end A279584.P3889483474011095116

/-! ## A279584.P12274922063924658992

`A279580(eq[6, A131818(n+1)])`
-/

namespace A279584.P12274922063924658992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279584.P12274922063924658992

/-! ## A279584.P18264548419106133710

`A279580(eq[6, A135223(n+1)])`
-/

namespace A279584.P18264548419106133710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279584.P18264548419106133710

/-!
# A279585: Partial sums of A279536.

The programs for A279585, there is no canonical definition to state claims against.
-/

/-! ## A279585.P13564541886299836161

`∑[A279536(n+1)]`
-/

namespace A279585.P13564541886299836161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279585.P13564541886299836161

/-!
# A279587: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = sqrt(2).

The programs for A279587, there is no canonical definition to state claims against.
-/

/-! ## A279587.P14652950088716615743

`A279779(n)-A044941(A000079(n))`
-/

namespace A279587.P14652950088716615743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279779 n - A044941 (A000079 n).toNat

end

end A279587.P14652950088716615743

/-! ## A279587.P9215714612790820280

`A279779(n)-A239705(A024622(n))`
-/

namespace A279587.P9215714612790820280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279779 n - A239705 (A024622 n).toNat

end

end A279587.P9215714612790820280

/-! ## A279587.P18356796155872156571

`A279779(n)-A008683(A141145(n+1))`
-/

namespace A279587.P18356796155872156571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279779 n - A008683 (A141145 (n + 1)).toNat

end

end A279587.P18356796155872156571

/-! ## A279587.P17422976474209601142

`A279779(n)-A353663(A353621(3*(n+1)))`
-/

namespace A279587.P17422976474209601142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279779 n - A353663 (A353621 (3 * (n + 1))).toNat

end

end A279587.P17422976474209601142

/-! ## A279587.P17746589156732161083

`A279779(n)-A010051(A350196(3*n+2))`
-/

namespace A279587.P17746589156732161083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279779 n - A010051 (A350196 (3 * n + 2)).toNat

end

end A279587.P17746589156732161083

/-!
# A279589: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = -1 + sqrt(5).

The programs for A279589, there is no canonical definition to state claims against.
-/

/-! ## A279589.P17494374460093541629

`A279594(n)/A295657(A287022(n))`
-/

namespace A279589.P17494374460093541629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279594 n : ℚ) / (A295657 (A287022 n).toNat : ℚ)

end

end A279589.P17494374460093541629

/-! ## A279589.P16415024718370431024

`A279594(n)-A137579(A185037(2*(n+1)))`
-/

namespace A279589.P16415024718370431024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279594 n - A137579 (A185037 (2 * (n + 1))).toNat

end

end A279589.P16415024718370431024

/-!
# A279591: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = e/2.

The programs for A279591, there is no canonical definition to state claims against.
-/

/-! ## A279591.P694459918642581810

`A279675(n)-A056170(A279666(n))`
-/

namespace A279591.P694459918642581810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279675 n - A056170 (A279666 n).toNat

end

end A279591.P694459918642581810

/-! ## A279591.P5092030047792877501

`A279675(n)-A248805(A279600(n))`
-/

namespace A279591.P5092030047792877501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279675 n - A248805 (A279600 n).toNat

end

end A279591.P5092030047792877501

/-! ## A279591.P12186772264555331571

`A279675(n)-A324823(A211795(n+4))`
-/

namespace A279591.P12186772264555331571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279675 n - A324823 (A211795 (n + 4)).toNat

end

end A279591.P12186772264555331571

/-!
# A279592: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = Pi/2.

The programs for A279592, there is no canonical definition to state claims against.
-/

/-! ## A279592.P5449215238738438938

`(-1)^n*A288229(n)`
-/

namespace A279592.P5449215238738438938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A288229 n

end

end A279592.P5449215238738438938

/-! ## A279592.P11984375899554043077

`A288229(n)/A033999(n)`
-/

namespace A279592.P11984375899554043077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288229 n : ℚ) / (A033999 n : ℚ)

end

end A279592.P11984375899554043077

/-! ## A279592.P8837237263661831490

`A288229(n)/A087960(n²)`
-/

namespace A279592.P8837237263661831490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288229 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A279592.P8837237263661831490

/-! ## A279592.P6900555248147328416

`A288229(n)/∑[A280560(n)]`
-/

namespace A279592.P6900555248147328416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288229 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A279592.P6900555248147328416

/-! ## A279592.P16138763290402612070

`A288229(n)/A062157(n+1)`
-/

namespace A279592.P16138763290402612070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288229 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A279592.P16138763290402612070

/-!
# A279594: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = sqrt(6)/2.

The programs for A279594, there is no canonical definition to state claims against.
-/

/-! ## A279594.P9734586328847448326

`A279589(n)*A295657(A287022(n))`
-/

namespace A279594.P9734586328847448326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279589 n * A295657 (A287022 n).toNat

end

end A279594.P9734586328847448326

/-! ## A279594.P17013898957326867963

`A279589(n)+A137579(A185037(2*(n+1)))`
-/

namespace A279594.P17013898957326867963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279589 n + A137579 (A185037 (2 * (n + 1))).toNat

end

end A279594.P17013898957326867963

/-!
# A279595: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = sqrt(e).

The programs for A279595, there is no canonical definition to state claims against.
-/

/-! ## A279595.P18026291120018943156

`(-1)^n*A288235(n)`
-/

namespace A279595.P18026291120018943156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A288235 n

end

end A279595.P18026291120018943156

/-! ## A279595.P18171962026267400248

`A288235(n)/A033999(n)`
-/

namespace A279595.P18171962026267400248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288235 n : ℚ) / (A033999 n : ℚ)

end

end A279595.P18171962026267400248

/-! ## A279595.P347876119303486936

`A288235(n)/A130595(∑[n])`
-/

namespace A279595.P347876119303486936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288235 n : ℚ) / (A130595 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A279595.P347876119303486936

/-! ## A279595.P8276947299973293699

`A288235(n)/∑[A280560(n)]`
-/

namespace A279595.P8276947299973293699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288235 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A279595.P8276947299973293699

/-! ## A279595.P14836491430625433894

`A288235(n)/A010892(3*n)`
-/

namespace A279595.P14836491430625433894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288235 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A279595.P14836491430625433894

/-!
# A279596: Partition an n X n square into multiple integer-sided rectangles where no one is a translation of any other; a(n) is the least possible difference between the largest and smallest area.

The programs for A279596, there is no canonical definition to state claims against.
-/

/-! ## A279596.P17028716429703230108

`A050501(n+3)-A279848(n+3)`
-/

namespace A279596.P17028716429703230108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050501 (n + 3) - A279848 (n + 3)

end

end A279596.P17028716429703230108

/-! ## A279596.P600984767168392059

`A050500(n+3)+1-A279848(n+3)`
-/

namespace A279596.P600984767168392059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (n + 3) + 1 - A279848 (n + 3)

end

end A279596.P600984767168392059

/-! ## A279596.P3891560256269530355

`A020725(A050500(n+3)-A279848(n+3))`
-/

namespace A279596.P3891560256269530355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A050500 (n + 3) - A279848 (n + 3)).toNat

end

end A279596.P3891560256269530355

/-!
# A279597: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A279597, there is no canonical definition to state claims against.
-/

/-! ## A279597.P9237037674453079003

`A007088(A279599(n))`
-/

namespace A279597.P9237037674453079003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279599 n).toNat

end

end A279597.P9237037674453079003

/-! ## A279597.P7518785679219663890

`A185544(2*A279599(n))`
-/

namespace A279597.P7518785679219663890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279599 n).toNat

end

end A279597.P7518785679219663890

/-! ## A279597.P6353836071981424701

`A185544(A279599(n)+A279599(n))`
-/

namespace A279597.P6353836071981424701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279599 n + A279599 n).toNat

end

end A279597.P6353836071981424701

/-!
# A279598: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A279598, there is no canonical definition to state claims against.
-/

/-! ## A279598.P3256019283467514439

`A007088(A279600(n))`
-/

namespace A279598.P3256019283467514439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279600 n).toNat

end

end A279598.P3256019283467514439

/-! ## A279598.P11224161373279627787

`A185544(2*A279600(n))`
-/

namespace A279598.P11224161373279627787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279600 n).toNat

end

end A279598.P11224161373279627787

/-! ## A279598.P5803778789203595863

`A185544(A279600(n)+A279600(n))`
-/

namespace A279598.P5803778789203595863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279600 n + A279600 n).toNat

end

end A279598.P5803778789203595863

/-! ## A279598.P6194915270198023301

`A280138(A032559(n+1)-A229142(n))`
-/

namespace A279598.P6194915270198023301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280138 (A032559 (n + 1) - A229142 n).toNat

end

end A279598.P6194915270198023301

/-!
# A279599: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A279599, there is no canonical definition to state claims against.
-/

/-! ## A279599.P16869938997915173161

`A280139(n)-A357618(A145901(n))`
-/

namespace A279599.P16869938997915173161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280139 n - A357618 (A145901 n).toNat

end

end A279599.P16869938997915173161

/-! ## A279599.P11759588123496574694

`A280139(n)-A239832(A185293(n+4))`
-/

namespace A279599.P11759588123496574694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280139 n - A239832 (A185293 (n + 4)).toNat

end

end A279599.P11759588123496574694

/-! ## A279599.P2768636126891484717

`A280139(n)-A280124(A114712(3*n))`
-/

namespace A279599.P2768636126891484717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280139 n - A280124 (A114712 (3 * n)).toNat

end

end A279599.P2768636126891484717

