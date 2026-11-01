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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B006.C002
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
import SequenceMachineLib.Triangle

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

The programs for A389402, the canonical program `A389402.P7269011306304324622` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389402 has offset 0).

The definition of A389402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389402.P7269011306304324622

`1/(n+1)*∑{#}[n, C(n+#, #)*C(2*n+3*#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389402

/-- `1/(n+1)*∑{#}[n, C(n+#, #)*C(2*n+3*#, n-#)]` -/
def P7269011306304324622.Spec : Prop :=
  ∀ n, P7269011306304324622.a n = (A389402 n : ℚ)

end A389402

/-!
# A389403: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^2 / (1 - x)^3) ).

The programs for A389403, the canonical program `A389403.P11870175003693255733` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389403 has offset 0).

The definition of A389403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389403.P11870175003693255733

`1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(2*n+2*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389403

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(2*n+2*#, n-2*#)]` -/
def P11870175003693255733.Spec : Prop :=
  ∀ n, P11870175003693255733.a n = (A389403 n : ℚ)

end A389403

/-! ## A389403.P17367924008934117491

`floor(sqrt((A366003(n+1)+1)/2))`
-/

namespace A389403.P17367924008934117491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A366003 (n + 1) + 1 : ℚ) / 2 : ℝ)⌋

end

end A389403.P17367924008934117491

namespace A389403

/-- `floor(sqrt((A366003(n+1)+1)/2))` -/
def P17367924008934117491.Spec : Prop :=
  ∀ n, P17367924008934117491.a n = A389403 n

end A389403

/-!
# A389404: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^3 / (1 - x)^3) ).

The programs for A389404, the canonical program `A389404.P2225171950601920184` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389404 has offset 0).

The definition of A389404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389404.P2225171950601920184

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+#, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389404

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+#, n-3*#)]` -/
def P2225171950601920184.Spec : Prop :=
  ∀ n, P2225171950601920184.a n = (A389404 n : ℚ)

end A389404

/-! ## A389404.P15463819965711008985

`A056135(9*(6*a(n-1)-7*a(n-2)+1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A389404.P15463819965711008985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A056135 (9 * (6 * a (n - 1) - 7 * a (n - 2) + 1)).toNat

end

end A389404.P15463819965711008985

namespace A389404

/-- `A056135(9*(6*a(n-1)-7*a(n-2)+1))` -/
def P15463819965711008985.Spec : Prop :=
  ∀ n, P15463819965711008985.a n = A389404 n

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

/-!
# A389405: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^5 / (1 - x)) ).

The programs for A389405, the canonical program `A389405.P16466539227226954495` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389405 has offset 0).

The definition of A389405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389405.P16466539227226954495

`1/(n+1)*∑{#}[floor(n/5), C(n+#, #)*C(2*n-3*#, n-5*#)]`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A389405.P10305824235161943595

`row(row(A212982(A098746(n))))`
-/

namespace A389405.P10305824235161943595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A212982 (A098746 n).toNat).toNat)

end

end A389405.P10305824235161943595

namespace A389405

/-- `row(row(A212982(A098746(n))))` -/
def P10305824235161943595.Spec : Prop :=
  ∀ n, (P10305824235161943595.a n : ℤ) = A389405 n

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

/-!
# A389406: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^2) ).

The programs for A389406, the canonical program `A389406.P74488536734935256` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389406 has offset 0).

The definition of A389406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389406.P74488536734935256

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389406

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*#, n-3*#)]` -/
def P74488536734935256.Spec : Prop :=
  ∀ n, P74488536734935256.a n = (A389406 n : ℚ)

end A389406

/-!
# A389407: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^3) ).

The programs for A389407, the canonical program `A389407.P12329058446061681892` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389407 has offset 0).

The definition of A389407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389407.P12329058446061681892

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(3*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A389408.P4940657700220817354

`a(n-1)-1+A006530(a(n-1))` with `a(0)=2`
-/

namespace A389408.P4940657700220817354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - 1 + A006530 (a (n - 1)).toNat

end

end A389408.P4940657700220817354

namespace A389408

/-- `a(n-1)-1+A006530(a(n-1))` -/
def P4940657700220817354.Spec : Prop :=
  ∀ n, P4940657700220817354.a n = A389408 (n + 1)

theorem P4940657700220817354.correct : P4940657700220817354.Spec := by
  intro n
  simp only [A389408, Nat.add_sub_cancel, A389408.P4940657700220817354.a, A389408.P9215505709923838788.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A389408

/-! ## A389408.P11653069787628772357

`A000010(A006530(a(n-1)))+a(n-1)` with `a(0)=2`
-/

namespace A389408.P11653069787628772357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000010 (A006530 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A389408.P11653069787628772357

namespace A389408

/-- `A000010(A006530(a(n-1)))+a(n-1)` -/
def P11653069787628772357.Spec : Prop :=
  ∀ n, P11653069787628772357.a n = A389408 (n + 1)

end A389408

/-! ## A389408.P12215118156104390409

`A006530(a(n-1))-1+a(A023443(n))` with `a(0)=2`
-/

namespace A389408.P12215118156104390409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1)).toNat - 1 + a (A023443 n).toNat

end

end A389408.P12215118156104390409

namespace A389408

/-- `A006530(a(n-1))-1+a(A023443(n))` -/
def P12215118156104390409.Spec : Prop :=
  ∀ n, P12215118156104390409.a n = A389408 (n + 1)

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

/-!
# A389410: Expansion of (1/x) * Series_Reversion( x * (1 - x) / (1 + x^2 / (1 - x)^2) ).

The programs for A389410, the canonical program `A389410.P5050009723553091632` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389410 has offset 0).

The definition of A389410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389410.P5050009723553091632

`1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A389411, the canonical program `A389411.P8901213990794455132` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389411 has offset 0).

The definition of A389411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389411.P8901213990794455132

`1/(n+1)*∑{#}[floor(n/3), C(n+1, #)*C(2*n, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A389412.P2633286171484138736

`A078147(xor(n, A053303(n+3)))`
-/

namespace A389412.P2633286171484138736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (Int.xor (n : ℤ) (A053303 (n + 3))).toNat

end

end A389412.P2633286171484138736

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

/-! ## A389412.P7573550437237021812

`A374740(C(A364950(n+1), A094570(2*n+3)))`
-/

namespace A389412.P7573550437237021812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (Nat.choose (A364950 (n + 1)).toNat (A094570 (2 * n + 3)).toNat)

end

end A389412.P7573550437237021812

/-! ## A389412.P4712175393652601244

`A374251(lt[A198982(n+1), A000217(n)])`
-/

namespace A389412.P4712175393652601244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374251 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389412.P4712175393652601244

/-!
# A389413: a(n) is the least integer k such that among the n consecutive integers k, k + 1, ..., k + n - 1, the sum of any majority subset exceeds the sum of its complement.

The programs for A389413, the canonical program `A389413.P6189147182474438771` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389413 has offset 1).

The definition of A389413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389413.P6189147182474438771

`ogf((1+x^3+x^4+2x^6+x^7)/(1-2x^2+2x^6-x^8))`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A389413.P3075546239245504187

`ceil((A060681(A164900(n)+1)-(n+1))/2)`
-/

namespace A389413.P3075546239245504187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060681 (A164900 n + 1).toNat - (n + 1 : ℤ) : ℚ) / 2⌉

end

end A389413.P3075546239245504187

namespace A389413

/-- `ceil((A060681(A164900(n)+1)-(n+1))/2)` -/
def P3075546239245504187.Spec : Prop :=
  ∀ n, P3075546239245504187.a n = A389413 (n + 1)

