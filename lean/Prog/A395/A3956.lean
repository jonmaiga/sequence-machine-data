import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C002
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
import Seq.Opaque.C014
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
# A395604: Triangle read by rows: T(n,k) = Sum_{j=0..k} (-1)^j * binomial(k,j) * (4-j)^n.

The programs for A395604, the canonical program `A395604.P13436444673686789590` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395604 has offset 0).

The definition of A395604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395604.P13436444673686789590

`(T(n-1,k-1)-T(n-1,k))*col(n)+2*2*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395604

/-- `(T(n-1,k-1)-T(n-1,k))*col(n)+2*2*T(n-1,k)` -/
def P13436444673686789590.Spec : Prop :=
  ∀ n, P13436444673686789590.a n = A395604 n

theorem P13436444673686789590.correct : P13436444673686789590.Spec := by
  intro n
  simp only [A395604]

end A395604

/-! ## A395604.P1185932732024158845

`2*2*T(n-1,k)-(T(n-1,k)-T(n-1,k-1))*col(n)` with `a(0)=1`
-/

namespace A395604.P1185932732024158845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * SequenceMachineLib.triUp a n) - (SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A395604.P1185932732024158845

namespace A395604

/-- `2*2*T(n-1,k)-(T(n-1,k)-T(n-1,k-1))*col(n)` -/
def P1185932732024158845.Spec : Prop :=
  ∀ n, P1185932732024158845.a n = A395604 n

end A395604

/-!
# A395605: a(n) = ((Lucas(prime(n)) - 1) / prime(n)) mod prime(n).

The programs for A395605, the canonical program `A395605.P10565796866009906003` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395605 has offset 1).

The definition of A395605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((A000032(A000040(n+1))-1)/A000040(n+1))%A000040(n+1)` (program `A395605.P10565796866009906003`, by `A395605.P10565796866009906003.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395605.P6780843966048618070

`A064723(n+1)%A000040(n+1)`
-/

namespace A395605.P6780843966048618070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064723 (n + 1)) (A000040 (n + 1))

end

end A395605.P6780843966048618070

namespace A395605

/-- `A064723(n+1)%A000040(n+1)` -/
def P6780843966048618070.Spec : Prop :=
  ∀ n, P6780843966048618070.a n = A395605 (n + 1)

end A395605

/-! ## A395605.P10565796866009906003

`((A000032(A000040(n+1))-1)/A000040(n+1))%A000040(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395605

/-- `((A000032(A000040(n+1))-1)/A000040(n+1))%A000040(n+1)` -/
def P10565796866009906003.Spec : Prop :=
  ∀ n, P10565796866009906003.a n = A395605 (n + 1)

theorem P10565796866009906003.correct : P10565796866009906003.Spec := by
  intro n
  simp only [A395605, Nat.add_sub_cancel]

end A395605

/-! ## A395605.P3651781539864962556

`floor(A268478(n+1)/A000040(n+1))`
-/

namespace A395605.P3651781539864962556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268478 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A395605.P3651781539864962556

namespace A395605

/-- `floor(A268478(n+1)/A000040(n+1))` -/
def P3651781539864962556.Spec : Prop :=
  ∀ n, P3651781539864962556.a n = A395605 (n + 1)

end A395605

/-! ## A395605.P3369463696097389794

`A006206(A000040(n+1))%record[A051698(n)]`
-/

namespace A395605.P3369463696097389794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006206 (A000040 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A395605.P3369463696097389794

namespace A395605

/-- `A006206(A000040(n+1))%record[A051698(n)]` -/
def P3369463696097389794.Spec : Prop :=
  ∀ n, P3369463696097389794.a n = A395605 (n + 1)

end A395605

/-! ## A395605.P10119774011007842047

`A181885(record[A051698(n)])%A000040(n+1)`
-/

namespace A395605.P10119774011007842047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000040 (n + 1))

end

end A395605.P10119774011007842047

namespace A395605

/-- `A181885(record[A051698(n)])%A000040(n+1)` -/
def P10119774011007842047.Spec : Prop :=
  ∀ n, P10119774011007842047.a n = A395605 (n + 1)

end A395605

/-! ## A395605.P4586924919121240207

`A181885(A000040(n+1))%sqrt(A001248(n+1))`
-/

namespace A395605.P4586924919121240207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181885 (A000040 (n + 1)).toNat) (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A395605.P4586924919121240207

namespace A395605

/-- `A181885(A000040(n+1))%sqrt(A001248(n+1))` -/
def P4586924919121240207.Spec : Prop :=
  ∀ n, P4586924919121240207.a n = A395605 (n + 1)

end A395605

/-! ## A395605.P5737035906237516936

`A189731(sqrt(A005722(n+1)))%A000040(n+1)`
-/

namespace A395605.P5737035906237516936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189731 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat) (A000040 (n + 1))

end

end A395605.P5737035906237516936

namespace A395605

/-- `A189731(sqrt(A005722(n+1)))%A000040(n+1)` -/
def P5737035906237516936.Spec : Prop :=
  ∀ n, P5737035906237516936.a n = A395605 (n + 1)

end A395605

/-! ## A395605.P16931232602527465779

`A189731(A014689(n+1)+n)%record[A051698(n)]`
-/

namespace A395605.P16931232602527465779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189731 (A014689 (n + 1) + (n : ℤ)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A395605.P16931232602527465779

namespace A395605

/-- `A189731(A014689(n+1)+n)%record[A051698(n)]` -/
def P16931232602527465779.Spec : Prop :=
  ∀ n, P16931232602527465779.a n = A395605 (n + 1)

end A395605

/-! ## A395605.P10083790364165689658

`(A160909(n+1)/A000040(n+1))%A000040(n+1)`
-/

namespace A395605.P10083790364165689658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A160909 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))) (A000040 (n + 1))

end

end A395605.P10083790364165689658

namespace A395605

/-- `(A160909(n+1)/A000040(n+1))%A000040(n+1)` -/
def P10083790364165689658.Spec : Prop :=
  ∀ n, P10083790364165689658.a n = A395605 (n + 1)

theorem P10083790364165689658.correct : P10083790364165689658.Spec := by
  intro n
  simp only [A395605, Nat.add_sub_cancel, A395605.P10083790364165689658.a, A395605.P10565796866009906003.a, A000032, A000032.P8352177345629330861.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A160909, A160909.P12070970668350231880.a, A180363, A180363.P17041838073704525923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395605

/-! ## A395605.P1824692240345048535

`((A180363(n+1)-1)/A000040(n+1))%A000040(n+1)`
-/

namespace A395605.P1824692240345048535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A180363 (n + 1) - 1 : ℚ) / (A000040 (n + 1) : ℚ))) (A000040 (n + 1))

end

end A395605.P1824692240345048535

namespace A395605

/-- `((A180363(n+1)-1)/A000040(n+1))%A000040(n+1)` -/
def P1824692240345048535.Spec : Prop :=
  ∀ n, P1824692240345048535.a n = A395605 (n + 1)

end A395605

/-!
# A395607: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 6, a(2) = 36, a(3) = 42.

The programs for A395607, the canonical program `A395607.P18184942053276312114` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395607 has offset 0).

The definition of A395607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395607.P18184942053276312114`, by `A395607.P18184942053276312114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395607.P4663524372645765147

`ogf((1+5x+30x^2+5x^3)/(1-x-x^3-x^4))`
-/

namespace A395607.P4663524372645765147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 30, 5] [1, -1, 0, -1, -1] n

end

end A395607.P4663524372645765147

namespace A395607

