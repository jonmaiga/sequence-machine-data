import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B004.C004
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
# A389401: Composite numbers that divide at least one term in every Fibonacci sequence.

The programs for A389401, there is no canonical definition to state claims against.
-/

/-! ## A389401.P10765083000940142255

`∩[A064414(n+1), A193305(n+1)]`
-/

namespace A389401.P10765083000940142255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P10765083000940142255

/-! ## A389401.P7487490849582849967

`filter[A064414(n+1), A066247(#)]`
-/

namespace A389401.P7487490849582849967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A389401.P7487490849582849967

/-! ## A389401.P2144940456624176199

`filter[A064414(n+2), A005171(#)]`
-/

namespace A389401.P2144940456624176199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A389401.P2144940456624176199

/-! ## A389401.P3411997526271766571

`∩[A002808(n+1), A064414(n+1)]`
-/

namespace A389401.P3411997526271766571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P3411997526271766571

/-! ## A389401.P10218867469451370879

`∩[A064414(n+1), A300079(n+1)]`
-/

namespace A389401.P10218867469451370879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P10218867469451370879

/-! ## A389401.P2186050357424905998

`∩[A064414(n+1), A132858(n+1)]`
-/

namespace A389401.P2186050357424905998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P2186050357424905998

/-! ## A389401.P15365246031953354777

`∩[A060679(n+1), A064414(n+1)]`
-/

namespace A389401.P15365246031953354777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P15365246031953354777

/-! ## A389401.P6994008011020799428

`∩[A064414(n+1), A179891(n+1)]`
-/

namespace A389401.P6994008011020799428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P6994008011020799428

/-! ## A389401.P16193661201061963093

`∩[A064414(n+1), A192506(n+1)]`
-/

namespace A389401.P16193661201061963093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P16193661201061963093

/-! ## A389401.P4283465294646669029

`∩[A064414(n+1), A391939(n+1)]`
-/

namespace A389401.P4283465294646669029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P4283465294646669029

/-!
# A389402: Expansion of (1/x) * Series_Reversion( x * (1 - x - x / (1 - x)^3) ).

The programs for A389402, the canonical program `A389402.P7269011306304324622` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389402 has offset 0).

The definition of A389402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389402.P7269011306304324622

`1/(n+1)*∑{#}[n, C(n+#, #)*C(2*n+3*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389402

/-- `1/(n+1)*∑{#}[n, C(n+#, #)*C(2*n+3*#, n-#)]` -/
def P7269011306304324622.Spec : Prop :=
  ∀ n, P7269011306304324622.a n = (A389402 n : ℚ)

end A389402

/-!
# A389403: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^2 / (1 - x)^3) ).

The programs for A389403, the canonical program `A389403.P11870175003693255733` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389403 has offset 0).

The definition of A389403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389403.P11870175003693255733

`1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(2*n+2*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389403

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(2*n+2*#, n-2*#)]` -/
def P11870175003693255733.Spec : Prop :=
  ∀ n, P11870175003693255733.a n = (A389403 n : ℚ)

end A389403

/-! ## A389403.P11206968012773336908

`A187188(A155596(n)+4)`
-/

namespace A389403.P11206968012773336908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A155596 n + 4).toNat

end

end A389403.P11206968012773336908

namespace A389403

/-- `A187188(A155596(n)+4)` -/
def P11206968012773336908.Spec : Prop :=
  ∀ n, P11206968012773336908.a n = A389403 n

end A389403

/-!
# A389404: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^3 / (1 - x)^3) ).

The programs for A389404, the canonical program `A389404.P2225171950601920184` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389404 has offset 0).

The definition of A389404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389404.P2225171950601920184

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+#, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389404

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+#, n-3*#)]` -/
def P2225171950601920184.Spec : Prop :=
  ∀ n, P2225171950601920184.a n = (A389404 n : ℚ)

end A389404

/-! ## A389404.P7452661322613984135

`A195174(A151468(n+1))`
-/

namespace A389404.P7452661322613984135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A151468 (n + 1)).toNat

end

end A389404.P7452661322613984135

namespace A389404

/-- `A195174(A151468(n+1))` -/
def P7452661322613984135.Spec : Prop :=
  ∀ n, P7452661322613984135.a n = A389404 n

end A389404

/-! ## A389404.P10829002714382590786

`A228039(A001187(n))+A129158(n)`
-/

namespace A389404.P10829002714382590786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 (A001187 n).toNat + A129158 n

end

end A389404.P10829002714382590786

namespace A389404

/-- `A228039(A001187(n))+A129158(n)` -/
def P10829002714382590786.Spec : Prop :=
  ∀ n, P10829002714382590786.a n = A389404 n

end A389404

/-!
# A389405: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^5 / (1 - x)) ).

The programs for A389405, the canonical program `A389405.P16466539227226954495` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389405 has offset 0).

The definition of A389405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389405.P16466539227226954495

`1/(n+1)*∑{#}[floor(n/5), C(n+#, #)*C(2*n-3*#, n-5*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389405

/-- `1/(n+1)*∑{#}[floor(n/5), C(n+#, #)*C(2*n-3*#, n-5*#)]` -/
def P16466539227226954495.Spec : Prop :=
  ∀ n, P16466539227226954495.a n = (A389405 n : ℚ)

end A389405

/-! ## A389405.P3795963427786995224

`A195119(A176605(n))`
-/

namespace A389405.P3795963427786995224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A176605 n).toNat

end

end A389405.P3795963427786995224

namespace A389405

/-- `A195119(A176605(n))` -/
def P3795963427786995224.Spec : Prop :=
  ∀ n, P3795963427786995224.a n = A389405 n

end A389405

/-! ## A389405.P11269335407650732223

`A111851(A000108(n+2))+1`
-/

namespace A389405.P11269335407650732223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (A000108 (n + 2)).toNat + 1

end

end A389405.P11269335407650732223

namespace A389405

/-- `A111851(A000108(n+2))+1` -/
def P11269335407650732223.Spec : Prop :=
  ∀ n, P11269335407650732223.a n = A389405 n

end A389405

/-! ## A389405.P9198949797536874403

`A111858(A000108(n+2)-n)+1`
-/

namespace A389405.P9198949797536874403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111858 (A000108 (n + 2) - (n : ℤ)).toNat + 1

end

end A389405.P9198949797536874403

namespace A389405

/-- `A111858(A000108(n+2)-n)+1` -/
def P9198949797536874403.Spec : Prop :=
  ∀ n, P9198949797536874403.a n = A389405 n

end A389405

/-!
# A389406: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^2) ).

The programs for A389406, the canonical program `A389406.P74488536734935256` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389406 has offset 0).

The definition of A389406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389406.P74488536734935256

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389406

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*#, n-3*#)]` -/
def P74488536734935256.Spec : Prop :=
  ∀ n, P74488536734935256.a n = (A389406 n : ℚ)

end A389406

/-!
# A389407: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^3) ).

The programs for A389407, the canonical program `A389407.P12329058446061681892` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389407 has offset 0).

The definition of A389407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389407.P12329058446061681892

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(3*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389407

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(3*#, n-3*#)]` -/
def P12329058446061681892.Spec : Prop :=
  ∀ n, P12329058446061681892.a n = (A389407 n : ℚ)

end A389407

/-!
# A389408: a(1)=2; thereafter a(n) = a(n-1) + gpf(a(n-1)) - 1, where gpf = greatest prime factor = A006530.

The programs for A389408, the canonical program `A389408.P9215505709923838788` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389408 has offset 1).

The definition of A389408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389408.P9215505709923838788

`a(n-1)+A006530(a(n-1))-1` with `a(0)=2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389408

/-- `a(n-1)+A006530(a(n-1))-1` -/
def P9215505709923838788.Spec : Prop :=
  ∀ n, P9215505709923838788.a n = A389408 (n + 1)

theorem P9215505709923838788.correct : P9215505709923838788.Spec := by
  intro n
  simp only [A389408, Nat.add_sub_cancel]

end A389408

/-! ## A389408.P6255787676919569352

`A070229(a(n-1))-1` with `a(0)=2`
-/

namespace A389408.P6255787676919569352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070229 (a (n - 1)).toNat - 1

end

end A389408.P6255787676919569352

namespace A389408

/-- `A070229(a(n-1))-1` -/
def P6255787676919569352.Spec : Prop :=
  ∀ n, P6255787676919569352.a n = A389408 (n + 1)

end A389408

/-! ## A389408.P7866191565024067237

`eq[A031268(n+1), A112187(n)]`
-/

namespace A389408.P7866191565024067237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389408.P7866191565024067237

namespace A389408

/-- `eq[A031268(n+1), A112187(n)]` -/
def P7866191565024067237.Spec : Prop :=
  ∀ n, (P7866191565024067237.a n : ℤ) = A389408 (n + 1)

end A389408

/-!
# A389410: Expansion of (1/x) * Series_Reversion( x * (1 - x) / (1 + x^2 / (1 - x)^2) ).

The programs for A389410, the canonical program `A389410.P5050009723553091632` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389410 has offset 0).

The definition of A389410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389410.P5050009723553091632

`1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389410

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n, n-2*#)]` -/
def P5050009723553091632.Spec : Prop :=
  ∀ n, P5050009723553091632.a n = (A389410 n : ℚ)

end A389410

/-! ## A389410.P15476089177010224332

`A187182(A211854(n+1))`
-/

namespace A389410.P15476089177010224332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (A211854 (n + 1)).toNat

end

end A389410.P15476089177010224332

namespace A389410

/-- `A187182(A211854(n+1))` -/
def P15476089177010224332.Spec : Prop :=
  ∀ n, P15476089177010224332.a n = A389410 n

end A389410

/-! ## A389410.P13305569550530884394

`A333217(A279569(n)+A181832(n))`
-/

namespace A389410.P13305569550530884394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (A279569 n + A181832 n).toNat

end

end A389410.P13305569550530884394

namespace A389410

/-- `A333217(A279569(n)+A181832(n))` -/
def P13305569550530884394.Spec : Prop :=
  ∀ n, P13305569550530884394.a n = A389410 n

end A389410

/-!
# A389411: Expansion of (1/x) * Series_Reversion( x * (1 - x) / (1 + x^3 / (1 - x)^3) ).

The programs for A389411, the canonical program `A389411.P8901213990794455132` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389411 has offset 0).

The definition of A389411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389411.P8901213990794455132

`1/(n+1)*∑{#}[floor(n/3), C(n+1, #)*C(2*n, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389411

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+1, #)*C(2*n, n-3*#)]` -/
def P8901213990794455132.Spec : Prop :=
  ∀ n, P8901213990794455132.a n = (A389411 n : ℚ)

end A389411

/-! ## A389411.P13836632930431300327

`A113769(A244884(n+1))`
-/

namespace A389411.P13836632930431300327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113769 (A244884 (n + 1)).toNat

end

end A389411.P13836632930431300327

namespace A389411

/-- `A113769(A244884(n+1))` -/
def P13836632930431300327.Spec : Prop :=
  ∀ n, P13836632930431300327.a n = A389411 n

end A389411

/-! ## A389411.P11208950028246176701

`A337635(A150199(n))`
-/

namespace A389411.P11208950028246176701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A150199 n).toNat

end

end A389411.P11208950028246176701

namespace A389411

/-- `A337635(A150199(n))` -/
def P11208950028246176701.Spec : Prop :=
  ∀ n, P11208950028246176701.a n = A389411 n

end A389411

/-!
# A389412: a(n) is the largest k such that (A005117(n) - 1) + A005117(i) is squarefree for 1 <= i <= k.

The programs for A389412, there is no canonical definition to state claims against.
-/

/-! ## A389412.P13190267178244785778

`A374251(lt[A209720(n+1), A000292(n)])`
-/

namespace A389412.P13190267178244785778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374251 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389412.P13190267178244785778

/-! ## A389412.P120649961578834988

`gcd(A045940(n+1), A067824(A070762(2*n+5)))`
-/

namespace A389412.P120649961578834988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045940 (n + 1)) (A067824 (A070762 (2 * n + 5)).toNat)

end

end A389412.P120649961578834988

/-! ## A389412.P6564657236207437954

`A400000(A399985(n+3)+A046100(2*(n+1)))`
-/

namespace A389412.P6564657236207437954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A399985 (n + 3) + A046100 (2 * (n + 1))).toNat

end

end A389412.P6564657236207437954

/-!
# A389413: a(n) is the least integer k such that among the n consecutive integers k, k + 1, ..., k + n - 1, the sum of any majority subset exceeds the sum of its complement.

The programs for A389413, the canonical program `A389413.P6189147182474438771` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389413 has offset 1).

The definition of A389413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389413.P6189147182474438771