end A389413

/-!
# A389414: Numbers k whose (not necessarily distinct) prime factors can be side lengths of a simple polygon.

The programs for A389414, there is no canonical definition to state claims against.
-/

/-! ## A389414.P5339492955974218438

`∪[A030514(1+n), A392380(n+1)]`
-/

namespace A389414.P5339492955974218438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P5339492955974218438

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

/-! ## A389417.P12776275776465406693

`filter[A387526(1+n), A010051(#)]`
-/

namespace A389417.P12776275776465406693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A389417.P12776275776465406693

/-! ## A389417.P8522868213812441035

`filter[A387526(1+n), A323153(#)]`
-/

namespace A389417.P8522868213812441035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A389417.P8522868213812441035

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

/-! ## A389423.P9920891282353454280

`floor(2*n²/(1+n))*A002322(A187741(2*n+1))`
-/

namespace A389423.P9920891282353454280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n ^ 2 : ℚ) / (1 + n : ℚ)⌋ * A002322 (A187741 (2 * n + 1)).toNat

end

end A389423.P9920891282353454280

/-! ## A389423.P14889855471927710611

`A002322(A193937(n+1))*A004275(n)`
-/

namespace A389423.P14889855471927710611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A193937 (n + 1)).toNat * A004275 n

end

end A389423.P14889855471927710611

/-! ## A389423.P9783429467804908587

`A001222(n+1)*A228849(A144819(n+1))`
-/

namespace A389423.P9783429467804908587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A228849 (A144819 (n + 1)).toNat

end

end A389423.P9783429467804908587

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

/-! ## A389424.P3489097237833431620

`A024706(A107046(n))%A211315(n)`
-/

namespace A389424.P3489097237833431620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024706 (A107046 n).toNat) (A211315 n)

end

end A389424.P3489097237833431620

/-! ## A389424.P4585248373383374337

`A333175(A296122(n))%A211315(n)`
-/

namespace A389424.P4585248373383374337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333175 (A296122 n).toNat) (A211315 n)

end

end A389424.P4585248373383374337

/-!
# A389425: First differences of A199716.

The programs for A389425, the canonical program `A389425.P17457791161868218869` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389425 has offset 1).

The definition of A389425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389425.P17457791161868218869

`A199716(n+2)-A199716(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A389425

/-- `A199716(n+2)-A199716(n+1)` -/
def P17457791161868218869.Spec : Prop :=
  ∀ n, P17457791161868218869.a n = A389425 (n + 1)

theorem P17457791161868218869.correct : P17457791161868218869.Spec := by
  intro n
  simp only [A389425, Nat.add_sub_cancel]

end A389425

/-! ## A389425.P12702246709751625795

`Δ[A199716(1+n)]`
-/

namespace A389425.P12702246709751625795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389425.P12702246709751625795

namespace A389425

/-- `Δ[A199716(1+n)]` -/
def P12702246709751625795.Spec : Prop :=
  ∀ n, P12702246709751625795.a n = A389425 (n + 1)

theorem P12702246709751625795.correct : P12702246709751625795.Spec := by
  intro n
  simp only [A389425, Nat.add_sub_cancel, A389425.P12702246709751625795.f1, A389425.P12702246709751625795.a, A389425.P17457791161868218869.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A389425

/-! ## A389425.P12516725577134658705

`Δ[comp[floor(A105760(n+1)/3)]]`
-/

namespace A389425.P12516725577134658705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105760 (n + 1) : ℚ) / 3⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P12516725577134658705

namespace A389425

/-- `Δ[comp[floor(A105760(n+1)/3)]]` -/
def P12516725577134658705.Spec : Prop :=
  ∀ n, P12516725577134658705.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P2268338376866362802

`Δ[comp[floor(A065091(n+1)/6)]]`
-/

namespace A389425.P2268338376866362802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065091 (n + 1) : ℚ) / 6⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P2268338376866362802

namespace A389425

/-- `Δ[comp[floor(A065091(n+1)/6)]]` -/
def P2268338376866362802.Spec : Prop :=
  ∀ n, P2268338376866362802.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P8617711959113747218

`Δ[comp[floor(A000040(n+1)/6)]]`
-/

namespace A389425.P8617711959113747218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 6⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P8617711959113747218

namespace A389425

/-- `Δ[comp[floor(A000040(n+1)/6)]]` -/
def P8617711959113747218.Spec : Prop :=
  ∀ n, P8617711959113747218.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P877622237469318049

`Δ[comp[ceil(A332806(n+1)/6)-1]]`
-/

namespace A389425.P877622237469318049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332806 (n + 1) : ℚ) / 6⌉ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P877622237469318049

namespace A389425

/-- `Δ[comp[ceil(A332806(n+1)/6)-1]]` -/
def P877622237469318049.Spec : Prop :=
  ∀ n, P877622237469318049.a n = A389425 (n + 1)

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

/-! ## A389425.P12944868427296075654

`Δ[lt[7, A020481(3*n+4)]]`
-/

namespace A389425.P12944868427296075654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (3 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P12944868427296075654

namespace A389425

/-- `Δ[lt[7, A020481(3*n+4)]]` -/
def P12944868427296075654.Spec : Prop :=
  ∀ n, P12944868427296075654.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P18157083741098222649

`Δ[lt[5, A060266(3*(n+1))]]`
-/

namespace A389425.P18157083741098222649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P18157083741098222649

namespace A389425

/-- `Δ[lt[5, A060266(3*(n+1))]]` -/
def P18157083741098222649.Spec : Prop :=
  ∀ n, P18157083741098222649.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P1644878853138279094

`Δ[lt[7, A020483(3*n+2)]]`
-/

namespace A389425.P1644878853138279094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (3 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P1644878853138279094

namespace A389425

/-- `Δ[lt[7, A020483(3*n+2)]]` -/
def P1644878853138279094.Spec : Prop :=
  ∀ n, P1644878853138279094.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P7958314768327181613

`Δ[lt[4, A377758(3*n+4)]]`
-/

namespace A389425.P7958314768327181613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377758 (3 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P7958314768327181613

namespace A389425

/-- `Δ[lt[4, A377758(3*n+4)]]` -/
def P7958314768327181613.Spec : Prop :=
  ∀ n, P7958314768327181613.a n = A389425 (n + 1)

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

/-! ## A389425.P2564090954253721255

`Δ[comp[A008615(A000040(n+1)+1)]]`
-/

namespace A389425.P2564090954253721255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000040 (n + 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P2564090954253721255

namespace A389425

/-- `Δ[comp[A008615(A000040(n+1)+1)]]` -/
def P2564090954253721255.Spec : Prop :=
  ∀ n, P2564090954253721255.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P11225203585651132654

`Δ[comp[A151898(A046022(n+1))-1]]`
-/

namespace A389425.P11225203585651132654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A046022 (n + 1)).toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P11225203585651132654

namespace A389425

/-- `Δ[comp[A151898(A046022(n+1))-1]]` -/
def P11225203585651132654.Spec : Prop :=
  ∀ n, P11225203585651132654.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P3738467956075114338

`Δ[comp[A008612(A000040(n+1))]]`
-/

namespace A389425.P3738467956075114338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A000040 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P3738467956075114338

namespace A389425

/-- `Δ[comp[A008612(A000040(n+1))]]` -/
def P3738467956075114338.Spec : Prop :=
  ∀ n, P3738467956075114338.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P3431112432685382600

`Δ[comp[A008612(A008578(n+1))]]`
-/

namespace A389425.P3431112432685382600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A008578 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P3431112432685382600

namespace A389425

/-- `Δ[comp[A008612(A008578(n+1))]]` -/
def P3431112432685382600.Spec : Prop :=
  ∀ n, P3431112432685382600.a n = A389425 (n + 1)

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

The programs for A389430, the canonical program `A389430.P17185178409529452135` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389430 has offset 0).

The definition of A389430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389430.P17185178409529452135

`ogf((x+x^3+x^5)/(1-2x+2x^2-2x^3+2x^5-2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389430

/-- `ogf((x+x^3+x^5)/(1-2x+2x^2-2x^3+2x^5-2x^6+2x^7-x^8))` -/
def P17185178409529452135.Spec : Prop :=
  ∀ n, P17185178409529452135.a n = A389430 n

theorem P17185178409529452135.correct : P17185178409529452135.Spec := by
  intro n
  simp only [A389430]

end A389430

/-! ## A389430.P376920787278305767

`∑[lcm(2, ceil(n/2))/2]`
-/

namespace A389430.P376920787278305767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ⌈(n : ℚ) / 2⌉ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P376920787278305767

namespace A389430

/-- `∑[lcm(2, ceil(n/2))/2]` -/
def P376920787278305767.Spec : Prop :=
  ∀ n, P376920787278305767.a n = (A389430 n : ℚ)

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

/-! ## A389430.P11282128485881054612

`round((∑[∑[n]%2]+n+1)²/12)`
-/

namespace A389430.P11282128485881054612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j + n + 1) ^ 2 : ℕ) : ℚ) / 12)

