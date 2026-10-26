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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A373300: Sum of successive integers in a row of length p(n) where p counts integer partitions.

The programs for A373300, there is no canonical definition to state claims against.
-/

/-! ## A373300.P3561517958394661393

`Δ[C(A000070(n), 2)]`
-/

namespace A373300.P3561517958394661393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000070 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373300.P3561517958394661393

/-! ## A373300.P8097491555421867582

`Δ[C(∑[A000041(n)], 2)]`
-/

namespace A373300.P8097491555421867582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373300.P8097491555421867582

/-! ## A373300.P13730982682491580474

`Δ[C(A025065(2*n), 2)]`
-/

namespace A373300.P13730982682491580474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025065 (2 * n)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373300.P13730982682491580474

/-! ## A373300.P9096139436634555802

`Δ[C(∑[A035363(2*n)], 2)]`
-/

namespace A373300.P9096139436634555802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373300.P9096139436634555802

/-! ## A373300.P17360673673278890841

`Δ[C(∑[A133041(n)-n], 2)]`
-/

namespace A373300.P17360673673278890841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373300.P17360673673278890841

/-!
# A373301: Sum of successive nonnegative integers in a row of length p(n) where p counts integer partitions.

The programs for A373301, there is no canonical definition to state claims against.
-/

/-! ## A373301.P6441725429738691634

`Δ[C(A000070(n)-1, 2)]`
-/

namespace A373301.P6441725429738691634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000070 n - 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373301.P6441725429738691634

/-! ## A373301.P4117096908756479057

`Δ[C(∑[A000041(n)]-1, 2)]`
-/

namespace A373301.P4117096908756479057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373301.P4117096908756479057

/-! ## A373301.P14751257960072230736

`A373300(n+1)-Δ[A000070(n)]`
-/

namespace A373301.P14751257960072230736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373300 (n + 1) - (f1 (n + 1) - f1 n)

end

end A373301.P14751257960072230736

/-! ## A373301.P12492532871277231891

`A373300(n+1)-record[A035363(n)]`
-/

namespace A373301.P12492532871277231891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373300 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373301.P12492532871277231891

/-! ## A373301.P5887230112711907713

`A373300(n+1)-A000041(n+1)`
-/

namespace A373301.P5887230112711907713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373300 (n + 1) - A000041 (n + 1)

end

end A373301.P5887230112711907713

/-!
# A373302: Number of compositions of 6*n-2 into parts 1 and 6.

The programs for A373302, the canonical program `A373302.P16178244919817638420` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373302 has offset 1).

The definition of A373302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373302.P16178244919817638420

`A005708(6*(n+1)-2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A373302

/-- `A005708(6*(n+1)-2)` -/
def P16178244919817638420.Spec : Prop :=
  ∀ n, P16178244919817638420.a n = A373302 (n + 1)

theorem P16178244919817638420.correct : P16178244919817638420.Spec := by
  intro n
  simp only [A373302, Nat.add_sub_cancel]

end A373302

/-! ## A373302.P11475660053032820989

`∑[A373958(n+1)]`
-/

namespace A373302.P11475660053032820989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373302.P11475660053032820989

namespace A373302

/-- `∑[A373958(n+1)]` -/
def P11475660053032820989.Spec : Prop :=
  ∀ n, P11475660053032820989.a n = A373302 (n + 1)

end A373302

/-! ## A373302.P12867367967885197696

`A373639(3*n+2)`
-/

namespace A373302.P12867367967885197696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373639 (3 * n + 2)

end

end A373302.P12867367967885197696

namespace A373302

/-- `A373639(3*n+2)` -/
def P12867367967885197696.Spec : Prop :=
  ∀ n, P12867367967885197696.a n = A373302 (n + 1)

end A373302

/-! ## A373302.P14843381166626999028

`∑[∑[A373959(n+1)]]`
-/

namespace A373302.P14843381166626999028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373302.P14843381166626999028

namespace A373302

/-- `∑[∑[A373959(n+1)]]` -/
def P14843381166626999028.Spec : Prop :=
  ∀ n, P14843381166626999028.a n = A373302 (n + 1)

end A373302

/-! ## A373302.P18206007488962516234

`∑[A373638(2*n+1)]`
-/

namespace A373302.P18206007488962516234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373638 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373302.P18206007488962516234

namespace A373302

/-- `∑[A373638(2*n+1)]` -/
def P18206007488962516234.Spec : Prop :=
  ∀ n, P18206007488962516234.a n = A373302 (n + 1)

end A373302

/-! ## A373302.P17297706751036944464

`∑[∑[A373653(2*n+1)]]`
-/

namespace A373302.P17297706751036944464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373653 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373302.P17297706751036944464

namespace A373302

/-- `∑[∑[A373653(2*n+1)]]` -/
def P17297706751036944464.Spec : Prop :=
  ∀ n, P17297706751036944464.a n = A373302 (n + 1)

end A373302

/-! ## A373302.P12015890484476610424

`Δ[A017900(A016969(n))]`
-/

namespace A373302.P12015890484476610424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373302.P12015890484476610424

namespace A373302

/-- `Δ[A017900(A016969(n))]` -/
def P12015890484476610424.Spec : Prop :=
  ∀ n, P12015890484476610424.a n = A373302 (n + 1)

end A373302

/-! ## A373302.P5018838299515405645

`A017900(A016957(n+1))`
-/

namespace A373302.P5018838299515405645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016957 (n + 1)).toNat

end

end A373302.P5018838299515405645

namespace A373302

/-- `A017900(A016957(n+1))` -/
def P5018838299515405645.Spec : Prop :=
  ∀ n, P5018838299515405645.a n = A373302 (n + 1)

end A373302

/-! ## A373302.P7621616477306418196

`A017900(A016933(n+1)+2)`
-/

namespace A373302.P7621616477306418196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016933 (n + 1) + 2).toNat

end

end A373302.P7621616477306418196

namespace A373302

/-- `A017900(A016933(n+1)+2)` -/
def P7621616477306418196.Spec : Prop :=
  ∀ n, P7621616477306418196.a n = A373302 (n + 1)

end A373302

/-! ## A373302.P346723207543059173

`A017900(A016969(n+1)-1)`
-/

namespace A373302.P346723207543059173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016969 (n + 1) - 1).toNat

end

end A373302.P346723207543059173

namespace A373302

/-- `A017900(A016969(n+1)-1)` -/
def P346723207543059173.Spec : Prop :=
  ∀ n, P346723207543059173.a n = A373302 (n + 1)

end A373302

/-! ## A373302.P16882947250020051575

`A099242(n+1)-(A373958(n+2)+A099242(n))`
-/

namespace A373302.P16882947250020051575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099242 (n + 1) - (A373958 (n + 2) + A099242 n)

end

end A373302.P16882947250020051575

namespace A373302

/-- `A099242(n+1)-(A373958(n+2)+A099242(n))` -/
def P16882947250020051575.Spec : Prop :=
  ∀ n, P16882947250020051575.a n = A373302 (n + 1)

end A373302

/-!
# A373303: First differences of A371176.

The programs for A373303, the canonical program `A373303.P10871280826768265393` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373303 has offset 1).

The definition of A373303 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373303.P10871280826768265393

`A371176(n+2)-A371176(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373303

/-- `A371176(n+2)-A371176(n+1)` -/
def P10871280826768265393.Spec : Prop :=
  ∀ n, P10871280826768265393.a n = A373303 (n + 1)

theorem P10871280826768265393.correct : P10871280826768265393.Spec := by
  intro n
  simp only [A373303, Nat.add_sub_cancel]

end A373303

/-! ## A373303.P14946318416008044319

`Δ[A371176(n+1)]`
-/

namespace A373303.P14946318416008044319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373303.P14946318416008044319

namespace A373303

/-- `Δ[A371176(n+1)]` -/
def P14946318416008044319.Spec : Prop :=
  ∀ n, P14946318416008044319.a n = A373303 (n + 1)

theorem P14946318416008044319.correct : P14946318416008044319.Spec := by
  intro n
  simp only [A373303, Nat.add_sub_cancel, A373303.P14946318416008044319.f1, A373303.P14946318416008044319.a, A373303.P10871280826768265393.a, SequenceMachineLib.memo_apply]

end A373303

/-! ## A373303.P7543974258629710975

`2^A213911(n+1)`
-/

namespace A373303.P7543974258629710975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A213911 (n + 1) : ℤ)

end

end A373303.P7543974258629710975

namespace A373303

/-- `2^A213911(n+1)` -/
def P7543974258629710975.Spec : Prop :=
  ∀ n, P7543974258629710975.a n = (A373303 (n + 1) : ℚ)

end A373303

/-! ## A373303.P15739740484226007388

`A016116(A104324(n+1))`
-/

namespace A373303.P15739740484226007388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A104324 (n + 1)).toNat

end

end A373303.P15739740484226007388

namespace A373303

/-- `A016116(A104324(n+1))` -/
def P15739740484226007388.Spec : Prop :=
  ∀ n, P15739740484226007388.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P10582094819925258844

`A060632(A048679(n+1))`
-/

namespace A373303.P10582094819925258844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A048679 (n + 1)).toNat

end

end A373303.P10582094819925258844

namespace A373303

/-- `A060632(A048679(n+1))` -/
def P10582094819925258844.Spec : Prop :=
  ∀ n, P10582094819925258844.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P2195071008832236515

`A106737(A295897(n+2)-A003714(n+1))`
-/

namespace A373303.P2195071008832236515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A295897 (n + 2) - A003714 (n + 1)).toNat

end

end A373303.P2195071008832236515

namespace A373303

/-- `A106737(A295897(n+2)-A003714(n+1))` -/
def P2195071008832236515.Spec : Prop :=
  ∀ n, P2195071008832236515.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P10778596330439370558

`A048896(A003714(n+1))`
-/

namespace A373303.P10778596330439370558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A003714 (n + 1)).toNat

end

end A373303.P10778596330439370558

namespace A373303

/-- `A048896(A003714(n+1))` -/
def P10778596330439370558.Spec : Prop :=
  ∀ n, P10778596330439370558.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P6866598676789830078

`A277561(A003714(n+1)-1)`
-/

namespace A373303.P6866598676789830078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 (A003714 (n + 1) - 1).toNat

end

end A373303.P6866598676789830078

namespace A373303

/-- `A277561(A003714(n+1)-1)` -/
def P6866598676789830078.Spec : Prop :=
  ∀ n, P6866598676789830078.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P13989930648084454705

`A365538(A003714(2*n+1-n))`
-/

namespace A373303.P13989930648084454705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365538 (A003714 (2 * n + 1 - n)).toNat

end

end A373303.P13989930648084454705

namespace A373303

/-- `A365538(A003714(2*n+1-n))` -/
def P13989930648084454705.Spec : Prop :=
  ∀ n, P13989930648084454705.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P4478296231285110756

`A277561(eq[A246029(n+1), A277561(n+1)])`
-/

namespace A373303.P4478296231285110756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A373303.P4478296231285110756

namespace A373303

/-- `A277561(eq[A246029(n+1), A277561(n+1)])` -/
def P4478296231285110756.Spec : Prop :=
  ∀ n, P4478296231285110756.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P9460463336170436033

`A048896(A118113(n+1))`
-/

namespace A373303.P9460463336170436033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A118113 (n + 1)).toNat

end

end A373303.P9460463336170436033

namespace A373303

/-- `A048896(A118113(n+1))` -/
def P9460463336170436033.Spec : Prop :=
  ∀ n, P9460463336170436033.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P5075742040024112739

`Δ[lt[A048881(2*n+1), A007814(2*(n+1))]]`
-/

namespace A373303.P5075742040024112739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373303.P5075742040024112739

namespace A373303

/-- `Δ[lt[A048881(2*n+1), A007814(2*(n+1))]]` -/
def P5075742040024112739.Spec : Prop :=
  ∀ n, P5075742040024112739.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P5969895891185107744

`A001227(A277006(n+1))`
-/

namespace A373303.P5969895891185107744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A277006 (n + 1)).toNat

end

end A373303.P5969895891185107744

namespace A373303

/-- `A001227(A277006(n+1))` -/
def P5969895891185107744.Spec : Prop :=
  ∀ n, P5969895891185107744.a n = A373303 (n + 1)

end A373303

/-! ## A373303.P17014076692900336435

`A322813(A277331(n+1))`
-/

namespace A373303.P17014076692900336435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A277331 (n + 1)).toNat

end

end A373303.P17014076692900336435

namespace A373303

/-- `A322813(A277331(n+1))` -/
def P17014076692900336435.Spec : Prop :=
  ∀ n, P17014076692900336435.a n = A373303 (n + 1)

end A373303

/-!
# A373307: Binary digits of Pi selected by stepping forward d+1 places at digit d, i.e., by skipping the next d places.

The programs for A373307, there is no canonical definition to state claims against.
-/

/-! ## A373307.P6553369241544695926

`A155014(A372025(n+5))%2`
-/

namespace A373307.P6553369241544695926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155014 (A372025 (n + 5)).toNat) 2

end

end A373307.P6553369241544695926

/-! ## A373307.P12122624613116460342

`A179763(xor(2, A031149(n+4)))`
-/

namespace A373307.P12122624613116460342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179763 (Int.xor 2 (A031149 (n + 4))).toNat

end

end A373307.P12122624613116460342

/-! ## A373307.P6140254882122020016

`A145273(A313364(n))`
-/

namespace A373307.P6140254882122020016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145273 (A313364 n).toNat

end

end A373307.P6140254882122020016

/-! ## A373307.P9648589107400261558

`A010060(A250120(n)+A220595(n+1))`
-/

namespace A373307.P9648589107400261558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A250120 n + A220595 (n + 1)).toNat

end

end A373307.P9648589107400261558

/-! ## A373307.P9294467560516844971

`A089013(A007955(n+1)-A187371(n+1))`
-/

namespace A373307.P9294467560516844971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 (A007955 (n + 1) - A187371 (n + 1)).toNat

end

end A373307.P9294467560516844971

/-!
# A373310: Expansion of g.f. A(x) satisfying A( A(x) - C(x) ) = x^2, where C(x) = x + C(x)^2 is the Catalan function (A000108).

The programs for A373310, there is no canonical definition to state claims against.
-/

/-! ## A373310.P7257802199380612221

`A322530(A163477(n)+6)`
-/

namespace A373310.P7257802199380612221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 (A163477 n + 6).toNat

end

end A373310.P7257802199380612221

/-! ## A373310.P4148264305103846559

`and(A099629(2*n+5)+20, A133602(n))`
-/

namespace A373310.P4148264305103846559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099629 (2 * n + 5) + 20) (A133602 n)

end

end A373310.P4148264305103846559

/-! ## A373310.P17005682528700713370

`A331499(A051686(n+1)*A333785(n+1))`
-/

namespace A373310.P17005682528700713370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331499 (A051686 (n + 1) * A333785 (n + 1)).toNat

end

end A373310.P17005682528700713370

/-!
# A373311: Expansion of g.f. A(x) satisfying A( A(x^2) + C(x) ) = x, where C(x) = x + C(x)^2 is the Catalan function (A000108).

The programs for A373311, there is no canonical definition to state claims against.
-/

/-! ## A373311.P1496076702919290168

`A373310(2*(n+1))-A000108(2*n+1)`
-/

namespace A373311.P1496076702919290168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373310 (2 * (n + 1)) - A000108 (2 * n + 1)

end

end A373311.P1496076702919290168

/-!
# A373312: Expansion of g.f. A(x) satisfying A(x)^2 = A( x*A(x)/(1 - A(x))^2 ).

The programs for A373312, there is no canonical definition to state claims against.
-/

/-! ## A373312.P14927623872122493360

`A337736(A002110(n))+A015451(n)`
-/

namespace A373312.P14927623872122493360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337736 (A002110 n).toNat + A015451 n

end

end A373312.P14927623872122493360

/-!
# A373313: Expansion of g.f. A(x) satisfying A(x)^2 = A( x*A(x)/(1 - A(x))^3 ).

The programs for A373313, there is no canonical definition to state claims against.
-/

/-! ## A373313.P15228876311102187780

`∑[A004001(((∑[n-1]+5)*2^(n-2))²)]`
-/

namespace A373313.P15228876311102187780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f2 j + 5 : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373313.P15228876311102187780

/-!
# A373314: Expansion of g.f. A(x) satisfying A(A(x)) - 4*A(A(A(x)))^2 = x.

The programs for A373314, there is no canonical definition to state claims against.
-/

/-! ## A373314.P4552652451180458416

`A128859(A062740(n)+A045531(n+1))`
-/

namespace A373314.P4552652451180458416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128859 (A062740 n + A045531 (n + 1)).toNat

end

end A373314.P4552652451180458416

/-!
# A373315: Expansion of g.f. A(x) satisfying A(A(x))^2 - 8*A(A(A(x)))^3 = x^2.

The programs for A373315, there is no canonical definition to state claims against.
-/

/-! ## A373315.P11509668691044023537

`A321087(n+1)*A345918(A088218(n))`
-/

namespace A373315.P11509668691044023537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321087 (n + 1) * A345918 (A088218 n).toNat

end

end A373315.P11509668691044023537

/-!
# A373316: Numbers k such that k and k+2 are both primitive abundant numbers.

The programs for A373316, there is no canonical definition to state claims against.
-/

/-! ## A373316.P7505400149516315475

`∩[A091191(n+1)-2, A091191(n+1)]`
-/

namespace A373316.P7505400149516315475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373316.P7505400149516315475

/-! ## A373316.P11878896670511376645

`∩[A091191(n+1), A023444(A091191(n+1))]`
-/

namespace A373316.P11878896670511376645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A091191 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373316.P11878896670511376645

/-!
# A373318: Numerator of the asymptotic density of numbers that are unitarily divided by n.

The programs for A373318, there is no canonical definition to state claims against.
-/

/-! ## A373318.P14447269830721611510

`A063994(A353694(n+1)²)`
-/

namespace A373318.P14447269830721611510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A353694 (n + 1) ^ 2).toNat

end

end A373318.P14447269830721611510

/-! ## A373318.P1851405373720507246

`gcd(A000010(A290971(2*n+3)+1+n), A249226(n+1))`
-/

namespace A373318.P1851405373720507246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A290971 (2 * n + 3) + 1 + (n : ℤ)).toNat) (A249226 (n + 1))

end

end A373318.P1851405373720507246

/-! ## A373318.P16103624273942936204

`A049559(A051119((n+1)²)*(n+1)²)`
-/

namespace A373318.P16103624273942936204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A051119 ((n + 1) ^ 2) * ((n + 1) ^ 2 : ℤ)).toNat

end

end A373318.P16103624273942936204

/-! ## A373318.P4447584343787298741

`gcd(A295127(A007955(n+1)), A295127(n+1))`
-/

namespace A373318.P4447584343787298741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A295127 (A007955 (n + 1)).toNat) (A295127 (n + 1))

end

end A373318.P4447584343787298741

/-! ## A373318.P9215695996374555676

`A049559(A193679(n+1))`
-/

namespace A373318.P9215695996374555676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A193679 (n + 1)).toNat

end

end A373318.P9215695996374555676

/-!
# A373319: Denominator of the asymptotic density of numbers that are unitarily divided by n.

The programs for A373319, the canonical program `A373319.P7142569383289786764` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373319 has offset 1).

The definition of A373319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373319.P7142569383289786764

