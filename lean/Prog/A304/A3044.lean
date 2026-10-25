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
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A304400: O.g.f. A(x) satisfies: [x^n] exp( n^2 * x*A(x) ) * (2 - A(x)) = 0 for n > 0.

The programs for A304400, there is no canonical definition to state claims against.
-/

/-! ## A304400.P16613390294854696717

`A239758(n)+A048152(A239754(n))`
-/

namespace A304400.P16613390294854696717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239758 n + A048152 (A239754 n).toNat

end

end A304400.P16613390294854696717

/-!
# A304402: O.g.f. A(x) satisfies: [x^n] exp( n^2 * x*A(x) ) / A(x) = 0 for n > 0.

The programs for A304402, there is no canonical definition to state claims against.
-/

/-! ## A304402.P49029921226892996

`A005838(∏[sqrt(n²+1)]²-n)`
-/

namespace A304402.P49029921226892996
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n ^ 2 + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005838 (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℝ))).toNat

end

end A304402.P49029921226892996

/-!
# A304403: G.f. A(x) satisfies: [x^n] A(x) * (1+x)^(n*(n-1)/2) = [x^n] (1+x)^(n*(n+1)/2) for n >= 0.

The programs for A304403, there is no canonical definition to state claims against.
-/

/-! ## A304403.P4010532920502597352

`A001057(A080894(n))`
-/

namespace A304403.P4010532920502597352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A080894 n).toNat

end

end A304403.P4010532920502597352

/-! ## A304403.P7861926730013702619

`A008620(A201996(n))`
-/

namespace A304403.P7861926730013702619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A201996 n).toNat

end

end A304403.P7861926730013702619

/-!
# A304404: If n = Product (p_j^k_j) then a(n) = Product (n/p_j^k_j).

The programs for A304404, the canonical program `A304404.P2880738735894886889` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304404 has offset 1).

The definition of A304404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062509, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304404.P2880738735894886889

`A062509(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304404

/-- `A062509(n+1)/(n+1)` -/
def P2880738735894886889.Spec : Prop :=
  ∀ n, P2880738735894886889.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P13522784407328326355

`∏{p}[n+1, lcm(#, n+1)]/(n+1)`
-/

namespace A304404.P13522784407328326355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A304404.P13522784407328326355

namespace A304404

/-- `∏{p}[n+1, lcm(#, n+1)]/(n+1)` -/
def P13522784407328326355.Spec : Prop :=
  ∀ n, P13522784407328326355.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P13255939083540097298

`(n+1)^A297155(n+1)`
-/

namespace A304404.P13255939083540097298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A297155 (n + 1) : ℤ)

end

end A304404.P13255939083540097298

namespace A304404

/-- `(n+1)^A297155(n+1)` -/
def P13255939083540097298.Spec : Prop :=
  ∀ n, P13255939083540097298.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P16893641660773278649

`(n+1)^(A001221(n+1)-1)`
-/

namespace A304404.P16893641660773278649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001221 (n + 1) - 1 : ℤ)

end

end A304404.P16893641660773278649

namespace A304404

/-- `(n+1)^(A001221(n+1)-1)` -/
def P16893641660773278649.Spec : Prop :=
  ∀ n, P16893641660773278649.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P4435498591742159894

`(n+1)^(A083399(n+1)-2)`
-/

namespace A304404.P4435498591742159894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A083399 (n + 1) - 2 : ℤ)

end

end A304404.P4435498591742159894

namespace A304404

/-- `(n+1)^(A083399(n+1)-2)` -/
def P4435498591742159894.Spec : Prop :=
  ∀ n, P4435498591742159894.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P3840076541922794234

`(n+1)^(n-A378993(n+1))`
-/

namespace A304404.P3840076541922794234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - A378993 (n + 1) : ℤ)

end

end A304404.P3840076541922794234

namespace A304404

/-- `(n+1)^(n-A378993(n+1))` -/
def P3840076541922794234.Spec : Prop :=
  ∀ n, P3840076541922794234.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P8703276194658167053

`(n+1)^(A229109(n+1)-(n+2))`
-/

namespace A304404.P8703276194658167053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A229109 (n + 1) - (n + 2 : ℤ) : ℤ)

end

end A304404.P8703276194658167053

namespace A304404

/-- `(n+1)^(A229109(n+1)-(n+2))` -/
def P8703276194658167053.Spec : Prop :=
  ∀ n, P8703276194658167053.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P7412949122475721407

`(n+1)^(∑{p}[n+1, A001222(#)]-1)`
-/

namespace A304404.P7412949122475721407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A001222 p - 1 : ℤ)

end

end A304404.P7412949122475721407

namespace A304404

/-- `(n+1)^(∑{p}[n+1, A001222(#)]-1)` -/
def P7412949122475721407.Spec : Prop :=
  ∀ n, P7412949122475721407.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P5719123509798366541

`(n+1)^(A001222(∏{p}[n+1, #])-1)`
-/

namespace A304404.P5719123509798366541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - 1 : ℤ)

end

end A304404.P5719123509798366541

namespace A304404

/-- `(n+1)^(A001222(∏{p}[n+1, #])-1)` -/
def P5719123509798366541.Spec : Prop :=
  ∀ n, P5719123509798366541.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P5104383138986692632

`∏{p}[n+1, A001221(#)+n]/(n+1)`
-/

namespace A304404.P5104383138986692632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (A001221 p + (n : ℤ)) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A304404.P5104383138986692632

namespace A304404

/-- `∏{p}[n+1, A001221(#)+n]/(n+1)` -/
def P5104383138986692632.Spec : Prop :=
  ∀ n, P5104383138986692632.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P4459907165354392405

`∏{p}[n+1, n-A008683(#)]/(n+1)`
-/

namespace A304404.P4459907165354392405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - A008683 p) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A304404.P4459907165354392405

namespace A304404

/-- `∏{p}[n+1, n-A008683(#)]/(n+1)` -/
def P4459907165354392405.Spec : Prop :=
  ∀ n, P4459907165354392405.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P2858165860064985139

`(n+1)^A001221(C(n+1, n))/(n+1)`
-/

namespace A304404.P2858165860064985139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001221 (Nat.choose (n + 1) n) : ℤ) / (n + 1 : ℚ)

end

end A304404.P2858165860064985139

namespace A304404

/-- `(n+1)^A001221(C(n+1, n))/(n+1)` -/
def P2858165860064985139.Spec : Prop :=
  ∀ n, P2858165860064985139.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P5785933745204590575

`∏{p}[n+1, A000005(#)+n-1]/(n+1)`
-/

namespace A304404.P5785933745204590575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (A000005 p + ((n : ℤ) - 1)) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A304404.P5785933745204590575

namespace A304404

/-- `∏{p}[n+1, A000005(#)+n-1]/(n+1)` -/
def P5785933745204590575.Spec : Prop :=
  ∀ n, P5785933745204590575.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P5399371314587739490

`A205959(n+1)/A003557(n+1)`
-/

namespace A304404.P5399371314587739490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205959 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A304404.P5399371314587739490

namespace A304404

/-- `A205959(n+1)/A003557(n+1)` -/
def P5399371314587739490.Spec : Prop :=
  ∀ n, P5399371314587739490.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P6193226683204178593

`A290480(n+1)/A062513(n+1)`
-/

namespace A304404.P6193226683204178593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290480 (n + 1) : ℚ) / (A062513 (n + 1) : ℚ)

end

end A304404.P6193226683204178593

namespace A304404

/-- `A290480(n+1)/A062513(n+1)` -/
def P6193226683204178593.Spec : Prop :=
  ∀ n, P6193226683204178593.a n = (A304404 (n + 1) : ℚ)

end A304404

/-! ## A304404.P12593350357492112695

`∏{p}[A028234(n+1), A028234(#)+n]`
-/

namespace A304404.P12593350357492112695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A028234 p + (n : ℤ))

end

end A304404.P12593350357492112695

namespace A304404

/-- `∏{p}[A028234(n+1), A028234(#)+n]` -/
def P12593350357492112695.Spec : Prop :=
  ∀ n, P12593350357492112695.a n = A304404 (n + 1)

end A304404

/-! ## A304404.P10059586458088187077

`∏{p}[A051119(n+1), A051119(#)+n]`
-/

namespace A304404.P10059586458088187077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A051119 p + (n : ℤ))

end

end A304404.P10059586458088187077

namespace A304404

/-- `∏{p}[A051119(n+1), A051119(#)+n]` -/
def P10059586458088187077.Spec : Prop :=
  ∀ n, P10059586458088187077.a n = A304404 (n + 1)

end A304404

/-! ## A304404.P12268911857208967442

`∏{p}[A284600(n+1), A284600(#)+n]`
-/

namespace A304404.P12268911857208967442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A284600 p + (n : ℤ))

end

end A304404.P12268911857208967442

namespace A304404

/-- `∏{p}[A284600(n+1), A284600(#)+n]` -/
def P12268911857208967442.Spec : Prop :=
  ∀ n, P12268911857208967442.a n = A304404 (n + 1)

end A304404

/-! ## A304404.P15908197706921145680

`∏{p}[A293810(n+1), A293810(#)+n]`
-/

namespace A304404.P15908197706921145680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A293810 p + (n : ℤ))

end

end A304404.P15908197706921145680

namespace A304404

/-- `∏{p}[A293810(n+1), A293810(#)+n]` -/
def P15908197706921145680.Spec : Prop :=
  ∀ n, P15908197706921145680.a n = A304404 (n + 1)

end A304404

/-! ## A304404.P14955624329867814608

`(n+1)^(A001222(A007947(n+1))-1)`
-/

namespace A304404.P14955624329867814608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001222 (A007947 (n + 1)).toNat - 1 : ℤ)

end

end A304404.P14955624329867814608

namespace A304404

/-- `(n+1)^(A001222(A007947(n+1))-1)` -/
def P14955624329867814608.Spec : Prop :=
  ∀ n, P14955624329867814608.a n = (A304404 (n + 1) : ℚ)

end A304404

/-!
# A304405: Number of partitions of n in which the sequence of the sum of the same summands is nondecreasing.

The programs for A304405, there is no canonical definition to state claims against.
-/

/-! ## A304405.P9379123754877390654

`A000041(n)-A357878(n)`
-/

namespace A304405.P9379123754877390654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A357878 n

end

end A304405.P9379123754877390654

/-! ## A304405.P16970835372106984629

`A000065(n)+1-A357878(n)`
-/

namespace A304405.P16970835372106984629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A357878 n)

end

end A304405.P16970835372106984629

/-! ## A304405.P6191865607463328878

`A119620(2*n)-A357878(n)`
-/

namespace A304405.P6191865607463328878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A357878 n

end

end A304405.P6191865607463328878

/-! ## A304405.P13873233387862098706

`A035363(A005843(n))-A357878(n)`
-/

namespace A304405.P13873233387862098706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 n).toNat - A357878 n

end

end A304405.P13873233387862098706

/-! ## A304405.P14499880353616470020

`A239312(n)+A370320(n)-A357878(n)`
-/

namespace A304405.P14499880353616470020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n + (A370320 n - A357878 n)

end

end A304405.P14499880353616470020

/-!
# A304406: Number of partitions of n in which the sequence of the sum of the same summands is nonincreasing.

The programs for A304406, there is no canonical definition to state claims against.
-/

/-! ## A304406.P9339084126548347166

`A000041(n)-A357865(n)`
-/

namespace A304406.P9339084126548347166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A357865 n

end

end A304406.P9339084126548347166

/-! ## A304406.P12346392144588799874

`A213598(n)-A357865(n)`
-/

namespace A304406.P12346392144588799874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A357865 n

end

end A304406.P12346392144588799874

/-! ## A304406.P3260911950182437437

`∑[A002865(n)]-A357865(n)`
-/

namespace A304406.P3260911950182437437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A357865 n

end

end A304406.P3260911950182437437

/-! ## A304406.P4607196358350410634

`A027187(n)+A027193(n)-A357865(n)`
-/

namespace A304406.P4607196358350410634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A357865 n)

end

end A304406.P4607196358350410634

/-! ## A304406.P12740254973675775583

`A001055(2^n)-A357865(n)`
-/

namespace A304406.P12740254973675775583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (2 ^ n) - A357865 n

end

end A304406.P12740254973675775583

/-!
# A304407: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)*k_j).

The programs for A304407, the canonical program `A304407.P14639406114947155212` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304407 has offset 1).

The definition of A304407 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304407.P14639406114947155212

`A005361(n+1)*A173557(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A304407

/-- `A005361(n+1)*A173557(n+1)` -/
def P14639406114947155212.Spec : Prop :=
  ∀ n, P14639406114947155212.a n = A304407 (n + 1)

theorem P14639406114947155212.correct : P14639406114947155212.Spec := by
  intro n
  simp only [A304407, Nat.add_sub_cancel]

end A304407

/-! ## A304407.P13401609440733492358

`A005361(n+1)*abs(A023900(n+1))`
-/

namespace A304407.P13401609440733492358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * |A023900 (n + 1)|

end

end A304407.P13401609440733492358

namespace A304407

/-- `A005361(n+1)*abs(A023900(n+1))` -/
def P13401609440733492358.Spec : Prop :=
  ∀ n, P13401609440733492358.a n = A304407 (n + 1)

end A304407

/-! ## A304407.P14361205432083567392

`A005361(n+1)*A000010(A007947(n+1))`
-/

namespace A304407.P14361205432083567392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A000010 (A007947 (n + 1)).toNat

end

end A304407.P14361205432083567392

namespace A304407

/-- `A005361(n+1)*A000010(A007947(n+1))` -/
def P14361205432083567392.Spec : Prop :=
  ∀ n, P14361205432083567392.a n = A304407 (n + 1)

end A304407

/-! ## A304407.P12571037962439173863

`∏{p}[n+1, #-1]*∏{e}[n+1, #]`
-/

namespace A304407.P12571037962439173863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A304407.P12571037962439173863

namespace A304407

/-- `∏{p}[n+1, #-1]*∏{e}[n+1, #]` -/
def P12571037962439173863.Spec : Prop :=
  ∀ n, P12571037962439173863.a n = A304407 (n + 1)

end A304407

/-! ## A304407.P12505098044507589925

`A000005((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A304407.P12505098044507589925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A304407.P12505098044507589925

namespace A304407

/-- `A000005((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]` -/
def P12505098044507589925.Spec : Prop :=
  ∀ n, P12505098044507589925.a n = A304407 (n + 1)

end A304407

/-! ## A304407.P13343814483335373133

`A000005((n+1)/∏{p}[n+1, #])*A173557(n+1)`
-/

namespace A304407.P13343814483335373133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A173557 (n + 1)

end

end A304407.P13343814483335373133

namespace A304407

/-- `A000005((n+1)/∏{p}[n+1, #])*A173557(n+1)` -/
def P13343814483335373133.Spec : Prop :=
  ∀ n, P13343814483335373133.a n = A304407 (n + 1)

end A304407

/-! ## A304407.P9911539307466633860

`A000005(A003557(n+1))*A173557(n+1)`
-/

namespace A304407.P9911539307466633860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A173557 (n + 1)

end

end A304407.P9911539307466633860

namespace A304407

/-- `A000005(A003557(n+1))*A173557(n+1)` -/
def P9911539307466633860.Spec : Prop :=
  ∀ n, P9911539307466633860.a n = A304407 (n + 1)

end A304407

/-! ## A304407.P8511846651380627797

`A000005(A292589(n+1))*A173557(n+1)`
-/

namespace A304407.P8511846651380627797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A292589 (n + 1)).toNat * A173557 (n + 1)

end

end A304407.P8511846651380627797

namespace A304407

/-- `A000005(A292589(n+1))*A173557(n+1)` -/
def P8511846651380627797.Spec : Prop :=
  ∀ n, P8511846651380627797.a n = A304407 (n + 1)

end A304407

/-! ## A304407.P6898880123728445169

`A000010(n+1)/A003557(n+1)*A005361(n+1)`
-/

namespace A304407.P6898880123728445169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A005361 (n + 1) : ℚ)

end

end A304407.P6898880123728445169

namespace A304407

/-- `A000010(n+1)/A003557(n+1)*A005361(n+1)` -/
def P6898880123728445169.Spec : Prop :=
  ∀ n, P6898880123728445169.a n = (A304407 (n + 1) : ℚ)

end A304407

/-! ## A304407.P6003468668962482297

`A000026(n+1)/A007947(n+1)*A173557(n+1)`
-/

namespace A304407.P6003468668962482297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A304407.P6003468668962482297

namespace A304407

/-- `A000026(n+1)/A007947(n+1)*A173557(n+1)` -/
def P6003468668962482297.Spec : Prop :=
  ∀ n, P6003468668962482297.a n = (A304407 (n + 1) : ℚ)

end A304407

/-! ## A304407.P5361340953461029934

`A005361(n+1)/A001615(n+1)*A345052(n+1)`
-/

namespace A304407.P5361340953461029934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A345052 (n + 1) : ℚ)

end

end A304407.P5361340953461029934

namespace A304407

/-- `A005361(n+1)/A001615(n+1)*A345052(n+1)` -/
def P5361340953461029934.Spec : Prop :=
  ∀ n, P5361340953461029934.a n = (A304407 (n + 1) : ℚ)

end A304407

/-! ## A304407.P12753572263280800618

`A005361(n+1)*A047994(n+1)/A335341(n+1)`
-/

namespace A304407.P12753572263280800618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) * A047994 (n + 1) : ℚ) / (A335341 (n + 1) : ℚ)

end

end A304407.P12753572263280800618

namespace A304407

/-- `A005361(n+1)*A047994(n+1)/A335341(n+1)` -/
def P12753572263280800618.Spec : Prop :=
  ∀ n, P12753572263280800618.a n = (A304407 (n + 1) : ℚ)

end A304407

/-! ## A304407.P13349084481487993884

`A000026(n+1)*A304408(n+1)/A304409(n+1)`
-/

namespace A304407.P13349084481487993884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) * A304408 (n + 1) : ℚ) / (A304409 (n + 1) : ℚ)

end

end A304407.P13349084481487993884

namespace A304407

/-- `A000026(n+1)*A304408(n+1)/A304409(n+1)` -/
def P13349084481487993884.Spec : Prop :=
  ∀ n, P13349084481487993884.a n = (A304407 (n + 1) : ℚ)

end A304407

/-! ## A304407.P10602742673575963765

`A304408(n+1)*A304411(n+1)/A304412(n+1)`
-/

namespace A304407.P10602742673575963765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304408 (n + 1) * A304411 (n + 1) : ℚ) / (A304412 (n + 1) : ℚ)

end

end A304407.P10602742673575963765

namespace A304407

/-- `A304408(n+1)*A304411(n+1)/A304412(n+1)` -/
def P10602742673575963765.Spec : Prop :=
  ∀ n, P10602742673575963765.a n = (A304407 (n + 1) : ℚ)

end A304407

/-! ## A304407.P2328684068096370186

`A000005(A000010(n+1)/A173557(n+1))*A173557(n+1)`
-/

namespace A304407.P2328684068096370186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ))).toNat * A173557 (n + 1)

end

end A304407.P2328684068096370186

namespace A304407

/-- `A000005(A000010(n+1)/A173557(n+1))*A173557(n+1)` -/
def P2328684068096370186.Spec : Prop :=
  ∀ n, P2328684068096370186.a n = A304407 (n + 1)

end A304407

/-! ## A304407.P12841569697754417568

`A304117(A290641(n+1))`
-/

namespace A304407.P12841569697754417568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304117 (A290641 (n + 1)).toNat

end

end A304407.P12841569697754417568

namespace A304407

/-- `A304117(A290641(n+1))` -/
def P12841569697754417568.Spec : Prop :=
  ∀ n, P12841569697754417568.a n = A304407 (n + 1)

end A304407

/-! ## A304407.P7872977182565745190

`A396336(A064549(n+1))`
-/

namespace A304407.P7872977182565745190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396336 (A064549 (n + 1)).toNat

end

end A304407.P7872977182565745190

namespace A304407

/-- `A396336(A064549(n+1))` -/
def P7872977182565745190.Spec : Prop :=
  ∀ n, P7872977182565745190.a n = A304407 (n + 1)

end A304407

/-!
# A304408: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)*(k_j + 1)).

The programs for A304408, the canonical program `A304408.P687258008927875395` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304408 has offset 1).

The definition of A304408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304408.P687258008927875395

`A000005(n+1)*A173557(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A304408

/-- `A000005(n+1)*A173557(n+1)` -/
def P687258008927875395.Spec : Prop :=
  ∀ n, P687258008927875395.a n = A304408 (n + 1)

theorem P687258008927875395.correct : P687258008927875395.Spec := by
  intro n
  simp only [A304408, Nat.add_sub_cancel]

end A304408

/-! ## A304408.P5661775406345535053

`A000005(n+1)*abs(A023900(n+1))`
-/

namespace A304408.P5661775406345535053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * |A023900 (n + 1)|

end

end A304408.P5661775406345535053

namespace A304408

/-- `A000005(n+1)*abs(A023900(n+1))` -/
def P5661775406345535053.Spec : Prop :=
  ∀ n, P5661775406345535053.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P17482707001731049062

`A000005(n+1)*A000010(A007947(n+1))`
-/

namespace A304408.P17482707001731049062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (A007947 (n + 1)).toNat

end

end A304408.P17482707001731049062

namespace A304408

/-- `A000005(n+1)*A000010(A007947(n+1))` -/
def P17482707001731049062.Spec : Prop :=
  ∀ n, P17482707001731049062.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P8398659019173910070

`∏{p}[n+1, #-1]*∏{e}[n+1, #+1]`
-/

namespace A304408.P8398659019173910070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A304408.P8398659019173910070

namespace A304408

/-- `∏{p}[n+1, #-1]*∏{e}[n+1, #+1]` -/
def P8398659019173910070.Spec : Prop :=
  ∀ n, P8398659019173910070.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P17357444606239547606

`∏{e}[n+1, #+1]*A152958(∏{p}[n+1, #])`
-/

namespace A304408.P17357444606239547606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A152958 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A304408.P17357444606239547606

namespace A304408

/-- `∏{e}[n+1, #+1]*A152958(∏{p}[n+1, #])` -/
def P17357444606239547606.Spec : Prop :=
  ∀ n, P17357444606239547606.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P15810887742505464669

`Δ[A006218(n)]*A173557(n+1)`
-/

namespace A304408.P15810887742505464669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A173557 (n + 1)

end

end A304408.P15810887742505464669

namespace A304408

/-- `Δ[A006218(n)]*A173557(n+1)` -/
def P15810887742505464669.Spec : Prop :=
  ∀ n, P15810887742505464669.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P14462219322998211031

`A062355(n+1)/A003557(n+1)`
-/

namespace A304408.P14462219322998211031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A304408.P14462219322998211031

namespace A304408

/-- `A062355(n+1)/A003557(n+1)` -/
def P14462219322998211031.Spec : Prop :=
  ∀ n, P14462219322998211031.a n = (A304408 (n + 1) : ℚ)

end A304408

/-! ## A304408.P3100635487492721644

`A110601(n+1)/A318519(n+1)`
-/

namespace A304408.P3100635487492721644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110601 (n + 1) : ℚ) / (A318519 (n + 1) : ℚ)

end

end A304408.P3100635487492721644

namespace A304408

/-- `A110601(n+1)/A318519(n+1)` -/
def P3100635487492721644.Spec : Prop :=
  ∀ n, P3100635487492721644.a n = (A304408 (n + 1) : ℚ)

end A304408

/-! ## A304408.P9929467753548755938