end

end A389430.P11282128485881054612

namespace A389430

/-- `round((∑[∑[n]%2]+n+1)²/12)` -/
def P11282128485881054612.Spec : Prop :=
  ∀ n, P11282128485881054612.a n = A389430 n

end A389430

/-! ## A389430.P13865841755525057116

`∑[A026741(ceil(n/2))]`
-/

namespace A389430.P13865841755525057116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P13865841755525057116

namespace A389430

/-- `∑[A026741(ceil(n/2))]` -/
def P13865841755525057116.Spec : Prop :=
  ∀ n, P13865841755525057116.a n = A389430 n

end A389430

/-! ## A389430.P15683138999761278311

`∑[gcd(∑[n], A001318(n))]`
-/

namespace A389430.P15683138999761278311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A001318 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P15683138999761278311

namespace A389430

/-- `∑[gcd(∑[n], A001318(n))]` -/
def P15683138999761278311.Spec : Prop :=
  ∀ n, (P15683138999761278311.a n : ℤ) = A389430 n

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

/-! ## A389431.P12356852602725482496

`record[A020639(A053810(n+1)-2)]`
-/

namespace A389431.P12356852602725482496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053810 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389431.P12356852602725482496

/-! ## A389431.P13132806932011214942

`filter[A053810(n+1)-2, A010051(#)]`
-/

namespace A389431.P13132806932011214942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A389431.P13132806932011214942

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

/-!
# A389432: Smallest nonnegative integer with a constant congruence speed >= n (see A373387 for the definition of "constant congruence speed").

The programs for A389432, the canonical program `A389432.P8159619517608642910` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389432 has offset 0).

The definition of A389432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389432.P8159619517608642910

`ogf((2x+5x^2+9x^3+12x^5)/(1-3x^2-4x^4))`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A389435, the canonical program `A389435.P681756410655706602` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389435 has offset 0).

The definition of A389435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389435.P681756410655706602

`1/(n+1)*∑{#}[n, C(n+1, #)*C(2*n+2*#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389435

/-- `1/(n+1)*∑{#}[n, C(n+1, #)*C(2*n+2*#, n-#)]` -/
def P681756410655706602.Spec : Prop :=
  ∀ n, P681756410655706602.a n = (A389435 n : ℚ)

end A389435

/-!
# A389436: Expansion of (1/x) * Series_Reversion( x * (1 - x) / (1 + x^2 / (1 - x)^3) ).

The programs for A389436, the canonical program `A389436.P6907715616596630553` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389436 has offset 0).

The definition of A389436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389436.P6907715616596630553

`1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n+#, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A389437, the canonical program `A389437.P2195382667867840290` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389437 has offset 0).

The definition of A389437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389437.P2195382667867840290

`1/(n+1)*∑{#}[n, C(n+#, #)*C(n+2*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A389438, the canonical program `A389438.P10235148621133199727` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389438 has offset 0).

The definition of A389438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389438.P10235148621133199727

`1/(n+1)*∑{#}[n, C(n+#, #)*C(n+3*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389438

/-- `1/(n+1)*∑{#}[n, C(n+#, #)*C(n+3*#+1, n-#)]` -/
def P10235148621133199727.Spec : Prop :=
  ∀ n, P10235148621133199727.a n = (A389438 n : ℚ)

end A389438

/-! ## A389438.P13225993020454443841

`A390709(n)+A027868(A390709(n))`
-/

namespace A389438.P13225993020454443841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390709 n + A027868 (A390709 n).toNat

end

end A389438.P13225993020454443841

namespace A389438

/-- `A390709(n)+A027868(A390709(n))` -/
def P13225993020454443841.Spec : Prop :=
  ∀ n, P13225993020454443841.a n = A389438 n

end A389438

/-!
# A389439: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 * (1 + x)^3) / (1 + x) ).

The programs for A389439, the canonical program `A389439.P5035992238113275623` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389439 has offset 0).

The definition of A389439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389439.P5035992238113275623

`1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(n+3*#+1, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A389440, the canonical program `A389440.P14330519705026663910` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389440 has offset 0).

The definition of A389440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389440.P14330519705026663910

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(n+2*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389440

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(n+2*#+1, n-3*#)]` -/
def P14330519705026663910.Spec : Prop :=
  ∀ n, P14330519705026663910.a n = (A389440 n : ℚ)

end A389440

/-!
# A389441: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^3) / (1 + x) ).

The programs for A389441, the canonical program `A389441.P7650392422000690907` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389441 has offset 0).

The definition of A389441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389441.P7650392422000690907

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(n+3*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A389444, the canonical program `A389444.P3037006511819415814` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389444 has offset 0).

The definition of A389444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389444.P3037006511819415814

`1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(n+#+1, n-4*#)]`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A389444.P9643349603727282441

`A251683(A019654(n+1))+A000579(n+2)`
-/

namespace A389444.P9643349603727282441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251683 (A019654 (n + 1)).toNat + A000579 (n + 2)

end

end A389444.P9643349603727282441

namespace A389444

/-- `A251683(A019654(n+1))+A000579(n+2)` -/
def P9643349603727282441.Spec : Prop :=
  ∀ n, P9643349603727282441.a n = A389444 n

end A389444

/-!
# A389445: Expansion of (1/x) * Series_Reversion( x * (1 / (1 + x) - x^5) ).

The programs for A389445, the canonical program `A389445.P13282492773704640640` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389445 has offset 0).

The definition of A389445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389445.P13282492773704640640

`1/(n+1)*∑{#}[floor(n/5), C(n+#, #)*C(n+#+1, n-5*#)]`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A389446.P9815416978133358391

`gcd(∑{d}[n+1, #], ∑{d}[(1+n)/∏{p}[1+n, #], (n+1)/#])`
-/

namespace A389446.P9815416978133358391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, (n + 1 : ℚ) / (d : ℚ)))

end

end A389446.P9815416978133358391

namespace A389446

/-- `gcd(∑{d}[n+1, #], ∑{d}[(1+n)/∏{p}[1+n, #], (n+1)/#])` -/
def P9815416978133358391.Spec : Prop :=
  ∀ n, (P9815416978133358391.a n : ℤ) = A389446 (n + 1)

end A389446