/-- `ogf((1+5x+30x^2+5x^3)/(1-x-x^3-x^4))` -/
def P4663524372645765147.Spec : Prop :=
  ∀ n, P4663524372645765147.a n = A395607 n

end A395607

/-! ## A395607.P18184942053276312114

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=36, a(3)=42`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395607

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P18184942053276312114.Spec : Prop :=
  ∀ n, (P18184942053276312114.a n : ℤ) = A395607 n

theorem P18184942053276312114.correct : P18184942053276312114.Spec := by
  intro n
  simp only [A395607]

end A395607

/-!
# A395611: Triangle read by rows: coefficients of (1+x)*(1+(n+1)*x)^(n-1).

The programs for A395611, the canonical program `A395611.P9717975820669745058` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395611 has offset 0).

The definition of A395611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395611.P9717975820669745058

`(row(n)+1-col(n))*C(row(n), col(n))*(row(n)+1)^(col(n)-1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395611

/-- `(row(n)+1-col(n))*C(row(n), col(n))*(row(n)+1)^(col(n)-1)` -/
def P9717975820669745058.Spec : Prop :=
  ∀ n, P9717975820669745058.a n = (A395611 n : ℚ)

end A395611

/-! ## A395611.P8386097740936724914

`A007318(n)*A058127(n+1)`
-/

namespace A395611.P8386097740936724914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A058127 (n + 1)

end

end A395611.P8386097740936724914

namespace A395611

/-- `A007318(n)*A058127(n+1)` -/
def P8386097740936724914.Spec : Prop :=
  ∀ n, P8386097740936724914.a n = A395611 n

end A395611

/-! ## A395611.P5434452412277985595

`A122525(n+1)/A119502(n)`
-/

namespace A395611.P5434452412277985595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122525 (n + 1) : ℚ) / (A119502 n : ℚ)

end

end A395611.P5434452412277985595

namespace A395611

/-- `A122525(n+1)/A119502(n)` -/
def P5434452412277985595.Spec : Prop :=
  ∀ n, P5434452412277985595.a n = (A395611 n : ℚ)

end A395611

/-!
# A395612: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(4*n,n+2*k).

The programs for A395612, the canonical program `A395612.P8243570740415337759` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395612 has offset 0).

The definition of A395612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(4*n, n+2*#)]` (program `A395612.P8243570740415337759`, by `A395612.P8243570740415337759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395612.P8243570740415337759

`∑{#}[n, C(n, #)*C(4*n, n+2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395612

/-- `∑{#}[n, C(n, #)*C(4*n, n+2*#)]` -/
def P8243570740415337759.Spec : Prop :=
  ∀ n, (P8243570740415337759.a n : ℤ) = A395612 n

theorem P8243570740415337759.correct : P8243570740415337759.Spec := by
  intro n
  simp only [A395612]

end A395612

/-!
# A395613: a(n) = Sum_{k=0..floor(2*n/3)} binomial(n,k) * binomial(3*n,n+3*k).

The programs for A395613, the canonical program `A395613.P4156374987893069845` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395613 has offset 0).

The definition of A395613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(2*n/3), C(n, #)*C(3*n, n+3*#)]` (program `A395613.P4156374987893069845`, by `A395613.P4156374987893069845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395613.P4156374987893069845

`∑{#}[floor(2*n/3), C(n, #)*C(3*n, n+3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395613

/-- `∑{#}[floor(2*n/3), C(n, #)*C(3*n, n+3*#)]` -/
def P4156374987893069845.Spec : Prop :=
  ∀ n, (P4156374987893069845.a n : ℤ) = A395613 n

theorem P4156374987893069845.correct : P4156374987893069845.Spec := by
  intro n
  simp only [A395613]

end A395613

/-!
# A395614: a(n) = Sum_{k=0..floor(n/4)} binomial(n,k) * binomial(2*n,n+4*k).

The programs for A395614, the canonical program `A395614.P2888149418779495355` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395614 has offset 0).

The definition of A395614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(n, #)*C(2*n, n+4*#)]` (program `A395614.P2888149418779495355`, by `A395614.P2888149418779495355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395614.P2888149418779495355

`∑{#}[floor(n/4), C(n, #)*C(2*n, n+4*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395614

/-- `∑{#}[floor(n/4), C(n, #)*C(2*n, n+4*#)]` -/
def P2888149418779495355.Spec : Prop :=
  ∀ n, (P2888149418779495355.a n : ℤ) = A395614 n

theorem P2888149418779495355.correct : P2888149418779495355.Spec := by
  intro n
  simp only [A395614]

end A395614

/-! ## A395614.P2717408407566196770

`A398691(A150547(n))`
-/

namespace A395614.P2717408407566196770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398691 (A150547 n).toNat

end

end A395614.P2717408407566196770

namespace A395614

/-- `A398691(A150547(n))` -/
def P2717408407566196770.Spec : Prop :=
  ∀ n, P2717408407566196770.a n = A395614 n

end A395614

/-!
# A395617: Start with a(1) = 1. Thereafter, a(n) is the least integer with a set of divisors whose sum add to the sum of all previous terms.

The programs for A395617, there is no canonical definition to state claims against.
-/

/-! ## A395617.P10965968661210011520

`A002093(A001399(n)%A396775(n+4))`
-/

namespace A395617.P10965968661210011520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (Int.tmod (A001399 n) (A396775 (n + 4))).toNat

end

end A395617.P10965968661210011520

/-! ## A395617.P14219508110812200753

`A002093(A001399(n))%A245470(3*n+5)`
-/

namespace A395617.P14219508110812200753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002093 (A001399 n).toNat) (A245470 (3 * n + 5))

end

end A395617.P14219508110812200753

/-!
# A395619: For any n > 0 with prime factorization Prod_{i = 1..k} p_i^e_i where p_1 < ... < p_k and e_1, ..., e_k > 0, a(n) = Prod_{i = 1..k} prime(i)^a(e_i) (where prime(i) denotes the i-th prime numbers).

The programs for A395619, there is no canonical definition to state claims against.
-/

/-! ## A395619.P17693177315684658602

`gcd(A071364(n+1), A094348(A000203(n+1)))`
-/

namespace A395619.P17693177315684658602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071364 (n + 1)) (A094348 (A000203 (n + 1)).toNat)

end

end A395619.P17693177315684658602

/-! ## A395619.P10301093511131018424

`gcd(A071364(n+1), A335317(2*n+3))`
-/

namespace A395619.P10301093511131018424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071364 (n + 1)) (A335317 (2 * n + 3))

end

end A395619.P10301093511131018424

/-! ## A395619.P325921843484278357

`gcd(A071364(n+1), A384669(A008576(n)))`
-/

namespace A395619.P325921843484278357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071364 (n + 1)) (A384669 (A008576 n).toNat)

end

end A395619.P325921843484278357

/-!
# A395626: Numbers x*y such that |x-y| is a square, with nonnegative integers x and y.

The programs for A395626, there is no canonical definition to state claims against.
-/

/-! ## A395626.P8785939319839297356

`lt[A383980(A162232(n+1)), A004016(3*n+1)]`
-/