`(n+1)*∏{p}[n+1, #]/A126864((n+1)*∏{p}[n+1, #])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373319

/-- `(n+1)*∏{p}[n+1, #]/A126864((n+1)*∏{p}[n+1, #])` -/
def P7142569383289786764.Spec : Prop :=
  ∀ n, P7142569383289786764.a n = (A373319 (n + 1) : ℚ)

end A373319

/-! ## A373319.P8850744109525749199

`A295126((n+1)*∏{p}[n+1, #])`
-/

namespace A373319.P8850744109525749199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A373319.P8850744109525749199

namespace A373319

/-- `A295126((n+1)*∏{p}[n+1, #])` -/
def P8850744109525749199.Spec : Prop :=
  ∀ n, P8850744109525749199.a n = A373319 (n + 1)

end A373319

/-! ## A373319.P16415567359144210590

`A295126(A064549(n+1))`
-/

namespace A373319.P16415567359144210590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (A064549 (n + 1)).toNat

end

end A373319.P16415567359144210590

namespace A373319

/-- `A295126(A064549(n+1))` -/
def P16415567359144210590.Spec : Prop :=
  ∀ n, P16415567359144210590.a n = A373319 (n + 1)

end A373319

/-! ## A373319.P11862175617736047751

`A253560(n+1)/A030579(A030633(n+2))`
-/

namespace A373319.P11862175617736047751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (A030579 (A030633 (n + 2)).toNat : ℚ)

end

end A373319.P11862175617736047751

namespace A373319

/-- `A253560(n+1)/A030579(A030633(n+2))` -/
def P11862175617736047751.Spec : Prop :=
  ∀ n, P11862175617736047751.a n = (A373319 (n + 1) : ℚ)

end A373319

/-! ## A373319.P4047321710204401220

`A253560(n+1)/A287091(A238305(n+2))`
-/

namespace A373319.P4047321710204401220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (A287091 (A238305 (n + 2)).toNat : ℚ)

end

end A373319.P4047321710204401220

namespace A373319

/-- `A253560(n+1)/A287091(A238305(n+2))` -/
def P4047321710204401220.Spec : Prop :=
  ∀ n, P4047321710204401220.a n = (A373319 (n + 1) : ℚ)

end A373319

/-!
# A373322: The number of indecomposable summands, counted with multiplicity, in tensor powers of the vector representation of SL2 in characteristic 2.

The programs for A373322, there is no canonical definition to state claims against.
-/

/-! ## A373322.P469125638519018851

`A124741(A100066(n)+1)`
-/

namespace A373322.P469125638519018851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A100066 n + 1).toNat

end

end A373322.P469125638519018851

/-! ## A373322.P7942894879786101126

`A331216(A058764(n+1))`
-/

namespace A373322.P7942894879786101126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 (A058764 (n + 1)).toNat

end

end A373322.P7942894879786101126

/-! ## A373322.P5298744511301036524

`A331216(A290859(n+1))`
-/

namespace A373322.P5298744511301036524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 (A290859 (n + 1)).toNat

end

end A373322.P5298744511301036524

/-! ## A373322.P1145956240914989512

`A331216(A369491(n+1))`
-/

namespace A373322.P1145956240914989512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 (A369491 (n + 1)).toNat

end

end A373322.P1145956240914989512

/-! ## A373322.P6268653498486458822

`A331216(2*A055010(n))`
-/

namespace A373322.P6268653498486458822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 (2 * A055010 n).toNat

end

end A373322.P6268653498486458822

/-!
# A373325: Number of semi-infinite curves of the plane with n simple, transverse self-intersections and no other self-intersections, up to an orientation-preserving homeomorphism.

The programs for A373325, there is no canonical definition to state claims against.
-/

/-! ## A373325.P13284000352830465141

`A036450(n+1)*A268563(n)`
-/

namespace A373325.P13284000352830465141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (n + 1) * A268563 n

end

end A373325.P13284000352830465141

/-! ## A373325.P669240185297125147

`A104435(record[2-xor(1, -n)])*A268563(n)`
-/

namespace A373325.P669240185297125147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A268563 n

end

end A373325.P669240185297125147

/-! ## A373325.P4813222084769951458

`A104435(∑{d}[n+1, lcm(#, n+1)])*A268563(n)`
-/

namespace A373325.P4813222084769951458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1)) * A268563 n

end

end A373325.P4813222084769951458

/-! ## A373325.P8642978643084155160

`A001611(A000196(n))*A268563(n)`
-/

namespace A373325.P8642978643084155160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A000196 n).toNat * A268563 n

end

end A373325.P8642978643084155160

/-!
# A373327: Records of A064784.

The programs for A373327, the canonical program `A373327.P9323461838594572864` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373327 has offset 1).

The definition of A373327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373327.P9323461838594572864

`record[A064784(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373327

/-- `record[A064784(n+1)]` -/
def P9323461838594572864.Spec : Prop :=
  ∀ n, P9323461838594572864.a n = A373327 (n + 1)

theorem P9323461838594572864.correct : P9323461838594572864.Spec := by
  intro n
  simp only [A373327, Nat.add_sub_cancel]

end A373327

/-! ## A373327.P2407697988349799455

`record[A000217(n)-A065737(n+1)]`
-/

namespace A373327.P2407697988349799455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A065737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373327.P2407697988349799455

namespace A373327

/-- `record[A000217(n)-A065737(n+1)]` -/
def P2407697988349799455.Spec : Prop :=
  ∀ n, P2407697988349799455.a n = A373327 (n + 1)

end A373327

/-! ## A373327.P3706001993707713559

`A064784(A373328(n+1)+A000007(n))`
-/

namespace A373327.P3706001993707713559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (A373328 (n + 1) + A000007 n).toNat

end

end A373327.P3706001993707713559

namespace A373327

/-- `A064784(A373328(n+1)+A000007(n))` -/
def P3706001993707713559.Spec : Prop :=
  ∀ n, P3706001993707713559.a n = A373327 (n + 1)

end A373327

/-! ## A373327.P4946776409073961886

`record[A053186(∑[n])]`
-/

namespace A373327.P4946776409073961886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373327.P4946776409073961886

namespace A373327

/-- `record[A053186(∑[n])]` -/
def P4946776409073961886.Spec : Prop :=
  ∀ n, P4946776409073961886.a n = A373327 (n + 1)

end A373327

/-! ## A373327.P6955515492664808758

`record[A053186(C(n+2, 2))%(2*(n+1))]`
-/

namespace A373327.P6955515492664808758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053186 (Nat.choose (n + 2) 2)) (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373327.P6955515492664808758

namespace A373327

/-- `record[A053186(C(n+2, 2))%(2*(n+1))]` -/
def P6955515492664808758.Spec : Prop :=
  ∀ n, P6955515492664808758.a n = A373327 (n + 1)

end A373327

/-!
# A373328: Numbers k such that the difference between T = k*(k+1)/2 = A000217(k) and the largest square <= T reaches a new record.

The programs for A373328, there is no canonical definition to state claims against.
-/

/-! ## A373328.P9944467695577962252

`lt[A319137(2*(n+2)), A364022(A161442(3*n+5))]`
-/

namespace A373328.P9944467695577962252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319137 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364022 (A161442 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373328.P9944467695577962252

/-!
# A373329: a(n)^2 is the greatest square not exceeding A000217(n^2).

The programs for A373329, the canonical program `A373329.P3228160346676462800` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373329 has offset 0).

The definition of A373329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373329.P3228160346676462800

`A000196((n^4+n²)/2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A373329

/-- `A000196((n^4+n²)/2)` -/
def P3228160346676462800.Spec : Prop :=
  ∀ n, P3228160346676462800.a n = A373329 n

theorem P3228160346676462800.correct : P3228160346676462800.Spec := by
  intro n
  simp only [A373329]

end A373329

/-! ## A373329.P645031280189020600

`floor(sqrt(C(n²+1, 2)))`
-/

namespace A373329.P645031280189020600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (n ^ 2 + 1) 2)

end

end A373329.P645031280189020600

namespace A373329

/-- `floor(sqrt(C(n²+1, 2)))` -/
def P645031280189020600.Spec : Prop :=
  ∀ n, (P645031280189020600.a n : ℤ) = A373329 n

end A373329

/-! ## A373329.P16455604837391767697

`floor(sqrt(A037270(n)))`
-/

namespace A373329.P16455604837391767697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A037270 n)

end

end A373329.P16455604837391767697

namespace A373329

/-- `floor(sqrt(A037270(n)))` -/
def P16455604837391767697.Spec : Prop :=
  ∀ n, P16455604837391767697.a n = A373329 n

end A373329

/-! ## A373329.P6891826386979057311

`floor(sqrt(A071253(n)/2))`
-/

namespace A373329.P6891826386979057311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A071253 n : ℚ) / 2 : ℝ)⌋

end

end A373329.P6891826386979057311

namespace A373329

/-- `floor(sqrt(A071253(n)/2))` -/
def P6891826386979057311.Spec : Prop :=
  ∀ n, P6891826386979057311.a n = A373329 n

end A373329

/-! ## A373329.P7311310707767362131

`floor(sqrt(n*A006003(n)))`
-/

namespace A373329.P7311310707767362131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n : ℤ) * A006003 n)

end

end A373329.P7311310707767362131

namespace A373329

/-- `floor(sqrt(n*A006003(n)))` -/
def P7311310707767362131.Spec : Prop :=
  ∀ n, P7311310707767362131.a n = A373329 n

end A373329

/-! ## A373329.P14637882584649689185

`floor(sqrt(A317714(2*n+1)))`
-/

namespace A373329.P14637882584649689185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A317714 (2 * n + 1))

end

end A373329.P14637882584649689185

namespace A373329

/-- `floor(sqrt(A317714(2*n+1)))` -/
def P14637882584649689185.Spec : Prop :=
  ∀ n, P14637882584649689185.a n = A373329 n

end A373329

/-! ## A373329.P16300691678789590286

`floor(sqrt(A000217(n²)))`
-/

namespace A373329.P16300691678789590286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000217 (n ^ 2))

end

end A373329.P16300691678789590286

namespace A373329

/-- `floor(sqrt(A000217(n²)))` -/
def P16300691678789590286.Spec : Prop :=
  ∀ n, P16300691678789590286.a n = A373329 n

end A373329

/-! ## A373329.P17871184136959668708

`A004526(A001953(n²))`
-/

namespace A373329.P17871184136959668708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001953 (n ^ 2)).toNat

end

end A373329.P17871184136959668708

namespace A373329

/-- `A004526(A001953(n²))` -/
def P17871184136959668708.Spec : Prop :=
  ∀ n, P17871184136959668708.a n = A373329 n

end A373329

/-! ## A373329.P1173718751804867950

`A172474(A058331(n))`
-/

namespace A373329.P1173718751804867950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A058331 n).toNat

end

end A373329.P1173718751804867950

namespace A373329

/-- `A172474(A058331(n))` -/
def P1173718751804867950.Spec : Prop :=
  ∀ n, P1173718751804867950.a n = A373329 n

end A373329

/-! ## A373329.P10427487357291518391

`A172474(A005408(n²))`
-/

namespace A373329.P10427487357291518391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A005408 (n ^ 2)).toNat

end

end A373329.P10427487357291518391

namespace A373329

/-- `A172474(A005408(n²))` -/
def P10427487357291518391.Spec : Prop :=
  ∀ n, P10427487357291518391.a n = A373329 n

end A373329

/-!
# A373330: a(n) is the difference between T = A000217(n^2) and the greatest square not exceeding T.

The programs for A373330, the canonical program `A373330.P5187937937214076457` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373330 has offset 0).

The definition of A373330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373330.P5187937937214076457

`A000217(n²)-A373329(n)²`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373330

/-- `A000217(n²)-A373329(n)²` -/
def P5187937937214076457.Spec : Prop :=
  ∀ n, P5187937937214076457.a n = A373330 n

theorem P5187937937214076457.correct : P5187937937214076457.Spec := by
  intro n
  simp only [A373330]

end A373330

/-! ## A373330.P9115812748721609366

`(n^4+n²)/2-floor(sqrt(n*A006003(n)))²`
-/

namespace A373330.P9115812748721609366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + n ^ 2 : ℚ) / 2 - (Int.sqrt ((n : ℤ) * A006003 n) ^ 2 : ℚ)

end

end A373330.P9115812748721609366

namespace A373330

/-- `(n^4+n²)/2-floor(sqrt(n*A006003(n)))²` -/
def P9115812748721609366.Spec : Prop :=
  ∀ n, P9115812748721609366.a n = (A373330 n : ℚ)

end A373330

/-! ## A373330.P5266584107700828928

`A037270(n)-A373329(n)²`
-/

namespace A373330.P5266584107700828928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A373329 n ^ 2

end

end A373330.P5266584107700828928

namespace A373330

/-- `A037270(n)-A373329(n)²` -/
def P5266584107700828928.Spec : Prop :=
  ∀ n, P5266584107700828928.a n = A373330 n

end A373330

/-! ## A373330.P15427395815819079643

`(n^4+n²)/2-floor(sqrt(A317714(2*n+1)))²`
-/

namespace A373330.P15427395815819079643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + n ^ 2 : ℚ) / 2 - (Int.sqrt (A317714 (2 * n + 1)) ^ 2 : ℚ)

end

end A373330.P15427395815819079643

namespace A373330

/-- `(n^4+n²)/2-floor(sqrt(A317714(2*n+1)))²` -/
def P15427395815819079643.Spec : Prop :=
  ∀ n, P15427395815819079643.a n = (A373330 n : ℚ)

end A373330

/-! ## A373330.P3516052862296859765

`A064784(A253909(n))`
-/

namespace A373330.P3516052862296859765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (A253909 n).toNat

end

end A373330.P3516052862296859765

namespace A373330

/-- `A064784(A253909(n))` -/
def P3516052862296859765.Spec : Prop :=
  ∀ n, P3516052862296859765.a n = A373330 n

end A373330

/-! ## A373330.P351480577314468503

`A064784(A028310(n²))`
-/

namespace A373330.P351480577314468503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (A028310 (n ^ 2)).toNat

end

end A373330.P351480577314468503

namespace A373330

/-- `A064784(A028310(n²))` -/
def P351480577314468503.Spec : Prop :=
  ∀ n, P351480577314468503.a n = A373330 n

end A373330

/-! ## A373330.P15451146590334174877

`A064784(A028310(n)^2)`
-/

namespace A373330.P15451146590334174877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (A028310 n ^ 2).toNat

end

end A373330.P15451146590334174877

namespace A373330

/-- `A064784(A028310(n)^2)` -/
def P15451146590334174877.Spec : Prop :=
  ∀ n, P15451146590334174877.a n = A373330 n

end A373330

/-! ## A373330.P9740485296784588058

`A064784((A000007(n)+n)²)`
-/

namespace A373330.P9740485296784588058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 ((A000007 n + (n : ℤ)) ^ 2).toNat

end

end A373330.P9740485296784588058

namespace A373330

/-- `A064784((A000007(n)+n)²)` -/
def P9740485296784588058.Spec : Prop :=
  ∀ n, P9740485296784588058.a n = A373330 n

end A373330

/-! ## A373330.P6075425561480150544

`A064784(A000290(n)+A000007(n))`
-/

namespace A373330.P6075425561480150544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (A000290 n + A000007 n).toNat

end

end A373330.P6075425561480150544

namespace A373330

/-- `A064784(A000290(n)+A000007(n))` -/
def P6075425561480150544.Spec : Prop :=
  ∀ n, P6075425561480150544.a n = A373330 n

end A373330

/-! ## A373330.P14183054606502236620

`A064784(A002522(n)-A057427(n))`
-/

namespace A373330.P14183054606502236620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (A002522 n - A057427 n).toNat

end

end A373330.P14183054606502236620

namespace A373330

/-- `A064784(A002522(n)-A057427(n))` -/
def P14183054606502236620.Spec : Prop :=
  ∀ n, P14183054606502236620.a n = A373330 n

end A373330

/-!
# A373332: Y-coordinates of the lower envelope of A373330.

The programs for A373332, there is no canonical definition to state claims against.
-/

/-! ## A373332.P3918192153267960055

`A373330(A373331(n+1))`
-/

namespace A373332.P3918192153267960055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373330 (A373331 (n + 1)).toNat

end

end A373332.P3918192153267960055

/-!
# A373334: a(n) is the least prime power (A246655) P such that P-n is the next smaller prime power below P.

The programs for A373334, there is no canonical definition to state claims against.
-/

/-! ## A373334.P8877236048107396708

`A290515(n+1)+A028310(n)+1`
-/

namespace A373334.P8877236048107396708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290515 (n + 1) + (A028310 n + 1)

end

end A373334.P8877236048107396708

/-! ## A373334.P2424533192433302107

`A290515(n+1)+A000720(A028815(n+1))`
-/

namespace A373334.P2424533192433302107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290515 (n + 1) + A000720 (A028815 (n + 1)).toNat

end

end A373334.P2424533192433302107

/-! ## A373334.P2310602070828746113

`A290515(n+1)+A000720(Δ[A007504(n)]+1)`
-/

namespace A373334.P2310602070828746113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290515 (n + 1) + A000720 (f1 (n + 1) - f1 n + 1).toNat

end

end A373334.P2310602070828746113

/-! ## A373334.P3291495944130250415

`A290515(n+1)+A000720(∑[A075526(n)]+2)`
-/

namespace A373334.P3291495944130250415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290515 (n + 1) + A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A373334.P3291495944130250415

/-! ## A373334.P16426209947732346734

`A290515(n+1)+A000720(A006093(n+1)+2)`
-/

namespace A373334.P16426209947732346734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290515 (n + 1) + A000720 (A006093 (n + 1) + 2).toNat

end

end A373334.P16426209947732346734

/-!
# A373335: Expansion of Sum_{k>=1} x^k / (1 + x^k + x^(2*k) + x^(3*k) + x^(4*k)).

The programs for A373335, the canonical program `A373335.P16851351623866250956` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373335 has offset 1).

The definition of A373335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, A001877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373335.P16851351623866250956