`(A032741(n+1)+1)*A173557(n+1)`
-/

namespace A304408.P9929467753548755938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A173557 (n + 1)

end

end A304408.P9929467753548755938

namespace A304408

/-- `(A032741(n+1)+1)*A173557(n+1)` -/
def P9929467753548755938.Spec : Prop :=
  ∀ n, P9929467753548755938.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P13362195575399878828

`A000005(n+1)*A000010(∏{p}[n+1, #])`
-/

namespace A304408.P13362195575399878828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A304408.P13362195575399878828

namespace A304408

/-- `A000005(n+1)*A000010(∏{p}[n+1, #])` -/
def P13362195575399878828.Spec : Prop :=
  ∀ n, P13362195575399878828.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P1758824132070776477

`(∑{d}[n+1, #+1]-A000203(n+1))*A173557(n+1)`
-/

namespace A304408.P1758824132070776477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)) * A173557 (n + 1)

end

end A304408.P1758824132070776477

namespace A304408

/-- `(∑{d}[n+1, #+1]-A000203(n+1))*A173557(n+1)` -/
def P1758824132070776477.Spec : Prop :=
  ∀ n, P1758824132070776477.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P14305405118187800254

`A000010(A007947(n+1))*Δ[A006218(n)]`
-/

namespace A304408.P14305405118187800254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A304408.P14305405118187800254

namespace A304408

/-- `A000010(A007947(n+1))*Δ[A006218(n)]` -/
def P14305405118187800254.Spec : Prop :=
  ∀ n, P14305405118187800254.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P14407964693730413328

`A000005(n+1)*A000010(A204455(n+1))`
-/

namespace A304408.P14407964693730413328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (A204455 (n + 1)).toNat

end

end A304408.P14407964693730413328

namespace A304408

/-- `A000005(n+1)*A000010(A204455(n+1))` -/
def P14407964693730413328.Spec : Prop :=
  ∀ n, P14407964693730413328.a n = A304408 (n + 1)

end A304408

/-! ## A304408.P6622171643889096460

`(A062354(n+1)-A391701(n+1))/A003557(n+1)`
-/

namespace A304408.P6622171643889096460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) - A391701 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A304408.P6622171643889096460

namespace A304408

/-- `(A062354(n+1)-A391701(n+1))/A003557(n+1)` -/
def P6622171643889096460.Spec : Prop :=
  ∀ n, P6622171643889096460.a n = (A304408 (n + 1) : ℚ)

end A304408

/-! ## A304408.P17582488106792710639

`A000005(n+1)*A000010(n+1)/A003557(n+1)`
-/

namespace A304408.P17582488106792710639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A000010 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A304408.P17582488106792710639

namespace A304408

/-- `A000005(n+1)*A000010(n+1)/A003557(n+1)` -/
def P17582488106792710639.Spec : Prop :=
  ∀ n, P17582488106792710639.a n = (A304408 (n + 1) : ℚ)

end A304408

/-! ## A304408.P1976862880131928525

`A110601(n+1)/(A000005(n+1)*A003557(n+1))`
-/

namespace A304408.P1976862880131928525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110601 (n + 1) : ℚ) / (A000005 (n + 1) * A003557 (n + 1) : ℚ)

end

end A304408.P1976862880131928525

namespace A304408

/-- `A110601(n+1)/(A000005(n+1)*A003557(n+1))` -/
def P1976862880131928525.Spec : Prop :=
  ∀ n, P1976862880131928525.a n = (A304408 (n + 1) : ℚ)

end A304408

/-! ## A304408.P18199166904835645080

`A062355(n+1)/A000010(n+1)*A173557(n+1)`
-/

namespace A304408.P18199166904835645080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A304408.P18199166904835645080

namespace A304408

/-- `A062355(n+1)/A000010(n+1)*A173557(n+1)` -/
def P18199166904835645080.Spec : Prop :=
  ∀ n, P18199166904835645080.a n = (A304408 (n + 1) : ℚ)

end A304408

/-! ## A304408.P6186907916434165966

`A110601(n+1)/A062355(n+1)*A173557(n+1)`
-/

namespace A304408.P6186907916434165966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110601 (n + 1) : ℚ) / (A062355 (n + 1) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A304408.P6186907916434165966

namespace A304408

/-- `A110601(n+1)/A062355(n+1)*A173557(n+1)` -/
def P6186907916434165966.Spec : Prop :=
  ∀ n, P6186907916434165966.a n = (A304408 (n + 1) : ℚ)

end A304408

/-! ## A304408.P10731310468933218183

`A000005(n+1)*A062355(n+1)/A318519(n+1)`
-/

namespace A304408.P10731310468933218183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A062355 (n + 1) : ℚ) / (A318519 (n + 1) : ℚ)

end

end A304408.P10731310468933218183

namespace A304408

/-- `A000005(n+1)*A062355(n+1)/A318519(n+1)` -/
def P10731310468933218183.Spec : Prop :=
  ∀ n, P10731310468933218183.a n = (A304408 (n + 1) : ℚ)

end A304408

/-! ## A304408.P9001108894551862936

`A173557(n+1)/A003557(n+1)*A318519(n+1)`
-/

namespace A304408.P9001108894551862936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A318519 (n + 1) : ℚ)

end

end A304408.P9001108894551862936

namespace A304408

/-- `A173557(n+1)/A003557(n+1)*A318519(n+1)` -/
def P9001108894551862936.Spec : Prop :=
  ∀ n, P9001108894551862936.a n = (A304408 (n + 1) : ℚ)

end A304408

/-!
# A304409: If n = Product (p_j^k_j) then a(n) = Product (p_j*(k_j + 1)).

The programs for A304409, the canonical program `A304409.P5645151244127496146` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304409 has offset 1).

The definition of A304409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304409.P5645151244127496146

`A000005(n+1)*A007947(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A304409

/-- `A000005(n+1)*A007947(n+1)` -/
def P5645151244127496146.Spec : Prop :=
  ∀ n, P5645151244127496146.a n = A304409 (n + 1)

theorem P5645151244127496146.correct : P5645151244127496146.Spec := by
  intro n
  simp only [A304409, Nat.add_sub_cancel]

end A304409

/-! ## A304409.P14277691753317218652

`∏{p}[n+1, #]*∏{e}[n+1, #+1]`
-/

namespace A304409.P14277691753317218652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A304409.P14277691753317218652

namespace A304409

/-- `∏{p}[n+1, #]*∏{e}[n+1, #+1]` -/
def P14277691753317218652.Spec : Prop :=
  ∀ n, (P14277691753317218652.a n : ℤ) = A304409 (n + 1)

theorem P14277691753317218652.correct : P14277691753317218652.Spec := by
  intro n
  simp only [A304409, Nat.add_sub_cancel, A304409.P14277691753317218652.f1, A304409.P14277691753317218652.f2, A304409.P14277691753317218652.a, A304409.P5645151244127496146.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304409

/-! ## A304409.P8070255554992184825

`Δ[A006218(n)]*A007947(n+1)`
-/

namespace A304409.P8070255554992184825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007947 (n + 1)

end

end A304409.P8070255554992184825

namespace A304409

/-- `Δ[A006218(n)]*A007947(n+1)` -/
def P8070255554992184825.Spec : Prop :=
  ∀ n, P8070255554992184825.a n = A304409 (n + 1)

end A304409

/-! ## A304409.P13052045954640570063

`Δ[A054519(n)]*A007947(n+1)`
-/

namespace A304409.P13052045954640570063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007947 (n + 1)

end

end A304409.P13052045954640570063

namespace A304409

/-- `Δ[A054519(n)]*A007947(n+1)` -/
def P13052045954640570063.Spec : Prop :=
  ∀ n, P13052045954640570063.a n = A304409 (n + 1)

end A304409

/-! ## A304409.P6441147833850590761

`A038040(n+1)/A003557(n+1)`
-/

namespace A304409.P6441147833850590761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A304409.P6441147833850590761

namespace A304409

/-- `A038040(n+1)/A003557(n+1)` -/
def P6441147833850590761.Spec : Prop :=
  ∀ n, P6441147833850590761.a n = (A304409 (n + 1) : ℚ)

end A304409

/-! ## A304409.P5737709813931590298

`A034714(n+1)/A102631(n+1)`
-/

namespace A304409.P5737709813931590298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034714 (n + 1) : ℚ) / (A102631 (n + 1) : ℚ)

end

end A304409.P5737709813931590298

namespace A304409

/-- `A034714(n+1)/A102631(n+1)` -/
def P5737709813931590298.Spec : Prop :=
  ∀ n, P5737709813931590298.a n = (A304409 (n + 1) : ℚ)

end A304409

/-! ## A304409.P4668528619316023722

`(A076618(n+1)-1)*A000005(n+1)`
-/

namespace A304409.P4668528619316023722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076618 (n + 1) - 1) * A000005 (n + 1)

end

end A304409.P4668528619316023722

namespace A304409

/-- `(A076618(n+1)-1)*A000005(n+1)` -/
def P4668528619316023722.Spec : Prop :=
  ∀ n, P4668528619316023722.a n = A304409 (n + 1)

theorem P4668528619316023722.correct : P4668528619316023722.Spec := by
  intro n
  simp only [A304409, Nat.add_sub_cancel, A304409.P4668528619316023722.a, A304409.P5645151244127496146.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076618, A076618.P8099091245670450071.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304409

/-! ## A304409.P5456753444316820313

`A000005(n+1)*A015052(A015052(n+1))`
-/

namespace A304409.P5456753444316820313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A015052 (A015052 (n + 1)).toNat

end

end A304409.P5456753444316820313

namespace A304409

/-- `A000005(n+1)*A015052(A015052(n+1))` -/
def P5456753444316820313.Spec : Prop :=
  ∀ n, P5456753444316820313.a n = A304409 (n + 1)

end A304409

/-! ## A304409.P10591110720259719950

`A000005(n+1)*A015053(A015053(n+1))`
-/

namespace A304409.P10591110720259719950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A015053 (A015053 (n + 1)).toNat

end

end A304409.P10591110720259719950

namespace A304409

/-- `A000005(n+1)*A015053(A015053(n+1))` -/
def P10591110720259719950.Spec : Prop :=
  ∀ n, P10591110720259719950.a n = A304409 (n + 1)

end A304409

/-! ## A304409.P14358548298267755275

`A000005(n+1)*A053166(A053166(n+1))`
-/

namespace A304409.P14358548298267755275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A053166 (A053166 (n + 1)).toNat

end

end A304409.P14358548298267755275

namespace A304409

/-- `A000005(n+1)*A053166(A053166(n+1))` -/
def P14358548298267755275.Spec : Prop :=
  ∀ n, P14358548298267755275.a n = A304409 (n + 1)

end A304409

/-! ## A304409.P2458674047467162061

`A007947(n+1)+A007947(n+1)*A032741(n+1)`
-/

namespace A304409.P2458674047467162061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A007947 (n + 1) * A032741 (n + 1)

end

end A304409.P2458674047467162061

namespace A304409

/-- `A007947(n+1)+A007947(n+1)*A032741(n+1)` -/
def P2458674047467162061.Spec : Prop :=
  ∀ n, P2458674047467162061.a n = A304409 (n + 1)

theorem P2458674047467162061.correct : P2458674047467162061.Spec := by
  intro n
  simp only [A304409, Nat.add_sub_cancel, A304409.P2458674047467162061.a, A304409.P5645151244127496146.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304409

/-! ## A304409.P7075302321475457817

`(A048105(n+1)+A034444(n+1))*A007947(n+1)`
-/

namespace A304409.P7075302321475457817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048105 (n + 1) + A034444 (n + 1)) * A007947 (n + 1)

end

end A304409.P7075302321475457817

namespace A304409

/-- `(A048105(n+1)+A034444(n+1))*A007947(n+1)` -/
def P7075302321475457817.Spec : Prop :=
  ∀ n, P7075302321475457817.a n = A304409 (n + 1)

theorem P7075302321475457817.correct : P7075302321475457817.Spec := by
  intro n
  simp only [A304409, Nat.add_sub_cancel, A304409.P7075302321475457817.a, A304409.P5645151244127496146.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034444, A034444.P6574915864346323298.a, A048105, A048105.P14513846835403787716.a, A001221, A001221.P10258181745752134128.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304409

/-! ## A304409.P3346480094553188033

`(A056595(n+1)+A046951(n+1))*A007947(n+1)`
-/

namespace A304409.P3346480094553188033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056595 (n + 1) + A046951 (n + 1)) * A007947 (n + 1)

end

end A304409.P3346480094553188033

namespace A304409

/-- `(A056595(n+1)+A046951(n+1))*A007947(n+1)` -/
def P3346480094553188033.Spec : Prop :=
  ∀ n, P3346480094553188033.a n = A304409 (n + 1)

theorem P3346480094553188033.correct : P3346480094553188033.Spec := by
  intro n
  simp only [A304409, Nat.add_sub_cancel, A304409.P3346480094553188033.a, A304409.P5645151244127496146.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A046951, A046951.P3618498099021746421.a, A056595, A056595.P6705739557680561554.f1, A056595.P6705739557680561554.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049240, A049240.P14203187308614321582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A304409

/-! ## A304409.P3407711569641130159

`(A183093(n+1)+A005361(n+1))*A007947(n+1)`
-/

namespace A304409.P3407711569641130159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183093 (n + 1) + A005361 (n + 1)) * A007947 (n + 1)

end

end A304409.P3407711569641130159

namespace A304409

/-- `(A183093(n+1)+A005361(n+1))*A007947(n+1)` -/
def P3407711569641130159.Spec : Prop :=
  ∀ n, P3407711569641130159.a n = A304409 (n + 1)

theorem P3407711569641130159.correct : P3407711569641130159.Spec := by
  intro n
  simp only [A304409, Nat.add_sub_cancel, A304409.P3407711569641130159.a, A304409.P5645151244127496146.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P4811270261471152635.f1, A005361.P4811270261471152635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A183093, A183093.P17608197149960352927.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304409

/-! ## A304409.P8802606184106182061

`(A372720(n+1)+A008479(n+1))*A007947(n+1)`
-/

namespace A304409.P8802606184106182061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A372720 (n + 1) + A008479 (n + 1)) * A007947 (n + 1)

end

end A304409.P8802606184106182061

namespace A304409

/-- `(A372720(n+1)+A008479(n+1))*A007947(n+1)` -/
def P8802606184106182061.Spec : Prop :=
  ∀ n, P8802606184106182061.a n = A304409 (n + 1)

end A304409

/-! ## A304409.P7908774788297378540

`(A007425(n+1)-A238952(n+1))*A007947(n+1)`
-/

namespace A304409.P7908774788297378540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) - A238952 (n + 1)) * A007947 (n + 1)

end

end A304409.P7908774788297378540

namespace A304409

/-- `(A007425(n+1)-A238952(n+1))*A007947(n+1)` -/
def P7908774788297378540.Spec : Prop :=
  ∀ n, P7908774788297378540.a n = A304409 (n + 1)

theorem P7908774788297378540.correct : P7908774788297378540.Spec := by
  intro n
  simp only [A304409, Nat.add_sub_cancel, A304409.P7908774788297378540.a, A304409.P5645151244127496146.a, A000005, A000005.P16091521709108585461.a, A007425, A007425.P3441111155356079205.f1, A007425.P3441111155356079205.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A238952, A238952.P6937701478012677279.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304409

/-! ## A304409.P6767724716789021185

`(A000203(n+1)-A326142(n+1))*A000005(n+1)`
-/

namespace A304409.P6767724716789021185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A326142 (n + 1)) * A000005 (n + 1)

end

end A304409.P6767724716789021185

namespace A304409

/-- `(A000203(n+1)-A326142(n+1))*A000005(n+1)` -/
def P6767724716789021185.Spec : Prop :=
  ∀ n, P6767724716789021185.a n = A304409 (n + 1)

theorem P6767724716789021185.correct : P6767724716789021185.Spec := by
  intro n
  simp only [A304409, Nat.add_sub_cancel, A304409.P6767724716789021185.a, A304409.P5645151244127496146.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304409

/-! ## A304409.P260785920050078082

`A000005(n+1)*A007913(n+1)*A336643(n+1)`
-/

namespace A304409.P260785920050078082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007913 (n + 1) * A336643 (n + 1)

end

end A304409.P260785920050078082

namespace A304409

/-- `A000005(n+1)*A007913(n+1)*A336643(n+1)` -/
def P260785920050078082.Spec : Prop :=
  ∀ n, P260785920050078082.a n = A304409 (n + 1)

end A304409

/-! ## A304409.P9754964879406987961

`A000005(n+1)*A000026(n+1)/A005361(n+1)`
-/

namespace A304409.P9754964879406987961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A000026 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ)

end

end A304409.P9754964879406987961

namespace A304409

/-- `A000005(n+1)*A000026(n+1)/A005361(n+1)` -/
def P9754964879406987961.Spec : Prop :=
  ∀ n, P9754964879406987961.a n = (A304409 (n + 1) : ℚ)

end A304409

/-! ## A304409.P5119590896765843938

`A007947(n+1)/A048250(n+1)*A304412(n+1)`
-/

namespace A304409.P5119590896765843938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A304412 (n + 1) : ℚ)

end

end A304409.P5119590896765843938

namespace A304409

/-- `A007947(n+1)/A048250(n+1)*A304412(n+1)` -/
def P5119590896765843938.Spec : Prop :=
  ∀ n, P5119590896765843938.a n = (A304409 (n + 1) : ℚ)

end A304409

/-!
# A304411: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)*k_j).

The programs for A304411, the canonical program `A304411.P4036889141773001327` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304411 has offset 1).

The definition of A304411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304411.P4036889141773001327

`A005361(n+1)*A048250(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A304411

/-- `A005361(n+1)*A048250(n+1)` -/
def P4036889141773001327.Spec : Prop :=
  ∀ n, P4036889141773001327.a n = A304411 (n + 1)

theorem P4036889141773001327.correct : P4036889141773001327.Spec := by
  intro n
  simp only [A304411, Nat.add_sub_cancel]

end A304411

/-! ## A304411.P18373048072749734900

`A000005((n+1)/A007947(n+1))*A000203(A007947(n+1))`
-/

namespace A304411.P18373048072749734900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat * A000203 (A007947 (n + 1)).toNat

end

end A304411.P18373048072749734900

namespace A304411

/-- `A000005((n+1)/A007947(n+1))*A000203(A007947(n+1))` -/
def P18373048072749734900.Spec : Prop :=
  ∀ n, P18373048072749734900.a n = A304411 (n + 1)

end A304411

/-! ## A304411.P10435036679818306660

`∏{p}[n+1, #+1]*∏{e}[n+1, #]`
-/

namespace A304411.P10435036679818306660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)) * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A304411.P10435036679818306660

namespace A304411

/-- `∏{p}[n+1, #+1]*∏{e}[n+1, #]` -/
def P10435036679818306660.Spec : Prop :=
  ∀ n, (P10435036679818306660.a n : ℤ) = A304411 (n + 1)

end A304411

/-! ## A304411.P10844443007600469029

`A000005((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #+1]`
-/

namespace A304411.P10844443007600469029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A304411.P10844443007600469029

namespace A304411

/-- `A000005((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #+1]` -/
def P10844443007600469029.Spec : Prop :=
  ∀ n, P10844443007600469029.a n = A304411 (n + 1)

end A304411

/-! ## A304411.P853161633482322670

`A303915(n+1)*A323363(n+1)`
-/

namespace A304411.P853161633482322670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303915 (n + 1) * A323363 (n + 1)

end

end A304411.P853161633482322670

namespace A304411

/-- `A303915(n+1)*A323363(n+1)` -/
def P853161633482322670.Spec : Prop :=
  ∀ n, P853161633482322670.a n = A304411 (n + 1)

end A304411

/-! ## A304411.P4075088059123823666

`A000203(A007947(n+1))*∏{e}[n+1, #]`
-/

namespace A304411.P4075088059123823666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat * ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A304411.P4075088059123823666

namespace A304411

/-- `A000203(A007947(n+1))*∏{e}[n+1, #]` -/
def P4075088059123823666.Spec : Prop :=
  ∀ n, P4075088059123823666.a n = A304411 (n + 1)

end A304411

/-! ## A304411.P872894564812583803

`A000005((n+1)/∏{p}[n+1, #])*A048250(n+1)`
-/

namespace A304411.P872894564812583803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A048250 (n + 1)

end

end A304411.P872894564812583803

namespace A304411

/-- `A000005((n+1)/∏{p}[n+1, #])*A048250(n+1)` -/
def P872894564812583803.Spec : Prop :=
  ∀ n, P872894564812583803.a n = A304411 (n + 1)

end A304411

/-! ## A304411.P6745128234399152840

`A000203(A007947(n+1))*A005361(n+1)`
-/

namespace A304411.P6745128234399152840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat * A005361 (n + 1)

end

end A304411.P6745128234399152840

namespace A304411

/-- `A000203(A007947(n+1))*A005361(n+1)` -/
def P6745128234399152840.Spec : Prop :=
  ∀ n, P6745128234399152840.a n = A304411 (n + 1)

end A304411

/-! ## A304411.P8595071123806839784

`A000005(A003557(n+1))*A048250(n+1)`
-/

namespace A304411.P8595071123806839784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A048250 (n + 1)

end

end A304411.P8595071123806839784

namespace A304411

/-- `A000005(A003557(n+1))*A048250(n+1)` -/
def P8595071123806839784.Spec : Prop :=
  ∀ n, P8595071123806839784.a n = A304411 (n + 1)

end A304411

/-! ## A304411.P3890400256339182730

`A001615(n+1)/A003557(n+1)*A005361(n+1)`
-/

namespace A304411.P3890400256339182730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A005361 (n + 1) : ℚ)

end

end A304411.P3890400256339182730

namespace A304411

/-- `A001615(n+1)/A003557(n+1)*A005361(n+1)` -/
def P3890400256339182730.Spec : Prop :=
  ∀ n, P3890400256339182730.a n = (A304411 (n + 1) : ℚ)

end A304411

/-! ## A304411.P1401335322211934133

`A048250(n+1)/A173557(n+1)*A304407(n+1)`
-/

namespace A304411.P1401335322211934133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ) * (A304407 (n + 1) : ℚ)

end

end A304411.P1401335322211934133

namespace A304411

/-- `A048250(n+1)/A173557(n+1)*A304407(n+1)` -/
def P1401335322211934133.Spec : Prop :=
  ∀ n, P1401335322211934133.a n = (A304411 (n + 1) : ℚ)

end A304411

/-! ## A304411.P12378905169297415489

`A000026(n+1)/A304409(n+1)*A304412(n+1)`
-/

namespace A304411.P12378905169297415489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) : ℚ) / (A304409 (n + 1) : ℚ) * (A304412 (n + 1) : ℚ)

end

end A304411.P12378905169297415489

namespace A304411

/-- `A000026(n+1)/A304409(n+1)*A304412(n+1)` -/
def P12378905169297415489.Spec : Prop :=
  ∀ n, P12378905169297415489.a n = (A304411 (n + 1) : ℚ)

end A304411

/-! ## A304411.P1175086536519033771

`A304407(n+1)/A304408(n+1)*A304412(n+1)`
-/

namespace A304411.P1175086536519033771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304407 (n + 1) : ℚ) / (A304408 (n + 1) : ℚ) * (A304412 (n + 1) : ℚ)

end

end A304411.P1175086536519033771

namespace A304411