namespace A395626.P8785939319839297356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383980 (A162232 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395626.P8785939319839297356

/-! ## A395626.P16068374385160617507

`lt[A196841(A359602(n+1)), A005882(n)]`
-/

namespace A395626.P16068374385160617507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196841 (A359602 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395626.P16068374385160617507

/-! ## A395626.P6836422133282239187

`lt[A333806(A091351(2*(n+1))), A033687(n)]`
-/

namespace A395626.P6836422133282239187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (A091351 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395626.P6836422133282239187

/-! ## A395626.P8360085564073581837

`lt[A084521(A219915(2*(n+2))), A005882(n)]`
-/

namespace A395626.P8360085564073581837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084521 (A219915 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395626.P8360085564073581837

/-! ## A395626.P10649467511480939271

`lt[A353909(A356916(2*(n+1))), A353936(3*n+4)]`
-/

namespace A395626.P10649467511480939271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353909 (A356916 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353936 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395626.P10649467511480939271

/-!
# A395627: Infinite square array T(n,k) = (prime(n)-1)*prime(n)^k/2; n, k >= 1; read by falling antidiagonals.

The programs for A395627, the canonical program `A395627.P1347031268804462371` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395627 has offset 1).

The definition of A395627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395627.P1347031268804462371

`(A000040(col(n)+1)-1)*A000040(col(n)+1)^(row(n)-col(n)+1)/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395627

/-- `(A000040(col(n)+1)-1)*A000040(col(n)+1)^(row(n)-col(n)+1)/2` -/
def P1347031268804462371.Spec : Prop :=
  ∀ n, P1347031268804462371.a n = (A395627 (n + 1) : ℚ)

end A395627

/-! ## A395627.P7410928632507272653

`A090780(A182944(n+1))`
-/

namespace A395627.P7410928632507272653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090780 (A182944 (n + 1)).toNat

end

end A395627.P7410928632507272653

namespace A395627

/-- `A090780(A182944(n+1))` -/
def P7410928632507272653.Spec : Prop :=
  ∀ n, P7410928632507272653.a n = A395627 (n + 1)

end A395627

/-!
# A395628: a(n) = f(n+1) * n! where f(n) = n/f(n-1), f(1) = 1.

The programs for A395628, the canonical program `A395628.P10171134918520284731` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395628 has offset 0).

The definition of A395628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395628.P10171134918520284731

`(n+1)!*(n-1)!/a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395628

/-- `(n+1)!*(n-1)!/a(n-1)` -/
def P10171134918520284731.Spec : Prop :=
  ∀ n, P10171134918520284731.a n = (A395628 n : ℚ)

end A395628

/-! ## A395628.P12575818799855344770

`(n²-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395628.P12575818799855344770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n ^ 2 : ℤ) - 1) * a (n - 2)

end

end A395628.P12575818799855344770

namespace A395628

/-- `(n²-1)*a(n-2)` -/
def P12575818799855344770.Spec : Prop :=
  ∀ n, P12575818799855344770.a n = A395628 n

end A395628

/-! ## A395628.P10292510742936050062

`a(n-2)*∑[2*n-1]` with `a(0)=1, a(1)=2`
-/

namespace A395628.P10292510742936050062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395628.P10292510742936050062

namespace A395628

/-- `a(n-2)*∑[2*n-1]` -/
def P10292510742936050062.Spec : Prop :=
  ∀ n, P10292510742936050062.a n = A395628 n

end A395628

/-! ## A395628.P2706461857663883385

`floor((n*n-1)*a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A395628.P2706461857663883385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n * n : ℤ) - 1) * a (n - 2)

end

end A395628.P2706461857663883385

namespace A395628

/-- `floor((n*n-1)*a(n-2))` -/
def P2706461857663883385.Spec : Prop :=
  ∀ n, P2706461857663883385.a n = A395628 n

end A395628

/-! ## A395628.P6078270049043465494

`(n+1)*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395628.P6078270049043465494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℤ) * (((n : ℤ) - 1) * a (n - 2))

end

end A395628.P6078270049043465494

namespace A395628

/-- `(n+1)*(n-1)*a(n-2)` -/
def P6078270049043465494.Spec : Prop :=
  ∀ n, P6078270049043465494.a n = A395628 n

end A395628

/-! ## A395628.P4778810129248539030

`n*n*a(n-2)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395628.P4778810129248539030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * ((n : ℤ) * a (n - 2)) - a (n - 2)

end

end A395628.P4778810129248539030

namespace A395628

/-- `n*n*a(n-2)-a(n-2)` -/
def P4778810129248539030.Spec : Prop :=
  ∀ n, P4778810129248539030.a n = A395628 n

end A395628

/-! ## A395628.P12774532039868855420

`a(n-2)/(1/n)²-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395628.P12774532039868855420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / (1 / (n : ℚ)) ^ 2 - a (n - 2)

end

end A395628.P12774532039868855420

namespace A395628

/-- `a(n-2)/(1/n)²-a(n-2)` -/
def P12774532039868855420.Spec : Prop :=
  ∀ n, P12774532039868855420.a n = (A395628 n : ℚ)

end A395628

/-! ## A395628.P10295005579831378743

`(n+1)*A172089(∑[n])²`
-/

namespace A395628.P10295005579831378743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A172089 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A395628.P10295005579831378743

namespace A395628

/-- `(n+1)*A172089(∑[n])²` -/
def P10295005579831378743.Spec : Prop :=
  ∀ n, P10295005579831378743.a n = A395628 n

end A395628

/-! ## A395628.P15461673164625214059

`A006882(n+1)*A095987(n)*A380910(n)`
-/

namespace A395628.P15461673164625214059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) * A095987 n * A380910 n

end

end A395628.P15461673164625214059

namespace A395628

/-- `A006882(n+1)*A095987(n)*A380910(n)` -/
def P15461673164625214059.Spec : Prop :=
  ∀ n, P15461673164625214059.a n = A395628 n

end A395628

/-! ## A395628.P15767887931785990031

`A006882(n+1)/A006882(n)*A000142(n)`
-/

namespace A395628.P15767887931785990031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / (A006882 n : ℚ) * (A000142 n : ℚ)

end

end A395628.P15767887931785990031

namespace A395628

/-- `A006882(n+1)/A006882(n)*A000142(n)` -/
def P15767887931785990031.Spec : Prop :=
  ∀ n, P15767887931785990031.a n = (A395628 n : ℚ)

end A395628

/-!
# A395630: Divisors of the order of the Baby Monster group, |B| = 4154781481226426191177580544000000.

The programs for A395630, there is no canonical definition to state claims against.
-/

/-! ## A395630.P10247536251584109629

`lt[A299966(n+1), A390530(A032741(n))]`
-/

namespace A395630.P10247536251584109629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390530 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395630.P10247536251584109629

/-! ## A395630.P1424585805234072589

`∪[A129618(n+1), A158333(n)]`
-/

namespace A395630.P1424585805234072589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158333 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395630.P1424585805234072589

/-! ## A395630.P8798957722176718720

`∪[A038032(n+1), A129618(n+1)]`
-/

namespace A395630.P8798957722176718720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395630.P8798957722176718720

/-! ## A395630.P13709587383292938639

`∪[A048737(n+1), A129618(n+1)]`
-/

namespace A395630.P13709587383292938639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395630.P13709587383292938639

/-! ## A395630.P4888379063899069963

`∪[A059533(n+1), A129618(n+1)]`
-/

namespace A395630.P4888379063899069963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395630.P4888379063899069963

/-!
# A395631: a(n) = number of real-rooted polynomials of the form 1 + n*x + O(x^2) with nonnegative integer coefficients.

The programs for A395631, there is no canonical definition to state claims against.
-/

/-! ## A395631.P4066740161782511055

`A017995(n)+A005047(A032305(n+1))`
-/

namespace A395631.P4066740161782511055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017995 n + A005047 (A032305 (n + 1)).toNat

end

end A395631.P4066740161782511055

/-!
# A395632: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are positive integers satisfying x < y <= z.

The programs for A395632, there is no canonical definition to state claims against.
-/

/-! ## A395632.P3384731076950088202

`A037806(A373510(n+1))`
-/

namespace A395632.P3384731076950088202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A373510 (n + 1)).toNat

end

end A395632.P3384731076950088202

/-! ## A395632.P15960929420535009911

`A086010(A350437(n+1))`
-/

namespace A395632.P15960929420535009911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086010 (A350437 (n + 1)).toNat

end

end A395632.P15960929420535009911

/-! ## A395632.P17844089058702497839

`A056109(A276075(n+1))%A279757(n)`
-/

namespace A395632.P17844089058702497839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056109 (A276075 (n + 1)).toNat) (A279757 n)

end

end A395632.P17844089058702497839

/-! ## A395632.P16037410965403506709

`A000040(A323352(n))%A060775(n+4)`
-/

namespace A395632.P16037410965403506709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A323352 n).toNat) (A060775 (n + 4))

end

end A395632.P16037410965403506709

/-! ## A395632.P691860304713184247

`A269245(A000799(n+1))`
-/

namespace A395632.P691860304713184247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269245 (A000799 (n + 1)).toNat

end

end A395632.P691860304713184247

/-!
# A395633: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are positive integers satisfying y < x < z.

The programs for A395633, there is no canonical definition to state claims against.
-/

/-! ## A395633.P5082665884340799067

`A353929(A322387(n+1))`
-/

namespace A395633.P5082665884340799067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353929 (A322387 (n + 1)).toNat

end

end A395633.P5082665884340799067

/-!
# A395634: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are positive integers with x coprime to y*z.

The programs for A395634, there is no canonical definition to state claims against.
-/

/-! ## A395634.P18000453384399670506

`∑{e}[A066317(n+2), #]`
-/

namespace A395634.P18000453384399670506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066317 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A395634.P18000453384399670506

/-! ## A395634.P11130031708993769572

`A196046(A370440(n+2))`
-/

namespace A395634.P11130031708993769572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196046 (A370440 (n + 2)).toNat

end

end A395634.P11130031708993769572

/-!
# A395636: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are distinct primes satisfying y < z.

The programs for A395636, there is no canonical definition to state claims against.
-/

/-! ## A395636.P14570984467717244181

`A079978(A195315(n+1)-A237593(n+1))`
-/

namespace A395636.P14570984467717244181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A195315 (n + 1) - A237593 (n + 1)).toNat

end

end A395636.P14570984467717244181

/-! ## A395636.P3089371818826011630

`A125999(A343525(n+2))`
-/

namespace A395636.P3089371818826011630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125999 (A343525 (n + 2)).toNat

end

end A395636.P3089371818826011630

/-! ## A395636.P17038348149255833255

`A000035(A029635(2*n+3)*A199246(n+1))`
-/

namespace A395636.P17038348149255833255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A029635 (2 * n + 3) * A199246 (n + 1)).toNat

end

end A395636.P17038348149255833255

/-! ## A395636.P10042369708486462591

`A010059(A266878(2*n+5)%A328973(n+1))`
-/

namespace A395636.P10042369708486462591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.tmod (A266878 (2 * n + 5)) (A328973 (n + 1))).toNat

end

end A395636.P10042369708486462591

/-!
# A395643: Numbers k whose largest prime factor exceeds k^(2/3).

The programs for A395643, there is no canonical definition to state claims against.
-/

/-! ## A395643.P12597726541297260600

`∪[A000040(n+1), A063764(n+1)]`
-/

namespace A395643.P12597726541297260600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395643.P12597726541297260600

/-! ## A395643.P12448342320099423577

`lt[n², ∑{p}[n, #^3]]`
-/

namespace A395643.P12448342320099423577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395643.P12448342320099423577

/-! ## A395643.P3308229862907420480

`lt[A033676(n+1)^3, n+1]+1`
-/

namespace A395643.P3308229862907420480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A395643.P3308229862907420480

/-! ## A395643.P11409640332421407428

`lt[n², A005064(A028310(n))]`
-/

namespace A395643.P11409640332421407428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A395643.P11409640332421407428

/-! ## A395643.P11191882528355838951

`lt[A033676(n+1)², A006530(n+1)]+1`
-/

namespace A395643.P11191882528355838951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A395643.P11191882528355838951

/-! ## A395643.P9630553421515209167

`lt[A396897(n+2), A006530(2*(n+2))]+2`
-/

namespace A395643.P9630553421515209167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396897 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A395643.P9630553421515209167

/-! ## A395643.P12170801376900754335

`∪[A063764(n+1), A169802(n+1)]`
-/

namespace A395643.P12170801376900754335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395643.P12170801376900754335

/-!
# A395646: Consider the square spiral with its cells numbered starting at 0. Three players, Red, Green and Blue, take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different color. Sequence lists squares occupied by a Green knight.

The programs for A395646, there is no canonical definition to state claims against.
-/

/-! ## A395646.P13291110231467694125

`comp[∪[∪[A395647(n+1), A395648(n+1)], A400005(n+1)]]`
-/

namespace A395646.P13291110231467694125
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395647 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395648 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = (x : ℤ)) ∨ ∃ j, f4 j = (x : ℤ)) n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400005 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f5 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A395646.P13291110231467694125

