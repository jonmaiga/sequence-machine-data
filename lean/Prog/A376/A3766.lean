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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A376600: Inflection or undulation points in the sequence of non-prime-powers inclusive (A024619).

The programs for A376600, there is no canonical definition to state claims against.
-/

/-! ## A376600.P3622403018324607923

`eq[0, Δ[A375708(n+1)]]`
-/

namespace A376600.P3622403018324607923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376600.P3622403018324607923

/-! ## A376600.P15992705187199514034

`eq[0, A376599(1+n)]+1`
-/

namespace A376600.P15992705187199514034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376599 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376600.P15992705187199514034

/-! ## A376600.P3038466714362962259

`comp[A376601(n+1)-1]+1`
-/

namespace A376600.P3038466714362962259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376601 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376600.P3038466714362962259

/-! ## A376600.P5315458974999784487

`eq[A375708(n+1), A375735(n+1)]`
-/

namespace A376600.P5315458974999784487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376600.P5315458974999784487

/-! ## A376600.P704868276235634344

`eq[A375708(n+1), A375708(n+2)]`
-/

namespace A376600.P704868276235634344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376600.P704868276235634344

/-! ## A376600.P14130766410828751123

`eq[A375735(n+1), A375735(n+2)]+1`
-/

namespace A376600.P14130766410828751123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A376600.P14130766410828751123

/-!
# A376601: Points of nonzero curvature in the sequence of non-prime-powers inclusive (A024619).

The programs for A376601, there is no canonical definition to state claims against.
-/

/-! ## A376601.P3010681665006753341

`∑[runs[A375735(n+1)]]`
-/

namespace A376601.P3010681665006753341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376601.P3010681665006753341

/-! ## A376601.P1539512392027593353

`∑[runs[A375708(n+2)]]`
-/

namespace A376601.P1539512392027593353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376601.P1539512392027593353

/-! ## A376601.P10652887783935456693

`∑[runs[Δ[A024619(n+1)]]]`
-/

namespace A376601.P10652887783935456693
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376601.P10652887783935456693

/-! ## A376601.P17719681887422684605

`∑[runs[Δ[A080765(n+1)]]]`
-/

namespace A376601.P17719681887422684605
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376601.P17719681887422684605

/-! ## A376601.P3335996846295656894

`∑[runs[Δ[A361102(n+2)]]]`
-/

namespace A376601.P3335996846295656894
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376601.P3335996846295656894

/-!
# A376602: Inflection and undulation points in the sequence of composite numbers (A002808).

The programs for A376602, the canonical program `A376602.P17346035341908880502` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376602 has offset 1).

The definition of A376602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376602.P17346035341908880502

`eq[0, A073445(1+n)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A376602

/-- `eq[0, A073445(1+n)]+1` -/
def P17346035341908880502.Spec : Prop :=
  ∀ n, (P17346035341908880502.a n : ℤ) = A376602 (n + 1)

theorem P17346035341908880502.correct : P17346035341908880502.Spec := by
  intro n
  simp only [A376602, Nat.add_sub_cancel]

end A376602

/-! ## A376602.P12524262350899557255

`eq[0, A073445(A000038(n)+n)]`
-/

namespace A376602.P12524262350899557255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376602.P12524262350899557255

namespace A376602

/-- `eq[0, A073445(A000038(n)+n)]` -/
def P12524262350899557255.Spec : Prop :=
  ∀ n, (P12524262350899557255.a n : ℤ) = A376602 (n + 1)

end A376602

/-! ## A376602.P5058614722802549702

`eq[A065310(n+1), A073783(n+1)]`
-/

namespace A376602.P5058614722802549702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376602.P5058614722802549702

namespace A376602

/-- `eq[A065310(n+1), A073783(n+1)]` -/
def P5058614722802549702.Spec : Prop :=
  ∀ n, (P5058614722802549702.a n : ℤ) = A376602 (n + 1)

end A376602

/-! ## A376602.P2310943339502953576

`eq[A073783(n+1), A073783(n+2)]+1`
-/

namespace A376602.P2310943339502953576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A376602.P2310943339502953576

namespace A376602

/-- `eq[A073783(n+1), A073783(n+2)]+1` -/
def P2310943339502953576.Spec : Prop :=
  ∀ n, (P2310943339502953576.a n : ℤ) = A376602 (n + 1)

end A376602

/-! ## A376602.P859925017033209683

`eq[A073784(n+1), A073784(n+2)]+1`
-/

namespace A376602.P859925017033209683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A376602.P859925017033209683

namespace A376602

/-- `eq[A073784(n+1), A073784(n+2)]+1` -/
def P859925017033209683.Spec : Prop :=
  ∀ n, (P859925017033209683.a n : ℤ) = A376602 (n + 1)

end A376602

/-! ## A376602.P15908336009067987214

`eq[A065310(n+1), A065310(n+2)]`
-/

namespace A376602.P15908336009067987214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376602.P15908336009067987214

namespace A376602

/-- `eq[A065310(n+1), A065310(n+2)]` -/
def P15908336009067987214.Spec : Prop :=
  ∀ n, (P15908336009067987214.a n : ℤ) = A376602 (n + 1)

end A376602

/-! ## A376602.P2853493674147046210

`eq[1, A000034(A161843(n+2))]`
-/

namespace A376602.P2853493674147046210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A161843 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376602.P2853493674147046210

namespace A376602

/-- `eq[1, A000034(A161843(n+2))]` -/
def P2853493674147046210.Spec : Prop :=
  ∀ n, (P2853493674147046210.a n : ℤ) = A376602 (n + 1)

end A376602

/-!
# A376603: Points of nonzero curvature in the sequence of composite numbers (A002808).

The programs for A376603, the canonical program `A376603.P13156490468514965856` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376603 has offset 1).

The definition of A376603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376603.P7262436162257689339

`eq[3, A161811(n+2)]`
-/

namespace A376603.P7262436162257689339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161811 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376603.P7262436162257689339

namespace A376603

/-- `eq[3, A161811(n+2)]` -/
def P7262436162257689339.Spec : Prop :=
  ∀ n, (P7262436162257689339.a n : ℤ) = A376603 (n + 1)

end A376603

/-! ## A376603.P16899543560830111007

`∑[runs[A073783(n+1)]]`
-/

namespace A376603.P16899543560830111007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376603.P16899543560830111007

namespace A376603

/-- `∑[runs[A073783(n+1)]]` -/
def P16899543560830111007.Spec : Prop :=
  ∀ n, (P16899543560830111007.a n : ℤ) = A376603 (n + 1)

end A376603

/-! ## A376603.P376477269879318042

`∑[runs[A073784(n+1)]]`
-/

namespace A376603.P376477269879318042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376603.P376477269879318042

namespace A376603

/-- `∑[runs[A073784(n+1)]]` -/
def P376477269879318042.Spec : Prop :=
  ∀ n, (P376477269879318042.a n : ℤ) = A376603 (n + 1)

end A376603

/-! ## A376603.P6084170636370423367

`∑[runs[A065310(n+2)]]`
-/

namespace A376603.P6084170636370423367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376603.P6084170636370423367

namespace A376603

/-- `∑[runs[A065310(n+2)]]` -/
def P6084170636370423367.Spec : Prop :=
  ∀ n, (P6084170636370423367.a n : ℤ) = A376603 (n + 1)

end A376603

/-! ## A376603.P10213877134492030210

`∑[runs[A054546(n+3)]]`
-/

namespace A376603.P10213877134492030210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376603.P10213877134492030210

namespace A376603

/-- `∑[runs[A054546(n+3)]]` -/
def P10213877134492030210.Spec : Prop :=
  ∀ n, (P10213877134492030210.a n : ℤ) = A376603 (n + 1)

end A376603

/-! ## A376603.P8570902077092418969

`∪[A376651(n+1), A376652(n+1)]`
-/

namespace A376603.P8570902077092418969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376603.P8570902077092418969

namespace A376603

/-- `∪[A376651(n+1), A376652(n+1)]` -/
def P8570902077092418969.Spec : Prop :=
  ∀ n, (P8570902077092418969.a n : ℤ) = A376603 (n + 1)

end A376603

/-! ## A376603.P13156490468514965856

`eq[2, A073784(n+1)+A065310(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A376603

/-- `eq[2, A073784(n+1)+A065310(n+1)]` -/
def P13156490468514965856.Spec : Prop :=
  ∀ n, (P13156490468514965856.a n : ℤ) = A376603 (n + 1)

theorem P13156490468514965856.correct : P13156490468514965856.Spec := by
  intro n
  simp only [A376603, Nat.add_sub_cancel]

end A376603

/-! ## A376603.P12071430175416060522

`eq[2, A065310(n+1)*A073783(n+1)]`
-/

namespace A376603.P12071430175416060522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1) * A073783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376603.P12071430175416060522

namespace A376603

/-- `eq[2, A065310(n+1)*A073783(n+1)]` -/
def P12071430175416060522.Spec : Prop :=
  ∀ n, (P12071430175416060522.a n : ℤ) = A376603 (n + 1)

end A376603

/-! ## A376603.P13203150778084308997

`∑[A376680(n+1)]`
-/

namespace A376603.P13203150778084308997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376603.P13203150778084308997

namespace A376603

/-- `∑[A376680(n+1)]` -/
def P13203150778084308997.Spec : Prop :=
  ∀ n, P13203150778084308997.a n = A376603 (n + 1)

end A376603

/-! ## A376603.P133436861801658057

`A176235(n+2)-2`
-/

namespace A376603.P133436861801658057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176235 (n + 2) - 2

end

end A376603.P133436861801658057

namespace A376603

/-- `A176235(n+2)-2` -/
def P133436861801658057.Spec : Prop :=
  ∀ n, P133436861801658057.a n = A376603 (n + 1)

end A376603

/-!
# A376604: Second differences of the Kolakoski sequence (A000002). First differences of A054354.

The programs for A376604, the canonical program `A376604.P10742585192256069386` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376604 has offset 1).

The definition of A376604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376604.P18388459090763967935

`Δ[Δ[runs[a(n-gcd(2, a(a(n-2))))+1]]]` with `a(0)=1, a(1)=2`
-/

namespace A376604.P18388459090763967935
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  f3 (n - Nat.gcd 2 (f3 (f3 (n - 2)))) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P18388459090763967935

namespace A376604

/-- `Δ[Δ[runs[a(n-gcd(2, a(a(n-2))))+1]]]` -/
def P18388459090763967935.Spec : Prop :=
  ∀ n, P18388459090763967935.a n = A376604 (n + 1)

