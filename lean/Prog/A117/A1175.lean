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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A117500: Triangle read by rows in which row n gives the partition of n associated with highest degree representation of symmetric group S_n.

The programs for A117500, there is no canonical definition to state claims against.
-/

/-! ## A117500.P8609707396046206777

`A297626(A242474(n+1)%A184548(n+1))`
-/

namespace A117500.P8609707396046206777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297626 (Int.tmod (A242474 (n + 1)) (A184548 (n + 1))).toNat

end

end A117500.P8609707396046206777

/-! ## A117500.P10292739582056355309

`A297626(n+1)-A185284(A004273(n))`
-/

namespace A117500.P10292739582056355309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297626 (n + 1) - A185284 (A004273 n).toNat

end

end A117500.P10292739582056355309

/-! ## A117500.P10238036882632714151

`A297626(n+1)-A011744(A185036(n))`
-/

namespace A117500.P10238036882632714151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297626 (n + 1) - A011744 (A185036 n).toNat

end

end A117500.P10238036882632714151

/-! ## A117500.P11419703264908047371

`A297626(n+1)-A011744(A185236(n))`
-/

namespace A117500.P11419703264908047371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297626 (n + 1) - A011744 (A185236 n).toNat

end

end A117500.P11419703264908047371

/-! ## A117500.P5029018825218906678

`A297626(A077342(n+1))`
-/

namespace A117500.P5029018825218906678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297626 (A077342 (n + 1)).toNat

end

end A117500.P5029018825218906678

/-!
# A117501: Triangle generated from an array of generalized Fibonacci-like terms.

The programs for A117501, the canonical program `A117501.P18074844376975616405` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117501 has offset 1).

The definition of A117501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117501.P18074844376975616405

`(row(n)-col(n))*A000045(col(n))+A000045(col(n)+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117501

/-- `(row(n)-col(n))*A000045(col(n))+A000045(col(n)+1)` -/
def P18074844376975616405.Spec : Prop :=
  ∀ n, P18074844376975616405.a n = A117501 (n + 1)

theorem P18074844376975616405.correct : P18074844376975616405.Spec := by
  intro n
  simp only [A117501, Nat.add_sub_cancel]

end A117501

/-! ## A117501.P11515199258683213414

`A353595(comp[∑[n]])`
-/

namespace A117501.P11515199258683213414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353595 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117501.P11515199258683213414

namespace A117501

/-- `A353595(comp[∑[n]])` -/
def P11515199258683213414.Spec : Prop :=
  ∀ n, P11515199258683213414.a n = A117501 (n + 1)

end A117501

/-! ## A117501.P13633673820645983096

`A352744(A007401(n+1))`
-/

namespace A117501.P13633673820645983096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352744 (A007401 (n + 1)).toNat

end

end A117501.P13633673820645983096

namespace A117501

/-- `A352744(A007401(n+1))` -/
def P13633673820645983096.Spec : Prop :=
  ∀ n, P13633673820645983096.a n = A117501 (n + 1)

end A117501

/-! ## A117501.P13973952417365812308

`A352744(n)+A141169(n)`
-/

namespace A117501.P13973952417365812308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352744 n + A141169 n

end

end A117501.P13973952417365812308

namespace A117501

/-- `A352744(n)+A141169(n)` -/
def P13973952417365812308.Spec : Prop :=
  ∀ n, P13973952417365812308.a n = A117501 (n + 1)

theorem P13973952417365812308.correct : P13973952417365812308.Spec := by
  intro n
  simp only [A117501, Nat.add_sub_cancel, A117501.P13973952417365812308.a, A117501.P18074844376975616405.a, A000045, A000045.P11838749114346432762.a, A141169, A141169.P5864777374650614929.a, A352744, A352744.P9010724261724988530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117501

/-! ## A117501.P11011846552792284343

`A017125(A061579(comp[C(n, 2)]))`
-/

namespace A117501.P11011846552792284343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A117501.P11011846552792284343

namespace A117501

/-- `A017125(A061579(comp[C(n, 2)]))` -/
def P11011846552792284343.Spec : Prop :=
  ∀ n, P11011846552792284343.a n = A117501 (n + 1)

end A117501

/-! ## A117501.P6207286819762336923

`A017125(A038722(n+1)+A003056(n))`
-/

namespace A117501.P6207286819762336923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A038722 (n + 1) + A003056 n).toNat

end

end A117501.P6207286819762336923

namespace A117501

/-- `A017125(A038722(n+1)+A003056(n))` -/
def P6207286819762336923.Spec : Prop :=
  ∀ n, P6207286819762336923.a n = A117501 (n + 1)

end A117501

/-! ## A117501.P12110214099853955139

`A017125(A061579(n)+A002024(n+1))`
-/

namespace A117501.P12110214099853955139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A061579 n + A002024 (n + 1)).toNat

end

end A117501.P12110214099853955139

namespace A117501

/-- `A017125(A061579(n)+A002024(n+1))` -/
def P12110214099853955139.Spec : Prop :=
  ∀ n, P12110214099853955139.a n = A117501 (n + 1)

end A117501

/-! ## A117501.P5866391480008375615

`A104763(n+1)+A025581(n)*A141169(n)`
-/

namespace A117501.P5866391480008375615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + A025581 n * A141169 n

end

end A117501.P5866391480008375615

namespace A117501

/-- `A104763(n+1)+A025581(n)*A141169(n)` -/
def P5866391480008375615.Spec : Prop :=
  ∀ n, P5866391480008375615.a n = A117501 (n + 1)

theorem P5866391480008375615.correct : P5866391480008375615.Spec := by
  intro n
  simp only [A117501, Nat.add_sub_cancel, A117501.P5866391480008375615.a, A117501.P18074844376975616405.a, A000045, A000045.P11838749114346432762.a, A025581, A025581.P16112744757063613497.a, A104763, A104763.P8153138766110593277.a, A141169, A141169.P5864777374650614929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117501

/-! ## A117501.P12600960348324587751

`A292030(A014132(n+1))+A141169(n)-A292030(n)`
-/

namespace A117501.P12600960348324587751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 (A014132 (n + 1)).toNat + (A141169 n - A292030 n)

end

end A117501.P12600960348324587751

namespace A117501

/-- `A292030(A014132(n+1))+A141169(n)-A292030(n)` -/
def P12600960348324587751.Spec : Prop :=
  ∀ n, P12600960348324587751.a n = A117501 (n + 1)

end A117501

/-! ## A117501.P143048248762491428

`A119457(n+1)-A292030(n)`
-/

namespace A117501.P143048248762491428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119457 (n + 1) - A292030 n

end

end A117501.P143048248762491428

namespace A117501

/-- `A119457(n+1)-A292030(n)` -/
def P143048248762491428.Spec : Prop :=
  ∀ n, P143048248762491428.a n = A117501 (n + 1)

theorem P143048248762491428.correct : P143048248762491428.Spec := by
  intro n
  simp only [A117501, Nat.add_sub_cancel, A117501.P143048248762491428.a, A117501.P18074844376975616405.a, A000045, A000045.P11838749114346432762.a, A119457, A119457.P468492089180334650.a, A292030, A292030.P6609219519012494129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117501

/-! ## A117501.P5897990321543328248

`A109754(comp[∑[n]])`
-/

namespace A117501.P5897990321543328248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117501.P5897990321543328248

namespace A117501

/-- `A109754(comp[∑[n]])` -/
def P5897990321543328248.Spec : Prop :=
  ∀ n, P5897990321543328248.a n = A117501 (n + 1)

end A117501

/-! ## A117501.P12470608033583040062

`A109754(A014132(n+1))*A157928(n+2)`
-/

namespace A117501.P12470608033583040062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 (A014132 (n + 1)).toNat * A157928 (n + 2)

end

end A117501.P12470608033583040062

namespace A117501

/-- `A109754(A014132(n+1))*A157928(n+2)` -/
def P12470608033583040062.Spec : Prop :=
  ∀ n, P12470608033583040062.a n = A117501 (n + 1)

end A117501

/-! ## A117501.P5190777920451223978

`A093873(A099627(n))`
-/

namespace A117501.P5190777920451223978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A099627 n).toNat

end

end A117501.P5190777920451223978

namespace A117501

/-- `A093873(A099627(n))` -/
def P5190777920451223978.Spec : Prop :=
  ∀ n, P5190777920451223978.a n = A117501 (n + 1)

end A117501

/-!
# A117502: Triangle, row sums = A001595.

The programs for A117502, the canonical program `A117502.P15260034701529770298` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117502 has offset 1).

The definition of A117502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117502.P15260034701529770298

`A104763(A007401(n+2))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117502

/-- `A104763(A007401(n+2))` -/
def P15260034701529770298.Spec : Prop :=
  ∀ n, P15260034701529770298.a n = A117502 (n + 1)

theorem P15260034701529770298.correct : P15260034701529770298.Spec := by
  intro n
  simp only [A117502, Nat.add_sub_cancel]

end A117502

/-! ## A117502.P1280031743280252108

`A104763(A066182(n+2))`
-/

namespace A117502.P1280031743280252108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A066182 (n + 2)).toNat

end

end A117502.P1280031743280252108

namespace A117502

/-- `A104763(A066182(n+2))` -/
def P1280031743280252108.Spec : Prop :=
  ∀ n, P1280031743280252108.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P16171621208837728883

`A104763(lt[3, A103327(n)])`
-/

namespace A117502.P16171621208837728883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A117502.P16171621208837728883

namespace A117502

/-- `A104763(lt[3, A103327(n)])` -/
def P16171621208837728883.Spec : Prop :=
  ∀ n, P16171621208837728883.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P9094642020854686224

`A104763(A014132(n+2)-1)`
-/

namespace A117502.P9094642020854686224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A014132 (n + 2) - 1).toNat

end

end A117502.P9094642020854686224

namespace A117502

/-- `A104763(A014132(n+2)-1)` -/
def P9094642020854686224.Spec : Prop :=
  ∀ n, P9094642020854686224.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P14370123606291595429

`A104763(lt[2, A104732(n+1)])`
-/

namespace A117502.P14370123606291595429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A117502.P14370123606291595429

namespace A117502

/-- `A104763(lt[2, A104732(n+1)])` -/
def P14370123606291595429.Spec : Prop :=
  ∀ n, P14370123606291595429.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P3250231598981397135

`A193588(1-A154325(n)+n)`
-/

namespace A117502.P3250231598981397135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 (1 - A154325 n + (n : ℤ)).toNat

end

end A117502.P3250231598981397135

namespace A117502

/-- `A193588(1-A154325(n)+n)` -/
def P3250231598981397135.Spec : Prop :=
  ∀ n, P3250231598981397135.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P7292469580611431055

`A104763(A003057(n+3)+n)`
-/

namespace A117502.P7292469580611431055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A003057 (n + 3) + (n : ℤ)).toNat

end

end A117502.P7292469580611431055

namespace A117502

/-- `A104763(A003057(n+3)+n)` -/
def P7292469580611431055.Spec : Prop :=
  ∀ n, P7292469580611431055.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P12510696634967819269

`A104763(n+1)+Δ[A131410(n+1)]`
-/

namespace A117502.P12510696634967819269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (f1 (n + 1) - f1 n)

end

end A117502.P12510696634967819269

namespace A117502

/-- `A104763(n+1)+Δ[A131410(n+1)]` -/
def P12510696634967819269.Spec : Prop :=
  ∀ n, P12510696634967819269.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P9517208804489417074

`A000045(A103451(n)+A002260(n+1))`
-/

namespace A117502.P9517208804489417074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A103451 n + A002260 (n + 1)).toNat

end

end A117502.P9517208804489417074

namespace A117502

/-- `A000045(A103451(n)+A002260(n+1))` -/
def P9517208804489417074.Spec : Prop :=
  ∀ n, P9517208804489417074.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P17435717651922997496

`A000045(A002024(n+2)-A025581(n))`
-/

namespace A117502.P17435717651922997496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002024 (n + 2) - A025581 n).toNat

end

end A117502.P17435717651922997496

namespace A117502

/-- `A000045(A002024(n+2)-A025581(n))` -/
def P17435717651922997496.Spec : Prop :=
  ∀ n, P17435717651922997496.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P1886657212765046800

`A104763(lt[A104763(n+1), A109906(n)])`
-/

namespace A117502.P1886657212765046800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117502.P1886657212765046800

namespace A117502

/-- `A104763(lt[A104763(n+1), A109906(n)])` -/
def P1886657212765046800.Spec : Prop :=
  ∀ n, P1886657212765046800.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P16320094928507256391

`A000045(A010054(n+1)+A002260(n+1))`
-/

namespace A117502.P16320094928507256391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A010054 (n + 1) + A002260 (n + 1)).toNat

end

end A117502.P16320094928507256391

namespace A117502

/-- `A000045(A010054(n+1)+A002260(n+1))` -/
def P16320094928507256391.Spec : Prop :=
  ∀ n, P16320094928507256391.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P17710245575597217128

`A000045(A002262(A002024(n+2)+n)+1)`
-/

namespace A117502.P17710245575597217128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 (A002024 (n + 2) + (n : ℤ)).toNat + 1).toNat

end

end A117502.P17710245575597217128

namespace A117502

/-- `A000045(A002262(A002024(n+2)+n)+1)` -/
def P17710245575597217128.Spec : Prop :=
  ∀ n, P17710245575597217128.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P10914771991419844200

`A104763(n+1)+Δ[A000045(A002024(n+1))]`
-/

namespace A117502.P10914771991419844200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (f1 (n + 1) - f1 n)

end

end A117502.P10914771991419844200

namespace A117502

/-- `A104763(n+1)+Δ[A000045(A002024(n+1))]` -/
def P10914771991419844200.Spec : Prop :=
  ∀ n, P10914771991419844200.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P7609256915682120008

`A000045(A003056(n+1)-A004736(n+1)+2)`
-/

namespace A117502.P7609256915682120008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003056 (n + 1) - A004736 (n + 1) + 2).toNat

end

end A117502.P7609256915682120008

namespace A117502

/-- `A000045(A003056(n+1)-A004736(n+1)+2)` -/
def P7609256915682120008.Spec : Prop :=
  ∀ n, P7609256915682120008.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P3364764196498480707

`A001611(A003056(n+1)-A025581(n)+1)-1`
-/

namespace A117502.P3364764196498480707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A003056 (n + 1) - A025581 n + 1).toNat - 1

end

end A117502.P3364764196498480707

namespace A117502

/-- `A001611(A003056(n+1)-A025581(n)+1)-1` -/
def P3364764196498480707.Spec : Prop :=
  ∀ n, P3364764196498480707.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P1283745378729604601

`A000045(A002024(n+2)-A057554(2*(n+1)))`
-/

namespace A117502.P1283745378729604601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002024 (n + 2) - A057554 (2 * (n + 1))).toNat

end

end A117502.P1283745378729604601

namespace A117502

/-- `A000045(A002024(n+2)-A057554(2*(n+1)))` -/
def P1283745378729604601.Spec : Prop :=
  ∀ n, P1283745378729604601.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P8850596232326931433

`A104763(n+1)+A131410(n+2)-A131410(n+1)`
-/

namespace A117502.P8850596232326931433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (A131410 (n + 2) - A131410 (n + 1))

end

end A117502.P8850596232326931433

namespace A117502

/-- `A104763(n+1)+A131410(n+2)-A131410(n+1)` -/
def P8850596232326931433.Spec : Prop :=
  ∀ n, P8850596232326931433.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P16415450179992896970

`A104763(n+1)+Δ[A131411(n+1)-A104763(n+1)]`
-/

namespace A117502.P16415450179992896970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131411 (n + 1) - A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (f1 (n + 1) - f1 n)

end

end A117502.P16415450179992896970

namespace A117502

/-- `A104763(n+1)+Δ[A131411(n+1)-A104763(n+1)]` -/
def P16415450179992896970.Spec : Prop :=
  ∀ n, P16415450179992896970.a n = A117502 (n + 1)

end A117502

/-! ## A117502.P17649190207431757488

`A104763(lt[1, A110506(n)])`
-/

namespace A117502.P17649190207431757488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A117502.P17649190207431757488

namespace A117502

/-- `A104763(lt[1, A110506(n)])` -/
def P17649190207431757488.Spec : Prop :=
  ∀ n, P17649190207431757488.a n = A117502 (n + 1)

end A117502

/-!
# A117506: Irregular triangle read by rows: dimensions of the irreducible representations of the symmetric group S_n.

The programs for A117506, there is no canonical definition to state claims against.
-/

/-! ## A117506.P10398357001090620483

`A036042(n)!/A263003(n)`
-/

namespace A117506.P10398357001090620483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A263003 n : ℚ)

end

end A117506.P10398357001090620483

/-! ## A117506.P11833594825335849865

`A153452(A185974(n))`
-/

namespace A117506.P11833594825335849865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A185974 n).toNat

end

end A117506.P11833594825335849865

/-! ## A117506.P18252747522129076285

`A153452(A334434(n))`
-/

namespace A117506.P18252747522129076285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A334434 n).toNat

end

end A117506.P18252747522129076285

/-! ## A117506.P5579778212462930469

`sqrt(A136100(n))`
-/

namespace A117506.P5579778212462930469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A136100 n : ℝ)

end

end A117506.P5579778212462930469

/-! ## A117506.P17690174678165883413

`A000196(A136100(n)+1)`
-/

namespace A117506.P17690174678165883413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A136100 n + 1).toNat

end

end A117506.P17690174678165883413

/-! ## A117506.P844769076319068522

`A000027(root(A136100(n), 2))`
-/

namespace A117506.P844769076319068522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A136100 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A117506.P844769076319068522

/-! ## A117506.P13453526966132259101

`A000188(lcm(2, A136100(n)))`
-/

namespace A117506.P13453526966132259101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.lcm 2 (A136100 n))

end

end A117506.P13453526966132259101

/-! ## A117506.P9525625127782945968

`A000196(or(1, A136100(n)))`
-/

namespace A117506.P9525625127782945968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor 1 (A136100 n)).toNat

end

end A117506.P9525625127782945968

/-! ## A117506.P12041180090307964344

`A000196(A136100(A028310(n)))`
-/

namespace A117506.P12041180090307964344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A136100 (A028310 n).toNat).toNat

end

end A117506.P12041180090307964344

/-! ## A117506.P14043162500481955641

`A059674(2*A136100(n))`
-/

namespace A117506.P14043162500481955641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (2 * A136100 n).toNat

end

end A117506.P14043162500481955641

/-!
# A117507: Numerators of partial sums of the Brun series divided by 4.

The programs for A117507, there is no canonical definition to state claims against.
-/

/-! ## A117507.P15791388741078047757

`A074042(2*(n+1))/4`
-/

namespace A117507.P15791388741078047757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074042 (2 * (n + 1)) : ℚ) / 4

end

end A117507.P15791388741078047757

/-!
# A117508: Denominators of partial sums of the Brun series divided by 5.

The programs for A117508, there is no canonical definition to state claims against.
-/

/-! ## A117508.P15017713662251044765

`A074043(2*(n+1))/5`
-/

namespace A117508.P15017713662251044765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074043 (2 * (n + 1)) : ℚ) / 5

end

end A117508.P15017713662251044765

/-! ## A117508.P6533576071975913363

`∏[A146975(A001359(n+1))]`
-/

namespace A117508.P6533576071975913363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146975 (A001359 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117508.P6533576071975913363

/-! ## A117508.P12744210567295820994

`a(A023443(n))*A037074(n+1)` with `a(0)=3, a(1)=21`
-/

namespace A117508.P12744210567295820994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 21] fun n a =>
  a (A023443 n).toNat * A037074 (n + 1)

end

end A117508.P12744210567295820994

/-! ## A117508.P16388340129961965996

`∏[A037074(n+1)%A000396(n+1)]`
-/

namespace A117508.P16388340129961965996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037074 (n + 1)) (A000396 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117508.P16388340129961965996

/-! ## A117508.P492791915577415100

`∏[A134020(n+2)%A134048(n+1)]`
-/

namespace A117508.P492791915577415100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134020 (n + 2)) (A134048 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117508.P492791915577415100

/-!
# A117509: Numbers whose base-3, base-4, base-5, and base-6 expansions contain no 1's.

The programs for A117509, there is no canonical definition to state claims against.
-/

/-! ## A117509.P8104277681393915331

`A117482(A289102(n))`
-/

namespace A117509.P8104277681393915331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117482 (A289102 n).toNat

end

end A117509.P8104277681393915331

/-!
# A117511: Triangular numbers for which the sum of the digits equals the sum of the digits of the next triangular number.

The programs for A117511, the canonical program `A117511.P13071202074021553455` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117511 has offset 1).

The definition of A117511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117511.P13071202074021553455

`A000217(eq[A004157(n+1), A004157(n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117511

/-- `A000217(eq[A004157(n+1), A004157(n)])` -/
def P13071202074021553455.Spec : Prop :=
  ∀ n, P13071202074021553455.a n = A117511 (n + 1)

theorem P13071202074021553455.correct : P13071202074021553455.Spec := by
  intro n
  simp only [A117511, Nat.add_sub_cancel]

end A117511

/-!
# A117512: Triangular numbers for which the sum of the digits is a prime number.

The programs for A117512, the canonical program `A117512.P1690792313298949061` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117512 has offset 1).

The definition of A117512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117512.P1690792313298949061

`C(A129631(n+1)+1, 2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117512

/-- `C(A129631(n+1)+1, 2)` -/
def P1690792313298949061.Spec : Prop :=
  ∀ n, (P1690792313298949061.a n : ℤ) = A117512 (n + 1)

theorem P1690792313298949061.correct : P1690792313298949061.Spec := by
  intro n
  simp only [A117512, Nat.add_sub_cancel]

end A117512

/-! ## A117512.P16279510919956711040

`A000217(A129631(n+1))`
-/

namespace A117512.P16279510919956711040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A129631 (n + 1)).toNat

end

end A117512.P16279510919956711040

namespace A117512

/-- `A000217(A129631(n+1))` -/
def P16279510919956711040.Spec : Prop :=
  ∀ n, P16279510919956711040.a n = A117512 (n + 1)

end A117512

/-! ## A117512.P16951765932887120700

`A161680(A129631(n+1)+1)`
-/

namespace A117512.P16951765932887120700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A129631 (n + 1) + 1).toNat

end

end A117512.P16951765932887120700

namespace A117512

/-- `A161680(A129631(n+1)+1)` -/
def P16951765932887120700.Spec : Prop :=
  ∀ n, P16951765932887120700.a n = A117512 (n + 1)

end A117512

/-! ## A117512.P14246618881239275557

`A179865(A129631(n+1)+1)`
-/

namespace A117512.P14246618881239275557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A129631 (n + 1) + 1).toNat

end

end A117512.P14246618881239275557