`A001876(n+1)-A001877(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373335

/-- `A001876(n+1)-A001877(n+1)` -/
def P16851351623866250956.Spec : Prop :=
  ∀ n, P16851351623866250956.a n = A373335 (n + 1)

theorem P16851351623866250956.correct : P16851351623866250956.Spec := by
  intro n
  simp only [A373335, Nat.add_sub_cancel]

end A373335

/-! ## A373335.P15983805874164558475

`∑{d}[n+1, A010891(#-1)]`
-/

namespace A373335.P15983805874164558475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010891 (d - 1)

end

end A373335.P15983805874164558475

namespace A373335

/-- `∑{d}[n+1, A010891(#-1)]` -/
def P15983805874164558475.Spec : Prop :=
  ∀ n, P15983805874164558475.a n = A373335 (n + 1)

end A373335

/-! ## A373335.P196783459651624342

`A083912(2*(n+1))-A001877(n+1)`
-/

namespace A373335.P196783459651624342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (2 * (n + 1)) - A001877 (n + 1)

end

end A373335.P196783459651624342

namespace A373335

/-- `A083912(2*(n+1))-A001877(n+1)` -/
def P196783459651624342.Spec : Prop :=
  ∀ n, P196783459651624342.a n = A373335 (n + 1)

end A373335

/-! ## A373335.P11858366229216334679

`A001876(n+1)+A218445(n)-A218445(n+1)`
-/

namespace A373335.P11858366229216334679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (n + 1) + (A218445 n - A218445 (n + 1))

end

end A373335.P11858366229216334679

namespace A373335

/-- `A001876(n+1)+A218445(n)-A218445(n+1)` -/
def P11858366229216334679.Spec : Prop :=
  ∀ n, P11858366229216334679.a n = A373335 (n + 1)

end A373335

/-! ## A373335.P16717496926403505825

`A218444(n+1)-(A218444(n)+A001877(n+1))`
-/

namespace A373335.P16717496926403505825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218444 (n + 1) - (A218444 n + A001877 (n + 1))

end

end A373335.P16717496926403505825

namespace A373335

/-- `A218444(n+1)-(A218444(n)+A001877(n+1))` -/
def P16717496926403505825.Spec : Prop :=
  ∀ n, P16717496926403505825.a n = A373335 (n + 1)

end A373335

/-! ## A373335.P10233679781382406839

`∑{d}[n+1, A105384(#)]`
-/

namespace A373335.P10233679781382406839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A105384 d

end

end A373335.P10233679781382406839

namespace A373335

/-- `∑{d}[n+1, A105384(#)]` -/
def P10233679781382406839.Spec : Prop :=
  ∀ n, P10233679781382406839.a n = A373335 (n + 1)

end A373335

/-! ## A373335.P12994600543868153781

`A083912(2*(n+1))-A083914(2*(n+1))`
-/

namespace A373335.P12994600543868153781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (2 * (n + 1)) - A083914 (2 * (n + 1))

end

end A373335.P12994600543868153781

namespace A373335

/-- `A083912(2*(n+1))-A083914(2*(n+1))` -/
def P12994600543868153781.Spec : Prop :=
  ∀ n, P12994600543868153781.a n = A373335 (n + 1)

end A373335

/-!
# A373336: Expansion of Sum_{k>=1} x^k / (1 + x^k + x^(2*k) + x^(3*k) + x^(4*k) + x^(5*k) + x^(6*k)).

The programs for A373336, the canonical program `A373336.P14531621389767268669` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373336 has offset 1).

The definition of A373336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373336.P12067862293443695425

`A279061(n+1)-A363795(n+1)`
-/

namespace A373336.P12067862293443695425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (n + 1) - A363795 (n + 1)

end

end A373336.P12067862293443695425

namespace A373336

/-- `A279061(n+1)-A363795(n+1)` -/
def P12067862293443695425.Spec : Prop :=
  ∀ n, P12067862293443695425.a n = A373336 (n + 1)

theorem P12067862293443695425.correct : P12067862293443695425.Spec := by
  intro n
  simp only [A373336, Nat.add_sub_cancel, A373336.P12067862293443695425.a, A373336.P14531621389767268669.f1, A373336.P14531621389767268669.a, A014016, A014016.P1361007777265501712.a, A279061, A279061.P5329778650763394169.f1, A279061.P5329778650763394169.a, A363795, A363795.P880079998585685375.a, A082784, A082784.P13357688651719004354.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373336

/-! ## A373336.P14531621389767268669

`∑{d}[n+1, A014016(#-1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A373336

/-- `∑{d}[n+1, A014016(#-1)]` -/
def P14531621389767268669.Spec : Prop :=
  ∀ n, P14531621389767268669.a n = A373336 (n + 1)

theorem P14531621389767268669.correct : P14531621389767268669.Spec := by
  intro n
  simp only [A373336, Nat.add_sub_cancel]

end A373336

/-! ## A373336.P12743504316050048525

`A186006(A056166(2*n+5))-A333750(3*n+1)`
-/

namespace A373336.P12743504316050048525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186006 (A056166 (2 * n + 5)).toNat - A333750 (3 * n + 1)

end

end A373336.P12743504316050048525

namespace A373336

/-- `A186006(A056166(2*n+5))-A333750(3*n+1)` -/
def P12743504316050048525.Spec : Prop :=
  ∀ n, P12743504316050048525.a n = A373336 (n + 1)

end A373336

/-! ## A373336.P183062704004581328

`A322353(A034678(n+1))`
-/

namespace A373336.P183062704004581328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (A034678 (n + 1)).toNat

end

end A373336.P183062704004581328

namespace A373336

/-- `A322353(A034678(n+1))` -/
def P183062704004581328.Spec : Prop :=
  ∀ n, P183062704004581328.a n = A373336 (n + 1)

end A373336

/-! ## A373336.P15813946342485573849

`A298858(A083711(n+1))%A088570(n+4)`
-/

namespace A373336.P15813946342485573849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298858 (A083711 (n + 1)).toNat) (A088570 (n + 4))

end

end A373336.P15813946342485573849

namespace A373336

/-- `A298858(A083711(n+1))%A088570(n+4)` -/
def P15813946342485573849.Spec : Prop :=
  ∀ n, P15813946342485573849.a n = A373336 (n + 1)

end A373336

/-!
# A373337: Records in A045537.

The programs for A373337, there is no canonical definition to state claims against.
-/

/-! ## A373337.P10766823028476746353

`record[A045537(n)]`
-/

namespace A373337.P10766823028476746353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373337.P10766823028476746353

/-! ## A373337.P15475767336987010682

`A045537(A373942(n+1))`
-/

namespace A373337.P15475767336987010682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (A373942 (n + 1)).toNat

end

end A373337.P15475767336987010682

/-!
# A373338: Characteristic function of A333242: a(n) = 1 if n is a term of A333242.

The programs for A373338, the canonical program `A373338.P13828395552644185944` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373338 has offset 1).

The definition of A373338 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373338.P13828395552644185944

`A078442(n+1)%2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373338

/-- `A078442(n+1)%2` -/
def P13828395552644185944.Spec : Prop :=
  ∀ n, P13828395552644185944.a n = A373338 (n + 1)

theorem P13828395552644185944.correct : P13828395552644185944.Spec := by
  intro n
  simp only [A373338, Nat.add_sub_cancel]

end A373338

/-! ## A373338.P11231422011350827914

`(A049076(n+1)-1)%2`
-/

namespace A373338.P11231422011350827914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049076 (n + 1) - 1) 2

end

end A373338.P11231422011350827914

namespace A373338

/-- `(A049076(n+1)-1)%2` -/
def P11231422011350827914.Spec : Prop :=
  ∀ n, P11231422011350827914.a n = A373338 (n + 1)

theorem P11231422011350827914.correct : P11231422011350827914.Spec := by
  intro n
  simp only [A373338, Nat.add_sub_cancel, A373338.P11231422011350827914.a, A373338.P13828395552644185944.a, A049076, A049076.P17652482635542047239.a, A078442, A078442.P17307833943468967023.f1, A078442.P17307833943468967023.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A373338

/-! ## A373338.P12050741856801032481

`and(A001148(n), A078442(n+1))`
-/

namespace A373338.P12050741856801032481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001148 n) (A078442 (n + 1))

end

end A373338.P12050741856801032481

namespace A373338

/-- `and(A001148(n), A078442(n+1))` -/
def P12050741856801032481.Spec : Prop :=
  ∀ n, P12050741856801032481.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P13962225572683772940

`and(A001492(n), A078442(n+1))`
-/

namespace A373338.P13962225572683772940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001492 n) (A078442 (n + 1))

end

end A373338.P13962225572683772940

namespace A373338

/-- `and(A001492(n), A078442(n+1))` -/
def P13962225572683772940.Spec : Prop :=
  ∀ n, P13962225572683772940.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P6239840187301033376

`and(A001845(n), A078442(n+1))`
-/

namespace A373338.P6239840187301033376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001845 n) (A078442 (n + 1))

end

end A373338.P6239840187301033376

namespace A373338

/-- `and(A001845(n), A078442(n+1))` -/
def P6239840187301033376.Spec : Prop :=
  ∀ n, P6239840187301033376.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P8828983223828749156

`and(A001846(n), A078442(n+1))`
-/

namespace A373338.P8828983223828749156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A078442 (n + 1))

end

end A373338.P8828983223828749156

namespace A373338

/-- `and(A001846(n), A078442(n+1))` -/
def P8828983223828749156.Spec : Prop :=
  ∀ n, P8828983223828749156.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P2361518057366817876

`and(A001849(n), A078442(n+1))`
-/

namespace A373338.P2361518057366817876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001849 n) (A078442 (n + 1))

end

end A373338.P2361518057366817876

namespace A373338

/-- `and(A001849(n), A078442(n+1))` -/
def P2361518057366817876.Spec : Prop :=
  ∀ n, P2361518057366817876.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P1333085323179021100

`and(A001903(n), A078442(n+1))`
-/

namespace A373338.P1333085323179021100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001903 n) (A078442 (n + 1))

end

end A373338.P1333085323179021100

namespace A373338

/-- `and(A001903(n), A078442(n+1))` -/
def P1333085323179021100.Spec : Prop :=
  ∀ n, P1333085323179021100.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P16499875481823582517

`and(A002033(n), A078442(n+1))`
-/

namespace A373338.P16499875481823582517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A078442 (n + 1))

end

end A373338.P16499875481823582517

namespace A373338

/-- `and(A002033(n), A078442(n+1))` -/
def P16499875481823582517.Spec : Prop :=
  ∀ n, P16499875481823582517.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P12369248655359237417

`and(A016760(n), A078442(n+1))`
-/

namespace A373338.P12369248655359237417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A078442 (n + 1))

end

end A373338.P12369248655359237417

namespace A373338

/-- `and(A016760(n), A078442(n+1))` -/
def P12369248655359237417.Spec : Prop :=
  ∀ n, P12369248655359237417.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P6753760525933891093

`and(A016819(n), A078442(n+1))`
-/

namespace A373338.P6753760525933891093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016819 n) (A078442 (n + 1))

end

end A373338.P6753760525933891093

namespace A373338

/-- `and(A016819(n), A078442(n+1))` -/
def P6753760525933891093.Spec : Prop :=
  ∀ n, P6753760525933891093.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P18333029826172618067

`and(A016820(n), A078442(n+1))`
-/

namespace A373338.P18333029826172618067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A078442 (n + 1))

end

end A373338.P18333029826172618067

namespace A373338

/-- `and(A016820(n), A078442(n+1))` -/
def P18333029826172618067.Spec : Prop :=
  ∀ n, P18333029826172618067.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P16874663249037531149

`and(A017286(n), A078442(n+1))`
-/

namespace A373338.P16874663249037531149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A078442 (n + 1))

end

end A373338.P16874663249037531149

namespace A373338

/-- `and(A017286(n), A078442(n+1))` -/
def P16874663249037531149.Spec : Prop :=
  ∀ n, P16874663249037531149.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P15119470659543487567

`and(A017358(n), A078442(n+1))`
-/

namespace A373338.P15119470659543487567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017358 n) (A078442 (n + 1))

end

end A373338.P15119470659543487567

namespace A373338

/-- `and(A017358(n), A078442(n+1))` -/
def P15119470659543487567.Spec : Prop :=
  ∀ n, P15119470659543487567.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P13921290232372154931

`and(A017382(n), A078442(n+1))`
-/

namespace A373338.P13921290232372154931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017382 n) (A078442 (n + 1))

end

end A373338.P13921290232372154931

namespace A373338

/-- `and(A017382(n), A078442(n+1))` -/
def P13921290232372154931.Spec : Prop :=
  ∀ n, P13921290232372154931.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P5619802293656873061

`and(A017538(n), A078442(n+1))`
-/

namespace A373338.P5619802293656873061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017538 n) (A078442 (n + 1))

end

end A373338.P5619802293656873061

namespace A373338

/-- `and(A017538(n), A078442(n+1))` -/
def P5619802293656873061.Spec : Prop :=
  ∀ n, P5619802293656873061.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P13900759264192388514

`and(A017610(n), A078442(n+1))`
-/

namespace A373338.P13900759264192388514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017610 n) (A078442 (n + 1))

end

end A373338.P13900759264192388514

namespace A373338

/-- `and(A017610(n), A078442(n+1))` -/
def P13900759264192388514.Spec : Prop :=
  ∀ n, P13900759264192388514.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P6983660376515936153

`and(A017634(n), A078442(n+1))`
-/

namespace A373338.P6983660376515936153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017634 n) (A078442 (n + 1))

end

end A373338.P6983660376515936153

namespace A373338

/-- `and(A017634(n), A078442(n+1))` -/
def P6983660376515936153.Spec : Prop :=
  ∀ n, P6983660376515936153.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P9235723757961511906

`and(A055428(n), A078442(n+1))`
-/

namespace A373338.P9235723757961511906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055428 n) (A078442 (n + 1))

end

end A373338.P9235723757961511906

namespace A373338

/-- `and(A055428(n), A078442(n+1))` -/
def P9235723757961511906.Spec : Prop :=
  ∀ n, P9235723757961511906.a n = A373338 (n + 1)

end A373338

/-! ## A373338.P9063978846266556749

`and(A055429(n), A078442(n+1))`
-/

namespace A373338.P9063978846266556749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055429 n) (A078442 (n + 1))

end

end A373338.P9063978846266556749

namespace A373338

/-- `and(A055429(n), A078442(n+1))` -/
def P9063978846266556749.Spec : Prop :=
  ∀ n, P9063978846266556749.a n = A373338 (n + 1)

end A373338

/-!
# A373339: Number of permutations in symmetric group S_n with an even number of cycles of length 2 or more.

The programs for A373339, the canonical program `A373339.P8015805142081677594` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373339 has offset 0).

The definition of A373339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373339.P8015805142081677594

`n!/2-(n-2)*2^(n-2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373339

/-- `n!/2-(n-2)*2^(n-2)` -/
def P8015805142081677594.Spec : Prop :=
  ∀ n, P8015805142081677594.a n = (A373339 n : ℚ)

end A373339

/-! ## A373339.P481516993851956365

`A000142(n)-A373340(n)`
-/

namespace A373339.P481516993851956365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A373340 n

end

end A373339.P481516993851956365

namespace A373339

/-- `A000142(n)-A373340(n)` -/
def P481516993851956365.Spec : Prop :=
  ∀ n, P481516993851956365.a n = A373339 n

end A373339

/-! ## A373339.P8173627568495554158

`A347210(n+2)/(n+1)`
-/

namespace A373339.P8173627568495554158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347210 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A373339.P8173627568495554158

namespace A373339

/-- `A347210(n+2)/(n+1)` -/
def P8173627568495554158.Spec : Prop :=
  ∀ n, P8173627568495554158.a n = (A373339 n : ℚ)

end A373339

/-! ## A373339.P11527567176374906133

`A374419(∑[n])`
-/

namespace A373339.P11527567176374906133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374419 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373339.P11527567176374906133

namespace A373339

/-- `A374419(∑[n])` -/
def P11527567176374906133.Spec : Prop :=
  ∀ n, P11527567176374906133.a n = A373339 n

end A373339

/-!
# A373340: Number of permutations of symmetric group S_n with an odd number of cycles of length 2 or more.

The programs for A373340, the canonical program `A373340.P8185917160170023749` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373340 has offset 0).

The definition of A373340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373340.P7470015430216588381

`n!/2+(n-2)*2^(n-2)`
-/

namespace A373340.P7470015430216588381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / 2 + ((n : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A373340.P7470015430216588381

namespace A373340

/-- `n!/2+(n-2)*2^(n-2)` -/
def P7470015430216588381.Spec : Prop :=
  ∀ n, P7470015430216588381.a n = (A373340 n : ℚ)

end A373340

/-! ## A373340.P8185917160170023749

`A000142(n)-A373339(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A373340

/-- `A000142(n)-A373339(n)` -/
def P8185917160170023749.Spec : Prop :=
  ∀ n, P8185917160170023749.a n = A373340 n

theorem P8185917160170023749.correct : P8185917160170023749.Spec := by
  intro n
  simp only [A373340]

end A373340

/-! ## A373340.P10244884873575077359

`n!-(n!/2-(n-2)*2^(n-2))`
-/

namespace A373340.P10244884873575077359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - ((Nat.factorial n : ℚ) / 2 - ((n : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A373340.P10244884873575077359

namespace A373340

/-- `n!-(n!/2-(n-2)*2^(n-2))` -/
def P10244884873575077359.Spec : Prop :=
  ∀ n, P10244884873575077359.a n = (A373340 n : ℚ)

end A373340

/-! ## A373340.P14146850321522373021

`A008279(n*(n+3)/2)-A373339(n)`
-/

namespace A373340.P14146850321522373021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat - A373339 n

end

end A373340.P14146850321522373021

namespace A373340

/-- `A008279(n*(n+3)/2)-A373339(n)` -/
def P14146850321522373021.Spec : Prop :=
  ∀ n, P14146850321522373021.a n = A373340 n

end A373340

/-! ## A373340.P13968769658120282188

`A374420(∑[n])`
-/

namespace A373340.P13968769658120282188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374420 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373340.P13968769658120282188

namespace A373340

/-- `A374420(∑[n])` -/
def P13968769658120282188.Spec : Prop :=
  ∀ n, P13968769658120282188.a n = A373340 n

end A373340

/-!
# A373341: Array read by ascending antidiagonals: A(n,k) is the number of acyclic de Bruijn sequences of order k and alphabet of size n, with k > 0.

The programs for A373341, the canonical program `A373341.P10952291249052365136` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373341 has offset 1).

The definition of A373341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373341.P10952291249052365136

`(row(n)-col(n)+1)!^(row(n)-col(n)+1)^col(n)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373341

/-- `(row(n)-col(n)+1)!^(row(n)-col(n)+1)^col(n)` -/
def P10952291249052365136.Spec : Prop :=
  ∀ n, P10952291249052365136.a n = (A373341 (n + 1) : ℚ)

end A373341

/-! ## A373341.P3219703958578878665

`A004736(n+1)!^A009999(n)`
-/

namespace A373341.P3219703958578878665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℚ) ^ (A009999 n : ℤ)

end

end A373341.P3219703958578878665

namespace A373341

/-- `A004736(n+1)!^A009999(n)` -/
def P3219703958578878665.Spec : Prop :=
  ∀ n, P3219703958578878665.a n = (A373341 (n + 1) : ℚ)

end A373341

/-! ## A373341.P6468285588268298407

`A051128(n+1)*A373343(n+1)`
-/

namespace A373341.P6468285588268298407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) * A373343 (n + 1)

end

end A373341.P6468285588268298407

namespace A373341

/-- `A051128(n+1)*A373343(n+1)` -/
def P6468285588268298407.Spec : Prop :=
  ∀ n, P6468285588268298407.a n = A373341 (n + 1)

end A373341

/-! ## A373341.P18019486107103893962

`A132159(n)*A216702(A337889(n+2))`
-/

namespace A373341.P18019486107103893962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n * A216702 (A337889 (n + 2)).toNat

end

end A373341.P18019486107103893962

namespace A373341

/-- `A132159(n)*A216702(A337889(n+2))` -/
def P18019486107103893962.Spec : Prop :=
  ∀ n, P18019486107103893962.a n = A373341 (n + 1)

end A373341

/-!
# A373343: Array read by ascending antidiagonals: A(n,k) is the number of cyclic de Bruijn sequences of order k and alphabet of size n, with k > 0.

The programs for A373343, the canonical program `A373343.P3922496766566749130` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373343 has offset 1).

The definition of A373343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373343.P3922496766566749130

`(row(n)-col(n)+1)!^(row(n)-col(n)+1)^col(n)/(row(n)-col(n)+1)^(col(n)+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373343

/-- `(row(n)-col(n)+1)!^(row(n)-col(n)+1)^col(n)/(row(n)-col(n)+1)^(col(n)+1)` -/
def P3922496766566749130.Spec : Prop :=
  ∀ n, P3922496766566749130.a n = (A373343 (n + 1) : ℚ)

end A373343

/-!
# A373345: Irregular triangle read by rows where row n lists (in decreasing order) the elements of the Schreier set encoded by A371176(n).

The programs for A373345, there is no canonical definition to state claims against.
-/

/-! ## A373345.P15978543729010779727

`A373557(n+1)-1`
-/

namespace A373345.P15978543729010779727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373557 (n + 1) - 1

end

end A373345.P15978543729010779727

/-! ## A373345.P6861747972974909326

`A023443(A373557(n+1))`
-/

namespace A373345.P6861747972974909326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A373557 (n + 1)).toNat

end

end A373345.P6861747972974909326

/-! ## A373345.P4423877848671911821

`A002260(C(A373557(n+1), 2))`
-/

namespace A373345.P4423877848671911821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose (A373557 (n + 1)).toNat 2)

end

end A373345.P4423877848671911821

/-! ## A373345.P16209269347455233229

`A180281(C(A373557(n+1), 2))`
-/

namespace A373345.P16209269347455233229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (Nat.choose (A373557 (n + 1)).toNat 2)

end

end A373345.P16209269347455233229

/-! ## A373345.P3473585135968775591

`A325224(2^A373557(n+1))`
-/

namespace A373345.P3473585135968775591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325224 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A373557 (n + 1) : ℤ))).toNat

end

end A373345.P3473585135968775591

/-! ## A373345.P11617933239618719024

`A072828(n+1)%A373557(n+1)`
-/

namespace A373345.P11617933239618719024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A373557 (n + 1))

end

end A373345.P11617933239618719024

/-!
# A373346: Row sums of A373345.

The programs for A373346, there is no canonical definition to state claims against.
-/

/-! ## A373346.P18174691577982683486

`A373853(n+1)-A007895(n+1)`
-/

namespace A373346.P18174691577982683486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373853 (n + 1) - A007895 (n + 1)

end

end A373346.P18174691577982683486

/-! ## A373346.P14875008457188293991

`A029931(A371176(n+1))`
-/

namespace A373346.P14875008457188293991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A371176 (n + 1)).toNat

end

end A373346.P14875008457188293991

/-!
# A373347: Positive integers k such that A000120(k) > A001511(k).

The programs for A373347, the canonical program `A373347.P5073638856647458269` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373347 has offset 1).

The definition of A373347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7582 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373347.P7323657803626957615

`comp[lcm(n, A060632(n))]`
-/

namespace A373347.P7323657803626957615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A060632 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A373347.P7323657803626957615

namespace A373347

/-- `comp[lcm(n, A060632(n))]` -/
def P7323657803626957615.Spec : Prop :=
  ∀ n, (P7323657803626957615.a n : ℤ) = A373347 (n + 1)

end A373347

/-! ## A373347.P11088723255594790956

`A373360(n)+a(n-1)` with `a(0)=3`
-/

namespace A373347.P11088723255594790956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A373360 n + a (n - 1)

end

end A373347.P11088723255594790956

namespace A373347

/-- `A373360(n)+a(n-1)` -/
def P11088723255594790956.Spec : Prop :=
  ∀ n, P11088723255594790956.a n = A373347 (n + 1)

end A373347

/-! ## A373347.P3591500807555700047

`comp[A371176(n+1)-1]+1`
-/

namespace A373347.P3591500807555700047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A373347.P3591500807555700047

namespace A373347

/-- `comp[A371176(n+1)-1]+1` -/
def P3591500807555700047.Spec : Prop :=
  ∀ n, (P3591500807555700047.a n : ℤ) = A373347 (n + 1)

end A373347

/-! ## A373347.P516064680416559180

`lt[A007814(n+1), A048881(n)]+1`
-/

namespace A373347.P516064680416559180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A373347.P516064680416559180

namespace A373347

/-- `lt[A007814(n+1), A048881(n)]+1` -/
def P516064680416559180.Spec : Prop :=
  ∀ n, (P516064680416559180.a n : ℤ) = A373347 (n + 1)

end A373347

/-! ## A373347.P16500278209566170705

`lt[A089080(n+1), A000120(n)+1]`
-/

namespace A373347.P16500278209566170705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373347.P16500278209566170705

namespace A373347

/-- `lt[A089080(n+1), A000120(n)+1]` -/
def P16500278209566170705.Spec : Prop :=
  ∀ n, (P16500278209566170705.a n : ℤ) = A373347 (n + 1)

end A373347

/-! ## A373347.P5073638856647458269

`comp[A335063(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373347

/-- `comp[A335063(n)]` -/
def P5073638856647458269.Spec : Prop :=
  ∀ n, (P5073638856647458269.a n : ℤ) = A373347 (n + 1)

theorem P5073638856647458269.correct : P5073638856647458269.Spec := by
  intro n
  simp only [A373347, Nat.add_sub_cancel]

end A373347

/-! ## A373347.P10136661785199352466

`comp[n*A011782(A000120(n))]`
-/

namespace A373347.P10136661785199352466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 (A000120 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373347.P10136661785199352466

namespace A373347

/-- `comp[n*A011782(A000120(n))]` -/
def P10136661785199352466.Spec : Prop :=
  ∀ n, (P10136661785199352466.a n : ℤ) = A373347 (n + 1)

end A373347

/-! ## A373347.P6671396516969692346

`comp[A335587(n)]`
-/

namespace A373347.P6671396516969692346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373347.P6671396516969692346

namespace A373347

/-- `comp[A335587(n)]` -/
def P6671396516969692346.Spec : Prop :=
  ∀ n, (P6671396516969692346.a n : ℤ) = A373347 (n + 1)

end A373347

/-! ## A373347.P9836498448893645821

`lt[A257990(A005940(n+1)), A000120(n)]`
-/

namespace A373347.P9836498448893645821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373347.P9836498448893645821

namespace A373347

/-- `lt[A257990(A005940(n+1)), A000120(n)]` -/
def P9836498448893645821.Spec : Prop :=
  ∀ n, (P9836498448893645821.a n : ℤ) = A373347 (n + 1)

end A373347

/-!
# A373352: Factor of n generated by William B. Hart's 'one line' factoring algorithm.

The programs for A373352, there is no canonical definition to state claims against.
-/

/-! ## A373352.P1198860246249453376

`gcd(n+1, A373461(n+1))`
-/

namespace A373352.P1198860246249453376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A373461 (n + 1))

end

end A373352.P1198860246249453376

/-! ## A373352.P13255849735585136605

`A050873(A373461(n+1)+A000217(n))`
-/

namespace A373352.P13255849735585136605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A373461 (n + 1) + A000217 n).toNat

end

end A373352.P13255849735585136605

/-! ## A373352.P501437376928917123

`gcd(A019555(n+1), A070528(A196166(n+2)))`
-/

namespace A373352.P501437376928917123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019555 (n + 1)) (A070528 (A196166 (n + 2)).toNat)

end

end A373352.P501437376928917123

/-! ## A373352.P1008068731149345822

`gcd(A293448(n+1), A293473(A238279(n+3)))`
-/

namespace A373352.P1008068731149345822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A293448 (n + 1)) (A293473 (A238279 (n + 3)).toNat)