`ogf((1+x^3+x^4+2x^6+x^7)/(1-2x^2+2x^6-x^8))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389413

/-- `ogf((1+x^3+x^4+2x^6+x^7)/(1-2x^2+2x^6-x^8))` -/
def P6189147182474438771.Spec : Prop :=
  ∀ n, P6189147182474438771.a n = A389413 (n + 1)

theorem P6189147182474438771.correct : P6189147182474438771.Spec := by
  intro n
  simp only [A389413, Nat.add_sub_cancel]

end A389413

/-! ## A389413.P18168438061224341137

`floor((A004526(n)²+1)/A000034(n))`
-/

namespace A389413.P18168438061224341137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004526 n ^ 2 + 1 : ℚ) / (A000034 n : ℚ)⌋

end

end A389413.P18168438061224341137

namespace A389413

/-- `floor((A004526(n)²+1)/A000034(n))` -/
def P18168438061224341137.Spec : Prop :=
  ∀ n, P18168438061224341137.a n = A389413 (n + 1)

end A389413

/-!
# A389414: Numbers k whose (not necessarily distinct) prime factors can be side lengths of a simple polygon.

The programs for A389414, there is no canonical definition to state claims against.
-/

/-! ## A389414.P6920860721523876429

`∪[A030514(n+1), A392380(n+1)]`
-/

namespace A389414.P6920860721523876429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P6920860721523876429

/-! ## A389414.P10501021834241931582

`∪[A062320(n+1), A392380(n+1)]`
-/

namespace A389414.P10501021834241931582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P10501021834241931582

/-! ## A389414.P15411356500863671251

`∪[A065771(n+1), A392380(n+1)]`
-/

namespace A389414.P15411356500863671251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P15411356500863671251

/-! ## A389414.P11730793602984566616

`∪[A074985(n+1), A392380(n+1)]`
-/

namespace A389414.P11730793602984566616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P11730793602984566616

/-! ## A389414.P18146234442410276333

`∪[A088247(n+1), A392380(n+1)]`
-/

namespace A389414.P18146234442410276333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P18146234442410276333

/-! ## A389414.P17154982159321187276

`∪[A113849(n+1), A392380(n+1)]`
-/

namespace A389414.P17154982159321187276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P17154982159321187276

/-! ## A389414.P6878473020201920020

`∪[A153157(n+1), A392380(n+1)]`
-/

namespace A389414.P6878473020201920020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P6878473020201920020

/-! ## A389414.P17451619400657737277

`∪[A172418(n+1), A392380(n+1)]`
-/

namespace A389414.P17451619400657737277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P17451619400657737277

/-! ## A389414.P15689617096052426654

`∪[A111307(n), A392380(n+1)]`
-/

namespace A389414.P15689617096052426654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P15689617096052426654

/-!
# A389415: a(n) is the number of permutations of 1..n that win this game. Take a shuffled pack of cards labeled 1..n, repeat this: look at the top card's value, X. Move X cards from the top of the deck to the back, one at a time. If you ever end up with the first card back at the top, you win.

The programs for A389415, there is no canonical definition to state claims against.
-/

/-! ## A389415.P12220858295902339939

`A098968(A219232(n)+A208950(n))`
-/

namespace A389415.P12220858295902339939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098968 (A219232 n + A208950 n).toNat

end

end A389415.P12220858295902339939

/-! ## A389415.P17948279811951551272

`A398717(A399989(n)+A003415(n))`
-/

namespace A389415.P17948279811951551272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398717 (A399989 n + A003415 n).toNat

end

end A389415.P17948279811951551272

/-!
# A389417: Primes containing at least one substring (not beginning with 0) such that, by doubling it, the resulting number is still prime.

The programs for A389417, there is no canonical definition to state claims against.
-/

/-! ## A389417.P17076568130601051030

`p?[A387526(n+1)]`
-/

namespace A389417.P17076568130601051030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389417.P17076568130601051030

/-! ## A389417.P7094118161389757495

`filter[A387526(n+1), A010051(#)]`
-/

namespace A389417.P7094118161389757495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A389417.P7094118161389757495

/-! ## A389417.P73834679415322382

`filter[A387526(n+1), A323153(#)]`
-/

namespace A389417.P73834679415322382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A389417.P73834679415322382

/-! ## A389417.P158827252070441378

`filter[A387526(n+1), A353670(#)]`
-/

namespace A389417.P158827252070441378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A389417.P158827252070441378

/-! ## A389417.P4808041343953052619

`filter[A387526(n+1), A379969(#)]`
-/

namespace A389417.P4808041343953052619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A389417.P4808041343953052619

/-! ## A389417.P6238618780139379249

`filter[A387526(n+2), A323152(#)]`
-/

namespace A389417.P6238618780139379249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A389417.P6238618780139379249

/-! ## A389417.P15762973776125841117

`filter[A387526(n+2), A340371(#)]`
-/

namespace A389417.P15762973776125841117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A389417.P15762973776125841117

/-! ## A389417.P18174377782202433036

`filter[A387526(n+2), A365716(#)]`
-/

namespace A389417.P18174377782202433036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A389417.P18174377782202433036

/-! ## A389417.P13676153721848969470

`filter[A387526(n+2), A380467(#)]`
-/

namespace A389417.P13676153721848969470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A389417.P13676153721848969470

/-! ## A389417.P4344491206752991143

`∩[A000040(n+1), A387526(n+1)]`
-/

namespace A389417.P4344491206752991143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P4344491206752991143

/-! ## A389417.P4572560982522176756

`∩[A001751(n+1), A387526(n+1)]`
-/

namespace A389417.P4572560982522176756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P4572560982522176756

/-! ## A389417.P11570685256616041149

`∩[A004139(n+1), A387526(n+1)]`
-/

namespace A389417.P11570685256616041149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P11570685256616041149

/-! ## A389417.P7243394848473817923

`∩[A038550(n+1), A387526(n+1)]`
-/

namespace A389417.P7243394848473817923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P7243394848473817923

/-! ## A389417.P7807888773757978813

`∩[A045319(n+1), A387526(n+1)]`
-/

namespace A389417.P7807888773757978813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P7807888773757978813

/-! ## A389417.P10726165115567097554

`∩[A045344(n+1), A387526(n+1)]`
-/

namespace A389417.P10726165115567097554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P10726165115567097554

/-! ## A389417.P15346427881407916876

`∩[A051948(n+1), A387526(n+1)]`
-/

namespace A389417.P15346427881407916876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P15346427881407916876

/-! ## A389417.P1276967220256465269

`∩[A053577(n+1), A387526(n+1)]`
-/

namespace A389417.P1276967220256465269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P1276967220256465269

/-! ## A389417.P13741105913856621070

`∩[A053813(n+1), A387526(n+1)]`
-/

namespace A389417.P13741105913856621070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P13741105913856621070

/-! ## A389417.P4737622205736112912

`∩[A058363(n+1), A387526(n+1)]`
-/

namespace A389417.P4737622205736112912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P4737622205736112912

/-! ## A389417.P1575134449911223432

`∩[A065091(n+1), A387526(n+1)]`
-/

namespace A389417.P1575134449911223432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P1575134449911223432

/-!
# A389423: a(n) = n*binomial(n, n/2) if n is even otherwise 2^(n-1)*binomial(n-1, (n-1)/2).

The programs for A389423, there is no canonical definition to state claims against.
-/

/-! ## A389423.P14889855471927710611

`A002322(A193937(n+1))*A004275(n)`
-/

namespace A389423.P14889855471927710611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A193937 (n + 1)).toNat * A004275 n

end

end A389423.P14889855471927710611

/-! ## A389423.P1388232884223753265

`and(A224613(n+2), A232101(A083180(n+2)))`
-/

namespace A389423.P1388232884223753265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A224613 (n + 2)) (A232101 (A083180 (n + 2)).toNat)

end

end A389423.P1388232884223753265

/-!
# A389424: Array read by antidiagonals: T(n,k) is the carryless sum of n + n in base k, n >=0, k >= 2.

The programs for A389424, there is no canonical definition to state claims against.
-/

/-! ## A389424.P6865485807410827411

`A270890(A247306(n+1))%A326922(3*n+2)`
-/

namespace A389424.P6865485807410827411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270890 (A247306 (n + 1)).toNat) (A326922 (3 * n + 2))

end

end A389424.P6865485807410827411

/-! ## A389424.P16087559283877046563

`A307597(A285114(n)+A051270(n+4))`
-/

namespace A389424.P16087559283877046563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (A285114 n + A051270 (n + 4)).toNat

end

end A389424.P16087559283877046563

/-! ## A389424.P8498388144896948293

`A064731(A000010(n+1))%A108553(n)`
-/

namespace A389424.P8498388144896948293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064731 (A000010 (n + 1)).toNat) (A108553 n)

end

end A389424.P8498388144896948293

/-! ## A389424.P4585248373383374337

`A333175(A296122(n))%A211315(n)`
-/

namespace A389424.P4585248373383374337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333175 (A296122 n).toNat) (A211315 n)

end

end A389424.P4585248373383374337

/-! ## A389424.P15410897328366918079

`A002970(A011782(n))%A116445(n+1)`
-/

namespace A389424.P15410897328366918079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002970 (A011782 n).toNat) (A116445 (n + 1))

end

end A389424.P15410897328366918079

/-!
# A389425: First differences of A199716.

The programs for A389425, the canonical program `A389425.P17457791161868218869` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389425 has offset 1).

The definition of A389425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389425.P17457791161868218869