namespace A117512

/-- `A179865(A129631(n+1)+1)` -/
def P14246618881239275557.Spec : Prop :=
  ∀ n, P14246618881239275557.a n = A117512 (n + 1)

end A117512

/-! ## A117512.P549909695101260355

`A253145(A129631(n+1)-1)`
-/

namespace A117512.P549909695101260355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A129631 (n + 1) - 1).toNat

end

end A117512.P549909695101260355

namespace A117512

/-- `A253145(A129631(n+1)-1)` -/
def P549909695101260355.Spec : Prop :=
  ∀ n, P549909695101260355.a n = A117512 (n + 1)

end A117512

/-! ## A117512.P8423579234742078984

`∩[A028834(n+1), A000217(n)]`
-/

namespace A117512.P8423579234742078984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117512.P8423579234742078984

namespace A117512

/-- `∩[A028834(n+1), A000217(n)]` -/
def P8423579234742078984.Spec : Prop :=
  ∀ n, (P8423579234742078984.a n : ℤ) = A117512 (n + 1)

end A117512

/-! ## A117512.P714581129363782466

`∩[A028834(n+1), A253145(n)]`
-/

namespace A117512.P714581129363782466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117512.P714581129363782466

namespace A117512

/-- `∩[A028834(n+1), A253145(n)]` -/
def P714581129363782466.Spec : Prop :=
  ∀ n, (P714581129363782466.a n : ℤ) = A117512 (n + 1)

end A117512

/-! ## A117512.P45752220559583607

`∩[A028834(n+1), A117520(n+1)]`
-/

namespace A117512.P45752220559583607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117512.P45752220559583607

namespace A117512

/-- `∩[A028834(n+1), A117520(n+1)]` -/
def P45752220559583607.Spec : Prop :=
  ∀ n, (P45752220559583607.a n : ℤ) = A117512 (n + 1)

end A117512

/-! ## A117512.P6052986574054863729

`∩[A028834(n+1), A334129(n+1)]`
-/

namespace A117512.P6052986574054863729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117512.P6052986574054863729

namespace A117512

/-- `∩[A028834(n+1), A334129(n+1)]` -/
def P6052986574054863729.Spec : Prop :=
  ∀ n, (P6052986574054863729.a n : ℤ) = A117512 (n + 1)

end A117512

/-!
# A117513: Number of ways of arranging 2*n tokens in a row, with 2 copies of each token from 1 through n, such that between every pair of tokens labeled i (i = 1..n-1) there is exactly one token labeled i+1.

The programs for A117513, there is no canonical definition to state claims against.
-/

/-! ## A117513.P12478625780893305691

`(n+1)*A008301(n²)`
-/

namespace A117513.P12478625780893305691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008301 (n ^ 2)

end

end A117513.P12478625780893305691

/-! ## A117513.P17395575661856803340

`(n+1)*A083061(∑[n])`
-/

namespace A117513.P17395575661856803340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117513.P17395575661856803340

/-! ## A117513.P16859302226649619307

`(n+1)*A210108(∑[n])`
-/

namespace A117513.P16859302226649619307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A210108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117513.P16859302226649619307

/-! ## A117513.P7279968963456815707

`(n+1)*A002105(n+1)`
-/

namespace A117513.P7279968963456815707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002105 (n + 1)

end

end A117513.P7279968963456815707

/-! ## A117513.P3025182337035004141

`2^n*A110501(n+1)`
-/

namespace A117513.P3025182337035004141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A110501 (n + 1)

end

end A117513.P3025182337035004141

/-!
# A117514: Number of ways of arranging 2n tokens in a row, with 2 copies of each token from 1 through n, such that the first token is a 1 and between every pair of tokens labeled i (i=1..n) there is exactly one token labeled (i+1 mod n).

The programs for A117514, there is no canonical definition to state claims against.
-/

/-! ## A117514.P11741119772134550107

`A117515(n+1)/(n+1)`
-/

namespace A117514.P11741119772134550107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117515 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A117514.P11741119772134550107

/-!
# A117515: Number of ways of arranging 2n tokens in a row, with 2 copies of each token from 1 through n, such that between every pair of tokens labeled i (i=1..n) there is exactly one token labeled (i+1 mod n).

The programs for A117515, there is no canonical definition to state claims against.
-/

/-! ## A117515.P12734507078818639217

`A049705(A048674(n+3))*A295182(n)`
-/

namespace A117515.P12734507078818639217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A048674 (n + 3)).toNat * A295182 n

end

end A117515.P12734507078818639217

/-!
# A117516: Last entry (and high point) in segment n of A079051.

The programs for A117516, there is no canonical definition to state claims against.
-/

/-! ## A117516.P13974505699968675222

`A079051(n*(n+2))`
-/

namespace A117516.P13974505699968675222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 (n * (n + 2))

end

end A117516.P13974505699968675222

/-! ## A117516.P2288189550217712294

`record[A079051(A276584(n))]`
-/

namespace A117516.P2288189550217712294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 (A276584 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117516.P2288189550217712294

/-! ## A117516.P5732554482928164157

`or(char[1], A079051(A005563(n)))`
-/

namespace A117516.P5732554482928164157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A079051 (A005563 n).toNat)

end

end A117516.P5732554482928164157

/-! ## A117516.P7464612325499592694

`A079051(A002378(n))+n²`
-/

namespace A117516.P7464612325499592694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 (A002378 n).toNat + (n ^ 2 : ℤ)

end

end A117516.P7464612325499592694

/-! ## A117516.P4580173761958838405

`A054977(n)*A079051(A005563(n))`
-/

namespace A117516.P4580173761958838405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A079051 (A005563 n).toNat

end

end A117516.P4580173761958838405

/-!
# A117517: Numbers k such that F(2*k + 1) is prime where F(m) is a Fibonacci number.

The programs for A117517, there is no canonical definition to state claims against.
-/

/-! ## A117517.P7525623370634564744

`(A083668(n+1)-1)/2`
-/

namespace A117517.P7525623370634564744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083668 (n + 1) - 1 : ℚ) / 2

end

end A117517.P7525623370634564744

/-! ## A117517.P5387759120170076558

`floor(A083668(n+1)/2)`
-/

namespace A117517.P5387759120170076558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083668 (n + 1) : ℚ) / 2⌋

end

end A117517.P5387759120170076558

/-! ## A117517.P17077436555130353078

`floor(A069744(n+2)/2)`
-/

namespace A117517.P17077436555130353078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069744 (n + 2) : ℚ) / 2⌋

end

end A117517.P17077436555130353078

/-! ## A117517.P14917891852267021249

`ceil(A339173(n+1)/2)`
-/

namespace A117517.P14917891852267021249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339173 (n + 1) : ℚ) / 2⌉

end

end A117517.P14917891852267021249

/-! ## A117517.P12296812631291412469

`floor(sinh(log(A001605(n+2))))`
-/

namespace A117517.P12296812631291412469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A001605 (n + 2) : ℝ))⌋

end

end A117517.P12296812631291412469

/-! ## A117517.P2134527234203502147

`floor(lcm(2, Δ[A172115(n+1)])/4)`
-/

namespace A117517.P2134527234203502147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm 2 (f1 (n + 1) - f1 n) : ℚ) / 4⌋

end

end A117517.P2134527234203502147

/-!
# A117519: Triangular numbers n divisible by the number of triangular numbers smaller than n.

The programs for A117519, there is no canonical definition to state claims against.
-/

/-! ## A117519.P2949926693101865808

`A000217(lt[∑[n]%A002024(n+1), 1])`
-/

namespace A117519.P2949926693101865808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A002024 (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A117519.P2949926693101865808

/-! ## A117519.P11966317536101743892

`A000217(eq[0, A000217(n)%A002024(n+1)])`
-/

namespace A117519.P11966317536101743892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (A002024 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117519.P11966317536101743892

/-! ## A117519.P3541144367414423410

`A000217(lt[A223255(n+1), A335306(n+2)])`
-/

namespace A117519.P3541144367414423410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335306 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117519.P3541144367414423410

/-! ## A117519.P11483373934134669624

`A000217(eq[A007318(n), A196138(n+1)])`
-/

namespace A117519.P11483373934134669624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117519.P11483373934134669624

/-! ## A117519.P16283110755787881981

`A000217(eq[A007318(n), A198185(n+1)])`
-/

namespace A117519.P16283110755787881981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117519.P16283110755787881981

/-!
# A117520: Triangular numbers for which the digital root is also a triangular number.

The programs for A117520, the canonical program `A117520.P17543077906330622912` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117520 has offset 1).

The definition of A117520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117520.P17543077906330622912

`C(comp[∑[8^(n%2)]], 2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117520

/-- `C(comp[∑[8^(n%2)]], 2)` -/
def P17543077906330622912.Spec : Prop :=
  ∀ n, (P17543077906330622912.a n : ℤ) = A117520 (n + 1)

theorem P17543077906330622912.correct : P17543077906330622912.Spec := by
  intro n
  simp only [A117520, Nat.add_sub_cancel]

end A117520

/-! ## A117520.P8847136859752638127

`C(comp[∑[8^and(1, n)]], 2)`
-/

namespace A117520.P8847136859752638127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A117520.P8847136859752638127

namespace A117520

/-- `C(comp[∑[8^and(1, n)]], 2)` -/
def P8847136859752638127.Spec : Prop :=
  ∀ n, (P8847136859752638127.a n : ℤ) = A117520 (n + 1)

end A117520

/-! ## A117520.P16836839104954945867

`C(comp[∑[gcd(8, 1-n²)]], 2)`
-/

namespace A117520.P16836839104954945867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (1 - (n ^ 2 : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A117520.P16836839104954945867

namespace A117520

/-- `C(comp[∑[gcd(8, 1-n²)]], 2)` -/
def P16836839104954945867.Spec : Prop :=
  ∀ n, (P16836839104954945867.a n : ℤ) = A117520 (n + 1)

end A117520

/-! ## A117520.P15590790323317437098

`C(comp[a(n-2)+9], 2)` with `a(0)=0, a(1)=10`
-/

namespace A117520.P15590790323317437098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 2) + 9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A117520.P15590790323317437098

namespace A117520

/-- `C(comp[a(n-2)+9], 2)` -/
def P15590790323317437098.Spec : Prop :=
  ∀ n, (P15590790323317437098.a n : ℤ) = A117520 (n + 1)

end A117520

/-! ## A117520.P14275943340811825677

`C(comp[∑[gcd(2, n)^3]]+1, 2)`
-/

namespace A117520.P14275943340811825677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 2

end

end A117520.P14275943340811825677

namespace A117520

/-- `C(comp[∑[gcd(2, n)^3]]+1, 2)` -/
def P14275943340811825677.Spec : Prop :=
  ∀ n, (P14275943340811825677.a n : ℤ) = A117520 (n + 1)

end A117520

/-! ## A117520.P13695385639269484755

`C(comp[∑[9-a(n-1)]], 2)` with `a(0)=1`
-/

namespace A117520.P13695385639269484755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  9 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A117520.P13695385639269484755

namespace A117520

/-- `C(comp[∑[9-a(n-1)]], 2)` -/
def P13695385639269484755.Spec : Prop :=
  ∀ n, (P13695385639269484755.a n : ℤ) = A117520 (n + 1)

end A117520

/-! ## A117520.P9265237805481371771

`C(comp[∑[(char[2*n]+1)^3]]+1, 2)`
-/

namespace A117520.P9265237805481371771
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0) + 1) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 2

end

end A117520.P9265237805481371771

namespace A117520

/-- `C(comp[∑[(char[2*n]+1)^3]]+1, 2)` -/
def P9265237805481371771.Spec : Prop :=
  ∀ n, (P9265237805481371771.a n : ℤ) = A117520 (n + 1)

end A117520

/-! ## A117520.P11807505722929195644

`A000217(comp[a(n-2)+9])` with `a(0)=8, a(1)=9`
-/

namespace A117520.P11807505722929195644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 9] fun n f1 =>
  f1 (n - 2) + 9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117520.P11807505722929195644

namespace A117520

/-- `A000217(comp[a(n-2)+9])` -/
def P11807505722929195644.Spec : Prop :=
  ∀ n, P11807505722929195644.a n = A117520 (n + 1)

end A117520

/-! ## A117520.P14168934622520445451

`record[A000217(n)/ceil(dr(n)/7)!]`
-/

namespace A117520.P14168934622520445451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) / (Nat.factorial ⌈(SequenceMachineLib.digitalRoot (n : ℤ) : ℚ) / 7⌉.toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117520.P14168934622520445451

namespace A117520

/-- `record[A000217(n)/ceil(dr(n)/7)!]` -/
def P14168934622520445451.Spec : Prop :=
  ∀ n, P14168934622520445451.a n = (A117520 (n + 1) : ℚ)

end A117520

/-! ## A117520.P10138049928963551555

`A161680(comp[∑[8^(n%2)]])`
-/

namespace A117520.P10138049928963551555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117520.P10138049928963551555

namespace A117520

/-- `A161680(comp[∑[8^(n%2)]])` -/
def P10138049928963551555.Spec : Prop :=
  ∀ n, P10138049928963551555.a n = A117520 (n + 1)

end A117520

/-! ## A117520.P11074302245872123135

`eq[A006019(n), A060584(n)]`
-/

namespace A117520.P11074302245872123135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117520.P11074302245872123135

namespace A117520

/-- `eq[A006019(n), A060584(n)]` -/
def P11074302245872123135.Spec : Prop :=
  ∀ n, (P11074302245872123135.a n : ℤ) = A117520 (n + 1)

end A117520

/-! ## A117520.P17398892621193563059

`eq[A046902(n), A060584(n)]`
-/

namespace A117520.P17398892621193563059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117520.P17398892621193563059

namespace A117520

/-- `eq[A046902(n), A060584(n)]` -/
def P17398892621193563059.Spec : Prop :=
  ∀ n, (P17398892621193563059.a n : ℤ) = A117520 (n + 1)

end A117520

/-! ## A117520.P3331443248714797158

`eq[A057945(n), A060584(n)]`
-/

namespace A117520.P3331443248714797158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117520.P3331443248714797158

namespace A117520

/-- `eq[A057945(n), A060584(n)]` -/
def P3331443248714797158.Spec : Prop :=
  ∀ n, (P3331443248714797158.a n : ℤ) = A117520 (n + 1)

end A117520

/-!
# A117521: Start with 1 and repeatedly reverse the digits and add 2 to get the next term.

The programs for A117521, there is no canonical definition to state claims against.
-/

/-! ## A117521.P6666579389486802694

`A004086(a(n-1))+2` with `a(0)=1`
-/

namespace A117521.P6666579389486802694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 2

end

end A117521.P6666579389486802694

/-!
# A117522: Numbers k such that L(2*k + 1) is prime, where L(m) is a Lucas number.

The programs for A117522, there is no canonical definition to state claims against.
-/

/-! ## A117522.P15614563128227114149

`floor(A168033(n+2)/2)`
-/

namespace A117522.P15614563128227114149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168033 (n + 2) : ℚ) / 2⌋

end

end A117522.P15614563128227114149

/-! ## A117522.P12721223305219775310

`(A168033(n+2)-1)/(A000041(val(n+1, 12))+1)`
-/

namespace A117522.P12721223305219775310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168033 (n + 2) - 1 : ℚ) / (A000041 (SequenceMachineLib.valuation (n + 1) 12) + 1 : ℚ)

end

end A117522.P12721223305219775310

/-! ## A117522.P8506704812086007866

`(A168033(n+2)-1)/(1-A166698(A066065(n+1)))`
-/

namespace A117522.P8506704812086007866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168033 (n + 2) - 1 : ℚ) / (1 - A166698 (A066065 (n + 1)).toNat : ℚ)

end

end A117522.P8506704812086007866

/-! ## A117522.P663647907161870335

`floor(p?[A001606(n+3)]/2)`
-/

namespace A117522.P663647907161870335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A117522.P663647907161870335

/-! ## A117522.P12735234372453633299

`∑[A273943(Δ[A168033(n+1)])]`
-/

namespace A117522.P12735234372453633299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117522.P12735234372453633299

/-!
# A117523: Triangular numbers for which the sum of the digits is an octagonal number.

The programs for A117523, there is no canonical definition to state claims against.
-/

/-! ## A117523.P18248898999663412103

`A000217(A327145(n)%A001008(n+4))`
-/

namespace A117523.P18248898999663412103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A327145 n) (A001008 (n + 4))).toNat

end

end A117523.P18248898999663412103

/-!
# A117524: Total number of parts of multiplicity 3 in all partitions of n.

The programs for A117524, there is no canonical definition to state claims against.
-/

/-! ## A117524.P11957813187168852372

`A182714(n+2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A117524.P11957813187168852372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A182714 (n + 2) + a (n - 3)

end

end A117524.P11957813187168852372

/-! ## A117524.P12840632062024140706

`∑[A182713(n+1)-A182714(n+1)]`
-/

namespace A117524.P12840632062024140706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182713 (n + 1) - A182714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117524.P12840632062024140706

/-! ## A117524.P300260655903747880

`A116646(n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A117524.P300260655903747880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A116646 n - a (n - 2)

end

end A117524.P300260655903747880

/-! ## A117524.P15810180674577607542

`A024787(n+1)-∑[A182714(n+1)]`
-/

namespace A117524.P15810180674577607542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117524.P15810180674577607542

/-! ## A117524.P18212873970173567590

`A024787(n+1)-A024788(n+1)`
-/

namespace A117524.P18212873970173567590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 1) - A024788 (n + 1)

end

end A117524.P18212873970173567590

/-! ## A117524.P7345524362166932554

`∑[A182713(n+1)]-A024788(n+1)`
-/

namespace A117524.P7345524362166932554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024788 (n + 1)

end

end A117524.P7345524362166932554

/-! ## A117524.P8513677523666491377

`A024788(n+3)-A116646(n+1)`
-/

namespace A117524.P8513677523666491377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 3) - A116646 (n + 1)

end

end A117524.P8513677523666491377

/-! ## A117524.P2000851468043751276

`A197126(∑[n]+3)%A000041(n)`
-/

namespace A117524.P2000851468043751276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197126 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A000041 n)

end

end A117524.P2000851468043751276

/-!
# A117525: Total sum of parts of multiplicity 2 in all partitions of n.

The programs for A117525, there is no canonical definition to state claims against.
-/

/-! ## A117525.P7178961692389611937

`A222730(∑[n]+2%(n+1))`
-/

namespace A117525.P7178961692389611937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (∑ j ∈ Finset.range (n + 1), f1 j + 2 % (n + 1))

end

end A117525.P7178961692389611937

/-! ## A117525.P4552132583785226972

`A222730(A057544(∑[n]))`
-/

namespace A117525.P4552132583785226972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A057544 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A117525.P4552132583785226972

/-! ## A117525.P10444967124058535479

`A222730(A133263(n-char[1]))`
-/

namespace A117525.P10444967124058535479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A133263 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A117525.P10444967124058535479

/-! ## A117525.P606322688627823296

`A222730(floor(atan(n))*A133263(n))`
-/

namespace A117525.P606322688627823296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (⌊Real.arctan (n : ℝ)⌋ * A133263 n).toNat

end

end A117525.P606322688627823296

/-! ## A117525.P4635275448161286935

`A222730(A133263(n)%∑[n+1])`
-/

namespace A117525.P4635275448161286935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (Int.tmod (A133263 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A117525.P4635275448161286935

/-! ## A117525.P17899750268123272730

`A222730((∑[n]+2)%A011377(n))`
-/

namespace A117525.P17899750268123272730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) (A011377 n)).toNat

end

end A117525.P17899750268123272730

/-! ## A117525.P6870774117726284961

`A222730(A000124(n)-A134824(n))`
-/

namespace A117525.P6870774117726284961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000124 n - A134824 n).toNat

end

end A117525.P6870774117726284961

/-! ## A117525.P9109936521092792662

`A222730(A028387(n)%A046691(n))`
-/

namespace A117525.P9109936521092792662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (Int.tmod (A028387 n) (A046691 n)).toNat

end

end A117525.P9109936521092792662

/-! ## A117525.P17800215699363251870

`A222730(A133263(n))%A001006(n)`
-/

namespace A117525.P17800215699363251870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222730 (A133263 n).toNat) (A001006 n)

end

end A117525.P17800215699363251870

/-! ## A117525.P7882945267778571687

`A222730(and(A053545(n), A133263(n)))`
-/

namespace A117525.P7882945267778571687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (Int.land (A053545 n) (A133263 n)).toNat

end

end A117525.P7882945267778571687

/-!
# A117527: Cumulative sums of int(prime*e) which are primes.

The programs for A117527, there is no canonical definition to state claims against.
-/

/-! ## A117527.P8165375684738352864

`p?[∑[A279607(A100484(n+1))]]`
-/

namespace A117527.P8165375684738352864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (A100484 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117527.P8165375684738352864

/-! ## A117527.P7591123464810973084

`p?[∑[A022843(A006093(n+1)+1)]]`
-/

namespace A117527.P7591123464810973084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (A006093 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117527.P7591123464810973084

/-! ## A117527.P5930022867911159915

`p?[∑[A184589(A000040(n+1))+1]]`
-/

namespace A117527.P5930022867911159915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (A000040 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117527.P5930022867911159915

/-! ## A117527.P12623977850937907955

`p?[∑[A022843(A001748(n+1)/3)]]`
-/

namespace A117527.P12623977850937907955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117527.P12623977850937907955

/-! ## A117527.P14730706075618740399

`p?[∑[A022843(A014692(n+1)+n)]]`
-/

namespace A117527.P14730706075618740399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (A014692 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117527.P14730706075618740399

/-!
# A117528: Prime at which the cumulative sum in A117527 is prime.

The programs for A117528, there is no canonical definition to state claims against.
-/

/-! ## A117528.P1016929010184908453

`record[A230362(n*lcm(n+1, a(n-1))/(n+1))]` with `a(0)=2`
-/

namespace A117528.P1016929010184908453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A230362 (SequenceMachineLib.roundAway ((n : ℚ) * ((Int.lcm (n + 1 : ℤ) (f1 (n - 1)) : ℚ) / (n + 1 : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117528.P1016929010184908453

/-! ## A117528.P8110257453873099926

`p?[A006218(n)-A020639(A340157(n+1))]`
-/

namespace A117528.P8110257453873099926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A020639 (A340157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117528.P8110257453873099926

/-!
# A117529: Indices of Fibonacci numbers with 14 distinct prime factors.

The programs for A117529, there is no canonical definition to state claims against.
-/

/-! ## A117529.P15767496041466361978

`eq[14, A022307(n)]`
-/

namespace A117529.P15767496041466361978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117529.P15767496041466361978

/-!
# A117530: Triangle read by rows: T(n,k) = k^2 - k + prime(n), 1<=k<=n.

The programs for A117530, the canonical program `A117530.P17021830251933208366` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117530 has offset 1).

The definition of A117530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)²-(col(n)+1)+A000040(row(n)+1)` (program `A117530.P17021830251933208366`, by `A117530.P17021830251933208366.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117530.P17021830251933208366

`(col(n)+1)²-(col(n)+1)+A000040(row(n)+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117530

/-- `(col(n)+1)²-(col(n)+1)+A000040(row(n)+1)` -/
def P17021830251933208366.Spec : Prop :=
  ∀ n, P17021830251933208366.a n = A117530 (n + 1)

theorem P17021830251933208366.correct : P17021830251933208366.Spec := by
  intro n
  simp only [A117530, Nat.add_sub_cancel]

end A117530

/-! ## A117530.P10645528279191852906

`A000040(row(n)+1)+(col(n)+1)*col(n)`
-/

namespace A117530.P10645528279191852906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.triRow n + 1) + ((SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triCol n : ℤ)

end

end A117530.P10645528279191852906

namespace A117530

/-- `A000040(row(n)+1)+(col(n)+1)*col(n)` -/
def P10645528279191852906.Spec : Prop :=
  ∀ n, P10645528279191852906.a n = A117530 (n + 1)

theorem P10645528279191852906.correct : P10645528279191852906.Spec := by
  intro n
  simp only [A117530, Nat.add_sub_cancel, A117530.P10645528279191852906.a, A117530.P17021830251933208366.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A117530

/-! ## A117530.P4875223154151774733

`A005145(n+1)+2*A112367(n)`
-/

namespace A117530.P4875223154151774733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) + 2 * A112367 n

end

end A117530.P4875223154151774733

namespace A117530

/-- `A005145(n+1)+2*A112367(n)` -/
def P4875223154151774733.Spec : Prop :=
  ∀ n, P4875223154151774733.a n = A117530 (n + 1)

end A117530

/-! ## A117530.P12419063374516288738

`A000040(round(sqrt(2*n+1)))+2*A112367(n)`
-/

namespace A117530.P12419063374516288738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat + 2 * A112367 n

end

end A117530.P12419063374516288738

namespace A117530

/-- `A000040(round(sqrt(2*n+1)))+2*A112367(n)` -/
def P12419063374516288738.Spec : Prop :=
  ∀ n, P12419063374516288738.a n = A117530 (n + 1)

end A117530

/-! ## A117530.P9433644355729239323

`A005145(n+1)+A002378(A002262(n))`
-/

namespace A117530.P9433644355729239323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) + A002378 (A002262 n).toNat

end

end A117530.P9433644355729239323

namespace A117530

/-- `A005145(n+1)+A002378(A002262(n))` -/
def P9433644355729239323.Spec : Prop :=
  ∀ n, P9433644355729239323.a n = A117530 (n + 1)

end A117530

/-! ## A117530.P118082303681148822

`A005843(A112367(n))+A005145(n+1)`
-/

namespace A117530.P118082303681148822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A112367 n).toNat + A005145 (n + 1)

end

end A117530.P118082303681148822

namespace A117530

/-- `A005843(A112367(n))+A005145(n+1)` -/
def P118082303681148822.Spec : Prop :=
  ∀ n, P118082303681148822.a n = A117530 (n + 1)

end A117530

/-! ## A117530.P1949498314643550729

`A002378(A002262(n))+A000040(A002024(n+1))`
-/

namespace A117530.P1949498314643550729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A002262 n).toNat + A000040 (A002024 (n + 1)).toNat

end

end A117530.P1949498314643550729

namespace A117530

/-- `A002378(A002262(n))+A000040(A002024(n+1))` -/
def P1949498314643550729.Spec : Prop :=
  ∀ n, P1949498314643550729.a n = A117530 (n + 1)

end A117530

/-! ## A117530.P2895437563748186277

`A002378(A002262(n))+A000040(A003056(n)+1)`
-/

namespace A117530.P2895437563748186277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A002262 n).toNat + A000040 (A003056 n + 1).toNat