/-! ## A395646.P2664223201605314882

`lt[1, A395649(n)%3]`
-/

namespace A395646.P2664223201605314882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395649 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A395646.P2664223201605314882

/-! ## A395646.P13152718845311033142

`eq[0, A049347(A395649(n))]`
-/

namespace A395646.P13152718845311033142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A395649 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395646.P13152718845311033142

/-! ## A395646.P13860565700144775163

`eq[0, A167361(A395649(n)+1)]`
-/

namespace A395646.P13860565700144775163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167361 (A395649 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395646.P13860565700144775163

/-!
# A395647: Consider the square spiral with its cells numbered starting at 0. Three players, Red, Green and Blue, take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different color. Sequence lists squares occupied by a Blue knight.

The programs for A395647, there is no canonical definition to state claims against.
-/

/-! ## A395647.P13003553882066822929

`comp[∪[∪[A395646(n+1), A395648(n+1)], A400005(n+1)]]`
-/

namespace A395647.P13003553882066822929
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395646 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395648 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = (x : ℤ)) ∨ ∃ j, f4 j = (x : ℤ)) n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400005 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f5 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A395647.P13003553882066822929

/-! ## A395647.P1506179798261983732

`lt[A006369(A395649(n)), A395649(n)]`
-/

namespace A395647.P1506179798261983732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A395649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395647.P1506179798261983732

/-!
# A395648: Consider the square spiral with its cells numbered starting at 0. Three players, Red, Green and Blue, take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different color. Sequence lists unoccupied squares.

The programs for A395648, there is no canonical definition to state claims against.
-/

/-! ## A395648.P8518467239950204938

`comp[∪[∪[A395646(n+1), A395647(n+1)], A400005(n+1)]]`
-/

namespace A395648.P8518467239950204938
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395646 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395647 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = (x : ℤ)) ∨ ∃ j, f4 j = (x : ℤ)) n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400005 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f5 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A395648.P8518467239950204938

/-! ## A395648.P11960831883732553529

`eq[0, A395649(n)]`
-/

namespace A395648.P11960831883732553529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395648.P11960831883732553529

/-! ## A395648.P4251974530798891612

`lt[A395649(A028310(n)), 1]`
-/

namespace A395648.P4251974530798891612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395648.P4251974530798891612

/-! ## A395648.P14739741321585177500

`lt[A395649(A254667(n)), 1]`
-/

