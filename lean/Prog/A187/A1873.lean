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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A187300: Number of 5-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on an n X n board summed over all starting positions.

The programs for A187300, the canonical program `A187300.P12989289146087852918` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187300 has offset 1).

The definition of A187300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187300.P12989289146087852918

`ogf((90x^2+146x^3+230x^4-66x^5+100x^6-76x^7+18x^8-14x^9)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187300

/-- `ogf((90x^2+146x^3+230x^4-66x^5+100x^6-76x^7+18x^8-14x^9)/(1-3x+3x^2-x^3))` -/
def P12989289146087852918.Spec : Prop :=
  ∀ n, P12989289146087852918.a n = A187300 (n + 1)

theorem P12989289146087852918.correct : P12989289146087852918.Spec := by
  intro n
  simp only [A187300, Nat.add_sub_cancel]

end A187300

/-! ## A187300.P13346071378778719303

`A187296(A155212(n)+13)`
-/

namespace A187300.P13346071378778719303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A155212 n + 13).toNat

end

end A187300.P13346071378778719303

namespace A187300

/-- `A187296(A155212(n)+13)` -/
def P13346071378778719303.Spec : Prop :=
  ∀ n, P13346071378778719303.a n = A187300 (n + 1)

end A187300

/-! ## A187300.P3346034592924271232

`A187296(A056000(n)+15)`
-/

namespace A187300.P3346034592924271232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A056000 n + 15).toNat

end

end A187300.P3346034592924271232

namespace A187300

/-- `A187296(A056000(n)+15)` -/
def P3346034592924271232.Spec : Prop :=
  ∀ n, P3346034592924271232.a n = A187300 (n + 1)

end A187300

/-! ## A187300.P5703383414880424621

`A187296(eq[7, A066657(n)])`
-/

namespace A187300.P5703383414880424621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187300.P5703383414880424621

namespace A187300

/-- `A187296(eq[7, A066657(n)])` -/
def P5703383414880424621.Spec : Prop :=
  ∀ n, P5703383414880424621.a n = A187300 (n + 1)

end A187300

/-! ## A187300.P11602903781113269489

`A187296(A167614(n+3)+2)`
-/

namespace A187300.P11602903781113269489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A167614 (n + 3) + 2).toNat

end

end A187300.P11602903781113269489

namespace A187300

/-- `A187296(A167614(n+3)+2)` -/
def P11602903781113269489.Spec : Prop :=
  ∀ n, P11602903781113269489.a n = A187300 (n + 1)

end A187300

/-!
# A187301: Number of 6-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on an n X n board summed over all starting positions.

The programs for A187301, there is no canonical definition to state claims against.
-/

/-! ## A187301.P1346415122158322188

`A187296(A166136(n+4))`
-/

namespace A187301.P1346415122158322188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A166136 (n + 4)).toNat

end

end A187301.P1346415122158322188

/-! ## A187301.P14910529383483910341

`A187296(A056115(n)+21)`
-/

namespace A187301.P14910529383483910341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A056115 n + 21).toNat

end

end A187301.P14910529383483910341

/-! ## A187301.P8796928345159428504

`A187296(A167499(n+4)+1)`
-/

namespace A187301.P8796928345159428504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A167499 (n + 4) + 1).toNat

end

end A187301.P8796928345159428504

/-! ## A187301.P5499698517900115800

`A187296(A000124(n+5)+5)`
-/

namespace A187301.P5499698517900115800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A000124 (n + 5) + 5).toNat

end

end A187301.P5499698517900115800

/-! ## A187301.P13870613118631549528

`A187296(A000096(n+4)+7)`
-/

namespace A187301.P13870613118631549528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A000096 (n + 4) + 7).toNat

end

end A187301.P13870613118631549528

/-!
# A187302: Number of 7-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on an n X n board summed over all starting positions.

The programs for A187302, there is no canonical definition to state claims against.
-/

/-! ## A187302.P3582248897891089814

`A187296(A167487(n+5))`
-/

namespace A187302.P3582248897891089814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A167487 (n + 5)).toNat

end

end A187302.P3582248897891089814

/-! ## A187302.P11533741933043818141

`A187296(A056119(n)+28)`
-/

namespace A187302.P11533741933043818141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A056119 n + 28).toNat

end

end A187302.P11533741933043818141

/-! ## A187302.P7107576590327378039

`A187296(eq[11, A066657(n)])`
-/

namespace A187302.P7107576590327378039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187302.P7107576590327378039

/-! ## A187302.P18008159114027153223

`A187296(A166136(n+5)+1)`
-/

namespace A187302.P18008159114027153223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A166136 (n + 5) + 1).toNat

end

end A187302.P18008159114027153223

/-! ## A187302.P8311685766366638689

`A187296(A167499(n+5)+2)`
-/

namespace A187302.P8311685766366638689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A167499 (n + 5) + 2).toNat

end

end A187302.P8311685766366638689

/-!
# A187303: Number of 8-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on an n X n board summed over all starting positions.

The programs for A187303, there is no canonical definition to state claims against.
-/

/-! ## A187303.P17842818487790643825

`A187296(C(n+9, 2)-n)`
-/

namespace A187303.P17842818487790643825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (Nat.choose (n + 9) 2 - n)

end

end A187303.P17842818487790643825

/-! ## A187303.P16227525099189074874

`A187296(eq[13, A066657(n)])`
-/

namespace A187303.P16227525099189074874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187303.P16227525099189074874

/-! ## A187303.P17918300969846216143

`A187296(eq[9, A131818(n+1)])`
-/

namespace A187303.P17918300969846216143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187303.P17918300969846216143

/-! ## A187303.P10444079276577507349

`A187296(∪[A018901(3*n+2), A000096(n+7)+9])`
-/

namespace A187303.P10444079276577507349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018901 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 7) + 9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A187303.P10444079276577507349

/-!
# A187304: Number of 9-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on an n X n board summed over all starting positions.

The programs for A187304, there is no canonical definition to state claims against.
-/

/-! ## A187304.P16063197913120423984

`A187296(eq[17, A066657(n)])`
-/

namespace A187304.P16063197913120423984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187304.P16063197913120423984

/-! ## A187304.P6309789728638922018

`A187296(eq[10, A131818(n+1)])`
-/

namespace A187304.P6309789728638922018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187304.P6309789728638922018

/-! ## A187304.P6568999367859278633

`A187296(eq[10, A135223(n+1)])`
-/

namespace A187304.P6568999367859278633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187304.P6568999367859278633

/-! ## A187304.P15788759828343880673

`A187296(eq[8, A144328(n+1)]+1)`
-/

namespace A187304.P15788759828343880673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A187304.P15788759828343880673

/-!
# A187305: Number of 10-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on an n X n board summed over all starting positions.

The programs for A187305, there is no canonical definition to state claims against.
-/

/-! ## A187305.P11661894733291258577

`A187296(A168108(n)+10)`
-/

namespace A187305.P11661894733291258577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A168108 n + 10).toNat

end

end A187305.P11661894733291258577

/-! ## A187305.P18209063302226913485

`A187296(A168109(n)-n)`
-/

namespace A187305.P18209063302226913485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A168109 n - (n : ℤ)).toNat

end

end A187305.P18209063302226913485

/-! ## A187305.P11889534597585970239

`A187296(eq[10, A130270(n+1)])`
-/

namespace A187305.P11889534597585970239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187305.P11889534597585970239

/-! ## A187305.P10924458879832381566

`A187296(eq[11, A123229(n+1)])`
-/

namespace A187305.P10924458879832381566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187305.P10924458879832381566

/-! ## A187305.P3507836776148810077

`A187296(eq[11, A131818(n+1)])`
-/

namespace A187305.P3507836776148810077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187305.P3507836776148810077

/-!
# A187306: Alternating sum of Motzkin numbers A001006.

The programs for A187306, the canonical program `A187306.P13731077059909855300` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187306 has offset 0).

The definition of A187306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187306.P13731077059909855300

`A005043(n+1)+(-1)^n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187306

/-- `A005043(n+1)+(-1)^n` -/
def P13731077059909855300.Spec : Prop :=
  ∀ n, P13731077059909855300.a n = A187306 n

theorem P13731077059909855300.correct : P13731077059909855300.Spec := by
  intro n
  simp only [A187306]

end A187306

/-! ## A187306.P7321649532583441766

`∑{#}[n, A001006(#)*(-1)^(n-#)]`
-/

namespace A187306.P7321649532583441766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A001006 k : ℚ) * (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A187306.P7321649532583441766

namespace A187306

/-- `∑{#}[n, A001006(#)*(-1)^(n-#)]` -/
def P7321649532583441766.Spec : Prop :=
  ∀ n, P7321649532583441766.a n = (A187306 n : ℚ)

end A187306

/-! ## A187306.P6063529560964113599

`abs(∑[A166587(n+1)])`
-/

namespace A187306.P6063529560964113599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A187306.P6063529560964113599

namespace A187306

/-- `abs(∑[A166587(n+1)])` -/
def P6063529560964113599.Spec : Prop :=
  ∀ n, P6063529560964113599.a n = A187306 n

end A187306

/-! ## A187306.P10633363673628237209

`abs(1-A099323(n+2))`
-/

namespace A187306.P10633363673628237209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A099323 (n + 2)|

end

end A187306.P10633363673628237209

namespace A187306

/-- `abs(1-A099323(n+2))` -/
def P10633363673628237209.Spec : Prop :=
  ∀ n, P10633363673628237209.a n = A187306 n

end A187306

/-! ## A187306.P1149515586066320848

`A001006(n)-a(n-1)` with `a(0)=1`
-/

namespace A187306.P1149515586066320848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001006 n - a (n - 1)

end

end A187306.P1149515586066320848

namespace A187306

/-- `A001006(n)-a(n-1)` -/
def P1149515586066320848.Spec : Prop :=
  ∀ n, P1149515586066320848.a n = A187306 n

end A187306

/-! ## A187306.P1846697795042820469

`Δ[A097332(n)]-a(n-1)` with `a(0)=1`
-/

namespace A187306.P1846697795042820469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A187306.P1846697795042820469

namespace A187306

/-- `Δ[A097332(n)]-a(n-1)` -/
def P1846697795042820469.Spec : Prop :=
  ∀ n, P1846697795042820469.a n = A187306 n

end A187306

/-! ## A187306.P11716634596802741694

`A086246(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A187306.P11716634596802741694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086246 (n + 2) - a (n - 1)

end

end A187306.P11716634596802741694

namespace A187306

/-- `A086246(n+2)-a(n-1)` -/
def P11716634596802741694.Spec : Prop :=
  ∀ n, P11716634596802741694.a n = A187306 n

end A187306

/-! ## A187306.P14600269651154599702

`A168049(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A187306.P14600269651154599702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168049 (n + 2) - a (n - 1)

end

end A187306.P14600269651154599702

namespace A187306

/-- `A168049(n+2)-a(n-1)` -/
def P14600269651154599702.Spec : Prop :=
  ∀ n, P14600269651154599702.a n = A187306 n

end A187306

/-! ## A187306.P3922597606024786567

`A033999(n)+A005043(n+1)`
-/

namespace A187306.P3922597606024786567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A005043 (n + 1)

end

end A187306.P3922597606024786567

namespace A187306

/-- `A033999(n)+A005043(n+1)` -/
def P3922597606024786567.Spec : Prop :=
  ∀ n, P3922597606024786567.a n = A187306 n

theorem P3922597606024786567.correct : P3922597606024786567.Spec := by
  intro n
  simp only [A187306, Nat.add_sub_cancel, A187306.P3922597606024786567.a, A187306.P13731077059909855300.a, A005043, A005043.P11838040305800302990.a, A033999, A033999.P17703899380244199787.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187306

/-! ## A187306.P14625815789087855469

`Δ[A082395(n+1)+A000034(n)]`
-/

namespace A187306.P14625815789087855469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1) + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187306.P14625815789087855469

namespace A187306

/-- `Δ[A082395(n+1)+A000034(n)]` -/
def P14625815789087855469.Spec : Prop :=
  ∀ n, P14625815789087855469.a n = A187306 n

end A187306

/-! ## A187306.P17067550387311039878

`Δ[A082395(n+1)+A000035(n)]`
-/

namespace A187306.P17067550387311039878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187306.P17067550387311039878

namespace A187306

/-- `Δ[A082395(n+1)+A000035(n)]` -/
def P17067550387311039878.Spec : Prop :=
  ∀ n, P17067550387311039878.a n = A187306 n

end A187306

/-! ## A187306.P487112468478338334

`∑[A166587(n+1)]*A033999(n)`
-/

namespace A187306.P487112468478338334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A187306.P487112468478338334

namespace A187306

/-- `∑[A166587(n+1)]*A033999(n)` -/
def P487112468478338334.Spec : Prop :=
  ∀ n, P487112468478338334.a n = A187306 n

end A187306

/-! ## A187306.P2785036270245826598

`A056594(2*n)+A005043(n+1)`
-/

namespace A187306.P2785036270245826598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) + A005043 (n + 1)

end

end A187306.P2785036270245826598

namespace A187306

/-- `A056594(2*n)+A005043(n+1)` -/
def P2785036270245826598.Spec : Prop :=
  ∀ n, P2785036270245826598.a n = A187306 n

end A187306

/-! ## A187306.P10854867532721290842

`A057077(2*n)+A005043(n+1)`
-/

namespace A187306.P10854867532721290842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) + A005043 (n + 1)

end

end A187306.P10854867532721290842

namespace A187306

/-- `A057077(2*n)+A005043(n+1)` -/
def P10854867532721290842.Spec : Prop :=
  ∀ n, P10854867532721290842.a n = A187306 n

end A187306

/-! ## A187306.P2911253296712486649

`A087960(2*n)+A005043(n+1)`
-/

namespace A187306.P2911253296712486649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) + A005043 (n + 1)

end

end A187306.P2911253296712486649

namespace A187306

/-- `A087960(2*n)+A005043(n+1)` -/
def P2911253296712486649.Spec : Prop :=
  ∀ n, P2911253296712486649.a n = A187306 n

end A187306

/-! ## A187306.P14299096820241924097

`A133730(2*n)+A005043(n+1)`
-/

namespace A187306.P14299096820241924097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (2 * n) + A005043 (n + 1)

end

end A187306.P14299096820241924097

namespace A187306

/-- `A133730(2*n)+A005043(n+1)` -/
def P14299096820241924097.Spec : Prop :=
  ∀ n, P14299096820241924097.a n = A187306 n

end A187306

/-! ## A187306.P3054258556303570874

`lcm(∑[A166587(n+1)], A033999(n+1))`
-/

namespace A187306.P3054258556303570874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 (n + 1))

end

end A187306.P3054258556303570874

namespace A187306

/-- `lcm(∑[A166587(n+1)], A033999(n+1))` -/
def P3054258556303570874.Spec : Prop :=
  ∀ n, (P3054258556303570874.a n : ℤ) = A187306 n

end A187306

/-! ## A187306.P8172843212994827294

`gcd(∑[A166587(n+1)], A182492(2*n))`
-/

namespace A187306.P8172843212994827294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A182492 (2 * n))

end

end A187306.P8172843212994827294

namespace A187306

/-- `gcd(∑[A166587(n+1)], A182492(2*n))` -/
def P8172843212994827294.Spec : Prop :=
  ∀ n, (P8172843212994827294.a n : ℤ) = A187306 n

end A187306

/-! ## A187306.P16190874608489054433

`A009531(2*n+1)+A005043(n+1)`
-/

namespace A187306.P16190874608489054433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) + A005043 (n + 1)

end

end A187306.P16190874608489054433

namespace A187306

/-- `A009531(2*n+1)+A005043(n+1)` -/
def P16190874608489054433.Spec : Prop :=
  ∀ n, P16190874608489054433.a n = A187306 n

end A187306

/-! ## A187306.P13434830791636865198

`A117569(2*n+1)+A005043(n+1)`
-/

namespace A187306.P13434830791636865198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (2 * n + 1) + A005043 (n + 1)

end

end A187306.P13434830791636865198

namespace A187306

/-- `A117569(2*n+1)+A005043(n+1)` -/
def P13434830791636865198.Spec : Prop :=
  ∀ n, P13434830791636865198.a n = A187306 n

end A187306

/-!
# A187307: Hankel transform of an alternating sum of Motzkin numbers.

The programs for A187307, the canonical program `A187307.P10854568735272959126` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187307 has offset 0).

The definition of A187307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187307.P10854568735272959126

`ogf((1+x^2-x^3)/(1-2x+3x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187307

/-- `ogf((1+x^2-x^3)/(1-2x+3x^2-2x^3+x^4))` -/
def P10854568735272959126.Spec : Prop :=
  ∀ n, P10854568735272959126.a n = A187307 n

theorem P10854568735272959126.correct : P10854568735272959126.Spec := by
  intro n
  simp only [A187307]

end A187307

/-! ## A187307.P17944475886114658292

`∑[n*round(cos(n%6))]+1`
-/

namespace A187307.P17944475886114658292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A187307.P17944475886114658292

namespace A187307

/-- `∑[n*round(cos(n%6))]+1` -/
def P17944475886114658292.Spec : Prop :=
  ∀ n, P17944475886114658292.a n = A187307 n

end A187307

/-! ## A187307.P1813501855486458853

`∑[n*(∑[lcm(2, 1-n)]%3-1)]+1`
-/

namespace A187307.P1813501855486458853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A187307.P1813501855486458853

namespace A187307

/-- `∑[n*(∑[lcm(2, 1-n)]%3-1)]+1` -/
def P1813501855486458853.Spec : Prop :=
  ∀ n, P1813501855486458853.a n = A187307 n

end A187307

/-! ## A187307.P17687265519193705273

`∑[n*∑[a(n-1)-a(n-2)]]+1` with `a(0)=1, a(1)=0`
-/

namespace A187307.P17687265519193705273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A187307.P17687265519193705273

namespace A187307

/-- `∑[n*∑[a(n-1)-a(n-2)]]+1` -/
def P17687265519193705273.Spec : Prop :=
  ∀ n, P17687265519193705273.a n = A187307 n

end A187307

/-! ## A187307.P4756835043821723903

`a(n-1)-n*(a(n-1)+a(n-2))%3` with `a(0)=1, a(1)=2`
-/

namespace A187307.P4756835043821723903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (n : ℤ) * Int.tmod (a (n - 1) + a (n - 2)) 3

end

end A187307.P4756835043821723903

namespace A187307

/-- `a(n-1)-n*(a(n-1)+a(n-2))%3` -/
def P4756835043821723903.Spec : Prop :=
  ∀ n, P4756835043821723903.a n = A187307 n

end A187307

/-! ## A187307.P13799407615862614144

`A110666(n)+1`
-/

namespace A187307.P13799407615862614144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 n + 1

end

end A187307.P13799407615862614144

namespace A187307

/-- `A110666(n)+1` -/
def P13799407615862614144.Spec : Prop :=
  ∀ n, P13799407615862614144.a n = A187307 n

end A187307

/-! ## A187307.P7340294099508435338

`round(A100052(n)/2)`
-/

namespace A187307.P7340294099508435338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100052 n : ℚ) / 2)

end

end A187307.P7340294099508435338

namespace A187307

/-- `round(A100052(n)/2)` -/
def P7340294099508435338.Spec : Prop :=
  ∀ n, P7340294099508435338.a n = A187307 n

end A187307

/-! ## A187307.P11855985498323499730

`∑[A110665(n)]+1`
-/

namespace A187307.P11855985498323499730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A187307.P11855985498323499730

namespace A187307

/-- `∑[A110665(n)]+1` -/
def P11855985498323499730.Spec : Prop :=
  ∀ n, P11855985498323499730.a n = A187307 n

end A187307

/-! ## A187307.P4726072094206716749

`∑[n*A010892(n)]+1`
-/

namespace A187307.P4726072094206716749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A187307.P4726072094206716749

namespace A187307

/-- `∑[n*A010892(n)]+1` -/
def P4726072094206716749.Spec : Prop :=
  ∀ n, P4726072094206716749.a n = A187307 n

end A187307

/-! ## A187307.P8728313842805459073

`A100050(n)+A010892(n)`
-/

namespace A187307.P8728313842805459073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n + A010892 n

end

end A187307.P8728313842805459073

namespace A187307

/-- `A100050(n)+A010892(n)` -/
def P8728313842805459073.Spec : Prop :=
  ∀ n, P8728313842805459073.a n = A187307 n

end A187307

/-! ## A187307.P13329093635497658797

`A128834(n)+A128213(n)`
-/

namespace A187307.P13329093635497658797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + A128213 n

end

end A187307.P13329093635497658797

namespace A187307

/-- `A128834(n)+A128213(n)` -/
def P13329093635497658797.Spec : Prop :=
  ∀ n, P13329093635497658797.a n = A187307 n

end A187307

/-! ## A187307.P10852736158427611271

`A165202(n)-A128834(n)`
-/

namespace A187307.P10852736158427611271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n - A128834 n

end

end A187307.P10852736158427611271

namespace A187307

/-- `A165202(n)-A128834(n)` -/
def P10852736158427611271.Spec : Prop :=
  ∀ n, P10852736158427611271.a n = A187307 n

end A187307

/-! ## A187307.P18110237476535607655

`xor(A011655(n), A165202(n))`
-/

namespace A187307.P18110237476535607655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A165202 n)

end

end A187307.P18110237476535607655

namespace A187307

/-- `xor(A011655(n), A165202(n))` -/
def P18110237476535607655.Spec : Prop :=
  ∀ n, P18110237476535607655.a n = A187307 n

end A187307

/-! ## A187307.P1109091579602050345

`∑[A010892(n)*A028310(n)]`
-/

namespace A187307.P1109091579602050345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187307.P1109091579602050345

namespace A187307

/-- `∑[A010892(n)*A028310(n)]` -/
def P1109091579602050345.Spec : Prop :=
  ∀ n, P1109091579602050345.a n = A187307 n

end A187307

/-! ## A187307.P2224538726834131850

`A165202(n)+1-A164965(n)`
-/

namespace A187307.P2224538726834131850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n + (1 - A164965 n)

end

end A187307.P2224538726834131850

namespace A187307

/-- `A165202(n)+1-A164965(n)` -/
def P2224538726834131850.Spec : Prop :=
  ∀ n, P2224538726834131850.a n = A187307 n

end A187307

/-! ## A187307.P13630773159329331297

`A010892(n)-n*A163810(n)`
-/

namespace A187307.P13630773159329331297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n - (n : ℤ) * A163810 n

end

end A187307.P13630773159329331297

namespace A187307

/-- `A010892(n)-n*A163810(n)` -/
def P13630773159329331297.Spec : Prop :=
  ∀ n, P13630773159329331297.a n = A187307 n

end A187307

/-! ## A187307.P7383904829660574036

`A100050(n)+∑[∑[A163810(n)]]`
-/

namespace A187307.P7383904829660574036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187307.P7383904829660574036

namespace A187307

/-- `A100050(n)+∑[∑[A163810(n)]]` -/
def P7383904829660574036.Spec : Prop :=
  ∀ n, P7383904829660574036.a n = A187307 n

end A187307

/-! ## A187307.P2262433913186113992

`A164611(n+1)%(n+2)`
-/

namespace A187307.P2262433913186113992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164611 (n + 1)) (n + 2 : ℤ)

end

end A187307.P2262433913186113992

namespace A187307

/-- `A164611(n+1)%(n+2)` -/
def P2262433913186113992.Spec : Prop :=
  ∀ n, P2262433913186113992.a n = A187307 n

end A187307

/-! ## A187307.P4759395640550676858

`A128834(n+1)+A100050(n)`
-/

namespace A187307.P4759395640550676858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (n + 1) + A100050 n

end

end A187307.P4759395640550676858

namespace A187307

/-- `A128834(n+1)+A100050(n)` -/
def P4759395640550676858.Spec : Prop :=
  ∀ n, P4759395640550676858.a n = A187307 n

end A187307

/-! ## A187307.P17416209856627790362

`A100050(n)-A163810(n+1)`
-/

namespace A187307.P17416209856627790362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n - A163810 (n + 1)

end

end A187307.P17416209856627790362

namespace A187307

/-- `A100050(n)-A163810(n+1)` -/
def P17416209856627790362.Spec : Prop :=
  ∀ n, P17416209856627790362.a n = A187307 n

end A187307

/-!
# A187308: Half the number of (n+2) X (n+2) binary arrays with each 3 X 3 subblock having sum 3, 4, 5 or 6.

The programs for A187308, there is no canonical definition to state claims against.
-/

/-! ## A187308.P3331274374553065057

`A187317((n+1)²+n²)`
-/

namespace A187308.P3331274374553065057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 ((n + 1) ^ 2 + n ^ 2)

end

end A187308.P3331274374553065057

/-!
# A187309: Half the number of (n+2) X 3 binary arrays with each 3 X 3 subblock having sum 3, 4, 5 or 6.

The programs for A187309, there is no canonical definition to state claims against.
-/

/-! ## A187309.P4000538908195968601

`A187317(∑[n]+1)`
-/

namespace A187309.P4000538908195968601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187309.P4000538908195968601

/-! ## A187309.P10179674485470782991

`record[A187317(n+1)/A174790(n)]`
-/

namespace A187309.P10179674485470782991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187317 (n + 1) : ℚ) / (A174790 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187309.P10179674485470782991

/-! ## A187309.P12719416149042093058

`record[root(A187317(n+1), A007318(n))]`
-/

namespace A187309.P12719416149042093058
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187317 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187309.P12719416149042093058

/-! ## A187309.P27347293271666856

`record[root(A187317(n+1), A002260(n+1))]`
-/

namespace A187309.P27347293271666856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187317 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187309.P27347293271666856

/-! ## A187309.P432067426329617958

`record[root(A187317(n+1), A208757(n+1))]`
-/

namespace A187309.P432067426329617958
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187317 (n + 1) : ℝ) ^ (1 / (A208757 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187309.P432067426329617958

/-!
# A187310: Half the number of (n+2)X4 binary arrays with each 3X3 subblock having sum 3, 4, 5 or 6.

The programs for A187310, there is no canonical definition to state claims against.
-/

/-! ## A187310.P10569138787979915476

`A187317(∑[n+1]+2)`
-/

namespace A187310.P10569138787979915476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187310.P10569138787979915476

/-! ## A187310.P2841046776939535186

`record[A187317(A333530(n+1))]`
-/

namespace A187310.P2841046776939535186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187310.P2841046776939535186

/-! ## A187310.P14351333285603153746

`record[A187317(Δ[A003453(n+5)])]`
-/

namespace A187310.P14351333285603153746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187310.P14351333285603153746

/-!
# A187311: Half the number of (n+2) X 5 binary arrays with each 3 X 3 subblock having sum 3, 4, 5 or 6.

The programs for A187311, there is no canonical definition to state claims against.
-/

/-! ## A187311.P12998893789155302007

`A187317(∑[n+2]+4)`
-/

namespace A187311.P12998893789155302007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187311.P12998893789155302007

/-! ## A187311.P1740619457781575950

`A187317(A167614(n+1))+A055967(n)`
-/

namespace A187311.P1740619457781575950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A167614 (n + 1)).toNat + A055967 n

end

end A187311.P1740619457781575950

/-! ## A187311.P7897947198274970109

`A108358(n)*A187317(A167614(n+1))`
-/

namespace A187311.P7897947198274970109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108358 n * A187317 (A167614 (n + 1)).toNat

end

end A187311.P7897947198274970109

/-! ## A187311.P12050495786174517913

`A187317(A167614(n+1))+A034541(n+1)`
-/

namespace A187311.P12050495786174517913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A167614 (n + 1)).toNat + A034541 (n + 1)

end

end A187311.P12050495786174517913

/-! ## A187311.P12626781401905103505

`A200214(n+1)+A187317(A167614(n+1))`
-/

namespace A187311.P12626781401905103505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (n + 1) + A187317 (A167614 (n + 1)).toNat

end

end A187311.P12626781401905103505

/-!
# A187312: Half the number of (n+2)X6 binary arrays with each 3X3 subblock having sum 3, 4, 5 or 6.

The programs for A187312, there is no canonical definition to state claims against.
-/

/-! ## A187312.P13606395118362206147

`A187317(A141214(n)+7)`
-/

namespace A187312.P13606395118362206147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A141214 n + 7).toNat

end

end A187312.P13606395118362206147

/-! ## A187312.P11103169660964177197

`A187317(A055999(n)+10)`
-/

namespace A187312.P11103169660964177197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A055999 n + 10).toNat

end

end A187312.P11103169660964177197

/-! ## A187312.P13095906175614745981

`A187317(A167614(n+2)+1)`
-/

namespace A187312.P13095906175614745981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A167614 (n + 2) + 1).toNat

end

end A187312.P13095906175614745981

/-! ## A187312.P12454348465624872615

`A187317(A141214(n+1))`
-/

namespace A187312.P12454348465624872615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A141214 (n + 1)).toNat

end

end A187312.P12454348465624872615

/-! ## A187312.P14395929310924444577

`A187317(A374004(n+1))`
-/

namespace A187312.P14395929310924444577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A374004 (n + 1)).toNat

end

end A187312.P14395929310924444577

/-!
# A187313: Half the number of (n+2)X7 binary arrays with each 3X3 subblock having sum 3, 4, 5 or 6.

The programs for A187313, there is no canonical definition to state claims against.
-/

/-! ## A187313.P18440434456803956333

`A187317(A056000(n)+15)`
-/

namespace A187313.P18440434456803956333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A056000 n + 15).toNat

end

end A187313.P18440434456803956333

/-! ## A187313.P5329547872917977149

`A187317(A374005(n+1))`
-/

namespace A187313.P5329547872917977149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A374005 (n + 1)).toNat

end

end A187313.P5329547872917977149

/-! ## A187313.P17215326493752581501

`A187317(eq[4, A193592(n)])`
-/

namespace A187313.P17215326493752581501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187313.P17215326493752581501

/-! ## A187313.P18435775643550924389

`A187317(Δ[A023545(n+1)])`
-/

namespace A187313.P18435775643550924389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (f1 (n + 1) - f1 n).toNat

end

end A187313.P18435775643550924389

/-! ## A187313.P9423011753702033504

`A187317(A055999(n+2)+2)`
-/

namespace A187313.P9423011753702033504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A055999 (n + 2) + 2).toNat

end

end A187313.P9423011753702033504

/-!
# A187314: Half the number of (n+2)X8 binary arrays with each 3X3 subblock having sum 3, 4, 5 or 6.

The programs for A187314, there is no canonical definition to state claims against.
-/

/-! ## A187314.P8860807442315062082

`A187317(A374007(n+1))`
-/

namespace A187314.P8860807442315062082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (A374007 (n + 1)).toNat

end

end A187314.P8860807442315062082

/-! ## A187314.P6062501822546103864

`A187317(eq[5, A193592(n)])`
-/

namespace A187314.P6062501822546103864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187314.P6062501822546103864

/-!
# A187318: a(n) = floor(9*n/5).

The programs for A187318, the canonical program `A187318.P17701048511137673825` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187318 has offset 0).

The definition of A187318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9*n/5)` (program `A187318.P17701048511137673825`, by `A187318.P17701048511137673825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187318.P17701048511137673825

`floor(9*n/5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187318

/-- `floor(9*n/5)` -/
def P17701048511137673825.Spec : Prop :=
  ∀ n, P17701048511137673825.a n = A187318 n

theorem P17701048511137673825.correct : P17701048511137673825.Spec := by
  intro n
  simp only [A187318]

end A187318

/-! ## A187318.P16391742968224567974

`ogf((x+2x^2+2x^3+2x^4+2x^5)/(1-x-x^5+x^6))`
-/

namespace A187318.P16391742968224567974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 2, 2] [1, -1, 0, 0, 0, -1, 1] n

end

end A187318.P16391742968224567974

namespace A187318

/-- `ogf((x+2x^2+2x^3+2x^4+2x^5)/(1-x-x^5+x^6))` -/
def P16391742968224567974.Spec : Prop :=
  ∀ n, P16391742968224567974.a n = A187318 n

end A187318

/-! ## A187318.P5421455532575868966

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=7, a(5)=9`
-/

namespace A187318.P5421455532575868966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5, 7, 9] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A187318.P5421455532575868966

namespace A187318

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P5421455532575868966.Spec : Prop :=
  ∀ n, P5421455532575868966.a n = A187318 n

end A187318

/-! ## A187318.P13706428424947729430

`record[n*dr(n)%2]`
-/

namespace A187318.P13706428424947729430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.digitalRoot (n : ℤ) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187318.P13706428424947729430

namespace A187318

/-- `record[n*dr(n)%2]` -/
def P13706428424947729430.Spec : Prop :=
  ∀ n, (P13706428424947729430.a n : ℤ) = A187318 n

end A187318

/-! ## A187318.P9368106804623219440

`lt[(-n)^dr(n), 2]`
-/

namespace A187318.P9368106804623219440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187318.P9368106804623219440

namespace A187318

/-- `lt[(-n)^dr(n), 2]` -/
def P9368106804623219440.Spec : Prop :=
  ∀ n, (P9368106804623219440.a n : ℤ) = A187318 n

end A187318

/-! ## A187318.P14086354555779706117

`record[n-8%dr(n+1)]`
-/

namespace A187318.P14086354555779706117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((8 % SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187318.P14086354555779706117

namespace A187318

/-- `record[n-8%dr(n+1)]` -/
def P14086354555779706117.Spec : Prop :=
  ∀ n, P14086354555779706117.a n = A187318 n

end A187318

/-! ## A187318.P914736711139212123

`comp[comp[lcm(5, n)]+1+n]`
-/

namespace A187318.P914736711139212123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187318.P914736711139212123

namespace A187318

/-- `comp[comp[lcm(5, n)]+1+n]` -/
def P914736711139212123.Spec : Prop :=
  ∀ n, (P914736711139212123.a n : ℤ) = A187318 n

end A187318

/-! ## A187318.P5972265176680035281

`record[(n^dr(n))%(n+1)]`
-/

namespace A187318.P5972265176680035281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n : ℤ) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187318.P5972265176680035281

namespace A187318

/-- `record[(n^dr(n))%(n+1)]` -/
def P5972265176680035281.Spec : Prop :=
  ∀ n, (P5972265176680035281.a n : ℤ) = A187318 n

end A187318

/-! ## A187318.P9639683502598702579

`lcm(2, 2*n)-ceil(n/5)`
-/

namespace A187318.P9639683502598702579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ⌈(n : ℚ) / 5⌉

end

end A187318.P9639683502598702579

namespace A187318

/-- `lcm(2, 2*n)-ceil(n/5)` -/
def P9639683502598702579.Spec : Prop :=
  ∀ n, P9639683502598702579.a n = A187318 n

end A187318

/-! ## A187318.P3286572715337348441

`a(n-5)+9` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=7`
-/

namespace A187318.P3286572715337348441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5, 7] fun n a =>
  a (n - 5) + 9

end

end A187318.P3286572715337348441

namespace A187318

/-- `a(n-5)+9` -/
def P3286572715337348441.Spec : Prop :=
  ∀ n, (P3286572715337348441.a n : ℤ) = A187318 n

end A187318

/-! ## A187318.P4605898220105553589