/-! ## A389446.P5695989404270051787

`gcd(∑{d}[n+1, #], A057723(n+1))`
-/

namespace A389446.P5695989404270051787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A057723 (n + 1))

end

end A389446.P5695989404270051787

namespace A389446

/-- `gcd(∑{d}[n+1, #], A057723(n+1))` -/
def P5695989404270051787.Spec : Prop :=
  ∀ n, (P5695989404270051787.a n : ℤ) = A389446 (n + 1)

end A389446

/-! ## A389446.P13656244709468530874

`gcd(∑{d}[(1+n)/∏{p}[1+n, #], (n+1)/#], A000203(n+1))`
-/

namespace A389446.P13656244709468530874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (n + 1 : ℚ) / (d : ℚ))) (A000203 (n + 1))

end

end A389446.P13656244709468530874

namespace A389446

/-- `gcd(∑{d}[(1+n)/∏{p}[1+n, #], (n+1)/#], A000203(n+1))` -/
def P13656244709468530874.Spec : Prop :=
  ∀ n, (P13656244709468530874.a n : ℤ) = A389446 (n + 1)

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

/-! ## A389447.P6236761914607695632

`∑{d}[n+1, #]/A389446(n+1)`
-/

namespace A389447.P6236761914607695632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P6236761914607695632

namespace A389447

/-- `∑{d}[n+1, #]/A389446(n+1)` -/
def P6236761914607695632.Spec : Prop :=
  ∀ n, P6236761914607695632.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P7092880207477840557

`Δ[A160664(n)]/A389446(n+1)`
-/

namespace A389447.P7092880207477840557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P7092880207477840557

namespace A389447

/-- `Δ[A160664(n)]/A389446(n+1)` -/
def P7092880207477840557.Spec : Prop :=
  ∀ n, P7092880207477840557.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P14942158904181848553

`(A034448(n+1)+A048146(n+1))/A389446(n+1)`
-/

namespace A389447.P14942158904181848553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) + A048146 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P14942158904181848553

namespace A389447

/-- `(A034448(n+1)+A048146(n+1))/A389446(n+1)` -/
def P14942158904181848553.Spec : Prop :=
  ∀ n, P14942158904181848553.a n = (A389447 (n + 1) : ℚ)

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

/-! ## A389447.P1492750924290653040

`(A054785(n+1)-A000593(n+1))/A389446(n+1)`
-/

namespace A389447.P1492750924290653040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054785 (n + 1) - A000593 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P1492750924290653040

namespace A389447

/-- `(A054785(n+1)-A000593(n+1))/A389446(n+1)` -/
def P1492750924290653040.Spec : Prop :=
  ∀ n, P1492750924290653040.a n = (A389447 (n + 1) : ℚ)

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

/-! ## A389447.P7798330915358178231

`(A006128(n+1)-A220477(n+1))/A389446(n+1)`
-/

namespace A389447.P7798330915358178231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006128 (n + 1) - A220477 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P7798330915358178231

namespace A389447

/-- `(A006128(n+1)-A220477(n+1))/A389446(n+1)` -/
def P7798330915358178231.Spec : Prop :=
  ∀ n, P7798330915358178231.a n = (A389447 (n + 1) : ℚ)

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

/-! ## A389448.P10360009974009763566

`∑{d}[n+1, A384050(#)]/A389446(n+1)`
-/

namespace A389448.P10360009974009763566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A384050 d : ℤ) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P10360009974009763566

namespace A389448

/-- `∑{d}[n+1, A384050(#)]/A389446(n+1)` -/
def P10360009974009763566.Spec : Prop :=
  ∀ n, P10360009974009763566.a n = (A389448 (n + 1) : ℚ)

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

/-! ## A389448.P2874948084800324131

`A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #]/A389446(n+1)`
-/

namespace A389448.P2874948084800324131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P2874948084800324131

namespace A389448

/-- `A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #]/A389446(n+1)` -/
def P2874948084800324131.Spec : Prop :=
  ∀ n, P2874948084800324131.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P8313040187508333241

`(A336564(n+1)+A001065(n+1))/A389446(n+1)`
-/

namespace A389448.P8313040187508333241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336564 (n + 1) + A001065 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P8313040187508333241

namespace A389448

/-- `(A336564(n+1)+A001065(n+1))/A389446(n+1)` -/
def P8313040187508333241.Spec : Prop :=
  ∀ n, P8313040187508333241.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P11777844825315096719

`(A396549(n+1)+A322857(n+1))/A389446(n+1)`
-/

namespace A389448.P11777844825315096719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396549 (n + 1) + A322857 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P11777844825315096719

namespace A389448

/-- `(A396549(n+1)+A322857(n+1))/A389446(n+1)` -/
def P11777844825315096719.Spec : Prop :=
  ∀ n, P11777844825315096719.a n = (A389448 (n + 1) : ℚ)

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

/-! ## A389449.P5995080748566063337

`Δ[fp[A260442(n)]]`
-/

namespace A389449.P5995080748566063337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389449.P5995080748566063337

/-! ## A389449.P7913445888632105101

`C(A277333(n+1), A048675(n+1))`
-/

namespace A389449.P7913445888632105101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277333 (n + 1)).toNat (A048675 (n + 1)).toNat

end

end A389449.P7913445888632105101

/-! ## A389449.P5632631279500565595

`A323152(A134364(1+n))`
-/

namespace A389449.P5632631279500565595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (A134364 (1 + n)).toNat

end

end A389449.P5632631279500565595

/-! ## A389449.P1646192802985358596

`A040000(A277333(n+1))-A057427(n)`
-/

namespace A389449.P1646192802985358596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A277333 (n + 1)).toNat - A057427 n

end

end A389449.P1646192802985358596

/-! ## A389449.P3902695059100692116

`A040000(A277333(n+1))-A054571(A020639(n+1))`
-/

namespace A389449.P3902695059100692116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A277333 (n + 1)).toNat - A054571 (A020639 (n + 1)).toNat

end

end A389449.P3902695059100692116

/-!
# A389450: Sum of unitary divisors of the largest unitary divisor of n that is a term in A048103 (not divisible by p^p for any prime p).

The programs for A389450, the canonical program `A389450.P17825453816394576643` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389450 has offset 1).

The definition of A389450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389450.P17825453816394576643