namespace A395648.P14739741321585177500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 (A254667 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395648.P14739741321585177500

/-! ## A395648.P2979145220143442282

`lt[A395649(n), A000120(n)]`
-/

namespace A395648.P2979145220143442282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P2979145220143442282

/-! ## A395648.P11370284867237901478

`lt[A395649(n), A000196(n)]`
-/

namespace A395648.P11370284867237901478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P11370284867237901478

/-! ## A395648.P4539976080407678048

`lt[A395649(n), A002487(n)]`
-/

namespace A395648.P4539976080407678048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P4539976080407678048

/-! ## A395648.P14735377859783104507

`lt[A395649(n), A007953(n)]`
-/

namespace A395648.P14735377859783104507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P14735377859783104507

/-! ## A395648.P4158353742925129343

`lt[A395649(n), A040000(n)]`
-/

namespace A395648.P4158353742925129343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P4158353742925129343

/-! ## A395648.P7692103017713045460

`lt[A395649(n), A051802(n)]`
-/

namespace A395648.P7692103017713045460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P7692103017713045460

/-! ## A395648.P16056634945015442642

`lt[A395649(n), A055642(n)]`
-/

namespace A395648.P16056634945015442642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P16056634945015442642

/-! ## A395648.P8369885428067629990

`lt[A395649(n), A070939(n)]`
-/

namespace A395648.P8369885428067629990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P8369885428067629990

/-! ## A395648.P10531534495899146006

`lt[A395649(n), A103221(n)]`
-/

namespace A395648.P10531534495899146006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P10531534495899146006

/-! ## A395648.P1269430128629403289

`lt[A395649(n), A279061(n)]`
-/

namespace A395648.P1269430128629403289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P1269430128629403289

/-! ## A395648.P7962666384103907487

`lt[A395649(n), sqrt(A109613(n))]`
-/

namespace A395648.P7962666384103907487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A109613 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A395648.P7962666384103907487

/-! ## A395648.P11656725537063480305

`lt[A395649(n), sqrt(A125051(n))]`
-/

namespace A395648.P11656725537063480305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A125051 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A395648.P11656725537063480305

/-! ## A395648.P7188450606113555751

`lt[A395649(n), dr(A001957(n))]`
-/

namespace A395648.P7188450606113555751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001957 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395648.P7188450606113555751

/-! ## A395648.P16506903540524551697

`lt[A395649(A199969(n+1)), 1]`
-/

namespace A395648.P16506903540524551697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 (A199969 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395648.P16506903540524551697

/-! ## A395648.P5937526975413383380

`lt[A400005(A395649(n)+1), 1]`
-/

namespace A395648.P5937526975413383380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400005 (A395649 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395648.P5937526975413383380

/-! ## A395648.P1104984170973436983

`lt[A395649(n), A000005(n+1)]`
-/

namespace A395648.P1104984170973436983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P1104984170973436983

/-!
# A395655: Expansion of 1/(4*x) * (1/(3-2*g)^2 - 1), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A395655, the canonical program `A395655.P2124019926916051659` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395655 has offset 0).

The definition of A395655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395655.P2124019926916051659

`A378504(n)/(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395655

/-- `A378504(n)/(n+1)` -/
def P2124019926916051659.Spec : Prop :=
  ∀ n, P2124019926916051659.a n = (A395655 n : ℚ)

end A395655

/-! ## A395655.P11141221652191783934

`1/(n+1)*∑{#}[n, 2^#*C(#+2, 2)*C(3*n+3, n-#)]`
-/

namespace A395655.P11141221652191783934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose (k + 2) 2 * Nat.choose (3 * n + 3) ((n : ℤ) - (k : ℤ)).toNat : ℕ) : ℚ)

end

end A395655.P11141221652191783934

namespace A395655

/-- `1/(n+1)*∑{#}[n, 2^#*C(#+2, 2)*C(3*n+3, n-#)]` -/
def P11141221652191783934.Spec : Prop :=
  ∀ n, P11141221652191783934.a n = (A395655 n : ℚ)

end A395655

/-! ## A395655.P10722181823151696987

`1/4*∑{#}[n+1, 2^(n+1-#)*C(3*n+2, #)]`
-/

namespace A395655.P10722181823151696987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 2) k : ℚ))

end

end A395655.P10722181823151696987

namespace A395655

/-- `1/4*∑{#}[n+1, 2^(n+1-#)*C(3*n+2, #)]` -/
def P10722181823151696987.Spec : Prop :=
  ∀ n, P10722181823151696987.a n = (A395655 n : ℚ)

end A395655

/-! ## A395655.P4210839827081945304

`A117375(A001844(n+1))`
-/

namespace A395655.P4210839827081945304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117375 (A001844 (n + 1)).toNat

end

end A395655.P4210839827081945304

namespace A395655

/-- `A117375(A001844(n+1))` -/
def P4210839827081945304.Spec : Prop :=
  ∀ n, P4210839827081945304.a n = A395655 n

end A395655

/-! ## A395655.P5025637601979016417

`A117375(A099776(n+1))`
-/

namespace A395655.P5025637601979016417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117375 (A099776 (n + 1)).toNat

end

end A395655.P5025637601979016417

namespace A395655

/-- `A117375(A099776(n+1))` -/
def P5025637601979016417.Spec : Prop :=
  ∀ n, P5025637601979016417.a n = A395655 n

end A395655

/-!
# A395656: Expansion of 1/(9*x) * (1/(4-3*g)^3 - 1), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A395656, the canonical program `A395656.P16112458014712086888` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395656 has offset 0).

The definition of A395656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395656.P16112458014712086888

`A395659(n)/(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395656

/-- `A395659(n)/(n+1)` -/
def P16112458014712086888.Spec : Prop :=
  ∀ n, P16112458014712086888.a n = (A395656 n : ℚ)

end A395656

/-! ## A395656.P744195700627395858

`1/(n+1)*∑{#}[n, 3^#*C(#+3, 3)*C(4*n+4, n-#)]`
-/

namespace A395656.P744195700627395858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (k + 3) 3 * Nat.choose (4 * n + 4) ((n : ℤ) - (k : ℤ)).toNat : ℕ) : ℚ)

end

end A395656.P744195700627395858

namespace A395656

/-- `1/(n+1)*∑{#}[n, 3^#*C(#+3, 3)*C(4*n+4, n-#)]` -/
def P744195700627395858.Spec : Prop :=
  ∀ n, P744195700627395858.a n = (A395656 n : ℚ)

end A395656

/-!
# A395657: Expansion of 1/(16*x) * (1/(5-4*g)^4 - 1), where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395657, the canonical program `A395657.P15750388144610887179` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395657 has offset 0).

The definition of A395657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395657.P15750388144610887179

`A395660(n)/(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395657

/-- `A395660(n)/(n+1)` -/
def P15750388144610887179.Spec : Prop :=
  ∀ n, P15750388144610887179.a n = (A395657 n : ℚ)

end A395657

/-! ## A395657.P6827829035095201361

`1/(n+1)*∑{#}[n, 4^#*C(#+4, 4)*C(5*n+5, n-#)]`
-/

namespace A395657.P6827829035095201361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), 4 ^ k * Nat.choose (k + 4) 4 * Nat.choose (5 * n + 5) ((n : ℤ) - (k : ℤ)).toNat : ℕ) : ℚ)

end

end A395657.P6827829035095201361

namespace A395657

/-- `1/(n+1)*∑{#}[n, 4^#*C(#+4, 4)*C(5*n+5, n-#)]` -/
def P6827829035095201361.Spec : Prop :=
  ∀ n, P6827829035095201361.a n = (A395657 n : ℚ)