end

end A373352.P1008068731149345822

/-! ## A373352.P3374478582394708973

`gcd(A000326(2*(n+1)), A001223(A364349(3*(n+1))))`
-/

namespace A373352.P3374478582394708973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000326 (2 * (n + 1))) (A001223 (A364349 (3 * (n + 1))).toNat)

end

end A373352.P3374478582394708973

/-!
# A373354: Triangle read by rows: T(n, k) = [n - k + 1 | k] where [n | k] is defined below.

The programs for A373354, there is no canonical definition to state claims against.
-/

/-! ## A373354.P7008055745721647626

`gcd(A071927(A380974(n+1)), A104443(n+1))`
-/

namespace A373354.P7008055745721647626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071927 (A380974 (n + 1)).toNat) (A104443 (n + 1))

end

end A373354.P7008055745721647626

/-! ## A373354.P3109362811734559683

`A194823(A271852(n+2))`
-/

namespace A373354.P3109362811734559683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194823 (A271852 (n + 2)).toNat

end

end A373354.P3109362811734559683

/-! ## A373354.P7882221647067552266

`gcd(6, A327987(A104443(n+1)²))`
-/

namespace A373354.P7882221647067552266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A327987 (A104443 (n + 1) ^ 2).toNat)

end

end A373354.P7882221647067552266

/-!
# A373358: a(n) = 4*a(n-1) -5*a(n-2) +2*a(n-3) +2*a(n-4) for a(0) = a(1) = 0, a(2) = 1, a(3) = 4 for n >= 4.

The programs for A373358, the canonical program `A373358.P11543098806142221436` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373358 has offset 0).

The definition of A373358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-5*a(n-2)+2*a(n-3)+2*a(n-4)` (program `A373358.P11543098806142221436`, by `A373358.P11543098806142221436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373358.P11543098806142221436

`4*a(n-1)-5*a(n-2)+2*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373358

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)+2*a(n-4)` -/
def P11543098806142221436.Spec : Prop :=
  ∀ n, P11543098806142221436.a n = A373358 n

theorem P11543098806142221436.correct : P11543098806142221436.Spec := by
  intro n
  simp only [A373358]

end A373358

/-! ## A373358.P13727076298504224746

`(A000129(n+1)-A009545(n+1))/3`
-/

namespace A373358.P13727076298504224746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) - A009545 (n + 1) : ℚ) / 3

end

end A373358.P13727076298504224746

namespace A373358

/-- `(A000129(n+1)-A009545(n+1))/3` -/
def P13727076298504224746.Spec : Prop :=
  ∀ n, P13727076298504224746.a n = (A373358 n : ℚ)

end A373358

/-! ## A373358.P2031332691404741415

`A373245(n+1)-A114203(n+1)`
-/

namespace A373358.P2031332691404741415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373245 (n + 1) - A114203 (n + 1)

end

end A373358.P2031332691404741415

namespace A373358

/-- `A373245(n+1)-A114203(n+1)` -/
def P2031332691404741415.Spec : Prop :=
  ∀ n, P2031332691404741415.a n = A373358 n

end A373358

/-! ## A373358.P8872856907696741978

`ogf(x^2/(1-4x+5x^2-2x^3-2x^4))`
-/

namespace A373358.P8872856907696741978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -4, 5, -2, -2] n

end

end A373358.P8872856907696741978

namespace A373358

/-- `ogf(x^2/(1-4x+5x^2-2x^3-2x^4))` -/
def P8872856907696741978.Spec : Prop :=
  ∀ n, P8872856907696741978.a n = A373358 n

end A373358

/-! ## A373358.P10664170271867952335

`∑[A101892(n)]`
-/

namespace A373358.P10664170271867952335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373358.P10664170271867952335

namespace A373358

/-- `∑[A101892(n)]` -/
def P10664170271867952335.Spec : Prop :=
  ∀ n, P10664170271867952335.a n = A373358 n

end A373358

/-! ## A373358.P9567370416667897100

`A100137(n)-A307089(n)`
-/

namespace A373358.P9567370416667897100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100137 n - A307089 n

end

end A373358.P9567370416667897100

namespace A373358

/-- `A100137(n)-A307089(n)` -/
def P9567370416667897100.Spec : Prop :=
  ∀ n, P9567370416667897100.a n = A373358 n

end A373358

/-! ## A373358.P15436110148098974363

`A000129(n+1)-A114203(n)`
-/

namespace A373358.P15436110148098974363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A114203 n

end

end A373358.P15436110148098974363

namespace A373358

/-- `A000129(n+1)-A114203(n)` -/
def P15436110148098974363.Spec : Prop :=
  ∀ n, P15436110148098974363.a n = A373358 n

end A373358

/-! ## A373358.P1073772757066296815

`A373245(n+1)-2*A373245(n)`
-/

namespace A373358.P1073772757066296815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373245 (n + 1) - 2 * A373245 n

end

end A373358.P1073772757066296815

namespace A373358

/-- `A373245(n+1)-2*A373245(n)` -/
def P1073772757066296815.Spec : Prop :=
  ∀ n, P1073772757066296815.a n = A373358 n

end A373358

/-!
# A373359: Irregular triangle read by rows where row n lists (in increasing order) the elements of the Schreier set encoded by A371176(n).

The programs for A373359, there is no canonical definition to state claims against.
-/

/-! ## A373359.P1950928071513949640

`A373579(n+1)-1`
-/

namespace A373359.P1950928071513949640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373579 (n + 1) - 1

end

end A373359.P1950928071513949640

/-! ## A373359.P3819741093321875044

`A023443(A373579(n+1))`
-/

namespace A373359.P3819741093321875044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A373579 (n + 1)).toNat

end

end A373359.P3819741093321875044

/-! ## A373359.P18174943298971026567

`A163937(C(A373579(n+1), 2))`
-/

namespace A373359.P18174943298971026567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163937 (Nat.choose (A373579 (n + 1)).toNat 2)

end

end A373359.P18174943298971026567

/-! ## A373359.P12304907039143400717

`abs(A373579(n+1)+A057428(2*n+1))`
-/

namespace A373359.P12304907039143400717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A373579 (n + 1) + A057428 (2 * n + 1)|

end

end A373359.P12304907039143400717

/-! ## A373359.P7305502212640747960

`A057428(2*n+1)+A373579(n+1)%A304205(n+1)`
-/

namespace A373359.P7305502212640747960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * n + 1) + Int.tmod (A373579 (n + 1)) (A304205 (n + 1))

end

end A373359.P7305502212640747960

/-! ## A373359.P14044361662884069632

`A072828(n+1)%A373579(n+1)`
-/

namespace A373359.P14044361662884069632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A373579 (n + 1))

end

end A373359.P14044361662884069632

/-!
# A373360: First differences of A373347.

The programs for A373360, the canonical program `A373360.P3869209732951132874` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373360 has offset 1).

The definition of A373360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373347, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373360.P3869209732951132874

`A373347(n+2)-A373347(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373360

/-- `A373347(n+2)-A373347(n+1)` -/
def P3869209732951132874.Spec : Prop :=
  ∀ n, P3869209732951132874.a n = A373360 (n + 1)

theorem P3869209732951132874.correct : P3869209732951132874.Spec := by
  intro n
  simp only [A373360, Nat.add_sub_cancel]

end A373360

/-! ## A373360.P14581257409608222067

`Δ[A373347(n+1)]`
-/

namespace A373360.P14581257409608222067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373360.P14581257409608222067

namespace A373360

/-- `Δ[A373347(n+1)]` -/
def P14581257409608222067.Spec : Prop :=
  ∀ n, P14581257409608222067.a n = A373360 (n + 1)

theorem P14581257409608222067.correct : P14581257409608222067.Spec := by
  intro n
  simp only [A373360, Nat.add_sub_cancel, A373360.P14581257409608222067.f1, A373360.P14581257409608222067.a, A373360.P3869209732951132874.a, SequenceMachineLib.memo_apply]

end A373360

/-! ## A373360.P10660630818094422588

`Δ[lt[2^val(n+1, 2), A048896(n)]]`
-/

namespace A373360.P10660630818094422588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373360.P10660630818094422588

namespace A373360

/-- `Δ[lt[2^val(n+1, 2), A048896(n)]]` -/
def P10660630818094422588.Spec : Prop :=
  ∀ n, P10660630818094422588.a n = A373360 (n + 1)

end A373360

/-! ## A373360.P3477382651596560135

`Δ[lt[A007814(n+1), A048881(n)]]`
-/

namespace A373360.P3477382651596560135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373360.P3477382651596560135

namespace A373360

/-- `Δ[lt[A007814(n+1), A048881(n)]]` -/
def P3477382651596560135.Spec : Prop :=
  ∀ n, P3477382651596560135.a n = A373360 (n + 1)

end A373360

/-! ## A373360.P13931820244588165579

`Δ[comp[A335063(n)]]`
-/

namespace A373360.P13931820244588165579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373360.P13931820244588165579

namespace A373360

/-- `Δ[comp[A335063(n)]]` -/
def P13931820244588165579.Spec : Prop :=
  ∀ n, P13931820244588165579.a n = A373360 (n + 1)

end A373360

/-!
# A373361: a(n) = gcd(n, A276085(n)), where A276085 is the primorial base log-function.

The programs for A373361, there is no canonical definition to state claims against.
-/

/-! ## A373361.P8190983480698914622

`gcd(n+1, A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373361.P8190983480698914622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A276085 (n + 1))

end

end A373361.P8190983480698914622

/-! ## A373361.P11513199173527014506

`gcd(A328769(n+1)/(n+1), A000027(n+1))`
-/

namespace A373361.P11513199173527014506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A328769 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000027 (n + 1))

end

end A373361.P11513199173527014506

/-! ## A373361.P3836227755870676738

`gcd(A151714(n), A359301(n+1))`
-/

namespace A373361.P3836227755870676738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151714 n) (A359301 (n + 1))

end

end A373361.P3836227755870676738

/-! ## A373361.P6839384769140203176

`gcd(A192344(n+1), A309155(n+1))`
-/

namespace A373361.P6839384769140203176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A192344 (n + 1)) (A309155 (n + 1))

end

end A373361.P6839384769140203176

/-! ## A373361.P18291278505146824703

`gcd(A156251(A078649(n+1)), A372576(n+1))`
-/

namespace A373361.P18291278505146824703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156251 (A078649 (n + 1)).toNat) (A372576 (n + 1))

end

end A373361.P18291278505146824703

/-!
# A373362: a(n) = gcd(A001414(n), A276085(n)), where A001414 is the sum of prime factors with repetition, and A276085 is the primorial base log-function.

The programs for A373362, there is no canonical definition to state claims against.
-/

/-! ## A373362.P8186546928861798187

`gcd(A001414(n+1), A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373362.P8186546928861798187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A276085 (n + 1))

end

end A373362.P8186546928861798187

/-! ## A373362.P1117175482240196796

`A373367((n+1)^3)/3`
-/

namespace A373362.P1117175482240196796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373367 ((n + 1) ^ 3) : ℚ) / 3

end

end A373362.P1117175482240196796

/-! ## A373362.P16104197729890615949

`and(A335574(n), A373367(n+1))`
-/

namespace A373362.P16104197729890615949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335574 n) (A373367 (n + 1))

end

end A373362.P16104197729890615949

/-! ## A373362.P3782542935132233803

`A373367(n+1)%Δ[A046963(n)]`
-/

namespace A373362.P3782542935132233803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373367 (n + 1)) (f1 (n + 1) - f1 n)

end

end A373362.P3782542935132233803

/-! ## A373362.P15539070752759258238

`A373367(n+1)^A046951(∑[12*n]+1)`
-/

namespace A373362.P15539070752759258238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373367 (n + 1) : ℚ) ^ (A046951 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A373362.P15539070752759258238

/-!
# A373363: a(n) = gcd(A001414(n), A083345(n)), where A001414 is the sum of prime factors with repetition, and A083345 is the numerator of the sum of the inverses of prime factors with repetition.

The programs for A373363, the canonical program `A373363.P15575351710331824762` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373363 has offset 1).

The definition of A373363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A083345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373363.P15575351710331824762

`gcd(A001414(n+1), A083345(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A373363

/-- `gcd(A001414(n+1), A083345(n+1))` -/
def P15575351710331824762.Spec : Prop :=
  ∀ n, (P15575351710331824762.a n : ℤ) = A373363 (n + 1)

theorem P15575351710331824762.correct : P15575351710331824762.Spec := by
  intro n
  simp only [A373363, Nat.add_sub_cancel]

end A373363

/-! ## A373363.P14553823389487250245

`gcd(A051180(A337272(n)), A083345(n+1))`
-/

namespace A373363.P14553823389487250245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051180 (A337272 n).toNat) (A083345 (n + 1))

end

end A373363.P14553823389487250245

namespace A373363

/-- `gcd(A051180(A337272(n)), A083345(n+1))` -/
def P14553823389487250245.Spec : Prop :=
  ∀ n, (P14553823389487250245.a n : ℤ) = A373363 (n + 1)

end A373363

/-! ## A373363.P638524071917587870

`A083345(n+1)%A094343(A033842(n+3))`
-/

namespace A373363.P638524071917587870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083345 (n + 1)) (A094343 (A033842 (n + 3)).toNat)

end

end A373363.P638524071917587870

namespace A373363

/-- `A083345(n+1)%A094343(A033842(n+3))` -/
def P638524071917587870.Spec : Prop :=
  ∀ n, P638524071917587870.a n = A373363 (n + 1)

end A373363

/-! ## A373363.P18243610756102108709

`A083345(n+1)^A056478(A208183(n))`
-/

namespace A373363.P18243610756102108709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083345 (n + 1) : ℚ) ^ (A056478 (A208183 n).toNat : ℤ)

end

end A373363.P18243610756102108709

namespace A373363

/-- `A083345(n+1)^A056478(A208183(n))` -/
def P18243610756102108709.Spec : Prop :=
  ∀ n, P18243610756102108709.a n = (A373363 (n + 1) : ℚ)

end A373363

/-! ## A373363.P16255646214544674170

`A083345(n+1)^A255212(A275487(n))`
-/

namespace A373363.P16255646214544674170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083345 (n + 1) : ℚ) ^ (A255212 (A275487 n).toNat : ℤ)

end

end A373363.P16255646214544674170

namespace A373363

/-- `A083345(n+1)^A255212(A275487(n))` -/
def P16255646214544674170.Spec : Prop :=
  ∀ n, P16255646214544674170.a n = (A373363 (n + 1) : ℚ)