`A034448(A389455(1+n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389450

/-- `A034448(A389455(1+n))` -/
def P17825453816394576643.Spec : Prop :=
  ∀ n, P17825453816394576643.a n = A389450 (n + 1)

theorem P17825453816394576643.correct : P17825453816394576643.Spec := by
  intro n
  simp only [A389450, Nat.add_sub_cancel]

end A389450

/-! ## A389450.P9984399713705356936

`A380090(A389455(n+1))`
-/

namespace A389450.P9984399713705356936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380090 (A389455 (n + 1)).toNat

end

end A389450.P9984399713705356936

namespace A389450

/-- `A380090(A389455(n+1))` -/
def P9984399713705356936.Spec : Prop :=
  ∀ n, P9984399713705356936.a n = A389450 (n + 1)

end A389450

/-! ## A389450.P3644230195633925332

`A380090((n+1)/A368333(n+1))`
-/

namespace A389450.P3644230195633925332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368333 (n + 1) : ℚ))).toNat

end

end A389450.P3644230195633925332

namespace A389450

/-- `A380090((n+1)/A368333(n+1))` -/
def P3644230195633925332.Spec : Prop :=
  ∀ n, P3644230195633925332.a n = A389450 (n + 1)

end A389450

/-! ## A389450.P17580876648267069316

`A034448(n+1)/A034448(A368333(n+1))`
-/

namespace A389450.P17580876648267069316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A034448 (A368333 (n + 1)).toNat : ℚ)

end

end A389450.P17580876648267069316

namespace A389450

/-- `A034448(n+1)/A034448(A368333(n+1))` -/
def P17580876648267069316.Spec : Prop :=
  ∀ n, P17580876648267069316.a n = (A389450 (n + 1) : ℚ)

end A389450

/-! ## A389450.P11004558214335435123

`A380090(A327937(n+1)*A368333(n+1))`
-/

namespace A389450.P11004558214335435123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380090 (A327937 (n + 1) * A368333 (n + 1)).toNat

end

end A389450.P11004558214335435123

namespace A389450

/-- `A380090(A327937(n+1)*A368333(n+1))` -/
def P11004558214335435123.Spec : Prop :=
  ∀ n, P11004558214335435123.a n = A389450 (n + 1)

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

/-! ## A389451.P12199767797645805446

`∑{d}[A389455(1+n), #]`
-/

namespace A389451.P12199767797645805446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389455 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A389451.P12199767797645805446

namespace A389451

/-- `∑{d}[A389455(1+n), #]` -/
def P12199767797645805446.Spec : Prop :=
  ∀ n, (P12199767797645805446.a n : ℤ) = A389451 (n + 1)

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

/-! ## A389452.P5492852834718604046

`∑{d}[A368333(1+n), #]`
-/

namespace A389452.P5492852834718604046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368333 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A389452.P5492852834718604046

namespace A389452

/-- `∑{d}[A368333(1+n), #]` -/
def P5492852834718604046.Spec : Prop :=
  ∀ n, (P5492852834718604046.a n : ℤ) = A389452 (n + 1)

end A389452

/-! ## A389452.P8597615558398512789

`∑{d}[gcd(n+1, A327939(n+1)²), #]`
-/

namespace A389452.P8597615558398512789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327939 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A389452.P8597615558398512789

namespace A389452

/-- `∑{d}[gcd(n+1, A327939(n+1)²), #]` -/
def P8597615558398512789.Spec : Prop :=
  ∀ n, (P8597615558398512789.a n : ℤ) = A389452 (n + 1)

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

/-! ## A389452.P1350298139752539048

`A389453(n+1)+A343224(A368333(n+1))`
-/

namespace A389452.P1350298139752539048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389453 (n + 1) + A343224 (A368333 (n + 1)).toNat

end

end A389452.P1350298139752539048

namespace A389452

/-- `A389453(n+1)+A343224(A368333(n+1))` -/
def P1350298139752539048.Spec : Prop :=
  ∀ n, P1350298139752539048.a n = A389452 (n + 1)

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

/-! ## A389453.P1662643498386720533

`A371192(A368333(n+1)%floor((n+1)*sqrt(35/11)))`
-/

namespace A389453.P1662643498386720533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371192 (Int.tmod (A368333 (n + 1)) ⌊(n + 1 : ℝ) * Real.sqrt ((35 : ℚ) / 11 : ℝ)⌋).toNat

end

end A389453.P1662643498386720533

namespace A389453

/-- `A371192(A368333(n+1)%floor((n+1)*sqrt(35/11)))` -/
def P1662643498386720533.Spec : Prop :=
  ∀ n, P1662643498386720533.a n = A389453 (n + 1)

end A389453

/-! ## A389453.P8669112124821667019

`A371192(A368333(n+1))%A104042(n)`
-/

namespace A389453.P8669112124821667019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371192 (A368333 (n + 1)).toNat) (A104042 n)

end

end A389453.P8669112124821667019

namespace A389453

/-- `A371192(A368333(n+1))%A104042(n)` -/
def P8669112124821667019.Spec : Prop :=
  ∀ n, P8669112124821667019.a n = A389453 (n + 1)

end A389453

/-! ## A389453.P4850183070986170732

`A105570(((n+1)/∏{p}[n+1, #]*∏{e}[n+1, #])%(A244419(2*(n+2))+1+n))`
-/

namespace A389453.P4850183070986170732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ))) (A244419 (2 * (n + 2)) + 1 + (n : ℤ))).toNat

end

end A389453.P4850183070986170732

namespace A389453

/-- `A105570(((n+1)/∏{p}[n+1, #]*∏{e}[n+1, #])%(A244419(2*(n+2))+1+n))` -/
def P4850183070986170732.Spec : Prop :=
  ∀ n, P4850183070986170732.a n = A389453 (n + 1)

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
  simp only [A389454, Nat.add_sub_cancel, A389454.P13905471040686066385.a, A389454.P5399989822450650276.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A368333, A368333.P4860013269317907848.a, A389455, A389455.P1455942974277617532.a, A001014, A001014.P10270364271630987481.a, A184985, A184985.P337458216283386355.a, A342007, A342007.P16795966861758960750.f1, A342007.P16795966861758960750.a, A349394, A349394.P210516795435731064.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003557, A003557.P6364735403900941810.a, A014963, A014963.P5975177236000282614.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P2815951119682625865.f1, A166142.P2815951119682625865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389454

/-! ## A389454.P14614757038519985756

`A389451(n+1)-A343224(A389455(n+1))`
-/

namespace A389454.P14614757038519985756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389451 (n + 1) - A343224 (A389455 (n + 1)).toNat

end

end A389454.P14614757038519985756

namespace A389454

/-- `A389451(n+1)-A343224(A389455(n+1))` -/
def P14614757038519985756.Spec : Prop :=
  ∀ n, P14614757038519985756.a n = A389454 (n + 1)

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

/-! ## A389455.P13158227339326663240

`(n+1)/gcd(n+1, A327939(n+1)²)`
-/

namespace A389455.P13158227339326663240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A327939 (n + 1) ^ 2) : ℚ)

end

end A389455.P13158227339326663240

namespace A389455

/-- `(n+1)/gcd(n+1, A327939(n+1)²)` -/
def P13158227339326663240.Spec : Prop :=
  ∀ n, P13158227339326663240.a n = (A389455 (n + 1) : ℚ)

end A389455

/-! ## A389455.P12620618826923144603

`A327938(A377518(1+n))`
-/

namespace A389455.P12620618826923144603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A377518 (1 + n)).toNat

end

end A389455.P12620618826923144603

namespace A389455

/-- `A327938(A377518(1+n))` -/
def P12620618826923144603.Spec : Prop :=
  ∀ n, P12620618826923144603.a n = A389455 (n + 1)

end A389455

/-! ## A389455.P3706218191151221272

`A327938(A380088(1+n))`
-/

namespace A389455.P3706218191151221272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A380088 (1 + n)).toNat

end

end A389455.P3706218191151221272

namespace A389455

/-- `A327938(A380088(1+n))` -/
def P3706218191151221272.Spec : Prop :=
  ∀ n, P3706218191151221272.a n = A389455 (n + 1)

end A389455

/-! ## A389455.P9000984464404163555

`A327938((1+n)/A368329(n+1))`
-/

namespace A389455.P9000984464404163555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (SequenceMachineLib.roundAway ((1 + n : ℚ) / (A368329 (n + 1) : ℚ))).toNat

end

end A389455.P9000984464404163555

namespace A389455

/-- `A327938((1+n)/A368329(n+1))` -/
def P9000984464404163555.Spec : Prop :=
  ∀ n, P9000984464404163555.a n = A389455 (n + 1)

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

/-! ## A389455.P10167845404456729105

`A327937(n+1)/A327937(A327939(n+1))`
-/

namespace A389455.P10167845404456729105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327937 (n + 1) : ℚ) / (A327937 (A327939 (n + 1)).toNat : ℚ)

end