`A199716(n+2)-A199716(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389425

/-- `A199716(n+2)-A199716(n+1)` -/
def P17457791161868218869.Spec : Prop :=
  ∀ n, P17457791161868218869.a n = A389425 (n + 1)

theorem P17457791161868218869.correct : P17457791161868218869.Spec := by
  intro n
  simp only [A389425, Nat.add_sub_cancel]

end A389425

/-! ## A389425.P7369589901572162664

`Δ[A199716(n+1)]`
-/

namespace A389425.P7369589901572162664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389425.P7369589901572162664

namespace A389425

/-- `Δ[A199716(n+1)]` -/
def P7369589901572162664.Spec : Prop :=
  ∀ n, P7369589901572162664.a n = A389425 (n + 1)

theorem P7369589901572162664.correct : P7369589901572162664.Spec := by
  intro n
  simp only [A389425, Nat.add_sub_cancel, A389425.P7369589901572162664.f1, A389425.P7369589901572162664.a, A389425.P17457791161868218869.a, SequenceMachineLib.memo_apply]

end A389425

/-! ## A389425.P14408539259410728582

`Δ[∩[A046953(n+1), A272902(n+1)]]`
-/

namespace A389425.P14408539259410728582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272902 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P14408539259410728582

namespace A389425

/-- `Δ[∩[A046953(n+1), A272902(n+1)]]` -/
def P14408539259410728582.Spec : Prop :=
  ∀ n, P14408539259410728582.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P17079390779722616997

`Δ[A000027(lt[7, A020481(3*n+4)]+1)]`
-/

namespace A389425.P17079390779722616997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389425.P17079390779722616997

namespace A389425

/-- `Δ[A000027(lt[7, A020481(3*n+4)]+1)]` -/
def P17079390779722616997.Spec : Prop :=
  ∀ n, P17079390779722616997.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P465535018920633370

`Δ[A000027(lt[3, A255274(3*n+2)]+1)]`
-/

namespace A389425.P465535018920633370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255274 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389425.P465535018920633370

namespace A389425

/-- `Δ[A000027(lt[3, A255274(3*n+2)]+1)]` -/
def P465535018920633370.Spec : Prop :=
  ∀ n, P465535018920633370.a n = A389425 (n + 1)

end A389425

/-!
# A389429: G.f. A(x) satisfies A(x)/(1 + A(x)) = -A(x^3)/A(-x^2).

The programs for A389429, there is no canonical definition to state claims against.
-/

/-! ## A389429.P16229196002895927359

`A308622(A149830(n))`
-/

namespace A389429.P16229196002895927359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308622 (A149830 n).toNat

end

end A389429.P16229196002895927359

/-! ## A389429.P15712084437726637801

`A390567(n)+A102283(A390567(2*n+3))`
-/

namespace A389429.P15712084437726637801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390567 n + A102283 (A390567 (2 * n + 3)).toNat

end

end A389429.P15712084437726637801

/-!
# A389430: Number of nodes on a hexagonal lattice where the side lengths increase in this pattern: (x, x, x, x, x, x) -> (x+1, x, x, x+1, x, x) -> (x+1, x, x+1, x, x+1, x) -> (x+1, x+1, x, x+1, x+1, x) -> (x+1, x+1, x+1, x+1, x+1, x+1).

The programs for A389430, the canonical program `A389430.P17185178409529452135` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389430 has offset 0).

The definition of A389430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389430.P17185178409529452135

`ogf((x+x^3+x^5)/(1-2x+2x^2-2x^3+2x^5-2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389430

/-- `ogf((x+x^3+x^5)/(1-2x+2x^2-2x^3+2x^5-2x^6+2x^7-x^8))` -/
def P17185178409529452135.Spec : Prop :=
  ∀ n, P17185178409529452135.a n = A389430 n

theorem P17185178409529452135.correct : P17185178409529452135.Spec := by
  intro n
  simp only [A389430]

end A389430

/-! ## A389430.P4177772296882864283

`∑[lcm(2, floor((n+1)/2))/2]`
-/

namespace A389430.P4177772296882864283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ⌊(n + 1 : ℚ) / 2⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P4177772296882864283

namespace A389430

/-- `∑[lcm(2, floor((n+1)/2))/2]` -/
def P4177772296882864283.Spec : Prop :=
  ∀ n, P4177772296882864283.a n = (A389430 n : ℚ)

end A389430

/-! ## A389430.P4053345114218918592

`∑[floor((n+1)/(and(2, n-1)+2))]`
-/

namespace A389430.P4053345114218918592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Int.land 2 ((n : ℤ) - 1) + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P4053345114218918592

namespace A389430

/-- `∑[floor((n+1)/(and(2, n-1)+2))]` -/
def P4053345114218918592.Spec : Prop :=
  ∀ n, P4053345114218918592.a n = A389430 n

end A389430

/-! ## A389430.P5087715768303990957

`∑[A026741(∑[n%2])]`
-/

namespace A389430.P5087715768303990957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P5087715768303990957

namespace A389430

/-- `∑[A026741(∑[n%2])]` -/
def P5087715768303990957.Spec : Prop :=
  ∀ n, P5087715768303990957.a n = A389430 n

end A389430

/-! ## A389430.P17305045641823051328

`∑[A026741(∑[and(1, n)])]`
-/

namespace A389430.P17305045641823051328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P17305045641823051328

namespace A389430

/-- `∑[A026741(∑[and(1, n)])]` -/
def P17305045641823051328.Spec : Prop :=
  ∀ n, P17305045641823051328.a n = A389430 n

end A389430

/-! ## A389430.P16684713904350972952

`∑[gcd(ceil(n/2), A001318(n))]`
-/

namespace A389430.P16684713904350972952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(n : ℚ) / 2⌉ (A001318 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P16684713904350972952

namespace A389430

/-- `∑[gcd(ceil(n/2), A001318(n))]` -/
def P16684713904350972952.Spec : Prop :=
  ∀ n, (P16684713904350972952.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P18443806746326828162

`∑[A026741(A110654(n))]`
-/

namespace A389430.P18443806746326828162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P18443806746326828162

namespace A389430

/-- `∑[A026741(A110654(n))]` -/
def P18443806746326828162.Spec : Prop :=
  ∀ n, P18443806746326828162.a n = A389430 n

end A389430

/-! ## A389430.P17315204487691051644

`A302488(n)-A038715(n)`
-/

namespace A389430.P17315204487691051644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302488 n - A038715 n

end

end A389430.P17315204487691051644

namespace A389430

/-- `A302488(n)-A038715(n)` -/
def P17315204487691051644.Spec : Prop :=
  ∀ n, P17315204487691051644.a n = A389430 n

end A389430

/-! ## A389430.P3185254416747383280

`∪[A007980(n), A033428(n)]`
-/

namespace A389430.P3185254416747383280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P3185254416747383280

namespace A389430

/-- `∪[A007980(n), A033428(n)]` -/
def P3185254416747383280.Spec : Prop :=
  ∀ n, (P3185254416747383280.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P12829422869249118843

`∪[A007980(n), A077043(n)]`
-/

namespace A389430.P12829422869249118843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P12829422869249118843

namespace A389430

/-- `∪[A007980(n), A077043(n)]` -/
def P12829422869249118843.Spec : Prop :=
  ∀ n, (P12829422869249118843.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P18353890922865693096

`∪[A077043(n), A152749(n)]`
-/

namespace A389430.P18353890922865693096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P18353890922865693096

namespace A389430

/-- `∪[A077043(n), A152749(n)]` -/
def P18353890922865693096.Spec : Prop :=
  ∀ n, (P18353890922865693096.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P10629831245496466780

`∪[A229593(n+2), A003215(n)]`
-/

namespace A389430.P10629831245496466780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P10629831245496466780

namespace A389430

/-- `∪[A229593(n+2), A003215(n)]` -/
def P10629831245496466780.Spec : Prop :=
  ∀ n, (P10629831245496466780.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P5467216923518867535

`∪[A229593(n+2), A007980(n)]`
-/

namespace A389430.P5467216923518867535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P5467216923518867535

namespace A389430

/-- `∪[A229593(n+2), A007980(n)]` -/
def P5467216923518867535.Spec : Prop :=
  ∀ n, (P5467216923518867535.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P11587155774368154968

`∪[A229593(n+2), A077043(n)]`
-/

namespace A389430.P11587155774368154968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P11587155774368154968

namespace A389430

/-- `∪[A229593(n+2), A077043(n)]` -/
def P11587155774368154968.Spec : Prop :=
  ∀ n, (P11587155774368154968.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P2690266878434435387

`∪[A298125(n+1), A229593(n+2)]`
-/

namespace A389430.P2690266878434435387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P2690266878434435387

namespace A389430

/-- `∪[A298125(n+1), A229593(n+2)]` -/
def P2690266878434435387.Spec : Prop :=
  ∀ n, (P2690266878434435387.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P4311336689528404195

`∪[A309805(n+1), A229593(n+2)]`
-/

namespace A389430.P4311336689528404195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P4311336689528404195

namespace A389430

/-- `∪[A309805(n+1), A229593(n+2)]` -/
def P4311336689528404195.Spec : Prop :=
  ∀ n, (P4311336689528404195.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P12916335924217293790

`A069905(A301729(n+1))`
-/

namespace A389430.P12916335924217293790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A301729 (n + 1)).toNat

end

end A389430.P12916335924217293790

namespace A389430

/-- `A069905(A301729(n+1))` -/
def P12916335924217293790.Spec : Prop :=
  ∀ n, P12916335924217293790.a n = A389430 n

end A389430

/-! ## A389430.P12590462469466506605

`A069905(A047273(n+2))`
-/

namespace A389430.P12590462469466506605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A047273 (n + 2)).toNat

end

end A389430.P12590462469466506605

namespace A389430

/-- `A069905(A047273(n+2))` -/
def P12590462469466506605.Spec : Prop :=
  ∀ n, P12590462469466506605.a n = A389430 n

end A389430

/-! ## A389430.P5040764031109106637

`A005044(2*A267807(2*n+1))`
-/

namespace A389430.P5040764031109106637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * A267807 (2 * n + 1)).toNat

end

end A389430.P5040764031109106637

namespace A389430

/-- `A005044(2*A267807(2*n+1))` -/
def P5040764031109106637.Spec : Prop :=
  ∀ n, P5040764031109106637.a n = A389430 n

end A389430

/-!
# A389431: Primes of the form p^q - 2, where p and q are primes.

The programs for A389431, there is no canonical definition to state claims against.
-/

/-! ## A389431.P15234236602060891887

`∩[A053810(n+1)-2, A000040(n+1)]`
-/

namespace A389431.P15234236602060891887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389431.P15234236602060891887

/-! ## A389431.P7279589935092760453

`eq[A053204(n), A362421(n+2)]`
-/

namespace A389431.P7279589935092760453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362421 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389431.P7279589935092760453

/-! ## A389431.P12013215892336269678

`∩[A053705(n+1), A154579(n+1)]`
-/

namespace A389431.P12013215892336269678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389431.P12013215892336269678

/-!
# A389432: Smallest nonnegative integer with a constant congruence speed >= n (see A373387 for the definition of "constant congruence speed").

The programs for A389432, the canonical program `A389432.P8159619517608642910` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389432 has offset 0).

The definition of A389432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389432.P8159619517608642910

`ogf((2x+5x^2+9x^3+12x^5)/(1-3x^2-4x^4))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389432

/-- `ogf((2x+5x^2+9x^3+12x^5)/(1-3x^2-4x^4))` -/
def P8159619517608642910.Spec : Prop :=
  ∀ n, P8159619517608642910.a n = A389432 n

theorem P8159619517608642910.correct : P8159619517608642910.Spec := by
  intro n
  simp only [A389432]

end A389432

/-!
# A389435: Expansion of (1/x) * Series_Reversion( x * (1 - x) / (1 + x / (1 - x)^3) ).

The programs for A389435, the canonical program `A389435.P681756410655706602` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389435 has offset 0).

The definition of A389435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389435.P681756410655706602

`1/(n+1)*∑{#}[n, C(n+1, #)*C(2*n+2*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389435

/-- `1/(n+1)*∑{#}[n, C(n+1, #)*C(2*n+2*#, n-#)]` -/
def P681756410655706602.Spec : Prop :=
  ∀ n, P681756410655706602.a n = (A389435 n : ℚ)

end A389435

/-!
# A389436: Expansion of (1/x) * Series_Reversion( x * (1 - x) / (1 + x^2 / (1 - x)^3) ).

The programs for A389436, the canonical program `A389436.P6907715616596630553` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389436 has offset 0).

The definition of A389436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389436.P6907715616596630553

`1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n+#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389436

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n+#, n-2*#)]` -/
def P6907715616596630553.Spec : Prop :=
  ∀ n, P6907715616596630553.a n = (A389436 n : ℚ)

end A389436

/-! ## A389436.P6384960245370854297

`A277192(A122122(n))`
-/

namespace A389436.P6384960245370854297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A122122 n).toNat

end

end A389436.P6384960245370854297

namespace A389436

/-- `A277192(A122122(n))` -/
def P6384960245370854297.Spec : Prop :=
  ∀ n, P6384960245370854297.a n = A389436 n

end A389436

/-!
# A389437: Expansion of (1/x) * Series_Reversion( x * (1 - x * (1 + x)^2) / (1 + x) ).

The programs for A389437, the canonical program `A389437.P2195382667867840290` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389437 has offset 0).

The definition of A389437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389437.P2195382667867840290

`1/(n+1)*∑{#}[n, C(n+#, #)*C(n+2*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389437

/-- `1/(n+1)*∑{#}[n, C(n+#, #)*C(n+2*#+1, n-#)]` -/
def P2195382667867840290.Spec : Prop :=
  ∀ n, P2195382667867840290.a n = (A389437 n : ℚ)

end A389437

/-! ## A389437.P2156395767170584258

`A354767(A357227(n))+n`
-/

namespace A389437.P2156395767170584258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354767 (A357227 n).toNat + (n : ℤ)

end

end A389437.P2156395767170584258

namespace A389437

/-- `A354767(A357227(n))+n` -/
def P2156395767170584258.Spec : Prop :=
  ∀ n, P2156395767170584258.a n = A389437 n

end A389437

/-!
# A389438: Expansion of (1/x) * Series_Reversion( x * (1 - x * (1 + x)^3) / (1 + x) ).

The programs for A389438, the canonical program `A389438.P10235148621133199727` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389438 has offset 0).

The definition of A389438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389438.P10235148621133199727

`1/(n+1)*∑{#}[n, C(n+#, #)*C(n+3*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389438

/-- `1/(n+1)*∑{#}[n, C(n+#, #)*C(n+3*#+1, n-#)]` -/
def P10235148621133199727.Spec : Prop :=
  ∀ n, P10235148621133199727.a n = (A389438 n : ℚ)

end A389438

/-!
# A389439: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 * (1 + x)^3) / (1 + x) ).

The programs for A389439, the canonical program `A389439.P5035992238113275623` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389439 has offset 0).

The definition of A389439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389439.P5035992238113275623

`1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(n+3*#+1, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389439

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(n+3*#+1, n-2*#)]` -/
def P5035992238113275623.Spec : Prop :=
  ∀ n, P5035992238113275623.a n = (A389439 n : ℚ)

end A389439

/-! ## A389439.P14679504098255123027

`A226896(A279567(n))`
-/

namespace A389439.P14679504098255123027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (A279567 n).toNat

end

end A389439.P14679504098255123027

namespace A389439

/-- `A226896(A279567(n))` -/
def P14679504098255123027.Spec : Prop :=
  ∀ n, P14679504098255123027.a n = A389439 n

end A389439

/-! ## A389439.P8554977977988707367

`A095346(3*n+5)+A008615(A066983(3*n+1))`
-/

namespace A389439.P8554977977988707367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095346 (3 * n + 5) + A008615 (A066983 (3 * n + 1)).toNat

end

end A389439.P8554977977988707367

namespace A389439

/-- `A095346(3*n+5)+A008615(A066983(3*n+1))` -/
def P8554977977988707367.Spec : Prop :=
  ∀ n, P8554977977988707367.a n = A389439 n

end A389439

/-!
# A389440: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^2) / (1 + x) ).

The programs for A389440, the canonical program `A389440.P14330519705026663910` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389440 has offset 0).

The definition of A389440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389440.P14330519705026663910

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(n+2*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389440

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(n+2*#+1, n-3*#)]` -/
def P14330519705026663910.Spec : Prop :=
  ∀ n, P14330519705026663910.a n = (A389440 n : ℚ)

end A389440

/-!
# A389441: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^3) / (1 + x) ).

The programs for A389441, the canonical program `A389441.P7650392422000690907` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389441 has offset 0).

The definition of A389441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389441.P7650392422000690907

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(n+3*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389441

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(n+3*#+1, n-3*#)]` -/
def P7650392422000690907.Spec : Prop :=
  ∀ n, P7650392422000690907.a n = (A389441 n : ℚ)

end A389441

/-! ## A389441.P7058515801967188754

`A162229(A149319(n))`
-/

namespace A389441.P7058515801967188754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A149319 n).toNat

end

end A389441.P7058515801967188754

namespace A389441

/-- `A162229(A149319(n))` -/
def P7058515801967188754.Spec : Prop :=
  ∀ n, P7058515801967188754.a n = A389441 n

end A389441

/-! ## A389441.P10815402178248340073

`A162229(A259845(n))`
-/

namespace A389441.P10815402178248340073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A259845 n).toNat

end

end A389441.P10815402178248340073

namespace A389441

/-- `A162229(A259845(n))` -/
def P10815402178248340073.Spec : Prop :=
  ∀ n, P10815402178248340073.a n = A389441 n

end A389441

/-!
# A389444: Expansion of (1/x) * Series_Reversion( x * (1 / (1 + x) - x^4) ).

The programs for A389444, the canonical program `A389444.P3037006511819415814` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389444 has offset 0).

The definition of A389444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389444.P3037006511819415814

`1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(n+#+1, n-4*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389444

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(n+#+1, n-4*#)]` -/
def P3037006511819415814.Spec : Prop :=
  ∀ n, P3037006511819415814.a n = (A389444 n : ℚ)

end A389444

/-! ## A389444.P10358494394767592876

`A365759(n)-A025466(A328323(n))`
-/

namespace A389444.P10358494394767592876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365759 n - A025466 (A328323 n).toNat

end

end A389444.P10358494394767592876

namespace A389444

/-- `A365759(n)-A025466(A328323(n))` -/
def P10358494394767592876.Spec : Prop :=
  ∀ n, P10358494394767592876.a n = A389444 n

end A389444

/-! ## A389444.P11391578975606509157

`A365759(n)-A133872(A365756(n+4))`
-/

namespace A389444.P11391578975606509157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365759 n - A133872 (A365756 (n + 4)).toNat

end

end A389444.P11391578975606509157

namespace A389444

/-- `A365759(n)-A133872(A365756(n+4))` -/
def P11391578975606509157.Spec : Prop :=
  ∀ n, P11391578975606509157.a n = A389444 n

end A389444

/-!
# A389445: Expansion of (1/x) * Series_Reversion( x * (1 / (1 + x) - x^5) ).

The programs for A389445, the canonical program `A389445.P13282492773704640640` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389445 has offset 0).

The definition of A389445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389445.P13282492773704640640

`1/(n+1)*∑{#}[floor(n/5), C(n+#, #)*C(n+#+1, n-5*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389445

/-- `1/(n+1)*∑{#}[floor(n/5), C(n+#, #)*C(n+#+1, n-5*#)]` -/
def P13282492773704640640.Spec : Prop :=
  ∀ n, P13282492773704640640.a n = (A389445 n : ℚ)

end A389445

/-!
# A389446: a(n) = gcd(sigma(n), A057723(n)), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

The programs for A389446, the canonical program `A389446.P10095306458237006129` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389446 has offset 1).

The definition of A389446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389446.P2197887414685117020

`A000203(n+1)/A389447(n+1)`
-/

namespace A389446.P2197887414685117020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389447 (n + 1) : ℚ)

end

end A389446.P2197887414685117020

namespace A389446

/-- `A000203(n+1)/A389447(n+1)` -/
def P2197887414685117020.Spec : Prop :=
  ∀ n, P2197887414685117020.a n = (A389446 (n + 1) : ℚ)

end A389446

/-! ## A389446.P11390280124858041430

`A057723(n+1)/A389448(n+1)`
-/

namespace A389446.P11390280124858041430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A389448 (n + 1) : ℚ)

end

end A389446.P11390280124858041430

namespace A389446

/-- `A057723(n+1)/A389448(n+1)` -/
def P11390280124858041430.Spec : Prop :=
  ∀ n, P11390280124858041430.a n = (A389446 (n + 1) : ℚ)

end A389446

/-! ## A389446.P10095306458237006129

`gcd(A000203(n+1), A057723(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A389446

/-- `gcd(A000203(n+1), A057723(n+1))` -/
def P10095306458237006129.Spec : Prop :=
  ∀ n, (P10095306458237006129.a n : ℤ) = A389446 (n + 1)

theorem P10095306458237006129.correct : P10095306458237006129.Spec := by
  intro n
  simp only [A389446, Nat.add_sub_cancel]

end A389446

/-! ## A389446.P8582679803587139274

`gcd(∑{d}[n+1, #], ∑{d}[(n+1)/∏{p}[n+1, #], (n+1)/#])`
-/

namespace A389446.P8582679803587139274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, (n + 1 : ℚ) / (d : ℚ)))

end

end A389446.P8582679803587139274

namespace A389446

/-- `gcd(∑{d}[n+1, #], ∑{d}[(n+1)/∏{p}[n+1, #], (n+1)/#])` -/
def P8582679803587139274.Spec : Prop :=
  ∀ n, (P8582679803587139274.a n : ℤ) = A389446 (n + 1)

end A389446

/-! ## A389446.P7289602653097241991

`gcd(∑{d}[(n+1)/∏{p}[n+1, #], (n+1)/#], A000203(n+1))`
-/

namespace A389446.P7289602653097241991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (n + 1 : ℚ) / (d : ℚ))) (A000203 (n + 1))

