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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
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
# A158401: a(n) = 841*n^2 - 2*n.

The programs for A158401, the canonical program `A158401.P4672789127031669797` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158401 has offset 1).

The definition of A158401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `841*(n+1)²-2*(n+1)` (program `A158401.P4672789127031669797`, by `A158401.P4672789127031669797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158401.P4672789127031669797

`841*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158401

/-- `841*(n+1)²-2*(n+1)` -/
def P4672789127031669797.Spec : Prop :=
  ∀ n, P4672789127031669797.a n = A158401 (n + 1)

theorem P4672789127031669797.correct : P4672789127031669797.Spec := by
  intro n
  simp only [A158401, Nat.add_sub_cancel]

end A158401

/-! ## A158401.P3911895987174535067

`(n+1)*(A158402(n+1)-1)`
-/

namespace A158401.P3911895987174535067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158402 (n + 1) - 1)

end

end A158401.P3911895987174535067

namespace A158401

/-- `(n+1)*(A158402(n+1)-1)` -/
def P3911895987174535067.Spec : Prop :=
  ∀ n, P3911895987174535067.a n = A158401 (n + 1)

end A158401

/-! ## A158401.P8853667292785041859

`(n+1)*(A158404(n+1)-3)`
-/

namespace A158401.P8853667292785041859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158404 (n + 1) - 3)

end

end A158401.P8853667292785041859

namespace A158401

/-- `(n+1)*(A158404(n+1)-3)` -/
def P8853667292785041859.Spec : Prop :=
  ∀ n, P8853667292785041859.a n = A158401 (n + 1)

end A158401

/-! ## A158401.P11508458193055396705

`(n+1)*(A169827(n+1)+n-1)`
-/

namespace A158401.P11508458193055396705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A169827 (n + 1) + ((n : ℤ) - 1))

end

end A158401.P11508458193055396705

namespace A158401

/-- `(n+1)*(A169827(n+1)+n-1)` -/
def P11508458193055396705.Spec : Prop :=
  ∀ n, P11508458193055396705.a n = A158401 (n + 1)

end A158401

/-! ## A158401.P14551494290170046818

`A158403(2*(n+1))%A158403(n+1)`
-/

namespace A158401.P14551494290170046818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158403 (2 * (n + 1))) (A158403 (n + 1))

end

end A158401.P14551494290170046818

namespace A158401

/-- `A158403(2*(n+1))%A158403(n+1)` -/
def P14551494290170046818.Spec : Prop :=
  ∀ n, P14551494290170046818.a n = A158401 (n + 1)

end A158401

/-!
# A158402: a(n) = 841*n - 1.

The programs for A158402, the canonical program `A158402.P7939845813788511465` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158402 has offset 1).

The definition of A158402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `841*(n+1)-1` (program `A158402.P7939845813788511465`, by `A158402.P7939845813788511465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158402.P7939845813788511465

`841*(n+1)-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158402

/-- `841*(n+1)-1` -/
def P7939845813788511465.Spec : Prop :=
  ∀ n, P7939845813788511465.a n = A158402 (n + 1)

theorem P7939845813788511465.correct : P7939845813788511465.Spec := by
  intro n
  simp only [A158402, Nat.add_sub_cancel]

end A158402

/-!
# A158403: a(n) = 841*n^2 + 2*n.

The programs for A158403, the canonical program `A158403.P18349491617176926883` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158403 has offset 1).

The definition of A158403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `841*(n+1)²+2*(n+1)` (program `A158403.P18349491617176926883`, by `A158403.P18349491617176926883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158403.P18349491617176926883

`841*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158403

/-- `841*(n+1)²+2*(n+1)` -/
def P18349491617176926883.Spec : Prop :=
  ∀ n, (P18349491617176926883.a n : ℤ) = A158403 (n + 1)

theorem P18349491617176926883.correct : P18349491617176926883.Spec := by
  intro n
  simp only [A158403, Nat.add_sub_cancel]

end A158403

/-! ## A158403.P2308649216821195198

`(n+1)*(A158404(n+1)+1)`
-/

namespace A158403.P2308649216821195198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158404 (n + 1) + 1)

end

end A158403.P2308649216821195198

namespace A158403

/-- `(n+1)*(A158404(n+1)+1)` -/
def P2308649216821195198.Spec : Prop :=
  ∀ n, P2308649216821195198.a n = A158403 (n + 1)

end A158403

/-! ## A158403.P17679640080868526306

`(n+1)*(A158402(n+1)+3)`
-/

namespace A158403.P17679640080868526306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158402 (n + 1) + 3)

end

end A158403.P17679640080868526306

namespace A158403

/-- `(n+1)*(A158402(n+1)+3)` -/
def P17679640080868526306.Spec : Prop :=
  ∀ n, P17679640080868526306.a n = A158403 (n + 1)

end A158403

/-! ## A158403.P5183212162490627174

`(n+1)*(A169827(n+1)+n+3)`
-/

namespace A158403.P5183212162490627174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A169827 (n + 1) + (n + 3 : ℤ))

end

end A158403.P5183212162490627174

namespace A158403

/-- `(n+1)*(A169827(n+1)+n+3)` -/
def P5183212162490627174.Spec : Prop :=
  ∀ n, P5183212162490627174.a n = A158403 (n + 1)

end A158403

/-! ## A158403.P1156486834240418011

`A031707(n+1)%A031652(n+1)`
-/

namespace A158403.P1156486834240418011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031707 (n + 1)) (A031652 (n + 1))

end

end A158403.P1156486834240418011

namespace A158403

/-- `A031707(n+1)%A031652(n+1)` -/
def P1156486834240418011.Spec : Prop :=
  ∀ n, P1156486834240418011.a n = A158403 (n + 1)

end A158403

/-!
# A158404: a(n) = 841*n + 1.

The programs for A158404, the canonical program `A158404.P590882224961103684` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158404 has offset 1).

The definition of A158404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `841*(n+1)+1` (program `A158404.P590882224961103684`, by `A158404.P590882224961103684.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158404.P590882224961103684

`841*(n+1)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158404

/-- `841*(n+1)+1` -/
def P590882224961103684.Spec : Prop :=
  ∀ n, (P590882224961103684.a n : ℤ) = A158404 (n + 1)

theorem P590882224961103684.correct : P590882224961103684.Spec := by
  intro n
  simp only [A158404, Nat.add_sub_cancel]

end A158404

/-!
# A158405: Triangle T(n,m) = 1+2*m of odd numbers read along rows, 0<=m

The programs for A158405, the canonical program `A158405.P17637820199145196077` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158405 has offset 1).

The definition of A158405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158405.P17637820199145196077

`2*A002262(n)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158405

/-- `2*A002262(n)+1` -/
def P17637820199145196077.Spec : Prop :=
  ∀ n, P17637820199145196077.a n = A158405 (n + 1)

theorem P17637820199145196077.correct : P17637820199145196077.Spec := by
  intro n
  simp only [A158405, Nat.add_sub_cancel]

end A158405

/-! ## A158405.P16007169868587046340

`2*(n-C(∑[char[∑[n]]], 2))+1`
-/

namespace A158405.P16007169868587046340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1

end

end A158405.P16007169868587046340

namespace A158405

/-- `2*(n-C(∑[char[∑[n]]], 2))+1` -/
def P16007169868587046340.Spec : Prop :=
  ∀ n, P16007169868587046340.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P1048879674082540746

`A174028(n)/2`
-/

namespace A158405.P1048879674082540746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174028 n : ℚ) / 2

end

end A158405.P1048879674082540746

namespace A158405

/-- `A174028(n)/2` -/
def P1048879674082540746.Spec : Prop :=
  ∀ n, P1048879674082540746.a n = (A158405 (n + 1) : ℚ)

end A158405

/-! ## A158405.P17244254760496387655

`val(A130324(n), 2)+1`
-/

namespace A158405.P17244254760496387655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130324 n).toNat 2 + 1

end

end A158405.P17244254760496387655

namespace A158405

/-- `val(A130324(n), 2)+1` -/
def P17244254760496387655.Spec : Prop :=
  ∀ n, (P17244254760496387655.a n : ℤ) = A158405 (n + 1)

end A158405

/-! ## A158405.P827918007631295309

`val(A356036(n), 2)+1`
-/

namespace A158405.P827918007631295309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A356036 n).toNat 2 + 1

end

end A158405.P827918007631295309

namespace A158405

/-- `val(A356036(n), 2)+1` -/
def P827918007631295309.Spec : Prop :=
  ∀ n, (P827918007631295309.a n : ℤ) = A158405 (n + 1)

end A158405

/-! ## A158405.P6865809581891209313

`log2(A059268(n)²)+1`
-/

namespace A158405.P6865809581891209313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n ^ 2 : ℝ) + 1

end

end A158405.P6865809581891209313

namespace A158405

/-- `log2(A059268(n)²)+1` -/
def P6865809581891209313.Spec : Prop :=
  ∀ n, P6865809581891209313.a n = (A158405 (n + 1) : ℝ)

end A158405

/-! ## A158405.P17618521900807938550

`2*sqrt(A143844(n))+1`
-/

namespace A158405.P17618521900807938550
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A143844 n : ℝ) + 1

end

end A158405.P17618521900807938550

namespace A158405

/-- `2*sqrt(A143844(n))+1` -/
def P17618521900807938550.Spec : Prop :=
  ∀ n, P17618521900807938550.a n = (A158405 (n + 1) : ℝ)

end A158405

/-! ## A158405.P12591253787310857964

`val(A130328(n)², 2)+1`
-/

namespace A158405.P12591253787310857964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130328 n ^ 2).toNat 2 + 1

end

end A158405.P12591253787310857964

namespace A158405

/-- `val(A130328(n)², 2)+1` -/
def P12591253787310857964.Spec : Prop :=
  ∀ n, (P12591253787310857964.a n : ℤ) = A158405 (n + 1)

end A158405

/-! ## A158405.P1183920197815014304

`2*A002260(n+1)-1`
-/

namespace A158405.P1183920197815014304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) - 1

end

end A158405.P1183920197815014304

namespace A158405

/-- `2*A002260(n+1)-1` -/
def P1183920197815014304.Spec : Prop :=
  ∀ n, P1183920197815014304.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P2265868252660658983

`comp[∑[n]]-A038722(n+1)`
-/

namespace A158405.P2265868252660658983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A038722 (n + 1)

end

end A158405.P2265868252660658983

namespace A158405

/-- `comp[∑[n]]-A038722(n+1)` -/
def P2265868252660658983.Spec : Prop :=
  ∀ n, P2265868252660658983.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P3406561839043093374

`abs(2*A140756(n+1))-1`
-/

namespace A158405.P3406561839043093374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A140756 (n + 1)| - 1

end

end A158405.P3406561839043093374

namespace A158405

/-- `abs(2*A140756(n+1))-1` -/
def P3406561839043093374.Spec : Prop :=
  ∀ n, P3406561839043093374.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P6784382604412631348

`2*sqrt(A133819(n+1))-1`
-/

namespace A158405.P6784382604412631348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A133819 (n + 1) : ℝ) - 1

end

end A158405.P6784382604412631348

namespace A158405

/-- `2*sqrt(A133819(n+1))-1` -/
def P6784382604412631348.Spec : Prop :=
  ∀ n, P6784382604412631348.a n = (A158405 (n + 1) : ℝ)

end A158405

/-! ## A158405.P3931170119029229854

`val(A018900(n+1)², 2)+1`
-/

namespace A158405.P3931170119029229854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018900 (n + 1) ^ 2).toNat 2 + 1

end

end A158405.P3931170119029229854

namespace A158405

/-- `val(A018900(n+1)², 2)+1` -/
def P3931170119029229854.Spec : Prop :=
  ∀ n, (P3931170119029229854.a n : ℤ) = A158405 (n + 1)

end A158405

/-! ## A158405.P13087028757001220660

`A005408(A002262(n))`
-/

namespace A158405.P13087028757001220660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002262 n).toNat

end

end A158405.P13087028757001220660

namespace A158405

/-- `A005408(A002262(n))` -/
def P13087028757001220660.Spec : Prop :=
  ∀ n, P13087028757001220660.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P14799179760947376383

`A027170(A112367(n))`
-/

namespace A158405.P14799179760947376383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A112367 n).toNat

end

end A158405.P14799179760947376383

namespace A158405

/-- `A027170(A112367(n))` -/
def P14799179760947376383.Spec : Prop :=
  ∀ n, P14799179760947376383.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P15943025054278350503

`A099375(A061579(n))`
-/

namespace A158405.P15943025054278350503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A061579 n).toNat

end

end A158405.P15943025054278350503

namespace A158405

/-- `A099375(A061579(n))` -/
def P15943025054278350503.Spec : Prop :=
  ∀ n, P15943025054278350503.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P15309497247167128649

`A000265(A174028(n))`
-/

namespace A158405.P15309497247167128649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A174028 n).toNat

end

end A158405.P15309497247167128649

namespace A158405

/-- `A000265(A174028(n))` -/
def P15309497247167128649.Spec : Prop :=
  ∀ n, P15309497247167128649.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P5889343232763101103

`A004273(A002260(n+1))`
-/

namespace A158405.P5889343232763101103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002260 (n + 1)).toNat

end

end A158405.P5889343232763101103

namespace A158405

/-- `A004273(A002260(n+1))` -/
def P5889343232763101103.Spec : Prop :=
  ∀ n, P5889343232763101103.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P4320220377864775184

`A004273(A002262(n)+1)`
-/

namespace A158405.P4320220377864775184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002262 n + 1).toNat

end

end A158405.P4320220377864775184

namespace A158405

/-- `A004273(A002262(n)+1)` -/
def P4320220377864775184.Spec : Prop :=
  ∀ n, P4320220377864775184.a n = A158405 (n + 1)

end A158405

/-! ## A158405.P16095813526905499089

`A109613(2*A002262(n))`
-/

namespace A158405.P16095813526905499089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A002262 n).toNat

end

end A158405.P16095813526905499089

namespace A158405

/-- `A109613(2*A002262(n))` -/
def P16095813526905499089.Spec : Prop :=
  ∀ n, P16095813526905499089.a n = A158405 (n + 1)

end A158405

/-!
# A158406: a(n) = 900*n^2 + 2*n.

The programs for A158406, the canonical program `A158406.P10330311521034701549` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158406 has offset 1).

The definition of A158406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `900*(n+1)²+2*(n+1)` (program `A158406.P10330311521034701549`, by `A158406.P10330311521034701549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158406.P10330311521034701549

`900*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158406

/-- `900*(n+1)²+2*(n+1)` -/
def P10330311521034701549.Spec : Prop :=
  ∀ n, (P10330311521034701549.a n : ℤ) = A158406 (n + 1)

theorem P10330311521034701549.correct : P10330311521034701549.Spec := by
  intro n
  simp only [A158406, Nat.add_sub_cancel]

end A158406

/-! ## A158406.P14227657302206438891

`(n+1)*(A158407(n+1)+1)`
-/

namespace A158406.P14227657302206438891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158407 (n + 1) + 1)

end

end A158406.P14227657302206438891

namespace A158406

/-- `(n+1)*(A158407(n+1)+1)` -/
def P14227657302206438891.Spec : Prop :=
  ∀ n, P14227657302206438891.a n = A158406 (n + 1)

end A158406

/-! ## A158406.P13134489425778446792

`(n+1)*(A158409(n+1)+3)`
-/

namespace A158406.P13134489425778446792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158409 (n + 1) + 3)

end

end A158406.P13134489425778446792

namespace A158406

/-- `(n+1)*(A158409(n+1)+3)` -/
def P13134489425778446792.Spec : Prop :=
  ∀ n, P13134489425778446792.a n = A158406 (n + 1)

end A158406

/-! ## A158406.P14427707118455334158

`A156814(2*(n+1))`
-/

namespace A158406.P14427707118455334158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156814 (2 * (n + 1))

end

end A158406.P14427707118455334158

namespace A158406

/-- `A156814(2*(n+1))` -/
def P14427707118455334158.Spec : Prop :=
  ∀ n, P14427707118455334158.a n = A158406 (n + 1)

end A158406

/-! ## A158406.P15052490657281085096

`2*(n+1)*A158229(2*(n+1))`
-/

namespace A158406.P15052490657281085096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158229 (2 * (n + 1))

end

end A158406.P15052490657281085096

namespace A158406

/-- `2*(n+1)*A158229(2*(n+1))` -/
def P15052490657281085096.Spec : Prop :=
  ∀ n, P15052490657281085096.a n = A158406 (n + 1)

end A158406

/-! ## A158406.P6897998020459809102

`(A158227(2*(n+1))+2)*2*(n+1)`
-/

namespace A158406.P6897998020459809102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158227 (2 * (n + 1)) + 2) * (2 * (n + 1) : ℤ)

end

end A158406.P6897998020459809102

namespace A158406

/-- `(A158227(2*(n+1))+2)*2*(n+1)` -/
def P6897998020459809102.Spec : Prop :=
  ∀ n, P6897998020459809102.a n = A158406 (n + 1)

end A158406

/-! ## A158406.P14913148189047638555

`record[A156814(A000265(n+1)+1)]`
-/

namespace A158406.P14913148189047638555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156814 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158406.P14913148189047638555

namespace A158406

/-- `record[A156814(A000265(n+1)+1)]` -/
def P14913148189047638555.Spec : Prop :=
  ∀ n, P14913148189047638555.a n = A158406 (n + 1)

end A158406

/-! ## A158406.P711549064583223897

`2*(n+1)*A161705(A008607(n+1))`
-/

namespace A158406.P711549064583223897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A161705 (A008607 (n + 1)).toNat

end

end A158406.P711549064583223897

namespace A158406

/-- `2*(n+1)*A161705(A008607(n+1))` -/
def P711549064583223897.Spec : Prop :=
  ∀ n, P711549064583223897.a n = A158406 (n + 1)

end A158406

/-! ## A158406.P14958715442357029660

`(n+1)*A017293(A008592(A008591(n+1)))`
-/

namespace A158406.P14958715442357029660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017293 (A008592 (A008591 (n + 1)).toNat).toNat

end

end A158406.P14958715442357029660

namespace A158406

/-- `(n+1)*A017293(A008592(A008591(n+1)))` -/
def P14958715442357029660.Spec : Prop :=
  ∀ n, P14958715442357029660.a n = A158406 (n + 1)

end A158406

/-!
# A158407: a(n) = 900*n + 1.

The programs for A158407, the canonical program `A158407.P15924058321808279855` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158407 has offset 1).

The definition of A158407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `900*(n+1)+1` (program `A158407.P15924058321808279855`, by `A158407.P15924058321808279855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158407.P15924058321808279855

`900*(n+1)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158407

/-- `900*(n+1)+1` -/
def P15924058321808279855.Spec : Prop :=
  ∀ n, (P15924058321808279855.a n : ℤ) = A158407 (n + 1)

theorem P15924058321808279855.correct : P15924058321808279855.Spec := by
  intro n
  simp only [A158407, Nat.add_sub_cancel]

end A158407

/-!
# A158408: a(n) = 900*n^2 - 2*n.

The programs for A158408, the canonical program `A158408.P1165734044989847170` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158408 has offset 1).

The definition of A158408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `900*(n+1)²-2*(n+1)` (program `A158408.P1165734044989847170`, by `A158408.P1165734044989847170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158408.P1165734044989847170

`900*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158408

/-- `900*(n+1)²-2*(n+1)` -/
def P1165734044989847170.Spec : Prop :=
  ∀ n, P1165734044989847170.a n = A158408 (n + 1)

theorem P1165734044989847170.correct : P1165734044989847170.Spec := by
  intro n
  simp only [A158408, Nat.add_sub_cancel]

end A158408

/-! ## A158408.P11764095147904932607

`(n+1)*(A158409(n+1)-1)`
-/

namespace A158408.P11764095147904932607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158409 (n + 1) - 1)

end

end A158408.P11764095147904932607

namespace A158408

/-- `(n+1)*(A158409(n+1)-1)` -/
def P11764095147904932607.Spec : Prop :=
  ∀ n, P11764095147904932607.a n = A158408 (n + 1)

end A158408

/-! ## A158408.P11385904492549107639

`(n+1)*(A158407(n+1)-3)`
-/

namespace A158408.P11385904492549107639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158407 (n + 1) - 3)

end

end A158408.P11385904492549107639

namespace A158408

/-- `(n+1)*(A158407(n+1)-3)` -/
def P11385904492549107639.Spec : Prop :=
  ∀ n, P11385904492549107639.a n = A158408 (n + 1)

end A158408

/-! ## A158408.P1019290071962860333

`A156813(2*(n+1))`
-/

namespace A158408.P1019290071962860333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156813 (2 * (n + 1))

end

end A158408.P1019290071962860333

namespace A158408

/-- `A156813(2*(n+1))` -/
def P1019290071962860333.Spec : Prop :=
  ∀ n, P1019290071962860333.a n = A158408 (n + 1)

end A158408

/-! ## A158408.P91119449140358340

`2*(n+1)*A158227(2*(n+1))`
-/

namespace A158408.P91119449140358340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158227 (2 * (n + 1))

end

end A158408.P91119449140358340

namespace A158408

/-- `2*(n+1)*A158227(2*(n+1))` -/
def P91119449140358340.Spec : Prop :=
  ∀ n, P91119449140358340.a n = A158408 (n + 1)

end A158408

/-! ## A158408.P7938977843199981140

`(A158229(2*(n+1))-2)*2*(n+1)`
-/

namespace A158408.P7938977843199981140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158229 (2 * (n + 1)) - 2) * (2 * (n + 1) : ℤ)

end

end A158408.P7938977843199981140

namespace A158408

/-- `(A158229(2*(n+1))-2)*2*(n+1)` -/
def P7938977843199981140.Spec : Prop :=
  ∀ n, P7938977843199981140.a n = A158408 (n + 1)

end A158408

/-! ## A158408.P7754273377122374467

`A158406(2*(n+1))%A158406(n+1)`
-/

namespace A158408.P7754273377122374467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158406 (2 * (n + 1))) (A158406 (n + 1))

end

end A158408.P7754273377122374467

namespace A158408

/-- `A158406(2*(n+1))%A158406(n+1)` -/
def P7754273377122374467.Spec : Prop :=
  ∀ n, P7754273377122374467.a n = A158408 (n + 1)

end A158408

/-!
# A158409: a(n) = 900*n - 1.

The programs for A158409, the canonical program `A158409.P4970700332832276233` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158409 has offset 1).

The definition of A158409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `900*(n+1)-1` (program `A158409.P4970700332832276233`, by `A158409.P4970700332832276233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158409.P4970700332832276233

`900*(n+1)-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158409

/-- `900*(n+1)-1` -/
def P4970700332832276233.Spec : Prop :=
  ∀ n, P4970700332832276233.a n = A158409 (n + 1)

theorem P4970700332832276233.correct : P4970700332832276233.Spec := by
  intro n
  simp only [A158409, Nat.add_sub_cancel]

end A158409

/-!
# A158410: a(n) = 961*n^2 - 2*n.

The programs for A158410, the canonical program `A158410.P5613345436360911015` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158410 has offset 1).

The definition of A158410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `961*(n+1)²-2*(n+1)` (program `A158410.P5613345436360911015`, by `A158410.P5613345436360911015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158410.P5613345436360911015

`961*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158410

/-- `961*(n+1)²-2*(n+1)` -/
def P5613345436360911015.Spec : Prop :=
  ∀ n, P5613345436360911015.a n = A158410 (n + 1)

theorem P5613345436360911015.correct : P5613345436360911015.Spec := by
  intro n
  simp only [A158410, Nat.add_sub_cancel]

end A158410

/-! ## A158410.P6586775175957570276

`(n+1)*(A158412(n+1)-1)`
-/

namespace A158410.P6586775175957570276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158412 (n + 1) - 1)

end

end A158410.P6586775175957570276

namespace A158410

/-- `(n+1)*(A158412(n+1)-1)` -/
def P6586775175957570276.Spec : Prop :=
  ∀ n, P6586775175957570276.a n = A158410 (n + 1)

end A158410

/-! ## A158410.P13670922786161219982

`(n+1)*(A158414(n+1)-3)`
-/

namespace A158410.P13670922786161219982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158414 (n + 1) - 3)

end

end A158410.P13670922786161219982

namespace A158410

/-- `(n+1)*(A158414(n+1)-3)` -/
def P13670922786161219982.Spec : Prop :=
  ∀ n, P13670922786161219982.a n = A158410 (n + 1)

end A158410

/-! ## A158410.P2955032765124712089

`A158413(2*(n+1))%A158413(n+1)`
-/

namespace A158410.P2955032765124712089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158413 (2 * (n + 1))) (A158413 (n + 1))

end

end A158410.P2955032765124712089

namespace A158410

/-- `A158413(2*(n+1))%A158413(n+1)` -/
def P2955032765124712089.Spec : Prop :=
  ∀ n, P2955032765124712089.a n = A158410 (n + 1)

end A158410

/-!
# A158411: Maximum number of colors required to paint a map having n regions.

The programs for A158411, the canonical program `A158411.P1632315158852144768` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158411 has offset 0).

The definition of A158411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158411.P1632315158852144768

`ceil(atan(∑[n])^3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158411

/-- `ceil(atan(∑[n])^3)` -/
def P1632315158852144768.Spec : Prop :=
  ∀ n, P1632315158852144768.a n = A158411 n

theorem P1632315158852144768.correct : P1632315158852144768.Spec := by
  intro n
  simp only [A158411]

end A158411

/-!
# A158412: a(n) = 961*n - 1.

The programs for A158412, the canonical program `A158412.P2963224411847677262` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158412 has offset 1).

The definition of A158412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `961*(n+1)-1` (program `A158412.P2963224411847677262`, by `A158412.P2963224411847677262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158412.P2963224411847677262

`961*(n+1)-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158412

/-- `961*(n+1)-1` -/
def P2963224411847677262.Spec : Prop :=
  ∀ n, P2963224411847677262.a n = A158412 (n + 1)

theorem P2963224411847677262.correct : P2963224411847677262.Spec := by
  intro n
  simp only [A158412, Nat.add_sub_cancel]

end A158412

/-!
# A158413: a(n) = 961*n^2 + 2*n.

The programs for A158413, the canonical program `A158413.P8467062971644409099` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158413 has offset 1).

The definition of A158413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `961*(n+1)²+2*(n+1)` (program `A158413.P8467062971644409099`, by `A158413.P8467062971644409099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158413.P8467062971644409099

`961*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158413

/-- `961*(n+1)²+2*(n+1)` -/
def P8467062971644409099.Spec : Prop :=
  ∀ n, (P8467062971644409099.a n : ℤ) = A158413 (n + 1)

theorem P8467062971644409099.correct : P8467062971644409099.Spec := by
  intro n
  simp only [A158413, Nat.add_sub_cancel]

end A158413

/-! ## A158413.P9363482505775188603

`(n+1)*(A158414(n+1)+1)`
-/

namespace A158413.P9363482505775188603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158414 (n + 1) + 1)

end

end A158413.P9363482505775188603

namespace A158413

/-- `(n+1)*(A158414(n+1)+1)` -/
def P9363482505775188603.Spec : Prop :=
  ∀ n, P9363482505775188603.a n = A158413 (n + 1)

end A158413

/-! ## A158413.P14679226556945435132

`(n+1)*(A158412(n+1)+3)`
-/

namespace A158413.P14679226556945435132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158412 (n + 1) + 3)

end

end A158413.P14679226556945435132

namespace A158413

/-- `(n+1)*(A158412(n+1)+3)` -/
def P14679226556945435132.Spec : Prop :=
  ∀ n, P14679226556945435132.a n = A158413 (n + 1)

end A158413

/-! ## A158413.P16340602982574261472

`A031709(n+1)%A034820(n)`
-/

namespace A158413.P16340602982574261472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031709 (n + 1)) (A034820 n)

end

end A158413.P16340602982574261472

namespace A158413

/-- `A031709(n+1)%A034820(n)` -/
def P16340602982574261472.Spec : Prop :=
  ∀ n, P16340602982574261472.a n = A158413 (n + 1)

end A158413

/-! ## A158413.P14595010846684557347

`A000027(A031709(n+1))`
-/

namespace A158413.P14595010846684557347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A031709 (n + 1)).toNat

end

end A158413.P14595010846684557347

namespace A158413

/-- `A000027(A031709(n+1))` -/
def P14595010846684557347.Spec : Prop :=
  ∀ n, P14595010846684557347.a n = A158413 (n + 1)

end A158413

/-!
# A158414: a(n) = 961*n + 1.

The programs for A158414, the canonical program `A158414.P5265215263931841132` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158414 has offset 1).

The definition of A158414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `961*(n+1)+1` (program `A158414.P5265215263931841132`, by `A158414.P5265215263931841132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158414.P5265215263931841132

`961*(n+1)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158414

/-- `961*(n+1)+1` -/
def P5265215263931841132.Spec : Prop :=
  ∀ n, (P5265215263931841132.a n : ℤ) = A158414 (n + 1)

theorem P5265215263931841132.correct : P5265215263931841132.Spec := by
  intro n
  simp only [A158414, Nat.add_sub_cancel]

end A158414

/-!
# A158415: Number of different (by numeric value, not by structure) expressions, consisting of N symbols, each of them is one of: nullary 1, unary sqrt(), binary +.

The programs for A158415, there is no canonical definition to state claims against.
-/

/-! ## A158415.P17152503666428747339

`A008620(A003075(n+1)+A001629(n))`
-/

namespace A158415.P17152503666428747339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A003075 (n + 1) + A001629 n).toNat

end

end A158415.P17152503666428747339

/-! ## A158415.P6289748909563105598

`A194335(A320664(n))`
-/

namespace A158415.P6289748909563105598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194335 (A320664 n).toNat

end

end A158415.P6289748909563105598

/-! ## A158415.P6165656400158645008

`A103128(∑[A130969(n)])`
-/

namespace A158415.P6165656400158645008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A158415.P6165656400158645008

/-! ## A158415.P10119672571604034434

`∑[A071542(A320797(n))]`
-/

namespace A158415.P10119672571604034434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A320797 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158415.P10119672571604034434

/-! ## A158415.P7019066844739007888

`A000196(∑[∑[A206432(n)]])`
-/

namespace A158415.P7019066844739007888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A158415.P7019066844739007888

/-!
# A158416: Expansion of g.f. (1+x-x^3)/(1-x^2)^2.

The programs for A158416, the canonical program `A158416.P11851489982773788082` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158416 has offset 0).

The definition of A158416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^3)/(1-2x^2+x^4))` (program `A158416.P11851489982773788082`, by `A158416.P11851489982773788082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158416.P11851489982773788082