theorem P18388459090763967935.correct : P18388459090763967935.Spec := by
  intro n
  simp only [A376604, Nat.add_sub_cancel, A376604.P18388459090763967935.f3, A376604.P18388459090763967935.f2, A376604.P18388459090763967935.f1, A376604.P18388459090763967935.a, A376604.P10742585192256069386.f1, A376604.P10742585192256069386.a, A054354, A054354.P9792644898215706034.f2, A054354.P9792644898215706034.f1, A054354.P9792644898215706034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376604

/-! ## A376604.P16143686044124258891

`Δ[Δ[A000002(n+1)]]`
-/

namespace A376604.P16143686044124258891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P16143686044124258891

namespace A376604

/-- `Δ[Δ[A000002(n+1)]]` -/
def P16143686044124258891.Spec : Prop :=
  ∀ n, P16143686044124258891.a n = A376604 (n + 1)

end A376604

/-! ## A376604.P10742585192256069386

`Δ[A054354(n+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A376604

/-- `Δ[A054354(n+1)]` -/
def P10742585192256069386.Spec : Prop :=
  ∀ n, P10742585192256069386.a n = A376604 (n + 1)

theorem P10742585192256069386.correct : P10742585192256069386.Spec := by
  intro n
  simp only [A376604, Nat.add_sub_cancel]

end A376604

/-! ## A376604.P12532862101335001533

`A054354(n+2)-A054354(n+1)`
-/

namespace A376604.P12532862101335001533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 2) - A054354 (n + 1)

end

end A376604.P12532862101335001533

namespace A376604

/-- `A054354(n+2)-A054354(n+1)` -/
def P12532862101335001533.Spec : Prop :=
  ∀ n, P12532862101335001533.a n = A376604 (n + 1)

theorem P12532862101335001533.correct : P12532862101335001533.Spec := by
  intro n
  simp only [A376604, Nat.add_sub_cancel, A376604.P12532862101335001533.a, A376604.P10742585192256069386.f1, A376604.P10742585192256069386.a, SequenceMachineLib.memo_apply]

end A376604

/-! ## A376604.P4517287827835418048

`Δ[A078880(n+1)+A049705(n+1)]`
-/

namespace A376604.P4517287827835418048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1) + A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P4517287827835418048

namespace A376604

/-- `Δ[A078880(n+1)+A049705(n+1)]` -/
def P4517287827835418048.Spec : Prop :=
  ∀ n, P4517287827835418048.a n = A376604 (n + 1)

end A376604

/-! ## A376604.P5211333001160318104

`Δ[Δ[2/A049705(n+1)]]`
-/

namespace A376604.P5211333001160318104
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A049705 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P5211333001160318104

namespace A376604

/-- `Δ[Δ[2/A049705(n+1)]]` -/
def P5211333001160318104.Spec : Prop :=
  ∀ n, P5211333001160318104.a n = (A376604 (n + 1) : ℚ)

end A376604

/-! ## A376604.P16534168787353003099

`Δ[Δ[gcd(2, A156253(n+1))]]`
-/

namespace A376604.P16534168787353003099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A156253 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P16534168787353003099

namespace A376604

/-- `Δ[Δ[gcd(2, A156253(n+1))]]` -/
def P16534168787353003099.Spec : Prop :=
  ∀ n, P16534168787353003099.a n = A376604 (n + 1)

end A376604

/-! ## A376604.P2117402446543080169

`Δ[Δ[A054353(n+1)-A216345(n+1)]]`
-/

namespace A376604.P2117402446543080169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - A216345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P2117402446543080169

namespace A376604

/-- `Δ[Δ[A054353(n+1)-A216345(n+1)]]` -/
def P2117402446543080169.Spec : Prop :=
  ∀ n, P2117402446543080169.a n = A376604 (n + 1)

end A376604

/-! ## A376604.P7778026849050052164

`Δ[A078880(n+1)-Δ[A216345(n+1)]]`
-/

namespace A376604.P7778026849050052164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P7778026849050052164

namespace A376604

/-- `Δ[A078880(n+1)-Δ[A216345(n+1)]]` -/
def P7778026849050052164.Spec : Prop :=
  ∀ n, P7778026849050052164.a n = A376604 (n + 1)

end A376604

/-! ## A376604.P5850276042214303444

`Δ[Δ[A123594(n+3)]]`
-/

namespace A376604.P5850276042214303444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376604.P5850276042214303444

namespace A376604

/-- `Δ[Δ[A123594(n+3)]]` -/
def P5850276042214303444.Spec : Prop :=
  ∀ n, P5850276042214303444.a n = A376604 (n + 1)

end A376604

/-!
# A376605: Primes p such that if q and r are the next two primes, (p - 1)^2 + 1, (q - 1)^2 + 1 and (r - 1)^2 + 1 are all prime.

The programs for A376605, there is no canonical definition to state claims against.
-/

/-! ## A376605.P10467627909320946189

`A000040(A376522(n+1))`
-/

namespace A376605.P10467627909320946189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A376522 (n + 1)).toNat

end

end A376605.P10467627909320946189

/-! ## A376605.P5870082819323407641

`A008578(A376522(n+1)+1)`
-/

namespace A376605.P5870082819323407641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A376522 (n + 1) + 1).toNat

end

end A376605.P5870082819323407641

/-! ## A376605.P16600672035059591263

`∑{d}[A376522(n+1), A007444(#)]`
-/

namespace A376605.P16600672035059591263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A376605.P16600672035059591263

/-! ## A376605.P9043516765110998895

`A053669(2*n+5)+A040976(A376522(n+1))`
-/

namespace A376605.P9043516765110998895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (2 * n + 5) + A040976 (A376522 (n + 1)).toNat

end

end A376605.P9043516765110998895

/-! ## A376605.P17346186411017843197

`A008864(A376522(n+1))-A051064(3*n+5)`
-/

namespace A376605.P17346186411017843197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A376522 (n + 1)).toNat - A051064 (3 * n + 5)

end

end A376605.P17346186411017843197

/-!
# A376606: a(n) is the numerator of the expected number of moves to reach a position outside an nXn chessboard, starting in one of the corners, when performing a random walk with unit steps on the square lattice.

The programs for A376606, there is no canonical definition to state claims against.
-/

/-! ## A376606.P14867513076573636857

`A329366(A058094(n))+A185825(2*n+1)`
-/

namespace A376606.P14867513076573636857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (A058094 n).toNat + A185825 (2 * n + 1)

end

end A376606.P14867513076573636857

/-!
# A376607: a(n) is the denominator corresponding to A376606(n).

The programs for A376607, there is no canonical definition to state claims against.
-/

/-! ## A376607.P18393437345179730453

`A256046(A077168(n))/A040001(3*n+4)`
-/

namespace A376607.P18393437345179730453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256046 (A077168 n).toNat : ℚ) / (A040001 (3 * n + 4) : ℚ)

end

end A376607.P18393437345179730453

/-!
# A376612: Triangle read by rows: T(n,k) is the largest divisor of binomial(n,k) which is less than n, with 2 <= k <= n.

The programs for A376612, there is no canonical definition to state claims against.
-/

/-! ## A376612.P14002539175584058694

`A367987(A142963(n+2))`
-/

namespace A376612.P14002539175584058694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A142963 (n + 2)).toNat

end

end A376612.P14002539175584058694

/-! ## A376612.P4234680276976411287

`A224765(A161380(n+1))`
-/

namespace A376612.P4234680276976411287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224765 (A161380 (n + 1)).toNat

end

end A376612.P4234680276976411287

/-! ## A376612.P306216926951205750

`A398577(A018144(n))`
-/

namespace A376612.P306216926951205750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398577 (A018144 n).toNat

end

end A376612.P306216926951205750

/-! ## A376612.P5317463184616463464

`gcd(A119704(n), A351414(A292037(n)))`
-/

namespace A376612.P5317463184616463464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119704 n) (A351414 (A292037 n).toNat)

end

end A376612.P5317463184616463464

/-! ## A376612.P7779733612670583376

`A115575(xor(A000203(3*n+4), A115573(2*n+5)))`
-/

namespace A376612.P7779733612670583376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115575 (Int.xor (A000203 (3 * n + 4)) (A115573 (2 * n + 5))).toNat

end

end A376612.P7779733612670583376

/-!
# A376615: a(n) is the number of iterations that n requires to reach a noninteger under the map x -> x / wt(x), where wt(k) is the binary weight of k (A000120); a(n) = 0 if n is a power of 2.

The programs for A376615, there is no canonical definition to state claims against.
-/

/-! ## A376615.P9466413064072846713

`A025520(A242994(n+1))%(∑{e}[n+1, #]+1)`
-/

namespace A376615.P9466413064072846713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025520 (A242994 (n + 1)).toNat) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ)

end

end A376615.P9466413064072846713

/-! ## A376615.P16029954667132379934

`A052409(A005361(A283477(n+1)))`
-/

namespace A376615.P16029954667132379934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A005361 (A283477 (n + 1)).toNat).toNat

end

end A376615.P16029954667132379934

/-! ## A376615.P3715895920209958062

`A122458(A048881(n)*A303814(2*(n+2)))`
-/

namespace A376615.P3715895920209958062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A048881 n * A303814 (2 * (n + 2))).toNat

end

end A376615.P3715895920209958062

/-! ## A376615.P15933268030945741810

`A309981(A342463(n+1))`
-/

namespace A376615.P15933268030945741810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309981 (A342463 (n + 1)).toNat

end

end A376615.P15933268030945741810

/-! ## A376615.P11054562429470537586

`A064808(A322825(n))%A323507(2*n)`
-/

namespace A376615.P11054562429470537586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064808 (A322825 n).toNat) (A323507 (2 * n))

end

end A376615.P11054562429470537586

/-!
# A376616: Binary Niven numbers (A049445) k such that k/wt(k) is also a binary Niven number, where wt(k) = A000120(k) is the binary weight of k.

The programs for A376616, there is no canonical definition to state claims against.
-/

/-! ## A376616.P11087808868124824627

`lt[A151703(n), A151682(n)]`
-/

namespace A376616.P11087808868124824627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376616.P11087808868124824627

/-! ## A376616.P17944554622353108518

`record[gcd(A007843(n), A151692(n))]`
-/

namespace A376616.P17944554622353108518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007843 n) (A151692 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376616.P17944554622353108518

/-! ## A376616.P7519043798070610606

`filter[A180490(n+1), A289748(#)]`
-/

namespace A376616.P7519043798070610606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289748 (f1 j).toNat = 1) n)

end

end A376616.P7519043798070610606

/-! ## A376616.P9685118150092319688

`∩[A114149(n+1), A180490(n+1)]`
-/

namespace A376616.P9685118150092319688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376616.P9685118150092319688

/-! ## A376616.P11216770726746561064

`∩[A118956(n+1), A180490(n+1)]`
-/

namespace A376616.P11216770726746561064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376616.P11216770726746561064

/-!
# A376617: Binary Niven numbers (A049445) k such that m = k/wt(k) and m/wt(m) are also binary Niven numbers, where wt(k) = A000120(k) is the binary weight of k.

The programs for A376617, there is no canonical definition to state claims against.
-/

/-! ## A376617.P12198480759344748585

`eq[A003557(A187221(n+4)), A147582(n+1)]`
-/

namespace A376617.P12198480759344748585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A187221 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376617.P12198480759344748585

/-! ## A376617.P3432935055544769418

`lt[A342635(n), A143824(xor(n, 2*n))]`
-/

namespace A376617.P3432935055544769418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376617.P3432935055544769418

/-! ## A376617.P16035722041335102862

`eq[A000120(n), A323022(A170871(n+3))]`
-/

namespace A376617.P16035722041335102862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A170871 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376617.P16035722041335102862

/-! ## A376617.P5011055334372062450

`A004277(lt[A160125(n+1), A001316(2*(n+1))])`
-/

namespace A376617.P5011055334372062450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376617.P5011055334372062450

/-! ## A376617.P14462738688211558064

`record[and(A303993(n+1), A378365(n+1))]`
-/

namespace A376617.P14462738688211558064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A303993 (n + 1)) (A378365 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376617.P14462738688211558064

/-!
# A376618: Odd binary Niven numbers (A144302) k such that k/wt(k) is also an odd binary Niven number, where wt(k) = A000120(k) is the binary weight of k.

The programs for A376618, there is no canonical definition to state claims against.
-/

/-! ## A376618.P5923950365837720261

`∩[A144302(n+1), A376616(n+1)]`
-/

namespace A376618.P5923950365837720261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376618.P5923950365837720261

/-! ## A376618.P10027769675685666394

`filter[A376616(n+1), A228495(#)]`
-/

namespace A376618.P10027769675685666394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A376618.P10027769675685666394

/-! ## A376618.P3144798531019581034

`record[A093178(A376616(n+1))]`
-/

namespace A376618.P3144798531019581034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A376616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376618.P3144798531019581034

/-! ## A376618.P3410659597139737289

`filter[A376616(n+1), A000035(#)]`
-/

namespace A376618.P3410659597139737289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A376618.P3410659597139737289

/-!
# A376622: G.f.: Sum_{k>=0} x^(k*(k+1)) / Product_{j=1..k} (1 - x^(2*j-1))^2.

The programs for A376622, there is no canonical definition to state claims against.
-/

/-! ## A376622.P13067441208854422061

`A364544(n+1)-A193526(A000079(n))`
-/

namespace A376622.P13067441208854422061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364544 (n + 1) - A193526 (A000079 n).toNat

end

end A376622.P13067441208854422061

/-! ## A376622.P14109930335481733733

`A364550(n+1)-A193526(A000079(n))`
-/

namespace A376622.P14109930335481733733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364550 (n + 1) - A193526 (A000079 n).toNat

end

end A376622.P14109930335481733733

/-! ## A376622.P15620815969023853589

`A364565(n+1)-A193526(A000079(n))`
-/

namespace A376622.P15620815969023853589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364565 (n + 1) - A193526 (A000079 n).toNat

end

end A376622.P15620815969023853589

/-! ## A376622.P7004334457158987804

`A364544(n+1)-A182850(A364557(3*n+2))`
-/

namespace A376622.P7004334457158987804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364544 (n + 1) - A182850 (A364557 (3 * n + 2)).toNat

end

end A376622.P7004334457158987804

/-! ## A376622.P1668813035037629443

`A364548(n+1)-A182850(A364557(3*n+2))`
-/

namespace A376622.P1668813035037629443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364548 (n + 1) - A182850 (A364557 (3 * n + 2)).toNat

end

end A376622.P1668813035037629443

/-!
# A376624: G.f.: Sum_{k>=0} x^(k*(k+1)/2) / Product_{j=1..k} (1 - x^(2*j-1))^2.

The programs for A376624, there is no canonical definition to state claims against.
-/

/-! ## A376624.P10813078433294168573

`A122921(A350839(3*n+1))+1`
-/

namespace A376624.P10813078433294168573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A350839 (3 * n + 1)).toNat + 1

end

end A376624.P10813078433294168573

/-! ## A376624.P17672302216282858131

`A001221(A287892(n))+A000041(n)`
-/

namespace A376624.P17672302216282858131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A287892 n).toNat + A000041 n

end

end A376624.P17672302216282858131

/-! ## A376624.P2689264245010894753

`A265436(A371000(n+2))`
-/

namespace A376624.P2689264245010894753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265436 (A371000 (n + 2)).toNat

end

end A376624.P2689264245010894753

/-! ## A376624.P6548079320940037263

`A056556(A330051(n))+A007294(n)`
-/

namespace A376624.P6548079320940037263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A330051 n).toNat + A007294 n

end

end A376624.P6548079320940037263

/-! ## A376624.P13112455279785323812

`A362611(A289446(n))+A000041(n)`
-/