`∑[gcd(2, a(n-5))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A187318.P4605898220105553589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 2] fun n f1 =>
  Nat.gcd 2 (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187318.P4605898220105553589

namespace A187318

/-- `∑[gcd(2, a(n-5))]` -/
def P4605898220105553589.Spec : Prop :=
  ∀ n, (P4605898220105553589.a n : ℤ) = A187318 n

end A187318

/-! ## A187318.P16633444461424834442

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=2, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A187318.P16633444461424834442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 2, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187318.P16633444461424834442

namespace A187318

/-- `∑[floor(a(n-5))]` -/
def P16633444461424834442.Spec : Prop :=
  ∀ n, (P16633444461424834442.a n : ℤ) = A187318 n

end A187318

/-! ## A187318.P12023952191650513903

`xor(1, 2*n+1)-ceil(n/5)`
-/

namespace A187318.P12023952191650513903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n + 1) : ℤ) - ⌈(n : ℚ) / 5⌉

end

end A187318.P12023952191650513903

namespace A187318

/-- `xor(1, 2*n+1)-ceil(n/5)` -/
def P12023952191650513903.Spec : Prop :=
  ∀ n, P12023952191650513903.a n = A187318 n

end A187318

/-! ## A187318.P11224245450666950490

`2*n-ceil(gcd(n, 2*n)/5)`
-/

namespace A187318.P11224245450666950490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌈(Nat.gcd n (2 * n) : ℚ) / 5⌉

end

end A187318.P11224245450666950490

namespace A187318

/-- `2*n-ceil(gcd(n, 2*n)/5)` -/
def P11224245450666950490.Spec : Prop :=
  ∀ n, P11224245450666950490.a n = A187318 n

end A187318

/-! ## A187318.P5852276951291258879

`round(xor(1, 2*n+1)-(n+2)/5)`
-/

namespace A187318.P5852276951291258879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n + 1) : ℚ) - (n + 2 : ℚ) / 5)

end

end A187318.P5852276951291258879

namespace A187318

/-- `round(xor(1, 2*n+1)-(n+2)/5)` -/
def P5852276951291258879.Spec : Prop :=
  ∀ n, P5852276951291258879.a n = A187318 n

end A187318

/-! ## A187318.P9803082521542500497

`n-floor(a(n-1)/(3/4-3))` with `a(0)=0`
-/

namespace A187318.P9803082521542500497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) / ((3 : ℚ) / 4 - 3)⌋

end

end A187318.P9803082521542500497

namespace A187318

/-- `n-floor(a(n-1)/(3/4-3))` -/
def P9803082521542500497.Spec : Prop :=
  ∀ n, P9803082521542500497.a n = A187318 n

end A187318

/-! ## A187318.P13429264731436583981

`round(2*n-C(n+2, n+1)/5)`
-/

namespace A187318.P13429264731436583981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) - (Nat.choose (n + 2) (n + 1) : ℚ) / 5)

end

end A187318.P13429264731436583981

namespace A187318

/-- `round(2*n-C(n+2, n+1)/5)` -/
def P13429264731436583981.Spec : Prop :=
  ∀ n, P13429264731436583981.a n = A187318 n

end A187318

/-! ## A187318.P17750291155394822473

`and(2*n+1, 2*n)-ceil(n/5)`
-/

namespace A187318.P17750291155394822473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n + 1) (2 * n) : ℤ) - ⌈(n : ℚ) / 5⌉

end

end A187318.P17750291155394822473

namespace A187318

/-- `and(2*n+1, 2*n)-ceil(n/5)` -/
def P17750291155394822473.Spec : Prop :=
  ∀ n, P17750291155394822473.a n = A187318 n

end A187318

/-! ## A187318.P15462149541422903449

`lt[dr(5*(n+1))+n-3, n+3]`
-/

namespace A187318.P15462149541422903449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (5 * (n + 1) : ℤ) : ℤ) + ((n : ℤ) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A187318.P15462149541422903449

namespace A187318

/-- `lt[dr(5*(n+1))+n-3, n+3]` -/
def P15462149541422903449.Spec : Prop :=
  ∀ n, (P15462149541422903449.a n : ℤ) = A187318 n

end A187318

/-! ## A187318.P17886119860273800807

`round(and(2*n+1, 2*n)-(n+2)/5)`
-/

namespace A187318.P17886119860273800807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land (2 * n + 1) (2 * n) : ℚ) - (n + 2 : ℚ) / 5)

end

end A187318.P17886119860273800807

namespace A187318

/-- `round(and(2*n+1, 2*n)-(n+2)/5)` -/
def P17886119860273800807.Spec : Prop :=
  ∀ n, P17886119860273800807.a n = A187318 n

end A187318

/-!
# A187319: Rank transform of the sequence floor(n/sqrt(3)); complement of A187410.

The programs for A187319, there is no canonical definition to state claims against.
-/

/-! ## A187319.P9897242692743689784

`comp[A187410(n+1)-1]+1`
-/

namespace A187319.P9897242692743689784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187410 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187319.P9897242692743689784

/-! ## A187319.P3177162805562609349

`comp[∪[A187860(2*(n+1)), A187410(n+1)]]`
-/

namespace A187319.P3177162805562609349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187860 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187319.P3177162805562609349

/-! ## A187319.P15744185652563716804

`eq[char[A187410(n+1)], A000038(n)]`
-/

namespace A187319.P15744185652563716804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187319.P15744185652563716804

/-! ## A187319.P3729787409182985498

`A097337(A187410(n+1)-(n+1))`
-/

namespace A187319.P3729787409182985498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A187410 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187319.P3729787409182985498

/-! ## A187319.P70676436019365373

`eq[char[A187410(n+1)], A151933(n)]`
-/

namespace A187319.P70676436019365373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187319.P70676436019365373

/-!
# A187320: a(n) = floor((Pi-2)*n); complement of A186544.

The programs for A187320, the canonical program `A187320.P11509813855866118818` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187320 has offset 0).

The definition of A187320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((π-2)*n)` (program `A187320.P11509813855866118818`, by `A187320.P11509813855866118818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187320.P11509813855866118818

`floor((π-2)*n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187320

/-- `floor((π-2)*n)` -/
def P11509813855866118818.Spec : Prop :=
  ∀ n, P11509813855866118818.a n = A187320 n

theorem P11509813855866118818.correct : P11509813855866118818.Spec := by
  intro n
  simp only [A187320]

end A187320

/-! ## A187320.P1938075196503202988

`A063459(n)-n`
-/

namespace A187320.P1938075196503202988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n - (n : ℤ)

end

end A187320.P1938075196503202988

namespace A187320

/-- `A063459(n)-n` -/
def P1938075196503202988.Spec : Prop :=
  ∀ n, P1938075196503202988.a n = A187320 n

end A187320

/-! ## A187320.P17303851278428243852

`comp[A186544(n+1)]`
-/

namespace A187320.P17303851278428243852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187320.P17303851278428243852

namespace A187320

/-- `comp[A186544(n+1)]` -/
def P17303851278428243852.Spec : Prop :=
  ∀ n, (P17303851278428243852.a n : ℤ) = A187320 n

end A187320

/-! ## A187320.P5575959499837685997

`A022844(n)-2*n`
-/

namespace A187320.P5575959499837685997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n - (2 * n : ℤ)

end

end A187320.P5575959499837685997

namespace A187320

/-- `A022844(n)-2*n` -/
def P5575959499837685997.Spec : Prop :=
  ∀ n, P5575959499837685997.a n = A187320 n

end A187320

/-! ## A187320.P5159935846193691170

`3*n-A195125(n)`
-/

namespace A187320.P5159935846193691170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A195125 n

end

end A187320.P5159935846193691170

namespace A187320

/-- `3*n-A195125(n)` -/
def P5159935846193691170.Spec : Prop :=
  ∀ n, P5159935846193691170.a n = A187320 n

end A187320

/-! ## A187320.P16313111306411705007

`A121381(n)%(2*n+1)`
-/

namespace A187320.P16313111306411705007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121381 n) (2 * n + 1 : ℤ)

end

end A187320.P16313111306411705007

namespace A187320

/-- `A121381(n)%(2*n+1)` -/
def P16313111306411705007.Spec : Prop :=
  ∀ n, P16313111306411705007.a n = A187320 n

end A187320

/-! ## A187320.P18165233871354757273

`A004084(n+1)-(2*n+1)`
-/

namespace A187320.P18165233871354757273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1) - (2 * n + 1 : ℤ)

end

end A187320.P18165233871354757273

namespace A187320

/-- `A004084(n+1)-(2*n+1)` -/
def P18165233871354757273.Spec : Prop :=
  ∀ n, P18165233871354757273.a n = A187320 n

end A187320

/-! ## A187320.P3171358610306419323

`A022844(n)%A004277(n)`
-/

namespace A187320.P3171358610306419323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022844 n) (A004277 n)

end

end A187320.P3171358610306419323

namespace A187320

/-- `A022844(n)%A004277(n)` -/
def P3171358610306419323.Spec : Prop :=
  ∀ n, P3171358610306419323.a n = A187320 n

end A187320

/-! ## A187320.P8651167444083133405

`A004084(n+1)%A157142(n)`
-/

namespace A187320.P8651167444083133405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004084 (n + 1)) (A157142 n)

end

end A187320.P8651167444083133405

namespace A187320

/-- `A004084(n+1)%A157142(n)` -/
def P8651167444083133405.Spec : Prop :=
  ∀ n, P8651167444083133405.a n = A187320 n

end A187320

/-! ## A187320.P2363108101300666414

`A140758(2*n)-2*n`
-/

namespace A187320.P2363108101300666414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (2 * n) - (2 * n : ℤ)

end

end A187320.P2363108101300666414

namespace A187320

/-- `A140758(2*n)-2*n` -/
def P2363108101300666414.Spec : Prop :=
  ∀ n, P2363108101300666414.a n = A187320 n

end A187320

/-! ## A187320.P10375012710350497998

`lt[and(n, -n)!, (n+2)²]`
-/

namespace A187320.P10375012710350497998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (n : ℤ) (-(n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187320.P10375012710350497998

namespace A187320

/-- `lt[and(n, -n)!, (n+2)²]` -/
def P10375012710350497998.Spec : Prop :=
  ∀ n, (P10375012710350497998.a n : ℤ) = A187320 n

end A187320

/-!
# A187321: a(n) = floor(n/2) + floor(n/4).

The programs for A187321, the canonical program `A187321.P17170915847334665842` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187321 has offset 0).

The definition of A187321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)+floor(n/4)` (program `A187321.P17170915847334665842`, by `A187321.P17170915847334665842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187321.P17170915847334665842

`floor(n/2)+floor(n/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187321

/-- `floor(n/2)+floor(n/4)` -/
def P17170915847334665842.Spec : Prop :=
  ∀ n, P17170915847334665842.a n = A187321 n

theorem P17170915847334665842.correct : P17170915847334665842.Spec := by
  intro n
  simp only [A187321]

end A187321

/-! ## A187321.P10247626213173045949

`ogf((x^2+2x^4)/(1-x-x^4+x^5))`
-/

namespace A187321.P10247626213173045949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 0, 2] [1, -1, 0, 0, -1, 1] n

end

end A187321.P10247626213173045949

namespace A187321

/-- `ogf((x^2+2x^4)/(1-x-x^4+x^5))` -/
def P10247626213173045949.Spec : Prop :=
  ∀ n, P10247626213173045949.a n = A187321 n

end A187321

/-! ## A187321.P13433606530526124669

`(6*n-5+2*cos(n*π/2)+3*cos(n*π)+2*sin(n*π/2))/8`
-/

namespace A187321.P13433606530526124669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 * n : ℤ) - 5 : ℝ) + 2 * Real.cos ((n : ℝ) * Real.pi / 2) + 3 * Real.cos ((n : ℝ) * Real.pi) + 2 * Real.sin ((n : ℝ) * Real.pi / 2)) / 8

end

end A187321.P13433606530526124669

namespace A187321

/-- `(6*n-5+2*cos(n*π/2)+3*cos(n*π)+2*sin(n*π/2))/8` -/
def P13433606530526124669.Spec : Prop :=
  ∀ n, P13433606530526124669.a n = (A187321 n : ℝ)

end A187321

/-! ## A187321.P2387999680109552071

`A032766(floor(n/2))`
-/

namespace A187321.P2387999680109552071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ⌊(n : ℚ) / 2⌋.toNat

end

end A187321.P2387999680109552071

namespace A187321

/-- `A032766(floor(n/2))` -/
def P2387999680109552071.Spec : Prop :=
  ∀ n, P2387999680109552071.a n = A187321 n

end A187321

/-! ## A187321.P2660101113785246536

`ceil(3*or(1, n-2)/4)`
-/

namespace A187321.P2660101113785246536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((Int.lor 1 ((n : ℤ) - 2) : ℚ) / 4)⌉

end

end A187321.P2660101113785246536

namespace A187321

/-- `ceil(3*or(1, n-2)/4)` -/
def P2660101113785246536.Spec : Prop :=
  ∀ n, P2660101113785246536.a n = A187321 n

end A187321

/-! ## A187321.P10415503214772940769

`abs(a(n-4)+3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A187321.P10415503214772940769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  a (n - 4) + 3

end

end A187321.P10415503214772940769

namespace A187321

/-- `abs(a(n-4)+3)` -/
def P10415503214772940769.Spec : Prop :=
  ∀ n, (P10415503214772940769.a n : ℤ) = A187321 n

end A187321

/-! ## A187321.P16866926344108486352

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A187321.P16866926344108486352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187321.P16866926344108486352

namespace A187321

/-- `∑[abs(a(n-4))]` -/
def P16866926344108486352.Spec : Prop :=
  ∀ n, (P16866926344108486352.a n : ℤ) = A187321 n

end A187321

/-! ## A187321.P3649960988868061065

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A187321.P3649960988868061065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187321.P3649960988868061065

namespace A187321

/-- `∑[dr(a(n-4))]` -/
def P3649960988868061065.Spec : Prop :=
  ∀ n, (P3649960988868061065.a n : ℤ) = A187321 n

end A187321

/-! ## A187321.P14890711815996948503

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A187321.P14890711815996948503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187321.P14890711815996948503

namespace A187321

/-- `∑[floor(a(n-4))]` -/
def P14890711815996948503.Spec : Prop :=
  ∀ n, (P14890711815996948503.a n : ℤ) = A187321 n

end A187321

/-! ## A187321.P7440178909566943567

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A187321.P7440178909566943567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187321.P7440178909566943567

namespace A187321

/-- `∑[ceil(a(n-4))]` -/
def P7440178909566943567.Spec : Prop :=
  ∀ n, (P7440178909566943567.a n : ℤ) = A187321 n

end A187321

/-! ## A187321.P653548598725148339

`∑[round(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A187321.P653548598725148339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187321.P653548598725148339

namespace A187321

/-- `∑[round(a(n-4))]` -/
def P653548598725148339.Spec : Prop :=
  ∀ n, (P653548598725148339.a n : ℤ) = A187321 n

end A187321

/-! ## A187321.P7885420755097075088

`ceil(or(1, n-2)-(n-2)/4)`
-/

namespace A187321.P7885420755097075088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 1 ((n : ℤ) - 2) : ℚ) - ((n : ℤ) - 2 : ℚ) / 4⌉

end

end A187321.P7885420755097075088

namespace A187321

/-- `ceil(or(1, n-2)-(n-2)/4)` -/
def P7885420755097075088.Spec : Prop :=
  ∀ n, P7885420755097075088.a n = A187321 n

end A187321

/-! ## A187321.P405195027885233779

`∑[∑[2/a(n-2)]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=-1`
-/

namespace A187321.P405195027885233779
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1, -1] fun n f2 =>
  2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187321.P405195027885233779

namespace A187321

/-- `∑[∑[2/a(n-2)]]` -/
def P405195027885233779.Spec : Prop :=
  ∀ n, P405195027885233779.a n = (A187321 n : ℚ)

end A187321

/-! ## A187321.P17057823701115687556

`∑[and(n-1, a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A187321.P17057823701115687556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 2] fun n f1 =>
  Int.land ((n : ℤ) - 1) (f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187321.P17057823701115687556

namespace A187321

/-- `∑[and(n-1, a(n-4))]` -/
def P17057823701115687556.Spec : Prop :=
  ∀ n, P17057823701115687556.a n = A187321 n

end A187321

/-! ## A187321.P10886796934163628195

`(A226279(n)+n)/2`
-/

namespace A187321.P10886796934163628195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226279 n + (n : ℤ) : ℚ) / 2

end

end A187321.P10886796934163628195

namespace A187321

/-- `(A226279(n)+n)/2` -/
def P10886796934163628195.Spec : Prop :=
  ∀ n, P10886796934163628195.a n = (A187321 n : ℚ)

end A187321

/-! ## A187321.P19559038016163138

`A057353(A052928(n))`
-/

namespace A187321.P19559038016163138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A052928 n).toNat

end

end A187321.P19559038016163138

namespace A187321

/-- `A057353(A052928(n))` -/
def P19559038016163138.Spec : Prop :=
  ∀ n, P19559038016163138.a n = A187321 n

end A187321

/-! ## A187321.P17974472548396205737

`A057353(2*A004526(n))`
-/

namespace A187321.P17974472548396205737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A004526 n).toNat

end

end A187321.P17974472548396205737

namespace A187321

/-- `A057353(2*A004526(n))` -/
def P17974472548396205737.Spec : Prop :=
  ∀ n, P17974472548396205737.a n = A187321 n

end A187321

/-! ## A187321.P11360177497633453879

`A342131(2*A004526(n))`
-/

namespace A187321.P11360177497633453879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 (2 * A004526 n).toNat

end

end A187321.P11360177497633453879

namespace A187321

/-- `A342131(2*A004526(n))` -/
def P11360177497633453879.Spec : Prop :=
  ∀ n, P11360177497633453879.a n = A187321 n

end A187321

/-! ## A187321.P1617630681536606023

`A047237(A109613(n))/2`
-/

namespace A187321.P1617630681536606023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047237 (A109613 n).toNat : ℚ) / 2

end

end A187321.P1617630681536606023

namespace A187321

/-- `A047237(A109613(n))/2` -/
def P1617630681536606023.Spec : Prop :=
  ∀ n, P1617630681536606023.a n = (A187321 n : ℚ)

end A187321

/-! ## A187321.P5528660033259373595

`A057353(A042948(n)-n)`
-/

namespace A187321.P5528660033259373595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A042948 n - (n : ℤ)).toNat

end

end A187321.P5528660033259373595

namespace A187321

/-- `A057353(A042948(n)-n)` -/
def P5528660033259373595.Spec : Prop :=
  ∀ n, P5528660033259373595.a n = A187321 n

end A187321

/-!
# A187322: a(n) = floor(n/2) + floor(3*n/4).

The programs for A187322, the canonical program `A187322.P11342137105815274923` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187322 has offset 0).

The definition of A187322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)+floor(3*n/4)` (program `A187322.P11342137105815274923`, by `A187322.P11342137105815274923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187322.P11342137105815274923

`floor(n/2)+floor(3*n/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187322

/-- `floor(n/2)+floor(3*n/4)` -/
def P11342137105815274923.Spec : Prop :=
  ∀ n, P11342137105815274923.a n = A187322 n

theorem P11342137105815274923.correct : P11342137105815274923.Spec := by
  intro n
  simp only [A187322]

end A187322

/-! ## A187322.P15112448044713401554

`ogf((2x^2+x^3+2x^4)/(1-x-x^4+x^5))`
-/

namespace A187322.P15112448044713401554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 1, 2] [1, -1, 0, 0, -1, 1] n

end

end A187322.P15112448044713401554

namespace A187322

/-- `ogf((2x^2+x^3+2x^4)/(1-x-x^4+x^5))` -/
def P15112448044713401554.Spec : Prop :=
  ∀ n, P15112448044713401554.a n = A187322 n

end A187322

/-! ## A187322.P7028992247448805299

`(10*n-5+3*cos(n*π)+2*(cos(n*π/2)-sin(n*π/2)))/8`
-/

namespace A187322.P7028992247448805299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((10 * n : ℤ) - 5 : ℝ) + 3 * Real.cos ((n : ℝ) * Real.pi) + 2 * (Real.cos ((n : ℝ) * Real.pi / 2) - Real.sin ((n : ℝ) * Real.pi / 2))) / 8

end

end A187322.P7028992247448805299

namespace A187322

/-- `(10*n-5+3*cos(n*π)+2*(cos(n*π/2)-sin(n*π/2)))/8` -/
def P7028992247448805299.Spec : Prop :=
  ∀ n, P7028992247448805299.a n = (A187322 n : ℝ)

end A187322

/-! ## A187322.P14477210124122108000

`a(n-4)+5` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A187322.P14477210124122108000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 3] fun n a =>
  a (n - 4) + 5

end

end A187322.P14477210124122108000

namespace A187322

/-- `a(n-4)+5` -/
def P14477210124122108000.Spec : Prop :=
  ∀ n, (P14477210124122108000.a n : ℤ) = A187322 n

end A187322

/-! ## A187322.P2200772814489602122

`floor(or(1, n)+(n-3)/4)`
-/

namespace A187322.P2200772814489602122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) + ((n : ℤ) - 3 : ℚ) / 4⌋

end

end A187322.P2200772814489602122

namespace A187322

/-- `floor(or(1, n)+(n-3)/4)` -/
def P2200772814489602122.Spec : Prop :=
  ∀ n, P2200772814489602122.a n = A187322 n

end A187322

/-! ## A187322.P616108149770666233

`ceil(xor(1, n)/4+n-1)`
-/

namespace A187322.P616108149770666233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 4 + ((n : ℤ) - 1 : ℚ)⌉

end

end A187322.P616108149770666233

namespace A187322

/-- `ceil(xor(1, n)/4+n-1)` -/
def P616108149770666233.Spec : Prop :=
  ∀ n, P616108149770666233.a n = A187322 n

end A187322

/-! ## A187322.P15589863315019790357

`floor((∑[gcd(2, n)²]-4)/2)`
-/

namespace A187322.P15589863315019790357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4 : ℚ) / 2⌋

end

end A187322.P15589863315019790357

namespace A187322

/-- `floor((∑[gcd(2, n)²]-4)/2)` -/
def P15589863315019790357.Spec : Prop :=
  ∀ n, P15589863315019790357.a n = A187322 n

end A187322

/-! ## A187322.P14559493615428923844

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=2`
-/

namespace A187322.P14559493615428923844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187322.P14559493615428923844

namespace A187322

/-- `∑[abs(a(n-4))]` -/
def P14559493615428923844.Spec : Prop :=
  ∀ n, (P14559493615428923844.a n : ℤ) = A187322 n

end A187322

/-! ## A187322.P13324334438432343061

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=2`
-/

namespace A187322.P13324334438432343061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187322.P13324334438432343061

namespace A187322

/-- `∑[dr(a(n-4))]` -/
def P13324334438432343061.Spec : Prop :=
  ∀ n, (P13324334438432343061.a n : ℤ) = A187322 n

end A187322

/-! ## A187322.P17329604797431230747

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A187322.P17329604797431230747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187322.P17329604797431230747

namespace A187322

/-- `∑[floor(a(n-4))]` -/
def P17329604797431230747.Spec : Prop :=
  ∀ n, (P17329604797431230747.a n : ℤ) = A187322 n

end A187322

/-! ## A187322.P13071019431800154842

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A187322.P13071019431800154842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187322.P13071019431800154842

namespace A187322

/-- `∑[ceil(a(n-4))]` -/
def P13071019431800154842.Spec : Prop :=
  ∀ n, (P13071019431800154842.a n : ℤ) = A187322 n

end A187322

/-! ## A187322.P16758423431535890196

`∑[round(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A187322.P16758423431535890196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187322.P16758423431535890196

namespace A187322

/-- `∑[round(a(n-4))]` -/
def P16758423431535890196.Spec : Prop :=
  ∀ n, (P16758423431535890196.a n : ℤ) = A187322 n

end A187322

/-! ## A187322.P13219623933704339282

`∑[(((n+1)²-4)%8)%3]`
-/

namespace A187322.P13219623933704339282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (((n + 1) ^ 2 : ℤ) - 4) 8) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187322.P13219623933704339282

namespace A187322

/-- `∑[(((n+1)²-4)%8)%3]` -/
def P13219623933704339282.Spec : Prop :=
  ∀ n, P13219623933704339282.a n = A187322 n

end A187322

/-! ## A187322.P9605967645703557639

`∑[a(n-4)%3]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=2`
-/

namespace A187322.P9605967645703557639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 2] fun n f1 =>
  f1 (n - 4) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187322.P9605967645703557639

namespace A187322

/-- `∑[a(n-4)%3]` -/
def P9605967645703557639.Spec : Prop :=
  ∀ n, (P9605967645703557639.a n : ℤ) = A187322 n

end A187322

/-! ## A187322.P6788558522552322215

`ceil(or(1, n-2)+(n+2)/4)`
-/

namespace A187322.P6788558522552322215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 1 ((n : ℤ) - 2) : ℚ) + (n + 2 : ℚ) / 4⌉

end

end A187322.P6788558522552322215

namespace A187322

/-- `ceil(or(1, n-2)+(n+2)/4)` -/
def P6788558522552322215.Spec : Prop :=
  ∀ n, P6788558522552322215.a n = A187322 n

end A187322

/-! ## A187322.P7902301973318882454

`round(or(1, n-2)+(n+3)/4)`
-/

namespace A187322.P7902301973318882454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 ((n : ℤ) - 2) : ℚ) + (n + 3 : ℚ) / 4)

end

end A187322.P7902301973318882454

namespace A187322

/-- `round(or(1, n-2)+(n+3)/4)` -/
def P7902301973318882454.Spec : Prop :=
  ∀ n, P7902301973318882454.a n = A187322 n

end A187322

/-! ## A187322.P2067036343977203591

`∑[∑[2/a(n-2)]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=-1`
-/

namespace A187322.P2067036343977203591
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2, -1] fun n f2 =>
  2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187322.P2067036343977203591

namespace A187322

/-- `∑[∑[2/a(n-2)]]` -/
def P2067036343977203591.Spec : Prop :=
  ∀ n, P2067036343977203591.a n = (A187322 n : ℚ)

end A187322

/-! ## A187322.P18006420635411052940

`∑[2-a(a(n-1))^a(n-2)]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A187322.P18006420635411052940
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  2 - f1 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat ^ (f1 (n - 2))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187322.P18006420635411052940

namespace A187322

/-- `∑[2-a(a(n-1))^a(n-2)]` -/
def P18006420635411052940.Spec : Prop :=
  ∀ n, P18006420635411052940.a n = (A187322 n : ℝ)

end A187322

/-! ## A187322.P16088217855432932308

`floor(A057353(n)+n/2)`
-/

namespace A187322.P16088217855432932308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057353 n : ℚ) + (n : ℚ) / 2⌋

end

end A187322.P16088217855432932308

namespace A187322

/-- `floor(A057353(n)+n/2)` -/
def P16088217855432932308.Spec : Prop :=
  ∀ n, P16088217855432932308.a n = A187322 n

end A187322

/-! ## A187322.P8556447951606908855

`floor(∑[A134451(n)²/2])`
-/

namespace A187322.P8556447951606908855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134451 n ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187322.P8556447951606908855

namespace A187322

/-- `floor(∑[A134451(n)²/2])` -/
def P8556447951606908855.Spec : Prop :=
  ∀ n, P8556447951606908855.a n = A187322 n

end A187322

/-!
# A187323: a(n) = floor(n/2) + floor(n/3) + floor(n/4).

The programs for A187323, the canonical program `A187323.P7069081504533509657` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187323 has offset 0).

The definition of A187323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)+floor(n/3)+floor(n/4)` (program `A187323.P7069081504533509657`, by `A187323.P7069081504533509657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187323.P7069081504533509657

`floor(n/2)+floor(n/3)+floor(n/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187323

/-- `floor(n/2)+floor(n/3)+floor(n/4)` -/
def P7069081504533509657.Spec : Prop :=
  ∀ n, P7069081504533509657.a n = A187323 n

theorem P7069081504533509657.correct : P7069081504533509657.Spec := by
  intro n
  simp only [A187323]

end A187323

/-! ## A187323.P14249365329194610429

`ogf((x^2+2x^3+4x^4+3x^5+3x^6)/(1-x^3-x^4+x^7))`
-/

namespace A187323.P14249365329194610429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, 4, 3, 3] [1, 0, 0, -1, -1, 0, 0, 1] n

end

end A187323.P14249365329194610429

namespace A187323

/-- `ogf((x^2+2x^3+4x^4+3x^5+3x^6)/(1-x^3-x^4+x^7))` -/
def P14249365329194610429.Spec : Prop :=
  ∀ n, P14249365329194610429.a n = A187323 n

end A187323

/-! ## A187323.P10811300492038700587

`∑[∑{d}[n, round(log2(#)/#)]]`
-/

namespace A187323.P10811300492038700587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ) / (d : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187323.P10811300492038700587

namespace A187323

/-- `∑[∑{d}[n, round(log2(#)/#)]]` -/
def P10811300492038700587.Spec : Prop :=
  ∀ n, P10811300492038700587.a n = A187323 n

end A187323

/-! ## A187323.P9003682405394864344

`abs(A008647(n)-1+n)`
-/

namespace A187323.P9003682405394864344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008647 n - 1 + (n : ℤ)|

end

end A187323.P9003682405394864344

namespace A187323

/-- `abs(A008647(n)-1+n)` -/
def P9003682405394864344.Spec : Prop :=
  ∀ n, P9003682405394864344.a n = A187323 n

end A187323

/-! ## A187323.P16058460165425424556

`A023443(A008647(n)+n)`
-/

namespace A187323.P16058460165425424556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008647 n + (n : ℤ)).toNat

end

end A187323.P16058460165425424556

namespace A187323

/-- `A023443(A008647(n)+n)` -/
def P16058460165425424556.Spec : Prop :=
  ∀ n, P16058460165425424556.a n = A187323 n

end A187323

/-! ## A187323.P13347482215256429353

`A004526(A004396(n)+2*A187321(n))`
-/

namespace A187323.P13347482215256429353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004396 n + 2 * A187321 n).toNat

end

end A187323.P13347482215256429353

namespace A187323

/-- `A004526(A004396(n)+2*A187321(n))` -/
def P13347482215256429353.Spec : Prop :=
  ∀ n, P13347482215256429353.a n = A187323 n

end A187323

/-! ## A187323.P14848077500982671781

`A004526(A187321(n)+A187321(n)+A004396(n))`
-/

namespace A187323.P14848077500982671781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187321 n + (A187321 n + A004396 n)).toNat

end

end A187323.P14848077500982671781

namespace A187323

/-- `A004526(A187321(n)+A187321(n)+A004396(n))` -/
def P14848077500982671781.Spec : Prop :=
  ∀ n, P14848077500982671781.a n = A187323 n

end A187323

/-!
# A187324: a(n) = floor(n/2) + floor(n/3) - floor(n/4).

The programs for A187324, the canonical program `A187324.P8867585195245753592` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187324 has offset 0).

The definition of A187324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)+floor(n/3)-floor(n/4)` (program `A187324.P8867585195245753592`, by `A187324.P8867585195245753592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187324.P8867585195245753592

`floor(n/2)+floor(n/3)-floor(n/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187324

/-- `floor(n/2)+floor(n/3)-floor(n/4)` -/
def P8867585195245753592.Spec : Prop :=
  ∀ n, P8867585195245753592.a n = A187324 n

theorem P8867585195245753592.correct : P8867585195245753592.Spec := by
  intro n
  simp only [A187324]

end A187324

/-! ## A187324.P1656741783204465244

`ogf((x^2+2x^3+2x^4+x^5+x^6)/(1-x^3-x^4+x^7))`
-/

namespace A187324.P1656741783204465244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, 2, 1, 1] [1, 0, 0, -1, -1, 0, 0, 1] n

end

end A187324.P1656741783204465244

namespace A187324

/-- `ogf((x^2+2x^3+2x^4+x^5+x^6)/(1-x^3-x^4+x^7))` -/
def P1656741783204465244.Spec : Prop :=
  ∀ n, P1656741783204465244.a n = A187324 n

end A187324

/-! ## A187324.P3232800499726891581

`A188511(A063208(n+1))`
-/

namespace A187324.P3232800499726891581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188511 (A063208 (n + 1)).toNat

end

end A187324.P3232800499726891581

namespace A187324

/-- `A188511(A063208(n+1))` -/
def P3232800499726891581.Spec : Prop :=
  ∀ n, P3232800499726891581.a n = A187324 n

end A187324

/-! ## A187324.P11592802382122215753

`A049625(n)%A047201(n+1)`
-/

namespace A187324.P11592802382122215753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049625 n) (A047201 (n + 1))

end

end A187324.P11592802382122215753

namespace A187324

/-- `A049625(n)%A047201(n+1)` -/
def P11592802382122215753.Spec : Prop :=
  ∀ n, P11592802382122215753.a n = A187324 n

end A187324

/-! ## A187324.P8257818554212118172

`A042968(n+1)%A066530(n)`
-/

namespace A187324.P8257818554212118172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042968 (n + 1)) (A066530 n)

end

end A187324.P8257818554212118172

namespace A187324

/-- `A042968(n+1)%A066530(n)` -/
def P8257818554212118172.Spec : Prop :=
  ∀ n, P8257818554212118172.a n = A187324 n

end A187324

/-! ## A187324.P1967214356518824449

`round(A002264(n)+A004526(n)/2)`
-/

namespace A187324.P1967214356518824449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002264 n : ℚ) + (A004526 n : ℚ) / 2)

end

end A187324.P1967214356518824449

namespace A187324

/-- `round(A002264(n)+A004526(n)/2)` -/
def P1967214356518824449.Spec : Prop :=
  ∀ n, P1967214356518824449.a n = A187324 n

end A187324

/-! ## A187324.P714262644665885232

`A047391(n+1)%A047298(n+1)`
-/

namespace A187324.P714262644665885232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047391 (n + 1)) (A047298 (n + 1))

end

end A187324.P714262644665885232

namespace A187324

/-- `A047391(n+1)%A047298(n+1)` -/
def P714262644665885232.Spec : Prop :=
  ∀ n, P714262644665885232.a n = A187324 n

end A187324

/-! ## A187324.P16863227858682135869

`A002264(A047322(n+1))`
-/

namespace A187324.P16863227858682135869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047322 (n + 1)).toNat

end

end A187324.P16863227858682135869

namespace A187324

/-- `A002264(A047322(n+1))` -/
def P16863227858682135869.Spec : Prop :=
  ∀ n, P16863227858682135869.a n = A187324 n

end A187324

/-! ## A187324.P13509357257067299838

`A002265(A047339(n+1))`
-/

namespace A187324.P13509357257067299838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A047339 (n + 1)).toNat

end

end A187324.P13509357257067299838

namespace A187324

/-- `A002265(A047339(n+1))` -/
def P13509357257067299838.Spec : Prop :=
  ∀ n, P13509357257067299838.a n = A187324 n

end A187324

/-!
# A187325: a(n) = floor(n/2) + floor(n/3) + floor(n/4) + floor(n/5).

The programs for A187325, the canonical program `A187325.P11188306233393516696` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187325 has offset 0).

The definition of A187325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)+floor(n/3)+floor(n/4)+floor(n/5)` (program `A187325.P11188306233393516696`, by `A187325.P11188306233393516696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187325.P11188306233393516696

`floor(n/2)+floor(n/3)+floor(n/4)+floor(n/5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187325

/-- `floor(n/2)+floor(n/3)+floor(n/4)+floor(n/5)` -/
def P11188306233393516696.Spec : Prop :=
  ∀ n, P11188306233393516696.a n = A187325 n

theorem P11188306233393516696.correct : P11188306233393516696.Spec := by
  intro n
  simp only [A187325]

end A187325

/-! ## A187325.P11221923621393830041

`ogf((x^2+3x^3+7x^4+11x^5+15x^6+15x^7+13x^8+8x^9+4x^10)/(1+x+x^2-x^4-2x^5-2x^6-x^7+x^9+x^10+x^11))`
-/

namespace A187325.P11221923621393830041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 3, 7, 11, 15, 15, 13, 8, 4] [1, 1, 1, 0, -1, -2, -2, -1, 0, 1, 1, 1] n

end

end A187325.P11221923621393830041

namespace A187325

/-- `ogf((x^2+3x^3+7x^4+11x^5+15x^6+15x^7+13x^8+8x^9+4x^10)/(1+x+x^2-x^4-2x^5-2x^6-x^7+x^9+x^10+x^11))` -/
def P11221923621393830041.Spec : Prop :=
  ∀ n, P11221923621393830041.a n = A187325 n

end A187325

/-! ## A187325.P5053043472306060411

`∑[∑{d}[n, val(#, A049473(#)+1)]]`
-/

namespace A187325.P5053043472306060411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.valuation d (A049473 d + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187325.P5053043472306060411

namespace A187325

/-- `∑[∑{d}[n, val(#, A049473(#)+1)]]` -/
def P5053043472306060411.Spec : Prop :=
  ∀ n, (P5053043472306060411.a n : ℤ) = A187325 n

end A187325

/-! ## A187325.P17850277003692511738

`∑[A001222(gcd(n, A033591(n+1)))%(n+1)]`
-/

namespace A187325.P17850277003692511738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (Int.gcd (n : ℤ) (A033591 (n + 1)))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187325.P17850277003692511738

namespace A187325

/-- `∑[A001222(gcd(n, A033591(n+1)))%(n+1)]` -/
def P17850277003692511738.Spec : Prop :=
  ∀ n, P17850277003692511738.a n = A187325 n

end A187325

/-! ## A187325.P1512425339002423125

`A023443(A106006(n)+A008621(n))`
-/

namespace A187325.P1512425339002423125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A106006 n + A008621 n).toNat

end

end A187325.P1512425339002423125

namespace A187325

/-- `A023443(A106006(n)+A008621(n))` -/
def P1512425339002423125.Spec : Prop :=
  ∀ n, P1512425339002423125.a n = A187325 n

end A187325

/-! ## A187325.P5457279290707705098

`∑[∑{d}[n, A323100(#)%2]]`
-/

namespace A187325.P5457279290707705098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A323100 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187325.P5457279290707705098

namespace A187325

/-- `∑[∑{d}[n, A323100(#)%2]]` -/
def P5457279290707705098.Spec : Prop :=
  ∀ n, P5457279290707705098.a n = A187325 n

end A187325

/-!
# A187326: a(n) = floor(n/4) + floor(n/2) + floor(3n/4).

The programs for A187326, the canonical program `A187326.P15906822961168036251` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187326 has offset 0).

The definition of A187326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)+floor(n/2)+floor(3*n/4)` (program `A187326.P15906822961168036251`, by `A187326.P15906822961168036251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187326.P13252045010535530673

`(3*n-4+gcd(4, n))/2`
-/

namespace A187326.P13252045010535530673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 4 + (Nat.gcd 4 n : ℤ) : ℚ) / 2

end

end A187326.P13252045010535530673

namespace A187326

/-- `(3*n-4+gcd(4, n))/2` -/
def P13252045010535530673.Spec : Prop :=
  ∀ n, P13252045010535530673.a n = (A187326 n : ℚ)

end A187326

/-! ## A187326.P2718683802601756212

`ogf((2x^2+x^3+3x^4)/(1-x-x^4+x^5))`
-/

namespace A187326.P2718683802601756212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 1, 3] [1, -1, 0, 0, -1, 1] n

end

end A187326.P2718683802601756212

namespace A187326

/-- `ogf((2x^2+x^3+3x^4)/(1-x-x^4+x^5))` -/
def P2718683802601756212.Spec : Prop :=
  ∀ n, P2718683802601756212.a n = A187326 n

end A187326

/-! ## A187326.P15906822961168036251

`floor(n/4)+floor(n/2)+floor(3*n/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187326

/-- `floor(n/4)+floor(n/2)+floor(3*n/4)` -/
def P15906822961168036251.Spec : Prop :=
  ∀ n, P15906822961168036251.a n = A187326 n

theorem P15906822961168036251.correct : P15906822961168036251.Spec := by
  intro n
  simp only [A187326]

end A187326

/-! ## A187326.P6413745693852771049

`a(n-4)+6` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A187326.P6413745693852771049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 3] fun n a =>
  a (n - 4) + 6

end

end A187326.P6413745693852771049

namespace A187326

/-- `a(n-4)+6` -/
def P6413745693852771049.Spec : Prop :=
  ∀ n, (P6413745693852771049.a n : ℤ) = A187326 n

end A187326

/-! ## A187326.P15000576248725019494

`∑[xor(1, a(n-2))]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A187326.P15000576248725019494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  Nat.xor 1 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187326.P15000576248725019494

namespace A187326

/-- `∑[xor(1, a(n-2))]` -/
def P15000576248725019494.Spec : Prop :=
  ∀ n, (P15000576248725019494.a n : ℤ) = A187326 n

end A187326

/-! ## A187326.P17956993318726596590

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A187326.P17956993318726596590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187326.P17956993318726596590

namespace A187326

/-- `∑[abs(a(n-4))]` -/
def P17956993318726596590.Spec : Prop :=
  ∀ n, (P17956993318726596590.a n : ℤ) = A187326 n

end A187326

/-! ## A187326.P13460964021885058527

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A187326.P13460964021885058527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187326.P13460964021885058527

namespace A187326

/-- `∑[dr(a(n-4))]` -/
def P13460964021885058527.Spec : Prop :=
  ∀ n, (P13460964021885058527.a n : ℤ) = A187326 n

end A187326

/-! ## A187326.P5076539789007468400

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A187326.P5076539789007468400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187326.P5076539789007468400

namespace A187326

/-- `∑[floor(a(n-4))]` -/
def P5076539789007468400.Spec : Prop :=
  ∀ n, (P5076539789007468400.a n : ℤ) = A187326 n

end A187326

/-! ## A187326.P10902284241856090302

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A187326.P10902284241856090302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187326.P10902284241856090302

namespace A187326

/-- `∑[ceil(a(n-4))]` -/
def P10902284241856090302.Spec : Prop :=
  ∀ n, (P10902284241856090302.a n : ℤ) = A187326 n

end A187326

/-! ## A187326.P14485464185518079603

`∑[round(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=3`

`round` is left out, it is the identity on integers.
-/

namespace A187326.P14485464185518079603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187326.P14485464185518079603

namespace A187326

/-- `∑[round(a(n-4))]` -/
def P14485464185518079603.Spec : Prop :=
  ∀ n, (P14485464185518079603.a n : ℤ) = A187326 n

end A187326

/-! ## A187326.P12307459151423047288

`(gcd(4, n)+3*n)/2-2`
-/

namespace A187326.P12307459151423047288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 n + 3 * n : ℚ) / 2 - 2

end

end A187326.P12307459151423047288

namespace A187326

/-- `(gcd(4, n)+3*n)/2-2` -/
def P12307459151423047288.Spec : Prop :=
  ∀ n, P12307459151423047288.a n = (A187326 n : ℚ)

end A187326

/-! ## A187326.P2769370525721843510