end A395657

/-! ## A395657.P11596053462767438746

`∑{#}[n, 4^#*C(#+4, 4)*C(5*(n+1), n-#)]/(n+1)`
-/

namespace A395657.P11596053462767438746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), 4 ^ k * Nat.choose (k + 4) 4 * Nat.choose (5 * (n + 1)) ((n : ℤ) - (k : ℤ)).toNat : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A395657.P11596053462767438746

namespace A395657

/-- `∑{#}[n, 4^#*C(#+4, 4)*C(5*(n+1), n-#)]/(n+1)` -/
def P11596053462767438746.Spec : Prop :=
  ∀ n, P11596053462767438746.a n = (A395657 n : ℚ)

end A395657

/-!
# A395659: Expansion of (Sum_{k>=0} binomial(4*k,k) * x^k)^5.

The programs for A395659, the canonical program `A395659.P5670257491155938374` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395659 has offset 0).

The definition of A395659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395659.P5670257491155938374

`∑{#}[n, 3^#*C(#+3, 3)*C(4*n+4, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395659

/-- `∑{#}[n, 3^#*C(#+3, 3)*C(4*n+4, n-#)]` -/
def P5670257491155938374.Spec : Prop :=
  ∀ n, (P5670257491155938374.a n : ℤ) = A395659 n

theorem P5670257491155938374.correct : P5670257491155938374.Spec := by
  intro n
  simp only [A395659]

end A395659

/-! ## A395659.P6277220690401795126

`(n+1)*A395656(n)`
-/

namespace A395659.P6277220690401795126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395656 n

end

end A395659.P6277220690401795126

namespace A395659

/-- `(n+1)*A395656(n)` -/
def P6277220690401795126.Spec : Prop :=
  ∀ n, P6277220690401795126.a n = A395659 n

end A395659

/-!
# A395660: Expansion of (Sum_{k>=0} binomial(5*k,k) * x^k)^6.

The programs for A395660, the canonical program `A395660.P12598014715381375519` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395660 has offset 0).

The definition of A395660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395660.P12598014715381375519

`∑{#}[n, 4^#*C(#+4, 4)*C(5*n+5, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395660

/-- `∑{#}[n, 4^#*C(#+4, 4)*C(5*n+5, n-#)]` -/
def P12598014715381375519.Spec : Prop :=
  ∀ n, (P12598014715381375519.a n : ℤ) = A395660 n

theorem P12598014715381375519.correct : P12598014715381375519.Spec := by
  intro n
  simp only [A395660]

end A395660

/-! ## A395660.P10398456476304366776

`(n+1)*A395657(n)`
-/

namespace A395660.P10398456476304366776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395657 n

end

end A395660.P10398456476304366776

namespace A395660

/-- `(n+1)*A395657(n)` -/
def P10398456476304366776.Spec : Prop :=
  ∀ n, P10398456476304366776.a n = A395660 n

end A395660

/-!
# A395661: Number of rooted binary unlabeled general galled trees with n leaves and exactly 1 gall.

The programs for A395661, there is no canonical definition to state claims against.
-/

/-! ## A395661.P4496184296436343457

`∑[A318229(n+1)-A329329(n+1)]`
-/

namespace A395661.P4496184296436343457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) - A329329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395661.P4496184296436343457

/-! ## A395661.P18060673072453315910

`A329815(A001523(n))`
-/

namespace A395661.P18060673072453315910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329815 (A001523 n).toNat

end

end A395661.P18060673072453315910

/-! ## A395661.P4236276671671877900

`A329815(A248729(n))`
-/

namespace A395661.P4236276671671877900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329815 (A248729 n).toNat

end

end A395661.P4236276671671877900

/-!
# A395664: Expansion of g^5/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A395664, the canonical program `A395664.P14826177624578623082` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395664 has offset 0).

The definition of A395664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395664.P14826177624578623082

`∑{#}[n, 3^#*C(#+2, 2)*C(4*n+4, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395664

/-- `∑{#}[n, 3^#*C(#+2, 2)*C(4*n+4, n-#)]` -/
def P14826177624578623082.Spec : Prop :=
  ∀ n, (P14826177624578623082.a n : ℤ) = A395664 n

theorem P14826177624578623082.correct : P14826177624578623082.Spec := by
  intro n
  simp only [A395664]

end A395664

/-!
# A395665: Expansion of g^6/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395665, the canonical program `A395665.P13314228167275503570` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395665 has offset 0).

The definition of A395665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395665.P13314228167275503570

`∑{#}[n, 4^#*C(#+2, 2)*C(5*n+5, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395665

/-- `∑{#}[n, 4^#*C(#+2, 2)*C(5*n+5, n-#)]` -/
def P13314228167275503570.Spec : Prop :=
  ∀ n, (P13314228167275503570.a n : ℤ) = A395665 n

theorem P13314228167275503570.correct : P13314228167275503570.Spec := by
  intro n
  simp only [A395665]

end A395665

/-! ## A395665.P8738888767890711933

`(n+1)*A395668(n)`
-/

namespace A395665.P8738888767890711933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395668 n

end

end A395665.P8738888767890711933

namespace A395665

/-- `(n+1)*A395668(n)` -/
def P8738888767890711933.Spec : Prop :=
  ∀ n, P8738888767890711933.a n = A395665 n

end A395665

/-!
# A395666: E.g.f. A(x) satisfies A(x) = 1 + x * A(x * exp(x)).

The programs for A395666, there is no canonical definition to state claims against.
-/

/-! ## A395666.P8055864575081231668

`A010554(A245165(n))`
-/

namespace A395666.P8055864575081231668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A245165 n).toNat

end

end A395666.P8055864575081231668

/-! ## A395666.P2737886985325913783

`A320195(A293840(n)-A000108(n))`
-/

namespace A395666.P2737886985325913783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320195 (A293840 n - A000108 n).toNat

end

end A395666.P2737886985325913783

/-!
# A395667: Expansion of g^8/(7-6*g)^4, where g = 1+x*g^7 is the g.f. of A002296.

The programs for A395667, the canonical program `A395667.P3574920679072585039` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395667 has offset 0).

The definition of A395667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395667.P3574920679072585039