/-- `A304407(n+1)/A304408(n+1)*A304412(n+1)` -/
def P1175086536519033771.Spec : Prop :=
  ∀ n, P1175086536519033771.a n = (A304411 (n + 1) : ℚ)

end A304411

/-! ## A304411.P4518463312558304851

`A000005(A003557(n+1))*A092261(A007947(n+1))`
-/

namespace A304411.P4518463312558304851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A092261 (A007947 (n + 1)).toNat

end

end A304411.P4518463312558304851

namespace A304411

/-- `A000005(A003557(n+1))*A092261(A007947(n+1))` -/
def P4518463312558304851.Spec : Prop :=
  ∀ n, P4518463312558304851.a n = A304411 (n + 1)

end A304411

/-! ## A304411.P13329654113099531407

`A000005(A001615(n+1)/A048250(n+1))*A048250(n+1)`
-/

namespace A304411.P13329654113099531407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ))).toNat * A048250 (n + 1)

end

end A304411.P13329654113099531407

namespace A304411

/-- `A000005(A001615(n+1)/A048250(n+1))*A048250(n+1)` -/
def P13329654113099531407.Spec : Prop :=
  ∀ n, P13329654113099531407.a n = A304411 (n + 1)

end A304411

/-! ## A304411.P16283790698026416170

`A069088(A102631(n+1))`
-/

namespace A304411.P16283790698026416170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069088 (A102631 (n + 1)).toNat

end

end A304411.P16283790698026416170

namespace A304411

/-- `A069088(A102631(n+1))` -/
def P16283790698026416170.Spec : Prop :=
  ∀ n, P16283790698026416170.a n = A304411 (n + 1)

end A304411

/-!
# A304412: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)*(k_j + 1)).

The programs for A304412, the canonical program `A304412.P15858694331180432577` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304412 has offset 1).

The definition of A304412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304412.P15858694331180432577

`A000005(n+1)*A048250(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A304412

/-- `A000005(n+1)*A048250(n+1)` -/
def P15858694331180432577.Spec : Prop :=
  ∀ n, P15858694331180432577.a n = A304412 (n + 1)

theorem P15858694331180432577.correct : P15858694331180432577.Spec := by
  intro n
  simp only [A304412, Nat.add_sub_cancel]

end A304412

/-! ## A304412.P16429107221170898314

`A000005(n+1)*A000203(A007947(n+1))`
-/

namespace A304412.P16429107221170898314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000203 (A007947 (n + 1)).toNat

end

end A304412.P16429107221170898314

namespace A304412

/-- `A000005(n+1)*A000203(A007947(n+1))` -/
def P16429107221170898314.Spec : Prop :=
  ∀ n, P16429107221170898314.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P11314449105771878985

`∏{p}[n+1, #+1]*∏{e}[n+1, #+1]`
-/

namespace A304412.P11314449105771878985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A304412.P11314449105771878985

namespace A304412

/-- `∏{p}[n+1, #+1]*∏{e}[n+1, #+1]` -/
def P11314449105771878985.Spec : Prop :=
  ∀ n, (P11314449105771878985.a n : ℤ) = A304412 (n + 1)

end A304412

/-! ## A304412.P18407943531422155885

`A000203(∏{p}[n+1, #])*∏{e}[n+1, #+1]`
-/

namespace A304412.P18407943531422155885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A304412.P18407943531422155885

namespace A304412

/-- `A000203(∏{p}[n+1, #])*∏{e}[n+1, #+1]` -/
def P18407943531422155885.Spec : Prop :=
  ∀ n, P18407943531422155885.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P17868919636637196639

`Δ[A006218(n)]*A048250(n+1)`
-/

namespace A304412.P17868919636637196639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048250 (n + 1)

end

end A304412.P17868919636637196639

namespace A304412

/-- `Δ[A006218(n)]*A048250(n+1)` -/
def P17868919636637196639.Spec : Prop :=
  ∀ n, P17868919636637196639.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P16009747033022661042

`Δ[A054519(n)]*A048250(n+1)`
-/

namespace A304412.P16009747033022661042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048250 (n + 1)

end

end A304412.P16009747033022661042

namespace A304412

/-- `Δ[A054519(n)]*A048250(n+1)` -/
def P16009747033022661042.Spec : Prop :=
  ∀ n, P16009747033022661042.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P14530971681461361132

`A323363(n+1)*A329484(n+1)`
-/

namespace A304412.P14530971681461361132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (n + 1) * A329484 (n + 1)

end

end A304412.P14530971681461361132

namespace A304412

/-- `A323363(n+1)*A329484(n+1)` -/
def P14530971681461361132.Spec : Prop :=
  ∀ n, P14530971681461361132.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P6304139430410293235

`A000005(n+1)*A000203(∏{p}[n+1, #])`
-/

namespace A304412.P6304139430410293235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000203 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A304412.P6304139430410293235

namespace A304412

/-- `A000005(n+1)*A000203(∏{p}[n+1, #])` -/
def P6304139430410293235.Spec : Prop :=
  ∀ n, P6304139430410293235.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P15652651627108460203

`A000203(A007947(n+1))*Δ[A006218(n)]`
-/

namespace A304412.P15652651627108460203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A304412.P15652651627108460203

namespace A304412

/-- `A000203(A007947(n+1))*Δ[A006218(n)]` -/
def P15652651627108460203.Spec : Prop :=
  ∀ n, P15652651627108460203.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P9782153593953851818

`(A048105(n+1)+A034444(n+1))*A048250(n+1)`
-/

namespace A304412.P9782153593953851818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048105 (n + 1) + A034444 (n + 1)) * A048250 (n + 1)

end

end A304412.P9782153593953851818

namespace A304412

/-- `(A048105(n+1)+A034444(n+1))*A048250(n+1)` -/
def P9782153593953851818.Spec : Prop :=
  ∀ n, P9782153593953851818.a n = A304412 (n + 1)

theorem P9782153593953851818.correct : P9782153593953851818.Spec := by
  intro n
  simp only [A304412, Nat.add_sub_cancel, A304412.P9782153593953851818.a, A304412.P15858694331180432577.a, A000005, A000005.P16091521709108585461.a, A034444, A034444.P6574915864346323298.a, A048105, A048105.P14513846835403787716.a, A048250, A048250.P6137918235727910070.a, A001221, A001221.P10258181745752134128.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304412

/-! ## A304412.P16231038522797927968

`(A325314(n+1)+A001065(n+1))*A000005(n+1)`
-/

namespace A304412.P16231038522797927968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325314 (n + 1) + A001065 (n + 1)) * A000005 (n + 1)

end

end A304412.P16231038522797927968

namespace A304412

/-- `(A325314(n+1)+A001065(n+1))*A000005(n+1)` -/
def P16231038522797927968.Spec : Prop :=
  ∀ n, P16231038522797927968.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P1182787783966089648

`(A344137(n+1)+A295295(n+1))*A000005(n+1)`
-/

namespace A304412.P1182787783966089648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344137 (n + 1) + A295295 (n + 1)) * A000005 (n + 1)

end

end A304412.P1182787783966089648

namespace A304412

/-- `(A344137(n+1)+A295295(n+1))*A000005(n+1)` -/
def P1182787783966089648.Spec : Prop :=
  ∀ n, P1182787783966089648.a n = A304412 (n + 1)

theorem P1182787783966089648.correct : P1182787783966089648.Spec := by
  intro n
  simp only [A304412, Nat.add_sub_cancel, A304412.P1182787783966089648.a, A304412.P15858694331180432577.a, A000005, A000005.P16091521709108585461.a, A048250, A048250.P6137918235727910070.a, A295295, A295295.P17200479442831636122.a, A344137, A344137.P296871737562835172.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A057521, A057521.P7284310941140114823.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304412

/-! ## A304412.P693040804321739547

`(A000203(n+1)-A162296(n+1))*A000005(n+1)`
-/

namespace A304412.P693040804321739547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A162296 (n + 1)) * A000005 (n + 1)

end

end A304412.P693040804321739547

namespace A304412

/-- `(A000203(n+1)-A162296(n+1))*A000005(n+1)` -/
def P693040804321739547.Spec : Prop :=
  ∀ n, P693040804321739547.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P17291027273404562505

`A000005(n+1)*A001615(n+1)/A003557(n+1)`
-/

namespace A304412.P17291027273404562505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A001615 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A304412.P17291027273404562505

namespace A304412

/-- `A000005(n+1)*A001615(n+1)/A003557(n+1)` -/
def P17291027273404562505.Spec : Prop :=
  ∀ n, P17291027273404562505.a n = (A304412 (n + 1) : ℚ)

end A304412

/-! ## A304412.P3376201389651961739

`A048250(n+1)/A003557(n+1)*A318519(n+1)`
-/

namespace A304412.P3376201389651961739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A318519 (n + 1) : ℚ)

end

end A304412.P3376201389651961739

namespace A304412

/-- `A048250(n+1)/A003557(n+1)*A318519(n+1)` -/
def P3376201389651961739.Spec : Prop :=
  ∀ n, P3376201389651961739.a n = (A304412 (n + 1) : ℚ)

end A304412

/-! ## A304412.P5484433341810348151

`A304409(n+1)/A000026(n+1)*A304411(n+1)`
-/

namespace A304412.P5484433341810348151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304409 (n + 1) : ℚ) / (A000026 (n + 1) : ℚ) * (A304411 (n + 1) : ℚ)

end

end A304412.P5484433341810348151

namespace A304412

/-- `A304409(n+1)/A000026(n+1)*A304411(n+1)` -/
def P5484433341810348151.Spec : Prop :=
  ∀ n, P5484433341810348151.a n = (A304412 (n + 1) : ℚ)

end A304412

/-! ## A304412.P15097597101806927368

`A304408(n+1)/A304407(n+1)*A304411(n+1)`
-/

namespace A304412.P15097597101806927368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304408 (n + 1) : ℚ) / (A304407 (n + 1) : ℚ) * (A304411 (n + 1) : ℚ)

end

end A304412.P15097597101806927368

namespace A304412

/-- `A304408(n+1)/A304407(n+1)*A304411(n+1)` -/
def P15097597101806927368.Spec : Prop :=
  ∀ n, P15097597101806927368.a n = (A304412 (n + 1) : ℚ)

end A304412

/-! ## A304412.P12790417273434419085

`A048250(n+1)*A183063(2*(n+1))`
-/

namespace A304412.P12790417273434419085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A183063 (2 * (n + 1))

end

end A304412.P12790417273434419085

namespace A304412

/-- `A048250(n+1)*A183063(2*(n+1))` -/
def P12790417273434419085.Spec : Prop :=
  ∀ n, P12790417273434419085.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P6234287052738834098

`A000005(n+1)*A327564(A007947(n+1)²)`
-/

namespace A304412.P6234287052738834098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A327564 (A007947 (n + 1) ^ 2).toNat

end

end A304412.P6234287052738834098

namespace A304412

/-- `A000005(n+1)*A327564(A007947(n+1)²)` -/
def P6234287052738834098.Spec : Prop :=
  ∀ n, P6234287052738834098.a n = A304412 (n + 1)

end A304412

/-! ## A304412.P18378960365196061937

`A304411(A064549(n+1))`
-/

namespace A304412.P18378960365196061937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304411 (A064549 (n + 1)).toNat

end

end A304412.P18378960365196061937

namespace A304412

/-- `A304411(A064549(n+1))` -/
def P18378960365196061937.Spec : Prop :=
  ∀ n, P18378960365196061937.a n = A304412 (n + 1)

end A304412

/-!
# A304413: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304413, there is no canonical definition to state claims against.
-/

/-! ## A304413.P6035822198817855313

`A304419(∑[4*n]+1)`
-/

namespace A304413.P6035822198817855313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304413.P6035822198817855313

/-! ## A304413.P6357256728335542821

`record[A003982(n)*A304419(n+1)]`
-/

namespace A304413.P6357256728335542821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304413.P6357256728335542821

/-! ## A304413.P14910005184334464180

`record[gcd(A114327(n), A304419(n+1))]`
-/

namespace A304413.P14910005184334464180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A304419 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304413.P14910005184334464180

/-! ## A304413.P4934394303087823692

`A304419(A001844(n))+A180472(n)`
-/

namespace A304413.P4934394303087823692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A001844 n).toNat + A180472 n

end

end A304413.P4934394303087823692

/-! ## A304413.P15998207392593237271

`A043562(n)*A304419(A001844(n))`
-/

namespace A304413.P15998207392593237271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A304419 (A001844 n).toNat

end

end A304413.P15998207392593237271

/-!
# A304414: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304414, there is no canonical definition to state claims against.
-/

/-! ## A304414.P14918747219047681870

`A304419(∑[n+2]+4)`
-/

namespace A304414.P14918747219047681870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304414.P14918747219047681870

/-! ## A304414.P4453138652346022644

`A316244(∑[n+2]+4)`
-/

namespace A304414.P4453138652346022644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304414.P4453138652346022644

/-! ## A304414.P15150362579156129577

`A304419(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A304414.P15150362579156129577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304419 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A304414.P15150362579156129577

/-! ## A304414.P17000761646592446695

`record[A316244(A167614(A035250(n+1)))]`
-/

namespace A304414.P17000761646592446695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A167614 (A035250 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304414.P17000761646592446695

/-! ## A304414.P11917000492680764074

`A316244(A167614(n+1))+A137579(n)`
-/

namespace A304414.P11917000492680764074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A167614 (n + 1)).toNat + A137579 n

end

end A304414.P11917000492680764074

/-!
# A304415: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304415, there is no canonical definition to state claims against.
-/

/-! ## A304415.P16369500274617428455

`A304419(A374004(n+1))`
-/

namespace A304415.P16369500274617428455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A374004 (n + 1)).toNat

end

end A304415.P16369500274617428455

/-! ## A304415.P13152946047621691439

`A304419(A141214(n)+7)`
-/

namespace A304415.P13152946047621691439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A141214 n + 7).toNat

end

end A304415.P13152946047621691439

/-! ## A304415.P12302545373209679600

`A316244(A141214(n)+7)`
-/

namespace A304415.P12302545373209679600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (A141214 n + 7).toNat

end

end A304415.P12302545373209679600

/-! ## A304415.P4002417269777648501

`A304419(A052905(n)+9)`
-/

namespace A304415.P4002417269777648501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A052905 n + 9).toNat

end

end A304415.P4002417269777648501

/-! ## A304415.P11761834634136904816

`A304419(A167614(n+2)+1)`
-/

namespace A304415.P11761834634136904816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A167614 (n + 2) + 1).toNat

end

end A304415.P11761834634136904816

/-!
# A304416: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304416, there is no canonical definition to state claims against.
-/

/-! ## A304416.P11663231091888431794

`A304419(A374005(n+1))`
-/

namespace A304416.P11663231091888431794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A374005 (n + 1)).toNat

end

end A304416.P11663231091888431794

/-! ## A304416.P12090531088397882234

`A304419(A167499(n+3))`
-/

namespace A304416.P12090531088397882234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A167499 (n + 3)).toNat

end

end A304416.P12090531088397882234

/-! ## A304416.P10330565502564377732

`A304419(A155212(n)+13)`
-/

namespace A304416.P10330565502564377732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A155212 n + 13).toNat

end

end A304416.P10330565502564377732

/-! ## A304416.P3759709993363398829

`A304419(A056000(n)+15)`
-/

namespace A304416.P3759709993363398829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A056000 n + 15).toNat

end

end A304416.P3759709993363398829

/-! ## A304416.P10303526818083917910

`A304419(eq[6, A131818(n+1)])`
-/

namespace A304416.P10303526818083917910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304416.P10303526818083917910

/-!
# A304417: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304417, there is no canonical definition to state claims against.
-/

/-! ## A304417.P3068145537691387178

`A304419(A374007(n+1))`
-/

namespace A304417.P3068145537691387178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A374007 (n + 1)).toNat

end

end A304417.P3068145537691387178

/-! ## A304417.P18404238811934221388

`A304419(eq[7, A131818(n+1)])`
-/

namespace A304417.P18404238811934221388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304417.P18404238811934221388

/-! ## A304417.P11024391535468412748

`A304419(eq[5, A193592(n)])`
-/

namespace A304417.P11024391535468412748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304417.P11024391535468412748

/-! ## A304417.P5366186073956658108

`A304419(eq[8, A258709(n)])`
-/

namespace A304417.P5366186073956658108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304417.P5366186073956658108

/-! ## A304417.P1786240299388815942

`A304419(eq[6, A200370(n+1)])`
-/

namespace A304417.P1786240299388815942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304417.P1786240299388815942

/-!
# A304418: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304418, there is no canonical definition to state claims against.
-/

/-! ## A304418.P18434025868447424220

`A304419(A374008(n+1))`
-/

namespace A304418.P18434025868447424220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A374008 (n + 1)).toNat

end

end A304418.P18434025868447424220

/-! ## A304418.P191029723300371774

`A304419(eq[11, A066657(n)])`
-/

namespace A304418.P191029723300371774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304418.P191029723300371774

/-! ## A304418.P11786004132436874406

`A304419(eq[8, A131818(n+1)])`
-/

namespace A304418.P11786004132436874406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304418.P11786004132436874406

/-! ## A304418.P4261676998934351633

`A304419(A055999(n+4))`
-/

namespace A304418.P4261676998934351633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (A055999 (n + 4)).toNat

end

end A304418.P4261676998934351633

/-! ## A304418.P7998870045437307573

`A304419(eq[6, A193592(n)])`
-/

namespace A304418.P7998870045437307573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304418.P7998870045437307573

/-!
# A304419: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304419, there is no canonical definition to state claims against.
-/

/-! ## A304419.P17981101327813918366

`A316244(∑[A010894(n)!])`
-/

namespace A304419.P17981101327813918366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304419.P17981101327813918366

/-! ## A304419.P13535719250999953511

`A316244(A010894(n)!+n)`
-/

namespace A304419.P13535719250999953511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A304419.P13535719250999953511

/-! ## A304419.P543936869822438694

`filter[A316244(n+1), A353627(#)]`
-/

namespace A304419.P543936869822438694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A304419.P543936869822438694

/-! ## A304419.P908535833641959124

`filter[A316244(n+1), A353628(#)]`
-/

namespace A304419.P908535833641959124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A304419.P908535833641959124

/-! ## A304419.P4515776490605842972

`A316244(n+1)+A010894(A008327(n))`
-/

namespace A304419.P4515776490605842972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316244 (n + 1) + A010894 ((A008327 n).toNat + 21)

end

end A304419.P4515776490605842972

/-!
# A304420: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304420, there is no canonical definition to state claims against.
-/

/-! ## A304420.P11834541961419164813

`A304427(∑[4*n]+1)`
-/

namespace A304420.P11834541961419164813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304420.P11834541961419164813

/-! ## A304420.P13422004655108475758

`A304427(A001844(n))+A025465(n)`
-/

namespace A304420.P13422004655108475758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A001844 n).toNat + A025465 n

end

end A304420.P13422004655108475758

/-! ## A304420.P7307284977780330200

`A014698(n)*A304427(A001844(n))`
-/

namespace A304420.P7307284977780330200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014698 n * A304427 (A001844 n).toNat

end

end A304420.P7307284977780330200

/-! ## A304420.P3507676942920249488

`A107711(n)*A304427(A001844(n))`
-/

namespace A304420.P3507676942920249488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107711 n * A304427 (A001844 n).toNat

end

end A304420.P3507676942920249488

/-! ## A304420.P17441526823113815927

`A178489(n)*A304427(A001844(n))`
-/

namespace A304420.P17441526823113815927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A304427 (A001844 n).toNat

end

end A304420.P17441526823113815927

/-!
# A304421: Number of nX2 0..1 arrays with every element unequal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304421, the canonical program `A304421.P8978201053722482576` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304421 has offset 1).

The definition of A304421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304421.P14729597879633673088

`ogf((1+4x+x^2)/(1-3x-3x^2-2x^3))`
-/

namespace A304421.P14729597879633673088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -3, -3, -2] n

end

end A304421.P14729597879633673088

namespace A304421

/-- `ogf((1+4x+x^2)/(1-3x-3x^2-2x^3))` -/
def P14729597879633673088.Spec : Prop :=
  ∀ n, P14729597879633673088.a n = A304421 (n + 1)

end A304421

/-! ## A304421.P8978201053722482576

`3*a(n-1)+3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=7, a(2)=25`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304421

/-- `3*a(n-1)+3*a(n-2)+2*a(n-3)` -/
def P8978201053722482576.Spec : Prop :=
  ∀ n, (P8978201053722482576.a n : ℤ) = A304421 (n + 1)

theorem P8978201053722482576.correct : P8978201053722482576.Spec := by
  intro n
  simp only [A304421, Nat.add_sub_cancel]

end A304421

/-! ## A304421.P1873118713927110633

`sqrt(A317729(n+1)/2)`
-/

namespace A304421.P1873118713927110633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A317729 (n + 1) : ℚ) / 2 : ℝ)

end

end A304421.P1873118713927110633

namespace A304421

/-- `sqrt(A317729(n+1)/2)` -/
def P1873118713927110633.Spec : Prop :=
  ∀ n, P1873118713927110633.a n = (A304421 (n + 1) : ℝ)

end A304421

/-! ## A304421.P3456117650455283960

`A317733(∑[n+1]+2)`
-/

namespace A304421.P3456117650455283960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317733 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304421.P3456117650455283960

namespace A304421

/-- `A317733(∑[n+1]+2)` -/
def P3456117650455283960.Spec : Prop :=
  ∀ n, P3456117650455283960.a n = A304421 (n + 1)

end A304421

/-! ## A304421.P4451080575182691672

`record[gcd(A185782(n+1), A317733(n+3))]`
-/

namespace A304421.P4451080575182691672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185782 (n + 1)) (A317733 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304421.P4451080575182691672

namespace A304421

/-- `record[gcd(A185782(n+1), A317733(n+3))]` -/
def P4451080575182691672.Spec : Prop :=
  ∀ n, (P4451080575182691672.a n : ℤ) = A304421 (n + 1)

end A304421

/-!
# A304422: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304422, there is no canonical definition to state claims against.
-/

/-! ## A304422.P13842798886388826595

`A304427(∑[n+2]+4)`
-/

namespace A304422.P13842798886388826595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304422.P13842798886388826595

/-! ## A304422.P9980082007357449379

`A304427(A167614(n+1))^ceil(n/98)`
-/

namespace A304422.P9980082007357449379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304427 (A167614 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A304422.P9980082007357449379

/-! ## A304422.P1945499666983497003

`A304427(A167614(n+1))+A011737(n)`
-/

namespace A304422.P1945499666983497003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A167614 (n + 1)).toNat + A011737 n

end

end A304422.P1945499666983497003

/-! ## A304422.P12697550190068393938

`gcd(A010894(n), A304427(A167614(n+1)))`
-/

namespace A304422.P12697550190068393938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A304427 (A167614 (n + 1)).toNat)

end

end A304422.P12697550190068393938

/-! ## A304422.P500306517757149005

`lcm(A107711(n), A304427(A167614(n+1)))`
-/

namespace A304422.P500306517757149005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107711 n) (A304427 (A167614 (n + 1)).toNat)

end

end A304422.P500306517757149005

/-!
# A304423: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304423, there is no canonical definition to state claims against.
-/

/-! ## A304423.P10048582161696089305

`A304427(A374004(n+1))`
-/

namespace A304423.P10048582161696089305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A374004 (n + 1)).toNat

end

end A304423.P10048582161696089305

/-! ## A304423.P12069632360924959786

`A304427(A141214(n)+7)`
-/

namespace A304423.P12069632360924959786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A141214 n + 7).toNat