`∑[a(n-4)%4]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A187326.P2769370525721843510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1, 3] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187326.P2769370525721843510

namespace A187326

/-- `∑[a(n-4)%4]` -/
def P2769370525721843510.Spec : Prop :=
  ∀ n, (P2769370525721843510.a n : ℤ) = A187326 n

end A187326

/-! ## A187326.P15326247280549158482

`floor((3*n+1-A176895(n))/2)`
-/

namespace A187326.P15326247280549158482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * n + 1 : ℤ) - A176895 n : ℚ) / 2⌋

end

end A187326.P15326247280549158482

namespace A187326

/-- `floor((3*n+1-A176895(n))/2)` -/
def P15326247280549158482.Spec : Prop :=
  ∀ n, P15326247280549158482.a n = A187326 n

end A187326

/-! ## A187326.P3085885678440655743

`A047244(A037915(n))`
-/

namespace A187326.P3085885678440655743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (A037915 n).toNat

end

end A187326.P3085885678440655743

namespace A187326

/-- `A047244(A037915(n))` -/
def P3085885678440655743.Spec : Prop :=
  ∀ n, P3085885678440655743.a n = A187326 n

end A187326

/-! ## A187326.P13232292041768422923

`A047246(A392590(n+1))`
-/

namespace A187326.P13232292041768422923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (A392590 (n + 1)).toNat

end

end A187326.P13232292041768422923

namespace A187326

/-- `A047246(A392590(n+1))` -/
def P13232292041768422923.Spec : Prop :=
  ∀ n, P13232292041768422923.a n = A187326 n

end A187326

/-! ## A187326.P17225021595260926885

`and(A047246(n+1), A168237(n))`
-/

namespace A187326.P17225021595260926885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047246 (n + 1)) (A168237 n)

end

end A187326.P17225021595260926885

namespace A187326

/-- `and(A047246(n+1), A168237(n))` -/
def P17225021595260926885.Spec : Prop :=
  ∀ n, P17225021595260926885.a n = A187326 n

end A187326

/-! ## A187326.P7978958479924240012

`A047356(n+1)%A047558(n+1)`
-/

namespace A187326.P7978958479924240012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047356 (n + 1)) (A047558 (n + 1))

end

end A187326.P7978958479924240012

namespace A187326

/-- `A047356(n+1)%A047558(n+1)` -/
def P7978958479924240012.Spec : Prop :=
  ∀ n, P7978958479924240012.a n = A187326 n

end A187326

/-! ## A187326.P13283077638255872915

`A047246(n+2-A177704(n+2))`
-/

namespace A187326.P13283077638255872915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 ((n + 2 : ℤ) - A177704 (n + 2)).toNat

end

end A187326.P13283077638255872915

namespace A187326

/-- `A047246(n+2-A177704(n+2))` -/
def P13283077638255872915.Spec : Prop :=
  ∀ n, P13283077638255872915.a n = A187326 n

end A187326

/-! ## A187326.P12726560787029016431

`A239492(A001068(n))`
-/

namespace A187326.P12726560787029016431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 (A001068 n).toNat

end

end A187326.P12726560787029016431

namespace A187326

/-- `A239492(A001068(n))` -/
def P12726560787029016431.Spec : Prop :=
  ∀ n, P12726560787029016431.a n = A187326 n

end A187326

/-!
# A187327: a(n) = floor(n/5) + floor(2n/5) + floor(3n/5).

The programs for A187327, the canonical program `A187327.P13064860182109945476` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187327 has offset 0).

The definition of A187327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/5)+floor(2*n/5)+floor(3*n/5)` (program `A187327.P13064860182109945476`, by `A187327.P13064860182109945476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187327.P13064860182109945476

`floor(n/5)+floor(2*n/5)+floor(3*n/5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187327

/-- `floor(n/5)+floor(2*n/5)+floor(3*n/5)` -/
def P13064860182109945476.Spec : Prop :=
  ∀ n, P13064860182109945476.a n = A187327 n

theorem P13064860182109945476.correct : P13064860182109945476.Spec := by
  intro n
  simp only [A187327]

end A187327

/-! ## A187327.P9106012495463878313

`a(n-5)+6` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A187327.P9106012495463878313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 3] fun n a =>
  a (n - 5) + 6

end

end A187327.P9106012495463878313

namespace A187327

/-- `a(n-5)+6` -/
def P9106012495463878313.Spec : Prop :=
  ∀ n, (P9106012495463878313.a n : ℤ) = A187327 n

end A187327

/-! ## A187327.P9499773563874656818

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A187327.P9499773563874656818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187327.P9499773563874656818

namespace A187327

/-- `∑[floor(a(n-5))]` -/
def P9499773563874656818.Spec : Prop :=
  ∀ n, (P9499773563874656818.a n : ℤ) = A187327 n

end A187327

/-! ## A187327.P14833666262977245607

`∑[a(n-5)%4]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=3`
-/

namespace A187327.P14833666262977245607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187327.P14833666262977245607

namespace A187327

/-- `∑[a(n-5)%4]` -/
def P14833666262977245607.Spec : Prop :=
  ∀ n, (P14833666262977245607.a n : ℤ) = A187327 n

end A187327

/-! ## A187327.P14971807629079831402

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=3`
-/

namespace A187327.P14971807629079831402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187327.P14971807629079831402

namespace A187327

/-- `∑[a(n-5)^a(n-1)]` -/
def P14971807629079831402.Spec : Prop :=
  ∀ n, (P14971807629079831402.a n : ℤ) = A187327 n

end A187327

/-! ## A187327.P15689147894880350327

`A047246(A090223(n)+1)`
-/

namespace A187327.P15689147894880350327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (A090223 n + 1).toNat

end

end A187327.P15689147894880350327

namespace A187327

/-- `A047246(A090223(n)+1)` -/
def P15689147894880350327.Spec : Prop :=
  ∀ n, P15689147894880350327.a n = A187327 n

end A187327

/-! ## A187327.P6422803080293752029

`A047226(1-A011558(n)+n)`
-/

namespace A187327.P6422803080293752029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (1 - A011558 n + (n : ℤ)).toNat

end

end A187327.P6422803080293752029

namespace A187327

/-- `A047226(1-A011558(n)+n)` -/
def P6422803080293752029.Spec : Prop :=
  ∀ n, P6422803080293752029.a n = A187327 n

end A187327

/-! ## A187327.P884112967033632985

`A047226(1-(A011558(n)-n))`
-/

namespace A187327.P884112967033632985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (1 - (A011558 n - (n : ℤ))).toNat

end

end A187327.P884112967033632985

namespace A187327

/-- `A047226(1-(A011558(n)-n))` -/
def P884112967033632985.Spec : Prop :=
  ∀ n, P884112967033632985.a n = A187327 n

end A187327

/-! ## A187327.P6168614434473439286

`A128054(A239492(n))`
-/

namespace A187327.P6168614434473439286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128054 (A239492 n).toNat

end

end A187327.P6168614434473439286

namespace A187327

/-- `A128054(A239492(n))` -/
def P6168614434473439286.Spec : Prop :=
  ∀ n, P6168614434473439286.a n = A187327 n

end A187327

/-! ## A187327.P5361752487257675278

`A128054(A047226(n+1))`
-/

namespace A187327.P5361752487257675278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128054 (A047226 (n + 1)).toNat

end

end A187327.P5361752487257675278

namespace A187327

/-- `A128054(A047226(n+1))` -/
def P5361752487257675278.Spec : Prop :=
  ∀ n, P5361752487257675278.a n = A187327 n

end A187327

/-! ## A187327.P11528577898941348300

`A057353(A057354(n)+2*A057355(n))`
-/

namespace A187327.P11528577898941348300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A057354 n + 2 * A057355 n).toNat

end

end A187327.P11528577898941348300

namespace A187327

/-- `A057353(A057354(n)+2*A057355(n))` -/
def P11528577898941348300.Spec : Prop :=
  ∀ n, P11528577898941348300.a n = A187327 n

end A187327

/-! ## A187327.P4323800963136507560

`A057353(A047453(n+1))`
-/

namespace A187327.P4323800963136507560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A047453 (n + 1)).toNat

end

end A187327.P4323800963136507560

namespace A187327

/-- `A057353(A047453(n+1))` -/
def P4323800963136507560.Spec : Prop :=
  ∀ n, P4323800963136507560.a n = A187327 n

end A187327

/-! ## A187327.P13800884814736795059

`A057353(A047607(n+1))`
-/

namespace A187327.P13800884814736795059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A047607 (n + 1)).toNat

end

end A187327.P13800884814736795059

namespace A187327

/-- `A057353(A047607(n+1))` -/
def P13800884814736795059.Spec : Prop :=
  ∀ n, P13800884814736795059.a n = A187327 n

end A187327

/-! ## A187327.P4033041268218740918

`A057353(A047419(n+1)-1)`
-/

namespace A187327.P4033041268218740918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A047419 (n + 1) - 1).toNat

end

end A187327.P4033041268218740918

namespace A187327

/-- `A057353(A047419(n+1)-1)` -/
def P4033041268218740918.Spec : Prop :=
  ∀ n, P4033041268218740918.a n = A187327 n

end A187327

/-! ## A187327.P1590547474045701528

`A057355(A187333(n))`
-/

namespace A187327.P1590547474045701528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A187333 n).toNat

end

end A187327.P1590547474045701528

namespace A187327

/-- `A057355(A187333(n))` -/
def P1590547474045701528.Spec : Prop :=
  ∀ n, P1590547474045701528.a n = A187327 n

end A187327

/-! ## A187327.P7515137281070819224

`A057355(2*(A057355(n)+A057354(n)))`
-/

namespace A187327.P7515137281070819224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (2 * (A057355 n + A057354 n)).toNat

end

end A187327.P7515137281070819224

namespace A187327

/-- `A057355(2*(A057355(n)+A057354(n)))` -/
def P7515137281070819224.Spec : Prop :=
  ∀ n, P7515137281070819224.a n = A187327 n

end A187327

/-! ## A187327.P4150584323011226349

`A057354(A192333(n+1))`
-/

namespace A187327.P4150584323011226349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A192333 (n + 1)).toNat

end

end A187327.P4150584323011226349

namespace A187327

/-- `A057354(A192333(n+1))` -/
def P4150584323011226349.Spec : Prop :=
  ∀ n, P4150584323011226349.a n = A187327 n

end A187327

/-! ## A187327.P675661866567461145

`A002264(A293292(n+1)+A057355(n)+n)`
-/

namespace A187327.P675661866567461145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A293292 (n + 1) + (A057355 n + (n : ℤ))).toNat

end

end A187327.P675661866567461145

namespace A187327

/-- `A002264(A293292(n+1)+A057355(n)+n)` -/
def P675661866567461145.Spec : Prop :=
  ∀ n, P675661866567461145.a n = A187327 n

end A187327

/-! ## A187327.P1150059014922270649

`A002266(2*(A293292(n+1)+n))`
-/

namespace A187327.P1150059014922270649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * (A293292 (n + 1) + (n : ℤ))).toNat

end

end A187327.P1150059014922270649

namespace A187327

/-- `A002266(2*(A293292(n+1)+n))` -/
def P1150059014922270649.Spec : Prop :=
  ∀ n, P1150059014922270649.a n = A187327 n

end A187327

/-!
# A187328: a(n) = floor((2-1/sqrt(2))*n); complement of A187338.

The programs for A187328, the canonical program `A187328.P6802149099845131855` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187328 has offset 0).

The definition of A187328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2-1/sqrt(2))*n)` (program `A187328.P6802149099845131855`, by `A187328.P6802149099845131855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187328.P6802149099845131855

`floor((2-1/sqrt(2))*n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187328

/-- `floor((2-1/sqrt(2))*n)` -/
def P6802149099845131855.Spec : Prop :=
  ∀ n, P6802149099845131855.a n = A187328 n

theorem P6802149099845131855.correct : P6802149099845131855.Spec := by
  intro n
  simp only [A187328]

end A187328

/-! ## A187328.P18215510609454953355

`comp[A187338(n+1)]`
-/

namespace A187328.P18215510609454953355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187328.P18215510609454953355

namespace A187328

/-- `comp[A187338(n+1)]` -/
def P18215510609454953355.Spec : Prop :=
  ∀ n, (P18215510609454953355.a n : ℤ) = A187328 n

end A187328

/-! ## A187328.P11828610870111372636

`2*n-A049474(n)`
-/

namespace A187328.P11828610870111372636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A049474 n

end

end A187328.P11828610870111372636

namespace A187328

/-- `2*n-A049474(n)` -/
def P11828610870111372636.Spec : Prop :=
  ∀ n, P11828610870111372636.a n = A187328 n

end A187328

/-! ## A187328.P8542223782884579162

`2*n-A099188(n)/2`
-/

namespace A187328.P8542223782884579162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (A099188 n : ℚ) / 2

end

end A187328.P8542223782884579162

namespace A187328

/-- `2*n-A099188(n)/2` -/
def P8542223782884579162.Spec : Prop :=
  ∀ n, P8542223782884579162.a n = (A187328 n : ℚ)

end A187328

/-! ## A187328.P10041853455495193047

`comp[∑[A276864(n+1)+1]]`
-/

namespace A187328.P10041853455495193047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187328.P10041853455495193047

namespace A187328

/-- `comp[∑[A276864(n+1)+1]]` -/
def P10041853455495193047.Spec : Prop :=
  ∀ n, (P10041853455495193047.a n : ℤ) = A187328 n

end A187328

/-! ## A187328.P373966940320499487

`2*n-ceil(sqrt(A000982(n)))`
-/

namespace A187328.P373966940320499487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌈Real.sqrt (A000982 n : ℝ)⌉

end

end A187328.P373966940320499487

namespace A187328

/-- `2*n-ceil(sqrt(A000982(n)))` -/
def P373966940320499487.Spec : Prop :=
  ∀ n, P373966940320499487.a n = A187328 n

end A187328

/-! ## A187328.P8492609317919820846

`comp[A001952(n+1)+1+n]`
-/

namespace A187328.P8492609317919820846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187328.P8492609317919820846

namespace A187328

/-- `comp[A001952(n+1)+1+n]` -/
def P8492609317919820846.Spec : Prop :=
  ∀ n, (P8492609317919820846.a n : ℤ) = A187328 n

end A187328

/-! ## A187328.P18225865720198228584

`A097508(A049473(n))+n`
-/

namespace A187328.P18225865720198228584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A049473 n).toNat + (n : ℤ)

end

end A187328.P18225865720198228584

namespace A187328

/-- `A097508(A049473(n))+n` -/
def P18225865720198228584.Spec : Prop :=
  ∀ n, P18225865720198228584.a n = A187328 n

end A187328

/-! ## A187328.P7240860300835421445

`A183138(A028310(n))+n`
-/

namespace A187328.P7240860300835421445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (A028310 n).toNat + (n : ℤ)

end

end A187328.P7240860300835421445

namespace A187328

/-- `A183138(A028310(n))+n` -/
def P7240860300835421445.Spec : Prop :=
  ∀ n, P7240860300835421445.a n = A187328 n

end A187328

/-! ## A187328.P2968312491072621323

`A195128(n)+A057428(n)`
-/

namespace A187328.P2968312491072621323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n + A057428 n

end

end A187328.P2968312491072621323

namespace A187328

/-- `A195128(n)+A057428(n)` -/
def P2968312491072621323.Spec : Prop :=
  ∀ n, P2968312491072621323.a n = A187328 n

end A187328

/-! ## A187328.P15710723766980802700

`A004273(n)-A049472(n)`
-/

namespace A187328.P15710723766980802700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A049472 n

end

end A187328.P15710723766980802700

namespace A187328

/-- `A004273(n)-A049472(n)` -/
def P15710723766980802700.Spec : Prop :=
  ∀ n, P15710723766980802700.a n = A187328 n

end A187328

/-! ## A187328.P9860653788257076927

`A008486(n)-A083088(n)`
-/

namespace A187328.P9860653788257076927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A083088 n

end

end A187328.P9860653788257076927

namespace A187328

/-- `A008486(n)-A083088(n)` -/
def P9860653788257076927.Spec : Prop :=
  ∀ n, P9860653788257076927.a n = A187328 n

end A187328

/-! ## A187328.P1009515770843815322

`A195128(n)-A057427(n)`
-/

namespace A187328.P1009515770843815322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n - A057427 n

end

end A187328.P1009515770843815322

namespace A187328

/-- `A195128(n)-A057427(n)` -/
def P1009515770843815322.Spec : Prop :=
  ∀ n, P1009515770843815322.a n = A187328 n

end A187328

/-! ## A187328.P3284972838158928428

`A008585(n)%A083088(n)`
-/

namespace A187328.P3284972838158928428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 n) (A083088 n)

end

end A187328.P3284972838158928428

namespace A187328

/-- `A008585(n)%A083088(n)` -/
def P3284972838158928428.Spec : Prop :=
  ∀ n, P3284972838158928428.a n = A187328 n

end A187328

/-! ## A187328.P1376229271336392432

`A195128(n)-A062157(n)²`
-/

namespace A187328.P1376229271336392432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n - A062157 n ^ 2

end

end A187328.P1376229271336392432

namespace A187328

/-- `A195128(n)-A062157(n)²` -/
def P1376229271336392432.Spec : Prop :=
  ∀ n, P1376229271336392432.a n = A187328 n

end A187328

/-! ## A187328.P7029104876905941739

`A097508(A049472(n+1))+n`
-/

namespace A187328.P7029104876905941739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A049472 (n + 1)).toNat + (n : ℤ)

end

end A187328.P7029104876905941739

namespace A187328

/-- `A097508(A049472(n+1))+n` -/
def P7029104876905941739.Spec : Prop :=
  ∀ n, P7029104876905941739.a n = A187328 n

end A187328

/-! ## A187328.P3293677722227911202

`A000007(n)+A195128(n)-1`
-/

namespace A187328.P3293677722227911202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A195128 n - 1)

end

end A187328.P3293677722227911202

namespace A187328

/-- `A000007(n)+A195128(n)-1` -/
def P3293677722227911202.Spec : Prop :=
  ∀ n, P3293677722227911202.a n = A187328 n

end A187328

/-!
# A187329: Floor((3-sqrt(5))n).

The programs for A187329, the canonical program `A187329.P18279977767124603142` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187329 has offset 0).

The definition of A187329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3-sqrt(5))*n)` (program `A187329.P18279977767124603142`, by `A187329.P18279977767124603142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187329.P18279977767124603142

`floor((3-sqrt(5))*n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187329

/-- `floor((3-sqrt(5))*n)` -/
def P18279977767124603142.Spec : Prop :=
  ∀ n, P18279977767124603142.a n = A187329 n

theorem P18279977767124603142.correct : P18279977767124603142.Spec := by
  intro n
  simp only [A187329]

end A187329

/-! ## A187329.P3298431935581669564

`or(floor(2*n/ϕ²), char[2])`
-/

namespace A187329.P3298431935581669564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊2 * ((n : ℝ) / Real.goldenRatio ^ 2)⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187329.P3298431935581669564

namespace A187329

/-- `or(floor(2*n/ϕ²), char[2])` -/
def P3298431935581669564.Spec : Prop :=
  ∀ n, P3298431935581669564.a n = A187329 n

end A187329

/-! ## A187329.P8223283290826804731

`xor(1, xor(1, floor(2*n/ϕ²)))`
-/

namespace A187329.P8223283290826804731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌊(2 * n : ℝ) / Real.goldenRatio ^ 2⌋)

end

end A187329.P8223283290826804731

namespace A187329

/-- `xor(1, xor(1, floor(2*n/ϕ²)))` -/
def P8223283290826804731.Spec : Prop :=
  ∀ n, P8223283290826804731.a n = A187329 n

end A187329

/-! ## A187329.P3883710021141992372

`floor(2*n/ϕ²)%(n+1)`
-/

namespace A187329.P3883710021141992372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * ((n : ℝ) / Real.goldenRatio ^ 2)⌋ (n + 1 : ℤ)

end

end A187329.P3883710021141992372

namespace A187329

/-- `floor(2*n/ϕ²)%(n+1)` -/
def P3883710021141992372.Spec : Prop :=
  ∀ n, P3883710021141992372.a n = A187329 n

end A187329

/-! ## A187329.P9265978363717336774

`lcm(2, 2*n)-ceil(2*n/ϕ)`
-/

namespace A187329.P9265978363717336774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ⌈(2 * n : ℝ) / Real.goldenRatio⌉

end

end A187329.P9265978363717336774

namespace A187329

/-- `lcm(2, 2*n)-ceil(2*n/ϕ)` -/
def P9265978363717336774.Spec : Prop :=
  ∀ n, P9265978363717336774.a n = A187329 n

end A187329

/-! ## A187329.P17888225780476913457

`floor(2*n/ϕ²)+C(2, n+3)`
-/

namespace A187329.P17888225780476913457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / Real.goldenRatio ^ 2⌋ + (Nat.choose 2 (n + 3) : ℤ)

end

end A187329.P17888225780476913457

namespace A187329

/-- `floor(2*n/ϕ²)+C(2, n+3)` -/
def P17888225780476913457.Spec : Prop :=
  ∀ n, P17888225780476913457.a n = A187329 n

end A187329

/-! ## A187329.P14339231717464969735

`floor(2*n/ϕ²)+and(1, 2*n)`
-/

namespace A187329.P14339231717464969735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / Real.goldenRatio ^ 2⌋ + (Nat.land 1 (2 * n) : ℤ)

end

end A187329.P14339231717464969735

namespace A187329

/-- `floor(2*n/ϕ²)+and(1, 2*n)` -/
def P14339231717464969735.Spec : Prop :=
  ∀ n, P14339231717464969735.a n = A187329 n

end A187329

/-! ## A187329.P14046676798355960364

`gcd(and(1, 2*n), floor(2*n/ϕ²))`
-/

namespace A187329.P14046676798355960364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land 1 (2 * n) : ℤ) ⌊(2 * n : ℝ) / Real.goldenRatio ^ 2⌋

end

end A187329.P14046676798355960364

namespace A187329

/-- `gcd(and(1, 2*n), floor(2*n/ϕ²))` -/
def P14046676798355960364.Spec : Prop :=
  ∀ n, (P14046676798355960364.a n : ℤ) = A187329 n

end A187329

/-! ## A187329.P15067999684790887959

`gcd(n, n+1)*floor(2*n/ϕ²)`
-/

namespace A187329.P15067999684790887959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * ⌊(2 * n : ℝ) / Real.goldenRatio ^ 2⌋

end

end A187329.P15067999684790887959

namespace A187329

/-- `gcd(n, n+1)*floor(2*n/ϕ²)` -/
def P15067999684790887959.Spec : Prop :=
  ∀ n, P15067999684790887959.a n = A187329 n

end A187329

/-! ## A187329.P10778666970004571391

`xor(1, 2*n+1)-ceil(2*n/ϕ)`
-/

namespace A187329.P10778666970004571391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n + 1) : ℤ) - ⌈2 * ((n : ℝ) / Real.goldenRatio)⌉

end

end A187329.P10778666970004571391

namespace A187329

/-- `xor(1, 2*n+1)-ceil(2*n/ϕ)` -/
def P10778666970004571391.Spec : Prop :=
  ∀ n, P10778666970004571391.a n = A187329 n

end A187329

/-! ## A187329.P6138458338679758985

`and(2*n+1, 2*n)-ceil(2*n/ϕ)`
-/

namespace A187329.P6138458338679758985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n + 1) (2 * n) : ℤ) - ⌈2 * ((n : ℝ) / Real.goldenRatio)⌉

end

end A187329.P6138458338679758985

namespace A187329

/-- `and(2*n+1, 2*n)-ceil(2*n/ϕ)` -/
def P6138458338679758985.Spec : Prop :=
  ∀ n, P6138458338679758985.a n = A187329 n

end A187329

/-! ## A187329.P2922975804963335062

`A187330(n)-n`
-/

namespace A187329.P2922975804963335062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187330 n - (n : ℤ)

end

end A187329.P2922975804963335062

namespace A187329

/-- `A187330(n)-n` -/
def P2922975804963335062.Spec : Prop :=
  ∀ n, P2922975804963335062.a n = A187329 n

end A187329

/-! ## A187329.P17540782627893150729

`n-A300763(n)`
-/

namespace A187329.P17540782627893150729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A300763 n

end

end A187329.P17540782627893150729

namespace A187329

/-- `n-A300763(n)` -/
def P17540782627893150729.Spec : Prop :=
  ∀ n, P17540782627893150729.a n = A187329 n

end A187329

/-! ## A187329.P5989990773959649087

`3*n-A198082(n)`
-/

namespace A187329.P5989990773959649087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A198082 n

end

end A187329.P5989990773959649087

namespace A187329

/-- `3*n-A198082(n)` -/
def P5989990773959649087.Spec : Prop :=
  ∀ n, P5989990773959649087.a n = A187329 n

end A187329

/-! ## A187329.P10583620701718393573

`5*n-A004958(n)`
-/

namespace A187329.P10583620701718393573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A004958 n

end

end A187329.P10583620701718393573

namespace A187329

/-- `5*n-A004958(n)` -/
def P10583620701718393573.Spec : Prop :=
  ∀ n, P10583620701718393573.a n = A187329 n

end A187329

/-! ## A187329.P2515385053257531808

`∑[char[A188188(n+2)]]`
-/

namespace A187329.P2515385053257531808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187329.P2515385053257531808

namespace A187329

/-- `∑[char[A188188(n+2)]]` -/
def P2515385053257531808.Spec : Prop :=
  ∀ n, (P2515385053257531808.a n : ℤ) = A187329 n

end A187329

/-! ## A187329.P5027420917699218207

`comp[A187339(n+1)]-n`
-/

namespace A187329.P5027420917699218207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A187329.P5027420917699218207

namespace A187329

/-- `comp[A187339(n+1)]-n` -/
def P5027420917699218207.Spec : Prop :=
  ∀ n, P5027420917699218207.a n = A187329 n

end A187329

/-! ## A187329.P18192130267290316041

`A195172(n)+A057428(n)`
-/

namespace A187329.P18192130267290316041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 n + A057428 n

end

end A187329.P18192130267290316041

namespace A187329

/-- `A195172(n)+A057428(n)` -/
def P18192130267290316041.Spec : Prop :=
  ∀ n, P18192130267290316041.a n = A187329 n

end A187329

/-! ## A187329.P6749832684693829843

`A334415(n)+A060144(n)`
-/

namespace A187329.P6749832684693829843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 n + A060144 n

end

end A187329.P6749832684693829843

namespace A187329

/-- `A334415(n)+A060144(n)` -/
def P6749832684693829843.Spec : Prop :=
  ∀ n, P6749832684693829843.a n = A187329 n

end A187329

/-! ## A187329.P7367060379045524594

`A195172(n)-A057427(n)`
-/

namespace A187329.P7367060379045524594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 n - A057427 n

end

end A187329.P7367060379045524594

namespace A187329

/-- `A195172(n)-A057427(n)` -/
def P7367060379045524594.Spec : Prop :=
  ∀ n, P7367060379045524594.a n = A187329 n

end A187329

/-!
# A187330: a(n) = floor((4-sqrt(5))*n); complement of A187339.

The programs for A187330, the canonical program `A187330.P3418378979296371755` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187330 has offset 0).

The definition of A187330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((4-sqrt(5))*n)` (program `A187330.P3418378979296371755`, by `A187330.P3418378979296371755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187330.P3418378979296371755

`floor((4-sqrt(5))*n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187330

/-- `floor((4-sqrt(5))*n)` -/
def P3418378979296371755.Spec : Prop :=
  ∀ n, P3418378979296371755.a n = A187330 n

theorem P3418378979296371755.correct : P3418378979296371755.Spec := by
  intro n
  simp only [A187330]

end A187330

/-! ## A187330.P16836935578546437219

`floor(lcm(2, 2*n)/ϕ²)+n`
-/

namespace A187330.P16836935578546437219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n) : ℝ) / Real.goldenRatio ^ 2⌋ + (n : ℤ)

end

end A187330.P16836935578546437219

namespace A187330

/-- `floor(lcm(2, 2*n)/ϕ²)+n` -/
def P16836935578546437219.Spec : Prop :=
  ∀ n, P16836935578546437219.a n = A187330 n

end A187330

/-! ## A187330.P6326232779651270474

`xor(1, xor(1, floor(2*n/ϕ²)))+n`
-/

namespace A187330.P6326232779651270474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌊(2 * n : ℝ) / Real.goldenRatio ^ 2⌋) + (n : ℤ)

end

end A187330.P6326232779651270474

namespace A187330

/-- `xor(1, xor(1, floor(2*n/ϕ²)))+n` -/
def P6326232779651270474.Spec : Prop :=
  ∀ n, P6326232779651270474.a n = A187330 n

end A187330

/-! ## A187330.P11739111545116133808

`floor(2*n/ϕ²)+gcd(n, 2*n)`
-/

namespace A187330.P11739111545116133808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / Real.goldenRatio ^ 2⌋ + (Nat.gcd n (2 * n) : ℤ)

end

end A187330.P11739111545116133808

namespace A187330

/-- `floor(2*n/ϕ²)+gcd(n, 2*n)` -/
def P11739111545116133808.Spec : Prop :=
  ∀ n, P11739111545116133808.a n = A187330 n

end A187330

/-! ## A187330.P10165741433644677824

`floor(2*n/ϕ²)+C(2, n+3)+n`
-/

namespace A187330.P10165741433644677824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / Real.goldenRatio ^ 2⌋ + (Nat.choose 2 (n + 3) : ℤ) + (n : ℤ)

end

end A187330.P10165741433644677824

namespace A187330

/-- `floor(2*n/ϕ²)+C(2, n+3)+n` -/
def P10165741433644677824.Spec : Prop :=
  ∀ n, P10165741433644677824.a n = A187330 n

end A187330

/-! ## A187330.P4162421461608862582

`floor(and(2*n+1, 2*n)/ϕ²)+n`
-/

namespace A187330.P4162421461608862582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land (2 * n + 1) (2 * n) : ℝ) / Real.goldenRatio ^ 2⌋ + (n : ℤ)

end

end A187330.P4162421461608862582

namespace A187330

/-- `floor(and(2*n+1, 2*n)/ϕ²)+n` -/
def P4162421461608862582.Spec : Prop :=
  ∀ n, P4162421461608862582.a n = A187330 n

end A187330

/-! ## A187330.P9648970702403626521

`A187329(n)+n`
-/

namespace A187330.P9648970702403626521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 n + (n : ℤ)

end

end A187330.P9648970702403626521

namespace A187330

/-- `A187329(n)+n` -/
def P9648970702403626521.Spec : Prop :=
  ∀ n, P9648970702403626521.a n = A187330 n

end A187330

/-! ## A187330.P17706325610947411458

`comp[A187339(n+1)]`
-/

namespace A187330.P17706325610947411458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187330.P17706325610947411458

namespace A187330

/-- `comp[A187339(n+1)]` -/
def P17706325610947411458.Spec : Prop :=
  ∀ n, (P17706325610947411458.a n : ℤ) = A187330 n

end A187330

/-! ## A187330.P13051765172310534529

`2*n-A300763(n)`
-/

namespace A187330.P13051765172310534529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A300763 n

end

end A187330.P13051765172310534529

namespace A187330

/-- `2*n-A300763(n)` -/
def P13051765172310534529.Spec : Prop :=
  ∀ n, P13051765172310534529.a n = A187330 n

end A187330

/-! ## A187330.P17280503402349094091

`4*n-A198082(n)`
-/

namespace A187330.P17280503402349094091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A198082 n

end

end A187330.P17280503402349094091

namespace A187330

/-- `4*n-A198082(n)` -/
def P17280503402349094091.Spec : Prop :=
  ∀ n, P17280503402349094091.a n = A187330 n

end A187330

/-! ## A187330.P1030531758715456227

`6*n-A004958(n)`
-/

namespace A187330.P1030531758715456227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - A004958 n

end

end A187330.P1030531758715456227

namespace A187330

/-- `6*n-A004958(n)` -/
def P1030531758715456227.Spec : Prop :=
  ∀ n, P1030531758715456227.a n = A187330 n

end A187330

/-! ## A187330.P13953488985111185026

`comp[A188188(n+2)+n]`
-/

namespace A187330.P13953488985111185026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187330.P13953488985111185026

namespace A187330

/-- `comp[A188188(n+2)+n]` -/
def P13953488985111185026.Spec : Prop :=
  ∀ n, (P13953488985111185026.a n : ℤ) = A187330 n

end A187330

/-! ## A187330.P397813874753944772

`comp[A188222(n+1)+1+n]`
-/

namespace A187330.P397813874753944772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187330.P397813874753944772

namespace A187330

/-- `comp[A188222(n+1)+1+n]` -/
def P397813874753944772.Spec : Prop :=
  ∀ n, (P397813874753944772.a n : ℤ) = A187330 n

end A187330

/-! ## A187330.P4309008905183135917

`A195173(n)+A057428(n)`
-/

namespace A187330.P4309008905183135917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 n + A057428 n

end

end A187330.P4309008905183135917

namespace A187330

/-- `A195173(n)+A057428(n)` -/
def P4309008905183135917.Spec : Prop :=
  ∀ n, P4309008905183135917.a n = A187330 n

end A187330

/-! ## A187330.P10328315691451549731

`A195173(n)-A057427(n)`
-/

namespace A187330.P10328315691451549731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 n - A057427 n

end

end A187330.P10328315691451549731

namespace A187330

/-- `A195173(n)-A057427(n)` -/
def P10328315691451549731.Spec : Prop :=
  ∀ n, P10328315691451549731.a n = A187330 n

end A187330

/-! ## A187330.P3110670817512633433

`A057428(n)+A195172(n)+n`
-/

namespace A187330.P3110670817512633433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A195172 n + (n : ℤ))

end

end A187330.P3110670817512633433

namespace A187330

/-- `A057428(n)+A195172(n)+n` -/
def P3110670817512633433.Spec : Prop :=
  ∀ n, P3110670817512633433.a n = A187330 n

end A187330

/-! ## A187330.P11479125189285962853

`A334415(n)+A060144(n)+n`
-/

namespace A187330.P11479125189285962853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 n + (A060144 n + (n : ℤ))

end

end A187330.P11479125189285962853

namespace A187330

/-- `A334415(n)+A060144(n)+n` -/
def P11479125189285962853.Spec : Prop :=
  ∀ n, P11479125189285962853.a n = A187330 n

end A187330

/-! ## A187330.P10028308153428185275

`A008587(n)+n-A004958(n)`
-/

namespace A187330.P10028308153428185275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + ((n : ℤ) - A004958 n)

end

end A187330.P10028308153428185275

namespace A187330

/-- `A008587(n)+n-A004958(n)` -/
def P10028308153428185275.Spec : Prop :=
  ∀ n, P10028308153428185275.a n = A187330 n

end A187330

/-! ## A187330.P16395485430631138479

`A195172(n)+n-A057427(n)`
-/

namespace A187330.P16395485430631138479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 n + ((n : ℤ) - A057427 n)

end

end A187330.P16395485430631138479

namespace A187330

/-- `A195172(n)+n-A057427(n)` -/
def P16395485430631138479.Spec : Prop :=
  ∀ n, P16395485430631138479.a n = A187330 n

end A187330

/-! ## A187330.P7573823000292446408

`A060143(A005206(2*n))+n`
-/

namespace A187330.P7573823000292446408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A005206 (2 * n)).toNat + (n : ℤ)

end

end A187330.P7573823000292446408

namespace A187330

/-- `A060143(A005206(2*n))+n` -/
def P7573823000292446408.Spec : Prop :=
  ∀ n, P7573823000292446408.a n = A187330 n

end A187330

/-!
# A187331: a(n) = Sum_{k=1..4} floor(k*n/4).

The programs for A187331, the canonical program `A187331.P7760659856178964980` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187331 has offset 0).