namespace A376624.P13112455279785323812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A289446 n).toNat + A000041 n

end

end A376624.P13112455279785323812

/-!
# A376629: G.f.: Sum_{k>=0} x^(k*(k+1)) * Product_{j=1..k} (1 + x^(2*j-1)).

The programs for A376629, there is no canonical definition to state claims against.
-/

/-! ## A376629.P5481496167119474977

`A104606(A195759(n+1))`
-/

namespace A376629.P5481496167119474977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104606 (A195759 (n + 1)).toNat

end

end A376629.P5481496167119474977

/-! ## A376629.P15580227855498056617

`A030658(A285553(n+1))`
-/

namespace A376629.P15580227855498056617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030658 (A285553 (n + 1)).toNat

end

end A376629.P15580227855498056617

/-! ## A376629.P2553411585077867500

`A285277(A101583(n+2))`
-/

namespace A376629.P2553411585077867500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285277 (A101583 (n + 2)).toNat

end

end A376629.P2553411585077867500

/-! ## A376629.P11735366562513941374

`A254651(∑[A006950(n)²])`
-/

namespace A376629.P11735366562513941374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376629.P11735366562513941374

/-! ## A376629.P12807613255468351767

`A008683(comp[A324774(n)])²`
-/

namespace A376629.P12807613255468351767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324774 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A376629.P12807613255468351767

/-!
# A376632: G.f.: Sum_{k>=0} x^(k^2) * Product_{j=1..k} (1 + x^(2*j)).

The programs for A376632, there is no canonical definition to state claims against.
-/

/-! ## A376632.P9414274858278218518

`A379309(A039951(2*(n+2))%A334954(n+1))`
-/

namespace A376632.P9414274858278218518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379309 (Int.tmod (A039951 (2 * (n + 2))) (A334954 (n + 1))).toNat

end

end A376632.P9414274858278218518

/-! ## A376632.P14171749515527856464

`A317241(A191655(n+1))%A365400(3*n+1)`
-/

namespace A376632.P14171749515527856464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317241 (A191655 (n + 1)).toNat) (A365400 (3 * n + 1))

end

end A376632.P14171749515527856464

/-! ## A376632.P6467932129260329539

`A093578(A259862(n+2))`
-/

namespace A376632.P6467932129260329539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093578 (A259862 (n + 2)).toNat

end

end A376632.P6467932129260329539

/-! ## A376632.P3010379416661236098

`and(A055642(A366880(n)), A329131(3*n+4))`
-/

namespace A376632.P3010379416661236098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055642 (A366880 n).toNat) (A329131 (3 * n + 4))

end

end A376632.P3010379416661236098

/-! ## A376632.P2573271147384536257

`A317241(A191655(n+1)%A329131(3*n+2))`
-/

namespace A376632.P2573271147384536257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (Int.tmod (A191655 (n + 1)) (A329131 (3 * n + 2))).toNat

end

end A376632.P2573271147384536257

/-!
# A376636: G.f. A(x) satisfies A(x) = (1 + 9*x*A(x)^2)^(1/3).

The programs for A376636, there is no canonical definition to state claims against.
-/

/-! ## A376636.P9345035510888529111

`A163532(A006126(n))*A174470(n)`
-/

namespace A376636.P9345035510888529111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (A006126 n).toNat * A174470 n

end

end A376636.P9345035510888529111

/-! ## A376636.P1449745103704168679

`A163532(A327516(n))*A305829(A002182(n+1)²)`
-/

namespace A376636.P1449745103704168679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (A327516 n).toNat * A305829 (A002182 (n + 1) ^ 2).toNat

end

end A376636.P1449745103704168679

/-!
# A376637: The word 1 belongs to the sequence, and whenever a word w belongs to the sequence, then the words consisting of 1's and 2's whose run lengths transform equals w also belong to the sequence.

The programs for A376637, there is no canonical definition to state claims against.
-/

/-! ## A376637.P9541353836493242841

`A214215(lt[A156224(n), A156225(3*(n+1))])`
-/

namespace A376637.P9541353836493242841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156225 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214215 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376637.P9541353836493242841

/-! ## A376637.P16971612855142077078

`A376677(record[A119493(3*n)+n])`
-/

namespace A376637.P16971612855142077078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119493 (3 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A376637.P16971612855142077078

/-! ## A376637.P18307202682832505090

`A007931(lt[A143590(n+3), A246278(3*n+2)])`
-/

namespace A376637.P18307202682832505090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143590 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376637.P18307202682832505090

/-! ## A376637.P12341935931686736207

`A007931(lt[A201780(3*(n+1)), A182656(3*n+1)])`
-/

namespace A376637.P12341935931686736207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182656 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376637.P12341935931686736207

/-! ## A376637.P13055210828580008682

`A159952(A299101(n+1))`
-/

namespace A376637.P13055210828580008682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159952 (A299101 (n + 1)).toNat

end

end A376637.P13055210828580008682

/-!
# A376640: Number of equational laws for magmas involving n operations, up to relabeling and symmetry, after removing nontrivial reflexive laws.

The programs for A376640, there is no canonical definition to state claims against.
-/

/-! ## A376640.P1977285251373870893

`A064052(A086756(n+1))-A000720(n+1)`
-/

namespace A376640.P1977285251373870893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (A086756 (n + 1)).toNat - A000720 (n + 1)

end

end A376640.P1977285251373870893

/-!
# A376645: The maximum exponent in the factorization of n into powers of Gaussian primes.

The programs for A376645, the canonical program `A376645.P10778335862260633849` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376645 has offset 1).

The definition of A376645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376645.P3837448824532419457

`A051903(2^val(n+1, 2)*(n+1))`
-/

namespace A376645.P3837448824532419457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 ^ SequenceMachineLib.valuation (n + 1) 2 * (n + 1))

end

end A376645.P3837448824532419457

namespace A376645

/-- `A051903(2^val(n+1, 2)*(n+1))` -/
def P3837448824532419457.Spec : Prop :=
  ∀ n, P3837448824532419457.a n = A376645 (n + 1)

end A376645

/-! ## A376645.P10778335862260633849

`A051903((n+1)*A006519(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A376645

/-- `A051903((n+1)*A006519(n+1))` -/
def P10778335862260633849.Spec : Prop :=
  ∀ n, P10778335862260633849.a n = A376645 (n + 1)

theorem P10778335862260633849.correct : P10778335862260633849.Spec := by
  intro n
  simp only [A376645, Nat.add_sub_cancel]

end A376645

/-! ## A376645.P821472930655448107

`A051903((n+1)²/A000265(n+1))`
-/

namespace A376645.P821472930655448107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A000265 (n + 1) : ℚ))).toNat

end

end A376645.P821472930655448107

namespace A376645

/-- `A051903((n+1)²/A000265(n+1))` -/
def P821472930655448107.Spec : Prop :=
  ∀ n, P821472930655448107.a n = A376645 (n + 1)

end A376645

/-! ## A376645.P10626421796089616647

`A067029(n+1)*A375706(A376589(n+5))`
-/

namespace A376645.P10626421796089616647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1) * A375706 (A376589 (n + 5)).toNat

end

end A376645.P10626421796089616647

namespace A376645

/-- `A067029(n+1)*A375706(A376589(n+5))` -/
def P10626421796089616647.Spec : Prop :=
  ∀ n, P10626421796089616647.a n = A376645 (n + 1)

end A376645

/-! ## A376645.P5735139271878562847

`A089309(A156552(n+1))+A007814(n+1)`
-/

namespace A376645.P5735139271878562847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A156552 (n + 1)).toNat + A007814 (n + 1)

end

end A376645.P5735139271878562847

namespace A376645

/-- `A089309(A156552(n+1))+A007814(n+1)` -/
def P5735139271878562847.Spec : Prop :=
  ∀ n, P5735139271878562847.a n = A376645 (n + 1)

end A376645

/-! ## A376645.P9256945508300423145

`A040001(A131740(n+1))*A067029(n+1)`
-/

namespace A376645.P9256945508300423145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A131740 (n + 1)).toNat * A067029 (n + 1)

end

end A376645.P9256945508300423145

namespace A376645

/-- `A040001(A131740(n+1))*A067029(n+1)` -/
def P9256945508300423145.Spec : Prop :=
  ∀ n, P9256945508300423145.a n = A376645 (n + 1)

end A376645

/-! ## A376645.P16478542377190574959

`A008480(A033476(n))*A067029(n+1)`
-/

namespace A376645.P16478542377190574959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A033476 n).toNat * A067029 (n + 1)

end

end A376645.P16478542377190574959

namespace A376645

/-- `A008480(A033476(n))*A067029(n+1)` -/
def P16478542377190574959.Spec : Prop :=
  ∀ n, P16478542377190574959.a n = A376645 (n + 1)

end A376645

/-!
# A376647: a(n) = Sum_{k=0..floor(n/3)} binomial(floor(k/2),n-3*k).

The programs for A376647, the canonical program `A376647.P1906789524993293784` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376647 has offset 0).

The definition of A376647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(floor(#/2), n-3*#)]` (program `A376647.P1906789524993293784`, by `A376647.P1906789524993293784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376647.P16085734870413348297

`a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0, a(6)=1`
-/

namespace A376647.P16085734870413348297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 0, 1] fun n a =>
  a (n - 6) + a (n - 7)

end

end A376647.P16085734870413348297

namespace A376647

/-- `a(n-6)+a(n-7)` -/
def P16085734870413348297.Spec : Prop :=
  ∀ n, (P16085734870413348297.a n : ℤ) = A376647 n

end A376647

/-! ## A376647.P6494557259522535550

`ogf((1-x^6)/(1-x^3-x^6-x^7+x^9+x^10))`
-/

namespace A376647.P6494557259522535550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, -1] [1, 0, 0, -1, 0, 0, -1, -1, 0, 1, 1] n

end

end A376647.P6494557259522535550

namespace A376647

/-- `ogf((1-x^6)/(1-x^3-x^6-x^7+x^9+x^10))` -/
def P6494557259522535550.Spec : Prop :=
  ∀ n, P6494557259522535550.a n = A376647 n

end A376647

/-! ## A376647.P1906789524993293784

`∑{#}[floor(n/3), C(floor(#/2), n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376647

/-- `∑{#}[floor(n/3), C(floor(#/2), n-3*#)]` -/
def P1906789524993293784.Spec : Prop :=
  ∀ n, (P1906789524993293784.a n : ℤ) = A376647 n

theorem P1906789524993293784.correct : P1906789524993293784.Spec := by
  intro n
  simp only [A376647]

end A376647

/-! ## A376647.P935658927622881716

`A127841(n+5)+A017847(n)`
-/

namespace A376647.P935658927622881716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 5) + A017847 n

end

end A376647.P935658927622881716

namespace A376647

/-- `A127841(n+5)+A017847(n)` -/
def P935658927622881716.Spec : Prop :=
  ∀ n, P935658927622881716.a n = A376647 n

end A376647

/-! ## A376647.P11069137892330401118

`and(A017847(2*n), A127263(n+2))`
-/

namespace A376647.P11069137892330401118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017847 (2 * n)) (A127263 (n + 2))

end

end A376647.P11069137892330401118

namespace A376647

/-- `and(A017847(2*n), A127263(n+2))` -/
def P11069137892330401118.Spec : Prop :=
  ∀ n, P11069137892330401118.a n = A376647 n

end A376647

/-!
# A376648: a(n) = Sum_{k=0..floor(n/4)} binomial(floor(k/2),n-4*k).

The programs for A376648, the canonical program `A376648.P12082506140309890857` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376648 has offset 0).

The definition of A376648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(floor(#/2), n-4*#)]` (program `A376648.P12082506140309890857`, by `A376648.P12082506140309890857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376648.P18235986778426469771

`a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=0, a(7)=0, a(8)=1`
-/

namespace A376648.P18235986778426469771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 0, 0, 0, 1] fun n a =>
  a (n - 8) + a (n - 9)

end

end A376648.P18235986778426469771

namespace A376648

/-- `a(n-8)+a(n-9)` -/
def P18235986778426469771.Spec : Prop :=
  ∀ n, (P18235986778426469771.a n : ℤ) = A376648 n

end A376648

/-! ## A376648.P17155984017472189601

`ogf((1-x^8)/(1-x^4-x^8-x^9+x^12+x^13))`
-/

namespace A376648.P17155984017472189601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, 0, 0, -1] [1, 0, 0, 0, -1, 0, 0, 0, -1, -1, 0, 0, 1, 1] n

end

end A376648.P17155984017472189601

namespace A376648

/-- `ogf((1-x^8)/(1-x^4-x^8-x^9+x^12+x^13))` -/
def P17155984017472189601.Spec : Prop :=
  ∀ n, P17155984017472189601.a n = A376648 n

end A376648

/-! ## A376648.P12082506140309890857

`∑{#}[floor(n/4), C(floor(#/2), n-4*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376648

/-- `∑{#}[floor(n/4), C(floor(#/2), n-4*#)]` -/
def P12082506140309890857.Spec : Prop :=
  ∀ n, (P12082506140309890857.a n : ℤ) = A376648 n

theorem P12082506140309890857.correct : P12082506140309890857.Spec := by
  intro n
  simp only [A376648]

end A376648

/-! ## A376648.P12989398947378067215

`A112394(n+1)%A096111(A280542(n))`
-/

namespace A376648.P12989398947378067215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112394 (n + 1)) (A096111 (A280542 n).toNat)