`∑{#}[n, 6^#*C(#+2, 2)*C(7*n+7, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395667

/-- `∑{#}[n, 6^#*C(#+2, 2)*C(7*n+7, n-#)]` -/
def P3574920679072585039.Spec : Prop :=
  ∀ n, (P3574920679072585039.a n : ℤ) = A395667 n

theorem P3574920679072585039.correct : P3574920679072585039.Spec := by
  intro n
  simp only [A395667]

end A395667

/-! ## A395667.P918440172807025277

`(1+n)*A395669(n)`
-/

namespace A395667.P918440172807025277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A395669 n

end

end A395667.P918440172807025277

namespace A395667

/-- `(1+n)*A395669(n)` -/
def P918440172807025277.Spec : Prop :=
  ∀ n, P918440172807025277.a n = A395667 n

end A395667

/-!
# A395668: Expansion of g^5*(3-2*g)/(5-4*g)^2, where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395668, the canonical program `A395668.P16075930559915105460` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395668 has offset 0).

The definition of A395668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395668.P16075930559915105460

`A395665(n)/(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395668

/-- `A395665(n)/(n+1)` -/
def P16075930559915105460.Spec : Prop :=
  ∀ n, P16075930559915105460.a n = (A395668 n : ℚ)

end A395668

/-! ## A395668.P15789863570565270578

`1/8*∑{#}[n+1, 4^(n+1-#)*C(5*n+4, #)]`
-/

namespace A395668.P15789863570565270578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (∑ k ∈ Finset.range (f1 n + 1), (4 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (5 * n + 4) k : ℚ))

end

end A395668.P15789863570565270578

namespace A395668

/-- `1/8*∑{#}[n+1, 4^(n+1-#)*C(5*n+4, #)]` -/
def P15789863570565270578.Spec : Prop :=
  ∀ n, P15789863570565270578.a n = (A395668 n : ℚ)

end A395668

/-!
# A395669: Expansion of g^7*(4-3*g)/(7-6*g)^2, where g = 1+x*g^7 is the g.f. of A002296.

The programs for A395669, the canonical program `A395669.P7800674907976552696` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395669 has offset 0).

The definition of A395669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395669.P7800674907976552696

`A395667(n)/(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395669

/-- `A395667(n)/(n+1)` -/
def P7800674907976552696.Spec : Prop :=
  ∀ n, P7800674907976552696.a n = (A395669 n : ℚ)

end A395669

/-! ## A395669.P18413634941569034786

`1/12*∑{#}[n+1, 6^(n+1-#)*C(7*n+6, #)]`
-/

namespace A395669.P18413634941569034786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 12 * (∑ k ∈ Finset.range (f1 n + 1), (6 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (7 * n + 6) k : ℚ))

end

end A395669.P18413634941569034786

namespace A395669

/-- `1/12*∑{#}[n+1, 6^(n+1-#)*C(7*n+6, #)]` -/
def P18413634941569034786.Spec : Prop :=
  ∀ n, P18413634941569034786.a n = (A395669 n : ℚ)

end A395669

/-!
# A395672: Number of endofunctions f:{1,2,...,n}-> {1,2,...,n} whose smallest weakly connected component has exactly 3 nodes.

The programs for A395672, there is no canonical definition to state claims against.
-/

/-! ## A395672.P13460952009947874566

`A269782(A000142(n))*A292274(n)`
-/

namespace A395672.P13460952009947874566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 (A000142 n).toNat * A292274 n

end

end A395672.P13460952009947874566

/-!
# A395674: Odd powerful numbers that are not powers of squarefree numbers.

The programs for A395674, there is no canonical definition to state claims against.
-/

/-! ## A395674.P319826774568745143

`∩[A062739(n+1), A359280(n+1)]`
-/

namespace A395674.P319826774568745143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P319826774568745143

/-! ## A395674.P6056724735291412322

`∩[A359280(n+1), A363217(n+1)]`
-/

namespace A395674.P6056724735291412322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P6056724735291412322

/-! ## A395674.P2903631936743410132

`∩[A062739(n+1), A389752(n+1)]`
-/

namespace A395674.P2903631936743410132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P2903631936743410132

/-! ## A395674.P7778097893918146659

`∩[A363217(n+1), A389752(n+1)]`
-/

namespace A395674.P7778097893918146659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P7778097893918146659

/-! ## A395674.P3724489396365968286

`∩[A359280(n+1), A361487(n+1)]`
-/

namespace A395674.P3724489396365968286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P3724489396365968286

/-! ## A395674.P11710948184747300498

`∩[A275250(n+1), A359280(n+1)]`
-/

namespace A395674.P11710948184747300498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P11710948184747300498

/-! ## A395674.P14401970352691993666

`∩[A275196(n+1), A359280(n+1)]`
-/

namespace A395674.P14401970352691993666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P14401970352691993666

/-! ## A395674.P15707124981899333074

`filter[A359280(n+1), A359467(#)]`
-/

namespace A395674.P15707124981899333074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359467 (f1 j).toNat = 1) n)

end

end A395674.P15707124981899333074

/-! ## A395674.P3070662094277115148

`filter[A359280(n+1), A039982(#)]`
-/

namespace A395674.P3070662094277115148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A395674.P3070662094277115148

/-! ## A395674.P9624337128037094439

`filter[A359280(n+1), A098725(#)]`
-/

namespace A395674.P9624337128037094439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A395674.P9624337128037094439

/-!
# A395675: Expansion of g^3/(2-g)^4, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A395675, the canonical program `A395675.P10573458847951959363` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395675 has offset 0).

The definition of A395675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395675.P10573458847951959363

`A339240(n+1)/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395675

/-- `A339240(n+1)/2` -/
def P10573458847951959363.Spec : Prop :=
  ∀ n, P10573458847951959363.a n = (A395675 n : ℚ)

end A395675

/-! ## A395675.P8425832757675062989

`(n+1)/2*∑{#}[n+1, C(2*n+1, #)]`
-/

namespace A395675.P8425832757675062989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n + 1) k : ℕ) : ℚ)

end

end A395675.P8425832757675062989

namespace A395675

/-- `(n+1)/2*∑{#}[n+1, C(2*n+1, #)]` -/
def P8425832757675062989.Spec : Prop :=
  ∀ n, P8425832757675062989.a n = (A395675 n : ℚ)

end A395675

/-! ## A395675.P728422123646026489

`∑{#}[n, C(#+2, 2)*C(2*n+2, n-#)]`
-/

namespace A395675.P728422123646026489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (k + 2) 2 * Nat.choose (2 * n + 2) ((n : ℤ) - (k : ℤ)).toNat

end

end A395675.P728422123646026489

namespace A395675

/-- `∑{#}[n, C(#+2, 2)*C(2*n+2, n-#)]` -/
def P728422123646026489.Spec : Prop :=
  ∀ n, (P728422123646026489.a n : ℤ) = A395675 n

end A395675

/-! ## A395675.P5843536184196068703

`(n+1)*(C(2*n+1, n)+2^(2*n))/2`
-/

namespace A395675.P5843536184196068703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (Nat.choose (2 * n + 1) n + 2 ^ (2 * n)) : ℚ) / 2

end

end A395675.P5843536184196068703

namespace A395675

/-- `(n+1)*(C(2*n+1, n)+2^(2*n))/2` -/
def P5843536184196068703.Spec : Prop :=
  ∀ n, P5843536184196068703.a n = (A395675 n : ℚ)

end A395675

/-! ## A395675.P12271728576714696407

`(n+1)/2*A114121(n+1)`
-/

namespace A395675.P12271728576714696407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A114121 (n + 1) : ℚ)

end

end A395675.P12271728576714696407

namespace A395675

/-- `(n+1)/2*A114121(n+1)` -/
def P12271728576714696407.Spec : Prop :=
  ∀ n, P12271728576714696407.a n = (A395675 n : ℚ)

end A395675

/-! ## A395675.P10322845966635071281

`A018218(n)+A002457(n)`
-/

namespace A395675.P10322845966635071281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 n + A002457 n

end

end A395675.P10322845966635071281

namespace A395675

/-- `A018218(n)+A002457(n)` -/
def P10322845966635071281.Spec : Prop :=
  ∀ n, P10322845966635071281.a n = A395675 n

end A395675

/-! ## A395675.P17702678096003060919

`A240879(n)+A002697(n)`
-/

namespace A395675.P17702678096003060919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240879 n + A002697 n

end

end A395675.P17702678096003060919

namespace A395675

/-- `A240879(n)+A002697(n)` -/
def P17702678096003060919.Spec : Prop :=
  ∀ n, P17702678096003060919.a n = A395675 n

end A395675

/-! ## A395675.P16922787865880907005

`A210064(n+1)+A000531(n+1)`
-/

namespace A395675.P16922787865880907005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210064 (n + 1) + A000531 (n + 1)

end