end

end A389446.P7289602653097241991

namespace A389446

/-- `gcd(∑{d}[(n+1)/∏{p}[n+1, #], (n+1)/#], A000203(n+1))` -/
def P7289602653097241991.Spec : Prop :=
  ∀ n, (P7289602653097241991.a n : ℤ) = A389446 (n + 1)

end A389446

/-! ## A389446.P4502339336209886302

`gcd(Δ[A160664(n)], A057723(n+1))`
-/

namespace A389446.P4502339336209886302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A057723 (n + 1))

end

end A389446.P4502339336209886302

namespace A389446

/-- `gcd(Δ[A160664(n)], A057723(n+1))` -/
def P4502339336209886302.Spec : Prop :=
  ∀ n, (P4502339336209886302.a n : ℤ) = A389446 (n + 1)

end A389446

/-! ## A389446.P17200315666933273368

`gcd(A336563(n+1)+1+n, ∑[A340793(n+1)])`
-/

namespace A389446.P17200315666933273368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336563 (n + 1) + 1 + (n : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A389446.P17200315666933273368

namespace A389446

/-- `gcd(A336563(n+1)+1+n, ∑[A340793(n+1)])` -/
def P17200315666933273368.Spec : Prop :=
  ∀ n, (P17200315666933273368.a n : ℤ) = A389446 (n + 1)

end A389446

/-! ## A389446.P9557212648022818220

`gcd(A057723(A000027(n+1)), A143348(n+1))`
-/

namespace A389446.P9557212648022818220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057723 (A000027 (n + 1)).toNat) (A143348 (n + 1))

end

end A389446.P9557212648022818220

namespace A389446

/-- `gcd(A057723(A000027(n+1)), A143348(n+1))` -/
def P9557212648022818220.Spec : Prop :=
  ∀ n, (P9557212648022818220.a n : ℤ) = A389446 (n + 1)

end A389446

/-! ## A389446.P13923721264243217714

`(A308135(n+1)+A057723(n+1))/A389447(n+1)`
-/

namespace A389446.P13923721264243217714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308135 (n + 1) + A057723 (n + 1) : ℚ) / (A389447 (n + 1) : ℚ)

end

end A389446.P13923721264243217714

namespace A389446

/-- `(A308135(n+1)+A057723(n+1))/A389447(n+1)` -/
def P13923721264243217714.Spec : Prop :=
  ∀ n, P13923721264243217714.a n = (A389446 (n + 1) : ℚ)

end A389446

/-! ## A389446.P14221121368421092597

`(A000203(n+1)-A308135(n+1))/A389448(n+1)`
-/

namespace A389446.P14221121368421092597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A308135 (n + 1) : ℚ) / (A389448 (n + 1) : ℚ)

end

end A389446.P14221121368421092597

namespace A389446

/-- `(A000203(n+1)-A308135(n+1))/A389448(n+1)` -/
def P14221121368421092597.Spec : Prop :=
  ∀ n, P14221121368421092597.a n = (A389446 (n + 1) : ℚ)

end A389446

/-!
# A389447: Numerator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

The programs for A389447, the canonical program `A389447.P10658135204883957213` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389447 has offset 1).

The definition of A389447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389447.P10658135204883957213

`A000203(n+1)/A389446(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A389447

/-- `A000203(n+1)/A389446(n+1)` -/
def P10658135204883957213.Spec : Prop :=
  ∀ n, P10658135204883957213.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P14901045860826730596

`(A308135(n+1)+A057723(n+1))/A389446(n+1)`
-/

namespace A389447.P14901045860826730596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308135 (n + 1) + A057723 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P14901045860826730596

namespace A389447

/-- `(A308135(n+1)+A057723(n+1))/A389446(n+1)` -/
def P14901045860826730596.Spec : Prop :=
  ∀ n, P14901045860826730596.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P14121037486683645109

`A389448(n+1)+A308135(n+1)/A389446(n+1)`
-/

namespace A389447.P14121037486683645109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389448 (n + 1) : ℚ) + (A308135 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P14121037486683645109

namespace A389447

/-- `A389448(n+1)+A308135(n+1)/A389446(n+1)` -/
def P14121037486683645109.Spec : Prop :=
  ∀ n, P14121037486683645109.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P4662386253578272659

`A000203(n+1)/A057723(n+1)*A389448(n+1)`
-/

namespace A389447.P4662386253578272659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A057723 (n + 1) : ℚ) * (A389448 (n + 1) : ℚ)

end

end A389447.P4662386253578272659

namespace A389447

/-- `A000203(n+1)/A057723(n+1)*A389448(n+1)` -/
def P4662386253578272659.Spec : Prop :=
  ∀ n, P4662386253578272659.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P9955930011845295498

`lcm(n+1, ∑{d}[n+1, #])/(n+1)*A333254(A136252(n+4))`
-/

namespace A389447.P9955930011845295498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / (n + 1 : ℚ) * (A333254 (A136252 (n + 4)).toNat : ℚ)

end

end A389447.P9955930011845295498

namespace A389447

/-- `lcm(n+1, ∑{d}[n+1, #])/(n+1)*A333254(A136252(n+4))` -/
def P9955930011845295498.Spec : Prop :=
  ∀ n, P9955930011845295498.a n = (A389447 (n + 1) : ℚ)

end A389447

/-!
# A389448: Denominator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

The programs for A389448, the canonical program `A389448.P4992283218641598864` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389448 has offset 1).

The definition of A389448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389448.P4992283218641598864

`A057723(n+1)/A389446(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A389448

/-- `A057723(n+1)/A389446(n+1)` -/
def P4992283218641598864.Spec : Prop :=
  ∀ n, P4992283218641598864.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P18283131894528295144

`(A336563(n+1)+1+n)/A389446(n+1)`
-/

namespace A389448.P18283131894528295144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336563 (n + 1) + 1 + (n : ℤ) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P18283131894528295144

namespace A389448

/-- `(A336563(n+1)+1+n)/A389446(n+1)` -/
def P18283131894528295144.Spec : Prop :=
  ∀ n, P18283131894528295144.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P4650582158506586427

`(A000203(n+1)-A308135(n+1))/A389446(n+1)`
-/

namespace A389448.P4650582158506586427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A308135 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P4650582158506586427

namespace A389448

/-- `(A000203(n+1)-A308135(n+1))/A389446(n+1)` -/
def P4650582158506586427.Spec : Prop :=
  ∀ n, P4650582158506586427.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P10417976984289616747

`A389447(n+1)-A308135(n+1)/A389446(n+1)`
-/

namespace A389448.P10417976984289616747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389447 (n + 1) : ℚ) - (A308135 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P10417976984289616747

namespace A389448

/-- `A389447(n+1)-A308135(n+1)/A389446(n+1)` -/
def P10417976984289616747.Spec : Prop :=
  ∀ n, P10417976984289616747.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P12785855048765067843

`A057723(n+1)/A000203(n+1)*A389447(n+1)`
-/

namespace A389448.P12785855048765067843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A389447 (n + 1) : ℚ)

end

end A389448.P12785855048765067843

namespace A389448

/-- `A057723(n+1)/A000203(n+1)*A389447(n+1)` -/
def P12785855048765067843.Spec : Prop :=
  ∀ n, P12785855048765067843.a n = (A389448 (n + 1) : ℚ)

end A389448

/-!
# A389449: a(n) = 1 if A260443(A048675(n)) = n, otherwise 0.

The programs for A389449, there is no canonical definition to state claims against.
-/

/-! ## A389449.P11476972516805630708

`char[A260442(n)-1]`
-/

namespace A389449.P11476972516805630708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A389449.P11476972516805630708

/-! ## A389449.P7387583398813045489

`A323152(A134364(n+1))`
-/

namespace A389449.P7387583398813045489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (A134364 (n + 1)).toNat

end

end A389449.P7387583398813045489

/-! ## A389449.P3902695059100692116

`A040000(A277333(n+1))-A054571(A020639(n+1))`
-/

namespace A389449.P3902695059100692116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A277333 (n + 1)).toNat - A054571 (A020639 (n + 1)).toNat

end

end A389449.P3902695059100692116

/-! ## A389449.P8685174290434934263

`A319000(A358195(n+1))`
-/

namespace A389449.P8685174290434934263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A358195 (n + 1)).toNat

end

end A389449.P8685174290434934263

/-! ## A389449.P9371361068812891636

`A176723(A322994(n+1))`
-/

namespace A389449.P9371361068812891636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 (A322994 (n + 1)).toNat

end

end A389449.P9371361068812891636

/-!
# A389450: Sum of unitary divisors of the largest unitary divisor of n that is a term in A048103 (not divisible by p^p for any prime p).

The programs for A389450, the canonical program `A389450.P4577648184886037926` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389450 has offset 1).

The definition of A389450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389450.P4577648184886037926

`A034448(A389455(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389450

/-- `A034448(A389455(n+1))` -/
def P4577648184886037926.Spec : Prop :=
  ∀ n, P4577648184886037926.a n = A389450 (n + 1)

theorem P4577648184886037926.correct : P4577648184886037926.Spec := by
  intro n
  simp only [A389450, Nat.add_sub_cancel]

end A389450

/-! ## A389450.P4669936522569450535

`A380090(A389455(2*n+1-n))`
-/

namespace A389450.P4669936522569450535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380090 (A389455 (2 * n + 1 - n)).toNat

end

end A389450.P4669936522569450535

namespace A389450

/-- `A380090(A389455(2*n+1-n))` -/
def P4669936522569450535.Spec : Prop :=
  ∀ n, P4669936522569450535.a n = A389450 (n + 1)

end A389450

/-!
# A389451: Sum of divisors of the largest unitary divisor of n that is a term in A048103 (not divisible by p^p for any prime p).

The programs for A389451, the canonical program `A389451.P10010193522660064856` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389451 has offset 1).

The definition of A389451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389451.P13108474784056650130

`A000203(A389455(n+1))`
-/

namespace A389451.P13108474784056650130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A389455 (n + 1)).toNat

end

end A389451.P13108474784056650130

namespace A389451

/-- `A000203(A389455(n+1))` -/
def P13108474784056650130.Spec : Prop :=
  ∀ n, P13108474784056650130.a n = A389451 (n + 1)

end A389451

/-! ## A389451.P10010193522660064856

`A000203(n+1)/A389452(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389451

/-- `A000203(n+1)/A389452(n+1)` -/
def P10010193522660064856.Spec : Prop :=
  ∀ n, P10010193522660064856.a n = (A389451 (n + 1) : ℚ)

end A389451

/-! ## A389451.P7240868481550783858

`∑{d}[A389455(n+1), #]`
-/

namespace A389451.P7240868481550783858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A389451.P7240868481550783858

namespace A389451

/-- `∑{d}[A389455(n+1), #]` -/
def P7240868481550783858.Spec : Prop :=
  ∀ n, (P7240868481550783858.a n : ℤ) = A389451 (n + 1)

end A389451

/-! ## A389451.P11329845845923085629

`A000203((n+1)/A368333(n+1))`
-/

namespace A389451.P11329845845923085629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368333 (n + 1) : ℚ))).toNat