end

end A304423.P12069632360924959786

/-! ## A304423.P13785001450196195941

`A304427(A055999(n)+10)`
-/

namespace A304423.P13785001450196195941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A055999 n + 10).toNat

end

end A304423.P13785001450196195941

/-! ## A304423.P7187836321858263774

`A304427(A167614(n+2)+1)`
-/

namespace A304423.P7187836321858263774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A167614 (n + 2) + 1).toNat

end

end A304423.P7187836321858263774

/-! ## A304423.P18259327932282276367

`A304427(Δ[A264443(n)-n²])`
-/

namespace A304423.P18259327932282276367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (f1 (n + 1) - f1 n).toNat

end

end A304423.P18259327932282276367

/-!
# A304424: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304424, there is no canonical definition to state claims against.
-/

/-! ## A304424.P11025014051961034981

`A304427(A374005(n+1))`
-/

namespace A304424.P11025014051961034981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A374005 (n + 1)).toNat

end

end A304424.P11025014051961034981

/-! ## A304424.P7458573956395887042

`A304427(A167499(n+3))`
-/

namespace A304424.P7458573956395887042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A167499 (n + 3)).toNat

end

end A304424.P7458573956395887042

/-! ## A304424.P11507930080400433570

`A304427(Δ[A264443(n)])`
-/

namespace A304424.P11507930080400433570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (f1 (n + 1) - f1 n).toNat

end

end A304424.P11507930080400433570

/-! ## A304424.P17407154233293317807

`A304427(A046691(n+3))`
-/

namespace A304424.P17407154233293317807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A046691 (n + 3)).toNat

end

end A304424.P17407154233293317807

/-! ## A304424.P10247408208245044150

`A304427(eq[4, A193592(n)])`
-/

namespace A304424.P10247408208245044150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304424.P10247408208245044150

/-!
# A304425: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304425, there is no canonical definition to state claims against.
-/

/-! ## A304425.P9906222427960794288

`A304427(A374007(n+1))`
-/

namespace A304425.P9906222427960794288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A374007 (n + 1)).toNat

end

end A304425.P9906222427960794288

/-! ## A304425.P5792667319643844776

`A304427(eq[7, A131818(n+1)])`
-/

namespace A304425.P5792667319643844776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304425.P5792667319643844776

/-! ## A304425.P15868386902416949753

`A304427(A052905(n+3))`
-/

namespace A304425.P15868386902416949753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A052905 (n + 3)).toNat

end

end A304425.P15868386902416949753

/-! ## A304425.P2674764303783596932

`A304427(eq[3, A219347(n)])`
-/

namespace A304425.P2674764303783596932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304425.P2674764303783596932

/-! ## A304425.P16524562063023504304

`A304427(eq[5, A193592(n)])`
-/

namespace A304425.P16524562063023504304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304425.P16524562063023504304

/-!
# A304426: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304426, there is no canonical definition to state claims against.
-/

/-! ## A304426.P14181770355998187301

`A304427(A374008(n+1))`
-/

namespace A304426.P14181770355998187301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (A374008 (n + 1)).toNat

end

end A304426.P14181770355998187301

/-! ## A304426.P4125126306762854468

`A304427(eq[8, A131818(n+1)])`
-/

namespace A304426.P4125126306762854468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304426.P4125126306762854468

/-! ## A304426.P17438817467646564872

`A304427(eq[4, A219347(n)])`
-/

namespace A304426.P17438817467646564872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304426.P17438817467646564872

/-! ## A304426.P312637364093354548

`A304427(eq[6, A193592(n)])`
-/

namespace A304426.P312637364093354548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304426.P312637364093354548

/-! ## A304426.P5698806000499216061

`A304427(eq[7, A200370(n+1)])`
-/

namespace A304426.P5698806000499216061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304426.P5698806000499216061

/-!
# A304427: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304427, there is no canonical definition to state claims against.
-/

/-! ## A304427.P2660363357209493556

`A316282(n+1)-A010894(A003401(n+1))`
-/

namespace A304427.P2660363357209493556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A304427.P2660363357209493556

/-! ## A304427.P16759449287129847704

`A316282(n+1)+A016389(A022166(n))`
-/

namespace A304427.P16759449287129847704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (n + 1) + A016389 (A022166 n).toNat

end

end A304427.P16759449287129847704

/-! ## A304427.P18056069102367867991

`A316282(n+1)+A016389(A027336(n))`
-/

namespace A304427.P18056069102367867991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (n + 1) + A016389 (A027336 n).toNat

end

end A304427.P18056069102367867991

/-! ## A304427.P6552927295056824391

`A316282(n+1)+A016389(A176561(n))`
-/

namespace A304427.P6552927295056824391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (n + 1) + A016389 (A176561 n).toNat

end

end A304427.P6552927295056824391

/-! ## A304427.P12196114474666941591

`A316282(n+1)-A011737(A022171(n))`
-/

namespace A304427.P12196114474666941591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316282 (n + 1) - A011737 (A022171 n).toNat

end

end A304427.P12196114474666941591

/-!
# A304428: Number of partitions of n in which the sequence of the sum of the same summands is increasing.

The programs for A304428, there is no canonical definition to state claims against.
-/

/-! ## A304428.P12244367650925212154

`A320847(A321176(n)+1+n)`
-/

namespace A304428.P12244367650925212154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A321176 n + 1 + (n : ℤ)).toNat

end

end A304428.P12244367650925212154

/-! ## A304428.P14022704812265575816

`A320847(A348553(n)+A321176(n))`
-/

namespace A304428.P14022704812265575816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A348553 n + A321176 n).toNat

end

end A304428.P14022704812265575816

/-! ## A304428.P4410062064738506544

`A273190(A275627(n)*A330640(n))`
-/

namespace A304428.P4410062064738506544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A275627 n * A330640 n).toNat

end

end A304428.P4410062064738506544

/-! ## A304428.P16270745389992925548

`A269248(A219802(n+1))+A056556(A087447(n))`
-/

namespace A304428.P16270745389992925548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269248 (A219802 (n + 1)).toNat + A056556 (A087447 n).toNat

end

end A304428.P16270745389992925548

/-!
# A304430: Number of partitions of n in which the sequence of the sum of the same summands is decreasing.

The programs for A304430, there is no canonical definition to state claims against.
-/

/-! ## A304430.P4329409511798514308

`A048766(A000123(∑[A003963(n+1)]))`
-/

namespace A304430.P4329409511798514308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000123 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A304430.P4329409511798514308

/-!
# A304432: Numbers n such that n^2 is the sum of two distinct perfect powers > 1 (x^k + y^m; x, y, k, m >= 2).

The programs for A304432, there is no canonical definition to state claims against.
-/

/-! ## A304432.P15895217917112471635

`record[A000188(A298591(n+6))]`
-/

namespace A304432.P15895217917112471635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A298591 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304432.P15895217917112471635

/-! ## A304432.P16156078175928988438

`lt[A268132(n+5)², A268134(A110581(n+1))]`
-/

namespace A304432.P16156078175928988438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268132 (n + 5) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268134 (A110581 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304432.P16156078175928988438

/-!
# A304434: Numbers n such that n^4 is the sum of two distinct perfect powers > 1 (x^k + y^m; x, y, k, m >= 2).

The programs for A304434, there is no canonical definition to state claims against.
-/

/-! ## A304434.P6891050147448017276

`eq[A243566(A331570(n)), A351564(n+1)]`
-/

namespace A304434.P6891050147448017276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243566 (A331570 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351564 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304434.P6891050147448017276

/-! ## A304434.P11900575774232228253

`A238246(lt[A238213(n), A238192(n+4)])`
-/

namespace A304434.P11900575774232228253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A304434.P11900575774232228253

/-! ## A304434.P4066736736978251685

`A238246(lt[A238221(n), A238192(n+4)])`
-/

namespace A304434.P4066736736978251685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A304434.P4066736736978251685

/-! ## A304434.P16815973648982276963

`A238246(A092784(n+1)%A034168(n+1))`
-/

namespace A304434.P16815973648982276963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (Int.tmod (A092784 (n + 1)) (A034168 (n + 1))).toNat

end

end A304434.P16815973648982276963

/-! ## A304434.P15310366590752579700

`A238246(A092784(n+1)^A117358(n+1)²)`
-/

namespace A304434.P15310366590752579700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (SequenceMachineLib.roundAway ((A092784 (n + 1) : ℚ) ^ (A117358 (n + 1) ^ 2 : ℤ))).toNat

end

end A304434.P15310366590752579700

/-!
# A304436: Numbers n such that n^6 is the sum of two distinct perfect powers > 1 (x^k + y^m; x, y, k, m >= 2).

The programs for A304436, there is no canonical definition to state claims against.
-/

/-! ## A304436.P2772762906210464760

`lt[A350555(n+3), A001045(A046109(n))]`
-/

namespace A304436.P2772762906210464760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350555 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A046109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304436.P2772762906210464760

/-! ## A304436.P14710818686351960856

`record[A009003(n+1)-A026816(n)]`
-/

namespace A304436.P14710818686351960856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1) - A026816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304436.P14710818686351960856

/-! ## A304436.P352495680278070676

`record[A009003(n+1)-A326635(n)]`
-/

namespace A304436.P352495680278070676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1) - A326635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304436.P352495680278070676

/-! ## A304436.P11171435784402452996

`A009003(n+1)-A082859(A033886(n))`
-/

namespace A304436.P11171435784402452996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1) - A082859 (A033886 n).toNat

end

end A304436.P11171435784402452996

/-! ## A304436.P5098477609756661282

`record[A009003(n+1)-A326596(n)]`
-/

namespace A304436.P5098477609756661282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1) - A326596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304436.P5098477609756661282

/-!
# A304438: Coefficient of s(y) in p(|y|), where s is Schur functions, p is power-sum symmetric functions, y is the integer partition with Heinz number n, and |y| = Sum y_i.

The programs for A304438, the canonical program `A304438.P13191911540264673276` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304438 has offset 1).

The definition of A304438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304438.P1764404871563069939

`A131736(A278525(n+1))`
-/

namespace A304438.P1764404871563069939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 (A278525 (n + 1)).toNat

end

end A304438.P1764404871563069939

namespace A304438

/-- `A131736(A278525(n+1))` -/
def P1764404871563069939.Spec : Prop :=
  ∀ n, P1764404871563069939.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P752214874726825643

`A195017(A369032(n+1))`
-/

namespace A304438.P752214874726825643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A369032 (n + 1)).toNat

end

end A304438.P752214874726825643

namespace A304438

/-- `A195017(A369032(n+1))` -/
def P752214874726825643.Spec : Prop :=
  ∀ n, P752214874726825643.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P13191911540264673276

`∑{d}[n+1, A010051(#)*A154269((n+1)/#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A304438

/-- `∑{d}[n+1, A010051(#)*A154269((n+1)/#)]` -/
def P13191911540264673276.Spec : Prop :=
  ∀ n, P13191911540264673276.a n = A304438 (n + 1)

theorem P13191911540264673276.correct : P13191911540264673276.Spec := by
  intro n
  simp only [A304438, Nat.add_sub_cancel]

end A304438

/-! ## A304438.P6936363081224176921

`∑{d}[n+1, A035263(#)*A143519((n+1)/#)]`
-/

namespace A304438.P6936363081224176921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304438.P6936363081224176921

namespace A304438

/-- `∑{d}[n+1, A035263(#)*A143519((n+1)/#)]` -/
def P6936363081224176921.Spec : Prop :=
  ∀ n, P6936363081224176921.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P13062784828102075076

`∑{d}[n+1, A205745(#)*A355689((n+1)/#)]`
-/

namespace A304438.P13062784828102075076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A205745 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304438.P13062784828102075076

namespace A304438

/-- `∑{d}[n+1, A205745(#)*A355689((n+1)/#)]` -/
def P13062784828102075076.Spec : Prop :=
  ∀ n, P13062784828102075076.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P17990616650901989938

`∑{d}[n+1, A358769(#)*A359548((n+1)/#)]`
-/

namespace A304438.P17990616650901989938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358769 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304438.P17990616650901989938

namespace A304438

/-- `∑{d}[n+1, A358769(#)*A359548((n+1)/#)]` -/
def P17990616650901989938.Spec : Prop :=
  ∀ n, P17990616650901989938.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P15308948973090796929

`A154269(A052126(n+1))-A000007(n)`
-/

namespace A304438.P15308948973090796929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A052126 (n + 1)).toNat - A000007 n

end

end A304438.P15308948973090796929

namespace A304438

/-- `A154269(A052126(n+1))-A000007(n)` -/
def P15308948973090796929.Spec : Prop :=
  ∀ n, P15308948973090796929.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P10083926085447085946

`A217586(A052126(n+1))-A217586(n+1)`
-/

namespace A304438.P10083926085447085946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (A052126 (n + 1)).toNat - A217586 (n + 1)

end

end A304438.P10083926085447085946

namespace A304438

/-- `A217586(A052126(n+1))-A217586(n+1)` -/
def P10083926085447085946.Spec : Prop :=
  ∀ n, P10083926085447085946.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P10684972074842025311

`A154269(A052126(n+1)+2*A000007(n))`
-/

namespace A304438.P10684972074842025311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A052126 (n + 1) + 2 * A000007 n).toNat

end

end A304438.P10684972074842025311

namespace A304438

/-- `A154269(A052126(n+1)+2*A000007(n))` -/
def P10684972074842025311.Spec : Prop :=
  ∀ n, P10684972074842025311.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P14215594039890325466

`A154269(A052126(n+1)+A000007(n))+A000007(n)`
-/

namespace A304438.P14215594039890325466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A052126 (n + 1) + A000007 n).toNat + A000007 n

end

end A304438.P14215594039890325466

namespace A304438

/-- `A154269(A052126(n+1)+A000007(n))+A000007(n)` -/
def P14215594039890325466.Spec : Prop :=
  ∀ n, P14215594039890325466.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P11997427432110181600

`A154269(A000040(n+1))+A154269(A052126(n+1))`
-/

namespace A304438.P11997427432110181600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A000040 (n + 1)).toNat + A154269 (A052126 (n + 1)).toNat

end

end A304438.P11997427432110181600

namespace A304438

/-- `A154269(A000040(n+1))+A154269(A052126(n+1))` -/
def P11997427432110181600.Spec : Prop :=
  ∀ n, P11997427432110181600.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P11702386735522452290

`A154269(2*n+1)-A154269(A052126(2*(n+1)))`
-/

namespace A304438.P11702386735522452290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (2 * n + 1) - A154269 (A052126 (2 * (n + 1))).toNat

end

end A304438.P11702386735522452290

namespace A304438

/-- `A154269(2*n+1)-A154269(A052126(2*(n+1)))` -/
def P11702386735522452290.Spec : Prop :=
  ∀ n, P11702386735522452290.a n = A304438 (n + 1)

end A304438

/-! ## A304438.P13127829364255716567

`A154269(A052126(n+1))+A154269(n²+2)`
-/

namespace A304438.P13127829364255716567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A052126 (n + 1)).toNat + A154269 (n ^ 2 + 2)

end

end A304438.P13127829364255716567

namespace A304438

/-- `A154269(A052126(n+1))+A154269(n²+2)` -/
def P13127829364255716567.Spec : Prop :=
  ∀ n, P13127829364255716567.a n = A304438 (n + 1)

end A304438

/-!
# A304439: Add to n the sum of its odd digits minus the sum of its even digits.

The programs for A304439, the canonical program `A304439.P321756116150895437` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304439 has offset 0).

The definition of A304439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304439.P321756116150895437

`2*n-(∑{digits}[n, #*(-1)^#]+n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304439

/-- `2*n-(∑{digits}[n, #*(-1)^#]+n)` -/
def P321756116150895437.Spec : Prop :=
  ∀ n, P321756116150895437.a n = A304439 n

theorem P321756116150895437.correct : P321756116150895437.Spec := by
  intro n
  simp only [A304439]

end A304439

/-! ## A304439.P475465898228867374

`2*n-A304440(n)`
-/

namespace A304439.P475465898228867374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A304440 n

end

end A304439.P475465898228867374

namespace A304439

/-- `2*n-A304440(n)` -/
def P475465898228867374.Spec : Prop :=
  ∀ n, P475465898228867374.a n = A304439 n

end A304439

/-! ## A304439.P13526478231322522606

`∑{digits}[n, A181983(#)]+n`
-/

namespace A304439.P13526478231322522606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181983 x).sum + (n : ℤ)

end

end A304439.P13526478231322522606

namespace A304439

/-- `∑{digits}[n, A181983(#)]+n` -/
def P13526478231322522606.Spec : Prop :=
  ∀ n, P13526478231322522606.a n = A304439 n

end A304439

/-! ## A304439.P15777201999032220580

`n-∑{digits}[n, A038608(#)]`
-/

namespace A304439.P15777201999032220580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A038608 x).sum

end

end A304439.P15777201999032220580

namespace A304439

/-- `n-∑{digits}[n, A038608(#)]` -/
def P15777201999032220580.Spec : Prop :=
  ∀ n, P15777201999032220580.a n = A304439 n

theorem P15777201999032220580.correct : P15777201999032220580.Spec := by
  intro n
  simp only [A304439, Nat.add_sub_cancel, A304439.P15777201999032220580.f1, A304439.P15777201999032220580.a, A304439.P321756116150895437.f1, A304439.P321756116150895437.a, A038608, A038608.P11893247063823867553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304439

/-! ## A304439.P14925411503371459172

`∑{digits}[n, A329116(#²)]+n`
-/

namespace A304439.P14925411503371459172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A329116 (x ^ 2)).sum + (n : ℤ)

end

end A304439.P14925411503371459172

namespace A304439

/-- `∑{digits}[n, A329116(#²)]+n` -/
def P14925411503371459172.Spec : Prop :=
  ∀ n, P14925411503371459172.a n = A304439 n

end A304439

/-! ## A304439.P32149227143957920

`n-∑{digits}[n, #*A014647(#)]`
-/

namespace A304439.P32149227143957920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A014647 x).sum

end

end A304439.P32149227143957920

namespace A304439

/-- `n-∑{digits}[n, #*A014647(#)]` -/
def P32149227143957920.Spec : Prop :=
  ∀ n, P32149227143957920.a n = A304439 n

end A304439

/-! ## A304439.P4472675828194638754

`n-∑{digits}[n, #*A014911(#)]`
-/

namespace A304439.P4472675828194638754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A014911 x).sum

end

end A304439.P4472675828194638754

namespace A304439

/-- `n-∑{digits}[n, #*A014911(#)]` -/
def P4472675828194638754.Spec : Prop :=
  ∀ n, P4472675828194638754.a n = A304439 n

end A304439

/-! ## A304439.P10285395732514016836

`n-∑{digits}[n, A274093(A000217(#))]`
-/

namespace A304439.P10285395732514016836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A274093 (A000217 x).toNat).sum

end

end A304439.P10285395732514016836

namespace A304439

/-- `n-∑{digits}[n, A274093(A000217(#))]` -/
def P10285395732514016836.Spec : Prop :=
  ∀ n, P10285395732514016836.a n = A304439 n

end A304439

/-! ## A304439.P15562722883741843902

`A071650(A017281(n))-1+n`
-/

namespace A304439.P15562722883741843902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A017281 n).toNat - 1 + (n : ℤ)

end

end A304439.P15562722883741843902

namespace A304439

/-- `A071650(A017281(n))-1+n` -/
def P15562722883741843902.Spec : Prop :=
  ∀ n, P15562722883741843902.a n = A304439 n

end A304439

/-! ## A304439.P10881333708210750701

`A071650(A017305(n))+n-3`
-/

namespace A304439.P10881333708210750701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A017305 n).toNat + ((n : ℤ) - 3)

end

end A304439.P10881333708210750701

namespace A304439

/-- `A071650(A017305(n))+n-3` -/
def P10881333708210750701.Spec : Prop :=
  ∀ n, P10881333708210750701.a n = A304439 n

end A304439

/-!
# A304440: Add to n the sum of its even digits minus the sum of its odd digits.

The programs for A304440, the canonical program `A304440.P17733557487416657930` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304440 has offset 0).

The definition of A304440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304440.P17733557487416657930

`∑{digits}[n, #*(-1)^#]+n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304440

/-- `∑{digits}[n, #*(-1)^#]+n` -/
def P17733557487416657930.Spec : Prop :=
  ∀ n, P17733557487416657930.a n = A304440 n

theorem P17733557487416657930.correct : P17733557487416657930.Spec := by
  intro n
  simp only [A304440]

end A304440

/-! ## A304440.P12933605187131622055

`2*n-A304439(n)`
-/

namespace A304440.P12933605187131622055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A304439 n

end

end A304440.P12933605187131622055

namespace A304440

/-- `2*n-A304439(n)` -/
def P12933605187131622055.Spec : Prop :=
  ∀ n, P12933605187131622055.a n = A304440 n

theorem P12933605187131622055.correct : P12933605187131622055.Spec := by
  intro n
  simp only [A304440, Nat.add_sub_cancel, A304440.P12933605187131622055.a, A304440.P17733557487416657930.f1, A304440.P17733557487416657930.a, A304439, A304439.P321756116150895437.f1, A304439.P321756116150895437.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304440

/-! ## A304440.P9398835258599603200

`n-∑{digits}[n, A181983(#)]`
-/

namespace A304440.P9398835258599603200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181983 x).sum

end

end A304440.P9398835258599603200

namespace A304440

/-- `n-∑{digits}[n, A181983(#)]` -/
def P9398835258599603200.Spec : Prop :=
  ∀ n, P9398835258599603200.a n = A304440 n

end A304440

/-! ## A304440.P17771542778301340703

`abs(∑{digits}[n, A038608(#)]+n)`
-/

namespace A304440.P17771542778301340703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A038608 x).sum + (n : ℤ)|

end

end A304440.P17771542778301340703

namespace A304440

/-- `abs(∑{digits}[n, A038608(#)]+n)` -/
def P17771542778301340703.Spec : Prop :=
  ∀ n, P17771542778301340703.a n = A304440 n

end A304440

/-! ## A304440.P10437978953080356385

`n-∑{digits}[n, A329116(#²)]`
-/

namespace A304440.P10437978953080356385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A329116 (x ^ 2)).sum

end

end A304440.P10437978953080356385

namespace A304440

/-- `n-∑{digits}[n, A329116(#²)]` -/
def P10437978953080356385.Spec : Prop :=
  ∀ n, P10437978953080356385.a n = A304440 n

end A304440

/-! ## A304440.P44902819601745619

`n+∑{digits}[n, #*A014911(#)]`
-/

namespace A304440.P44902819601745619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A014911 x).sum

end

end A304440.P44902819601745619

namespace A304440

/-- `n+∑{digits}[n, #*A014911(#)]` -/
def P44902819601745619.Spec : Prop :=
  ∀ n, P44902819601745619.a n = A304440 n

end A304440

/-! ## A304440.P1613555329760445191

`(∑{digits}[n, A038608(#)]+n)%A000040(n+1)`
-/

namespace A304440.P1613555329760445191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A038608 x).sum + (n : ℤ)) (A000040 (n + 1))

end

end A304440.P1613555329760445191

namespace A304440

/-- `(∑{digits}[n, A038608(#)]+n)%A000040(n+1)` -/
def P1613555329760445191.Spec : Prop :=
  ∀ n, P1613555329760445191.a n = A304440 n

end A304440

/-! ## A304440.P7890810004781629342

`A028310(n)-A071650(A028310(n))`
-/

namespace A304440.P7890810004781629342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A071650 (A028310 n).toNat