end A395675.P16922787865880907005

namespace A395675

/-- `A210064(n+1)+A000531(n+1)` -/
def P16922787865880907005.Spec : Prop :=
  ∀ n, P16922787865880907005.a n = A395675 n

end A395675

/-! ## A395675.P8628918099354017946

`A185252(2*n+1)-A002699(n)`
-/

namespace A395675.P8628918099354017946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (2 * n + 1) - A002699 n

end

end A395675.P8628918099354017946

namespace A395675

/-- `A185252(2*n+1)-A002699(n)` -/
def P8628918099354017946.Spec : Prop :=
  ∀ n, P8628918099354017946.a n = A395675 n

end A395675

/-! ## A395675.P288816014393484378

`A185252(2*n+1)-A185251(2*n)`
-/

namespace A395675.P288816014393484378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (2 * n + 1) - A185251 (2 * n)

end

end A395675.P288816014393484378

namespace A395675

/-- `A185252(2*n+1)-A185251(2*n)` -/
def P288816014393484378.Spec : Prop :=
  ∀ n, P288816014393484378.a n = A395675 n

end A395675

/-! ## A395675.P4773881413201948656

`A185252(2*n+1)-A185252(2*n)`
-/

namespace A395675.P4773881413201948656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (2 * n + 1) - A185252 (2 * n)

end

end A395675.P4773881413201948656

namespace A395675

/-- `A185252(2*n+1)-A185252(2*n)` -/
def P4773881413201948656.Spec : Prop :=
  ∀ n, P4773881413201948656.a n = A395675 n

end A395675

/-! ## A395675.P11121920160832543669

`A002697(n+1)+A002699(n)-A303602(n)`
-/

namespace A395675.P11121920160832543669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) + (A002699 n - A303602 n)

end

end A395675.P11121920160832543669

namespace A395675

/-- `A002697(n+1)+A002699(n)-A303602(n)` -/
def P11121920160832543669.Spec : Prop :=
  ∀ n, P11121920160832543669.a n = A395675 n

end A395675

/-! ## A395675.P11083513392200842759

`A099326(2*n+1)/4`
-/

namespace A395675.P11083513392200842759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099326 (2 * n + 1) : ℚ) / 4

end

end A395675.P11083513392200842759

namespace A395675

/-- `A099326(2*n+1)/4` -/
def P11083513392200842759.Spec : Prop :=
  ∀ n, P11083513392200842759.a n = (A395675 n : ℚ)

end A395675

/-! ## A395675.P9959150358963036199

`∑{#}[n, (2*n+1-#)*C(2*n, #)]`
-/

namespace A395675.P9959150358963036199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 * n + 1 : ℤ) - (k : ℤ)) * (Nat.choose (2 * n) k : ℤ)

end

end A395675.P9959150358963036199

namespace A395675

/-- `∑{#}[n, (2*n+1-#)*C(2*n, #)]` -/
def P9959150358963036199.Spec : Prop :=
  ∀ n, P9959150358963036199.a n = A395675 n

end A395675

/-!
# A395685: Triangle read by rows: T(0,0) = 1; for k != 0, T(0,k) = 0; T(n,k) = T(n-1,k-1)*b(n) + T(n-1,k)*(n-b(n)) where b(n) = 2^ceiling(log_2(n)) - n.

The programs for A395685, there is no canonical definition to state claims against.
-/

/-! ## A395685.P13347638237653408993

`A373303(A071725(n))`
-/

namespace A395685.P13347638237653408993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373303 (A071725 n).toNat

end

end A395685.P13347638237653408993

/-! ## A395685.P3887325845977880063

`A048896(A238440(n+1))`
-/

namespace A395685.P3887325845977880063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A238440 (n + 1)).toNat

end

end A395685.P3887325845977880063

/-! ## A395685.P14999581420413258804

`A345442(A181091(n+2))`
-/

namespace A395685.P14999581420413258804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345442 (A181091 (n + 2)).toNat

end

end A395685.P14999581420413258804

/-! ## A395685.P1936540015340655228

`A048896(A026289(n+3))`
-/

namespace A395685.P1936540015340655228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A026289 (n + 3)).toNat

end

end A395685.P1936540015340655228

/-! ## A395685.P11901711940195166349

`A105154(A027893(n+1)-A059297(3*n+1))`
-/

namespace A395685.P11901711940195166349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (A027893 (n + 1) - A059297 (3 * n + 1)).toNat

end

end A395685.P11901711940195166349

/-!
# A395694: Triangle read by rows: T(n,k) = number of labeled 5-multigraphs on n vertices with clique number exactly k.

The programs for A395694, there is no canonical definition to state claims against.
-/

/-! ## A395694.P817447651705049502

`A364757(A332477(n+1))`
-/

namespace A395694.P817447651705049502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364757 (A332477 (n + 1)).toNat

end

end A395694.P817447651705049502

/-! ## A395694.P14915616150071050013

`A077610(A382840(n)+A242294(3*(n+2)))`
-/

namespace A395694.P14915616150071050013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (A382840 n + A242294 (3 * (n + 2))).toNat

end

end A395694.P14915616150071050013

/-!
# A395695: Triangle read by rows: T(n,k) = number of labeled simple graphs on n vertices with clique number <= k (K_{k+1}-free graphs).

The programs for A395695, there is no canonical definition to state claims against.
-/

/-! ## A395695.P4892703784601165599

`T(n,k-1)+A395684(C(row(n)+1, 2)+col(n)+1)` with `a(0)=1`
-/

namespace A395695.P4892703784601165599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triLeft a n + A395684 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A395695.P4892703784601165599

/-!
# A395697: a(n) is the least multiple of n that is a partial sum of the primes.

The programs for A395697, there is no canonical definition to state claims against.
-/

/-! ## A395697.P14785150364627118352

`(n+1)*A308749(n+1)`
-/

namespace A395697.P14785150364627118352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308749 (n + 1)

end

end A395697.P14785150364627118352

/-! ## A395697.P9691527115809859857

`A007504(A053050(n+1))`
-/

namespace A395697.P9691527115809859857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A053050 (n + 1)).toNat

end

end A395697.P9691527115809859857

/-!
# A395698: Triangle read by rows: row n (n >= 1) gives the concatenated run-length encoding of the integer partitions of n, sorted first by length and then reverse-lexicographically.

The programs for A395698, there is no canonical definition to state claims against.
-/

/-! ## A395698.P9066669704816120065

`gcd(A000120(2*(n+1)), A000523(A071945(3*n+4)))`
-/

namespace A395698.P9066669704816120065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (2 * (n + 1))) (A000523 (A071945 (3 * n + 4)).toNat)

end

end A395698.P9066669704816120065

/-! ## A395698.P15295025466601963563

`A144790(A287621(n+1))`
-/

namespace A395698.P15295025466601963563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (A287621 (n + 1)).toNat

end

end A395698.P15295025466601963563

/-! ## A395698.P3832580188979626620

`A227349(C(A129129(n), n))`
-/

namespace A395698.P3832580188979626620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (Nat.choose (A129129 n).toNat n)

end

end A395698.P3832580188979626620

/-! ## A395698.P9042239590232929255

`A227349(C(A185974(n), n))`
-/

namespace A395698.P9042239590232929255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (Nat.choose (A185974 n).toNat n)

end

end A395698.P9042239590232929255

/-! ## A395698.P11515323125409032024

`A343029(2*n)+A119981(A246381(n))`
-/

namespace A395698.P11515323125409032024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (2 * n) + A119981 (A246381 n).toNat

end

end A395698.P11515323125409032024