The definition of A187331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[4-1, floor((#+1)*n/4)]` (program `A187331.P7760659856178964980`, by `A187331.P7760659856178964980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187331.P7760659856178964980

`∑{#}[4-1, floor((#+1)*n/4)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187331

/-- `∑{#}[4-1, floor((#+1)*n/4)]` -/
def P7760659856178964980.Spec : Prop :=
  ∀ n, P7760659856178964980.a n = A187331 n

theorem P7760659856178964980.correct : P7760659856178964980.Spec := by
  intro n
  simp only [A187331]

end A187331

/-! ## A187331.P15250902067742129787

`ogf((x+3x^2+2x^3+4x^4)/(1-x-x^4+x^5))`
-/

namespace A187331.P15250902067742129787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2, 4] [1, -1, 0, 0, -1, 1] n

end

end A187331.P15250902067742129787

namespace A187331

/-- `ogf((x+3x^2+2x^3+4x^4)/(1-x-x^4+x^5))` -/
def P15250902067742129787.Spec : Prop :=
  ∀ n, P15250902067742129787.a n = A187331 n

end A187331

/-! ## A187331.P12487754534595879316

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=10`
-/

namespace A187331.P12487754534595879316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A187331.P12487754534595879316

namespace A187331

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P12487754534595879316.Spec : Prop :=
  ∀ n, P12487754534595879316.a n = A187331 n

end A187331

/-! ## A187331.P3207397757961364242

`n+A187326(n)`
-/

namespace A187331.P3207397757961364242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A187326 n

end

end A187331.P3207397757961364242

namespace A187331

/-- `n+A187326(n)` -/
def P3207397757961364242.Spec : Prop :=
  ∀ n, P3207397757961364242.a n = A187331 n

end A187331

/-! ## A187331.P15220519285622728354

`a(n-4)+10` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A187331.P15220519285622728354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 6] fun n a =>
  a (n - 4) + 10

end

end A187331.P15220519285622728354

namespace A187331

/-- `a(n-4)+10` -/
def P15220519285622728354.Spec : Prop :=
  ∀ n, (P15220519285622728354.a n : ℤ) = A187331 n

end A187331

/-! ## A187331.P12604813103280567564

`∑[(3^a(n-1))%5]` with `a(0)=0`
-/

namespace A187331.P12604813103280567564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  3 ^ f1 (n - 1) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187331.P12604813103280567564

namespace A187331

/-- `∑[(3^a(n-1))%5]` -/
def P12604813103280567564.Spec : Prop :=
  ∀ n, (P12604813103280567564.a n : ℤ) = A187331 n

end A187331

/-! ## A187331.P10469923432752315681

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A187331.P10469923432752315681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187331.P10469923432752315681

namespace A187331

/-- `∑[floor(a(n-4))]` -/
def P10469923432752315681.Spec : Prop :=
  ∀ n, (P10469923432752315681.a n : ℤ) = A187331 n

end A187331

/-! ## A187331.P17363092060447049680

`∑[a(n-4)%5]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=4`
-/

namespace A187331.P17363092060447049680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 4] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187331.P17363092060447049680

namespace A187331

/-- `∑[a(n-4)%5]` -/
def P17363092060447049680.Spec : Prop :=
  ∀ n, (P17363092060447049680.a n : ℤ) = A187331 n

end A187331

/-! ## A187331.P2648830887126000830

`∑[4^(n%2)]-4/gcd(4, n)`
-/

namespace A187331.P2648830887126000830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - 4 / (Nat.gcd 4 n : ℚ)

end

end A187331.P2648830887126000830

namespace A187331

/-- `∑[4^(n%2)]-4/gcd(4, n)` -/
def P2648830887126000830.Spec : Prop :=
  ∀ n, P2648830887126000830.a n = (A187331 n : ℚ)

end A187331

/-! ## A187331.P1080490294625584776

`∑[∑[ogf((x+3x^2+2x^3+4x^4)/(1+x+x^2+x^3))]]`
-/

namespace A187331.P1080490294625584776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2, 4] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187331.P1080490294625584776

namespace A187331

/-- `∑[∑[ogf((x+3x^2+2x^3+4x^4)/(1+x+x^2+x^3))]]` -/
def P1080490294625584776.Spec : Prop :=
  ∀ n, P1080490294625584776.a n = A187331 n

end A187331

/-! ## A187331.P9975999705226408391

`∑[a(n-2)-(-1)^a(n-2)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A187331.P9975999705226408391
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) - (-1 : ℝ) ^ (f1 (n - 2))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187331.P9975999705226408391

namespace A187331

/-- `∑[a(n-2)-(-1)^a(n-2)]` -/
def P9975999705226408391.Spec : Prop :=
  ∀ n, P9975999705226408391.a n = (A187331 n : ℝ)

end A187331

/-! ## A187331.P15217815041287371294

`∑[A070352(a(n-1))]` with `a(0)=0`
-/

namespace A187331.P15217815041287371294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A070352 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187331.P15217815041287371294

namespace A187331

/-- `∑[A070352(a(n-1))]` -/
def P15217815041287371294.Spec : Prop :=
  ∀ n, P15217815041287371294.a n = A187331 n

end A187331

/-! ## A187331.P8429662773377638080

`∑[A227216(a(n-1))]` with `a(0)=0`
-/

namespace A187331.P8429662773377638080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A227216 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187331.P8429662773377638080

namespace A187331

/-- `∑[A227216(a(n-1))]` -/
def P8429662773377638080.Spec : Prop :=
  ∀ n, P8429662773377638080.a n = A187331 n

end A187331

/-! ## A187331.P15416333418179064318

`A214068(n)+floor(n/4)`
-/

namespace A187331.P15416333418179064318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214068 n + ⌊(n : ℚ) / 4⌋

end

end A187331.P15416333418179064318

namespace A187331

/-- `A214068(n)+floor(n/4)` -/
def P15416333418179064318.Spec : Prop :=
  ∀ n, P15416333418179064318.a n = A187331 n

end A187331

/-! ## A187331.P6503157087924513233

`char[2*n]+lt[A020639(n+2), 4]+n-1`
-/

namespace A187331.P6503157087924513233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) + ((n : ℤ) - 1))

end

end A187331.P6503157087924513233

namespace A187331

/-- `char[2*n]+lt[A020639(n+2), 4]+n-1` -/
def P6503157087924513233.Spec : Prop :=
  ∀ n, P6503157087924513233.a n = A187331 n

end A187331

/-! ## A187331.P3172705022089199848

`A042948(n)+A004524(n)`
-/

namespace A187331.P3172705022089199848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n + A004524 n

end

end A187331.P3172705022089199848

namespace A187331

/-- `A042948(n)+A004524(n)` -/
def P3172705022089199848.Spec : Prop :=
  ∀ n, P3172705022089199848.a n = A187331 n

end A187331

/-! ## A187331.P4517089347627203216

`A047244(A037915(n))+n`
-/

namespace A187331.P4517089347627203216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (A037915 n).toNat + (n : ℤ)

end

end A187331.P4517089347627203216

namespace A187331

/-- `A047244(A037915(n))+n` -/
def P4517089347627203216.Spec : Prop :=
  ∀ n, P4517089347627203216.a n = A187331 n

end A187331

/-! ## A187331.P8835062640177490992

`A187322(n)+A001068(n)`
-/

namespace A187331.P8835062640177490992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187322 n + A001068 n

end

end A187331.P8835062640177490992

namespace A187331

/-- `A187322(n)+A001068(n)` -/
def P8835062640177490992.Spec : Prop :=
  ∀ n, P8835062640177490992.a n = A187331 n

end A187331

/-! ## A187331.P12967441372320371335

`A187326(n)-A001489(n)`
-/

namespace A187331.P12967441372320371335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 n - A001489 n

end

end A187331.P12967441372320371335

namespace A187331

/-- `A187326(n)-A001489(n)` -/
def P12967441372320371335.Spec : Prop :=
  ∀ n, P12967441372320371335.a n = A187331 n

end A187331

/-!
# A187332: Complement of A187331.

The programs for A187332, the canonical program `A187332.P286037640570826509` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187332 has offset 1).

The definition of A187332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187332.P2195842656449227339

`ogf((2+x+2x^2+2x^3+x^4+x^5+x^6)/(1-x-x^6+x^7))`
-/

namespace A187332.P2195842656449227339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 2, 2, 1, 1, 1] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A187332.P2195842656449227339

namespace A187332

/-- `ogf((2+x+2x^2+2x^3+x^4+x^5+x^6)/(1-x-x^6+x^7))` -/
def P2195842656449227339.Spec : Prop :=
  ∀ n, P2195842656449227339.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P286037640570826509

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7, a(4)=8, a(5)=9, a(6)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187332

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P286037640570826509.Spec : Prop :=
  ∀ n, P286037640570826509.a n = A187332 (n + 1)

theorem P286037640570826509.correct : P286037640570826509.Spec := by
  intro n
  simp only [A187332, Nat.add_sub_cancel]

end A187332

/-! ## A187332.P1310595116616788010

`comp[∑[(n^3)%5]]`
-/

namespace A187332.P1310595116616788010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187332.P1310595116616788010

namespace A187332

/-- `comp[∑[(n^3)%5]]` -/
def P1310595116616788010.Spec : Prop :=
  ∀ n, (P1310595116616788010.a n : ℤ) = A187332 (n + 1)

end A187332

/-! ## A187332.P18204514257032998883

`comp[a(n-4)+10]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=6`
-/

namespace A187332.P18204514257032998883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 4, 6] fun n f1 =>
  f1 (n - 4) + 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187332.P18204514257032998883

namespace A187332

/-- `comp[a(n-4)+10]` -/
def P18204514257032998883.Spec : Prop :=
  ∀ n, (P18204514257032998883.a n : ℤ) = A187332 (n + 1)

end A187332

/-! ## A187332.P13154007770990532303

`comp[A187331(n)]`
-/

namespace A187332.P13154007770990532303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187332.P13154007770990532303

namespace A187332

/-- `comp[A187331(n)]` -/
def P13154007770990532303.Spec : Prop :=
  ∀ n, (P13154007770990532303.a n : ℤ) = A187332 (n + 1)

end A187332

/-! ## A187332.P1343054618751604951

`comp[∑[A070471(n)]]`
-/

namespace A187332.P1343054618751604951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187332.P1343054618751604951

namespace A187332

/-- `comp[∑[A070471(n)]]` -/
def P1343054618751604951.Spec : Prop :=
  ∀ n, (P1343054618751604951.a n : ℤ) = A187332 (n + 1)

end A187332

/-! ## A187332.P17842375327111547031

`comp[A187326(n)+n]`
-/

namespace A187332.P17842375327111547031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187332.P17842375327111547031

namespace A187332

/-- `comp[A187326(n)+n]` -/
def P17842375327111547031.Spec : Prop :=
  ∀ n, (P17842375327111547031.a n : ℤ) = A187332 (n + 1)

end A187332

/-! ## A187332.P9942344073940561793

`comp[A214068(n)+floor(n/4)]`
-/

namespace A187332.P9942344073940561793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214068 n + ⌊(n : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187332.P9942344073940561793

namespace A187332

/-- `comp[A214068(n)+floor(n/4)]` -/
def P9942344073940561793.Spec : Prop :=
  ∀ n, (P9942344073940561793.a n : ℤ) = A187332 (n + 1)

end A187332

/-! ## A187332.P5208468891486515911

`2*n+3-A016729(n+1)`
-/

namespace A187332.P5208468891486515911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A016729 (n + 1)

end

end A187332.P5208468891486515911

namespace A187332

/-- `2*n+3-A016729(n+1)` -/
def P5208468891486515911.Spec : Prop :=
  ∀ n, P5208468891486515911.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P6441026422210658192

`A047572(n+1)+A008620(n)`
-/

namespace A187332.P6441026422210658192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047572 (n + 1) + A008620 n

end

end A187332.P6441026422210658192

namespace A187332

/-- `A047572(n+1)+A008620(n)` -/
def P6441026422210658192.Spec : Prop :=
  ∀ n, P6441026422210658192.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P4181758596535135878

`A141212(n+1)+A047206(n+1)`
-/

namespace A187332.P4181758596535135878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141212 (n + 1) + A047206 (n + 1)

end

end A187332.P4181758596535135878

namespace A187332

/-- `A141212(n+1)+A047206(n+1)` -/
def P4181758596535135878.Spec : Prop :=
  ∀ n, P4181758596535135878.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P12064737665471665498

`A257063(n+1)+A147534(n+1)`
-/

namespace A187332.P12064737665471665498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257063 (n + 1) + A147534 (n + 1)

end

end A187332.P12064737665471665498

namespace A187332

/-- `A257063(n+1)+A147534(n+1)` -/
def P12064737665471665498.Spec : Prop :=
  ∀ n, P12064737665471665498.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P12855325380320910660

`A079979(2*n)+A047220(n+2)-A079979(n+1)`
-/

namespace A187332.P12855325380320910660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (2 * n) + (A047220 (n + 2) - A079979 (n + 1))

end

end A187332.P12855325380320910660

namespace A187332

/-- `A079979(2*n)+A047220(n+2)-A079979(n+1)` -/
def P12855325380320910660.Spec : Prop :=
  ∀ n, P12855325380320910660.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P7211451665282456410

`n+3-A123920(n+3)+n`
-/

namespace A187332.P7211451665282456410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A123920 (n + 3) + (n : ℤ)

end

end A187332.P7211451665282456410

namespace A187332

/-- `n+3-A123920(n+3)+n` -/
def P7211451665282456410.Spec : Prop :=
  ∀ n, P7211451665282456410.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P6969882674855175860

`A065502(n+1)-A131734(n+2)`
-/

namespace A187332.P6969882674855175860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1) - A131734 (n + 2)

end

end A187332.P6969882674855175860

namespace A187332

/-- `A065502(n+1)-A131734(n+2)` -/
def P6969882674855175860.Spec : Prop :=
  ∀ n, P6969882674855175860.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P1648293211218336589

`A047203(A047587(n+2))`
-/

namespace A187332.P1648293211218336589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (A047587 (n + 2)).toNat

end

end A187332.P1648293211218336589

namespace A187332

/-- `A047203(A047587(n+2))` -/
def P1648293211218336589.Spec : Prop :=
  ∀ n, P1648293211218336589.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P16251758587463913809

`A004524(A047513(n+4))+n`
-/

namespace A187332.P16251758587463913809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047513 (n + 4)).toNat + (n : ℤ)

end

end A187332.P16251758587463913809

namespace A187332

/-- `A004524(A047513(n+4))+n` -/
def P16251758587463913809.Spec : Prop :=
  ∀ n, P16251758587463913809.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P11990404465006778005

`2*n+1+A123919(n+2)-A123919(2*n+1)`
-/

namespace A187332.P11990404465006778005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A123919 (n + 2) - A123919 (2 * n + 1))

end

end A187332.P11990404465006778005

namespace A187332

/-- `2*n+1+A123919(n+2)-A123919(2*n+1)` -/
def P11990404465006778005.Spec : Prop :=
  ∀ n, P11990404465006778005.a n = A187332 (n + 1)

end A187332

/-! ## A187332.P520040134173275167

`A131380(2*n+1)+A131380(A137719(n))`
-/

namespace A187332.P520040134173275167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (2 * n + 1) + A131380 (A137719 n).toNat

end

end A187332.P520040134173275167

namespace A187332

/-- `A131380(2*n+1)+A131380(A137719(n))` -/
def P520040134173275167.Spec : Prop :=
  ∀ n, P520040134173275167.a n = A187332 (n + 1)

end A187332

/-!
# A187333: a(n) = floor(n/5) + floor(2n/5) + floor(3n/5) + floor(4n/5).

The programs for A187333, the canonical program `A187333.P11985676644665519196` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187333 has offset 0).

The definition of A187333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/5)+floor(2*n/5)+floor(3*n/5)+floor(4*n/5)` (program `A187333.P11985676644665519196`, by `A187333.P11985676644665519196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187333.P7490767897401902597

`ogf((2x^2+2x^3+2x^4+4x^5)/(1-x-x^5+x^6))`
-/

namespace A187333.P7490767897401902597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 2, 2, 4] [1, -1, 0, 0, 0, -1, 1] n

end

end A187333.P7490767897401902597

namespace A187333

/-- `ogf((2x^2+2x^3+2x^4+4x^5)/(1-x-x^5+x^6))` -/
def P7490767897401902597.Spec : Prop :=
  ∀ n, P7490767897401902597.a n = A187333 n

end A187333

/-! ## A187333.P11985676644665519196

`floor(n/5)+floor(2*n/5)+floor(3*n/5)+floor(4*n/5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187333

/-- `floor(n/5)+floor(2*n/5)+floor(3*n/5)+floor(4*n/5)` -/
def P11985676644665519196.Spec : Prop :=
  ∀ n, P11985676644665519196.a n = A187333 n

theorem P11985676644665519196.correct : P11985676644665519196.Spec := by
  intro n
  simp only [A187333]

end A187333

/-! ## A187333.P4481058899371472002

`2*(n-(n^4)%5)`
-/

namespace A187333.P4481058899371472002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - ((n ^ 4 % 5 : ℕ) : ℤ))

end

end A187333.P4481058899371472002

namespace A187333

/-- `2*(n-(n^4)%5)` -/
def P4481058899371472002.Spec : Prop :=
  ∀ n, P4481058899371472002.a n = A187333 n

end A187333

/-! ## A187333.P6811437771004391870

`2*n-C(2, gcd(5, n))`
-/

namespace A187333.P6811437771004391870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.choose 2 (Nat.gcd 5 n) : ℤ)

end

end A187333.P6811437771004391870

namespace A187333

/-- `2*n-C(2, gcd(5, n))` -/
def P6811437771004391870.Spec : Prop :=
  ∀ n, P6811437771004391870.a n = A187333 n

end A187333

/-! ## A187333.P6179111134106888956

`a(n-5)+10` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4, a(4)=6`
-/

namespace A187333.P6179111134106888956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 4, 6] fun n a =>
  a (n - 5) + 10

end

end A187333.P6179111134106888956

namespace A187333

/-- `a(n-5)+10` -/
def P6179111134106888956.Spec : Prop :=
  ∀ n, (P6179111134106888956.a n : ℤ) = A187333 n

end A187333

/-! ## A187333.P1223930314624598695

`2*n-gcd(10, 2*n)%5`
-/

namespace A187333.P1223930314624598695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Nat.gcd 10 (2 * n) % 5 : ℕ) : ℤ)

end

end A187333.P1223930314624598695

namespace A187333

/-- `2*n-gcd(10, 2*n)%5` -/
def P1223930314624598695.Spec : Prop :=
  ∀ n, P1223930314624598695.a n = A187333 n

end A187333

/-! ## A187333.P9828044447055221374

`(lcm(5, n)+n)%(2*n+1)`
-/

namespace A187333.P9828044447055221374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 n + n) % (2 * n + 1)

end

end A187333.P9828044447055221374

namespace A187333

/-- `(lcm(5, n)+n)%(2*n+1)` -/
def P9828044447055221374.Spec : Prop :=
  ∀ n, (P9828044447055221374.a n : ℤ) = A187333 n

end A187333

/-! ## A187333.P3769263264232931959

`floor(2*n-atan(2*n%5))`
-/

namespace A187333.P3769263264232931959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) - Real.arctan ((2 * (n % 5) : ℕ) : ℝ)⌋

end

end A187333.P3769263264232931959

namespace A187333

/-- `floor(2*n-atan(2*n%5))` -/
def P3769263264232931959.Spec : Prop :=
  ∀ n, P3769263264232931959.a n = A187333 n

end A187333

/-! ## A187333.P569951168423278516

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=2, a(5)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A187333.P569951168423278516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 2, 2, 4] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187333.P569951168423278516

namespace A187333

/-- `∑[floor(a(n-5))]` -/
def P569951168423278516.Spec : Prop :=
  ∀ n, (P569951168423278516.a n : ℤ) = A187333 n

end A187333

/-! ## A187333.P13161589948445912239

`∑[a(n-5)%5]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=2, a(5)=4`
-/

namespace A187333.P13161589948445912239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 2, 2, 4] fun n f1 =>
  f1 (n - 5) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187333.P13161589948445912239

namespace A187333

/-- `∑[a(n-5)%5]` -/
def P13161589948445912239.Spec : Prop :=
  ∀ n, (P13161589948445912239.a n : ℤ) = A187333 n

end A187333

/-! ## A187333.P2662474332859747317

`2*n-2%((2*n+1)%10)`
-/

namespace A187333.P2662474332859747317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((2 % ((2 * n + 1) % 10) : ℕ) : ℤ)

end

end A187333.P2662474332859747317

namespace A187333

/-- `2*n-2%((2*n+1)%10)` -/
def P2662474332859747317.Spec : Prop :=
  ∀ n, P2662474332859747317.a n = A187333 n

end A187333

/-! ## A187333.P5456683226200058860

`2*(n-A011558(n))`
-/

namespace A187333.P5456683226200058860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A011558 n)

end

end A187333.P5456683226200058860

namespace A187333

/-- `2*(n-A011558(n))` -/
def P5456683226200058860.Spec : Prop :=
  ∀ n, P5456683226200058860.a n = A187333 n

end A187333

/-! ## A187333.P13468728930654244487

`abs(C(2, A109009(n))-2*n)`
-/

namespace A187333.P13468728930654244487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose 2 (A109009 n).toNat : ℤ) - (2 * n : ℤ)|

end

end A187333.P13468728930654244487

namespace A187333

/-- `abs(C(2, A109009(n))-2*n)` -/
def P13468728930654244487.Spec : Prop :=
  ∀ n, P13468728930654244487.a n = A187333 n

end A187333

/-! ## A187333.P9535968146027716126

`A005843(n-abs(A100047(n)))`
-/

namespace A187333.P9535968146027716126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - |A100047 n|).toNat

end

end A187333.P9535968146027716126

namespace A187333

/-- `A005843(n-abs(A100047(n)))` -/
def P9535968146027716126.Spec : Prop :=
  ∀ n, P9535968146027716126.a n = A187333 n

end A187333

/-! ## A187333.P13808515210800339841

`A005843(n-abs(A330025(n)))`
-/

namespace A187333.P13808515210800339841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - |A330025 n|).toNat

end

end A187333.P13808515210800339841

namespace A187333

/-- `A005843(n-abs(A330025(n)))` -/
def P13808515210800339841.Spec : Prop :=
  ∀ n, P13808515210800339841.a n = A187333 n

end A187333

/-! ## A187333.P10563346559129959898

`A005843(n-A100047(n)²)`
-/

namespace A187333.P10563346559129959898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - A100047 n ^ 2).toNat

end

end A187333.P10563346559129959898

namespace A187333

/-- `A005843(n-A100047(n)²)` -/
def P10563346559129959898.Spec : Prop :=
  ∀ n, P10563346559129959898.a n = A187333 n

end A187333

/-! ## A187333.P4772017855120587281

`2*A057361(A090223(2*n))`
-/

namespace A187333.P4772017855120587281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057361 (A090223 (2 * n)).toNat

end

end A187333.P4772017855120587281

namespace A187333

/-- `2*A057361(A090223(2*n))` -/
def P4772017855120587281.Spec : Prop :=
  ∀ n, P4772017855120587281.a n = A187333 n

end A187333

/-! ## A187333.P14881143350673716975

`A004523(A187334(n))`
-/

namespace A187333.P14881143350673716975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A187334 n).toNat

end

end A187333.P14881143350673716975

namespace A187333

/-- `A004523(A187334(n))` -/
def P14881143350673716975.Spec : Prop :=
  ∀ n, P14881143350673716975.a n = A187333 n

end A187333

/-!
# A187334: Sum{floor(kn/5), k=1,2,3,4,5}; complement of A187335.

The programs for A187334, the canonical program `A187334.P4892385061677460238` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187334 has offset 0).

The definition of A187334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187334.P4892385061677460238

`3*n-C(2, gcd(5, n))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187334

/-- `3*n-C(2, gcd(5, n))` -/
def P4892385061677460238.Spec : Prop :=
  ∀ n, P4892385061677460238.a n = A187334 n

theorem P4892385061677460238.correct : P4892385061677460238.Spec := by
  intro n
  simp only [A187334]

end A187334

/-! ## A187334.P16064379249954887131

`a(n-5)+15` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7, a(4)=10`
-/

namespace A187334.P16064379249954887131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 7, 10] fun n a =>
  a (n - 5) + 15

end

end A187334.P16064379249954887131

namespace A187334

/-- `a(n-5)+15` -/
def P16064379249954887131.Spec : Prop :=
  ∀ n, (P16064379249954887131.a n : ℤ) = A187334 n

end A187334

/-! ## A187334.P11356702260025375053

`3*n-2*(n^4)%5`
-/

namespace A187334.P11356702260025375053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((2 * (n ^ 4 % 5) : ℕ) : ℤ)

end

end A187334.P11356702260025375053

namespace A187334

/-- `3*n-2*(n^4)%5` -/
def P11356702260025375053.Spec : Prop :=
  ∀ n, P11356702260025375053.a n = A187334 n

end A187334

/-! ## A187334.P4661031932898587857

`3*n-2%(n%5+2)`
-/

namespace A187334.P4661031932898587857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((2 % (n % 5 + 2) : ℕ) : ℤ)

end

end A187334.P4661031932898587857

namespace A187334

/-- `3*n-2%(n%5+2)` -/
def P4661031932898587857.Spec : Prop :=
  ∀ n, P4661031932898587857.a n = A187334 n

end A187334

/-! ## A187334.P12603529751627552623

`(3*lcm(5, n))%(6*n+1)`
-/

namespace A187334.P12603529751627552623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lcm 5 n % (6 * n + 1)

end

end A187334.P12603529751627552623

namespace A187334

/-- `(3*lcm(5, n))%(6*n+1)` -/
def P12603529751627552623.Spec : Prop :=
  ∀ n, (P12603529751627552623.a n : ℤ) = A187334 n

end A187334

/-! ## A187334.P10892761520779015474

`3*n-gcd(10, 2*n)%5`
-/

namespace A187334.P10892761520779015474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((Nat.gcd 10 (2 * n) % 5 : ℕ) : ℤ)

end

end A187334.P10892761520779015474

namespace A187334

/-- `3*n-gcd(10, 2*n)%5` -/
def P10892761520779015474.Spec : Prop :=
  ∀ n, P10892761520779015474.a n = A187334 n

end A187334

/-! ## A187334.P14265308885933509474

`3*n-(2*n²²)%5`
-/

namespace A187334.P14265308885933509474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((2 * (n ^ 2) ^ 2 % 5 : ℕ) : ℤ)

end

end A187334.P14265308885933509474

namespace A187334

/-- `3*n-(2*n²²)%5` -/
def P14265308885933509474.Spec : Prop :=
  ∀ n, P14265308885933509474.a n = A187334 n

end A187334

/-! ## A187334.P13429912589693193360

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=3, a(5)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A187334.P13429912589693193360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 3, 5] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187334.P13429912589693193360

namespace A187334

/-- `∑[floor(a(n-5))]` -/
def P13429912589693193360.Spec : Prop :=
  ∀ n, (P13429912589693193360.a n : ℤ) = A187334 n

end A187334

/-! ## A187334.P5008321495773442730

`or(1, ∑[(n-1)%5])+n+1`
-/

namespace A187334.P5008321495773442730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A187334.P5008321495773442730

namespace A187334

/-- `or(1, ∑[(n-1)%5])+n+1` -/
def P5008321495773442730.Spec : Prop :=
  ∀ n, P5008321495773442730.a n = A187334 n

end A187334

/-! ## A187334.P8311630435266121688

`2*(char[5*n]+n-1)+n`
-/

namespace A187334.P8311630435266121688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - 1)) + (n : ℤ)

end

end A187334.P8311630435266121688

namespace A187334

/-- `2*(char[5*n]+n-1)+n` -/
def P8311630435266121688.Spec : Prop :=
  ∀ n, P8311630435266121688.a n = A187334 n

end A187334

/-! ## A187334.P1724382757761814163

`∑[a(n-5)%n]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=3, a(5)=5`
-/

namespace A187334.P1724382757761814163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 3, 5] fun n f1 =>
  f1 (n - 5) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187334.P1724382757761814163

namespace A187334

/-- `∑[a(n-5)%n]` -/
def P1724382757761814163.Spec : Prop :=
  ∀ n, (P1724382757761814163.a n : ℤ) = A187334 n

end A187334

/-! ## A187334.P1242605253378769877

`comp[A187335(n+1)]`
-/

namespace A187334.P1242605253378769877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187334.P1242605253378769877

namespace A187334

/-- `comp[A187335(n+1)]` -/
def P1242605253378769877.Spec : Prop :=
  ∀ n, (P1242605253378769877.a n : ℤ) = A187334 n

end A187334

/-! ## A187334.P10042736405044293615

`abs(A187333(2*n)-n)`
-/

namespace A187334.P10042736405044293615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187333 (2 * n) - (n : ℤ)|

end

end A187334.P10042736405044293615

namespace A187334

/-- `abs(A187333(2*n)-n)` -/
def P10042736405044293615.Spec : Prop :=
  ∀ n, P10042736405044293615.a n = A187334 n

end A187334

/-! ## A187334.P9552986563594763934

`record[A187333(n)-A006370(n)]`
-/

namespace A187334.P9552986563594763934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187333 n - A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187334.P9552986563594763934

namespace A187334

/-- `record[A187333(n)-A006370(n)]` -/
def P9552986563594763934.Spec : Prop :=
  ∀ n, P9552986563594763934.a n = A187334 n

end A187334

/-! ## A187334.P10995164771830224991

`A130481(A187333(n)+n)`
-/

namespace A187334.P10995164771830224991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A187333 n + (n : ℤ)).toNat

end

end A187334.P10995164771830224991

namespace A187334

/-- `A130481(A187333(n)+n)` -/
def P10995164771830224991.Spec : Prop :=
  ∀ n, P10995164771830224991.a n = A187334 n

end A187334

/-! ## A187334.P9089214360412570694

`A032766(A057354(4*n)+A057354(n))`
-/

namespace A187334.P9089214360412570694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A057354 (4 * n) + A057354 n).toNat

end

end A187334.P9089214360412570694

namespace A187334

/-- `A032766(A057354(4*n)+A057354(n))` -/
def P9089214360412570694.Spec : Prop :=
  ∀ n, P9089214360412570694.a n = A187334 n

end A187334

/-! ## A187334.P4152148225318273988

`A057355(A187333(2*n)+n)`
-/

namespace A187334.P4152148225318273988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A187333 (2 * n) + (n : ℤ)).toNat

end

end A187334.P4152148225318273988

namespace A187334

/-- `A057355(A187333(2*n)+n)` -/
def P4152148225318273988.Spec : Prop :=
  ∀ n, P4152148225318273988.a n = A187334 n

end A187334

/-! ## A187334.P16263449238162763890

`A004526(2*(A187333(n)+n))`
-/

namespace A187334.P16263449238162763890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (A187333 n + (n : ℤ))).toNat

end

end A187334.P16263449238162763890

namespace A187334

/-- `A004526(2*(A187333(n)+n))` -/
def P16263449238162763890.Spec : Prop :=
  ∀ n, P16263449238162763890.a n = A187334 n

end A187334

/-! ## A187334.P7539631346075715494

`A004526(A130482(A187333(2*n)))`
-/

namespace A187334.P7539631346075715494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130482 (A187333 (2 * n)).toNat).toNat

end

end A187334.P7539631346075715494

namespace A187334

/-- `A004526(A130482(A187333(2*n)))` -/
def P7539631346075715494.Spec : Prop :=
  ∀ n, P7539631346075715494.a n = A187334 n

end A187334

/-! ## A187334.P17936555150719987002

`A004526(A187326(A187333(n+n)))`
-/

namespace A187334.P17936555150719987002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187326 (A187333 (n + n)).toNat).toNat

end

end A187334.P17936555150719987002

namespace A187334

/-- `A004526(A187326(A187333(n+n)))` -/
def P17936555150719987002.Spec : Prop :=
  ∀ n, P17936555150719987002.a n = A187334 n

end A187334

/-!
# A187335: Complement of A187334.

The programs for A187335, the canonical program `A187335.P17696418356305829411` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187335 has offset 1).

The definition of A187335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187335.P1598459319909276182

`comp[3*n-C(2, gcd(5, n))]`
-/

namespace A187335.P1598459319909276182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.choose 2 (Nat.gcd 5 n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187335.P1598459319909276182

namespace A187335

/-- `comp[3*n-C(2, gcd(5, n))]` -/
def P1598459319909276182.Spec : Prop :=
  ∀ n, (P1598459319909276182.a n : ℤ) = A187335 (n + 1)

end A187335

/-! ## A187335.P6191197796997569940

`comp[3*n-2*(n^4)%5]`
-/

namespace A187335.P6191197796997569940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((2 * (n ^ 4 % 5) : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187335.P6191197796997569940

namespace A187335

/-- `comp[3*n-2*(n^4)%5]` -/
def P6191197796997569940.Spec : Prop :=
  ∀ n, (P6191197796997569940.a n : ℤ) = A187335 (n + 1)

end A187335

/-! ## A187335.P10663151825318109320

`comp[3*n-2%(n%5+2)]`
-/

namespace A187335.P10663151825318109320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((2 % (n % 5 + 2) : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187335.P10663151825318109320

namespace A187335

/-- `comp[3*n-2%(n%5+2)]` -/
def P10663151825318109320.Spec : Prop :=
  ∀ n, (P10663151825318109320.a n : ℤ) = A187335 (n + 1)

end A187335

/-! ## A187335.P4066799781757443323

`comp[(3*lcm(5, n))%(6*n+1)]`
-/

namespace A187335.P4066799781757443323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lcm 5 n % (6 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187335.P4066799781757443323

namespace A187335

/-- `comp[(3*lcm(5, n))%(6*n+1)]` -/
def P4066799781757443323.Spec : Prop :=
  ∀ n, (P4066799781757443323.a n : ℤ) = A187335 (n + 1)

end A187335

/-! ## A187335.P5287063280059872694

`comp[3*n-gcd(10, 2*n)%5]`
-/

namespace A187335.P5287063280059872694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((Nat.gcd 10 (2 * n) % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187335.P5287063280059872694

namespace A187335

/-- `comp[3*n-gcd(10, 2*n)%5]` -/
def P5287063280059872694.Spec : Prop :=
  ∀ n, (P5287063280059872694.a n : ℤ) = A187335 (n + 1)

end A187335

/-! ## A187335.P3351646940060018350

`comp[3*n-(2*n²²)%5]`
-/

namespace A187335.P3351646940060018350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((2 * (n ^ 2) ^ 2 % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187335.P3351646940060018350

namespace A187335

/-- `comp[3*n-(2*n²²)%5]` -/
def P3351646940060018350.Spec : Prop :=
  ∀ n, (P3351646940060018350.a n : ℤ) = A187335 (n + 1)

end A187335

/-! ## A187335.P1792306892720827536

`comp[or(1, ∑[(n-1)%5])+n+1]`
-/

namespace A187335.P1792306892720827536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187335.P1792306892720827536

namespace A187335

/-- `comp[or(1, ∑[(n-1)%5])+n+1]` -/
def P1792306892720827536.Spec : Prop :=
  ∀ n, (P1792306892720827536.a n : ℤ) = A187335 (n + 1)

end A187335

/-! ## A187335.P12140967287731202369

`comp[2*(char[5*n]+n-1)+n]`
-/

namespace A187335.P12140967287731202369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187335.P12140967287731202369

namespace A187335

/-- `comp[2*(char[5*n]+n-1)+n]` -/
def P12140967287731202369.Spec : Prop :=
  ∀ n, (P12140967287731202369.a n : ℤ) = A187335 (n + 1)

end A187335

/-! ## A187335.P17243045629512377510

`comp[A187334(n)-1]+1`
-/

namespace A187335.P17243045629512377510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187334 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187335.P17243045629512377510

namespace A187335

/-- `comp[A187334(n)-1]+1` -/
def P17243045629512377510.Spec : Prop :=
  ∀ n, (P17243045629512377510.a n : ℤ) = A187335 (n + 1)

end A187335

/-! ## A187335.P119969714759782922

`char[A272576(n)]+∑[A040001(n)]`
-/

namespace A187335.P119969714759782922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A187335.P119969714759782922

namespace A187335

/-- `char[A272576(n)]+∑[A040001(n)]` -/
def P119969714759782922.Spec : Prop :=
  ∀ n, P119969714759782922.a n = A187335 (n + 1)

end A187335

/-! ## A187335.P17317458302413076446

`A001651(n+1)+char[A272576(n)]`
-/

namespace A187335.P17317458302413076446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A187335.P17317458302413076446

namespace A187335

/-- `A001651(n+1)+char[A272576(n)]` -/
def P17317458302413076446.Spec : Prop :=
  ∀ n, P17317458302413076446.a n = A187335 (n + 1)

end A187335

/-! ## A187335.P3874569164859324947

`comp[A187334(n)]%A016777(n+1)`
-/

namespace A187335.P3874569164859324947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187334 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A016777 (n + 1))

end

end A187335.P3874569164859324947

namespace A187335

/-- `comp[A187334(n)]%A016777(n+1)` -/
def P3874569164859324947.Spec : Prop :=
  ∀ n, P3874569164859324947.a n = A187335 (n + 1)

end A187335

/-! ## A187335.P17992600322253590504

`A011558(A008619(n))+∑[A040001(n)]`
-/

namespace A187335.P17992600322253590504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A008619 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187335.P17992600322253590504

namespace A187335

/-- `A011558(A008619(n))+∑[A040001(n)]` -/
def P17992600322253590504.Spec : Prop :=
  ∀ n, P17992600322253590504.a n = A187335 (n + 1)

end A187335

/-! ## A187335.P17696418356305829411

`A011558(A008619(n))+A001651(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187335

/-- `A011558(A008619(n))+A001651(n+1)` -/
def P17696418356305829411.Spec : Prop :=
  ∀ n, P17696418356305829411.a n = A187335 (n + 1)

theorem P17696418356305829411.correct : P17696418356305829411.Spec := by
  intro n
  simp only [A187335, Nat.add_sub_cancel]

end A187335

/-! ## A187335.P1469659006371096679

`A011558(A001651(n+1)-n)+A001651(n+1)`
-/

namespace A187335.P1469659006371096679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A001651 (n + 1) - (n : ℤ)).toNat + A001651 (n + 1)

end

end A187335.P1469659006371096679

namespace A187335

/-- `A011558(A001651(n+1)-n)+A001651(n+1)` -/
def P1469659006371096679.Spec : Prop :=
  ∀ n, P1469659006371096679.a n = A187335 (n + 1)

end A187335

/-! ## A187335.P9419168956286516316

`A011558(A008619(n))+Δ[A331952(n)]`
-/

namespace A187335.P9419168956286516316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A187335.P9419168956286516316

namespace A187335

/-- `A011558(A008619(n))+Δ[A331952(n)]` -/
def P9419168956286516316.Spec : Prop :=
  ∀ n, P9419168956286516316.a n = A187335 (n + 1)

end A187335

/-! ## A187335.P11888235369954546096

`record[A091703(A008612(n))+A008611(n)]`
-/

namespace A187335.P11888235369954546096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (A008612 n).toNat + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187335.P11888235369954546096

namespace A187335

/-- `record[A091703(A008612(n))+A008611(n)]` -/
def P11888235369954546096.Spec : Prop :=
  ∀ n, P11888235369954546096.a n = A187335 (n + 1)

end A187335

/-! ## A187335.P2370692012022606512

`A011558(A008619(n))+A008619(3*n)`
-/

namespace A187335.P2370692012022606512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A008619 n).toNat + A008619 (3 * n)

end

end A187335.P2370692012022606512

namespace A187335

/-- `A011558(A008619(n))+A008619(3*n)` -/
def P2370692012022606512.Spec : Prop :=
  ∀ n, P2370692012022606512.a n = A187335 (n + 1)

end A187335

/-! ## A187335.P2131863986820087404

`comp[3*n]+(A082267(n+2)+1)%2`
-/

namespace A187335.P2131863986820087404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + Int.tmod (A082267 (n + 2) + 1) 2

end

end A187335.P2131863986820087404

namespace A187335

/-- `comp[3*n]+(A082267(n+2)+1)%2` -/
def P2131863986820087404.Spec : Prop :=
  ∀ n, P2131863986820087404.a n = A187335 (n + 1)

end A187335

/-!
# A187336: Sum{floor(kn/6), k=1,2,3,4,5}.

The programs for A187336, the canonical program `A187336.P4295077283304323813` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187336 has offset 0).

The definition of A187336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187336.P4295077283304323813

`∑[gcd(2, n)²]-4-gcd(6, n)%3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187336

/-- `∑[gcd(2, n)²]-4-gcd(6, n)%3` -/
def P4295077283304323813.Spec : Prop :=
  ∀ n, P4295077283304323813.a n = A187336 n

theorem P4295077283304323813.correct : P4295077283304323813.Spec := by
  intro n
  simp only [A187336]

end A187336

/-! ## A187336.P8419056962189598178

`ogf((3x^2+3x^3+2x^4+2x^5+5x^6)/(1-x-x^6+x^7))`
-/

namespace A187336.P8419056962189598178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 3, 2, 2, 5] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A187336.P8419056962189598178

namespace A187336

/-- `ogf((3x^2+3x^3+2x^4+2x^5+5x^6)/(1-x-x^6+x^7))` -/
def P8419056962189598178.Spec : Prop :=
  ∀ n, P8419056962189598178.a n = A187336 n

end A187336

/-! ## A187336.P8166329740833948961

`∑[gcd(2, n)²]-4-A193680(n)`
-/

namespace A187336.P8166329740833948961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4 - A193680 n

end

end A187336.P8166329740833948961

namespace A187336

/-- `∑[gcd(2, n)²]-4-A193680(n)` -/
def P8166329740833948961.Spec : Prop :=
  ∀ n, P8166329740833948961.a n = A187336 n

end A187336

/-! ## A187336.P4719955833341402227

`A008851(n+1)-A193680(n)`
-/

namespace A187336.P4719955833341402227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1) - A193680 n

end

end A187336.P4719955833341402227

namespace A187336

/-- `A008851(n+1)-A193680(n)` -/
def P4719955833341402227.Spec : Prop :=
  ∀ n, P4719955833341402227.a n = A187336 n

end A187336

/-! ## A187336.P4712253617293294369

`A008851(n+1)-A040593(n)%4`
-/

namespace A187336.P4712253617293294369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1) - Int.tmod (A040593 n) 4

end

end A187336.P4712253617293294369

namespace A187336

/-- `A008851(n+1)-A040593(n)%4` -/
def P4712253617293294369.Spec : Prop :=
  ∀ n, P4712253617293294369.a n = A187336 n

end A187336

/-! ## A187336.P7288542586604864594

`A008851(n+1)-and(3, A010126(n))`
-/

namespace A187336.P7288542586604864594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1) - Int.land 3 (A010126 n)

end

end A187336.P7288542586604864594

namespace A187336

/-- `A008851(n+1)-and(3, A010126(n))` -/
def P7288542586604864594.Spec : Prop :=
  ∀ n, P7288542586604864594.a n = A187336 n

end A187336

/-! ## A187336.P1274369159919995419

`A214068(A004523(n))+A052928(n)`
-/

namespace A187336.P1274369159919995419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214068 (A004523 n).toNat + A052928 n

end

end A187336.P1274369159919995419

namespace A187336

/-- `A214068(A004523(n))+A052928(n)` -/
def P1274369159919995419.Spec : Prop :=
  ∀ n, P1274369159919995419.a n = A187336 n

end A187336

/-! ## A187336.P13323621450413806529

`A272299(n)-A110654(A064429(n))`
-/

namespace A187336.P13323621450413806529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272299 n - A110654 (A064429 n).toNat

end

end A187336.P13323621450413806529

namespace A187336

/-- `A272299(n)-A110654(A064429(n))` -/
def P13323621450413806529.Spec : Prop :=
  ∀ n, P13323621450413806529.a n = A187336 n

end A187336

/-! ## A187336.P11342701938345556755

`A047220(Δ[A077043(n)-A004523(n)])`
-/

namespace A187336.P11342701938345556755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n - A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (f1 (n + 1) - f1 n).toNat

end

end A187336.P11342701938345556755

namespace A187336

/-- `A047220(Δ[A077043(n)-A004523(n)])` -/
def P11342701938345556755.Spec : Prop :=
  ∀ n, P11342701938345556755.a n = A187336 n

end A187336

/-! ## A187336.P13466599475889993334

`A047220(A001651(n+1)-A011655(n))`
-/

namespace A187336.P13466599475889993334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (A001651 (n + 1) - A011655 n).toNat

end

end A187336.P13466599475889993334

namespace A187336

/-- `A047220(A001651(n+1)-A011655(n))` -/
def P13466599475889993334.Spec : Prop :=
  ∀ n, P13466599475889993334.a n = A187336 n

end A187336

/-! ## A187336.P8601114158309163822

`A047220(A008615(n+2)+A004773(n))`
-/

namespace A187336.P8601114158309163822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (A008615 (n + 2) + A004773 n).toNat

end

end A187336.P8601114158309163822

namespace A187336

/-- `A047220(A008615(n+2)+A004773(n))` -/
def P8601114158309163822.Spec : Prop :=
  ∀ n, P8601114158309163822.a n = A187336 n

end A187336

/-! ## A187336.P4073278584601040273

`A047220(A079979(2*n)+A032766(n))`
-/

namespace A187336.P4073278584601040273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (A079979 (2 * n) + A032766 n).toNat

end

end A187336.P4073278584601040273

namespace A187336

/-- `A047220(A079979(2*n)+A032766(n))` -/
def P4073278584601040273.Spec : Prop :=
  ∀ n, P4073278584601040273.a n = A187336 n

end A187336

/-! ## A187336.P16536902603926436984

`A001068(comp[or(2, n)]-n²%3)`
-/

namespace A187336.P16536902603926436984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n ^ 2 % 3)

end

end A187336.P16536902603926436984

namespace A187336

/-- `A001068(comp[or(2, n)]-n²%3)` -/
def P16536902603926436984.Spec : Prop :=
  ∀ n, P16536902603926436984.a n = A187336 n

end A187336

/-! ## A187336.P12137092824357345467

`A001068(2*n-xor(3, n²)%3)`
-/

namespace A187336.P12137092824357345467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n - Nat.xor 3 (n ^ 2) % 3)

end

end A187336.P12137092824357345467

namespace A187336

/-- `A001068(2*n-xor(3, n²)%3)` -/
def P12137092824357345467.Spec : Prop :=
  ∀ n, P12137092824357345467.a n = A187336 n

end A187336

/-! ## A187336.P130301260458687234

`A047388(A047236(n+1))-n`
-/

namespace A187336.P130301260458687234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047388 (A047236 (n + 1)).toNat - (n : ℤ)

end

end A187336.P130301260458687234

namespace A187336

/-- `A047388(A047236(n+1))-n` -/
def P130301260458687234.Spec : Prop :=
  ∀ n, P130301260458687234.a n = A187336 n

end A187336

/-! ## A187336.P3861590732570426776

`A001068(A042948(n)-Δ[A004523(n)])`
-/

namespace A187336.P3861590732570426776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A042948 n - (f1 (n + 1) - f1 n)).toNat

end

end A187336.P3861590732570426776

namespace A187336

/-- `A001068(A042948(n)-Δ[A004523(n)])` -/
def P3861590732570426776.Spec : Prop :=
  ∀ n, P3861590732570426776.a n = A187336 n

end A187336

/-! ## A187336.P2187436232217600715

`A272299(n)-A103221(A272299(n)+1)`
-/

namespace A187336.P2187436232217600715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272299 n - A103221 (A272299 n + 1).toNat

end

end A187336.P2187436232217600715

namespace A187336

/-- `A272299(n)-A103221(A272299(n)+1)` -/
def P2187436232217600715.Spec : Prop :=
  ∀ n, P2187436232217600715.a n = A187336 n

end A187336

/-! ## A187336.P7127717849391031842

`A174257(A103215(n+1)+n)`
-/

namespace A187336.P7127717849391031842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A103215 (n + 1) + (n : ℤ)).toNat

end

end A187336.P7127717849391031842

namespace A187336

/-- `A174257(A103215(n+1)+n)` -/
def P7127717849391031842.Spec : Prop :=
  ∀ n, P7127717849391031842.a n = A187336 n

end A187336

/-! ## A187336.P14873277012904343692

`A008851(n+1)-A096271(A071619(n))`
-/

namespace A187336.P14873277012904343692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1) - A096271 (A071619 n).toNat