end

end A117530.P2895437563748186277

namespace A117530

/-- `A002378(A002262(n))+A000040(A003056(n)+1)` -/
def P2895437563748186277.Spec : Prop :=
  ∀ n, P2895437563748186277.a n = A117530 (n + 1)

end A117530

/-!
# A117531: Number of primes in the n-th row of the triangle in A117530.

The programs for A117531, there is no canonical definition to state claims against.
-/

/-! ## A117531.P11717549879747428405

`A001221(3*n+1)+A000120(A053287(n+1))`
-/

namespace A117531.P11717549879747428405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 1) + A000120 (A053287 (n + 1)).toNat

end

end A117531.P11717549879747428405

/-!
# A117532: a(n) = smallest positive integer not occurring earlier in the sequence such that Sum_{k=1..n} a(k) is coprime to n.

The programs for A117532, there is no canonical definition to state claims against.
-/

/-! ## A117532.P5208334893844345881

`Δ[A117533(A028310(n))%(n²²+1)]`
-/

namespace A117532.P5208334893844345881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117533 (A028310 n).toNat) ((n ^ 2) ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117532.P5208334893844345881

/-! ## A117532.P16783159396123062749

`A333111(A004277(n)-n)+floor(atan(n+1))`
-/

namespace A117532.P16783159396123062749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A004277 n - (n : ℤ)).toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A117532.P16783159396123062749

/-! ## A117532.P15675919271457311433

`A028310(Δ[A117533(A028310(n))])`
-/

namespace A117532.P15675919271457311433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117533 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A117532.P15675919271457311433

/-! ## A117532.P15183704799795985098

`A333111(A028310(n))-A057428(n)`
-/

namespace A117532.P15183704799795985098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A028310 n).toNat - A057428 n

end

end A117532.P15183704799795985098

/-! ## A117532.P16494629536054682159

`A333111(A004277(n)-n)-A057428(n)`
-/

namespace A117532.P16494629536054682159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A004277 n - (n : ℤ)).toNat - A057428 n

end

end A117532.P16494629536054682159

/-! ## A117532.P7623054629078196024

`A333111(A004277(n)-n)+A000040(n+1)%2`
-/

namespace A117532.P7623054629078196024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A004277 n - (n : ℤ)).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A117532.P7623054629078196024

/-! ## A117532.P9778928117616045827

`2*n-(A004273(n)-A333111(A004277(n)-n))`
-/

namespace A117532.P9778928117616045827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A004273 n - A333111 (A004277 n - (n : ℤ)).toNat)

end

end A117532.P9778928117616045827

/-! ## A117532.P12663828683622918691

`A333111(A123108(2*n))+record[A020639(n+2)]%2`
-/

namespace A117532.P12663828683622918691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A123108 (2 * n)).toNat + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A117532.P12663828683622918691

/-! ## A117532.P9669671418963600763

`A028310(A117533(n+1)-A117533(A028310(n)))`
-/

namespace A117532.P9669671418963600763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A117533 (n + 1) - A117533 (A028310 n).toNat).toNat

end

end A117532.P9669671418963600763

/-! ## A117532.P1775818445575933867

`A333111(A123108(2*n))+A020639(A008458(n))-1`
-/

namespace A117532.P1775818445575933867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A123108 (2 * n)).toNat + (A020639 (A008458 n).toNat - 1)

end

end A117532.P1775818445575933867

/-!
# A117533: a(n) = Sum_{k=1..n} A117532(k).

The programs for A117533, there is no canonical definition to state claims against.
-/

/-! ## A117533.P728432645033154907

`∑[A117532(n+1)]`
-/

namespace A117533.P728432645033154907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117533.P728432645033154907

/-! ## A117533.P4888854508002453160

`a(n-1)+A333111(n)+1` with `a(0)=1`
-/

namespace A117533.P4888854508002453160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A333111 n + 1)

end

end A117533.P4888854508002453160

/-! ## A117533.P484539730227269049

`∑[A333111(A065033(2*n))]+n`
-/

namespace A117533.P484539730227269049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A117533.P484539730227269049

/-! ## A117533.P10361418650613536997

`∑[A333111(A123108(2*n))]+n`
-/

namespace A117533.P10361418650613536997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A117533.P10361418650613536997

/-! ## A117533.P1105452155878935416

`∑[A333111(A004277(n)-n)]+n`
-/

namespace A117533.P1105452155878935416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A117533.P1105452155878935416

/-! ## A117533.P5476282032814320257

`∑[A333111(n+1)+1]-A333111(n+1)`
-/

namespace A117533.P5476282032814320257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A333111 (n + 1)

end

end A117533.P5476282032814320257

/-! ## A117533.P2533406617038197801

`∑[A333111(A004277(n)-n)-A057428(n)]`
-/

namespace A117533.P2533406617038197801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333111 (A004277 n - (n : ℤ)).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117533.P2533406617038197801

/-! ## A117533.P1749017432915373788

`a(n-1)+A112622(A015919(n+1))*A117532(n+1)` with `a(0)=1`
-/

namespace A117533.P1749017432915373788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A112622 (A015919 (n + 1)).toNat * A117532 (n + 1)

end

end A117533.P1749017432915373788

/-! ## A117533.P2891773776163443981

`a(n-1)+A117532(n+1)%A138889(n+1)` with `a(0)=1`
-/

namespace A117533.P2891773776163443981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A117532 (n + 1)) (A138889 (n + 1))

end

end A117533.P2891773776163443981

/-!
# A117534: Inverse permutation to sequence A117532 (if indeed sequence A117532 is a permutation of the positive integers).

The programs for A117534, there is no canonical definition to state claims against.
-/

/-! ## A117534.P7228556117924749301

`A084937(A280741(n+1)^A250662(n))`
-/

namespace A117534.P7228556117924749301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (SequenceMachineLib.roundAway ((A280741 (n + 1) : ℚ) ^ (A250662 n : ℤ))).toNat

end

end A117534.P7228556117924749301

/-!
# A117535: Number of ways of writing n as a sum of powers of 3, each power being used at most 4 times.

The programs for A117535, there is no canonical definition to state claims against.
-/

/-! ## A117535.P18081229694667683543

`A303827(A023717(n))`
-/

namespace A117535.P18081229694667683543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (A023717 n).toNat

end

end A117535.P18081229694667683543

/-! ## A117535.P12175677734604677810

`A303827(eq[0, A292373(n)])`
-/

namespace A117535.P12175677734604677810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117535.P12175677734604677810

/-! ## A117535.P8571641073793652471

`A303827(record[gcd(n, A292373(n))])`
-/

namespace A117535.P8571641073793652471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A292373 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A117535.P8571641073793652471

/-! ## A117535.P15055273109997830909

`A303827(record[n-A292373(n)²])`
-/

namespace A117535.P15055273109997830909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292373 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117535.P15055273109997830909

/-! ## A117535.P3885719844861105022

`A303827(eq[A000120(n), A160385(n)])`
-/

namespace A117535.P3885719844861105022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117535.P3885719844861105022

/-! ## A117535.P5639334881253938839

`A303827(eq[A059905(n), A292371(n)])`
-/

namespace A117535.P5639334881253938839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117535.P5639334881253938839

/-! ## A117535.P7770669000641969615

`A303827(eq[A059906(n), A292372(n)])`
-/

namespace A117535.P7770669000641969615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117535.P7770669000641969615

/-! ## A117535.P7270226249974140038

`A303827(A163241(record[A163241(n)]))`
-/

namespace A117535.P7270226249974140038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (A163241 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A117535.P7270226249974140038

/-! ## A117535.P1502781246353919915

`A303828(record[A309991(n)])`
-/

namespace A117535.P1502781246353919915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117535.P1502781246353919915

/-! ## A117535.P10790449956893351598

`A303828(eq[n, A309991(n)])`
-/

namespace A117535.P10790449956893351598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117535.P10790449956893351598

/-!
# A117537: Locations of the midpoints of consecutive zeros of the Riemann zeta function on the critical line with increasingly large normalized spacing.

The programs for A117537, there is no canonical definition to state claims against.
-/

/-! ## A117537.P5893347723846086507

`A175948(A359742(n))`
-/

namespace A117537.P5893347723846086507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A359742 n).toNat

end

end A117537.P5893347723846086507

/-! ## A117537.P16175249018867733511

`A175948(A054540(n+1))`
-/

namespace A117537.P16175249018867733511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A054540 (n + 1)).toNat

end

end A117537.P16175249018867733511

/-! ## A117537.P11845524943140992944

`or(A259825(A032555(n+1)), A359742(n))`
-/

namespace A117537.P11845524943140992944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259825 (A032555 (n + 1)).toNat) (A359742 n)

end

end A117537.P11845524943140992944

/-! ## A117537.P5767293144236115366

`or(A054540(A032555(n+1)), A259825(n+1))`
-/

namespace A117537.P5767293144236115366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054540 (A032555 (n + 1)).toNat) (A259825 (n + 1))

end

end A117537.P5767293144236115366

/-!
# A117542: Number of permutations P of 1..n such that in P and in the inverse of P, every pair of adjacent numbers and the first and last number, are relatively prime.

The programs for A117542, there is no canonical definition to state claims against.
-/

/-! ## A117542.P185904175501890807

`∑{d}[A101544(A340356(n)), A002260(#)]`
-/

namespace A117542.P185904175501890807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101544 (A340356 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002260 d

end

end A117542.P185904175501890807

/-!
# A117544: Least k such that Phi(n,k), the n-th cyclotomic polynomial evaluated at k, is prime.

The programs for A117544, there is no canonical definition to state claims against.
-/

/-! ## A117544.P10795000558036356631

`A085398(n+1)^(1-A069513(n+1))`
-/

namespace A117544.P10795000558036356631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085398 (n + 1) : ℚ) ^ (1 - A069513 (n + 1) : ℤ)

end

end A117544.P10795000558036356631

/-! ## A117544.P5222806678615587108

`A085398(n+1)^A340197(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A117544.P5222806678615587108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085398 (n + 1) : ℚ) ^ (A340197 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat : ℤ)

end

end A117544.P5222806678615587108

/-! ## A117544.P12913760020820754490

`A085398(n+1)^A178334(A322452(n+1))`
-/

namespace A117544.P12913760020820754490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085398 (n + 1) : ℚ) ^ (A178334 (A322452 (n + 1)).toNat : ℤ)

end

end A117544.P12913760020820754490

/-! ## A117544.P6158495952658508597

`gcd(A001222(A014963(n+1)), A085398(n+1))`
-/

namespace A117544.P6158495952658508597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A014963 (n + 1)).toNat) (A085398 (n + 1))

end

end A117544.P6158495952658508597

/-! ## A117544.P7278493192972001728

`A085398(n+1)^abs(A219977(A034444(n+1)))`
-/

namespace A117544.P7278493192972001728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085398 (n + 1) : ℚ) ^ (|A219977 (A034444 (n + 1)).toNat| : ℤ)

end

end A117544.P7278493192972001728

/-! ## A117544.P17793769840631872694

`A085398(n+1)^A008683(A066048(n+1))`
-/

namespace A117544.P17793769840631872694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085398 (n + 1) : ℚ) ^ (A008683 (A066048 (n + 1)).toNat : ℤ)

end

end A117544.P17793769840631872694

/-!
# A117546: Number of representations of n as a sum of distinct tribonacci numbers (A000073).

The programs for A117546, there is no canonical definition to state claims against.
-/

/-! ## A117546.P11698681445985991283

`A020639(C(A003726(n+1), A003796(n+1)))`
-/

namespace A117546.P11698681445985991283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (A003726 (n + 1)).toNat (A003796 (n + 1)).toNat)

end

end A117546.P11698681445985991283

/-! ## A117546.P16628212917168530236

`A000005(gcd(A001055(n+1), A373013(2*(n+1))))`
-/

namespace A117546.P16628212917168530236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A001055 (n + 1)) (A373013 (2 * (n + 1))))

end

end A117546.P16628212917168530236

/-!
# A117547: Numbers k such that 2*k^2+1 is a perfect power.

The programs for A117547, the canonical program `A117547.P14467444055987520627` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117547 has offset 1).

The definition of A117547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117547.P14467444055987520627

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2, a(2)=11, a(3)=12, a(4)=70`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117547

/-- `6*a(n-1)-a(n-2)` -/
def P14467444055987520627.Spec : Prop :=
  ∀ n, P14467444055987520627.a n = A117547 (n + 1)

theorem P14467444055987520627.correct : P14467444055987520627.Spec := by
  intro n
  simp only [A117547, Nat.add_sub_cancel]

end A117547

/-! ## A117547.P4305254612541590619

`record[A001542(A053186(n))-A343958(n+1)]`
-/

namespace A117547.P4305254612541590619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (A053186 n).toNat - A343958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117547.P4305254612541590619

namespace A117547

/-- `record[A001542(A053186(n))-A343958(n+1)]` -/
def P4305254612541590619.Spec : Prop :=
  ∀ n, P4305254612541590619.a n = A117547 (n + 1)

end A117547

/-!
# A117550: Indices of Fibonacci numbers with 16 distinct prime factors.

The programs for A117550, there is no canonical definition to state claims against.
-/

/-! ## A117550.P18040775684199397314

`eq[16, A022307(n)]`
-/

namespace A117550.P18040775684199397314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117550.P18040775684199397314

/-!
# A117551: Indices of Fibonacci numbers with 15 distinct prime factors.

The programs for A117551, there is no canonical definition to state claims against.
-/

/-! ## A117551.P13279948063821238917

`eq[15, A022307(n)]`
-/

namespace A117551.P13279948063821238917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117551.P13279948063821238917

/-!
# A117552: Largest partial sum of the increasingly ordered divisors of n, not exceeding n.

The programs for A117552, there is no canonical definition to state claims against.
-/

/-! ## A117552.P5087244180141832968

`n+1-A109883(n+1)`
-/

namespace A117552.P5087244180141832968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A109883 (n + 1)

end

end A117552.P5087244180141832968

/-! ## A117552.P13135220813042507970

`A024000(A109883(n+1))+n`
-/

namespace A117552.P13135220813042507970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A109883 (n + 1)).toNat + (n : ℤ)

end

end A117552.P13135220813042507970

/-! ## A117552.P14461946127509222619

`abs(A109883(n+1)+A001478(n+1))`
-/

namespace A117552.P14461946127509222619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109883 (n + 1) + A001478 (n + 1)|

end

end A117552.P14461946127509222619

/-! ## A117552.P10852290760257915997

`A001489(A109883(n+1))+A000027(n+1)`
-/

namespace A117552.P10852290760257915997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A109883 (n + 1)).toNat + A000027 (n + 1)

end

end A117552.P10852290760257915997

/-! ## A117552.P12447505504683944292

`-(A109883(A000027(n+1))+A001478(n+1))`
-/

namespace A117552.P12447505504683944292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A109883 (A000027 (n + 1)).toNat + A001478 (n + 1))

end

end A117552.P12447505504683944292

/-! ## A117552.P625333879652863106

`A004736(A109883(n+1)+A000124(n))`
-/

namespace A117552.P625333879652863106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A109883 (n + 1) + A000124 n).toNat

end

end A117552.P625333879652863106

/-! ## A117552.P14937960089743409931

`A004736(A167614(n+1)+A109883(n+1))`
-/

namespace A117552.P14937960089743409931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A167614 (n + 1) + A109883 (n + 1)).toNat

end

end A117552.P14937960089743409931

/-! ## A117552.P17846882514934959738

`A370577(A024916(n+1))`
-/

namespace A117552.P17846882514934959738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370577 (A024916 (n + 1)).toNat

end

end A117552.P17846882514934959738

/-!
# A117553: When adding some positive divisors of n in order from lowest divisor to highest divisor, a(n) is lowest sum achievable which is >= n.

The programs for A117553, there is no canonical definition to state claims against.
-/

/-! ## A117553.P9365173877603626731

`A117552(n+1)%A125746(n+1)+n+1`
-/

namespace A117553.P9365173877603626731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117552 (n + 1)) (A125746 (n + 1)) + (n + 1 : ℤ)

end

end A117553.P9365173877603626731

/-! ## A117553.P10778629414170757898

`A127057(A300826(n+1)+A000217(n))`
-/

namespace A117553.P10778629414170757898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A300826 (n + 1) + A000217 n).toNat

end

end A117553.P10778629414170757898

/-! ## A117553.P9228368220669804109

`A127057(A302110(n+1)+A000124(n))`
-/

namespace A117553.P9228368220669804109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A302110 (n + 1) + A000124 n).toNat

end

end A117553.P9228368220669804109

/-! ## A117553.P11904559087820061821

`A127057(A000124(n)+A300826(n+1)-1)`
-/

namespace A117553.P11904559087820061821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n + (A300826 (n + 1) - 1)).toNat

end

end A117553.P11904559087820061821

/-! ## A117553.P11451873210645042842

`A127057(A000124(n)+A005665(n)%A300826(n+1))`
-/

namespace A117553.P11451873210645042842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n + Int.tmod (A005665 n) (A300826 (n + 1))).toNat

end

end A117553.P11451873210645042842

/-! ## A117553.P8155068282991228984

`A127057(A000124(n)+A266701(n)%A300826(n+1))`
-/

namespace A117553.P8155068282991228984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n + Int.tmod (A266701 n) (A300826 (n + 1))).toNat

end

end A117553.P8155068282991228984

/-! ## A117553.P15029386991559803047

`A127057(A000005(n+1)+A000124(n)-A125747(n+1))`
-/

namespace A117553.P15029386991559803047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000005 (n + 1) + (A000124 n - A125747 (n + 1))).toNat

end

end A117553.P15029386991559803047

/-!
# A117554: Equal divisions of the octave of decreasing 5-limit Pepper ambiguity.

The programs for A117554, there is no canonical definition to state claims against.
-/

/-! ## A117554.P16755677276413035960

`∩[A060525(n+1), A376601(n+1)]`
-/

namespace A117554.P16755677276413035960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117554.P16755677276413035960

/-! ## A117554.P17989110921430467245

`A054540(C(A090946(n+1), A220632(n+1)))`
-/

namespace A117554.P17989110921430467245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054540 (Nat.choose (A090946 (n + 1)).toNat (A220632 (n + 1)).toNat)

end

end A117554.P17989110921430467245

/-! ## A117554.P8626673932970483201

`eq[A001221(A341638(n+1)), A288627(n+1)]`
-/

namespace A117554.P8626673932970483201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A341638 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117554.P8626673932970483201

/-!
# A117560: a(n) = n*(n^2 - 1)/2 - 1.

The programs for A117560, the canonical program `A117560.P1494341162103925553` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117560 has offset 2).

The definition of A117560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*((n+2)²-1)/2-1` (program `A117560.P4134597382117183528`, by `A117560.P4134597382117183528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117560.P4134597382117183528