end

end A376648.P12989398947378067215

namespace A376648

/-- `A112394(n+1)%A096111(A280542(n))` -/
def P12989398947378067215.Spec : Prop :=
  ∀ n, P12989398947378067215.a n = A376648 n

end A376648

/-! ## A376648.P15621926791771697538

`A066099(A100813(n+1))*A090677(n)`
-/

namespace A376648.P15621926791771697538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A100813 (n + 1)).toNat * A090677 n

end

end A376648.P15621926791771697538

namespace A376648

/-- `A066099(A100813(n+1))*A090677(n)` -/
def P15621926791771697538.Spec : Prop :=
  ∀ n, P15621926791771697538.a n = A376648 n

end A376648

/-!
# A376649: a(n) = Sum_{k=0..floor(n/3)} binomial(floor(k/3),n-3*k).

The programs for A376649, the canonical program `A376649.P1749400636404148047` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376649 has offset 0).

The definition of A376649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(floor(#/3), n-3*#)]` (program `A376649.P1749400636404148047`, by `A376649.P1749400636404148047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376649.P8708852419011578806

`a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0, a(6)=1, a(7)=0, a(8)=0, a(9)=1`
-/

namespace A376649.P8708852419011578806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 0, 1, 0, 0, 1] fun n a =>
  a (n - 9) + a (n - 10)

end

end A376649.P8708852419011578806

namespace A376649

/-- `a(n-9)+a(n-10)` -/
def P8708852419011578806.Spec : Prop :=
  ∀ n, (P8708852419011578806.a n : ℤ) = A376649 n

end A376649

/-! ## A376649.P12219127370264508421

`ogf((1-x^9)/(1-x^3-x^9-x^10+x^12+x^13))`
-/

namespace A376649.P12219127370264508421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] [1, 0, 0, -1, 0, 0, 0, 0, 0, -1, -1, 0, 1, 1] n

end

end A376649.P12219127370264508421

namespace A376649

/-- `ogf((1-x^9)/(1-x^3-x^9-x^10+x^12+x^13))` -/
def P12219127370264508421.Spec : Prop :=
  ∀ n, P12219127370264508421.a n = A376649 n

end A376649

/-! ## A376649.P1749400636404148047

`∑{#}[floor(n/3), C(floor(#/3), n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376649

/-- `∑{#}[floor(n/3), C(floor(#/3), n-3*#)]` -/
def P1749400636404148047.Spec : Prop :=
  ∀ n, (P1749400636404148047.a n : ℤ) = A376649 n

theorem P1749400636404148047.correct : P1749400636404148047.Spec := by
  intro n
  simp only [A376649]

end A376649

/-! ## A376649.P14848833582461516370

`C(floor(A023208(n+1)/A196088(3*n+1)), n%3)`
-/

namespace A376649.P14848833582461516370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(A023208 (n + 1) : ℚ) / (A196088 (3 * n + 1) : ℚ)⌋.toNat (n % 3)

end

end A376649.P14848833582461516370

namespace A376649

/-- `C(floor(A023208(n+1)/A196088(3*n+1)), n%3)` -/
def P14848833582461516370.Spec : Prop :=
  ∀ n, (P14848833582461516370.a n : ℤ) = A376649 n

end A376649

/-! ## A376649.P3852296227939155803

`A005136(A392273(n))`
-/

namespace A376649.P3852296227939155803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A392273 n).toNat

end

end A376649.P3852296227939155803

namespace A376649

/-- `A005136(A392273(n))` -/
def P3852296227939155803.Spec : Prop :=
  ∀ n, P3852296227939155803.a n = A376649 n

end A376649

/-!
# A376650: a(n) = Sum_{k=0..floor(n/4)} binomial(floor(k/3),n-4*k).

The programs for A376650, the canonical program `A376650.P12085181768362878226` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376650 has offset 0).

The definition of A376650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(floor(#/3), n-4*#)]` (program `A376650.P12085181768362878226`, by `A376650.P12085181768362878226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376650.P12085181768362878226

`∑{#}[floor(n/4), C(floor(#/3), n-4*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376650

/-- `∑{#}[floor(n/4), C(floor(#/3), n-4*#)]` -/
def P12085181768362878226.Spec : Prop :=
  ∀ n, (P12085181768362878226.a n : ℤ) = A376650 n

theorem P12085181768362878226.correct : P12085181768362878226.Spec := by
  intro n
  simp only [A376650]

end A376650

/-! ## A376650.P17403996098116004283

`and(A112345(n), A259590(n))`
-/

namespace A376650.P17403996098116004283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112345 n) (A259590 n)

end

end A376650.P17403996098116004283

namespace A376650

/-- `and(A112345(n), A259590(n))` -/
def P17403996098116004283.Spec : Prop :=
  ∀ n, P17403996098116004283.a n = A376650 n

end A376650

/-! ## A376650.P14178128231100589372

`and(A259590(n), A280596(n))`
-/

namespace A376650.P14178128231100589372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A259590 n) (A280596 n)

end

end A376650.P14178128231100589372

namespace A376650

/-- `and(A259590(n), A280596(n))` -/
def P14178128231100589372.Spec : Prop :=
  ∀ n, P14178128231100589372.a n = A376650 n

end A376650

/-! ## A376650.P1460673153660121785

`A112345(n)%A055517(A055517(n))`
-/

namespace A376650.P1460673153660121785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112345 n) (A055517 (A055517 n).toNat)

end

end A376650.P1460673153660121785

namespace A376650

/-- `A112345(n)%A055517(A055517(n))` -/
def P1460673153660121785.Spec : Prop :=
  ∀ n, P1460673153660121785.a n = A376650 n

end A376650

/-! ## A376650.P18239639992082371302

`and(A002321(A024647(2*(n+2))), A090677(n))`
-/

namespace A376650.P18239639992082371302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002321 (A024647 (2 * (n + 2))).toNat) (A090677 n)

end

end A376650.P18239639992082371302

namespace A376650

/-- `and(A002321(A024647(2*(n+2))), A090677(n))` -/
def P18239639992082371302.Spec : Prop :=
  ∀ n, P18239639992082371302.a n = A376650 n

end A376650

/-!
# A376651: Points of upward concavity in the sequence of composite numbers (A002808).

The programs for A376651, the canonical program `A376651.P6843983757789881629` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376651 has offset 1).

The definition of A376651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376651.P6843983757789881629