end A373363

/-!
# A373364: a(n) = gcd(A001414(n), A003415(n)), where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

The programs for A373364, the canonical program `A373364.P8547950682954605811` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373364 has offset 1).

The definition of A373364 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373364.P8547950682954605811

`gcd(A001414(n+1), A003415(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A373364

/-- `gcd(A001414(n+1), A003415(n+1))` -/
def P8547950682954605811.Spec : Prop :=
  ∀ n, (P8547950682954605811.a n : ℤ) = A373364 (n + 1)

theorem P8547950682954605811.correct : P8547950682954605811.Spec := by
  intro n
  simp only [A373364, Nat.add_sub_cancel]

end A373364

/-! ## A373364.P7864694039870722048

`gcd(∑[A258057(n)], A001414(n+1))`
-/

namespace A373364.P7864694039870722048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A001414 (n + 1))

end

end A373364.P7864694039870722048

namespace A373364

/-- `gcd(∑[A258057(n)], A001414(n+1))` -/
def P7864694039870722048.Spec : Prop :=
  ∀ n, (P7864694039870722048.a n : ℤ) = A373364 (n + 1)

end A373364

/-!
# A373365: a(n) = gcd(A001414(n), A064097(n)), where A001414 is the sum of prime factors with repetition, and A064097 is a quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

The programs for A373365, the canonical program `A373365.P4265331062570760901` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373365 has offset 1).

The definition of A373365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373365.P4265331062570760901

`gcd(A001414(n+1), A064097(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A373365

/-- `gcd(A001414(n+1), A064097(n+1))` -/
def P4265331062570760901.Spec : Prop :=
  ∀ n, (P4265331062570760901.a n : ℤ) = A373365 (n + 1)

theorem P4265331062570760901.correct : P4265331062570760901.Spec := by
  intro n
  simp only [A373365, Nat.add_sub_cancel]

end A373365

/-! ## A373365.P15329021776305907927

`gcd(A073933(n+1)-1, sqrt(A074373(n+1)))`
-/

namespace A373365.P15329021776305907927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073933 (n + 1) - 1) (SequenceMachineLib.roundAway (Real.sqrt (A074373 (n + 1) : ℝ)))

end

end A373365.P15329021776305907927

namespace A373365

/-- `gcd(A073933(n+1)-1, sqrt(A074373(n+1)))` -/
def P15329021776305907927.Spec : Prop :=
  ∀ n, (P15329021776305907927.a n : ℤ) = A373365 (n + 1)

end A373365

/-! ## A373365.P13716537016650662935

`A052409(n+1)*A348039(A006261(n))`
-/

namespace A373365.P13716537016650662935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A348039 (A006261 n).toNat

end

end A373365.P13716537016650662935

namespace A373365

/-- `A052409(n+1)*A348039(A006261(n))` -/
def P13716537016650662935.Spec : Prop :=
  ∀ n, P13716537016650662935.a n = A373365 (n + 1)

end A373365

/-! ## A373365.P15852820786721915671

`A122840(A185316(n+1))+A051904(n+1)`
-/

namespace A373365.P15852820786721915671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A185316 (n + 1)).toNat + A051904 (n + 1)

end

end A373365.P15852820786721915671

namespace A373365

/-- `A122840(A185316(n+1))+A051904(n+1)` -/
def P15852820786721915671.Spec : Prop :=
  ∀ n, P15852820786721915671.a n = A373365 (n + 1)

end A373365

/-! ## A373365.P14761485155143268396

`A051904(n+1)*A051904(A002417(n+3))`
-/

namespace A373365.P14761485155143268396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1) * A051904 (A002417 (n + 3)).toNat

end

end A373365.P14761485155143268396

namespace A373365

/-- `A051904(n+1)*A051904(A002417(n+3))` -/
def P14761485155143268396.Spec : Prop :=
  ∀ n, P14761485155143268396.a n = A373365 (n + 1)

end A373365

/-!
# A373366: a(n) = gcd(A064097(n), A083345(n)).

The programs for A373366, the canonical program `A373366.P11726240671660243097` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373366 has offset 1).

The definition of A373366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A083345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373366.P11726240671660243097

`gcd(A064097(n+1), A083345(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A373366

/-- `gcd(A064097(n+1), A083345(n+1))` -/
def P11726240671660243097.Spec : Prop :=
  ∀ n, (P11726240671660243097.a n : ℤ) = A373366 (n + 1)

theorem P11726240671660243097.correct : P11726240671660243097.Spec := by
  intro n
  simp only [A373366, Nat.add_sub_cancel]

end A373366

/-! ## A373366.P7583814002454227681

`gcd(A000120(A352833(3*n+2)), A373377(n+1))`
-/

namespace A373366.P7583814002454227681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A352833 (3 * n + 2)).toNat) (A373377 (n + 1))

end

end A373366.P7583814002454227681

namespace A373366

/-- `gcd(A000120(A352833(3*n+2)), A373377(n+1))` -/
def P7583814002454227681.Spec : Prop :=
  ∀ n, (P7583814002454227681.a n : ℤ) = A373366 (n + 1)

end A373366

/-! ## A373366.P13745495823768766060

`gcd(A083345(n+1), A277890(A257609(n)))`
-/

namespace A373366.P13745495823768766060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083345 (n + 1)) (A277890 (A257609 n).toNat)

end

end A373366.P13745495823768766060

namespace A373366

/-- `gcd(A083345(n+1), A277890(A257609(n)))` -/
def P13745495823768766060.Spec : Prop :=
  ∀ n, (P13745495823768766060.a n : ℤ) = A373366 (n + 1)

end A373366

/-! ## A373366.P15698718844991518615

`gcd(A049990(A357644(n+1)), A373485(n+1))`
-/

namespace A373366.P15698718844991518615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049990 (A357644 (n + 1)).toNat) (A373485 (n + 1))

end

end A373366.P15698718844991518615

namespace A373366

/-- `gcd(A049990(A357644(n+1)), A373485(n+1))` -/
def P15698718844991518615.Spec : Prop :=
  ∀ n, (P15698718844991518615.a n : ℤ) = A373366 (n + 1)

end A373366

/-!
# A373367: a(n) is the greatest common divisor of A001414(n), A003415(n), and A276085(n).

The programs for A373367, there is no canonical definition to state claims against.
-/

/-! ## A373367.P11671728222294017214

`gcd(A373145(n+1), A373362(n+1))`
-/

namespace A373367.P11671728222294017214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A373145 (n + 1)) (A373362 (n + 1))

end

end A373367.P11671728222294017214

/-! ## A373367.P9984206779672452383

`gcd(A276085(n+1), A373364(n+1))`
-/

namespace A373367.P9984206779672452383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276085 (n + 1)) (A373364 (n + 1))

end

end A373367.P9984206779672452383

/-! ## A373367.P10829733137546035826

`A373362(A293448((n+1)²))/2`
-/

namespace A373367.P10829733137546035826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373362 (A293448 ((n + 1) ^ 2)).toNat : ℚ) / 2

end

end A373367.P10829733137546035826

/-! ## A373367.P7380180728446926592

`A373362(lt[A000700(n), A000203(n+1)])`
-/

namespace A373367.P7380180728446926592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373362 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373367.P7380180728446926592

/-!
# A373368: a(n) = gcd(n, A059975(n)), where A059975 is fully additive with a(p) = p-1.

The programs for A373368, the canonical program `A373368.P10076584005763956220` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373368 has offset 1).

The definition of A373368 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059975, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373368.P10076584005763956220

`gcd(n+1, A059975(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373368

/-- `gcd(n+1, A059975(n+1))` -/
def P10076584005763956220.Spec : Prop :=
  ∀ n, (P10076584005763956220.a n : ℤ) = A373368 (n + 1)

theorem P10076584005763956220.correct : P10076584005763956220.Spec := by
  intro n
  simp only [A373368, Nat.add_sub_cancel]

end A373368

/-! ## A373368.P4100013784742238472

`gcd(xor(n, -1), A341865(n+1))`
-/

namespace A373368.P4100013784742238472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A341865 (n + 1))

end

end A373368.P4100013784742238472

namespace A373368

/-- `gcd(xor(n, -1), A341865(n+1))` -/
def P4100013784742238472.Spec : Prop :=
  ∀ n, (P4100013784742238472.a n : ℤ) = A373368 (n + 1)

end A373368

/-! ## A373368.P4553996091069550781

`gcd(A071262(n), A341865(n+1))`
-/

namespace A373368.P4553996091069550781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071262 n) (A341865 (n + 1))

end

end A373368.P4553996091069550781

namespace A373368

/-- `gcd(A071262(n), A341865(n+1))` -/
def P4553996091069550781.Spec : Prop :=
  ∀ n, (P4553996091069550781.a n : ℤ) = A373368 (n + 1)

end A373368

/-! ## A373368.P12275855466318465570

`gcd(1-A275314(n+1), A000027(n+1))`
-/

namespace A373368.P12275855466318465570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A275314 (n + 1)) (A000027 (n + 1))

end

end A373368.P12275855466318465570

namespace A373368

/-- `gcd(1-A275314(n+1), A000027(n+1))` -/
def P12275855466318465570.Spec : Prop :=
  ∀ n, (P12275855466318465570.a n : ℤ) = A373368 (n + 1)

end A373368

/-! ## A373368.P2714279168077661825

`gcd(A000027(n+1), A023443(A275314(n+1)))`
-/

namespace A373368.P2714279168077661825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A023443 (A275314 (n + 1)).toNat)

end

end A373368.P2714279168077661825

namespace A373368

/-- `gcd(A000027(n+1), A023443(A275314(n+1)))` -/
def P2714279168077661825.Spec : Prop :=
  ∀ n, (P2714279168077661825.a n : ℤ) = A373368 (n + 1)

end A373368

/-! ## A373368.P5021388058104933784

`gcd(A059975(A131732(2*n)), A131732(2*n))`
-/

namespace A373368.P5021388058104933784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059975 (A131732 (2 * n)).toNat) (A131732 (2 * n))

end

end A373368.P5021388058104933784

namespace A373368

/-- `gcd(A059975(A131732(2*n)), A131732(2*n))` -/
def P5021388058104933784.Spec : Prop :=
  ∀ n, (P5021388058104933784.a n : ℤ) = A373368 (n + 1)

end A373368

/-!
# A373369: a(n) = gcd(A001414(n), A059975(n)), where A001414 and A059975 are fully additive with a(p) = p and a(p) = p-1, respectively.

The programs for A373369, the canonical program `A373369.P17143598669041720275` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373369 has offset 1).

The definition of A373369 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A059975, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373369.P17143598669041720275

`gcd(A001414(n+1), A059975(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373369

/-- `gcd(A001414(n+1), A059975(n+1))` -/
def P17143598669041720275.Spec : Prop :=
  ∀ n, (P17143598669041720275.a n : ℤ) = A373369 (n + 1)

theorem P17143598669041720275.correct : P17143598669041720275.Spec := by
  intro n
  simp only [A373369, Nat.add_sub_cancel]

end A373369

/-! ## A373369.P2444946314161968280

`gcd(∑{p}[n+1, #*val(n+1, #)], ∑{e}[n+1, #])`
-/

namespace A373369.P2444946314161968280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A373369.P2444946314161968280

namespace A373369

/-- `gcd(∑{p}[n+1, #*val(n+1, #)], ∑{e}[n+1, #])` -/
def P2444946314161968280.Spec : Prop :=
  ∀ n, (P2444946314161968280.a n : ℤ) = A373369 (n + 1)

end A373369

/-! ## A373369.P1226158917999804179

`A373381(A318885(n+1))`
-/

namespace A373369.P1226158917999804179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373381 (A318885 (n + 1)).toNat

end

end A373369.P1226158917999804179

namespace A373369

/-- `A373381(A318885(n+1))` -/
def P1226158917999804179.Spec : Prop :=
  ∀ n, P1226158917999804179.a n = A373369 (n + 1)

end A373369

/-! ## A373369.P16588499550048849748

`A373381(A290641(n+1))`
-/

namespace A373369.P16588499550048849748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373381 (A290641 (n + 1)).toNat

end

end A373369.P16588499550048849748

namespace A373369

/-- `A373381(A290641(n+1))` -/
def P16588499550048849748.Spec : Prop :=
  ∀ n, P16588499550048849748.a n = A373369 (n + 1)

end A373369

/-! ## A373369.P17794263569739875805

`A373381(A064988(n+1))`
-/

namespace A373369.P17794263569739875805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373381 (A064988 (n + 1)).toNat

end

end A373369.P17794263569739875805

namespace A373369

/-- `A373381(A064988(n+1))` -/
def P17794263569739875805.Spec : Prop :=
  ∀ n, P17794263569739875805.a n = A373369 (n + 1)

end A373369

/-! ## A373369.P18268534859200716099

`A373381(A064554(n+1)²)/2`
-/

namespace A373369.P18268534859200716099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373381 (A064554 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A373369.P18268534859200716099

namespace A373369

/-- `A373381(A064554(n+1)²)/2` -/
def P18268534859200716099.Spec : Prop :=
  ∀ n, P18268534859200716099.a n = (A373369 (n + 1) : ℚ)

end A373369

/-!
# A373370: a(n) = gcd(bigomega(n), A064097(n)), where bigomega is number of prime factors with repetition, and A064097 is a quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

The programs for A373370, the canonical program `A373370.P12452585226732295162` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373370 has offset 1).

The definition of A373370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373370.P12452585226732295162

`gcd(A001222(n+1), A064097(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A373370

/-- `gcd(A001222(n+1), A064097(n+1))` -/
def P12452585226732295162.Spec : Prop :=
  ∀ n, (P12452585226732295162.a n : ℤ) = A373370 (n + 1)

theorem P12452585226732295162.correct : P12452585226732295162.Spec := by
  intro n
  simp only [A373370, Nat.add_sub_cancel]

end A373370

/-! ## A373370.P4343808384006893838

`gcd(∑[A334090(n+1)], ∑{e}[n+1, #])`
-/

namespace A373370.P4343808384006893838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A373370.P4343808384006893838

namespace A373370

/-- `gcd(∑[A334090(n+1)], ∑{e}[n+1, #])` -/
def P4343808384006893838.Spec : Prop :=
  ∀ n, (P4343808384006893838.a n : ℤ) = A373370 (n + 1)

end A373370

/-! ## A373370.P18268258435798039634

`and(A113860(n), A373381(n+1))`
-/

namespace A373370.P18268258435798039634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113860 n) (A373381 (n + 1))

end

end A373370.P18268258435798039634

namespace A373370

/-- `and(A113860(n), A373381(n+1))` -/
def P18268258435798039634.Spec : Prop :=
  ∀ n, P18268258435798039634.a n = A373370 (n + 1)

end A373370

/-! ## A373370.P12525011202519049750

`gcd(A323902(n+1), A334615(n+2))`
-/

namespace A373370.P12525011202519049750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323902 (n + 1)) (A334615 (n + 2))

end

end A373370.P12525011202519049750

namespace A373370

/-- `gcd(A323902(n+1), A334615(n+2))` -/
def P12525011202519049750.Spec : Prop :=
  ∀ n, (P12525011202519049750.a n : ℤ) = A373370 (n + 1)

end A373370

/-! ## A373370.P1380021678849734000

`and(A145988(n+1), A373381(n+1))`
-/

namespace A373370.P1380021678849734000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145988 (n + 1)) (A373381 (n + 1))

end

end A373370.P1380021678849734000

namespace A373370

/-- `and(A145988(n+1), A373381(n+1))` -/
def P1380021678849734000.Spec : Prop :=
  ∀ n, P1380021678849734000.a n = A373370 (n + 1)

end A373370

/-!
# A373371: a(n) = 1 if the sum of prime factors with repetition is a multiple of 3, otherwise 0.

The programs for A373371, the canonical program `A373371.P4434712578752274140` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373371 has offset 1).

The definition of A373371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373371.P4434712578752274140

`A359430((n+1)/A038500(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A373371

/-- `A359430((n+1)/A038500(n+1))` -/
def P4434712578752274140.Spec : Prop :=
  ∀ n, P4434712578752274140.a n = A373371 (n + 1)

theorem P4434712578752274140.correct : P4434712578752274140.Spec := by
  intro n
  simp only [A373371, Nat.add_sub_cancel]

end A373371

/-! ## A373371.P5037985782310238469

`A369658((n+1)/A038500(n+1))`
-/

namespace A373371.P5037985782310238469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A373371.P5037985782310238469

namespace A373371

/-- `A369658((n+1)/A038500(n+1))` -/
def P5037985782310238469.Spec : Prop :=
  ∀ n, P5037985782310238469.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P9481772247278085180

`char[A289142(n+1)-1]`
-/

namespace A373371.P9481772247278085180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373371.P9481772247278085180

namespace A373371

/-- `char[A289142(n+1)-1]` -/
def P9481772247278085180.Spec : Prop :=
  ∀ n, (P9481772247278085180.a n : ℤ) = A373371 (n + 1)

end A373371

/-! ## A373371.P12709632808393060761

`A373477(3*3*(n+1))`
-/

namespace A373371.P12709632808393060761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373477 (3 * (3 * (n + 1)))

end

end A373371.P12709632808393060761

namespace A373371

/-- `A373477(3*3*(n+1))` -/
def P12709632808393060761.Spec : Prop :=
  ∀ n, P12709632808393060761.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P8971541744785258536

`C(A001414(3*(n+1))+2, 2)%3`
-/

namespace A373371.P8971541744785258536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001414 (3 * (n + 1)) + 2).toNat 2 % 3

end

end A373371.P8971541744785258536

namespace A373371

/-- `C(A001414(3*(n+1))+2, 2)%3` -/
def P8971541744785258536.Spec : Prop :=
  ∀ n, (P8971541744785258536.a n : ℤ) = A373371 (n + 1)

end A373371

/-! ## A373371.P1832906581988484072

`A058331(∑{p}[n+1, #*val(n+1, #)])%3`
-/

namespace A373371.P1832906581988484072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058331 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p)) 3

end

end A373371.P1832906581988484072

namespace A373371

/-- `A058331(∑{p}[n+1, #*val(n+1, #)])%3` -/
def P1832906581988484072.Spec : Prop :=
  ∀ n, P1832906581988484072.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P9161482831544628868

`A079978(A001414(n+1))`
-/

namespace A373371.P9161482831544628868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A001414 (n + 1)).toNat

end

end A373371.P9161482831544628868

namespace A373371

/-- `A079978(A001414(n+1))` -/
def P9161482831544628868.Spec : Prop :=
  ∀ n, P9161482831544628868.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P8800210555490220675

`A079978(A118503(n+1))`
-/

namespace A373371.P8800210555490220675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A118503 (n + 1)).toNat

end

end A373371.P8800210555490220675

namespace A373371

/-- `A079978(A118503(n+1))` -/
def P8800210555490220675.Spec : Prop :=
  ∀ n, P8800210555490220675.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P15737287973819535081

`A369643(A038502(n+1))`
-/

namespace A373371.P15737287973819535081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369643 (A038502 (n + 1)).toNat

end

end A373371.P15737287973819535081

namespace A373371

/-- `A369643(A038502(n+1))` -/
def P15737287973819535081.Spec : Prop :=
  ∀ n, P15737287973819535081.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P7379246933003611242

`A177702(A001414(2*(n+1)))-1`
-/

namespace A373371.P7379246933003611242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (A001414 (2 * (n + 1))).toNat - 1

end

end A373371.P7379246933003611242

namespace A373371

/-- `A177702(A001414(2*(n+1)))-1` -/
def P7379246933003611242.Spec : Prop :=
  ∀ n, P7379246933003611242.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P3185449733569644518

`A369658(A038502(2*(n+1))/2)`
-/