`ogf((1+x-x^3)/(1-2x^2+x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158416

/-- `ogf((1+x-x^3)/(1-2x^2+x^4))` -/
def P11851489982773788082.Spec : Prop :=
  ∀ n, P11851489982773788082.a n = A158416 n

theorem P11851489982773788082.correct : P11851489982773788082.Spec := by
  intro n
  simp only [A158416]

end A158416

/-! ## A158416.P7125527701326166324

`ceil(C(or(1, n), n)/2)`
-/

namespace A158416.P7125527701326166324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉

end

end A158416.P7125527701326166324

namespace A158416

/-- `ceil(C(or(1, n), n)/2)` -/
def P7125527701326166324.Spec : Prop :=
  ∀ n, P7125527701326166324.a n = A158416 n

end A158416

/-! ## A158416.P13998967675403918235

`round(C(or(1, n), n)/2)`
-/

namespace A158416.P13998967675403918235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (Nat.lor 1 n) n : ℚ) / 2)

end

end A158416.P13998967675403918235

namespace A158416

/-- `round(C(or(1, n), n)/2)` -/
def P13998967675403918235.Spec : Prop :=
  ∀ n, P13998967675403918235.a n = A158416 n

end A158416

/-! ## A158416.P15520401997135867659

`1-gcd(n, ∑[n])+n`
-/

namespace A158416.P15520401997135867659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (n : ℤ)

end

end A158416.P15520401997135867659

namespace A158416

/-- `1-gcd(n, ∑[n])+n` -/
def P15520401997135867659.Spec : Prop :=
  ∀ n, P15520401997135867659.a n = A158416 n

end A158416

/-! ## A158416.P9931966548782388217

`gcd(xor(n, -2), ∑[n+1])`
-/

namespace A158416.P9931966548782388217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A158416.P9931966548782388217

namespace A158416

/-- `gcd(xor(n, -2), ∑[n+1])` -/
def P9931966548782388217.Spec : Prop :=
  ∀ n, (P9931966548782388217.a n : ℤ) = A158416 n

end A158416

/-! ## A158416.P726750297122359524

`1-lcm(2, n)/2+n`
-/

namespace A158416.P726750297122359524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lcm 2 n : ℚ) / 2 + (n : ℚ)

end

end A158416.P726750297122359524

namespace A158416

/-- `1-lcm(2, n)/2+n` -/
def P726750297122359524.Spec : Prop :=
  ∀ n, P726750297122359524.a n = (A158416 n : ℚ)

end A158416

/-! ## A158416.P11527032550697708115

`n%or(1, n)/2+1`
-/

namespace A158416.P11527032550697708115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % Nat.lor 1 n : ℕ) : ℚ) / 2 + 1

end

end A158416.P11527032550697708115

namespace A158416

/-- `n%or(1, n)/2+1` -/
def P11527032550697708115.Spec : Prop :=
  ∀ n, P11527032550697708115.a n = (A158416 n : ℚ)

end A158416

/-! ## A158416.P4616052615511612000

`(C(or(1, n), n)+1)/2`
-/

namespace A158416.P4616052615511612000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) n + 1 : ℚ) / 2

end

end A158416.P4616052615511612000

namespace A158416

/-- `(C(or(1, n), n)+1)/2` -/
def P4616052615511612000.Spec : Prop :=
  ∀ n, P4616052615511612000.a n = (A158416 n : ℚ)

end A158416

/-! ## A158416.P9490036663294862966

`gcd(n+2, ∑[char[2*n]])`
-/

namespace A158416.P9490036663294862966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158416.P9490036663294862966

namespace A158416

/-- `gcd(n+2, ∑[char[2*n]])` -/
def P9490036663294862966.Spec : Prop :=
  ∀ n, (P9490036663294862966.a n : ℤ) = A158416 n

end A158416

/-! ## A158416.P3249149191719950818

`n*char[2*n]/2+1`
-/

namespace A158416.P3249149191719950818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2) + 1

end

end A158416.P3249149191719950818

namespace A158416

/-- `n*char[2*n]/2+1` -/
def P3249149191719950818.Spec : Prop :=
  ∀ n, P3249149191719950818.a n = (A158416 n : ℚ)

end A158416

/-! ## A158416.P16831736759055212887

`Δ[∪[∑[n+1], ∑[n+2]]]`
-/

namespace A158416.P16831736759055212887
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158416.P16831736759055212887

namespace A158416

/-- `Δ[∪[∑[n+1], ∑[n+2]]]` -/
def P16831736759055212887.Spec : Prop :=
  ∀ n, P16831736759055212887.a n = A158416 n

end A158416

/-! ## A158416.P2647739409469074997

`∏{p}[and(n, -n), (n+2)/#]`
-/

namespace A158416.P2647739409469074997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n + 2 : ℚ) / (p : ℚ)

end

end A158416.P2647739409469074997

namespace A158416

/-- `∏{p}[and(n, -n), (n+2)/#]` -/
def P2647739409469074997.Spec : Prop :=
  ∀ n, P2647739409469074997.a n = (A158416 n : ℚ)

end A158416

/-! ## A158416.P12938581255407695349

`((n+2)/2)^((n+1)%2)`
-/

namespace A158416.P12938581255407695349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / 2) ^ ((n + 1) % 2)

end

end A158416.P12938581255407695349

namespace A158416

/-- `((n+2)/2)^((n+1)%2)` -/
def P12938581255407695349.Spec : Prop :=
  ∀ n, P12938581255407695349.a n = (A158416 n : ℚ)

end A158416

/-! ## A158416.P5398613324954119289

`((n+2)/2)^and(1, n+1)`
-/

namespace A158416.P5398613324954119289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / 2) ^ Nat.land 1 (n + 1)

end

end A158416.P5398613324954119289

namespace A158416

/-- `((n+2)/2)^and(1, n+1)` -/
def P5398613324954119289.Spec : Prop :=
  ∀ n, P5398613324954119289.a n = (A158416 n : ℚ)

end A158416

/-! ## A158416.P1398052431747168383

`(gcd(n+1, and(1, n))+1)/2`
-/

namespace A158416.P1398052431747168383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (Nat.land 1 n) + 1 : ℚ) / 2

end

end A158416.P1398052431747168383

namespace A158416

/-- `(gcd(n+1, and(1, n))+1)/2` -/
def P1398052431747168383.Spec : Prop :=
  ∀ n, P1398052431747168383.a n = (A158416 n : ℚ)

end A158416

/-! ## A158416.P14661868722749608355

`C(xor(1, n+2), 2)%(n+2)`
-/

namespace A158416.P14661868722749608355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 (n + 2)) 2 % (n + 2)

end

end A158416.P14661868722749608355

namespace A158416

/-- `C(xor(1, n+2), 2)%(n+2)` -/
def P14661868722749608355.Spec : Prop :=
  ∀ n, (P14661868722749608355.a n : ℤ) = A158416 n

end A158416

/-! ## A158416.P4177442336423147931

`C(or(1, n+3), 2)%(n+2)`
-/

namespace A158416.P4177442336423147931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (n + 3)) 2 % (n + 2)

end

end A158416.P4177442336423147931

namespace A158416

/-- `C(or(1, n+3), 2)%(n+2)` -/
def P4177442336423147931.Spec : Prop :=
  ∀ n, (P4177442336423147931.a n : ℤ) = A158416 n

end A158416

/-! ## A158416.P15336994579994217479

`∑[char[2*n]]/a(n-1)` with `a(0)=1`
-/

namespace A158416.P15336994579994217479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A158416.P15336994579994217479

namespace A158416

/-- `∑[char[2*n]]/a(n-1)` -/
def P15336994579994217479.Spec : Prop :=
  ∀ n, P15336994579994217479.a n = (A158416 n : ℚ)

end A158416

/-! ## A158416.P2654331004058179721

`C(∑[char[2*n]], a(n-1))` with `a(0)=1`
-/

namespace A158416.P2654331004058179721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (a (n - 1))

end

end A158416.P2654331004058179721

namespace A158416

/-- `C(∑[char[2*n]], a(n-1))` -/
def P2654331004058179721.Spec : Prop :=
  ∀ n, (P2654331004058179721.a n : ℤ) = A158416 n

end A158416

/-! ## A158416.P8773621227392410164

`ceil(∑[n]/(n*a(n-1)))` with `a(0)=1`
-/

namespace A158416.P8773621227392410164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n : ℤ) * a (n - 1) : ℚ)⌉

end

end A158416.P8773621227392410164

namespace A158416

/-- `ceil(∑[n]/(n*a(n-1)))` -/
def P8773621227392410164.Spec : Prop :=
  ∀ n, P8773621227392410164.a n = A158416 n

end A158416

/-!
# A158420: a(n) = 1024*n^2 - 2*n.

The programs for A158420, the canonical program `A158420.P9589206662820995219` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158420 has offset 1).

The definition of A158420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158420.P9589206662820995219

`∑[Δ[(32*n)²]-2]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158420

/-- `∑[Δ[(32*n)²]-2]` -/
def P9589206662820995219.Spec : Prop :=
  ∀ n, P9589206662820995219.a n = A158420 (n + 1)

theorem P9589206662820995219.correct : P9589206662820995219.Spec := by
  intro n
  simp only [A158420, Nat.add_sub_cancel]

end A158420

/-! ## A158420.P13736384038116010018

`(n+1)*(A362361(n+1)+1)`
-/

namespace A158420.P13736384038116010018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A362361 (n + 1) + 1)

end

end A158420.P13736384038116010018

namespace A158420

/-- `(n+1)*(A362361(n+1)+1)` -/
def P13736384038116010018.Spec : Prop :=
  ∀ n, P13736384038116010018.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P11606072413968689997

`(n+1)*(A158421(n+1)-1)`
-/

namespace A158420.P11606072413968689997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158421 (n + 1) - 1)

end

end A158420.P11606072413968689997

namespace A158420

/-- `(n+1)*(A158421(n+1)-1)` -/
def P11606072413968689997.Spec : Prop :=
  ∀ n, P11606072413968689997.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P14180995421607703842

`2*(n+1)*A158011(n+1)`
-/

namespace A158420.P14180995421607703842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A158011 (n + 1))

end

end A158420.P14180995421607703842

namespace A158420

/-- `2*(n+1)*A158011(n+1)` -/
def P14180995421607703842.Spec : Prop :=
  ∀ n, P14180995421607703842.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P17591379880548123446

`(A076338(n+1)-2)*2*(n+1)`
-/

namespace A158420.P17591379880548123446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076338 (n + 1) - 2) * (2 * (n + 1) : ℤ)

end

end A158420.P17591379880548123446

namespace A158420

/-- `(A076338(n+1)-2)*2*(n+1)` -/
def P17591379880548123446.Spec : Prop :=
  ∀ n, P17591379880548123446.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P17623911280692543276

`A174312(n+1)²-2*(n+1)`
-/

namespace A158420.P17623911280692543276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158420.P17623911280692543276

namespace A158420

/-- `A174312(n+1)²-2*(n+1)` -/
def P17623911280692543276.Spec : Prop :=
  ∀ n, P17623911280692543276.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P16899448228208600682

`A174312(n+1)*A174312(n+1)-A005843(n+1)`
-/

namespace A158420.P16899448228208600682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 1) * A174312 (n + 1) - A005843 (n + 1)

end

end A158420.P16899448228208600682

namespace A158420

/-- `A174312(n+1)*A174312(n+1)-A005843(n+1)` -/
def P16899448228208600682.Spec : Prop :=
  ∀ n, P16899448228208600682.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P16954715320930199916

`A158010(2*(n+1))`
-/

namespace A158420.P16954715320930199916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158010 (2 * (n + 1))

end

end A158420.P16954715320930199916

namespace A158420

/-- `A158010(2*(n+1))` -/
def P16954715320930199916.Spec : Prop :=
  ∀ n, P16954715320930199916.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P12909447433490551843

`2*(n+1)*A158250(2*(n+1))`
-/

namespace A158420.P12909447433490551843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158250 (2 * (n + 1))

end

end A158420.P12909447433490551843

namespace A158420

/-- `2*(n+1)*A158250(2*(n+1))` -/
def P12909447433490551843.Spec : Prop :=
  ∀ n, P12909447433490551843.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P4944810244861532036

`A158562(2*(n+1))+2*(7-n)`
-/

namespace A158420.P4944810244861532036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158562 (2 * (n + 1)) + 2 * (7 - (n : ℤ))

end

end A158420.P4944810244861532036

namespace A158420

/-- `A158562(2*(n+1))+2*(7-n)` -/
def P4944810244861532036.Spec : Prop :=
  ∀ n, P4944810244861532036.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P12283082081110223677

`(A158231(2*(n+1))-2)*2*(n+1)`
-/

namespace A158420.P12283082081110223677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158231 (2 * (n + 1)) - 2) * (2 * (n + 1) : ℤ)

end

end A158420.P12283082081110223677

namespace A158420

/-- `(A158231(2*(n+1))-2)*2*(n+1)` -/
def P12283082081110223677.Spec : Prop :=
  ∀ n, P12283082081110223677.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P13661193861403575945

`A008598(A005843(n+1))²-A005843(n+1)`
-/

namespace A158420.P13661193861403575945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A005843 (n + 1)).toNat ^ 2 - A005843 (n + 1)

end

end A158420.P13661193861403575945

namespace A158420

/-- `A008598(A005843(n+1))²-A005843(n+1)` -/
def P13661193861403575945.Spec : Prop :=
  ∀ n, P13661193861403575945.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P15397079815359558479

`record[A158010(A028234(n+1)+1)]`
-/

namespace A158420.P15397079815359558479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158010 (A028234 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158420.P15397079815359558479

namespace A158420

/-- `record[A158010(A028234(n+1)+1)]` -/
def P15397079815359558479.Spec : Prop :=
  ∀ n, P15397079815359558479.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P13132419116536447284

`A158684(A008586(n+1))-(2*n+1)`
-/

namespace A158420.P13132419116536447284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158684 (A008586 (n + 1)).toNat - (2 * n + 1 : ℤ)

end

end A158420.P13132419116536447284

namespace A158420

/-- `A158684(A008586(n+1))-(2*n+1)` -/
def P13132419116536447284.Spec : Prop :=
  ∀ n, P13132419116536447284.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P9696106189126023419

`A141759(8*n+7)-(2*n+1)`
-/

namespace A158420.P9696106189126023419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 (8 * n + 7) - (2 * n + 1 : ℤ)

end

end A158420.P9696106189126023419

namespace A158420

/-- `A141759(8*n+7)-(2*n+1)` -/
def P9696106189126023419.Spec : Prop :=
  ∀ n, P9696106189126023419.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P9023449278434577259

`A047393(A017077(n+1))²-A005843(n+1)`
-/

namespace A158420.P9023449278434577259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A017077 (n + 1)).toNat ^ 2 - A005843 (n + 1)

end

end A158420.P9023449278434577259

namespace A158420

/-- `A047393(A017077(n+1))²-A005843(n+1)` -/
def P9023449278434577259.Spec : Prop :=
  ∀ n, P9023449278434577259.a n = A158420 (n + 1)

end A158420

/-! ## A158420.P6227204739598618183

`A315475(A008458(n+1))²-A005843(n+1)`
-/

namespace A158420.P6227204739598618183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 (A008458 (n + 1)).toNat ^ 2 - A005843 (n + 1)

end

end A158420.P6227204739598618183

namespace A158420

/-- `A315475(A008458(n+1))²-A005843(n+1)` -/
def P6227204739598618183.Spec : Prop :=
  ∀ n, P6227204739598618183.a n = A158420 (n + 1)

end A158420

/-!
# A158421: a(n) = 1024*n - 1.

The programs for A158421, the canonical program `A158421.P18055350514522087226` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158421 has offset 1).

The definition of A158421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158421.P18055350514522087226

`(n+1)/(1/4)^5-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158421

/-- `(n+1)/(1/4)^5-1` -/
def P18055350514522087226.Spec : Prop :=
  ∀ n, P18055350514522087226.a n = (A158421 (n + 1) : ℚ)

end A158421

/-!
# A158422: a[n] = number of bit strings of length n which have exactly as many substrings 000 as substrings 111.

The programs for A158422, there is no canonical definition to state claims against.
-/

/-! ## A158422.P8460095263266830281

`A057142(A130582(n+1))`
-/

namespace A158422.P8460095263266830281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A130582 (n + 1)).toNat

end

end A158422.P8460095263266830281

/-! ## A158422.P7124692034857971299

`A193358(or(A001629(n), A015518(n)))`
-/

namespace A158422.P7124692034857971299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193358 (Int.lor (A001629 n) (A015518 n)).toNat

end

end A158422.P7124692034857971299

/-! ## A158422.P16510902452480153114

`A396877(A084182(n))`
-/

namespace A158422.P16510902452480153114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396877 (A084182 n).toNat

end

end A158422.P16510902452480153114

/-! ## A158422.P15482186786654386796

`A396877(A103457(n))`
-/

namespace A158422.P15482186786654386796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396877 (A103457 n).toNat

end

end A158422.P15482186786654386796

/-! ## A158422.P1210046367908897087

`A325362(A079500(n))+n`
-/

namespace A158422.P1210046367908897087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (A079500 n).toNat + (n : ℤ)

end

end A158422.P1210046367908897087

/-!
# A158423: Number of permutations of 1..n containing the relative rank sequence { 23145 } at any spacing.

The programs for A158423, there is no canonical definition to state claims against.
-/

/-! ## A158423.P5564088466862399770

`A158435(n+5)-A053645(A001528(n))`
-/

namespace A158423.P5564088466862399770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158435 (n + 5) - A053645 (A001528 n).toNat

end

end A158423.P5564088466862399770

/-!
# A158428: Number of permutations of 1..n containing the relative rank sequence { 42513 } at any spacing.

The programs for A158428, there is no canonical definition to state claims against.
-/

/-! ## A158428.P11512871421925480768

`A158427(n+5)+A092650(ceil(2^(n-1)))`
-/

namespace A158428.P11512871421925480768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158427 (n + 5) + A092650 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A158428.P11512871421925480768

/-!
# A158430: Number of permutations of 1..n containing the relative rank sequence { 43125 } at any spacing.

The programs for A158430, there is no canonical definition to state claims against.
-/

/-! ## A158430.P6916216026276697196

`A158423(n+5)+A054899(A081782(n))`
-/

namespace A158430.P6916216026276697196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158423 (n + 5) + A054899 (A081782 n).toNat

end

end A158430.P6916216026276697196

/-!
# A158431: Number of permutations of 1..n containing the relative rank sequence { 45231 } at any spacing.

The programs for A158431, there is no canonical definition to state claims against.
-/

/-! ## A158431.P14410555151388011995

`A158436(n+5)+A070438(A194653(n+1))`
-/

namespace A158431.P14410555151388011995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158436 (n + 5) + A070438 (A194653 (n + 1)).toNat

end

end A158431.P14410555151388011995

/-!
# A158432: Number of permutations of 1..n containing the relative rank sequence { 45312 } at any spacing.

The programs for A158432, there is no canonical definition to state claims against.
-/

/-! ## A158432.P11067348758922752697

`A000142(n+5)-A047889(n+5)`
-/

namespace A158432.P11067348758922752697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 5) - A047889 (n + 5)

end

end A158432.P11067348758922752697

/-! ## A158432.P7513356123785304588

`A214152(A155212(n)+13)`
-/

namespace A158432.P7513356123785304588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A155212 n + 13).toNat

end

end A158432.P7513356123785304588

/-! ## A158432.P1371716166643391373

`A214152(A056000(n)+15)`
-/

namespace A158432.P1371716166643391373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A056000 n + 15).toNat

end

end A158432.P1371716166643391373

/-! ## A158432.P15480785209045498259

`A214152(A000124(n+4)+4)`
-/

namespace A158432.P15480785209045498259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A000124 (n + 4) + 4).toNat

end

end A158432.P15480785209045498259

/-! ## A158432.P11235529881813128390

`A214152(eq[6, A131818(n+1)])`
-/

namespace A158432.P11235529881813128390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A158432.P11235529881813128390

/-! ## A158432.P14819966284659069976

`A214152(A052905(n+3)-(2*n+1))`
-/

namespace A158432.P14819966284659069976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A158432.P14819966284659069976

/-! ## A158432.P13932673011731581457

`A214152(A173036(n)+A016825(n))`
-/

namespace A158432.P13932673011731581457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A173036 n + A016825 n).toNat

end

end A158432.P13932673011731581457

/-!
# A158433: Number of permutations of 1..n containing the relative rank sequence { 51324 } at any spacing.

The programs for A158433, there is no canonical definition to state claims against.
-/

/-! ## A158433.P1327344450249886186

`A158423(n+5)-A327126(A000110(n))`
-/

namespace A158433.P1327344450249886186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158423 (n + 5) - A327126 (A000110 n).toNat

end

end A158433.P1327344450249886186

/-!
# A158434: Number of permutations of 1..n containing the relative rank sequence { 51342 } at any spacing.

The programs for A158434, there is no canonical definition to state claims against.
-/

/-! ## A158434.P9111401509736487916

`(n+5)!-A256200(n+5)`
-/

namespace A158434.P9111401509736487916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 5) : ℤ) - A256200 (n + 5)

end

end A158434.P9111401509736487916

/-!
# A158435: Number of permutations of 1..n containing the relative rank sequence { 52143 } at any spacing.

The programs for A158435, there is no canonical definition to state claims against.
-/

/-! ## A158435.P16580122843489184466

`A158423(n+5)+A053645(A001528(n))`
-/

namespace A158435.P16580122843489184466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158423 (n + 5) + A053645 (A001528 n).toNat

end

end A158435.P16580122843489184466

/-!
# A158436: Number of permutations of 1..n containing the relative rank sequence { 52341 } at any spacing.

The programs for A158436, there is no canonical definition to state claims against.
-/

/-! ## A158436.P10579910397624692618

`A158431(n+5)-A070438(A194653(n+1))`
-/

namespace A158436.P10579910397624692618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158431 (n + 5) - A070438 (A194653 (n + 1)).toNat

end

end A158436.P10579910397624692618

/-!
# A158438: Number of permutations of 1..n containing the relative rank sequence { 53124 } at any spacing.

The programs for A158438, there is no canonical definition to state claims against.
-/

/-! ## A158438.P13940557203903542780

`A185044(A007769(n))+A158434(n+5)`
-/

namespace A158438.P13940557203903542780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A007769 n).toNat + A158434 (n + 5)

end

end A158438.P13940557203903542780

/-!
# A158439: Numbers arising in Kane's conjecture on representing sets with sums of triangular numbers.

The programs for A158439, there is no canonical definition to state claims against.
-/

/-! ## A158439.P1491948971970785281

`eq[n%2, A117673(A327963(2*n+3))]`
-/

namespace A158439.P1491948971970785281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117673 (A327963 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158439.P1491948971970785281

/-! ## A158439.P1938970785980077304

`lt[A070165(A224813(n)), A224821(n+3)]`
-/

namespace A158439.P1938970785980077304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (A224813 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224821 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158439.P1938970785980077304

/-! ## A158439.P1413401855401354436

`eq[A007318(A327482(2*n+1)), A040808(n)]`
-/

namespace A158439.P1413401855401354436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A327482 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158439.P1413401855401354436

/-! ## A158439.P9222575362955204631

`eq[A000035(n), A351014(A003415(2*n+3))]`
-/

namespace A158439.P9222575362955204631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A003415 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158439.P9222575362955204631

/-! ## A158439.P13583784412460406374

`eq[A055396(n+1), A380435(A003415(2*n+3))]`
-/

namespace A158439.P13583784412460406374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380435 (A003415 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158439.P13583784412460406374

/-!
# A158440: Triangle T(n,k) read by rows: row n contains n times n+1 followed by n 1's.

The programs for A158440, there is no canonical definition to state claims against.
-/

/-! ## A158440.P9674282979083042762

`C(comp[n²]-n, ∑[char[n²]])`
-/

namespace A158440.P9674282979083042762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A158440.P9674282979083042762

/-! ## A158440.P11221948103943106730

`(comp[n²]-n)^(floor(1/Δ[sqrt(n)])%2)`
-/

namespace A158440.P11221948103943106730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) ^ (Int.tmod ⌊1 / (f2 (n + 1) - f2 n)⌋ 2 : ℤ)

end

end A158440.P11221948103943106730

/-! ## A158440.P12778721983119532667

`n%floor(sqrt(n+1))-2*n+round(sqrt(n+1))²+1+n`
-/

namespace A158440.P12778721983119532667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % Nat.sqrt (n + 1) : ℕ) : ℤ) - (2 * n : ℤ) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + 1 + (n : ℤ))

end

end A158440.P12778721983119532667

/-! ## A158440.P8194597292783711521

`A158416(ceil(2*sqrt(n+1)))`
-/

namespace A158440.P8194597292783711521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat

end

end A158440.P8194597292783711521

/-! ## A158440.P6008820797240575193

`A360257(ceil(2*sqrt(comp[n²])))`
-/

namespace A158440.P6008820797240575193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360257 ⌈2 * Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉.toNat

end

end A158440.P6008820797240575193

/-! ## A158440.P8014997238108234337

`A007879(floor(1/Δ[sqrt(n)])+2)`
-/

namespace A158440.P8014997238108234337
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 (⌊1 / (f1 (n + 1) - f1 n)⌋ + 2).toNat

end

end A158440.P8014997238108234337

/-! ## A158440.P12072925075455998044

`A057979(ceil(2*sqrt(n+1))+3)`
-/

namespace A158440.P12072925075455998044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (⌈2 * Real.sqrt (n + 1 : ℝ)⌉ + 3).toNat

end

end A158440.P12072925075455998044

/-! ## A158440.P12735772976752891475

`A027656(A055086(n))+1`
-/

namespace A158440.P12735772976752891475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A055086 n).toNat + 1

end

end A158440.P12735772976752891475

/-! ## A158440.P701428024459229944

`A133622(A027434(n+1))`
-/

namespace A158440.P701428024459229944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A027434 (n + 1)).toNat

end

end A158440.P701428024459229944

/-! ## A158440.P4959485802467235227

`A171176(A232091(n+1))`
-/

namespace A158440.P4959485802467235227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171176 (A232091 (n + 1)).toNat

end

end A158440.P4959485802467235227

/-!
# A158441: G.f.: A(x) = exp( Sum_{n>=1} sigma(n)*x^n/(1+x^n) /n ).

The programs for A158441, there is no canonical definition to state claims against.
-/

/-! ## A158441.P2931767055516281491

`A341027(A265060(n))+A264905(n)`
-/

namespace A158441.P2931767055516281491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A265060 n).toNat + 220) + A264905 n

end

end A158441.P2931767055516281491

/-!
# A158442: Triangle T(n,k) = [x^k] n!*(n+1+x^n)*Sum_{i=0..n-1} x^i/(i+1).

The programs for A158442, there is no canonical definition to state claims against.
-/

/-! ## A158442.P9181096115876417326

`A124773(lt[A124750(n), A347714(3*n+4)])`
-/

namespace A158442.P9181096115876417326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347714 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158442.P9181096115876417326

/-!
# A158443: a(n) = 16*n^2 - 4.

The programs for A158443, the canonical program `A158443.P14699209223972058803` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158443 has offset 1).

The definition of A158443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(n+1)²-4` (program `A158443.P14699209223972058803`, by `A158443.P14699209223972058803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158443.P14699209223972058803

`16*(n+1)²-4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158443

/-- `16*(n+1)²-4` -/
def P14699209223972058803.Spec : Prop :=
  ∀ n, P14699209223972058803.a n = A158443 (n + 1)

theorem P14699209223972058803.correct : P14699209223972058803.Spec := by
  intro n
  simp only [A158443, Nat.add_sub_cancel]

end A158443

/-! ## A158443.P7854330570353641635

`4*A000466(n+1)`
-/

namespace A158443.P7854330570353641635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000466 (n + 1)

end

end A158443.P7854330570353641635

namespace A158443

/-- `4*A000466(n+1)` -/
def P7854330570353641635.Spec : Prop :=
  ∀ n, P7854330570353641635.a n = A158443 (n + 1)

end A158443

/-! ## A158443.P15532005927440696507

`record[xor(n, -4)²-4]`
-/

namespace A158443.P15532005927440696507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-4) ^ 2 - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158443.P15532005927440696507

namespace A158443

/-- `record[xor(n, -4)²-4]` -/
def P15532005927440696507.Spec : Prop :=
  ∀ n, P15532005927440696507.a n = A158443 (n + 1)

end A158443

/-! ## A158443.P10727914505650164837

`∑[a(n-1)+32]` with `a(0)=12, a(1)=48`
-/

namespace A158443.P10727914505650164837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 48] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158443.P10727914505650164837

namespace A158443

/-- `∑[a(n-1)+32]` -/
def P10727914505650164837.Spec : Prop :=
  ∀ n, (P10727914505650164837.a n : ℤ) = A158443 (n + 1)

end A158443

/-! ## A158443.P5867186347584933676

`record[(4*(1-n))²-4]`
-/

namespace A158443.P5867186347584933676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (1 - (n : ℤ))) ^ 2 - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158443.P5867186347584933676

namespace A158443

/-- `record[(4*(1-n))²-4]` -/
def P5867186347584933676.Spec : Prop :=
  ∀ n, P5867186347584933676.a n = A158443 (n + 1)

end A158443

/-! ## A158443.P8379239502915142813

`lcm(8*n+12, Δ[n²])`
-/

namespace A158443.P8379239502915142813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (8 * n + 12 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A158443.P8379239502915142813

namespace A158443

/-- `lcm(8*n+12, Δ[n²])` -/
def P8379239502915142813.Spec : Prop :=
  ∀ n, (P8379239502915142813.a n : ℤ) = A158443 (n + 1)

end A158443

/-! ## A158443.P6222051521380329073

`abs(or(4, -(4*(n+1))²))`
-/

namespace A158443.P6222051521380329073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 4 (-((4 * (n + 1)) ^ 2 : ℤ))|

end

end A158443.P6222051521380329073

namespace A158443

/-- `abs(or(4, -(4*(n+1))²))` -/
def P6222051521380329073.Spec : Prop :=
  ∀ n, P6222051521380329073.a n = A158443 (n + 1)

end A158443

/-! ## A158443.P11296123491663127607

`-or(4, -(4*(n+1))²)`
-/

namespace A158443.P11296123491663127607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 4 (-((4 * (n + 1)) ^ 2 : ℤ))

end

end A158443.P11296123491663127607

namespace A158443

/-- `-or(4, -(4*(n+1))²)` -/
def P11296123491663127607.Spec : Prop :=
  ∀ n, P11296123491663127607.a n = A158443 (n + 1)

end A158443

/-! ## A158443.P15262201338749538890

`abs(xor(4, -(4*(n+1))²))`
-/

namespace A158443.P15262201338749538890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 4 (-((4 * (n + 1)) ^ 2 : ℤ))|

end

end A158443.P15262201338749538890

namespace A158443

/-- `abs(xor(4, -(4*(n+1))²))` -/
def P15262201338749538890.Spec : Prop :=
  ∀ n, P15262201338749538890.a n = A158443 (n + 1)

end A158443

/-! ## A158443.P13292956214542524305

`-xor(4, -(4*(n+1))²)`
-/

namespace A158443.P13292956214542524305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 4 (-((4 * (n + 1)) ^ 2 : ℤ))

end

end A158443.P13292956214542524305

namespace A158443

/-- `-xor(4, -(4*(n+1))²)` -/
def P13292956214542524305.Spec : Prop :=
  ∀ n, P13292956214542524305.a n = A158443 (n + 1)

end A158443

/-! ## A158443.P6681296164408329921

`4*record[(n+3)*xor(1, n)]`
-/

namespace A158443.P6681296164408329921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158443.P6681296164408329921

namespace A158443

/-- `4*record[(n+3)*xor(1, n)]` -/
def P6681296164408329921.Spec : Prop :=
  ∀ n, (P6681296164408329921.a n : ℤ) = A158443 (n + 1)

end A158443

/-! ## A158443.P3196658949191352566

`4*∑[ogf((3+6x-x^2)/(1-2x+x^2))]`
-/

namespace A158443.P3196658949191352566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158443.P3196658949191352566

namespace A158443

/-- `4*∑[ogf((3+6x-x^2)/(1-2x+x^2))]` -/
def P3196658949191352566.Spec : Prop :=
  ∀ n, P3196658949191352566.a n = A158443 (n + 1)

end A158443

/-! ## A158443.P770079377357565490

`2*record[lcm(n+3, 2*(n+1))]`
-/

namespace A158443.P770079377357565490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3) (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158443.P770079377357565490

namespace A158443

/-- `2*record[lcm(n+3, 2*(n+1))]` -/
def P770079377357565490.Spec : Prop :=
  ∀ n, (P770079377357565490.a n : ℤ) = A158443 (n + 1)

end A158443

/-! ## A158443.P1313912749482942716

`4*lcm(2*n+1, 2*n+3)`
-/

namespace A158443.P1313912749482942716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lcm (2 * n + 1) (2 * n + 3)

end

end A158443.P1313912749482942716

namespace A158443

/-- `4*lcm(2*n+1, 2*n+3)` -/
def P1313912749482942716.Spec : Prop :=
  ∀ n, (P1313912749482942716.a n : ℤ) = A158443 (n + 1)

end A158443

/-! ## A158443.P280731349969310257

`(2*n+1)*or(4, 8*(n+1))`
-/

namespace A158443.P280731349969310257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.lor 4 (8 * (n + 1))

end

end A158443.P280731349969310257

namespace A158443

/-- `(2*n+1)*or(4, 8*(n+1))` -/
def P280731349969310257.Spec : Prop :=
  ∀ n, (P280731349969310257.a n : ℤ) = A158443 (n + 1)

end A158443

/-! ## A158443.P7606380288938685188

`(2*n+1)*xor(4, 8*(n+1))`
-/

namespace A158443.P7606380288938685188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.xor 4 (8 * (n + 1))

end

end A158443.P7606380288938685188

namespace A158443

/-- `(2*n+1)*xor(4, 8*(n+1))` -/
def P7606380288938685188.Spec : Prop :=
  ∀ n, (P7606380288938685188.a n : ℤ) = A158443 (n + 1)

end A158443

/-! ## A158443.P3557993407454499878

`Δ[(2*n)²]*Δ[C(n+1, n)²]`
-/

namespace A158443.P3557993407454499878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A158443.P3557993407454499878

namespace A158443

/-- `Δ[(2*n)²]*Δ[C(n+1, n)²]` -/
def P3557993407454499878.Spec : Prop :=
  ∀ n, P3557993407454499878.a n = A158443 (n + 1)

theorem P3557993407454499878.correct : P3557993407454499878.Spec := by
  intro n
  simp only [A158443, Nat.add_sub_cancel, A158443.P3557993407454499878.f1, A158443.P3557993407454499878.f2, A158443.P3557993407454499878.a, A158443.P14699209223972058803.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A158443

/-! ## A158443.P8977786519683641753

`(gcd(n, 2*n)+n+3)*Δ[(2*n)²]`
-/

namespace A158443.P8977786519683641753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) + (n + 3) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A158443.P8977786519683641753

namespace A158443

/-- `(gcd(n, 2*n)+n+3)*Δ[(2*n)²]` -/
def P8977786519683641753.Spec : Prop :=
  ∀ n, P8977786519683641753.a n = A158443 (n + 1)

theorem P8977786519683641753.correct : P8977786519683641753.Spec := by
  intro n
  simp only [A158443, Nat.add_sub_cancel, A158443.P8977786519683641753.f1, A158443.P8977786519683641753.a, A158443.P14699209223972058803.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A158443

/-! ## A158443.P598268558193762872

`(2*n+1)*Δ[∩[(2*n)², (n+1)²]]`
-/

namespace A158443.P598268558193762872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A158443.P598268558193762872

namespace A158443

/-- `(2*n+1)*Δ[∩[(2*n)², (n+1)²]]` -/
def P598268558193762872.Spec : Prop :=
  ∀ n, P598268558193762872.a n = A158443 (n + 1)

end A158443

/-! ## A158443.P14554741224718093138

`(2*n+3)*Δ[and(2*n+1, 2*n)²]`
-/

namespace A158443.P14554741224718093138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A158443.P14554741224718093138

namespace A158443

/-- `(2*n+3)*Δ[and(2*n+1, 2*n)²]` -/
def P14554741224718093138.Spec : Prop :=
  ∀ n, P14554741224718093138.a n = A158443 (n + 1)

end A158443

/-!
# A158444: a(n) = 16*n^2 + 4.

The programs for A158444, the canonical program `A158444.P9799945694755505124` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158444 has offset 1).

The definition of A158444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(n+1)²+4` (program `A158444.P9799945694755505124`, by `A158444.P9799945694755505124.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158444.P9799945694755505124

`16*(n+1)²+4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158444

/-- `16*(n+1)²+4` -/
def P9799945694755505124.Spec : Prop :=
  ∀ n, (P9799945694755505124.a n : ℤ) = A158444 (n + 1)

theorem P9799945694755505124.correct : P9799945694755505124.Spec := by
  intro n
  simp only [A158444, Nat.add_sub_cancel]

end A158444

/-! ## A158444.P14194129231918904914

`4*A053755(n+1)`
-/

namespace A158444.P14194129231918904914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A053755 (n + 1)

end

end A158444.P14194129231918904914

namespace A158444

/-- `4*A053755(n+1)` -/
def P14194129231918904914.Spec : Prop :=
  ∀ n, P14194129231918904914.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P12130279201562790899

`record[xor(n, -4)²+4]`
-/

namespace A158444.P12130279201562790899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-4) ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158444.P12130279201562790899