end

end A187336.P14873277012904343692

namespace A187336

/-- `A008851(n+1)-A096271(A071619(n))` -/
def P14873277012904343692.Spec : Prop :=
  ∀ n, P14873277012904343692.a n = A187336 n

end A187336

/-! ## A187336.P10674776654885603480

`∑[A040005(n)]-A085058(A071619(n))`
-/

namespace A187336.P10674776654885603480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A085058 (A071619 n).toNat

end

end A187336.P10674776654885603480

namespace A187336

/-- `∑[A040005(n)]-A085058(A071619(n))` -/
def P10674776654885603480.Spec : Prop :=
  ∀ n, P10674776654885603480.a n = A187336 n

end A187336

/-!
# A187337: a(n) = Sum_{k=1..6} floor(k*n/7).

The programs for A187337, the canonical program `A187337.P6969403010327520040` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187337 has offset 0).

The definition of A187337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[6-1, floor((#+1)*n/7)]` (program `A187337.P6969403010327520040`, by `A187337.P6969403010327520040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187337.P6969403010327520040

`∑{#}[6-1, floor((#+1)*n/7)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187337

/-- `∑{#}[6-1, floor((#+1)*n/7)]` -/
def P6969403010327520040.Spec : Prop :=
  ∀ n, P6969403010327520040.a n = A187337 n

theorem P6969403010327520040.correct : P6969403010327520040.Spec := by
  intro n
  simp only [A187337]

end A187337

/-! ## A187337.P14472589949932598068

`3*(n-(n^6)%7)`
-/

namespace A187337.P14472589949932598068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ((n ^ 6 % 7 : ℕ) : ℤ))

end

end A187337.P14472589949932598068

namespace A187337

/-- `3*(n-(n^6)%7)` -/
def P14472589949932598068.Spec : Prop :=
  ∀ n, P14472589949932598068.a n = A187337 n

end A187337

/-! ## A187337.P9871462652112988032

`3*(n-char[comp[7*n]])`
-/

namespace A187337.P9871462652112988032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A187337.P9871462652112988032

namespace A187337

/-- `3*(n-char[comp[7*n]])` -/
def P9871462652112988032.Spec : Prop :=
  ∀ n, P9871462652112988032.a n = A187337 n

end A187337

/-! ## A187337.P10855285894127851430

`3%gcd(7, n)+3*(n-1)`
-/

namespace A187337.P10855285894127851430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 % Nat.gcd 7 n : ℕ) : ℤ) + 3 * ((n : ℤ) - 1)

end

end A187337.P10855285894127851430

namespace A187337

/-- `3%gcd(7, n)+3*(n-1)` -/
def P10855285894127851430.Spec : Prop :=
  ∀ n, P10855285894127851430.a n = A187337 n

end A187337

/-! ## A187337.P17556953050011300358

`3*n-3*(n²%7)²%3`
-/

namespace A187337.P17556953050011300358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((3 * ((n ^ 2 % 7) ^ 2 % 3) : ℕ) : ℤ)

end

end A187337.P17556953050011300358

namespace A187337

/-- `3*n-3*(n²%7)²%3` -/
def P17556953050011300358.Spec : Prop :=
  ∀ n, P17556953050011300358.a n = A187337 n

end A187337

/-! ## A187337.P7136825450171440667

`ogf((3x^2+3x^3+3x^4+3x^5+3x^6+6x^7)/(1-x-x^7+x^8))`
-/

namespace A187337.P7136825450171440667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 3, 3, 3, 3, 6] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A187337.P7136825450171440667

namespace A187337

/-- `ogf((3x^2+3x^3+3x^4+3x^5+3x^6+6x^7)/(1-x-x^7+x^8))` -/
def P7136825450171440667.Spec : Prop :=
  ∀ n, P7136825450171440667.a n = A187337 n

end A187337

/-! ## A187337.P4932681271503995977

`abs(3*(n-A109720(n)))`
-/

namespace A187337.P4932681271503995977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * ((n : ℤ) - A109720 n)|

end

end A187337.P4932681271503995977

namespace A187337

/-- `abs(3*(n-A109720(n)))` -/
def P4932681271503995977.Spec : Prop :=
  ∀ n, P4932681271503995977.a n = A187337 n

end A187337

/-! ## A187337.P7558912046042391460

`A008585(char[7*n]+n-1)`
-/

namespace A187337.P7558912046042391460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat

end

end A187337.P7558912046042391460

namespace A187337

/-- `A008585(char[7*n]+n-1)` -/
def P7558912046042391460.Spec : Prop :=
  ∀ n, P7558912046042391460.a n = A187337 n

end A187337

/-! ## A187337.P12494187423387468958

`A004526(A008458(n-A109720(n)))`
-/

namespace A187337.P12494187423387468958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008458 ((n : ℤ) - A109720 n).toNat).toNat

end

end A187337.P12494187423387468958

namespace A187337

/-- `A004526(A008458(n-A109720(n)))` -/
def P12494187423387468958.Spec : Prop :=
  ∀ n, P12494187423387468958.a n = A187337 n

end A187337

/-!
# A187338: a(n) = 3*n + floor(sqrt(2)*n), complement of A187328.

The programs for A187338, the canonical program `A187338.P12873434980195538130` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187338 has offset 1).

The definition of A187338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187338.P12873434980195538130

`floor((3+2^(1/2))*(n+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187338

/-- `floor((3+2^(1/2))*(n+1))` -/
def P12873434980195538130.Spec : Prop :=
  ∀ n, P12873434980195538130.a n = A187338 (n + 1)

theorem P12873434980195538130.correct : P12873434980195538130.Spec := by
  intro n
  simp only [A187338, Nat.add_sub_cancel]

end A187338

/-! ## A187338.P16159363670127336075

`3*(n+1)+floor(sqrt(2)*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187338.P16159363670127336075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) + ⌊Real.sqrt (2 : ℝ) * (n + 1 : ℝ)⌋

end

end A187338.P16159363670127336075

namespace A187338

/-- `3*(n+1)+floor(sqrt(2)*(n+1))` -/
def P16159363670127336075.Spec : Prop :=
  ∀ n, P16159363670127336075.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P2197340347689705008

`∑[Δ[A001951(n)]+3]`
-/

namespace A187338.P2197340347689705008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187338.P2197340347689705008

namespace A187338

/-- `∑[Δ[A001951(n)]+3]` -/
def P2197340347689705008.Spec : Prop :=
  ∀ n, P2197340347689705008.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P12296798199027944419

`∑[A276864(n+1)+1]`
-/

namespace A187338.P12296798199027944419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187338.P12296798199027944419

namespace A187338

/-- `∑[A276864(n+1)+1]` -/
def P12296798199027944419.Spec : Prop :=
  ∀ n, P12296798199027944419.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P17295701176437957131

`∑[A188037(n+1)+4]`
-/

namespace A187338.P17295701176437957131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187338.P17295701176437957131

namespace A187338

/-- `∑[A188037(n+1)+4]` -/
def P17295701176437957131.Spec : Prop :=
  ∀ n, P17295701176437957131.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P1115100665267445306

`A330171(n+1)%A190337(n+1)`
-/

namespace A187338.P1115100665267445306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330171 (n + 1)) (A190337 (n + 1))

end

end A187338.P1115100665267445306

namespace A187338

/-- `A330171(n+1)%A190337(n+1)` -/
def P1115100665267445306.Spec : Prop :=
  ∀ n, P1115100665267445306.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P10785988358749593757

`A190330(2*(n+1))`
-/

namespace A187338.P10785988358749593757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190330 (2 * (n + 1))

end

end A187338.P10785988358749593757

namespace A187338

/-- `A190330(2*(n+1))` -/
def P10785988358749593757.Spec : Prop :=
  ∀ n, P10785988358749593757.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P6412628616530040697

`A286904(2*(n+1))`
-/

namespace A187338.P6412628616530040697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286904 (2 * (n + 1))

end

end A187338.P6412628616530040697

namespace A187338

/-- `A286904(2*(n+1))` -/
def P6412628616530040697.Spec : Prop :=
  ∀ n, P6412628616530040697.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P175671638301812759

`∩[A190330(n+1), A286904(n+1)]`
-/

namespace A187338.P175671638301812759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187338.P175671638301812759

namespace A187338

/-- `∩[A190330(n+1), A286904(n+1)]` -/
def P175671638301812759.Spec : Prop :=
  ∀ n, (P175671638301812759.a n : ℤ) = A187338 (n + 1)

end A187338

/-! ## A187338.P16431566647555491461

`A195128(A001952(n+1))`
-/

namespace A187338.P16431566647555491461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (A001952 (n + 1)).toNat

end

end A187338.P16431566647555491461

namespace A187338

/-- `A195128(A001952(n+1))` -/
def P16431566647555491461.Spec : Prop :=
  ∀ n, P16431566647555491461.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P3242641841387726709

`A286924(A286927(n+1)/2)`
-/

namespace A187338.P3242641841387726709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (SequenceMachineLib.roundAway ((A286927 (n + 1) : ℚ) / 2)).toNat

end

end A187338.P3242641841387726709

namespace A187338

/-- `A286924(A286927(n+1)/2)` -/
def P3242641841387726709.Spec : Prop :=
  ∀ n, P3242641841387726709.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P7140883023669709178

`A286924(A286923(n+1)-n)`
-/

namespace A187338.P7140883023669709178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (A286923 (n + 1) - (n : ℤ)).toNat

end

end A187338.P7140883023669709178

namespace A187338

/-- `A286924(A286923(n+1)-n)` -/
def P7140883023669709178.Spec : Prop :=
  ∀ n, P7140883023669709178.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P6197828991365919721

`∩[A286904(n+1), A286924(n+1)]`
-/

namespace A187338.P6197828991365919721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187338.P6197828991365919721

namespace A187338

/-- `∩[A286904(n+1), A286924(n+1)]` -/
def P6197828991365919721.Spec : Prop :=
  ∀ n, (P6197828991365919721.a n : ℤ) = A187338 (n + 1)

end A187338

/-! ## A187338.P3861061261096685665

`comp[A187328(n)]`
-/

namespace A187338.P3861061261096685665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187338.P3861061261096685665

namespace A187338

/-- `comp[A187328(n)]` -/
def P3861061261096685665.Spec : Prop :=
  ∀ n, (P3861061261096685665.a n : ℤ) = A187338 (n + 1)

end A187338

/-! ## A187338.P8220219209146608174

`A020725(A286923(n+1))`
-/

namespace A187338.P8220219209146608174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A286923 (n + 1)).toNat

end

end A187338.P8220219209146608174

namespace A187338

/-- `A020725(A286923(n+1))` -/
def P8220219209146608174.Spec : Prop :=
  ∀ n, P8220219209146608174.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P8008527663606454118

`filter[A286904(n+1), A286922(#)]`
-/

namespace A187338.P8008527663606454118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286922 (f1 j).toNat = 1) n)

end

end A187338.P8008527663606454118

namespace A187338

/-- `filter[A286904(n+1), A286922(#)]` -/
def P8008527663606454118.Spec : Prop :=
  ∀ n, P8008527663606454118.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P18258817431383436364

`A195180(A098021(n+1))`
-/

namespace A187338.P18258817431383436364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195180 (A098021 (n + 1)).toNat

end

end A187338.P18258817431383436364

namespace A187338

/-- `A195180(A098021(n+1))` -/
def P18258817431383436364.Spec : Prop :=
  ∀ n, P18258817431383436364.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P15706829270734789122

`A049472(A087057(A083051(n+1)+n))`
-/

namespace A187338.P15706829270734789122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A087057 (A083051 (n + 1) + (n : ℤ)).toNat).toNat

end

end A187338.P15706829270734789122

namespace A187338

/-- `A049472(A087057(A083051(n+1)+n))` -/
def P15706829270734789122.Spec : Prop :=
  ∀ n, P15706829270734789122.a n = A187338 (n + 1)

end A187338

/-! ## A187338.P5089656152009523404

`A026250(A026250(A001952(n+1)+n+1))`
-/

namespace A187338.P5089656152009523404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A026250 (A001952 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A187338.P5089656152009523404

namespace A187338

/-- `A026250(A026250(A001952(n+1)+n+1))` -/
def P5089656152009523404.Spec : Prop :=
  ∀ n, P5089656152009523404.a n = A187338 (n + 1)

end A187338

/-!
# A187339: a(n) = floor((7+sqrt(5))*n/4); complement of A187330.

The programs for A187339, the canonical program `A187339.P16153520351949723855` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187339 has offset 1).

The definition of A187339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((7+sqrt(5))*(n+1)/4)` (program `A187339.P16153520351949723855`, by `A187339.P16153520351949723855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187339.P16153520351949723855

`floor((7+sqrt(5))*(n+1)/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187339

/-- `floor((7+sqrt(5))*(n+1)/4)` -/
def P16153520351949723855.Spec : Prop :=
  ∀ n, P16153520351949723855.a n = A187339 (n + 1)

theorem P16153520351949723855.correct : P16153520351949723855.Spec := by
  intro n
  simp only [A187339, Nat.add_sub_cancel]

end A187339

/-! ## A187339.P1474044196425369125

`A188222(n+1)+1+n`
-/

namespace A187339.P1474044196425369125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1) + 1 + (n : ℤ)

end

end A187339.P1474044196425369125

namespace A187339

/-- `A188222(n+1)+1+n` -/
def P1474044196425369125.Spec : Prop :=
  ∀ n, P1474044196425369125.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P11630989261173870643

`A188188(n+2)+n`
-/

namespace A187339.P11630989261173870643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 2) + (n : ℤ)

end

end A187339.P11630989261173870643

namespace A187339

/-- `A188188(n+2)+n` -/
def P11630989261173870643.Spec : Prop :=
  ∀ n, P11630989261173870643.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P6605946251623337451

`A195173(A188222(n+1))`
-/

namespace A187339.P6605946251623337451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 (A188222 (n + 1)).toNat

end

end A187339.P6605946251623337451

namespace A187339

/-- `A195173(A188222(n+1))` -/
def P6605946251623337451.Spec : Prop :=
  ∀ n, P6605946251623337451.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P17200994048360954276

`comp[A187330(n)]`
-/

namespace A187339.P17200994048360954276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187330 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187339.P17200994048360954276

namespace A187339

/-- `comp[A187330(n)]` -/
def P17200994048360954276.Spec : Prop :=
  ∀ n, (P17200994048360954276.a n : ℤ) = A187339 (n + 1)

end A187339

/-! ## A187339.P673934232666105091

`ceil(A287675(2*(n+1))/2)`
-/

namespace A187339.P673934232666105091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287675 (2 * (n + 1)) : ℚ) / 2⌉

end

end A187339.P673934232666105091

namespace A187339

/-- `ceil(A287675(2*(n+1))/2)` -/
def P673934232666105091.Spec : Prop :=
  ∀ n, P673934232666105091.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P2604807569541907368

`A008619(A001950(n+1))+n`
-/

namespace A187339.P2604807569541907368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001950 (n + 1)).toNat + (n : ℤ)

end

end A187339.P2604807569541907368

namespace A187339

/-- `A008619(A001950(n+1))+n` -/
def P2604807569541907368.Spec : Prop :=
  ∀ n, P2604807569541907368.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P5761009292662383816

`A008619(A307295(2*n))+n`
-/

namespace A187339.P5761009292662383816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A307295 (2 * n)).toNat + (n : ℤ)

end

end A187339.P5761009292662383816

namespace A187339

/-- `A008619(A307295(2*n))+n` -/
def P5761009292662383816.Spec : Prop :=
  ∀ n, P5761009292662383816.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P17719658253557536763

`A008619(A187485(2*(n+1)))+n`
-/

namespace A187339.P17719658253557536763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A187485 (2 * (n + 1))).toNat + (n : ℤ)

end

end A187339.P17719658253557536763

namespace A187339

/-- `A008619(A187485(2*(n+1)))+n` -/
def P17719658253557536763.Spec : Prop :=
  ∀ n, P17719658253557536763.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P18177302886515779232

`A110654(A026352(n+1))+n`
-/

namespace A187339.P18177302886515779232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A026352 (n + 1)).toNat + (n : ℤ)

end

end A187339.P18177302886515779232

namespace A187339

/-- `A110654(A026352(n+1))+n` -/
def P18177302886515779232.Spec : Prop :=
  ∀ n, P18177302886515779232.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P1999826471101759799

`A008619(A287726(n+1))`
-/

namespace A187339.P1999826471101759799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A287726 (n + 1)).toNat

end

end A187339.P1999826471101759799

namespace A187339

/-- `A008619(A287726(n+1))` -/
def P1999826471101759799.Spec : Prop :=
  ∀ n, P1999826471101759799.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P2492960164025403534

`A008619(A286750(2*n+1)-1)`
-/

namespace A187339.P2492960164025403534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A286750 (2 * n + 1) - 1).toNat

end

end A187339.P2492960164025403534

namespace A187339

/-- `A008619(A286750(2*n+1)-1)` -/
def P2492960164025403534.Spec : Prop :=
  ∀ n, P2492960164025403534.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P1612933627577829928

`A004526(A276855(n+1))`
-/

namespace A187339.P1612933627577829928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A276855 (n + 1)).toNat

end

end A187339.P1612933627577829928

namespace A187339

/-- `A004526(A276855(n+1))` -/
def P1612933627577829928.Spec : Prop :=
  ∀ n, P1612933627577829928.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P266103220516019829

`A065033(A287726(n+1)+1)`
-/

namespace A187339.P266103220516019829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A287726 (n + 1) + 1).toNat

end

end A187339.P266103220516019829

namespace A187339

/-- `A065033(A287726(n+1)+1)` -/
def P266103220516019829.Spec : Prop :=
  ∀ n, P266103220516019829.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P12089768931234632718

`A004526(A287675(2*n+1))+1`
-/

namespace A187339.P12089768931234632718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A287675 (2 * n + 1)).toNat + 1

end

end A187339.P12089768931234632718

namespace A187339

/-- `A004526(A287675(2*n+1))+1` -/
def P12089768931234632718.Spec : Prop :=
  ∀ n, P12089768931234632718.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P16248103466163417566

`A110654(A287723(2*n+1)+1)`
-/

namespace A187339.P16248103466163417566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A287723 (2 * n + 1) + 1).toNat

end

end A187339.P16248103466163417566

namespace A187339

/-- `A110654(A287723(2*n+1)+1)` -/
def P16248103466163417566.Spec : Prop :=
  ∀ n, P16248103466163417566.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P14193280555817422454

`A008621(A001950(2*(n+1)))+n`
-/

namespace A187339.P14193280555817422454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A001950 (2 * (n + 1))).toNat + (n : ℤ)

end

end A187339.P14193280555817422454

namespace A187339

/-- `A008621(A001950(2*(n+1)))+n` -/
def P14193280555817422454.Spec : Prop :=
  ∀ n, P14193280555817422454.a n = A187339 (n + 1)

end A187339

/-! ## A187339.P13441045440829061718

`round(log2(A317188(2*n+1)))`
-/

namespace A187339.P13441045440829061718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A317188 (2 * n + 1) : ℝ))

end

end A187339.P13441045440829061718

namespace A187339

/-- `round(log2(A317188(2*n+1)))` -/
def P13441045440829061718.Spec : Prop :=
  ∀ n, P13441045440829061718.a n = A187339 (n + 1)

end A187339

/-!
# A187340: Hankel transform of A014301(n+1).

The programs for A187340, the canonical program `A187340.P17712514664383084894` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187340 has offset 0).

The definition of A187340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187340.P17712514664383084894

`ogf((1+4x^2-x^3)/(1-2x+3x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187340

/-- `ogf((1+4x^2-x^3)/(1-2x+3x^2-2x^3+x^4))` -/
def P17712514664383084894.Spec : Prop :=
  ∀ n, P17712514664383084894.a n = A187340 n

theorem P17712514664383084894.correct : P17712514664383084894.Spec := by
  intro n
  simp only [A187340]

end A187340

/-! ## A187340.P62661080610301210

`∑[(1-2*n)*A163810(n)]`
-/

namespace A187340.P62661080610301210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) * A163810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187340.P62661080610301210

namespace A187340

/-- `∑[(1-2*n)*A163810(n)]` -/
def P62661080610301210.Spec : Prop :=
  ∀ n, P62661080610301210.a n = A187340 n

end A187340

/-! ## A187340.P12274302296944132182

`A164611(n)-A110665(n)`
-/

namespace A187340.P12274302296944132182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164611 n - A110665 n

end

end A187340.P12274302296944132182

namespace A187340

/-- `A164611(n)-A110665(n)` -/
def P12274302296944132182.Spec : Prop :=
  ∀ n, P12274302296944132182.a n = A187340 n

end A187340

/-! ## A187340.P15982477637456932053

`∑[A163810(n)*A165747(n)]`
-/

namespace A187340.P15982477637456932053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n * A165747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187340.P15982477637456932053

namespace A187340

/-- `∑[A163810(n)*A165747(n)]` -/
def P15982477637456932053.Spec : Prop :=
  ∀ n, P15982477637456932053.a n = A187340 n

end A187340

/-! ## A187340.P18126955214043146557

`A057079(n)-n*A109265(n)`
-/

namespace A187340.P18126955214043146557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n - (n : ℤ) * A109265 n

end

end A187340.P18126955214043146557

namespace A187340

/-- `A057079(n)-n*A109265(n)` -/
def P18126955214043146557.Spec : Prop :=
  ∀ n, P18126955214043146557.a n = A187340 n

end A187340

/-! ## A187340.P8778584326379197188

`A164611(n)-n*A010892(n)`
-/

namespace A187340.P8778584326379197188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164611 n - (n : ℤ) * A010892 n

end

end A187340.P8778584326379197188

namespace A187340

/-- `A164611(n)-n*A010892(n)` -/
def P8778584326379197188.Spec : Prop :=
  ∀ n, P8778584326379197188.a n = A187340 n

end A187340

/-! ## A187340.P2314765252677413025

`A165202(n)-n*A087204(n)`
-/

namespace A187340.P2314765252677413025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n - (n : ℤ) * A087204 n

end

end A187340.P2314765252677413025

namespace A187340

/-- `A165202(n)-n*A087204(n)` -/
def P2314765252677413025.Spec : Prop :=
  ∀ n, P2314765252677413025.a n = A187340 n

end A187340

/-! ## A187340.P13928641271885065252

`A165202(n)-n*A100051(n)`
-/

namespace A187340.P13928641271885065252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n - (n : ℤ) * A100051 n

end

end A187340.P13928641271885065252

namespace A187340

/-- `A165202(n)-n*A100051(n)` -/
def P13928641271885065252.Spec : Prop :=
  ∀ n, P13928641271885065252.a n = A187340 n

end A187340

/-! ## A187340.P2919128938942511264

`∑[A163810(n)+2*A100050(n)]`
-/

namespace A187340.P2919128938942511264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n + 2 * A100050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187340.P2919128938942511264

namespace A187340

/-- `∑[A163810(n)+2*A100050(n)]` -/
def P2919128938942511264.Spec : Prop :=
  ∀ n, P2919128938942511264.a n = A187340 n

end A187340

/-! ## A187340.P15244415909686359665

`∑[A128213(n)]-Δ[A128213(n)]`
-/

namespace A187340.P15244415909686359665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A187340.P15244415909686359665

namespace A187340

/-- `∑[A128213(n)]-Δ[A128213(n)]` -/
def P15244415909686359665.Spec : Prop :=
  ∀ n, P15244415909686359665.a n = A187340 n

end A187340

/-! ## A187340.P15016168722812699601

`A119910(n+2)-2*A110665(n+1)`
-/

namespace A187340.P15016168722812699601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119910 (n + 2) - 2 * A110665 (n + 1)

end

end A187340.P15016168722812699601

namespace A187340

/-- `A119910(n+2)-2*A110665(n+1)` -/
def P15016168722812699601.Spec : Prop :=
  ∀ n, P15016168722812699601.a n = A187340 n

end A187340

/-! ## A187340.P2292518316115391448

`A057079(n)-A010892(n+1)*A047231(n+1)`
-/

namespace A187340.P2292518316115391448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n - A010892 (n + 1) * A047231 (n + 1)

end

end A187340.P2292518316115391448

namespace A187340

/-- `A057079(n)-A010892(n+1)*A047231(n+1)` -/
def P2292518316115391448.Spec : Prop :=
  ∀ n, P2292518316115391448.a n = A187340 n

end A187340

/-!
# A187341: Floor((5-sqrt(5))n); complement of A187342.

The programs for A187341, the canonical program `A187341.P13799403847151847791` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187341 has offset 1).

The definition of A187341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((5-sqrt(5))*(n+1))` (program `A187341.P13799403847151847791`, by `A187341.P13799403847151847791.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187341.P13799403847151847791

`floor((5-sqrt(5))*(n+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187341

/-- `floor((5-sqrt(5))*(n+1))` -/
def P13799403847151847791.Spec : Prop :=
  ∀ n, P13799403847151847791.a n = A187341 (n + 1)

theorem P13799403847151847791.correct : P13799403847151847791.Spec := by
  intro n
  simp only [A187341, Nat.add_sub_cancel]

end A187341

/-! ## A187341.P10073367425912380663

`∑[or(2, Δ[ceil(2*n/ϕ)])]`
-/

namespace A187341.P10073367425912380663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℝ) / Real.goldenRatio)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187341.P10073367425912380663

namespace A187341

/-- `∑[or(2, Δ[ceil(2*n/ϕ)])]` -/
def P10073367425912380663.Spec : Prop :=
  ∀ n, P10073367425912380663.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P664944203473863178

`a(n-1)-Δ[floor(2*ϕ*n)]+6` with `a(0)=2`
-/

namespace A187341.P664944203473863178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n) + 6

end

end A187341.P664944203473863178

namespace A187341

/-- `a(n-1)-Δ[floor(2*ϕ*n)]+6` -/
def P664944203473863178.Spec : Prop :=
  ∀ n, P664944203473863178.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P18313065574773033440

`A195173(n+1)+n`
-/

namespace A187341.P18313065574773033440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 (n + 1) + (n : ℤ)

end

end A187341.P18313065574773033440

namespace A187341

/-- `A195173(n+1)+n` -/
def P18313065574773033440.Spec : Prop :=
  ∀ n, P18313065574773033440.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P12857731830241551894

`∑[Δ[A187330(n)]+1]`
-/

namespace A187341.P12857731830241551894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187341.P12857731830241551894

namespace A187341

/-- `∑[Δ[A187330(n)]+1]` -/
def P12857731830241551894.Spec : Prop :=
  ∀ n, P12857731830241551894.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P1220781004250468132

`A187330(n+1)+1+n`
-/

namespace A187341.P1220781004250468132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187330 (n + 1) + 1 + (n : ℤ)

end

end A187341.P1220781004250468132

namespace A187341

/-- `A187330(n+1)+1+n` -/
def P1220781004250468132.Spec : Prop :=
  ∀ n, P1220781004250468132.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P12280281144237009041

`A195172(n+1)+Δ[n²]`
-/

namespace A187341.P12280281144237009041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A187341.P12280281144237009041

namespace A187341

/-- `A195172(n+1)+Δ[n²]` -/
def P12280281144237009041.Spec : Prop :=
  ∀ n, P12280281144237009041.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P15748676042025751334

`A190505(n+1)-Δ[n²]`
-/

namespace A187341.P15748676042025751334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190505 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A187341.P15748676042025751334

namespace A187341

/-- `A190505(n+1)-Δ[n²]` -/
def P15748676042025751334.Spec : Prop :=
  ∀ n, P15748676042025751334.a n = A187341 (n + 1)

theorem P15748676042025751334.correct : P15748676042025751334.Spec := by
  intro n
  simp only [A187341, Nat.add_sub_cancel, A187341.P15748676042025751334.f1, A187341.P15748676042025751334.a, A187341.P13799403847151847791.a, A190505, A190505.P8242071480314916679.f1, A190505.P8242071480314916679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A187341

/-! ## A187341.P1025492815655524627

`∑[2-A188187(n+1)]+n`
-/

namespace A187341.P1025492815655524627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A188187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187341.P1025492815655524627

namespace A187341

/-- `∑[2-A188187(n+1)]+n` -/
def P1025492815655524627.Spec : Prop :=
  ∀ n, P1025492815655524627.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P16551160611026975562

`∑[A000005(Δ[ceil(n*ϕ^3)])]`
-/

namespace A187341.P16551160611026975562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187341.P16551160611026975562

namespace A187341

/-- `∑[A000005(Δ[ceil(n*ϕ^3)])]` -/
def P16551160611026975562.Spec : Prop :=
  ∀ n, P16551160611026975562.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P8459238023197985100

`8*n+7-A001962(n+1)`
-/

namespace A187341.P8459238023197985100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) - A001962 (n + 1)

end

end A187341.P8459238023197985100

namespace A187341

/-- `8*n+7-A001962(n+1)` -/
def P8459238023197985100.Spec : Prop :=
  ∀ n, P8459238023197985100.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P8031788388829165266

`∑[A006530(Δ[floor(2*ϕ*n)])]-1`
-/

namespace A187341.P8031788388829165266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A187341.P8031788388829165266

namespace A187341

/-- `∑[A006530(Δ[floor(2*ϕ*n)])]-1` -/
def P8031788388829165266.Spec : Prop :=
  ∀ n, P8031788388829165266.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P13726034130565003233

`3*n-A005206(2*n+1)+3+n`
-/

namespace A187341.P13726034130565003233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A005206 (2 * n + 1) + 3 + (n : ℤ)

end

end A187341.P13726034130565003233

namespace A187341

/-- `3*n-A005206(2*n+1)+3+n` -/
def P13726034130565003233.Spec : Prop :=
  ∀ n, P13726034130565003233.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P10310527120572799332

`∑[A187332(Δ[A187330(n)])]`
-/

namespace A187341.P10310527120572799332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187341.P10310527120572799332

namespace A187341

/-- `∑[A187332(Δ[A187330(n)])]` -/
def P10310527120572799332.Spec : Prop :=
  ∀ n, P10310527120572799332.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P5775520792254311716

`∑[A187335(Δ[A187330(n)])]`
-/

namespace A187341.P5775520792254311716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187335 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187341.P5775520792254311716

namespace A187341

/-- `∑[A187335(Δ[A187330(n)])]` -/
def P5775520792254311716.Spec : Prop :=
  ∀ n, P5775520792254311716.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P683431904035435073

`A004767(n)-A001961(n+1)`
-/

namespace A187341.P683431904035435073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A001961 (n + 1)

end

end A187341.P683431904035435073

namespace A187341

/-- `A004767(n)-A001961(n+1)` -/
def P683431904035435073.Spec : Prop :=
  ∀ n, P683431904035435073.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P17149110528595989123

`A016897(n)-A022839(n+1)`
-/

namespace A187341.P17149110528595989123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A022839 (n + 1)

end

end A187341.P17149110528595989123

namespace A187341

/-- `A016897(n)-A022839(n+1)` -/
def P17149110528595989123.Spec : Prop :=
  ∀ n, P17149110528595989123.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P5270778990773788786

`A016885(n)-A190511(n+1)`
-/

namespace A187341.P5270778990773788786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A190511 (n + 1)

end

end A187341.P5270778990773788786

namespace A187341

/-- `A016885(n)-A190511(n+1)` -/
def P5270778990773788786.Spec : Prop :=
  ∀ n, P5270778990773788786.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P8007890916011171349

`A004771(n)%A001962(n+1)`
-/

namespace A187341.P8007890916011171349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004771 n) (A001962 (n + 1))

end

end A187341.P8007890916011171349

namespace A187341

/-- `A004771(n)%A001962(n+1)` -/
def P8007890916011171349.Spec : Prop :=
  ∀ n, P8007890916011171349.a n = A187341 (n + 1)

end A187341

/-! ## A187341.P9525450818048786410

`A286751(n+1)+A078796(n+1)`
-/

namespace A187341.P9525450818048786410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286751 (n + 1) + A078796 (n + 1)

end

end A187341.P9525450818048786410

namespace A187341

/-- `A286751(n+1)+A078796(n+1)` -/
def P9525450818048786410.Spec : Prop :=
  ∀ n, P9525450818048786410.a n = A187341 (n + 1)

end A187341

/-!
# A187342: Floor(((15+sqrt(5))/11)n); complement of A187341.

The programs for A187342, the canonical program `A187342.P14106814842450147403` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187342 has offset 1).

The definition of A187342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((15+sqrt(5))/11*(n+1))` (program `A187342.P14106814842450147403`, by `A187342.P14106814842450147403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187342.P14106814842450147403

`floor((15+sqrt(5))/11*(n+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187342

/-- `floor((15+sqrt(5))/11*(n+1))` -/
def P14106814842450147403.Spec : Prop :=
  ∀ n, P14106814842450147403.a n = A187342 (n + 1)

theorem P14106814842450147403.correct : P14106814842450147403.Spec := by
  intro n
  simp only [A187342, Nat.add_sub_cancel]

end A187342

/-! ## A187342.P18140848194843230675

`∑[A001468(comp[A003623(2*n+1)])]`
-/

namespace A187342.P18140848194843230675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187342.P18140848194843230675

namespace A187342

/-- `∑[A001468(comp[A003623(2*n+1)])]` -/
def P18140848194843230675.Spec : Prop :=
  ∀ n, P18140848194843230675.a n = A187342 (n + 1)

end A187342

/-! ## A187342.P17831694726536345971

`A123108(comp[A004976(2*n)])+n+1`
-/

namespace A187342.P17831694726536345971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (n + 1 : ℤ)

end

end A187342.P17831694726536345971

namespace A187342

/-- `A123108(comp[A004976(2*n)])+n+1` -/
def P17831694726536345971.Spec : Prop :=
  ∀ n, P17831694726536345971.a n = A187342 (n + 1)

end A187342

/-! ## A187342.P5391061895054607793

`record[A047487(n+1)-A188435(n+1)]`
-/

namespace A187342.P5391061895054607793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1) - A188435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187342.P5391061895054607793

namespace A187342

/-- `record[A047487(n+1)-A188435(n+1)]` -/
def P5391061895054607793.Spec : Prop :=
  ∀ n, P5391061895054607793.a n = A187342 (n + 1)

end A187342

/-! ## A187342.P9509259267919242747

`record[A109613(n+1)%A004956(A002264(n)+1)]`
-/

namespace A187342.P9509259267919242747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109613 (n + 1)) (A004956 (A002264 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187342.P9509259267919242747

namespace A187342

/-- `record[A109613(n+1)%A004956(A002264(n)+1)]` -/
def P9509259267919242747.Spec : Prop :=
  ∀ n, P9509259267919242747.a n = A187342 (n + 1)

end A187342

/-! ## A187342.P17915430084969030928

`round(log(A002320(n+1)))`
-/

namespace A187342.P17915430084969030928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A002320 (n + 1) : ℝ))

end

end A187342.P17915430084969030928

namespace A187342

/-- `round(log(A002320(n+1)))` -/
def P17915430084969030928.Spec : Prop :=
  ∀ n, P17915430084969030928.a n = A187342 (n + 1)

end A187342

/-! ## A187342.P4721407924195145790

`A016825(n)-A303590(n+1)`
-/

namespace A187342.P4721407924195145790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A303590 (n + 1)

end

end A187342.P4721407924195145790

namespace A187342

/-- `A016825(n)-A303590(n+1)` -/
def P4721407924195145790.Spec : Prop :=
  ∀ n, P4721407924195145790.a n = A187342 (n + 1)

end A187342

/-!
# A187343: Rank transform of the sequence floor(6n/5); complement of A187344.

The programs for A187343, there is no canonical definition to state claims against.
-/

/-! ## A187343.P16200727878041798768

`comp[A187344(n+1)-1]+1`
-/

namespace A187343.P16200727878041798768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187344 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187343.P16200727878041798768

/-! ## A187343.P15123504321234480704

`eq[char[A187344(n+1)], A151933(n)]`
-/

namespace A187343.P15123504321234480704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187344 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187343.P15123504321234480704

/-! ## A187343.P11172918827453724623

`∑[A374515(A263009(2*(n+1)))]`
-/

namespace A187343.P11172918827453724623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A263009 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187343.P11172918827453724623

/-! ## A187343.P2597730356980343772

`A083120(n+1)+A008966(A000294(n))`
-/

namespace A187343.P2597730356980343772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 1) + A008966 (A000294 n).toNat