end

end A389451.P11329845845923085629

namespace A389451

/-- `A000203((n+1)/A368333(n+1))` -/
def P11329845845923085629.Spec : Prop :=
  ∀ n, P11329845845923085629.a n = A389451 (n + 1)

end A389451

/-! ## A389451.P14993462971249459460

`gcd(A377520(n+1), A389457(n+1))`
-/

namespace A389451.P14993462971249459460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A377520 (n + 1)) (A389457 (n + 1))

end

end A389451.P14993462971249459460

namespace A389451

/-- `gcd(A377520(n+1), A389457(n+1))` -/
def P14993462971249459460.Spec : Prop :=
  ∀ n, (P14993462971249459460.a n : ℤ) = A389451 (n + 1)

end A389451

/-! ## A389451.P2294417425995810417

`A389457(A327938(A377518(n+1)))`
-/

namespace A389451.P2294417425995810417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389457 (A327938 (A377518 (n + 1)).toNat).toNat

end

end A389451.P2294417425995810417

namespace A389451

/-- `A389457(A327938(A377518(n+1)))` -/
def P2294417425995810417.Spec : Prop :=
  ∀ n, P2294417425995810417.a n = A389451 (n + 1)

end A389451

/-! ## A389451.P16451825593179097416

`A389457(A389455((n+1)*A327936(n+1)))`
-/

namespace A389451.P16451825593179097416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389457 (A389455 ((n + 1 : ℤ) * A327936 (n + 1)).toNat).toNat

end

end A389451.P16451825593179097416

namespace A389451

/-- `A389457(A389455((n+1)*A327936(n+1)))` -/
def P16451825593179097416.Spec : Prop :=
  ∀ n, P16451825593179097416.a n = A389451 (n + 1)

end A389451

/-!
# A389452: Sum of the divisors of the largest p-full divisor of n (a term of A054744 that divides n).

The programs for A389452, the canonical program `A389452.P7190933755538774917` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389452 has offset 1).

The definition of A389452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368333, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389452.P7190933755538774917

`A000203(A368333(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389452

/-- `A000203(A368333(n+1))` -/
def P7190933755538774917.Spec : Prop :=
  ∀ n, P7190933755538774917.a n = A389452 (n + 1)

theorem P7190933755538774917.correct : P7190933755538774917.Spec := by
  intro n
  simp only [A389452, Nat.add_sub_cancel]

end A389452

/-! ## A389452.P11404035242494285514

`A000203(n+1)/A389451(n+1)`
-/

namespace A389452.P11404035242494285514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389451 (n + 1) : ℚ)

end

end A389452.P11404035242494285514

namespace A389452

/-- `A000203(n+1)/A389451(n+1)` -/
def P11404035242494285514.Spec : Prop :=
  ∀ n, P11404035242494285514.a n = (A389452 (n + 1) : ℚ)

end A389452

/-! ## A389452.P4283310429426040091

`∑{d}[A368333(n+1), #]`
-/

namespace A389452.P4283310429426040091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A389452.P4283310429426040091

namespace A389452

/-- `∑{d}[A368333(n+1), #]` -/
def P4283310429426040091.Spec : Prop :=
  ∀ n, (P4283310429426040091.a n : ℤ) = A389452 (n + 1)

end A389452

/-! ## A389452.P149043584649986985

`A000203((n+1)/A389455(n+1))`
-/

namespace A389452.P149043584649986985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A389455 (n + 1) : ℚ))).toNat

end

end A389452.P149043584649986985

namespace A389452

/-- `A000203((n+1)/A389455(n+1))` -/
def P149043584649986985.Spec : Prop :=
  ∀ n, P149043584649986985.a n = A389452 (n + 1)

end A389452

/-! ## A389452.P8649853660227034131

`A066839(A368333(n+1)*A368333(n+1))`
-/

namespace A389452.P8649853660227034131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (A368333 (n + 1) * A368333 (n + 1)).toNat

end

end A389452.P8649853660227034131

namespace A389452

/-- `A066839(A368333(n+1)*A368333(n+1))` -/
def P8649853660227034131.Spec : Prop :=
  ∀ n, P8649853660227034131.a n = A389452 (n + 1)

end A389452

/-!
# A389453: Arithmetic derivative of the largest p-full divisor of n (a term of A054744 that divides n).

The programs for A389453, the canonical program `A389453.P4363465983384085622` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389453 has offset 1).

The definition of A389453 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368333, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389453.P4363465983384085622

`A003415(A368333(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389453

/-- `A003415(A368333(n+1))` -/
def P4363465983384085622.Spec : Prop :=
  ∀ n, P4363465983384085622.a n = A389453 (n + 1)

theorem P4363465983384085622.correct : P4363465983384085622.Spec := by
  intro n
  simp only [A389453, Nat.add_sub_cancel]

end A389453

/-! ## A389453.P17934889466836041340

`A003415((n+1)/A389455(n+1))`
-/

namespace A389453.P17934889466836041340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A389455 (n + 1) : ℚ))).toNat

end

end A389453.P17934889466836041340

namespace A389453

/-- `A003415((n+1)/A389455(n+1))` -/
def P17934889466836041340.Spec : Prop :=
  ∀ n, P17934889466836041340.a n = A389453 (n + 1)

end A389453

/-! ## A389453.P12072828138479173381

`and(A005380(A007814(n+1)), A358505(2*n+1))`
-/

namespace A389453.P12072828138479173381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005380 (A007814 (n + 1)).toNat) (A358505 (2 * n + 1))

end

end A389453.P12072828138479173381

namespace A389453

/-- `and(A005380(A007814(n+1)), A358505(2*n+1))` -/
def P12072828138479173381.Spec : Prop :=
  ∀ n, P12072828138479173381.a n = A389453 (n + 1)

end A389453

/-! ## A389453.P1623375502782303396

`A003415(gcd(A273952(n+1), A274006(n+1)))`
-/

namespace A389453.P1623375502782303396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.gcd (A273952 (n + 1)) (A274006 (n + 1)))

end

end A389453.P1623375502782303396

namespace A389453

/-- `A003415(gcd(A273952(n+1), A274006(n+1)))` -/
def P1623375502782303396.Spec : Prop :=
  ∀ n, P1623375502782303396.a n = A389453 (n + 1)

end A389453

/-! ## A389453.P16901276750637464630

`and((1+3^val(n+1, 2))/2, A272183(A056513(n)))`
-/

namespace A389453.P16901276750637464630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((1 + 3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2)) (A272183 (A056513 n).toNat)

end

end A389453.P16901276750637464630

namespace A389453

/-- `and((1+3^val(n+1, 2))/2, A272183(A056513(n)))` -/
def P16901276750637464630.Spec : Prop :=
  ∀ n, P16901276750637464630.a n = A389453 (n + 1)

end A389453

/-!
# A389454: Arithmetic derivative of the largest unitary divisor of n that is a term in A048103 (not divisible by p^p for any prime p).

The programs for A389454, the canonical program `A389454.P5399989822450650276` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389454 has offset 1).

The definition of A389454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389455, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389454.P5399989822450650276

`A003415(A389455(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389454

/-- `A003415(A389455(n+1))` -/
def P5399989822450650276.Spec : Prop :=
  ∀ n, P5399989822450650276.a n = A389454 (n + 1)

theorem P5399989822450650276.correct : P5399989822450650276.Spec := by
  intro n
  simp only [A389454, Nat.add_sub_cancel]

end A389454

/-! ## A389454.P13905471040686066385

`A003415((n+1)/A368333(n+1))`
-/

namespace A389454.P13905471040686066385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368333 (n + 1) : ℚ))).toNat

end

end A389454.P13905471040686066385

namespace A389454

/-- `A003415((n+1)/A368333(n+1))` -/
def P13905471040686066385.Spec : Prop :=
  ∀ n, P13905471040686066385.a n = A389454 (n + 1)

theorem P13905471040686066385.correct : P13905471040686066385.Spec := by
  intro n
  simp only [A389454, Nat.add_sub_cancel, A389454.P13905471040686066385.a, A389454.P5399989822450650276.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A368333, A368333.P4860013269317907848.a, A389455, A389455.P1455942974277617532.a, A001014, A001014.P10270364271630987481.a, A184985, A184985.P337458216283386355.a, A342007, A342007.P5181248813472136976.f1, A342007.P5181248813472136976.a, A349394, A349394.P210516795435731064.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003557, A003557.P6364735403900941810.a, A014963, A014963.P5975177236000282614.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P2815951119682625865.f1, A166142.P2815951119682625865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389454

/-! ## A389454.P807137957713978735

`A003415(((n+1)/4^val(n+1, 4))%A068972(n+1))`
-/

namespace A389454.P807137957713978735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))) (A068972 (n + 1))).toNat

end

end A389454.P807137957713978735

namespace A389454

/-- `A003415(((n+1)/4^val(n+1, 4))%A068972(n+1))` -/
def P807137957713978735.Spec : Prop :=
  ∀ n, P807137957713978735.a n = A389454 (n + 1)

end A389454

/-! ## A389454.P3600439538732013478

`A316829(A179386(n+1))*A373364(n+1)`
-/

namespace A389454.P3600439538732013478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A179386 (n + 1)).toNat * A373364 (n + 1)

end

end A389454.P3600439538732013478

namespace A389454

/-- `A316829(A179386(n+1))*A373364(n+1)` -/
def P3600439538732013478.Spec : Prop :=
  ∀ n, P3600439538732013478.a n = A389454 (n + 1)

end A389454

/-! ## A389454.P10454620575327827444

`A373364(n+1)%A050283(A383341(n))`
-/

namespace A389454.P10454620575327827444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373364 (n + 1)) (A050283 (A383341 n).toNat)

end

end A389454.P10454620575327827444

namespace A389454

/-- `A373364(n+1)%A050283(A383341(n))` -/
def P10454620575327827444.Spec : Prop :=
  ∀ n, P10454620575327827444.a n = A389454 (n + 1)

end A389454

/-!
# A389455: The largest unitary divisor of n that is a term in A048103 (not divisible by p^p for any prime p).

The programs for A389455, the canonical program `A389455.P1455942974277617532` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389455 has offset 1).

The definition of A389455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389455.P1455942974277617532

`(1+n)/A368333(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389455

/-- `(1+n)/A368333(n+1)` -/
def P1455942974277617532.Spec : Prop :=
  ∀ n, P1455942974277617532.a n = (A389455 (n + 1) : ℚ)

end A389455

/-! ## A389455.P9741007539242415682

`A327938(A377518(n+1))`
-/

namespace A389455.P9741007539242415682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A377518 (n + 1)).toNat

end

end A389455.P9741007539242415682

namespace A389455

/-- `A327938(A377518(n+1))` -/
def P9741007539242415682.Spec : Prop :=
  ∀ n, P9741007539242415682.a n = A389455 (n + 1)

end A389455

/-! ## A389455.P17261391915272942335

`A327938(A380088(n+1))`
-/

namespace A389455.P17261391915272942335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A380088 (n + 1)).toNat

end

end A389455.P17261391915272942335

namespace A389455

/-- `A327938(A380088(n+1))` -/
def P17261391915272942335.Spec : Prop :=
  ∀ n, P17261391915272942335.a n = A389455 (n + 1)

end A389455

/-! ## A389455.P4056634304685075165

`A327938((n+1)/A368329(n+1))`
-/

namespace A389455.P4056634304685075165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368329 (n + 1) : ℚ))).toNat

end

end A389455.P4056634304685075165

namespace A389455

/-- `A327938((n+1)/A368329(n+1))` -/
def P4056634304685075165.Spec : Prop :=
  ∀ n, P4056634304685075165.a n = A389455 (n + 1)

end A389455

/-! ## A389455.P17503207529374256719

`A377518(n+1)/A365635(n+1)`
-/

namespace A389455.P17503207529374256719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377518 (n + 1) : ℚ) / (A365635 (n + 1) : ℚ)

end

end A389455.P17503207529374256719

namespace A389455

/-- `A377518(n+1)/A365635(n+1)` -/
def P17503207529374256719.Spec : Prop :=
  ∀ n, P17503207529374256719.a n = (A389455 (n + 1) : ℚ)

end A389455

/-! ## A389455.P11107519501013533854

`A327938(A327936(n+1)*A327937(n+1))`
-/

namespace A389455.P11107519501013533854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A327936 (n + 1) * A327937 (n + 1)).toNat

end

end A389455.P11107519501013533854

namespace A389455

/-- `A327938(A327936(n+1)*A327937(n+1))` -/
def P11107519501013533854.Spec : Prop :=
  ∀ n, P11107519501013533854.a n = A389455 (n + 1)

end A389455

/-!
# A389456: The number of divisors of n that are terms in A048103 (that are not divisible by p^p for any prime p).

The programs for A389456, the canonical program `A389456.P12002157375518931649` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389456 has offset 1).

The definition of A389456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389456.P12002157375518931649

`∑{d}[n+1, A359550(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389456

/-- `∑{d}[n+1, A359550(#)]` -/
def P12002157375518931649.Spec : Prop :=
  ∀ n, P12002157375518931649.a n = A389456 (n + 1)

theorem P12002157375518931649.correct : P12002157375518931649.Spec := by
  intro n
  simp only [A389456, Nat.add_sub_cancel]

end A389456

/-! ## A389456.P93310832604874294

`A000005(A327937(n+1))`
-/

namespace A389456.P93310832604874294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327937 (n + 1)).toNat

end

end A389456.P93310832604874294

namespace A389456

/-- `A000005(A327937(n+1))` -/
def P93310832604874294.Spec : Prop :=
  ∀ n, P93310832604874294.a n = A389456 (n + 1)

end A389456

/-! ## A389456.P16684363720460217862

`A358216(n+1)/A368332(n+1)`
-/

namespace A389456.P16684363720460217862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358216 (n + 1) : ℚ) / (A368332 (n + 1) : ℚ)