namespace A158444

/-- `record[xor(n, -4)²+4]` -/
def P12130279201562790899.Spec : Prop :=
  ∀ n, P12130279201562790899.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P12054110368195534968

`∑[a(n-1)+32]` with `a(0)=20, a(1)=48`
-/

namespace A158444.P12054110368195534968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [20, 48] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158444.P12054110368195534968

namespace A158444

/-- `∑[a(n-1)+32]` -/
def P12054110368195534968.Spec : Prop :=
  ∀ n, (P12054110368195534968.a n : ℤ) = A158444 (n + 1)

end A158444

/-! ## A158444.P4911484627755212836

`record[lcm(4, (n+2)²+1)]`
-/

namespace A158444.P4911484627755212836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 ((n + 2) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158444.P4911484627755212836

namespace A158444

/-- `record[lcm(4, (n+2)²+1)]` -/
def P4911484627755212836.Spec : Prop :=
  ∀ n, (P4911484627755212836.a n : ℤ) = A158444 (n + 1)

end A158444

/-! ## A158444.P13846779030214393184

`record[or(4, (4*(1-n))²)]`
-/

namespace A158444.P13846779030214393184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 ((4 * (1 - (n : ℤ))) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158444.P13846779030214393184

namespace A158444

/-- `record[or(4, (4*(1-n))²)]` -/
def P13846779030214393184.Spec : Prop :=
  ∀ n, P13846779030214393184.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P6068291609896790273

`record[xor(4, (4*(1-n))²)]`
-/

namespace A158444.P6068291609896790273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 ((4 * (1 - (n : ℤ))) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158444.P6068291609896790273

namespace A158444

/-- `record[xor(4, (4*(1-n))²)]` -/
def P6068291609896790273.Spec : Prop :=
  ∀ n, P6068291609896790273.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P7046699055171313387

`or(4, (2*sqrt(n+1))^4)`
-/

namespace A158444.P7046699055171313387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (SequenceMachineLib.roundAway ((2 * Real.sqrt (n + 1 : ℝ)) ^ 4))

end

end A158444.P7046699055171313387

namespace A158444

/-- `or(4, (2*sqrt(n+1))^4)` -/
def P7046699055171313387.Spec : Prop :=
  ∀ n, P7046699055171313387.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P10158672180138028348

`xor(4, (2*sqrt(n+1))^4)`
-/

namespace A158444.P10158672180138028348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (SequenceMachineLib.roundAway ((2 * Real.sqrt (n + 1 : ℝ)) ^ 4))

end

end A158444.P10158672180138028348

namespace A158444

/-- `xor(4, (2*sqrt(n+1))^4)` -/
def P10158672180138028348.Spec : Prop :=
  ∀ n, P10158672180138028348.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P1333506313506768634

`record[and(n-1, -4)²+4]`
-/

namespace A158444.P1333506313506768634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-4) ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158444.P1333506313506768634

namespace A158444

/-- `record[and(n-1, -4)²+4]` -/
def P1333506313506768634.Spec : Prop :=
  ∀ n, P1333506313506768634.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P11213594662235981970

`4*or(1, ∑[4*(2*n+1)])`
-/

namespace A158444.P11213594662235981970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158444.P11213594662235981970

namespace A158444

/-- `4*or(1, ∑[4*(2*n+1)])` -/
def P11213594662235981970.Spec : Prop :=
  ∀ n, (P11213594662235981970.a n : ℤ) = A158444 (n + 1)

end A158444

/-! ## A158444.P10790258307531062385

`4*xor(1, ∑[4*(2*n+1)])`
-/

namespace A158444.P10790258307531062385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158444.P10790258307531062385

namespace A158444

/-- `4*xor(1, ∑[4*(2*n+1)])` -/
def P10790258307531062385.Spec : Prop :=
  ∀ n, (P10790258307531062385.a n : ℤ) = A158444 (n + 1)

end A158444

/-! ## A158444.P17276657061515480573

`4*(∑[ogf((2+8x-2x^2)/(1-2x+x^2))]+3)`
-/

namespace A158444.P17276657061515480573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A158444.P17276657061515480573

namespace A158444

/-- `4*(∑[ogf((2+8x-2x^2)/(1-2x+x^2))]+3)` -/
def P17276657061515480573.Spec : Prop :=
  ∀ n, P17276657061515480573.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P15188582233933576935

`2*A008527(n+1)`
-/

namespace A158444.P15188582233933576935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008527 (n + 1)

end

end A158444.P15188582233933576935

namespace A158444

/-- `2*A008527(n+1)` -/
def P15188582233933576935.Spec : Prop :=
  ∀ n, P15188582233933576935.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P2534033322241703966

`2*A108100(n+1)`
-/

namespace A158444.P2534033322241703966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108100 (n + 1)

end

end A158444.P2534033322241703966

namespace A158444

/-- `2*A108100(n+1)` -/
def P2534033322241703966.Spec : Prop :=
  ∀ n, P2534033322241703966.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P1655020629040916336

`A157912(n+1)/4`
-/

namespace A158444.P1655020629040916336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157912 (n + 1) : ℚ) / 4

end

end A158444.P1655020629040916336

namespace A158444

/-- `A157912(n+1)/4` -/
def P1655020629040916336.Spec : Prop :=
  ∀ n, P1655020629040916336.a n = (A158444 (n + 1) : ℚ)

end A158444

/-! ## A158444.P4596095756406930784

`4*(A060626(n)+3)`
-/

namespace A158444.P4596095756406930784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A060626 n + 3)

end

end A158444.P4596095756406930784

namespace A158444

/-- `4*(A060626(n)+3)` -/
def P4596095756406930784.Spec : Prop :=
  ∀ n, P4596095756406930784.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P9692505387059749394

`4*(A082109(n)+4)`
-/

namespace A158444.P9692505387059749394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A082109 n + 4)

end

end A158444.P9692505387059749394

namespace A158444

/-- `4*(A082109(n)+4)` -/
def P9692505387059749394.Spec : Prop :=
  ∀ n, P9692505387059749394.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P4375901605457749984

`2*(∑[A051062(n)]+2)`
-/

namespace A158444.P4375901605457749984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A158444.P4375901605457749984

namespace A158444

/-- `2*(∑[A051062(n)]+2)` -/
def P4375901605457749984.Spec : Prop :=
  ∀ n, P4375901605457749984.a n = A158444 (n + 1)

end A158444

/-! ## A158444.P11603763457643208371

`2*(A081585(n+1)+1)`
-/

namespace A158444.P11603763457643208371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081585 (n + 1) + 1)

end

end A158444.P11603763457643208371

namespace A158444

/-- `2*(A081585(n+1)+1)` -/
def P11603763457643208371.Spec : Prop :=
  ∀ n, P11603763457643208371.a n = A158444 (n + 1)

end A158444

/-!
# A158445: a(n) = 25*n^2 + 5.

The programs for A158445, the canonical program `A158445.P8983988357640724795` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158445 has offset 1).

The definition of A158445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*(n+1)²+5` (program `A158445.P8983988357640724795`, by `A158445.P8983988357640724795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158445.P8983988357640724795

`25*(n+1)²+5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158445

/-- `25*(n+1)²+5` -/
def P8983988357640724795.Spec : Prop :=
  ∀ n, (P8983988357640724795.a n : ℤ) = A158445 (n + 1)

theorem P8983988357640724795.correct : P8983988357640724795.Spec := by
  intro n
  simp only [A158445, Nat.add_sub_cancel]

end A158445

/-! ## A158445.P5590308257465460324

`5*A212656(n+1)`
-/

namespace A158445.P5590308257465460324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A212656 (n + 1)

end

end A158445.P5590308257465460324

namespace A158445

/-- `5*A212656(n+1)` -/
def P5590308257465460324.Spec : Prop :=
  ∀ n, P5590308257465460324.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P9849982558727374962

`lcm(5, ∑[5*(2*n+1)]+1)`
-/

namespace A158445.P9849982558727374962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A158445.P9849982558727374962

namespace A158445

/-- `lcm(5, ∑[5*(2*n+1)]+1)` -/
def P9849982558727374962.Spec : Prop :=
  ∀ n, (P9849982558727374962.a n : ℤ) = A158445 (n + 1)

end A158445

/-! ## A158445.P2564224550826598676

`5*(∑[a(n-1)+10]+1)` with `a(0)=5`
-/

namespace A158445.P2564224550826598676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A158445.P2564224550826598676

namespace A158445

/-- `5*(∑[a(n-1)+10]+1)` -/
def P2564224550826598676.Spec : Prop :=
  ∀ n, (P2564224550826598676.a n : ℤ) = A158445 (n + 1)

end A158445

/-! ## A158445.P4658179590962393235

`5*(∑[ogf((10-5x+5x^2)/(1-2x+x^2))]-4)`
-/

namespace A158445.P4658179590962393235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -5, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j - 4)

end

end A158445.P4658179590962393235

namespace A158445

/-- `5*(∑[ogf((10-5x+5x^2)/(1-2x+x^2))]-4)` -/
def P4658179590962393235.Spec : Prop :=
  ∀ n, P4658179590962393235.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P9820318998387063517

`5*∑[ogf((-6+3x+2x^2+x^3)/(-1+3x-3x^2+x^3))]`
-/

namespace A158445.P9820318998387063517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -2, -1] [1, -3, 3, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158445.P9820318998387063517

namespace A158445

/-- `5*∑[ogf((-6+3x+2x^2+x^3)/(-1+3x-3x^2+x^3))]` -/
def P9820318998387063517.Spec : Prop :=
  ∀ n, P9820318998387063517.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P15910070510817421849

`5*(A134593(n)+5)`
-/

namespace A158445.P15910070510817421849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A134593 n + 5)

end

end A158445.P15910070510817421849

namespace A158445

/-- `5*(A134593(n)+5)` -/
def P15910070510817421849.Spec : Prop :=
  ∀ n, P15910070510817421849.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P16094926923417287642

`5*(A134538(n+1)+2)`
-/

namespace A158445.P16094926923417287642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A134538 (n + 1) + 2)

end

end A158445.P16094926923417287642

namespace A158445

/-- `5*(A134538(n+1)+2)` -/
def P16094926923417287642.Spec : Prop :=
  ∀ n, P16094926923417287642.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P10455358757040198521

`abs(4-(n-∑[A053742(n)+1]))`
-/

namespace A158445.P10455358757040198521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A158445.P10455358757040198521

namespace A158445

/-- `abs(4-(n-∑[A053742(n)+1]))` -/
def P10455358757040198521.Spec : Prop :=
  ∀ n, P10455358757040198521.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P2630945600136688631

`5*((A016897(n)+1)*(n+1)+1)`
-/

namespace A158445.P2630945600136688631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((A016897 n + 1) * (n + 1 : ℤ) + 1)

end

end A158445.P2630945600136688631

namespace A158445

/-- `5*((A016897(n)+1)*(n+1)+1)` -/
def P2630945600136688631.Spec : Prop :=
  ∀ n, P2630945600136688631.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P3461122837593689262

`A158559(n+1)%A158490(n+1)`
-/

namespace A158445.P3461122837593689262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158559 (n + 1)) (A158490 (n + 1))

end

end A158445.P3461122837593689262

namespace A158445

/-- `A158559(n+1)%A158490(n+1)` -/
def P3461122837593689262.Spec : Prop :=
  ∀ n, P3461122837593689262.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P8688486822192094865

`A158743(n+1)%A158563(n+1)`
-/

namespace A158445.P8688486822192094865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158743 (n + 1)) (A158563 (n + 1))

end

end A158445.P8688486822192094865

namespace A158445

/-- `A158743(n+1)%A158563(n+1)` -/
def P8688486822192094865.Spec : Prop :=
  ∀ n, P8688486822192094865.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P13887002675190993776

`A158770(n+1)%A158588(n+1)`
-/

namespace A158445.P13887002675190993776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158770 (n + 1)) (A158588 (n + 1))

end

end A158445.P13887002675190993776

namespace A158445

/-- `A158770(n+1)%A158588(n+1)` -/
def P13887002675190993776.Spec : Prop :=
  ∀ n, P13887002675190993776.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P15892580153091840045

`A117951(5*(n+1))`
-/

namespace A158445.P15892580153091840045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 (5 * (n + 1))

end

end A158445.P15892580153091840045

namespace A158445

/-- `A117951(5*(n+1))` -/
def P15892580153091840045.Spec : Prop :=
  ∀ n, P15892580153091840045.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P5210568087500391241

`∑[A168101(A168101(2*n+1))]`
-/

namespace A158445.P5210568087500391241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 (A168101 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158445.P5210568087500391241

namespace A158445

/-- `∑[A168101(A168101(2*n+1))]` -/
def P5210568087500391241.Spec : Prop :=
  ∀ n, P5210568087500391241.a n = A158445 (n + 1)

end A158445

/-! ## A158445.P15500604984240792589

`5*(A016885(n*(n+2))+3)`
-/

namespace A158445.P15500604984240792589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A016885 (n * (n + 2)) + 3)

end

end A158445.P15500604984240792589

namespace A158445

/-- `5*(A016885(n*(n+2))+3)` -/
def P15500604984240792589.Spec : Prop :=
  ∀ n, P15500604984240792589.a n = A158445 (n + 1)

end A158445

/-!
# A158446: a(n) = 25*n^2 - 5.

The programs for A158446, the canonical program `A158446.P2202915940345529395` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158446 has offset 1).

The definition of A158446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*(n+1)²-5` (program `A158446.P2202915940345529395`, by `A158446.P2202915940345529395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158446.P2202915940345529395

`25*(n+1)²-5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158446

/-- `25*(n+1)²-5` -/
def P2202915940345529395.Spec : Prop :=
  ∀ n, P2202915940345529395.a n = A158446 (n + 1)

theorem P2202915940345529395.correct : P2202915940345529395.Spec := by
  intro n
  simp only [A158446, Nat.add_sub_cancel]

end A158446

/-! ## A158446.P684890726315362222

`5*A134538(n+1)`
-/

namespace A158446.P684890726315362222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A134538 (n + 1)

end

end A158446.P684890726315362222

namespace A158446

/-- `5*A134538(n+1)` -/
def P684890726315362222.Spec : Prop :=
  ∀ n, P684890726315362222.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P3004040223020632375

`record[(5*(1-n))²-5]`
-/

namespace A158446.P3004040223020632375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (1 - (n : ℤ))) ^ 2 - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158446.P3004040223020632375

namespace A158446

/-- `record[(5*(1-n))²-5]` -/
def P3004040223020632375.Spec : Prop :=
  ∀ n, P3004040223020632375.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P17316543699505725069

`5*∑[ogf((4+7x-x^2)/(1-2x+x^2))]`
-/

namespace A158446.P17316543699505725069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158446.P17316543699505725069

namespace A158446

/-- `5*∑[ogf((4+7x-x^2)/(1-2x+x^2))]` -/
def P17316543699505725069.Spec : Prop :=
  ∀ n, P17316543699505725069.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P15633884742220982986

`lcm(5, ∑[ogf((4+7x-x^2)/(1-2x+x^2))])`
-/

namespace A158446.P15633884742220982986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7, -1] [1, -2, 1] n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158446.P15633884742220982986

namespace A158446

/-- `lcm(5, ∑[ogf((4+7x-x^2)/(1-2x+x^2))])` -/
def P15633884742220982986.Spec : Prop :=
  ∀ n, (P15633884742220982986.a n : ℤ) = A158446 (n + 1)

end A158446

/-! ## A158446.P7688657230459344825

`5*(5*∑[a(n-2)+4]+4)` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A158446.P7688657230459344825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 4)

end

end A158446.P7688657230459344825

namespace A158446

/-- `5*(5*∑[a(n-2)+4]+4)` -/
def P7688657230459344825.Spec : Prop :=
  ∀ n, (P7688657230459344825.a n : ℤ) = A158446 (n + 1)

end A158446

/-! ## A158446.P16121580247501265767

`5*(A134593(n)+3)`
-/

namespace A158446.P16121580247501265767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A134593 n + 3)

end

end A158446.P16121580247501265767

namespace A158446

/-- `5*(A134593(n)+3)` -/
def P16121580247501265767.Spec : Prop :=
  ∀ n, P16121580247501265767.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P2016648592919871100

`5*(∑[A017209(n)+n]+n)`
-/

namespace A158446.P2016648592919871100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A158446.P2016648592919871100

namespace A158446

/-- `5*(∑[A017209(n)+n]+n)` -/
def P2016648592919871100.Spec : Prop :=
  ∀ n, P2016648592919871100.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P14509614346890167587

`5*((n+1)*A016897(n)+n)`
-/

namespace A158446.P14509614346890167587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1 : ℤ) * A016897 n + (n : ℤ))

end

end A158446.P14509614346890167587

namespace A158446

/-- `5*((n+1)*A016897(n)+n)` -/
def P14509614346890167587.Spec : Prop :=
  ∀ n, P14509614346890167587.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P5701973134070414748

`abs(5-(A016957(n)+1-n)²)`
-/

namespace A158446.P5701973134070414748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (A016957 n + 1 - (n : ℤ)) ^ 2|

end

end A158446.P5701973134070414748

namespace A158446

/-- `abs(5-(A016957(n)+1-n)²)` -/
def P5701973134070414748.Spec : Prop :=
  ∀ n, P5701973134070414748.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P16779680154409005716

`5*((n+2)*A016861(n)-n+2)`
-/

namespace A158446.P16779680154409005716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n + 2 : ℤ) * A016861 n - (n : ℤ) + 2)

end

end A158446.P16779680154409005716

namespace A158446

/-- `5*((n+2)*A016861(n)-n+2)` -/
def P16779680154409005716.Spec : Prop :=
  ∀ n, P16779680154409005716.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P6610669627071225125

`5*(∑[A008592(n)+3]+2*n+1)`
-/

namespace A158446.P6610669627071225125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ) + 1)

end

end A158446.P6610669627071225125

namespace A158446

/-- `5*(∑[A008592(n)+3]+2*n+1)` -/
def P6610669627071225125.Spec : Prop :=
  ∀ n, P6610669627071225125.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P77651955381984779

`lcm(A040021(n), A134538(n+1))`
-/

namespace A158446.P77651955381984779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040021 n) (A134538 (n + 1))

end

end A158446.P77651955381984779

namespace A158446

/-- `lcm(A040021(n), A134538(n+1))` -/
def P77651955381984779.Spec : Prop :=
  ∀ n, (P77651955381984779.a n : ℤ) = A158446 (n + 1)

end A158446

/-! ## A158446.P16467181987015468172

`A158679(n+1)%A136017(n+1)`
-/

namespace A158446.P16467181987015468172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158679 (n + 1)) (A136017 (n + 1))

end

end A158446.P16467181987015468172

namespace A158446

/-- `A158679(n+1)%A136017(n+1)` -/
def P16467181987015468172.Spec : Prop :=
  ∀ n, P16467181987015468172.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P2091973711150967808

`A145678(n+1)%A158551(n+1)`
-/

namespace A158446.P2091973711150967808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145678 (n + 1)) (A158551 (n + 1))

end

end A158446.P2091973711150967808

namespace A158446

/-- `A145678(n+1)%A158551(n+1)` -/
def P2091973711150967808.Spec : Prop :=
  ∀ n, P2091973711150967808.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P4189725715578658465

`A157918(n+1)%A158560(n+1)`
-/

namespace A158446.P4189725715578658465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157918 (n + 1)) (A158560 (n + 1))

end

end A158446.P4189725715578658465

namespace A158446

/-- `A157918(n+1)%A158560(n+1)` -/
def P4189725715578658465.Spec : Prop :=
  ∀ n, P4189725715578658465.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P5746815443777346560

`A158633(n+1)%A158554(n+1)`
-/

namespace A158446.P5746815443777346560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158633 (n + 1)) (A158554 (n + 1))

end

end A158446.P5746815443777346560

namespace A158446

/-- `A158633(n+1)%A158554(n+1)` -/
def P5746815443777346560.Spec : Prop :=
  ∀ n, P5746815443777346560.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P16835996180143122401

`A158655(n+1)%A158563(n+1)`
-/

namespace A158446.P16835996180143122401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158655 (n + 1)) (A158563 (n + 1))

end

end A158446.P16835996180143122401

namespace A158446

/-- `A158655(n+1)%A158563(n+1)` -/
def P16835996180143122401.Spec : Prop :=
  ∀ n, P16835996180143122401.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P2685886883951186550

`A158667(n+1)%A158588(n+1)`
-/

namespace A158446.P2685886883951186550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158667 (n + 1)) (A158588 (n + 1))

end

end A158446.P2685886883951186550

namespace A158446

/-- `A158667(n+1)%A158588(n+1)` -/
def P2685886883951186550.Spec : Prop :=
  ∀ n, P2685886883951186550.a n = A158446 (n + 1)

end A158446

/-! ## A158446.P11142134022364174278

`A158692(n+1)%A158596(n+1)`
-/

namespace A158446.P11142134022364174278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158692 (n + 1)) (A158596 (n + 1))

end

end A158446.P11142134022364174278

namespace A158446

/-- `A158692(n+1)%A158596(n+1)` -/
def P11142134022364174278.Spec : Prop :=
  ∀ n, P11142134022364174278.a n = A158446 (n + 1)

end A158446

/-!
# A158447: a(n) = 10*n^2 - 1.

The programs for A158447, the canonical program `A158447.P7721528758655696785` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158447 has offset 1).

The definition of A158447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(n+1)²-1` (program `A158447.P7721528758655696785`, by `A158447.P7721528758655696785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158447.P7721528758655696785

`10*(n+1)²-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158447

/-- `10*(n+1)²-1` -/
def P7721528758655696785.Spec : Prop :=
  ∀ n, P7721528758655696785.a n = A158447 (n + 1)

theorem P7721528758655696785.correct : P7721528758655696785.Spec := by
  intro n
  simp only [A158447, Nat.add_sub_cancel]

end A158447

/-! ## A158447.P11896656190668817706

`∑[a(n-1)+20]` with `a(0)=9, a(1)=30`
-/

namespace A158447.P11896656190668817706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 30] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158447.P11896656190668817706

namespace A158447

/-- `∑[a(n-1)+20]` -/
def P11896656190668817706.Spec : Prop :=
  ∀ n, (P11896656190668817706.a n : ℤ) = A158447 (n + 1)

end A158447

/-! ## A158447.P1261510759910530199

`record[10*(1-n)²-1]`
-/

namespace A158447.P1261510759910530199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (1 - (n : ℤ)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158447.P1261510759910530199

namespace A158447

/-- `record[10*(1-n)²-1]` -/
def P1261510759910530199.Spec : Prop :=
  ∀ n, P1261510759910530199.a n = A158447 (n + 1)

end A158447

/-! ## A158447.P2937482630494088420

`abs(a(n-1)+10*(2*n+1))` with `a(0)=9`
-/

namespace A158447.P2937482630494088420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 10 * (2 * n + 1)

end

end A158447.P2937482630494088420

namespace A158447

/-- `abs(a(n-1)+10*(2*n+1))` -/
def P2937482630494088420.Spec : Prop :=
  ∀ n, (P2937482630494088420.a n : ℤ) = A158447 (n + 1)

theorem P2937482630494088420.correct : P2937482630494088420.Spec := by
  intro n
  induction n with
  | zero => simp [A158447, A158447.P2937482630494088420.a, A158447.P7721528758655696785.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A158447, Nat.add_sub_cancel, A158447.P2937482630494088420.a, A158447.P7721528758655696785.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A158447

/-! ## A158447.P2532845897955256278

`floor(a(n-1)+10*(2*n+1))` with `a(0)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A158447.P2532845897955256278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 10 * (2 * n + 1)

end

end A158447.P2532845897955256278

namespace A158447

/-- `floor(a(n-1)+10*(2*n+1))` -/
def P2532845897955256278.Spec : Prop :=
  ∀ n, (P2532845897955256278.a n : ℤ) = A158447 (n + 1)