end

end A187343.P2597730356980343772

/-! ## A187343.P16414059866479347043

`A342740(n+1)+A098852(A140069(n+1))`
-/

namespace A187343.P16414059866479347043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342740 (n + 1) + A098852 (A140069 (n + 1)).toNat

end

end A187343.P16414059866479347043

/-!
# A187344: Complement of A187343.

The programs for A187344, there is no canonical definition to state claims against.
-/

/-! ## A187344.P12019330793095313086

`eq[char[A187343(n+1)], A151933(n)]`
-/

namespace A187344.P12019330793095313086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187343 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187344.P12019330793095313086

/-! ## A187344.P5819829445277492668

`A111660(A331569(n)+A016897(n))`
-/

namespace A187344.P5819829445277492668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A331569 n + A016897 n).toNat

end

end A187344.P5819829445277492668

/-! ## A187344.P9940719828315866661

`A188376(n+1)+A187948(A011782(n))`
-/

namespace A187344.P9940719828315866661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) + A187948 (A011782 n).toNat

end

end A187344.P9940719828315866661

/-! ## A187344.P17445084983865681542

`A047263(2*n+1)+A003589(A038476(n+1))`
-/

namespace A187344.P17445084983865681542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (2 * n + 1) + A003589 (A038476 (n + 1)).toNat

end

end A187344.P17445084983865681542

/-!
# A187345: Rank transform of the sequence floor(7n/5); complement of A187346.

The programs for A187345, there is no canonical definition to state claims against.
-/

/-! ## A187345.P16719565110316336415

`comp[A187346(n+1)-1]+1`
-/

namespace A187345.P16719565110316336415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187346 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187345.P16719565110316336415

/-! ## A187345.P1544408421157037435

`eq[char[A187346(n+1)], A000007(n)]`
-/

namespace A187345.P1544408421157037435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187346 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187345.P1544408421157037435

/-! ## A187345.P4202505328418785533

`eq[char[A187346(n+1)], A000038(n)]`
-/

namespace A187345.P4202505328418785533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187346 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187345.P4202505328418785533

/-! ## A187345.P3954258342124847340

`eq[char[A187346(n+1)], A151933(n)]`
-/

namespace A187345.P3954258342124847340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187346 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187345.P3954258342124847340

/-! ## A187345.P10036687234564970448

`A179185(n+1)+A014183(A001248(n+1))`
-/

namespace A187345.P10036687234564970448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179185 (n + 1) + A014183 (A001248 (n + 1)).toNat

end

end A187345.P10036687234564970448

/-!
# A187346: Complement of A187345.

The programs for A187346, there is no canonical definition to state claims against.
-/

/-! ## A187346.P13590252910888065942

`eq[char[A187345(n+1)], A000007(n)]`
-/

namespace A187346.P13590252910888065942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187346.P13590252910888065942

/-! ## A187346.P2402982933837142133

`eq[char[A187345(n+1)], A000038(n)]`
-/

namespace A187346.P2402982933837142133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187346.P2402982933837142133

/-! ## A187346.P11338475404488857709

`eq[char[A187345(n+1)], A151933(n)]`
-/

namespace A187346.P11338475404488857709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187346.P11338475404488857709

/-! ## A187346.P7880911762549807595

`xor(A124762(A190172(n)), A184414(n+1))`
-/

namespace A187346.P7880911762549807595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124762 (A190172 n).toNat) (A184414 (n + 1))

end

end A187346.P7880911762549807595

/-! ## A187346.P2878273197681349899

`A184414(n+1)-A305821(A378173(2*n+3))`
-/

namespace A187346.P2878273197681349899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1) - A305821 (A378173 (2 * n + 3)).toNat

end

end A187346.P2878273197681349899

/-!
# A187347: Rank transform of the sequence floor(8n/5); complement of A187348.

The programs for A187347, there is no canonical definition to state claims against.
-/

/-! ## A187347.P3209167261171627062

`comp[A187348(n+1)-1]+1`
-/

namespace A187347.P3209167261171627062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187348 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187347.P3209167261171627062

/-! ## A187347.P660497251310403626

`eq[char[A187348(n+1)], A151933(n)]`
-/

namespace A187347.P660497251310403626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187348 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187347.P660497251310403626

/-! ## A187347.P11489009068543682860

`eq[char[A187348(n+1)], A151622(n)]`
-/

namespace A187347.P11489009068543682860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187348 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187347.P11489009068543682860

/-!
# A187348: Complement of A187347.

The programs for A187348, there is no canonical definition to state claims against.
-/

/-! ## A187348.P7335598482965562675

`eq[char[A187347(n+1)], A000007(n)]`
-/

namespace A187348.P7335598482965562675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187348.P7335598482965562675

/-! ## A187348.P5113995126382687863

`eq[char[A187347(n+1)], A000038(n)]`
-/

namespace A187348.P5113995126382687863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187348.P5113995126382687863

/-! ## A187348.P5050912819798262545

`eq[char[A187347(n+1)], A151933(n)]`
-/

namespace A187348.P5050912819798262545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187348.P5050912819798262545

/-! ## A187348.P9939919150024378471

`eq[char[A187347(n+1)], A151622(n)]`
-/

namespace A187348.P9939919150024378471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187348.P9939919150024378471

/-! ## A187348.P14794092659491202306

`A156253(A194146(n+1)%A000217(A157040(n+1)))`
-/

namespace A187348.P14794092659491202306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (Int.tmod (A194146 (n + 1)) (A000217 (A157040 (n + 1)).toNat)).toNat

end

end A187348.P14794092659491202306

/-!
# A187349: Rank transform of the sequence floor(9n/5); complement of A187348.

The programs for A187349, there is no canonical definition to state claims against.
-/

/-! ## A187349.P1583935746274184102

`comp[A187350(n+1)-1]+1`
-/

namespace A187349.P1583935746274184102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187350 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187349.P1583935746274184102

/-! ## A187349.P9090934529902886714

`eq[char[A187350(n+1)], A000007(n)]`
-/

namespace A187349.P9090934529902886714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187350 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187349.P9090934529902886714

/-! ## A187349.P6281393320271392383

`eq[char[A187350(n+1)], A000038(n)]`
-/

namespace A187349.P6281393320271392383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187350 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187349.P6281393320271392383

/-! ## A187349.P14764551883329101546

`eq[char[A187350(n+1)], A151933(n)]`
-/

namespace A187349.P14764551883329101546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187350 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187349.P14764551883329101546

/-! ## A187349.P10089474307556393876

`A010054(A254119(n+1))+A004523(3*n+1)`
-/

namespace A187349.P10089474307556393876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A254119 (n + 1)).toNat + A004523 (3 * n + 1)

end

end A187349.P10089474307556393876

/-!
# A187350: Complement of A187349.

The programs for A187350, there is no canonical definition to state claims against.
-/

/-! ## A187350.P6148415114190604535

`eq[char[A187349(n+1)], A000038(n)]`
-/

namespace A187350.P6148415114190604535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187349 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187350.P6148415114190604535

/-! ## A187350.P6911600562419039631

`eq[char[A187349(n+1)], A151933(n)]`
-/

namespace A187350.P6911600562419039631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187349 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187350.P6911600562419039631

/-! ## A187350.P15496543260642177373

`A157685(A287380(n+2)-2)+n+1`
-/

namespace A187350.P15496543260642177373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A287380 (n + 2) - 2).toNat + (n + 1 : ℤ)

end

end A187350.P15496543260642177373

/-! ## A187350.P20654228209623522

`A204164(A001318(7*n+4))-n`
-/

namespace A187350.P20654228209623522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A001318 (7 * n + 4)).toNat - (n : ℤ)

end

end A187350.P20654228209623522

/-! ## A187350.P11117770972223658076

`A000027(2*n+3)-A242718(3*n+4)`
-/

namespace A187350.P11117770972223658076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 3) - A242718 (3 * n + 4)

end

end A187350.P11117770972223658076

/-!
# A187351: Rank transform of the sequence floor(n/sqrt(2)); complement of A187352.

The programs for A187351, there is no canonical definition to state claims against.
-/

/-! ## A187351.P9003845197448253139

`comp[A187352(n+1)-1]+1`
-/

namespace A187351.P9003845197448253139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187352 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187351.P9003845197448253139

/-! ## A187351.P5226247461551543906

`comp[∪[A187352(n+1), A187383(n+3)]]`
-/

namespace A187351.P5226247461551543906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187352 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187383 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187351.P5226247461551543906

/-! ## A187351.P12041378022472072236

`A049472(A187352(n+1)-(n+1))`
-/

namespace A187351.P12041378022472072236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A187352 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187351.P12041378022472072236

/-! ## A187351.P6361194528886325850

`A049474(A187352(n+1)-n)-2`
-/

namespace A187351.P6361194528886325850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A187352 (n + 1) - (n : ℤ)).toNat - 2

end

end A187351.P6361194528886325850

/-! ## A187351.P4812380852263950635

`A097508(A187352(n+1)+A111660(n))`
-/

namespace A187351.P4812380852263950635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A187352 (n + 1) + A111660 n).toNat

end

end A187351.P4812380852263950635

/-!
# A187352: Complement of A187351.

The programs for A187352, there is no canonical definition to state claims against.
-/

/-! ## A187352.P10733278747930228619

`eq[char[A187351(n+1)], A151933(n)]`
-/

namespace A187352.P10733278747930228619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187351 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187352.P10733278747930228619

/-! ## A187352.P6111640598459269000

`eq[char[A187351(n+1)], A151622(n)]`
-/

namespace A187352.P6111640598459269000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187351 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187352.P6111640598459269000

/-! ## A187352.P628859151715074246

`A174670(3*n+5)-A281007(A261070(n+4))`
-/

namespace A187352.P628859151715074246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174670 (3 * n + 5) - A281007 (A261070 (n + 4)).toNat

end

end A187352.P628859151715074246

/-! ## A187352.P16846840326449073152

`A161579(2*n+3)+A010060(A270929(2*n+5))`
-/

namespace A187352.P16846840326449073152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161579 (2 * n + 3) + A010060 (A270929 (2 * n + 5)).toNat

end

end A187352.P16846840326449073152

/-! ## A187352.P15368639056095672476

`A266282(A208453(n))+3*(n+1)`
-/

namespace A187352.P15368639056095672476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266282 (A208453 n).toNat + (3 * (n + 1) : ℤ)

end

end A187352.P15368639056095672476

/-!
# A187354: Number of (n+2)X3 0..3 arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187354, there is no canonical definition to state claims against.
-/

/-! ## A187354.P1235862642693780130

`A187356(∑[n]+1)`
-/

namespace A187354.P1235862642693780130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187356 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187354.P1235862642693780130

/-! ## A187354.P8950670728585935341

`record[A187356(A262884(n))]`
-/

namespace A187354.P8950670728585935341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187356 (A262884 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187354.P8950670728585935341

/-!
# A187355: Number of (n+2)X4 0..3 arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187355, there is no canonical definition to state claims against.
-/

/-! ## A187355.P6520201129217911973

`A187356(∑[n+1]+2)`
-/

namespace A187355.P6520201129217911973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187356 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187355.P6520201129217911973

/-!
# A187357: Catalan trisection: A000108(3*n), n >= 0.

The programs for A187357, the canonical program `A187357.P2278032874893619399` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187357 has offset 0).

The definition of A187357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(3*n)` (program `A187357.P2278032874893619399`, by `A187357.P2278032874893619399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187357.P2278032874893619399

`A000108(3*n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187357

/-- `A000108(3*n)` -/
def P2278032874893619399.Spec : Prop :=
  ∀ n, P2278032874893619399.a n = A187357 n

theorem P2278032874893619399.correct : P2278032874893619399.Spec := by
  intro n
  simp only [A187357]

end A187357

/-! ## A187357.P16439292891033596726

`A028303(6*n)`
-/

namespace A187357.P16439292891033596726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (6 * n)

end

end A187357.P16439292891033596726

namespace A187357

/-- `A028303(6*n)` -/
def P16439292891033596726.Spec : Prop :=
  ∀ n, P16439292891033596726.a n = A187357 n

end A187357

/-! ## A187357.P4329322087479064939

`A028304(6*n)`
-/

namespace A187357.P4329322087479064939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (6 * n)

end

end A187357.P4329322087479064939

namespace A187357

/-- `A028304(6*n)` -/
def P4329322087479064939.Spec : Prop :=
  ∀ n, P4329322087479064939.a n = A187357 n

end A187357

/-! ## A187357.P12937075147423602896

`A126120(6*n)`
-/

namespace A187357.P12937075147423602896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (6 * n)

end

end A187357.P12937075147423602896

namespace A187357

/-- `A126120(6*n)` -/
def P12937075147423602896.Spec : Prop :=
  ∀ n, P12937075147423602896.a n = A187357 n

end A187357

/-! ## A187357.P1373345311428545086

`A126324(6*n)`
-/

namespace A187357.P1373345311428545086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (6 * n)

end

end A187357.P1373345311428545086

namespace A187357

/-- `A126324(6*n)` -/
def P1373345311428545086.Spec : Prop :=
  ∀ n, P1373345311428545086.a n = A187357 n

end A187357

/-! ## A187357.P18321182257246712179

`A208355(6*n)`
-/

namespace A187357.P18321182257246712179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (6 * n)

end

end A187357.P18321182257246712179

namespace A187357

/-- `A208355(6*n)` -/
def P18321182257246712179.Spec : Prop :=
  ∀ n, P18321182257246712179.a n = A187357 n

end A187357

/-! ## A187357.P737339163537586159

`A329687(9*n)`
-/

namespace A187357.P737339163537586159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (9 * n)

end

end A187357.P737339163537586159

namespace A187357

/-- `A329687(9*n)` -/
def P737339163537586159.Spec : Prop :=
  ∀ n, P737339163537586159.a n = A187357 n

end A187357

/-! ## A187357.P16582889069432544981

`A089848(3*n+1)`
-/

namespace A187357.P16582889069432544981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089848 (3 * n + 1)

end

end A187357.P16582889069432544981

namespace A187357

/-- `A089848(3*n+1)` -/
def P16582889069432544981.Spec : Prop :=
  ∀ n, P16582889069432544981.a n = A187357 n

end A187357

/-! ## A187357.P457798918421377672

`A120588(3*n+1)`
-/

namespace A187357.P457798918421377672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (3 * n + 1)

end

end A187357.P457798918421377672

namespace A187357

/-- `A120588(3*n+1)` -/
def P457798918421377672.Spec : Prop :=
  ∀ n, P457798918421377672.a n = A187357 n

end A187357

/-! ## A187357.P4267171564799269500

`A120304(3*n)+2`
-/

namespace A187357.P4267171564799269500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (3 * n) + 2

end

end A187357.P4267171564799269500

namespace A187357

/-- `A120304(3*n)+2` -/
def P4267171564799269500.Spec : Prop :=
  ∀ n, P4267171564799269500.a n = A187357 n

theorem P4267171564799269500.correct : P4267171564799269500.Spec := by
  intro n
  simp only [A187357, Nat.add_sub_cancel, A187357.P4267171564799269500.a, A187357.P2278032874893619399.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187357

/-!
# A187358: Catalan trisection: A000108(3*n+1), n>=0.

The programs for A187358, the canonical program `A187358.P4431220509580705304` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187358 has offset 0).

The definition of A187358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(3*n+1)` (program `A187358.P4431220509580705304`, by `A187358.P4431220509580705304.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187358.P4431220509580705304

`A000108(3*n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187358

/-- `A000108(3*n+1)` -/
def P4431220509580705304.Spec : Prop :=
  ∀ n, P4431220509580705304.a n = A187358 n

theorem P4431220509580705304.correct : P4431220509580705304.Spec := by
  intro n
  simp only [A187358]

end A187358

/-! ## A187358.P86507931917728544

`A026008(6*n)`
-/

namespace A187358.P86507931917728544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (6 * n)

end

end A187358.P86507931917728544

namespace A187358

/-- `A026008(6*n)` -/
def P86507931917728544.Spec : Prop :=
  ∀ n, P86507931917728544.a n = A187358 n

end A187358

/-! ## A187358.P18190227473162794701

`record[A097331(3*n)]`
-/

namespace A187358.P18190227473162794701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187358.P18190227473162794701

namespace A187358

/-- `record[A097331(3*n)]` -/
def P18190227473162794701.Spec : Prop :=
  ∀ n, P18190227473162794701.a n = A187358 n

end A187358

/-! ## A187358.P17824992543365079891

`A120588(3*n+2)`
-/

namespace A187358.P17824992543365079891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (3 * n + 2)

end

end A187358.P17824992543365079891

namespace A187358

/-- `A120588(3*n+2)` -/
def P17824992543365079891.Spec : Prop :=
  ∀ n, P17824992543365079891.a n = A187358 n

end A187358

/-! ## A187358.P12479338424324705283

`A063786(6*n+2)`
-/

namespace A187358.P12479338424324705283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063786 (6 * n + 2)

end

end A187358.P12479338424324705283

namespace A187358

/-- `A063786(6*n+2)` -/
def P12479338424324705283.Spec : Prop :=
  ∀ n, P12479338424324705283.a n = A187358 n

end A187358

/-! ## A187358.P2717502632807756973

`A089408(6*n+3)`
-/

namespace A187358.P2717502632807756973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (6 * n + 3)

end

end A187358.P2717502632807756973

namespace A187358

/-- `A089408(6*n+3)` -/
def P2717502632807756973.Spec : Prop :=
  ∀ n, P2717502632807756973.a n = A187358 n

end A187358

/-! ## A187358.P13469204472425225554

`A097331(6*n+3)`
-/

namespace A187358.P13469204472425225554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (6 * n + 3)

end

end A187358.P13469204472425225554

namespace A187358

/-- `A097331(6*n+3)` -/
def P13469204472425225554.Spec : Prop :=
  ∀ n, P13469204472425225554.a n = A187358 n

end A187358

/-! ## A187358.P6282127735906695223

`A094876(Δ[(3*n)²])`
-/

namespace A187358.P6282127735906695223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094876 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A187358.P6282127735906695223

namespace A187358

/-- `A094876(Δ[(3*n)²])` -/
def P6282127735906695223.Spec : Prop :=
  ∀ n, P6282127735906695223.a n = A187358 n

end A187358

/-! ## A187358.P2256778943121161674

`record[A000108(∑{digits}[n, #]+Δ[n²])]`
-/

namespace A187358.P2256778943121161674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187358.P2256778943121161674

namespace A187358

/-- `record[A000108(∑{digits}[n, #]+Δ[n²])]` -/
def P2256778943121161674.Spec : Prop :=
  ∀ n, P2256778943121161674.a n = A187358 n

end A187358

/-! ## A187358.P3849751070055993913

`lcm(n+1, A000108(n+1+n+n))`
-/

namespace A187358.P3849751070055993913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000108 (n + 1 + n + n))

end

end A187358.P3849751070055993913

namespace A187358

/-- `lcm(n+1, A000108(n+1+n+n))` -/
def P3849751070055993913.Spec : Prop :=
  ∀ n, (P3849751070055993913.a n : ℤ) = A187358 n

end A187358

/-!
# A187359: Catalan trisection: A000108(3*n + 2)/2, n>=0.

The programs for A187359, the canonical program `A187359.P1936867484030985609` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187359 has offset 0).

The definition of A187359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187359.P1936867484030985609

`A000108(3*n+2)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187359

/-- `A000108(3*n+2)/2` -/
def P1936867484030985609.Spec : Prop :=
  ∀ n, P1936867484030985609.a n = (A187359 n : ℚ)

end A187359

/-! ## A187359.P4273432328120707328

`A130380(3*n+2)`
-/

namespace A187359.P4273432328120707328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130380 (3 * n + 2)

end

end A187359.P4273432328120707328

namespace A187359

/-- `A130380(3*n+2)` -/
def P4273432328120707328.Spec : Prop :=
  ∀ n, P4273432328120707328.a n = A187359 n

end A187359

/-! ## A187359.P7975436990088756540

`A152766(3*n+2)`
-/

namespace A187359.P7975436990088756540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152766 (3 * n + 2)

end

end A187359.P7975436990088756540

namespace A187359

/-- `A152766(3*n+2)` -/
def P7975436990088756540.Spec : Prop :=
  ∀ n, P7975436990088756540.a n = A187359 n

end A187359

/-! ## A187359.P7287845052842483479

`A028303(6*n+3)`
-/

namespace A187359.P7287845052842483479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (6 * n + 3)

end

end A187359.P7287845052842483479

namespace A187359

/-- `A028303(6*n+3)` -/
def P7287845052842483479.Spec : Prop :=
  ∀ n, P7287845052842483479.a n = A187359 n

end A187359

/-! ## A187359.P9030556054556296121

`A028304(6*n+3)`
-/

namespace A187359.P9030556054556296121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (6 * n + 3)

end

end A187359.P9030556054556296121

namespace A187359

/-- `A028304(6*n+3)` -/
def P9030556054556296121.Spec : Prop :=
  ∀ n, P9030556054556296121.a n = A187359 n

end A187359

/-! ## A187359.P16833575277211534055

`A089848(3*(n+1))/2`
-/

namespace A187359.P16833575277211534055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089848 (3 * (n + 1)) : ℚ) / 2

end

end A187359.P16833575277211534055

namespace A187359

/-- `A089848(3*(n+1))/2` -/
def P16833575277211534055.Spec : Prop :=
  ∀ n, P16833575277211534055.a n = (A187359 n : ℚ)

end A187359

/-! ## A187359.P10542267944021775165

`A120588(3*(n+1))/2`
-/

namespace A187359.P10542267944021775165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (3 * (n + 1)) : ℚ) / 2

end

end A187359.P10542267944021775165

namespace A187359

/-- `A120588(3*(n+1))/2` -/
def P10542267944021775165.Spec : Prop :=
  ∀ n, P10542267944021775165.a n = (A187359 n : ℚ)

end A187359

/-! ## A187359.P12007407228955681871

`A262543(3*(n+1))/4`
-/

namespace A187359.P12007407228955681871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262543 (3 * (n + 1)) : ℚ) / 4

end

end A187359.P12007407228955681871

namespace A187359

/-- `A262543(3*(n+1))/4` -/
def P12007407228955681871.Spec : Prop :=
  ∀ n, P12007407228955681871.a n = (A187359 n : ℚ)

end A187359

/-! ## A187359.P13106139530690680739

`A068875(3*n+2)/4`
-/

namespace A187359.P13106139530690680739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068875 (3 * n + 2) : ℚ) / 4

end

end A187359.P13106139530690680739

namespace A187359

/-- `A068875(3*n+2)/4` -/
def P13106139530690680739.Spec : Prop :=
  ∀ n, P13106139530690680739.a n = (A187359 n : ℚ)

end A187359

/-! ## A187359.P15050171754359554696

`abs(A246432(3*(n+1))/2)`
-/

namespace A187359.P15050171754359554696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A246432 (3 * (n + 1)) : ℚ) / 2|

end

end A187359.P15050171754359554696

namespace A187359

/-- `abs(A246432(3*(n+1))/2)` -/
def P15050171754359554696.Spec : Prop :=
  ∀ n, P15050171754359554696.a n = (A187359 n : ℚ)

end A187359

/-!
# A187361: Pell trisection: Pell(3*n+1), n >= 0.

The programs for A187361, the canonical program `A187361.P10190232888762428156` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187361 has offset 0).

The definition of A187361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(3*n+1)` (program `A187361.P10190232888762428156`, by `A187361.P10190232888762428156.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187361.P1891430968098228360

`ogf((1-2x)/(1-14x-x^2))`
-/

namespace A187361.P1891430968098228360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -14, -1] n

end

end A187361.P1891430968098228360

namespace A187361

/-- `ogf((1-2x)/(1-14x-x^2))` -/
def P1891430968098228360.Spec : Prop :=
  ∀ n, P1891430968098228360.a n = A187361 n

end A187361

/-! ## A187361.P9544586819209001986

`14*a(n-1)+a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A187361.P9544586819209001986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n a =>
  14 * a (n - 1) + a (n - 2)

end

end A187361.P9544586819209001986

namespace A187361

/-- `14*a(n-1)+a(n-2)` -/
def P9544586819209001986.Spec : Prop :=
  ∀ n, (P9544586819209001986.a n : ℤ) = A187361 n

end A187361

/-! ## A187361.P10190232888762428156

`A000129(3*n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187361

/-- `A000129(3*n+1)` -/
def P10190232888762428156.Spec : Prop :=
  ∀ n, P10190232888762428156.a n = A187361 n

theorem P10190232888762428156.correct : P10190232888762428156.Spec := by
  intro n
  simp only [A187361]

end A187361

/-! ## A187361.P3979246761799015878

`A215928(3*n+1)`
-/

namespace A187361.P3979246761799015878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (3 * n + 1)

end

end A187361.P3979246761799015878

namespace A187361

/-- `A215928(3*n+1)` -/
def P3979246761799015878.Spec : Prop :=
  ∀ n, P3979246761799015878.a n = A187361 n

end A187361

/-! ## A187361.P1789185319499775851

`A052937(3*n)-1`
-/

namespace A187361.P1789185319499775851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (3 * n) - 1

end

end A187361.P1789185319499775851

namespace A187361

/-- `A052937(3*n)-1` -/
def P1789185319499775851.Spec : Prop :=
  ∀ n, P1789185319499775851.a n = A187361 n

end A187361

/-! ## A187361.P8318737432882950748

`A135153(6*n+2)`
-/

namespace A187361.P8318737432882950748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (6 * n + 2)

end

end A187361.P8318737432882950748

namespace A187361

/-- `A135153(6*n+2)` -/
def P8318737432882950748.Spec : Prop :=
  ∀ n, P8318737432882950748.a n = A187361 n

end A187361

/-! ## A187361.P2146109013616893781

`abs(A176981(3*n+2))`
-/

namespace A187361.P2146109013616893781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (3 * n + 2)|

end

end A187361.P2146109013616893781

namespace A187361

/-- `abs(A176981(3*n+2))` -/
def P2146109013616893781.Spec : Prop :=
  ∀ n, P2146109013616893781.a n = A187361 n

end A187361

/-! ## A187361.P16607483160734773141

`A249576(3*(3*n+1))`
-/

namespace A187361.P16607483160734773141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * (3 * n + 1))

end

end A187361.P16607483160734773141

namespace A187361

/-- `A249576(3*(3*n+1))` -/
def P16607483160734773141.Spec : Prop :=
  ∀ n, P16607483160734773141.a n = A187361 n

end A187361

/-! ## A187361.P13315190692909057199

`A002965(A016933(n))`
-/

namespace A187361.P13315190692909057199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A016933 n).toNat

end

end A187361.P13315190692909057199

namespace A187361

/-- `A002965(A016933(n))` -/
def P13315190692909057199.Spec : Prop :=
  ∀ n, P13315190692909057199.a n = A187361 n

end A187361

/-! ## A187361.P6675420195109323579

`A092550(A017173(n))`
-/

namespace A187361.P6675420195109323579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A017173 n).toNat

end

end A187361.P6675420195109323579

namespace A187361

/-- `A092550(A017173(n))` -/
def P6675420195109323579.Spec : Prop :=
  ∀ n, P6675420195109323579.a n = A187361 n

end A187361

/-!
# A187362: Pell trisection: Pell(3*n+2), n >= 0.

The programs for A187362, the canonical program `A187362.P12023389317432018077` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187362 has offset 0).

The definition of A187362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(3*n+2)` (program `A187362.P12023389317432018077`, by `A187362.P12023389317432018077.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187362.P13744024061669229607

`ogf((2+x)/(1-14x-x^2))`
-/

namespace A187362.P13744024061669229607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -14, -1] n

end

end A187362.P13744024061669229607

namespace A187362

/-- `ogf((2+x)/(1-14x-x^2))` -/
def P13744024061669229607.Spec : Prop :=
  ∀ n, P13744024061669229607.a n = A187362 n

end A187362

/-! ## A187362.P9940419545594672056

`14*a(n-1)+a(n-2)` with `a(0)=2, a(1)=29`
-/

namespace A187362.P9940419545594672056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 29] fun n a =>
  14 * a (n - 1) + a (n - 2)

end

end A187362.P9940419545594672056

namespace A187362

/-- `14*a(n-1)+a(n-2)` -/
def P9940419545594672056.Spec : Prop :=
  ∀ n, (P9940419545594672056.a n : ℤ) = A187362 n

end A187362

/-! ## A187362.P12023389317432018077

`A000129(3*n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187362

/-- `A000129(3*n+2)` -/
def P12023389317432018077.Spec : Prop :=
  ∀ n, P12023389317432018077.a n = A187362 n

theorem P12023389317432018077.correct : P12023389317432018077.Spec := by
  intro n
  simp only [A187362]

end A187362

/-! ## A187362.P5194607467632074554

`A215928(3*n+2)`
-/

namespace A187362.P5194607467632074554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (3 * n + 2)

end

end A187362.P5194607467632074554

namespace A187362

/-- `A215928(3*n+2)` -/
def P5194607467632074554.Spec : Prop :=
  ∀ n, P5194607467632074554.a n = A187362 n

end A187362

/-! ## A187362.P7826269915534601098

`A238375(6*n)+1`
-/

namespace A187362.P7826269915534601098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238375 (6 * n) + 1

end

end A187362.P7826269915534601098

namespace A187362

/-- `A238375(6*n)+1` -/
def P7826269915534601098.Spec : Prop :=
  ∀ n, P7826269915534601098.a n = A187362 n

end A187362

/-! ## A187362.P2912709075364946327

`A135153(6*n+4)`
-/

namespace A187362.P2912709075364946327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (6 * n + 4)

end

end A187362.P2912709075364946327

namespace A187362

/-- `A135153(6*n+4)` -/
def P2912709075364946327.Spec : Prop :=
  ∀ n, P2912709075364946327.a n = A187362 n

end A187362

/-! ## A187362.P687674859393544384

`abs(A176981(3*(n+1)))`
-/

namespace A187362.P687674859393544384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (3 * (n + 1))|

end

end A187362.P687674859393544384

namespace A187362

/-- `abs(A176981(3*(n+1)))` -/
def P687674859393544384.Spec : Prop :=
  ∀ n, P687674859393544384.a n = A187362 n

end A187362

/-! ## A187362.P16286947774417944557

`Δ[-∑[A176981(3*n)]]`
-/

namespace A187362.P16286947774417944557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187362.P16286947774417944557

namespace A187362

/-- `Δ[-∑[A176981(3*n)]]` -/
def P16286947774417944557.Spec : Prop :=
  ∀ n, P16286947774417944557.a n = A187362 n

end A187362

/-! ## A187362.P2790867616614956996

`A163271(3*(n+1))/2`
-/

namespace A187362.P2790867616614956996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163271 (3 * (n + 1)) : ℚ) / 2

end

end A187362.P2790867616614956996

namespace A187362

/-- `A163271(3*(n+1))/2` -/
def P2790867616614956996.Spec : Prop :=
  ∀ n, P2790867616614956996.a n = (A187362 n : ℚ)

end A187362

/-! ## A187362.P12792676476643761848

`A249576(3*(3*n+2))`
-/

namespace A187362.P12792676476643761848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * (3 * n + 2))

end

end A187362.P12792676476643761848

namespace A187362

/-- `A249576(3*(3*n+2))` -/
def P12792676476643761848.Spec : Prop :=
  ∀ n, P12792676476643761848.a n = A187362 n

end A187362

/-!
# A187364: Trisection of A000984 (central binomial coefficients): binomial(2(3n+1),3n+1)/2, n>=0.

The programs for A187364, the canonical program `A187364.P14292930378940509851` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187364 has offset 0).

The definition of A187364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187364.P9494141776109112663

`1/2*∑{#}[3*n+1, C(3*n+1, #)²]`
-/

namespace A187364.P9494141776109112663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (3 * n + 1) k ^ 2 : ℕ) : ℚ)

end

end A187364.P9494141776109112663

namespace A187364

/-- `1/2*∑{#}[3*n+1, C(3*n+1, #)²]` -/
def P9494141776109112663.Spec : Prop :=
  ∀ n, P9494141776109112663.a n = (A187364 n : ℚ)

end A187364

/-! ## A187364.P14292930378940509851

`C(2*3*n+1, 3*n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187364

/-- `C(2*3*n+1, 3*n)` -/
def P14292930378940509851.Spec : Prop :=
  ∀ n, (P14292930378940509851.a n : ℤ) = A187364 n

theorem P14292930378940509851.correct : P14292930378940509851.Spec := by
  intro n
  simp only [A187364]

end A187364

/-! ## A187364.P14199319616995786141

`C(2*(3*n+1), 3*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187364.P14199319616995786141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (3 * n + 1)) (3 * n + 1) : ℚ) / 2

end

end A187364.P14199319616995786141

namespace A187364

/-- `C(2*(3*n+1), 3*n+1)/2` -/
def P14199319616995786141.Spec : Prop :=
  ∀ n, P14199319616995786141.a n = (A187364 n : ℚ)

end A187364

/-! ## A187364.P10780148360521210935

`A187443(2*n)`
-/

namespace A187364.P10780148360521210935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187443 (2 * n)

end

end A187364.P10780148360521210935

namespace A187364

/-- `A187443(2*n)` -/
def P10780148360521210935.Spec : Prop :=
  ∀ n, P10780148360521210935.a n = A187364 n

end A187364

/-! ## A187364.P849999797852967550

`A187444(2*n)`
-/

namespace A187364.P849999797852967550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187444 (2 * n)

end

end A187364.P849999797852967550

namespace A187364

/-- `A187444(2*n)` -/
def P849999797852967550.Spec : Prop :=
  ∀ n, P849999797852967550.a n = A187364 n

end A187364

/-! ## A187364.P12047212166199396973

`A001700(3*n)`
-/

namespace A187364.P12047212166199396973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (3 * n)

end

end A187364.P12047212166199396973

namespace A187364

/-- `A001700(3*n)` -/
def P12047212166199396973.Spec : Prop :=
  ∀ n, P12047212166199396973.a n = A187364 n

end A187364

/-! ## A187364.P890191062653535472

`A128015(6*n)`
-/

namespace A187364.P890191062653535472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128015 (6 * n)

end

end A187364.P890191062653535472

namespace A187364

/-- `A128015(6*n)` -/
def P890191062653535472.Spec : Prop :=
  ∀ n, P890191062653535472.a n = A187364 n

end A187364

/-! ## A187364.P4257008398516709904

`A010763(3*n)+1`
-/

namespace A187364.P4257008398516709904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 (3 * n) + 1

end

end A187364.P4257008398516709904

namespace A187364

/-- `A010763(3*n)+1` -/
def P4257008398516709904.Spec : Prop :=
  ∀ n, P4257008398516709904.a n = A187364 n

theorem P4257008398516709904.correct : P4257008398516709904.Spec := by
  intro n
  simp only [A187364, Nat.add_sub_cancel, A187364.P4257008398516709904.a, A187364.P14292930378940509851.a, A010763, A010763.P16190016592179271421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187364

/-! ## A187364.P17837131180803539692

`A088218(3*n+1)`
-/

namespace A187364.P17837131180803539692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (3 * n + 1)

end

end A187364.P17837131180803539692

namespace A187364

/-- `A088218(3*n+1)` -/
def P17837131180803539692.Spec : Prop :=
  ∀ n, P17837131180803539692.a n = A187364 n

end A187364

/-! ## A187364.P13635197112555787862

`A001405(6*n+1)`
-/

namespace A187364.P13635197112555787862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (6 * n + 1)

end

end A187364.P13635197112555787862

namespace A187364

/-- `A001405(6*n+1)` -/
def P13635197112555787862.Spec : Prop :=
  ∀ n, P13635197112555787862.a n = A187364 n

end A187364

/-!
# A187365: Trisection of A000984 (central binomial coefficients): binomial(2(3n+2),3n+2)/3!, n>=0.

The programs for A187365, the canonical program `A187365.P11423908180589690938` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187365 has offset 0).