end

end A304440.P7890810004781629342

namespace A304440

/-- `A028310(n)-A071650(A028310(n))` -/
def P7890810004781629342.Spec : Prop :=
  ∀ n, P7890810004781629342.a n = A304440 n

end A304440

/-! ## A304440.P6890132366163313854

`A008486(n)-2*n-A071650(A008486(n)-2*n)`
-/

namespace A304440.P6890132366163313854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - (2 * n : ℤ) - A071650 (A008486 n - (2 * n : ℤ)).toNat

end

end A304440.P6890132366163313854

namespace A304440

/-- `A008486(n)-2*n-A071650(A008486(n)-2*n)` -/
def P6890132366163313854.Spec : Prop :=
  ∀ n, P6890132366163313854.a n = A304440 n

end A304440

/-! ## A304440.P2289296318063924090

`1-A071650(A017281(n))+n`
-/

namespace A304440.P2289296318063924090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071650 (A017281 n).toNat + (n : ℤ)

end

end A304440.P2289296318063924090

namespace A304440

/-- `1-A071650(A017281(n))+n` -/
def P2289296318063924090.Spec : Prop :=
  ∀ n, P2289296318063924090.a n = A304440 n

end A304440

/-!
# A304441: Numbers k such that 8k, 8k+1 and 8k+2 are the sum of two squares; A082982 / 8.

The programs for A304441, there is no canonical definition to state claims against.
-/

/-! ## A304441.P7906854474684223787

`A082982(n+1)/8`
-/

namespace A304441.P7906854474684223787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082982 (n + 1) : ℚ) / 8

end

end A304441.P7906854474684223787

/-! ## A304441.P8554256808101611713

`A006085(A082982(n+1))`
-/

namespace A304441.P8554256808101611713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A082982 (n + 1)).toNat

end

end A304441.P8554256808101611713

/-! ## A304441.P10868151094681815815

`A025480(A082982(n+1)+3)`
-/

namespace A304441.P10868151094681815815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A082982 (n + 1) + 3).toNat

end

end A304441.P10868151094681815815

/-! ## A304441.P7272387087560237126

`A110656(lcm(2, A082982(n+1)))`
-/

namespace A304441.P7272387087560237126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.lcm 2 (A082982 (n + 1)))

end

end A304441.P7272387087560237126

/-! ## A304441.P13884504487084335672

`A110656(A082982(n+1)-A000035(n))`
-/

namespace A304441.P13884504487084335672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A082982 (n + 1) - A000035 n).toNat

end

end A304441.P13884504487084335672

/-!
# A304442: Number of partitions of n in which the sequence of the sum of the same summands is constant.

The programs for A304442, there is no canonical definition to state claims against.
-/

/-! ## A304442.P3352959504901769523

`A000041(n)-A382076(n)`
-/

namespace A304442.P3352959504901769523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A382076 n

end

end A304442.P3352959504901769523

/-! ## A304442.P16847689515061602726

`A213598(n)-A382076(n)`
-/

namespace A304442.P16847689515061602726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A382076 n

end

end A304442.P16847689515061602726

/-! ## A304442.P7889024017370272198

`∑[A002865(n)]-A382076(n)`
-/

namespace A304442.P7889024017370272198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A382076 n

end

end A304442.P7889024017370272198

/-! ## A304442.P8229637382058774016

`A000065(n)+1-A382076(n)`
-/

namespace A304442.P8229637382058774016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - A382076 n

end

end A304442.P8229637382058774016

/-! ## A304442.P6669998769962352060

`A194439(n+2)-A382076(n)`
-/

namespace A304442.P6669998769962352060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (n + 2) - A382076 n

end

end A304442.P6669998769962352060

/-!
# A304443: Coefficient of x^n in Product_{k>=1} (1+x^k)^(2*n).

The programs for A304443, there is no canonical definition to state claims against.
-/

/-! ## A304443.P10750307811378757977

`A286335(A062725(n))`
-/

namespace A304443.P10750307811378757977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A062725 n).toNat

end

end A304443.P10750307811378757977

/-! ## A304443.P14548482524134093720

`A286335(A062728(n)-n)`
-/

namespace A304443.P14548482524134093720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A062728 n - (n : ℤ)).toNat

end

end A304443.P14548482524134093720

/-! ## A304443.P4139235307137288842

`A286335(A000217(3*n)+n)`
-/

namespace A304443.P4139235307137288842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A304443.P4139235307137288842

/-! ## A304443.P76385454399558781

`A286335(A245300(A046092(n)))`
-/

namespace A304443.P76385454399558781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A245300 (A046092 n).toNat).toNat

end

end A304443.P76385454399558781

/-! ## A304443.P13716633409388999557

`A286335(A245300(A008586(∑[n])))`
-/

namespace A304443.P13716633409388999557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A245300 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A304443.P13716633409388999557

/-!
# A304444: Coefficient of x^n in Product_{k>=1} 1/(1-x^k)^(2*n).

The programs for A304444, there is no canonical definition to state claims against.
-/

/-! ## A304444.P8234861825031958331

`A060850(A276819(n))`
-/

namespace A304444.P8234861825031958331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (A276819 n).toNat

end

end A304444.P8234861825031958331

/-! ## A304444.P4118966682413767173

`A144064(A062725(n))`
-/

namespace A304444.P4118966682413767173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A062725 n).toNat

end

end A304444.P4118966682413767173

/-! ## A304444.P17415129374062969441

`A144064(A062728(n)-n)`
-/

namespace A304444.P17415129374062969441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A062728 n - (n : ℤ)).toNat

end

end A304444.P17415129374062969441

/-! ## A304444.P4962892607181679751

`A144064(A027468(n)-2*n)`
-/

namespace A304444.P4962892607181679751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A027468 n - (2 * n : ℤ)).toNat

end

end A304444.P4962892607181679751

/-! ## A304444.P15345283597634076087

`A144064(A027468(n)-n-n)`
-/

namespace A304444.P15345283597634076087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A027468 n - (n : ℤ) - (n : ℤ)).toNat

end

end A304444.P15345283597634076087

/-!
# A304445: Coefficient of x^n in Product_{k>=1} (1+x^k)^(n^2).

The programs for A304445, there is no canonical definition to state claims against.
-/

/-! ## A304445.P4060258848114226847

`A286335(C(n²+1+n, 2)+n)`
-/

namespace A304445.P4060258848114226847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (Nat.choose (n ^ 2 + 1 + n) 2 + n)

end

end A304445.P4060258848114226847

/-! ## A304445.P15250004578897141536

`A286335(A110450(n)+n)`
-/

namespace A304445.P15250004578897141536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A110450 n + (n : ℤ)).toNat

end

end A304445.P15250004578897141536

/-! ## A304445.P5514178403807723383

`A286335(A027444(n)+A027441(n))`
-/

namespace A304445.P5514178403807723383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A027444 n + A027441 n).toNat

end

end A304445.P5514178403807723383

/-! ## A304445.P9093036047696695319

`A286335(eq[A025581(n), A143844(n)])`
-/

namespace A304445.P9093036047696695319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A304445.P9093036047696695319

/-!
# A304446: Coefficient of x^n in Product_{k>=1} 1/(1-x^k)^(n^2).

The programs for A304446, there is no canonical definition to state claims against.
-/

/-! ## A304446.P14273786789079570495

`A144064(A110450(n)+n)`
-/

namespace A304446.P14273786789079570495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A110450 n + (n : ℤ)).toNat

end

end A304446.P14273786789079570495

/-! ## A304446.P8277023778667300128

`A144064(A027444(n)+A027441(n))`
-/

namespace A304446.P8277023778667300128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A027444 n + A027441 n).toNat

end

end A304446.P8277023778667300128

/-! ## A304446.P9357310029700939295

`A144064(eq[A025581(n), A143844(n)])`
-/

namespace A304446.P9357310029700939295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A304446.P9357310029700939295

/-! ## A304446.P7075798217153588236

`A144064(eq[A004736(n+1)-1, A143844(n)])`
-/

namespace A304446.P7075798217153588236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A304446.P7075798217153588236

/-!
# A304447: Coefficient of x^n in Product_{k>=1} ((1+x^k)/(1-x^k))^(2*n).

The programs for A304447, there is no canonical definition to state claims against.
-/

/-! ## A304447.P14644455557191912866

`A288515(A062725(n))`
-/

namespace A304447.P14644455557191912866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A062725 n).toNat

end

end A304447.P14644455557191912866

/-! ## A304447.P3274267026916943205

`A288515(eq[A002262(n), A114327(n)])`
-/

namespace A304447.P3274267026916943205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A304447.P3274267026916943205

/-! ## A304447.P3662149111612823547

`A288515(A034856(n+1)+A000466(n))`
-/

namespace A304447.P3662149111612823547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A034856 (n + 1) + A000466 n).toNat

end

end A304447.P3662149111612823547

/-! ## A304447.P6248863373322065596

`A288515(eq[A004736(n+1), A158405(n+1)])`
-/

namespace A304447.P6248863373322065596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A304447.P6248863373322065596

/-! ## A304447.P10917330362038583119

`A288515(eq[A002260(n+1), A209278(n+1)])`
-/

namespace A304447.P10917330362038583119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A304447.P10917330362038583119

/-!
# A304448: Coefficient of x^n in Product_{k>=1} ((1+x^k)/(1-x^k))^(n^2).

The programs for A304448, there is no canonical definition to state claims against.
-/

/-! ## A304448.P15045557689851129433

`A288515(floor(Δ[n^5/10])+n)`
-/

namespace A304448.P15045557689851129433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (⌊f1 (n + 1) - f1 n⌋ + (n : ℤ)).toNat

end

end A304448.P15045557689851129433

/-!
# A304449: Numbers that are either squarefree or a perfect power.

The programs for A304449, there is no canonical definition to state claims against.
-/

/-! ## A304449.P10544237596012337426

`∪[comp[A105570(n)], A001597(n+1)]`
-/

namespace A304449.P10544237596012337426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A304449.P10544237596012337426

/-! ## A304449.P6553678041625634447

`∪[A001597(n+1), A005117(n+1)]`
-/

namespace A304449.P6553678041625634447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304449.P6553678041625634447

/-! ## A304449.P16948886276212754749

`∪[A001597(n+1), A072774(n+1)]`
-/

namespace A304449.P16948886276212754749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304449.P16948886276212754749

/-! ## A304449.P4507484837670187277

`∪[A001597(n+1), record[A007947(n+1)]]`
-/

namespace A304449.P4507484837670187277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304449.P4507484837670187277

/-! ## A304449.P7730590643717941541

`∪[A001597(n+1), record[A055231(n+1)]]`
-/

namespace A304449.P7730590643717941541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A304449.P7730590643717941541

/-! ## A304449.P15855119707734446100

`eq[A000007(A301573(n)), A087049(n)]`
-/

namespace A304449.P15855119707734446100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A301573 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304449.P15855119707734446100

/-!
# A304450: Numbers that are not perfect powers and whose prime factors span an initial interval of prime numbers.

The programs for A304450, the canonical program `A304450.P1856426496657703399` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304450 has offset 1).

The definition of A304450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304450.P10881595016073309134

`record[A052410(A055932(n+2))]`
-/

namespace A304450.P10881595016073309134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A055932 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304450.P10881595016073309134

namespace A304450

/-- `record[A052410(A055932(n+2))]` -/
def P10881595016073309134.Spec : Prop :=
  ∀ n, P10881595016073309134.a n = A304450 (n + 1)

end A304450

/-! ## A304450.P15630694124252668127

`record[A071364(A052410(n+2))]`
-/

namespace A304450.P15630694124252668127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A052410 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304450.P15630694124252668127

namespace A304450

/-- `record[A071364(A052410(n+2))]` -/
def P15630694124252668127.Spec : Prop :=
  ∀ n, P15630694124252668127.a n = A304450 (n + 1)

end A304450

/-! ## A304450.P1856426496657703399

`filter[A305634(n+1), A137794(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A304450

/-- `filter[A305634(n+1), A137794(#)]` -/
def P1856426496657703399.Spec : Prop :=
  ∀ n, P1856426496657703399.a n = A304450 (n + 1)

theorem P1856426496657703399.correct : P1856426496657703399.Spec := by
  intro n
  simp only [A304450, Nat.add_sub_cancel]

end A304450

/-! ## A304450.P13388671582286841477

`filter[A305634(n+1), A341629(#)]`
-/

namespace A304450.P13388671582286841477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A304450.P13388671582286841477

namespace A304450

/-- `filter[A305634(n+1), A341629(#)]` -/
def P13388671582286841477.Spec : Prop :=
  ∀ n, P13388671582286841477.a n = A304450 (n + 1)

end A304450

/-! ## A304450.P3262661261025762854

`∩[A055932(n+1), A305634(n+1)]`
-/

namespace A304450.P3262661261025762854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304450.P3262661261025762854

namespace A304450

/-- `∩[A055932(n+1), A305634(n+1)]` -/
def P3262661261025762854.Spec : Prop :=
  ∀ n, (P3262661261025762854.a n : ℤ) = A304450 (n + 1)

end A304450

/-! ## A304450.P716924885466304893

`∩[A066311(n+1), A305634(n+1)]`
-/

namespace A304450.P716924885466304893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304450.P716924885466304893

namespace A304450

/-- `∩[A066311(n+1), A305634(n+1)]` -/
def P716924885466304893.Spec : Prop :=
  ∀ n, (P716924885466304893.a n : ℤ) = A304450 (n + 1)

end A304450

/-! ## A304450.P16542040794751893204

`∩[A073491(n+1), A305634(n+1)]`
-/

namespace A304450.P16542040794751893204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304450.P16542040794751893204

namespace A304450

/-- `∩[A073491(n+1), A305634(n+1)]` -/
def P16542040794751893204.Spec : Prop :=
  ∀ n, (P16542040794751893204.a n : ℤ) = A304450 (n + 1)

end A304450

/-! ## A304450.P16691476084750621232

`record[A071364(A007916(n+1))]`
-/

namespace A304450.P16691476084750621232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A007916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304450.P16691476084750621232

namespace A304450

/-- `record[A071364(A007916(n+1))]` -/
def P16691476084750621232.Spec : Prop :=
  ∀ n, P16691476084750621232.a n = A304450 (n + 1)

end A304450

/-! ## A304450.P13712870193860151489

`filter[A007916(n+1), A341629(#)]`
-/

namespace A304450.P13712870193860151489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A304450.P13712870193860151489

namespace A304450

/-- `filter[A007916(n+1), A341629(#)]` -/
def P13712870193860151489.Spec : Prop :=
  ∀ n, P13712870193860151489.a n = A304450 (n + 1)

end A304450

/-! ## A304450.P1056914094585522778

`filter[A175082(n+2), A341629(#)]`
-/

namespace A304450.P1056914094585522778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A304450.P1056914094585522778

namespace A304450

/-- `filter[A175082(n+2), A341629(#)]` -/
def P1056914094585522778.Spec : Prop :=
  ∀ n, P1056914094585522778.a n = A304450 (n + 1)

end A304450

/-! ## A304450.P15640219252608041614

`∩[A007916(n+1), A055932(n+1)]`
-/

namespace A304450.P15640219252608041614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304450.P15640219252608041614

namespace A304450

/-- `∩[A007916(n+1), A055932(n+1)]` -/
def P15640219252608041614.Spec : Prop :=
  ∀ n, (P15640219252608041614.a n : ℤ) = A304450 (n + 1)

end A304450

/-! ## A304450.P14560081444551060438

`record[A304491(A055932(n+3))]`
-/

namespace A304450.P14560081444551060438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (A055932 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304450.P14560081444551060438

namespace A304450

/-- `record[A304491(A055932(n+3))]` -/
def P14560081444551060438.Spec : Prop :=
  ∀ n, P14560081444551060438.a n = A304450 (n + 1)

end A304450

/-! ## A304450.P6602009570036952303

`filter[A055932(n+2), A132350(#)]`
-/

namespace A304450.P6602009570036952303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A304450.P6602009570036952303

namespace A304450

/-- `filter[A055932(n+2), A132350(#)]` -/
def P6602009570036952303.Spec : Prop :=
  ∀ n, P6602009570036952303.a n = A304450 (n + 1)

end A304450

/-! ## A304450.P2939287492524984331

`record[A071364(A175067(2*(n+1)))]`
-/

namespace A304450.P2939287492524984331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A175067 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304450.P2939287492524984331

namespace A304450

/-- `record[A071364(A175067(2*(n+1)))]` -/
def P2939287492524984331.Spec : Prop :=
  ∀ n, P2939287492524984331.a n = A304450 (n + 1)

end A304450

/-! ## A304450.P13424723044274750509

`record[A340346(2*n+1)*A340346(A175067(2*(n+1)))]`
-/

namespace A304450.P13424723044274750509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (2 * n + 1) * A340346 (A175067 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304450.P13424723044274750509

namespace A304450

/-- `record[A340346(2*n+1)*A340346(A175067(2*(n+1)))]` -/
def P13424723044274750509.Spec : Prop :=
  ∀ n, P13424723044274750509.a n = A304450 (n + 1)

end A304450

/-!
# A304451: Solution (a(n)) of the complementary equation in Comments.

The programs for A304451, there is no canonical definition to state claims against.
-/

/-! ## A304451.P3545762949522559522

`A304452(floor(n/2))+A304452(n)`
-/

namespace A304451.P3545762949522559522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304452 ⌊(n : ℚ) / 2⌋.toNat + A304452 n

end

end A304451.P3545762949522559522

/-! ## A304451.P508607836222537980

`eq[char[A304452(n)], A151933(n)]`
-/

namespace A304451.P508607836222537980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304452 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304451.P508607836222537980

/-!
# A304452: Solution (b(n)) of the complementary equation in Comments.

The programs for A304452, there is no canonical definition to state claims against.
-/

/-! ## A304452.P15616614020124970637

`comp[A304451(n)-1]+1`
-/

namespace A304452.P15616614020124970637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304451 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304452.P15616614020124970637

/-! ## A304452.P12208153035747065379

`eq[char[A304451(n)], A113681(A057539(n+2))]`
-/

namespace A304452.P12208153035747065379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304451 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113681 (A057539 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304452.P12208153035747065379

/-! ## A304452.P4456049388451114394

`eq[char[A304451(n)], A113430(A166063(2*n+3))]`
-/

namespace A304452.P4456049388451114394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304451 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 (A166063 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304452.P4456049388451114394

/-! ## A304452.P5259289250626891181

`A304451(n)-a(A004526(n))` with `a(0)=1`
-/

namespace A304452.P5259289250626891181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304451 n - a (A004526 n).toNat

end

end A304452.P5259289250626891181

/-! ## A304452.P1417768366511278163

`eq[char[A304451(n)], A207710(A057540(2*n+1))]`
-/

namespace A304452.P1417768366511278163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304451 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207710 (A057540 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304452.P1417768366511278163

/-! ## A304452.P11298170622047737163

`eq[char[A304451(n)], A151933(n)]`
-/

namespace A304452.P11298170622047737163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304451 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304452.P11298170622047737163

/-!
# A304453: An expanded binary notation for n: the normal binary expansion for n is expanded by mapping each 1 to 10 and retaining the existing 0's.

The programs for A304453, there is no canonical definition to state claims against.
-/

/-! ## A304453.P11666165653502581193

`10*A014417(A048680(n))`
-/

namespace A304453.P11666165653502581193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A014417 (A048680 n).toNat

end

end A304453.P11666165653502581193

/-! ## A304453.P2315027576146673145

`A014417(A227352(A006068(2*n)))`
-/

namespace A304453.P2315027576146673145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A227352 (A006068 (2 * n)).toNat).toNat

end

end A304453.P2315027576146673145

/-! ## A304453.P15043624448444141485

`A007088(A124108(n))`
-/

namespace A304453.P15043624448444141485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A124108 n).toNat

end

end A304453.P15043624448444141485

/-! ## A304453.P17846729027573585122

`A007088(A048678(2*n))`
-/

namespace A304453.P17846729027573585122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048678 (2 * n)).toNat

end

end A304453.P17846729027573585122

/-! ## A304453.P9932561142224940948

`A007088(A003714(A048680(2*n)))`
-/

namespace A304453.P9932561142224940948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003714 (A048680 (2 * n)).toNat).toNat

end

end A304453.P9932561142224940948

/-! ## A304453.P17994535994222653749

`A007088(A048678(n)+A048678(n))`
-/

namespace A304453.P17994535994222653749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048678 n + A048678 n).toNat

end

end A304453.P17994535994222653749

/-! ## A304453.P13493787044209168344

`A007088(A088698(n)-A048678(n))`
-/

namespace A304453.P13493787044209168344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A088698 n - A048678 n).toNat

end

end A304453.P13493787044209168344

/-! ## A304453.P7118573625360561285

`A099820(A048678(n))`
-/

namespace A304453.P7118573625360561285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A048678 n).toNat

end

end A304453.P7118573625360561285

/-! ## A304453.P11747653527641239483

`A340051(A088698(n))`
-/

namespace A304453.P11747653527641239483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 (A088698 n).toNat

end

end A304453.P11747653527641239483

/-! ## A304453.P7724591498001803464

`A185544(A124108(2*n))`
-/

namespace A304453.P7724591498001803464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A124108 (2 * n)).toNat

end

end A304453.P7724591498001803464

/-! ## A304453.P9974729931961995839

`A185544(A048678(4*n))`
-/

namespace A304453.P9974729931961995839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A048678 (4 * n)).toNat

end

end A304453.P9974729931961995839

/-!
# A304454: G.f. satisfies: A(x) = 1 / (1/x - 1 - A(A(x))), with A(0) = 0.

The programs for A304454, there is no canonical definition to state claims against.
-/

/-! ## A304454.P3162632073382243900

`and(A057428(n), A193296(n+1))`
-/

namespace A304454.P3162632073382243900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A193296 (n + 1))

end

end A304454.P3162632073382243900

/-! ## A304454.P15830023477461170582

`xor(A000007(n), A193296(n+1))`
-/

namespace A304454.P15830023477461170582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A193296 (n + 1))

end

end A304454.P15830023477461170582

/-! ## A304454.P8875772287090853893

`A193296(n+1)*A295707(∑[n+1])`
-/

namespace A304454.P8875772287090853893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193296 (n + 1) * A295707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304454.P8875772287090853893

/-! ## A304454.P14261421303808331589

`A117448(A229046(n+1))`
-/

namespace A304454.P14261421303808331589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (A229046 (n + 1)).toNat

end

end A304454.P14261421303808331589

/-!
# A304455: Number of steps in the reduction to a multiset of size 1 of the multiset of prime factors of n, obtained by repeatedly taking the multiset of multiplicities.

The programs for A304455, the canonical program `A304455.P3257725704575316623` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304455 has offset 1).

The definition of A304455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304455.P8292222227897277067

`floor(A323014(n+1)/sqrt(sqrt(2)))`
-/

namespace A304455.P8292222227897277067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323014 (n + 1) : ℝ) / Real.sqrt (Real.sqrt (2 : ℝ))⌋

end

end A304455.P8292222227897277067

namespace A304455

/-- `floor(A323014(n+1)/sqrt(sqrt(2)))` -/
def P8292222227897277067.Spec : Prop :=
  ∀ n, P8292222227897277067.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P16123158787134879700

`round(sqrt(A182850(n+1)²+1))-1`
-/

namespace A304455.P16123158787134879700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A182850 (n + 1) ^ 2 + 1 : ℝ)) - 1

end

end A304455.P16123158787134879700

namespace A304455