`eq[2, A053542(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A376651

/-- `eq[2, A053542(n+1)]+1` -/
def P6843983757789881629.Spec : Prop :=
  ∀ n, (P6843983757789881629.a n : ℤ) = A376651 (n + 1)

theorem P6843983757789881629.correct : P6843983757789881629.Spec := by
  intro n
  simp only [A376651, Nat.add_sub_cancel]

end A376651

/-! ## A376651.P14497435379040035485

`comp[A073783(n+1)-(n+3-2*n)]+2`
-/

namespace A376651.P14497435379040035485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1) - ((n + 3 : ℤ) - (2 * n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A376651.P14497435379040035485

namespace A376651

/-- `comp[A073783(n+1)-(n+3-2*n)]+2` -/
def P14497435379040035485.Spec : Prop :=
  ∀ n, (P14497435379040035485.a n : ℤ) = A376651 (n + 1)

end A376651

/-! ## A376651.P9789827147319181635

`A073432(A196277(2+n))`
-/

namespace A376651.P9789827147319181635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (A196277 (2 + n)).toNat

end

end A376651.P9789827147319181635

namespace A376651

/-- `A073432(A196277(2+n))` -/
def P9789827147319181635.Spec : Prop :=
  ∀ n, P9789827147319181635.a n = A376651 (n + 1)

end A376651

/-! ## A376651.P1598980068458483435

`eq[A053543(n+1), A065310(n+1)]`
-/

namespace A376651.P1598980068458483435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376651.P1598980068458483435

namespace A376651

/-- `eq[A053543(n+1), A065310(n+1)]` -/
def P1598980068458483435.Spec : Prop :=
  ∀ n, (P1598980068458483435.a n : ℤ) = A376651 (n + 1)

end A376651

/-! ## A376651.P13319940362234663254

`eq[A065310(n+1), A073784(n+1)]`
-/

namespace A376651.P13319940362234663254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376651.P13319940362234663254

namespace A376651

/-- `eq[A065310(n+1), A073784(n+1)]` -/
def P13319940362234663254.Spec : Prop :=
  ∀ n, (P13319940362234663254.a n : ℤ) = A376651 (n + 1)

end A376651

/-! ## A376651.P10983612944471406311

`eq[A073783(n+1), A161811(n+1)]`
-/

namespace A376651.P10983612944471406311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376651.P10983612944471406311

namespace A376651

/-- `eq[A073783(n+1), A161811(n+1)]` -/
def P10983612944471406311.Spec : Prop :=
  ∀ n, (P10983612944471406311.a n : ℤ) = A376651 (n + 1)

end A376651

/-! ## A376651.P5671451404639996629

`eq[A065310(n+1)+1, A073783(n+1)]`
-/

namespace A376651.P5671451404639996629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376651.P5671451404639996629

namespace A376651

/-- `eq[A065310(n+1)+1, A073783(n+1)]` -/
def P5671451404639996629.Spec : Prop :=
  ∀ n, (P5671451404639996629.a n : ℤ) = A376651 (n + 1)

end A376651

/-! ## A376651.P2580701975179820032

`A049579(n+1)+A376652(n+2)-A049579(n+2)`
-/

namespace A376651.P2580701975179820032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049579 (n + 1) + (A376652 (n + 2) - A049579 (n + 2))

end

end A376651.P2580701975179820032

namespace A376651

/-- `A049579(n+1)+A376652(n+2)-A049579(n+2)` -/
def P2580701975179820032.Spec : Prop :=
  ∀ n, P2580701975179820032.a n = A376651 (n + 1)

end A376651

/-! ## A376651.P9640628653905743032

`A376652(n+2)-A251092(n+2)`
-/

namespace A376651.P9640628653905743032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376652 (n + 2) - A251092 (n + 2)

end

end A376651.P9640628653905743032

namespace A376651

/-- `A376652(n+2)-A251092(n+2)` -/
def P9640628653905743032.Spec : Prop :=
  ∀ n, P9640628653905743032.a n = A376651 (n + 1)

end A376651

/-! ## A376651.P16868407850972814150

`A376603(2*(n+1))`
-/

namespace A376651.P16868407850972814150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376603 (2 * (n + 1))

end

end A376651.P16868407850972814150

namespace A376651

/-- `A376603(2*(n+1))` -/
def P16868407850972814150.Spec : Prop :=
  ∀ n, P16868407850972814150.a n = A376651 (n + 1)

end A376651

/-! ## A376651.P4987910080295736565

`∩[A073432(n+1), A376603(n+1)]`
-/

namespace A376651.P4987910080295736565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376651.P4987910080295736565

namespace A376651

/-- `∩[A073432(n+1), A376603(n+1)]` -/
def P4987910080295736565.Spec : Prop :=
  ∀ n, (P4987910080295736565.a n : ℤ) = A376651 (n + 1)

end A376651

/-! ## A376651.P18028861127662942550

`∩[A065896(n+1)-2, A376603(n+1)]`
-/

namespace A376651.P18028861127662942550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376651.P18028861127662942550

namespace A376651

/-- `∩[A065896(n+1)-2, A376603(n+1)]` -/
def P18028861127662942550.Spec : Prop :=
  ∀ n, (P18028861127662942550.a n : ℤ) = A376651 (n + 1)

end A376651

/-!
# A376652: Points of downward concavity in the sequence of composite numbers (A002808).

The programs for A376652, the canonical program `A376652.P17294730468892707957` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376652 has offset 1).

The definition of A376652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376652.P17294730468892707957

`A065890(A049579(1+n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A376652

/-- `A065890(A049579(1+n))` -/
def P17294730468892707957.Spec : Prop :=
  ∀ n, P17294730468892707957.a n = A376652 (n + 1)

theorem P17294730468892707957.correct : P17294730468892707957.Spec := by
  intro n
  simp only [A376652, Nat.add_sub_cancel]

end A376652

/-! ## A376652.P8487438415117929794

`record[Δ[A379000(2*n+1)]]`
-/

namespace A376652.P8487438415117929794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376652.P8487438415117929794

namespace A376652

/-- `record[Δ[A379000(2*n+1)]]` -/
def P8487438415117929794.Spec : Prop :=
  ∀ n, P8487438415117929794.a n = A376652 (n + 1)

end A376652

/-! ## A376652.P17673656040662020442

`comp[n-A073783(n+1)]+2`
-/

namespace A376652.P17673656040662020442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A376652.P17673656040662020442

namespace A376652

/-- `comp[n-A073783(n+1)]+2` -/
def P17673656040662020442.Spec : Prop :=
  ∀ n, (P17673656040662020442.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P17563469373189181570

`eq[A060576(n), A179621(n+1)]`
-/

namespace A376652.P17563469373189181570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P17563469373189181570

namespace A376652

/-- `eq[A060576(n), A179621(n+1)]` -/
def P17563469373189181570.Spec : Prop :=
  ∀ n, (P17563469373189181570.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P4754871245821855205

`eq[A141044(n), A179621(n+1)]`
-/

namespace A376652.P4754871245821855205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P4754871245821855205

namespace A376652

/-- `eq[A141044(n), A179621(n+1)]` -/
def P4754871245821855205.Spec : Prop :=
  ∀ n, (P4754871245821855205.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P10292348934842009715

`eq[A179621(n+1), A267587(n)]`
-/

namespace A376652.P10292348934842009715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P10292348934842009715

namespace A376652

/-- `eq[A179621(n+1), A267587(n)]` -/
def P10292348934842009715.Spec : Prop :=
  ∀ n, (P10292348934842009715.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P17885029911291176548

`eq[A179621(n+1), A267870(n)]`
-/

namespace A376652.P17885029911291176548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P17885029911291176548

namespace A376652

/-- `eq[A179621(n+1), A267870(n)]` -/
def P17885029911291176548.Spec : Prop :=
  ∀ n, (P17885029911291176548.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P6855744382382328808

`eq[A179621(n+1), A373565(n)]`
-/

namespace A376652.P6855744382382328808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P6855744382382328808

namespace A376652

/-- `eq[A179621(n+1), A373565(n)]` -/
def P6855744382382328808.Spec : Prop :=
  ∀ n, (P6855744382382328808.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P629669694458016959

`eq[A053543(n+1), A073783(n+1)]`
-/

namespace A376652.P629669694458016959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P629669694458016959

namespace A376652

/-- `eq[A053543(n+1), A073783(n+1)]` -/
def P629669694458016959.Spec : Prop :=
  ∀ n, (P629669694458016959.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P6392418121075314259

`eq[A072022(n+1), A130882(n+1)]`
-/

namespace A376652.P6392418121075314259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130882 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P6392418121075314259

namespace A376652

/-- `eq[A072022(n+1), A130882(n+1)]` -/
def P6392418121075314259.Spec : Prop :=
  ∀ n, (P6392418121075314259.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P11240132273712329278

`eq[A072668(n+1), A130882(n+1)]`
-/

namespace A376652.P11240132273712329278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130882 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P11240132273712329278

namespace A376652

/-- `eq[A072668(n+1), A130882(n+1)]` -/
def P11240132273712329278.Spec : Prop :=
  ∀ n, (P11240132273712329278.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P8005542450485903924

`eq[A072022(n+1), A179620(n+1)]`
-/

namespace A376652.P8005542450485903924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P8005542450485903924

namespace A376652

/-- `eq[A072022(n+1), A179620(n+1)]` -/
def P8005542450485903924.Spec : Prop :=
  ∀ n, (P8005542450485903924.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P549817597513338216

`eq[A121273(n+1), A179621(n+1)]`
-/

namespace A376652.P549817597513338216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P549817597513338216

namespace A376652

/-- `eq[A121273(n+1), A179621(n+1)]` -/
def P549817597513338216.Spec : Prop :=
  ∀ n, (P549817597513338216.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P13978250732841091156

`eq[A130882(n+1), A352447(n+1)]`
-/

namespace A376652.P13978250732841091156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P13978250732841091156

namespace A376652

/-- `eq[A130882(n+1), A352447(n+1)]` -/
def P13978250732841091156.Spec : Prop :=
  ∀ n, (P13978250732841091156.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P11233034544776729930

`eq[2*A073783(n+1), A065310(n+1)]`
-/

namespace A376652.P11233034544776729930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376652.P11233034544776729930

namespace A376652

/-- `eq[2*A073783(n+1), A065310(n+1)]` -/
def P11233034544776729930.Spec : Prop :=
  ∀ n, (P11233034544776729930.a n : ℤ) = A376652 (n + 1)

end A376652

/-! ## A376652.P7834151988451695205

`A036997(A049591(n+1))`
-/

namespace A376652.P7834151988451695205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (A049591 (n + 1)).toNat

end

end A376652.P7834151988451695205

namespace A376652

/-- `A036997(A049591(n+1))` -/
def P7834151988451695205.Spec : Prop :=
  ∀ n, P7834151988451695205.a n = A376652 (n + 1)

end A376652

/-! ## A376652.P13396979950479988236

`A036997(A067774(n+2))`
-/

namespace A376652.P13396979950479988236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (A067774 (n + 2)).toNat

end

end A376652.P13396979950479988236

namespace A376652

/-- `A036997(A067774(n+2))` -/
def P13396979950479988236.Spec : Prop :=
  ∀ n, P13396979950479988236.a n = A376652 (n + 1)

end A376652

/-! ## A376652.P9686110031739225630

`A026238(A141515(n+2))`
-/

namespace A376652.P9686110031739225630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A141515 (n + 2)).toNat

end

end A376652.P9686110031739225630

namespace A376652

/-- `A026238(A141515(n+2))` -/
def P9686110031739225630.Spec : Prop :=
  ∀ n, P9686110031739225630.a n = A376652 (n + 1)

end A376652

/-! ## A376652.P3236062088631611653

`lt[A175527(n), A014963(A175553(n+1))²]`
-/

namespace A376652.P3236062088631611653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175553 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376652.P3236062088631611653

namespace A376652

/-- `lt[A175527(n), A014963(A175553(n+1))²]` -/
def P3236062088631611653.Spec : Prop :=
  ∀ n, (P3236062088631611653.a n : ℤ) = A376652 (n + 1)

end A376652

/-!
# A376654: Sorted positions of first appearances in the second differences of consecutive prime-powers exclusive (A246655).

The programs for A376654, there is no canonical definition to state claims against.
-/

/-! ## A376654.P8963262225317511039

`A376653(n+2)-1`
-/

namespace A376654.P8963262225317511039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376653 (n + 2) - 1

end

end A376654.P8963262225317511039

/-! ## A376654.P16351370358960125795

`∑[abs(Δ[A376653(1+n)])]`
-/

namespace A376654.P16351370358960125795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376653 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376654.P16351370358960125795

/-! ## A376654.P13366129525191680247

`A023443(A376653(n+2))`
-/

namespace A376654.P13366129525191680247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A376653 (n + 2)).toNat

end

end A376654.P13366129525191680247

/-! ## A376654.P502378260973428713

`∑[A000027(Δ[A376653(n+1)])]`
-/

namespace A376654.P502378260973428713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376653 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376654.P502378260973428713

/-! ## A376654.P3385758369182954671

`∑[A028310(Δ[A376653(n+1)])]`
-/

namespace A376654.P3385758369182954671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376653 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376654.P3385758369182954671

/-!
# A376656: Sorted positions of first appearances in the second differences (A036263) of consecutive primes (A000040).

The programs for A376656, there is no canonical definition to state claims against.
-/

/-! ## A376656.P12148713132692623721

`A329622(A295973(n+1))`
-/

namespace A376656.P12148713132692623721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A295973 (n + 1)).toNat

end

end A376656.P12148713132692623721

/-! ## A376656.P8165367466849388096

`A000720(A295973(n+1)-1)`
-/

namespace A376656.P8165367466849388096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A295973 (n + 1) - 1).toNat

end

end A376656.P8165367466849388096

/-! ## A376656.P1498852508145818613

`A057428(3*(n+1))+A000720(A295973(n+1))`
-/

namespace A376656.P1498852508145818613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * (n + 1)) + A000720 (A295973 (n + 1)).toNat

end

end A376656.P1498852508145818613

/-! ## A376656.P2617730523692053047

`A277322(A295973(n+1))`
-/

namespace A376656.P2617730523692053047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (A295973 (n + 1)).toNat

end

end A376656.P2617730523692053047

/-! ## A376656.P7542632427637922013

`A079067(A295973(n+1))`
-/

namespace A376656.P7542632427637922013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A295973 (n + 1)).toNat

end

end A376656.P7542632427637922013

/-!
# A376657: Number of integer factorizations of n into nonsquarefree factors > 1.

The programs for A376657, there is no canonical definition to state claims against.
-/

/-! ## A376657.P2999498032920242626

`round(A347439(n+1)/ϕ)`
-/

namespace A376657.P2999498032920242626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A347439 (n + 1) : ℝ) / Real.goldenRatio)

end

end A376657.P2999498032920242626

/-! ## A376657.P17039145148717658167

`A238971(A347439(n+1))`
-/

namespace A376657.P17039145148717658167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238971 (A347439 (n + 1)).toNat

end

end A376657.P17039145148717658167

/-! ## A376657.P3270696632196057088

`A023894(A347439(n+1)+1)`
-/

namespace A376657.P3270696632196057088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 (A347439 (n + 1) + 1).toNat

end

end A376657.P3270696632196057088

/-! ## A376657.P11721857241437004844

`A074840(A347439(n+1)+1)`
-/

namespace A376657.P11721857241437004844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A347439 (n + 1) + 1).toNat

end

end A376657.P11721857241437004844

/-! ## A376657.P201497238843921331

`A103632(A347439(n+1)+1)`
-/

namespace A376657.P201497238843921331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (A347439 (n + 1) + 1).toNat

end

end A376657.P201497238843921331

/-! ## A376657.P15032362885414702444

`A111901(A347439(n+1)+1)`
-/

namespace A376657.P15032362885414702444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111901 (A347439 (n + 1) + 1).toNat

end

end A376657.P15032362885414702444

/-! ## A376657.P16513624766233549004

`A347102(A347439(n+1)+1)`
-/

namespace A376657.P16513624766233549004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347102 (A347439 (n + 1) + 1).toNat

end

end A376657.P16513624766233549004

/-! ## A376657.P15700240628277159141

`∑{d}[n+1, A001055(#)*A349920((n+1)/#)]`
-/

namespace A376657.P15700240628277159141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A349920 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A376657.P15700240628277159141

/-! ## A376657.P12255863562033910943

`A002865(A005361(n+1)%A308149(n+1))`
-/

namespace A376657.P12255863562033910943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (Int.tmod (A005361 (n + 1)) (A308149 (n + 1))).toNat

end

end A376657.P12255863562033910943

/-! ## A376657.P9474097074907637306

`A063962(6^A347439(n+1))`
-/

namespace A376657.P9474097074907637306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A347439 (n + 1) : ℤ))).toNat

end

end A376657.P9474097074907637306

/-!
# A376662: The smallest of the most common numbers among the multinomial coefficients n!/(x_1! * ... * x_k!) for all partitions (x_1, ..., x_k) of n.

The programs for A376662, there is no canonical definition to state claims against.
-/

/-! ## A376662.P9341201834017241278

`C(C(n, 5), A138110(C(n, 5)))`
-/

namespace A376662.P9341201834017241278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 5) (A138110 (Nat.choose n 5)).toNat

end

end A376662.P9341201834017241278

/-! ## A376662.P691075196588097724

`A125230(A045513(n))`
-/

namespace A376662.P691075196588097724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125230 (A045513 n).toNat

end

end A376662.P691075196588097724

/-! ## A376662.P10447933419990331944

`A261507(A065974(n))`
-/

namespace A376662.P10447933419990331944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261507 (A065974 n).toNat

end

end A376662.P10447933419990331944

/-! ## A376662.P5865142340544747819

`A211956(A151339(n))`
-/

namespace A376662.P5865142340544747819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211956 (A151339 n).toNat

end

end A376662.P5865142340544747819

/-! ## A376662.P16220268876776612755

`A214467(A146375(n+2))`
-/

namespace A376662.P16220268876776612755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214467 (A146375 (n + 2)).toNat

end

end A376662.P16220268876776612755

/-!
# A376663: Largest frequency of n in the multiset of multinomial coefficients k!/(x_1! * ... * x_j!) with 1 <= x_1 <= ... <= x_j for a fixed k = x_1 + ... + x_j, i.e., maximum number of times that n appears in a row of A036038.

The programs for A376663, the canonical program `A376663.P2676070495033295066` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376663 has offset 1).

The definition of A376663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376663.P5293994722984554948

`A000110(val(A376603(3*n+2), 10))`
-/

namespace A376663.P5293994722984554948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.valuation (A376603 (3 * n + 2)).toNat 10)

end

end A376663.P5293994722984554948

namespace A376663

/-- `A000110(val(A376603(3*n+2), 10))` -/
def P5293994722984554948.Spec : Prop :=
  ∀ n, P5293994722984554948.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P17103127310356910887

`A366833(∑[A153125(n+1)])`
-/

namespace A376663.P17103127310356910887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366833 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376663.P17103127310356910887

namespace A376663

/-- `A366833(∑[A153125(n+1)])` -/
def P17103127310356910887.Spec : Prop :=
  ∀ n, P17103127310356910887.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P1059228071219249191

`A326674(A366963(n+1)+A056035(n+1))`
-/

namespace A376663.P1059228071219249191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 (A366963 (n + 1) + A056035 (n + 1)).toNat

end

end A376663.P1059228071219249191

namespace A376663

/-- `A326674(A366963(n+1)+A056035(n+1))` -/
def P1059228071219249191.Spec : Prop :=
  ∀ n, P1059228071219249191.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P4142162362056991254