namespace A373371.P3185449733569644518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 (SequenceMachineLib.roundAway ((A038502 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A373371.P3185449733569644518

namespace A373371

/-- `A369658(A038502(2*(n+1))/2)` -/
def P3185449733569644518.Spec : Prop :=
  ∀ n, P3185449733569644518.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P12724689939114731280

`A369658(A038502(n+1)²)`
-/

namespace A373371.P12724689939114731280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 (A038502 (n + 1) ^ 2).toNat

end

end A373371.P12724689939114731280

namespace A373371

/-- `A369658(A038502(n+1)²)` -/
def P12724689939114731280.Spec : Prop :=
  ∀ n, P12724689939114731280.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P17686606045910291773

`A014018(A074375(n+1))`
-/

namespace A373371.P17686606045910291773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014018 (A074375 (n + 1)).toNat

end

end A373371.P17686606045910291773

namespace A373371

/-- `A014018(A074375(n+1))` -/
def P17686606045910291773.Spec : Prop :=
  ∀ n, P17686606045910291773.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P17933986310929550424

`A131255(A074374(n+1))`
-/

namespace A373371.P17933986310929550424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131255 (A074374 (n + 1)).toNat

end

end A373371.P17933986310929550424

namespace A373371

/-- `A131255(A074374(n+1))` -/
def P17933986310929550424.Spec : Prop :=
  ∀ n, P17933986310929550424.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P14654773797609611110

`A374222(A169827(n+1))`
-/

namespace A373371.P14654773797609611110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374222 (A169827 (n + 1)).toNat

end

end A373371.P14654773797609611110

namespace A373371

/-- `A374222(A169827(n+1))` -/
def P14654773797609611110.Spec : Prop :=
  ∀ n, P14654773797609611110.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P13251595378511810507

`A014018(A074373(n+1))`
-/

namespace A373371.P13251595378511810507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014018 (A074373 (n + 1)).toNat

end

end A373371.P13251595378511810507

namespace A373371

/-- `A014018(A074373(n+1))` -/
def P13251595378511810507.Spec : Prop :=
  ∀ n, P13251595378511810507.a n = A373371 (n + 1)

end A373371

/-! ## A373371.P7514427935434601481

`A374222(A168650(n+1))`
-/

namespace A373371.P7514427935434601481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374222 (A168650 (n + 1)).toNat

end

end A373371.P7514427935434601481

namespace A373371

/-- `A374222(A168650(n+1))` -/
def P7514427935434601481.Spec : Prop :=
  ∀ n, P7514427935434601481.a n = A373371 (n + 1)

end A373371

/-!
# A373372: a(n) = 1 if A001414(n) and A276085(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition and A276085 is the primorial base log-function.

The programs for A373372, the canonical program `A373372.P1234123365246061466` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373372 has offset 1).

The definition of A373372 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373372.P1234123365246061466

`A373371(n+1)*A372573(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A373372

/-- `A373371(n+1)*A372573(n+1)` -/
def P1234123365246061466.Spec : Prop :=
  ∀ n, P1234123365246061466.a n = A373372 (n + 1)

theorem P1234123365246061466.correct : P1234123365246061466.Spec := by
  intro n
  simp only [A373372, Nat.add_sub_cancel]

end A373372

/-! ## A373372.P9131328465616568455

`A079978(A373362(n+1))`
-/

namespace A373372.P9131328465616568455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373362 (n + 1)).toNat

end

end A373372.P9131328465616568455

namespace A373372

/-- `A079978(A373362(n+1))` -/
def P9131328465616568455.Spec : Prop :=
  ∀ n, P9131328465616568455.a n = A373372 (n + 1)

end A373372

/-! ## A373372.P10231986509016151511

`A000038(n)^A010872(A373362(n+1))`
-/

namespace A373372.P10231986509016151511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A010872 (A373362 (n + 1)).toNat : ℤ)

end

end A373372.P10231986509016151511

namespace A373372

/-- `A000038(n)^A010872(A373362(n+1))` -/
def P10231986509016151511.Spec : Prop :=
  ∀ n, P10231986509016151511.a n = (A373372 (n + 1) : ℚ)

end A373372

/-! ## A373372.P13201427301168459318

`1-A010872(A373362(n+1)²)`
-/

namespace A373372.P13201427301168459318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010872 (A373362 (n + 1) ^ 2).toNat

end

end A373372.P13201427301168459318

namespace A373372

/-- `1-A010872(A373362(n+1)²)` -/
def P13201427301168459318.Spec : Prop :=
  ∀ n, P13201427301168459318.a n = A373372 (n + 1)

end A373372

/-! ## A373372.P2582201246627307962

`A010892(2*A373362(n+1)²)`
-/

namespace A373372.P2582201246627307962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * A373362 (n + 1) ^ 2).toNat

end

end A373372.P2582201246627307962

namespace A373372

/-- `A010892(2*A373362(n+1)²)` -/
def P2582201246627307962.Spec : Prop :=
  ∀ n, P2582201246627307962.a n = A373372 (n + 1)

end A373372

/-! ## A373372.P2724286966302569667

`A374119(A276147(n+1)²)`
-/

namespace A373372.P2724286966302569667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374119 (A276147 (n + 1) ^ 2).toNat

end

end A373372.P2724286966302569667

namespace A373372

/-- `A374119(A276147(n+1)²)` -/
def P2724286966302569667.Spec : Prop :=
  ∀ n, P2724286966302569667.a n = A373372 (n + 1)

end A373372

/-!
# A373373: Numbers k for which both A001414(k) and A276085(k) are multiples of 3, where A001414 is the sum of prime factors with repetition and A276085 is the primorial base log-function.

The programs for A373373, the canonical program `A373373.P12422209471877162310` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373373 has offset 1).

The definition of A373373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373373.P12422209471877162310

`record[(n+1)*A373372(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A373373

/-- `record[(n+1)*A373372(n+1)]` -/
def P12422209471877162310.Spec : Prop :=
  ∀ n, P12422209471877162310.a n = A373373 (n + 1)

theorem P12422209471877162310.correct : P12422209471877162310.Spec := by
  intro n
  simp only [A373373, Nat.add_sub_cancel]

end A373373

/-! ## A373373.P11977089281237164882

`eq[1, A373372(n+1)]+1`
-/

namespace A373373.P11977089281237164882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373373.P11977089281237164882

namespace A373373

/-- `eq[1, A373372(n+1)]+1` -/
def P11977089281237164882.Spec : Prop :=
  ∀ n, (P11977089281237164882.a n : ℤ) = A373373 (n + 1)

end A373373

/-! ## A373373.P17321304321144241460

`filter[A289142(n+1), A372573(#)]`
-/

namespace A373373.P17321304321144241460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A373373.P17321304321144241460

namespace A373373

/-- `filter[A289142(n+1), A372573(#)]` -/
def P17321304321144241460.Spec : Prop :=
  ∀ n, P17321304321144241460.a n = A373373 (n + 1)

end A373373

/-! ## A373373.P5013180537526479693

`filter[A289142(n+1), A373372(#)]`
-/

namespace A373373.P5013180537526479693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373372 (f1 j).toNat = 1) n)

end

end A373373.P5013180537526479693

namespace A373373

/-- `filter[A289142(n+1), A373372(#)]` -/
def P5013180537526479693.Spec : Prop :=
  ∀ n, P5013180537526479693.a n = A373373 (n + 1)

end A373373

/-! ## A373373.P9714604461906370745

`filter[A264828(n+1), A373372(#)]`
-/

namespace A373373.P9714604461906370745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373372 (f1 j).toNat = 1) n)

end

end A373373.P9714604461906370745

namespace A373373

/-- `filter[A264828(n+1), A373372(#)]` -/
def P9714604461906370745.Spec : Prop :=
  ∀ n, P9714604461906370745.a n = A373373 (n + 1)

end A373373

/-! ## A373373.P3780455952103938106

`filter[A339746(n+1), A373371(#)]`
-/

namespace A373373.P3780455952103938106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A373373.P3780455952103938106

namespace A373373

/-- `filter[A339746(n+1), A373371(#)]` -/
def P3780455952103938106.Spec : Prop :=
  ∀ n, P3780455952103938106.a n = A373373 (n + 1)

end A373373

/-! ## A373373.P9787105160250201928

`filter[A339746(n+1), A373372(#)]`
-/

namespace A373373.P9787105160250201928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373372 (f1 j).toNat = 1) n)

end

end A373373.P9787105160250201928

namespace A373373

/-- `filter[A339746(n+1), A373372(#)]` -/
def P9787105160250201928.Spec : Prop :=
  ∀ n, P9787105160250201928.a n = A373373 (n + 1)

end A373373

/-! ## A373373.P14618644910608336846

`∩[A289142(n+1), A339746(n+1)]`
-/

namespace A373373.P14618644910608336846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373373.P14618644910608336846

namespace A373373

/-- `∩[A289142(n+1), A339746(n+1)]` -/
def P14618644910608336846.Spec : Prop :=
  ∀ n, (P14618644910608336846.a n : ℤ) = A373373 (n + 1)

end A373373

/-! ## A373373.P7010056614952625884

`filter[A347202(n+1), A373372(#)]`
-/

namespace A373373.P7010056614952625884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373372 (f1 j).toNat = 1) n)

end

end A373373.P7010056614952625884

namespace A373373

/-- `filter[A347202(n+1), A373372(#)]` -/
def P7010056614952625884.Spec : Prop :=
  ∀ n, P7010056614952625884.a n = A373373 (n + 1)

end A373373

/-! ## A373373.P12986115042350921415

`filter[A134376(n+1), A373372(#)]`
-/

namespace A373373.P12986115042350921415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373372 (f1 j).toNat = 1) n)

end

end A373373.P12986115042350921415

namespace A373373

/-- `filter[A134376(n+1), A373372(#)]` -/
def P12986115042350921415.Spec : Prop :=
  ∀ n, P12986115042350921415.a n = A373373 (n + 1)

end A373373

/-! ## A373373.P3778563379385361396

`filter[A257586(n+1), A373372(#)]`
-/

namespace A373373.P3778563379385361396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373372 (f1 j).toNat = 1) n)

end

end A373373.P3778563379385361396

namespace A373373

/-- `filter[A257586(n+1), A373372(#)]` -/
def P3778563379385361396.Spec : Prop :=
  ∀ n, P3778563379385361396.a n = A373373 (n + 1)

end A373373

/-!
# A373374: a(n) = 1 if both A001414(n) and A003415(n) are even, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

The programs for A373374, the canonical program `A373374.P7659164950999126342` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373374 has offset 1).

The definition of A373374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373364, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373374.P7659164950999126342

`A059841(A373364(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A373374

/-- `A059841(A373364(n+1))` -/
def P7659164950999126342.Spec : Prop :=
  ∀ n, P7659164950999126342.a n = A373374 (n + 1)

theorem P7659164950999126342.correct : P7659164950999126342.Spec := by
  intro n
  simp only [A373374, Nat.add_sub_cancel]

end A373374

/-! ## A373374.P14071996541365168440

`A356163(n+1)*A358680(n+1)`
-/

namespace A373374.P14071996541365168440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (n + 1) * A358680 (n + 1)

end

end A373374.P14071996541365168440

namespace A373374

/-- `A356163(n+1)*A358680(n+1)` -/
def P14071996541365168440.Spec : Prop :=
  ∀ n, P14071996541365168440.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P1864498023698990391

`A358680(2*A373364(n+1))`
-/

namespace A373374.P1864498023698990391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (2 * A373364 (n + 1)).toNat

end

end A373374.P1864498023698990391

namespace A373374

/-- `A358680(2*A373364(n+1))` -/
def P1864498023698990391.Spec : Prop :=
  ∀ n, P1864498023698990391.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P12297590809183729486

`and(A005286(n), A356163(n+1))`
-/

namespace A373374.P12297590809183729486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005286 n) (A356163 (n + 1))

end

end A373374.P12297590809183729486

namespace A373374

/-- `and(A005286(n), A356163(n+1))` -/
def P12297590809183729486.Spec : Prop :=
  ∀ n, P12297590809183729486.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P5798093514573613520

`and(A019303(n), A356163(n+1))`
-/

namespace A373374.P5798093514573613520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019303 n) (A356163 (n + 1))

end

end A373374.P5798093514573613520

namespace A373374

/-- `and(A019303(n), A356163(n+1))` -/
def P5798093514573613520.Spec : Prop :=
  ∀ n, P5798093514573613520.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P12475060881336728627

`and(A027378(n), A356163(n+1))`
-/

namespace A373374.P12475060881336728627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027378 n) (A356163 (n + 1))

end

end A373374.P12475060881336728627

namespace A373374

/-- `and(A027378(n), A356163(n+1))` -/
def P12475060881336728627.Spec : Prop :=
  ∀ n, P12475060881336728627.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P16810858204319831007

`and(A035104(n), A356163(n+1))`
-/

namespace A373374.P16810858204319831007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035104 n) (A356163 (n + 1))

end

end A373374.P16810858204319831007

namespace A373374

/-- `and(A035104(n), A356163(n+1))` -/
def P16810858204319831007.Spec : Prop :=
  ∀ n, P16810858204319831007.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P13853641252975880209

`and(A057979(n), A356163(n+1))`
-/

namespace A373374.P13853641252975880209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057979 n) (A356163 (n + 1))

end

end A373374.P13853641252975880209

namespace A373374

/-- `and(A057979(n), A356163(n+1))` -/
def P13853641252975880209.Spec : Prop :=
  ∀ n, P13853641252975880209.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P953851961328779309

`and(A100119(n), A356163(n+1))`
-/

namespace A373374.P953851961328779309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100119 n) (A356163 (n + 1))

end

end A373374.P953851961328779309

namespace A373374

/-- `and(A100119(n), A356163(n+1))` -/
def P953851961328779309.Spec : Prop :=
  ∀ n, P953851961328779309.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P9127345786085654414

`and(A131379(n), A356163(n+1))`
-/

namespace A373374.P9127345786085654414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131379 n) (A356163 (n + 1))

end

end A373374.P9127345786085654414

namespace A373374

/-- `and(A131379(n), A356163(n+1))` -/
def P9127345786085654414.Spec : Prop :=
  ∀ n, P9127345786085654414.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P501141912487390301

`and(A136395(n), A356163(n+1))`
-/

namespace A373374.P501141912487390301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136395 n) (A356163 (n + 1))

end

end A373374.P501141912487390301

namespace A373374

/-- `and(A136395(n), A356163(n+1))` -/
def P501141912487390301.Spec : Prop :=
  ∀ n, P501141912487390301.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P14644220493786499329

`and(A160769(n), A356163(n+1))`
-/

namespace A373374.P14644220493786499329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160769 n) (A356163 (n + 1))

end

end A373374.P14644220493786499329

namespace A373374

/-- `and(A160769(n), A356163(n+1))` -/
def P14644220493786499329.Spec : Prop :=
  ∀ n, P14644220493786499329.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P13620409008882427064

`and(A160841(n), A356163(n+1))`
-/

namespace A373374.P13620409008882427064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160841 n) (A356163 (n + 1))

end

end A373374.P13620409008882427064

namespace A373374

/-- `and(A160841(n), A356163(n+1))` -/
def P13620409008882427064.Spec : Prop :=
  ∀ n, P13620409008882427064.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P15586691391322247145

`and(A160863(n), A356163(n+1))`
-/

namespace A373374.P15586691391322247145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160863 n) (A356163 (n + 1))

end

end A373374.P15586691391322247145

namespace A373374

/-- `and(A160863(n), A356163(n+1))` -/
def P15586691391322247145.Spec : Prop :=
  ∀ n, P15586691391322247145.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P4357603626493047685

`and(A165355(n), A356163(n+1))`
-/

namespace A373374.P4357603626493047685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165355 n) (A356163 (n + 1))

end

end A373374.P4357603626493047685

namespace A373374

/-- `and(A165355(n), A356163(n+1))` -/
def P4357603626493047685.Spec : Prop :=
  ∀ n, P4357603626493047685.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P14951025557399093411

`and(A166445(n), A356163(n+1))`
-/

namespace A373374.P14951025557399093411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A166445 n) (A356163 (n + 1))

end

end A373374.P14951025557399093411

namespace A373374

/-- `and(A166445(n), A356163(n+1))` -/
def P14951025557399093411.Spec : Prop :=
  ∀ n, P14951025557399093411.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P16197088975173426899

`and(A174029(n), A356163(n+1))`
-/

namespace A373374.P16197088975173426899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174029 n) (A356163 (n + 1))

end

end A373374.P16197088975173426899

namespace A373374

/-- `and(A174029(n), A356163(n+1))` -/
def P16197088975173426899.Spec : Prop :=
  ∀ n, P16197088975173426899.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P13295315716762608601

`∑{d}[n+1, A092152(#)*A369257((n+1)/#)]`
-/

namespace A373374.P13295315716762608601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092152 d * A369257 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373374.P13295315716762608601

namespace A373374

/-- `∑{d}[n+1, A092152(#)*A369257((n+1)/#)]` -/
def P13295315716762608601.Spec : Prop :=
  ∀ n, P13295315716762608601.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P11217057107648396966

`A358680(A373364(n+1)+A373364(n+1))`
-/

namespace A373374.P11217057107648396966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A373364 (n + 1) + A373364 (n + 1)).toNat

end

end A373374.P11217057107648396966

namespace A373374

/-- `A358680(A373364(n+1)+A373364(n+1))` -/
def P11217057107648396966.Spec : Prop :=
  ∀ n, P11217057107648396966.a n = A373374 (n + 1)

end A373374

/-! ## A373374.P4050223336031578837

`and(A123901(n), A356163(n+1))`
-/

namespace A373374.P4050223336031578837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123901 n) (A356163 (n + 1))

end

end A373374.P4050223336031578837

namespace A373374

/-- `and(A123901(n), A356163(n+1))` -/
def P4050223336031578837.Spec : Prop :=
  ∀ n, P4050223336031578837.a n = A373374 (n + 1)

end A373374

/-!
# A373375: Numbers whose sum of prime factors (with repetition, A001414) and arithmetic derivative (A003415) are both even.

The programs for A373375, the canonical program `A373375.P9154301366979022863` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373375 has offset 1).

The definition of A373375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373375.P2478361476104088780

`record[(n+1)*A373374(n+1)]`
-/

namespace A373375.P2478361476104088780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373375.P2478361476104088780

namespace A373375

/-- `record[(n+1)*A373374(n+1)]` -/
def P2478361476104088780.Spec : Prop :=
  ∀ n, P2478361476104088780.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P9952119051703602011

`lt[A359150(n+1), A373374(n+1)]+1`
-/

namespace A373375.P9952119051703602011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A373375.P9952119051703602011

namespace A373375

/-- `lt[A359150(n+1), A373374(n+1)]+1` -/
def P9952119051703602011.Spec : Prop :=
  ∀ n, (P9952119051703602011.a n : ℤ) = A373375 (n + 1)

end A373375

/-! ## A373375.P9154301366979022863