end A389455.P10167845404456729105

namespace A389455

/-- `A327937(n+1)/A327937(A327939(n+1))` -/
def P10167845404456729105.Spec : Prop :=
  ∀ n, P10167845404456729105.a n = (A389455 (n + 1) : ℚ)

end A389455

/-! ## A389455.P3737580431154947252

`A327937(n+1)/A327937(A365635(n+1))`
-/

namespace A389455.P3737580431154947252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327937 (n + 1) : ℚ) / (A327937 (A365635 (n + 1)).toNat : ℚ)

end

end A389455.P3737580431154947252

namespace A389455

/-- `A327937(n+1)/A327937(A365635(n+1))` -/
def P3737580431154947252.Spec : Prop :=
  ∀ n, P3737580431154947252.a n = (A389455 (n + 1) : ℚ)

end A389455

/-! ## A389455.P14917762560751989252

`A327938(lcm(A327938(n+1), A327939(n+1)))`
-/

namespace A389455.P14917762560751989252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (Int.lcm (A327938 (n + 1)) (A327939 (n + 1)))

end

end A389455.P14917762560751989252

namespace A389455

/-- `A327938(lcm(A327938(n+1), A327939(n+1)))` -/
def P14917762560751989252.Spec : Prop :=
  ∀ n, P14917762560751989252.a n = A389455 (n + 1)

end A389455

/-! ## A389455.P5430632494345282050

`(n+1)/gcd(A001014(A342007(n+1)), A184985(n+1))`
-/

namespace A389455.P5430632494345282050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A001014 (A342007 (n + 1)).toNat) (A184985 (n + 1)) : ℚ)

end

end A389455.P5430632494345282050

namespace A389455

/-- `(n+1)/gcd(A001014(A342007(n+1)), A184985(n+1))` -/
def P5430632494345282050.Spec : Prop :=
  ∀ n, P5430632494345282050.a n = (A389455 (n + 1) : ℚ)

end A389455

/-! ## A389455.P10936296940694744972

`A380088(A327937(n+1)*A368333(n+1))`
-/

namespace A389455.P10936296940694744972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380088 (A327937 (n + 1) * A368333 (n + 1)).toNat

end

end A389455.P10936296940694744972

namespace A389455

/-- `A380088(A327937(n+1)*A368333(n+1))` -/
def P10936296940694744972.Spec : Prop :=
  ∀ n, P10936296940694744972.a n = A389455 (n + 1)

end A389455

/-!
# A389456: The number of divisors of n that are terms in A048103 (that are not divisible by p^p for any prime p).

The programs for A389456, the canonical program `A389456.P1064212197017735608` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389456 has offset 1).

The definition of A389456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389456.P1064212197017735608

`∑{d}[1+n, A359550(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389456

/-- `∑{d}[1+n, A359550(#)]` -/
def P1064212197017735608.Spec : Prop :=
  ∀ n, P1064212197017735608.a n = A389456 (n + 1)

theorem P1064212197017735608.correct : P1064212197017735608.Spec := by
  intro n
  simp only [A389456, Nat.add_sub_cancel]

end A389456

/-! ## A389456.P3758567559783962771

`∏{e}[A327937(1+n), #+1]`
-/

namespace A389456.P3758567559783962771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A389456.P3758567559783962771

namespace A389456

/-- `∏{e}[A327937(1+n), #+1]` -/
def P3758567559783962771.Spec : Prop :=
  ∀ n, (P3758567559783962771.a n : ℤ) = A389456 (n + 1)

end A389456

/-! ## A389456.P1892147846567480939

`A000005(A327937(1+n))`
-/

namespace A389456.P1892147846567480939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327937 (1 + n)).toNat

end

end A389456.P1892147846567480939

namespace A389456

/-- `A000005(A327937(1+n))` -/
def P1892147846567480939.Spec : Prop :=
  ∀ n, P1892147846567480939.a n = A389456 (n + 1)

end A389456

/-! ## A389456.P5816337501793896908

`A358216(A327937(n+1))`
-/

namespace A389456.P5816337501793896908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358216 (A327937 (n + 1)).toNat

end

end A389456.P5816337501793896908

namespace A389456

/-- `A358216(A327937(n+1))` -/
def P5816337501793896908.Spec : Prop :=
  ∀ n, P5816337501793896908.a n = A389456 (n + 1)

end A389456

/-! ## A389456.P4241715523859559222

`∑{d}[A327937(n+1), A129252(#)]`
-/

namespace A389456.P4241715523859559222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A129252 d

end

end A389456.P4241715523859559222

namespace A389456

/-- `∑{d}[A327937(n+1), A129252(#)]` -/
def P4241715523859559222.Spec : Prop :=
  ∀ n, P4241715523859559222.a n = A389456 (n + 1)

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

The programs for A389457, the canonical program `A389457.P8234445719154867581` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389457 has offset 1).

The definition of A389457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389457.P4836825462903015356

`∑{d}[A327937(1+n), #]`
-/

namespace A389457.P4836825462903015356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A389457.P4836825462903015356

namespace A389457

/-- `∑{d}[A327937(1+n), #]` -/
def P4836825462903015356.Spec : Prop :=
  ∀ n, (P4836825462903015356.a n : ℤ) = A389457 (n + 1)

end A389457

/-! ## A389457.P8234445719154867581

`∑{d}[1+n, #*A359550(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389457

/-- `∑{d}[1+n, #*A359550(#)]` -/
def P8234445719154867581.Spec : Prop :=
  ∀ n, P8234445719154867581.a n = A389457 (n + 1)

theorem P8234445719154867581.correct : P8234445719154867581.Spec := by
  intro n
  simp only [A389457, Nat.add_sub_cancel]

end A389457

/-! ## A389457.P14345200025612081335

`A000203(A327937(1+n))`
-/

namespace A389457.P14345200025612081335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A327937 (1 + n)).toNat

end

end A389457.P14345200025612081335

namespace A389457

/-- `A000203(A327937(1+n))` -/
def P14345200025612081335.Spec : Prop :=
  ∀ n, P14345200025612081335.a n = A389457 (n + 1)

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

/-! ## A389458.P823990517121463428

`∪[2^(n+2), A389459(n+1)]`
-/

namespace A389458.P823990517121463428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389458.P823990517121463428

/-! ## A389458.P12359186330909105466

`∪[A020707(n), A389459(n+1)]%A053607(2*(n+1))`
-/

namespace A389458.P12359186330909105466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A053607 (2 * (n + 1)))

end

end A389458.P12359186330909105466

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

/-! ## A389458.P7044399318837992655

`A169764(2*n+5)+∪[A020707(n), A389459(n+1)]`
-/

namespace A389458.P7044399318837992655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169764 (2 * n + 5) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A389458.P7044399318837992655

/-! ## A389458.P7996564948719618968

`∪[A020707(n), A389459(n+1)]%A152952(n+1)`
-/

namespace A389458.P7996564948719618968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A152952 (n + 1))

end

end A389458.P7996564948719618968

/-!
# A389459: Numbers whose sum of nonsquarefree divisors (A162296) is congruent to 2 modulo 4.

The programs for A389459, there is no canonical definition to state claims against.
-/

/-! ## A389459.P1018610272902244026

`filter[A389458(1+n), A353814(#)]`
-/

namespace A389459.P1018610272902244026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389459.P1018610272902244026

/-! ## A389459.P10603043106105180630

`filter[A389458(1+n), A202238(#)]`
-/

namespace A389459.P10603043106105180630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A389459.P10603043106105180630

/-! ## A389459.P4942015395381659520

`filter[A389458(1+n), A347523(#)]`
-/