The definition of A187365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187365.P10468282125738138467

`1/6*∑{#}[3*n+2, C(3*n+2, #)²]`
-/

namespace A187365.P10468282125738138467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (3 * n + 2) k ^ 2 : ℕ) : ℚ)

end

end A187365.P10468282125738138467

namespace A187365

/-- `1/6*∑{#}[3*n+2, C(3*n+2, #)²]` -/
def P10468282125738138467.Spec : Prop :=
  ∀ n, P10468282125738138467.a n = (A187365 n : ℚ)

end A187365

/-! ## A187365.P11423908180589690938

`C(3*(2*n+1), 3*n+2)/3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187365

/-- `C(3*(2*n+1), 3*n+2)/3` -/
def P11423908180589690938.Spec : Prop :=
  ∀ n, P11423908180589690938.a n = (A187365 n : ℚ)

end A187365

/-! ## A187365.P10271943592969777780

`C(2*(3*n+2), 3*n+2)/3!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187365.P10271943592969777780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (3 * n + 2)) (3 * n + 2) : ℚ) / (Nat.factorial 3 : ℚ)

end

end A187365.P10271943592969777780

namespace A187365

/-- `C(2*(3*n+2), 3*n+2)/3!` -/
def P10271943592969777780.Spec : Prop :=
  ∀ n, P10271943592969777780.a n = (A187365 n : ℚ)

end A187365

/-! ## A187365.P1675332668006097900

`(n+1)*A187359(n)`
-/

namespace A187365.P1675332668006097900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A187359 n

end

end A187365.P1675332668006097900

namespace A187365

/-- `(n+1)*A187359(n)` -/
def P1675332668006097900.Spec : Prop :=
  ∀ n, P1675332668006097900.a n = A187365 n

end A187365

/-! ## A187365.P17950585661194374459

`A187442(2*n+1)/3`
-/

namespace A187365.P17950585661194374459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187442 (2 * n + 1) : ℚ) / 3

end

end A187365.P17950585661194374459

namespace A187365

/-- `A187442(2*n+1)/3` -/
def P17950585661194374459.Spec : Prop :=
  ∀ n, P17950585661194374459.a n = (A187365 n : ℚ)

end A187365

/-! ## A187365.P11502929020884107287

`A001700(3*n+1)/3`
-/

namespace A187365.P11502929020884107287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 (3 * n + 1) : ℚ) / 3

end

end A187365.P11502929020884107287

namespace A187365

/-- `A001700(3*n+1)/3` -/
def P11502929020884107287.Spec : Prop :=
  ∀ n, P11502929020884107287.a n = (A187365 n : ℚ)

end A187365

/-! ## A187365.P2135104909539734161

`A088218(3*n+2)/3`
-/

namespace A187365.P2135104909539734161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088218 (3 * n + 2) : ℚ) / 3

end

end A187365.P2135104909539734161

namespace A187365

/-- `A088218(3*n+2)/3` -/
def P2135104909539734161.Spec : Prop :=
  ∀ n, P2135104909539734161.a n = (A187365 n : ℚ)

end A187365

/-! ## A187365.P7551098507123181691

`A187443(2*n+1)/6`
-/

namespace A187365.P7551098507123181691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187443 (2 * n + 1) : ℚ) / 6

end

end A187365.P7551098507123181691

namespace A187365

/-- `A187443(2*n+1)/6` -/
def P7551098507123181691.Spec : Prop :=
  ∀ n, P7551098507123181691.a n = (A187365 n : ℚ)

end A187365

/-! ## A187365.P10785966763392991432

`A000984(3*n+2)/6`
-/

namespace A187365.P10785966763392991432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (3 * n + 2) : ℚ) / 6

end

end A187365.P10785966763392991432

namespace A187365

/-- `A000984(3*n+2)/6` -/
def P10785966763392991432.Spec : Prop :=
  ∀ n, P10785966763392991432.a n = (A187365 n : ℚ)

end A187365

/-! ## A187365.P13655798152086325181

`A063886(6*n+4)/6`
-/

namespace A187365.P13655798152086325181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (6 * n + 4) : ℚ) / 6

end

end A187365.P13655798152086325181

namespace A187365

/-- `A063886(6*n+4)/6` -/
def P13655798152086325181.Spec : Prop :=
  ∀ n, P13655798152086325181.a n = (A187365 n : ℚ)

end A187365

/-!
# A187366: One half of a trisection of A001700: binomial(6n+5,3(n+1))/2, n >= 0.

The programs for A187366, the canonical program `A187366.P3276441542048363999` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187366 has offset 0).

The definition of A187366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187366.P3276441542048363999

`C(6*n+5, 3*(n+1))/2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187366

/-- `C(6*n+5, 3*(n+1))/2` -/
def P3276441542048363999.Spec : Prop :=
  ∀ n, P3276441542048363999.a n = (A187366 n : ℚ)

end A187366

/-! ## A187366.P15200150607679281701

`A187444(Δ[n²])`
-/

namespace A187366.P15200150607679281701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A187366.P15200150607679281701

namespace A187366

/-- `A187444(Δ[n²])` -/
def P15200150607679281701.Spec : Prop :=
  ∀ n, P15200150607679281701.a n = A187366 n

end A187366

/-! ## A187366.P8667947068096849757

`A301560(3*(n+1))`
-/

namespace A187366.P8667947068096849757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301560 (3 * (n + 1))

end

end A187366.P8667947068096849757

namespace A187366

/-- `A301560(3*(n+1))` -/
def P8667947068096849757.Spec : Prop :=
  ∀ n, P8667947068096849757.a n = A187366 n

end A187366

/-! ## A187366.P851799302906324642

`A066802(n+1)/4`
-/

namespace A187366.P851799302906324642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066802 (n + 1) : ℚ) / 4

end

end A187366.P851799302906324642

namespace A187366

/-- `A066802(n+1)/4` -/
def P851799302906324642.Spec : Prop :=
  ∀ n, P851799302906324642.a n = (A187366 n : ℚ)

end A187366

/-! ## A187366.P13351151257839841303

`A366108(6*(n+1))`
-/

namespace A187366.P13351151257839841303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366108 (6 * (n + 1))

end

end A187366.P13351151257839841303

namespace A187366

/-- `A366108(6*(n+1))` -/
def P13351151257839841303.Spec : Prop :=
  ∀ n, P13351151257839841303.a n = A187366 n

end A187366

/-! ## A187366.P14449866796606468242

`A088218(3*(n+1))/2`
-/

namespace A187366.P14449866796606468242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088218 (3 * (n + 1)) : ℚ) / 2

end

end A187366.P14449866796606468242

namespace A187366

/-- `A088218(3*(n+1))/2` -/
def P14449866796606468242.Spec : Prop :=
  ∀ n, P14449866796606468242.a n = (A187366 n : ℚ)

end A187366

/-! ## A187366.P11359897687676513548

`A001700(3*n+2)/2`
-/

namespace A187366.P11359897687676513548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 (3 * n + 2) : ℚ) / 2

end

end A187366.P11359897687676513548

namespace A187366

/-- `A001700(3*n+2)/2` -/
def P11359897687676513548.Spec : Prop :=
  ∀ n, P11359897687676513548.a n = (A187366 n : ℚ)

end A187366

/-! ## A187366.P10115709753288856885

`A000984(3*(n+1))/4`
-/

namespace A187366.P10115709753288856885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (3 * (n + 1)) : ℚ) / 4

end

end A187366.P10115709753288856885

namespace A187366

/-- `A000984(3*(n+1))/4` -/
def P10115709753288856885.Spec : Prop :=
  ∀ n, P10115709753288856885.a n = (A187366 n : ℚ)

end A187366

/-! ## A187366.P17042817894223597443

`or(char[1], A187444(2*n+1))`
-/

namespace A187366.P17042817894223597443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A187444 (2 * n + 1))

end

end A187366.P17042817894223597443

namespace A187366

/-- `or(char[1], A187444(2*n+1))` -/
def P17042817894223597443.Spec : Prop :=
  ∀ n, P17042817894223597443.a n = A187366 n

end A187366

/-! ## A187366.P1744785059846705148

`A002661(A016957(n))`
-/

namespace A187366.P1744785059846705148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002661 (A016957 n).toNat

end

end A187366.P1744785059846705148

namespace A187366

/-- `A002661(A016957(n))` -/
def P1744785059846705148.Spec : Prop :=
  ∀ n, P1744785059846705148.a n = A187366 n

end A187366

/-!
# A187372: Numbers k such that the decimal digits of 1/k contain every digit at least once.

The programs for A187372, there is no canonical definition to state claims against.
-/

/-! ## A187372.P463280092654959050

`lt[9, A117122(n+1)]+1`
-/

namespace A187372.P463280092654959050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187372.P463280092654959050

/-! ## A187372.P1960680342551980579

`lt[9, A117122(A028310(n))]`
-/

namespace A187372.P1960680342551980579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117122 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A187372.P1960680342551980579

/-! ## A187372.P4059932455338046538

`A020725(lt[9, A117122(n+1)])`
-/

namespace A187372.P4059932455338046538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A187372.P4059932455338046538

/-! ## A187372.P9775160035084849449

`A020725(eq[10, A117122(n+1)])`
-/

namespace A187372.P9775160035084849449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187372.P9775160035084849449

/-! ## A187372.P701457843813975796

`A063660(lt[9, A117122(n+1)])`
-/

namespace A187372.P701457843813975796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A187372.P701457843813975796

/-!
# A187373: Half the number of (n+2)X3 0..3 arrays with each 3X3 subblock having sum 13 or 14.

The programs for A187373, there is no canonical definition to state claims against.
-/

/-! ## A187373.P14078237596946275173

`A187376(∑[n]+1)`
-/

namespace A187373.P14078237596946275173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187373.P14078237596946275173

/-! ## A187373.P11035238117306167733

`lcm(2, A187376(A000124(n)))`
-/

namespace A187373.P11035238117306167733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187376 (A000124 n).toNat)

end

end A187373.P11035238117306167733

/-! ## A187373.P14140923458974416288

`record[A187376(A056534(n+1))]`
-/

namespace A187373.P14140923458974416288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187376 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187373.P14140923458974416288

/-!
# A187374: Half the number of (n+2) X 4 0..3 arrays with each 3 X 3 subblock having sum 13 or 14.

The programs for A187374, there is no canonical definition to state claims against.
-/

/-! ## A187374.P4862408446000146406

`A187376(∑[n+1]+2)`
-/

namespace A187374.P4862408446000146406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187376 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187374.P4862408446000146406

/-! ## A187374.P9999298799667046146

`record[A187376(A061579(n)+3)]`
-/

namespace A187374.P9999298799667046146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187376 (A061579 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187374.P9999298799667046146

/-!
# A187375: Half the number of (n+2)X5 0..3 arrays with each 3X3 subblock having sum 13 or 14.

The programs for A187375, there is no canonical definition to state claims against.
-/

/-! ## A187375.P6593691081063767665

`A187376(∑[n+2]+4)`
-/

namespace A187375.P6593691081063767665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187376 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187375.P6593691081063767665

/-!
# A187378: Number of 4-step S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187378, the canonical program `A187378.P17061958751619669100` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187378 has offset 1).

The definition of A187378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187378.P17061958751619669100

`ogf((4x+28x^2+24x^3-2x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187378

/-- `ogf((4x+28x^2+24x^3-2x^4)/(1-3x+3x^2-x^3))` -/
def P17061958751619669100.Spec : Prop :=
  ∀ n, P17061958751619669100.a n = A187378 (n + 1)

theorem P17061958751619669100.correct : P17061958751619669100.Spec := by
  intro n
  simp only [A187378, Nat.add_sub_cancel]

end A187378

/-! ## A187378.P16352622823510688527

`record[A077043(A019426(n))+n]`
-/

namespace A187378.P16352622823510688527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A019426 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187378.P16352622823510688527

namespace A187378

/-- `record[A077043(A019426(n))+n]` -/
def P16352622823510688527.Spec : Prop :=
  ∀ n, P16352622823510688527.a n = A187378 (n + 1)

end A187378

/-! ## A187378.P17593369597643487349

`A187377(A141214(n)+7)`
-/

namespace A187378.P17593369597643487349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A141214 n + 7).toNat

end

end A187378.P17593369597643487349

namespace A187378

/-- `A187377(A141214(n)+7)` -/
def P17593369597643487349.Spec : Prop :=
  ∀ n, P17593369597643487349.a n = A187378 (n + 1)

end A187378

/-! ## A187378.P13035622147510814168

`A187377(A052905(n)+9)`
-/

namespace A187378.P13035622147510814168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A052905 n + 9).toNat

end

end A187378.P13035622147510814168

namespace A187378

/-- `A187377(A052905(n)+9)` -/
def P13035622147510814168.Spec : Prop :=
  ∀ n, P13035622147510814168.a n = A187378 (n + 1)

end A187378

/-! ## A187378.P6170929941253865953

`A187377(A055999(n)+10)`
-/

namespace A187378.P6170929941253865953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A055999 n + 10).toNat

end

end A187378.P6170929941253865953

namespace A187378

/-- `A187377(A055999(n)+10)` -/
def P6170929941253865953.Spec : Prop :=
  ∀ n, P6170929941253865953.a n = A187378 (n + 1)

end A187378

/-!
# A187379: Number of 5-step S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187379, the canonical program `A187379.P12010084791184635951` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187379 has offset 1).

The definition of A187379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187379.P12010084791184635951

`ogf((40x^2+68x^3+43x^4-13x^5)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187379

/-- `ogf((40x^2+68x^3+43x^4-13x^5)/(1-3x+3x^2-x^3))` -/
def P12010084791184635951.Spec : Prop :=
  ∀ n, P12010084791184635951.a n = A187379 (n + 1)

theorem P12010084791184635951.correct : P12010084791184635951.Spec := by
  intro n
  simp only [A187379, Nat.add_sub_cancel]

end A187379

/-! ## A187379.P17241058534821521698

`A187377(A167499(n+3))`
-/

namespace A187379.P17241058534821521698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A167499 (n + 3)).toNat

end

end A187379.P17241058534821521698

namespace A187379

/-- `A187377(A167499(n+3))` -/
def P17241058534821521698.Spec : Prop :=
  ∀ n, P17241058534821521698.a n = A187379 (n + 1)

end A187379

/-! ## A187379.P8406673287745205564

`A187377(A155212(n)+13)`
-/

namespace A187379.P8406673287745205564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A155212 n + 13).toNat

end

end A187379.P8406673287745205564

namespace A187379

/-- `A187377(A155212(n)+13)` -/
def P8406673287745205564.Spec : Prop :=
  ∀ n, P8406673287745205564.a n = A187379 (n + 1)

end A187379

/-! ## A187379.P12117332308825166335

`A187377(A056000(n)+15)`
-/

namespace A187379.P12117332308825166335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A056000 n + 15).toNat

end

end A187379.P12117332308825166335

namespace A187379

/-- `A187377(A056000(n)+15)` -/
def P12117332308825166335.Spec : Prop :=
  ∀ n, P12117332308825166335.a n = A187379 (n + 1)

end A187379

/-! ## A187379.P17666913938253310809

`A187377(eq[7, A066657(n)])`
-/

namespace A187379.P17666913938253310809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187379.P17666913938253310809

namespace A187379

/-- `A187377(eq[7, A066657(n)])` -/
def P17666913938253310809.Spec : Prop :=
  ∀ n, P17666913938253310809.a n = A187379 (n + 1)

end A187379

/-!
# A187380: Number of 6-step S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187380, the canonical program `A187380.P12283198989678745350` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187380 has offset 1).

The definition of A187380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187380.P12283198989678745350

`ogf((24x^2+192x^3+112x^4+82x^5-44x^6)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187380

/-- `ogf((24x^2+192x^3+112x^4+82x^5-44x^6)/(1-3x+3x^2-x^3))` -/
def P12283198989678745350.Spec : Prop :=
  ∀ n, P12283198989678745350.a n = A187380 (n + 1)

theorem P12283198989678745350.correct : P12283198989678745350.Spec := by
  intro n
  simp only [A187380, Nat.add_sub_cancel]

end A187380

/-! ## A187380.P15821979244218646673

`A187377(A166136(n+4))`
-/

namespace A187380.P15821979244218646673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A166136 (n + 4)).toNat

end

end A187380.P15821979244218646673

namespace A187380

/-- `A187377(A166136(n+4))` -/
def P15821979244218646673.Spec : Prop :=
  ∀ n, P15821979244218646673.a n = A187380 (n + 1)

end A187380

/-! ## A187380.P17203432092529808445

`A187377(A056115(n)+21)`
-/

namespace A187380.P17203432092529808445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A056115 n + 21).toNat

end

end A187380.P17203432092529808445

namespace A187380

/-- `A187377(A056115(n)+21)` -/
def P17203432092529808445.Spec : Prop :=
  ∀ n, P17203432092529808445.a n = A187380 (n + 1)

end A187380

/-! ## A187380.P1801640868246095279

`A187377(A167499(n+4)+1)`
-/

namespace A187380.P1801640868246095279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A167499 (n + 4) + 1).toNat

end

end A187380.P1801640868246095279

namespace A187380

/-- `A187377(A167499(n+4)+1)` -/
def P1801640868246095279.Spec : Prop :=
  ∀ n, P1801640868246095279.a n = A187380 (n + 1)

end A187380

/-! ## A187380.P9190231941069690290

`A187377(A167614(n+4)+3)`
-/

namespace A187380.P9190231941069690290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A167614 (n + 4) + 3).toNat

end

end A187380.P9190231941069690290

namespace A187380

/-- `A187377(A167614(n+4)+3)` -/
def P9190231941069690290.Spec : Prop :=
  ∀ n, P9190231941069690290.a n = A187380 (n + 1)

end A187380

/-!
# A187381: Number of 7-step S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187381, there is no canonical definition to state claims against.
-/

/-! ## A187381.P16029676598064925981

`A187377(A167614(n+5)+4)`
-/

namespace A187381.P16029676598064925981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A167614 (n + 5) + 4).toNat

end

end A187381.P16029676598064925981

/-! ## A187381.P11827025762904520414

`A187377(A000124(n+6)+6)`
-/

namespace A187381.P11827025762904520414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A000124 (n + 6) + 6).toNat

end

end A187381.P11827025762904520414

/-! ## A187381.P15887908307903032229

`A187377(A000096(n+5)+8)`
-/

namespace A187381.P15887908307903032229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A000096 (n + 5) + 8).toNat

end

end A187381.P15887908307903032229

/-! ## A187381.P4073674862767612789

`A187377(A000217(n+6)+7)`
-/

namespace A187381.P4073674862767612789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A000217 (n + 6) + 7).toNat

end

end A187381.P4073674862767612789

/-! ## A187381.P3861960349428275790

`A187377(A141214(n+3)+10)`
-/

namespace A187381.P3861960349428275790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A141214 (n + 3) + 10).toNat

end

end A187381.P3861960349428275790

/-!
# A187382: Number of 8-step S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187382, there is no canonical definition to state claims against.
-/

/-! ## A187382.P1459745482760023457

`A187377(eq[13, A066657(n)])`
-/

namespace A187382.P1459745482760023457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187382.P1459745482760023457

/-! ## A187382.P466538173195527676

`A187377(A167487(n+6)+1)`
-/

namespace A187382.P466538173195527676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A167487 (n + 6) + 1).toNat

end

end A187382.P466538173195527676

/-! ## A187382.P17044119682731817276

`A187377(A000217(n+7)+8)`
-/

namespace A187382.P17044119682731817276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A000217 (n + 7) + 8).toNat

end

end A187382.P17044119682731817276

/-! ## A187382.P3057514894993593993

`A187377(eq[7, A002262(n)]+1)`
-/

namespace A187382.P3057514894993593993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A187382.P3057514894993593993

/-! ## A187382.P1447078106723033919

`A187377(eq[9, A131818(n+1)])`
-/

namespace A187382.P1447078106723033919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187382.P1447078106723033919

/-!
# A187383: Number of 9-step S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187383, there is no canonical definition to state claims against.
-/

/-! ## A187383.P9761810404759201503

`A187377(A000124(n+8)+8)`
-/

namespace A187383.P9761810404759201503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A000124 (n + 8) + 8).toNat

end

end A187383.P9761810404759201503

/-! ## A187383.P16421588269033345696

`A187377(A000217(n+8)+9)`
-/

namespace A187383.P16421588269033345696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A000217 (n + 8) + 9).toNat

end

end A187383.P16421588269033345696

/-! ## A187383.P3726075490317356793

`A187377(A179865(n+9)+9)`
-/

namespace A187383.P3726075490317356793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A179865 (n + 9) + 9).toNat

end

end A187383.P3726075490317356793

/-! ## A187383.P16672171553222479360

`A187377(eq[10, A131818(n+1)])`
-/

namespace A187383.P16672171553222479360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187383.P16672171553222479360

/-!
# A187384: Number of 10-step S, NW and NE-moving king's tours on an n X n board summed over all starting positions.

The programs for A187384, there is no canonical definition to state claims against.
-/

/-! ## A187384.P2038481831068270125

`A187377(eq[10, A256910(n)])`
-/

namespace A187384.P2038481831068270125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187384.P2038481831068270125

/-! ## A187384.P1998271998121836594

`A187377(A167499(n+8)+5)`
-/

namespace A187384.P1998271998121836594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A167499 (n + 8) + 5).toNat

end

end A187384.P1998271998121836594

/-! ## A187384.P2519426116112059857

`A187377(A000217(n+9)+10)`
-/

namespace A187384.P2519426116112059857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A000217 (n + 9) + 10).toNat

end

end A187384.P2519426116112059857

/-! ## A187384.P1819152019024448920

`A187377(eq[11, A131818(n+1)])`
-/

namespace A187384.P1819152019024448920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187384.P1819152019024448920

/-! ## A187384.P11576258422093595940

`A187377(A105340(n+10)-n)`
-/

namespace A187384.P11576258422093595940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187377 (A105340 (n + 10) - (n : ℤ)).toNat

end

end A187384.P11576258422093595940

/-!
# A187385: a(n) = floor(r*n), where r=1+sqrt(3)+sqrt(2); complement of A187386.

The programs for A187385, the canonical program `A187385.P9348827551069510067` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187385 has offset 1).

The definition of A187385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187385.P9348827551069510067

`floor((n+1)*(1+sqrt(2)+sqrt(3)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187385

/-- `floor((n+1)*(1+sqrt(2)+sqrt(3)))` -/
def P9348827551069510067.Spec : Prop :=
  ∀ n, P9348827551069510067.a n = A187385 (n + 1)

theorem P9348827551069510067.correct : P9348827551069510067.Spec := by
  intro n
  simp only [A187385, Nat.add_sub_cancel]

end A187385

/-! ## A187385.P6224366320500171461

`∑[A276870(n+1)+1]`
-/

namespace A187385.P6224366320500171461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276870 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187385.P6224366320500171461

namespace A187385

/-- `∑[A276870(n+1)+1]` -/
def P6224366320500171461.Spec : Prop :=
  ∀ n, P6224366320500171461.a n = A187385 (n + 1)

end A187385

/-! ## A187385.P14020500850514887259

`A110117(n+1)+1+n`
-/

namespace A187385.P14020500850514887259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110117 (n + 1) + 1 + (n : ℤ)

end

end A187385.P14020500850514887259

namespace A187385

/-- `A110117(n+1)+1+n` -/
def P14020500850514887259.Spec : Prop :=
  ∀ n, P14020500850514887259.a n = A187385 (n + 1)

end A187385

/-! ## A187385.P4917937994341547270

`A190242(n+1)+A189361(n+1)`
-/

namespace A187385.P4917937994341547270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (n + 1) + A189361 (n + 1)

end

end A187385.P4917937994341547270

namespace A187385

/-- `A190242(n+1)+A189361(n+1)` -/
def P4917937994341547270.Spec : Prop :=
  ∀ n, P4917937994341547270.a n = A187385 (n + 1)

end A187385

/-! ## A187385.P14052006354758631425

`record[A110119(n+1)+1]+n`
-/

namespace A187385.P14052006354758631425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A187385.P14052006354758631425

namespace A187385

/-- `record[A110119(n+1)+1]+n` -/
def P14052006354758631425.Spec : Prop :=
  ∀ n, P14052006354758631425.a n = A187385 (n + 1)

end A187385

/-! ## A187385.P7375465104410727456

`A110119(A110118(n+1))+1+n`
-/

namespace A187385.P7375465104410727456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (A110118 (n + 1)).toNat + 1 + (n : ℤ)

end

end A187385.P7375465104410727456

namespace A187385

/-- `A110119(A110118(n+1))+1+n` -/
def P7375465104410727456.Spec : Prop :=
  ∀ n, P7375465104410727456.a n = A187385 (n + 1)

end A187385

/-! ## A187385.P5527978634528127035

`A187386(A110117(n+1))+1`
-/

namespace A187385.P5527978634528127035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187386 (A110117 (n + 1)).toNat + 1

end

end A187385.P5527978634528127035

namespace A187385

/-- `A187386(A110117(n+1))+1` -/
def P5527978634528127035.Spec : Prop :=
  ∀ n, P5527978634528127035.a n = A187385 (n + 1)

end A187385

/-! ## A187385.P5005553167863995472

`A187386(A189527(n+1)-A187386(n+1))+1`
-/

namespace A187385.P5005553167863995472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187386 (A189527 (n + 1) - A187386 (n + 1)).toNat + 1

end

end A187385.P5005553167863995472

namespace A187385

/-- `A187386(A189527(n+1)-A187386(n+1))+1` -/
def P5005553167863995472.Spec : Prop :=
  ∀ n, P5005553167863995472.a n = A187385 (n + 1)

end A187385

/-! ## A187385.P15132713212172868617

`A249115(3*A002260(2*(n+1)*(n+1)))`
-/

namespace A187385.P15132713212172868617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (3 * A002260 (2 * ((n + 1) * (n + 1)))).toNat

end

end A187385.P15132713212172868617

namespace A187385

/-- `A249115(3*A002260(2*(n+1)*(n+1)))` -/
def P15132713212172868617.Spec : Prop :=
  ∀ n, P15132713212172868617.a n = A187385 (n + 1)

end A187385

/-!
# A187386: a(n) = floor(s*n), where s=1+sqrt(3)-sqrt(2); complement of A187385.

The programs for A187386, the canonical program `A187386.P4335957662308116662` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187386 has offset 1).

The definition of A187386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187386.P4335957662308116662

`floor((n+1)*(sqrt(3)-sqrt(2)+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187386

/-- `floor((n+1)*(sqrt(3)-sqrt(2)+1))` -/
def P4335957662308116662.Spec : Prop :=
  ∀ n, P4335957662308116662.a n = A187386 (n + 1)

theorem P4335957662308116662.correct : P4335957662308116662.Spec := by
  intro n
  simp only [A187386, Nat.add_sub_cancel]

end A187386

/-! ## A187386.P14251864714821769795

`∑[char[A110117(n+1)]+1]`
-/

namespace A187386.P14251864714821769795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187386.P14251864714821769795

namespace A187386

/-- `∑[char[A110117(n+1)]+1]` -/
def P14251864714821769795.Spec : Prop :=
  ∀ n, (P14251864714821769795.a n : ℤ) = A187386 (n + 1)

end A187386

/-! ## A187386.P11507885023789034443

`comp[comp[A110118(n+1)]+n]`
-/

namespace A187386.P11507885023789034443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110118 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187386.P11507885023789034443

namespace A187386

/-- `comp[comp[A110118(n+1)]+n]` -/
def P11507885023789034443.Spec : Prop :=
  ∀ n, (P11507885023789034443.a n : ℤ) = A187386 (n + 1)

end A187386

/-! ## A187386.P3374689614367284054

`comp[A187385(n+1)-1]+1`
-/

namespace A187386.P3374689614367284054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187385 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187386.P3374689614367284054

namespace A187386

/-- `comp[A187385(n+1)-1]+1` -/
def P3374689614367284054.Spec : Prop :=
  ∀ n, (P3374689614367284054.a n : ℤ) = A187386 (n + 1)

end A187386

/-! ## A187386.P5233121105236727146

`comp[record[A110119(n+1)]+n]+1`
-/

namespace A187386.P5233121105236727146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187386.P5233121105236727146

namespace A187386

/-- `comp[record[A110119(n+1)]+n]+1` -/
def P5233121105236727146.Spec : Prop :=
  ∀ n, (P5233121105236727146.a n : ℤ) = A187386 (n + 1)

end A187386

/-! ## A187386.P625248377517014373

`A189527(n+1)%floor((sqrt(2)+sqrt(3))*(n+1))`
-/

namespace A187386.P625248377517014373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189527 (n + 1)) ⌊(Real.sqrt (2 : ℝ) + Real.sqrt (3 : ℝ)) * (n + 1 : ℝ)⌋

end

end A187386.P625248377517014373

namespace A187386

/-- `A189527(n+1)%floor((sqrt(2)+sqrt(3))*(n+1))` -/
def P625248377517014373.Spec : Prop :=
  ∀ n, P625248377517014373.a n = A187386 (n + 1)

end A187386

/-! ## A187386.P2590774495526319019

`A189527(n+1)-A110117(n+1)`
-/

namespace A187386.P2590774495526319019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189527 (n + 1) - A110117 (n + 1)

end

end A187386.P2590774495526319019

namespace A187386

/-- `A189527(n+1)-A110117(n+1)` -/
def P2590774495526319019.Spec : Prop :=
  ∀ n, P2590774495526319019.a n = A187386 (n + 1)

end A187386

/-! ## A187386.P6620377870458430653

`∑[Δ[A172264(n)]+1]`
-/

namespace A187386.P6620377870458430653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187386.P6620377870458430653

namespace A187386

/-- `∑[Δ[A172264(n)]+1]` -/
def P6620377870458430653.Spec : Prop :=
  ∀ n, P6620377870458430653.a n = A187386 (n + 1)

end A187386

/-! ## A187386.P1599965691205201377

`A172264(n+1)+1+n`
-/

namespace A187386.P1599965691205201377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (n + 1) + 1 + (n : ℤ)

end

end A187386.P1599965691205201377

namespace A187386

/-- `A172264(n+1)+1+n` -/
def P1599965691205201377.Spec : Prop :=
  ∀ n, P1599965691205201377.a n = A187386 (n + 1)

end A187386

/-! ## A187386.P9894765025080882940

`ceil(log2(A222106(2*n+1)))`
-/

namespace A187386.P9894765025080882940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A222106 (2 * n + 1) : ℝ)⌉

end

end A187386.P9894765025080882940

namespace A187386

/-- `ceil(log2(A222106(2*n+1)))` -/
def P9894765025080882940.Spec : Prop :=
  ∀ n, P9894765025080882940.a n = A187386 (n + 1)

end A187386

/-!
# A187387: Floor(r*n), where r=1+sqrt(6)+sqrt(5); complement of A187388.

The programs for A187387, the canonical program `A187387.P5808425786983979277` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187387 has offset 1).

The definition of A187387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187387.P5808425786983979277

`∑[Δ[A228177(n)]+1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187387

/-- `∑[Δ[A228177(n)]+1]` -/
def P5808425786983979277.Spec : Prop :=
  ∀ n, P5808425786983979277.a n = A187387 (n + 1)

theorem P5808425786983979277.correct : P5808425786983979277.Spec := by
  intro n
  simp only [A187387, Nat.add_sub_cancel]

end A187387

/-! ## A187387.P6414909041511585952

`A228177(n+1)+1+n`
-/

namespace A187387.P6414909041511585952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 (n + 1) + 1 + (n : ℤ)

end

end A187387.P6414909041511585952

namespace A187387

/-- `A228177(n+1)+1+n` -/
def P6414909041511585952.Spec : Prop :=
  ∀ n, P6414909041511585952.a n = A187387 (n + 1)

end A187387

/-! ## A187387.P2762211682372410889

`∑[A001068(Δ[A228177(n)])]`
-/

namespace A187387.P2762211682372410889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P2762211682372410889

namespace A187387

/-- `∑[A001068(Δ[A228177(n)])]` -/
def P2762211682372410889.Spec : Prop :=
  ∀ n, P2762211682372410889.a n = A187387 (n + 1)

end A187387

/-! ## A187387.P2427951854799555941

`∑[A001400(Δ[A228177(n)])]`
-/

namespace A187387.P2427951854799555941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P2427951854799555941

namespace A187387

/-- `∑[A001400(Δ[A228177(n)])]` -/
def P2427951854799555941.Spec : Prop :=
  ∀ n, P2427951854799555941.a n = A187387 (n + 1)

end A187387

/-! ## A187387.P13129529727666766213

`∑[A001476(Δ[A228177(n)])]`
-/

namespace A187387.P13129529727666766213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001476 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P13129529727666766213

namespace A187387

/-- `∑[A001476(Δ[A228177(n)])]` -/
def P13129529727666766213.Spec : Prop :=
  ∀ n, P13129529727666766213.a n = A187387 (n + 1)

end A187387

/-! ## A187387.P18188261815567260945

`∑[A001609(Δ[A228177(n)])]`
-/

namespace A187387.P18188261815567260945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P18188261815567260945

namespace A187387

/-- `∑[A001609(Δ[A228177(n)])]` -/
def P18188261815567260945.Spec : Prop :=
  ∀ n, P18188261815567260945.a n = A187387 (n + 1)

end A187387

/-! ## A187387.P10456236625747828262

`∑[A001965(Δ[A228177(n)])]`
-/

namespace A187387.P10456236625747828262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P10456236625747828262

namespace A187387

/-- `∑[A001965(Δ[A228177(n)])]` -/
def P10456236625747828262.Spec : Prop :=
  ∀ n, P10456236625747828262.a n = A187387 (n + 1)

end A187387

/-! ## A187387.P16939574024260216166

`∑[A002384(Δ[A228177(n)])]`
-/

namespace A187387.P16939574024260216166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P16939574024260216166

namespace A187387

/-- `∑[A002384(Δ[A228177(n)])]` -/
def P16939574024260216166.Spec : Prop :=
  ∀ n, P16939574024260216166.a n = A187387 (n + 1)

end A187387

/-! ## A187387.P7183156662553981610

`∑[A004773(Δ[A228177(n)])]`
-/

namespace A187387.P7183156662553981610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P7183156662553981610

namespace A187387

/-- `∑[A004773(Δ[A228177(n)])]` -/
def P7183156662553981610.Spec : Prop :=
  ∀ n, P7183156662553981610.a n = A187387 (n + 1)

end A187387

/-! ## A187387.P12289846793792022614

`∑[A228144(Δ[A228177(n)])]`
-/

namespace A187387.P12289846793792022614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228144 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P12289846793792022614

namespace A187387

/-- `∑[A228144(Δ[A228177(n)])]` -/
def P12289846793792022614.Spec : Prop :=
  ∀ n, P12289846793792022614.a n = A187387 (n + 1)

end A187387

/-! ## A187387.P9080362721904869748

`∑[A000005(2^Δ[A228177(n)])]`
-/

namespace A187387.P9080362721904869748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P9080362721904869748

namespace A187387

/-- `∑[A000005(2^Δ[A228177(n)])]` -/
def P9080362721904869748.Spec : Prop :=
  ∀ n, P9080362721904869748.a n = A187387 (n + 1)

end A187387

/-!
# A187388: Floor(s*n), where s=1+sqrt(6)-sqrt(5); complement of A187387.

The programs for A187388, the canonical program `A187388.P12675393244022700110` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187388 has offset 1).

The definition of A187388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187388.P12675393244022700110

`comp[A228177(n)+n]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187388

/-- `comp[A228177(n)+n]` -/
def P12675393244022700110.Spec : Prop :=
  ∀ n, (P12675393244022700110.a n : ℤ) = A187388 (n + 1)

theorem P12675393244022700110.correct : P12675393244022700110.Spec := by
  intro n
  simp only [A187388, Nat.add_sub_cancel]

end A187388

/-! ## A187388.P11346885284311259963

`comp[A187387(n+1)-1]+1`
-/

namespace A187388.P11346885284311259963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187387 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187388.P11346885284311259963

namespace A187388

/-- `comp[A187387(n+1)-1]+1` -/
def P11346885284311259963.Spec : Prop :=
  ∀ n, (P11346885284311259963.a n : ℤ) = A187388 (n + 1)

end A187388

/-! ## A187388.P10937776347386042995

`A000027(∑[char[A228177(n)]]+n)`
-/

namespace A187388.P10937776347386042995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A187388.P10937776347386042995

namespace A187388

/-- `A000027(∑[char[A228177(n)]]+n)` -/
def P10937776347386042995.Spec : Prop :=
  ∀ n, P10937776347386042995.a n = A187388 (n + 1)

end A187388

/-! ## A187388.P1697357842393667421

`∑[A057427(n)+char[A228177(n)]]`
-/

namespace A187388.P1697357842393667421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187388.P1697357842393667421

namespace A187388

/-- `∑[A057427(n)+char[A228177(n)]]` -/
def P1697357842393667421.Spec : Prop :=
  ∀ n, P1697357842393667421.a n = A187388 (n + 1)

end A187388

/-! ## A187388.P9220348465353304001

`n-A001478(∑[char[A228177(n)]])`
-/

namespace A187388.P9220348465353304001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001478 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187388.P9220348465353304001

namespace A187388

/-- `n-A001478(∑[char[A228177(n)]])` -/
def P9220348465353304001.Spec : Prop :=
  ∀ n, P9220348465353304001.a n = A187388 (n + 1)

end A187388

/-! ## A187388.P8337365175440702310

`n-A001489(∑[char[A228177(n)]])`
-/

namespace A187388.P8337365175440702310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187388.P8337365175440702310

namespace A187388

/-- `n-A001489(∑[char[A228177(n)]])` -/
def P8337365175440702310.Spec : Prop :=
  ∀ n, P8337365175440702310.a n = A187388 (n + 1)

end A187388

/-! ## A187388.P7657822392132385790

`A004525(2*n)+∑[char[A228177(n)]]`
-/

namespace A187388.P7657822392132385790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A187388.P7657822392132385790

namespace A187388

/-- `A004525(2*n)+∑[char[A228177(n)]]` -/
def P7657822392132385790.Spec : Prop :=
  ∀ n, P7657822392132385790.a n = A187388 (n + 1)

end A187388

/-! ## A187388.P59977895859584698

`A003056(A294427(∑[A226190(n+1)]))`
-/

namespace A187388.P59977895859584698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A294427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A187388.P59977895859584698

namespace A187388

/-- `A003056(A294427(∑[A226190(n+1)]))` -/
def P59977895859584698.Spec : Prop :=
  ∀ n, P59977895859584698.a n = A187388 (n + 1)

end A187388

/-! ## A187388.P5620876297352493485

`A085141(A008254(n+1))`
-/

namespace A187388.P5620876297352493485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A008254 (n + 1)).toNat

end

end A187388.P5620876297352493485

namespace A187388

/-- `A085141(A008254(n+1))` -/
def P5620876297352493485.Spec : Prop :=
  ∀ n, P5620876297352493485.a n = A187388 (n + 1)

end A187388