`filter[A036349(n+1), A152822(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373375

/-- `filter[A036349(n+1), A152822(#)]` -/
def P9154301366979022863.Spec : Prop :=
  ∀ n, P9154301366979022863.a n = A373375 (n + 1)

theorem P9154301366979022863.correct : P9154301366979022863.Spec := by
  intro n
  simp only [A373375, Nat.add_sub_cancel]

end A373375

/-! ## A373375.P9820972943124444197

`filter[A036349(n+1), A358680(#)]`
-/

namespace A373375.P9820972943124444197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A373375.P9820972943124444197

namespace A373375

/-- `filter[A036349(n+1), A358680(#)]` -/
def P9820972943124444197.Spec : Prop :=
  ∀ n, P9820972943124444197.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P1129462784962320811

`filter[A036349(n+1), A373374(#)]`
-/

namespace A373375.P1129462784962320811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P1129462784962320811

namespace A373375

/-- `filter[A036349(n+1), A373374(#)]` -/
def P1129462784962320811.Spec : Prop :=
  ∀ n, P1129462784962320811.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P2479881563425855999

`filter[A235992(n+2), A356163(#)]`
-/

namespace A373375.P2479881563425855999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A373375.P2479881563425855999

namespace A373375

/-- `filter[A235992(n+2), A356163(#)]` -/
def P2479881563425855999.Spec : Prop :=
  ∀ n, P2479881563425855999.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P15653516563528185728

`filter[A235992(n+2), A373374(#)]`
-/

namespace A373375.P15653516563528185728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P15653516563528185728

namespace A373375

/-- `filter[A235992(n+2), A373374(#)]` -/
def P15653516563528185728.Spec : Prop :=
  ∀ n, P15653516563528185728.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P10790567853822207522

`∩[A036349(n+1), A235992(n+1)]`
-/

namespace A373375.P10790567853822207522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373375.P10790567853822207522

namespace A373375

/-- `∩[A036349(n+1), A235992(n+1)]` -/
def P10790567853822207522.Spec : Prop :=
  ∀ n, (P10790567853822207522.a n : ℤ) = A373375 (n + 1)

end A373375

/-! ## A373375.P10166826671539974953

`filter[A018252(n+1), A373374(#)]`
-/

namespace A373375.P10166826671539974953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P10166826671539974953

namespace A373375

/-- `filter[A018252(n+1), A373374(#)]` -/
def P10166826671539974953.Spec : Prop :=
  ∀ n, P10166826671539974953.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P7954690103371953439

`filter[A141468(n+2), A373374(#)]`
-/

namespace A373375.P7954690103371953439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P7954690103371953439

namespace A373375

/-- `filter[A141468(n+2), A373374(#)]` -/
def P7954690103371953439.Spec : Prop :=
  ∀ n, P7954690103371953439.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P14912959173615533778

`filter[A222307(2*n+1), A373374(#)]`
-/

namespace A373375.P14912959173615533778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P14912959173615533778

namespace A373375

/-- `filter[A222307(2*n+1), A373374(#)]` -/
def P14912959173615533778.Spec : Prop :=
  ∀ n, P14912959173615533778.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P3858031926593457335

`filter[A174891(n+1), A373374(#)]`
-/

namespace A373375.P3858031926593457335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P3858031926593457335

namespace A373375

/-- `filter[A174891(n+1), A373374(#)]` -/
def P3858031926593457335.Spec : Prop :=
  ∀ n, P3858031926593457335.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P9030977890520762978

`filter[A347202(n+1), A373374(#)]`
-/

namespace A373375.P9030977890520762978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P9030977890520762978

namespace A373375

/-- `filter[A347202(n+1), A373374(#)]` -/
def P9030977890520762978.Spec : Prop :=
  ∀ n, P9030977890520762978.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P12738060406663871129

`filter[A134376(n+1), A373374(#)]`
-/

namespace A373375.P12738060406663871129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P12738060406663871129

namespace A373375

/-- `filter[A134376(n+1), A373374(#)]` -/
def P12738060406663871129.Spec : Prop :=
  ∀ n, P12738060406663871129.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P606759998633817135

`filter[A107750(n+1), A373374(#)]`
-/

namespace A373375.P606759998633817135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P606759998633817135

namespace A373375

/-- `filter[A107750(n+1), A373374(#)]` -/
def P606759998633817135.Spec : Prop :=
  ∀ n, P606759998633817135.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P15541955710697148977

`filter[A042965(n+2), A356163(#)]`
-/

namespace A373375.P15541955710697148977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A373375.P15541955710697148977

namespace A373375

/-- `filter[A042965(n+2), A356163(#)]` -/
def P15541955710697148977.Spec : Prop :=
  ∀ n, P15541955710697148977.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P14219795980309307479

`filter[A042965(n+2), A373374(#)]`
-/

namespace A373375.P14219795980309307479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P14219795980309307479

namespace A373375

/-- `filter[A042965(n+2), A373374(#)]` -/
def P14219795980309307479.Spec : Prop :=
  ∀ n, P14219795980309307479.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P7085039669964497538

`∩[A036349(n+1), A042965(n+1)]`
-/

namespace A373375.P7085039669964497538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373375.P7085039669964497538

namespace A373375

/-- `∩[A036349(n+1), A042965(n+1)]` -/
def P7085039669964497538.Spec : Prop :=
  ∀ n, (P7085039669964497538.a n : ℤ) = A373375 (n + 1)

end A373375

/-! ## A373375.P16743660851823320981

`filter[A065090(n+1), A373374(#)]`
-/

namespace A373375.P16743660851823320981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P16743660851823320981

namespace A373375

/-- `filter[A065090(n+1), A373374(#)]` -/
def P16743660851823320981.Spec : Prop :=
  ∀ n, P16743660851823320981.a n = A373375 (n + 1)

end A373375

/-! ## A373375.P4145650947100214044

`filter[A171581(n+1), A373374(#)]`
-/

namespace A373375.P4145650947100214044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A373375.P4145650947100214044

namespace A373375

/-- `filter[A171581(n+1), A373374(#)]` -/
def P4145650947100214044.Spec : Prop :=
  ∀ n, P4145650947100214044.a n = A373375 (n + 1)

end A373375

/-!
# A373376: Numbers k such that gcd(A001414(k), A003415(k)) is odd, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

The programs for A373376, the canonical program `A373376.P10229871634249009273` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373376 has offset 1).

The definition of A373376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373376.P10229871634249009273

`∪[A335657(n+1), A016825(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A373376

/-- `∪[A335657(n+1), A016825(n)]` -/
def P10229871634249009273.Spec : Prop :=
  ∀ n, (P10229871634249009273.a n : ℤ) = A373376 (n + 1)

theorem P10229871634249009273.correct : P10229871634249009273.Spec := by
  intro n
  simp only [A373376, Nat.add_sub_cancel]

end A373376

/-! ## A373376.P4818793907770306799

`∪[A036348(n+1), A235991(n+1)]`
-/

namespace A373376.P4818793907770306799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P4818793907770306799

namespace A373376

/-- `∪[A036348(n+1), A235991(n+1)]` -/
def P4818793907770306799.Spec : Prop :=
  ∀ n, (P4818793907770306799.a n : ℤ) = A373376 (n + 1)

end A373376

/-! ## A373376.P5741705323630202846

`∪[A036350(n+1), A235991(n+1)]`
-/

namespace A373376.P5741705323630202846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P5741705323630202846

namespace A373376

/-- `∪[A036350(n+1), A235991(n+1)]` -/
def P5741705323630202846.Spec : Prop :=
  ∀ n, (P5741705323630202846.a n : ℤ) = A373376 (n + 1)

end A373376

/-! ## A373376.P3736142213764817150

`∪[A036348(n+1), A359373(n+1)]`
-/

namespace A373376.P3736142213764817150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P3736142213764817150

namespace A373376

/-- `∪[A036348(n+1), A359373(n+1)]` -/
def P3736142213764817150.Spec : Prop :=
  ∀ n, (P3736142213764817150.a n : ℤ) = A373376 (n + 1)

end A373376

/-! ## A373376.P10300216636560756453

`∪[A036350(n+1), A359373(n+1)]`
-/

namespace A373376.P10300216636560756453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P10300216636560756453

namespace A373376

/-- `∪[A036350(n+1), A359373(n+1)]` -/
def P10300216636560756453.Spec : Prop :=
  ∀ n, (P10300216636560756453.a n : ℤ) = A373376 (n + 1)

end A373376

/-! ## A373376.P10908107900107374705

`∪[A235991(n+1), A335657(n+1)]`
-/

namespace A373376.P10908107900107374705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P10908107900107374705

namespace A373376

/-- `∪[A235991(n+1), A335657(n+1)]` -/
def P10908107900107374705.Spec : Prop :=
  ∀ n, (P10908107900107374705.a n : ℤ) = A373376 (n + 1)

end A373376

/-! ## A373376.P5177787531262791907

`∪[A335657(n+1), A359373(n+1)]`
-/

namespace A373376.P5177787531262791907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P5177787531262791907

namespace A373376

/-- `∪[A335657(n+1), A359373(n+1)]` -/
def P5177787531262791907.Spec : Prop :=
  ∀ n, (P5177787531262791907.a n : ℤ) = A373376 (n + 1)

end A373376

/-!
# A373377: a(n) = gcd(A059975(n), A083345(n)), where A059975 is fully additive with a(p) = p-1, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

The programs for A373377, the canonical program `A373377.P8579628552957542061` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373377 has offset 1).

The definition of A373377 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059975, A083345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373377.P8579628552957542061

`gcd(A059975(n+1), A083345(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373377

/-- `gcd(A059975(n+1), A083345(n+1))` -/
def P8579628552957542061.Spec : Prop :=
  ∀ n, (P8579628552957542061.a n : ℤ) = A373377 (n + 1)

theorem P8579628552957542061.correct : P8579628552957542061.Spec := by
  intro n
  simp only [A373377, Nat.add_sub_cancel]

end A373377

/-! ## A373377.P15043113733419953680

`gcd(∑{d}[n+1, #*A369455((n+1)/#)], A373378(n+1))`
-/

namespace A373377.P15043113733419953680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A369455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) (A373378 (n + 1))

end

end A373377.P15043113733419953680

namespace A373377

/-- `gcd(∑{d}[n+1, #*A369455((n+1)/#)], A373378(n+1))` -/
def P15043113733419953680.Spec : Prop :=
  ∀ n, (P15043113733419953680.a n : ℤ) = A373377 (n + 1)

end A373377

/-! ## A373377.P15462639257183194302

`gcd(A367098(A346401(n+3)), A373378(n+1))`
-/

namespace A373377.P15462639257183194302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A367098 (A346401 (n + 3)).toNat) (A373378 (n + 1))

end

end A373377.P15462639257183194302

namespace A373377

/-- `gcd(A367098(A346401(n+3)), A373378(n+1))` -/
def P15462639257183194302.Spec : Prop :=
  ∀ n, (P15462639257183194302.a n : ℤ) = A373377 (n + 1)

end A373377

/-! ## A373377.P2454932726955214505

`gcd(A007590(A106684(n)), A083345(n+1))`
-/

namespace A373377.P2454932726955214505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007590 (A106684 n).toNat) (A083345 (n + 1))

end

end A373377.P2454932726955214505

namespace A373377

/-- `gcd(A007590(A106684(n)), A083345(n+1))` -/
def P2454932726955214505.Spec : Prop :=
  ∀ n, (P2454932726955214505.a n : ℤ) = A373377 (n + 1)

end A373377

/-!
# A373378: a(n) = gcd(A003415(n), A059975(n)), where A003415 is the arithmetic derivative and A059975 is fully additive with a(p) = p-1.

The programs for A373378, the canonical program `A373378.P10527804260792404236` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373378 has offset 1).

The definition of A373378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A059975, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373378.P10527804260792404236

`gcd(A003415(n+1), A059975(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373378

/-- `gcd(A003415(n+1), A059975(n+1))` -/
def P10527804260792404236.Spec : Prop :=
  ∀ n, (P10527804260792404236.a n : ℤ) = A373378 (n + 1)

theorem P10527804260792404236.correct : P10527804260792404236.Spec := by
  intro n
  simp only [A373378, Nat.add_sub_cancel]

end A373378

/-! ## A373378.P15476017163685523221

`A326622(n+1)^A160467(A013616(n))`
-/

namespace A373378.P15476017163685523221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326622 (n + 1) : ℚ) ^ (A160467 (A013616 n).toNat : ℤ)

end

end A373378.P15476017163685523221

namespace A373378

/-- `A326622(n+1)^A160467(A013616(n))` -/
def P15476017163685523221.Spec : Prop :=
  ∀ n, P15476017163685523221.a n = (A373378 (n + 1) : ℚ)

end A373378

/-! ## A373378.P7504658568253265935

`A326622(n+1)^A318185(A035343(n))`
-/

namespace A373378.P7504658568253265935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326622 (n + 1) : ℚ) ^ (A318185 (A035343 n).toNat : ℤ)

end

end A373378.P7504658568253265935

namespace A373378

/-- `A326622(n+1)^A318185(A035343(n))` -/
def P7504658568253265935.Spec : Prop :=
  ∀ n, P7504658568253265935.a n = (A373378 (n + 1) : ℚ)

end A373378

/-! ## A373378.P4407757359587404666

`A326622(n+1)^A344651(A144385(n))`
-/

namespace A373378.P4407757359587404666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326622 (n + 1) : ℚ) ^ (A344651 (A144385 n).toNat : ℤ)

end

end A373378.P4407757359587404666

namespace A373378

/-- `A326622(n+1)^A344651(A144385(n))` -/
def P4407757359587404666.Spec : Prop :=
  ∀ n, P4407757359587404666.a n = (A373378 (n + 1) : ℚ)

end A373378

/-! ## A373378.P6859594331059371796

`A326622(n+1)^A036440(A027907(n+1))`
-/

namespace A373378.P6859594331059371796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326622 (n + 1) : ℚ) ^ (A036440 (A027907 (n + 1)).toNat : ℤ)

end

end A373378.P6859594331059371796

namespace A373378

/-- `A326622(n+1)^A036440(A027907(n+1))` -/
def P6859594331059371796.Spec : Prop :=
  ∀ n, P6859594331059371796.a n = (A373378 (n + 1) : ℚ)

end A373378

/-!
# A373380: Lexicographically earliest infinite sequence such that a(i) = a(j) => A373145(i) = A373145(j), A373362(i) = A373362(j), and A373364(i) = A373364(j), for all i, j >= 1.

The programs for A373380, there is no canonical definition to state claims against.
-/

/-! ## A373380.P8272932511506538774

`A130571(A300245(n+1))%A331228(3*n+5)`
-/

namespace A373380.P8272932511506538774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130571 (A300245 (n + 1)).toNat) (A331228 (3 * n + 5))

end

end A373380.P8272932511506538774

/-! ## A373380.P17812939344555301180

`A300232(n+1)%A144136(A000040(n+1))`
-/

namespace A373380.P17812939344555301180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300232 (n + 1)) (A144136 (A000040 (n + 1)).toNat)

end

end A373380.P17812939344555301180

/-! ## A373380.P3896961423128383953

`A300231(lt[A067661(n), A000203(n+1)])`
-/

namespace A373380.P3896961423128383953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373380.P3896961423128383953

/-! ## A373380.P851587101759162051

`A300235(lt[A010757(n), A193023(n+1)])`
-/

namespace A373380.P851587101759162051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300235 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373380.P851587101759162051

/-! ## A373380.P7293478978804314679

`A305800(lt[A342341(n), A000203(n+1)])`
-/

namespace A373380.P7293478978804314679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373380.P7293478978804314679

/-!
# A373381: a(n) = gcd(bigomega(n), A056239(n)), where bigomega is number of prime factors with repetition, and A056239 is fully additive with a(p) = primepi(p).

The programs for A373381, the canonical program `A373381.P16516790107511111237` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373381 has offset 1).

The definition of A373381 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373381.P16516790107511111237

`gcd(A001222(n+1), A056239(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A373381

/-- `gcd(A001222(n+1), A056239(n+1))` -/
def P16516790107511111237.Spec : Prop :=
  ∀ n, (P16516790107511111237.a n : ℤ) = A373381 (n + 1)

theorem P16516790107511111237.correct : P16516790107511111237.Spec := by
  intro n
  simp only [A373381, Nat.add_sub_cancel]

end A373381

/-! ## A373381.P9951195864013268937

`gcd(∑{e}[n+1, #], A326844(n+1))`
-/

namespace A373381.P9951195864013268937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A326844 (n + 1))

end

end A373381.P9951195864013268937

namespace A373381

/-- `gcd(∑{e}[n+1, #], A326844(n+1))` -/
def P9951195864013268937.Spec : Prop :=
  ∀ n, (P9951195864013268937.a n : ℤ) = A373381 (n + 1)

end A373381

/-! ## A373381.P2305952536632431778

`gcd(log2(∏{e}[n+1, 2^#]), A318994(n+1))`
-/

namespace A373381.P2305952536632431778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ))) (A318994 (n + 1))

end

end A373381.P2305952536632431778

namespace A373381

/-- `gcd(log2(∏{e}[n+1, 2^#]), A318994(n+1))` -/
def P2305952536632431778.Spec : Prop :=
  ∀ n, (P2305952536632431778.a n : ℤ) = A373381 (n + 1)

end A373381

/-! ## A373381.P6502690101025914254

`gcd(val(A165827(n+1), 2), A318994(n+1))`
-/

namespace A373381.P6502690101025914254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2 : ℤ) (A318994 (n + 1))

end

end A373381.P6502690101025914254

namespace A373381

/-- `gcd(val(A165827(n+1), 2), A318994(n+1))` -/
def P6502690101025914254.Spec : Prop :=
  ∀ n, (P6502690101025914254.a n : ℤ) = A373381 (n + 1)

end A373381

/-! ## A373381.P437901128018941874

`gcd(∑{d}[n+1, A297109(#)], A318995(n+1))`
-/

namespace A373381.P437901128018941874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ d ∈ Nat.divisors (f1 n), A297109 d) (A318995 (n + 1))

end

end A373381.P437901128018941874

namespace A373381

/-- `gcd(∑{d}[n+1, A297109(#)], A318995(n+1))` -/
def P437901128018941874.Spec : Prop :=
  ∀ n, (P437901128018941874.a n : ℤ) = A373381 (n + 1)

end A373381

/-! ## A373381.P12552524769712526578

`gcd(A001222(A000027(n+1)), A318995(n+1))`
-/

namespace A373381.P12552524769712526578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A000027 (n + 1)).toNat) (A318995 (n + 1))

end

end A373381.P12552524769712526578

namespace A373381

/-- `gcd(A001222(A000027(n+1)), A318995(n+1))` -/
def P12552524769712526578.Spec : Prop :=
  ∀ n, (P12552524769712526578.a n : ℤ) = A373381 (n + 1)

end A373381

/-! ## A373381.P10227019184043461062

`gcd(A263297(A046523(n+1)), A359362(n+1))`
-/

namespace A373381.P10227019184043461062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263297 (A046523 (n + 1)).toNat) (A359362 (n + 1))

end

end A373381.P10227019184043461062

namespace A373381

/-- `gcd(A263297(A046523(n+1)), A359362(n+1))` -/
def P10227019184043461062.Spec : Prop :=
  ∀ n, (P10227019184043461062.a n : ℤ) = A373381 (n + 1)

end A373381

/-! ## A373381.P6812654404414199596

`A366785(A358137(n+1))`
-/

namespace A373381.P6812654404414199596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (A358137 (n + 1)).toNat

end

end A373381.P6812654404414199596

namespace A373381

/-- `A366785(A358137(n+1))` -/
def P6812654404414199596.Spec : Prop :=
  ∀ n, P6812654404414199596.a n = A373381 (n + 1)

end A373381

/-! ## A373381.P3599999206926876894

`A366785(A181821(n+1))`
-/

namespace A373381.P3599999206926876894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (A181821 (n + 1)).toNat

end

end A373381.P3599999206926876894

namespace A373381

/-- `A366785(A181821(n+1))` -/
def P3599999206926876894.Spec : Prop :=
  ∀ n, P3599999206926876894.a n = A373381 (n + 1)

end A373381

/-! ## A373381.P8471640151692916803

`A366785(A304660(n+1))`
-/

namespace A373381.P8471640151692916803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (A304660 (n + 1)).toNat

end

end A373381.P8471640151692916803

namespace A373381

/-- `A366785(A304660(n+1))` -/
def P8471640151692916803.Spec : Prop :=
  ∀ n, P8471640151692916803.a n = A373381 (n + 1)

end A373381

/-!
# A373382: a(n) = gcd(A329697(n), A331410(n)), where A329697, A331410 give the number of iterations needed to reach a power of 2, when using the map n -> n-(n/p), or respectively, n -> n+(n/p), where p is the largest prime factor of n.

The programs for A373382, the canonical program `A373382.P993258168282922167` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373382 has offset 1).

The definition of A373382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, A331410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373382.P993258168282922167