theorem P2532845897955256278.correct : P2532845897955256278.Spec := by
  intro n
  induction n with
  | zero => simp [A158447, A158447.P2532845897955256278.a, A158447.P7721528758655696785.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A158447, Nat.add_sub_cancel, A158447.P2532845897955256278.a, A158447.P7721528758655696785.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A158447

/-! ## A158447.P9553355028110435889

`ceil(a(n-1)+10*(2*n+1))` with `a(0)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A158447.P9553355028110435889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 10 * (2 * n + 1)

end

end A158447.P9553355028110435889

namespace A158447

/-- `ceil(a(n-1)+10*(2*n+1))` -/
def P9553355028110435889.Spec : Prop :=
  ∀ n, (P9553355028110435889.a n : ℤ) = A158447 (n + 1)

theorem P9553355028110435889.correct : P9553355028110435889.Spec := by
  intro n
  induction n with
  | zero => simp [A158447, A158447.P9553355028110435889.a, A158447.P7721528758655696785.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A158447, Nat.add_sub_cancel, A158447.P9553355028110435889.a, A158447.P7721528758655696785.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A158447

/-! ## A158447.P18321241069161578374

`round(a(n-1)+10*(2*n+1))` with `a(0)=9`

`round` is left out, it is the identity on integers.
-/

namespace A158447.P18321241069161578374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 10 * (2 * n + 1)

end

end A158447.P18321241069161578374

namespace A158447

/-- `round(a(n-1)+10*(2*n+1))` -/
def P18321241069161578374.Spec : Prop :=
  ∀ n, (P18321241069161578374.a n : ℤ) = A158447 (n + 1)

theorem P18321241069161578374.correct : P18321241069161578374.Spec := by
  intro n
  induction n with
  | zero => simp [A158447, A158447.P18321241069161578374.a, A158447.P7721528758655696785.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A158447, Nat.add_sub_cancel, A158447.P18321241069161578374.a, A158447.P7721528758655696785.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A158447

/-! ## A158447.P12498412786242002880

`floor(A158491(n+1)/2)`
-/

namespace A158447.P12498412786242002880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158491 (n + 1) : ℚ) / 2⌋

end

end A158447.P12498412786242002880

namespace A158447

/-- `floor(A158491(n+1)/2)` -/
def P12498412786242002880.Spec : Prop :=
  ∀ n, P12498412786242002880.a n = A158447 (n + 1)

end A158447

/-! ## A158447.P4426063594047699886

`floor(A158560(n+1)/3)`
-/

namespace A158447.P4426063594047699886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158560 (n + 1) : ℚ) / 3⌋

end

end A158447.P4426063594047699886

namespace A158447

/-- `floor(A158560(n+1)/3)` -/
def P4426063594047699886.Spec : Prop :=
  ∀ n, P4426063594047699886.a n = A158447 (n + 1)

end A158447

/-! ## A158447.P9187469698912133666

`(A195322(n+1)-2)/2`
-/

namespace A158447.P9187469698912133666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195322 (n + 1) - 2 : ℚ) / 2

end

end A158447.P9187469698912133666

namespace A158447

/-- `(A195322(n+1)-2)/2` -/
def P9187469698912133666.Spec : Prop :=
  ∀ n, P9187469698912133666.a n = (A158447 (n + 1) : ℚ)

end A158447

/-! ## A158447.P16158422927463766823

`(A158493(n+1)-3)/2`
-/

namespace A158447.P16158422927463766823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158493 (n + 1) - 3 : ℚ) / 2

end

end A158447.P16158422927463766823

namespace A158447

/-- `(A158493(n+1)-3)/2` -/
def P16158422927463766823.Spec : Prop :=
  ∀ n, P16158422927463766823.a n = (A158447 (n + 1) : ℚ)

end A158447

/-! ## A158447.P11936344736188287163

`(A158598(n+1)-3)/4`
-/

namespace A158447.P11936344736188287163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158598 (n + 1) - 3 : ℚ) / 4

end

end A158447.P11936344736188287163

namespace A158447

/-- `(A158598(n+1)-3)/4` -/
def P11936344736188287163.Spec : Prop :=
  ∀ n, P11936344736188287163.a n = (A158447 (n + 1) : ℚ)

end A158447

/-! ## A158447.P8962787965422654704

`(A167573(n+1)-5)/2`
-/

namespace A158447.P8962787965422654704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167573 (n + 1) - 5 : ℚ) / 2

end

end A158447.P8962787965422654704

namespace A158447

/-- `(A167573(n+1)-5)/2` -/
def P8962787965422654704.Spec : Prop :=
  ∀ n, P8962787965422654704.a n = (A158447 (n + 1) : ℚ)

end A158447

/-! ## A158447.P3358299313990736924

`(A157919(n+1)-4)/5`
-/

namespace A158447.P3358299313990736924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157919 (n + 1) - 4 : ℚ) / 5

end

end A158447.P3358299313990736924

namespace A158447

/-- `(A157919(n+1)-4)/5` -/
def P3358299313990736924.Spec : Prop :=
  ∀ n, P3358299313990736924.a n = (A158447 (n + 1) : ℚ)

end A158447

/-! ## A158447.P1824647296189485199

`abs(2*(n+1)*(A016897(n)+1)-1)`
-/

namespace A158447.P1824647296189485199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) * (A016897 n + 1) - 1|

end

end A158447.P1824647296189485199

namespace A158447

/-- `abs(2*(n+1)*(A016897(n)+1)-1)` -/
def P1824647296189485199.Spec : Prop :=
  ∀ n, P1824647296189485199.a n = A158447 (n + 1)

end A158447

/-! ## A158447.P8026287083234793076

`Δ[∑[A033583(n)]-n]`
-/

namespace A158447.P8026287083234793076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158447.P8026287083234793076

namespace A158447

/-- `Δ[∑[A033583(n)]-n]` -/
def P8026287083234793076.Spec : Prop :=
  ∀ n, P8026287083234793076.a n = A158447 (n + 1)

end A158447

/-! ## A158447.P13649958963258052535

`Δ[A035005(n+1)-(n+1)²]`
-/

namespace A158447.P13649958963258052535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035005 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158447.P13649958963258052535

namespace A158447

/-- `Δ[A035005(n+1)-(n+1)²]` -/
def P13649958963258052535.Spec : Prop :=
  ∀ n, P13649958963258052535.a n = A158447 (n + 1)

end A158447

/-! ## A158447.P12682149607090910557

`Δ[A005902(n)-A008585(n)]`
-/

namespace A158447.P12682149607090910557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158447.P12682149607090910557

namespace A158447

/-- `Δ[A005902(n)-A008585(n)]` -/
def P12682149607090910557.Spec : Prop :=
  ∀ n, P12682149607090910557.a n = A158447 (n + 1)

end A158447

/-! ## A158447.P6707808451109257055

`Δ[A005902(n)-A016777(n)]`
-/

namespace A158447.P6707808451109257055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158447.P6707808451109257055

namespace A158447

/-- `Δ[A005902(n)-A016777(n)]` -/
def P6707808451109257055.Spec : Prop :=
  ∀ n, P6707808451109257055.a n = A158447 (n + 1)

end A158447

/-! ## A158447.P4950326199210995501

`A369113(A008602(n+1))`
-/

namespace A158447.P4950326199210995501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369113 (A008602 (n + 1)).toNat

end

end A158447.P4950326199210995501

namespace A158447

/-- `A369113(A008602(n+1))` -/
def P4950326199210995501.Spec : Prop :=
  ∀ n, P4950326199210995501.a n = A158447 (n + 1)

end A158447

/-!
# A158448: a(n) equals the number of admissible pairs of subsets of {1,2,...,n} in the notation of Marzuola-Miller.

The programs for A158448, there is no canonical definition to state claims against.
-/

/-! ## A158448.P9284047037503544228

`A384320(A155996(n))`
-/

namespace A158448.P9284047037503544228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384320 (A155996 n).toNat

end

end A158448.P9284047037503544228

/-! ## A158448.P5598497848675636185

`A124455(A262765(n+2))`
-/

namespace A158448.P5598497848675636185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (A262765 (n + 2)).toNat

end

end A158448.P5598497848675636185

/-! ## A158448.P2737880843315846228

`A100133(n)-A289057(A005700(n))`
-/

namespace A158448.P2737880843315846228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100133 n - A289057 (A005700 n).toNat

end

end A158448.P2737880843315846228

/-!
# A158449: The number of sigma-admissible subsets of {1,2,...,n} as defined by Marzuola-Miller.

The programs for A158449, there is no canonical definition to state claims against.
-/

/-! ## A158449.P8397715713472285949

`A066062(n)-Δ[A066062(n)]`
-/

namespace A158449.P8397715713472285949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066062 n - (f1 (n + 1) - f1 n)

end

end A158449.P8397715713472285949

/-! ## A158449.P9239160295070310164

`A008929(n+2)-Δ[A008929(n+2)]`
-/

namespace A158449.P9239160295070310164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008929 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008929 (n + 2) - (f1 (n + 1) - f1 n)

end

end A158449.P9239160295070310164

/-! ## A158449.P16384726897839119070

`2*A008929(n+2)-A008929(n+3)`
-/

namespace A158449.P16384726897839119070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008929 (n + 2) - A008929 (n + 3)

end

end A158449.P16384726897839119070

/-! ## A158449.P12621435622994297717

`A066062(n)+A066062(n)-A066062(n+1)`
-/

namespace A158449.P12621435622994297717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066062 n + (A066062 n - A066062 (n + 1))

end

end A158449.P12621435622994297717

/-! ## A158449.P13917236477775437877

`A004277(A066062(n))-A066062(n+1)`
-/

namespace A158449.P13917236477775437877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A066062 n).toNat - A066062 (n + 1)

end

end A158449.P13917236477775437877

/-!
# A158450: Number of spanning forests in 3 X n grid.

The programs for A158450, there is no canonical definition to state claims against.
-/

/-! ## A158450.P5638662955556713107

`A360194(∑[n+2]-1)`
-/

namespace A158450.P5638662955556713107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360194 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A158450.P5638662955556713107

/-! ## A158450.P10602335302509511884

`record[gcd(A360174(n), A360194(n+3))]`
-/

namespace A158450.P10602335302509511884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A360174 n) (A360194 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158450.P10602335302509511884

/-! ## A158450.P7899929417674659133

`record[gcd(A360177(n+3), A360194(n+1))]`
-/

namespace A158450.P7899929417674659133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A360177 (n + 3)) (A360194 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158450.P7899929417674659133

/-!
# A158453: Number of connected spanning subgraphs in 3 X n grid.

The programs for A158453, there is no canonical definition to state claims against.
-/

/-! ## A158453.P18098077774439581818

`A013823(n)-A359988(n+1)`
-/

namespace A158453.P18098077774439581818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013823 n - A359988 (n + 1)

end

end A158453.P18098077774439581818

/-! ## A158453.P11204767967681742500

`A359993(A167614(n+1))`
-/

namespace A158453.P11204767967681742500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 (A167614 (n + 1)).toNat

end

end A158453.P11204767967681742500

/-! ## A158453.P7157007013863397972

`A359993(A141214(n)+1)`
-/

namespace A158453.P7157007013863397972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 (A141214 n + 1).toNat

end

end A158453.P7157007013863397972

/-! ## A158453.P12460988667017412732

`A359993(A373663(n+1))`
-/

namespace A158453.P12460988667017412732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 (A373663 (n + 1)).toNat

end

end A158453.P12460988667017412732

/-! ## A158453.P14704465664078204314

`A359993(A034856(n+2))`
-/

namespace A158453.P14704465664078204314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359993 (A034856 (n + 2)).toNat

end

end A158453.P14704465664078204314

/-!
# A158454: Riordan array (1/(1-x^2), x/(1+x)^2).

The programs for A158454, there is no canonical definition to state claims against.
-/

/-! ## A158454.P15361243515574132558

`A267483(2*n)`
-/

namespace A158454.P15361243515574132558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267483 (2 * n)

end

end A158454.P15361243515574132558

/-! ## A158454.P718738671182646538

`A267483(n+n)+A000007(n+1)`
-/

namespace A158454.P718738671182646538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267483 (n + n) + A000007 (n + 1)

end

end A158454.P718738671182646538

/-! ## A158454.P7820005795755551063

`A267483(n+n)+A051584(A000040(n+1))`
-/

namespace A158454.P7820005795755551063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267483 (n + n) + A051584 (A000040 (n + 1)).toNat

end

end A158454.P7820005795755551063

/-! ## A158454.P13219326691125249192

`A267483(n+n)%A000032(n)`
-/

namespace A158454.P13219326691125249192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267483 (n + n)) (A000032 n)

end

end A158454.P13219326691125249192

/-! ## A158454.P17429999689014921112

`A267483(n+n)/A307047(∑[n])`
-/

namespace A158454.P17429999689014921112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267483 (n + n) : ℚ) / (A307047 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A158454.P17429999689014921112

/-!
# A158455: a(n) = 2^(n-1)*(n-1)!*(4*n+1).

The programs for A158455, the canonical program `A158455.P13344401091115323685` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158455 has offset 1).

The definition of A158455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*n!*(4*(n+1)+1)` (program `A158455.P13344401091115323685`, by `A158455.P13344401091115323685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158455.P13344401091115323685

`2^n*n!*(4*(n+1)+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158455

/-- `2^n*n!*(4*(n+1)+1)` -/
def P13344401091115323685.Spec : Prop :=
  ∀ n, (P13344401091115323685.a n : ℤ) = A158455 (n + 1)

theorem P13344401091115323685.correct : P13344401091115323685.Spec := by
  intro n
  simp only [A158455, Nat.add_sub_cancel]

end A158455

/-! ## A158455.P17470911475182718612

`(4*n+5)*2^n*n!`
-/

namespace A158455.P17470911475182718612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 5) * (2 ^ n * Nat.factorial n)

end

end A158455.P17470911475182718612

namespace A158455

/-- `(4*n+5)*2^n*n!` -/
def P17470911475182718612.Spec : Prop :=
  ∀ n, (P17470911475182718612.a n : ℤ) = A158455 (n + 1)

theorem P17470911475182718612.correct : P17470911475182718612.Spec := by
  intro n
  simp only [A158455, Nat.add_sub_cancel, A158455.P17470911475182718612.a, A158455.P13344401091115323685.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A158455

/-! ## A158455.P6904036584318621449

`(4*n+5)*∏[floor(2/acot(n))]`
-/

namespace A158455.P6904036584318621449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A158455.P6904036584318621449

namespace A158455

/-- `(4*n+5)*∏[floor(2/acot(n))]` -/
def P6904036584318621449.Spec : Prop :=
  ∀ n, P6904036584318621449.a n = A158455 (n + 1)

end A158455

/-! ## A158455.P11087914533377939230

`A000165(n)*(4*n+5)`
-/

namespace A158455.P11087914533377939230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * (4 * n + 5 : ℤ)

end

end A158455.P11087914533377939230

namespace A158455

/-- `A000165(n)*(4*n+5)` -/
def P11087914533377939230.Spec : Prop :=
  ∀ n, P11087914533377939230.a n = A158455 (n + 1)

end A158455

/-! ## A158455.P9886100654105114123

`∏[A004277(n)]*(4*n+5)`
-/

namespace A158455.P9886100654105114123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (4 * n + 5 : ℤ)

end

end A158455.P9886100654105114123

namespace A158455

/-- `∏[A004277(n)]*(4*n+5)` -/
def P9886100654105114123.Spec : Prop :=
  ∀ n, P9886100654105114123.a n = A158455 (n + 1)

end A158455

/-! ## A158455.P15807417695156917750

`A006882(2*n)*(4*n+5)`
-/

namespace A158455.P15807417695156917750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * n) * (4 * n + 5 : ℤ)

end

end A158455.P15807417695156917750

namespace A158455

/-- `A006882(2*n)*(4*n+5)` -/
def P15807417695156917750.Spec : Prop :=
  ∀ n, P15807417695156917750.a n = A158455 (n + 1)

end A158455

/-! ## A158455.P6825576481243914359

`∏[A028310(2*n)]*(4*n+5)`
-/

namespace A158455.P6825576481243914359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (4 * n + 5 : ℤ)

end

end A158455.P6825576481243914359

namespace A158455

/-- `∏[A028310(2*n)]*(4*n+5)` -/
def P6825576481243914359.Spec : Prop :=
  ∀ n, P6825576481243914359.a n = A158455 (n + 1)

end A158455

/-! ## A158455.P9765088538927779401

`A032184(n+2)+A000165(n)`
-/

namespace A158455.P9765088538927779401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032184 (n + 2) + A000165 n

end

end A158455.P9765088538927779401

namespace A158455

/-- `A032184(n+2)+A000165(n)` -/
def P9765088538927779401.Spec : Prop :=
  ∀ n, P9765088538927779401.a n = A158455 (n + 1)

end A158455

/-! ## A158455.P13109898663032227825

`A066318(n+2)+A000165(n)`
-/

namespace A158455.P13109898663032227825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066318 (n + 2) + A000165 n

end

end A158455.P13109898663032227825

namespace A158455

/-- `A066318(n+2)+A000165(n)` -/
def P13109898663032227825.Spec : Prop :=
  ∀ n, P13109898663032227825.a n = A158455 (n + 1)

end A158455

/-! ## A158455.P5249787521121238985

`(A004767(n)+2)*A000165(n)`
-/

namespace A158455.P5249787521121238985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004767 n + 2) * A000165 n

end

end A158455.P5249787521121238985

namespace A158455

/-- `(A004767(n)+2)*A000165(n)` -/
def P5249787521121238985.Spec : Prop :=
  ∀ n, P5249787521121238985.a n = A158455 (n + 1)

end A158455

/-!
# A158456: Signature sequence for log(3)/log(2).

The programs for A158456, there is no canonical definition to state claims against.
-/

/-! ## A158456.P8425646005408683655

`A022328(n+1)+1`
-/

namespace A158456.P8425646005408683655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1) + 1

end

end A158456.P8425646005408683655

/-! ## A158456.P1440855258423767585

`val(A033845(n+1), 2)`
-/

namespace A158456.P1440855258423767585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033845 (n + 1)).toNat 2

end

end A158456.P1440855258423767585

/-! ## A158456.P8316560175973346845

`val(∑[A061987(n)], 2)+1`
-/

namespace A158456.P8316560175973346845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A158456.P8316560175973346845

/-! ## A158456.P80462904550962522

`val(Δ[A259823(n)], 2)+1`
-/

namespace A158456.P80462904550962522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2 + 1

end

end A158456.P80462904550962522

/-! ## A158456.P6395724314416777347

`1+val(A003586(n+1), 2)`
-/

namespace A158456.P6395724314416777347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.valuation (A003586 (n + 1)).toNat 2

end

end A158456.P6395724314416777347

/-! ## A158456.P2526000531686253194

`val(A065119(n+1), 2)+1`
-/

namespace A158456.P2526000531686253194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065119 (n + 1)).toNat 2 + 1

end

end A158456.P2526000531686253194

/-! ## A158456.P18153950347300104743

`A227861(n+1)-A134583(n+1)`
-/

namespace A158456.P18153950347300104743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227861 (n + 1) - A134583 (n + 1)

end

end A158456.P18153950347300104743

/-! ## A158456.P15088854899239576104

`A086416(n+1)/A134583(n+1)`
-/

namespace A158456.P15088854899239576104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086416 (n + 1) : ℚ) / (A134583 (n + 1) : ℚ)

end

end A158456.P15088854899239576104

/-! ## A158456.P11115703933879176542

`A069352(n+1)+1-A022329(n+1)`
-/

namespace A158456.P11115703933879176542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1) + (1 - A022329 (n + 1))

end

end A158456.P11115703933879176542

/-! ## A158456.P8673323485290479239

`val(A007694(n+2), 2)`
-/

namespace A158456.P8673323485290479239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007694 (n + 2)).toNat 2

end

end A158456.P8673323485290479239

/-! ## A158456.P3399864571562592851

`val(A187778(n+2), 2)`
-/

namespace A158456.P3399864571562592851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A187778 (n + 2)).toNat 2

end

end A158456.P3399864571562592851

/-! ## A158456.P10332244567850693242

`val(A063755(n+2), 4)`
-/

namespace A158456.P10332244567850693242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063755 (n + 2)).toNat 4

end

end A158456.P10332244567850693242

/-! ## A158456.P17371391110998172419

`A134583(A372744(n+1))`
-/

namespace A158456.P17371391110998172419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134583 (A372744 (n + 1)).toNat

end

end A158456.P17371391110998172419

/-! ## A158456.P10317714051062129003

`val(A000423(n+3), 2)`
-/

namespace A158456.P10317714051062129003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000423 (n + 3)).toNat 2

end

end A158456.P10317714051062129003

/-! ## A158456.P14687330613899096703

`A000005(gcd(2^n, A003586(n+1)))`
-/

namespace A158456.P14687330613899096703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (2 ^ n : ℤ) (A003586 (n + 1)))

end

end A158456.P14687330613899096703

/-! ## A158456.P940365718258122652

`A000005(A003586(n+1))/A134583(n+1)`
-/

namespace A158456.P940365718258122652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A003586 (n + 1)).toNat : ℚ) / (A134583 (n + 1) : ℚ)

end

end A158456.P940365718258122652

/-! ## A158456.P1735376519936125216

`A001222(A003586(n+1))+1-A022329(n+1)`
-/

namespace A158456.P1735376519936125216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003586 (n + 1)).toNat + (1 - A022329 (n + 1))

end

end A158456.P1735376519936125216

/-!
# A158458: Numbers k such that k + bigomega(k) is prime.

The programs for A158458, the canonical program `A158458.P15651152556799792412` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158458 has offset 1).

The definition of A158458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158458.P12386576789985229141

`eq[2, A000005(A001222(abs(1-n)+1)+n)]`
-/

namespace A158458.P12386576789985229141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001222 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158458.P12386576789985229141

namespace A158458

/-- `eq[2, A000005(A001222(abs(1-n)+1)+n)]` -/
def P12386576789985229141.Spec : Prop :=
  ∀ n, (P12386576789985229141.a n : ℤ) = A158458 (n + 1)

end A158458

/-! ## A158458.P15651152556799792412

`eq[1, A001222(A001222(n+1)+1+n)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A158458

/-- `eq[1, A001222(A001222(n+1)+1+n)]+1` -/
def P15651152556799792412.Spec : Prop :=
  ∀ n, (P15651152556799792412.a n : ℤ) = A158458 (n + 1)

theorem P15651152556799792412.correct : P15651152556799792412.Spec := by
  intro n
  simp only [A158458, Nat.add_sub_cancel]

end A158458

/-! ## A158458.P12281988536899105132

`eq[1, ∑{e}[∑{e}[n, #]+n, #]]`
-/

namespace A158458.P12281988536899105132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158458.P12281988536899105132

namespace A158458

/-- `eq[1, ∑{e}[∑{e}[n, #]+n, #]]` -/
def P12281988536899105132.Spec : Prop :=
  ∀ n, (P12281988536899105132.a n : ℤ) = A158458 (n + 1)

end A158458

/-! ## A158458.P13055214464278125583

`lt[A039651(∑{e}[n+1, #]+n+1), 1]+1`
-/

namespace A158458.P13055214464278125583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A158458.P13055214464278125583

namespace A158458

/-- `lt[A039651(∑{e}[n+1, #]+n+1), 1]+1` -/
def P13055214464278125583.Spec : Prop :=
  ∀ n, (P13055214464278125583.a n : ℤ) = A158458 (n + 1)

end A158458

/-! ## A158458.P11964292214599522177

`eq[2, A000005(A073093(n+1)+n)]+1`
-/

namespace A158458.P11964292214599522177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073093 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A158458.P11964292214599522177

namespace A158458

/-- `eq[2, A000005(A073093(n+1)+n)]+1` -/
def P11964292214599522177.Spec : Prop :=
  ∀ n, (P11964292214599522177.a n : ℤ) = A158458 (n + 1)

end A158458

/-! ## A158458.P16004175966966091636

`record[n+1-A094472(A001222(n+1)+n+1)]`
-/

namespace A158458.P16004175966966091636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A094472 (A001222 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158458.P16004175966966091636

namespace A158458

/-- `record[n+1-A094472(A001222(n+1)+n+1)]` -/
def P16004175966966091636.Spec : Prop :=
  ∀ n, P16004175966966091636.a n = A158458 (n + 1)

end A158458

/-!
# A158459: Period 4: repeat [0, 3, 2, 1].

The programs for A158459, the canonical program `A158459.P8660900767268194101` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158459 has offset 0).

The definition of A158459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158459.P8660900767268194101

`a(n-4)` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158459

/-- `a(n-4)` -/
def P8660900767268194101.Spec : Prop :=
  ∀ n, (P8660900767268194101.a n : ℤ) = A158459 n

theorem P8660900767268194101.correct : P8660900767268194101.Spec := by
  intro n
  simp only [A158459]

end A158459

/-!
# A158461: A102370(n) mod 3 .

The programs for A158461, there is no canonical definition to state claims against.
-/

/-! ## A158461.P8965996561270040617

`A102370(n)%3`
-/

namespace A158461.P8965996561270040617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102370 n) 3

end

end A158461.P8965996561270040617

/-! ## A158461.P15652651111337683050

`A159060(n)%3`
-/

namespace A158461.P15652651111337683050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159060 n) 3

end

end A158461.P15652651111337683050

/-! ## A158461.P17589701771480658802

`A159067(n)%3`
-/

namespace A158461.P17589701771480658802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159067 n) 3

end

end A158461.P17589701771480658802

/-! ## A158461.P14625096736311088914

`A159963(n)%3`
-/

namespace A158461.P14625096736311088914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159963 n) 3

end

end A158461.P14625096736311088914

/-! ## A158461.P15750484607969854944

`(n-A103185(n))%3`
-/

namespace A158461.P15750484607969854944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A103185 n) 3

end

end A158461.P15750484607969854944

/-! ## A158461.P6568630006769538019

`(A105228(n+1)-1)%3`
-/

namespace A158461.P6568630006769538019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105228 (n + 1) - 1) 3

end

end A158461.P6568630006769538019

/-! ## A158461.P5941345949825030231

`A010872(n-A103185(n))`
-/

namespace A158461.P5941345949825030231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((n : ℤ) - A103185 n).toNat

end

end A158461.P5941345949825030231

/-! ## A158461.P14950295316907175874

`A010875(2*A102370(n))/2`
-/

namespace A158461.P14950295316907175874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010875 (2 * A102370 n).toNat : ℚ) / 2

end

end A158461.P14950295316907175874

/-! ## A158461.P5865179225876599964

`(∑[A104378(n)]-A104378(n))%(-3)`
-/

namespace A158461.P5865179225876599964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A104378 n) (-3)

end

end A158461.P5865179225876599964

/-! ## A158461.P16993827521084699847

`(2*A103185(n)+n)%(3%A000124(n+6))`
-/

namespace A158461.P16993827521084699847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A103185 n + (n : ℤ)) (Int.tmod 3 (A000124 (n + 6)))

end

end A158461.P16993827521084699847

/-! ## A158461.P2346630565922331513

`A010872(A159963(n))`
-/

namespace A158461.P2346630565922331513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A159963 n).toNat

end

end A158461.P2346630565922331513

/-! ## A158461.P7818034518520599713

`A105027(comp[∑[2^n]])%3`
-/

namespace A158461.P7818034518520599713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 3

end

end A158461.P7818034518520599713

/-! ## A158461.P1340341645283500399

`A010872(A102370(n))`
-/

namespace A158461.P1340341645283500399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A102370 n).toNat

end

end A158461.P1340341645283500399

/-! ## A158461.P6430249412590183042

`A010872(2*A103185(n)+n)`
-/

namespace A158461.P6430249412590183042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * A103185 n + (n : ℤ)).toNat

end

end A158461.P6430249412590183042

/-! ## A158461.P3553525111227761551

`A000578(2*A103185(n)+n)%3`
-/

namespace A158461.P3553525111227761551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (2 * A103185 n + (n : ℤ)).toNat) 3

end

end A158461.P3553525111227761551

/-! ## A158461.P10960374526106773697

`A001015(2*A103185(n)+n)%3`
-/

namespace A158461.P10960374526106773697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001015 (2 * A103185 n + (n : ℤ)).toNat) 3

end

end A158461.P10960374526106773697

/-! ## A158461.P13997962120266184201

`A158459(n-A002264(A102370(n)))`
-/

namespace A158461.P13997962120266184201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 ((n : ℤ) - A002264 (A102370 n).toNat).toNat

end

end A158461.P13997962120266184201

/-! ## A158461.P9383704631918145176

`A010872(A103185(n)+A103185(n)+n)`
-/

namespace A158461.P9383704631918145176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A103185 n + (A103185 n + (n : ℤ))).toNat

end

end A158461.P9383704631918145176

/-!
# A158462: a(n) = 36*n^2 - 6.

The programs for A158462, the canonical program `A158462.P6216805547940033243` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158462 has offset 1).

The definition of A158462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²-6` (program `A158462.P6216805547940033243`, by `A158462.P6216805547940033243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158462.P6216805547940033243

`36*(n+1)²-6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158462

/-- `36*(n+1)²-6` -/
def P6216805547940033243.Spec : Prop :=
  ∀ n, P6216805547940033243.a n = A158462 (n + 1)

theorem P6216805547940033243.correct : P6216805547940033243.Spec := by
  intro n
  simp only [A158462, Nat.add_sub_cancel]

end A158462

/-! ## A158462.P12904769391122444639

`6*A140811(n+1)`
-/

namespace A158462.P12904769391122444639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A140811 (n + 1)

end

end A158462.P12904769391122444639

namespace A158462

/-- `6*A140811(n+1)` -/
def P12904769391122444639.Spec : Prop :=
  ∀ n, P12904769391122444639.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P10135250121121490972

`record[(6*(1-n))²-6]`
-/

namespace A158462.P10135250121121490972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (1 - (n : ℤ))) ^ 2 - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158462.P10135250121121490972

namespace A158462

/-- `record[(6*(1-n))²-6]` -/
def P10135250121121490972.Spec : Prop :=
  ∀ n, P10135250121121490972.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P523896781005759094

`3*(4*∑[ogf((3+3x)/(1-2x+x^2))]-2)`
-/

namespace A158462.P523896781005759094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j) - 2)

end

end A158462.P523896781005759094

namespace A158462

/-- `3*(4*∑[ogf((3+3x)/(1-2x+x^2))]-2)` -/
def P523896781005759094.Spec : Prop :=
  ∀ n, P523896781005759094.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P1728817522827723373

`abs(5-A136017(n+1))`
-/

namespace A158462.P1728817522827723373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A136017 (n + 1)|

end

end A158462.P1728817522827723373

namespace A158462

/-- `abs(5-A136017(n+1))` -/
def P1728817522827723373.Spec : Prop :=
  ∀ n, P1728817522827723373.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P6129214494169230776

`2*(A157910(n+1)-2)`
-/

namespace A158462.P6129214494169230776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157910 (n + 1) - 2)

end

end A158462.P6129214494169230776

namespace A158462

/-- `2*(A157910(n+1)-2)` -/
def P6129214494169230776.Spec : Prop :=
  ∀ n, P6129214494169230776.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P8176485907547189014

`3*(A135453(n+1)-2)`
-/

namespace A158462.P8176485907547189014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A135453 (n + 1) - 2)

end

end A158462.P8176485907547189014

namespace A158462

/-- `3*(A135453(n+1)-2)` -/
def P8176485907547189014.Spec : Prop :=
  ∀ n, P8176485907547189014.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P7465977528200551822

`2*(A195321(n+1)-3)`
-/

namespace A158462.P7465977528200551822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195321 (n + 1) - 3)

end

end A158462.P7465977528200551822

namespace A158462

/-- `2*(A195321(n+1)-3)` -/
def P7465977528200551822.Spec : Prop :=
  ∀ n, P7465977528200551822.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P14077846189795203152

`2*(A157889(n+1)-4)`
-/

namespace A158462.P14077846189795203152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157889 (n + 1) - 4)

end

end A158462.P14077846189795203152

namespace A158462

/-- `2*(A157889(n+1)-4)` -/
def P14077846189795203152.Spec : Prop :=
  ∀ n, P14077846189795203152.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P14195439386063411101

`3*(A158480(n+1)-3)`
-/

namespace A158462.P14195439386063411101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A158480 (n + 1) - 3)

end

end A158462.P14195439386063411101

namespace A158462

/-- `3*(A158480(n+1)-3)` -/
def P14195439386063411101.Spec : Prop :=
  ∀ n, P14195439386063411101.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P13108049154291900379

`6*(6*A005563(n)+5)`
-/

namespace A158462.P13108049154291900379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (6 * A005563 n + 5)

end

end A158462.P13108049154291900379

namespace A158462

/-- `6*(6*A005563(n)+5)` -/
def P13108049154291900379.Spec : Prop :=
  ∀ n, P13108049154291900379.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P4244523905847104958

`3*(∑[4*A016945(n)]-2)`
-/

namespace A158462.P4244523905847104958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A158462.P4244523905847104958

namespace A158462

/-- `3*(∑[4*A016945(n)]-2)` -/
def P4244523905847104958.Spec : Prop :=
  ∀ n, P4244523905847104958.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P15943400516917967915

`2*(A141759(n)+A054000(n+1))`
-/

namespace A158462.P15943400516917967915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141759 n + A054000 (n + 1))

end

end A158462.P15943400516917967915

namespace A158462

/-- `2*(A141759(n)+A054000(n+1))` -/
def P15943400516917967915.Spec : Prop :=
  ∀ n, P15943400516917967915.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P6528443834375526697

`A158669(n+1)%A136017(n+1)`
-/

namespace A158462.P6528443834375526697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158669 (n + 1)) (A136017 (n + 1))

end

end A158462.P6528443834375526697

namespace A158462

/-- `A158669(n+1)%A136017(n+1)` -/
def P6528443834375526697.Spec : Prop :=
  ∀ n, P6528443834375526697.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P10172286611057860827

`A158683(n+1)%A158596(n+1)`
-/

namespace A158462.P10172286611057860827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158683 (n + 1)) (A158596 (n + 1))

end

end A158462.P10172286611057860827

namespace A158462

/-- `A158683(n+1)%A158596(n+1)` -/
def P10172286611057860827.Spec : Prop :=
  ∀ n, P10172286611057860827.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P17674758406499081245

`A158729(n+1)%A158598(n+1)`
-/

namespace A158462.P17674758406499081245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158729 (n + 1)) (A158598 (n + 1))

end

end A158462.P17674758406499081245

namespace A158462

/-- `A158729(n+1)%A158598(n+1)` -/
def P17674758406499081245.Spec : Prop :=
  ∀ n, P17674758406499081245.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P4760514829328217956

`A158737(n+1)%A158626(n+1)`
-/

namespace A158462.P4760514829328217956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158737 (n + 1)) (A158626 (n + 1))

end

end A158462.P4760514829328217956

namespace A158462

/-- `A158737(n+1)%A158626(n+1)` -/
def P4760514829328217956.Spec : Prop :=
  ∀ n, P4760514829328217956.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P586687676542348804

`A158764(n+1)%A158628(n+1)`
-/

namespace A158462.P586687676542348804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158764 (n + 1)) (A158628 (n + 1))

end

end A158462.P586687676542348804

namespace A158462

/-- `A158764(n+1)%A158628(n+1)` -/
def P586687676542348804.Spec : Prop :=
  ∀ n, P586687676542348804.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P1944633648428429732

`A158773(n+1)%A158634(n+1)`
-/

namespace A158462.P1944633648428429732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158773 (n + 1)) (A158634 (n + 1))

end

end A158462.P1944633648428429732

namespace A158462

/-- `A158773(n+1)%A158634(n+1)` -/
def P1944633648428429732.Spec : Prop :=
  ∀ n, P1944633648428429732.a n = A158462 (n + 1)

end A158462

/-! ## A158462.P4209721287593562248

`Δ[n*A277980(n)]`
-/

namespace A158462.P4209721287593562248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158462.P4209721287593562248

namespace A158462

/-- `Δ[n*A277980(n)]` -/
def P4209721287593562248.Spec : Prop :=
  ∀ n, P4209721287593562248.a n = A158462 (n + 1)

end A158462

/-!
# A158463: a(n) = 12*n^2 - 1.

The programs for A158463, the canonical program `A158463.P7007655217700314725` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158463 has offset 0).

The definition of A158463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²-1` (program `A158463.P7007655217700314725`, by `A158463.P7007655217700314725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158463.P7007655217700314725

`12*n²-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158463

/-- `12*n²-1` -/
def P7007655217700314725.Spec : Prop :=
  ∀ n, P7007655217700314725.a n = A158463 n

theorem P7007655217700314725.correct : P7007655217700314725.Spec := by
  intro n
  simp only [A158463]

end A158463

/-! ## A158463.P4142312287993286736

`-or(1, -(12*n²))`
-/

namespace A158463.P4142312287993286736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(12 * n ^ 2 : ℤ))

end

end A158463.P4142312287993286736

namespace A158463

/-- `-or(1, -(12*n²))` -/
def P4142312287993286736.Spec : Prop :=
  ∀ n, P4142312287993286736.a n = A158463 n

end A158463

/-! ## A158463.P10592528479000064078

`-xor(1, -(12*n²))`
-/

namespace A158463.P10592528479000064078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(12 * n ^ 2 : ℤ))

end

end A158463.P10592528479000064078

namespace A158463

/-- `-xor(1, -(12*n²))` -/
def P10592528479000064078.Spec : Prop :=
  ∀ n, P10592528479000064078.a n = A158463 n

end A158463

/-! ## A158463.P6542916161382495564

`or(1, n*12*n-1)`
-/

namespace A158463.P6542916161382495564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n * (12 * n) : ℤ) - 1)

end

end A158463.P6542916161382495564

namespace A158463

/-- `or(1, n*12*n-1)` -/
def P6542916161382495564.Spec : Prop :=
  ∀ n, P6542916161382495564.a n = A158463 n

end A158463

/-! ## A158463.P18328563347113070447

`∑[a(n-1)+24]` with `a(0)=-1, a(1)=12`
-/

namespace A158463.P18328563347113070447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 12] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158463.P18328563347113070447

namespace A158463