/-!
# A187389: a(n) = floor(r*n), where r = 1 + sqrt(7) + sqrt(6); complement of A187390.

The programs for A187389, the canonical program `A187389.P17181131781947967530` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187389 has offset 1).

The definition of A187389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187389.P17181131781947967530

`floor(A158231(n+1)/42)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187389

/-- `floor(A158231(n+1)/42)` -/
def P17181131781947967530.Spec : Prop :=
  ∀ n, P17181131781947967530.a n = A187389 (n + 1)

theorem P17181131781947967530.correct : P17181131781947967530.Spec := by
  intro n
  simp only [A187389, Nat.add_sub_cancel]

end A187389

/-! ## A187389.P6971762460447924023

`A002264(A057356(n+1))+Δ[A004538(n)]`
-/

namespace A187389.P6971762460447924023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A057356 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A187389.P6971762460447924023

namespace A187389

/-- `A002264(A057356(n+1))+Δ[A004538(n)]` -/
def P6971762460447924023.Spec : Prop :=
  ∀ n, P6971762460447924023.a n = A187389 (n + 1)

end A187389

/-! ## A187389.P5971027698304688667

`A008588(n+1)+A002264(A057356(n+1))`
-/

namespace A187389.P5971027698304688667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (n + 1) + A002264 (A057356 (n + 1)).toNat

end

end A187389.P5971027698304688667

namespace A187389

/-- `A008588(n+1)+A002264(A057356(n+1))` -/
def P5971027698304688667.Spec : Prop :=
  ∀ n, P5971027698304688667.a n = A187389 (n + 1)

end A187389

/-! ## A187389.P13982638708453240373

`A057364(16*(n+1))`
-/

namespace A187389.P13982638708453240373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (16 * (n + 1))

end

end A187389.P13982638708453240373

namespace A187389

/-- `A057364(16*(n+1))` -/
def P13982638708453240373.Spec : Prop :=
  ∀ n, P13982638708453240373.a n = A187389 (n + 1)

end A187389

/-! ## A187389.P1637824307935023244

`A008620(Δ[A008739(8*n)])`
-/

namespace A187389.P1637824307935023244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008739 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (n + 1) - f1 n).toNat

end

end A187389.P1637824307935023244

namespace A187389

/-- `A008620(Δ[A008739(8*n)])` -/
def P1637824307935023244.Spec : Prop :=
  ∀ n, P1637824307935023244.a n = A187389 (n + 1)

end A187389

/-! ## A187389.P96483699234202107

`floor(A057356(64*(n+1))/3)`
-/

namespace A187389.P96483699234202107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057356 (64 * (n + 1)) : ℚ) / 3⌋

end

end A187389.P96483699234202107

namespace A187389

/-- `floor(A057356(64*(n+1))/3)` -/
def P96483699234202107.Spec : Prop :=
  ∀ n, P96483699234202107.a n = A187389 (n + 1)

end A187389

/-! ## A187389.P1685952134943581871

`A002264(A057356(64*(n+1)))`
-/

namespace A187389.P1685952134943581871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A057356 (64 * (n + 1))).toNat

end

end A187389.P1685952134943581871

namespace A187389

/-- `A002264(A057356(64*(n+1)))` -/
def P1685952134943581871.Spec : Prop :=
  ∀ n, P1685952134943581871.a n = A187389 (n + 1)

end A187389

/-!
# A187390: a(n) = floor(s*n), where s = 1 + sqrt(7) - sqrt(6); complement of A187389.

The programs for A187390, the canonical program `A187390.P4348215000714749393` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187390 has offset 1).

The definition of A187390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187390.P4348215000714749393

`comp[A187389(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A187390

/-- `comp[A187389(n+1)-1]+1` -/
def P4348215000714749393.Spec : Prop :=
  ∀ n, (P4348215000714749393.a n : ℤ) = A187390 (n + 1)

theorem P4348215000714749393.correct : P4348215000714749393.Spec := by
  intro n
  simp only [A187390, Nat.add_sub_cancel]

end A187390

/-! ## A187390.P2264740997044921482

`A128444(A167614(n+1))%(2*(n+1))`
-/

namespace A187390.P2264740997044921482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128444 (A167614 (n + 1)).toNat) (2 * (n + 1) : ℤ)

end

end A187390.P2264740997044921482

namespace A187390

/-- `A128444(A167614(n+1))%(2*(n+1))` -/
def P2264740997044921482.Spec : Prop :=
  ∀ n, P2264740997044921482.a n = A187390 (n + 1)

end A187390

/-! ## A187390.P16651481117899392891

`A128444(A167614(n+1))-A008586(n+1)`
-/

namespace A187390.P16651481117899392891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128444 (A167614 (n + 1)).toNat - A008586 (n + 1)

end

end A187390.P16651481117899392891

namespace A187390

/-- `A128444(A167614(n+1))-A008586(n+1)` -/
def P16651481117899392891.Spec : Prop :=
  ∀ n, P16651481117899392891.a n = A187390 (n + 1)

end A187390

/-! ## A187390.P9245299059013579723

`floor(∑[A117768(n)/4])`
-/

namespace A187390.P9245299059013579723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117768 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187390.P9245299059013579723

namespace A187390

/-- `floor(∑[A117768(n)/4])` -/
def P9245299059013579723.Spec : Prop :=
  ∀ n, P9245299059013579723.a n = A187390 (n + 1)

end A187390

/-! ## A187390.P1684592495200057286

`A002265(∑[A117768(n)])`
-/

namespace A187390.P1684592495200057286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187390.P1684592495200057286

namespace A187390

/-- `A002265(∑[A117768(n)])` -/
def P1684592495200057286.Spec : Prop :=
  ∀ n, P1684592495200057286.a n = A187390 (n + 1)

end A187390

/-! ## A187390.P14716219730110202134

`A004526(A004526(∑[A117768(n)]))`
-/

namespace A187390.P14716219730110202134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A187390.P14716219730110202134

namespace A187390

/-- `A004526(A004526(∑[A117768(n)]))` -/
def P14716219730110202134.Spec : Prop :=
  ∀ n, P14716219730110202134.a n = A187390 (n + 1)

end A187390

/-! ## A187390.P6818303291740986274

`A083277(A009890(n))`
-/

namespace A187390.P6818303291740986274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A009890 n).toNat

end

end A187390.P6818303291740986274

namespace A187390

/-- `A083277(A009890(n))` -/
def P6818303291740986274.Spec : Prop :=
  ∀ n, P6818303291740986274.a n = A187390 (n + 1)

end A187390

/-! ## A187390.P8994543497824464433

`A083277(A009892(n))`
-/

namespace A187390.P8994543497824464433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A009892 n).toNat

end

end A187390.P8994543497824464433

namespace A187390

/-- `A083277(A009892(n))` -/
def P8994543497824464433.Spec : Prop :=
  ∀ n, P8994543497824464433.a n = A187390 (n + 1)

end A187390

/-!
# A187391: Floor(r*n), where r=1+sqrt(8)+sqrt(7); complement of A187392.

The programs for A187391, the canonical program `A187391.P4184659058899346799` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187391 has offset 1).

The definition of A187391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187391.P4184659058899346799

`floor((sqrt(7)+sqrt(8)+1)*(n+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187391

/-- `floor((sqrt(7)+sqrt(8)+1)*(n+1))` -/
def P4184659058899346799.Spec : Prop :=
  ∀ n, P4184659058899346799.a n = A187391 (n + 1)

theorem P4184659058899346799.correct : P4184659058899346799.Spec := by
  intro n
  simp only [A187391, Nat.add_sub_cancel]

end A187391

/-! ## A187391.P7169842247311224796

`A292644(Δ[2*A195161(n²+1+n)])`
-/

namespace A187391.P7169842247311224796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195161 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292644 (f1 (n + 1) - f1 n).toNat

end

end A187391.P7169842247311224796

namespace A187391

/-- `A292644(Δ[2*A195161(n²+1+n)])` -/
def P7169842247311224796.Spec : Prop :=
  ∀ n, P7169842247311224796.a n = A187391 (n + 1)

end A187391

/-! ## A187391.P8149640280277934867

`A292644(Δ[2*(n²+n)])%p?[A008177(n)]`
-/

namespace A187391.P8149640280277934867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292644 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A187391.P8149640280277934867

namespace A187391

/-- `A292644(Δ[2*(n²+n)])%p?[A008177(n)]` -/
def P8149640280277934867.Spec : Prop :=
  ∀ n, P8149640280277934867.a n = A187391 (n + 1)

end A187391

/-! ## A187391.P860707461169643314

`A186238(2*n+3)-A317934(p?[round(8*n/7)]²)`
-/

namespace A187391.P860707461169643314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186238 (2 * n + 3) - A317934 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A187391.P860707461169643314

namespace A187391

/-- `A186238(2*n+3)-A317934(p?[round(8*n/7)]²)` -/
def P860707461169643314.Spec : Prop :=
  ∀ n, P860707461169643314.a n = A187391 (n + 1)

end A187391

/-! ## A187391.P2249099604543886648

`A052146(A289134(n+2))`
-/

namespace A187391.P2249099604543886648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A289134 (n + 2)).toNat

end

end A187391.P2249099604543886648

namespace A187391

/-- `A052146(A289134(n+2))` -/
def P2249099604543886648.Spec : Prop :=
  ∀ n, P2249099604543886648.a n = A187391 (n + 1)

end A187391

/-!
# A187392: Floor(s*n), where s=1+sqrt(8)-sqrt(7); complement of A189391.

The programs for A187392, the canonical program `A187392.P9306323828828325239` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187392 has offset 1).

The definition of A187392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187392.P9306323828828325239

`floor((n+1)/(sqrt(7)+sqrt(8)))+1+n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187392

/-- `floor((n+1)/(sqrt(7)+sqrt(8)))+1+n` -/
def P9306323828828325239.Spec : Prop :=
  ∀ n, P9306323828828325239.a n = A187392 (n + 1)

theorem P9306323828828325239.correct : P9306323828828325239.Spec := by
  intro n
  simp only [A187392, Nat.add_sub_cancel]

end A187392

/-! ## A187392.P13882919642880427200

`A168201(A139614(n))`
-/

namespace A187392.P13882919642880427200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A139614 n).toNat

end

end A187392.P13882919642880427200

namespace A187392

/-- `A168201(A139614(n))` -/
def P13882919642880427200.Spec : Prop :=
  ∀ n, P13882919642880427200.a n = A187392 (n + 1)

end A187392

/-! ## A187392.P3393713652281013691

`A168201(7*A153080(n))`
-/

namespace A187392.P3393713652281013691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (7 * A153080 n).toNat

end

end A187392.P3393713652281013691

namespace A187392

/-- `A168201(7*A153080(n))` -/
def P3393713652281013691.Spec : Prop :=
  ∀ n, P3393713652281013691.a n = A187392 (n + 1)

end A187392

/-! ## A187392.P6455337745874797845

`floor(∑[root(A172515(n+1), 7)])`
-/

namespace A187392.P6455337745874797845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A172515 (n + 1) : ℝ) ^ (1 / (7 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187392.P6455337745874797845

namespace A187392

/-- `floor(∑[root(A172515(n+1), 7)])` -/
def P6455337745874797845.Spec : Prop :=
  ∀ n, P6455337745874797845.a n = A187392 (n + 1)

end A187392

/-! ## A187392.P4004149955392303702

`∑[A083888((2-n)²+2)]`
-/

namespace A187392.P4004149955392303702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 ((2 - (n : ℤ)) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187392.P4004149955392303702

namespace A187392

/-- `∑[A083888((2-n)²+2)]` -/
def P4004149955392303702.Spec : Prop :=
  ∀ n, P4004149955392303702.a n = A187392 (n + 1)

end A187392

/-! ## A187392.P5982455508852313950

`A110655(A313514(n)+gcd(2, A005843(n²)))`
-/

namespace A187392.P5982455508852313950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A313514 n + (Int.gcd 2 (A005843 (n ^ 2)) : ℤ)).toNat

end

end A187392.P5982455508852313950

namespace A187392

/-- `A110655(A313514(n)+gcd(2, A005843(n²)))` -/
def P5982455508852313950.Spec : Prop :=
  ∀ n, P5982455508852313950.a n = A187392 (n + 1)

end A187392

/-! ## A187392.P15803661373207486252

`lcm(A008621(A310396(n)), A049347(n²))`
-/

namespace A187392.P15803661373207486252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008621 (A310396 n).toNat) (A049347 (n ^ 2))

end

end A187392.P15803661373207486252

namespace A187392

/-- `lcm(A008621(A310396(n)), A049347(n²))` -/
def P15803661373207486252.Spec : Prop :=
  ∀ n, (P15803661373207486252.a n : ℤ) = A187392 (n + 1)

end A187392

/-! ## A187392.P16422659413506469597

`eq[A144600(n), A151933(n)]`
-/

namespace A187392.P16422659413506469597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187392.P16422659413506469597

namespace A187392

/-- `eq[A144600(n), A151933(n)]` -/
def P16422659413506469597.Spec : Prop :=
  ∀ n, (P16422659413506469597.a n : ℤ) = A187392 (n + 1)

end A187392

/-! ## A187392.P5689783412777615552

`A083277(A008014(n))`
-/

namespace A187392.P5689783412777615552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A008014 n).toNat

end

end A187392.P5689783412777615552

namespace A187392

/-- `A083277(A008014(n))` -/
def P5689783412777615552.Spec : Prop :=
  ∀ n, P5689783412777615552.a n = A187392 (n + 1)

end A187392

/-!
# A187393: a(n) = floor(r*n), where r = 4 + sqrt(8); complement of A187394.

The programs for A187393, the canonical program `A187393.P10803278105815627147` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187393 has offset 1).

The definition of A187393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187393.P10803278105815627147

`floor((n+1)*(4+sqrt(8)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187393

/-- `floor((n+1)*(4+sqrt(8)))` -/
def P10803278105815627147.Spec : Prop :=
  ∀ n, P10803278105815627147.a n = A187393 (n + 1)

theorem P10803278105815627147.correct : P10803278105815627147.Spec := by
  intro n
  simp only [A187393, Nat.add_sub_cancel]

end A187393

/-! ## A187393.P12659870835882458263

`∑[A018245(n+1)+2]`
-/

namespace A187393.P12659870835882458263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018245 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187393.P12659870835882458263

namespace A187393

/-- `∑[A018245(n+1)+2]` -/
def P12659870835882458263.Spec : Prop :=
  ∀ n, P12659870835882458263.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P4112115451599493102

`∑[A276858(n+1)+4]`
-/

namespace A187393.P4112115451599493102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276858 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187393.P4112115451599493102

namespace A187393

/-- `∑[A276858(n+1)+4]` -/
def P4112115451599493102.Spec : Prop :=
  ∀ n, P4112115451599493102.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P18382898691017167519

`A190337(n+1)+1+n`
-/

namespace A187393.P18382898691017167519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (n + 1) + 1 + (n : ℤ)

end

end A187393.P18382898691017167519

namespace A187393

/-- `A190337(n+1)+1+n` -/
def P18382898691017167519.Spec : Prop :=
  ∀ n, P18382898691017167519.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P16578843354848403002

`A197878(n+1)+2*(n+1)`
-/

namespace A187393.P16578843354848403002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197878 (n + 1) + (2 * (n + 1) : ℤ)

end

end A187393.P16578843354848403002

namespace A187393

/-- `A197878(n+1)+2*(n+1)` -/
def P16578843354848403002.Spec : Prop :=
  ∀ n, P16578843354848403002.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P6726628772171894497

`A022842(n+1)+4*(n+1)`
-/

namespace A187393.P6726628772171894497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) + (4 * (n + 1) : ℤ)

end

end A187393.P6726628772171894497

namespace A187393

/-- `A022842(n+1)+4*(n+1)` -/
def P6726628772171894497.Spec : Prop :=
  ∀ n, P6726628772171894497.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P17081599874023919484

`A184921(n+1)+2*n+3`
-/

namespace A187393.P17081599874023919484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184921 (n + 1) + (2 * n + 3 : ℤ)

end

end A187393.P17081599874023919484

namespace A187393

/-- `A184921(n+1)+2*n+3` -/
def P17081599874023919484.Spec : Prop :=
  ∀ n, P17081599874023919484.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P2884270031845641383

`A004771(n)-A187394(n+1)`
-/

namespace A187393.P2884270031845641383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - A187394 (n + 1)

end

end A187393.P2884270031845641383

namespace A187393

/-- `A004771(n)-A187394(n+1)` -/
def P2884270031845641383.Spec : Prop :=
  ∀ n, P2884270031845641383.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P8130799122115361795

`A017257(n)-A182766(n+1)`
-/

namespace A187393.P8130799122115361795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - A182766 (n + 1)

end

end A187393.P8130799122115361795

namespace A187393

/-- `A017257(n)-A182766(n+1)` -/
def P8130799122115361795.Spec : Prop :=
  ∀ n, P8130799122115361795.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P11134513006022535105

`A187338(n+1)+A003153(n+1)`
-/

namespace A187393.P11134513006022535105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (n + 1) + A003153 (n + 1)

end

end A187393.P11134513006022535105

namespace A187393

/-- `A187338(n+1)+A003153(n+1)` -/
def P11134513006022535105.Spec : Prop :=
  ∀ n, P11134513006022535105.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P16226087618035652068

`A189381(n+1)-A003151(n+1)`
-/

namespace A187393.P16226087618035652068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189381 (n + 1) - A003151 (n + 1)

end

end A187393.P16226087618035652068

namespace A187393

/-- `A189381(n+1)-A003151(n+1)` -/
def P16226087618035652068.Spec : Prop :=
  ∀ n, P16226087618035652068.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P14760514243105859453

`A330171(n+1)-A001952(n+1)`
-/

namespace A187393.P14760514243105859453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330171 (n + 1) - A001952 (n + 1)

end

end A187393.P14760514243105859453

namespace A187393

/-- `A330171(n+1)-A001952(n+1)` -/
def P14760514243105859453.Spec : Prop :=
  ∀ n, P14760514243105859453.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P14290870094449452954

`xor(A197879(n+1), A286927(n+1))`
-/

namespace A187393.P14290870094449452954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A197879 (n + 1)) (A286927 (n + 1))

end

end A187393.P14290870094449452954

namespace A187393

/-- `xor(A197879(n+1), A286927(n+1))` -/
def P14290870094449452954.Spec : Prop :=
  ∀ n, P14290870094449452954.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P13470249642365052081

`A008590(n+1)-A195178(n+1)`
-/

namespace A187393.P13470249642365052081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) - A195178 (n + 1)

end

end A187393.P13470249642365052081

namespace A187393

/-- `A008590(n+1)-A195178(n+1)` -/
def P13470249642365052081.Spec : Prop :=
  ∀ n, P13470249642365052081.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P1942271765845941604

`A001952(2*(n+1))`
-/

namespace A187393.P1942271765845941604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (2 * (n + 1))

end

end A187393.P1942271765845941604

namespace A187393

/-- `A001952(2*(n+1))` -/
def P1942271765845941604.Spec : Prop :=
  ∀ n, P1942271765845941604.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P17799717957347065136

`A288999(Δ[n²])+3`
-/

namespace A187393.P17799717957347065136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A187393.P17799717957347065136

namespace A187393

/-- `A288999(Δ[n²])+3` -/
def P17799717957347065136.Spec : Prop :=
  ∀ n, P17799717957347065136.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P17660992259611846945

`record[A001952(xor(1, n)+1)]`
-/

namespace A187393.P17660992259611846945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187393.P17660992259611846945

namespace A187393

/-- `record[A001952(xor(1, n)+1)]` -/
def P17660992259611846945.Spec : Prop :=
  ∀ n, P17660992259611846945.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P15695273851062513349

`A184922(2*(n+1))+1`
-/

namespace A187393.P15695273851062513349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (2 * (n + 1)) + 1

end

end A187393.P15695273851062513349

namespace A187393

/-- `A184922(2*(n+1))+1` -/
def P15695273851062513349.Spec : Prop :=
  ∀ n, P15695273851062513349.a n = A187393 (n + 1)

end A187393

/-! ## A187393.P6148562828393488523

`A286927(2*(n+1))/2`
-/

namespace A187393.P6148562828393488523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286927 (2 * (n + 1)) : ℚ) / 2

end

end A187393.P6148562828393488523

namespace A187393

/-- `A286927(2*(n+1))/2` -/
def P6148562828393488523.Spec : Prop :=
  ∀ n, P6148562828393488523.a n = (A187393 (n + 1) : ℚ)

end A187393

/-! ## A187393.P14153585844578370159

`∑[Δ[A001951(2*n)]+4]`
-/

namespace A187393.P14153585844578370159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187393.P14153585844578370159

namespace A187393

/-- `∑[Δ[A001951(2*n)]+4]` -/
def P14153585844578370159.Spec : Prop :=
  ∀ n, P14153585844578370159.a n = A187393 (n + 1)

end A187393

/-!
# A187394: a(n) = floor(s*n), where s = 4 - sqrt(8); complement of A187393.

The programs for A187394, the canonical program `A187394.P8217502889447136355` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187394 has offset 1).

The definition of A187394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187394.P8217502889447136355

`floor((n+1)*(4-sqrt(8)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187394

/-- `floor((n+1)*(4-sqrt(8)))` -/
def P8217502889447136355.Spec : Prop :=
  ∀ n, P8217502889447136355.a n = A187394 (n + 1)

theorem P8217502889447136355.correct : P8217502889447136355.Spec := by
  intro n
  simp only [A187394, Nat.add_sub_cancel]

end A187394

/-! ## A187394.P11471895685454511314

`∑[Δ[floor(n*(4-sqrt(8)))]!]`
-/

namespace A187394.P11471895685454511314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (4 - Real.sqrt (8 : ℝ))⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187394.P11471895685454511314

namespace A187394

/-- `∑[Δ[floor(n*(4-sqrt(8)))]!]` -/
def P11471895685454511314.Spec : Prop :=
  ∀ n, (P11471895685454511314.a n : ℤ) = A187394 (n + 1)

end A187394

/-! ## A187394.P9963313239194050878

`record[xor(3, n)]%floor((n+1)*sqrt(8))`
-/

namespace A187394.P9963313239194050878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) ⌊(n + 1 : ℝ) * Real.sqrt (8 : ℝ)⌋

end

end A187394.P9963313239194050878

namespace A187394

/-- `record[xor(3, n)]%floor((n+1)*sqrt(8))` -/
def P9963313239194050878.Spec : Prop :=
  ∀ n, P9963313239194050878.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P14807042308620926516

`a(n-1)-(Δ[floor(n*sqrt(8))]-4)` with `a(0)=1`
-/

namespace A187394.P14807042308620926516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n - 4)

end

end A187394.P14807042308620926516

namespace A187394

/-- `a(n-1)-(Δ[floor(n*sqrt(8))]-4)` -/
def P14807042308620926516.Spec : Prop :=
  ∀ n, P14807042308620926516.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P1454778377318748232

`A195178(n+1)-1`
-/

namespace A187394.P1454778377318748232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195178 (n + 1) - 1

end

end A187394.P1454778377318748232

namespace A187394

/-- `A195178(n+1)-1` -/
def P1454778377318748232.Spec : Prop :=
  ∀ n, P1454778377318748232.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P11880621690018840845

`A195177(n+1)+n`
-/

namespace A187394.P11880621690018840845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (n + 1) + (n : ℤ)

end

end A187394.P11880621690018840845

namespace A187394

/-- `A195177(n+1)+n` -/
def P11880621690018840845.Spec : Prop :=
  ∀ n, P11880621690018840845.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P8606983568095612162

`A182766(n+1)-(n+1)`
-/

namespace A187394.P8606983568095612162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182766 (n + 1) - (n + 1 : ℤ)

end

end A187394.P8606983568095612162

namespace A187394

/-- `A182766(n+1)-(n+1)` -/
def P8606983568095612162.Spec : Prop :=
  ∀ n, P8606983568095612162.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P4641668536373311749

`A195179(n+1)-(n+2)`
-/

namespace A187394.P4641668536373311749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195179 (n + 1) - (n + 2 : ℤ)

end

end A187394.P4641668536373311749

namespace A187394

/-- `A195179(n+1)-(n+2)` -/
def P4641668536373311749.Spec : Prop :=
  ∀ n, P4641668536373311749.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P6346861339668596798

`comp[A184922(2*(n+1))]+1`
-/

namespace A187394.P6346861339668596798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187394.P6346861339668596798

namespace A187394

/-- `comp[A184922(2*(n+1))]+1` -/
def P6346861339668596798.Spec : Prop :=
  ∀ n, (P6346861339668596798.a n : ℤ) = A187394 (n + 1)

end A187394

/-! ## A187394.P10228773488370405391

`comp[A289037(2*n+1)-3]`
-/

namespace A187394.P10228773488370405391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (2 * n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187394.P10228773488370405391

namespace A187394

/-- `comp[A289037(2*n+1)-3]` -/
def P10228773488370405391.Spec : Prop :=
  ∀ n, (P10228773488370405391.a n : ℤ) = A187394 (n + 1)

end A187394

/-! ## A187394.P547176775441510210

`comp[A190337(n+1)+n]+1`
-/

namespace A187394.P547176775441510210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187394.P547176775441510210

namespace A187394

/-- `comp[A190337(n+1)+n]+1` -/
def P547176775441510210.Spec : Prop :=
  ∀ n, (P547176775441510210.a n : ℤ) = A187394 (n + 1)

end A187394

/-! ## A187394.P11858082052064429513

`(4*n+3)%A022842(n+1)`
-/

namespace A187394.P11858082052064429513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * n + 3 : ℤ) (A022842 (n + 1))

end

end A187394.P11858082052064429513

namespace A187394

/-- `(4*n+3)%A022842(n+1)` -/
def P11858082052064429513.Spec : Prop :=
  ∀ n, P11858082052064429513.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P383233734007487175

`comp[A001952(2*(n+1))-1]+1`
-/

namespace A187394.P383233734007487175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187394.P383233734007487175

namespace A187394

/-- `comp[A001952(2*(n+1))-1]+1` -/
def P383233734007487175.Spec : Prop :=
  ∀ n, (P383233734007487175.a n : ℤ) = A187394 (n + 1)

end A187394

/-! ## A187394.P1372015305898516735

`comp[A003152(4*(n+1))-1]+1`
-/

namespace A187394.P1372015305898516735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (4 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187394.P1372015305898516735

namespace A187394

/-- `comp[A003152(4*(n+1))-1]+1` -/
def P1372015305898516735.Spec : Prop :=
  ∀ n, (P1372015305898516735.a n : ℤ) = A187394 (n + 1)

end A187394

/-! ## A187394.P5752988259380139548

`4*n+3-∑[A276858(n+1)]`
-/

namespace A187394.P5752988259380139548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187394.P5752988259380139548

namespace A187394

/-- `4*n+3-∑[A276858(n+1)]` -/
def P5752988259380139548.Spec : Prop :=
  ∀ n, P5752988259380139548.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P10077141713573391312

`2*2*(n+1)-A198263(n+1)`
-/

namespace A187394.P10077141713573391312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (2 * (n + 1)) : ℤ) - A198263 (n + 1)

end

end A187394.P10077141713573391312

namespace A187394

/-- `2*2*(n+1)-A198263(n+1)` -/
def P10077141713573391312.Spec : Prop :=
  ∀ n, P10077141713573391312.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P8657374599543582004

`comp[A188375(2*n+2*n+3)]+1`
-/

namespace A187394.P8657374599543582004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (2 * n + (2 * n + 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187394.P8657374599543582004

namespace A187394

/-- `comp[A188375(2*n+2*n+3)]+1` -/
def P8657374599543582004.Spec : Prop :=
  ∀ n, (P8657374599543582004.a n : ℤ) = A187394 (n + 1)

end A187394

/-! ## A187394.P17944170841886878980

`A004767(n)-A022842(n+1)`
-/

namespace A187394.P17944170841886878980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A022842 (n + 1)

end

end A187394.P17944170841886878980

namespace A187394

/-- `A004767(n)-A022842(n+1)` -/
def P17944170841886878980.Spec : Prop :=
  ∀ n, P17944170841886878980.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P426614808792496979

`A004771(n)-A187393(n+1)`
-/

namespace A187394.P426614808792496979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - A187393 (n + 1)

end

end A187394.P426614808792496979

namespace A187394

/-- `A004771(n)-A187393(n+1)` -/
def P426614808792496979.Spec : Prop :=
  ∀ n, P426614808792496979.a n = A187394 (n + 1)

end A187394

/-! ## A187394.P422162572232613109

`A016957(n)-A184921(n+1)`
-/

namespace A187394.P422162572232613109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n - A184921 (n + 1)

end

end A187394.P422162572232613109

namespace A187394

/-- `A016957(n)-A184921(n+1)` -/
def P422162572232613109.Spec : Prop :=
  ∀ n, P422162572232613109.a n = A187394 (n + 1)

end A187394

/-!
# A187395: a(n) = floor(r*n), where r = 4 + sqrt(10); complement of A187396.

The programs for A187395, the canonical program `A187395.P1363540998234301676` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187395 has offset 1).

The definition of A187395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187395.P11638324152478095560

`floor((sqrt(10)+4)*(n+1))`
-/

namespace A187395.P11638324152478095560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (10 : ℝ) + 4) * (n + 1 : ℝ)⌋

end

end A187395.P11638324152478095560

namespace A187395

/-- `floor((sqrt(10)+4)*(n+1))` -/
def P11638324152478095560.Spec : Prop :=
  ∀ n, P11638324152478095560.a n = A187395 (n + 1)

end A187395

/-! ## A187395.P1363540998234301676

`∑[A081168(n)+4]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187395

/-- `∑[A081168(n)+4]` -/
def P1363540998234301676.Spec : Prop :=
  ∀ n, P1363540998234301676.a n = A187395 (n + 1)

theorem P1363540998234301676.correct : P1363540998234301676.Spec := by
  intro n
  simp only [A187395, Nat.add_sub_cancel]

end A187395

/-! ## A187395.P2374393864346306118

`∑[Δ[A198265(n)]+3]+n`
-/

namespace A187395.P2374393864346306118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187395.P2374393864346306118

namespace A187395

/-- `∑[Δ[A198265(n)]+3]+n` -/
def P2374393864346306118.Spec : Prop :=
  ∀ n, P2374393864346306118.a n = A187395 (n + 1)

end A187395

/-! ## A187395.P856433806844739803

`A198265(n+1)+record[xor(3, n)]`
-/

namespace A187395.P856433806844739803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A187395.P856433806844739803

namespace A187395

/-- `A198265(n+1)+record[xor(3, n)]` -/
def P856433806844739803.Spec : Prop :=
  ∀ n, P856433806844739803.a n = A187395 (n + 1)

end A187395

/-! ## A187395.P7203819251638426064

`A177102(n+1)+4*(n+1)`
-/

namespace A187395.P7203819251638426064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1) + (4 * (n + 1) : ℤ)

end

end A187395.P7203819251638426064

namespace A187395

/-- `A177102(n+1)+4*(n+1)` -/
def P7203819251638426064.Spec : Prop :=
  ∀ n, P7203819251638426064.a n = A187395 (n + 1)

end A187395

/-! ## A187395.P6585215165876978812

`A187396(n+1)+6*(n+1)`
-/

namespace A187395.P6585215165876978812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187396 (n + 1) + (6 * (n + 1) : ℤ)

end

end A187395.P6585215165876978812

namespace A187395

/-- `A187396(n+1)+6*(n+1)` -/
def P6585215165876978812.Spec : Prop :=
  ∀ n, P6585215165876978812.a n = A187395 (n + 1)

end A187395

/-! ## A187395.P14408532948247647410

`A198265(n+1)+A004767(n)`
-/

namespace A187395.P14408532948247647410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 (n + 1) + A004767 n

end

end A187395.P14408532948247647410

namespace A187395

/-- `A198265(n+1)+A004767(n)` -/
def P14408532948247647410.Spec : Prop :=
  ∀ n, P14408532948247647410.a n = A187395 (n + 1)

end A187395

/-! ## A187395.P18430493194190497134

`A329830(3*(n+1))`
-/

namespace A187395.P18430493194190497134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329830 (3 * (n + 1))

end

end A187395.P18430493194190497134

namespace A187395

/-- `A329830(3*(n+1))` -/
def P18430493194190497134.Spec : Prop :=
  ∀ n, P18430493194190497134.a n = A187395 (n + 1)

end A187395

/-! ## A187395.P8932064572231681296

`∑[A081168(n)]-A131738(A004767(n))`
-/

namespace A187395.P8932064572231681296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131738 (A004767 n).toNat

end

end A187395.P8932064572231681296

namespace A187395

/-- `∑[A081168(n)]-A131738(A004767(n))` -/
def P8932064572231681296.Spec : Prop :=
  ∀ n, P8932064572231681296.a n = A187395 (n + 1)

end A187395

/-!
# A187396: a(n) = floor(s*n), where s =-2 + sqrt(10); complement of A187395.

The programs for A187396, the canonical program `A187396.P13224673495148614598` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187396 has offset 1).

The definition of A187396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187396.P4486141358911114739

`floor((n+1)*(sqrt(10)-2))`
-/

namespace A187396.P4486141358911114739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.sqrt (10 : ℝ) - 2)⌋

end

end A187396.P4486141358911114739

namespace A187396

/-- `floor((n+1)*(sqrt(10)-2))` -/
def P4486141358911114739.Spec : Prop :=
  ∀ n, P4486141358911114739.a n = A187396 (n + 1)

end A187396

/-! ## A187396.P17572849246681687683

`∑[10%Δ[floor(n*sqrt(10))]]`
-/

namespace A187396.P17572849246681687683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (10 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187396.P17572849246681687683

namespace A187396

/-- `∑[10%Δ[floor(n*sqrt(10))]]` -/
def P17572849246681687683.Spec : Prop :=
  ∀ n, P17572849246681687683.a n = A187396 (n + 1)

end A187396

/-! ## A187396.P17495674666166703382

`floor((n+1)*sqrt(10))%(2*(n+1))`
-/

namespace A187396.P17495674666166703382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (10 : ℝ)⌋ (2 * (n + 1) : ℤ)

end

end A187396.P17495674666166703382

namespace A187396

/-- `floor((n+1)*sqrt(10))%(2*(n+1))` -/
def P17495674666166703382.Spec : Prop :=
  ∀ n, P17495674666166703382.a n = A187396 (n + 1)

end A187396

/-! ## A187396.P6535391565925395542

`Δ[floor(n*sqrt(10))]-(2-a(n-1))` with `a(0)=1`
-/

namespace A187396.P6535391565925395542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (10 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - (2 - a (n - 1))

end

end A187396.P6535391565925395542

namespace A187396

/-- `Δ[floor(n*sqrt(10))]-(2-a(n-1))` -/
def P6535391565925395542.Spec : Prop :=
  ∀ n, P6535391565925395542.a n = A187396 (n + 1)

end A187396

/-! ## A187396.P13224673495148614598

`∑[A081168(n)-2]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187396

/-- `∑[A081168(n)-2]` -/
def P13224673495148614598.Spec : Prop :=
  ∀ n, P13224673495148614598.a n = A187396 (n + 1)

theorem P13224673495148614598.correct : P13224673495148614598.Spec := by
  intro n
  simp only [A187396, Nat.add_sub_cancel]

end A187396

/-! ## A187396.P7537090827021884386

`∑[A001222(Δ[floor(n*sqrt(10))])]`
-/

namespace A187396.P7537090827021884386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (10 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187396.P7537090827021884386

namespace A187396

/-- `∑[A001222(Δ[floor(n*sqrt(10))])]` -/
def P7537090827021884386.Spec : Prop :=
  ∀ n, P7537090827021884386.a n = A187396 (n + 1)

end A187396

/-! ## A187396.P9925669615876580430

`∑[A007318(Δ[floor(n*sqrt(10))])]`
-/

namespace A187396.P9925669615876580430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (10 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187396.P9925669615876580430

namespace A187396

/-- `∑[A007318(Δ[floor(n*sqrt(10))])]` -/
def P9925669615876580430.Spec : Prop :=
  ∀ n, P9925669615876580430.a n = A187396 (n + 1)

end A187396

/-! ## A187396.P6964449953438917556

`A177102(n+1)-2*(n+1)`
-/

namespace A187396.P6964449953438917556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1) - (2 * (n + 1) : ℤ)

end

end A187396.P6964449953438917556

namespace A187396

/-- `A177102(n+1)-2*(n+1)` -/
def P6964449953438917556.Spec : Prop :=
  ∀ n, P6964449953438917556.a n = A187396 (n + 1)

end A187396

/-! ## A187396.P4363075552515365122

`A198265(n+1)-(2*n+3)`
-/

namespace A187396.P4363075552515365122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 (n + 1) - (2 * n + 3 : ℤ)

end

end A187396.P4363075552515365122

namespace A187396

/-- `A198265(n+1)-(2*n+3)` -/
def P4363075552515365122.Spec : Prop :=
  ∀ n, P4363075552515365122.a n = A187396 (n + 1)

end A187396

/-! ## A187396.P17925276589905970807

`A000027(A177102(n+1)-A000027(n+1)-A000027(n+1))`
-/

namespace A187396.P17925276589905970807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A177102 (n + 1) - A000027 (n + 1) - A000027 (n + 1)).toNat

end

end A187396.P17925276589905970807

namespace A187396

/-- `A000027(A177102(n+1)-A000027(n+1)-A000027(n+1))` -/
def P17925276589905970807.Spec : Prop :=
  ∀ n, P17925276589905970807.a n = A187396 (n + 1)

end A187396

/-! ## A187396.P12514989447940134406

`A131738(2*n+1)+∑[A081168(n)]`
-/

namespace A187396.P12514989447940134406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187396.P12514989447940134406

namespace A187396

/-- `A131738(2*n+1)+∑[A081168(n)]` -/
def P12514989447940134406.Spec : Prop :=
  ∀ n, P12514989447940134406.a n = A187396 (n + 1)

end A187396

/-!
# A187398: Numbers divisible by at least three of their digits, all different and >1.

The programs for A187398, there is no canonical definition to state claims against.
-/

/-! ## A187398.P2033637939874513856

`A116960(A043320(n+1)+11)`
-/

namespace A187398.P2033637939874513856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (A043320 (n + 1) + 11).toNat

end

end A187398.P2033637939874513856

/-! ## A187398.P6417538556570936830

`A116960(A044917(n+1)+11)`
-/

namespace A187398.P6417538556570936830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (A044917 (n + 1) + 11).toNat

end

end A187398.P6417538556570936830

/-! ## A187398.P450975137292665277

`A116960(A161953(n+1)+11)`
-/

namespace A187398.P450975137292665277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (A161953 (n + 1) + 11).toNat

end

end A187398.P450975137292665277

/-! ## A187398.P16774897793578549825

`A116960(A187829(n+1)+11)`
-/

namespace A187398.P16774897793578549825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (A187829 (n + 1) + 11).toNat

end

end A187398.P16774897793578549825

/-! ## A187398.P2845056474932212016

`A233583(A116960(n+12)+1)`
-/

namespace A187398.P2845056474932212016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A116960 (n + 12) + 1).toNat

end

end A187398.P2845056474932212016