/-- `round(sqrt(A182850(n+1)²+1))-1` -/
def P16123158787134879700.Spec : Prop :=
  ∀ n, P16123158787134879700.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P3257725704575316623

`A182850(C(2, n+1)+n+1)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A304455

/-- `A182850(C(2, n+1)+n+1)-1` -/
def P3257725704575316623.Spec : Prop :=
  ∀ n, P3257725704575316623.a n = A304455 (n + 1)

theorem P3257725704575316623.correct : P3257725704575316623.Spec := by
  intro n
  simp only [A304455, Nat.add_sub_cancel]

end A304455

/-! ## A304455.P3775119485386737654

`A182850(A181819(n+1))`
-/

namespace A304455.P3775119485386737654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A181819 (n + 1)).toNat

end

end A304455.P3775119485386737654

namespace A304455

/-- `A182850(A181819(n+1))` -/
def P3775119485386737654.Spec : Prop :=
  ∀ n, P3775119485386737654.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P14256075632455348754

`A323014(n+1)+A057428(n)`
-/

namespace A304455.P14256075632455348754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1) + A057428 n

end

end A304455.P14256075632455348754

namespace A304455

/-- `A323014(n+1)+A057428(n)` -/
def P14256075632455348754.Spec : Prop :=
  ∀ n, P14256075632455348754.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P1133855574076033454

`A182850(n+1)-A157928(n)`
-/

namespace A304455.P1133855574076033454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1) - A157928 n

end

end A304455.P1133855574076033454

namespace A304455

/-- `A182850(n+1)-A157928(n)` -/
def P1133855574076033454.Spec : Prop :=
  ∀ n, P1133855574076033454.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P12300557250041301924

`A323014(n+1)-A057427(n)`
-/

namespace A304455.P12300557250041301924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1) - A057427 n

end

end A304455.P12300557250041301924

namespace A304455

/-- `A323014(n+1)-A057427(n)` -/
def P12300557250041301924.Spec : Prop :=
  ∀ n, P12300557250041301924.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P15575083811645769274

`A182850(∏{e}[n+1, A000040(#)])`
-/

namespace A304455.P15575083811645769274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A304455.P15575083811645769274

namespace A304455

/-- `A182850(∏{e}[n+1, A000040(#)])` -/
def P15575083811645769274.Spec : Prop :=
  ∀ n, P15575083811645769274.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P3163956640317519616

`A182850(∏{e}[n+1, A003459(#)])`
-/

namespace A304455.P3163956640317519616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (∏ p ∈ Nat.primeFactors (f1 n), A003459 (Nat.factorization (f1 n) p)).toNat

end

end A304455.P3163956640317519616

namespace A304455

/-- `A182850(∏{e}[n+1, A003459(#)])` -/
def P3163956640317519616.Spec : Prop :=
  ∀ n, P3163956640317519616.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P18028202480888806047

`A182850(∏{e}[n+1, A040990(#)])`
-/

namespace A304455.P18028202480888806047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (∏ p ∈ Nat.primeFactors (f1 n), A040990 (Nat.factorization (f1 n) p)).toNat

end

end A304455.P18028202480888806047

namespace A304455

/-- `A182850(∏{e}[n+1, A040990(#)])` -/
def P18028202480888806047.Spec : Prop :=
  ∀ n, P18028202480888806047.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P6488414423159632215

`A182850(∏{e}[n+1, A058853(#)])`
-/

namespace A304455.P6488414423159632215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)).toNat

end

end A304455.P6488414423159632215

namespace A304455

/-- `A182850(∏{e}[n+1, A058853(#)])` -/
def P6488414423159632215.Spec : Prop :=
  ∀ n, P6488414423159632215.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P7356252556936522340

`A182850(∏{e}[n+1, A095285(#)])`
-/

namespace A304455.P7356252556936522340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (∏ p ∈ Nat.primeFactors (f1 n), A095285 (Nat.factorization (f1 n) p)).toNat

end

end A304455.P7356252556936522340

namespace A304455

/-- `A182850(∏{e}[n+1, A095285(#)])` -/
def P7356252556936522340.Spec : Prop :=
  ∀ n, P7356252556936522340.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P1329816966512087874

`A182850(∏{e}[n+1, A127052(#)])`
-/

namespace A304455.P1329816966512087874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (∏ p ∈ Nat.primeFactors (f1 n), A127052 (Nat.factorization (f1 n) p)).toNat

end

end A304455.P1329816966512087874

namespace A304455

/-- `A182850(∏{e}[n+1, A127052(#)])` -/
def P1329816966512087874.Spec : Prop :=
  ∀ n, P1329816966512087874.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P16398794388869590864

`A182850(∏{e}[n+1, A219697(#)])`
-/

namespace A304455.P16398794388869590864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (∏ p ∈ Nat.primeFactors (f1 n), A219697 (Nat.factorization (f1 n) p)).toNat

end

end A304455.P16398794388869590864

namespace A304455

/-- `A182850(∏{e}[n+1, A219697(#)])` -/
def P16398794388869590864.Spec : Prop :=
  ∀ n, P16398794388869590864.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P8758215105755821683

`(A323014(n+1)-1)*A157928(n)`
-/

namespace A304455.P8758215105755821683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323014 (n + 1) - 1) * A157928 n

end

end A304455.P8758215105755821683

namespace A304455

/-- `(A323014(n+1)-1)*A157928(n)` -/
def P8758215105755821683.Spec : Prop :=
  ∀ n, P8758215105755821683.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P6856081562517844463

`A182850(∏{e}[n+1, A040976(#)+2])`
-/

namespace A304455.P6856081562517844463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (∏ p ∈ Nat.primeFactors (f1 n), (A040976 (Nat.factorization (f1 n) p) + 2)).toNat

end

end A304455.P6856081562517844463

namespace A304455

/-- `A182850(∏{e}[n+1, A040976(#)+2])` -/
def P6856081562517844463.Spec : Prop :=
  ∀ n, P6856081562517844463.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P15216660887396897731

`A323014(n+1)-A327403(A327393(n+1))`
-/

namespace A304455.P15216660887396897731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1) - A327403 (A327393 (n + 1)).toNat

end

end A304455.P15216660887396897731

namespace A304455

/-- `A323014(n+1)-A327403(A327393(n+1))` -/
def P15216660887396897731.Spec : Prop :=
  ∀ n, P15216660887396897731.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P7278651568232496918

`A182850(n+1)+1-A020639(A000010(n+1))`
-/

namespace A304455.P7278651568232496918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1) + (1 - A020639 (A000010 (n + 1)).toNat)

end

end A304455.P7278651568232496918

namespace A304455

/-- `A182850(n+1)+1-A020639(A000010(n+1))` -/
def P7278651568232496918.Spec : Prop :=
  ∀ n, P7278651568232496918.a n = A304455 (n + 1)

end A304455

/-! ## A304455.P17418342479410775634

`A323014(n+1)-A060576(n+1)`
-/

namespace A304455.P17418342479410775634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1) - A060576 (n + 1)

end

end A304455.P17418342479410775634

namespace A304455

/-- `A323014(n+1)-A060576(n+1)` -/
def P17418342479410775634.Spec : Prop :=
  ∀ n, P17418342479410775634.a n = A304455 (n + 1)

end A304455

/-!
# A304463: a(n) begins the first run of at least n consecutive numbers with the same number of bi-unitary divisors.

The programs for A304463, there is no canonical definition to state claims against.
-/

/-! ## A304463.P1833097569353167931

`A349262(n+1)%A224353(n!)`
-/

namespace A304463.P1833097569353167931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349262 (n + 1)) (A224353 (Nat.factorial n))

end

end A304463.P1833097569353167931

/-! ## A304463.P17645007711351933841

`gcd(A349262(n+1), A349346(A349311(n)))`
-/

namespace A304463.P17645007711351933841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A349262 (n + 1)) (A349346 (A349311 n).toNat)

end

end A304463.P17645007711351933841

/-!
# A304464: Start with the normalized multiset of prime factors of n > 1. Given a multiset, take the multiset of its multiplicities. Repeat this until a multiset of size 1 is obtained. a(n) is the unique element of this multiset.

The programs for A304464, there is no canonical definition to state claims against.
-/

/-! ## A304464.P5068134529800989089

`A304465(n+1)+A230980(n*and(1, ∑{e}[n+1, #]!))`
-/

namespace A304464.P5068134529800989089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1) + A230980 (n * Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)))

end

end A304464.P5068134529800989089

/-! ## A304464.P7111904307987919474

`A304465(n+1)+A230980(A166260(n+1))`
-/

namespace A304464.P7111904307987919474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1) + A230980 (A166260 (n + 1)).toNat

end

end A304464.P7111904307987919474

/-! ## A304464.P2339601241985674853

`A338101(A320118(n+1))+A049084(n+1)`
-/

namespace A304464.P2339601241985674853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338101 (A320118 (n + 1)).toNat + A049084 (n + 1)

end

end A304464.P2339601241985674853

/-! ## A304464.P9387113723279192146

`A003963(A014973(n+1))*A304465(n+1)`
-/

namespace A304464.P9387113723279192146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A014973 (n + 1)).toNat * A304465 (n + 1)

end

end A304464.P9387113723279192146

/-! ## A304464.P7215939193975129737

`A028310(A049084(n+1))*A304465(n+1)`
-/

namespace A304464.P7215939193975129737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A049084 (n + 1)).toNat * A304465 (n + 1)

end

end A304464.P7215939193975129737

/-! ## A304464.P12241944381768385760

`A102885(A061397(n+1))*A304465(n+1)`
-/

namespace A304464.P12241944381768385760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102885 (A061397 (n + 1)).toNat * A304465 (n + 1)

end

end A304464.P12241944381768385760

/-! ## A304464.P13876722488053850515

`A338101(A325248(n+1))+A049084(n+1)`
-/

namespace A304464.P13876722488053850515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338101 (A325248 (n + 1)).toNat + A049084 (n + 1)

end

end A304464.P13876722488053850515

/-! ## A304464.P2464236453504887274

`A304465(n+1)*A306694(A181821(n+1))`
-/

namespace A304464.P2464236453504887274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (n + 1) * A306694 (A181821 (n + 1)).toNat

end

end A304464.P2464236453504887274

/-!
# A304465: If n is prime, set a(n) = 1. Otherwise, start with the multiset of prime factors of n, and given a multiset take the multiset of its multiplicities. Repeating this until a multiset of size 1 is reached, set a(n) to the unique element of this multiset.

The programs for A304465, there is no canonical definition to state claims against.
-/

/-! ## A304465.P4388173444198082464

`A304464(A181819(n+1))`
-/

namespace A304465.P4388173444198082464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (A181819 (n + 1)).toNat

end

end A304465.P4388173444198082464

/-! ## A304465.P18346072509604883347

`A304464(∏{e}[n+1, A000040(#)])`
-/

namespace A304465.P18346072509604883347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A304465.P18346072509604883347

/-! ## A304465.P17676702528665201733

`A304464(A329601(n+1)*A351944(n+1))`
-/

namespace A304465.P17676702528665201733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (A329601 (n + 1) * A351944 (n + 1)).toNat

end

end A304465.P17676702528665201733

/-! ## A304465.P14561392695561433487

`A304464(∏{e}[(n+1)²*(-1)^n, A207790(#)])`
-/

namespace A304465.P14561392695561433487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A207790 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A304465.P14561392695561433487

/-! ## A304465.P5184883733843553891

`A304464(∏{e}[A045966(n+1), A030291(#)])%(n+1)`
-/

namespace A304465.P5184883733843553891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304464 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030291 (Nat.factorization (f1 n).natAbs p)).toNat) (n + 1 : ℤ)

end

end A304465.P5184883733843553891

/-! ## A304465.P515689901249265271

`A304464(∏{e}[A304203(n+1), #])`
-/

namespace A304465.P515689901249265271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A304465.P515689901249265271

/-! ## A304465.P3083635764213022336

`gcd(A164136(A110660(n)), A304687(n+1))`
-/

namespace A304465.P3083635764213022336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164136 (A110660 n).toNat) (A304687 (n + 1))

end

end A304465.P3083635764213022336

/-! ## A304465.P3724586762059217592

`A304464(A238745(n+1))`
-/

namespace A304465.P3724586762059217592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (A238745 (n + 1)).toNat

end

end A304465.P3724586762059217592

/-! ## A304465.P14445973407218557196

`A046660((n+1)²)-A001221(n+1)*A046660(n+1)`
-/

namespace A304465.P14445973407218557196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 ((n + 1) ^ 2) - A001221 (n + 1) * A046660 (n + 1)

end

end A304465.P14445973407218557196

/-! ## A304465.P8468497045025934185

`A046660((n+1)²)-A046660(n+1)*A087624(n+1)`
-/

namespace A304465.P8468497045025934185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 ((n + 1) ^ 2) - A046660 (n + 1) * A087624 (n + 1)

end

end A304465.P8468497045025934185

/-!
# A304466: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304466, there is no canonical definition to state claims against.
-/

/-! ## A304466.P1854233338905129648

`A304472(∑[4*n]+1)`
-/

namespace A304466.P1854233338905129648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304466.P1854233338905129648

/-! ## A304466.P6531176484337148900

`record[A304472(A330613(n+1))]`
-/

namespace A304466.P6531176484337148900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304466.P6531176484337148900

/-! ## A304466.P1892376908387387669

`A304472(A001844(n))+char[10]`
-/

namespace A304466.P1892376908387387669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304466.P1892376908387387669

/-! ## A304466.P9928690232243101191

`record[A003982(n)*A304472(n+1)]`
-/

namespace A304466.P9928690232243101191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304466.P9928690232243101191

/-! ## A304466.P14377183405730631845

`record[gcd(A231713(n), A304472(n+1))]`
-/

namespace A304466.P14377183405730631845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231713 n) (A304472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304466.P14377183405730631845

/-!
# A304467: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304467, there is no canonical definition to state claims against.
-/

/-! ## A304467.P6624550040764162293

`A304472(∑[n+2]+4)`
-/

namespace A304467.P6624550040764162293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304467.P6624550040764162293

/-! ## A304467.P10715550443986739726

`A304472(A167614(n+1))+char[19]`
-/

namespace A304467.P10715550443986739726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304467.P10715550443986739726

/-! ## A304467.P7141002824308955701

`A304472(A046691(n)+7)+char[28]`
-/

namespace A304467.P7141002824308955701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304467.P7141002824308955701

/-! ## A304467.P11277904367429453687

`A304472(A167499(n)+n)+char[19]`
-/

namespace A304467.P11277904367429453687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304467.P11277904367429453687

/-! ## A304467.P16095464816350638812

`record[gcd(A084938(n+1), A304472(n+4))]`
-/

namespace A304467.P16095464816350638812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 (n + 1)) (A304472 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304467.P16095464816350638812

/-!
# A304468: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304468, there is no canonical definition to state claims against.
-/

/-! ## A304468.P16379315015216827934

`A304472(∑[n+3]+7)`
-/

namespace A304468.P16379315015216827934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304468.P16379315015216827934

/-! ## A304468.P15155882785376009296

`record[gcd(A025581(n), A304472(n+5))]`
-/

namespace A304468.P15155882785376009296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A304472 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304468.P15155882785376009296

/-! ## A304468.P6235392486386920805

`A304472(A167614(n+2)+1)+char[22]`
-/

namespace A304468.P6235392486386920805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304468.P6235392486386920805

/-! ## A304468.P17514279092033431528

`A304472(A167614(n+2)+1)%A000108(n+9)`
-/

namespace A304468.P17514279092033431528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304472 (A167614 (n + 2) + 1).toNat) (A000108 (n + 9))

end

end A304468.P17514279092033431528

/-! ## A304468.P5073174487821030703

`A007318(and(3, -n))*A304472(A167614(n+2)+1)`
-/

namespace A304468.P5073174487821030703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A304472 (A167614 (n + 2) + 1).toNat

end

end A304468.P5073174487821030703

/-!
# A304469: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304469, there is no canonical definition to state claims against.
-/

/-! ## A304469.P8751692726620321466

`A304472(∑[n+4]+11)`
-/

namespace A304469.P8751692726620321466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304469.P8751692726620321466

/-! ## A304469.P3405734505794299291

`A304472(A000217(n+4)+5)+char[25]`
-/

namespace A304469.P3405734505794299291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304469.P3405734505794299291

/-! ## A304469.P13016970445068707712

`A304472(A374005(n+1))+A070097(n+1)`
-/

namespace A304469.P13016970445068707712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A374005 (n + 1)).toNat + A070097 (n + 1)

end

end A304469.P13016970445068707712

/-! ## A304469.P11312535412458194044

`A304472(A374005(n+1))+A005369(2*n+3)`
-/

namespace A304469.P11312535412458194044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A374005 (n + 1)).toNat + A005369 (2 * n + 3)

end

end A304469.P11312535412458194044

/-! ## A304469.P18157822541925557378

`A007318(C(2, n))*A304472(A000217(n+4)+5)`
-/

namespace A304469.P18157822541925557378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A304472 (A000217 (n + 4) + 5).toNat

end

end A304469.P18157822541925557378

/-!
# A304470: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304470, there is no canonical definition to state claims against.
-/

/-! ## A304470.P11486103244772815760

`A304472(∑[n+5]+16)`
-/

namespace A304470.P11486103244772815760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304470.P11486103244772815760

/-! ## A304470.P3230479946758020751

`A304472(A000124(n+5)+5)+char[16]`
-/

namespace A304470.P3230479946758020751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304470.P3230479946758020751

/-! ## A304470.P13974788213384176456

`A304472(A027379(n+3)+9)+char[16]`
-/

namespace A304470.P13974788213384176456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A027379 (n + 3) + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304470.P13974788213384176456

/-! ## A304470.P13778587062572274246

`A006519(2*n+3)*A304472(A374007(n+1))`
-/

namespace A304470.P13778587062572274246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 3) * A304472 (A374007 (n + 1)).toNat

end

end A304470.P13778587062572274246

/-! ## A304470.P11150408004805038644

`A007318(C(n, 2))*A304472(A000124(n+5)+5)`
-/

namespace A304470.P11150408004805038644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A304472 (A000124 (n + 5) + 5).toNat

end

end A304470.P11150408004805038644

/-!
# A304471: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304471, there is no canonical definition to state claims against.
-/

/-! ## A304471.P17413592999089855149

`A304472(A374008(n+1))`
-/

namespace A304471.P17413592999089855149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A374008 (n + 1)).toNat

end

end A304471.P17413592999089855149

/-! ## A304471.P1805640127648115620

`A304472(A167487(n+5))`
-/

namespace A304471.P1805640127648115620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A167487 (n + 5)).toNat

end

end A304471.P1805640127648115620

/-! ## A304471.P15628530538089647446

`A304472(A056119(n)+28)`
-/

namespace A304471.P15628530538089647446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A056119 n + 28).toNat

end

end A304471.P15628530538089647446

/-! ## A304471.P550928534375701025

`A304472(eq[11, A066657(n)])`
-/

namespace A304471.P550928534375701025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304471.P550928534375701025

/-! ## A304471.P2718170570361739126

`A304472(A000124(n+6)+6)`
-/

namespace A304471.P2718170570361739126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304472 (A000124 (n + 6) + 6).toNat

end

end A304471.P2718170570361739126

/-!
# A304472: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304472, there is no canonical definition to state claims against.
-/

/-! ## A304472.P1187011546022311077

`A316289(n+1)-A186745(A306100(n))`
-/

namespace A304472.P1187011546022311077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (n + 1) - A186745 (A306100 n).toNat

end

end A304472.P1187011546022311077

/-! ## A304472.P15926553198755509891

`A316289(n+1)+A016389(A022166(n))`
-/

namespace A304472.P15926553198755509891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (n + 1) + A016389 (A022166 n).toNat

end

end A304472.P15926553198755509891

/-! ## A304472.P12795618393116570953

`A316289(n+1)+A016389(A027336(n))`
-/

namespace A304472.P12795618393116570953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (n + 1) + A016389 (A027336 n).toNat

end

end A304472.P12795618393116570953

/-! ## A304472.P12821090575993166268

`A316289(n+1)+A290531(A056940(n))`
-/

namespace A304472.P12821090575993166268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316289 (n + 1) + A290531 (A056940 n).toNat

end

end A304472.P12821090575993166268

/-! ## A304472.P5582535545625977273

`A316518(n+1)+A185213(A185213(n+1))`
-/

namespace A304472.P5582535545625977273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316518 (n + 1) + A185213 (A185213 (n + 1)).toNat

end

end A304472.P5582535545625977273

/-!
# A304473: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304473, there is no canonical definition to state claims against.
-/

/-! ## A304473.P6707375983634641005

`A304479(∑[4*n]+1)`
-/

namespace A304473.P6707375983634641005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304473.P6707375983634641005

/-! ## A304473.P390713145344146532

`record[A304479(Δ[A235355(n)])]`
-/

namespace A304473.P390713145344146532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304473.P390713145344146532

/-! ## A304473.P1628028308778344908

`and(-1, A304479(A001844(n)))`
-/

namespace A304473.P1628028308778344908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304479 (A001844 n).toNat)

end

end A304473.P1628028308778344908

/-! ## A304473.P9982683388341866713

`record[A304479(A330613(n+1))]`
-/

namespace A304473.P9982683388341866713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304473.P9982683388341866713

/-! ## A304473.P9331050939405430638

`record[A003982(n)*A304479(n+1)]`
-/

namespace A304473.P9331050939405430638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304473.P9331050939405430638

/-!
# A304474: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304474, there is no canonical definition to state claims against.
-/

/-! ## A304474.P2518581489193473479

`A304479(∑[n+2]+4)`
-/

namespace A304474.P2518581489193473479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304474.P2518581489193473479

/-! ## A304474.P13002406728568128854

`A304479(A167614(n+1))+char[22]`
-/

namespace A304474.P13002406728568128854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304474.P13002406728568128854

/-! ## A304474.P14996698605779646377

`A304479(A167614(n+1))/A152845(n)`
-/

namespace A304474.P14996698605779646377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304479 (A167614 (n + 1)).toNat : ℚ) / (A152845 n : ℚ)

end

end A304474.P14996698605779646377

/-! ## A304474.P9761721833816232076

`lcm(A020985(n), A304479(A167614(n+1)))`
-/

namespace A304474.P9761721833816232076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A304479 (A167614 (n + 1)).toNat)

end

end A304474.P9761721833816232076

/-! ## A304474.P13294048490555112039

`or(A011745(n), A304479(A167614(n+1)))`
-/

namespace A304474.P13294048490555112039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011745 n) (A304479 (A167614 (n + 1)).toNat)

end

end A304474.P13294048490555112039

/-!
# A304475: Number of n X 4 0..1 arrays with every element unequal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304475, there is no canonical definition to state claims against.
-/

/-! ## A304475.P3192265807429027126

`A304479(∑[n+3]+7)`
-/

namespace A304475.P3192265807429027126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304475.P3192265807429027126

/-! ## A304475.P11556818280291141324

`A304479(A167614(n+2)+1)+char[18]`
-/

namespace A304475.P11556818280291141324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304475.P11556818280291141324

/-! ## A304475.P13236800339930146418

`A304479(A000124(n+3)+3)+char[20]`
-/

namespace A304475.P13236800339930146418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304475.P13236800339930146418

/-! ## A304475.P17300896739991397618

`char[xor(1, n)]*A304479(A052905(n)+9)`
-/

namespace A304475.P17300896739991397618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A304479 (A052905 n + 9).toNat

end

end A304475.P17300896739991397618