/-- `∑[a(n-1)+24]` -/
def P18328563347113070447.Spec : Prop :=
  ∀ n, P18328563347113070447.a n = A158463 n

end A158463

/-! ## A158463.P6946906811565114038

`Δ[3*C(2*n, 3)-n]`
-/

namespace A158463.P6946906811565114038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (2 * n) 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158463.P6946906811565114038

namespace A158463

/-- `Δ[3*C(2*n, 3)-n]` -/
def P6946906811565114038.Spec : Prop :=
  ∀ n, P6946906811565114038.a n = A158463 n

end A158463

/-! ## A158463.P16211651075912706983

`xor(1, 2*(n*2*3*n-1))`
-/

namespace A158463.P16211651075912706983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ((n * (2 * (3 * n)) : ℤ) - 1))

end

end A158463.P16211651075912706983

namespace A158463

/-- `xor(1, 2*(n*2*3*n-1))` -/
def P16211651075912706983.Spec : Prop :=
  ∀ n, P16211651075912706983.a n = A158463 n

end A158463

/-! ## A158463.P1316135935078284424

`Δ[(lcm(2*n+1, 2*n)+5)*(n-2)]`
-/

namespace A158463.P1316135935078284424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (2 * n) + 5 : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158463.P1316135935078284424

namespace A158463

/-- `Δ[(lcm(2*n+1, 2*n)+5)*(n-2)]` -/
def P1316135935078284424.Spec : Prop :=
  ∀ n, P1316135935078284424.a n = A158463 n

end A158463

/-! ## A158463.P3621146306499541553

`(A195824(n)-2)/2`
-/

namespace A158463.P3621146306499541553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195824 n - 2 : ℚ) / 2

end

end A158463.P3621146306499541553

namespace A158463

/-- `(A195824(n)-2)/2` -/
def P3621146306499541553.Spec : Prop :=
  ∀ n, P3621146306499541553.a n = (A158463 n : ℚ)

end A158463

/-! ## A158463.P11593227772225103368

`(A158547(n)-3)/2`
-/

namespace A158463.P11593227772225103368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158547 n - 3 : ℚ) / 2

end

end A158463.P11593227772225103368

namespace A158463

/-- `(A158547(n)-3)/2` -/
def P11593227772225103368.Spec : Prop :=
  ∀ n, P11593227772225103368.a n = (A158463 n : ℚ)

end A158463

/-! ## A158463.P17650189449066145205

`(A016910(n)-3)/3`
-/

namespace A158463.P17650189449066145205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016910 n - 3 : ℚ) / 3

end

end A158463.P17650189449066145205

namespace A158463

/-- `(A016910(n)-3)/3` -/
def P17650189449066145205.Spec : Prop :=
  ∀ n, P17650189449066145205.a n = (A158463 n : ℚ)

end A158463

/-! ## A158463.P14053024880056282946

`(A065532(n)-3)/4`
-/

namespace A158463.P14053024880056282946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065532 n - 3 : ℚ) / 4

end

end A158463.P14053024880056282946

namespace A158463

/-- `(A065532(n)-3)/4` -/
def P14053024880056282946.Spec : Prop :=
  ∀ n, P14053024880056282946.a n = (A158463 n : ℚ)

end A158463

/-! ## A158463.P8480488942740490835

`(A158591(n)-4)/3`
-/

namespace A158463.P8480488942740490835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158591 n - 4 : ℚ) / 3

end

end A158463.P8480488942740490835

namespace A158463

/-- `(A158591(n)-4)/3` -/
def P8480488942740490835.Spec : Prop :=
  ∀ n, P8480488942740490835.a n = (A158463 n : ℚ)

end A158463

/-! ## A158463.P17999508267304992012

`(A158638(n)-5)/4`
-/

namespace A158463.P17999508267304992012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158638 n - 5 : ℚ) / 4

end

end A158463.P17999508267304992012

namespace A158463

/-- `(A158638(n)-5)/4` -/
def P17999508267304992012.Spec : Prop :=
  ∀ n, P17999508267304992012.a n = (A158463 n : ℚ)

end A158463

/-! ## A158463.P4201489578676529893

`Δ[A141530(n)+n]`
-/

namespace A158463.P4201489578676529893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141530 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158463.P4201489578676529893

namespace A158463

/-- `Δ[A141530(n)+n]` -/
def P4201489578676529893.Spec : Prop :=
  ∀ n, P4201489578676529893.a n = A158463 n

end A158463

/-! ## A158463.P9892552917984062757

`Δ[A271828(n+1)-Δ[n²]]`
-/

namespace A158463.P9892552917984062757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271828 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158463.P9892552917984062757

namespace A158463

/-- `Δ[A271828(n+1)-Δ[n²]]` -/
def P9892552917984062757.Spec : Prop :=
  ∀ n, P9892552917984062757.a n = A158463 n

end A158463

/-! ## A158463.P6417973018572556128

`floor((12*n*A004277(2*n)-1)/4)`
-/

namespace A158463.P6417973018572556128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((12 * n : ℤ) * A004277 (2 * n) - 1 : ℚ) / 4⌋

end

end A158463.P6417973018572556128

namespace A158463

/-- `floor((12*n*A004277(2*n)-1)/4)` -/
def P6417973018572556128.Spec : Prop :=
  ∀ n, P6417973018572556128.a n = A158463 n

end A158463

/-! ## A158463.P1356589694843950640

`floor(A140811(2*n)/2)`
-/

namespace A158463.P1356589694843950640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140811 (2 * n) : ℚ) / 2⌋

end

end A158463.P1356589694843950640

namespace A158463

/-- `floor(A140811(2*n)/2)` -/
def P1356589694843950640.Spec : Prop :=
  ∀ n, P1356589694843950640.a n = A158463 n

end A158463

/-! ## A158463.P12035684474981739422

`A331952(4*n)`
-/

namespace A158463.P12035684474981739422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (4 * n)

end

end A158463.P12035684474981739422

namespace A158463

/-- `A331952(4*n)` -/
def P12035684474981739422.Spec : Prop :=
  ∀ n, P12035684474981739422.a n = A158463 n

end A158463

/-!
# A158464: Number of distinct squares in row n of Pascal's triangle.

The programs for A158464, there is no canonical definition to state claims against.
-/

/-! ## A158464.P15557940998313380782

`val(gcd(A039653(n), A324925(n)), 2)+1`
-/

namespace A158464.P15557940998313380782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd (A039653 n) (A324925 n)) 2 + 1

end

end A158464.P15557940998313380782

/-! ## A158464.P1332037286642626071

`A001511(gcd(A039653(n), A324925(n)))`
-/

namespace A158464.P1332037286642626071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.gcd (A039653 n) (A324925 n))

end

end A158464.P1332037286642626071

/-! ## A158464.P4561923502451975025

`A001511(or(A039653(n), A324925(n)))`
-/

namespace A158464.P4561923502451975025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A039653 n) (A324925 n)).toNat

end

end A158464.P4561923502451975025

/-! ## A158464.P12006345282788695914

`A007814(or(A039653(n), A324925(n)))+1`
-/

namespace A158464.P12006345282788695914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A039653 n) (A324925 n)).toNat + 1

end

end A158464.P12006345282788695914

/-! ## A158464.P17734950349684839341

`val(A004277(or(A039653(n), A324925(n))), 2)`
-/

namespace A158464.P17734950349684839341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (Int.lor (A039653 n) (A324925 n)).toNat).toNat 2

end

end A158464.P17734950349684839341

/-! ## A158464.P14343240053258367908

`A000041(C(A249355(n), A117137(n)))`
-/

namespace A158464.P14343240053258367908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose (A249355 n).toNat (A117137 n).toNat)

end

end A158464.P14343240053258367908

/-!
# A158465: Number of solutions to +-1+-2^4+-3^4+-4^4...+-n^4=0.

The programs for A158465, there is no canonical definition to state claims against.
-/

/-! ## A158465.P10156674625191556162

`2*A111253(n+1)`
-/

namespace A158465.P10156674625191556162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111253 (n + 1)

end

end A158465.P10156674625191556162

/-! ## A158465.P17224338243431580249

`A111253(C(n+1, n))/tan(acot(2))`
-/

namespace A158465.P17224338243431580249
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A111253 (Nat.choose (n + 1) n) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A158465.P17224338243431580249

/-! ## A158465.P4870517836278831832

`A021913(n)*A369629(n+1)`
-/

namespace A158465.P4870517836278831832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A369629 (n + 1)

end

end A158465.P4870517836278831832

/-! ## A158465.P1425088834638611625

`A369629(n+1)-A369732(n+1)`
-/

namespace A158465.P1425088834638611625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369629 (n + 1) - A369732 (n + 1)

end

end A158465.P1425088834638611625

/-! ## A158465.P8319521223834522778

`∑{e}[A111168(n+1), A111253(#+n)]`
-/

namespace A158465.P8319521223834522778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A111253 (Nat.factorization (f1 n).natAbs p + n)

end

end A158465.P8319521223834522778

/-! ## A158465.P8192414577688095692

`A111253(C(n+1, n))+A111253(n+1)`
-/

namespace A158465.P8192414577688095692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111253 (Nat.choose (n + 1) n) + A111253 (n + 1)

end

end A158465.P8192414577688095692

/-! ## A158465.P7616834900287357132

`∑{e}[A111153(n+1), A111253(n+1)/#]`
-/

namespace A158465.P7616834900287357132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A111253 (n + 1) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A158465.P7616834900287357132

/-! ## A158465.P14400413645072554061

`A111253(n+1)+A111253(Δ[n²]-n)`
-/

namespace A158465.P14400413645072554061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111253 (n + 1) + A111253 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A158465.P14400413645072554061

/-! ## A158465.P1853547654760934785

`A111253(n+1)/2^A008683(A142644(n+1))`
-/

namespace A158465.P1853547654760934785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111253 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ)

end

end A158465.P1853547654760934785

/-! ## A158465.P6053364738467081173

`A111253(n+1)+A111253(n+1)%A000322(n)`
-/

namespace A158465.P6053364738467081173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111253 (n + 1) + Int.tmod (A111253 (n + 1)) (A000322 n)

end

end A158465.P6053364738467081173

/-!
# A158466: Numerators of EH(n), the expected value of the height of a probabilistic skip list with n elements and p=1/2.

The programs for A158466, there is no canonical definition to state claims against.
-/

/-! ## A158466.P11099041116676046880

`A081677(∑[C(n, 2)+1])+∑[n]`
-/

namespace A158466.P11099041116676046880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081677 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A158466.P11099041116676046880

/-!
# A158467: Denominators of EH(n), the expected value of the height of a probabilistic skip list with n elements and p=1/2.

The programs for A158467, there is no canonical definition to state claims against.
-/

/-! ## A158467.P3651114878096075522

`A000265(lcm(n+1, A091669(n+1)))`
-/

namespace A158467.P3651114878096075522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm (n + 1 : ℤ) (A091669 (n + 1)))

end

end A158467.P3651114878096075522

/-! ## A158467.P5552370774465755470

`A000265(A091669(n+1)*A334438(n))`
-/

namespace A158467.P5552370774465755470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A091669 (n + 1) * A334438 n).toNat

end

end A158467.P5552370774465755470

/-! ## A158467.P8126399294544060313

`A000265(lcm(A091669(n+1), A334438(n)))`
-/

namespace A158467.P8126399294544060313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm (A091669 (n + 1)) (A334438 n))

end

end A158467.P8126399294544060313

/-!
# A158471: Stirling-like triangle by rows generated from (x-1)*(x-1)*(x-2)*(x-3)*(x-4)*...

The programs for A158471, there is no canonical definition to state claims against.
-/

/-! ## A158471.P2367282202825600159

`A054654(n)-A048994(∑[char[∑[n]]]²-n)`
-/

namespace A158471.P2367282202825600159
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 n - A048994 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A158471.P2367282202825600159

/-! ## A158471.P3311780800606039674

`Δ[A048994(A038722(n+1))]+C(2, n+2)`
-/

namespace A158471.P3311780800606039674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A158471.P3311780800606039674

/-! ## A158471.P3705131663751025698

`A000007(n)+Δ[A048994(A038722(n+1))]`
-/

namespace A158471.P3705131663751025698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A158471.P3705131663751025698

/-! ## A158471.P773712758474320268

`Δ[A057427(n)+A048994(A038722(n+1))]`
-/

namespace A158471.P773712758474320268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A048994 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158471.P773712758474320268

/-! ## A158471.P13084927299137150043

`Δ[A048994(A038722(n+1))-A054977(n)]`
-/

namespace A158471.P13084927299137150043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 1)).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158471.P13084927299137150043

/-! ## A158471.P11846338731870728680

`Δ[A048994(A038722(n+1))-A057428(n)]`
-/

namespace A158471.P11846338731870728680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 1)).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158471.P11846338731870728680

/-! ## A158471.P720486219547377808

`Δ[A048994(A038722(n+1))+A011594(n²)]`
-/

namespace A158471.P720486219547377808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 1)).toNat + A011594 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158471.P720486219547377808

/-! ## A158471.P8040513079292106770

`Δ[A048994(A054977(n)²*A038722(n+1))]`
-/

namespace A158471.P8040513079292106770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A054977 n ^ 2 * A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158471.P8040513079292106770

/-! ## A158471.P16622876162464100644

`Δ[A048994(A038722(n+1))+A000040(n+1)%2]`
-/

namespace A158471.P16622876162464100644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 1)).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158471.P16622876162464100644

/-!
# A158472: Triangle read by rows: n-th row is the expansion of the polynomial (x-F1)*(x-F2)*(x-F3)*...*(x-Fn).

The programs for A158472, there is no canonical definition to state claims against.
-/

/-! ## A158472.P2471039816809111687

`A158471(n)-A025465(A195382(n+1))`
-/

namespace A158472.P2471039816809111687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158471 n - A025465 (A195382 (n + 1)).toNat

end

end A158472.P2471039816809111687

/-! ## A158472.P4334591225127938083

`A158471(n)-A185284(A116478(n+1))`
-/

namespace A158472.P4334591225127938083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158471 n - A185284 (A116478 (n + 1)).toNat

end

end A158472.P4334591225127938083

/-! ## A158472.P16854064818158008404

`A158471(n)-A340998(A306186(n+1))`
-/

namespace A158472.P16854064818158008404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158471 n - A340998 ((A306186 (n + 1)).toNat + 140)

end

end A158472.P16854064818158008404

/-! ## A158472.P8895098692871513568

`A158471(A055645(n))`
-/

namespace A158472.P8895098692871513568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158471 (A055645 n).toNat

end

end A158472.P8895098692871513568

/-! ## A158472.P15840793414030129472

`A158471(A341709(n))`
-/

namespace A158472.P15840793414030129472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158471 (A341709 n).toNat

end

end A158472.P15840793414030129472

/-!
# A158473: Primes whose digit sum contains one or more digits of the same prime.

The programs for A158473, there is no canonical definition to state claims against.
-/

/-! ## A158473.P10046563823427250571

`p?[A108191(n+1)]`
-/

namespace A158473.P10046563823427250571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158473.P10046563823427250571

/-! ## A158473.P14060992209339554188

`p?[record[A108191(A158416(n))]]`
-/

namespace A158473.P14060992209339554188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108191 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158473.P14060992209339554188

/-! ## A158473.P17786581051927326632

`p?[record[A108191(A262519(n))]]`
-/

namespace A158473.P17786581051927326632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108191 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158473.P17786581051927326632

/-! ## A158473.P546290079539924132

`record[A111089(A108191(n+2))]`
-/

namespace A158473.P546290079539924132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A108191 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158473.P546290079539924132

/-! ## A158473.P3835525385302121906

`record[A006530(A108191(n+3))]`
-/

namespace A158473.P3835525385302121906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A108191 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158473.P3835525385302121906

/-! ## A158473.P11860125408444367148

`filter[A108191(n+2), A010051(#)]`
-/

namespace A158473.P11860125408444367148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158473.P11860125408444367148

/-! ## A158473.P6131014645895693140

`filter[A108191(n+3), A080339(#)]`
-/

namespace A158473.P6131014645895693140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108191 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A158473.P6131014645895693140

/-! ## A158473.P7323867389720596234

`∩[A000040(n+1), A108191(n+1)]`
-/

namespace A158473.P7323867389720596234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158473.P7323867389720596234

/-! ## A158473.P11534793489695246768

`∩[A106118(n+1), A108191(n+1)]`
-/

namespace A158473.P11534793489695246768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158473.P11534793489695246768

/-! ## A158473.P11539691081244908266

`∩[A108191(n+1), A240960(n+1)]`
-/

namespace A158473.P11539691081244908266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158473.P11539691081244908266

/-!
# A158474: Triangle read by rows generated from (x-1)*(x-2)*(x-4)*...

The programs for A158474, there is no canonical definition to state claims against.
-/

/-! ## A158474.P4356683303186768697

`A135950(∑[2*n]%comp[∑[n]])`
-/

namespace A158474.P4356683303186768697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135950 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A158474.P4356683303186768697

/-! ## A158474.P824655236660925146

`A135950(∑[char[∑[n]]]²-(n+1))`
-/

namespace A158474.P824655236660925146
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135950 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A158474.P824655236660925146

/-! ## A158474.P8969499644223613861

`A135950(A061579(n))^ceil(sin(n)²)`
-/

namespace A158474.P8969499644223613861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135950 (A061579 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A158474.P8969499644223613861

/-! ## A158474.P3238729601077958556

`A135950(A061579(n))/∑{e}[A091633(n+1), #]`
-/

namespace A158474.P3238729601077958556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135950 (A061579 n).toNat : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A158474.P3238729601077958556

/-! ## A158474.P14277818399186706146

`A135950(A061579(n))/A088705(A002731(n+1))`
-/

namespace A158474.P14277818399186706146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135950 (A061579 n).toNat : ℚ) / (A088705 (A002731 (n + 1)).toNat : ℚ)

end

end A158474.P14277818399186706146

/-! ## A158474.P11887452001461657861

`A135950(A061579(n))/A088705(A091633(n+1))`
-/

namespace A158474.P11887452001461657861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135950 (A061579 n).toNat : ℚ) / (A088705 (A091633 (n + 1)).toNat : ℚ)

end

end A158474.P11887452001461657861

/-!
# A158475: Denominator of Bernoulli(n, 1/7).

The programs for A158475, the canonical program `A158475.P13120440846538858082` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158475 has offset 0).

The definition of A158475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158475.P13120440846538858082

`lcm(7^n, A027642(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A158475

/-- `lcm(7^n, A027642(n))` -/
def P13120440846538858082.Spec : Prop :=
  ∀ n, (P13120440846538858082.a n : ℤ) = A158475 n

theorem P13120440846538858082.correct : P13120440846538858082.Spec := by
  intro n
  simp only [A158475]

end A158475

/-! ## A158475.P9150260782441237130

`lcm(A000420(n), A028310(A027642(n)))`
-/

namespace A158475.P9150260782441237130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000420 n) (A028310 (A027642 n).toNat)

end

end A158475.P9150260782441237130

namespace A158475

/-- `lcm(A000420(n), A028310(A027642(n)))` -/
def P9150260782441237130.Spec : Prop :=
  ∀ n, (P9150260782441237130.a n : ℤ) = A158475 n

end A158475

/-! ## A158475.P10339680207625207737

`A106608(A027642(n))/7^A001489(n)`
-/

namespace A158475.P10339680207625207737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106608 (A027642 n).toNat : ℚ) / (7 : ℚ) ^ (A001489 n : ℤ)

end

end A158475.P10339680207625207737

namespace A158475

/-- `A106608(A027642(n))/7^A001489(n)` -/
def P10339680207625207737.Spec : Prop :=
  ∀ n, P10339680207625207737.a n = (A158475 n : ℚ)

end A158475

/-!
# A158476: Lesser of twin pairs in A086006.

The programs for A158476, there is no canonical definition to state claims against.
-/

/-! ## A158476.P14398108755229529

`ceil(A242804(n+1)/2)`
-/

namespace A158476.P14398108755229529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A242804 (n + 1) : ℚ) / 2⌉

end

end A158476.P14398108755229529

/-! ## A158476.P6687538886581800666

`A358657(n+1)/2-1`
-/

namespace A158476.P6687538886581800666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358657 (n + 1) : ℚ) / 2 - 1

end

end A158476.P6687538886581800666

/-! ## A158476.P18264177300599433235

`(A242804(A000027(n+1))+1)/2`
-/

namespace A158476.P18264177300599433235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242804 (A000027 (n + 1)).toNat + 1 : ℚ) / 2

end

end A158476.P18264177300599433235

/-! ## A158476.P16073470224443154363

`round(A242804(n+1)/A130130(3*n+2))`
-/

namespace A158476.P16073470224443154363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A242804 (n + 1) : ℚ) / (A130130 (3 * n + 2) : ℚ))

end

end A158476.P16073470224443154363

/-! ## A158476.P13354388565543836118

`A202319(n+1)/2`
-/

namespace A158476.P13354388565543836118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202319 (n + 1) : ℚ) / 2

end

end A158476.P13354388565543836118

/-! ## A158476.P16449982799852200910

`6*A257044(n+1)+5`
-/

namespace A158476.P16449982799852200910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A257044 (n + 1) + 5

end

end A158476.P16449982799852200910

/-!
# A158477: Primes p with property that Q(p) = p^32+2^32 is prime.

The programs for A158477, there is no canonical definition to state claims against.
-/

/-! ## A158477.P3829025005495190338

`A132260(∑[n+3]+3)`
-/

namespace A158477.P3829025005495190338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132260 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A158477.P3829025005495190338

/-! ## A158477.P10208230151361580479

`p?[A132260(Δ[A092286(n)])]`
-/

namespace A158477.P10208230151361580479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132260 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158477.P10208230151361580479

/-! ## A158477.P15534517062146429422

`and(-1, A132260(A000217(n+3)))`
-/

namespace A158477.P15534517062146429422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132260 (A000217 (n + 3)).toNat)

end

end A158477.P15534517062146429422

/-! ## A158477.P2242015676410295890

`p?[(A025581(n)-1)*A132260(n+3)]`
-/

namespace A158477.P2242015676410295890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n - 1) * A132260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158477.P2242015676410295890

/-!
# A158478: Number of colors needed to paint n sectors of a circle.

The programs for A158478, the canonical program `A158478.P14224120277923389740` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158478 has offset 0).

The definition of A158478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158478.P14224120277923389740

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158478

/-- `a(n-2)` -/
def P14224120277923389740.Spec : Prop :=
  ∀ n, (P14224120277923389740.a n : ℤ) = A158478 n

theorem P14224120277923389740.correct : P14224120277923389740.Spec := by
  intro n
  simp only [A158478]

end A158478

/-!
# A158479: a(n) = 36*n^2 + 6.

The programs for A158479, the canonical program `A158479.P11137257713972097925` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158479 has offset 1).

The definition of A158479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²+6` (program `A158479.P11137257713972097925`, by `A158479.P11137257713972097925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158479.P11137257713972097925

`36*(n+1)²+6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158479

/-- `36*(n+1)²+6` -/
def P11137257713972097925.Spec : Prop :=
  ∀ n, (P11137257713972097925.a n : ℤ) = A158479 (n + 1)

theorem P11137257713972097925.correct : P11137257713972097925.Spec := by
  intro n
  simp only [A158479, Nat.add_sub_cancel]

end A158479

/-! ## A158479.P3848593158492217008

`6*A227776(n+1)`
-/

namespace A158479.P3848593158492217008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A227776 (n + 1)

end

end A158479.P3848593158492217008

namespace A158479

/-- `6*A227776(n+1)` -/
def P3848593158492217008.Spec : Prop :=
  ∀ n, P3848593158492217008.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P7748031772091796004

`6*∑[ogf((7+4x+x^2)/(1-2x+x^2))]`
-/

namespace A158479.P7748031772091796004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 4, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158479.P7748031772091796004

namespace A158479

/-- `6*∑[ogf((7+4x+x^2)/(1-2x+x^2))]` -/
def P7748031772091796004.Spec : Prop :=
  ∀ n, P7748031772091796004.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P16315908642760122586

`lcm(6, ∑[ogf((7+4x+x^2)/(1-2x+x^2))])`
-/

namespace A158479.P16315908642760122586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 4, 1] [1, -2, 1] n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158479.P16315908642760122586

namespace A158479

/-- `lcm(6, ∑[ogf((7+4x+x^2)/(1-2x+x^2))])` -/
def P16315908642760122586.Spec : Prop :=
  ∀ n, (P16315908642760122586.a n : ℤ) = A158479 (n + 1)

end A158479

/-! ## A158479.P15965901052251859616

`6*(∑[a(n-1)+6]+∑[6*n]+1)` with `a(0)=6`
-/

namespace A158479.P15965901052251859616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j + 1))

end

end A158479.P15965901052251859616

namespace A158479

/-- `6*(∑[a(n-1)+6]+∑[6*n]+1)` -/
def P15965901052251859616.Spec : Prop :=
  ∀ n, (P15965901052251859616.a n : ℤ) = A158479 (n + 1)

end A158479

/-! ## A158479.P3394216681874725181

`3*A005914(n+1)`
-/

namespace A158479.P3394216681874725181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005914 (n + 1)

end

end A158479.P3394216681874725181

namespace A158479

/-- `3*A005914(n+1)` -/
def P3394216681874725181.Spec : Prop :=
  ∀ n, P3394216681874725181.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P12883978783995404750

`2*(A157889(n+1)+2)`
-/

namespace A158479.P12883978783995404750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157889 (n + 1) + 2)

end

end A158479.P12883978783995404750

namespace A158479

/-- `2*(A157889(n+1)+2)` -/
def P12883978783995404750.Spec : Prop :=
  ∀ n, P12883978783995404750.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P9371718967917939618

`3*(A158480(n+1)+1)`
-/

namespace A158479.P9371718967917939618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A158480 (n + 1) + 1)

end

end A158479.P9371718967917939618

namespace A158479

/-- `3*(A158480(n+1)+1)` -/
def P9371718967917939618.Spec : Prop :=
  ∀ n, P9371718967917939618.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P991736604758081158

`3*(A135453(n+1)+2)`
-/

namespace A158479.P991736604758081158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A135453 (n + 1) + 2)

end

end A158479.P991736604758081158

namespace A158479

/-- `3*(A135453(n+1)+2)` -/
def P991736604758081158.Spec : Prop :=
  ∀ n, P991736604758081158.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P5406692918286700135

`2*(A195321(n+1)+3)`
-/

namespace A158479.P5406692918286700135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195321 (n + 1) + 3)

end

end A158479.P5406692918286700135

namespace A158479

/-- `2*(A195321(n+1)+3)` -/
def P5406692918286700135.Spec : Prop :=
  ∀ n, P5406692918286700135.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P13354493368934249623

`2*(A157910(n+1)+4)`
-/

namespace A158479.P13354493368934249623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157910 (n + 1) + 4)

end

end A158479.P13354493368934249623

namespace A158479

/-- `2*(A157910(n+1)+4)` -/
def P13354493368934249623.Spec : Prop :=
  ∀ n, P13354493368934249623.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P12522518901579893573

`3*(∑[4*A016945(n)]+2)`
-/

namespace A158479.P12522518901579893573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A158479.P12522518901579893573

namespace A158479

/-- `3*(∑[4*A016945(n)]+2)` -/
def P12522518901579893573.Spec : Prop :=
  ∀ n, P12522518901579893573.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P13556055012729650072

`6*(∑[4*A016777(n)+2]+1)`
-/

namespace A158479.P13556055012729650072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016777 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A158479.P13556055012729650072

namespace A158479

/-- `6*(∑[4*A016777(n)+2]+1)` -/
def P13556055012729650072.Spec : Prop :=
  ∀ n, P13556055012729650072.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P4101366827851093949

`A154633(n)%A158684(n+1)`
-/

namespace A158479.P4101366827851093949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154633 n) (A158684 (n + 1))

end

end A158479.P4101366827851093949

namespace A158479

/-- `A154633(n)%A158684(n+1)` -/
def P4101366827851093949.Spec : Prop :=
  ∀ n, P4101366827851093949.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P15277037054151217251

`A158490(n+1)%A157913(n+1)`
-/

namespace A158479.P15277037054151217251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158490 (n + 1)) (A157913 (n + 1))

end

end A158479.P15277037054151217251

namespace A158479

/-- `A158490(n+1)%A157913(n+1)` -/
def P15277037054151217251.Spec : Prop :=
  ∀ n, P15277037054151217251.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P6829203424735821310

`A158589(n+1)%A158543(n+1)`
-/

namespace A158479.P6829203424735821310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158589 (n + 1)) (A158543 (n + 1))

end

end A158479.P6829203424735821310

namespace A158479

/-- `A158589(n+1)%A158543(n+1)` -/
def P6829203424735821310.Spec : Prop :=
  ∀ n, P6829203424735821310.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P6987832210655048632

`lcm(3, Δ[Δ[n²²]])`
-/

namespace A158479.P6987832210655048632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f1 (n + 1) - f1 n)

end

end A158479.P6987832210655048632

namespace A158479

/-- `lcm(3, Δ[Δ[n²²]])` -/
def P6987832210655048632.Spec : Prop :=
  ∀ n, (P6987832210655048632.a n : ℤ) = A158479 (n + 1)

end A158479

/-! ## A158479.P11859159635318791078

`or(2, Δ[Δ[3*n²²]])`
-/

namespace A158479.P11859159635318791078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A158479.P11859159635318791078

namespace A158479

/-- `or(2, Δ[Δ[3*n²²]])` -/
def P11859159635318791078.Spec : Prop :=
  ∀ n, P11859159635318791078.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P11523913824831138037

`Δ[Δ[n*A117642(n)]]`
-/

namespace A158479.P11523913824831138037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A117642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158479.P11523913824831138037

namespace A158479

/-- `Δ[Δ[n*A117642(n)]]` -/
def P11523913824831138037.Spec : Prop :=
  ∀ n, P11523913824831138037.a n = A158479 (n + 1)

end A158479

/-! ## A158479.P8898064554526617989

`Δ[3*A005917(n+1)]`
-/

namespace A158479.P8898064554526617989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158479.P8898064554526617989

namespace A158479

/-- `Δ[3*A005917(n+1)]` -/
def P8898064554526617989.Spec : Prop :=
  ∀ n, P8898064554526617989.a n = A158479 (n + 1)

end A158479

/-!
# A158480: a(n) = 12*n^2 + 1.

The programs for A158480, the canonical program `A158480.P3708911020539906385` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158480 has offset 0).

The definition of A158480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²+1` (program `A158480.P3708911020539906385`, by `A158480.P3708911020539906385.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158480.P3708911020539906385