`(n+2)*((n+2)²-1)/2-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117560.P4134597382117183528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * (((n + 2) ^ 2 : ℤ) - 1) : ℚ) / 2 - 1

end

end A117560.P4134597382117183528

namespace A117560

/-- `(n+2)*((n+2)²-1)/2-1` -/
def P4134597382117183528.Spec : Prop :=
  ∀ n, P4134597382117183528.a n = (A117560 (n + 2) : ℚ)

theorem P4134597382117183528.correct : P4134597382117183528.Spec := by
  intro n
  simp only [A117560, Nat.add_sub_cancel, A117560.P4134597382117183528.a, A117560.P1494341162103925553.f1, A117560.P1494341162103925553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117560

/-! ## A117560.P1494341162103925553

`Δ[C(C(n+2, 2), 2)-n]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117560

/-- `Δ[C(C(n+2, 2), 2)-n]` -/
def P1494341162103925553.Spec : Prop :=
  ∀ n, P1494341162103925553.a n = A117560 (n + 2)

theorem P1494341162103925553.correct : P1494341162103925553.Spec := by
  intro n
  simp only [A117560, Nat.add_sub_cancel]

end A117560

/-! ## A117560.P2504569793512579598

`∑[∑[a(n-1)+3]]` with `a(0)=2, a(1)=7, a(2)=9`
-/

namespace A117560.P2504569793512579598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 9] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117560.P2504569793512579598

namespace A117560

/-- `∑[∑[a(n-1)+3]]` -/
def P2504569793512579598.Spec : Prop :=
  ∀ n, (P2504569793512579598.a n : ℤ) = A117560 (n + 2)

end A117560

/-! ## A117560.P16030085724453478095

`xor(-1, -((n+3)*∑[n+1]))`
-/

namespace A117560.P16030085724453478095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(((n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ))

end

end A117560.P16030085724453478095

namespace A117560

/-- `xor(-1, -((n+3)*∑[n+1]))` -/
def P16030085724453478095.Spec : Prop :=
  ∀ n, P16030085724453478095.a n = A117560 (n + 2)

end A117560

/-! ## A117560.P9042096669781796972

`((n+3)*a(n-1)+3)/n` with `a(0)=2`
-/

namespace A117560.P9042096669781796972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((n + 3 : ℚ) * a (n - 1) + 3) / (n : ℚ)

end

end A117560.P9042096669781796972

namespace A117560

/-- `((n+3)*a(n-1)+3)/n` -/
def P9042096669781796972.Spec : Prop :=
  ∀ n, P9042096669781796972.a n = (A117560 (n + 2) : ℚ)

end A117560

/-! ## A117560.P16983078878334894416

`floor((C((n+2)², 2)-1)/(n+2))`
-/

namespace A117560.P16983078878334894416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose ((n + 2) ^ 2) 2 : ℤ) - 1 : ℚ) / (n + 2 : ℚ)⌋

end

end A117560.P16983078878334894416

namespace A117560

/-- `floor((C((n+2)², 2)-1)/(n+2))` -/
def P16983078878334894416.Spec : Prop :=
  ∀ n, P16983078878334894416.a n = A117560 (n + 2)

end A117560

/-! ## A117560.P13336501498118712202

`(C((n+2)², 2)-(n+2))/(n+2)`
-/

namespace A117560.P13336501498118712202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((n + 2) ^ 2) 2 : ℤ) - (n + 2 : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A117560.P13336501498118712202

namespace A117560

/-- `(C((n+2)², 2)-(n+2))/(n+2)` -/
def P13336501498118712202.Spec : Prop :=
  ∀ n, P13336501498118712202.a n = (A117560 (n + 2) : ℚ)

theorem P13336501498118712202.correct : P13336501498118712202.Spec := by
  intro n
  simp only [A117560, Nat.add_sub_cancel, A117560.P13336501498118712202.a, A117560.P1494341162103925553.f1, A117560.P1494341162103925553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117560

/-! ## A117560.P6254260687938951036

`((n+1)*lcm(n+2, n+3)-2)/2`
-/

namespace A117560.P6254260687938951036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * Nat.lcm (n + 2) (n + 3) : ℤ) - 2 : ℚ) / 2

end

end A117560.P6254260687938951036

namespace A117560

/-- `((n+1)*lcm(n+2, n+3)-2)/2` -/
def P6254260687938951036.Spec : Prop :=
  ∀ n, P6254260687938951036.a n = (A117560 (n + 2) : ℚ)

end A117560

/-! ## A117560.P3814064549772799289

`(A030653(n+1)-n)/2`
-/

namespace A117560.P3814064549772799289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030653 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A117560.P3814064549772799289

namespace A117560

/-- `(A030653(n+1)-n)/2` -/
def P3814064549772799289.Spec : Prop :=
  ∀ n, P3814064549772799289.a n = (A117560 (n + 2) : ℚ)

theorem P3814064549772799289.correct : P3814064549772799289.Spec := by
  intro n
  simp only [A117560, Nat.add_sub_cancel, A117560.P3814064549772799289.a, A117560.P1494341162103925553.f1, A117560.P1494341162103925553.a, A030653, A030653.P17752569690597270032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117560

/-! ## A117560.P5515333808065655382

`abs(∑[∑[A016777(n)+2]]-1)`
-/

namespace A117560.P5515333808065655382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A117560.P5515333808065655382

namespace A117560

/-- `abs(∑[∑[A016777(n)+2]]-1)` -/
def P5515333808065655382.Spec : Prop :=
  ∀ n, P5515333808065655382.a n = A117560 (n + 2)

end A117560

/-! ## A117560.P1757801106761557264

`∑[∑[n+1]*A157532(n+1)]`
-/

namespace A117560.P1757801106761557264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117560.P1757801106761557264

namespace A117560

/-- `∑[∑[n+1]*A157532(n+1)]` -/
def P1757801106761557264.Spec : Prop :=
  ∀ n, P1757801106761557264.a n = A117560 (n + 2)

end A117560

/-! ## A117560.P6241081472189751258

`abs((n+3)*A000217(n+1)-1)`
-/

namespace A117560.P6241081472189751258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 3 : ℤ) * A000217 (n + 1) - 1|

end

end A117560.P6241081472189751258

namespace A117560

/-- `abs((n+3)*A000217(n+1)-1)` -/
def P6241081472189751258.Spec : Prop :=
  ∀ n, P6241081472189751258.a n = A117560 (n + 2)

end A117560

/-! ## A117560.P3880487374353034685

`Δ[C(∑[2*n-(n-1)], 2)-n]`
-/

namespace A117560.P3880487374353034685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117560.P3880487374353034685

namespace A117560

/-- `Δ[C(∑[2*n-(n-1)], 2)-n]` -/
def P3880487374353034685.Spec : Prop :=
  ∀ n, P3880487374353034685.a n = A117560 (n + 2)

end A117560

/-! ## A117560.P1695658124619735913

`Δ[∑[A027480(n)]-n]`
-/

namespace A117560.P1695658124619735913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117560.P1695658124619735913

namespace A117560

/-- `Δ[∑[A027480(n)]-n]` -/
def P1695658124619735913.Spec : Prop :=
  ∀ n, P1695658124619735913.a n = A117560 (n + 2)

end A117560

/-! ## A117560.P6679241157594354109

`(A126420(n+2)-1)/2`
-/

namespace A117560.P6679241157594354109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126420 (n + 2) - 1 : ℚ) / 2

end

end A117560.P6679241157594354109

namespace A117560

/-- `(A126420(n+2)-1)/2` -/
def P6679241157594354109.Spec : Prop :=
  ∀ n, P6679241157594354109.a n = (A117560 (n + 2) : ℚ)

theorem P6679241157594354109.correct : P6679241157594354109.Spec := by
  intro n
  simp only [A117560, Nat.add_sub_cancel, A117560.P6679241157594354109.a, A117560.P1494341162103925553.f1, A117560.P1494341162103925553.a, A126420, A126420.P400369601322111787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117560

/-! ## A117560.P10438670398661365141

`(A242135(n+2)+n)/2`
-/

namespace A117560.P10438670398661365141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242135 (n + 2) + (n : ℤ) : ℚ) / 2

end

end A117560.P10438670398661365141

namespace A117560

/-- `(A242135(n+2)+n)/2` -/
def P10438670398661365141.Spec : Prop :=
  ∀ n, P10438670398661365141.a n = (A117560 (n + 2) : ℚ)

theorem P10438670398661365141.correct : P10438670398661365141.Spec := by
  intro n
  simp only [A117560, Nat.add_sub_cancel, A117560.P10438670398661365141.a, A117560.P1494341162103925553.f1, A117560.P1494341162103925553.a, A242135, A242135.P980314958597288477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117560

/-! ## A117560.P1818194554923118166

`(A318765(n+1)+n+1)/2`
-/

namespace A117560.P1818194554923118166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318765 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A117560.P1818194554923118166

namespace A117560

/-- `(A318765(n+1)+n+1)/2` -/
def P1818194554923118166.Spec : Prop :=
  ∀ n, P1818194554923118166.a n = (A117560 (n + 2) : ℚ)

theorem P1818194554923118166.correct : P1818194554923118166.Spec := by
  intro n
  simp only [A117560, Nat.add_sub_cancel, A117560.P1818194554923118166.a, A117560.P1494341162103925553.f1, A117560.P1494341162103925553.a, A318765, A318765.P2998745398220553870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117560

/-! ## A117560.P15498056150585964518

`A330651(n+1)/(2*(n+1))`
-/

namespace A117560.P15498056150585964518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330651 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A117560.P15498056150585964518

namespace A117560

/-- `A330651(n+1)/(2*(n+1))` -/
def P15498056150585964518.Spec : Prop :=
  ∀ n, P15498056150585964518.a n = (A117560 (n + 2) : ℚ)

theorem P15498056150585964518.correct : P15498056150585964518.Spec := by
  intro n
  simp only [A117560, Nat.add_sub_cancel, A117560.P15498056150585964518.a, A117560.P1494341162103925553.f1, A117560.P1494341162103925553.a, A330651, A330651.P7626992677465752536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117560

/-! ## A117560.P12028825274826582935

`floor(cot(Δ[Δ[ratio[n+1]]]))`
-/

namespace A117560.P12028825274826582935
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (f1 (n + 1) - f1 n : ℝ)⌋

end

end A117560.P12028825274826582935

namespace A117560

/-- `floor(cot(Δ[Δ[ratio[n+1]]]))` -/
def P12028825274826582935.Spec : Prop :=
  ∀ n, P12028825274826582935.a n = A117560 (n + 2)

end A117560

/-! ## A117560.P15545852651372721901

`∑[record[A134480(n+2)]]`
-/

namespace A117560.P15545852651372721901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134480 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117560.P15545852651372721901

namespace A117560

/-- `∑[record[A134480(n+2)]]` -/
def P15545852651372721901.Spec : Prop :=
  ∀ n, P15545852651372721901.a n = A117560 (n + 2)

end A117560

/-!
# A117561: a(n) = floor(n*(n^3-n-3)/(2*(n-1))).

The programs for A117561, the canonical program `A117561.P15192427787876814917` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117561 has offset 2).

The definition of A117561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)*((n+2)^3-(n+2)-3)/(2*(n+1)))` (program `A117561.P15192427787876814917`, by `A117561.P15192427787876814917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117561.P15192427787876814917

`floor((n+2)*((n+2)^3-(n+2)-3)/(2*(n+1)))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117561

/-- `floor((n+2)*((n+2)^3-(n+2)-3)/(2*(n+1)))` -/
def P15192427787876814917.Spec : Prop :=
  ∀ n, P15192427787876814917.a n = A117561 (n + 2)

theorem P15192427787876814917.correct : P15192427787876814917.Spec := by
  intro n
  simp only [A117561, Nat.add_sub_cancel]

end A117561

/-!
# A117562: Numbers k such that k is a multiple of the sum of decimal digits squared of k.

The programs for A117562, there is no canonical definition to state claims against.
-/

/-! ## A117562.P8953771964421585657

`∪[A034087(n+1), A063171(n)]`
-/

namespace A117562.P8953771964421585657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117562.P8953771964421585657

/-! ## A117562.P14015145385429773062

`∪[A070189(n), A034087(n+1)]`
-/

namespace A117562.P14015145385429773062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117562.P14015145385429773062

/-! ## A117562.P7987508303052178212

`A034087(A028310(n))%(2*n+1)²`
-/

namespace A117562.P7987508303052178212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034087 (A028310 n).toNat) ((2 * n + 1) ^ 2 : ℤ)

end

end A117562.P7987508303052178212

/-! ## A117562.P1236798927239147700

`A034087(A028310(n))-A000007(n)`
-/

namespace A117562.P1236798927239147700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (A028310 n).toNat - A000007 n

end

end A117562.P1236798927239147700

/-! ## A117562.P10910527338631887924

`A034087(A028310(n))*A057427(n)`
-/

namespace A117562.P10910527338631887924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (A028310 n).toNat * A057427 n

end

end A117562.P10910527338631887924

/-! ## A117562.P443399794006769984

`A034087(A000007(n)+n)-A000007(n)`
-/

namespace A117562.P443399794006769984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A117562.P443399794006769984

/-! ## A117562.P15660640835529577390

`A034087(gcd(n, A008486(n)))*A057427(n)`
-/

namespace A117562.P15660640835529577390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (Int.gcd (n : ℤ) (A008486 n)) * A057427 n

end

end A117562.P15660640835529577390

/-! ## A117562.P7864672997539274493

`A008683(A001747(n+2))*A034087(A028310(n))`
-/

namespace A117562.P7864672997539274493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001747 (n + 2)).toNat * A034087 (A028310 n).toNat

end

end A117562.P7864672997539274493

/-! ## A117562.P245179205696422254

`eq[n, lcm(n, A003132(n))]`
-/

namespace A117562.P245179205696422254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A003132 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117562.P245179205696422254

/-! ## A117562.P10505924907298450805

`A034087(A132350((n+1)²)+n)%A027326(n)`
-/

namespace A117562.P10505924907298450805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034087 (A132350 ((n + 1) ^ 2) + (n : ℤ)).toNat) (A027326 n)

end

end A117562.P10505924907298450805

/-!
# A117563: a(n) = A118534(n)/A117078(n) unless A117078(n) = 0 in which case a(n) = 0.

The programs for A117563, there is no canonical definition to state claims against.
-/

/-! ## A117563.P10194202978914315634

`A118534(n+1)/or(1, A117078(n+1))`
-/

namespace A117563.P10194202978914315634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118534 (n + 1) : ℚ) / (Int.lor 1 (A117078 (n + 1)) : ℚ)

end

end A117563.P10194202978914315634

/-! ## A117563.P1984107434801919749

`A118534(n+1)/gcd(A062234(n+1), A117078(n+1))`
-/

namespace A117563.P1984107434801919749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118534 (n + 1) : ℚ) / (Int.gcd (A062234 (n + 1)) (A117078 (n + 1)) : ℚ)

end

end A117563.P1984107434801919749

/-! ## A117563.P15456594095716480249

`A118534(n+1)/A093178(A117078(n+1))`
-/

namespace A117563.P15456594095716480249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118534 (n + 1) : ℚ) / (A093178 (A117078 (n + 1)).toNat : ℚ)

end

end A117563.P15456594095716480249

/-! ## A117563.P16391457254248413034

`A062234(n+1)%A195586(n)/or(1, A117078(n+1))`
-/

namespace A117563.P16391457254248413034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A062234 (n + 1)) (A195586 n) : ℚ) / (Int.lor 1 (A117078 (n + 1)) : ℚ)

end

end A117563.P16391457254248413034

/-! ## A117563.P13318155816064649987

`A062234(n+1)%A195586(n)/A093178(A117078(n+1))`
-/

namespace A117563.P13318155816064649987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A062234 (n + 1)) (A195586 n) : ℚ) / (A093178 (A117078 (n + 1)).toNat : ℚ)

end

end A117563.P13318155816064649987

/-!
# A117564: Numbers with no 1's in base 3, 4 & 10 expansions.

The programs for A117564, there is no canonical definition to state claims against.
-/

/-! ## A117564.P15491550972461395666

`∩[A052383(n+1), A117496(n+1)]`
-/

namespace A117564.P15491550972461395666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117564.P15491550972461395666

/-! ## A117564.P4512940701176346507

`∩[A117496(n+1), A328607(n)]`
-/

namespace A117564.P4512940701176346507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117564.P4512940701176346507

/-!
# A117566: Strip A117488 of r-1 row values 1,2,5,10,20,36,65 ... A000712.

The programs for A117566, there is no canonical definition to state claims against.
-/

/-! ## A117566.P10657700946568839774

`A117488(A004201(n+1))`
-/

namespace A117566.P10657700946568839774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (A004201 (n + 1)).toNat

end

end A117566.P10657700946568839774

/-! ## A117566.P12394727233294113794

`A117488(A061885(n)+1)`
-/

namespace A117566.P12394727233294113794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (A061885 n + 1).toNat

end

end A117566.P12394727233294113794

/-! ## A117566.P238923576972218689

`A117488(∑[A130296(n+1)])`
-/

namespace A117566.P238923576972218689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117566.P238923576972218689

/-! ## A117566.P2464543265996674437

`A117488(A057944(n)+1+n)`
-/

namespace A117566.P2464543265996674437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (A057944 n + 1 + (n : ℤ)).toNat

end

end A117566.P2464543265996674437

/-! ## A117566.P1843280200334230614

`A117488(2*n+1-A002262(n))`
-/

namespace A117566.P1843280200334230614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 ((2 * n + 1 : ℤ) - A002262 n).toNat

end

end A117566.P1843280200334230614

/-!
# A117567: Riordan array ((1+x^2)/(1-x^3),x).

The programs for A117567, the canonical program `A117567.P12108434008989334567` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117567 has offset 0).

The definition of A117567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117567.P12048565984728477589

`(C(comp[∑[n]]-n, 2)-n+1)²%3`
-/

namespace A117567.P12048565984728477589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1) ^ 2) 3

end

end A117567.P12048565984728477589

namespace A117567

/-- `(C(comp[∑[n]]-n, 2)-n+1)²%3` -/
def P12048565984728477589.Spec : Prop :=
  ∀ n, P12048565984728477589.a n = A117567 n

end A117567

/-! ## A117567.P9006307956924040789

`(∑[2*n]%(comp[∑[n]]+1)+1)²%3`
-/

namespace A117567.P9006307956924040789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1) ^ 2 % 3

end

end A117567.P9006307956924040789

namespace A117567

/-- `(∑[2*n]%(comp[∑[n]]+1)+1)²%3` -/
def P9006307956924040789.Spec : Prop :=
  ∀ n, (P9006307956924040789.a n : ℤ) = A117567 n

end A117567

/-! ## A117567.P15006784423009377531

`(2*(C(comp[∑[n]]-n, 2)-n)-1)²%3`
-/

namespace A117567.P15006784423009377531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1) ^ 2) 3

end

end A117567.P15006784423009377531

namespace A117567

/-- `(2*(C(comp[∑[n]]-n, 2)-n)-1)²%3` -/
def P15006784423009377531.Spec : Prop :=
  ∀ n, P15006784423009377531.a n = A117567 n

end A117567

/-! ## A117567.P12108434008989334567

`floor(sqrt(A116948(n)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117567

/-- `floor(sqrt(A116948(n)))` -/
def P12108434008989334567.Spec : Prop :=
  ∀ n, P12108434008989334567.a n = A117567 n

theorem P12108434008989334567.correct : P12108434008989334567.Spec := by
  intro n
  simp only [A117567]

end A117567

/-! ## A117567.P18151010080750590809

`A099375(n)²%3`
-/

namespace A117567.P18151010080750590809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099375 n ^ 2) 3

end

end A117567.P18151010080750590809

namespace A117567

/-- `A099375(n)²%3` -/
def P18151010080750590809.Spec : Prop :=
  ∀ n, P18151010080750590809.a n = A117567 n

end A117567

/-! ## A117567.P17146418521170651914

`A328082(n+1)%2`
-/

namespace A117567.P17146418521170651914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328082 (n + 1)) 2

end

end A117567.P17146418521170651914

namespace A117567

/-- `A328082(n+1)%2` -/
def P17146418521170651914.Spec : Prop :=
  ∀ n, P17146418521170651914.a n = A117567 n

end A117567

/-! ## A117567.P7179927693489862833

`A158753(n+2)%2`
-/

namespace A117567.P7179927693489862833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158753 (n + 2)) 2

end

end A117567.P7179927693489862833

namespace A117567

/-- `A158753(n+2)%2` -/
def P7179927693489862833.Spec : Prop :=
  ∀ n, P7179927693489862833.a n = A117567 n

end A117567

/-! ## A117567.P7148830832592928499

`A237587(n+1)%3`
-/

namespace A117567.P7148830832592928499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237587 (n + 1)) 3

end

end A117567.P7148830832592928499

namespace A117567

/-- `A237587(n+1)%3` -/
def P7148830832592928499.Spec : Prop :=
  ∀ n, P7148830832592928499.a n = A117567 n

end A117567

/-! ## A117567.P10777688932398057568

`gcd(2, A180663(n))-1`
-/

namespace A117567.P10777688932398057568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A180663 n) : ℤ) - 1

end

end A117567.P10777688932398057568

namespace A117567

/-- `gcd(2, A180663(n))-1` -/
def P10777688932398057568.Spec : Prop :=
  ∀ n, P10777688932398057568.a n = A117567 n

end A117567

/-! ## A117567.P12374678654025653169

`A135764(n+1)²%3`
-/

namespace A117567.P12374678654025653169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135764 (n + 1) ^ 2) 3

end

end A117567.P12374678654025653169

namespace A117567

/-- `A135764(n+1)²%3` -/
def P12374678654025653169.Spec : Prop :=
  ∀ n, P12374678654025653169.a n = A117567 n

end A117567

/-! ## A117567.P16267353685059487968

`(1-A025581(n))²%3`
-/

namespace A117567.P16267353685059487968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - A025581 n) ^ 2) 3

end

end A117567.P16267353685059487968

namespace A117567

/-- `(1-A025581(n))²%3` -/
def P16267353685059487968.Spec : Prop :=
  ∀ n, P16267353685059487968.a n = A117567 n

end A117567

/-! ## A117567.P2277023241515835363

`floor(sqrt(A096038(n+1)%3))`
-/

namespace A117567.P2277023241515835363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A096038 (n + 1)) 3)

end

end A117567.P2277023241515835363

namespace A117567

/-- `floor(sqrt(A096038(n+1)%3))` -/
def P2277023241515835363.Spec : Prop :=
  ∀ n, P2277023241515835363.a n = A117567 n

end A117567

/-! ## A117567.P16974999606836266801

`A011655(row(n)-col(n)+2)`
-/

namespace A117567.P16974999606836266801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat

end

end A117567.P16974999606836266801

namespace A117567

/-- `A011655(row(n)-col(n)+2)` -/
def P16974999606836266801.Spec : Prop :=
  ∀ n, P16974999606836266801.a n = A117567 n

end A117567

/-! ## A117567.P17224101849732128428

`(A004736(n+1)+1)²%3`
-/

namespace A117567.P17224101849732128428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A004736 (n + 1) + 1) ^ 2) 3

end

end A117567.P17224101849732128428

namespace A117567

/-- `(A004736(n+1)+1)²%3` -/
def P17224101849732128428.Spec : Prop :=
  ∀ n, P17224101849732128428.a n = A117567 n

end A117567

/-! ## A117567.P6575835953160299201

`(4*A095832(n+1)+1)%3`
-/

namespace A117567.P6575835953160299201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A095832 (n + 1) + 1) 3

end

end A117567.P6575835953160299201

namespace A117567

/-- `(4*A095832(n+1)+1)%3` -/
def P6575835953160299201.Spec : Prop :=
  ∀ n, P6575835953160299201.a n = A117567 n

end A117567

/-! ## A117567.P401486348308421657

`A011655(A099375(n))`
-/

namespace A117567.P401486348308421657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A099375 n).toNat

end

end A117567.P401486348308421657

namespace A117567

/-- `A011655(A099375(n))` -/
def P401486348308421657.Spec : Prop :=
  ∀ n, P401486348308421657.a n = A117567 n

end A117567

/-! ## A117567.P12512838801960186374

`A011655(A134483(n+1))`
-/

namespace A117567.P12512838801960186374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A134483 (n + 1)).toNat

end

end A117567.P12512838801960186374

namespace A117567

/-- `A011655(A134483(n+1))` -/
def P12512838801960186374.Spec : Prop :=
  ∀ n, P12512838801960186374.a n = A117567 n

end A117567

/-! ## A117567.P517846522230882002

`A011655(A025581(n)+2)`
-/

namespace A117567.P517846522230882002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A025581 n + 2).toNat

end

end A117567.P517846522230882002

namespace A117567

/-- `A011655(A025581(n)+2)` -/
def P517846522230882002.Spec : Prop :=
  ∀ n, P517846522230882002.a n = A117567 n

end A117567

/-! ## A117567.P8221102459366230133

`A010892(A004736(n+1))²`
-/

namespace A117567.P8221102459366230133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A004736 (n + 1)).toNat ^ 2

end

end A117567.P8221102459366230133

namespace A117567

/-- `A010892(A004736(n+1))²` -/
def P8221102459366230133.Spec : Prop :=
  ∀ n, P8221102459366230133.a n = A117567 n

end A117567

/-! ## A117567.P9670148889646057742

`A010892(A025581(n)+1)²`
-/

namespace A117567.P9670148889646057742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A025581 n + 1).toNat ^ 2

end

end A117567.P9670148889646057742

namespace A117567

/-- `A010892(A025581(n)+1)²` -/
def P9670148889646057742.Spec : Prop :=
  ∀ n, P9670148889646057742.a n = A117567 n

end A117567

/-!
# A117568: Riordan array ((1-x^3)/(1+x^2),x).

The programs for A117568, the canonical program `A117568.P10505874102500913440` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117568 has offset 0).

The definition of A117568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117568.P3705702597579109691

`round(sin(atan(A116949(n))))`
-/

namespace A117568.P3705702597579109691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A116949 n : ℝ)))

end

end A117568.P3705702597579109691

namespace A117568

/-- `round(sin(atan(A116949(n))))` -/
def P3705702597579109691.Spec : Prop :=
  ∀ n, P3705702597579109691.a n = A117568 n

end A117568

/-! ## A117568.P10505874102500913440

`A117576(A025581(n))%2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117568

/-- `A117576(A025581(n))%2` -/
def P10505874102500913440.Spec : Prop :=
  ∀ n, P10505874102500913440.a n = A117568 n

theorem P10505874102500913440.correct : P10505874102500913440.Spec := by
  intro n
  simp only [A117568]

end A117568

/-! ## A117568.P3242402092796580176

`round(A117440(n)/A131127(n))`
-/

namespace A117568.P3242402092796580176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A117440 n : ℚ) / (A131127 n : ℚ))

end

end A117568.P3242402092796580176

namespace A117568

/-- `round(A117440(n)/A131127(n))` -/
def P3242402092796580176.Spec : Prop :=
  ∀ n, P3242402092796580176.a n = A117568 n

end A117568

/-! ## A117568.P5822026912051089338

`1-and(A025581(n), A129765(n+1))`
-/

namespace A117568.P5822026912051089338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A025581 n) (A129765 (n + 1))

end

end A117568.P5822026912051089338

namespace A117568

/-- `1-and(A025581(n), A129765(n+1))` -/
def P5822026912051089338.Spec : Prop :=
  ∀ n, P5822026912051089338.a n = A117568 n

end A117568

/-! ## A117568.P7901771309764334782

`A046980(A004280(A004736(n+1)))`
-/

namespace A117568.P7901771309764334782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A004280 (A004736 (n + 1)).toNat).toNat

end

end A117568.P7901771309764334782

namespace A117568

/-- `A046980(A004280(A004736(n+1)))` -/
def P7901771309764334782.Spec : Prop :=
  ∀ n, P7901771309764334782.a n = A117568 n

end A117568

/-! ## A117568.P1144985315592194277

`1-A107279(A104572(n+1))`
-/

namespace A117568.P1144985315592194277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107279 (A104572 (n + 1)).toNat

end

end A117568.P1144985315592194277

namespace A117568

/-- `1-A107279(A104572(n+1))` -/
def P1144985315592194277.Spec : Prop :=
  ∀ n, P1144985315592194277.a n = A117568 n

end A117568

/-! ## A117568.P827187830412173444

`A116949(n)/gcd(A016116(n), A116949(n))`
-/

namespace A117568.P827187830412173444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116949 n : ℚ) / (Int.gcd (A016116 n) (A116949 n) : ℚ)

end

end A117568.P827187830412173444

namespace A117568

/-- `A116949(n)/gcd(A016116(n), A116949(n))` -/
def P827187830412173444.Spec : Prop :=
  ∀ n, P827187830412173444.a n = (A117568 n : ℚ)

end A117568

/-! ## A117568.P13174051653126374962

`A029883(A052955(A025581(n)))`
-/

namespace A117568.P13174051653126374962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A052955 (A025581 n).toNat).toNat

end

end A117568.P13174051653126374962

namespace A117568

/-- `A029883(A052955(A025581(n)))` -/
def P13174051653126374962.Spec : Prop :=
  ∀ n, P13174051653126374962.a n = A117568 n

end A117568

/-! ## A117568.P1901957059109213179

`A355684(A130321(n))`
-/

namespace A117568.P1901957059109213179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355684 (A130321 n).toNat

end

end A117568.P1901957059109213179

namespace A117568

/-- `A355684(A130321(n))` -/
def P1901957059109213179.Spec : Prop :=
  ∀ n, P1901957059109213179.a n = A117568 n

end A117568

/-! ## A117568.P4544867426258236901

`round(tanh(A116949(n)))`
-/

namespace A117568.P4544867426258236901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A116949 n : ℝ))

end

end A117568.P4544867426258236901

namespace A117568

/-- `round(tanh(A116949(n)))` -/
def P4544867426258236901.Spec : Prop :=
  ∀ n, P4544867426258236901.a n = A117568 n

end A117568

/-!
# A117569: Expansion of (1+x+x^2)/(1+x^2).

The programs for A117569, the canonical program `A117569.P9909763329727119488` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117569 has offset 0).

The definition of A117569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1+x^2))` (program `A117569.P9909763329727119488`, by `A117569.P9909763329727119488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117569.P9909763329727119488

`ogf((1+x+x^2)/(1+x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117569

/-- `ogf((1+x+x^2)/(1+x^2))` -/
def P9909763329727119488.Spec : Prop :=
  ∀ n, P9909763329727119488.a n = A117569 n

theorem P9909763329727119488.correct : P9909763329727119488.Spec := by
  intro n
  simp only [A117569]

end A117569

/-!
# A117570: Numbers of the form k * (sum of digits of k) listed sorted with multiplicity.

The programs for A117570, there is no canonical definition to state claims against.
-/

/-! ## A117570.P11644949571778952333

`A243188(n+1)+A025426(A309917(n+1))`
-/

namespace A117570.P11644949571778952333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1) + A025426 (A309917 (n + 1)).toNat

end

end A117570.P11644949571778952333

/-! ## A117570.P10816911698441468228

`A337816(n+1)-A337821(A000111(n))`
-/

namespace A117570.P10816911698441468228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337816 (n + 1) - A337821 (A000111 n).toNat

end

end A117570.P10816911698441468228

/-!
# A117571: Expansion of (1+2*x^2)/((1-x)*(1-x^3)).

The programs for A117571, the canonical program `A117571.P8155775988359818362` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117571 has offset 0).

The definition of A117571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2)/(1-x-x^3+x^4))` (program `A117571.P8155775988359818362`, by `A117571.P8155775988359818362.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117571.P8155775988359818362