/-! ## A304475.P1831898088622103732

`char[A275736(n)]*A304479(A052905(n)+9)`
-/

namespace A304475.P1831898088622103732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275736 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A304479 (A052905 n + 9).toNat

end

end A304475.P1831898088622103732

/-!
# A304476: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304476, there is no canonical definition to state claims against.
-/

/-! ## A304476.P11759564176055267346

`A304479(∑[n+4]+11)`
-/

namespace A304476.P11759564176055267346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304476.P11759564176055267346

/-! ## A304476.P9706840879704007319

`A304479(A056115(n)+11)%A304846(n+1)`
-/

namespace A304476.P9706840879704007319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304479 (A056115 n + 11).toNat) (A304846 (n + 1))

end

end A304476.P9706840879704007319

/-! ## A304476.P3296751943673595197

`A304479(Δ[A023545(n+1)])+A236241(n+1)`
-/

namespace A304476.P3296751943673595197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (f1 (n + 1) - f1 n).toNat + A236241 (n + 1)

end

end A304476.P3296751943673595197

/-! ## A304476.P975268813534729851

`A304479(Δ[A023545(n+1)])%A022723(n+1)`
-/

namespace A304476.P975268813534729851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304479 (f1 (n + 1) - f1 n).toNat) (A022723 (n + 1))

end

end A304476.P975268813534729851

/-!
# A304477: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304477, there is no canonical definition to state claims against.
-/

/-! ## A304477.P8876237234386673843

`A304479(∑[n+5]+16)`
-/

namespace A304477.P8876237234386673843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304477.P8876237234386673843

/-! ## A304477.P4720674727226255418

`A304479(A056115(n)+21)+char[17]`
-/

namespace A304477.P4720674727226255418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A056115 n + 21).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304477.P4720674727226255418

/-! ## A304477.P9896741272309703563

`A304479(A000124(n+5)+5)+char[16]`
-/

namespace A304477.P9896741272309703563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304477.P9896741272309703563

/-! ## A304477.P10475448612638945516

`A007318(C(2, n))*A304479(A056115(n)+21)`
-/

namespace A304477.P10475448612638945516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A304479 (A056115 n + 21).toNat

end

end A304477.P10475448612638945516

/-! ## A304477.P3876708736391512844

`A133186(A191113(n+3))*A304479(A056115(n)+21)`
-/

namespace A304477.P3876708736391512844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133186 (A191113 (n + 3)).toNat * A304479 (A056115 n + 21).toNat

end

end A304477.P3876708736391512844

/-!
# A304478: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304478, there is no canonical definition to state claims against.
-/

/-! ## A304478.P8316013767806218804

`A304479(A374008(n+1))`
-/

namespace A304478.P8316013767806218804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A374008 (n + 1)).toNat

end

end A304478.P8316013767806218804

/-! ## A304478.P12373348178222542641

`A304479(A056119(n)+28)`
-/

namespace A304478.P12373348178222542641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A056119 n + 28).toNat

end

end A304478.P12373348178222542641

/-! ## A304478.P7329110384552666855

`A304479(eq[11, A066657(n)])`
-/

namespace A304478.P7329110384552666855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304478.P7329110384552666855

/-! ## A304478.P2094245751146484062

`A304479(A000124(n+6)+6)`
-/

namespace A304478.P2094245751146484062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A000124 (n + 6) + 6).toNat

end

end A304478.P2094245751146484062

/-! ## A304478.P9674091475933625899

`A304479(A000096(n+5)+8)`
-/

namespace A304478.P9674091475933625899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (A000096 (n + 5) + 8).toNat

end

end A304478.P9674091475933625899

/-!
# A304479: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304479, there is no canonical definition to state claims against.
-/

/-! ## A304479.P15416644962537176260

`A316304(n+1)-A186034(A022167(n))`
-/

namespace A304479.P15416644962537176260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (n + 1) - A186034 (A022167 n).toNat

end

end A304479.P15416644962537176260

/-! ## A304479.P14363205011677302803

`A316304(n+1)-A173920(A173917(n))`
-/

namespace A304479.P14363205011677302803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (n + 1) - A173920 (A173917 n).toNat

end

end A304479.P14363205011677302803

/-! ## A304479.P10001421467168912691

`A305258(A001263(n+1))+A305245(n+1)`
-/

namespace A304479.P10001421467168912691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A001263 (n + 1)).toNat + A305245 (n + 1)

end

end A304479.P10001421467168912691

/-! ## A304479.P15131721185831049669

`A316304(n+1)-A333382(A268056(n+1))`
-/

namespace A304479.P15131721185831049669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316304 (n + 1) - A333382 (A268056 (n + 1)).toNat

end

end A304479.P15131721185831049669

/-! ## A304479.P7609369379669531409

`A305258(A001263(n+1))+A134361(A303800(n+1))`
-/

namespace A304479.P7609369379669531409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A001263 (n + 1)).toNat + A134361 (A303800 (n + 1)).toNat

end

end A304479.P7609369379669531409

/-!
# A304480: a(n) is the least m such that lambda(k) >= n for all k >= m where lambda is A002322, the Carmichael lambda function.

The programs for A304480, there is no canonical definition to state claims against.
-/

/-! ## A304480.P14725591489561616572

`A258781(round(sqrt(n²+1)))+A158388(n)`
-/

namespace A304480.P14725591489561616572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258781 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A158388 n

end

end A304480.P14725591489561616572

/-! ## A304480.P7211966375687851333

`A335117(∑{e}[∏{p}[(n+1)*a(n-1), #], #]+1)` with `a(0)=1`
-/

namespace A304480.P7211966375687851333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335117 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A304480.P7211966375687851333

/-! ## A304480.P116621476243231246

`A335117(A000267(n)%A292369(n+1))`
-/

namespace A304480.P116621476243231246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335117 (Int.tmod (A000267 n) (A292369 (n + 1))).toNat

end

end A304480.P116621476243231246

/-! ## A304480.P5944815587912300852

`A335117(A000267(n))%A167154(n+3)`
-/

namespace A304480.P5944815587912300852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335117 (A000267 n).toNat) (A167154 (n + 3))

end

end A304480.P5944815587912300852

/-!
# A304481: Turn the power-tower for n upside-down.

The programs for A304481, there is no canonical definition to state claims against.
-/

/-! ## A304481.P2055100781150498897

`A304491(n+1)^A304495(A090107(n+1))`
-/

namespace A304481.P2055100781150498897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304491 (n + 1) : ℚ) ^ (A304495 (A090107 (n + 1)).toNat : ℤ)

end

end A304481.P2055100781150498897

/-! ## A304481.P2192626730937514699

`A175082(A304492(n+1))^A304495(n+1)`
-/

namespace A304481.P2192626730937514699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175082 (A304492 (n + 1)).toNat : ℚ) ^ (A304495 (n + 1) : ℤ)

end

end A304481.P2192626730937514699

/-! ## A304481.P8610872072709647692

`A304491(n+1)^A304495(3^C(n, 68)+n)`
-/

namespace A304481.P8610872072709647692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304491 (n + 1) : ℚ) ^ (A304495 (3 ^ Nat.choose n 68 + n) : ℤ)

end

end A304481.P8610872072709647692

/-! ## A304481.P2966090335848030888

`A304491(n+1)^(A304495(n+1)%A304497(n))`
-/

namespace A304481.P2966090335848030888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304491 (n + 1) : ℚ) ^ (Int.tmod (A304495 (n + 1)) (A304497 n) : ℤ)

end

end A304481.P2966090335848030888

/-! ## A304481.P1830372356668591053

`(A304491(n+1)%A304501(n))^A304495(n+1)`
-/

namespace A304481.P1830372356668591053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A304491 (n + 1)) (A304501 n) : ℚ) ^ (A304495 (n + 1) : ℤ)

end

end A304481.P1830372356668591053

/-! ## A304481.P4331892643467684664

`(A304491(n+1)^A304495(n+1))%A304499(n)`
-/

namespace A304481.P4331892643467684664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A304491 (n + 1) : ℚ) ^ (A304495 (n + 1) : ℤ))) (A304499 n)

end

end A304481.P4331892643467684664

/-!
# A304482: Number A(n,k) of n-element subsets of [k*n] whose elements sum to a multiple of n. Square array A(n,k) with n, k >= 0 read by antidiagonals.

The programs for A304482, there is no canonical definition to state claims against.
-/

/-! ## A304482.P14836062359233798404

`A322279(n)+A007814(A057004(n+1))`
-/

namespace A304482.P14836062359233798404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 n + A007814 (A057004 (n + 1)).toNat

end

end A304482.P14836062359233798404

/-! ## A304482.P17727908395038840826

`A322279(n)+A124762(A351790(n))`
-/

namespace A304482.P17727908395038840826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 n + A124762 (A351790 n).toNat

end

end A304482.P17727908395038840826

/-! ## A304482.P11009346761606572248

`gcd(A212148(A143632(n)), A342129(n))`
-/

namespace A304482.P11009346761606572248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212148 (A143632 n).toNat) (A342129 n)

end

end A304482.P11009346761606572248

/-! ## A304482.P9115251001462481728

`dr(A292861(n)%A273140(3*n+4))`
-/

namespace A304482.P9115251001462481728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A292861 n) (A273140 (3 * n + 4)))

end

end A304482.P9115251001462481728

/-! ## A304482.P12199366535822260818

`A322279(n)^A320080(A269129(n))`
-/

namespace A304482.P12199366535822260818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322279 n : ℚ) ^ (A320080 (A269129 n).toNat : ℤ)

end

end A304482.P12199366535822260818

/-!
# A304483: a(n) = pi(n)*pi(2n), where pi is A000720: the prime counting function.

The programs for A304483, the canonical program `A304483.P17392698162710059633` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304483 has offset 1).

The definition of A304483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304483.P17392698162710059633

`A000720(n+1)*A000720(2*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304483

/-- `A000720(n+1)*A000720(2*(n+1))` -/
def P17392698162710059633.Spec : Prop :=
  ∀ n, P17392698162710059633.a n = A304483 (n + 1)

theorem P17392698162710059633.correct : P17392698162710059633.Spec := by
  intro n
  simp only [A304483, Nat.add_sub_cancel]

end A304483

/-! ## A304483.P6011009452886131068

`A000720(n+1)*A099801(n)`
-/

namespace A304483.P6011009452886131068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A099801 n

end

end A304483.P6011009452886131068

namespace A304483

/-- `A000720(n+1)*A099801(n)` -/
def P6011009452886131068.Spec : Prop :=
  ∀ n, P6011009452886131068.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P1193947337028346408

`∑[A010051(n+1)]*A099801(n)`
-/

namespace A304483.P1193947337028346408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A099801 n

end

end A304483.P1193947337028346408

namespace A304483

/-- `∑[A010051(n+1)]*A099801(n)` -/
def P1193947337028346408.Spec : Prop :=
  ∀ n, P1193947337028346408.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P8045653834452998854

`A000720(n+1)*A099802(n+1)`
-/

namespace A304483.P8045653834452998854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A099802 (n + 1)

end

end A304483.P8045653834452998854

namespace A304483

/-- `A000720(n+1)*A099802(n+1)` -/
def P8045653834452998854.Spec : Prop :=
  ∀ n, P8045653834452998854.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P1226172626044727636

`(∑[A101264(n)]+1)*A000720(n+1)`
-/

namespace A304483.P1226172626044727636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A000720 (n + 1)

end

end A304483.P1226172626044727636

namespace A304483

/-- `(∑[A101264(n)]+1)*A000720(n+1)` -/
def P1226172626044727636.Spec : Prop :=
  ∀ n, P1226172626044727636.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P13157006969236001895

`∑[A010051(n+1)]*A099802(n+1)`
-/

namespace A304483.P13157006969236001895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A099802 (n + 1)

end

end A304483.P13157006969236001895

namespace A304483

/-- `∑[A010051(n+1)]*A099802(n+1)` -/
def P13157006969236001895.Spec : Prop :=
  ∀ n, P13157006969236001895.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P4468350918624334358

`(n-∑[A066247(n+1)])*A099801(n)`
-/

namespace A304483.P4468350918624334358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * A099801 n

end

end A304483.P4468350918624334358

namespace A304483

/-- `(n-∑[A066247(n+1)])*A099801(n)` -/
def P4468350918624334358.Spec : Prop :=
  ∀ n, P4468350918624334358.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P6696717597197522413

`(A100637(n)-A074990(n+1))*A099802(n+1)`
-/

namespace A304483.P6696717597197522413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100637 n - A074990 (n + 1)) * A099802 (n + 1)

end

end A304483.P6696717597197522413

namespace A304483

/-- `(A100637(n)-A074990(n+1))*A099802(n+1)` -/
def P6696717597197522413.Spec : Prop :=
  ∀ n, P6696717597197522413.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P10505434948165259250

`(A099801(n+1)-A035250(n+2))*A099801(n)`
-/

namespace A304483.P10505434948165259250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099801 (n + 1) - A035250 (n + 2)) * A099801 n

end

end A304483.P10505434948165259250

namespace A304483

/-- `(A099801(n+1)-A035250(n+2))*A099801(n)` -/
def P10505434948165259250.Spec : Prop :=
  ∀ n, P10505434948165259250.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P6731753327895101078

`A099801(n)*A230980(n+1)`
-/

namespace A304483.P6731753327895101078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n * A230980 (n + 1)

end

end A304483.P6731753327895101078

namespace A304483

/-- `A099801(n)*A230980(n+1)` -/
def P6731753327895101078.Spec : Prop :=
  ∀ n, P6731753327895101078.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P4347990986178099198

`A099802(n+1)*A230980(n+1)`
-/

namespace A304483.P4347990986178099198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) * A230980 (n + 1)

end

end A304483.P4347990986178099198

namespace A304483

/-- `A099802(n+1)*A230980(n+1)` -/
def P4347990986178099198.Spec : Prop :=
  ∀ n, P4347990986178099198.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P7585776260350035047

`(A099802(n+2)-A035250(n+2))*A099802(n+1)`
-/

namespace A304483.P7585776260350035047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099802 (n + 2) - A035250 (n + 2)) * A099802 (n + 1)

end

end A304483.P7585776260350035047

namespace A304483

/-- `(A099802(n+2)-A035250(n+2))*A099802(n+1)` -/
def P7585776260350035047.Spec : Prop :=
  ∀ n, P7585776260350035047.a n = A304483 (n + 1)

end A304483

/-! ## A304483.P1482496264887928475

`A230980(2*n+1)*A230980(n+1)`
-/

namespace A304483.P1482496264887928475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * n + 1) * A230980 (n + 1)

end

end A304483.P1482496264887928475

namespace A304483

/-- `A230980(2*n+1)*A230980(n+1)` -/
def P1482496264887928475.Spec : Prop :=
  ∀ n, P1482496264887928475.a n = A304483 (n + 1)

end A304483

/-!
# A304484: a(n) = A033270(n)*A033270(2n), where A033270 counts the odd primes.

The programs for A304484, the canonical program `A304484.P2454143240847601615` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304484 has offset 1).

The definition of A304484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033270, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304484.P3082388218768669169

`A033270(n+1)*A033270(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304484.P3082388218768669169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) * A033270 (2 * (n + 1))

end

end A304484.P3082388218768669169

namespace A304484

/-- `A033270(n+1)*A033270(2*(n+1))` -/
def P3082388218768669169.Spec : Prop :=
  ∀ n, P3082388218768669169.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P2454143240847601615

`A033270(n+1)*A033270(2*n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304484

/-- `A033270(n+1)*A033270(2*n+1)` -/
def P2454143240847601615.Spec : Prop :=
  ∀ n, P2454143240847601615.a n = A304484 (n + 1)

theorem P2454143240847601615.correct : P2454143240847601615.Spec := by
  intro n
  simp only [A304484, Nat.add_sub_cancel]

end A304484

/-! ## A304484.P1531862151541808313

`(A000720(n+1)-1)*∑[A101264(n)]`
-/

namespace A304484.P1531862151541808313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 1) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304484.P1531862151541808313

namespace A304484

/-- `(A000720(n+1)-1)*∑[A101264(n)]` -/
def P1531862151541808313.Spec : Prop :=
  ∀ n, P1531862151541808313.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P17499114623692227938

`A033270(n+1)*A278617(n+2)`
-/

namespace A304484.P17499114623692227938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) * A278617 (n + 2)

end

end A304484.P17499114623692227938

namespace A304484

/-- `A033270(n+1)*A278617(n+2)` -/
def P17499114623692227938.Spec : Prop :=
  ∀ n, P17499114623692227938.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P5219614240991651458

`A000720(n+1)*A278617(n+2)-A278617(n+2)`
-/

namespace A304484.P5219614240991651458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A278617 (n + 2) - A278617 (n + 2)

end

end A304484.P5219614240991651458

namespace A304484

/-- `A000720(n+1)*A278617(n+2)-A278617(n+2)` -/
def P5219614240991651458.Spec : Prop :=
  ∀ n, P5219614240991651458.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P8610048097460034132

`A084360(A151800(2*n+1))*A084360(A151800(n+1))`
-/

namespace A304484.P8610048097460034132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A151800 (2 * n + 1)).toNat * A084360 (A151800 (n + 1)).toNat

end

end A304484.P8610048097460034132

namespace A304484

/-- `A084360(A151800(2*n+1))*A084360(A151800(n+1))` -/
def P8610048097460034132.Spec : Prop :=
  ∀ n, P8610048097460034132.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P13762670672839838352

`(A230980(n+1)-1)*A082460(2*n+1)`
-/

namespace A304484.P13762670672839838352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230980 (n + 1) - 1) * A082460 (2 * n + 1)

end

end A304484.P13762670672839838352

namespace A304484

/-- `(A230980(n+1)-1)*A082460(2*n+1)` -/
def P13762670672839838352.Spec : Prop :=
  ∀ n, P13762670672839838352.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P9226183253348600683

`A082460(2*n+1)*A082460(A109613(n))`
-/

namespace A304484.P9226183253348600683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (2 * n + 1) * A082460 (A109613 n).toNat

end

end A304484.P9226183253348600683

namespace A304484

/-- `A082460(2*n+1)*A082460(A109613(n))` -/
def P9226183253348600683.Spec : Prop :=
  ∀ n, P9226183253348600683.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P4531473983336734888

`(A056172(2*(n+1))-1)*A082460(2*n+1)`
-/

namespace A304484.P4531473983336734888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056172 (2 * (n + 1)) - 1) * A082460 (2 * n + 1)

end

end A304484.P4531473983336734888

namespace A304484

/-- `(A056172(2*(n+1))-1)*A082460(2*n+1)` -/
def P4531473983336734888.Spec : Prop :=
  ∀ n, P4531473983336734888.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P9506674472105330749

`A004526(A069754(2*(n+1)))*A004526(A069754(n+2))`
-/

namespace A304484.P9506674472105330749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A069754 (2 * (n + 1))).toNat * A004526 (A069754 (n + 2)).toNat

end

end A304484.P9506674472105330749

namespace A304484

/-- `A004526(A069754(2*(n+1)))*A004526(A069754(n+2))` -/
def P9506674472105330749.Spec : Prop :=
  ∀ n, P9506674472105330749.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P3248028269016112186

`A048865(A136548(2*(n+1)))*A048865(A136548(n+2))`
-/

namespace A304484.P3248028269016112186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A136548 (2 * (n + 1))).toNat * A048865 (A136548 (n + 2)).toNat

end

end A304484.P3248028269016112186

namespace A304484

/-- `A048865(A136548(2*(n+1)))*A048865(A136548(n+2))` -/
def P3248028269016112186.Spec : Prop :=
  ∀ n, P3248028269016112186.a n = A304484 (n + 1)

end A304484

/-! ## A304484.P12253430048066182387

`A084360(A159477(2*(n+1)))*A084360(A159477(n+2))`
-/

namespace A304484.P12253430048066182387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A159477 (2 * (n + 1))).toNat * A084360 (A159477 (n + 2)).toNat

end

end A304484.P12253430048066182387

namespace A304484

/-- `A084360(A159477(2*(n+1)))*A084360(A159477(n+2))` -/
def P12253430048066182387.Spec : Prop :=
  ∀ n, P12253430048066182387.a n = A304484 (n + 1)

end A304484

/-!
# A304485: Regular triangle where T(n,k) is the number of inequivalent colorings of free pure symmetric multifunctions (with empty expressions allowed) with n positions and k leaves.

The programs for A304485, there is no canonical definition to state claims against.
-/

/-! ## A304485.P2729728660149727306

`A097448(A176129(n))`
-/

namespace A304485.P2729728660149727306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A176129 n).toNat

end

end A304485.P2729728660149727306

/-! ## A304485.P5857289181169778698

`A087051(A323837(n))%14`
-/

namespace A304485.P5857289181169778698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087051 (A323837 n).toNat) 14

end

end A304485.P5857289181169778698

/-! ## A304485.P506729881505763696

`∑{e}[A007582(A163940(n)), #]`
-/

namespace A304485.P506729881505763696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (A163940 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A304485.P506729881505763696

/-! ## A304485.P11148779891081601556

`∑{e}[A007582(A343751(n)), #]`
-/

namespace A304485.P11148779891081601556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (A343751 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A304485.P11148779891081601556

/-! ## A304485.P11377096021589329309

`A176129(n)%(A264728(3*n+4)+4)`
-/

namespace A304485.P11377096021589329309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176129 n) (A264728 (3 * n + 4) + 4)

end

end A304485.P11377096021589329309

/-!
# A304486: Number of inequivalent leaf-colorings of the unlabeled rooted tree with Matula-Goebel number n.

The programs for A304486, there is no canonical definition to state claims against.
-/

/-! ## A304486.P3526757986535079321

`A305254(A005941(n+1)*A331295(n+1))`
-/

namespace A304486.P3526757986535079321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305254 (A005941 (n + 1) * A331295 (n + 1)).toNat

end

end A304486.P3526757986535079321

/-! ## A304486.P3754623761606956317

`A318559(A005941(n+1)*A331295(n+1))`
-/

namespace A304486.P3754623761606956317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318559 (A005941 (n + 1) * A331295 (n + 1)).toNat

end

end A304486.P3754623761606956317

/-! ## A304486.P10475172691948732704

`lcm(A001055(n+1), A305254(A005941(n+1)))`
-/

namespace A304486.P10475172691948732704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001055 (n + 1)) (A305254 (A005941 (n + 1)).toNat)

end

end A304486.P10475172691948732704

/-! ## A304486.P10358882441802787236

`A305254(A087207(2*(n+1)))*A305254(n+1)`
-/

namespace A304486.P10358882441802787236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305254 (A087207 (2 * (n + 1))).toNat * A305254 (n + 1)

end

end A304486.P10358882441802787236

/-! ## A304486.P17521472362443965999

`A000010(A001227(n+1))*A318559(A005941(n+1))`
-/

namespace A304486.P17521472362443965999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001227 (n + 1)).toNat * A318559 (A005941 (n + 1)).toNat

end

end A304486.P17521472362443965999

/-!
# A304487: a(n) = (3 + 2*n - 3*n^2 + 4*n^3 - 3*((-1 + n) mod 2))/6.

The programs for A304487, the canonical program `A304487.P9338205106906453252` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304487 has offset 1).