`12*n²+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158480

/-- `12*n²+1` -/
def P3708911020539906385.Spec : Prop :=
  ∀ n, (P3708911020539906385.a n : ℤ) = A158480 n

theorem P3708911020539906385.correct : P3708911020539906385.Spec := by
  intro n
  simp only [A158480]

end A158480

/-! ## A158480.P3740778330600159921

`or(1, 12*n²)`
-/

namespace A158480.P3740778330600159921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (12 * n ^ 2)

end

end A158480.P3740778330600159921

namespace A158480

/-- `or(1, 12*n²)` -/
def P3740778330600159921.Spec : Prop :=
  ∀ n, (P3740778330600159921.a n : ℤ) = A158480 n

end A158480

/-! ## A158480.P10519031330948198370

`xor(1, 12*n²)`
-/

namespace A158480.P10519031330948198370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (12 * n ^ 2)

end

end A158480.P10519031330948198370

namespace A158480

/-- `xor(1, 12*n²)` -/
def P10519031330948198370.Spec : Prop :=
  ∀ n, (P10519031330948198370.a n : ℤ) = A158480 n

end A158480

/-! ## A158480.P8495676706727932361

`floor(3/acot(2*n)²)`
-/

namespace A158480.P8495676706727932361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2⌋

end

end A158480.P8495676706727932361

namespace A158480

/-- `floor(3/acot(2*n)²)` -/
def P8495676706727932361.Spec : Prop :=
  ∀ n, P8495676706727932361.a n = A158480 n

end A158480

/-! ## A158480.P13815081989629484681

`∑[a(n-1)+24]` with `a(0)=1, a(1)=12`
-/

namespace A158480.P13815081989629484681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158480.P13815081989629484681

namespace A158480

/-- `∑[a(n-1)+24]` -/
def P13815081989629484681.Spec : Prop :=
  ∀ n, (P13815081989629484681.a n : ℤ) = A158480 n

end A158480

/-! ## A158480.P17270732679615166574

`Δ[3*C(2*n, 3)+n]`
-/

namespace A158480.P17270732679615166574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (2 * n) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158480.P17270732679615166574

namespace A158480

/-- `Δ[3*C(2*n, 3)+n]` -/
def P17270732679615166574.Spec : Prop :=
  ∀ n, P17270732679615166574.a n = A158480 n

end A158480

/-! ## A158480.P15907549450677504651

`record[ogf((1-x+4x^2)/(1+3x+3x^2+x^3))]`
-/

namespace A158480.P15907549450677504651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 4] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158480.P15907549450677504651

namespace A158480

/-- `record[ogf((1-x+4x^2)/(1+3x+3x^2+x^3))]` -/
def P15907549450677504651.Spec : Prop :=
  ∀ n, P15907549450677504651.a n = A158480 n

end A158480

/-! ## A158480.P5018151981888936590

`∑[record[A298036(n)]]`
-/

namespace A158480.P5018151981888936590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158480.P5018151981888936590

namespace A158480

/-- `∑[record[A298036(n)]]` -/
def P5018151981888936590.Spec : Prop :=
  ∀ n, P5018151981888936590.a n = A158480 n

end A158480

/-! ## A158480.P8709151733846969777

`ceil(A010014(n)/2)`
-/

namespace A158480.P8709151733846969777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010014 n : ℚ) / 2⌉

end

end A158480.P8709151733846969777

namespace A158480

/-- `ceil(A010014(n)/2)` -/
def P8709151733846969777.Spec : Prop :=
  ∀ n, P8709151733846969777.a n = A158480 n

end A158480

/-! ## A158480.P16339457747073471294

`ceil(A158547(n)/2)`
-/

namespace A158480.P16339457747073471294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158547 n : ℚ) / 2⌉

end

end A158480.P16339457747073471294

namespace A158480

/-- `ceil(A158547(n)/2)` -/
def P16339457747073471294.Spec : Prop :=
  ∀ n, P16339457747073471294.a n = A158480 n

end A158480

/-! ## A158480.P5367280609034531718

`(A195824(n)+2)/2`
-/

namespace A158480.P5367280609034531718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195824 n + 2 : ℚ) / 2

end

end A158480.P5367280609034531718

namespace A158480

/-- `(A195824(n)+2)/2` -/
def P5367280609034531718.Spec : Prop :=
  ∀ n, P5367280609034531718.a n = (A158480 n : ℚ)

end A158480

/-! ## A158480.P1239726877853838827

`(A158591(n)+2)/3`
-/

namespace A158480.P1239726877853838827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158591 n + 2 : ℚ) / 3

end

end A158480.P1239726877853838827

namespace A158480

/-- `(A158591(n)+2)/3` -/
def P1239726877853838827.Spec : Prop :=
  ∀ n, P1239726877853838827.a n = (A158480 n : ℚ)

end A158480

/-! ## A158480.P7310924007543084677

`(A065532(n)+5)/4`
-/

namespace A158480.P7310924007543084677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065532 n + 5 : ℚ) / 4

end

end A158480.P7310924007543084677

namespace A158480

/-- `(A065532(n)+5)/4` -/
def P7310924007543084677.Spec : Prop :=
  ∀ n, P7310924007543084677.a n = (A158480 n : ℚ)

end A158480

/-! ## A158480.P16394517489480494452

`∑[A174371(n)]/(n+1)`
-/

namespace A158480.P16394517489480494452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174371 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A158480.P16394517489480494452

namespace A158480

/-- `∑[A174371(n)]/(n+1)` -/
def P16394517489480494452.Spec : Prop :=
  ∀ n, P16394517489480494452.a n = (A158480 n : ℚ)

end A158480

/-! ## A158480.P779479585604931687

`A016970(n)%A372025(n+3)`
-/

namespace A158480.P779479585604931687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016970 n) (A372025 (n + 3))

end

end A158480.P779479585604931687

namespace A158480

/-- `A016970(n)%A372025(n+3)` -/
def P779479585604931687.Spec : Prop :=
  ∀ n, P779479585604931687.a n = A158480 n

end A158480

/-! ## A158480.P5776653604842989170

`Δ[Δ[(1-n)²²-C(n, 2)]]`
-/

namespace A158480.P5776653604842989170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2 - (Nat.choose n 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158480.P5776653604842989170

namespace A158480

/-- `Δ[Δ[(1-n)²²-C(n, 2)]]` -/
def P5776653604842989170.Spec : Prop :=
  ∀ n, P5776653604842989170.a n = A158480 n

end A158480

/-! ## A158480.P13195013195586931664

`Δ[Δ[lcm(n-1, (1-n)²²)]-n]`
-/

namespace A158480.P13195013195586931664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (((1 - (n : ℤ)) ^ 2) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158480.P13195013195586931664

namespace A158480

/-- `Δ[Δ[lcm(n-1, (1-n)²²)]-n]` -/
def P13195013195586931664.Spec : Prop :=
  ∀ n, P13195013195586931664.a n = A158480 n

end A158480

/-! ## A158480.P6842269929659545304

`Δ[Δ[(n-1)²²]-gcd(n, 2*n)]`
-/

namespace A158480.P6842269929659545304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (Nat.gcd n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158480.P6842269929659545304

namespace A158480

/-- `Δ[Δ[(n-1)²²]-gcd(n, 2*n)]` -/
def P6842269929659545304.Spec : Prop :=
  ∀ n, P6842269929659545304.a n = A158480 n

theorem P6842269929659545304.correct : P6842269929659545304.Spec := by
  intro n
  simp only [A158480, Nat.add_sub_cancel, A158480.P6842269929659545304.f2, A158480.P6842269929659545304.f1, A158480.P6842269929659545304.a, A158480.P3708911020539906385.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A158480

/-! ## A158480.P13371851492263073540

`Δ[A271828(n+1)]`
-/

namespace A158480.P13371851492263073540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158480.P13371851492263073540

namespace A158480

/-- `Δ[A271828(n+1)]` -/
def P13371851492263073540.Spec : Prop :=
  ∀ n, P13371851492263073540.a n = A158480 n

end A158480

/-!
# A158481: a(n) = 49*n^2 + 7.

The programs for A158481, the canonical program `A158481.P8766630387398262047` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158481 has offset 1).

The definition of A158481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)²+7` (program `A158481.P8766630387398262047`, by `A158481.P8766630387398262047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158481.P8766630387398262047

`49*(n+1)²+7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158481

/-- `49*(n+1)²+7` -/
def P8766630387398262047.Spec : Prop :=
  ∀ n, (P8766630387398262047.a n : ℤ) = A158481 (n + 1)

theorem P8766630387398262047.correct : P8766630387398262047.Spec := by
  intro n
  simp only [A158481, Nat.add_sub_cancel]

end A158481

/-! ## A158481.P3541296644568941077

`7*A247541(n+1)`
-/

namespace A158481.P3541296644568941077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A247541 (n + 1)

end

end A158481.P3541296644568941077

namespace A158481

/-- `7*A247541(n+1)` -/
def P3541296644568941077.Spec : Prop :=
  ∀ n, P3541296644568941077.a n = A158481 (n + 1)

end A158481

/-! ## A158481.P3242935918646973966

`7*(7*A000290(n+1)+1)`
-/

namespace A158481.P3242935918646973966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (7 * A000290 (n + 1) + 1)

end

end A158481.P3242935918646973966

namespace A158481

/-- `7*(7*A000290(n+1)+1)` -/
def P3242935918646973966.Spec : Prop :=
  ∀ n, P3242935918646973966.a n = A158481 (n + 1)

end A158481

/-! ## A158481.P15155985175810829881

`A145678(n+1)%A158553(n+1)`
-/

namespace A158481.P15155985175810829881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145678 (n + 1)) (A158553 (n + 1))

end

end A158481.P15155985175810829881

namespace A158481

/-- `A145678(n+1)%A158553(n+1)` -/
def P15155985175810829881.Spec : Prop :=
  ∀ n, P15155985175810829881.a n = A158481 (n + 1)

end A158481

/-! ## A158481.P9246490571851609220

`7*(A033582(n+1)+1)`
-/

namespace A158481.P9246490571851609220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A033582 (n + 1) + 1)

end

end A158481.P9246490571851609220

namespace A158481

/-- `7*(A033582(n+1)+1)` -/
def P9246490571851609220.Spec : Prop :=
  ∀ n, P9246490571851609220.a n = A158481 (n + 1)

end A158481

/-! ## A158481.P14335119768973067436

`Δ[A008589(n)+∑[A008589(n)²]]`
-/

namespace A158481.P14335119768973067436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158481.P14335119768973067436

namespace A158481

/-- `Δ[A008589(n)+∑[A008589(n)²]]` -/
def P14335119768973067436.Spec : Prop :=
  ∀ n, P14335119768973067436.a n = A158481 (n + 1)

end A158481

/-! ## A158481.P14125788592158707110

`A117619(7*(n+1))`
-/

namespace A158481.P14125788592158707110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 (7 * (n + 1))

end

end A158481.P14125788592158707110

namespace A158481

/-- `A117619(7*(n+1))` -/
def P14125788592158707110.Spec : Prop :=
  ∀ n, P14125788592158707110.a n = A158481 (n + 1)

end A158481

/-! ## A158481.P8674001523776813547

`A255846(A017041(n)+2)/2`
-/

namespace A158481.P8674001523776813547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255846 (A017041 n + 2).toNat : ℚ) / 2

end

end A158481.P8674001523776813547

namespace A158481

/-- `A255846(A017041(n)+2)/2` -/
def P8674001523776813547.Spec : Prop :=
  ∀ n, P8674001523776813547.a n = (A158481 (n + 1) : ℚ)

end A158481

/-!
# A158482: a(n) = 14*n^2 + 1.

The programs for A158482, the canonical program `A158482.P9203100436480343542` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158482 has offset 1).

The definition of A158482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*(n+1)²+1` (program `A158482.P9203100436480343542`, by `A158482.P9203100436480343542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158482.P9203100436480343542

`14*(n+1)²+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158482

/-- `14*(n+1)²+1` -/
def P9203100436480343542.Spec : Prop :=
  ∀ n, (P9203100436480343542.a n : ℤ) = A158482 (n + 1)

theorem P9203100436480343542.correct : P9203100436480343542.Spec := by
  intro n
  simp only [A158482, Nat.add_sub_cancel]

end A158482

/-! ## A158482.P15769580394165119727

`∑[a(n-1)+28]` with `a(0)=15, a(1)=42`
-/

namespace A158482.P15769580394165119727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 42] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158482.P15769580394165119727

namespace A158482

/-- `∑[a(n-1)+28]` -/
def P15769580394165119727.Spec : Prop :=
  ∀ n, (P15769580394165119727.a n : ℤ) = A158482 (n + 1)

end A158482

/-! ## A158482.P1366272013746236691

`∑[ogf((15+12x+x^2)/(1-2x+x^2))]`
-/

namespace A158482.P1366272013746236691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 12, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158482.P1366272013746236691

namespace A158482

/-- `∑[ogf((15+12x+x^2)/(1-2x+x^2))]` -/
def P1366272013746236691.Spec : Prop :=
  ∀ n, P1366272013746236691.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P6599531948898668467

`ceil(A158604(n+1)/3)`
-/

namespace A158482.P6599531948898668467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158604 (n + 1) : ℚ) / 3⌉

end

end A158482.P6599531948898668467

namespace A158482

/-- `ceil(A158604(n+1)/3)` -/
def P6599531948898668467.Spec : Prop :=
  ∀ n, P6599531948898668467.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P12196427204061951292

`∑[A063146(n+1)+4]`
-/

namespace A158482.P12196427204061951292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063146 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158482.P12196427204061951292

namespace A158482

/-- `∑[A063146(n+1)+4]` -/
def P12196427204061951292.Spec : Prop :=
  ∀ n, P12196427204061951292.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P16179281919538710919

`(A158554(n+1)+3)/2`
-/

namespace A158482.P16179281919538710919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158554 (n + 1) + 3 : ℚ) / 2

end

end A158482.P16179281919538710919

namespace A158482

/-- `(A158554(n+1)+3)/2` -/
def P16179281919538710919.Spec : Prop :=
  ∀ n, P16179281919538710919.a n = (A158482 (n + 1) : ℚ)

end A158482

/-! ## A158482.P10568815596163607404

`(A158626(n+1)+4)/3`
-/

namespace A158482.P10568815596163607404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158626 (n + 1) + 4 : ℚ) / 3

end

end A158482.P10568815596163607404

namespace A158482

/-- `(A158626(n+1)+4)/3` -/
def P10568815596163607404.Spec : Prop :=
  ∀ n, P10568815596163607404.a n = (A158482 (n + 1) : ℚ)

end A158482

/-! ## A158482.P10103096336903661542

`(A158658(n+1)+5)/4`
-/

namespace A158482.P10103096336903661542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158658 (n + 1) + 5 : ℚ) / 4

end

end A158482.P10103096336903661542

namespace A158482

/-- `(A158658(n+1)+5)/4` -/
def P10103096336903661542.Spec : Prop :=
  ∀ n, P10103096336903661542.a n = (A158482 (n + 1) : ℚ)

end A158482

/-! ## A158482.P15850455111482354075

`A157919(n+1)%A157910(n+1)`
-/

namespace A158482.P15850455111482354075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157919 (n + 1)) (A157910 (n + 1))

end

end A158482.P15850455111482354075

namespace A158482

/-- `A157919(n+1)%A157910(n+1)` -/
def P15850455111482354075.Spec : Prop :=
  ∀ n, P15850455111482354075.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P12956533894015233637

`A158656(n+1)%A158491(n+1)`
-/

namespace A158482.P12956533894015233637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158656 (n + 1)) (A158491 (n + 1))

end

end A158482.P12956533894015233637

namespace A158482

/-- `A158656(n+1)%A158491(n+1)` -/
def P12956533894015233637.Spec : Prop :=
  ∀ n, P12956533894015233637.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P6435429176882803133

`A158668(n+1)%A158540(n+1)`
-/

namespace A158482.P6435429176882803133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158668 (n + 1)) (A158540 (n + 1))

end

end A158482.P6435429176882803133

namespace A158482

/-- `A158668(n+1)%A158540(n+1)` -/
def P6435429176882803133.Spec : Prop :=
  ∀ n, P6435429176882803133.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P4293350875130180133

`A158680(n+1)%A158544(n+1)`
-/

namespace A158482.P4293350875130180133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158680 (n + 1)) (A158544 (n + 1))

end

end A158482.P4293350875130180133

namespace A158482

/-- `A158680(n+1)%A158544(n+1)` -/
def P4293350875130180133.Spec : Prop :=
  ∀ n, P4293350875130180133.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P8421252221744802237

`A158693(n+1)%A158551(n+1)`
-/

namespace A158482.P8421252221744802237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158693 (n + 1)) (A158551 (n + 1))

end

end A158482.P8421252221744802237

namespace A158482

/-- `A158693(n+1)%A158551(n+1)` -/
def P8421252221744802237.Spec : Prop :=
  ∀ n, P8421252221744802237.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P3176554637843704745

`A158736(n+1)%A158554(n+1)`
-/

namespace A158482.P3176554637843704745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158736 (n + 1)) (A158554 (n + 1))

end

end A158482.P3176554637843704745

namespace A158482

/-- `A158736(n+1)%A158554(n+1)` -/
def P3176554637843704745.Spec : Prop :=
  ∀ n, P3176554637843704745.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P11171749017267514676

`A158744(n+1)%A158560(n+1)`
-/

namespace A158482.P11171749017267514676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158744 (n + 1)) (A158560 (n + 1))

end

end A158482.P11171749017267514676

namespace A158482

/-- `A158744(n+1)%A158560(n+1)` -/
def P11171749017267514676.Spec : Prop :=
  ∀ n, P11171749017267514676.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P10082323685409642239

`A158771(n+1)%A158563(n+1)`
-/

namespace A158482.P10082323685409642239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158771 (n + 1)) (A158563 (n + 1))

end

end A158482.P10082323685409642239

namespace A158482

/-- `A158771(n+1)%A158563(n+1)` -/
def P10082323685409642239.Spec : Prop :=
  ∀ n, P10082323685409642239.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P4515885200730144262

`A210645(n+1)%A158736(n+1)`
-/

namespace A158482.P4515885200730144262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210645 (n + 1)) (A158736 (n + 1))

end

end A158482.P4515885200730144262

namespace A158482

/-- `A210645(n+1)%A158736(n+1)` -/
def P4515885200730144262.Spec : Prop :=
  ∀ n, P4515885200730144262.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P5810053963246359025

`A010018(n+1)/2`
-/

namespace A158482.P5810053963246359025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010018 (n + 1) : ℚ) / 2

end

end A158482.P5810053963246359025

namespace A158482

/-- `A010018(n+1)/2` -/
def P5810053963246359025.Spec : Prop :=
  ∀ n, P5810053963246359025.a n = (A158482 (n + 1) : ℚ)

end A158482

/-! ## A158482.P9302155266077220092

`or(1, A144555(n+1))`
-/

namespace A158482.P9302155266077220092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A144555 (n + 1))

end

end A158482.P9302155266077220092

namespace A158482

/-- `or(1, A144555(n+1))` -/
def P9302155266077220092.Spec : Prop :=
  ∀ n, P9302155266077220092.a n = A158482 (n + 1)

end A158482

/-! ## A158482.P17501835486628969617

`Δ[A063494(n+1)-n]`
-/

namespace A158482.P17501835486628969617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063494 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158482.P17501835486628969617

namespace A158482

/-- `Δ[A063494(n+1)-n]` -/
def P17501835486628969617.Spec : Prop :=
  ∀ n, P17501835486628969617.a n = A158482 (n + 1)

end A158482

/-!
# A158484: a(n) = 49*n^2 - 7.

The programs for A158484, the canonical program `A158484.P7993456837970142823` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158484 has offset 1).

The definition of A158484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)²-7` (program `A158484.P7993456837970142823`, by `A158484.P7993456837970142823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158484.P7993456837970142823

`49*(n+1)²-7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158484

/-- `49*(n+1)²-7` -/
def P7993456837970142823.Spec : Prop :=
  ∀ n, P7993456837970142823.a n = A158484 (n + 1)

theorem P7993456837970142823.correct : P7993456837970142823.Spec := by
  intro n
  simp only [A158484, Nat.add_sub_cancel]

end A158484

/-! ## A158484.P16474214742496106961

`record[(7*(1-n))²-7]`
-/

namespace A158484.P16474214742496106961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (1 - (n : ℤ))) ^ 2 - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158484.P16474214742496106961

namespace A158484

/-- `record[(7*(1-n))²-7]` -/
def P16474214742496106961.Spec : Prop :=
  ∀ n, P16474214742496106961.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P10198525858865396070

`abs(14-A158481(n+1))`
-/

namespace A158484.P10198525858865396070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |14 - A158481 (n + 1)|

end

end A158484.P10198525858865396070

namespace A158484

/-- `abs(14-A158481(n+1))` -/
def P10198525858865396070.Spec : Prop :=
  ∀ n, P10198525858865396070.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P15771402069771513389

`abs(A173141(n+1)-(n+8))`
-/

namespace A158484.P15771402069771513389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173141 (n + 1) - (n + 8 : ℤ)|

end

end A158484.P15771402069771513389

namespace A158484

/-- `abs(A173141(n+1)-(n+8))` -/
def P15771402069771513389.Spec : Prop :=
  ∀ n, P15771402069771513389.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P9112425998452646408

`(A157923(n+1)+A023448(n))%A132903(n+1)`
-/

namespace A158484.P9112425998452646408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157923 (n + 1) + A023448 n) (A132903 (n + 1))

end

end A158484.P9112425998452646408

namespace A158484

/-- `(A157923(n+1)+A023448(n))%A132903(n+1)` -/
def P9112425998452646408.Spec : Prop :=
  ∀ n, P9112425998452646408.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P4543677630320133949

`abs(7-A016982(n+1))`
-/

namespace A158484.P4543677630320133949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A016982 (n + 1)|

end

end A158484.P4543677630320133949

namespace A158484

/-- `abs(7-A016982(n+1))` -/
def P4543677630320133949.Spec : Prop :=
  ∀ n, P4543677630320133949.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P12134568359829158259

`abs(7-Δ[A024966(n)]²)`
-/

namespace A158484.P12134568359829158259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - (f1 (n + 1) - f1 n) ^ 2|

end

end A158484.P12134568359829158259

namespace A158484

/-- `abs(7-Δ[A024966(n)]²)` -/
def P12134568359829158259.Spec : Prop :=
  ∀ n, P12134568359829158259.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P5539535991481749503

`Δ[∑[A008589(n)²]-A008589(n)]`
-/

namespace A158484.P5539535991481749503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158484.P5539535991481749503

namespace A158484

/-- `Δ[∑[A008589(n)²]-A008589(n)]` -/
def P5539535991481749503.Spec : Prop :=
  ∀ n, P5539535991481749503.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P5701670695433361030

`A028881(7*(n+1))`
-/

namespace A158484.P5701670695433361030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028881 (7 * (n + 1))

end

end A158484.P5701670695433361030

namespace A158484

/-- `A028881(7*(n+1))` -/
def P5701670695433361030.Spec : Prop :=
  ∀ n, P5701670695433361030.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P18014718978497202758

`A267531(A017617(n)+2*n+1)`
-/

namespace A158484.P18014718978497202758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267531 (A017617 n + (2 * n + 1 : ℤ)).toNat

end

end A158484.P18014718978497202758

namespace A158484

/-- `A267531(A017617(n)+2*n+1)` -/
def P18014718978497202758.Spec : Prop :=
  ∀ n, P18014718978497202758.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P7360335327869662666

`∩[A146329(n+1), A028881(n+3)]`
-/

namespace A158484.P7360335327869662666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028881 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158484.P7360335327869662666

namespace A158484

/-- `∩[A146329(n+1), A028881(n+3)]` -/
def P7360335327869662666.Spec : Prop :=
  ∀ n, (P7360335327869662666.a n : ℤ) = A158484 (n + 1)

end A158484

/-! ## A158484.P17860923713651511543

`A000027(A016982(n+1)-7)`
-/

namespace A158484.P17860923713651511543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A016982 (n + 1) - 7).toNat

end

end A158484.P17860923713651511543

namespace A158484

/-- `A000027(A016982(n+1)-7)` -/
def P17860923713651511543.Spec : Prop :=
  ∀ n, P17860923713651511543.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P3875255361860686946

`A000027(A008589(n+1)²-7)`
-/

namespace A158484.P3875255361860686946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008589 (n + 1) ^ 2 - 7).toNat

end

end A158484.P3875255361860686946

namespace A158484

/-- `A000027(A008589(n+1)²-7)` -/
def P3875255361860686946.Spec : Prop :=
  ∀ n, P3875255361860686946.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P13237031048045741785

`A000027(A157923(n+1)+A023448(n))`
-/

namespace A158484.P13237031048045741785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A157923 (n + 1) + A023448 n).toNat

end

end A158484.P13237031048045741785

namespace A158484

/-- `A000027(A157923(n+1)+A023448(n))` -/
def P13237031048045741785.Spec : Prop :=
  ∀ n, P13237031048045741785.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P12184668107127248661

`A000027(A157923(n+1)-A022962(n))`
-/

namespace A158484.P12184668107127248661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A157923 (n + 1) - A022962 n).toNat

end

end A158484.P12184668107127248661

namespace A158484

/-- `A000027(A157923(n+1)-A022962(n))` -/
def P12184668107127248661.Spec : Prop :=
  ∀ n, P12184668107127248661.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P14865588327073094348

`A000027(A173141(n+1)-A020722(n))`
-/

namespace A158484.P14865588327073094348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A173141 (n + 1) - A020722 n).toNat

end

end A158484.P14865588327073094348

namespace A158484

/-- `A000027(A173141(n+1)-A020722(n))` -/
def P14865588327073094348.Spec : Prop :=
  ∀ n, P14865588327073094348.a n = A158484 (n + 1)

end A158484

/-! ## A158484.P15481043349058777480

`7*A017053(A005563(n))`
-/

namespace A158484.P15481043349058777480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A017053 (A005563 n).toNat

end

end A158484.P15481043349058777480

namespace A158484

/-- `7*A017053(A005563(n))` -/
def P15481043349058777480.Spec : Prop :=
  ∀ n, P15481043349058777480.a n = A158484 (n + 1)

end A158484

/-!
# A158485: a(n) = 14*n^2 - 1.

The programs for A158485, the canonical program `A158485.P15843754978112244489` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158485 has offset 1).

The definition of A158485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*(n+1)²-1` (program `A158485.P15843754978112244489`, by `A158485.P15843754978112244489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158485.P15843754978112244489

`14*(n+1)²-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158485

/-- `14*(n+1)²-1` -/
def P15843754978112244489.Spec : Prop :=
  ∀ n, P15843754978112244489.a n = A158485 (n + 1)

theorem P15843754978112244489.correct : P15843754978112244489.Spec := by
  intro n
  simp only [A158485, Nat.add_sub_cancel]

end A158485

/-! ## A158485.P18371740540454114703

`∑[a(n-1)+28]` with `a(0)=13, a(1)=42`
-/

namespace A158485.P18371740540454114703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 42] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158485.P18371740540454114703

namespace A158485

/-- `∑[a(n-1)+28]` -/
def P18371740540454114703.Spec : Prop :=
  ∀ n, (P18371740540454114703.a n : ℤ) = A158485 (n + 1)

end A158485

/-! ## A158485.P8986822932431597744

`abs(2-A158482(n+1))`
-/

namespace A158485.P8986822932431597744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158482 (n + 1)|

end

end A158485.P8986822932431597744

namespace A158485

/-- `abs(2-A158482(n+1))` -/
def P8986822932431597744.Spec : Prop :=
  ∀ n, P8986822932431597744.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P15858678031586571172

`floor(A158554(n+1)/2)`
-/

namespace A158485.P15858678031586571172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158554 (n + 1) : ℚ) / 2⌋

end

end A158485.P15858678031586571172

namespace A158485

/-- `floor(A158554(n+1)/2)` -/
def P15858678031586571172.Spec : Prop :=
  ∀ n, P15858678031586571172.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P18209724098617415079

`floor(A158626(n+1)/3)`
-/

namespace A158485.P18209724098617415079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158626 (n + 1) : ℚ) / 3⌋

end

end A158485.P18209724098617415079

namespace A158485

/-- `floor(A158626(n+1)/3)` -/
def P18209724098617415079.Spec : Prop :=
  ∀ n, P18209724098617415079.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P15430269560104859595

`floor(A158658(n+1)/4)`
-/

namespace A158485.P15430269560104859595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158658 (n + 1) : ℚ) / 4⌋

end

end A158485.P15430269560104859595

namespace A158485

/-- `floor(A158658(n+1)/4)` -/
def P15430269560104859595.Spec : Prop :=
  ∀ n, P15430269560104859595.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P5750092211746995189

`(A158736(n+1)-4)/5`
-/

namespace A158485.P5750092211746995189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158736 (n + 1) - 4 : ℚ) / 5

end

end A158485.P5750092211746995189

namespace A158485

/-- `(A158736(n+1)-4)/5` -/
def P5750092211746995189.Spec : Prop :=
  ∀ n, P5750092211746995189.a n = (A158485 (n + 1) : ℚ)

end A158485

/-! ## A158485.P7998203245363024323

`A157916(n+1)%A157889(n+1)`
-/

namespace A158485.P7998203245363024323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157916 (n + 1)) (A157889 (n + 1))

end

end A158485.P7998203245363024323

namespace A158485

/-- `A157916(n+1)%A157889(n+1)` -/
def P7998203245363024323.Spec : Prop :=
  ∀ n, P7998203245363024323.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P10370969361858523173

`abs(7*(A046092(n)+A004277(n+1))-1)`
-/

namespace A158485.P10370969361858523173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 * (A046092 n + A004277 (n + 1)) - 1|

end

end A158485.P10370969361858523173

namespace A158485

/-- `abs(7*(A046092(n)+A004277(n+1))-1)` -/
def P10370969361858523173.Spec : Prop :=
  ∀ n, P10370969361858523173.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P2275591924828550586

`abs(1-A144555(n+1))`
-/

namespace A158485.P2275591924828550586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A144555 (n + 1)|

end

end A158485.P2275591924828550586

namespace A158485

/-- `abs(1-A144555(n+1))` -/
def P2275591924828550586.Spec : Prop :=
  ∀ n, P2275591924828550586.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P16550593014015793817

`(A064763(n+1)-2)/2`
-/

namespace A158485.P16550593014015793817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064763 (n + 1) - 2 : ℚ) / 2

end

end A158485.P16550593014015793817

namespace A158485

/-- `(A064763(n+1)-2)/2` -/
def P16550593014015793817.Spec : Prop :=
  ∀ n, P16550593014015793817.a n = (A158485 (n + 1) : ℚ)

end A158485

/-! ## A158485.P3715307846599681204

`(A158556(n+1)-3)/2`
-/

namespace A158485.P3715307846599681204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158556 (n + 1) - 3 : ℚ) / 2

end

end A158485.P3715307846599681204

namespace A158485

/-- `(A158556(n+1)-3)/2` -/
def P3715307846599681204.Spec : Prop :=
  ∀ n, P3715307846599681204.a n = (A158485 (n + 1) : ℚ)

end A158485

/-! ## A158485.P15777907453580529927

`∑[(2*n+1)*A134202(n+3)]`
-/

namespace A158485.P15777907453580529927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A134202 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158485.P15777907453580529927

namespace A158485

/-- `∑[(2*n+1)*A134202(n+3)]` -/
def P15777907453580529927.Spec : Prop :=
  ∀ n, P15777907453580529927.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P5246566861390456110

`abs(1-7*∑[A267352(Δ[n²])])`
-/

namespace A158485.P5246566861390456110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267352 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 7 * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A158485.P5246566861390456110

namespace A158485

/-- `abs(1-7*∑[A267352(Δ[n²])])` -/
def P5246566861390456110.Spec : Prop :=
  ∀ n, P5246566861390456110.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P9562384681140286608

`∑[A063228(3*n+2)-A063225(n+1)]`
-/

namespace A158485.P9562384681140286608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063228 (3 * n + 2) - A063225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158485.P9562384681140286608

namespace A158485

/-- `∑[A063228(3*n+2)-A063225(n+1)]` -/
def P9562384681140286608.Spec : Prop :=
  ∀ n, P9562384681140286608.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P5217193971401350719

`A358053((n+1)²)`
-/

namespace A158485.P5217193971401350719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 ((n + 1) ^ 2)

end

end A158485.P5217193971401350719

namespace A158485

/-- `A358053((n+1)²)` -/
def P5217193971401350719.Spec : Prop :=
  ∀ n, P5217193971401350719.a n = A158485 (n + 1)

end A158485

/-! ## A158485.P2131560180776049410

`A195024((n+1)²)/(n+1)²`
-/

namespace A158485.P2131560180776049410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195024 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A158485.P2131560180776049410

namespace A158485

/-- `A195024((n+1)²)/(n+1)²` -/
def P2131560180776049410.Spec : Prop :=
  ∀ n, P2131560180776049410.a n = (A158485 (n + 1) : ℚ)

end A158485

/-!
# A158486: Multiples of 5 in the EKG sequence A064413.

The programs for A158486, there is no canonical definition to state claims against.
-/

/-! ## A158486.P2366077580690192704

`5*A158504(n+1)`
-/

namespace A158486.P2366077580690192704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A158504 (n + 1)

end

end A158486.P2366077580690192704

/-! ## A158486.P2257754406400746185

`5*(A158511(n+1)+1+n)`
-/

namespace A158486.P2257754406400746185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A158511 (n + 1) + 1 + (n : ℤ))

end

end A158486.P2257754406400746185

/-! ## A158486.P16953887755023135331

`5*(A158511(Δ[n²]-n)-xor(n, -1))`
-/

namespace A158486.P16953887755023135331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A158511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - Int.xor (n : ℤ) (-1))

end

end A158486.P16953887755023135331

/-! ## A158486.P5078379847505849930

`A008587(A158504(n+1))`
-/

namespace A158486.P5078379847505849930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A158504 (n + 1)).toNat

end

end A158486.P5078379847505849930

/-! ## A158486.P5563624296493654397

`A135042(A158504(n+1)+1)`
-/

namespace A158486.P5563624296493654397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (A158504 (n + 1) + 1).toNat

end

end A158486.P5563624296493654397

/-! ## A158486.P5504904301942442991

`A008587(A158511(n+1)+1+n)`
-/

namespace A158486.P5504904301942442991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A158511 (n + 1) + 1 + (n : ℤ)).toNat

end

end A158486.P5504904301942442991

/-! ## A158486.P15474501258328891874

`A008706(A158511(n+1)+1+n)`
-/

namespace A158486.P15474501258328891874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A158511 (n + 1) + 1 + (n : ℤ)).toNat

end

end A158486.P15474501258328891874

/-! ## A158486.P17586941737608701629

`A008706(A158504(A000027(n+1)))`
-/

namespace A158486.P17586941737608701629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A158504 (A000027 (n + 1)).toNat).toNat

end

end A158486.P17586941737608701629

/-! ## A158486.P4436449223735995421

`filter[A064413(n+1), A079998(#)]`
-/

namespace A158486.P4436449223735995421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A158486.P4436449223735995421

/-! ## A158486.P3592598173274675188

`filter[A169839(n+1), A079998(#)]`
-/

namespace A158486.P3592598173274675188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A158486.P3592598173274675188

/-! ## A158486.P10640183330592746142

`filter[A169847(n+1), A079998(#)]`
-/

namespace A158486.P10640183330592746142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A158486.P10640183330592746142

/-!
# A158487: a(n) = 64*n^2 - 8.

The programs for A158487, the canonical program `A158487.P4071329257013432001` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158487 has offset 1).

The definition of A158487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)²-8` (program `A158487.P4071329257013432001`, by `A158487.P4071329257013432001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158487.P4071329257013432001