end

end A389456.P16684363720460217862

namespace A389456

/-- `A358216(n+1)/A368332(n+1)` -/
def P16684363720460217862.Spec : Prop :=
  ∀ n, P16684363720460217862.a n = (A389456 (n + 1) : ℚ)

end A389456

/-! ## A389456.P11567356604301714777

`A358216(A327937(2*n+1-n))`
-/

namespace A389456.P11567356604301714777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358216 (A327937 (2 * n + 1 - n)).toNat

end

end A389456.P11567356604301714777

namespace A389456

/-- `A358216(A327937(2*n+1-n))` -/
def P11567356604301714777.Spec : Prop :=
  ∀ n, P11567356604301714777.a n = A389456 (n + 1)

end A389456

/-! ## A389456.P10774066630828261901

`A183063(2*A327937(n+1))`
-/

namespace A389456.P10774066630828261901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A327937 (n + 1)).toNat

end

end A389456.P10774066630828261901

namespace A389456

/-- `A183063(2*A327937(n+1))` -/
def P10774066630828261901.Spec : Prop :=
  ∀ n, P10774066630828261901.a n = A389456 (n + 1)

end A389456

/-!
# A389457: The sum of divisors of n that are terms in A048103 (that are not divisible by p^p for any prime p).

The programs for A389457, the canonical program `A389457.P10037016276673333466` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389457 has offset 1).

The definition of A389457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389457.P11052782757249646318

`∑{d}[A327937(n+1), #]`
-/

namespace A389457.P11052782757249646318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A389457.P11052782757249646318

namespace A389457

/-- `∑{d}[A327937(n+1), #]` -/
def P11052782757249646318.Spec : Prop :=
  ∀ n, (P11052782757249646318.a n : ℤ) = A389457 (n + 1)

end A389457

/-! ## A389457.P10037016276673333466

`∑{d}[n+1, #*A359550(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389457

/-- `∑{d}[n+1, #*A359550(#)]` -/
def P10037016276673333466.Spec : Prop :=
  ∀ n, P10037016276673333466.a n = A389457 (n + 1)

theorem P10037016276673333466.correct : P10037016276673333466.Spec := by
  intro n
  simp only [A389457, Nat.add_sub_cancel]

end A389457

/-! ## A389457.P15276816091883158540

`A000203(A327937(n+1))`
-/

namespace A389457.P15276816091883158540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A327937 (n + 1)).toNat

end

end A389457.P15276816091883158540

namespace A389457

/-- `A000203(A327937(n+1))` -/
def P15276816091883158540.Spec : Prop :=
  ∀ n, P15276816091883158540.a n = A389457 (n + 1)

end A389457

/-! ## A389457.P14246447695083966812

`A377520(A327937(2*n+1-n))`
-/

namespace A389457.P14246447695083966812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377520 (A327937 (2 * n + 1 - n)).toNat

end

end A389457.P14246447695083966812

namespace A389457

/-- `A377520(A327937(2*n+1-n))` -/
def P14246447695083966812.Spec : Prop :=
  ∀ n, P14246447695083966812.a n = A389457 (n + 1)

end A389457

/-!
# A389458: Numbers whose sum of non-unitary divisors (A048146) is congruent to 2 modulo 4.

The programs for A389458, there is no canonical definition to state claims against.
-/

/-! ## A389458.P14327457150641051776

`∪[A020707(n), A389459(n+1)]`
-/

namespace A389458.P14327457150641051776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389458.P14327457150641051776

/-! ## A389458.P16303439763242894167

`eq[2, and(3, A048146(n+1))]+1`
-/

namespace A389458.P16303439763242894167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A048146 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389458.P16303439763242894167

/-!
# A389459: Numbers whose sum of nonsquarefree divisors (A162296) is congruent to 2 modulo 4.

The programs for A389459, there is no canonical definition to state claims against.
-/

/-! ## A389459.P8033824692858736196

`filter[A389458(n+1), A353814(#)]`
-/

namespace A389459.P8033824692858736196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389459.P8033824692858736196

/-! ## A389459.P11799794685024787353

`filter[A389458(n+1), A202238(#)]`
-/

namespace A389459.P11799794685024787353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A389459.P11799794685024787353

/-! ## A389459.P12361903842997572096

`filter[A389458(n+1), A347523(#)]`
-/

namespace A389459.P12361903842997572096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A389459.P12361903842997572096

/-! ## A389459.P6980736633000933503

`filter[A389458(n+1), A353626(#)]`
-/

namespace A389459.P6980736633000933503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A389459.P6980736633000933503

/-! ## A389459.P4013334890096255571

`∩[A124966(n+1), A389458(n+1)]`
-/

namespace A389459.P4013334890096255571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P4013334890096255571

/-! ## A389459.P14380333631430251017

`∩[A038838(n+1), A389458(n+1)]`
-/

namespace A389459.P14380333631430251017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P14380333631430251017

/-! ## A389459.P16787079543902740842

`∩[A004431(n+1), A389458(n+1)]`
-/

namespace A389459.P16787079543902740842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P16787079543902740842

/-! ## A389459.P12937109314801794065

`∩[A018821(n+1), A389458(n+1)]`
-/

namespace A389459.P12937109314801794065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P12937109314801794065

/-! ## A389459.P14986759237348727975

`∩[A036350(n+1), A389458(n+1)]`
-/

namespace A389459.P14986759237348727975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P14986759237348727975

/-! ## A389459.P375480091099291990

`∩[A209922(n+1), A389458(n+1)]`
-/

namespace A389459.P375480091099291990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P375480091099291990

/-! ## A389459.P4222883930318640602

`∩[A225836(n+1), A389458(n+1)]`
-/

namespace A389459.P4222883930318640602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P4222883930318640602

/-! ## A389459.P15710269654872592064

`∩[A335657(n+1), A389458(n+1)]`
-/

namespace A389459.P15710269654872592064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P15710269654872592064

/-! ## A389459.P6142358700298601655

`∩[A347826(n+1), A389458(n+1)]`
-/

namespace A389459.P6142358700298601655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P6142358700298601655

/-! ## A389459.P9216069196224944050

`∩[A373376(n+1), A389458(n+1)]`
-/

namespace A389459.P9216069196224944050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P9216069196224944050

/-! ## A389459.P3943722550398802307

`∩[A341329(n+1), A389458(n+1)]`
-/

namespace A389459.P3943722550398802307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P3943722550398802307

/-! ## A389459.P12573749914876917012

`∩[A009003(n+1), A389458(n+1)]`
-/

namespace A389459.P12573749914876917012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P12573749914876917012

/-! ## A389459.P3285903475066437381

`∩[A304432(n+1), A389458(n+1)]`
-/

namespace A389459.P3285903475066437381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P3285903475066437381

/-! ## A389459.P17476173647759139330

`∩[A093642(n+1), A389458(n+1)]`
-/

namespace A389459.P17476173647759139330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P17476173647759139330

/-! ## A389459.P10754432500232175342

`∩[A105441(n+1), A389458(n+1)]`
-/

namespace A389459.P10754432500232175342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P10754432500232175342

/-! ## A389459.P3057909521413595971

`∩[A207675(n+1), A389458(n+1)]`
-/

namespace A389459.P3057909521413595971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P3057909521413595971

/-!
# A389460: a(n) = sigma(n) - A075423(n).

The programs for A389460, the canonical program `A389460.P4100129062004937204` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389460 has offset 1).

The definition of A389460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)` (program `A389460.P4100129062004937204`, by `A389460.P4100129062004937204.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389460.P4100129062004937204

`A000203(n+1)-A075423(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A389460

/-- `A000203(n+1)-A075423(n+1)` -/
def P4100129062004937204.Spec : Prop :=
  ∀ n, P4100129062004937204.a n = A389460 (n + 1)

theorem P4100129062004937204.correct : P4100129062004937204.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel]

end A389460

/-! ## A389460.P14265749142974961302

`1+∑{d}[1+n, #]-∏{p}[n+1, #]`
-/

namespace A389460.P14265749142974961302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + ∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A389460.P14265749142974961302

namespace A389460

/-- `1+∑{d}[1+n, #]-∏{p}[n+1, #]` -/
def P14265749142974961302.Spec : Prop :=
  ∀ n, P14265749142974961302.a n = A389460 (n + 1)

theorem P14265749142974961302.correct : P14265749142974961302.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel, A389460.P14265749142974961302.f1, A389460.P14265749142974961302.f2, A389460.P14265749142974961302.a, A389460.P4100129062004937204.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389460

/-! ## A389460.P2958958278418805139

`A326142(n+1)+1`
-/

namespace A389460.P2958958278418805139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (n + 1) + 1

end

end A389460.P2958958278418805139

namespace A389460

/-- `A326142(n+1)+1` -/
def P2958958278418805139.Spec : Prop :=
  ∀ n, P2958958278418805139.a n = A389460 (n + 1)

theorem P2958958278418805139.correct : P2958958278418805139.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel, A389460.P2958958278418805139.a, A389460.P4100129062004937204.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A326142, A326142.P15415912859726343761.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389460

/-! ## A389460.P707298739171921374

`A389461(n+1)+1+n`
-/

namespace A389460.P707298739171921374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389461 (n + 1) + 1 + (n : ℤ)

end

end A389460.P707298739171921374

namespace A389460

/-- `A389461(n+1)+1+n` -/
def P707298739171921374.Spec : Prop :=
  ∀ n, P707298739171921374.a n = A389460 (n + 1)

theorem P707298739171921374.correct : P707298739171921374.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel, A389460.P707298739171921374.a, A389460.P4100129062004937204.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A389461, A389461.P3198355901571096713.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389460

/-! ## A389460.P17328099229127402848

`2+A326143(n+1)+n`
-/

namespace A389460.P17328099229127402848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A326143 (n + 1) + (n : ℤ)

end

end A389460.P17328099229127402848

namespace A389460

/-- `2+A326143(n+1)+n` -/
def P17328099229127402848.Spec : Prop :=
  ∀ n, P17328099229127402848.a n = A389460 (n + 1)

theorem P17328099229127402848.correct : P17328099229127402848.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel, A389460.P17328099229127402848.a, A389460.P4100129062004937204.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A326143, A326143.P176859411368788289.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389460

/-! ## A389460.P12071469943091879032

`A000203(n+1)-A144774(A007947(n+1))`
-/

namespace A389460.P12071469943091879032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A144774 (A007947 (n + 1)).toNat

end

end A389460.P12071469943091879032

namespace A389460

/-- `A000203(n+1)-A144774(A007947(n+1))` -/
def P12071469943091879032.Spec : Prop :=
  ∀ n, P12071469943091879032.a n = A389460 (n + 1)

end A389460

/-!
# A389461: a(n) = sigma(n) - A075423(n) - n.

The programs for A389461, the canonical program `A389461.P3198355901571096713` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389461 has offset 1).

The definition of A389461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)-(n+1)` (program `A389461.P3198355901571096713`, by `A389461.P3198355901571096713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389461.P15588791070038603446

`A389460(n+1)-(n+1)`
-/

namespace A389461.P15588791070038603446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389460 (n + 1) - (n + 1 : ℤ)

end

end A389461.P15588791070038603446

namespace A389461

/-- `A389460(n+1)-(n+1)` -/
def P15588791070038603446.Spec : Prop :=
  ∀ n, P15588791070038603446.a n = A389461 (n + 1)

end A389461

/-! ## A389461.P15261002970931308837

`A001065(n+1)-A075423(n+1)`
-/

namespace A389461.P15261002970931308837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A075423 (n + 1)

end

end A389461.P15261002970931308837

namespace A389461

/-- `A001065(n+1)-A075423(n+1)` -/
def P15261002970931308837.Spec : Prop :=
  ∀ n, P15261002970931308837.a n = A389461 (n + 1)

theorem P15261002970931308837.correct : P15261002970931308837.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P15261002970931308837.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A075423, A075423.P4628253282240293727.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P3198355901571096713