`floor(A347143(n+1)/A029591(n))+1`
-/

namespace A376663.P4142162362056991254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347143 (n + 1) : ℚ) / (A029591 n : ℚ)⌋ + 1

end

end A376663.P4142162362056991254

namespace A376663

/-- `floor(A347143(n+1)/A029591(n))+1` -/
def P4142162362056991254.Spec : Prop :=
  ∀ n, P4142162362056991254.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P17978372095050676184

`A052409(A303400(n+1)+A008000(n))`
-/

namespace A376663.P17978372095050676184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A303400 (n + 1) + A008000 n).toNat

end

end A376663.P17978372095050676184

namespace A376663

/-- `A052409(A303400(n+1)+A008000(n))` -/
def P17978372095050676184.Spec : Prop :=
  ∀ n, P17978372095050676184.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P15658675345923687673

`A158378(A252719(n+1)+A022415(2*n+3))`
-/

namespace A376663.P15658675345923687673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158378 (A252719 (n + 1) + A022415 (2 * n + 3)).toNat

end

end A376663.P15658675345923687673

namespace A376663

/-- `A158378(A252719(n+1)+A022415(2*n+3))` -/
def P15658675345923687673.Spec : Prop :=
  ∀ n, P15658675345923687673.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P2676070495033295066

`A051904(A338041(3*(n+1))+A000005(n+3)*A060819(n+5))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A376663

/-- `A051904(A338041(3*(n+1))+A000005(n+3)*A060819(n+5))` -/
def P2676070495033295066.Spec : Prop :=
  ∀ n, P2676070495033295066.a n = A376663 (n + 1)

theorem P2676070495033295066.correct : P2676070495033295066.Spec := by
  intro n
  simp only [A376663, Nat.add_sub_cancel]

end A376663

/-! ## A376663.P2086453441182385414

`runs[n/A278060(2*n+3)]`
-/

namespace A376663.P2086453441182385414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A278060 (2 * n + 3) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376663.P2086453441182385414

namespace A376663

/-- `runs[n/A278060(2*n+3)]` -/
def P2086453441182385414.Spec : Prop :=
  ∀ n, (P2086453441182385414.a n : ℤ) = A376663 (n + 1)

end A376663

/-! ## A376663.P6413737070760510548

`A345932(or(A178366(n+1), A272185(n+3)))`
-/

namespace A376663.P6413737070760510548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (Int.lor (A178366 (n + 1)) (A272185 (n + 3))).toNat

end

end A376663.P6413737070760510548

namespace A376663

/-- `A345932(or(A178366(n+1), A272185(n+3)))` -/
def P6413737070760510548.Spec : Prop :=
  ∀ n, P6413737070760510548.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P6733608746769564475

`A345932(or(A018851(3*n+2), A272185(n+3)))`
-/

namespace A376663.P6733608746769564475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (Int.lor (A018851 (3 * n + 2)) (A272185 (n + 3))).toNat

end

end A376663.P6733608746769564475

namespace A376663

/-- `A345932(or(A018851(3*n+2), A272185(n+3)))` -/
def P6733608746769564475.Spec : Prop :=
  ∀ n, P6733608746769564475.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P7928554509678018747

`A089723(A376172(n+4)+floor(or(1, n+1)²/24)+1)`
-/

namespace A376663.P7928554509678018747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A376172 (n + 4) + ⌊(Nat.lor 1 (n + 1) ^ 2 : ℚ) / 24⌋ + 1).toNat

end

end A376663.P7928554509678018747

namespace A376663

/-- `A089723(A376172(n+4)+floor(or(1, n+1)²/24)+1)` -/
def P7928554509678018747.Spec : Prop :=
  ∀ n, P7928554509678018747.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P9192574730179262117

`A000122(val(A155828(3*(n+1)), A322345(n)))`
-/

namespace A376663.P9192574730179262117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.valuation (A155828 (3 * (n + 1))).toNat (A322345 n).toNat)

end

end A376663.P9192574730179262117

namespace A376663

/-- `A000122(val(A155828(3*(n+1)), A322345(n)))` -/
def P9192574730179262117.Spec : Prop :=
  ∀ n, P9192574730179262117.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P9102629194248272877

`A077121(val(A155828(3*(n+1)), A322345(n)))`
-/

namespace A376663.P9102629194248272877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 (SequenceMachineLib.valuation (A155828 (3 * (n + 1))).toNat (A322345 n).toNat)

end

end A376663.P9102629194248272877

namespace A376663

/-- `A077121(val(A155828(3*(n+1)), A322345(n)))` -/
def P9102629194248272877.Spec : Prop :=
  ∀ n, P9102629194248272877.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P2030490307331456014

`A261363(C(A342086(n+1), A063930(n+1)))`
-/

namespace A376663.P2030490307331456014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261363 (Nat.choose (A342086 (n + 1)).toNat (A063930 (n + 1)).toNat)

end

end A376663.P2030490307331456014

namespace A376663

/-- `A261363(C(A342086(n+1), A063930(n+1)))` -/
def P2030490307331456014.Spec : Prop :=
  ∀ n, P2030490307331456014.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P3038305652554251690

`A052409(A138985(3*n+1)+A067330(n+2))`
-/

namespace A376663.P3038305652554251690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A138985 (3 * n + 1) + A067330 (n + 2)).toNat

end

end A376663.P3038305652554251690

namespace A376663

/-- `A052409(A138985(3*n+1)+A067330(n+2))` -/
def P3038305652554251690.Spec : Prop :=
  ∀ n, P3038305652554251690.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P18436457374769376829

`gcd(Δ[A000037(n+1)], A209860(n))`
-/

namespace A376663.P18436457374769376829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A209860 n)

end

end A376663.P18436457374769376829

namespace A376663

/-- `gcd(Δ[A000037(n+1)], A209860(n))` -/
def P18436457374769376829.Spec : Prop :=
  ∀ n, (P18436457374769376829.a n : ℤ) = A376663 (n + 1)

end A376663

/-! ## A376663.P17267114963984799143

`A345932(6*A208510(n+3))`
-/

namespace A376663.P17267114963984799143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (6 * A208510 (n + 3)).toNat

end

end A376663.P17267114963984799143

namespace A376663

/-- `A345932(6*A208510(n+3))` -/
def P17267114963984799143.Spec : Prop :=
  ∀ n, P17267114963984799143.a n = A376663 (n + 1)

end A376663

/-! ## A376663.P6412179507509608555

`gcd(2, A064728(A089120(n+1)))`
-/

namespace A376663.P6412179507509608555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A064728 (A089120 (n + 1)).toNat)

end

end A376663.P6412179507509608555

namespace A376663

/-- `gcd(2, A064728(A089120(n+1)))` -/
def P6412179507509608555.Spec : Prop :=
  ∀ n, (P6412179507509608555.a n : ℤ) = A376663 (n + 1)

end A376663

/-! ## A376663.P10916676691404479616

`A151692(and(n+2, A017113(n)))`
-/

namespace A376663.P10916676691404479616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 (Int.land (n + 2 : ℤ) (A017113 n)).toNat

end

end A376663.P10916676691404479616

namespace A376663

/-- `A151692(and(n+2, A017113(n)))` -/
def P10916676691404479616.Spec : Prop :=
  ∀ n, P10916676691404479616.a n = A376663 (n + 1)

end A376663

/-!
# A376665: Records in A376663.

The programs for A376665, there is no canonical definition to state claims against.
-/

/-! ## A376665.P4320319774683786931

`lt[A369816(n), A046051(A189663(3*(n+1)))]`
-/

namespace A376665.P4320319774683786931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A189663 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376665.P4320319774683786931

/-! ## A376665.P5687676459778377424

`A195932(A296991(n+1))`
-/

namespace A376665.P5687676459778377424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195932 (A296991 (n + 1)).toNat

end

end A376665.P5687676459778377424

/-! ## A376665.P9673595806922601930

`lt[A268228(A357941(n)), A268228(n)]`
-/

namespace A376665.P9673595806922601930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268228 (A357941 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376665.P9673595806922601930

/-! ## A376665.P555969397140165607

`comp[n*A373830(A336133(n))]`
-/

namespace A376665.P555969397140165607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373830 (A336133 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376665.P555969397140165607

/-! ## A376665.P17322745017178133243

`lt[A135581(n+1), A000855(A135566(n+1))]`
-/

namespace A376665.P17322745017178133243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000855 (A135566 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376665.P17322745017178133243

/-!
# A376666: Indices of records in A376663.

The programs for A376666, there is no canonical definition to state claims against.
-/

/-! ## A376666.P1213413684836837228

`A376673(A376665(n+1))`
-/

namespace A376666.P1213413684836837228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376673 (A376665 (n + 1)).toNat

end

end A376666.P1213413684836837228

/-! ## A376666.P9747174390158107670

`A376662(A311396(n+1)*A376662(n+1))`
-/

namespace A376666.P9747174390158107670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376662 (A311396 (n + 1) * A376662 (n + 1)).toNat

end

end A376666.P9747174390158107670

/-!
# A376667: Square array read by antidiagonals: row n lists numbers whose maximal frequency in a fixed row of A036038 (or A078760) is equal to n, i.e., numbers m such that A376663(m) = n.

The programs for A376667, there is no canonical definition to state claims against.
-/

/-! ## A376667.P10211734919163619863

`A002110(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=56, a(3)=3`
-/

namespace A376667.P10211734919163619863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 56, 3] fun n a =>
  A002110 (a (n - 1) + 1).toNat

end

end A376667.P10211734919163619863

/-!
# A376668: Positive integers that do not appear more than once in the same row of A036038 (or A078760), i.e., numbers m such that A376663(m) = 1.

The programs for A376668, the canonical program `A376668.P2494882009302996714` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376668 has offset 1).

The definition of A376668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376668.P11162394874006589007

`A065033(lt[A054353(n+1), A054384(3*n+4)]+1)`
-/

namespace A376668.P11162394874006589007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054384 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A376668.P11162394874006589007

namespace A376668

/-- `A065033(lt[A054353(n+1), A054384(3*n+4)]+1)` -/
def P11162394874006589007.Spec : Prop :=
  ∀ n, P11162394874006589007.a n = A376668 (n + 1)

end A376668

/-! ## A376668.P10854351121640237565

`A003056(∑[comp[A391978(n+1)]])`
-/

namespace A376668.P10854351121640237565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391978 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376668.P10854351121640237565

namespace A376668

/-- `A003056(∑[comp[A391978(n+1)]])` -/
def P10854351121640237565.Spec : Prop :=
  ∀ n, P10854351121640237565.a n = A376668 (n + 1)

end A376668

/-! ## A376668.P2494882009302996714

`A003056(A033948(n+1)+n²-C(n, 2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A376668

/-- `A003056(A033948(n+1)+n²-C(n, 2))` -/
def P2494882009302996714.Spec : Prop :=
  ∀ n, P2494882009302996714.a n = A376668 (n + 1)

theorem P2494882009302996714.correct : P2494882009302996714.Spec := by
  intro n
  simp only [A376668, Nat.add_sub_cancel]

end A376668

/-! ## A376668.P5562376053952377657

`A003056(A033948(n+1)+or(1, n)*ceil(n/2))`
-/

namespace A376668.P5562376053952377657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A033948 (n + 1) + (Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat

end

end A376668.P5562376053952377657

namespace A376668

/-- `A003056(A033948(n+1)+or(1, n)*ceil(n/2))` -/
def P5562376053952377657.Spec : Prop :=
  ∀ n, P5562376053952377657.a n = A376668 (n + 1)

end A376668

/-! ## A376668.P8515520370032346839

`A003056(A033948(n+1)+record[C(n, 2)-n]-n)`
-/

namespace A376668.P8515520370032346839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A033948 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))).toNat

end

end A376668.P8515520370032346839

namespace A376668

/-- `A003056(A033948(n+1)+record[C(n, 2)-n]-n)` -/
def P8515520370032346839.Spec : Prop :=
  ∀ n, P8515520370032346839.a n = A376668 (n + 1)

end A376668

/-! ## A376668.P10578185803858644796

`A003056(A033948(n+1)+floor((2*n+1)²/8))`
-/

namespace A376668.P10578185803858644796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A033948 (n + 1) + ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋).toNat

end

end A376668.P10578185803858644796

namespace A376668

/-- `A003056(A033948(n+1)+floor((2*n+1)²/8))` -/
def P10578185803858644796.Spec : Prop :=
  ∀ n, P10578185803858644796.a n = A376668 (n + 1)

end A376668

/-! ## A376668.P12917804405926427495

`A167964(A251546(n+1))+n`
-/

namespace A376668.P12917804405926427495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (A251546 (n + 1)).toNat + (n : ℤ)

end

end A376668.P12917804405926427495

namespace A376668

/-- `A167964(A251546(n+1))+n` -/
def P12917804405926427495.Spec : Prop :=
  ∀ n, P12917804405926427495.a n = A376668 (n + 1)

end A376668

/-! ## A376668.P18272475753894803631

`floor(A328499(n+1)/4)+1+n`
-/