namespace A389459.P4942015395381659520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A389459.P4942015395381659520

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

The programs for A389460, the canonical program `A389460.P4100129062004937204` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389460 has offset 1).

The definition of A389460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)` (program `A389460.P4100129062004937204`, by `A389460.P4100129062004937204.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389460.P4100129062004937204

`A000203(n+1)-A075423(n+1)`

The canonical program, it is in `Seq.B002.C008`.
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

/-! ## A389460.P473136339389694678

`A326142(1+n)+1`
-/

namespace A389460.P473136339389694678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (1 + n) + 1

end

end A389460.P473136339389694678

namespace A389460

/-- `A326142(1+n)+1` -/
def P473136339389694678.Spec : Prop :=
  ∀ n, P473136339389694678.a n = A389460 (n + 1)

end A389460

/-! ## A389460.P9838879806680371217

`A389461(1+n)+1+n`
-/

namespace A389460.P9838879806680371217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389461 (1 + n) + (1 + n : ℤ)

end

end A389460.P9838879806680371217

namespace A389460

/-- `A389461(1+n)+1+n` -/
def P9838879806680371217.Spec : Prop :=
  ∀ n, P9838879806680371217.a n = A389460 (n + 1)

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

The programs for A389461, the canonical program `A389461.P3198355901571096713` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389461 has offset 1).

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

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A389461

/-- `A000203(n+1)-A075423(n+1)-(n+1)` -/
def P3198355901571096713.Spec : Prop :=
  ∀ n, P3198355901571096713.a n = A389461 (n + 1)

theorem P3198355901571096713.correct : P3198355901571096713.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel]

end A389461

/-! ## A389461.P16843984181747691871

`∑{d}[n+1, #]-(n+∏{p}[n+1, #])`
-/

namespace A389461.P16843984181747691871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((n + ∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A389461.P16843984181747691871

namespace A389461

/-- `∑{d}[n+1, #]-(n+∏{p}[n+1, #])` -/
def P16843984181747691871.Spec : Prop :=
  ∀ n, P16843984181747691871.a n = A389461 (n + 1)

theorem P16843984181747691871.correct : P16843984181747691871.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P16843984181747691871.f1, A389461.P16843984181747691871.f2, A389461.P16843984181747691871.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
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

The programs for A389462, the canonical program `A389462.P16419255327458964044` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389462 has offset 1).

The definition of A389462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389462.P14835684386611330875

`lt[0, A388992(n+1)+1]+1`
-/

namespace A389462.P14835684386611330875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388992 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389462.P14835684386611330875

namespace A389462

/-- `lt[0, A388992(n+1)+1]+1` -/
def P14835684386611330875.Spec : Prop :=
  ∀ n, (P14835684386611330875.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P16419255327458964044

`∪[A013929(n+1), A023196(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
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

/-! ## A389462.P4385297844797187556

`lt[-1, A326127(n+1)]+1`
-/

namespace A389462.P4385297844797187556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389462.P4385297844797187556

namespace A389462

/-- `lt[-1, A326127(n+1)]+1` -/
def P4385297844797187556.Spec : Prop :=
  ∀ n, (P4385297844797187556.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P15673501505319634870

`lt[2, A326143(n+1)+3]+1`
-/

namespace A389462.P15673501505319634870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326143 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389462.P15673501505319634870

namespace A389462

/-- `lt[2, A326143(n+1)+3]+1` -/
def P15673501505319634870.Spec : Prop :=
  ∀ n, (P15673501505319634870.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P14245909900996891225

`comp[A087246(n+1)-1]+1`
-/

namespace A389462.P14245909900996891225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A389462.P14245909900996891225

namespace A389462

/-- `comp[A087246(n+1)-1]+1` -/
def P14245909900996891225.Spec : Prop :=
  ∀ n, (P14245909900996891225.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P5001998097272603187

`lt[n, A326126(n+1)]+1`
-/

namespace A389462.P5001998097272603187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389462.P5001998097272603187

namespace A389462

/-- `lt[n, A326126(n+1)]+1` -/
def P5001998097272603187.Spec : Prop :=
  ∀ n, (P5001998097272603187.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P15297528597756890568

`lt[n, A326142(n+1)]+1`
-/

namespace A389462.P15297528597756890568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389462.P15297528597756890568

namespace A389462

/-- `lt[n, A326142(n+1)]+1` -/
def P15297528597756890568.Spec : Prop :=
  ∀ n, (P15297528597756890568.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P15646415634638335932

`lt[1+n, A389460(n+1)]+1`
-/

namespace A389462.P15646415634638335932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389462.P15646415634638335932

namespace A389462

/-- `lt[1+n, A389460(n+1)]+1` -/
def P15646415634638335932.Spec : Prop :=
  ∀ n, (P15646415634638335932.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P12103653368846820189

`lt[A057078(n), A389461(n+1)]+1`
-/

namespace A389462.P12103653368846820189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389462.P12103653368846820189

namespace A389462

/-- `lt[A057078(n), A389461(n+1)]+1` -/
def P12103653368846820189.Spec : Prop :=
  ∀ n, (P12103653368846820189.a n : ℤ) = A389462 (n + 1)

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
# A389463: Numbers k for which A389461(k) is a positive multiple of (k-A075423(k)).

The programs for A389463, there is no canonical definition to state claims against.
-/

/-! ## A389463.P7186270180746347252

`∪[A006516(A000043(n+1)), A087248(n+1)]`
-/

namespace A389463.P7186270180746347252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (A000043 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389463.P7186270180746347252

/-! ## A389463.P5652138210625431192

`∪[A006516(A153800(n+1)), A087248(n+1)]`
-/

namespace A389463.P5652138210625431192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (A153800 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389463.P5652138210625431192

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

/-! ## A389464.P6800361226127900008

`A389465(n+1)-floor(1/A073802(n+1))`
-/

namespace A389464.P6800361226127900008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389465 (n + 1) - ⌊1 / (A073802 (n + 1) : ℚ)⌋

end

end A389464.P6800361226127900008

/-! ## A389464.P15767902117419108583

`A389465(n+1)-floor(1/A082068(n+1))`
-/

namespace A389464.P15767902117419108583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389465 (n + 1) - ⌊1 / (A082068 (n + 1) : ℚ)⌋

end

end A389464.P15767902117419108583

/-! ## A389464.P2497180855693429816

`A389465(n+1)-floor(1/A327154(n+1))`
-/

namespace A389464.P2497180855693429816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389465 (n + 1) - ⌊1 / (A327154 (n + 1) : ℚ)⌋

end

end A389464.P2497180855693429816

/-! ## A389464.P11739599723351207364

`A389465(n+1)-round(1/A326193(n+1))`
-/

namespace A389464.P11739599723351207364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389465 (n + 1) - SequenceMachineLib.roundAway (1 / (A326193 (n + 1) : ℚ))

end

end A389464.P11739599723351207364

/-! ## A389464.P11310232033022731248

`A389465(n+1)-char[A014567(n+1)-1]`
-/

namespace A389464.P11310232033022731248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389465 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A389464.P11310232033022731248

/-! ## A389464.P821447886880406171

`A389465(n+1)-C(n+1, A162657(n+1))`
-/

namespace A389464.P821447886880406171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389465 (n + 1) - (Nat.choose (n + 1) (A162657 (n + 1)).toNat : ℤ)

end

end A389464.P821447886880406171

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

/-! ## A389465.P12733963658625918945

`A389464(n+1)+floor(1/A073802(n+1))`
-/

namespace A389465.P12733963658625918945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + ⌊1 / (A073802 (n + 1) : ℚ)⌋

end

end A389465.P12733963658625918945

/-! ## A389465.P17084535145055046301

`A389464(n+1)+floor(1/A082062(n+1))`
-/

namespace A389465.P17084535145055046301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + ⌊1 / (A082062 (n + 1) : ℚ)⌋

end

end A389465.P17084535145055046301

/-! ## A389465.P15954031846538542436

`A389464(n+1)+floor(1/A082068(n+1))`
-/

namespace A389465.P15954031846538542436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + ⌊1 / (A082068 (n + 1) : ℚ)⌋

end

end A389465.P15954031846538542436

/-! ## A389465.P7983142032657903415

`A389464(n+1)+floor(1/A306682(n+1))`
-/

namespace A389465.P7983142032657903415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + ⌊1 / (A306682 (n + 1) : ℚ)⌋

end

end A389465.P7983142032657903415

/-! ## A389465.P16348242553830009068

`A389464(n+1)+floor(1/A327154(n+1))`
-/

namespace A389465.P16348242553830009068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + ⌊1 / (A327154 (n + 1) : ℚ)⌋

end

end A389465.P16348242553830009068

/-! ## A389465.P7885379075482788822

`A389464(n+1)+floor(1/A327155(n+1))`
-/

namespace A389465.P7885379075482788822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + ⌊1 / (A327155 (n + 1) : ℚ)⌋

end

end A389465.P7885379075482788822

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

/-! ## A389469.P10662447606303981679

`record[gcd(A341528(n+1)/(n+1), A131738(n))]`
-/

namespace A389469.P10662447606303981679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A341528 (n + 1) : ℚ) / (n + 1 : ℚ))) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389469.P10662447606303981679

/-! ## A389469.P6923176759840319900

`record[gcd(1+n, A000203(A003961(1+n)))]`
-/

namespace A389469.P6923176759840319900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + n : ℤ) (A000203 (A003961 (1 + n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389469.P6923176759840319900

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

/-! ## A389471.P1721588360255409839

`∑[A051036(4*n+2)]`
-/

namespace A389471.P1721588360255409839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P1721588360255409839

namespace A389471

/-- `∑[A051036(4*n+2)]` -/
def P1721588360255409839.Spec : Prop :=
  ∀ n, P1721588360255409839.a n = A389471 n

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

/-! ## A389472.P7121295926806432792

`A004526(n)+A000196(A370212(n))`
-/

namespace A389472.P7121295926806432792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A000196 (A370212 n).toNat

end

end A389472.P7121295926806432792

/-! ## A389472.P15349802281306651531

`A307707(A400271(n)+A094374(n))`
-/

namespace A389472.P15349802281306651531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A400271 n + A094374 n).toNat

end

end A389472.P15349802281306651531

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

/-! ## A389473.P4421708097533434479

`A008984(n)-A341596(A385698(n))`
-/

namespace A389473.P4421708097533434479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008984 n - A341596 (A385698 n).toNat

end

end A389473.P4421708097533434479

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

/-! ## A389476.P13096040629984633346

`A241419((12+n)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A389476.P13096040629984633346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A241419 ((12 + n : ℤ) * a (n - 1)).toNat

end

end A389476.P13096040629984633346

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

/-! ## A389480.P10693693719804274711

`A063056(A298133(n+1)%A000959(n+1))`
-/

namespace A389480.P10693693719804274711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (Int.tmod (A298133 (n + 1)) (A000959 (n + 1))).toNat

end

end A389480.P10693693719804274711

/-! ## A389480.P11730800632106291828

`A063056(A297866(n+1)%A351291(n+1))`
-/

namespace A389480.P11730800632106291828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (Int.tmod (A297866 (n + 1)) (A351291 (n + 1))).toNat

end

end A389480.P11730800632106291828

/-! ## A389480.P13642889810080788614

`A063056(A297866(n+1)%A320500(n+1))`
-/

namespace A389480.P13642889810080788614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (Int.tmod (A297866 (n + 1)) (A320500 (n + 1))).toNat

end

end A389480.P13642889810080788614

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

/-!
# A389481: Primes that remain prime when their binary digits are rotated once to the right.

The programs for A389481, there is no canonical definition to state claims against.
-/

/-! ## A389481.P5638772081033143303

`A006257(∩[A000040(n+1), A088146(n+1)])`
-/

namespace A389481.P5638772081033143303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088146 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A389481.P5638772081033143303

/-! ## A389481.P15172081649911050968

`p?[A080541(p?[2*n+1])]`
-/

namespace A389481.P15172081649911050968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389481.P15172081649911050968

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

/-! ## A389482.P11991017691230659705

`filter[A389483(n+1), A028234(#)]`
-/

namespace A389482.P11991017691230659705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A028234 (f1 j).toNat = 1) n)

end

end A389482.P11991017691230659705

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

/-!
# A389483: Numbers m such that LCM(1,2,...,m) = A003418(m) is highly abundant (A002093).

The programs for A389483, there is no canonical definition to state claims against.
-/

/-! ## A389483.P18113557257783844264

`A185255(A051168(n))+n+1`
-/

namespace A389483.P18113557257783844264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A051168 n).toNat + (n + 1 : ℤ)