`ogf((1+2x^2)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117571

/-- `ogf((1+2x^2)/(1-x-x^3+x^4))` -/
def P8155775988359818362.Spec : Prop :=
  ∀ n, P8155775988359818362.a n = A117571 n

theorem P8155775988359818362.correct : P8155775988359818362.Spec := by
  intro n
  simp only [A117571]

end A117571

/-! ## A117571.P670480651889440108

`1+floor(2*n/3)+floor((n+1)/3)`
-/

namespace A117571.P670480651889440108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(2 * n : ℚ) / 3⌋ + ⌊(n + 1 : ℚ) / 3⌋

end

end A117571.P670480651889440108

namespace A117571

/-- `1+floor(2*n/3)+floor((n+1)/3)` -/
def P670480651889440108.Spec : Prop :=
  ∀ n, P670480651889440108.a n = A117571 n

end A117571

/-! ## A117571.P5195700230368445788

`∑[Δ[n²]%3]`
-/

namespace A117571.P5195700230368445788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P5195700230368445788

namespace A117571

/-- `∑[Δ[n²]%3]` -/
def P5195700230368445788.Spec : Prop :=
  ∀ n, P5195700230368445788.a n = A117571 n

end A117571

/-! ## A117571.P1764510220790490929

`∑[2-(n+1)%3]`
-/

namespace A117571.P1764510220790490929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((n + 1) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P1764510220790490929

namespace A117571

/-- `∑[2-(n+1)%3]` -/
def P1764510220790490929.Spec : Prop :=
  ∀ n, P1764510220790490929.a n = A117571 n

end A117571

/-! ## A117571.P14319228399389344585

`∑[val(n%3+2, 2)]`
-/

namespace A117571.P14319228399389344585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n % 3 + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P14319228399389344585

namespace A117571

/-- `∑[val(n%3+2, 2)]` -/
def P14319228399389344585.Spec : Prop :=
  ∀ n, (P14319228399389344585.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P9741990863895176713

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A117571.P9741990863895176713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P9741990863895176713

namespace A117571

/-- `∑[abs(a(n-3))]` -/
def P9741990863895176713.Spec : Prop :=
  ∀ n, (P9741990863895176713.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P12295204657340892752

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A117571.P12295204657340892752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P12295204657340892752

namespace A117571

/-- `∑[dr(a(n-3))]` -/
def P12295204657340892752.Spec : Prop :=
  ∀ n, (P12295204657340892752.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P18149110096119777

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A117571.P18149110096119777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P18149110096119777

namespace A117571

/-- `∑[floor(a(n-3))]` -/
def P18149110096119777.Spec : Prop :=
  ∀ n, (P18149110096119777.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P16854928901537167223

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A117571.P16854928901537167223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P16854928901537167223

namespace A117571

/-- `∑[ceil(a(n-3))]` -/
def P16854928901537167223.Spec : Prop :=
  ∀ n, (P16854928901537167223.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P4041878403524958373

`∑[round(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A117571.P4041878403524958373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P4041878403524958373

namespace A117571

/-- `∑[round(a(n-3))]` -/
def P4041878403524958373.Spec : Prop :=
  ∀ n, (P4041878403524958373.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P1046890112007620834

`∑[-(n+1)%3+2]`
-/

namespace A117571.P1046890112007620834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n + 1 : ℤ)) 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P1046890112007620834

namespace A117571

/-- `∑[-(n+1)%3+2]` -/
def P1046890112007620834.Spec : Prop :=
  ∀ n, P1046890112007620834.a n = A117571 n

end A117571

/-! ## A117571.P8090970255931859153

`∑[C(2, ((2*n)%3)²)]`
-/

namespace A117571.P8090970255931859153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((2 * n % 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P8090970255931859153

namespace A117571

/-- `∑[C(2, ((2*n)%3)²)]` -/
def P8090970255931859153.Spec : Prop :=
  ∀ n, (P8090970255931859153.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P10694475176577058383

`∑[log2(gcd(4, a(n-1)))]` with `a(0)=1`
-/

namespace A117571.P10694475176577058383
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.logb 2 (Int.gcd 4 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P10694475176577058383

namespace A117571

/-- `∑[log2(gcd(4, a(n-1)))]` -/
def P10694475176577058383.Spec : Prop :=
  ∀ n, P10694475176577058383.a n = (A117571 n : ℝ)

end A117571

/-! ## A117571.P4306191514976079562

`floor(sqrt((n+2)%3)+n)`
-/

namespace A117571.P4306191514976079562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n + 2) % 3 : ℕ) : ℝ) + (n : ℝ)⌋

end

end A117571.P4306191514976079562

namespace A117571

/-- `floor(sqrt((n+2)%3)+n)` -/
def P4306191514976079562.Spec : Prop :=
  ∀ n, P4306191514976079562.a n = A117571 n

end A117571

/-! ## A117571.P7120647429671505389

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A117571.P7120647429671505389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P7120647429671505389

namespace A117571

/-- `∑[and(3, a(n-3))]` -/
def P7120647429671505389.Spec : Prop :=
  ∀ n, (P7120647429671505389.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P16748320490269606922

`∑[and(3, (2*n+1)%3)]`
-/

namespace A117571.P16748320490269606922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 ((2 * n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P16748320490269606922

namespace A117571

/-- `∑[and(3, (2*n+1)%3)]` -/
def P16748320490269606922.Spec : Prop :=
  ∀ n, (P16748320490269606922.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P833743990532941635

`∑[C(2, a(n-2)²)]` with `a(0)=1, a(1)=0`
-/

namespace A117571.P833743990532941635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.choose 2 (f1 (n - 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P833743990532941635

namespace A117571

/-- `∑[C(2, a(n-2)²)]` -/
def P833743990532941635.Spec : Prop :=
  ∀ n, (P833743990532941635.a n : ℤ) = A117571 n

end A117571

/-! ## A117571.P7303002452667325392

`∑[2-a(a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A117571.P7303002452667325392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117571.P7303002452667325392

namespace A117571

/-- `∑[2-a(a(n-2))]` -/
def P7303002452667325392.Spec : Prop :=
  ∀ n, P7303002452667325392.a n = A117571 n

end A117571

/-!
# A117572: Expansion of (1 + 2*x^2)/((1 - x^2)*(1 - x^3)).

The programs for A117572, the canonical program `A117572.P3286134917141157940` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117572 has offset 0).

The definition of A117572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2)/(1-x^2-x^3+x^5))` (program `A117572.P3286134917141157940`, by `A117572.P3286134917141157940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117572.P3286134917141157940

`ogf((1+2x^2)/(1-x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117572

/-- `ogf((1+2x^2)/(1-x^2-x^3+x^5))` -/
def P3286134917141157940.Spec : Prop :=
  ∀ n, P3286134917141157940.a n = A117572 n

theorem P3286134917141157940.correct : P3286134917141157940.Spec := by
  intro n
  simp only [A117572]

end A117572

/-! ## A117572.P3720636298154233675

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1, a(4)=3`
-/

namespace A117572.P3720636298154233675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 1, 3] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A117572.P3720636298154233675

namespace A117572

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P3720636298154233675.Spec : Prop :=
  ∀ n, P3720636298154233675.a n = A117572 n

end A117572

/-! ## A117572.P10678546671558768173

`∑[gcd(2, n)²-(3-n%3)]`
-/

namespace A117572.P10678546671558768173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - (3 - ((n % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117572.P10678546671558768173

namespace A117572

/-- `∑[gcd(2, n)²-(3-n%3)]` -/
def P10678546671558768173.Spec : Prop :=
  ∀ n, P10678546671558768173.a n = A117572 n

end A117572

/-! ## A117572.P18159002676767482181

`a(n-2)+Δ[n²]%3` with `a(0)=1, a(1)=0`
-/

namespace A117572.P18159002676767482181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 3

end

end A117572.P18159002676767482181

namespace A117572

/-- `a(n-2)+Δ[n²]%3` -/
def P18159002676767482181.Spec : Prop :=
  ∀ n, P18159002676767482181.a n = A117572 n

end A117572

/-! ## A117572.P15885255607335758600

`ceil(xor(1, n)/2)+C(n, 2)%3`
-/

namespace A117572.P15885255607335758600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ + ((Nat.choose n 2 % 3 : ℕ) : ℤ)

end

end A117572.P15885255607335758600

namespace A117572

/-- `ceil(xor(1, n)/2)+C(n, 2)%3` -/
def P15885255607335758600.Spec : Prop :=
  ∀ n, P15885255607335758600.a n = A117572 n

end A117572

/-! ## A117572.P3507921682032286275

`Δ[floor(n/3)]+ceil(xor(1, n)/2)`
-/

namespace A117572.P3507921682032286275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌈(Nat.xor 1 n : ℚ) / 2⌉

end

end A117572.P3507921682032286275

namespace A117572

/-- `Δ[floor(n/3)]+ceil(xor(1, n)/2)` -/
def P3507921682032286275.Spec : Prop :=
  ∀ n, P3507921682032286275.a n = A117572 n

end A117572

/-! ## A117572.P2192310760660423898

`a(n-2)+2-(n+1)%3` with `a(0)=1, a(1)=0`
-/

namespace A117572.P2192310760660423898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (2 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A117572.P2192310760660423898

namespace A117572

/-- `a(n-2)+2-(n+1)%3` -/
def P2192310760660423898.Spec : Prop :=
  ∀ n, P2192310760660423898.a n = A117572 n

end A117572

/-! ## A117572.P14095780344192187636

`2-((n-2)%3-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A117572.P14095780344192187636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 - (Int.tmod ((n : ℤ) - 2) 3 - a (n - 2))

end

end A117572.P14095780344192187636

namespace A117572

/-- `2-((n-2)%3-a(n-2))` -/
def P14095780344192187636.Spec : Prop :=
  ∀ n, P14095780344192187636.a n = A117572 n

end A117572

/-! ## A117572.P16172187144805608796

`∑[2-a(a(n-2))]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A117572.P16172187144805608796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A117572.P16172187144805608796

namespace A117572

/-- `∑[2-a(a(n-2))]-a(n-1)` -/
def P16172187144805608796.Spec : Prop :=
  ∀ n, P16172187144805608796.a n = A117572 n

end A117572

/-! ## A117572.P15205942551702912600

`floor(gcd(3, a(n-1))/2-a(n-1)+n)` with `a(0)=1`
-/

namespace A117572.P15205942551702912600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Int.gcd 3 (a (n - 1)) : ℚ) / 2 - (a (n - 1) : ℚ) + (n : ℚ)⌋

end

end A117572.P15205942551702912600

namespace A117572

/-- `floor(gcd(3, a(n-1))/2-a(n-1)+n)` -/
def P15205942551702912600.Spec : Prop :=
  ∀ n, P15205942551702912600.a n = A117572 n

end A117572

/-! ## A117572.P12761162385384834355

`A117571(n)-a(n-1)` with `a(0)=1`
-/

namespace A117572.P12761162385384834355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117571 n - a (n - 1)

end

end A117572.P12761162385384834355

namespace A117572

/-- `A117571(n)-a(n-1)` -/
def P12761162385384834355.Spec : Prop :=
  ∀ n, P12761162385384834355.a n = A117572 n

end A117572

/-! ## A117572.P12197401795637246620

`1-A064429(a(n-1))+n` with `a(0)=1`
-/

namespace A117572.P12197401795637246620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A064429 (a (n - 1)).toNat + (n : ℤ)

end

end A117572.P12197401795637246620

namespace A117572

/-- `1-A064429(a(n-1))+n` -/
def P12197401795637246620.Spec : Prop :=
  ∀ n, P12197401795637246620.a n = A117572 n

end A117572

/-! ## A117572.P13284185220020978546

`n+2-A092200(a(n-1))` with `a(0)=1`
-/

namespace A117572.P13284185220020978546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - A092200 (a (n - 1)).toNat

end

end A117572.P13284185220020978546

namespace A117572

/-- `n+2-A092200(a(n-1))` -/
def P13284185220020978546.Spec : Prop :=
  ∀ n, P13284185220020978546.a n = A117572 n

end A117572

/-! ## A117572.P1460652236600246201

`A204418(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A117572.P1460652236600246201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204418 n - a (n - 1) + (n : ℤ)

end

end A117572.P1460652236600246201

namespace A117572

/-- `A204418(n)-a(n-1)+n` -/
def P1460652236600246201.Spec : Prop :=
  ∀ n, P1460652236600246201.a n = A117572 n

end A117572

/-! ## A117572.P8170937431187949418

`char[3*n-1]+∑[A280193(n)]`
-/

namespace A117572.P8170937431187949418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A117572.P8170937431187949418

namespace A117572

/-- `char[3*n-1]+∑[A280193(n)]` -/
def P8170937431187949418.Spec : Prop :=
  ∀ n, P8170937431187949418.a n = A117572 n

end A117572

/-! ## A117572.P17740897328606084237

`A057078(a(n-1))-a(n-1)+n` with `a(0)=1`
-/

namespace A117572.P17740897328606084237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057078 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A117572.P17740897328606084237

namespace A117572

/-- `A057078(a(n-1))-a(n-1)+n` -/
def P17740897328606084237.Spec : Prop :=
  ∀ n, P17740897328606084237.a n = A117572 n

end A117572

/-! ## A117572.P3506367616237358943

`A060398(a(n-1))-a(n-1)+n` with `a(0)=1`
-/

namespace A117572.P3506367616237358943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060398 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A117572.P3506367616237358943

namespace A117572

/-- `A060398(a(n-1))-a(n-1)+n` -/
def P3506367616237358943.Spec : Prop :=
  ∀ n, P3506367616237358943.a n = A117572 n

end A117572

/-! ## A117572.P16613468183266090245

`A079978(a(n-1))-a(n-1)+n` with `a(0)=1`
-/

namespace A117572.P16613468183266090245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079978 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A117572.P16613468183266090245

namespace A117572

/-- `A079978(a(n-1))-a(n-1)+n` -/
def P16613468183266090245.Spec : Prop :=
  ∀ n, P16613468183266090245.a n = A117572 n

end A117572

/-! ## A117572.P3063946921463163870

`n+2-(A000045(gcd(n+2, n-1))+a(n-1))` with `a(0)=1`
-/

namespace A117572.P3063946921463163870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - (A000045 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)) + a (n - 1))

end

end A117572.P3063946921463163870

namespace A117572

/-- `n+2-(A000045(gcd(n+2, n-1))+a(n-1))` -/
def P3063946921463163870.Spec : Prop :=
  ∀ n, P3063946921463163870.a n = A117572 n

end A117572

/-!
# A117573: Expansion of (1+2x^2)/((1-x)(1-x^2)(1-x^3)).

The programs for A117573, the canonical program `A117573.P15760872837452754199` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117573 has offset 0).

The definition of A117573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2)/(1-x-x^2+x^4+x^5-x^6))` (program `A117573.P15760872837452754199`, by `A117573.P15760872837452754199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117573.P15760872837452754199

`ogf((1+2x^2)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117573

/-- `ogf((1+2x^2)/(1-x-x^2+x^4+x^5-x^6))` -/
def P15760872837452754199.Spec : Prop :=
  ∀ n, P15760872837452754199.a n = A117573 n

theorem P15760872837452754199.correct : P15760872837452754199.Spec := by
  intro n
  simp only [A117573]

end A117573

/-! ## A117573.P2480343884890423772

`floor((9*(-1)^n+6*n²+20*n+23)/24)`
-/

namespace A117573.P2480343884890423772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 * (-1) ^ n + (6 * n ^ 2 : ℤ) + (20 * n : ℤ) + 23 : ℚ) / 24⌋

end

end A117573.P2480343884890423772

namespace A117573

/-- `floor((9*(-1)^n+6*n²+20*n+23)/24)` -/
def P2480343884890423772.Spec : Prop :=
  ∀ n, P2480343884890423772.a n = A117573 n

end A117573

/-! ## A117573.P7493087792627124907

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=8, a(5)=11`
-/

namespace A117573.P7493087792627124907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5, 8, 11] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A117573.P7493087792627124907

namespace A117573

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P7493087792627124907.Spec : Prop :=
  ∀ n, P7493087792627124907.a n = A117573 n

end A117573

/-! ## A117573.P13290425799673584428

`∑[ceil(xor(1, n)/2)]+round(n/3)`
-/

namespace A117573.P13290425799673584428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A117573.P13290425799673584428

namespace A117573

/-- `∑[ceil(xor(1, n)/2)]+round(n/3)` -/
def P13290425799673584428.Spec : Prop :=
  ∀ n, P13290425799673584428.a n = A117573 n

end A117573

/-! ## A117573.P14914744540726685243

`∑[a(gcd(2, n))+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A117573.P14914744540726685243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  f1 (Nat.gcd 2 n) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117573.P14914744540726685243

namespace A117573

/-- `∑[a(gcd(2, n))+a(n-3)]` -/
def P14914744540726685243.Spec : Prop :=
  ∀ n, (P14914744540726685243.a n : ℤ) = A117573 n

end A117573

/-! ## A117573.P4122003531184567417

`∑[a(n-2)+Δ[n²]%3]` with `a(0)=1, a(1)=0`
-/

namespace A117573.P4122003531184567417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117573.P4122003531184567417

namespace A117573

/-- `∑[a(n-2)+Δ[n²]%3]` -/
def P4122003531184567417.Spec : Prop :=
  ∀ n, P4122003531184567417.a n = A117573 n

end A117573

/-! ## A117573.P10163604564668125972

`∑[n-a(n-1)]+round(n/3)` with `a(0)=1`
-/

namespace A117573.P10163604564668125972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A117573.P10163604564668125972

namespace A117573

/-- `∑[n-a(n-1)]+round(n/3)` -/
def P10163604564668125972.Spec : Prop :=
  ∀ n, P10163604564668125972.a n = A117573 n

end A117573

/-! ## A117573.P5006159773769561280

`∑[∑[n%3+2-gcd(4, (n+1)²)]]`
-/

namespace A117573.P5006159773769561280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 3 + 2 : ℕ) : ℤ) - (Nat.gcd 4 ((n + 1) ^ 2) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117573.P5006159773769561280

namespace A117573

/-- `∑[∑[n%3+2-gcd(4, (n+1)²)]]` -/
def P5006159773769561280.Spec : Prop :=
  ∀ n, P5006159773769561280.a n = A117573 n

end A117573

/-! ## A117573.P17372053911863894958

`∑[a(n-2)+2-(n+1)%3]` with `a(0)=1, a(1)=0`
-/

namespace A117573.P17372053911863894958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (2 - (((n + 1) % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117573.P17372053911863894958

namespace A117573

/-- `∑[a(n-2)+2-(n+1)%3]` -/
def P17372053911863894958.Spec : Prop :=
  ∀ n, P17372053911863894958.a n = A117573 n

end A117573

/-! ## A117573.P16718492721246745395

`∑[floor(a(n-2))]+a(n-3)-n` with `a(0)=1, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A117573.P16718492721246745395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (a (n - 3) - (n : ℤ))

end

end A117573.P16718492721246745395

namespace A117573

/-- `∑[floor(a(n-2))]+a(n-3)-n` -/
def P16718492721246745395.Spec : Prop :=
  ∀ n, P16718492721246745395.a n = A117573 n

end A117573

/-! ## A117573.P1948730036541532514

`∑[floor(a(n-2))]-(n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A117573.P1948730036541532514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - a (n - 3))

end

end A117573.P1948730036541532514

namespace A117573

/-- `∑[floor(a(n-2))]-(n-a(n-3))` -/
def P1948730036541532514.Spec : Prop :=
  ∀ n, P1948730036541532514.a n = A117573 n

end A117573

/-! ## A117573.P6304524767257813110

`∑[∑[2-a(a(n-2))]-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A117573.P6304524767257813110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 - f2 (f2 (n - 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117573.P6304524767257813110

namespace A117573

/-- `∑[∑[2-a(a(n-2))]-a(n-1)]` -/
def P6304524767257813110.Spec : Prop :=
  ∀ n, P6304524767257813110.a n = A117573 n

end A117573

/-! ## A117573.P2163405615528997396

`∑[A117572(n)]`
-/

namespace A117573.P2163405615528997396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117573.P2163405615528997396

namespace A117573

/-- `∑[A117572(n)]` -/
def P2163405615528997396.Spec : Prop :=
  ∀ n, P2163405615528997396.a n = A117573 n

end A117573

/-! ## A117573.P13725675876397876921

`A117571(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A117573.P13725675876397876921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A117571 n + a (n - 2)

end

end A117573.P13725675876397876921

namespace A117573

/-- `A117571(n)+a(n-2)` -/
def P13725675876397876921.Spec : Prop :=
  ∀ n, P13725675876397876921.a n = A117573 n

end A117573

/-! ## A117573.P5713674514861135129

`A168233(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A117573.P5713674514861135129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A168233 n + a (n - 3)

end

end A117573.P5713674514861135129

namespace A117573

/-- `A168233(n)+a(n-3)` -/
def P5713674514861135129.Spec : Prop :=
  ∀ n, P5713674514861135129.a n = A117573 n

end A117573

/-! ## A117573.P6128982402207309747

`∑[char[3*n-1]+∑[A280193(n)]]`
-/

namespace A117573.P6128982402207309747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117573.P6128982402207309747

namespace A117573

/-- `∑[char[3*n-1]+∑[A280193(n)]]` -/
def P6128982402207309747.Spec : Prop :=
  ∀ n, P6128982402207309747.a n = A117573 n

end A117573

/-! ## A117573.P5289117919197732536

`A115283(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A117573.P5289117919197732536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115283 n - (a (n - 1) + a (n - 1))

end

end A117573.P5289117919197732536

namespace A117573

/-- `A115283(n)-(a(n-1)+a(n-1))` -/
def P5289117919197732536.Spec : Prop :=
  ∀ n, P5289117919197732536.a n = A117573 n

end A117573

/-! ## A117573.P8047325724656741565

`A008806(n)+A001840(n)`
-/

namespace A117573.P8047325724656741565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 n + A001840 n

end

end A117573.P8047325724656741565

namespace A117573

/-- `A008806(n)+A001840(n)` -/
def P8047325724656741565.Spec : Prop :=
  ∀ n, P8047325724656741565.a n = A117573 n

end A117573

/-! ## A117573.P15060543965084803892

`A212986(n)+A008615(n)`
-/

namespace A117573.P15060543965084803892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212986 n + A008615 n

end

end A117573.P15060543965084803892

namespace A117573

/-- `A212986(n)+A008615(n)` -/
def P15060543965084803892.Spec : Prop :=
  ∀ n, P15060543965084803892.a n = A117573 n

end A117573

/-! ## A117573.P12957554563962026281

`A156040(n)+∑[A008615(n)]`
-/

namespace A117573.P12957554563962026281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117573.P12957554563962026281

namespace A117573

/-- `A156040(n)+∑[A008615(n)]` -/
def P12957554563962026281.Spec : Prop :=
  ∀ n, P12957554563962026281.a n = A117573 n

end A117573

/-!
# A117574: Total number of permutations p of [n] such that |p(i+3) - p(i)| is not equal to 3 for 1 <= i <= n-3.

The programs for A117574, there is no canonical definition to state claims against.
-/

/-! ## A117574.P7696086516246083786

`A023022(a(n-1)*∑[n+3])` with `a(0)=1, a(1)=1`
-/

namespace A117574.P7696086516246083786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A023022 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A117574.P7696086516246083786

/-! ## A117574.P4686593299959627123

`2*A008616(4*n*a(n-1)+3)` with `a(0)=1, a(1)=1`
-/

namespace A117574.P4686593299959627123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A008616 ((4 * n : ℤ) * a (n - 1) + 3).toNat

end

end A117574.P4686593299959627123

/-! ## A117574.P17176839696244179274

`A325763(A091500(n))`
-/

namespace A117574.P17176839696244179274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A091500 n).toNat

end

end A117574.P17176839696244179274

/-!
# A117575: Expansion of (1-x^3)/((1-x)*(1+2*x^2)).

The programs for A117575, the canonical program `A117575.P11814477519358667599` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117575 has offset 0).

The definition of A117575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3)/(1-x+2x^2-2x^3))` (program `A117575.P11814477519358667599`, by `A117575.P11814477519358667599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117575.P11814477519358667599

`ogf((1-x^3)/(1-x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117575

/-- `ogf((1-x^3)/(1-x+2x^2-2x^3))` -/
def P11814477519358667599.Spec : Prop :=
  ∀ n, P11814477519358667599.a n = A117575 n

theorem P11814477519358667599.correct : P11814477519358667599.Spec := by
  intro n
  simp only [A117575]

end A117575

/-! ## A117575.P9142946732823253204

`a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2`
-/

namespace A117575.P9142946732823253204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2] fun n a =>
  a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3)

end

end A117575.P9142946732823253204

namespace A117575

/-- `a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P9142946732823253204.Spec : Prop :=
  ∀ n, P9142946732823253204.a n = A117575 n

end A117575

/-! ## A117575.P16535637445873850329

`char[2]-2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A117575.P16535637445873850329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 2 * a (n - 2)

end

end A117575.P16535637445873850329

namespace A117575

/-- `char[2]-2*a(n-2)` -/
def P16535637445873850329.Spec : Prop :=
  ∀ n, P16535637445873850329.a n = A117575 n

end A117575

/-! ## A117575.P6729769408312074844

`4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2, a(4)=2`
-/

namespace A117575.P6729769408312074844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2, 2] fun n a =>
  4 * a (n - 4)

end

end A117575.P6729769408312074844

namespace A117575

/-- `4*a(n-4)` -/
def P6729769408312074844.Spec : Prop :=
  ∀ n, P6729769408312074844.a n = A117575 n

end A117575

/-! ## A117575.P18436469517131916822

`a(n-2)/(1/2-1)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A117575.P18436469517131916822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2 - 1)

end

end A117575.P18436469517131916822

namespace A117575

/-- `a(n-2)/(1/2-1)` -/
def P18436469517131916822.Spec : Prop :=
  ∀ n, P18436469517131916822.a n = (A117575 n : ℚ)

end A117575

/-! ## A117575.P3411520725759039574

`char[2]-a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A117575.P3411520725759039574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2) - a (n - 2)

end

end A117575.P3411520725759039574

namespace A117575

/-- `char[2]-a(n-2)-a(n-2)` -/
def P3411520725759039574.Spec : Prop :=
  ∀ n, P3411520725759039574.a n = A117575 n

end A117575

/-! ## A117575.P2150932375270851732

`a(n-4)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2, a(4)=2`
-/

namespace A117575.P2150932375270851732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2, 2] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 2))

end

end A117575.P2150932375270851732

namespace A117575

/-- `a(n-4)+a(n-4)-a(n-2)` -/
def P2150932375270851732.Spec : Prop :=
  ∀ n, P2150932375270851732.a n = A117575 n

end A117575

/-! ## A117575.P13496779925860260066

`a(n-1)*A168361(n)` with `a(0)=1, a(1)=1`
-/

namespace A117575.P13496779925860260066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A168361 n

end

end A117575.P13496779925860260066

namespace A117575

/-- `a(n-1)*A168361(n)` -/
def P13496779925860260066.Spec : Prop :=
  ∀ n, P13496779925860260066.a n = A117575 n

end A117575

/-! ## A117575.P8188269252666235616

`a(n-1)*A280193(n-1)` with `a(0)=1`
-/

namespace A117575.P8188269252666235616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A280193 (n - 1)

end

end A117575.P8188269252666235616

namespace A117575

/-- `a(n-1)*A280193(n-1)` -/
def P8188269252666235616.Spec : Prop :=
  ∀ n, P8188269252666235616.a n = A117575 n

end A117575

/-! ## A117575.P574125458322081244

`∏[A353364(A001747(n+1))]`
-/

namespace A117575.P574125458322081244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353364 (A001747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117575.P574125458322081244

namespace A117575

/-- `∏[A353364(A001747(n+1))]` -/
def P574125458322081244.Spec : Prop :=
  ∀ n, P574125458322081244.a n = A117575 n

end A117575

/-! ## A117575.P3861703124861582366

`∏[A280193(A014689(n+1)-1)]`
-/

namespace A117575.P3861703124861582366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A014689 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117575.P3861703124861582366

namespace A117575

/-- `∏[A280193(A014689(n+1)-1)]` -/
def P3861703124861582366.Spec : Prop :=
  ∀ n, P3861703124861582366.a n = A117575 n

end A117575

/-! ## A117575.P16471811279320252308

`∏[A280193(A000040(n+1)-2-n)]`
-/

namespace A117575.P16471811279320252308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A000040 (n + 1) - 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117575.P16471811279320252308

namespace A117575

/-- `∏[A280193(A000040(n+1)-2-n)]` -/
def P16471811279320252308.Spec : Prop :=
  ∀ n, P16471811279320252308.a n = A117575 n

end A117575

/-! ## A117575.P18003919622958604759

`A046978(2*n+1)*A158780(n+1)`
-/

namespace A117575.P18003919622958604759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (2 * n + 1) * A158780 (n + 1)

end

end A117575.P18003919622958604759

namespace A117575

/-- `A046978(2*n+1)*A158780(n+1)` -/
def P18003919622958604759.Spec : Prop :=
  ∀ n, P18003919622958604759.a n = A117575 n

end A117575

/-! ## A117575.P15919469799549398215

`A075553(2*n+1)*A158780(n+1)`
-/

namespace A117575.P15919469799549398215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (2 * n + 1) * A158780 (n + 1)

end

end A117575.P15919469799549398215

namespace A117575

/-- `A075553(2*n+1)*A158780(n+1)` -/
def P15919469799549398215.Spec : Prop :=
  ∀ n, P15919469799549398215.a n = A117575 n

end A117575

/-! ## A117575.P13928697428587394543

`∏[A280193(n)]/A280193(n)`
-/

namespace A117575.P13928697428587394543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A280193 n : ℚ)

end

end A117575.P13928697428587394543

namespace A117575

/-- `∏[A280193(n)]/A280193(n)` -/
def P13928697428587394543.Spec : Prop :=
  ∀ n, P13928697428587394543.a n = (A117575 n : ℚ)

end A117575

/-! ## A117575.P12562302617549911721

`(A000007(n)-Δ[A077966(n)])/2`
-/

namespace A117575.P12562302617549911721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A117575.P12562302617549911721

namespace A117575

/-- `(A000007(n)-Δ[A077966(n)])/2` -/
def P12562302617549911721.Spec : Prop :=
  ∀ n, P12562302617549911721.a n = (A117575 n : ℚ)

end A117575

/-! ## A117575.P14871145749353452922

`(A117576(n+1)+A117576(n))/A280193(n)`
-/

namespace A117575.P14871145749353452922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117576 (n + 1) + A117576 n : ℚ) / (A280193 n : ℚ)

end

end A117575.P14871145749353452922

namespace A117575

/-- `(A117576(n+1)+A117576(n))/A280193(n)` -/
def P14871145749353452922.Spec : Prop :=
  ∀ n, P14871145749353452922.a n = (A117575 n : ℚ)

end A117575

/-! ## A117575.P916242479905984851

`∏[A280193(log2(A011782(n)))]`
-/

namespace A117575.P916242479905984851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117575.P916242479905984851

namespace A117575

/-- `∏[A280193(log2(A011782(n)))]` -/
def P916242479905984851.Spec : Prop :=
  ∀ n, P916242479905984851.a n = A117575 n

end A117575

/-! ## A117575.P1070972158800300557

`A011782(n)/A122803(A004526(n))`
-/

namespace A117575.P1070972158800300557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A122803 (A004526 n).toNat : ℚ)

end

end A117575.P1070972158800300557

namespace A117575

/-- `A011782(n)/A122803(A004526(n))` -/
def P1070972158800300557.Spec : Prop :=
  ∀ n, P1070972158800300557.a n = (A117575 n : ℚ)

end A117575

/-!
# A117576: Expansion of (1-x^3)/((1-x^2)*(1+2*x^2)).

The programs for A117576, the canonical program `A117576.P15788069879778431007` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117576 has offset 0).

The definition of A117576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3)/(1+x^2-2x^4))` (program `A117576.P15788069879778431007`, by `A117576.P15788069879778431007.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117576.P15788069879778431007

`ogf((1-x^3)/(1+x^2-2x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117576

/-- `ogf((1-x^3)/(1+x^2-2x^4))` -/
def P15788069879778431007.Spec : Prop :=
  ∀ n, P15788069879778431007.a n = A117576 n

theorem P15788069879778431007.correct : P15788069879778431007.Spec := by
  intro n
  simp only [A117576]

end A117576

/-! ## A117576.P17059778438886502731

`floor(((-1)^floor(n/2)*2^(2*floor(n/2)+1-floor((n+1)/2))+1)/3)`
-/

namespace A117576.P17059778438886502731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (2 : ℚ) ^ (2 * ⌊(n : ℚ) / 2⌋ + 1 - ⌊(n + 1 : ℚ) / 2⌋ : ℤ) + 1) / 3⌋

end

end A117576.P17059778438886502731

namespace A117576

/-- `floor(((-1)^floor(n/2)*2^(2*floor(n/2)+1-floor((n+1)/2))+1)/3)` -/
def P17059778438886502731.Spec : Prop :=
  ∀ n, P17059778438886502731.a n = A117576 n

end A117576

/-! ## A117576.P11730565502300318373

`(-1)^n-2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A117576.P11730565502300318373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (-1) ^ n - 2 * a (n - 2)

end

end A117576.P11730565502300318373

namespace A117576

/-- `(-1)^n-2*a(n-2)` -/
def P11730565502300318373.Spec : Prop :=
  ∀ n, P11730565502300318373.a n = A117576 n

end A117576

/-! ## A117576.P8372704464996153313

`1-2*(a(n-2)+n%2)` with `a(0)=1, a(1)=0`
-/

namespace A117576.P8372704464996153313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - 2 * (a (n - 2) + ((n % 2 : ℕ) : ℤ))

end

end A117576.P8372704464996153313

namespace A117576

/-- `1-2*(a(n-2)+n%2)` -/
def P8372704464996153313.Spec : Prop :=
  ∀ n, P8372704464996153313.a n = A117576 n

end A117576

/-! ## A117576.P10450446996837291375

`2*(gcd(2, n)-a(n-2))-3` with `a(0)=1, a(1)=0`
-/

namespace A117576.P10450446996837291375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * ((Nat.gcd 2 n : ℤ) - a (n - 2)) - 3

end

end A117576.P10450446996837291375

namespace A117576

/-- `2*(gcd(2, n)-a(n-2))-3` -/
def P10450446996837291375.Spec : Prop :=
  ∀ n, P10450446996837291375.a n = A117576 n

end A117576

/-! ## A117576.P3712462654139203705

`1-2*(a(n-2)+and(1, n))` with `a(0)=1, a(1)=0`
-/

namespace A117576.P3712462654139203705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - 2 * (a (n - 2) + (Nat.land 1 n : ℤ))

end

end A117576.P3712462654139203705

namespace A117576

/-- `1-2*(a(n-2)+and(1, n))` -/
def P3712462654139203705.Spec : Prop :=
  ∀ n, P3712462654139203705.a n = A117576 n

end A117576

/-! ## A117576.P2004065696098548616

`(-1)^n-a(n-2)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A117576.P2004065696098548616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (-1) ^ n - a (n - 2) - a (n - 2)

end

end A117576.P2004065696098548616

namespace A117576

/-- `(-1)^n-a(n-2)-a(n-2)` -/
def P2004065696098548616.Spec : Prop :=
  ∀ n, P2004065696098548616.a n = A117576 n

end A117576

/-! ## A117576.P7724747132166686556

`2*a(n-4)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=-1`
-/

namespace A117576.P7724747132166686556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, -1] fun n a =>
  2 * a (n - 4) - a (n - 2)

end

end A117576.P7724747132166686556

namespace A117576

/-- `2*a(n-4)-a(n-2)` -/
def P7724747132166686556.Spec : Prop :=
  ∀ n, P7724747132166686556.a n = A117576 n

end A117576

/-! ## A117576.P5810397113076201995

`a(n-4)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=-1`
-/

namespace A117576.P5810397113076201995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, -1] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 2))

end

end A117576.P5810397113076201995

namespace A117576

/-- `a(n-4)+a(n-4)-a(n-2)` -/
def P5810397113076201995.Spec : Prop :=
  ∀ n, P5810397113076201995.a n = A117576 n

end A117576

/-! ## A117576.P1854480656837860469

`Δ[(1-A077980(n))/2]`
-/

namespace A117576.P1854480656837860469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A077980 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117576.P1854480656837860469

namespace A117576

/-- `Δ[(1-A077980(n))/2]` -/
def P1854480656837860469.Spec : Prop :=
  ∀ n, P1854480656837860469.a n = (A117576 n : ℚ)

end A117576

/-! ## A117576.P8098022202566355184

`A117575(n)-a(n-1)` with `a(0)=1`
-/

namespace A117576.P8098022202566355184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117575 n - a (n - 1)

end

end A117576.P8098022202566355184

namespace A117576

/-- `A117575(n)-a(n-1)` -/
def P8098022202566355184.Spec : Prop :=
  ∀ n, P8098022202566355184.a n = A117576 n

end A117576

/-! ## A117576.P6716553874546944370

`A133730(n+3)*A133730(n)`
-/

namespace A117576.P6716553874546944370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (n + 3) * A133730 n

end

end A117576.P6716553874546944370

namespace A117576

/-- `A133730(n+3)*A133730(n)` -/
def P6716553874546944370.Spec : Prop :=
  ∀ n, P6716553874546944370.a n = A117576 n

end A117576

/-! ## A117576.P3835012822044635000

`A077966(n+1)/2-A077980(n+1)`
-/

namespace A117576.P3835012822044635000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077966 (n + 1) : ℚ) / 2 - (A077980 (n + 1) : ℚ)

end

end A117576.P3835012822044635000

namespace A117576

/-- `A077966(n+1)/2-A077980(n+1)` -/
def P3835012822044635000.Spec : Prop :=
  ∀ n, P3835012822044635000.a n = (A117576 n : ℚ)

end A117576

/-! ## A117576.P1416353777696341424

`A078052(n+1)/2-A078052(n+1)`
-/

namespace A117576.P1416353777696341424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078052 (n + 1) : ℚ) / 2 - (A078052 (n + 1) : ℚ)

end

end A117576.P1416353777696341424

namespace A117576

/-- `A078052(n+1)/2-A078052(n+1)` -/
def P1416353777696341424.Spec : Prop :=
  ∀ n, P1416353777696341424.a n = (A117576 n : ℚ)

end A117576

/-! ## A117576.P7370013024442178776

`A016116(n)*A133684(n+1)-A001045(n)`
-/

namespace A117576.P7370013024442178776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A133684 (n + 1) - A001045 n

end

end A117576.P7370013024442178776

namespace A117576

/-- `A016116(n)*A133684(n+1)-A001045(n)` -/
def P7370013024442178776.Spec : Prop :=
  ∀ n, P7370013024442178776.a n = A117576 n

end A117576

/-! ## A117576.P17740463965733705984

`A077953(2*n)/A078052(2*n+1)*A078052(n+1)`
-/

namespace A117576.P17740463965733705984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077953 (2 * n) : ℚ) / (A078052 (2 * n + 1) : ℚ) * (A078052 (n + 1) : ℚ)

end

end A117576.P17740463965733705984

namespace A117576

/-- `A077953(2*n)/A078052(2*n+1)*A078052(n+1)` -/
def P17740463965733705984.Spec : Prop :=
  ∀ n, P17740463965733705984.a n = (A117576 n : ℚ)

end A117576

/-! ## A117576.P13924071425997576403

`A077980(2*n)/A078052(2*n+1)*A078052(n+1)`
-/

namespace A117576.P13924071425997576403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077980 (2 * n) : ℚ) / (A078052 (2 * n + 1) : ℚ) * (A078052 (n + 1) : ℚ)

end

end A117576.P13924071425997576403

namespace A117576

/-- `A077980(2*n)/A078052(2*n+1)*A078052(n+1)` -/
def P13924071425997576403.Spec : Prop :=
  ∀ n, P13924071425997576403.a n = (A117576 n : ℚ)

end A117576

/-!
# A117580: A cubic quadratic sequence arranged so that the modulo-3 equals one cubic sequence is just ahead of the quadratic sequence (called here the Maestro sequence).

The programs for A117580, there is no canonical definition to state claims against.
-/

/-! ## A117580.P5205641025809865479

`A062739(∑[∏{e}[A217325(n+5), #]])`
-/

namespace A117580.P5205641025809865479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217325 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117580.P5205641025809865479

/-! ## A117580.P194770246463493732

`A075109(∑[∏{e}[A217325(n+5), #]])`
-/

namespace A117580.P194770246463493732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217325 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117580.P194770246463493732

/-! ## A117580.P9004623789627308107

`A062739(lt[∏{e}[n+1, #+1], A215732(n+1)])`
-/

namespace A117580.P9004623789627308107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A117580.P9004623789627308107

/-! ## A117580.P16495806386814468501

`A062739(A018412(n+1)%A079433(n+4))`
-/

namespace A117580.P16495806386814468501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (Int.tmod (A018412 (n + 1)) (A079433 (n + 4))).toNat

end

end A117580.P16495806386814468501

/-!
# A117581: For each successive prime p, the largest integer n such that both n and n-1 factor into primes less than or equal to p.

The programs for A117581, there is no canonical definition to state claims against.
-/

/-! ## A117581.P12009772803450518167

`A002072(n+1)+1`
-/

namespace A117581.P12009772803450518167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002072 (n + 1) + 1

end

end A117581.P12009772803450518167

/-! ## A117581.P11783938198252595268

`A138180(∑[A002071(n+1)])+1`
-/

namespace A117581.P11783938198252595268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A117581.P11783938198252595268

/-! ## A117581.P15469256511588431497

`A138180(∑[∑[A145604(n+1)]])+1`
-/

namespace A117581.P15469256511588431497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145604 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A117581.P15469256511588431497

/-! ## A117581.P5313861645097746311

`A145606(A010352(n+1))+1`
-/

namespace A117581.P5313861645097746311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145606 (A010352 (n + 1)).toNat + 1

end

end A117581.P5313861645097746311

/-!
# A117582: The number of ratios t/(t-1), where t is a square number, which factor into primes less than or equal to prime(n).

The programs for A117582, there is no canonical definition to state claims against.
-/

/-! ## A117582.P6395965766944173045

`A347520(A006578(n)+A000120(n))`
-/

namespace A117582.P6395965766944173045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A006578 n + A000120 n).toNat

end

end A117582.P6395965766944173045

/-! ## A117582.P1010167972568455933

`A034328(A141214(n))-A205552(n+1)`
-/

namespace A117582.P1010167972568455933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034328 (A141214 n).toNat - A205552 (n + 1)

end

end A117582.P1010167972568455933

/-! ## A117582.P5034115156053978073

`A003453(n+5)-A003963(A078495(2*n))`
-/

namespace A117582.P5034115156053978073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5) - A003963 (A078495 (2 * n)).toNat

end

end A117582.P5034115156053978073

/-! ## A117582.P2941261628523418347

`A014406(3*n+5)+A001221(A000151(n+1))`
-/

namespace A117582.P2941261628523418347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014406 (3 * n + 5) + A001221 (A000151 (n + 1)).toNat

end

end A117582.P2941261628523418347

/-!
# A117583: The number of ratios t/(t-1), where t is a triangular number, which factor into primes less than or equal to prime(n).

The programs for A117583, there is no canonical definition to state claims against.
-/

/-! ## A117583.P5911635600707993711

`A003987(n)+A001414(n!)`
-/

namespace A117583.P5911635600707993711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + A001414 (Nat.factorial n)

end

end A117583.P5911635600707993711

/-! ## A117583.P14599512983843048474

`A324672(A000749(n))+∑[n]`
-/

namespace A117583.P14599512983843048474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (A000749 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117583.P14599512983843048474

/-! ## A117583.P3384543594850152559

`∑[n]-A011595(A002740(n))`
-/

namespace A117583.P3384543594850152559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A011595 (A002740 n).toNat

end

end A117583.P3384543594850152559

/-! ## A117583.P2489182545070767433

`∑[n]-A062157(A074087(n))`
-/

namespace A117583.P2489182545070767433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A062157 (A074087 n).toNat

end

end A117583.P2489182545070767433

/-! ## A117583.P4125479778299912984

`∑[n]-A062157(A278640(n))`
-/

namespace A117583.P4125479778299912984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A062157 (A278640 n).toNat

end

end A117583.P4125479778299912984

/-!
# A117584: Generalized Pellian triangle.

The programs for A117584, there is no canonical definition to state claims against.
-/

/-! ## A117584.P15687291620314525945

`A352961(eq[and(n, 2*n), and(n, n-1)]+1)`
-/

namespace A117584.P15687291620314525945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117584.P15687291620314525945

/-! ## A117584.P5451286526801776143

`A352961(A099627(n))`
-/

namespace A117584.P5451286526801776143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352961 (A099627 n).toNat

end

end A117584.P5451286526801776143

/-! ## A117584.P5959753851513544581

`A352961(A173786(n)-1)`
-/

namespace A117584.P5959753851513544581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352961 (A173786 n - 1).toNat

end

end A117584.P5959753851513544581

/-! ## A117584.P16733637156028821660

`A352961(A023758(n+1)+1)`
-/

namespace A117584.P16733637156028821660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352961 (A023758 (n + 1) + 1).toNat

end

end A117584.P16733637156028821660

/-! ## A117584.P15920182475348515917

`A352961(A334169(n+1))`
-/

namespace A117584.P15920182475348515917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352961 (A334169 (n + 1)).toNat

end

end A117584.P15920182475348515917

/-!
# A117585: a(n) = 2*a(n-1) + a(n-2) + n.

The programs for A117585, the canonical program `A117585.P16393165547438296234` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117585 has offset 0).

The definition of A117585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)+n` (program `A117585.P16393165547438296234`, by `A117585.P16393165547438296234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117585.P16393165547438296234

`2*a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117585

/-- `2*a(n-1)+a(n-2)+n` -/
def P16393165547438296234.Spec : Prop :=
  ∀ n, (P16393165547438296234.a n : ℤ) = A117585 n

theorem P16393165547438296234.correct : P16393165547438296234.Spec := by
  intro n
  simp only [A117585]

end A117585

/-! ## A117585.P9436219363583080454

`1/2*(A000129(n+2)+2*A000129(n+1)-n-2)`
-/

namespace A117585.P9436219363583080454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000129 (n + 2) + 2 * A000129 (n + 1) - (n : ℤ) - 2 : ℚ)

end

end A117585.P9436219363583080454

namespace A117585

/-- `1/2*(A000129(n+2)+2*A000129(n+1)-n-2)` -/
def P9436219363583080454.Spec : Prop :=
  ∀ n, P9436219363583080454.a n = (A117585 n : ℚ)

end A117585

/-! ## A117585.P3244070824560728536

`∑[ogf((1-x+x^2)/(1-3x+x^2+x^3))]`
-/

namespace A117585.P3244070824560728536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P3244070824560728536

namespace A117585

/-- `∑[ogf((1-x+x^2)/(1-3x+x^2+x^3))]` -/
def P3244070824560728536.Spec : Prop :=
  ∀ n, P3244070824560728536.a n = A117585 n

end A117585

/-! ## A117585.P1296599512465075891

`ogf((1-x+x^2)/(1-4x+4x^2-x^4))`
-/

namespace A117585.P1296599512465075891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -4, 4, 0, -1] n

end

end A117585.P1296599512465075891

namespace A117585

/-- `ogf((1-x+x^2)/(1-4x+4x^2-x^4))` -/
def P1296599512465075891.Spec : Prop :=
  ∀ n, P1296599512465075891.a n = A117585 n

end A117585

/-! ## A117585.P12968828494470622160

`a(n-1)+a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=3`
-/

namespace A117585.P12968828494470622160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + n))

end

end A117585.P12968828494470622160

namespace A117585

/-- `a(n-1)+a(n-1)+a(n-2)+n` -/
def P12968828494470622160.Spec : Prop :=
  ∀ n, (P12968828494470622160.a n : ℤ) = A117585 n

theorem P12968828494470622160.correct : P12968828494470622160.Spec := by
  intro n
  simp only [A117585, Nat.add_sub_cancel, A117585.P12968828494470622160.a, A117585.P16393165547438296234.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A117585

/-! ## A117585.P5811234258025199910

`2-(2*(1-a(n-1))-a(n-2)-n)` with `a(0)=1, a(1)=3`
-/

namespace A117585.P5811234258025199910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (2 * (1 - a (n - 1)) - a (n - 2) - (n : ℤ))

end

end A117585.P5811234258025199910

namespace A117585

/-- `2-(2*(1-a(n-1))-a(n-2)-n)` -/
def P5811234258025199910.Spec : Prop :=
  ∀ n, P5811234258025199910.a n = A117585 n

end A117585

/-! ## A117585.P17078662718163721617

`∑[A098790(n)]`
-/

namespace A117585.P17078662718163721617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P17078662718163721617

namespace A117585

/-- `∑[A098790(n)]` -/
def P17078662718163721617.Spec : Prop :=
  ∀ n, P17078662718163721617.a n = A117585 n

end A117585

/-! ## A117585.P16144659762999342811

`∑[A353580(n+1)-1]`
-/

namespace A117585.P16144659762999342811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P16144659762999342811

namespace A117585

/-- `∑[A353580(n+1)-1]` -/
def P16144659762999342811.Spec : Prop :=
  ∀ n, P16144659762999342811.a n = A117585 n

end A117585

/-! ## A117585.P10184058221654203143

`∑[∑[A266504(2*n)]-1]`
-/

namespace A117585.P10184058221654203143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P10184058221654203143

namespace A117585

/-- `∑[∑[A266504(2*n)]-1]` -/
def P10184058221654203143.Spec : Prop :=
  ∀ n, P10184058221654203143.a n = A117585 n

end A117585

/-! ## A117585.P12055165543674532959

`∑[∑[A266506(4*n)]-1]`
-/

namespace A117585.P12055165543674532959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P12055165543674532959

namespace A117585

/-- `∑[∑[A266506(4*n)]-1]` -/
def P12055165543674532959.Spec : Prop :=
  ∀ n, P12055165543674532959.a n = A117585 n

end A117585

/-! ## A117585.P13244569763420912647

`A048745(n)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A117585.P13244569763420912647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048745 n - (a (n - 1) + (n : ℤ))

end

end A117585.P13244569763420912647

namespace A117585

/-- `A048745(n)-(a(n-1)+n)` -/
def P13244569763420912647.Spec : Prop :=
  ∀ n, P13244569763420912647.a n = A117585 n

end A117585

/-! ## A117585.P15969539070901968150

`A391272(n)+A171842(n)`
-/

namespace A117585.P15969539070901968150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391272 n + A171842 n

end

end A117585.P15969539070901968150

namespace A117585

/-- `A391272(n)+A171842(n)` -/
def P15969539070901968150.Spec : Prop :=
  ∀ n, P15969539070901968150.a n = A117585 n

end A117585

/-! ## A117585.P7605239404490053899

`A098586(n)-A100131(n)`
-/

namespace A117585.P7605239404490053899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098586 n - A100131 n

end

end A117585.P7605239404490053899

namespace A117585

/-- `A098586(n)-A100131(n)` -/
def P7605239404490053899.Spec : Prop :=
  ∀ n, P7605239404490053899.a n = A117585 n

end A117585

/-! ## A117585.P2687618845059923996

`∑[A048739(n)-A000129(n)]`
-/

namespace A117585.P2687618845059923996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n - A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P2687618845059923996

namespace A117585

/-- `∑[A048739(n)-A000129(n)]` -/
def P2687618845059923996.Spec : Prop :=
  ∀ n, P2687618845059923996.a n = A117585 n

end A117585

/-! ## A117585.P6585003191454598859

`∑[A001333(n)+∑[A000129(n)]]`
-/

namespace A117585.P6585003191454598859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P6585003191454598859

namespace A117585

/-- `∑[A001333(n)+∑[A000129(n)]]` -/
def P6585003191454598859.Spec : Prop :=
  ∀ n, P6585003191454598859.a n = A117585 n

end A117585

/-! ## A117585.P7577526429391658359

`∑[∑[A002203(n)]-A024537(n)]`
-/

namespace A117585.P7577526429391658359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P7577526429391658359

namespace A117585

/-- `∑[∑[A002203(n)]-A024537(n)]` -/
def P7577526429391658359.Spec : Prop :=
  ∀ n, P7577526429391658359.a n = A117585 n

end A117585

/-! ## A117585.P5518949165594719418

`∑[∑[A002203(n)-A215928(n)]]`
-/

namespace A117585.P5518949165594719418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A215928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P5518949165594719418

namespace A117585

/-- `∑[∑[A002203(n)-A215928(n)]]` -/
def P5518949165594719418.Spec : Prop :=
  ∀ n, P5518949165594719418.a n = A117585 n

end A117585

/-! ## A117585.P10416738789685439536

`∑[A033539(n+1)+A000129(n)]`
-/

namespace A117585.P10416738789685439536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (n + 1) + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P10416738789685439536

namespace A117585

/-- `∑[A033539(n+1)+A000129(n)]` -/
def P10416738789685439536.Spec : Prop :=
  ∀ n, P10416738789685439536.a n = A117585 n

end A117585

/-! ## A117585.P8340031868209237422

`∑[A293004(n)+A171842(n+1)]`
-/

namespace A117585.P8340031868209237422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P8340031868209237422

namespace A117585

/-- `∑[A293004(n)+A171842(n+1)]` -/
def P8340031868209237422.Spec : Prop :=
  ∀ n, P8340031868209237422.a n = A117585 n

end A117585

/-! ## A117585.P17841683433992612696

`A048739(n)+∑[A171842(n)-1]`
-/

namespace A117585.P17841683433992612696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117585.P17841683433992612696

namespace A117585

/-- `A048739(n)+∑[A171842(n)-1]` -/
def P17841683433992612696.Spec : Prop :=
  ∀ n, P17841683433992612696.a n = A117585 n

end A117585

/-!
# A117587: Numbers k such that 2^prime(k) - prime(k)^2 is prime.

The programs for A117587, there is no canonical definition to state claims against.
-/

/-! ## A117587.P1955826427532098697

`A000720(A242929(n+1))`
-/

namespace A117587.P1955826427532098697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A242929 (n + 1)).toNat

end

end A117587.P1955826427532098697

/-! ## A117587.P17829616082857648230

`record[A049084(A072180(n+1))]`
-/

namespace A117587.P17829616082857648230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A072180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117587.P17829616082857648230

/-! ## A117587.P4144188986686163858

`A000720(p?[A072180(n+1)])`
-/

namespace A117587.P4144188986686163858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117587.P4144188986686163858

/-! ## A117587.P14264724070399644817

`A003963(p?[A072180(n+1)])`
-/

namespace A117587.P14264724070399644817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117587.P14264724070399644817

/-! ## A117587.P5264082895190326443

`A026233(p?[A072180(n+1)])`
-/

namespace A117587.P5264082895190326443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117587.P5264082895190326443

/-!
# A117588: Numbers k such that 2^k + prime(k)^2 is prime.

The programs for A117588, there is no canonical definition to state claims against.
-/

/-! ## A117588.P896821272604104203

`A219200(n)+A056172(A056154(n+1))`
-/

namespace A117588.P896821272604104203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 (n + 41) + A056172 (A056154 (n + 1)).toNat

end

end A117588.P896821272604104203

/-! ## A117588.P5715112804473750947

`A283986(2*(n+1))+A283986(A305750(n+1)²)`
-/

namespace A117588.P5715112804473750947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (2 * (n + 1)) + A283986 (A305750 (n + 1) ^ 2).toNat

end

end A117588.P5715112804473750947

/-!
# A117589: Periodic with period 8: repeat 0, 1, 3, 7, 15, 14, 12, 8.

The programs for A117589, the canonical program `A117589.P1907614225236349774` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117589 has offset 0).