The definition of A304487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304487.P9338205106906453252

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=15, a(3)=36, a(4)=73`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304487

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P9338205106906453252.Spec : Prop :=
  ∀ n, P9338205106906453252.a n = A304487 (n + 1)

theorem P9338205106906453252.correct : P9338205106906453252.Spec := by
  intro n
  simp only [A304487, Nat.add_sub_cancel]

end A304487

/-! ## A304487.P908479660620223595

`∑[or(1, C(Δ[n²], 2))]`
-/

namespace A304487.P908479660620223595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P908479660620223595

namespace A304487

/-- `∑[or(1, C(Δ[n²], 2))]` -/
def P908479660620223595.Spec : Prop :=
  ∀ n, (P908479660620223595.a n : ℤ) = A304487 (n + 1)

end A304487

/-! ## A304487.P2539273374902277833

`∑[or(1, n*Δ[n²])]`
-/

namespace A304487.P2539273374902277833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P2539273374902277833

namespace A304487

/-- `∑[or(1, n*Δ[n²])]` -/
def P2539273374902277833.Spec : Prop :=
  ∀ n, P2539273374902277833.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P13723533997802970828

`∑[∑[record[and(n, -6)]]+1]`
-/

namespace A304487.P13723533997802970828
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P13723533997802970828

namespace A304487

/-- `∑[∑[record[and(n, -6)]]+1]` -/
def P13723533997802970828.Spec : Prop :=
  ∀ n, P13723533997802970828.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P5286142103359432034

`∑[or(1, n)+2*n²]`
-/

namespace A304487.P5286142103359432034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P5286142103359432034

namespace A304487

/-- `∑[or(1, n)+2*n²]` -/
def P5286142103359432034.Spec : Prop :=
  ∀ n, (P5286142103359432034.a n : ℤ) = A304487 (n + 1)

end A304487

/-! ## A304487.P6308853453098779885

`∑[∑[2*comp[or(2, n)]]+1]`
-/

namespace A304487.P6308853453098779885
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P6308853453098779885

namespace A304487

/-- `∑[∑[2*comp[or(2, n)]]+1]` -/
def P6308853453098779885.Spec : Prop :=
  ∀ n, (P6308853453098779885.a n : ℤ) = A304487 (n + 1)

end A304487

/-! ## A304487.P7795623172600156619

`∑[∑[a(n-2)+8]]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A304487.P7795623172600156619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f2 =>
  f2 (n - 2) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P7795623172600156619

namespace A304487

/-- `∑[∑[a(n-2)+8]]` -/
def P7795623172600156619.Spec : Prop :=
  ∀ n, (P7795623172600156619.a n : ℤ) = A304487 (n + 1)

end A304487

/-! ## A304487.P7525046707194718678

`ceil(∑[record[or(1, n)²-n]]/2)`
-/

namespace A304487.P7525046707194718678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A304487.P7525046707194718678

namespace A304487

/-- `ceil(∑[record[or(1, n)²-n]]/2)` -/
def P7525046707194718678.Spec : Prop :=
  ∀ n, P7525046707194718678.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P4682627086273988836

`round(∑[record[or(1, n)²-n]]/2)`
-/

namespace A304487.P4682627086273988836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A304487.P4682627086273988836

namespace A304487

/-- `round(∑[record[or(1, n)²-n]]/2)` -/
def P4682627086273988836.Spec : Prop :=
  ∀ n, P4682627086273988836.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P9041592042162677453

`∑[∑[record[or(5, n)-4]]]-∑[n]`
-/

namespace A304487.P9041592042162677453
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A304487.P9041592042162677453

namespace A304487

/-- `∑[∑[record[or(5, n)-4]]]-∑[n]` -/
def P9041592042162677453.Spec : Prop :=
  ∀ n, P9041592042162677453.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P8952979021401155007

`ceil(∑[Δ[n²]²/2])-∑[n]`
-/

namespace A304487.P8952979021401155007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A304487.P8952979021401155007

namespace A304487

/-- `ceil(∑[Δ[n²]²/2])-∑[n]` -/
def P8952979021401155007.Spec : Prop :=
  ∀ n, P8952979021401155007.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P7784326631330482573

`∑[∑[∑[8-a(n-1)]]]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A304487.P7784326631330482573
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n f3 =>
  8 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P7784326631330482573

namespace A304487

/-- `∑[∑[∑[8-a(n-1)]]]` -/
def P7784326631330482573.Spec : Prop :=
  ∀ n, P7784326631330482573.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P4576966937643931363

`∑[ogf((1+x+5x^2+x^3)/(1-2x+2x^3-x^4))]`
-/

namespace A304487.P4576966937643931363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5, 1] [1, -2, 0, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P4576966937643931363

namespace A304487

/-- `∑[ogf((1+x+5x^2+x^3)/(1-2x+2x^3-x^4))]` -/
def P4576966937643931363.Spec : Prop :=
  ∀ n, P4576966937643931363.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P15255665218846604953

`∑[and(1, n+1)+C(2*n+1, 2)]`
-/

namespace A304487.P15255665218846604953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + Nat.choose (2 * n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P15255665218846604953

namespace A304487

/-- `∑[and(1, n+1)+C(2*n+1, 2)]` -/
def P15255665218846604953.Spec : Prop :=
  ∀ n, (P15255665218846604953.a n : ℤ) = A304487 (n + 1)

end A304487

/-! ## A304487.P3288139114929477992

`∑[(n+1)%2+n*(2*n+1)]`
-/

namespace A304487.P3288139114929477992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P3288139114929477992

namespace A304487

/-- `∑[(n+1)%2+n*(2*n+1)]` -/
def P3288139114929477992.Spec : Prop :=
  ∀ n, (P3288139114929477992.a n : ℤ) = A304487 (n + 1)

end A304487

/-! ## A304487.P3106944773778922993

`∑[and(1, n+1)+n*(2*n+1)]`
-/

namespace A304487.P3106944773778922993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + n * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P3106944773778922993

namespace A304487

/-- `∑[and(1, n+1)+n*(2*n+1)]` -/
def P3106944773778922993.Spec : Prop :=
  ∀ n, (P3106944773778922993.a n : ℤ) = A304487 (n + 1)

end A304487

/-! ## A304487.P9327300819489493215

`floor(∑[C(2*n+1, 2)]+(n+2)/2)`
-/

namespace A304487.P9327300819489493215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n + 2 : ℚ) / 2⌋

end

end A304487.P9327300819489493215

namespace A304487

/-- `floor(∑[C(2*n+1, 2)]+(n+2)/2)` -/
def P9327300819489493215.Spec : Prop :=
  ∀ n, P9327300819489493215.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P1491582439100591918

`floor(∑[lcm(n, 2*n+1)]+(n+2)/2)`
-/

namespace A304487.P1491582439100591918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n + 2 : ℚ) / 2⌋

end

end A304487.P1491582439100591918

namespace A304487

/-- `floor(∑[lcm(n, 2*n+1)]+(n+2)/2)` -/
def P1491582439100591918.Spec : Prop :=
  ∀ n, P1491582439100591918.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P12453456364777367209

`∑[A317298(n)]`
-/

namespace A304487.P12453456364777367209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P12453456364777367209

namespace A304487

/-- `∑[A317298(n)]` -/
def P12453456364777367209.Spec : Prop :=
  ∀ n, P12453456364777367209.a n = A304487 (n + 1)

end A304487

/-! ## A304487.P3405288394518914900

`∑[A139592(n)+1]`
-/

namespace A304487.P3405288394518914900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139592 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304487.P3405288394518914900

namespace A304487

/-- `∑[A139592(n)+1]` -/
def P3405288394518914900.Spec : Prop :=
  ∀ n, P3405288394518914900.a n = A304487 (n + 1)

end A304487

/-!
# A304488: Numbers k where A304356(k)-A304358(k) changes sign.

The programs for A304488, there is no canonical definition to state claims against.
-/

/-! ## A304488.P15412128301987820729

`A048266(A114281(n)+16)`
-/

namespace A304488.P15412128301987820729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A114281 n + 16).toNat

end

end A304488.P15412128301987820729

/-!
# A304489: Triangle read by rows: T(n,k) = number of rooted signed trees with n nodes and k positive edges (0 <= k < n).

The programs for A304489, there is no canonical definition to state claims against.
-/

/-! ## A304489.P16495889389642913589

`A116358(A059576(n))`
-/

namespace A304489.P16495889389642913589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116358 (A059576 n).toNat

end

end A304489.P16495889389642913589

/-!
# A304490: a(1) = a(2) = a(3) = 1, a(4) = 5, a(5) = 6, a(6) = 4; a(n) = a(n-a(n-2)) + a(n-a(n-4)) for n > 6.

The programs for A304490, the canonical program `A304490.P3189511155048382223` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304490 has offset 1).

The definition of A304490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-4))` (program `A304490.P3189511155048382223`, by `A304490.P3189511155048382223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304490.P3189511155048382223

`a(n-a(n-2))+a(n-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=6, a(5)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304490

/-- `a(n-a(n-2))+a(n-a(n-4))` -/
def P3189511155048382223.Spec : Prop :=
  ∀ n, (P3189511155048382223.a n : ℤ) = A304490 (n + 1)

theorem P3189511155048382223.correct : P3189511155048382223.Spec := by
  intro n
  simp only [A304490, Nat.add_sub_cancel]

end A304490

/-!
# A304491: Last or deepest exponent in the power-tower for n.

The programs for A304491, there is no canonical definition to state claims against.
-/

/-! ## A304491.P3492746839601497017

`A052410(A304481(n+1))`
-/

namespace A304491.P3492746839601497017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A304481 (n + 1)).toNat

end

end A304491.P3492746839601497017

/-! ## A304491.P9756123730234243207

`gcd(A132349(n+1), A175067(A304481(n+1)))`
-/

namespace A304491.P9756123730234243207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132349 (n + 1)) (A175067 (A304481 (n + 1)).toNat)

end

end A304491.P9756123730234243207

/-! ## A304491.P2659871061493661643

`A175082(A304492(n+1))`
-/

namespace A304491.P2659871061493661643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (A304492 (n + 1)).toNat

end

end A304491.P2659871061493661643

/-! ## A304491.P17247254045945289519

`A304492(n+1)+A304481(n+1)%A304492(n+1)`
-/

namespace A304491.P17247254045945289519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304492 (n + 1) + Int.tmod (A304481 (n + 1)) (A304492 (n + 1))

end

end A304491.P17247254045945289519

/-! ## A304491.P4227222621747089348

`A304776(A304481(n+1)^A089723(n+1))`
-/

namespace A304491.P4227222621747089348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304776 (SequenceMachineLib.roundAway ((A304481 (n + 1) : ℚ) ^ (A089723 (n + 1) : ℤ))).toNat

end

end A304491.P4227222621747089348

/-!
# A304492: Position in the sequence of numbers that are not perfect powers (A007916) of the last or deepest exponent in the power-tower for n.

The programs for A304492, there is no canonical definition to state claims against.
-/

/-! ## A304492.P18077214544802487535

`A132351(A304491(n+1))`
-/

namespace A304492.P18077214544802487535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (A304491 (n + 1)).toNat

end

end A304492.P18077214544802487535

/-! ## A304492.P3532471643019470048

`A278029(A304491(C(n+1, n)))+1`
-/

namespace A304492.P3532471643019470048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A304491 (Nat.choose (n + 1) n)).toNat + 1

end

end A304492.P3532471643019470048

/-! ## A304492.P10652790231791898849

`A278029(A304491(Δ[n²]-n))+1`
-/

namespace A304492.P10652790231791898849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A304491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + 1

end

end A304492.P10652790231791898849

/-! ## A304492.P12424905607086184154

`A278029(n+1)+A097004(A132349(n+1))`
-/

namespace A304492.P12424905607086184154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1) + A097004 (A132349 (n + 1)).toNat

end

end A304492.P12424905607086184154

/-! ## A304492.P17124194204708980808

`(A278029(A304491(n+1))+1)%A158227(n+1)`
-/

namespace A304492.P17124194204708980808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278029 (A304491 (n + 1)).toNat + 1) (A158227 (n + 1))

end

end A304492.P17124194204708980808

/-! ## A304492.P17265854466284273777

`A278029(A304491(n+1))%A064527(n+1)+1`
-/

namespace A304492.P17265854466284273777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278029 (A304491 (n + 1)).toNat) (A064527 (n + 1)) + 1

end

end A304492.P17265854466284273777

/-!
# A304493: a(0) = 1; a(n) = a(n-a(floor(n/2))) + a(n-a(floor(n/4))).

The programs for A304493, the canonical program `A304493.P11817844891956498642` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304493 has offset 0).

The definition of A304493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(floor(n/2)))+a(n-a(floor(n/4)))` (program `A304493.P11817844891956498642`, by `A304493.P11817844891956498642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304493.P11817844891956498642

`a(n-a(floor(n/2)))+a(n-a(floor(n/4)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304493

/-- `a(n-a(floor(n/2)))+a(n-a(floor(n/4)))` -/
def P11817844891956498642.Spec : Prop :=
  ∀ n, (P11817844891956498642.a n : ℤ) = A304493 n

theorem P11817844891956498642.correct : P11817844891956498642.Spec := by
  intro n
  simp only [A304493]

end A304493

/-!
# A304494: Expansion of e.g.f. Product_{k>=1} (1 + x^k)^H(k), where H(k) is the k-th harmonic number.

The programs for A304494, there is no canonical definition to state claims against.
-/

/-! ## A304494.P7556817823641515018

`A032742(A336400(n)+A111828(n))`
-/

namespace A304494.P7556817823641515018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A336400 n + A111828 n).toNat

end

end A304494.P7556817823641515018

/-! ## A304494.P15444621847080035187

`A049988(A291356(n))-A186038(n)`
-/

namespace A304494.P15444621847080035187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (A291356 n).toNat - A186038 n

end

end A304494.P15444621847080035187

/-!
# A304495: Decapitate the power-tower for n, i.e., remove the last (deepest) exponent.

The programs for A304495, there is no canonical definition to state claims against.
-/

/-! ## A304495.P2493187080360593064

`A052409(A175432(n+1)*A304481(n+1))`
-/

namespace A304495.P2493187080360593064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A175432 (n + 1) * A304481 (n + 1)).toNat

end

end A304495.P2493187080360593064

/-! ## A304495.P7000658479503761563

`or(A052409(A304481(n+1)), A353472(3*n+2))`
-/

namespace A304495.P7000658479503761563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052409 (A304481 (n + 1)).toNat) (A353472 (3 * n + 2))

end

end A304495.P7000658479503761563

/-! ## A304495.P14909953669850630616

`A052409(A253641(∑{d}[n+1, #])*A304481(n+1))`
-/

namespace A304495.P14909953669850630616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A253641 (∑ d ∈ Nat.divisors (f1 n), d) * A304481 (n + 1)).toNat

end

end A304495.P14909953669850630616

/-! ## A304495.P6036452872025990987

`A052409(5^A052409(A304481(n+1)))`
-/

namespace A304495.P6036452872025990987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A052409 (A304481 (n + 1)).toNat : ℤ))).toNat

end

end A304495.P6036452872025990987

/-! ## A304495.P7715512573922487609

`A253641(A304481(n+1))%A290735(n)`
-/

namespace A304495.P7715512573922487609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253641 (A304481 (n + 1)).toNat) (A290735 n)

end

end A304495.P7715512573922487609

/-! ## A304495.P5873088945104040798

`A052409(A304481(n+1))%∑[A248128(n)]`
-/

namespace A304495.P5873088945104040798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052409 (A304481 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304495.P5873088945104040798

/-!
# A304496: Expansion of e.g.f. Product_{k>=1} (1 - x^k)^H(k), where H(k) is the k-th harmonic number.

The programs for A304496, there is no canonical definition to state claims against.
-/

/-! ## A304496.P10492182639834057085

`A173985(A000045(a(n-1)))` with `a(0)=1, a(1)=-1, a(2)=-3, a(3)=-2, a(4)=3`
-/

namespace A304496.P10492182639834057085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -3, -2, 3] fun n a =>
  A173985 (A000045 (a (n - 1)).toNat).toNat

end

end A304496.P10492182639834057085

/-! ## A304496.P11779520366442156713

`A173985(A004744(a(n-1)))` with `a(0)=1, a(1)=-1, a(2)=-3, a(3)=-2, a(4)=3`
-/

namespace A304496.P11779520366442156713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -3, -2, 3] fun n a =>
  A173985 (A004744 (a (n - 1)).toNat).toNat

end

end A304496.P11779520366442156713

/-!
# A304497: Solution (a(n)) of the system of complementary equations defined in Comments.

The programs for A304497, there is no canonical definition to state claims against.
-/

/-! ## A304497.P12295849744320385614

`A297465(n)-(n+1)`
-/

namespace A304497.P12295849744320385614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297465 n - (n + 1 : ℤ)

end

end A304497.P12295849744320385614

/-! ## A304497.P7218695828322949596

`A297465(2*n-n)-1-n`
-/

namespace A304497.P7218695828322949596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297465 (2 * n - n) - 1 - (n : ℤ)

end

end A304497.P7218695828322949596

/-! ## A304497.P13492758606811060539

`round(A265389(n+1)/3-(n+1))`
-/

namespace A304497.P13492758606811060539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A265389 (n + 1) : ℚ) / 3 - (n + 1 : ℚ))

end

end A304497.P13492758606811060539

/-! ## A304497.P2492836403482778011

`A188511(A297465(n))`
-/

namespace A304497.P2492836403482778011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188511 (A297465 n).toNat

end

end A304497.P2492836403482778011

/-! ## A304497.P11360877082717868592

`A059995(7*A297465(n))`
-/

namespace A304497.P11360877082717868592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (7 * A297465 n).toNat

end

end A304497.P11360877082717868592

/-! ## A304497.P8291666930669311197

`A023443(A297465(n)-n)`
-/

namespace A304497.P8291666930669311197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A297465 n - (n : ℤ)).toNat

end

end A304497.P8291666930669311197

/-! ## A304497.P14443312951452883171

`A189667(A265389(n+1))-(n+1)`
-/

namespace A304497.P14443312951452883171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189667 (A265389 (n + 1)).toNat - (n + 1 : ℤ)

end

end A304497.P14443312951452883171

/-! ## A304497.P18442815836706200108

`A002264(A265389(n+1)-2)-n`
-/

namespace A304497.P18442815836706200108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A265389 (n + 1) - 2).toNat - (n : ℤ)

end

end A304497.P18442815836706200108

/-! ## A304497.P6514047910784066531

`A002264(A304499(n))`
-/

namespace A304497.P6514047910784066531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A304499 n).toNat

end

end A304497.P6514047910784066531

/-!
# A304498: Solution (b(n)) of the system of complementary equations defined in Comments.

The programs for A304498, there is no canonical definition to state claims against.
-/

/-! ## A304498.P14204662735092388066

`∑[or(2, val(dr(n+7), 2))]`
-/

namespace A304498.P14204662735092388066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (n + 7 : ℤ)) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304498.P14204662735092388066

/-! ## A304498.P16818645448380123016

`∑[char[∑[n%3+2]-1]+2]`
-/

namespace A304498.P16818645448380123016
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304498.P16818645448380123016

/-! ## A304498.P16025634722615633465

`∑[xor(2, comp[4*n-gcd(3, n)]²%2)]`
-/

namespace A304498.P16025634722615633465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.gcd 3 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304498.P16025634722615633465

/-! ## A304498.P759865385246715059

`comp[char[3*n-1]+4*n+1]+n+2`
-/

namespace A304498.P759865385246715059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + (4 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2)

end

end A304498.P759865385246715059

/-! ## A304498.P8043265086672825556

`abs(1-A297466(n)+n)`
-/

namespace A304498.P8043265086672825556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A297466 n + (n : ℤ)|

end

end A304498.P8043265086672825556

/-! ## A304498.P194455570350027880

`round(3*A277723(n+1)/8)`
-/

namespace A304498.P194455570350027880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * A277723 (n + 1) : ℚ) / 8)

end

end A304498.P194455570350027880

/-! ## A304498.P6490914355690496961

`round(A310907(4*(n+1))/7)`
-/

namespace A304498.P6490914355690496961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A310907 (4 * (n + 1)) : ℚ) / 7)

end

end A304498.P6490914355690496961

/-! ## A304498.P8708062331651328980

`ceil(A314736(4*n+3)/8)`
-/

namespace A304498.P8708062331651328980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A314736 (4 * n + 3) : ℚ) / 8⌉

end

end A304498.P8708062331651328980

/-! ## A304498.P9020270693297062180

`ceil(A265389(n+1)/3-n)`
-/

namespace A304498.P9020270693297062180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265389 (n + 1) : ℚ) / 3 - (n : ℚ)⌉

end

end A304498.P9020270693297062180

/-! ## A304498.P9278603740425146674

`∑[A243148(∑{digits}[n+1, #])+2]`
-/

namespace A304498.P9278603740425146674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304498.P9278603740425146674

/-!
# A304499: Solution (c(n)) of the system of complementary equations defined in Comments.

The programs for A304499, there is no canonical definition to state claims against.
-/

/-! ## A304499.P7413502086751411002

`A304498(n)+2*A304497(n)`
-/

namespace A304499.P7413502086751411002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304498 n + 2 * A304497 n

end

end A304499.P7413502086751411002

/-! ## A304499.P17666418026633208966

`A130481(A265389(n+1))-(3*n+2)`
-/

namespace A304499.P17666418026633208966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A265389 (n + 1)).toNat - (3 * n + 2 : ℤ)

end

end A304499.P17666418026633208966

/-! ## A304499.P7118528216613004277

`A004277(A297465(n)-(n+1))+comp[char[3*n-1]+4*n+1]+n+2`
-/

namespace A304499.P7118528216613004277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + (4 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A297465 n - (n + 1 : ℤ)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2) : ℤ)

end

end A304499.P7118528216613004277

/-! ## A304499.P13739110618125999587

`A005843(A297465(n)-(n+1))+comp[char[3*n-1]+4*n+1]+n+2`
-/

namespace A304499.P13739110618125999587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + (4 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A297465 n - (n + 1 : ℤ)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2) : ℤ)

end

end A304499.P13739110618125999587

/-! ## A304499.P8079224394646011089

`A304498(n)+A004277(A304497(n))`
-/

namespace A304499.P8079224394646011089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304498 n + A004277 (A304497 n).toNat

end

end A304499.P8079224394646011089

/-! ## A304499.P7680889498238329864

`A267530(A313538(n))+2*A304497(n)`
-/

namespace A304499.P7680889498238329864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (A313538 n).toNat + 2 * A304497 n

end

end A304499.P7680889498238329864

/-! ## A304499.P15090288465521487734

`A004277(A304497(n))+A297466(n)-(n+1)`
-/

namespace A304499.P15090288465521487734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A304497 n).toNat + (A297466 n - (n + 1 : ℤ))

end

end A304499.P15090288465521487734

/-! ## A304499.P15700153294444159374

`A304498(n)+A004277(A297465(n)-(n+1))`
-/

namespace A304499.P15700153294444159374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304498 n + A004277 (A297465 n - (n + 1 : ℤ)).toNat

end

end A304499.P15700153294444159374

/-! ## A304499.P2188826066838986994

`A304498(n)+A005843(A297465(n)-(n+1))`
-/

namespace A304499.P2188826066838986994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304498 n + A005843 (A297465 n - (n + 1 : ℤ)).toNat

end

end A304499.P2188826066838986994

/-! ## A304499.P10713140831343854231

`A304498(n)+A004277(round(A265389(n+1)/3-(n+1)))`
-/

namespace A304499.P10713140831343854231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304498 n + A004277 (SequenceMachineLib.roundAway ((A265389 (n + 1) : ℚ) / 3 - (n + 1 : ℚ))).toNat

end

end A304499.P10713140831343854231