`64*(n+1)²-8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158487

/-- `64*(n+1)²-8` -/
def P4071329257013432001.Spec : Prop :=
  ∀ n, P4071329257013432001.a n = A158487 (n + 1)

theorem P4071329257013432001.correct : P4071329257013432001.Spec := by
  intro n
  simp only [A158487, Nat.add_sub_cancel]

end A158487

/-! ## A158487.P3384182671192283493

`8*A157914(n+1)`
-/

namespace A158487.P3384182671192283493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A157914 (n + 1)

end

end A158487.P3384182671192283493

namespace A158487

/-- `8*A157914(n+1)` -/
def P3384182671192283493.Spec : Prop :=
  ∀ n, P3384182671192283493.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P9617964471291670015

`record[(8*(1-n))²-8]`
-/

namespace A158487.P9617964471291670015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (1 - (n : ℤ))) ^ 2 - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158487.P9617964471291670015

namespace A158487

/-- `record[(8*(1-n))²-8]` -/
def P9617964471291670015.Spec : Prop :=
  ∀ n, P9617964471291670015.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P3022275562878765738

`8*∑[ogf((7+10x-x^2)/(1-2x+x^2))]`
-/

namespace A158487.P3022275562878765738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 10, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158487.P3022275562878765738

namespace A158487

/-- `8*∑[ogf((7+10x-x^2)/(1-2x+x^2))]` -/
def P3022275562878765738.Spec : Prop :=
  ∀ n, P3022275562878765738.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P3320889343604103159

`lcm(8, ∑[ogf((7+10x-x^2)/(1-2x+x^2))])`
-/

namespace A158487.P3320889343604103159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 10, -1] [1, -2, 1] n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158487.P3320889343604103159

namespace A158487

/-- `lcm(8, ∑[ogf((7+10x-x^2)/(1-2x+x^2))])` -/
def P3320889343604103159.Spec : Prop :=
  ∀ n, (P3320889343604103159.a n : ℤ) = A158487 (n + 1)

end A158487

/-! ## A158487.P10411717918597602249

`8*(4*∑[a(n-1)+4]-1)` with `a(0)=2, a(1)=6`
-/

namespace A158487.P10411717918597602249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1)

end

end A158487.P10411717918597602249

namespace A158487

/-- `8*(4*∑[a(n-1)+4]-1)` -/
def P10411717918597602249.Spec : Prop :=
  ∀ n, P10411717918597602249.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P9239657746543422201

`4*(A141759(n)-1)`
-/

namespace A158487.P9239657746543422201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A141759 n - 1)

end

end A158487.P9239657746543422201

namespace A158487

/-- `4*(A141759(n)-1)` -/
def P9239657746543422201.Spec : Prop :=
  ∀ n, P9239657746543422201.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P14532421856318185900

`4*(A158443(n+1)+2)`
-/

namespace A158487.P14532421856318185900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A158443 (n + 1) + 2)

end

end A158487.P14532421856318185900

namespace A158487

/-- `4*(A158443(n+1)+2)` -/
def P14532421856318185900.Spec : Prop :=
  ∀ n, P14532421856318185900.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P15700454049927424459

`2*(A158563(n+1)-3)`
-/

namespace A158487.P15700454049927424459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158563 (n + 1) - 3)

end

end A158487.P15700454049927424459

namespace A158487

/-- `2*(A158563(n+1)-3)` -/
def P15700454049927424459.Spec : Prop :=
  ∀ n, P15700454049927424459.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P8467731537978872944

`4*(A108211(n+1)-3)`
-/

namespace A158487.P8467731537978872944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A108211 (n + 1) - 3)

end

end A158487.P8467731537978872944

namespace A158487

/-- `4*(A108211(n+1)-3)` -/
def P8467731537978872944.Spec : Prop :=
  ∀ n, P8467731537978872944.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P8052575185932093839

`Δ[∑[A008590(n)²]-A008590(n)]`
-/

namespace A158487.P8052575185932093839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158487.P8052575185932093839

namespace A158487

/-- `Δ[∑[A008590(n)²]-A008590(n)]` -/
def P8052575185932093839.Spec : Prop :=
  ∀ n, P8052575185932093839.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P4759306446284345489

`4*A060626(2*n+1)`
-/

namespace A158487.P4759306446284345489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060626 (2 * n + 1)

end

end A158487.P4759306446284345489

namespace A158487

/-- `4*A060626(2*n+1)` -/
def P4759306446284345489.Spec : Prop :=
  ∀ n, P4759306446284345489.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P5434804979935713310

`8*A195605(2*n+1)`
-/

namespace A158487.P5434804979935713310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A195605 (2 * n + 1)

end

end A158487.P5434804979935713310

namespace A158487

/-- `8*A195605(2*n+1)` -/
def P5434804979935713310.Spec : Prop :=
  ∀ n, P5434804979935713310.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P1572978971471075612

`xor(7, A141759(2*n+1))`
-/

namespace A158487.P1572978971471075612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A141759 (2 * n + 1))

end

end A158487.P1572978971471075612

namespace A158487

/-- `xor(7, A141759(2*n+1))` -/
def P1572978971471075612.Spec : Prop :=
  ∀ n, P1572978971471075612.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P18076610406172428873

`2*(A108928(2*(n+1))-1)`
-/

namespace A158487.P18076610406172428873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108928 (2 * (n + 1)) - 1)

end

end A158487.P18076610406172428873

namespace A158487

/-- `2*(A108928(2*(n+1))-1)` -/
def P18076610406172428873.Spec : Prop :=
  ∀ n, P18076610406172428873.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P3904413436815010029

`(A134582(2*(n+1))+2)*4`
-/

namespace A158487.P3904413436815010029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134582 (2 * (n + 1)) + 2) * 4

end

end A158487.P3904413436815010029

namespace A158487

/-- `(A134582(2*(n+1))+2)*4` -/
def P3904413436815010029.Spec : Prop :=
  ∀ n, P3904413436815010029.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P3080618458371816410

`(A184635(2*(n+1))-2)*4`
-/

namespace A158487.P3080618458371816410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184635 (2 * (n + 1)) - 2) * 4

end

end A158487.P3080618458371816410

namespace A158487

/-- `(A184635(2*(n+1))-2)*4` -/
def P3080618458371816410.Spec : Prop :=
  ∀ n, P3080618458371816410.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P9167023828010769462

`(A039720(2*(n+1))+1)*8`
-/

namespace A158487.P9167023828010769462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039720 (2 * (n + 1)) + 1) * 8

end

end A158487.P9167023828010769462

namespace A158487

/-- `(A039720(2*(n+1))+1)*8` -/
def P9167023828010769462.Spec : Prop :=
  ∀ n, P9167023828010769462.a n = A158487 (n + 1)

end A158487

/-! ## A158487.P17361130001978483694

`A144138(2*(n+1))/(n+1)`
-/

namespace A158487.P17361130001978483694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144138 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A158487.P17361130001978483694

namespace A158487

/-- `A144138(2*(n+1))/(n+1)` -/
def P17361130001978483694.Spec : Prop :=
  ∀ n, P17361130001978483694.a n = (A158487 (n + 1) : ℚ)

end A158487

/-! ## A158487.P11381284572276652987

`A242135(4*(n+1))/(n+1)`
-/

namespace A158487.P11381284572276652987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242135 (4 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A158487.P11381284572276652987

namespace A158487

/-- `A242135(4*(n+1))/(n+1)` -/
def P11381284572276652987.Spec : Prop :=
  ∀ n, P11381284572276652987.a n = (A158487 (n + 1) : ℚ)

end A158487

/-!
# A158488: a(n) = 64*n^2 + 8.

The programs for A158488, the canonical program `A158488.P2870730553209654808` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158488 has offset 1).

The definition of A158488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)²+8` (program `A158488.P2870730553209654808`, by `A158488.P2870730553209654808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158488.P2870730553209654808

`64*(n+1)²+8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158488

/-- `64*(n+1)²+8` -/
def P2870730553209654808.Spec : Prop :=
  ∀ n, (P2870730553209654808.a n : ℤ) = A158488 (n + 1)

theorem P2870730553209654808.correct : P2870730553209654808.Spec := by
  intro n
  simp only [A158488, Nat.add_sub_cancel]

end A158488

/-! ## A158488.P479906999604631492

`8*A081585(n+1)`
-/

namespace A158488.P479906999604631492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A081585 (n + 1)

end

end A158488.P479906999604631492

namespace A158488

/-- `8*A081585(n+1)` -/
def P479906999604631492.Spec : Prop :=
  ∀ n, P479906999604631492.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P5711633704850894245

`record[or(8, (8*(1-n))²)]`
-/

namespace A158488.P5711633704850894245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 ((8 * (1 - (n : ℤ))) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158488.P5711633704850894245

namespace A158488

/-- `record[or(8, (8*(1-n))²)]` -/
def P5711633704850894245.Spec : Prop :=
  ∀ n, P5711633704850894245.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P10811886558517874254

`record[xor(8, (8*(1-n))²)]`
-/

namespace A158488.P10811886558517874254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 ((8 * (1 - (n : ℤ))) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158488.P10811886558517874254

namespace A158488

/-- `record[xor(8, (8*(1-n))²)]` -/
def P10811886558517874254.Spec : Prop :=
  ∀ n, P10811886558517874254.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P12281479548021666695

`8*(4*∑[a(n-1)+4]+1)` with `a(0)=2, a(1)=6`
-/

namespace A158488.P12281479548021666695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A158488.P12281479548021666695

namespace A158488

/-- `8*(4*∑[a(n-1)+4]+1)` -/
def P12281479548021666695.Spec : Prop :=
  ∀ n, (P12281479548021666695.a n : ℤ) = A158488 (n + 1)

end A158488

/-! ## A158488.P10250772051347440226

`Δ[A167498(n)]`
-/

namespace A158488.P10250772051347440226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158488.P10250772051347440226

namespace A158488

/-- `Δ[A167498(n)]` -/
def P10250772051347440226.Spec : Prop :=
  ∀ n, P10250772051347440226.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P8641300249516520079

`4*A010006(n+1)`
-/

namespace A158488.P8641300249516520079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A010006 (n + 1)

end

end A158488.P8641300249516520079

namespace A158488

/-- `4*A010006(n+1)` -/
def P8641300249516520079.Spec : Prop :=
  ∀ n, P8641300249516520079.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P15444159436160693450

`4*(A141759(n)+3)`
-/

namespace A158488.P15444159436160693450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A141759 n + 3)

end

end A158488.P15444159436160693450

namespace A158488

/-- `4*(A141759(n)+3)` -/
def P15444159436160693450.Spec : Prop :=
  ∀ n, P15444159436160693450.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P14509128283675251505

`2*(Δ[A015219(n)]+2)`
-/

namespace A158488.P14509128283675251505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 2)

end

end A158488.P14509128283675251505

namespace A158488

/-- `2*(Δ[A015219(n)]+2)` -/
def P14509128283675251505.Spec : Prop :=
  ∀ n, P14509128283675251505.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P11131281064871365765

`4*(A108211(n+1)+1)`
-/

namespace A158488.P11131281064871365765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A108211 (n + 1) + 1)

end

end A158488.P11131281064871365765

namespace A158488

/-- `4*(A108211(n+1)+1)` -/
def P11131281064871365765.Spec : Prop :=
  ∀ n, P11131281064871365765.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P5241421662250945236

`2*(A158575(n+1)+3)`
-/

namespace A158488.P5241421662250945236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158575 (n + 1) + 3)

end

end A158488.P5241421662250945236

namespace A158488

/-- `2*(A158575(n+1)+3)` -/
def P5241421662250945236.Spec : Prop :=
  ∀ n, P5241421662250945236.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P9521190265117090109

`2*(A158563(n+1)+5)`
-/

namespace A158488.P9521190265117090109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158563 (n + 1) + 5)

end

end A158488.P9521190265117090109

namespace A158488

/-- `2*(A158563(n+1)+5)` -/
def P9521190265117090109.Spec : Prop :=
  ∀ n, P9521190265117090109.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P9969008184546538971

`A158636(n+1)%A158562(n+1)`
-/

namespace A158488.P9969008184546538971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158636 (n + 1)) (A158562 (n + 1))

end

end A158488.P9969008184546538971

namespace A158488

/-- `A158636(n+1)%A158562(n+1)` -/
def P9969008184546538971.Spec : Prop :=
  ∀ n, P9969008184546538971.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P14870415279301674553

`Δ[4*A063496(n+1)]`
-/

namespace A158488.P14870415279301674553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A063496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158488.P14870415279301674553

namespace A158488

/-- `Δ[4*A063496(n+1)]` -/
def P14870415279301674553.Spec : Prop :=
  ∀ n, P14870415279301674553.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P8996620237691687003

`Δ[8*A336288(n+1)]`
-/

namespace A158488.P8996620237691687003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A336288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158488.P8996620237691687003

namespace A158488

/-- `Δ[8*A336288(n+1)]` -/
def P8996620237691687003.Spec : Prop :=
  ∀ n, P8996620237691687003.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P1508399553854552698

`2*(A010021(n+1)+2)`
-/

namespace A158488.P1508399553854552698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010021 (n + 1) + 2)

end

end A158488.P1508399553854552698

namespace A158488

/-- `2*(A010021(n+1)+2)` -/
def P1508399553854552698.Spec : Prop :=
  ∀ n, P1508399553854552698.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P2866008308705979092

`Δ[A008590(n)+∑[A008590(n)²]]`
-/

namespace A158488.P2866008308705979092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158488.P2866008308705979092

namespace A158488

/-- `Δ[A008590(n)+∑[A008590(n)²]]` -/
def P2866008308705979092.Spec : Prop :=
  ∀ n, P2866008308705979092.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P11783244575069478580

`Δ[2*A166911(2*n)]`
-/

namespace A158488.P11783244575069478580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166911 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158488.P11783244575069478580

namespace A158488

/-- `Δ[2*A166911(2*n)]` -/
def P11783244575069478580.Spec : Prop :=
  ∀ n, P11783244575069478580.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P16282121177574674910

`(A184635(2*(n+1))+2)*4`
-/

namespace A158488.P16282121177574674910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184635 (2 * (n + 1)) + 2) * 4

end

end A158488.P16282121177574674910

namespace A158488

/-- `(A184635(2*(n+1))+2)*4` -/
def P16282121177574674910.Spec : Prop :=
  ∀ n, P16282121177574674910.a n = A158488 (n + 1)

end A158488

/-! ## A158488.P17114332835969378384

`Δ[A171272(2*n+1)]`
-/

namespace A158488.P17114332835969378384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158488.P17114332835969378384

namespace A158488

/-- `Δ[A171272(2*n+1)]` -/
def P17114332835969378384.Spec : Prop :=
  ∀ n, P17114332835969378384.a n = A158488 (n + 1)

end A158488

/-!
# A158490: a(n) = 100*n^2 - 10.

The programs for A158490, the canonical program `A158490.P845353052253331992` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158490 has offset 1).

The definition of A158490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100*(n+1)²-10` (program `A158490.P845353052253331992`, by `A158490.P845353052253331992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158490.P845353052253331992

`100*(n+1)²-10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158490

/-- `100*(n+1)²-10` -/
def P845353052253331992.Spec : Prop :=
  ∀ n, P845353052253331992.a n = A158490 (n + 1)

theorem P845353052253331992.correct : P845353052253331992.Spec := by
  intro n
  simp only [A158490, Nat.add_sub_cancel]

end A158490

/-! ## A158490.P5302276106903886826

`10*A158447(n+1)`
-/

namespace A158490.P5302276106903886826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A158447 (n + 1)

end

end A158490.P5302276106903886826

namespace A158490

/-- `10*A158447(n+1)` -/
def P5302276106903886826.Spec : Prop :=
  ∀ n, P5302276106903886826.a n = A158490 (n + 1)

end A158490

/-! ## A158490.P9481160494485365117

`record[(10*(1-n))²-10]`
-/

namespace A158490.P9481160494485365117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (1 - (n : ℤ))) ^ 2 - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158490.P9481160494485365117

namespace A158490

/-- `record[(10*(1-n))²-10]` -/
def P9481160494485365117.Spec : Prop :=
  ∀ n, P9481160494485365117.a n = A158490 (n + 1)

end A158490

/-! ## A158490.P13597727051186564085

`2*(A157919(n+1)-4)`
-/

namespace A158490.P13597727051186564085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157919 (n + 1) - 4)

end

end A158490.P13597727051186564085

namespace A158490

/-- `2*(A157919(n+1)-4)` -/
def P13597727051186564085.Spec : Prop :=
  ∀ n, P13597727051186564085.a n = A158490 (n + 1)

end A158490

/-! ## A158490.P15287171552102990420

`5*(A158491(n+1)-1)`
-/

namespace A158490.P15287171552102990420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A158491 (n + 1) - 1)

end

end A158490.P15287171552102990420

namespace A158490

/-- `5*(A158491(n+1)-1)` -/
def P15287171552102990420.Spec : Prop :=
  ∀ n, P15287171552102990420.a n = A158490 (n + 1)

end A158490

/-! ## A158490.P2611182045721116552

`5*(A167573(n+1)-5)`
-/

namespace A158490.P2611182045721116552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A167573 (n + 1) - 5)

end

end A158490.P2611182045721116552

namespace A158490

/-- `5*(A167573(n+1)-5)` -/
def P2611182045721116552.Spec : Prop :=
  ∀ n, P2611182045721116552.a n = A158490 (n + 1)

end A158490

/-! ## A158490.P17451831209104912494

`Δ[∑[A008592(n)²]-A008592(n)]`
-/

namespace A158490.P17451831209104912494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158490.P17451831209104912494

namespace A158490

/-- `Δ[∑[A008592(n)²]-A008592(n)]` -/
def P17451831209104912494.Spec : Prop :=
  ∀ n, P17451831209104912494.a n = A158490 (n + 1)

end A158490

/-! ## A158490.P7418693902039175850

`(A134538(2*(n+1))-1)*5`
-/

namespace A158490.P7418693902039175850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134538 (2 * (n + 1)) - 1) * 5

end

end A158490.P7418693902039175850

namespace A158490

/-- `(A134538(2*(n+1))-1)*5` -/
def P7418693902039175850.Spec : Prop :=
  ∀ n, P7418693902039175850.a n = A158490 (n + 1)

end A158490

/-!
# A158491: a(n) = 20*n^2 - 1.

The programs for A158491, the canonical program `A158491.P7981057112013540397` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158491 has offset 1).

The definition of A158491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*(n+1)²-1` (program `A158491.P7981057112013540397`, by `A158491.P7981057112013540397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158491.P7981057112013540397

`20*(n+1)²-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158491

/-- `20*(n+1)²-1` -/
def P7981057112013540397.Spec : Prop :=
  ∀ n, P7981057112013540397.a n = A158491 (n + 1)

theorem P7981057112013540397.correct : P7981057112013540397.Spec := by
  intro n
  simp only [A158491, Nat.add_sub_cancel]

end A158491

/-! ## A158491.P15413644827116659354

`A134538(2*(n+1))`
-/

namespace A158491.P15413644827116659354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134538 (2 * (n + 1))

end

end A158491.P15413644827116659354

namespace A158491

/-- `A134538(2*(n+1))` -/
def P15413644827116659354.Spec : Prop :=
  ∀ n, P15413644827116659354.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P5061192922205226385

`Δ[A188050(n)-n]`
-/

namespace A158491.P5061192922205226385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188050 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158491.P5061192922205226385

namespace A158491

/-- `Δ[A188050(n)-n]` -/
def P5061192922205226385.Spec : Prop :=
  ∀ n, P5061192922205226385.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P10083857434092153459

`floor(A158598(n+1)/2)`
-/

namespace A158491.P10083857434092153459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158598 (n + 1) : ℚ) / 2⌋

end

end A158491.P10083857434092153459

namespace A158491

/-- `floor(A158598(n+1)/2)` -/
def P10083857434092153459.Spec : Prop :=
  ∀ n, P10083857434092153459.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P6396736796623073381

`floor(A158670(n+1)/3)`
-/

namespace A158491.P6396736796623073381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158670 (n + 1) : ℚ) / 3⌋

end

end A158491.P6396736796623073381

namespace A158491

/-- `floor(A158670(n+1)/3)` -/
def P6396736796623073381.Spec : Prop :=
  ∀ n, P6396736796623073381.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P5418197146311585263

`(A158602(n+1)-3)/2`
-/

namespace A158491.P5418197146311585263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158602 (n + 1) - 3 : ℚ) / 2

end

end A158491.P5418197146311585263

namespace A158491

/-- `(A158602(n+1)-3)/2` -/
def P5418197146311585263.Spec : Prop :=
  ∀ n, P5418197146311585263.a n = (A158491 (n + 1) : ℚ)

end A158491

/-! ## A158491.P7446482512027554597

`(A158774(n+1)-3)/4`
-/

namespace A158491.P7446482512027554597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158774 (n + 1) - 3 : ℚ) / 4

end

end A158491.P7446482512027554597

namespace A158491

/-- `(A158774(n+1)-3)/4` -/
def P7446482512027554597.Spec : Prop :=
  ∀ n, P7446482512027554597.a n = (A158491 (n + 1) : ℚ)

end A158491

/-! ## A158491.P9906679553178138312

`Δ[A095265(n+1)-Δ[n²]]`
-/

namespace A158491.P9906679553178138312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095265 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158491.P9906679553178138312

namespace A158491

/-- `Δ[A095265(n+1)-Δ[n²]]` -/
def P9906679553178138312.Spec : Prop :=
  ∀ n, P9906679553178138312.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P3206196493509368940

`A158446(2*(n+1))/5`
-/

namespace A158491.P3206196493509368940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158446 (2 * (n + 1)) : ℚ) / 5

end

end A158491.P3206196493509368940

namespace A158491

/-- `A158446(2*(n+1))/5` -/
def P3206196493509368940.Spec : Prop :=
  ∀ n, P3206196493509368940.a n = (A158491 (n + 1) : ℚ)

end A158491

/-! ## A158491.P2562977664895347258

`or(2, A067724(2*n+1)+2)`
-/

namespace A158491.P2562977664895347258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A067724 (2 * n + 1) + 2)

end

end A158491.P2562977664895347258

namespace A158491

/-- `or(2, A067724(2*n+1)+2)` -/
def P2562977664895347258.Spec : Prop :=
  ∀ n, P2562977664895347258.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P10849311863894075385

`abs(5*A000290(2*(n+1))-1)`
-/

namespace A158491.P10849311863894075385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A000290 (2 * (n + 1)) - 1|

end

end A158491.P10849311863894075385

namespace A158491

/-- `abs(5*A000290(2*(n+1))-1)` -/
def P10849311863894075385.Spec : Prop :=
  ∀ n, P10849311863894075385.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P4810944865511911303

`∑[A063228(3*n+2)+A063211(n+1)]`
-/

namespace A158491.P4810944865511911303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063228 (3 * n + 2) + A063211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158491.P4810944865511911303

namespace A158491

/-- `∑[A063228(3*n+2)+A063211(n+1)]` -/
def P4810944865511911303.Spec : Prop :=
  ∀ n, P4810944865511911303.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P14030141806273619535

`abs(∑[A008592(3*n+n+2)]-1)`
-/

namespace A158491.P14030141806273619535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (3 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A158491.P14030141806273619535

namespace A158491

/-- `abs(∑[A008592(3*n+n+2)]-1)` -/
def P14030141806273619535.Spec : Prop :=
  ∀ n, P14030141806273619535.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P12100027317534976609

`A055607(8*(n+1))`
-/

namespace A158491.P12100027317534976609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055607 (8 * (n + 1))

end

end A158491.P12100027317534976609

namespace A158491

/-- `A055607(8*(n+1))` -/
def P12100027317534976609.Spec : Prop :=
  ∀ n, P12100027317534976609.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P3600756546077751078

`A138986(A017377(n))`
-/

namespace A158491.P3600756546077751078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138986 (A017377 n).toNat

end

end A158491.P3600756546077751078

namespace A158491

/-- `A138986(A017377(n))` -/
def P3600756546077751078.Spec : Prop :=
  ∀ n, P3600756546077751078.a n = A158491 (n + 1)

end A158491

/-! ## A158491.P4965440986045070684

`abs(4*(A016897(n*(n+2))+1)-1)`
-/

namespace A158491.P4965440986045070684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * (A016897 (n * (n + 2)) + 1) - 1|

end

end A158491.P4965440986045070684

namespace A158491

/-- `abs(4*(A016897(n*(n+2))+1)-1)` -/
def P4965440986045070684.Spec : Prop :=
  ∀ n, P4965440986045070684.a n = A158491 (n + 1)

end A158491

/-!
# A158492: a(n) = 100*n^2 + 10.

The programs for A158492, the canonical program `A158492.P6629914565412500596` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158492 has offset 0).

The definition of A158492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100*n²+10` (program `A158492.P6629914565412500596`, by `A158492.P6629914565412500596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158492.P6629914565412500596

`100*n²+10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158492

/-- `100*n²+10` -/
def P6629914565412500596.Spec : Prop :=
  ∀ n, (P6629914565412500596.a n : ℤ) = A158492 n

theorem P6629914565412500596.correct : P6629914565412500596.Spec := by
  intro n
  simp only [A158492]

end A158492

/-! ## A158492.P365072612933387882

`10*A158187(n)`
-/

namespace A158492.P365072612933387882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A158187 n

end

end A158492.P365072612933387882

namespace A158492

/-- `10*A158187(n)` -/
def P365072612933387882.Spec : Prop :=
  ∀ n, P365072612933387882.a n = A158492 n

end A158492

/-! ## A158492.P9695613369201829760

`or(10, (10*n)²)`
-/

namespace A158492.P9695613369201829760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 10 ((10 * n) ^ 2)

end

end A158492.P9695613369201829760

namespace A158492

/-- `or(10, (10*n)²)` -/
def P9695613369201829760.Spec : Prop :=
  ∀ n, (P9695613369201829760.a n : ℤ) = A158492 n

end A158492

/-! ## A158492.P4601620004186739461

`xor(10, (10*n)²)`
-/

namespace A158492.P4601620004186739461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 ((10 * n) ^ 2)

end

end A158492.P4601620004186739461

namespace A158492

/-- `xor(10, (10*n)²)` -/
def P4601620004186739461.Spec : Prop :=
  ∀ n, (P4601620004186739461.a n : ℤ) = A158492 n

end A158492

/-! ## A158492.P5999449329393444180

`lcm(10, n*10*n+1)`
-/

namespace A158492.P5999449329393444180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 (n * (10 * n) + 1)

end

end A158492.P5999449329393444180

namespace A158492

/-- `lcm(10, n*10*n+1)` -/
def P5999449329393444180.Spec : Prop :=
  ∀ n, (P5999449329393444180.a n : ℤ) = A158492 n

end A158492

/-! ## A158492.P11855724814513969769

`5*(A158493(n)+1)`
-/

namespace A158492.P11855724814513969769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A158493 n + 1)

end

end A158492.P11855724814513969769

namespace A158492

/-- `5*(A158493(n)+1)` -/
def P11855724814513969769.Spec : Prop :=
  ∀ n, P11855724814513969769.a n = A158492 n

end A158492

/-! ## A158492.P15915683469284639636

`5*(A195322(n)+2)`
-/

namespace A158492.P15915683469284639636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A195322 n + 2)

end

end A158492.P15915683469284639636

namespace A158492

/-- `5*(A195322(n)+2)` -/
def P15915683469284639636.Spec : Prop :=
  ∀ n, P15915683469284639636.a n = A158492 n

end A158492

/-! ## A158492.P15326143993299331210

`10*(A033583(n)+1)`
-/

namespace A158492.P15326143993299331210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A033583 n + 1)

end

end A158492.P15326143993299331210

namespace A158492

/-- `10*(A033583(n)+1)` -/
def P15326143993299331210.Spec : Prop :=
  ∀ n, P15326143993299331210.a n = A158492 n

end A158492

/-! ## A158492.P14668465560771628327

`10*(n*A008592(n)+1)`
-/

namespace A158492.P14668465560771628327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ((n : ℤ) * A008592 n + 1)

end

end A158492.P14668465560771628327

namespace A158492

/-- `10*(n*A008592(n)+1)` -/
def P14668465560771628327.Spec : Prop :=
  ∀ n, P14668465560771628327.a n = A158492 n

end A158492

/-! ## A158492.P9443828165285692155

`(A212656(2*n)+1)*5`
-/

namespace A158492.P9443828165285692155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212656 (2 * n) + 1) * 5

end

end A158492.P9443828165285692155

namespace A158492

/-- `(A212656(2*n)+1)*5` -/
def P9443828165285692155.Spec : Prop :=
  ∀ n, P9443828165285692155.a n = A158492 n

end A158492

/-! ## A158492.P4806452234177040401

`(A017281(2*n+1)-A017281(2*n))*A121509(2*n+1)`
-/

namespace A158492.P4806452234177040401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017281 (2 * n + 1) - A017281 (2 * n)) * A121509 (2 * n + 1)

end

end A158492.P4806452234177040401

namespace A158492

/-- `(A017281(2*n+1)-A017281(2*n))*A121509(2*n+1)` -/
def P4806452234177040401.Spec : Prop :=
  ∀ n, P4806452234177040401.a n = A158492 n

end A158492

/-! ## A158492.P8887378758215527736

`A114948(10*n)`
-/

namespace A158492.P8887378758215527736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114948 (10 * n)

end

end A158492.P8887378758215527736

namespace A158492

/-- `A114948(10*n)` -/
def P8887378758215527736.Spec : Prop :=
  ∀ n, P8887378758215527736.a n = A158492 n

end A158492

/-! ## A158492.P7032390214295211566

`10*A017281(n²)`
-/

namespace A158492.P7032390214295211566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A017281 (n ^ 2)

end

end A158492.P7032390214295211566

namespace A158492

/-- `10*A017281(n²)` -/
def P7032390214295211566.Spec : Prop :=
  ∀ n, P7032390214295211566.a n = A158492 n

end A158492

/-!
# A158493: a(n) = 20*n^2 + 1.

The programs for A158493, the canonical program `A158493.P15053320901918141336` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158493 has offset 0).

The definition of A158493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*n²+1` (program `A158493.P15053320901918141336`, by `A158493.P15053320901918141336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158493.P15053320901918141336

`20*n²+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158493

/-- `20*n²+1` -/
def P15053320901918141336.Spec : Prop :=
  ∀ n, (P15053320901918141336.a n : ℤ) = A158493 n

theorem P15053320901918141336.correct : P15053320901918141336.Spec := by
  intro n
  simp only [A158493]

end A158493

/-! ## A158493.P5522585288508621581

`A212656(2*n)`
-/

namespace A158493.P5522585288508621581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 (2 * n)

end

end A158493.P5522585288508621581

namespace A158493

/-- `A212656(2*n)` -/
def P5522585288508621581.Spec : Prop :=
  ∀ n, P5522585288508621581.a n = A158493 n

end A158493

/-! ## A158493.P9088017088506757332

`or(1, 20*n²)`
-/

namespace A158493.P9088017088506757332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (20 * n ^ 2)

end

end A158493.P9088017088506757332

namespace A158493

/-- `or(1, 20*n²)` -/
def P9088017088506757332.Spec : Prop :=
  ∀ n, (P9088017088506757332.a n : ℤ) = A158493 n

end A158493

/-! ## A158493.P2737349764034134191

`xor(1, 20*n²)`
-/

namespace A158493.P2737349764034134191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (20 * n ^ 2)

end

end A158493.P2737349764034134191

namespace A158493

/-- `xor(1, 20*n²)` -/
def P2737349764034134191.Spec : Prop :=
  ∀ n, (P2737349764034134191.a n : ℤ) = A158493 n

end A158493

/-! ## A158493.P14735294574624811157

`∑[a(n-1)+40]` with `a(0)=1, a(1)=20`
-/

namespace A158493.P14735294574624811157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158493.P14735294574624811157

namespace A158493

/-- `∑[a(n-1)+40]` -/
def P14735294574624811157.Spec : Prop :=
  ∀ n, (P14735294574624811157.a n : ℤ) = A158493 n

end A158493

/-! ## A158493.P5423601919038588502

`Δ[5*C(2*n, 3)+n]`
-/

namespace A158493.P5423601919038588502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (2 * n) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158493.P5423601919038588502

namespace A158493

/-- `Δ[5*C(2*n, 3)+n]` -/
def P5423601919038588502.Spec : Prop :=
  ∀ n, P5423601919038588502.a n = A158493 n

end A158493

/-! ## A158493.P11716931872385201838

`ceil(A010022(n)/2)`
-/

namespace A158493.P11716931872385201838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010022 n : ℚ) / 2⌉