The definition of A117589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117589.P1907614225236349774

`15-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117589

/-- `15-a(n-4)` -/
def P1907614225236349774.Spec : Prop :=
  ∀ n, P1907614225236349774.a n = A117589 n

theorem P1907614225236349774.correct : P1907614225236349774.Spec := by
  intro n
  simp only [A117589]

end A117589

/-!
# A117590: a(n) = ceiling(x(n)), where x(n) = 3*x(n-1)/2 and x(1) = 1.

The programs for A117590, the canonical program `A117590.P11190650351712641150` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117590 has offset 1).

The definition of A117590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117590.P11190650351712641150

`ceil(A008776(n)/A000079(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117590

/-- `ceil(A008776(n)/A000079(n))` -/
def P11190650351712641150.Spec : Prop :=
  ∀ n, P11190650351712641150.a n = A117590 (n + 1)

theorem P11190650351712641150.correct : P11190650351712641150.Spec := by
  intro n
  simp only [A117590, Nat.add_sub_cancel]

end A117590

/-! ## A117590.P3898355981889912304

`ceil(2*(3/2)^n)`
-/

namespace A117590.P3898355981889912304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((3 : ℚ) / 2) ^ n⌉

end

end A117590.P3898355981889912304

namespace A117590

/-- `ceil(2*(3/2)^n)` -/
def P3898355981889912304.Spec : Prop :=
  ∀ n, P3898355981889912304.a n = A117590 (n + 1)

end A117590

/-! ## A117590.P3456152991312974701

`floor(A147788(n)+atan(n))`
-/

namespace A117590.P3456152991312974701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147788 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A117590.P3456152991312974701

namespace A117590

/-- `floor(A147788(n)+atan(n))` -/
def P3456152991312974701.Spec : Prop :=
  ∀ n, P3456152991312974701.a n = A117590 (n + 1)

end A117590

/-! ## A117590.P7114503737019319289

`char[A056239(n+3)]+floor(2*(3/2)^n)`
-/

namespace A117590.P7114503737019319289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊2 * ((3 : ℚ) / 2) ^ n⌋

end

end A117590.P7114503737019319289

namespace A117590

/-- `char[A056239(n+3)]+floor(2*(3/2)^n)` -/
def P7114503737019319289.Spec : Prop :=
  ∀ n, P7114503737019319289.a n = A117590 (n + 1)

end A117590

/-! ## A117590.P13379873239572958234

`A157928(n)+A147788(n)`
-/

namespace A117590.P13379873239572958234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A147788 n

end

end A117590.P13379873239572958234

namespace A117590

/-- `A157928(n)+A147788(n)` -/
def P13379873239572958234.Spec : Prop :=
  ∀ n, P13379873239572958234.a n = A117590 (n + 1)

end A117590

/-! ## A117590.P3111015893146820822

`ceil(A027649(n)/2^n)+1`
-/

namespace A117590.P3111015893146820822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027649 n : ℚ) / (2 ^ n : ℚ)⌉ + 1

end

end A117590.P3111015893146820822

namespace A117590

/-- `ceil(A027649(n)/2^n)+1` -/
def P3111015893146820822.Spec : Prop :=
  ∀ n, P3111015893146820822.a n = A117590 (n + 1)

end A117590

/-!
# A117591: a(n) = 2^n + Fibonacci(n).

The programs for A117591, the canonical program `A117591.P16275801565193355413` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117591 has offset 0).