`gcd(A329697(n+1), A331410(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373382

/-- `gcd(A329697(n+1), A331410(n+1))` -/
def P993258168282922167.Spec : Prop :=
  ∀ n, (P993258168282922167.a n : ℤ) = A373382 (n + 1)

theorem P993258168282922167.correct : P993258168282922167.Spec := by
  intro n
  simp only [A373382, Nat.add_sub_cancel]

end A373382

/-! ## A373382.P12145703536646952684

`gcd(A334861(n+1), A335875(n+1))`
-/

namespace A373382.P12145703536646952684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A334861 (n + 1)) (A335875 (n + 1))

end

end A373382.P12145703536646952684

namespace A373382

/-- `gcd(A334861(n+1), A335875(n+1))` -/
def P12145703536646952684.Spec : Prop :=
  ∀ n, (P12145703536646952684.a n : ℤ) = A373382 (n + 1)

end A373382

/-! ## A373382.P6790939295762225845

`gcd(A335877(n+1), A335881(n+1))`
-/

namespace A373382.P6790939295762225845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335877 (n + 1)) (A335881 (n + 1))

end

end A373382.P6790939295762225845

namespace A373382

/-- `gcd(A335877(n+1), A335881(n+1))` -/
def P6790939295762225845.Spec : Prop :=
  ∀ n, (P6790939295762225845.a n : ℤ) = A373382 (n + 1)

end A373382

/-! ## A373382.P13392112631396919487

`A002487(A335905(n+1))%A275780(n)`
-/

namespace A373382.P13392112631396919487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (A335905 (n + 1)).toNat) (A275780 n)

end

end A373382.P13392112631396919487

namespace A373382

/-- `A002487(A335905(n+1))%A275780(n)` -/
def P13392112631396919487.Spec : Prop :=
  ∀ n, P13392112631396919487.a n = A373382 (n + 1)

end A373382

/-! ## A373382.P29235140192633899

`A002487(A335905(n+1)%A332095(n+5))`
-/

namespace A373382.P29235140192633899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.tmod (A335905 (n + 1)) (A332095 (n + 5))).toNat

end

end A373382.P29235140192633899

namespace A373382

/-- `A002487(A335905(n+1)%A332095(n+5))` -/
def P29235140192633899.Spec : Prop :=
  ∀ n, P29235140192633899.a n = A373382 (n + 1)

end A373382

/-!
# A373383: a(n) = 1 if n and A059975(n) are both multiples of 3, otherwise 0, where A059975 is fully additive with a(p) = p-1.

The programs for A373383, the canonical program `A373383.P17958674046333590932` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373383 has offset 1).

The definition of A373383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373383.P2735982981532407841

`A373493(6*(n+1))`
-/

namespace A373383.P2735982981532407841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373493 (6 * (n + 1))

end

end A373383.P2735982981532407841

namespace A373383

/-- `A373493(6*(n+1))` -/
def P2735982981532407841.Spec : Prop :=
  ∀ n, P2735982981532407841.a n = A373383 (n + 1)

end A373383

/-! ## A373383.P13665947107930106449

`char[A373384(n+1)-1]`
-/

namespace A373383.P13665947107930106449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373384 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373383.P13665947107930106449

namespace A373383

/-- `char[A373384(n+1)-1]` -/
def P13665947107930106449.Spec : Prop :=
  ∀ n, (P13665947107930106449.a n : ℤ) = A373383 (n + 1)

end A373383

/-! ## A373383.P17958674046333590932

`A152618(A373368(n+1))%3`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373383

/-- `A152618(A373368(n+1))%3` -/
def P17958674046333590932.Spec : Prop :=
  ∀ n, P17958674046333590932.a n = A373383 (n + 1)

theorem P17958674046333590932.correct : P17958674046333590932.Spec := by
  intro n
  simp only [A373383, Nat.add_sub_cancel]

end A373383

/-! ## A373383.P18301924752722111137

`A087436(gcd(n-2, A373368(n+1)))`
-/

namespace A373383.P18301924752722111137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (Int.gcd ((n : ℤ) - 2) (A373368 (n + 1)))

end

end A373383.P18301924752722111137

namespace A373383

/-- `A087436(gcd(n-2, A373368(n+1)))` -/
def P18301924752722111137.Spec : Prop :=
  ∀ n, P18301924752722111137.a n = A373383 (n + 1)

end A373383

/-! ## A373383.P2914439528766324343

`A370592(gcd(A008585(n), A373368(n+1)))`
-/

namespace A373383.P2914439528766324343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370592 (Int.gcd (A008585 n) (A373368 (n + 1)))

end

end A373383.P2914439528766324343

namespace A373383

/-- `A370592(gcd(A008585(n), A373368(n+1)))` -/
def P2914439528766324343.Spec : Prop :=
  ∀ n, P2914439528766324343.a n = A373383 (n + 1)

end A373383

/-! ## A373383.P18179090881284334277

`A007949(gcd(n+1, A059975(n+1)))^A000009(n)`
-/

namespace A373383.P18179090881284334277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007949 (Int.gcd (n + 1 : ℤ) (A059975 (n + 1))) : ℚ) ^ (A000009 n : ℤ)

end

end A373383.P18179090881284334277

namespace A373383

/-- `A007949(gcd(n+1, A059975(n+1)))^A000009(n)` -/
def P18179090881284334277.Spec : Prop :=
  ∀ n, P18179090881284334277.a n = (A373383 (n + 1) : ℚ)

end A373383

/-!
# A373384: Numbers k that are multiples of 3 and also A059975(k) is a multiple of 3, where A059975 is fully additive with a(p) = p-1.

The programs for A373384, the canonical program `A373384.P16359986176221474190` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373384 has offset 1).

The definition of A373384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373384.P13804298549153385182

`filter[A373385(n+1), A373383(#)]`
-/

namespace A373384.P13804298549153385182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P13804298549153385182

namespace A373384

/-- `filter[A373385(n+1), A373383(#)]` -/
def P13804298549153385182.Spec : Prop :=
  ∀ n, P13804298549153385182.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P16359986176221474190

`filter[A008486(n), A373383(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373384

/-- `filter[A008486(n), A373383(#)]` -/
def P16359986176221474190.Spec : Prop :=
  ∀ n, P16359986176221474190.a n = A373384 (n + 1)

theorem P16359986176221474190.correct : P16359986176221474190.Spec := by
  intro n
  simp only [A373384, Nat.add_sub_cancel]

end A373384

/-! ## A373384.P18311036819097492936

`filter[A008585(n+1), A373383(#)]`
-/

namespace A373384.P18311036819097492936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P18311036819097492936

namespace A373384

/-- `filter[A008585(n+1), A373383(#)]` -/
def P18311036819097492936.Spec : Prop :=
  ∀ n, P18311036819097492936.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P3578636406510822122

`filter[A296515(n+2), A373383(#)]`
-/

namespace A373384.P3578636406510822122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P3578636406510822122

namespace A373384

/-- `filter[A296515(n+2), A373383(#)]` -/
def P3578636406510822122.Spec : Prop :=
  ∀ n, P3578636406510822122.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P9411309459693309801

`∩[A373385(n+1), A008585(n)]`
-/

namespace A373384.P9411309459693309801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373384.P9411309459693309801

namespace A373384

/-- `∩[A373385(n+1), A008585(n)]` -/
def P9411309459693309801.Spec : Prop :=
  ∀ n, (P9411309459693309801.a n : ℤ) = A373384 (n + 1)

end A373384

/-! ## A373384.P9580609024638295515

`filter[A204502(n+2), A373383(#)]`
-/

namespace A373384.P9580609024638295515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P9580609024638295515

namespace A373384

/-- `filter[A204502(n+2), A373383(#)]` -/
def P9580609024638295515.Spec : Prop :=
  ∀ n, P9580609024638295515.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P15242534218522735337

`filter[A231404(n+1), A373383(#)]`
-/

namespace A373384.P15242534218522735337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P15242534218522735337

namespace A373384

/-- `filter[A231404(n+1), A373383(#)]` -/
def P15242534218522735337.Spec : Prop :=
  ∀ n, P15242534218522735337.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P8402675126486074516

`filter[A084434(n+1), A373383(#)]`
-/

namespace A373384.P8402675126486074516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P8402675126486074516

namespace A373384

/-- `filter[A084434(n+1), A373383(#)]` -/
def P8402675126486074516.Spec : Prop :=
  ∀ n, P8402675126486074516.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P8225992121019765998

`filter[A201462(n+1), A373383(#)]`
-/

namespace A373384.P8225992121019765998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P8225992121019765998

namespace A373384

/-- `filter[A201462(n+1), A373383(#)]` -/
def P8225992121019765998.Spec : Prop :=
  ∀ n, P8225992121019765998.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P9219825747129870872

`filter[A305495(n+1), A373383(#)]`
-/

namespace A373384.P9219825747129870872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P9219825747129870872

namespace A373384

/-- `filter[A305495(n+1), A373383(#)]` -/
def P9219825747129870872.Spec : Prop :=
  ∀ n, P9219825747129870872.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P4919156561334991684

`filter[A230215(n+1), A373383(#)]`
-/

namespace A373384.P4919156561334991684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P4919156561334991684

namespace A373384

/-- `filter[A230215(n+1), A373383(#)]` -/
def P4919156561334991684.Spec : Prop :=
  ∀ n, P4919156561334991684.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P2803484064631554367

`filter[A182338(n+1), A373383(#)]`
-/

namespace A373384.P2803484064631554367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P2803484064631554367

namespace A373384

/-- `filter[A182338(n+1), A373383(#)]` -/
def P2803484064631554367.Spec : Prop :=
  ∀ n, P2803484064631554367.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P14882744202158871220

`filter[A084433(n+1), A373383(#)]`
-/

namespace A373384.P14882744202158871220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P14882744202158871220

namespace A373384

/-- `filter[A084433(n+1), A373383(#)]` -/
def P14882744202158871220.Spec : Prop :=
  ∀ n, P14882744202158871220.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P4450294503462270625

`filter[A230193(n+1), A373383(#)]`
-/

namespace A373384.P4450294503462270625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P4450294503462270625

namespace A373384

/-- `filter[A230193(n+1), A373383(#)]` -/
def P4450294503462270625.Spec : Prop :=
  ∀ n, P4450294503462270625.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P12293677611453849099

`filter[A229307(n+1), A373383(#)]`
-/

namespace A373384.P12293677611453849099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P12293677611453849099

namespace A373384

/-- `filter[A229307(n+1), A373383(#)]` -/
def P12293677611453849099.Spec : Prop :=
  ∀ n, P12293677611453849099.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P9356019188926718442

`filter[A176409(n+2), A373383(#)]`
-/

namespace A373384.P9356019188926718442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176409 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P9356019188926718442

namespace A373384

/-- `filter[A176409(n+2), A373383(#)]` -/
def P9356019188926718442.Spec : Prop :=
  ∀ n, P9356019188926718442.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P15245948116686729312

`filter[A286802(n+1), A373383(#)]`
-/

namespace A373384.P15245948116686729312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P15245948116686729312

namespace A373384

/-- `filter[A286802(n+1), A373383(#)]` -/
def P15245948116686729312.Spec : Prop :=
  ∀ n, P15245948116686729312.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P5653391651186189605

`filter[A177729(n+1), A373383(#)]`
-/

namespace A373384.P5653391651186189605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P5653391651186189605

namespace A373384

/-- `filter[A177729(n+1), A373383(#)]` -/
def P5653391651186189605.Spec : Prop :=
  ∀ n, P5653391651186189605.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P11029396753492952038

`filter[A061641(n+2), A373383(#)]`
-/

namespace A373384.P11029396753492952038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P11029396753492952038

namespace A373384

/-- `filter[A061641(n+2), A373383(#)]` -/
def P11029396753492952038.Spec : Prop :=
  ∀ n, P11029396753492952038.a n = A373384 (n + 1)

end A373384

/-! ## A373384.P13158754713387850431

`filter[A113502(n+1), A373383(#)]`
-/

namespace A373384.P13158754713387850431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P13158754713387850431

namespace A373384

/-- `filter[A113502(n+1), A373383(#)]` -/
def P13158754713387850431.Spec : Prop :=
  ∀ n, P13158754713387850431.a n = A373384 (n + 1)

end A373384

/-!
# A373385: Numbers k for which A059975(k) is a multiple of 3, where A059975 is fully additive with a(p) = p-1.

The programs for A373385, there is no canonical definition to state claims against.
-/

/-! ## A373385.P15944985904375493473

`lt[A032659(2*(n+2)), A100449(A032661(n))]`
-/

namespace A373385.P15944985904375493473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032659 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 (A032661 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373385.P15944985904375493473

/-!
# A373390: a(n) = n for n <= 3; for n > 3, a(n) is the smallest unused positive number that is coprime to a(n-1) but has a common factor with at least one of a(1)...a(n-2).

The programs for A373390, there is no canonical definition to state claims against.
-/

/-! ## A373390.P17135340161299982542

`A085736(A247942(n+1))`
-/

namespace A373390.P17135340161299982542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A247942 (n + 1)).toNat

end

end A373390.P17135340161299982542

/-! ## A373390.P10006298846058437158

`A000188(A247942(n+1)²)`
-/

namespace A373390.P10006298846058437158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A247942 (n + 1) ^ 2).toNat

end

end A373390.P10006298846058437158

/-! ## A373390.P7260995031175733867

`A000196(A247942(n+1)²)`
-/

namespace A373390.P7260995031175733867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A247942 (n + 1) ^ 2).toNat

end

end A373390.P7260995031175733867

/-! ## A373390.P18315036460256098809

`A003059(A247942(n+1)²)`
-/

namespace A373390.P18315036460256098809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A247942 (n + 1) ^ 2).toNat

end

end A373390.P18315036460256098809

/-! ## A373390.P15336409593151756261

`A064876(A247942(n+1)²)`
-/

namespace A373390.P15336409593151756261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A247942 (n + 1) ^ 2).toNat

end

end A373390.P15336409593151756261

/-!
# A373392: Inverse binomial transform of A135318.

The programs for A373392, the canonical program `A373392.P16339312651600203283` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373392 has offset 0).

The definition of A373392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373392.P16339312651600203283

`ogf((1+4x+5x^2+3x^3)/(1+4x+5x^2+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373392

/-- `ogf((1+4x+5x^2+3x^3)/(1+4x+5x^2+2x^3-2x^4))` -/
def P16339312651600203283.Spec : Prop :=
  ∀ n, P16339312651600203283.a n = A373392 n

theorem P16339312651600203283.correct : P16339312651600203283.Spec := by
  intro n
  simp only [A373392]

end A373392

/-!
# A373395: Number of minimum connected dominating sets in the n-triangular graph.

The programs for A373395, there is no canonical definition to state claims against.
-/

/-! ## A373395.P241591373692857149

`(n+1)^(n-1)*gcd(n+2, ∏[n+3])`
-/

namespace A373395.P241591373692857149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.gcd (n + 2) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A373395.P241591373692857149

/-! ## A373395.P12199580993961378455

`(n+2)*gcd(n+1, a(n-1))^(n-1)` with `a(0)=1`
-/

namespace A373395.P12199580993961378455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℚ) * (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A373395.P12199580993961378455

/-! ## A373395.P17211042781509847915

`A143911(∑[n+2])`
-/

namespace A373395.P17211042781509847915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143911 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373395.P17211042781509847915

/-! ## A373395.P13320234089176730795

`A055864(A212342(n+1))`
-/

namespace A373395.P13320234089176730795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055864 (A212342 (n + 1)).toNat

end

end A373395.P13320234089176730795

/-! ## A373395.P3306567199899522921

`A000272(n+1)*A181440(n+2)`
-/

namespace A373395.P3306567199899522921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) * A181440 (n + 2)

end

end A373395.P3306567199899522921

/-! ## A373395.P17781321521119637024

`A000169(n+1)+A000272(n+1)-A000007(n)`
-/

namespace A373395.P17781321521119637024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) + (A000272 (n + 1) - A000007 n)

end

end A373395.P17781321521119637024

/-!
# A373397: Expansion of Sum_{k>=0} x^(6^k) / (1 - x^(6^k))^2.

The programs for A373397, the canonical program `A373397.P14400357127221746357` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373397 has offset 1).

The definition of A373397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373397.P6425013174043727699

`A244414(n+1)*A339748(n+1)`
-/

namespace A373397.P6425013174043727699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244414 (n + 1) * A339748 (n + 1)

end

end A373397.P6425013174043727699

namespace A373397

/-- `A244414(n+1)*A339748(n+1)` -/
def P6425013174043727699.Spec : Prop :=
  ∀ n, P6425013174043727699.a n = A373397 (n + 1)

end A373397

/-! ## A373397.P5424941163036161653

`∑{d}[n+1, A000010(#)*A373216((n+1)/#)]`
-/

namespace A373397.P5424941163036161653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A373216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373397.P5424941163036161653

namespace A373397

/-- `∑{d}[n+1, A000010(#)*A373216((n+1)/#)]` -/
def P5424941163036161653.Spec : Prop :=
  ∀ n, P5424941163036161653.a n = A373397 (n + 1)

end A373397

/-! ## A373397.P14400357127221746357

`∑{d}[n+1, A372671(#)*A373156((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373397

/-- `∑{d}[n+1, A372671(#)*A373156((n+1)/#)]` -/
def P14400357127221746357.Spec : Prop :=
  ∀ n, P14400357127221746357.a n = A373397 (n + 1)

theorem P14400357127221746357.correct : P14400357127221746357.Spec := by
  intro n
  simp only [A373397, Nat.add_sub_cancel]

end A373397

/-! ## A373397.P1930984199651613137

`A030105(A030105(n+1))*A047253(6^val(n+1, 6))`
-/

namespace A373397.P1930984199651613137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A030105 (n + 1)).toNat * A047253 (6 ^ SequenceMachineLib.valuation (n + 1) 6)

end

end A373397.P1930984199651613137

namespace A373397

/-- `A030105(A030105(n+1))*A047253(6^val(n+1, 6))` -/
def P1930984199651613137.Spec : Prop :=
  ∀ n, P1930984199651613137.a n = A373397 (n + 1)

end A373397

/-! ## A373397.P17937149678203678226

`(A004275(3*n+4)-A244414(n+1))/5`
-/

namespace A373397.P17937149678203678226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (3 * n + 4) - A244414 (n + 1) : ℚ) / 5

end

end A373397.P17937149678203678226

namespace A373397

/-- `(A004275(3*n+4)-A244414(n+1))/5` -/
def P17937149678203678226.Spec : Prop :=
  ∀ n, P17937149678203678226.a n = (A373397 (n + 1) : ℚ)

end A373397

/-!
# A373398: Triangle read by rows: T(n, k) = number of k-element subobjects of an n-element set in the category of relations, n >= 0, 0 <= k <= n.

The programs for A373398, there is no canonical definition to state claims against.
-/

/-! ## A373398.P3311328785723124398

`or(A072127(2*n+1)!, A143395(n))`
-/

namespace A373398.P3311328785723124398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A072127 (2 * n + 1)).toNat : ℤ) (A143395 n)

end

end A373398.P3311328785723124398

/-! ## A373398.P13935620755644272801

`A143395(n)^A016366(∑[comp[3*n]])²`
-/

namespace A373398.P13935620755644272801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143395 n : ℚ) ^ (A016366 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ)

end

end A373398.P13935620755644272801

/-! ## A373398.P12673748655738294835

`A143395(n)^A122418(A144207(n))`
-/

namespace A373398.P12673748655738294835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143395 n : ℚ) ^ (A122418 (A144207 n).toNat : ℤ)

end

end A373398.P12673748655738294835

/-! ## A373398.P3389172607550316534

`A143395(n)^A030567(A303535(n))`
-/

namespace A373398.P3389172607550316534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143395 n : ℚ) ^ (A030567 (A303535 n).toNat : ℤ)

end

end A373398.P3389172607550316534

/-! ## A373398.P15162397573564624407

`A143395(n)^A228488(A289546(n))`
-/

namespace A373398.P15162397573564624407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143395 n : ℚ) ^ (A228488 (A289546 n).toNat : ℤ)

end

end A373398.P15162397573564624407