end

end A158493.P11716931872385201838

namespace A158493

/-- `ceil(A010022(n)/2)` -/
def P11716931872385201838.Spec : Prop :=
  ∀ n, P11716931872385201838.a n = A158493 n

end A158493

/-! ## A158493.P12745439819366050566

`ceil(A158602(n)/2)`
-/

namespace A158493.P12745439819366050566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158602 n : ℚ) / 2⌉

end

end A158493.P12745439819366050566

namespace A158493

/-- `ceil(A158602(n)/2)` -/
def P12745439819366050566.Spec : Prop :=
  ∀ n, P12745439819366050566.a n = A158493 n

end A158493

/-! ## A158493.P8164168925174689592

`ceil(A158673(n)/3)`
-/

namespace A158493.P8164168925174689592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158673 n : ℚ) / 3⌉

end

end A158493.P8164168925174689592

namespace A158493

/-- `ceil(A158673(n)/3)` -/
def P8164168925174689592.Spec : Prop :=
  ∀ n, P8164168925174689592.a n = A158493 n

end A158493

/-! ## A158493.P16040084509696995096

`(A158776(n)+3)/4`
-/

namespace A158493.P16040084509696995096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158776 n + 3 : ℚ) / 4

end

end A158493.P16040084509696995096

namespace A158493

/-- `(A158776(n)+3)/4` -/
def P16040084509696995096.Spec : Prop :=
  ∀ n, P16040084509696995096.a n = (A158493 n : ℚ)

end A158493

/-! ## A158493.P14531777294356759212

`(A323178(n)+4)/5`
-/

namespace A158493.P14531777294356759212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323178 n + 4 : ℚ) / 5

end

end A158493.P14531777294356759212

namespace A158493

/-- `(A323178(n)+4)/5` -/
def P14531777294356759212.Spec : Prop :=
  ∀ n, P14531777294356759212.a n = (A158493 n : ℚ)

end A158493

/-! ## A158493.P11023038195613925669

`abs(2*(n*A008592(n)+1)-1)`
-/

namespace A158493.P11023038195613925669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) * A008592 n + 1) - 1|

end

end A158493.P11023038195613925669

namespace A158493

/-- `abs(2*(n*A008592(n)+1)-1)` -/
def P11023038195613925669.Spec : Prop :=
  ∀ n, P11023038195613925669.a n = A158493 n

end A158493

/-! ## A158493.P16309873962335476507

`ceil(A158187(2*n)/2)`
-/

namespace A158493.P16309873962335476507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158187 (2 * n) : ℚ) / 2⌉

end

end A158493.P16309873962335476507

namespace A158493

/-- `ceil(A158187(2*n)/2)` -/
def P16309873962335476507.Spec : Prop :=
  ∀ n, P16309873962335476507.a n = A158493 n

end A158493

/-! ## A158493.P5430330946143408352

`ceil(A005901(2*n)/2)`
-/

namespace A158493.P5430330946143408352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005901 (2 * n) : ℚ) / 2⌉

end

end A158493.P5430330946143408352

namespace A158493

/-- `ceil(A005901(2*n)/2)` -/
def P5430330946143408352.Spec : Prop :=
  ∀ n, P5430330946143408352.a n = A158493 n

end A158493

/-! ## A158493.P8204301822508939073

`∑[A004277(10*comp[2*(n+1)])]`
-/

namespace A158493.P8204301822508939073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (10 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158493.P8204301822508939073

namespace A158493

/-- `∑[A004277(10*comp[2*(n+1)])]` -/
def P8204301822508939073.Spec : Prop :=
  ∀ n, P8204301822508939073.a n = A158493 n

end A158493

/-! ## A158493.P2944053500210908299

`A215145(n²)`
-/

namespace A158493.P2944053500210908299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 (n ^ 2)

end

end A158493.P2944053500210908299

namespace A158493

/-- `A215145(n²)` -/
def P2944053500210908299.Spec : Prop :=
  ∀ n, P2944053500210908299.a n = A158493 n

end A158493

/-! ## A158493.P14474719360937499206

`∩[A212656(n), A215145(n)]`
-/

namespace A158493.P14474719360937499206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158493.P14474719360937499206

namespace A158493

/-- `∩[A212656(n), A215145(n)]` -/
def P14474719360937499206.Spec : Prop :=
  ∀ n, (P14474719360937499206.a n : ℤ) = A158493 n

end A158493

/-!
# A158494: Boundary area of the T-square fractal.

The programs for A158494, the canonical program `A158494.P18045656485756479610` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158494 has offset 1).

The definition of A158494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158494.P18045656485756479610

`3*a(n-1)+2^(n+1)-8` with `a(0)=4, a(1)=24, a(2)=80`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158494

/-- `3*a(n-1)+2^(n+1)-8` -/
def P18045656485756479610.Spec : Prop :=
  ∀ n, P18045656485756479610.a n = A158494 (n + 1)

theorem P18045656485756479610.correct : P18045656485756479610.Spec := by
  intro n
  simp only [A158494, Nat.add_sub_cancel]

end A158494

/-! ## A158494.P12517919213768494186

`A019442(A358455(n+4)-A019442(n+1))`
-/

namespace A158494.P12517919213768494186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (A358455 (n + 4) - A019442 (n + 1)).toNat

end

end A158494.P12517919213768494186

namespace A158494

/-- `A019442(A358455(n+4)-A019442(n+1))` -/
def P12517919213768494186.Spec : Prop :=
  ∀ n, P12517919213768494186.a n = A158494 (n + 1)

end A158494

/-!
# A158495: Expansion of ((1-4*x) + sqrt(1-4*x))/(2*(1-2*x)).

The programs for A158495, the canonical program `A158495.P10891886949087608278` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158495 has offset 0).

The definition of A158495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158495.P9955474936229810707

`a(n-1)+A246432(n)+a(n-1)` with `a(0)=1`
-/

namespace A158495.P9955474936229810707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A246432 n + a (n - 1))

end

end A158495.P9955474936229810707

namespace A158495

/-- `a(n-1)+A246432(n)+a(n-1)` -/
def P9955474936229810707.Spec : Prop :=
  ∀ n, P9955474936229810707.a n = A158495 n

end A158495

/-! ## A158495.P10891886949087608278

`A158499(n)-A155559(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158495

/-- `A158499(n)-A155559(n)` -/
def P10891886949087608278.Spec : Prop :=
  ∀ n, P10891886949087608278.a n = A158495 n

theorem P10891886949087608278.correct : P10891886949087608278.Spec := by
  intro n
  simp only [A158495]

end A158495

/-! ## A158495.P16526588145978609531

`A158499(n)-Δ[A255047(n)]`
-/

namespace A158495.P16526588145978609531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n - (f1 (n + 1) - f1 n)

end

end A158495.P16526588145978609531

namespace A158495

/-- `A158499(n)-Δ[A255047(n)]` -/
def P16526588145978609531.Spec : Prop :=
  ∀ n, P16526588145978609531.a n = A158495 n

end A158495

/-! ## A158495.P6243876694125207743

`A158499(n)-A131572(2*n)`
-/

namespace A158495.P6243876694125207743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n - A131572 (2 * n)

end

end A158495.P6243876694125207743

namespace A158495

/-- `A158499(n)-A131572(2*n)` -/
def P6243876694125207743.Spec : Prop :=
  ∀ n, P6243876694125207743.a n = A158495 n

end A158495

/-! ## A158495.P6943703690883174818

`A158499(n)-Δ[2*A011782(n)]`
-/

namespace A158495.P6943703690883174818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n - (f1 (n + 1) - f1 n)

end

end A158495.P6943703690883174818

namespace A158495

/-- `A158499(n)-Δ[2*A011782(n)]` -/
def P6943703690883174818.Spec : Prop :=
  ∀ n, P6943703690883174818.a n = A158495 n

end A158495

/-! ## A158495.P8102805259657587211

`A000007(n)+A158499(n)-A000079(n)`
-/

namespace A158495.P8102805259657587211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A158499 n - A000079 n)

end

end A158495.P8102805259657587211

namespace A158495

/-- `A000007(n)+A158499(n)-A000079(n)` -/
def P8102805259657587211.Spec : Prop :=
  ∀ n, P8102805259657587211.a n = A158495 n

end A158495

/-! ## A158495.P12672139974989069000

`A158499(n)-(A057427(n)+A000225(n))`
-/

namespace A158495.P12672139974989069000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n - (A057427 n + A000225 n)

end

end A158495.P12672139974989069000

namespace A158495

/-- `A158499(n)-(A057427(n)+A000225(n))` -/
def P12672139974989069000.Spec : Prop :=
  ∀ n, P12672139974989069000.a n = A158495 n

end A158495

/-! ## A158495.P6647819697690331885

`A008683((n+1)²)-(A000079(n)-A158499(n))`
-/

namespace A158495.P6647819697690331885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) - (A000079 n - A158499 n)

end

end A158495.P6647819697690331885

namespace A158495

/-- `A008683((n+1)²)-(A000079(n)-A158499(n))` -/
def P6647819697690331885.Spec : Prop :=
  ∀ n, P6647819697690331885.a n = A158495 n

end A158495

/-! ## A158495.P18112815920194823798

`A126221(A028310(n))-A014318(n)`
-/

namespace A158495.P18112815920194823798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126221 (A028310 n).toNat - A014318 n

end

end A158495.P18112815920194823798

namespace A158495

/-- `A126221(A028310(n))-A014318(n)` -/
def P18112815920194823798.Spec : Prop :=
  ∀ n, P18112815920194823798.a n = A158495 n

end A158495

/-!
# A158496: Expansion of (1-4x+x^2)/(1+x^2)^2.

The programs for A158496, the canonical program `A158496.P5145543067981683882` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158496 has offset 0).

The definition of A158496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+x^2)/(1+2x^2+x^4))` (program `A158496.P5145543067981683882`, by `A158496.P5145543067981683882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158496.P5145543067981683882

`ogf((1-4x+x^2)/(1+2x^2+x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158496

/-- `ogf((1-4x+x^2)/(1+2x^2+x^4))` -/
def P5145543067981683882.Spec : Prop :=
  ∀ n, P5145543067981683882.a n = A158496 n

theorem P5145543067981683882.correct : P5145543067981683882.Spec := by
  intro n
  simp only [A158496]

end A158496

/-! ## A158496.P14207065312983460372

`(n+3/2-(n+1/2)*(-1)^n)*(-1)^C(n+1, 2)`
-/

namespace A158496.P14207065312983460372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) + (3 : ℚ) / 2 - ((n : ℚ) + (1 : ℚ) / 2) * ((-1) ^ n : ℚ)) * ((-1) ^ Nat.choose (n + 1) 2 : ℚ)

end

end A158496.P14207065312983460372

namespace A158496

/-- `(n+3/2-(n+1/2)*(-1)^n)*(-1)^C(n+1, 2)` -/
def P14207065312983460372.Spec : Prop :=
  ∀ n, P14207065312983460372.a n = (A158496 n : ℚ)

end A158496

/-! ## A158496.P13241785081284322829

`Δ[xor(n, -(and(2, n)/2))]`
-/

namespace A158496.P13241785081284322829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway (-((Nat.land 2 n : ℚ) / 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158496.P13241785081284322829

namespace A158496

/-- `Δ[xor(n, -(and(2, n)/2))]` -/
def P13241785081284322829.Spec : Prop :=
  ∀ n, P13241785081284322829.a n = A158496 n

end A158496

/-! ## A158496.P18200910512846913052

`Δ[xor(n, 1-and(2, n)!)]`
-/

namespace A158496.P18200910512846913052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - (Nat.factorial (Nat.land 2 n) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158496.P18200910512846913052

namespace A158496

/-- `Δ[xor(n, 1-and(2, n)!)]` -/
def P18200910512846913052.Spec : Prop :=
  ∀ n, P18200910512846913052.a n = A158496 n

end A158496

/-! ## A158496.P11636316463479953791

`Δ[C(or(2, n), 2)]-(n+1)`
-/

namespace A158496.P11636316463479953791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)

end

end A158496.P11636316463479953791

namespace A158496

/-- `Δ[C(or(2, n), 2)]-(n+1)` -/
def P11636316463479953791.Spec : Prop :=
  ∀ n, P11636316463479953791.a n = A158496 n

end A158496

/-! ## A158496.P4899630850505815003

`Δ[C(or(2, n), 2)]-1-n`
-/

namespace A158496.P4899630850505815003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 - (n : ℤ)

end

end A158496.P4899630850505815003

namespace A158496

/-- `Δ[C(or(2, n), 2)]-1-n` -/
def P4899630850505815003.Spec : Prop :=
  ∀ n, P4899630850505815003.a n = A158496 n

end A158496

/-! ## A158496.P4175324633162795558

`Δ[xor(n, -and(1, a(n-1)))]` with `a(0)=0`
-/

namespace A158496.P4175324633162795558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.xor (n : ℤ) (-Int.land 1 (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158496.P4175324633162795558

namespace A158496

/-- `Δ[xor(n, -and(1, a(n-1)))]` -/
def P4175324633162795558.Spec : Prop :=
  ∀ n, P4175324633162795558.a n = A158496 n

end A158496

/-! ## A158496.P1437644396138410588

`Δ[(2*n+1)/(xor(2, n)-n)]`
-/

namespace A158496.P1437644396138410588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / ((Nat.xor 2 n : ℤ) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158496.P1437644396138410588

namespace A158496

/-- `Δ[(2*n+1)/(xor(2, n)-n)]` -/
def P1437644396138410588.Spec : Prop :=
  ∀ n, P1437644396138410588.a n = (A158496 n : ℚ)

end A158496

/-! ## A158496.P4318148420614065278

`n+1-Δ[C(and(2, n)+n, 2)]`
-/

namespace A158496.P4318148420614065278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 2 n + n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A158496.P4318148420614065278

namespace A158496

/-- `n+1-Δ[C(and(2, n)+n, 2)]` -/
def P4318148420614065278.Spec : Prop :=
  ∀ n, P4318148420614065278.a n = A158496 n

end A158496

/-! ## A158496.P8878224519263655937

`Δ[(2*n+1)/(2-and(2, n)²)]`
-/

namespace A158496.P8878224519263655937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (2 - (Nat.land 2 n ^ 2 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158496.P8878224519263655937

namespace A158496

/-- `Δ[(2*n+1)/(2-and(2, n)²)]` -/
def P8878224519263655937.Spec : Prop :=
  ∀ n, P8878224519263655937.a n = (A158496 n : ℚ)

end A158496

/-! ## A158496.P5005103821803770504

`Δ[(2*n+1)/(2-2*and(2, n))]`
-/

namespace A158496.P5005103821803770504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (2 - (2 * Nat.land 2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158496.P5005103821803770504

namespace A158496

/-- `Δ[(2*n+1)/(2-2*and(2, n))]` -/
def P5005103821803770504.Spec : Prop :=
  ∀ n, P5005103821803770504.a n = (A158496 n : ℚ)

end A158496

/-! ## A158496.P11252011316287775671

`Δ[n-(2*n+1)*and(1, a(n-1))]` with `a(0)=0`
-/

namespace A158496.P11252011316287775671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - (2 * n + 1 : ℤ) * Int.land 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158496.P11252011316287775671

namespace A158496

/-- `Δ[n-(2*n+1)*and(1, a(n-1))]` -/
def P11252011316287775671.Spec : Prop :=
  ∀ n, P11252011316287775671.a n = A158496 n

end A158496

/-! ## A158496.P1538896320771656416

`Δ[(2*n+1)*A000045(and(2, n-2))]-1`
-/

namespace A158496.P1538896320771656416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000045 (Int.land 2 ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A158496.P1538896320771656416

namespace A158496

/-- `Δ[(2*n+1)*A000045(and(2, n-2))]-1` -/
def P1538896320771656416.Spec : Prop :=
  ∀ n, P1538896320771656416.a n = A158496 n

end A158496

/-! ## A158496.P14740446930614518714

`A019425(n+2)*A087960(n)`
-/

namespace A158496.P14740446930614518714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (n + 2) * A087960 n

end

end A158496.P14740446930614518714

namespace A158496

/-- `A019425(n+2)*A087960(n)` -/
def P14740446930614518714.Spec : Prop :=
  ∀ n, P14740446930614518714.a n = A158496 n

end A158496

/-! ## A158496.P16067764766807836923

`Δ[(2*n+1)*and(1, ∑[n+1])]-1`
-/

namespace A158496.P16067764766807836923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A158496.P16067764766807836923

namespace A158496

/-- `Δ[(2*n+1)*and(1, ∑[n+1])]-1` -/
def P16067764766807836923.Spec : Prop :=
  ∀ n, P16067764766807836923.a n = A158496 n

end A158496

/-! ## A158496.P5144875157878459695

`Δ[(2*n+1)*A057077(n)/2]`
-/

namespace A158496.P5144875157878459695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * A057077 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158496.P5144875157878459695

namespace A158496

/-- `Δ[(2*n+1)*A057077(n)/2]` -/
def P5144875157878459695.Spec : Prop :=
  ∀ n, P5144875157878459695.a n = (A158496 n : ℚ)

end A158496

/-! ## A158496.P6767542320806220637

`A008486(n+1)-Δ[A193828(n)]`
-/

namespace A158496.P6767542320806220637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - (f1 (n + 1) - f1 n)

end

end A158496.P6767542320806220637

namespace A158496

/-- `A008486(n+1)-Δ[A193828(n)]` -/
def P6767542320806220637.Spec : Prop :=
  ∀ n, P6767542320806220637.a n = A158496 n

end A158496

/-! ## A158496.P13455404756675333775

`Δ[A005408(n)/(2*A057077(n))]`
-/

namespace A158496.P13455404756675333775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (2 * A057077 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158496.P13455404756675333775

namespace A158496

/-- `Δ[A005408(n)/(2*A057077(n))]` -/
def P13455404756675333775.Spec : Prop :=
  ∀ n, P13455404756675333775.a n = (A158496 n : ℚ)

end A158496

/-! ## A158496.P4810258712788397631

`(A114752(n+2)-1)/A009001(n+1)`
-/

namespace A158496.P4810258712788397631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114752 (n + 2) - 1 : ℚ) / (A009001 (n + 1) : ℚ)

end

end A158496.P4810258712788397631

namespace A158496

/-- `(A114752(n+2)-1)/A009001(n+1)` -/
def P4810258712788397631.Spec : Prop :=
  ∀ n, P4810258712788397631.a n = (A158496 n : ℚ)

end A158496

/-! ## A158496.P11513730601748768196

`A008486(n)-Δ[A193828(n)-A008486(n)]`
-/

namespace A158496.P11513730601748768196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193828 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - (f1 (n + 1) - f1 n)

end

end A158496.P11513730601748768196

namespace A158496

/-- `A008486(n)-Δ[A193828(n)-A008486(n)]` -/
def P11513730601748768196.Spec : Prop :=
  ∀ n, P11513730601748768196.a n = A158496 n

end A158496

/-!
# A158498: a(n) = (1/2)*(n^3 - 6*n^2 + 13*n - 6).

The programs for A158498, the canonical program `A158498.P12038063950995667006` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158498 has offset 1).

The definition of A158498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*((n+1)^3-6*(n+1)²+13*(n+1)-6)` (program `A158498.P4072745823156568978`, by `A158498.P4072745823156568978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158498.P15362347753059778167

`((n-1)^3+n+1+2)/2`
-/

namespace A158498.P15362347753059778167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 3 + (n + 1 : ℤ) + 2 : ℚ) / 2

end

end A158498.P15362347753059778167

namespace A158498

/-- `((n-1)^3+n+1+2)/2` -/
def P15362347753059778167.Spec : Prop :=
  ∀ n, P15362347753059778167.a n = (A158498 (n + 1) : ℚ)

theorem P15362347753059778167.correct : P15362347753059778167.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A158498, Nat.add_sub_cancel, A158498.P15362347753059778167.a, A158498.P12038063950995667006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A158498, Nat.add_sub_cancel, A158498.P15362347753059778167.a, A158498.P12038063950995667006.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A158498

/-! ## A158498.P4072745823156568978

`1/2*((n+1)^3-6*(n+1)²+13*(n+1)-6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158498.P4072745823156568978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (((n + 1) ^ 3 : ℤ) - (6 * (n + 1) ^ 2 : ℤ) + (13 * (n + 1) : ℤ) - 6 : ℚ)

end

end A158498.P4072745823156568978

namespace A158498

/-- `1/2*((n+1)^3-6*(n+1)²+13*(n+1)-6)` -/
def P4072745823156568978.Spec : Prop :=
  ∀ n, P4072745823156568978.a n = (A158498 (n + 1) : ℚ)

theorem P4072745823156568978.correct : P4072745823156568978.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A158498, Nat.add_sub_cancel, A158498.P4072745823156568978.a, A158498.P12038063950995667006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A158498, Nat.add_sub_cancel, A158498.P4072745823156568978.a, A158498.P12038063950995667006.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A158498

/-! ## A158498.P12038063950995667006

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158498

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12038063950995667006.Spec : Prop :=
  ∀ n, P12038063950995667006.a n = A158498 (n + 1)

theorem P12038063950995667006.correct : P12038063950995667006.Spec := by
  intro n
  simp only [A158498, Nat.add_sub_cancel]

end A158498

/-! ## A158498.P15206674956261283242

`1+3*C(n, 3)+n`
-/

namespace A158498.P15206674956261283242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 * Nat.choose n 3 + n

end

end A158498.P15206674956261283242

namespace A158498

/-- `1+3*C(n, 3)+n` -/
def P15206674956261283242.Spec : Prop :=
  ∀ n, (P15206674956261283242.a n : ℤ) = A158498 (n + 1)

end A158498

/-! ## A158498.P1336203181266522703

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A158498.P1336203181266522703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158498.P1336203181266522703

namespace A158498

/-- `∑[∑[a(n-1)+3]]` -/
def P1336203181266522703.Spec : Prop :=
  ∀ n, (P1336203181266522703.a n : ℤ) = A158498 (n + 1)

end A158498

/-! ## A158498.P5226008342922410985

`∑[∑[ogf((1-2x+x^2+3x^3)/(1-2x+x^2))]]`
-/

namespace A158498.P5226008342922410985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158498.P5226008342922410985

namespace A158498

/-- `∑[∑[ogf((1-2x+x^2+3x^3)/(1-2x+x^2))]]` -/
def P5226008342922410985.Spec : Prop :=
  ∀ n, P5226008342922410985.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P5779586303812863303

`∑[abs(∑[a(n-1)-3])]` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A158498.P5779586303812863303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158498.P5779586303812863303

namespace A158498

/-- `∑[abs(∑[a(n-1)-3])]` -/
def P5779586303812863303.Spec : Prop :=
  ∀ n, P5779586303812863303.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P18260119922994475824

`∑[1-∑[a(n-1)-3]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A158498.P18260119922994475824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158498.P18260119922994475824

namespace A158498

/-- `∑[1-∑[a(n-1)-3]]` -/
def P18260119922994475824.Spec : Prop :=
  ∀ n, P18260119922994475824.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P17010639657381117917

`A060354(n)+1`
-/

namespace A158498.P17010639657381117917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n + 1

end

end A158498.P17010639657381117917

namespace A158498

/-- `A060354(n)+1` -/
def P17010639657381117917.Spec : Prop :=
  ∀ n, P17010639657381117917.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P4631752444253246550

`A242659(n)/2+1`
-/

namespace A158498.P4631752444253246550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242659 n : ℚ) / 2 + 1

end

end A158498.P4631752444253246550

namespace A158498

/-- `A242659(n)/2+1` -/
def P4631752444253246550.Spec : Prop :=
  ∀ n, P4631752444253246550.a n = (A158498 (n + 1) : ℚ)

end A158498

/-! ## A158498.P6521601342282622974

`A117665(n)/(n+1)+1`
-/

namespace A158498.P6521601342282622974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117665 n : ℚ) / (n + 1 : ℚ) + 1

end

end A158498.P6521601342282622974

namespace A158498

/-- `A117665(n)/(n+1)+1` -/
def P6521601342282622974.Spec : Prop :=
  ∀ n, P6521601342282622974.a n = (A158498 (n + 1) : ℚ)

end A158498

/-! ## A158498.P13738745014850143583

`A007531(n)/2+n+1`
-/

namespace A158498.P13738745014850143583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 n : ℚ) / 2 + (n + 1 : ℚ)

end

end A158498.P13738745014850143583

namespace A158498

/-- `A007531(n)/2+n+1` -/
def P13738745014850143583.Spec : Prop :=
  ∀ n, P13738745014850143583.a n = (A158498 (n + 1) : ℚ)

end A158498

/-! ## A158498.P12983267106509391344

`A006001(n)-A005449(n)`
-/

namespace A158498.P12983267106509391344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006001 n - A005449 n

end

end A158498.P12983267106509391344

namespace A158498

/-- `A006001(n)-A005449(n)` -/
def P12983267106509391344.Spec : Prop :=
  ∀ n, P12983267106509391344.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P17476763627755097508

`A006000(n)-A005476(n)`
-/

namespace A158498.P17476763627755097508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n - A005476 n

end

end A158498.P17476763627755097508

namespace A158498

/-- `A006000(n)-A005476(n)` -/
def P17476763627755097508.Spec : Prop :=
  ∀ n, P17476763627755097508.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P14927208982475414481

`A005491(n)-A027480(n)`
-/

namespace A158498.P14927208982475414481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005491 n - A027480 n

end

end A158498.P14927208982475414481

namespace A158498

/-- `A005491(n)-A027480(n)` -/
def P14927208982475414481.Spec : Prop :=
  ∀ n, P14927208982475414481.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P8815278438822363953

`A064808(n)-A000384(n)`
-/

namespace A158498.P8815278438822363953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n - A000384 n

end

end A158498.P8815278438822363953

namespace A158498

/-- `A064808(n)-A000384(n)` -/
def P8815278438822363953.Spec : Prop :=
  ∀ n, P8815278438822363953.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P11613311290770247633

`A154560(n)-A062725(n)`
-/

namespace A158498.P11613311290770247633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154560 n - A062725 n

end

end A158498.P11613311290770247633

namespace A158498

/-- `A154560(n)-A062725(n)` -/
def P11613311290770247633.Spec : Prop :=
  ∀ n, P11613311290770247633.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P8200305699321917571

`A055232(n)-A227541(n)`
-/

namespace A158498.P8200305699321917571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n - A227541 n

end

end A158498.P8200305699321917571

namespace A158498

/-- `A055232(n)-A227541(n)` -/
def P8200305699321917571.Spec : Prop :=
  ∀ n, P8200305699321917571.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P14744805234401216426

`A071568(n)-A256857(n)`
-/

namespace A158498.P14744805234401216426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 n - A256857 n

end

end A158498.P14744805234401216426

namespace A158498

/-- `A071568(n)-A256857(n)` -/
def P14744805234401216426.Spec : Prop :=
  ∀ n, P14744805234401216426.a n = A158498 (n + 1)

end A158498

/-! ## A158498.P3205567361798583529

`A164845(n)-A185669(n)`
-/

namespace A158498.P3205567361798583529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164845 n - A185669 n

end

end A158498.P3205567361798583529

namespace A158498

/-- `A164845(n)-A185669(n)` -/
def P3205567361798583529.Spec : Prop :=
  ∀ n, P3205567361798583529.a n = A158498 (n + 1)

end A158498

/-!
# A158499: Expansion of (1 + sqrt(1-4*x))/(2-4*x).

The programs for A158499, the canonical program `A158499.P10975260698363482242` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158499 has offset 0).

The definition of A158499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158499.P10975260698363482242

`(6*(n-1)*a(n-1)-4*(2*n-3)*a(n-2))/n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158499

/-- `(6*(n-1)*a(n-1)-4*(2*n-3)*a(n-2))/n` -/
def P10975260698363482242.Spec : Prop :=
  ∀ n, P10975260698363482242.a n = (A158499 n : ℚ)

end A158499

/-! ## A158499.P4166702892558533992

`A115140(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A158499.P4166702892558533992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115140 n + 2 * a (n - 1)

end

end A158499.P4166702892558533992

namespace A158499

/-- `A115140(n)+2*a(n-1)` -/
def P4166702892558533992.Spec : Prop :=
  ∀ n, P4166702892558533992.a n = A158499 n

end A158499

/-! ## A158499.P3607793433518675901

`2*a(n-1)-A120588(n)` with `a(0)=1`
-/

namespace A158499.P3607793433518675901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A120588 n

end

end A158499.P3607793433518675901

namespace A158499

/-- `2*a(n-1)-A120588(n)` -/
def P3607793433518675901.Spec : Prop :=
  ∀ n, P3607793433518675901.a n = A158499 n

end A158499

/-! ## A158499.P5490607095469217808

`2*a(n-1)-A000108(n-1)` with `a(0)=1`
-/

namespace A158499.P5490607095469217808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A000108 (n - 1)

end

end A158499.P5490607095469217808

namespace A158499

/-- `2*a(n-1)-A000108(n-1)` -/
def P5490607095469217808.Spec : Prop :=
  ∀ n, P5490607095469217808.a n = A158499 n

end A158499

/-! ## A158499.P632967754656442802

`a(n-1)+A246432(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A158499.P632967754656442802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A246432 n + a (n - 1))

end

end A158499.P632967754656442802

namespace A158499

/-- `a(n-1)+A246432(n)+a(n-1)` -/
def P632967754656442802.Spec : Prop :=
  ∀ n, P632967754656442802.a n = A158499 n

end A158499

/-! ## A158499.P315714682189846835

`a(n-1)+a(n-1)-A000108((n-1)%n)` with `a(0)=1`
-/

namespace A158499.P315714682189846835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A000108 (Int.tmod ((n : ℤ) - 1) (n : ℤ)).toNat)

end

end A158499.P315714682189846835

namespace A158499

/-- `a(n-1)+a(n-1)-A000108((n-1)%n)` -/
def P315714682189846835.Spec : Prop :=
  ∀ n, P315714682189846835.a n = A158499 n

end A158499

/-! ## A158499.P6889752825665743809

`A158495(n)+A155559(n)`
-/

namespace A158499.P6889752825665743809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158495 n + A155559 n

end

end A158499.P6889752825665743809

namespace A158499

/-- `A158495(n)+A155559(n)` -/
def P6889752825665743809.Spec : Prop :=
  ∀ n, P6889752825665743809.a n = A158499 n

end A158499

/-! ## A158499.P18375169206277989796

`(A126966(n)+A000079(n))/2`
-/

namespace A158499.P18375169206277989796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126966 n + A000079 n : ℚ) / 2

end

end A158499.P18375169206277989796

namespace A158499

/-- `(A126966(n)+A000079(n))/2` -/
def P18375169206277989796.Spec : Prop :=
  ∀ n, P18375169206277989796.a n = (A158499 n : ℚ)

end A158499

/-! ## A158499.P11173710289387970842

`2*a(n-1)-A124644(A161680(n))` with `a(0)=1`
-/

namespace A158499.P11173710289387970842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A124644 (A161680 n).toNat

end

end A158499.P11173710289387970842

namespace A158499

/-- `2*a(n-1)-A124644(A161680(n))` -/
def P11173710289387970842.Spec : Prop :=
  ∀ n, P11173710289387970842.a n = A158499 n

end A158499