The definition of A117591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+A000045(n)` (program `A117591.P16275801565193355413`, by `A117591.P16275801565193355413.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117591.P16275801565193355413

`2^n+A000045(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117591

/-- `2^n+A000045(n)` -/
def P16275801565193355413.Spec : Prop :=
  ∀ n, P16275801565193355413.a n = A117591 n

theorem P16275801565193355413.correct : P16275801565193355413.Spec := by
  intro n
  simp only [A117591]

end A117591

/-! ## A117591.P11645935650358651505

`A099036(n)+2*A000045(n)`
-/

namespace A117591.P11645935650358651505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n + 2 * A000045 n

end

end A117591.P11645935650358651505

namespace A117591

/-- `A099036(n)+2*A000045(n)` -/
def P11645935650358651505.Spec : Prop :=
  ∀ n, P11645935650358651505.a n = A117591 n

theorem P11645935650358651505.correct : P11645935650358651505.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P11645935650358651505.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A099036, A099036.P3170140726151309437.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P8752018898012266304

`A000079(n+1)-A099036(n)`
-/

namespace A117591.P8752018898012266304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A099036 n

end

end A117591.P8752018898012266304

namespace A117591

/-- `A000079(n+1)-A099036(n)` -/
def P8752018898012266304.Spec : Prop :=
  ∀ n, P8752018898012266304.a n = A117591 n

theorem P8752018898012266304.correct : P8752018898012266304.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P8752018898012266304.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A000079, A000079.P10855139691139572931.a, A099036, A099036.P3170140726151309437.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P18289833032462308232

`ogf((1-3x^2)/(1-3x+x^2+2x^3))`
-/

namespace A117591.P18289833032462308232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -3, 1, 2] n

end

end A117591.P18289833032462308232

namespace A117591

/-- `ogf((1-3x^2)/(1-3x+x^2+2x^3))` -/
def P18289833032462308232.Spec : Prop :=
  ∀ n, P18289833032462308232.a n = A117591 n

end A117591

/-! ## A117591.P5741853782708829524

`a(n-1)+a(n-2)+2^(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A117591.P5741853782708829524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A117591.P5741853782708829524

namespace A117591

/-- `a(n-1)+a(n-2)+2^(n-2)` -/
def P5741853782708829524.Spec : Prop :=
  ∀ n, P5741853782708829524.a n = (A117591 n : ℚ)

end A117591

/-! ## A117591.P11435997479881122730

`A212804(n+1)+2^n`
-/

namespace A117591.P11435997479881122730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (2 ^ n : ℤ)

end

end A117591.P11435997479881122730

namespace A117591

/-- `A212804(n+1)+2^n` -/
def P11435997479881122730.Spec : Prop :=
  ∀ n, P11435997479881122730.a n = A117591 n

end A117591

/-! ## A117591.P9850371621812074271

`2^n-A152163(n+2)`
-/

namespace A117591.P9850371621812074271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A152163 (n + 2)

end

end A117591.P9850371621812074271

namespace A117591

/-- `2^n-A152163(n+2)` -/
def P9850371621812074271.Spec : Prop :=
  ∀ n, P9850371621812074271.a n = A117591 n

end A117591

/-! ## A117591.P6236966586928306670

`or(2^n, A000045(2*n-n))`
-/

namespace A117591.P6236966586928306670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A000045 (2 * n - n))

end

end A117591.P6236966586928306670

namespace A117591

/-- `or(2^n, A000045(2*n-n))` -/
def P6236966586928306670.Spec : Prop :=
  ∀ n, P6236966586928306670.a n = A117591 n

end A117591

/-! ## A117591.P6847869033561737247

`A001611(n)+A000225(n)`
-/

namespace A117591.P6847869033561737247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + A000225 n

end

end A117591.P6847869033561737247

namespace A117591

/-- `A001611(n)+A000225(n)` -/
def P6847869033561737247.Spec : Prop :=
  ∀ n, P6847869033561737247.a n = A117591 n

theorem P6847869033561737247.correct : P6847869033561737247.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P6847869033561737247.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A000225, A000225.P6535533121115206393.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P14366507528736881637

`A002062(n)+A000325(n)`
-/

namespace A117591.P14366507528736881637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + A000325 n

end

end A117591.P14366507528736881637

namespace A117591

/-- `A002062(n)+A000325(n)` -/
def P14366507528736881637.Spec : Prop :=
  ∀ n, P14366507528736881637.a n = A117591 n

theorem P14366507528736881637.correct : P14366507528736881637.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P14366507528736881637.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A000325, A000325.P17729744711211405807.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P1930856472684826380

`A014283(n)+A001580(n)`
-/

namespace A117591.P1930856472684826380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014283 n + A001580 n

end

end A117591.P1930856472684826380

namespace A117591

/-- `A014283(n)+A001580(n)` -/
def P1930856472684826380.Spec : Prop :=
  ∀ n, P1930856472684826380.a n = A117591 n

theorem P1930856472684826380.correct : P1930856472684826380.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P1930856472684826380.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A001580, A001580.P876701067235307781.a, A014283, A014283.P650192608423277431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P271757733944325148

`A062510(n)+A008346(n)`
-/

namespace A117591.P271757733944325148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n + A008346 n

end

end A117591.P271757733944325148

namespace A117591

/-- `A062510(n)+A008346(n)` -/
def P271757733944325148.Spec : Prop :=
  ∀ n, P271757733944325148.a n = A117591 n

theorem P271757733944325148.correct : P271757733944325148.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P271757733944325148.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A008346, A008346.P8004040718753913505.a, A062510, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P5868572319270417785

`A065220(n)+A006127(n)`
-/

namespace A117591.P5868572319270417785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A006127 n

end

end A117591.P5868572319270417785

namespace A117591

/-- `A065220(n)+A006127(n)` -/
def P5868572319270417785.Spec : Prop :=
  ∀ n, P5868572319270417785.a n = A117591 n

theorem P5868572319270417785.correct : P5868572319270417785.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P5868572319270417785.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A006127, A006127.P13800088188431216723.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P13157368283689455088

`A157725(n)+A000918(n)`
-/

namespace A117591.P13157368283689455088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + A000918 n

end

end A117591.P13157368283689455088

namespace A117591

/-- `A157725(n)+A000918(n)` -/
def P13157368283689455088.Spec : Prop :=
  ∀ n, P13157368283689455088.a n = A117591 n

theorem P13157368283689455088.correct : P13157368283689455088.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P13157368283689455088.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A000918, A000918.P14329454465793069288.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P5575793451044242363

`A109522(n)+A051049(n)`
-/

namespace A117591.P5575793451044242363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 n + A051049 n

end

end A117591.P5575793451044242363

namespace A117591

/-- `A109522(n)+A051049(n)` -/
def P5575793451044242363.Spec : Prop :=
  ∀ n, P5575793451044242363.a n = A117591 n

end A117591

/-! ## A117591.P6477303065048889655

`A160536(n)+A024012(n)`
-/

namespace A117591.P6477303065048889655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160536 n + A024012 n

end

end A117591.P6477303065048889655

namespace A117591

/-- `A160536(n)+A024012(n)` -/
def P6477303065048889655.Spec : Prop :=
  ∀ n, P6477303065048889655.a n = A117591 n

theorem P6477303065048889655.correct : P6477303065048889655.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P6477303065048889655.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A024012, A024012.P5170461396986632698.a, A160536, A160536.P8463650487165730283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P15378484133005315032

`A157726(n)+A036563(n)`
-/

namespace A117591.P15378484133005315032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n + A036563 n

end

end A117591.P15378484133005315032

namespace A117591

/-- `A157726(n)+A036563(n)` -/
def P15378484133005315032.Spec : Prop :=
  ∀ n, P15378484133005315032.a n = A117591 n

theorem P15378484133005315032.correct : P15378484133005315032.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P15378484133005315032.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A036563, A036563.P16747850807333830855.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P877946757159560511

`A228078(n)+A001588(n)`
-/

namespace A117591.P877946757159560511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228078 n + A001588 n

end

end A117591.P877946757159560511

namespace A117591

/-- `A228078(n)+A001588(n)` -/
def P877946757159560511.Spec : Prop :=
  ∀ n, P877946757159560511.a n = A117591 n

end A117591

/-! ## A117591.P15144040931278221977

`A212272(n)+A024013(n)`
-/

namespace A117591.P15144040931278221977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212272 n + A024013 n

end

end A117591.P15144040931278221977

namespace A117591

/-- `A212272(n)+A024013(n)` -/
def P15144040931278221977.Spec : Prop :=
  ∀ n, P15144040931278221977.a n = A117591 n

theorem P15144040931278221977.correct : P15144040931278221977.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P15144040931278221977.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A024013, A024013.P13345601047456800814.a, A212272, A212272.P230076933571766686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-! ## A117591.P8376163475300008

`A168616(n)+A157729(n)`
-/

namespace A117591.P8376163475300008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n + A157729 n

end

end A117591.P8376163475300008

namespace A117591

/-- `A168616(n)+A157729(n)` -/
def P8376163475300008.Spec : Prop :=
  ∀ n, P8376163475300008.a n = A117591 n

theorem P8376163475300008.correct : P8376163475300008.Spec := by
  intro n
  simp only [A117591, Nat.add_sub_cancel, A117591.P8376163475300008.a, A117591.P16275801565193355413.a, A000045, A000045.P11838749114346432762.a, A157729, A157729.P2013707109334832467.a, A168616, A168616.P12817012548853144141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117591

/-!
# A117592: a(n) = a(3n) = a(3n+1) = a(3n+2)/2 with a(0)=1.

The programs for A117592, the canonical program `A117592.P1440909278058429630` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117592 has offset 0).

The definition of A117592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117592.P11727823509255731078

`abs(A117942(n))`
-/

namespace A117592.P11727823509255731078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117942 n|

end

end A117592.P11727823509255731078

namespace A117592

/-- `abs(A117942(n))` -/
def P11727823509255731078.Spec : Prop :=
  ∀ n, P11727823509255731078.a n = A117592 n

end A117592

/-! ## A117592.P1440909278058429630

`2^A081603(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117592

/-- `2^A081603(n)` -/
def P1440909278058429630.Spec : Prop :=
  ∀ n, P1440909278058429630.a n = (A117592 n : ℚ)

end A117592

/-! ## A117592.P6561237973339330419

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A117592.P6561237973339330419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat * a (n % 3)

end

end A117592.P6561237973339330419

namespace A117592

/-- `a(floor(n/3))*a(n%3)` -/
def P6561237973339330419.Spec : Prop :=
  ∀ n, (P6561237973339330419.a n : ℤ) = A117592 n

end A117592

/-! ## A117592.P6325269723757782422

`2^val(A006047(n), 3)`
-/

namespace A117592.P6325269723757782422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A006047 n).toNat 3

end

end A117592.P6325269723757782422

namespace A117592

/-- `2^val(A006047(n), 3)` -/
def P6325269723757782422.Spec : Prop :=
  ∀ n, (P6325269723757782422.a n : ℤ) = A117592 n

end A117592

/-! ## A117592.P6564205663382208766

`A003963(A006047(n))`
-/

namespace A117592.P6564205663382208766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A006047 n).toNat

end

end A117592.P6564205663382208766

namespace A117592

/-- `A003963(A006047(n))` -/
def P6564205663382208766.Spec : Prop :=
  ∀ n, P6564205663382208766.a n = A117592 n

end A117592

/-! ## A117592.P3253268865151347008

`A001316(A289814(n))`
-/

namespace A117592.P3253268865151347008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A289814 n).toNat

end

end A117592.P3253268865151347008

namespace A117592

/-- `A001316(A289814(n))` -/
def P3253268865151347008.Spec : Prop :=
  ∀ n, P3253268865151347008.a n = A117592 n

end A117592

/-! ## A117592.P10898423471761553378

`A290092(A038574(n))`
-/

namespace A117592.P10898423471761553378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A038574 n).toNat

end

end A117592.P10898423471761553378

namespace A117592

/-- `A290092(A038574(n))` -/
def P10898423471761553378.Spec : Prop :=
  ∀ n, P10898423471761553378.a n = A117592 n

end A117592

/-! ## A117592.P1848265761567705943

`A120879(A300222(n))`
-/

namespace A117592.P1848265761567705943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A300222 n).toNat

end

end A117592.P1848265761567705943

namespace A117592

/-- `A120879(A300222(n))` -/
def P1848265761567705943.Spec : Prop :=
  ∀ n, P1848265761567705943.a n = A117592 n

end A117592

/-! ## A117592.P1246761902526974170

`A120880(A300222(n)/2)`
-/

namespace A117592.P1246761902526974170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 (SequenceMachineLib.roundAway ((A300222 n : ℚ) / 2)).toNat

end

end A117592.P1246761902526974170

namespace A117592

/-- `A120880(A300222(n)/2)` -/
def P1246761902526974170.Spec : Prop :=
  ∀ n, P1246761902526974170.a n = A117592 n

end A117592

/-! ## A117592.P12053189379647801421

`A006047(n-A117966(n))`
-/

namespace A117592.P12053189379647801421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 ((n : ℤ) - A117966 n).toNat

end

end A117592.P12053189379647801421

namespace A117592

/-- `A006047(n-A117966(n))` -/
def P12053189379647801421.Spec : Prop :=
  ∀ n, P12053189379647801421.a n = A117592 n

end A117592

/-! ## A117592.P16480696775299198339

`gcd(A000038(n), A117942(n))`
-/

namespace A117592.P16480696775299198339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A117942 n)

end

end A117592.P16480696775299198339

namespace A117592

/-- `gcd(A000038(n), A117942(n))` -/
def P16480696775299198339.Spec : Prop :=
  ∀ n, (P16480696775299198339.a n : ℤ) = A117592 n

end A117592

/-! ## A117592.P2525577951475208292

`gcd(A016963(n), A120879(n))`
-/

namespace A117592.P2525577951475208292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016963 n) (A120879 n)

end

end A117592.P2525577951475208292

namespace A117592

/-- `gcd(A016963(n), A120879(n))` -/
def P2525577951475208292.Spec : Prop :=
  ∀ n, (P2525577951475208292.a n : ℤ) = A117592 n

end A117592

/-! ## A117592.P10564068792762402872

`lcm(A020985(n), A117942(n))`
-/

namespace A117592.P10564068792762402872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A117942 n)

end

end A117592.P10564068792762402872

namespace A117592

/-- `lcm(A020985(n), A117942(n))` -/
def P10564068792762402872.Spec : Prop :=
  ∀ n, (P10564068792762402872.a n : ℤ) = A117592 n

end A117592

/-! ## A117592.P14676227119785202571

`A006047(2*n-A004488(n))`
-/

namespace A117592.P14676227119785202571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 ((2 * n : ℤ) - A004488 n).toNat

end

end A117592.P14676227119785202571

namespace A117592

/-- `A006047(2*n-A004488(n))` -/
def P14676227119785202571.Spec : Prop :=
  ∀ n, P14676227119785202571.a n = A117592 n

end A117592

/-! ## A117592.P1231703993632446885

`A120880(2*n-A004488(n))`
-/

namespace A117592.P1231703993632446885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 ((2 * n : ℤ) - A004488 n).toNat

end

end A117592.P1231703993632446885

namespace A117592

/-- `A120880(2*n-A004488(n))` -/
def P1231703993632446885.Spec : Prop :=
  ∀ n, P1231703993632446885.a n = A117592 n

end A117592

/-! ## A117592.P4683947289329761910

`∏{digits}[A007089(n), A000045(#+1)]`
-/

namespace A117592.P4683947289329761910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 (x + 1)).prod

end

end A117592.P4683947289329761910

namespace A117592

/-- `∏{digits}[A007089(n), A000045(#+1)]` -/
def P4683947289329761910.Spec : Prop :=
  ∀ n, P4683947289329761910.a n = A117592 n

end A117592

/-! ## A117592.P16063629178595728647

`A006047(n-A004488(n)+n)`
-/

namespace A117592.P16063629178595728647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 ((n : ℤ) - A004488 n + (n : ℤ)).toNat

end

end A117592.P16063629178595728647

namespace A117592

/-- `A006047(n-A004488(n)+n)` -/
def P16063629178595728647.Spec : Prop :=
  ∀ n, P16063629178595728647.a n = A117592 n

end A117592

/-! ## A117592.P13428789592285150848

`A120880(n-A004488(n)+n)`
-/

namespace A117592.P13428789592285150848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 ((n : ℤ) - A004488 n + (n : ℤ)).toNat

end

end A117592.P13428789592285150848

namespace A117592

/-- `A120880(n-A004488(n)+n)` -/
def P13428789592285150848.Spec : Prop :=
  ∀ n, P13428789592285150848.a n = A117592 n

end A117592

/-! ## A117592.P1962436794255683327

`A006047(n-(A004488(n)-n))`
-/

namespace A117592.P1962436794255683327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 ((n : ℤ) - (A004488 n - (n : ℤ))).toNat

end

end A117592.P1962436794255683327

namespace A117592

/-- `A006047(n-(A004488(n)-n))` -/
def P1962436794255683327.Spec : Prop :=
  ∀ n, P1962436794255683327.a n = A117592 n

end A117592

/-! ## A117592.P18169164691917298325

`A120880(n-(A004488(n)-n))`
-/

namespace A117592.P18169164691917298325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 ((n : ℤ) - (A004488 n - (n : ℤ))).toNat

end

end A117592.P18169164691917298325

namespace A117592

/-- `A120880(n-(A004488(n)-n))` -/
def P18169164691917298325.Spec : Prop :=
  ∀ n, P18169164691917298325.a n = A117592 n

end A117592

/-!
# A117594: Numbers whose fifth powers are closer to cubic numbers than square numbers.

The programs for A117594, there is no canonical definition to state claims against.
-/

/-! ## A117594.P6213145673003220992

`filter[A173341(n+2), A188973(#)]`
-/

namespace A117594.P6213145673003220992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173341 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188973 (f1 j).toNat = 1) n)

end

end A117594.P6213145673003220992

/-!
# A117595: Numbers n such that F(2*n - 1) is prime, where F(m) is a Fibonacci number.

The programs for A117595, there is no canonical definition to state claims against.
-/

/-! ## A117595.P3746079679525004014

`A117517(n+1)+1`
-/

namespace A117595.P3746079679525004014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117517 (n + 1) + 1

end

end A117595.P3746079679525004014

/-! ## A117595.P8713147834146018546

`ceil(A083668(n+1)/2)`
-/

namespace A117595.P8713147834146018546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083668 (n + 1) : ℚ) / 2⌉

end

end A117595.P8713147834146018546

/-! ## A117595.P9423780697266898078

`ceil(A001605(n+2)/2)`
-/

namespace A117595.P9423780697266898078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001605 (n + 2) : ℚ) / 2⌉

end

end A117595.P9423780697266898078

/-! ## A117595.P8853954012931194903

`(A339173(n+1)+3)/2`
-/

namespace A117595.P8853954012931194903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339173 (n + 1) + 3 : ℚ) / 2

end

end A117595.P8853954012931194903

/-! ## A117595.P17652847112743437289

`round(p?[A001605(n+1)]/2)`
-/

namespace A117595.P17652847112743437289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2)

end

end A117595.P17652847112743437289

/-!
# A117596: Start with x=6/5; repeatedly apply the map x -> x*ceiling(x); sequence gives numerators of the resulting sequence of fractions.

The programs for A117596, there is no canonical definition to state claims against.
-/

/-! ## A117596.P16828296927673020774

`ceil(a(n-1)/5)*a(n-1)` with `a(0)=6`
-/

namespace A117596.P16828296927673020774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌈(a (n - 1) : ℚ) / 5⌉ * a (n - 1)

end

end A117596.P16828296927673020774

/-! ## A117596.P6970338320844417511

`(floor(a(n-1)/5)+1)*a(n-1)` with `a(0)=6`
-/

namespace A117596.P6970338320844417511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (⌊(a (n - 1) : ℚ) / 5⌋ + 1) * a (n - 1)

end

end A117596.P6970338320844417511

/-!
# A117598: Padovan numbers for which the digital root is also a Padovan number.

The programs for A117598, there is no canonical definition to state claims against.
-/

/-! ## A117598.P6374872484080094199

`record[A127682(n+1)%A338905(n+5)]`
-/

namespace A117598.P6374872484080094199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127682 (n + 1)) (A338905 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117598.P6374872484080094199

/-! ## A117598.P13387035916112858031

`record[A000931(n+2)%A338825(2*n+5)]`
-/

namespace A117598.P13387035916112858031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000931 (n + 2)) (A338825 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117598.P13387035916112858031

/-! ## A117598.P16415589807240160449

`A000931(lt[A236356(3*n+2), A332584(2*(n+1))+1])`
-/

namespace A117598.P16415589807240160449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236356 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332584 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117598.P16415589807240160449

/-! ## A117598.P11739156527605013443

`(a(n-2)+a(n-3))%A005849(n+1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A117598.P11739156527605013443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  Int.tmod (a (n - 2) + a (n - 3)) (A005849 (n + 1))

end

end A117598.P11739156527605013443

/-! ## A117598.P14112756022450783244

`A135034(A304648(n+1))`
-/

namespace A117598.P14112756022450783244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A304648 (n + 1)).toNat

end

end A117598.P14112756022450783244

/-!
# A117599: Padovan numbers for which the product of the digits is also a Padovan number.

The programs for A117599, there is no canonical definition to state claims against.
-/

/-! ## A117599.P16522409189451551746

`record[A000931(n+1)%A237519(3*n+1)]`
-/

namespace A117599.P16522409189451551746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000931 (n + 1)) (A237519 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117599.P16522409189451551746

/-! ## A117599.P17101811378240245776

`record[A097867(A004744(n+1))]`
-/

namespace A117599.P17101811378240245776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097867 (A004744 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117599.P17101811378240245776

/-! ## A117599.P15690478977067194504

`∩[A050723(n+1), A117598(n)]`
-/

namespace A117599.P15690478977067194504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117598 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117599.P15690478977067194504

/-! ## A117599.P15197691583990478688

`record[A152545(n)-A278085(n+1)]`
-/

namespace A117599.P15197691583990478688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152545 n - A278085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117599.P15197691583990478688

/-! ## A117599.P17527025756755919860

`record[A152545(n)%A050336(n+1)]`
-/

namespace A117599.P17527025756755919860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152545 n) (A050336 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117599.P17527025756755919860