namespace A376668.P18272475753894803631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A328499 (n + 1) : ℚ) / 4⌋ + 1 + (n : ℤ)

end

end A376668.P18272475753894803631

namespace A376668

/-- `floor(A328499(n+1)/4)+1+n` -/
def P18272475753894803631.Spec : Prop :=
  ∀ n, P18272475753894803631.a n = A376668 (n + 1)

end A376668

/-! ## A376668.P8000185562136471293

`A000196(∑[A206244(n)+2*n])`
-/

namespace A376668.P8000185562136471293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206244 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376668.P8000185562136471293

namespace A376668

/-- `A000196(∑[A206244(n)+2*n])` -/
def P8000185562136471293.Spec : Prop :=
  ∀ n, P8000185562136471293.a n = A376668 (n + 1)

end A376668

/-!
# A376670: Positive integers whose maximum frequency in a fixed row of A036038 (or A078760) is equal to 3, i.e., numbers m such that A376663(m) = 3.

The programs for A376670, there is no canonical definition to state claims against.
-/

/-! ## A376670.P3716865377342852603

`A376667(∑[n+1]+5+n)`
-/

namespace A376670.P3716865377342852603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376667 (∑ j ∈ Finset.range (n + 1), f1 j + 5 + n)

end

end A376670.P3716865377342852603

/-! ## A376670.P7307033904804203836

`lcm(2, A376667(A167614(n+1)))`
-/

namespace A376670.P7307033904804203836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A376667 (A167614 (n + 1)).toNat)

end

end A376670.P7307033904804203836

/-! ## A376670.P6362811315718469941

`A376667(A167614(n+1))-A000007(n+2)`
-/

namespace A376670.P6362811315718469941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376667 (A167614 (n + 1)).toNat - A000007 (n + 2)

end

end A376670.P6362811315718469941

/-! ## A376670.P2575928762540106976

`A376667(A167614(n+1))^A376663(n+1)`
-/

namespace A376670.P2575928762540106976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376667 (A167614 (n + 1)).toNat : ℚ) ^ (A376663 (n + 1) : ℤ)

end

end A376670.P2575928762540106976

/-! ## A376670.P12037373155226862157

`A131017(A000040(3*n+4))*A376667(A167614(n+1))`
-/

namespace A376670.P12037373155226862157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131017 (A000040 (3 * n + 4)).toNat * A376667 (A167614 (n + 1)).toNat

end

end A376670.P12037373155226862157

/-!
# A376671: Positive integers whose maximum frequency in a fixed row of A036038 (or A078760) is equal to 4, i.e., numbers m such that A376663(m) = 4.

The programs for A376671, there is no canonical definition to state claims against.
-/

/-! ## A376671.P12959410244237682254

`A376667(∑[n+3]+7)`
-/

namespace A376671.P12959410244237682254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376667 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A376671.P12959410244237682254

/-!
# A376672: Positive integers whose maximum frequency in a fixed row of A036038 (or A078760) is equal to 5, i.e., numbers m such that A376663(m) = 5.

The programs for A376672, there is no canonical definition to state claims against.
-/

/-! ## A376672.P18092432797417464435

`A376667(A000124(n+4)+4)`
-/

namespace A376672.P18092432797417464435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376667 (A000124 (n + 4) + 4).toNat

end

end A376672.P18092432797417464435

/-! ## A376672.P5357462188606358608

`A376667(eq[4, A002262(n)]+1)`
-/

namespace A376672.P5357462188606358608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A376672.P5357462188606358608

/-!
# A376673: Least number whose maximum frequency in a fixed row of A036038 (or A078760) is equal to n, i.e., least number m such that A376663(m) = n, or 0 if no such number exists.

The programs for A376673, there is no canonical definition to state claims against.
-/

/-! ## A376673.P16766054600027202846

`A376667(∑[n+1])`
-/

namespace A376673.P16766054600027202846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376667 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376673.P16766054600027202846

/-! ## A376673.P15099108081005742630

`A376667(A000217(n+1))%A013729(n)`
-/

namespace A376673.P15099108081005742630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376667 (A000217 (n + 1)).toNat) (A013729 n)

end

end A376673.P15099108081005742630

/-! ## A376673.P994014088960165378

`A376667(A046489(n))^A376662(n)`
-/

namespace A376673.P994014088960165378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376667 (A046489 n).toNat : ℚ) ^ (A376662 n : ℤ)

end

end A376673.P994014088960165378

/-!
# A376677: List of subwords (or factors) of the Kolakoski sequence (A000002).

The programs for A376677, there is no canonical definition to state claims against.
-/

/-! ## A376677.P5832228123303708885

`A214215(n+1)-A325799(A258615(n+1))`
-/

namespace A376677.P5832228123303708885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214215 (n + 1) - A325799 (A258615 (n + 1)).toNat

end

end A376677.P5832228123303708885

/-! ## A376677.P9641420035985151819

`A004151(A214215(n+1))`
-/

namespace A376677.P9641420035985151819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A214215 (n + 1)).toNat

end

end A376677.P9641420035985151819

/-! ## A376677.P2610932815626570614

`record[A214215(A326619(n+2))]`
-/

namespace A376677.P2610932815626570614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214215 (A326619 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376677.P2610932815626570614

/-! ## A376677.P5923795379802575040

`A028310(A214215(comp[24*n]))`
-/

namespace A376677.P5923795379802575040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A214215 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A376677.P5923795379802575040

/-! ## A376677.P17442814597497411730

`A023443(A214215(n+1)+1)`
-/

namespace A376677.P17442814597497411730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A214215 (n + 1) + 1).toNat

end

end A376677.P17442814597497411730

/-!
# A376679: Number of strict integer factorizations of n into nonsquarefree factors > 1.

The programs for A376679, there is no canonical definition to state claims against.
-/

/-! ## A376679.P16804257221970840021

`A007895(A347048(n+1)%A337812(n+1))`
-/

namespace A376679.P16804257221970840021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.tmod (A347048 (n + 1)) (A337812 (n + 1))).toNat

end

end A376679.P16804257221970840021

/-! ## A376679.P12095003303566783372

`A324748(A181819(n+1)%A131673(n))`
-/

namespace A376679.P12095003303566783372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324748 (Int.tmod (A181819 (n + 1)) (A131673 n)).toNat

end

end A376679.P12095003303566783372

/-! ## A376679.P120881325117372485

`A000607(A008479(n+1)%A376653(n+1))`
-/

namespace A376679.P120881325117372485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (Int.tmod (A008479 (n + 1)) (A376653 (n + 1))).toNat

end

end A376679.P120881325117372485

/-! ## A376679.P3917202800573752295

`A376657(n+1)/A376663(A376639(n+5))`
-/

namespace A376679.P3917202800573752295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376657 (n + 1) : ℚ) / (A376663 (A376639 (n + 5)).toNat : ℚ)

end

end A376679.P3917202800573752295

/-! ## A376679.P18234329059812130280

`A124766((A348616(n+1)+C(2, n+2))²)`
-/

namespace A376679.P18234329059812130280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 ((A348616 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)) ^ 2).toNat

end

end A376679.P18234329059812130280

/-!
# A376680: Run-lengths of first differences of composite numbers.

The programs for A376680, there is no canonical definition to state claims against.
-/

/-! ## A376680.P15316178546977204522

`runs[A073783(1+n)]`
-/

namespace A376680.P15316178546977204522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P15316178546977204522

/-! ## A376680.P1648818580774231741

`runs[A073784(n+1)]`
-/

namespace A376680.P1648818580774231741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P1648818580774231741

/-! ## A376680.P2125803834661810266

`runs[A065310(n+2)]`
-/

namespace A376680.P2125803834661810266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P2125803834661810266

/-! ## A376680.P15388681727340817336

`runs[A054546(n+3)]`
-/

namespace A376680.P15388681727340817336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P15388681727340817336

/-! ## A376680.P4692860310749562135

`runs[Δ[A002808(n+1)]]`
-/

namespace A376680.P4692860310749562135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P4692860310749562135

/-! ## A376680.P18173392490025377789

`runs[Δ[A072668(n+1)]]`
-/

namespace A376680.P18173392490025377789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P18173392490025377789

/-! ## A376680.P3300901278838448404

`runs[Δ[A073169(n+1)]]`
-/

namespace A376680.P3300901278838448404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P3300901278838448404

/-! ## A376680.P907737864802782611

`runs[Δ[A073425(n+1)]]`
-/

namespace A376680.P907737864802782611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P907737864802782611

/-! ## A376680.P12957926194981950060

`runs[Δ[A079696(n+1)]]`
-/

namespace A376680.P12957926194981950060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P12957926194981950060

/-! ## A376680.P17306622782530878225

`runs[Δ[A161537(n+1)]]`
-/

namespace A376680.P17306622782530878225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376680.P17306622782530878225

/-!
# A376681: Row sums of the absolute value of the array A095195(n, k) = n-th term of the k-th differences of the prime numbers (A000040).

The programs for A376681, there is no canonical definition to state claims against.
-/

/-! ## A376681.P8831930803200154002

`A371169(A334630(n+1))`
-/

namespace A376681.P8831930803200154002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371169 (A334630 (n + 1)).toNat

end

end A376681.P8831930803200154002

/-!
# A376682: Array read by antidiagonals downward where A(n,k) is the n-th term of the k-th differences of the noncomposite numbers (A008578).

The programs for A376682, there is no canonical definition to state claims against.
-/

/-! ## A376682.P1714652571165712848

`A350004(n)%A002764(n)`
-/

namespace A376682.P1714652571165712848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350004 n) (A002764 n)

end

end A376682.P1714652571165712848

/-! ## A376682.P5350140768328628670

`A350004(n)+A000007(A003520(n))`
-/

namespace A376682.P5350140768328628670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350004 n + A000007 (A003520 n).toNat

end

end A376682.P5350140768328628670

/-! ## A376682.P388714587045085284

`A350004(n)+A000007(A050112(n+1))`
-/

namespace A376682.P388714587045085284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350004 n + A000007 (A050112 (n + 1)).toNat

end

end A376682.P388714587045085284

/-! ## A376682.P1181433537754425286

`A350004(n)+A000038(A056798(n+1))`
-/

namespace A376682.P1181433537754425286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350004 n + A000038 (A056798 (n + 1)).toNat

end

end A376682.P1181433537754425286

/-! ## A376682.P2120941225151141996

`A350004(n)+A000035(A118921(n+1))`
-/

namespace A376682.P2120941225151141996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350004 n + A000035 (A118921 (n + 1)).toNat

end

end A376682.P2120941225151141996

/-!
# A376683: Antidiagonal-sums of the array A376682(n,k) = n-th term of the k-th differences of the noncomposite numbers (A008578).

The programs for A376683, there is no canonical definition to state claims against.
-/

/-! ## A376683.P15446446526015327562

`Δ[A007504(n)]-A030016(n+1)`
-/

namespace A376683.P15446446526015327562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A030016 (n + 1)

end

end A376683.P15446446526015327562

/-! ## A376683.P12666344559993260325

`A000040(n+1)-A030016(n+1)`
-/

namespace A376683.P12666344559993260325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A030016 (n + 1)

end

end A376683.P12666344559993260325

/-! ## A376683.P8046378456699426024

`A008578(n+2)-A030016(n+1)`
-/

namespace A376683.P8046378456699426024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A030016 (n + 1)

end

end A376683.P8046378456699426024

/-! ## A376683.P14587051227429814879

`A006093(n+1)+1-A030016(n+1)`
-/

namespace A376683.P14587051227429814879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1 - A030016 (n + 1)

end

end A376683.P14587051227429814879

/-! ## A376683.P855325537466680438

`A003963(A006450(n+1))-A030016(n+1)`
-/

namespace A376683.P855325537466680438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A006450 (n + 1)).toNat - A030016 (n + 1)

end

end A376683.P855325537466680438

/-!
# A376688: List of palindromic subwords (or palindromic factors) of the Kolakoski sequence (A000002).

The programs for A376688, there is no canonical definition to state claims against.
-/

/-! ## A376688.P1737953123011412275

`∩[A118594(n+1), A376677(n+1)]`
-/

namespace A376688.P1737953123011412275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376688.P1737953123011412275

/-! ## A376688.P15127332646999743203

`∩[A118595(n+1), A376677(n+1)]`
-/

namespace A376688.P15127332646999743203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376688.P15127332646999743203

/-! ## A376688.P18240273171573610872

`∩[A083160(n+1), A376677(n+1)]`
-/

namespace A376688.P18240273171573610872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376688.P18240273171573610872

/-! ## A376688.P6780174667043698188

`∩[A118596(n+1), A376677(n+1)]`
-/

namespace A376688.P6780174667043698188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376688.P6780174667043698188

/-! ## A376688.P4693515753337489867

`∩[A118597(n+1), A376677(n+1)]`
-/

namespace A376688.P4693515753337489867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376688.P4693515753337489867

/-!
# A376690: First differences of A055932.

The programs for A376690, there is no canonical definition to state claims against.
-/

/-! ## A376690.P9974442910985355693

`Δ[∪[A363814(n+1), A070175(n)]]`
-/

namespace A376690.P9974442910985355693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376690.P9974442910985355693