`A000203(n+1)-A075423(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A389461

/-- `A000203(n+1)-A075423(n+1)-(n+1)` -/
def P3198355901571096713.Spec : Prop :=
  ∀ n, P3198355901571096713.a n = A389461 (n + 1)

theorem P3198355901571096713.correct : P3198355901571096713.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel]

end A389461

/-! ## A389461.P11898430600562717779

`∑{d}[n+1, #]-∏{p}[n+1, #]-n`
-/

namespace A389461.P11898430600562717779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - (n : ℤ)

end

end A389461.P11898430600562717779

namespace A389461

/-- `∑{d}[n+1, #]-∏{p}[n+1, #]-n` -/
def P11898430600562717779.Spec : Prop :=
  ∀ n, P11898430600562717779.a n = A389461 (n + 1)

theorem P11898430600562717779.correct : P11898430600562717779.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P11898430600562717779.f1, A389461.P11898430600562717779.f2, A389461.P11898430600562717779.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P12934208757919029162

`1+A326143(1+n)`
-/

namespace A389461.P12934208757919029162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A326143 (1 + n)

end

end A389461.P12934208757919029162

namespace A389461

/-- `1+A326143(1+n)` -/
def P12934208757919029162.Spec : Prop :=
  ∀ n, P12934208757919029162.a n = A389461 (n + 1)

end A389461

/-! ## A389461.P1312272547458315591

`A326142(n+1)-n`
-/

namespace A389461.P1312272547458315591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (n + 1) - (n : ℤ)

end

end A389461.P1312272547458315591

namespace A389461

/-- `A326142(n+1)-n` -/
def P1312272547458315591.Spec : Prop :=
  ∀ n, P1312272547458315591.a n = A389461 (n + 1)

theorem P1312272547458315591.correct : P1312272547458315591.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P1312272547458315591.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A326142, A326142.P15415912859726343761.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P13352290363928762059

`A237588(n+1)+A066503(n+1)`
-/

namespace A389461.P13352290363928762059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A066503 (n + 1)

end

end A389461.P13352290363928762059

namespace A389461

/-- `A237588(n+1)+A066503(n+1)` -/
def P13352290363928762059.Spec : Prop :=
  ∀ n, P13352290363928762059.a n = A389461 (n + 1)

theorem P13352290363928762059.correct : P13352290363928762059.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P13352290363928762059.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A066503, A066503.P17588364347287804265.a, A075423, A075423.P4628253282240293727.a, A237588, A237588.P10590847318200798620.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P2788992221747788996

`A000203(n+1)-A007947(n+1)-n`
-/

namespace A389461.P2788992221747788996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007947 (n + 1) - (n : ℤ)

end

end A389461.P2788992221747788996

namespace A389461

/-- `A000203(n+1)-A007947(n+1)-n` -/
def P2788992221747788996.Spec : Prop :=
  ∀ n, P2788992221747788996.a n = A389461 (n + 1)

theorem P2788992221747788996.correct : P2788992221747788996.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P2788992221747788996.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P6100449636864454678

`A001065(n+1)-A010848(n+1)/A003557(n+1)`
-/

namespace A389461.P6100449636864454678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) : ℚ) - (A010848 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A389461.P6100449636864454678

namespace A389461

/-- `A001065(n+1)-A010848(n+1)/A003557(n+1)` -/
def P6100449636864454678.Spec : Prop :=
  ∀ n, P6100449636864454678.a n = (A389461 (n + 1) : ℚ)

end A389461

/-!
# A389462: Numbers whose sum of proper divisors (A001065) is equal to or greater than their squarefree kernel (A007947).

The programs for A389462, the canonical program `A389462.P16419255327458964044` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389462 has offset 1).

The definition of A389462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389462.P16419255327458964044

`∪[A013929(n+1), A023196(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A389462

/-- `∪[A013929(n+1), A023196(n+1)]` -/
def P16419255327458964044.Spec : Prop :=
  ∀ n, (P16419255327458964044.a n : ℤ) = A389462 (n + 1)

theorem P16419255327458964044.correct : P16419255327458964044.Spec := by
  intro n
  simp only [A389462, Nat.add_sub_cancel]

end A389462

/-! ## A389462.P18364969060375969226

`∪[A013929(n+1), A083207(n+1)]`
-/

namespace A389462.P18364969060375969226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P18364969060375969226

namespace A389462

/-- `∪[A013929(n+1), A083207(n+1)]` -/
def P18364969060375969226.Spec : Prop :=
  ∀ n, (P18364969060375969226.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P4575290908429263194

`∪[A023196(n+1), A087244(n+1)]`
-/

namespace A389462.P4575290908429263194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P4575290908429263194

namespace A389462

/-- `∪[A023196(n+1), A087244(n+1)]` -/
def P4575290908429263194.Spec : Prop :=
  ∀ n, (P4575290908429263194.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P16695475914484230770

`∪[A013929(n+1), A204829(n+1)]`
-/

namespace A389462.P16695475914484230770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P16695475914484230770

namespace A389462

/-- `∪[A013929(n+1), A204829(n+1)]` -/
def P16695475914484230770.Spec : Prop :=
  ∀ n, (P16695475914484230770.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P2426898582045239493

`∪[A013929(n+1), A290466(n+1)]`
-/

namespace A389462.P2426898582045239493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P2426898582045239493

namespace A389462

/-- `∪[A013929(n+1), A290466(n+1)]` -/
def P2426898582045239493.Spec : Prop :=
  ∀ n, (P2426898582045239493.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P17541643115382856673

`∪[A013929(n+1), A335197(n+1)]`
-/

namespace A389462.P17541643115382856673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P17541643115382856673

namespace A389462

/-- `∪[A013929(n+1), A335197(n+1)]` -/
def P17541643115382856673.Spec : Prop :=
  ∀ n, (P17541643115382856673.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P7617456891271776399

`∪[A013929(n+1), A335215(n+1)]`
-/

namespace A389462.P7617456891271776399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P7617456891271776399

namespace A389462

/-- `∪[A013929(n+1), A335215(n+1)]` -/
def P7617456891271776399.Spec : Prop :=
  ∀ n, (P7617456891271776399.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P8609935455735147208

`∪[A376880(n+1), A013929(n+1)]`
-/

namespace A389462.P8609935455735147208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P8609935455735147208

namespace A389462

/-- `∪[A376880(n+1), A013929(n+1)]` -/
def P8609935455735147208.Spec : Prop :=
  ∀ n, (P8609935455735147208.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P13663594292282006888

`lt[n+1, A389460(n+1)]+1`
-/

namespace A389462.P13663594292282006888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389462.P13663594292282006888

namespace A389462

/-- `lt[n+1, A389460(n+1)]+1` -/
def P13663594292282006888.Spec : Prop :=
  ∀ n, (P13663594292282006888.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P5848078434081075700

`∪[A023196(n+1), A225353(n+1)]`
-/

namespace A389462.P5848078434081075700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P5848078434081075700

namespace A389462

/-- `∪[A023196(n+1), A225353(n+1)]` -/
def P5848078434081075700.Spec : Prop :=
  ∀ n, (P5848078434081075700.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P15650538531766784821

`∪[A083207(n+1), A225353(n+1)]`
-/

namespace A389462.P15650538531766784821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P15650538531766784821

namespace A389462

/-- `∪[A083207(n+1), A225353(n+1)]` -/
def P15650538531766784821.Spec : Prop :=
  ∀ n, (P15650538531766784821.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P11371801641682428583

`∪[A013929(n+1), A364053(n+1)]`
-/

namespace A389462.P11371801641682428583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P11371801641682428583

namespace A389462

/-- `∪[A013929(n+1), A364053(n+1)]` -/
def P11371801641682428583.Spec : Prop :=
  ∀ n, (P11371801641682428583.a n : ℤ) = A389462 (n + 1)

end A389462

/-!
# A389464: Number of natural numbers in range [n .. sigma(n)-1] that are coprime to n.

The programs for A389464, there is no canonical definition to state claims against.
-/

/-! ## A389464.P13148832258906299469

`A389465(n+1)-A325964(n+1)`
-/

namespace A389464.P13148832258906299469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389465 (n + 1) - A325964 (n + 1)

end

end A389464.P13148832258906299469

/-! ## A389464.P7961786292412880582

`A320111(A000079(n))-A202479(n+1)`
-/

namespace A389464.P7961786292412880582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A000079 n).toNat - A202479 (n + 1)

end

end A389464.P7961786292412880582

/-! ## A389464.P14456244438615511082

`A108414(A057568(n+1))-A325964(n+1)`
-/

namespace A389464.P14456244438615511082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108414 (A057568 (n + 1)).toNat - A325964 (n + 1)

end

end A389464.P14456244438615511082

/-! ## A389464.P15353849754235495205

`A108414(A057568(n+1))-floor(1/A082062(n+1))`
-/

namespace A389464.P15353849754235495205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108414 (A057568 (n + 1)).toNat - ⌊1 / (A082062 (n + 1) : ℚ)⌋

end

end A389464.P15353849754235495205

/-! ## A389464.P7233095069420189468

`A108414(A057568(n+1))-C(n+1, A162657(n+1))`
-/

namespace A389464.P7233095069420189468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108414 (A057568 (n + 1)).toNat - (Nat.choose (n + 1) (A162657 (n + 1)).toNat : ℤ)

end

end A389464.P7233095069420189468

/-!
# A389465: Number of natural numbers in range [n .. sigma(n)] that are coprime to n.

The programs for A389465, there is no canonical definition to state claims against.
-/

/-! ## A389465.P15622801908784491851

`A389464(n+1)+A325964(n+1)`
-/

namespace A389465.P15622801908784491851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + A325964 (n + 1)

end

end A389465.P15622801908784491851

/-! ## A389465.P10068119761688902078

`A389464(n+1)+C((n+1)/gcd(n+1, ∑{d}[n+1, #]), n+1)`
-/

namespace A389465.P10068119761688902078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f1 n), d) : ℚ))).toNat (n + 1) : ℤ)

end

end A389465.P10068119761688902078

/-! ## A389465.P17084535145055046301

`A389464(n+1)+floor(1/A082062(n+1))`
-/

namespace A389465.P17084535145055046301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + ⌊1 / (A082062 (n + 1) : ℚ)⌋

end

end A389465.P17084535145055046301

/-! ## A389465.P9187498507217151410

`A389464(n+1)+∏{d}[A341523(n+1), log(#)]`
-/

namespace A389465.P9187498507217151410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341523 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A389464 (n + 1) : ℝ) + ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A389465.P9187498507217151410

/-! ## A389465.P13914078012250916800

`A389464(n+1)+char[lt[n, A017666(n+1)]]`
-/

namespace A389465.P13914078012250916800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A389465.P13914078012250916800

/-!
# A389469: Numbers k such that k divides sigma(A003961(k)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A389469, there is no canonical definition to state claims against.
-/

/-! ## A389469.P14850023488128008850

`record[A342673(n+1)]`
-/

namespace A389469.P14850023488128008850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389469.P14850023488128008850

/-! ## A389469.P12961459416049475760

`record[gcd(n+1, A003973(n+1))]`
-/

namespace A389469.P12961459416049475760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003973 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389469.P12961459416049475760

/-! ## A389469.P8879465416147107065

`∩[A348868(n+1), A036451(n)]`
-/

namespace A389469.P8879465416147107065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389469.P8879465416147107065

/-! ## A389469.P4185381032896217030

`record[A079210(A390393(2*(n+1)))]`
-/

namespace A389469.P4185381032896217030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (A390393 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389469.P4185381032896217030

/-!
# A389470: A003973(k)/k for k such that A003973(k) is divisible by k (A389469), where A003973(n) is sum of the divisors of prime-shifted n, A003961(n).

The programs for A389470, there is no canonical definition to state claims against.
-/

/-! ## A389470.P18138110498114826538

`A003973(A389469(n+1))/A389469(n+1)`
-/

namespace A389470.P18138110498114826538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (A389469 (n + 1)).toNat : ℚ) / (A389469 (n + 1) : ℚ)

end

end A389470.P18138110498114826538

/-!
# A389471: a(n) = Sum_{k=0..n} binomial(4*k+2,k).

The programs for A389471, the canonical program `A389471.P8174744093872280267` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389471 has offset 0).

The definition of A389471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389471.P8174744093872280267