end

end A389483.P18113557257783844264

/-! ## A389483.P223433822843721839

`A117358(A276625(n+1))+n`
-/

namespace A389483.P223433822843721839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A276625 (n + 1)).toNat + (n : ℤ)

end

end A389483.P223433822843721839

/-! ## A389483.P10341946103837487921

`∪[A090107(n+1), A207829(A136415(2*n+4))]`
-/

namespace A389483.P10341946103837487921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207829 (A136415 (2 * n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389483.P10341946103837487921

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

/-! ## A389487.P16722291016192351866

`A389255(A038722(1+n))`
-/

namespace A389487.P16722291016192351866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389255 (A038722 (1 + n)).toNat

end

end A389487.P16722291016192351866

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

/-! ## A389487.P7783104889816523123

`A000120(A258206(n+4))*T(n-2,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A389487.P7783104889816523123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000120 (A258206 (n + 4)).toNat * SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n

end

end A389487.P7783104889816523123

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

/-! ## A389488.P14597396723757496044

`A023193(A151374(n))+n`
-/

namespace A389488.P14597396723757496044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A151374 n).toNat + (n : ℤ)

end

end A389488.P14597396723757496044

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

The programs for A389497, the canonical program `A389497.P15007142019661698676` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389497 has offset 1).

The definition of A389497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389497.P5020748096083159319

`eq[0, A003285(A005361(n+1))]+1`
-/

namespace A389497.P5020748096083159319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389497.P5020748096083159319

namespace A389497

/-- `eq[0, A003285(A005361(n+1))]+1` -/
def P5020748096083159319.Spec : Prop :=
  ∀ n, (P5020748096083159319.a n : ℤ) = A389497 (n + 1)

end A389497

/-! ## A389497.P15007142019661698676

`eq[1, A010052(A005361(1+n))]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389497

/-- `eq[1, A010052(A005361(1+n))]+1` -/
def P15007142019661698676.Spec : Prop :=
  ∀ n, (P15007142019661698676.a n : ℤ) = A389497 (n + 1)

theorem P15007142019661698676.correct : P15007142019661698676.Spec := by
  intro n
  simp only [A389497, Nat.add_sub_cancel]

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

/-!
# A389499: Numbers whose number of powerful divisors is also a powerful number.

The programs for A389499, there is no canonical definition to state claims against.
-/

/-! ## A389499.P9278073742738072754

`eq[1, A063274(A005361(n+1))]+1`
-/

namespace A389499.P9278073742738072754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389499.P9278073742738072754