/-! ## A376690.P13719266215665700765

`Δ[A055932(1+n)]`
-/

namespace A376690.P13719266215665700765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376690.P13719266215665700765

/-! ## A376690.P14812445040050221276

`Δ[sqrt(A373559(n+1))]`
-/

namespace A376690.P14812445040050221276
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A373559 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376690.P14812445040050221276

/-! ## A376690.P799275561705059586

`A055932(n+2)-A055932(n+1)`
-/

namespace A376690.P799275561705059586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 2) - A055932 (n + 1)

end

end A376690.P799275561705059586

/-! ## A376690.P1112072016901862217

`Δ[record[A071364(n+1)]]`
-/

namespace A376690.P1112072016901862217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376690.P1112072016901862217

/-! ## A376690.P8393341551428013865

`Δ[record[A083259(n+1)]]`
-/

namespace A376690.P8393341551428013865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376690.P8393341551428013865

/-! ## A376690.P12319703458762758337

`runs[A377028(n+1)]`
-/

namespace A376690.P12319703458762758337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376690.P12319703458762758337

/-! ## A376690.P7639847326001890642

`Δ[record[A340346(n+1)]]`
-/

namespace A376690.P7639847326001890642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376690.P7639847326001890642

/-!
# A376691: The number of solutions to x + y == x^2 + y^2 == x^3 + y^3 (mod n) with 0 <= x <= y < n.

The programs for A376691, there is no canonical definition to state claims against.
-/

/-! ## A376691.P15042524580081543852

`A378542(∏{e}[n+1, 2*#+1]%A181669(3*n+2))`
-/

namespace A376691.P15042524580081543852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378542 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A181669 (3 * n + 2))).toNat

end

end A376691.P15042524580081543852

/-! ## A376691.P10836826696308773483

`A007095(∏{p}[n+1, val((n+1)², #)+1]%A211821(3*n+5))`
-/

namespace A376691.P10836826696308773483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation ((n + 1) ^ 2) p + 1) : ℕ) : ℤ) (A211821 (3 * n + 5))).toNat

end

end A376691.P10836826696308773483

/-! ## A376691.P8514376884988401532

`A020662(A048691(n+1)%A242128(n+1))`
-/

namespace A376691.P8514376884988401532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020662 (Int.tmod (A048691 (n + 1)) (A242128 (n + 1))).toNat

end

end A376691.P8514376884988401532

/-! ## A376691.P8253315506463986654

`A007095(A048691(n+1))%A333788(n+1)`
-/

namespace A376691.P8253315506463986654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A048691 (n + 1)).toNat) (A333788 (n + 1))

end

end A376691.P8253315506463986654

/-! ## A376691.P10953991977337767694

`A378542(A048691(n+1))%A137627(n+1)`
-/

namespace A376691.P10953991977337767694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378542 (A048691 (n + 1)).toNat) (A137627 (n + 1))

end

end A376691.P10953991977337767694

/-!
# A376692: Numbers with the most significant digit odd and alternating parity of digits.

The programs for A376692, there is no canonical definition to state claims against.
-/

/-! ## A376692.P5083172151313334655

`filter[A355504(2*n), A228710(#)]`
-/

namespace A376692.P5083172151313334655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A376692.P5083172151313334655

/-! ## A376692.P9600160671380824824

`A137564(A030148(n+1))`
-/

namespace A376692.P9600160671380824824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A030148 (n + 1)).toNat

end

end A376692.P9600160671380824824

/-! ## A376692.P8693373014809214737

`eq[0, A334493(A065031(n))]`
-/

namespace A376692.P8693373014809214737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334493 (A065031 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376692.P8693373014809214737

/-! ## A376692.P4372112152457920932

`eq[A040041(n), A065031(n)]`
-/

namespace A376692.P4372112152457920932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376692.P4372112152457920932

/-! ## A376692.P8352258219215771230

`eq[A118764(n), A351744(n)]`
-/

namespace A376692.P8352258219215771230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376692.P8352258219215771230

/-!
# A376694: Number of permutations of order n avoiding consecutive pattern 121'3.

The programs for A376694, there is no canonical definition to state claims against.
-/

/-! ## A376694.P13378545802061582586

`A052517(n)+A027356(n^n)`
-/

namespace A376694.P13378545802061582586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 n + A027356 (n ^ n)

end

end A376694.P13378545802061582586

/-! ## A376694.P16330625559692843273

`A052517(n)-A010815((n+1)!)`
-/

namespace A376694.P16330625559692843273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 n - A010815 (Nat.factorial (n + 1))

end

end A376694.P16330625559692843273

/-! ## A376694.P17572623893585104727

`A080339(C(n+10, 10))+A052517(n)`
-/

namespace A376694.P17572623893585104727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (Nat.choose (n + 10) 10) + A052517 n

end

end A376694.P17572623893585104727

/-!
# A376695: a(n) = Sum_{k=0..floor(n/2)} binomial(n-2*k,floor(k/3)).

The programs for A376695, the canonical program `A376695.P14768223353078754658` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376695 has offset 0).

The definition of A376695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(n-2*#, floor(#/3))]` (program `A376695.P14768223353078754658`, by `A376695.P14768223353078754658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376695.P2845728502915894800

`a(n-1)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3, a(5)=3, a(6)=3`
-/

namespace A376695.P2845728502915894800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 3, 3, 3] fun n a =>
  a (n - 1) + a (n - 7)

end

end A376695.P2845728502915894800

namespace A376695

/-- `a(n-1)+a(n-7)` -/
def P2845728502915894800.Spec : Prop :=
  ∀ n, (P2845728502915894800.a n : ℤ) = A376695 n

end A376695

/-! ## A376695.P15059518458142608866

`ogf((1-x^6)/(1-x-x^2+x^3-x^7+x^9))`
-/

namespace A376695.P15059518458142608866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, -1] [1, -1, -1, 1, 0, 0, 0, -1, 0, 1] n

end

end A376695.P15059518458142608866

namespace A376695

/-- `ogf((1-x^6)/(1-x-x^2+x^3-x^7+x^9))` -/
def P15059518458142608866.Spec : Prop :=
  ∀ n, P15059518458142608866.a n = A376695 n

end A376695

/-! ## A376695.P14768223353078754658

`∑{#}[floor(n/2), C(n-2*#, floor(#/3))]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376695

/-- `∑{#}[floor(n/2), C(n-2*#, floor(#/3))]` -/
def P14768223353078754658.Spec : Prop :=
  ∀ n, (P14768223353078754658.a n : ℤ) = A376695 n

theorem P14768223353078754658.correct : P14768223353078754658.Spec := by
  intro n
  simp only [A376695]

end A376695

/-!
# A376696: a(n) = Sum_{k=0..floor(n/3)} binomial(n-3*k,floor(k/3)).

The programs for A376696, the canonical program `A376696.P10453633768365413586` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376696 has offset 0).

The definition of A376696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(n-3*#, floor(#/3))]` (program `A376696.P10453633768365413586`, by `A376696.P10453633768365413586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376696.P12412422579120823356

`a(n-1)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=2, a(6)=3, a(7)=3, a(8)=3, a(9)=3`
-/

namespace A376696.P12412422579120823356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 2, 3, 3, 3, 3] fun n a =>
  a (n - 1) + a (n - 10)

end

end A376696.P12412422579120823356

namespace A376696

/-- `a(n-1)+a(n-10)` -/
def P12412422579120823356.Spec : Prop :=
  ∀ n, (P12412422579120823356.a n : ℤ) = A376696 n

end A376696

/-! ## A376696.P6980519258518175234

`ogf((1-x^9)/(1-x-x^3+x^4-x^10+x^13))`
-/

namespace A376696.P6980519258518175234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] [1, -1, 0, -1, 1, 0, 0, 0, 0, 0, -1, 0, 0, 1] n

end

end A376696.P6980519258518175234

namespace A376696

/-- `ogf((1-x^9)/(1-x-x^3+x^4-x^10+x^13))` -/
def P6980519258518175234.Spec : Prop :=
  ∀ n, P6980519258518175234.a n = A376696 n

end A376696

/-! ## A376696.P10453633768365413586

`∑{#}[floor(n/3), C(n-3*#, floor(#/3))]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376696

/-- `∑{#}[floor(n/3), C(n-3*#, floor(#/3))]` -/
def P10453633768365413586.Spec : Prop :=
  ∀ n, (P10453633768365413586.a n : ℤ) = A376696 n

theorem P10453633768365413586.correct : P10453633768365413586.Spec := by
  intro n
  simp only [A376696]

end A376696

/-!
# A376697: Number of binary words of length 2^n-1 with at least n "0" between any two "1" digits.

The programs for A376697, the canonical program `A376697.P15761021765779302242` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376697 has offset 0).

The definition of A376697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376697.P15761021765779302242

`1+∑{#}[floor((2^n-2)/(n+1)), C(2^n-n*#-1, #+1)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376697

/-- `1+∑{#}[floor((2^n-2)/(n+1)), C(2^n-n*#-1, #+1)]` -/
def P15761021765779302242.Spec : Prop :=
  ∀ n, (P15761021765779302242.a n : ℤ) = A376697 n

theorem P15761021765779302242.correct : P15761021765779302242.Spec := by
  intro n
  simp only [A376697]

end A376697

/-! ## A376697.P15498136561539728678

`A376091(2^n-1)`
-/

namespace A376697.P15498136561539728678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376091 (2 ^ n - 1)

end

end A376697.P15498136561539728678

namespace A376697

/-- `A376091(2^n-1)` -/
def P15498136561539728678.Spec : Prop :=
  ∀ n, P15498136561539728678.a n = A376697 n

end A376697

/-! ## A376697.P12258936645728661242

`record[A036987(n)*A376091(n)]`
-/

namespace A376697.P12258936645728661242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A376091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376697.P12258936645728661242

namespace A376697

/-- `record[A036987(n)*A376091(n)]` -/
def P12258936645728661242.Spec : Prop :=
  ∀ n, P12258936645728661242.a n = A376697 n

end A376697

/-! ## A376697.P6385308888562134828

`record[gcd(A049501(n), A376091(n))]`
-/

namespace A376697.P6385308888562134828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049501 n) (A376091 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376697.P6385308888562134828

namespace A376697

/-- `record[gcd(A049501(n), A376091(n))]` -/
def P6385308888562134828.Spec : Prop :=
  ∀ n, (P6385308888562134828.a n : ℤ) = A376697 n

end A376697

/-! ## A376697.P5819866490205701396

`A060576(n+3)*A376091(A000225(n))`
-/

namespace A376697.P5819866490205701396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 3) * A376091 (A000225 n).toNat

end

end A376697.P5819866490205701396

namespace A376697

/-- `A060576(n+3)*A376091(A000225(n))` -/
def P5819866490205701396.Spec : Prop :=
  ∀ n, P5819866490205701396.a n = A376697 n

end A376697

/-!
# A376698: a(n) is the least k >= 0 such that the k-th iterate of the run lengths transform of A376637(n) equals 1.

The programs for A376698, there is no canonical definition to state claims against.
-/

/-! ## A376698.P2266385105364062689

`a(A376676(n+1)-1)+1` with `a(0)=0`
-/

namespace A376698.P2266385105364062689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A376676 (n + 1) - 1).toNat + 1

end

end A376698.P2266385105364062689

/-! ## A376698.P18191292788747432348

`A029837(A376733(n+1)+1)`
-/

namespace A376698.P18191292788747432348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A376733 (n + 1) + 1).toNat

end

end A376698.P18191292788747432348

/-! ## A376698.P4868457152249321972

`A070939(A376733(n+1))-A000007(n)`
-/

namespace A376698.P4868457152249321972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A376733 (n + 1)).toNat - A000007 n

end

end A376698.P4868457152249321972

/-! ## A376698.P8211493579774544050

`A070939(A376733(n+1))%A270988(n)`
-/

namespace A376698.P8211493579774544050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A376733 (n + 1)).toNat) (A270988 n)

end

end A376698.P8211493579774544050

/-!
# A376699: Positions of primes in the sequence of numbers of the form 2^i * 3^j - 1 (A069353).

The programs for A376699, there is no canonical definition to state claims against.
-/

/-! ## A376699.P4141097648768967151

`record[A322026(A006093(n+1)+2)]`
-/

namespace A376699.P4141097648768967151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A006093 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376699.P4141097648768967151

/-! ## A376699.P15472106037333833789

`A071521(A005105(n+1)+1)`
-/

namespace A376699.P15472106037333833789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A005105 (n + 1) + 1).toNat

end

end A376699.P15472106037333833789

/-! ## A376699.P1385286836032459869

`A071521(∩[A069353(n+1), A293074(n+1)]+1)`
-/

namespace A376699.P1385286836032459869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293074 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A376699.P1385286836032459869

/-! ## A376699.P2849047781692692662

`A071521(∩[A069353(n+1), A293194(n+1)]+1)`
-/

namespace A376699.P2849047781692692662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A376699.P2849047781692692662

/-! ## A376699.P15799410260127255691

`A071521(∩[A069353(n+1), A293199(n+1)]+1)`
-/

namespace A376699.P15799410260127255691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293199 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A376699.P15799410260127255691