`∑[A257633(n)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389471

/-- `∑[A257633(n)]` -/
def P8174744093872280267.Spec : Prop :=
  ∀ n, P8174744093872280267.a n = A389471 n

theorem P8174744093872280267.correct : P8174744093872280267.Spec := by
  intro n
  simp only [A389471]

end A389471

/-! ## A389471.P6805805499990335791

`∑[C(4*n+2, n)]`
-/

namespace A389471.P6805805499990335791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 2) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P6805805499990335791

namespace A389471

/-- `∑[C(4*n+2, n)]` -/
def P6805805499990335791.Spec : Prop :=
  ∀ n, (P6805805499990335791.a n : ℤ) = A389471 n

theorem P6805805499990335791.correct : P6805805499990335791.Spec := by
  intro n
  simp only [A389471, Nat.add_sub_cancel, A389471.P6805805499990335791.f1, A389471.P6805805499990335791.a, A389471.P8174744093872280267.f1, A389471.P8174744093872280267.a, A257633, A257633.P3695274740093547.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A389471

/-! ## A389471.P11399605338403402904

`a(n-1)+C(4*n+2, n)` with `a(0)=1`
-/

namespace A389471.P11399605338403402904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (4 * n + 2) n

end

end A389471.P11399605338403402904

namespace A389471

/-- `a(n-1)+C(4*n+2, n)` -/
def P11399605338403402904.Spec : Prop :=
  ∀ n, (P11399605338403402904.a n : ℤ) = A389471 n

end A389471

/-! ## A389471.P1376209555574645851

`∑[A380113(2*(n+1)²)]`
-/

namespace A389471.P1376209555574645851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380113 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P1376209555574645851

namespace A389471

/-- `∑[A380113(2*(n+1)²)]` -/
def P1376209555574645851.Spec : Prop :=
  ∀ n, P1376209555574645851.a n = A389471 n

end A389471

/-! ## A389471.P11792930102423556773

`∑[A094527(2*(n+1)²)]`
-/

namespace A389471.P11792930102423556773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P11792930102423556773

namespace A389471

/-- `∑[A094527(2*(n+1)²)]` -/
def P11792930102423556773.Spec : Prop :=
  ∀ n, P11792930102423556773.a n = A389471 n

end A389471

/-! ## A389471.P2124914478345365646

`∑[A206294(2*(n+1)²)]`
-/

namespace A389471.P2124914478345365646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P2124914478345365646

namespace A389471

/-- `∑[A206294(2*(n+1)²)]` -/
def P2124914478345365646.Spec : Prop :=
  ∀ n, P2124914478345365646.a n = A389471 n

end A389471

/-!
# A389472: G.f. satisfies A(x) = A(x^2 + x^3)/x^2 - 1.

The programs for A389472, there is no canonical definition to state claims against.
-/

/-! ## A389472.P5178126983355138020

`A322911(A018060(n))`
-/

namespace A389472.P5178126983355138020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322911 (A018060 n).toNat

end

end A389472.P5178126983355138020

/-! ## A389472.P14332735698049890806

`A048264(A301750(n+1))`
-/

namespace A389472.P14332735698049890806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (A301750 (n + 1)).toNat

end

end A389472.P14332735698049890806

/-! ## A389472.P9649980033642848075

`A307707(A105633(n+1))`
-/

namespace A389472.P9649980033642848075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A105633 (n + 1)).toNat

end

end A389472.P9649980033642848075

/-! ## A389472.P3287573560537686189

`A307707(A238190(n+3)+A094374(n))`
-/

namespace A389472.P3287573560537686189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A238190 (n + 3) + A094374 n).toNat

end

end A389472.P3287573560537686189

/-! ## A389472.P17612154562081966298

`A102455(A026768(n))`
-/

namespace A389472.P17612154562081966298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102455 (A026768 n).toNat

end

end A389472.P17612154562081966298

/-!
# A389473: G.f. satisfies A(x) = x * Product_{n>=0} (1 + A(x)^(2^n))^(2^n).

The programs for A389473, there is no canonical definition to state claims against.
-/

/-! ## A389473.P1794846405889343375

`A194964(A150156(n))`
-/

namespace A389473.P1794846405889343375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A150156 n).toNat

end

end A389473.P1794846405889343375

/-! ## A389473.P4318323728967457542

`A008984(n)-A343606(A001654(n))`
-/

namespace A389473.P4318323728967457542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008984 n - A343606 (A001654 n).toNat

end

end A389473.P4318323728967457542

/-! ## A389473.P5416727825727174036

`A344420(A000032(3*n))+A000041(n)`
-/

namespace A389473.P5416727825727174036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A000032 (3 * n)).toNat + A000041 n

end

end A389473.P5416727825727174036

/-!
# A389474: G.f. A(x) satisfies A( x^2 + 2*x^3 + 2*A(x)^2 ) = 3*A(x)^2.

The programs for A389474, there is no canonical definition to state claims against.
-/

/-! ## A389474.P16425723148857266727

`A233569(A322700(n))`
-/

namespace A389474.P16425723148857266727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A322700 n).toNat

end

end A389474.P16425723148857266727

/-! ## A389474.P10164087264270545491

`A297464(A263762(n+1))`
-/

namespace A389474.P10164087264270545491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 (A263762 (n + 1)).toNat

end

end A389474.P10164087264270545491

/-!
# A389475: G.f. A(x) satisfies A(3*x^2) = 2*x^2 + A(x)^2 - 2*A(x)^3.

The programs for A389475, there is no canonical definition to state claims against.
-/

/-! ## A389475.P15165076797495300397

`A112798(∑[n+1]+comp[∑[n+1]]!)`
-/

namespace A389475.P15165076797495300397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A389475.P15165076797495300397

/-!
# A389476: G.f. A(x) satisfies: A( x - A(x)^2/(1 - A(x))^2 ) = x.

The programs for A389476, there is no canonical definition to state claims against.
-/

/-! ## A389476.P16164321757933884364

`A316899(A008159(n))`
-/

namespace A389476.P16164321757933884364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316899 (A008159 n).toNat

end

end A389476.P16164321757933884364

/-!
# A389478: Numbers k such that sigma(k) = psi(k) + phi(k).

The programs for A389478, there is no canonical definition to state claims against.
-/

/-! ## A389478.P1097417795736796708

`filter[A069552(n+1), A011687(#)]`
-/

namespace A389478.P1097417795736796708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011687 (f1 j).toNat = 1) n)

end

end A389478.P1097417795736796708

/-!
# A389480: Triangle read by rows where T(n,k) is the algebraic degree of cos(k*Pi/n).

The programs for A389480, there is no canonical definition to state claims against.
-/

/-! ## A389480.P16985716469471400962

`A172133(A010048(n))`
-/

namespace A389480.P16985716469471400962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172133 (A010048 n).toNat

end

end A389480.P16985716469471400962

/-! ## A389480.P15222239976805122507

`A063056(A297866(n+1))`
-/

namespace A389480.P15222239976805122507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (A297866 (n + 1)).toNat

end

end A389480.P15222239976805122507

/-! ## A389480.P2447218104674607020

`A063056(A298133(n+1))`
-/

namespace A389480.P2447218104674607020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (A298133 (n + 1)).toNat

end

end A389480.P2447218104674607020

/-! ## A389480.P7683717377616335064

`A135062(A317896(n+1))`
-/

namespace A389480.P7683717377616335064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135062 (A317896 (n + 1)).toNat

end

end A389480.P7683717377616335064

/-! ## A389480.P9639321685648918077

`A228351(A298575(n+1)%A334965(2*n+3))`
-/

namespace A389480.P9639321685648918077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (Int.tmod (A298575 (n + 1)) (A334965 (2 * n + 3))).toNat

end

end A389480.P9639321685648918077

/-!
# A389481: Primes that remain prime when their binary digits are rotated once to the right.

The programs for A389481, the canonical program `A389481.P15172081649911050968` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389481 has offset 1).

The definition of A389481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389481.P15172081649911050968

`p?[A080541(p?[2*n+1])]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A389481

/-- `p?[A080541(p?[2*n+1])]` -/
def P15172081649911050968.Spec : Prop :=
  ∀ n, P15172081649911050968.a n = A389481 (n + 1)

theorem P15172081649911050968.correct : P15172081649911050968.Spec := by
  intro n
  simp only [A389481, Nat.add_sub_cancel]

end A389481

/-! ## A389481.P4676927579815799062

`p?[A139708(p?[2*n+1])]`
-/

namespace A389481.P4676927579815799062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389481.P4676927579815799062

namespace A389481

/-- `p?[A139708(p?[2*n+1])]` -/
def P4676927579815799062.Spec : Prop :=
  ∀ n, P4676927579815799062.a n = A389481 (n + 1)

end A389481

/-!
# A389482: Prime powers q such that LCM(1,2,...,q) = A003418(q) is highly abundant (A002093).

The programs for A389482, there is no canonical definition to state claims against.
-/

/-! ## A389482.P3158609715252947871

`filter[A389483(n+1), A010055(#)]`
-/

namespace A389482.P3158609715252947871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A389482.P3158609715252947871

/-! ## A389482.P2378211137841828526

`∩[A000961(n+1), A389483(n+1)]`
-/

namespace A389482.P2378211137841828526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389482.P2378211137841828526

/-! ## A389482.P10633868678418024266

`∩[A036116(n+1), A389483(n+1)]`
-/

namespace A389482.P10633868678418024266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389482.P10633868678418024266

/-! ## A389482.P12593065172556489326

`∩[A195943(n+1), A389483(n+1)]`
-/

namespace A389482.P12593065172556489326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389482.P12593065172556489326

/-! ## A389482.P8458485459823188651

`∩[A389483(n+1), A399967(n+1)]`
-/

namespace A389482.P8458485459823188651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389482.P8458485459823188651

/-!
# A389486: Integers which can be represented as a sum of two distinct nontrivial powers in two or more ways.

The programs for A389486, there is no canonical definition to state claims against.
-/

/-! ## A389486.P11225537496963326862

`∩[A353438(n+1), A388051(n+1)]`
-/

namespace A389486.P11225537496963326862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389486.P11225537496963326862

/-!
# A389487: Triangle read by rows: T(n,k) = number of heapable permutations of length n with exactly k increasing runs.

The programs for A389487, there is no canonical definition to state claims against.
-/

/-! ## A389487.P7245082218943669230

`A389255(A038722(n+1))`
-/

namespace A389487.P7245082218943669230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389255 (A038722 (n + 1)).toNat

end

end A389487.P7245082218943669230

/-! ## A389487.P11039317005946575611

`A389255(A061579(n)+1)`
-/

namespace A389487.P11039317005946575611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389255 (A061579 n + 1).toNat

end

end A389487.P11039317005946575611

/-! ## A389487.P18012859094496656264

`A172263(C(A089627(n), A114280(n)))`
-/

namespace A389487.P18012859094496656264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (Nat.choose (A089627 n).toNat (A114280 n).toNat)

end

end A389487.P18012859094496656264

/-!
# A389488: Total sum of the lengths of the first runs in heapable permutations of length n.

The programs for A389488, there is no canonical definition to state claims against.
-/

/-! ## A389488.P12104696318241744266

`A053344(A375259(n))`
-/

namespace A389488.P12104696318241744266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053344 (A375259 n).toNat

end

end A389488.P12104696318241744266

/-! ## A389488.P7962464209029426946

`∑[A325351(∑[A134095(n)])]`
-/

namespace A389488.P7962464209029426946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389488.P7962464209029426946

/-!
# A389493: Numbers k >= 1 such that k^2 - r^2 is a repunit (A002275) for some 1 <= r < k.

The programs for A389493, there is no canonical definition to state claims against.
-/

/-! ## A389493.P11838443520184668371

`filter[A048611(n+1), A080110(#)]`
-/

namespace A389493.P11838443520184668371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A389493.P11838443520184668371

/-!
# A389496: Triangle T(n,k) read by rows: T(n,k) is the number of heapable permutations of length n whose major index is k.

The programs for A389496, there is no canonical definition to state claims against.
-/

/-! ## A389496.P1626190945948505029

`A010873(C(A101198(n+1), A228074(n)))`
-/

namespace A389496.P1626190945948505029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (Nat.choose (A101198 (n + 1)).toNat (A228074 n).toNat)

end

end A389496.P1626190945948505029

/-! ## A389496.P7407804671487311707

`and(A008289(A000055(n)), A237271(n+1))`
-/

namespace A389496.P7407804671487311707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008289 (A000055 n).toNat) (A237271 (n + 1))

end

end A389496.P7407804671487311707

/-! ## A389496.P1522597786559041425

`and(A033461(A337664(n)), A110963(n+1))`
-/

namespace A389496.P1522597786559041425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033461 (A337664 n).toNat) (A110963 (n + 1))

end

end A389496.P1522597786559041425

/-! ## A389496.P10770078543382864910

`A036580(A059441(2*n+1)*A287170(3*(n+1)))`
-/

namespace A389496.P10770078543382864910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A059441 (2 * n + 1) * A287170 (3 * (n + 1))).toNat

end

end A389496.P10770078543382864910

/-! ## A389496.P6097518266022315940

`A091830(A367653(n))`
-/

namespace A389496.P6097518266022315940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091830 (A367653 n).toNat

end

end A389496.P6097518266022315940

/-!
# A389497: Numbers whose number of powerful divisors is a square.

The programs for A389497, the canonical program `A389497.P5638867141399024017` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389497 has offset 1).

The definition of A389497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389497.P5638867141399024017

`eq[1, A010052(A005361(n+1))]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389497

/-- `eq[1, A010052(A005361(n+1))]+1` -/
def P5638867141399024017.Spec : Prop :=
  ∀ n, (P5638867141399024017.a n : ℤ) = A389497 (n + 1)

theorem P5638867141399024017.correct : P5638867141399024017.Spec := by
  intro n
  simp only [A389497, Nat.add_sub_cancel]

end A389497

/-! ## A389497.P17785971063208024794

`eq[A010816(3*n+2), A003285(A005361(n+1))]+1`
-/

namespace A389497.P17785971063208024794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A389497.P17785971063208024794

namespace A389497

/-- `eq[A010816(3*n+2), A003285(A005361(n+1))]+1` -/
def P17785971063208024794.Spec : Prop :=
  ∀ n, (P17785971063208024794.a n : ℤ) = A389497 (n + 1)

end A389497

/-!
# A389498: Powerful numbers whose number of powerful divisors is a square.

The programs for A389498, there is no canonical definition to state claims against.
-/

/-! ## A389498.P8223143062400510713

`∩[A001597(n+1), A389497(n+1)]`
-/

namespace A389498.P8223143062400510713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389498.P8223143062400510713

/-! ## A389498.P16133920243755512196

`∩[A001694(n+1), A389497(n+1)]`
-/

namespace A389498.P16133920243755512196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389498.P16133920243755512196

/-! ## A389498.P9664647029791173684

`∩[A389497(n+1), A389500(n+1)]`
-/

namespace A389498.P9664647029791173684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389498.P9664647029791173684

/-! ## A389498.P12910358125463122280

`filter[A389497(n+1), A075802(#)]`
-/

namespace A389498.P12910358125463122280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A389498.P12910358125463122280

/-! ## A389498.P16362086503017836139

`filter[A389497(n+1), A112526(#)]`
-/

namespace A389498.P16362086503017836139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A389498.P16362086503017836139

