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
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C003
import Seq.B002.C000
import Seq.Opaque.C013

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A017200: a(n) = (9*n+3)^4.

The programs for A017200, the canonical program `A017200.P17083821624758811840` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017200 has offset 0).

The definition of A017200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+3)^4` (program `A017200.P17083821624758811840`, by `A017200.P17083821624758811840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017200.P17083821624758811840

`(9*n+3)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017200

/-- `(9*n+3)^4` -/
def P17083821624758811840.Spec : Prop :=
  ∀ n, (P17083821624758811840.a n : ℤ) = A017200 n

theorem P17083821624758811840.correct : P17083821624758811840.Spec := by
  intro n
  simp only [A017200]

end A017200

/-! ## A017200.P3981177916851296406

`81*A016780(n)`
-/

namespace A017200.P3981177916851296406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A016780 n

end

end A017200.P3981177916851296406

namespace A017200

/-- `81*A016780(n)` -/
def P3981177916851296406.Spec : Prop :=
  ∀ n, P3981177916851296406.a n = A017200 n

theorem P3981177916851296406.correct : P3981177916851296406.Spec := by
  intro n
  simp only [A017200, Nat.add_sub_cancel, A017200.P3981177916851296406.a, A017200.P17083821624758811840.a, A016780, A016780.P5276202049473501293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017200

/-! ## A017200.P9156024747448643111

`A000583(A017197(n))`
-/

namespace A017200.P9156024747448643111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A017197 n).toNat

end

end A017200.P9156024747448643111

namespace A017200

/-- `A000583(A017197(n))` -/
def P9156024747448643111.Spec : Prop :=
  ∀ n, P9156024747448643111.a n = A017200 n

end A017200

/-! ## A017200.P4411176637051441005

`Δ[C(3*n, 2)]²²`
-/

namespace A017200.P4411176637051441005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017200.P4411176637051441005

namespace A017200

/-- `Δ[C(3*n, 2)]²²` -/
def P4411176637051441005.Spec : Prop :=
  ∀ n, P4411176637051441005.a n = A017200 n

theorem P4411176637051441005.correct : P4411176637051441005.Spec := by
  intro n
  simp only [A017200, Nat.add_sub_cancel, A017200.P4411176637051441005.f1, A017200.P4411176637051441005.a, A017200.P17083821624758811840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017200

/-! ## A017200.P8656134686555847096

`lcm(9, (3*n+1)²)²`
-/

namespace A017200.P8656134686555847096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 ((3 * n + 1) ^ 2) ^ 2

end

end A017200.P8656134686555847096

namespace A017200

/-- `lcm(9, (3*n+1)²)²` -/
def P8656134686555847096.Spec : Prop :=
  ∀ n, (P8656134686555847096.a n : ℤ) = A017200 n

end A017200

/-! ## A017200.P3425275104381762996

`record[(dr(3-n)-n)^4]`
-/

namespace A017200.P3425275104381762996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017200.P3425275104381762996

namespace A017200

/-- `record[(dr(3-n)-n)^4]` -/
def P3425275104381762996.Spec : Prop :=
  ∀ n, P3425275104381762996.a n = A017200 n

end A017200

/-! ## A017200.P9393997986566779716

`record[(dr(3-n)-n)²²]`
-/

namespace A017200.P9393997986566779716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017200.P9393997986566779716

namespace A017200

/-- `record[(dr(3-n)-n)²²]` -/
def P9393997986566779716.Spec : Prop :=
  ∀ n, P9393997986566779716.a n = A017200 n

end A017200

/-! ## A017200.P6752693807521118947

`record[((n+1)*gcd(3, n))²²]`
-/

namespace A017200.P6752693807521118947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n + 1) * Nat.gcd 3 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017200.P6752693807521118947

namespace A017200

/-- `record[((n+1)*gcd(3, n))²²]` -/
def P6752693807521118947.Spec : Prop :=
  ∀ n, (P6752693807521118947.a n : ℤ) = A017200 n

end A017200

/-! ## A017200.P4732023603130296492

`record[(n+3)^(4/dr(n+1))]`
-/

namespace A017200.P4732023603130296492
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) ^ (4 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017200.P4732023603130296492

namespace A017200

/-- `record[(n+3)^(4/dr(n+1))]` -/
def P4732023603130296492.Spec : Prop :=
  ∀ n, P4732023603130296492.a n = (A017200 n : ℝ)

end A017200

/-! ## A017200.P1660221696857645189

`record[((n+3)/dr(n+1))²²]`
-/

namespace A017200.P1660221696857645189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017200.P1660221696857645189

namespace A017200

/-- `record[((n+3)/dr(n+1))²²]` -/
def P1660221696857645189.Spec : Prop :=
  ∀ n, P1660221696857645189.a n = (A017200 n : ℚ)

end A017200

/-! ## A017200.P7893013320155327385

`(record[lcm(4, n+1)]+n-1)²²`
-/

namespace A017200.P7893013320155327385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((n : ℤ) - 1)) ^ 2) ^ 2

end

end A017200.P7893013320155327385

namespace A017200

/-- `(record[lcm(4, n+1)]+n-1)²²` -/
def P7893013320155327385.Spec : Prop :=
  ∀ n, P7893013320155327385.a n = A017200 n

end A017200

/-! ## A017200.P6963871165981703962

`(Δ[and(2*n+1, 2*n)²]+n-1)²²`
-/

namespace A017200.P6963871165981703962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 1)) ^ 2) ^ 2

end

end A017200.P6963871165981703962

namespace A017200

/-- `(Δ[and(2*n+1, 2*n)²]+n-1)²²` -/
def P6963871165981703962.Spec : Prop :=
  ∀ n, P6963871165981703962.a n = A017200 n

end A017200

/-! ## A017200.P1343627094869693356

`A017198(n)²`
-/

namespace A017200.P1343627094869693356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n ^ 2

end

end A017200.P1343627094869693356

namespace A017200

/-- `A017198(n)²` -/
def P1343627094869693356.Spec : Prop :=
  ∀ n, P1343627094869693356.a n = A017200 n

theorem P1343627094869693356.correct : P1343627094869693356.Spec := by
  intro n
  simp only [A017200, Nat.add_sub_cancel, A017200.P1343627094869693356.a, A017200.P17083821624758811840.a, A017198, A017198.P11032527811158562085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017200

/-! ## A017200.P17837187020772414499

`sqrt(A017204(n))`
-/

namespace A017200.P17837187020772414499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017204 n : ℝ)

end

end A017200.P17837187020772414499

namespace A017200

/-- `sqrt(A017204(n))` -/
def P17837187020772414499.Spec : Prop :=
  ∀ n, P17837187020772414499.a n = (A017200 n : ℝ)

end A017200

/-! ## A017200.P12935830239640279892

`(9*A016778(n))²`
-/

namespace A017200.P12935830239640279892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * A016778 n) ^ 2

end

end A017200.P12935830239640279892

namespace A017200

/-- `(9*A016778(n))²` -/
def P12935830239640279892.Spec : Prop :=
  ∀ n, P12935830239640279892.a n = A017200 n

theorem P12935830239640279892.correct : P12935830239640279892.Spec := by
  intro n
  simp only [A017200, Nat.add_sub_cancel, A017200.P12935830239640279892.a, A017200.P17083821624758811840.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017200

/-! ## A017200.P8732719715403564642

`Δ[A062741(n)]²²`
-/

namespace A017200.P8732719715403564642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017200.P8732719715403564642

namespace A017200

/-- `Δ[A062741(n)]²²` -/
def P8732719715403564642.Spec : Prop :=
  ∀ n, P8732719715403564642.a n = A017200 n

end A017200

/-! ## A017200.P10295066407792059407

`(A017185(n)+1)²²`
-/

namespace A017200.P10295066407792059407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017185 n + 1) ^ 2) ^ 2

end

end A017200.P10295066407792059407

namespace A017200

/-- `(A017185(n)+1)²²` -/
def P10295066407792059407.Spec : Prop :=
  ∀ n, P10295066407792059407.a n = A017200 n

theorem P10295066407792059407.correct : P10295066407792059407.Spec := by
  intro n
  simp only [A017200, Nat.add_sub_cancel, A017200.P10295066407792059407.a, A017200.P17083821624758811840.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017200

/-! ## A017200.P5263649258414941847

`(A017173(n)+2)²²`
-/

namespace A017200.P5263649258414941847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017173 n + 2) ^ 2) ^ 2

end

end A017200.P5263649258414941847

namespace A017200

/-- `(A017173(n)+2)²²` -/
def P5263649258414941847.Spec : Prop :=
  ∀ n, P5263649258414941847.a n = A017200 n

theorem P5263649258414941847.correct : P5263649258414941847.Spec := by
  intro n
  simp only [A017200, Nat.add_sub_cancel, A017200.P5263649258414941847.a, A017200.P17083821624758811840.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017200

/-! ## A017200.P17502468050854161374

`(1-A017209(n))²²`
-/

namespace A017200.P17502468050854161374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017209 n) ^ 2) ^ 2

end

end A017200.P17502468050854161374

namespace A017200

/-- `(1-A017209(n))²²` -/
def P17502468050854161374.Spec : Prop :=
  ∀ n, P17502468050854161374.a n = A017200 n

theorem P17502468050854161374.correct : P17502468050854161374.Spec := by
  intro n
  simp only [A017200, Nat.add_sub_cancel, A017200.P17502468050854161374.a, A017200.P17083821624758811840.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017200

/-! ## A017200.P5017978896516549392

`(A008591(n)+3)²²`
-/

namespace A017200.P5017978896516549392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008591 n + 3) ^ 2) ^ 2

end

end A017200.P5017978896516549392

namespace A017200

/-- `(A008591(n)+3)²²` -/
def P5017978896516549392.Spec : Prop :=
  ∀ n, P5017978896516549392.a n = A017200 n

theorem P5017978896516549392.correct : P5017978896516549392.Spec := by
  intro n
  simp only [A017200, Nat.add_sub_cancel, A017200.P5017978896516549392.a, A017200.P17083821624758811840.a, A008591, A008591.P8937864482545511630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017200

/-!
# A017201: a(n) = (9*n + 3)^5.

The programs for A017201, the canonical program `A017201.P12062981872197711318` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017201 has offset 0).

The definition of A017201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+3)^5` (program `A017201.P12062981872197711318`, by `A017201.P12062981872197711318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017201.P12062981872197711318

`(9*n+3)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017201

/-- `(9*n+3)^5` -/
def P12062981872197711318.Spec : Prop :=
  ∀ n, (P12062981872197711318.a n : ℤ) = A017201 n

theorem P12062981872197711318.correct : P12062981872197711318.Spec := by
  intro n
  simp only [A017201]

end A017201

/-! ## A017201.P17770766510738821555

`record[(n+3-dr(n)²)^5]`
-/

namespace A017201.P17770766510738821555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017201.P17770766510738821555

namespace A017201

/-- `record[(n+3-dr(n)²)^5]` -/
def P17770766510738821555.Spec : Prop :=
  ∀ n, P17770766510738821555.a n = A017201 n

end A017201

/-! ## A017201.P2740110549851646650

`record[(n+3)^(5/dr(n+1))]`
-/

namespace A017201.P2740110549851646650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) ^ (5 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017201.P2740110549851646650

namespace A017201

/-- `record[(n+3)^(5/dr(n+1))]` -/
def P2740110549851646650.Spec : Prop :=
  ∀ n, P2740110549851646650.a n = (A017201 n : ℝ)

end A017201

/-! ## A017201.P1812450272554551935

`sqrt(A017206(n))`
-/

namespace A017201.P1812450272554551935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017206 n : ℝ)

end

end A017201.P1812450272554551935

namespace A017201

/-- `sqrt(A017206(n))` -/
def P1812450272554551935.Spec : Prop :=
  ∀ n, P1812450272554551935.a n = (A017201 n : ℝ)

end A017201

/-! ## A017201.P10671212015484476391

`sqrt(A017198(n)^5)`
-/

namespace A017201.P10671212015484476391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017198 n ^ 5 : ℝ)

end

end A017201.P10671212015484476391

namespace A017201

/-- `sqrt(A017198(n)^5)` -/
def P10671212015484476391.Spec : Prop :=
  ∀ n, P10671212015484476391.a n = (A017201 n : ℝ)

end A017201

/-! ## A017201.P10757012182534388752

`(9*n+3)*A017200(n)`
-/

namespace A017201.P10757012182534388752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 3 : ℤ) * A017200 n

end

end A017201.P10757012182534388752

namespace A017201

/-- `(9*n+3)*A017200(n)` -/
def P10757012182534388752.Spec : Prop :=
  ∀ n, P10757012182534388752.a n = A017201 n

theorem P10757012182534388752.correct : P10757012182534388752.Spec := by
  intro n
  simp only [A017201, Nat.add_sub_cancel, A017201.P10757012182534388752.a, A017201.P12062981872197711318.a, A017200, A017200.P17083821624758811840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017201

/-! ## A017201.P4070097167092127740

`A017198(n)*A017199(n)`
-/

namespace A017201.P4070097167092127740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n * A017199 n

end

end A017201.P4070097167092127740

namespace A017201

/-- `A017198(n)*A017199(n)` -/
def P4070097167092127740.Spec : Prop :=
  ∀ n, P4070097167092127740.a n = A017201 n

theorem P4070097167092127740.correct : P4070097167092127740.Spec := by
  intro n
  simp only [A017201, Nat.add_sub_cancel, A017201.P4070097167092127740.a, A017201.P12062981872197711318.a, A017198, A017198.P11032527811158562085.a, A017199, A017199.P15140372890184300170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017201

/-! ## A017201.P7136826187305219646

`A017202(n)/A017197(n)`
-/

namespace A017201.P7136826187305219646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017202 n : ℚ) / (A017197 n : ℚ)

end

end A017201.P7136826187305219646

namespace A017201

/-- `A017202(n)/A017197(n)` -/
def P7136826187305219646.Spec : Prop :=
  ∀ n, P7136826187305219646.a n = (A017201 n : ℚ)

end A017201

/-! ## A017201.P4272055079742169008

`A017203(n)/A017198(n)`
-/

namespace A017201.P4272055079742169008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017203 n : ℚ) / (A017198 n : ℚ)

end

end A017201.P4272055079742169008

namespace A017201

/-- `A017203(n)/A017198(n)` -/
def P4272055079742169008.Spec : Prop :=
  ∀ n, P4272055079742169008.a n = (A017201 n : ℚ)

end A017201

/-! ## A017201.P2427413901335246364

`A017205(n)/A017200(n)`
-/

namespace A017201.P2427413901335246364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017205 n : ℚ) / (A017200 n : ℚ)

end

end A017201.P2427413901335246364

namespace A017201

/-- `A017205(n)/A017200(n)` -/
def P2427413901335246364.Spec : Prop :=
  ∀ n, P2427413901335246364.a n = (A017201 n : ℚ)

end A017201

/-! ## A017201.P14748495283976811688

`A017197(n)²*A017199(n)`
-/

namespace A017201.P14748495283976811688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n ^ 2 * A017199 n

end

end A017201.P14748495283976811688

namespace A017201

/-- `A017197(n)²*A017199(n)` -/
def P14748495283976811688.Spec : Prop :=
  ∀ n, P14748495283976811688.a n = A017201 n

theorem P14748495283976811688.correct : P14748495283976811688.Spec := by
  intro n
  simp only [A017201, Nat.add_sub_cancel, A017201.P14748495283976811688.a, A017201.P12062981872197711318.a, A017197, A017197.P8201470797211874866.a, A017199, A017199.P15140372890184300170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017201

/-! ## A017201.P9104910725825086976

`A017198(n)²*A017197(n)`
-/

namespace A017201.P9104910725825086976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n ^ 2 * A017197 n

end

end A017201.P9104910725825086976

namespace A017201

/-- `A017198(n)²*A017197(n)` -/
def P9104910725825086976.Spec : Prop :=
  ∀ n, P9104910725825086976.a n = A017201 n

theorem P9104910725825086976.correct : P9104910725825086976.Spec := by
  intro n
  simp only [A017201, Nat.add_sub_cancel, A017201.P9104910725825086976.a, A017201.P12062981872197711318.a, A017197, A017197.P8201470797211874866.a, A017198, A017198.P11032527811158562085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017201

/-! ## A017201.P16124257135744845665

`A017200(n)²/A017199(n)`
-/

namespace A017201.P16124257135744845665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017200 n ^ 2 : ℚ) / (A017199 n : ℚ)

end

end A017201.P16124257135744845665

namespace A017201

/-- `A017200(n)²/A017199(n)` -/
def P16124257135744845665.Spec : Prop :=
  ∀ n, P16124257135744845665.a n = (A017201 n : ℚ)

end A017201

/-! ## A017201.P17558148396392982803

`A017203(n)/A017197(n)²`
-/

namespace A017201.P17558148396392982803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017203 n : ℚ) / (A017197 n ^ 2 : ℚ)

end

end A017201.P17558148396392982803

namespace A017201

/-- `A017203(n)/A017197(n)²` -/
def P17558148396392982803.Spec : Prop :=
  ∀ n, P17558148396392982803.a n = (A017201 n : ℚ)

end A017201

/-! ## A017201.P13837032404727416159

`A017205(n)/A017198(n)²`
-/

namespace A017201.P13837032404727416159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017205 n : ℚ) / (A017198 n ^ 2 : ℚ)

end

end A017201.P13837032404727416159

namespace A017201

/-- `A017205(n)/A017198(n)²` -/
def P13837032404727416159.Spec : Prop :=
  ∀ n, P13837032404727416159.a n = (A017201 n : ℚ)

end A017201

/-! ## A017201.P7932762148746183348

`(A017209(n)-1)*A017198(n)²`
-/

namespace A017201.P7932762148746183348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n - 1) * A017198 n ^ 2

end

end A017201.P7932762148746183348

namespace A017201

/-- `(A017209(n)-1)*A017198(n)²` -/
def P7932762148746183348.Spec : Prop :=
  ∀ n, P7932762148746183348.a n = A017201 n

theorem P7932762148746183348.correct : P7932762148746183348.Spec := by
  intro n
  simp only [A017201, Nat.add_sub_cancel, A017201.P7932762148746183348.a, A017201.P12062981872197711318.a, A017198, A017198.P11032527811158562085.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017201

/-! ## A017201.P8637239589139362955

`3*A016777(n)*(3*A016777(n))^4`
-/

namespace A017201.P8637239589139362955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A016777 n * (3 * A016777 n) ^ 4

end

end A017201.P8637239589139362955

namespace A017201

/-- `3*A016777(n)*(3*A016777(n))^4` -/
def P8637239589139362955.Spec : Prop :=
  ∀ n, P8637239589139362955.a n = A017201 n

theorem P8637239589139362955.correct : P8637239589139362955.Spec := by
  intro n
  simp only [A017201, Nat.add_sub_cancel, A017201.P8637239589139362955.a, A017201.P12062981872197711318.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017201

/-! ## A017201.P2138695030536160640

`A017200(n)*A017209(n)-A017200(n)`
-/

namespace A017201.P2138695030536160640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017200 n * A017209 n - A017200 n

end

end A017201.P2138695030536160640

namespace A017201

/-- `A017200(n)*A017209(n)-A017200(n)` -/
def P2138695030536160640.Spec : Prop :=
  ∀ n, P2138695030536160640.a n = A017201 n

theorem P2138695030536160640.correct : P2138695030536160640.Spec := by
  intro n
  simp only [A017201, Nat.add_sub_cancel, A017201.P2138695030536160640.a, A017201.P12062981872197711318.a, A017200, A017200.P17083821624758811840.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017201

/-! ## A017201.P14929496679106263095

`A016051(2*n+1)²²*A016051(2*n+1)`
-/

namespace A017201.P14929496679106263095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016051 (2 * n + 1) ^ 2) ^ 2 * A016051 (2 * n + 1)

end

end A017201.P14929496679106263095

namespace A017201

/-- `A016051(2*n+1)²²*A016051(2*n+1)` -/
def P14929496679106263095.Spec : Prop :=
  ∀ n, P14929496679106263095.a n = A017201 n

end A017201

/-! ## A017201.P14806887867451082829

`A168410(2*n+1)²²*A168410(2*n+1)`
-/

namespace A017201.P14806887867451082829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168410 (2 * n + 1) ^ 2) ^ 2 * A168410 (2 * n + 1)

end

end A017201.P14806887867451082829

namespace A017201

/-- `A168410(2*n+1)²²*A168410(2*n+1)` -/
def P14806887867451082829.Spec : Prop :=
  ∀ n, P14806887867451082829.a n = A017201 n

end A017201

/-!
# A017202: a(n) = (9*n + 3)^6.

The programs for A017202, the canonical program `A017202.P14157507737266821628` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017202 has offset 0).

The definition of A017202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+3)^6` (program `A017202.P14157507737266821628`, by `A017202.P14157507737266821628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017202.P14157507737266821628

`(9*n+3)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017202

/-- `(9*n+3)^6` -/
def P14157507737266821628.Spec : Prop :=
  ∀ n, (P14157507737266821628.a n : ℤ) = A017202 n

theorem P14157507737266821628.correct : P14157507737266821628.Spec := by
  intro n
  simp only [A017202]

end A017202

/-! ## A017202.P15526098612480880410

`record[(dr(3-n)-n)^6]`
-/

namespace A017202.P15526098612480880410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017202.P15526098612480880410

namespace A017202

/-- `record[(dr(3-n)-n)^6]` -/
def P15526098612480880410.Spec : Prop :=
  ∀ n, P15526098612480880410.a n = A017202 n

end A017202

/-! ## A017202.P9532144648588388033

`record[(n+3)^(6/dr(n+1))]`
-/

namespace A017202.P9532144648588388033
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) ^ (6 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017202.P9532144648588388033

namespace A017202

/-- `record[(n+3)^(6/dr(n+1))]` -/
def P9532144648588388033.Spec : Prop :=
  ∀ n, P9532144648588388033.a n = (A017202 n : ℝ)

end A017202

/-! ## A017202.P164895179008758741

`A017199(n)²`
-/

namespace A017202.P164895179008758741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017199 n ^ 2

end

end A017202.P164895179008758741

namespace A017202

/-- `A017199(n)²` -/
def P164895179008758741.Spec : Prop :=
  ∀ n, P164895179008758741.a n = A017202 n

theorem P164895179008758741.correct : P164895179008758741.Spec := by
  intro n
  simp only [A017202, Nat.add_sub_cancel, A017202.P164895179008758741.a, A017202.P14157507737266821628.a, A017199, A017199.P15140372890184300170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017202

/-! ## A017202.P15398114673198953966

`sqrt(A017200(n)^3)`
-/

namespace A017202.P15398114673198953966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017200 n ^ 3 : ℝ)

end

end A017202.P15398114673198953966

namespace A017202

/-- `sqrt(A017200(n)^3)` -/
def P15398114673198953966.Spec : Prop :=
  ∀ n, P15398114673198953966.a n = (A017202 n : ℝ)

end A017202

/-! ## A017202.P3959990593823683357

`(27*A016779(n))²`
-/

namespace A017202.P3959990593823683357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * A016779 n) ^ 2

end

end A017202.P3959990593823683357

namespace A017202

/-- `(27*A016779(n))²` -/
def P3959990593823683357.Spec : Prop :=
  ∀ n, P3959990593823683357.a n = A017202 n

theorem P3959990593823683357.correct : P3959990593823683357.Spec := by
  intro n
  simp only [A017202, Nat.add_sub_cancel, A017202.P3959990593823683357.a, A017202.P14157507737266821628.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017202

/-! ## A017202.P15552984018883599660

`(Δ[A062741(n)]^3)²`
-/

namespace A017202.P15552984018883599660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017202.P15552984018883599660

namespace A017202

/-- `(Δ[A062741(n)]^3)²` -/
def P15552984018883599660.Spec : Prop :=
  ∀ n, P15552984018883599660.a n = A017202 n

end A017202

/-! ## A017202.P2544100539033175853

`(9*n+3)*A017201(n)`
-/

namespace A017202.P2544100539033175853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 3 : ℤ) * A017201 n

end

end A017202.P2544100539033175853

namespace A017202

/-- `(9*n+3)*A017201(n)` -/
def P2544100539033175853.Spec : Prop :=
  ∀ n, P2544100539033175853.a n = A017202 n

theorem P2544100539033175853.correct : P2544100539033175853.Spec := by
  intro n
  simp only [A017202, Nat.add_sub_cancel, A017202.P2544100539033175853.a, A017202.P14157507737266821628.a, A017201, A017201.P12062981872197711318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017202

/-! ## A017202.P9020877502814965345

`A017198(n)*A017200(n)`
-/

namespace A017202.P9020877502814965345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n * A017200 n

end

end A017202.P9020877502814965345

namespace A017202

/-- `A017198(n)*A017200(n)` -/
def P9020877502814965345.Spec : Prop :=
  ∀ n, P9020877502814965345.a n = A017202 n

theorem P9020877502814965345.correct : P9020877502814965345.Spec := by
  intro n
  simp only [A017202, Nat.add_sub_cancel, A017202.P9020877502814965345.a, A017202.P14157507737266821628.a, A017198, A017198.P11032527811158562085.a, A017200, A017200.P17083821624758811840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017202

/-! ## A017202.P16691137908242934586

`A017203(n)/A017197(n)`
-/

namespace A017202.P16691137908242934586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017203 n : ℚ) / (A017197 n : ℚ)

end

end A017202.P16691137908242934586

namespace A017202

/-- `A017203(n)/A017197(n)` -/
def P16691137908242934586.Spec : Prop :=
  ∀ n, P16691137908242934586.a n = (A017202 n : ℚ)

end A017202

/-! ## A017202.P14570193196159730922

`A017205(n)/A017199(n)`
-/

namespace A017202.P14570193196159730922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017205 n : ℚ) / (A017199 n : ℚ)

end

end A017202.P14570193196159730922

namespace A017202

/-- `A017205(n)/A017199(n)` -/
def P14570193196159730922.Spec : Prop :=
  ∀ n, P14570193196159730922.a n = (A017202 n : ℚ)

end A017202

/-! ## A017202.P13098470561898824593

`(A017197(n)*A017198(n))²`
-/

namespace A017202.P13098470561898824593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017197 n * A017198 n) ^ 2

end

end A017202.P13098470561898824593

namespace A017202

/-- `(A017197(n)*A017198(n))²` -/
def P13098470561898824593.Spec : Prop :=
  ∀ n, P13098470561898824593.a n = A017202 n

theorem P13098470561898824593.correct : P13098470561898824593.Spec := by
  intro n
  simp only [A017202, Nat.add_sub_cancel, A017202.P13098470561898824593.a, A017202.P14157507737266821628.a, A017197, A017197.P8201470797211874866.a, A017198, A017198.P11032527811158562085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017202

/-! ## A017202.P884523919453636538

`A017197(n)²*A017200(n)`
-/

namespace A017202.P884523919453636538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n ^ 2 * A017200 n

end

end A017202.P884523919453636538

namespace A017202

/-- `A017197(n)²*A017200(n)` -/
def P884523919453636538.Spec : Prop :=
  ∀ n, P884523919453636538.a n = A017202 n

theorem P884523919453636538.correct : P884523919453636538.Spec := by
  intro n
  simp only [A017202, Nat.add_sub_cancel, A017202.P884523919453636538.a, A017202.P14157507737266821628.a, A017197, A017197.P8201470797211874866.a, A017200, A017200.P17083821624758811840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017202

/-! ## A017202.P5542137170903155627

`(A017201(n)/A017198(n))²`
-/

namespace A017202.P5542137170903155627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017201 n : ℚ) / (A017198 n : ℚ)) ^ 2

end

end A017202.P5542137170903155627

namespace A017202

/-- `(A017201(n)/A017198(n))²` -/
def P5542137170903155627.Spec : Prop :=
  ∀ n, P5542137170903155627.a n = (A017202 n : ℚ)

end A017202

/-! ## A017202.P17174712250623409703

`A017201(n)²/A017200(n)`
-/

namespace A017202.P17174712250623409703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017201 n ^ 2 : ℚ) / (A017200 n : ℚ)

end

end A017202.P17174712250623409703

namespace A017202

/-- `A017201(n)²/A017200(n)` -/
def P17174712250623409703.Spec : Prop :=
  ∀ n, P17174712250623409703.a n = (A017202 n : ℚ)

end A017202

/-! ## A017202.P2250289577861470109

`(A017203(n)/A017200(n))²`
-/

namespace A017202.P2250289577861470109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017203 n : ℚ) / (A017200 n : ℚ)) ^ 2

end

end A017202.P2250289577861470109

namespace A017202

/-- `(A017203(n)/A017200(n))²` -/
def P2250289577861470109.Spec : Prop :=
  ∀ n, P2250289577861470109.a n = (A017202 n : ℚ)

end A017202

/-! ## A017202.P17421839976161366407

`(A017203(n)/A017198(n)²)²`
-/

namespace A017202.P17421839976161366407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017203 n : ℚ) / (A017198 n ^ 2 : ℚ)) ^ 2

end

end A017202.P17421839976161366407

namespace A017202

/-- `(A017203(n)/A017198(n)²)²` -/
def P17421839976161366407.Spec : Prop :=
  ∀ n, P17421839976161366407.a n = (A017202 n : ℚ)

end A017202

/-! ## A017202.P11197569922942401618

`sqrt(sqrt(A017204(n))*A017204(n))`
-/

namespace A017202.P11197569922942401618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017204 n : ℝ) * (A017204 n : ℝ))

end

end A017202.P11197569922942401618

namespace A017202

/-- `sqrt(sqrt(A017204(n))*A017204(n))` -/
def P11197569922942401618.Spec : Prop :=
  ∀ n, P11197569922942401618.a n = (A017202 n : ℝ)

end A017202

/-! ## A017202.P10905667560291053146

`(1-A017209(n))²*A017200(n)`
-/

namespace A017202.P10905667560291053146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A017209 n) ^ 2 * A017200 n

end

end A017202.P10905667560291053146

namespace A017202

/-- `(1-A017209(n))²*A017200(n)` -/
def P10905667560291053146.Spec : Prop :=
  ∀ n, P10905667560291053146.a n = A017202 n

theorem P10905667560291053146.correct : P10905667560291053146.Spec := by
  intro n
  simp only [A017202, Nat.add_sub_cancel, A017202.P10905667560291053146.a, A017202.P14157507737266821628.a, A017200, A017200.P17083821624758811840.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017202

/-!
# A017203: a(n) = (9*n + 3)^7.

The programs for A017203, the canonical program `A017203.P10083246408312923050` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017203 has offset 0).

The definition of A017203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+3)^7` (program `A017203.P10083246408312923050`, by `A017203.P10083246408312923050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017203.P10083246408312923050

`(9*n+3)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017203

/-- `(9*n+3)^7` -/
def P10083246408312923050.Spec : Prop :=
  ∀ n, (P10083246408312923050.a n : ℤ) = A017203 n

theorem P10083246408312923050.correct : P10083246408312923050.Spec := by
  intro n
  simp only [A017203]

end A017203

/-! ## A017203.P1992899680625313611

`record[(n+3)^(7/dr(n+1))]`
-/

namespace A017203.P1992899680625313611
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) ^ (7 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017203.P1992899680625313611

namespace A017203

/-- `record[(n+3)^(7/dr(n+1))]` -/
def P1992899680625313611.Spec : Prop :=
  ∀ n, P1992899680625313611.a n = (A017203 n : ℝ)

end A017203

/-! ## A017203.P7326739322185401023

`A017197(n)*A017202(n)`
-/

namespace A017203.P7326739322185401023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n * A017202 n

end

end A017203.P7326739322185401023

namespace A017203

/-- `A017197(n)*A017202(n)` -/
def P7326739322185401023.Spec : Prop :=
  ∀ n, P7326739322185401023.a n = A017203 n

theorem P7326739322185401023.correct : P7326739322185401023.Spec := by
  intro n
  simp only [A017203, Nat.add_sub_cancel, A017203.P7326739322185401023.a, A017203.P10083246408312923050.a, A017197, A017197.P8201470797211874866.a, A017202, A017202.P14157507737266821628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017203

/-! ## A017203.P14037347937105691152

`A017198(n)*A017201(n)`
-/

namespace A017203.P14037347937105691152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n * A017201 n

end

end A017203.P14037347937105691152

namespace A017203

/-- `A017198(n)*A017201(n)` -/
def P14037347937105691152.Spec : Prop :=
  ∀ n, P14037347937105691152.a n = A017203 n

theorem P14037347937105691152.correct : P14037347937105691152.Spec := by
  intro n
  simp only [A017203, Nat.add_sub_cancel, A017203.P14037347937105691152.a, A017203.P10083246408312923050.a, A017198, A017198.P11032527811158562085.a, A017201, A017201.P12062981872197711318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017203

/-! ## A017203.P2012827758398716551

`A017199(n)*A017200(n)`
-/

namespace A017203.P2012827758398716551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017199 n * A017200 n

end

end A017203.P2012827758398716551

namespace A017203

/-- `A017199(n)*A017200(n)` -/
def P2012827758398716551.Spec : Prop :=
  ∀ n, P2012827758398716551.a n = A017203 n

theorem P2012827758398716551.correct : P2012827758398716551.Spec := by
  intro n
  simp only [A017203, Nat.add_sub_cancel, A017203.P2012827758398716551.a, A017203.P10083246408312923050.a, A017199, A017199.P15140372890184300170.a, A017200, A017200.P17083821624758811840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017203

/-! ## A017203.P8904734423445203044

`A017205(n)/A017198(n)`
-/

namespace A017203.P8904734423445203044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017205 n : ℚ) / (A017198 n : ℚ)

end

end A017203.P8904734423445203044

namespace A017203

/-- `A017205(n)/A017198(n)` -/
def P8904734423445203044.Spec : Prop :=
  ∀ n, P8904734423445203044.a n = (A017203 n : ℚ)

end A017203

/-! ## A017203.P14833152572462874473

`A017197(n)²*A017201(n)`
-/

namespace A017203.P14833152572462874473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n ^ 2 * A017201 n

end

end A017203.P14833152572462874473

namespace A017203

/-- `A017197(n)²*A017201(n)` -/
def P14833152572462874473.Spec : Prop :=
  ∀ n, P14833152572462874473.a n = A017203 n

theorem P14833152572462874473.correct : P14833152572462874473.Spec := by
  intro n
  simp only [A017203, Nat.add_sub_cancel, A017203.P14833152572462874473.a, A017203.P10083246408312923050.a, A017197, A017197.P8201470797211874866.a, A017201, A017201.P12062981872197711318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017203

/-! ## A017203.P18293389308463183668

`A017198(n)²*A017199(n)`
-/

namespace A017203.P18293389308463183668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n ^ 2 * A017199 n

end

end A017203.P18293389308463183668

namespace A017203

/-- `A017198(n)²*A017199(n)` -/
def P18293389308463183668.Spec : Prop :=
  ∀ n, P18293389308463183668.a n = A017203 n

theorem P18293389308463183668.correct : P18293389308463183668.Spec := by
  intro n
  simp only [A017203, Nat.add_sub_cancel, A017203.P18293389308463183668.a, A017203.P10083246408312923050.a, A017198, A017198.P11032527811158562085.a, A017199, A017199.P15140372890184300170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017203

/-! ## A017203.P5581171240602295147

`A017199(n)²*A017197(n)`
-/

namespace A017203.P5581171240602295147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017199 n ^ 2 * A017197 n

end

end A017203.P5581171240602295147

namespace A017203

/-- `A017199(n)²*A017197(n)` -/
def P5581171240602295147.Spec : Prop :=
  ∀ n, P5581171240602295147.a n = A017203 n

theorem P5581171240602295147.correct : P5581171240602295147.Spec := by
  intro n
  simp only [A017203, Nat.add_sub_cancel, A017203.P5581171240602295147.a, A017203.P10083246408312923050.a, A017197, A017197.P8201470797211874866.a, A017199, A017199.P15140372890184300170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017203

/-! ## A017203.P7647133385289362880

`A017200(n)²/A017197(n)`
-/

namespace A017203.P7647133385289362880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017200 n ^ 2 : ℚ) / (A017197 n : ℚ)

end

end A017203.P7647133385289362880

namespace A017203

/-- `A017200(n)²/A017197(n)` -/
def P7647133385289362880.Spec : Prop :=
  ∀ n, P7647133385289362880.a n = (A017203 n : ℚ)

end A017203

/-! ## A017203.P4745537772565320339

`A017201(n)²/A017199(n)`
-/

namespace A017203.P4745537772565320339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017201 n ^ 2 : ℚ) / (A017199 n : ℚ)

end

end A017203.P4745537772565320339

namespace A017203

/-- `A017201(n)²/A017199(n)` -/
def P4745537772565320339.Spec : Prop :=
  ∀ n, P4745537772565320339.a n = (A017203 n : ℚ)

end A017203

/-! ## A017203.P13778117883655862116

`A017205(n)/A017197(n)²`
-/

namespace A017203.P13778117883655862116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017205 n : ℚ) / (A017197 n ^ 2 : ℚ)

end

end A017203.P13778117883655862116

namespace A017203

/-- `A017205(n)/A017197(n)²` -/
def P13778117883655862116.Spec : Prop :=
  ∀ n, P13778117883655862116.a n = (A017203 n : ℚ)

end A017203

/-! ## A017203.P3566437744571429232

`A017198(n)²²/A017197(n)`
-/

namespace A017203.P3566437744571429232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017198 n ^ 2) ^ 2 : ℚ) / (A017197 n : ℚ)

end

end A017203.P3566437744571429232

namespace A017203

/-- `A017198(n)²²/A017197(n)` -/
def P3566437744571429232.Spec : Prop :=
  ∀ n, P3566437744571429232.a n = (A017203 n : ℚ)

end A017203

/-! ## A017203.P13245140416465504233

`A017200(n)²/(A017209(n)-1)`
-/

namespace A017203.P13245140416465504233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017200 n ^ 2 : ℚ) / (A017209 n - 1 : ℚ)

end

end A017203.P13245140416465504233

namespace A017203

/-- `A017200(n)²/(A017209(n)-1)` -/
def P13245140416465504233.Spec : Prop :=
  ∀ n, P13245140416465504233.a n = (A017203 n : ℚ)

end A017203

/-! ## A017203.P12203425227204174087

`A017197(n)*A017198(n)*A017200(n)`
-/

namespace A017203.P12203425227204174087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n * A017198 n * A017200 n

end

end A017203.P12203425227204174087

namespace A017203

/-- `A017197(n)*A017198(n)*A017200(n)` -/
def P12203425227204174087.Spec : Prop :=
  ∀ n, P12203425227204174087.a n = A017203 n

theorem P12203425227204174087.correct : P12203425227204174087.Spec := by
  intro n
  simp only [A017203, Nat.add_sub_cancel, A017203.P12203425227204174087.a, A017203.P10083246408312923050.a, A017197, A017197.P8201470797211874866.a, A017198, A017198.P11032527811158562085.a, A017200, A017200.P17083821624758811840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017203

/-! ## A017203.P1874289285672471029

`A017200(n)/A017201(n)*A017200(n)²`
-/

namespace A017203.P1874289285672471029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017200 n : ℚ) / (A017201 n : ℚ) * (A017200 n ^ 2 : ℚ)

end

end A017203.P1874289285672471029

namespace A017203

/-- `A017200(n)/A017201(n)*A017200(n)²` -/
def P1874289285672471029.Spec : Prop :=
  ∀ n, P1874289285672471029.a n = (A017203 n : ℚ)

end A017203

/-! ## A017203.P13977797141423481838

`A016771(3*n+1)`
-/

namespace A017203.P13977797141423481838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016771 (3 * n + 1)

end

end A017203.P13977797141423481838

namespace A017203

/-- `A016771(3*n+1)` -/
def P13977797141423481838.Spec : Prop :=
  ∀ n, P13977797141423481838.a n = A017203 n

theorem P13977797141423481838.correct : P13977797141423481838.Spec := by
  intro n
  simp only [A017203, Nat.add_sub_cancel, A017203.P13977797141423481838.a, A017203.P10083246408312923050.a, A016771, A016771.P7538791312467411803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017203

/-! ## A017203.P12238511869753989101

`A016766(A016777(n))*A016769(3*n+1)`
-/

namespace A017203.P12238511869753989101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 (A016777 n).toNat * A016769 (3 * n + 1)

end

end A017203.P12238511869753989101

namespace A017203

/-- `A016766(A016777(n))*A016769(3*n+1)` -/
def P12238511869753989101.Spec : Prop :=
  ∀ n, P12238511869753989101.a n = A017203 n

end A017203

/-! ## A017203.P3628845270676130174

`A001015(9*n+3)`
-/

namespace A017203.P3628845270676130174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (9 * n + 3)

end

end A017203.P3628845270676130174

namespace A017203

/-- `A001015(9*n+3)` -/
def P3628845270676130174.Spec : Prop :=
  ∀ n, P3628845270676130174.a n = A017203 n

end A017203

/-!
# A017204: a(n) = (9*n + 3)^8.

The programs for A017204, the canonical program `A017204.P8557570357682480406` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017204 has offset 0).

The definition of A017204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+3)^8` (program `A017204.P8557570357682480406`, by `A017204.P8557570357682480406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017204.P8557570357682480406

`(9*n+3)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017204

/-- `(9*n+3)^8` -/
def P8557570357682480406.Spec : Prop :=
  ∀ n, (P8557570357682480406.a n : ℤ) = A017204 n

theorem P8557570357682480406.correct : P8557570357682480406.Spec := by
  intro n
  simp only [A017204]

end A017204

/-! ## A017204.P4350769594745904911

`(Δ[C(3*n, 2)]^4)²`
-/

namespace A017204.P4350769594745904911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4) ^ 2

end

end A017204.P4350769594745904911

namespace A017204

/-- `(Δ[C(3*n, 2)]^4)²` -/
def P4350769594745904911.Spec : Prop :=
  ∀ n, P4350769594745904911.a n = A017204 n

theorem P4350769594745904911.correct : P4350769594745904911.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P4350769594745904911.f1, A017204.P4350769594745904911.a, A017204.P8557570357682480406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P13600059849296106798

`Δ[C(3*n, 2)]²²²`
-/

namespace A017204.P13600059849296106798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017204.P13600059849296106798

namespace A017204

/-- `Δ[C(3*n, 2)]²²²` -/
def P13600059849296106798.Spec : Prop :=
  ∀ n, P13600059849296106798.a n = A017204 n

theorem P13600059849296106798.correct : P13600059849296106798.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P13600059849296106798.f1, A017204.P13600059849296106798.a, A017204.P8557570357682480406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P18274697449700195902

`record[(dr(3-n)-n)^8]`
-/

namespace A017204.P18274697449700195902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017204.P18274697449700195902

namespace A017204

/-- `record[(dr(3-n)-n)^8]` -/
def P18274697449700195902.Spec : Prop :=
  ∀ n, P18274697449700195902.a n = A017204 n

end A017204

/-! ## A017204.P15035645284182989346

`record[(dr(3-n)-n)²²²]`
-/

namespace A017204.P15035645284182989346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017204.P15035645284182989346

namespace A017204

/-- `record[(dr(3-n)-n)²²²]` -/
def P15035645284182989346.Spec : Prop :=
  ∀ n, P15035645284182989346.a n = A017204 n

end A017204

/-! ## A017204.P4749386810472726273

`record[(n+3)^(8/dr(n+1))]`
-/

namespace A017204.P4749386810472726273
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) ^ (8 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017204.P4749386810472726273

namespace A017204

/-- `record[(n+3)^(8/dr(n+1))]` -/
def P4749386810472726273.Spec : Prop :=
  ∀ n, P4749386810472726273.a n = (A017204 n : ℝ)

end A017204

/-! ## A017204.P8314622389185708615

`lcm(3, 2*n+1+n)²²²`
-/

namespace A017204.P8314622389185708615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 (2 * n + 1 + n) ^ 2) ^ 2) ^ 2

end

end A017204.P8314622389185708615

namespace A017204

/-- `lcm(3, 2*n+1+n)²²²` -/
def P8314622389185708615.Spec : Prop :=
  ∀ n, (P8314622389185708615.a n : ℤ) = A017204 n

end A017204

/-! ## A017204.P7482015475524361417

`record[((n+3)/dr(n+1))²²²]`
-/

namespace A017204.P7482015475524361417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 3 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017204.P7482015475524361417

namespace A017204

/-- `record[((n+3)/dr(n+1))²²²]` -/
def P7482015475524361417.Spec : Prop :=
  ∀ n, P7482015475524361417.a n = (A017204 n : ℚ)

end A017204

/-! ## A017204.P3921599598391226498

`A017200(n)²`
-/

namespace A017204.P3921599598391226498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017200 n ^ 2

end

end A017204.P3921599598391226498

namespace A017204

/-- `A017200(n)²` -/
def P3921599598391226498.Spec : Prop :=
  ∀ n, P3921599598391226498.a n = A017204 n

theorem P3921599598391226498.correct : P3921599598391226498.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P3921599598391226498.a, A017204.P8557570357682480406.a, A017200, A017200.P17083821624758811840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P16196795384506806358

`A017198(n)²²`
-/

namespace A017204.P16196795384506806358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017198 n ^ 2) ^ 2

end

end A017204.P16196795384506806358

namespace A017204

/-- `A017198(n)²²` -/
def P16196795384506806358.Spec : Prop :=
  ∀ n, P16196795384506806358.a n = A017204 n

theorem P16196795384506806358.correct : P16196795384506806358.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P16196795384506806358.a, A017204.P8557570357682480406.a, A017198, A017198.P11032527811158562085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P12571591139499084959

`A017197(n)²²²`
-/

namespace A017204.P12571591139499084959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017197 n ^ 2) ^ 2) ^ 2

end

end A017204.P12571591139499084959

namespace A017204

/-- `A017197(n)²²²` -/
def P12571591139499084959.Spec : Prop :=
  ∀ n, P12571591139499084959.a n = A017204 n

theorem P12571591139499084959.correct : P12571591139499084959.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P12571591139499084959.a, A017204.P8557570357682480406.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P9080921352027641148

`Δ[A062741(n)]²²²`
-/

namespace A017204.P9080921352027641148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017204.P9080921352027641148

namespace A017204

/-- `Δ[A062741(n)]²²²` -/
def P9080921352027641148.Spec : Prop :=
  ∀ n, P9080921352027641148.a n = A017204 n

end A017204

/-! ## A017204.P1253312799838247782

`((3*A016777(n))^4)²`
-/

namespace A017204.P1253312799838247782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * A016777 n) ^ 4) ^ 2

end

end A017204.P1253312799838247782

namespace A017204

/-- `((3*A016777(n))^4)²` -/
def P1253312799838247782.Spec : Prop :=
  ∀ n, P1253312799838247782.a n = A017204 n

theorem P1253312799838247782.correct : P1253312799838247782.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P1253312799838247782.a, A017204.P8557570357682480406.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P17426846894928348922

`(A017185(n)+1)²²²`
-/

namespace A017204.P17426846894928348922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017185 n + 1) ^ 2) ^ 2) ^ 2

end

end A017204.P17426846894928348922

namespace A017204

/-- `(A017185(n)+1)²²²` -/
def P17426846894928348922.Spec : Prop :=
  ∀ n, P17426846894928348922.a n = A017204 n

theorem P17426846894928348922.correct : P17426846894928348922.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P17426846894928348922.a, A017204.P8557570357682480406.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P7502101881616688666

`(A017173(n)+2)²²²`
-/

namespace A017204.P7502101881616688666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017173 n + 2) ^ 2) ^ 2) ^ 2

end

end A017204.P7502101881616688666

namespace A017204

/-- `(A017173(n)+2)²²²` -/
def P7502101881616688666.Spec : Prop :=
  ∀ n, P7502101881616688666.a n = A017204 n

theorem P7502101881616688666.correct : P7502101881616688666.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P7502101881616688666.a, A017204.P8557570357682480406.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P13337774048412125386

`(1-A017209(n))²²²`
-/

namespace A017204.P13337774048412125386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017209 n) ^ 2) ^ 2) ^ 2

end

end A017204.P13337774048412125386

namespace A017204

/-- `(1-A017209(n))²²²` -/
def P13337774048412125386.Spec : Prop :=
  ∀ n, P13337774048412125386.a n = A017204 n

theorem P13337774048412125386.correct : P13337774048412125386.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P13337774048412125386.a, A017204.P8557570357682480406.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P10259128827767206500

`(2-A017221(n))²²²`
-/

namespace A017204.P10259128827767206500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017221 n) ^ 2) ^ 2) ^ 2

end

end A017204.P10259128827767206500

namespace A017204

/-- `(2-A017221(n))²²²` -/
def P10259128827767206500.Spec : Prop :=
  ∀ n, P10259128827767206500.a n = A017204 n

theorem P10259128827767206500.correct : P10259128827767206500.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P10259128827767206500.a, A017204.P8557570357682480406.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P1216445950025686473

`(A017101(n)+n)²²²`
-/

namespace A017204.P1216445950025686473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017101 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017204.P1216445950025686473

namespace A017204

/-- `(A017101(n)+n)²²²` -/
def P1216445950025686473.Spec : Prop :=
  ∀ n, P1216445950025686473.a n = A017204 n

theorem P1216445950025686473.correct : P1216445950025686473.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P1216445950025686473.a, A017204.P8557570357682480406.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P15624832264156484487

`(n-A017305(n))²²²`
-/

namespace A017204.P15624832264156484487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017305 n) ^ 2) ^ 2) ^ 2

end

end A017204.P15624832264156484487

namespace A017204

/-- `(n-A017305(n))²²²` -/
def P15624832264156484487.Spec : Prop :=
  ∀ n, P15624832264156484487.a n = A017204 n

theorem P15624832264156484487.correct : P15624832264156484487.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P15624832264156484487.a, A017204.P8557570357682480406.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-! ## A017204.P4524285259744423841

`A017197(n)*A017203(n)`
-/

namespace A017204.P4524285259744423841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n * A017203 n

end

end A017204.P4524285259744423841

namespace A017204

/-- `A017197(n)*A017203(n)` -/
def P4524285259744423841.Spec : Prop :=
  ∀ n, P4524285259744423841.a n = A017204 n

theorem P4524285259744423841.correct : P4524285259744423841.Spec := by
  intro n
  simp only [A017204, Nat.add_sub_cancel, A017204.P4524285259744423841.a, A017204.P8557570357682480406.a, A017197, A017197.P8201470797211874866.a, A017203, A017203.P10083246408312923050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017204

/-!
# A017205: a(n) = (9*n + 3)^9.

The programs for A017205, the canonical program `A017205.P2424072134707059675` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017205 has offset 0).

The definition of A017205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+3)^9` (program `A017205.P2424072134707059675`, by `A017205.P2424072134707059675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017205.P2424072134707059675

`(9*n+3)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017205

/-- `(9*n+3)^9` -/
def P2424072134707059675.Spec : Prop :=
  ∀ n, (P2424072134707059675.a n : ℤ) = A017205 n

theorem P2424072134707059675.correct : P2424072134707059675.Spec := by
  intro n
  simp only [A017205]

end A017205

/-! ## A017205.P17807732251248839688

`record[(n+3)^gcd(9, n)]`
-/

namespace A017205.P17807732251248839688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.gcd 9 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017205.P17807732251248839688

namespace A017205

/-- `record[(n+3)^gcd(9, n)]` -/
def P17807732251248839688.Spec : Prop :=
  ∀ n, (P17807732251248839688.a n : ℤ) = A017205 n

end A017205

/-! ## A017205.P3922240695100052074

`record[(n+3)^(9/dr(n+1))]`
-/

namespace A017205.P3922240695100052074
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) ^ (9 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017205.P3922240695100052074

namespace A017205

/-- `record[(n+3)^(9/dr(n+1))]` -/
def P3922240695100052074.Spec : Prop :=
  ∀ n, P3922240695100052074.a n = (A017205 n : ℝ)

end A017205

/-! ## A017205.P18357722954497585952

`sqrt(A017202(n)^3)`
-/

namespace A017205.P18357722954497585952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017202 n ^ 3 : ℝ)

end

end A017205.P18357722954497585952

namespace A017205

/-- `sqrt(A017202(n)^3)` -/
def P18357722954497585952.Spec : Prop :=
  ∀ n, P18357722954497585952.a n = (A017205 n : ℝ)

end A017205

/-! ## A017205.P15081528522611236599

`A017198(n)*A017203(n)`
-/

namespace A017205.P15081528522611236599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n * A017203 n

end

end A017205.P15081528522611236599

namespace A017205

/-- `A017198(n)*A017203(n)` -/
def P15081528522611236599.Spec : Prop :=
  ∀ n, P15081528522611236599.a n = A017205 n

theorem P15081528522611236599.correct : P15081528522611236599.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P15081528522611236599.a, A017205.P2424072134707059675.a, A017198, A017198.P11032527811158562085.a, A017203, A017203.P10083246408312923050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P2676891422294749916

`A017199(n)*A017202(n)`
-/

namespace A017205.P2676891422294749916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017199 n * A017202 n

end

end A017205.P2676891422294749916

namespace A017205

/-- `A017199(n)*A017202(n)` -/
def P2676891422294749916.Spec : Prop :=
  ∀ n, P2676891422294749916.a n = A017205 n

theorem P2676891422294749916.correct : P2676891422294749916.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P2676891422294749916.a, A017205.P2424072134707059675.a, A017199, A017199.P15140372890184300170.a, A017202, A017202.P14157507737266821628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P1055480121954940342

`A017200(n)*A017201(n)`
-/

namespace A017205.P1055480121954940342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017200 n * A017201 n

end

end A017205.P1055480121954940342

namespace A017205

/-- `A017200(n)*A017201(n)` -/
def P1055480121954940342.Spec : Prop :=
  ∀ n, P1055480121954940342.a n = A017205 n

theorem P1055480121954940342.correct : P1055480121954940342.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P1055480121954940342.a, A017205.P2424072134707059675.a, A017200, A017200.P17083821624758811840.a, A017201, A017201.P12062981872197711318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P509221495380740717

`A017197(n)²*A017203(n)`
-/

namespace A017205.P509221495380740717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n ^ 2 * A017203 n

end

end A017205.P509221495380740717

namespace A017205

/-- `A017197(n)²*A017203(n)` -/
def P509221495380740717.Spec : Prop :=
  ∀ n, P509221495380740717.a n = A017205 n

theorem P509221495380740717.correct : P509221495380740717.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P509221495380740717.a, A017205.P2424072134707059675.a, A017197, A017197.P8201470797211874866.a, A017203, A017203.P10083246408312923050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P4857182447314085614

`A017198(n)²*A017201(n)`
-/

namespace A017205.P4857182447314085614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n ^ 2 * A017201 n

end

end A017205.P4857182447314085614

namespace A017205

/-- `A017198(n)²*A017201(n)` -/
def P4857182447314085614.Spec : Prop :=
  ∀ n, P4857182447314085614.a n = A017205 n

theorem P4857182447314085614.correct : P4857182447314085614.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P4857182447314085614.a, A017205.P2424072134707059675.a, A017198, A017198.P11032527811158562085.a, A017201, A017201.P12062981872197711318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P12532858075342136126

`A017200(n)²*A017197(n)`
-/

namespace A017205.P12532858075342136126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017200 n ^ 2 * A017197 n

end

end A017205.P12532858075342136126

namespace A017205

/-- `A017200(n)²*A017197(n)` -/
def P12532858075342136126.Spec : Prop :=
  ∀ n, P12532858075342136126.a n = A017205 n

theorem P12532858075342136126.correct : P12532858075342136126.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P12532858075342136126.a, A017205.P2424072134707059675.a, A017197, A017197.P8201470797211874866.a, A017200, A017200.P17083821624758811840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P10999419015498084150

`A017201(n)²/A017197(n)`
-/

namespace A017205.P10999419015498084150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017201 n ^ 2 : ℚ) / (A017197 n : ℚ)

end

end A017205.P10999419015498084150

namespace A017205

/-- `A017201(n)²/A017197(n)` -/
def P10999419015498084150.Spec : Prop :=
  ∀ n, P10999419015498084150.a n = (A017205 n : ℚ)

end A017205

/-! ## A017205.P2055961423043753904

`A017198(n)²²*A017197(n)`
-/

namespace A017205.P2055961423043753904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017198 n ^ 2) ^ 2 * A017197 n

end

end A017205.P2055961423043753904

namespace A017205

/-- `A017198(n)²²*A017197(n)` -/
def P2055961423043753904.Spec : Prop :=
  ∀ n, P2055961423043753904.a n = A017205 n

theorem P2055961423043753904.correct : P2055961423043753904.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P2055961423043753904.a, A017205.P2424072134707059675.a, A017197, A017197.P8201470797211874866.a, A017198, A017198.P11032527811158562085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P16150724764625793561

`(A017209(n)-1)*A017200(n)²`
-/

namespace A017205.P16150724764625793561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n - 1) * A017200 n ^ 2

end

end A017205.P16150724764625793561

namespace A017205

/-- `(A017209(n)-1)*A017200(n)²` -/
def P16150724764625793561.Spec : Prop :=
  ∀ n, P16150724764625793561.a n = A017205 n

theorem P16150724764625793561.correct : P16150724764625793561.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P16150724764625793561.a, A017205.P2424072134707059675.a, A017200, A017200.P17083821624758811840.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P9316040630711652948

`A017197(n)*A017202(n)*A017197(n)²`
-/

namespace A017205.P9316040630711652948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n * A017202 n * A017197 n ^ 2

end

end A017205.P9316040630711652948

namespace A017205

/-- `A017197(n)*A017202(n)*A017197(n)²` -/
def P9316040630711652948.Spec : Prop :=
  ∀ n, P9316040630711652948.a n = A017205 n

theorem P9316040630711652948.correct : P9316040630711652948.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P9316040630711652948.a, A017205.P2424072134707059675.a, A017197, A017197.P8201470797211874866.a, A017202, A017202.P14157507737266821628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P15256683338242510651

`A016773(3*n+1)`
-/

namespace A017205.P15256683338242510651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016773 (3 * n + 1)

end

end A017205.P15256683338242510651

namespace A017205

/-- `A016773(3*n+1)` -/
def P15256683338242510651.Spec : Prop :=
  ∀ n, P15256683338242510651.a n = A017205 n

theorem P15256683338242510651.correct : P15256683338242510651.Spec := by
  intro n
  simp only [A017205, Nat.add_sub_cancel, A017205.P15256683338242510651.a, A017205.P2424072134707059675.a, A016773, A016773.P756360560506890922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017205

/-! ## A017205.P15968821053009818339

`A016766(A016777(n))²*A016769(A016777(n))`
-/

namespace A017205.P15968821053009818339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 (A016777 n).toNat ^ 2 * A016769 (A016777 n).toNat

end

end A017205.P15968821053009818339

namespace A017205

/-- `A016766(A016777(n))²*A016769(A016777(n))` -/
def P15968821053009818339.Spec : Prop :=
  ∀ n, P15968821053009818339.a n = A017205 n

end A017205

/-! ## A017205.P862426241085608412

`A001017(9*n+3)`
-/

namespace A017205.P862426241085608412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (9 * n + 3)

end

end A017205.P862426241085608412

namespace A017205

/-- `A001017(9*n+3)` -/
def P862426241085608412.Spec : Prop :=
  ∀ n, P862426241085608412.a n = A017205 n

end A017205

/-! ## A017205.P15320614057355587765

`1-A024007(A017173(n)+2)`
-/

namespace A017205.P15320614057355587765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024007 (A017173 n + 2).toNat

end

end A017205.P15320614057355587765

namespace A017205

/-- `1-A024007(A017173(n)+2)` -/
def P15320614057355587765.Spec : Prop :=
  ∀ n, P15320614057355587765.a n = A017205 n

end A017205

/-! ## A017205.P10344969368784410695

`A109900(A242215(n))²*A109900(A242215(n))`
-/

namespace A017205.P10344969368784410695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (A242215 n).toNat ^ 2 * A109900 (A242215 n).toNat

end

end A017205.P10344969368784410695

namespace A017205

/-- `A109900(A242215(n))²*A109900(A242215(n))` -/
def P10344969368784410695.Spec : Prop :=
  ∀ n, P10344969368784410695.a n = A017205 n

end A017205

/-!
# A017206: a(n) = (9*n + 3)^10.

The programs for A017206, the canonical program `A017206.P5077701981855383042` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017206 has offset 0).

The definition of A017206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+3)^10` (program `A017206.P5077701981855383042`, by `A017206.P5077701981855383042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017206.P5077701981855383042

`(9*n+3)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017206

/-- `(9*n+3)^10` -/
def P5077701981855383042.Spec : Prop :=
  ∀ n, (P5077701981855383042.a n : ℤ) = A017206 n

theorem P5077701981855383042.correct : P5077701981855383042.Spec := by
  intro n
  simp only [A017206]

end A017206

/-! ## A017206.P6816853732329358478

`A017201(n)²`
-/

namespace A017206.P6816853732329358478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017201 n ^ 2

end

end A017206.P6816853732329358478

namespace A017206

/-- `A017201(n)²` -/
def P6816853732329358478.Spec : Prop :=
  ∀ n, P6816853732329358478.a n = A017206 n

theorem P6816853732329358478.correct : P6816853732329358478.Spec := by
  intro n
  simp only [A017206, Nat.add_sub_cancel, A017206.P6816853732329358478.a, A017206.P5077701981855383042.a, A017201, A017201.P12062981872197711318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017206

/-! ## A017206.P5072838896189586042

`(A017197(n)^5)²`
-/

namespace A017206.P5072838896189586042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017197 n ^ 5) ^ 2

end

end A017206.P5072838896189586042

namespace A017206

/-- `(A017197(n)^5)²` -/
def P5072838896189586042.Spec : Prop :=
  ∀ n, P5072838896189586042.a n = A017206 n

theorem P5072838896189586042.correct : P5072838896189586042.Spec := by
  intro n
  simp only [A017206, Nat.add_sub_cancel, A017206.P5072838896189586042.a, A017206.P5077701981855383042.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017206

/-! ## A017206.P7146668977225793292

`sqrt(A017200(n)^5)`
-/

namespace A017206.P7146668977225793292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017200 n ^ 5 : ℝ)

end

end A017206.P7146668977225793292

namespace A017206

/-- `sqrt(A017200(n)^5)` -/
def P7146668977225793292.Spec : Prop :=
  ∀ n, P7146668977225793292.a n = (A017206 n : ℝ)

end A017206

/-! ## A017206.P3859252931321206577

`A017197(n)*A017205(n)`
-/

namespace A017206.P3859252931321206577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n * A017205 n

end

end A017206.P3859252931321206577

namespace A017206

/-- `A017197(n)*A017205(n)` -/
def P3859252931321206577.Spec : Prop :=
  ∀ n, P3859252931321206577.a n = A017206 n

theorem P3859252931321206577.correct : P3859252931321206577.Spec := by
  intro n
  simp only [A017206, Nat.add_sub_cancel, A017206.P3859252931321206577.a, A017206.P5077701981855383042.a, A017197, A017197.P8201470797211874866.a, A017205, A017205.P2424072134707059675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017206

/-! ## A017206.P5968789793575058307

`A017200(n)*A017202(n)`
-/

namespace A017206.P5968789793575058307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017200 n * A017202 n

end

end A017206.P5968789793575058307

namespace A017206

/-- `A017200(n)*A017202(n)` -/
def P5968789793575058307.Spec : Prop :=
  ∀ n, P5968789793575058307.a n = A017206 n

theorem P5968789793575058307.correct : P5968789793575058307.Spec := by
  intro n
  simp only [A017206, Nat.add_sub_cancel, A017206.P5968789793575058307.a, A017206.P5077701981855383042.a, A017200, A017200.P17083821624758811840.a, A017202, A017202.P14157507737266821628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017206

/-! ## A017206.P2180218148181352177

`(A017197(n)*A017200(n))²`
-/

namespace A017206.P2180218148181352177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017197 n * A017200 n) ^ 2

end

end A017206.P2180218148181352177

namespace A017206

/-- `(A017197(n)*A017200(n))²` -/
def P2180218148181352177.Spec : Prop :=
  ∀ n, P2180218148181352177.a n = A017206 n

theorem P2180218148181352177.correct : P2180218148181352177.Spec := by
  intro n
  simp only [A017206, Nat.add_sub_cancel, A017206.P2180218148181352177.a, A017206.P5077701981855383042.a, A017197, A017197.P8201470797211874866.a, A017200, A017200.P17083821624758811840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017206

/-! ## A017206.P18069763764618399734

`(A017198(n)²*A017197(n))²`
-/

namespace A017206.P18069763764618399734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017198 n ^ 2 * A017197 n) ^ 2

end

end A017206.P18069763764618399734

namespace A017206

/-- `(A017198(n)²*A017197(n))²` -/
def P18069763764618399734.Spec : Prop :=
  ∀ n, P18069763764618399734.a n = A017206 n

theorem P18069763764618399734.correct : P18069763764618399734.Spec := by
  intro n
  simp only [A017206, Nat.add_sub_cancel, A017206.P18069763764618399734.a, A017206.P5077701981855383042.a, A017197, A017197.P8201470797211874866.a, A017198, A017198.P11032527811158562085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017206

/-! ## A017206.P4207208571693437957

`sqrt(sqrt(A017204(n)))*A017204(n)`
-/

namespace A017206.P4207208571693437957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017204 n : ℝ)) * (A017204 n : ℝ)

end

end A017206.P4207208571693437957

namespace A017206

/-- `sqrt(sqrt(A017204(n)))*A017204(n)` -/
def P4207208571693437957.Spec : Prop :=
  ∀ n, P4207208571693437957.a n = (A017206 n : ℝ)

end A017206

/-! ## A017206.P563513898877809989

`A016774(3*n+1)`
-/

namespace A017206.P563513898877809989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016774 (3 * n + 1)

end

end A017206.P563513898877809989

namespace A017206

/-- `A016774(3*n+1)` -/
def P563513898877809989.Spec : Prop :=
  ∀ n, P563513898877809989.a n = A017206 n

theorem P563513898877809989.correct : P563513898877809989.Spec := by
  intro n
  simp only [A017206, Nat.add_sub_cancel, A017206.P563513898877809989.a, A017206.P5077701981855383042.a, A016774, A016774.P14788288456263869944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017206

/-! ## A017206.P7755793611700185184

`A008454(A017197(n))`
-/

namespace A017206.P7755793611700185184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017197 n).toNat

end

end A017206.P7755793611700185184

namespace A017206

/-- `A008454(A017197(n))` -/
def P7755793611700185184.Spec : Prop :=
  ∀ n, P7755793611700185184.a n = A017206 n

end A017206

/-! ## A017206.P12219807778020558992

`A008454(A017221(n)-2)`
-/

namespace A017206.P12219807778020558992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017221 n - 2).toNat

end

end A017206.P12219807778020558992

namespace A017206

/-- `A008454(A017221(n)-2)` -/
def P12219807778020558992.Spec : Prop :=
  ∀ n, P12219807778020558992.a n = A017206 n

end A017206

/-! ## A017206.P8974791323490785070

`A008454(A017281(n)+2-n)`
-/

namespace A017206.P8974791323490785070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017281 n + (2 - (n : ℤ))).toNat

end

end A017206.P8974791323490785070

namespace A017206

/-- `A008454(A017281(n)+2-n)` -/
def P8974791323490785070.Spec : Prop :=
  ∀ n, P8974791323490785070.a n = A017206 n

end A017206

/-! ## A017206.P7966550084720437678

`A008454(2-(n-A017281(n)))`
-/

namespace A017206.P7966550084720437678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 - ((n : ℤ) - A017281 n)).toNat

end

end A017206.P7966550084720437678

namespace A017206

/-- `A008454(2-(n-A017281(n)))` -/
def P7966550084720437678.Spec : Prop :=
  ∀ n, P7966550084720437678.a n = A017206 n

end A017206

/-! ## A017206.P14070183030448670391

`A008454(A008585(2*n+1+n))`
-/

namespace A017206.P14070183030448670391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008585 (2 * n + 1 + n)).toNat

end

end A017206.P14070183030448670391

namespace A017206

/-- `A008454(A008585(2*n+1+n))` -/
def P14070183030448670391.Spec : Prop :=
  ∀ n, P14070183030448670391.a n = A017206 n

end A017206

/-! ## A017206.P988137851317264240

`A008454(A016813(2*n)+n+2)`
-/

namespace A017206.P988137851317264240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 (2 * n) + (n + 2 : ℤ)).toNat

end

end A017206.P988137851317264240

namespace A017206

/-- `A008454(A016813(2*n)+n+2)` -/
def P988137851317264240.Spec : Prop :=
  ∀ n, P988137851317264240.a n = A017206 n

end A017206

/-! ## A017206.P7741064519147704048

`A008454(A008587(2*n+1)-(n+2))`
-/

namespace A017206.P7741064519147704048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008587 (2 * n + 1) - (n + 2 : ℤ)).toNat

end

end A017206.P7741064519147704048

namespace A017206

/-- `A008454(A008587(2*n+1)-(n+2))` -/
def P7741064519147704048.Spec : Prop :=
  ∀ n, P7741064519147704048.a n = A017206 n

end A017206

/-! ## A017206.P7323642443055418842

`A008454(A016777(n)+2*A016777(n))`
-/

namespace A017206.P7323642443055418842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 n + 2 * A016777 n).toNat

end

end A017206.P7323642443055418842

namespace A017206

/-- `A008454(A016777(n)+2*A016777(n))` -/
def P7323642443055418842.Spec : Prop :=
  ∀ n, P7323642443055418842.a n = A017206 n

end A017206

/-!
# A017207: 

The programs for A017207, there is no canonical definition to state claims against.
-/

/-! ## A017207.P17836082570226576242

`(9*n+3)^11`
-/

namespace A017207.P17836082570226576242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 3) ^ 11

end

end A017207.P17836082570226576242

/-! ## A017207.P18329391682476270404

`(A017197(n)*A017200(n))²*A017197(n)`
-/

namespace A017207.P18329391682476270404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017197 n * A017200 n) ^ 2 * A017197 n

end

end A017207.P18329391682476270404

/-! ## A017207.P7239687289927908646

`A016775(3*n+1)`
-/

namespace A017207.P7239687289927908646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016775 (3 * n + 1)

end

end A017207.P7239687289927908646

/-! ## A017207.P7396299153607193785

`A008455(A017197(n))`
-/

namespace A017207.P7396299153607193785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017197 n).toNat

end

end A017207.P7396299153607193785

/-! ## A017207.P13324246954725892134

`A008455(3*A016777(n))`
-/

namespace A017207.P13324246954725892134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (3 * A016777 n).toNat

end

end A017207.P13324246954725892134

/-! ## A017207.P13568097615206670094

`A008455(A017101(n)+n)`
-/

namespace A017207.P13568097615206670094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017101 n + (n : ℤ)).toNat

end

end A017207.P13568097615206670094

/-! ## A017207.P3362583654564541848

`A008455(A017281(n)+2-n)`
-/

namespace A017207.P3362583654564541848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n + (2 - (n : ℤ))).toNat

end

end A017207.P3362583654564541848

/-! ## A017207.P14021125151974572342

`A008455(2-(n-A017281(n)))`
-/

namespace A017207.P14021125151974572342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 - ((n : ℤ) - A017281 n)).toNat

end

end A017207.P14021125151974572342

/-! ## A017207.P16789301369536459512

`A008455(A008585(2*n+1+n))`
-/

namespace A017207.P16789301369536459512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n + 1 + n)).toNat

end

end A017207.P16789301369536459512

/-! ## A017207.P997046919654911814

`A008455(A016813(2*n)+n+2)`
-/

namespace A017207.P997046919654911814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n) + (n + 2 : ℤ)).toNat

end

end A017207.P997046919654911814

/-! ## A017207.P17673955374227531674

`A008455(A017569(n)-A016777(n))`
-/

namespace A017207.P17673955374227531674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017569 n - A016777 n).toNat

end

end A017207.P17673955374227531674

/-!
# A017208: 

The programs for A017208, there is no canonical definition to state claims against.
-/

/-! ## A017208.P14023769473726514491

`(9*n+3)^12`
-/

namespace A017208.P14023769473726514491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 3) ^ 12

end

end A017208.P14023769473726514491

/-! ## A017208.P10714240048615930323

`A017202(n)²`
-/

namespace A017208.P10714240048615930323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017202 n ^ 2

end

end A017208.P10714240048615930323

/-! ## A017208.P3655118783868659794

`sqrt(A017204(n))*A017204(n)`
-/

namespace A017208.P3655118783868659794
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017204 n : ℝ) * (A017204 n : ℝ)

end

end A017208.P3655118783868659794

/-! ## A017208.P14390763852553567790

`(A017197(n)*A017198(n))²²`
-/

namespace A017208.P14390763852553567790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017197 n * A017198 n) ^ 2) ^ 2

end

end A017208.P14390763852553567790

/-! ## A017208.P1802499020194819789

`(A017200(n)/A017197(n))²²`
-/

namespace A017208.P1802499020194819789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017200 n : ℚ) / (A017197 n : ℚ)) ^ 2) ^ 2

end

end A017208.P1802499020194819789

/-! ## A017208.P4311387731227588172

`A016776(3*n+1)`
-/

namespace A017208.P4311387731227588172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016776 (3 * n + 1)

end

end A017208.P4311387731227588172

/-! ## A017208.P451894636116256086

`sqrt(A017204(n)^3)`
-/

namespace A017208.P451894636116256086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017204 n ^ 3 : ℝ)

end

end A017208.P451894636116256086

/-! ## A017208.P15577765421598267951

`A008456(3*3*n+3)`
-/

namespace A017208.P15577765421598267951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (3 * (3 * n) + 3)

end

end A017208.P15577765421598267951

/-! ## A017208.P16462155320952642734

`A000578(A017185(n)+1)²²`
-/

namespace A017208.P16462155320952642734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017185 n + 1).toNat ^ 2) ^ 2

end

end A017208.P16462155320952642734

/-! ## A017208.P15894547542576586890

`A000578(A017209(n)-1)²²`
-/

namespace A017208.P15894547542576586890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017209 n - 1).toNat ^ 2) ^ 2

end

end A017208.P15894547542576586890

/-! ## A017208.P12176879354161425877

`A000578(A017221(n)-2)²²`
-/

namespace A017208.P12176879354161425877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017221 n - 2).toNat ^ 2) ^ 2

end

end A017208.P12176879354161425877

/-! ## A017208.P6962211489536939543

`A000578(A017305(n)-n)²²`
-/

namespace A017208.P6962211489536939543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017305 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A017208.P6962211489536939543

/-!
# A017209: a(n) = 9*n + 4.

The programs for A017209, the canonical program `A017209.P14094936957545695605` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017209 has offset 0).

The definition of A017209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n+4` (program `A017209.P14094936957545695605`, by `A017209.P14094936957545695605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017209.P14094936957545695605

`9*n+4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017209

/-- `9*n+4` -/
def P14094936957545695605.Spec : Prop :=
  ∀ n, (P14094936957545695605.a n : ℤ) = A017209 n

theorem P14094936957545695605.correct : P14094936957545695605.Spec := by
  intro n
  simp only [A017209]

end A017209

/-!
# A017210: a(n) = (9*n + 4)^2.

The programs for A017210, the canonical program `A017210.P1675687124226555491` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017210 has offset 0).

The definition of A017210 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+4)²` (program `A017210.P1675687124226555491`, by `A017210.P1675687124226555491.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017210.P1675687124226555491

`(9*n+4)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017210

/-- `(9*n+4)²` -/
def P1675687124226555491.Spec : Prop :=
  ∀ n, (P1675687124226555491.a n : ℤ) = A017210 n

theorem P1675687124226555491.correct : P1675687124226555491.Spec := by
  intro n
  simp only [A017210]

end A017210

/-! ## A017210.P14160738786570322205

`record[(dr(4-n)-n)²]`
-/

namespace A017210.P14160738786570322205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (4 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017210.P14160738786570322205

namespace A017210

/-- `record[(dr(4-n)-n)²]` -/
def P14160738786570322205.Spec : Prop :=
  ∀ n, P14160738786570322205.a n = A017210 n

end A017210

/-! ## A017210.P232152493290899911

`record[((n+4)/dr(n+1))²]`
-/

namespace A017210.P232152493290899911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 4 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017210.P232152493290899911

namespace A017210

/-- `record[((n+4)/dr(n+1))²]` -/
def P232152493290899911.Spec : Prop :=
  ∀ n, P232152493290899911.a n = (A017210 n : ℚ)

end A017210

/-! ## A017210.P11604575184524034273

`record[(-(n+2))^(4-dr(n))]`
-/

namespace A017210.P11604575184524034273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n + 2 : ℤ) : ℚ) ^ (4 - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017210.P11604575184524034273

namespace A017210

/-- `record[(-(n+2))^(4-dr(n))]` -/
def P11604575184524034273.Spec : Prop :=
  ∀ n, P11604575184524034273.a n = (A017210 n : ℚ)

end A017210

/-! ## A017210.P13758512360040656531

`record[(gcd(9, 1-n)+n+3)²]`
-/

namespace A017210.P13758512360040656531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 9 (1 - (n : ℤ)) + (n + 3)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017210.P13758512360040656531

namespace A017210

/-- `record[(gcd(9, 1-n)+n+3)²]` -/
def P13758512360040656531.Spec : Prop :=
  ∀ n, (P13758512360040656531.a n : ℤ) = A017210 n

end A017210

/-! ## A017210.P2960133852335286990

`sqrt(A017212(n))`
-/

namespace A017210.P2960133852335286990
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017212 n : ℝ)

end

end A017210.P2960133852335286990

namespace A017210

/-- `sqrt(A017212(n))` -/
def P2960133852335286990.Spec : Prop :=
  ∀ n, P2960133852335286990.a n = (A017210 n : ℝ)

end A017210

/-! ## A017210.P14978112445090015677

`sqrt(sqrt(A017216(n)))`
-/

namespace A017210.P14978112445090015677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017216 n : ℝ))

end

end A017210.P14978112445090015677

namespace A017210

/-- `sqrt(sqrt(A017216(n)))` -/
def P14978112445090015677.Spec : Prop :=
  ∀ n, P14978112445090015677.a n = (A017210 n : ℝ)

end A017210

/-! ## A017210.P14716845763844510664

`A154295(n+1)-1`
-/

namespace A017210.P14716845763844510664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154295 (n + 1) - 1

end

end A017210.P14716845763844510664

namespace A017210

/-- `A154295(n+1)-1` -/
def P14716845763844510664.Spec : Prop :=
  ∀ n, P14716845763844510664.a n = A017210 n

theorem P14716845763844510664.correct : P14716845763844510664.Spec := by
  intro n
  simp only [A017210, Nat.add_sub_cancel, A017210.P14716845763844510664.a, A017210.P1675687124226555491.a, A154295, A154295.P13439465799666436317.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017210

/-! ## A017210.P1967828275314584354

`A017214(n)^(1/3)`
-/

namespace A017210.P1967828275314584354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017214 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017210.P1967828275314584354

namespace A017210

/-- `A017214(n)^(1/3)` -/
def P1967828275314584354.Spec : Prop :=
  ∀ n, P1967828275314584354.a n = (A017210 n : ℝ)

end A017210

/-! ## A017210.P4386062846488542397

`A017211(n)^(2/3)`
-/

namespace A017210.P4386062846488542397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017211 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017210.P4386062846488542397

namespace A017210

/-- `A017211(n)^(2/3)` -/
def P4386062846488542397.Spec : Prop :=
  ∀ n, P4386062846488542397.a n = (A017210 n : ℝ)

end A017210

/-! ## A017210.P8034842709600569593

`A177073(n)-A017209(n)`
-/

namespace A017210.P8034842709600569593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177073 n - A017209 n

end

end A017210.P8034842709600569593

namespace A017210

/-- `A177073(n)-A017209(n)` -/
def P8034842709600569593.Spec : Prop :=
  ∀ n, P8034842709600569593.a n = A017210 n

theorem P8034842709600569593.correct : P8034842709600569593.Spec := by
  intro n
  simp only [A017210, Nat.add_sub_cancel, A017210.P8034842709600569593.a, A017210.P1675687124226555491.a, A017209, A017209.P14094936957545695605.a, A177073, A177073.P12367509334309309339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017210

/-! ## A017210.P4788389439037168482

`A017211(n)/A017209(n)`
-/

namespace A017210.P4788389439037168482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017211 n : ℚ) / (A017209 n : ℚ)

end

end A017210.P4788389439037168482

namespace A017210

/-- `A017211(n)/A017209(n)` -/
def P4788389439037168482.Spec : Prop :=
  ∀ n, P4788389439037168482.a n = (A017210 n : ℚ)

end A017210

/-! ## A017210.P2334474839718233848

`A017213(n)/A017211(n)`
-/

namespace A017210.P2334474839718233848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017213 n : ℚ) / (A017211 n : ℚ)

end

end A017210.P2334474839718233848

namespace A017210

/-- `A017213(n)/A017211(n)` -/
def P2334474839718233848.Spec : Prop :=
  ∀ n, P2334474839718233848.a n = (A017210 n : ℚ)

end A017210

/-! ## A017210.P17637413047351336773

`A017214(n)/A017212(n)`
-/

namespace A017210.P17637413047351336773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017214 n : ℚ) / (A017212 n : ℚ)

end

end A017210.P17637413047351336773

namespace A017210

/-- `A017214(n)/A017212(n)` -/
def P17637413047351336773.Spec : Prop :=
  ∀ n, P17637413047351336773.a n = (A017210 n : ℚ)

end A017210

/-! ## A017210.P11700564578145707580

`A017212(n)%A177073(n)`
-/

namespace A017210.P11700564578145707580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017212 n) (A177073 n)

end

end A017210.P11700564578145707580

namespace A017210

/-- `A017212(n)%A177073(n)` -/
def P11700564578145707580.Spec : Prop :=
  ∀ n, P11700564578145707580.a n = A017210 n

end A017210

/-! ## A017210.P1205251636931904274

`A017214(n)%A177073(n)`
-/

namespace A017210.P1205251636931904274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017214 n) (A177073 n)

end

end A017210.P1205251636931904274

namespace A017210

/-- `A017214(n)%A177073(n)` -/
def P1205251636931904274.Spec : Prop :=
  ∀ n, P1205251636931904274.a n = A017210 n

end A017210

/-! ## A017210.P7684184418754823736

`A017212(n)²/A017211(n)²`
-/

namespace A017210.P7684184418754823736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017212 n ^ 2 : ℚ) / (A017211 n ^ 2 : ℚ)

end

end A017210.P7684184418754823736

namespace A017210

/-- `A017212(n)²/A017211(n)²` -/
def P7684184418754823736.Spec : Prop :=
  ∀ n, P7684184418754823736.a n = (A017210 n : ℚ)

end A017210

/-! ## A017210.P13876823091823508703

`A017209(n)²²²/A017214(n)`
-/

namespace A017210.P13876823091823508703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017209 n ^ 2) ^ 2) ^ 2 : ℚ) / (A017214 n : ℚ)

end

end A017210.P13876823091823508703

namespace A017210

/-- `A017209(n)²²²/A017214(n)` -/
def P13876823091823508703.Spec : Prop :=
  ∀ n, P13876823091823508703.a n = (A017210 n : ℚ)

end A017210

/-! ## A017210.P11411657390032704306

`A017258(2*n)/4`
-/

namespace A017210.P11411657390032704306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017258 (2 * n) : ℚ) / 4

end

end A017210.P11411657390032704306

namespace A017210

/-- `A017258(2*n)/4` -/
def P11411657390032704306.Spec : Prop :=
  ∀ n, P11411657390032704306.a n = (A017210 n : ℚ)

theorem P11411657390032704306.correct : P11411657390032704306.Spec := by
  intro n
  simp only [A017210, Nat.add_sub_cancel, A017210.P11411657390032704306.a, A017210.P1675687124226555491.a, A017258, A017258.P14241176196969724133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017210

/-! ## A017210.P5490637264070690757

`A061101(Δ[n²])`
-/

namespace A017210.P5490637264070690757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017210.P5490637264070690757

namespace A017210

/-- `A061101(Δ[n²])` -/
def P5490637264070690757.Spec : Prop :=
  ∀ n, P5490637264070690757.a n = A017210 n

end A017210

/-!
# A017211: a(n) = (9*n + 4)^3.

The programs for A017211, the canonical program `A017211.P8534542557181721998` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017211 has offset 0).

The definition of A017211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+4)^3` (program `A017211.P8534542557181721998`, by `A017211.P8534542557181721998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017211.P8534542557181721998

`(9*n+4)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017211

/-- `(9*n+4)^3` -/
def P8534542557181721998.Spec : Prop :=
  ∀ n, (P8534542557181721998.a n : ℤ) = A017211 n

theorem P8534542557181721998.correct : P8534542557181721998.Spec := by
  intro n
  simp only [A017211]

end A017211

/-! ## A017211.P7243699070641375608

`A000578(A017209(n))`
-/

namespace A017211.P7243699070641375608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017209 n).toNat

end

end A017211.P7243699070641375608

namespace A017211

/-- `A000578(A017209(n))` -/
def P7243699070641375608.Spec : Prop :=
  ∀ n, P7243699070641375608.a n = A017211 n

end A017211

/-! ## A017211.P17687266620320943121

`sqrt(A017214(n))`
-/

namespace A017211.P17687266620320943121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017214 n : ℝ)

end

end A017211.P17687266620320943121

namespace A017211

/-- `sqrt(A017214(n))` -/
def P17687266620320943121.Spec : Prop :=
  ∀ n, P17687266620320943121.a n = (A017211 n : ℝ)

end A017211

/-! ## A017211.P13048695387706688718

`sqrt(A017210(n)^3)`
-/

namespace A017211.P13048695387706688718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017210 n ^ 3 : ℝ)

end

end A017211.P13048695387706688718

namespace A017211

/-- `sqrt(A017210(n)^3)` -/
def P13048695387706688718.Spec : Prop :=
  ∀ n, P13048695387706688718.a n = (A017211 n : ℝ)

end A017211

/-! ## A017211.P7885790215071628867

`A017209(n)*A017210(n)`
-/

namespace A017211.P7885790215071628867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n * A017210 n

end

end A017211.P7885790215071628867

namespace A017211

/-- `A017209(n)*A017210(n)` -/
def P7885790215071628867.Spec : Prop :=
  ∀ n, P7885790215071628867.a n = A017211 n

theorem P7885790215071628867.correct : P7885790215071628867.Spec := by
  intro n
  simp only [A017211, Nat.add_sub_cancel, A017211.P7885790215071628867.a, A017211.P8534542557181721998.a, A017209, A017209.P14094936957545695605.a, A017210, A017210.P1675687124226555491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017211

/-! ## A017211.P1160785640981532038

`A017212(n)/A017209(n)`
-/

namespace A017211.P1160785640981532038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017212 n : ℚ) / (A017209 n : ℚ)

end

end A017211.P1160785640981532038

namespace A017211

/-- `A017212(n)/A017209(n)` -/
def P1160785640981532038.Spec : Prop :=
  ∀ n, P1160785640981532038.a n = (A017211 n : ℚ)

end A017211

/-! ## A017211.P13863721447817570871

`A017213(n)/A017210(n)`
-/

namespace A017211.P13863721447817570871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017213 n : ℚ) / (A017210 n : ℚ)

end

end A017211.P13863721447817570871

namespace A017211

/-- `A017213(n)/A017210(n)` -/
def P13863721447817570871.Spec : Prop :=
  ∀ n, P13863721447817570871.a n = (A017211 n : ℚ)

end A017211

/-! ## A017211.P17087452440400614459

`A017212(n)²/A017213(n)`
-/

namespace A017211.P17087452440400614459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017212 n ^ 2 : ℚ) / (A017213 n : ℚ)

end

end A017211.P17087452440400614459

namespace A017211

/-- `A017212(n)²/A017213(n)` -/
def P17087452440400614459.Spec : Prop :=
  ∀ n, P17087452440400614459.a n = (A017211 n : ℚ)

end A017211

/-! ## A017211.P4019921267598702689

`A017213(n)/A017209(n)²`
-/

namespace A017211.P4019921267598702689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017213 n : ℚ) / (A017209 n ^ 2 : ℚ)

end

end A017211.P4019921267598702689

namespace A017211

/-- `A017213(n)/A017209(n)²` -/
def P4019921267598702689.Spec : Prop :=
  ∀ n, P4019921267598702689.a n = (A017211 n : ℚ)

end A017211

/-! ## A017211.P2174456288513076568

`(A177073(n)-A017209(n))*A017209(n)`
-/

namespace A017211.P2174456288513076568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177073 n - A017209 n) * A017209 n

end

end A017211.P2174456288513076568

namespace A017211

/-- `(A177073(n)-A017209(n))*A017209(n)` -/
def P2174456288513076568.Spec : Prop :=
  ∀ n, P2174456288513076568.a n = A017211 n

theorem P2174456288513076568.correct : P2174456288513076568.Spec := by
  intro n
  simp only [A017211, Nat.add_sub_cancel, A017211.P2174456288513076568.a, A017211.P8534542557181721998.a, A017209, A017209.P14094936957545695605.a, A177073, A177073.P12367509334309309339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017211

/-! ## A017211.P12234013905494074960

`A017209(n)*A154295(n+1)-A017209(n)`
-/

namespace A017211.P12234013905494074960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n * A154295 (n + 1) - A017209 n

end

end A017211.P12234013905494074960

namespace A017211

/-- `A017209(n)*A154295(n+1)-A017209(n)` -/
def P12234013905494074960.Spec : Prop :=
  ∀ n, P12234013905494074960.a n = A017211 n

theorem P12234013905494074960.correct : P12234013905494074960.Spec := by
  intro n
  simp only [A017211, Nat.add_sub_cancel, A017211.P12234013905494074960.a, A017211.P8534542557181721998.a, A017209, A017209.P14094936957545695605.a, A154295, A154295.P13439465799666436317.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017211

/-! ## A017211.P2807764337843629073

`Δ[A022266(n)]²*Δ[A022266(n)]`
-/

namespace A017211.P2807764337843629073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017211.P2807764337843629073

namespace A017211

/-- `Δ[A022266(n)]²*Δ[A022266(n)]` -/
def P2807764337843629073.Spec : Prop :=
  ∀ n, P2807764337843629073.a n = A017211 n

end A017211

/-! ## A017211.P8806902309698244571

`A017259(2*n)/8`
-/

namespace A017211.P8806902309698244571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017259 (2 * n) : ℚ) / 8

end

end A017211.P8806902309698244571

namespace A017211

/-- `A017259(2*n)/8` -/
def P8806902309698244571.Spec : Prop :=
  ∀ n, P8806902309698244571.a n = (A017211 n : ℚ)

theorem P8806902309698244571.correct : P8806902309698244571.Spec := by
  intro n
  simp only [A017211, Nat.add_sub_cancel, A017211.P8806902309698244571.a, A017211.P8534542557181721998.a, A017259, A017259.P3274228343626659253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017211

/-! ## A017211.P2770645639634523105

`A017209(n)*A061101(2*n+1)`
-/

namespace A017211.P2770645639634523105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n * A061101 (2 * n + 1)

end

end A017211.P2770645639634523105

namespace A017211

/-- `A017209(n)*A061101(2*n+1)` -/
def P2770645639634523105.Spec : Prop :=
  ∀ n, P2770645639634523105.a n = A017211 n

end A017211

/-! ## A017211.P10215975784618721432

`A087444(2*(n+1))²*A087444(2*(n+1))`
-/

namespace A017211.P10215975784618721432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (2 * (n + 1)) ^ 2 * A087444 (2 * (n + 1))

end

end A017211.P10215975784618721432

namespace A017211

/-- `A087444(2*(n+1))²*A087444(2*(n+1))` -/
def P10215975784618721432.Spec : Prop :=
  ∀ n, P10215975784618721432.a n = A017211 n

end A017211

/-! ## A017211.P6035843857094080807

`A125758(2*n+1)²*A125758(2*n+1)`
-/

namespace A017211.P6035843857094080807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (2 * n + 1) ^ 2 * A125758 (2 * n + 1)

end

end A017211.P6035843857094080807

namespace A017211

/-- `A125758(2*n+1)²*A125758(2*n+1)` -/
def P6035843857094080807.Spec : Prop :=
  ∀ n, P6035843857094080807.a n = A017211 n

end A017211

/-! ## A017211.P9598621758220843264

`A156638(2*n+1)²*A156638(2*n+1)`
-/

namespace A017211.P9598621758220843264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (2 * n + 1) ^ 2 * A156638 (2 * n + 1)

end

end A017211.P9598621758220843264

namespace A017211

/-- `A156638(2*n+1)²*A156638(2*n+1)` -/
def P9598621758220843264.Spec : Prop :=
  ∀ n, P9598621758220843264.a n = A017211 n

end A017211

/-! ## A017211.P9994136210239763212

`A168401(2*n+1)²*A168401(2*n+1)`
-/

namespace A017211.P9994136210239763212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168401 (2 * n + 1) ^ 2 * A168401 (2 * n + 1)

end

end A017211.P9994136210239763212

namespace A017211

/-- `A168401(2*n+1)²*A168401(2*n+1)` -/
def P9994136210239763212.Spec : Prop :=
  ∀ n, P9994136210239763212.a n = A017211 n

end A017211

/-! ## A017211.P8261500286842198454

`sqrt(A016782(2*n+1+n))`
-/

namespace A017211.P8261500286842198454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016782 (2 * n + 1 + n) : ℝ)

end

end A017211.P8261500286842198454

namespace A017211

/-- `sqrt(A016782(2*n+1+n))` -/
def P8261500286842198454.Spec : Prop :=
  ∀ n, P8261500286842198454.a n = (A017211 n : ℝ)

end A017211

/-!
# A017212: a(n) = (9*n + 4)^4.

The programs for A017212, the canonical program `A017212.P6894106073648720689` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017212 has offset 0).

The definition of A017212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+4)^4` (program `A017212.P6894106073648720689`, by `A017212.P6894106073648720689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017212.P6894106073648720689

`(9*n+4)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017212

/-- `(9*n+4)^4` -/
def P6894106073648720689.Spec : Prop :=
  ∀ n, (P6894106073648720689.a n : ℤ) = A017212 n

theorem P6894106073648720689.correct : P6894106073648720689.Spec := by
  intro n
  simp only [A017212]

end A017212

/-! ## A017212.P2292446009562200772

`(Δ[C(3*n, 2)]+1)²²`
-/

namespace A017212.P2292446009562200772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2) ^ 2

end

end A017212.P2292446009562200772

namespace A017212

/-- `(Δ[C(3*n, 2)]+1)²²` -/
def P2292446009562200772.Spec : Prop :=
  ∀ n, P2292446009562200772.a n = A017212 n

theorem P2292446009562200772.correct : P2292446009562200772.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P2292446009562200772.f1, A017212.P2292446009562200772.a, A017212.P6894106073648720689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P2191005274392835158

`(record[lcm(4, n+1)]+n)²²`
-/

namespace A017212.P2191005274392835158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n) ^ 2) ^ 2

end

end A017212.P2191005274392835158

namespace A017212

/-- `(record[lcm(4, n+1)]+n)²²` -/
def P2191005274392835158.Spec : Prop :=
  ∀ n, (P2191005274392835158.a n : ℤ) = A017212 n

end A017212

/-! ## A017212.P9027234058441665019

`(Δ[lcm(2, (2*n)²)]+n)²²`
-/

namespace A017212.P9027234058441665019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2

end

end A017212.P9027234058441665019

namespace A017212

/-- `(Δ[lcm(2, (2*n)²)]+n)²²` -/
def P9027234058441665019.Spec : Prop :=
  ∀ n, P9027234058441665019.a n = A017212 n

end A017212

/-! ## A017212.P1863048675908426943

`(Δ[(2*n)²]+gcd(n, 2*n))²²`
-/

namespace A017212.P1863048675908426943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.gcd n (2 * n) : ℤ)) ^ 2) ^ 2

end

end A017212.P1863048675908426943

namespace A017212

/-- `(Δ[(2*n)²]+gcd(n, 2*n))²²` -/
def P1863048675908426943.Spec : Prop :=
  ∀ n, P1863048675908426943.a n = A017212 n

theorem P1863048675908426943.correct : P1863048675908426943.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P1863048675908426943.f1, A017212.P1863048675908426943.a, A017212.P6894106073648720689.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017212

/-! ## A017212.P8125275026117588357

`(Δ[and(2*n+1, 2*n)²]+n)²²`
-/

namespace A017212.P8125275026117588357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2

end

end A017212.P8125275026117588357

namespace A017212

/-- `(Δ[and(2*n+1, 2*n)²]+n)²²` -/
def P8125275026117588357.Spec : Prop :=
  ∀ n, P8125275026117588357.a n = A017212 n

end A017212

/-! ## A017212.P17254367736392287941

`A017210(n)²`
-/

namespace A017212.P17254367736392287941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017210 n ^ 2

end

end A017212.P17254367736392287941

namespace A017212

/-- `A017210(n)²` -/
def P17254367736392287941.Spec : Prop :=
  ∀ n, P17254367736392287941.a n = A017212 n

theorem P17254367736392287941.correct : P17254367736392287941.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P17254367736392287941.a, A017212.P6894106073648720689.a, A017210, A017210.P1675687124226555491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P6983176468014324133

`sqrt(A017216(n))`
-/

namespace A017212.P6983176468014324133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017216 n : ℝ)

end

end A017212.P6983176468014324133

namespace A017212

/-- `sqrt(A017216(n))` -/
def P6983176468014324133.Spec : Prop :=
  ∀ n, P6983176468014324133.a n = (A017212 n : ℝ)

end A017212

/-! ## A017212.P12518397811461189277

`A017209(n)²²`
-/

namespace A017212.P12518397811461189277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n ^ 2) ^ 2

end

end A017212.P12518397811461189277

namespace A017212

/-- `A017209(n)²²` -/
def P12518397811461189277.Spec : Prop :=
  ∀ n, P12518397811461189277.a n = A017212 n

theorem P12518397811461189277.correct : P12518397811461189277.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P12518397811461189277.a, A017212.P6894106073648720689.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P3998364977379112563

`(A017197(n)+1)²²`
-/

namespace A017212.P3998364977379112563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017197 n + 1) ^ 2) ^ 2

end

end A017212.P3998364977379112563

namespace A017212

/-- `(A017197(n)+1)²²` -/
def P3998364977379112563.Spec : Prop :=
  ∀ n, P3998364977379112563.a n = A017212 n

theorem P3998364977379112563.correct : P3998364977379112563.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P3998364977379112563.a, A017212.P6894106073648720689.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P1105447169444091375

`(A017185(n)+2)²²`
-/

namespace A017212.P1105447169444091375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017185 n + 2) ^ 2) ^ 2

end

end A017212.P1105447169444091375

namespace A017212

/-- `(A017185(n)+2)²²` -/
def P1105447169444091375.Spec : Prop :=
  ∀ n, P1105447169444091375.a n = A017212 n

theorem P1105447169444091375.correct : P1105447169444091375.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P1105447169444091375.a, A017212.P6894106073648720689.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P17770132576553123501

`(1-A017221(n))²²`
-/

namespace A017212.P17770132576553123501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017221 n) ^ 2) ^ 2

end

end A017212.P17770132576553123501

namespace A017212

/-- `(1-A017221(n))²²` -/
def P17770132576553123501.Spec : Prop :=
  ∀ n, P17770132576553123501.a n = A017212 n

theorem P17770132576553123501.correct : P17770132576553123501.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P17770132576553123501.a, A017212.P6894106073648720689.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P17332177591880654181

`(A017173(n)+3)²²`
-/

namespace A017212.P17332177591880654181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017173 n + 3) ^ 2) ^ 2

end

end A017212.P17332177591880654181

namespace A017212

/-- `(A017173(n)+3)²²` -/
def P17332177591880654181.Spec : Prop :=
  ∀ n, P17332177591880654181.a n = A017212 n

theorem P17332177591880654181.correct : P17332177591880654181.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P17332177591880654181.a, A017212.P6894106073648720689.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P8117701909653826753

`(2-A017233(n))²²`
-/

namespace A017212.P8117701909653826753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017233 n) ^ 2) ^ 2

end

end A017212.P8117701909653826753

namespace A017212

/-- `(2-A017233(n))²²` -/
def P8117701909653826753.Spec : Prop :=
  ∀ n, P8117701909653826753.a n = A017212 n

theorem P8117701909653826753.correct : P8117701909653826753.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P8117701909653826753.a, A017212.P6894106073648720689.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P17536585811343905884

`(3-A017245(n))²²`
-/

namespace A017212.P17536585811343905884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017245 n) ^ 2) ^ 2

end

end A017212.P17536585811343905884

namespace A017212

/-- `(3-A017245(n))²²` -/
def P17536585811343905884.Spec : Prop :=
  ∀ n, P17536585811343905884.a n = A017212 n

theorem P17536585811343905884.correct : P17536585811343905884.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P17536585811343905884.a, A017212.P6894106073648720689.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P5534653234552828198

`(A154266(n)/3)²²`
-/

namespace A017212.P5534653234552828198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A154266 n : ℚ) / 3) ^ 2) ^ 2

end

end A017212.P5534653234552828198

namespace A017212

/-- `(A154266(n)/3)²²` -/
def P5534653234552828198.Spec : Prop :=
  ∀ n, P5534653234552828198.a n = (A017212 n : ℚ)

theorem P5534653234552828198.correct : P5534653234552828198.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P5534653234552828198.a, A017212.P6894106073648720689.a, A154266, A154266.P6416471385405928647.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P8232163453700659975

`(A017113(n)+n)²²`
-/

namespace A017212.P8232163453700659975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017113 n + (n : ℤ)) ^ 2) ^ 2

end

end A017212.P8232163453700659975

namespace A017212

/-- `(A017113(n)+n)²²` -/
def P8232163453700659975.Spec : Prop :=
  ∀ n, P8232163453700659975.a n = A017212 n

theorem P8232163453700659975.correct : P8232163453700659975.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P8232163453700659975.a, A017212.P6894106073648720689.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P6573389311741691313

`(n-A017317(n))²²`
-/

namespace A017212.P6573389311741691313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017317 n) ^ 2) ^ 2

end

end A017212.P6573389311741691313

namespace A017212

/-- `(n-A017317(n))²²` -/
def P6573389311741691313.Spec : Prop :=
  ∀ n, P6573389311741691313.a n = A017212 n

theorem P6573389311741691313.correct : P6573389311741691313.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P6573389311741691313.a, A017212.P6894106073648720689.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P11596108481088266870

`(1-A154295(n+1))²`
-/

namespace A017212.P11596108481088266870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A154295 (n + 1)) ^ 2

end

end A017212.P11596108481088266870

namespace A017212

/-- `(1-A154295(n+1))²` -/
def P11596108481088266870.Spec : Prop :=
  ∀ n, P11596108481088266870.a n = A017212 n

theorem P11596108481088266870.correct : P11596108481088266870.Spec := by
  intro n
  simp only [A017212, Nat.add_sub_cancel, A017212.P11596108481088266870.a, A017212.P6894106073648720689.a, A154295, A154295.P13439465799666436317.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017212

/-! ## A017212.P14421068384328845164

`(sqrt(A017198(n))+1)²²`
-/

namespace A017212.P14421068384328845164
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017198 n : ℝ) + 1) ^ 2) ^ 2

end

end A017212.P14421068384328845164

namespace A017212

/-- `(sqrt(A017198(n))+1)²²` -/
def P14421068384328845164.Spec : Prop :=
  ∀ n, P14421068384328845164.a n = (A017212 n : ℝ)

end A017212

/-!
# A017213: a(n) = (9*n + 4)^5.

The programs for A017213, the canonical program `A017213.P3831774299691324808` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017213 has offset 0).

The definition of A017213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+4)^5` (program `A017213.P3831774299691324808`, by `A017213.P3831774299691324808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017213.P3831774299691324808

`(9*n+4)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017213

/-- `(9*n+4)^5` -/
def P3831774299691324808.Spec : Prop :=
  ∀ n, (P3831774299691324808.a n : ℤ) = A017213 n

theorem P3831774299691324808.correct : P3831774299691324808.Spec := by
  intro n
  simp only [A017213]

end A017213

/-! ## A017213.P13205020105076499714

`sqrt(A017210(n)^5)`
-/

namespace A017213.P13205020105076499714
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017210 n ^ 5 : ℝ)

end

end A017213.P13205020105076499714

namespace A017213

/-- `sqrt(A017210(n)^5)` -/
def P13205020105076499714.Spec : Prop :=
  ∀ n, P13205020105076499714.a n = (A017213 n : ℝ)

end A017213

/-! ## A017213.P2113879586551020248

`(9*n+4)*A017212(n)`
-/

namespace A017213.P2113879586551020248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 4 : ℤ) * A017212 n

end

end A017213.P2113879586551020248

namespace A017213

/-- `(9*n+4)*A017212(n)` -/
def P2113879586551020248.Spec : Prop :=
  ∀ n, P2113879586551020248.a n = A017213 n

theorem P2113879586551020248.correct : P2113879586551020248.Spec := by
  intro n
  simp only [A017213, Nat.add_sub_cancel, A017213.P2113879586551020248.a, A017213.P3831774299691324808.a, A017212, A017212.P6894106073648720689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017213

/-! ## A017213.P9514447971441235773

`A017210(n)*A017211(n)`
-/

namespace A017213.P9514447971441235773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017210 n * A017211 n

end

end A017213.P9514447971441235773

namespace A017213

/-- `A017210(n)*A017211(n)` -/
def P9514447971441235773.Spec : Prop :=
  ∀ n, P9514447971441235773.a n = A017213 n

theorem P9514447971441235773.correct : P9514447971441235773.Spec := by
  intro n
  simp only [A017213, Nat.add_sub_cancel, A017213.P9514447971441235773.a, A017213.P3831774299691324808.a, A017210, A017210.P1675687124226555491.a, A017211, A017211.P8534542557181721998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017213

/-! ## A017213.P12330329907562546133

`A017214(n)/A017209(n)`
-/

namespace A017213.P12330329907562546133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017214 n : ℚ) / (A017209 n : ℚ)

end

end A017213.P12330329907562546133

namespace A017213

/-- `A017214(n)/A017209(n)` -/
def P12330329907562546133.Spec : Prop :=
  ∀ n, P12330329907562546133.a n = (A017213 n : ℚ)

end A017213

/-! ## A017213.P14617633828979981168

`A017209(n)²*A017211(n)`
-/

namespace A017213.P14617633828979981168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n ^ 2 * A017211 n

end

end A017213.P14617633828979981168

namespace A017213

/-- `A017209(n)²*A017211(n)` -/
def P14617633828979981168.Spec : Prop :=
  ∀ n, P14617633828979981168.a n = A017213 n

theorem P14617633828979981168.correct : P14617633828979981168.Spec := by
  intro n
  simp only [A017213, Nat.add_sub_cancel, A017213.P14617633828979981168.a, A017213.P3831774299691324808.a, A017209, A017209.P14094936957545695605.a, A017211, A017211.P8534542557181721998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017213

/-! ## A017213.P3101538389409461516

`A017210(n)²*A017209(n)`
-/

namespace A017213.P3101538389409461516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017210 n ^ 2 * A017209 n

end

end A017213.P3101538389409461516

namespace A017213

/-- `A017210(n)²*A017209(n)` -/
def P3101538389409461516.Spec : Prop :=
  ∀ n, P3101538389409461516.a n = A017213 n

theorem P3101538389409461516.correct : P3101538389409461516.Spec := by
  intro n
  simp only [A017213, Nat.add_sub_cancel, A017213.P3101538389409461516.a, A017213.P3831774299691324808.a, A017209, A017209.P14094936957545695605.a, A017210, A017210.P1675687124226555491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017213

/-! ## A017213.P6121177235109429607

`A017212(n)²/A017211(n)`
-/

namespace A017213.P6121177235109429607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017212 n ^ 2 : ℚ) / (A017211 n : ℚ)

end

end A017213.P6121177235109429607

namespace A017213

/-- `A017212(n)²/A017211(n)` -/
def P6121177235109429607.Spec : Prop :=
  ∀ n, P6121177235109429607.a n = (A017213 n : ℚ)

end A017213

/-! ## A017213.P11933984056655701218

`A087444(2*(n+1))²²*A087444(2*(n+1))`
-/

namespace A017213.P11933984056655701218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087444 (2 * (n + 1)) ^ 2) ^ 2 * A087444 (2 * (n + 1))

end

end A017213.P11933984056655701218

namespace A017213

/-- `A087444(2*(n+1))²²*A087444(2*(n+1))` -/
def P11933984056655701218.Spec : Prop :=
  ∀ n, P11933984056655701218.a n = A017213 n

end A017213

/-! ## A017213.P505351383587114560

`A125758(2*n+1)²²*A125758(2*n+1)`
-/

namespace A017213.P505351383587114560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A125758 (2 * n + 1) ^ 2) ^ 2 * A125758 (2 * n + 1)

end

end A017213.P505351383587114560

namespace A017213

/-- `A125758(2*n+1)²²*A125758(2*n+1)` -/
def P505351383587114560.Spec : Prop :=
  ∀ n, P505351383587114560.a n = A017213 n

end A017213

/-! ## A017213.P9643759187592658750

`A156638(2*n+1)²²*A156638(2*n+1)`
-/

namespace A017213.P9643759187592658750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156638 (2 * n + 1) ^ 2) ^ 2 * A156638 (2 * n + 1)

end

end A017213.P9643759187592658750

namespace A017213

/-- `A156638(2*n+1)²²*A156638(2*n+1)` -/
def P9643759187592658750.Spec : Prop :=
  ∀ n, P9643759187592658750.a n = A017213 n

end A017213

/-! ## A017213.P11717685006415822091

`A168401(2*n+1)²²*A168401(2*n+1)`
-/

namespace A017213.P11717685006415822091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168401 (2 * n + 1) ^ 2) ^ 2 * A168401 (2 * n + 1)

end

end A017213.P11717685006415822091

namespace A017213

/-- `A168401(2*n+1)²²*A168401(2*n+1)` -/
def P11717685006415822091.Spec : Prop :=
  ∀ n, P11717685006415822091.a n = A017213 n

end A017213

/-! ## A017213.P10327218313852907732

`A061101(2*n+1)²*sqrt(A061101(2*n+1))`
-/

namespace A017213.P10327218313852907732
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061101 (2 * n + 1) ^ 2 : ℝ) * Real.sqrt (A061101 (2 * n + 1) : ℝ)

end

end A017213.P10327218313852907732

namespace A017213

/-- `A061101(2*n+1)²*sqrt(A061101(2*n+1))` -/
def P10327218313852907732.Spec : Prop :=
  ∀ n, P10327218313852907732.a n = (A017213 n : ℝ)

end A017213

/-! ## A017213.P14781931520421933211

`A016781(3*n+1)`
-/

namespace A017213.P14781931520421933211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (3 * n + 1)

end

end A017213.P14781931520421933211

namespace A017213

/-- `A016781(3*n+1)` -/
def P14781931520421933211.Spec : Prop :=
  ∀ n, P14781931520421933211.a n = A017213 n

theorem P14781931520421933211.correct : P14781931520421933211.Spec := by
  intro n
  simp only [A017213, Nat.add_sub_cancel, A017213.P14781931520421933211.a, A017213.P3831774299691324808.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017213

/-! ## A017213.P111650837861436046

`A016785(3*n+1)/A016780(A016777(n))`
-/

namespace A017213.P111650837861436046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016785 (3 * n + 1) : ℚ) / (A016780 (A016777 n).toNat : ℚ)

end

end A017213.P111650837861436046

namespace A017213

/-- `A016785(3*n+1)/A016780(A016777(n))` -/
def P111650837861436046.Spec : Prop :=
  ∀ n, P111650837861436046.a n = (A017213 n : ℚ)

end A017213

/-! ## A017213.P14382750437389281323

`A016783(A016777(n))/A016777(A016777(n))²`
-/

namespace A017213.P14382750437389281323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016783 (A016777 n).toNat : ℚ) / (A016777 (A016777 n).toNat ^ 2 : ℚ)

end

end A017213.P14382750437389281323

namespace A017213

/-- `A016783(A016777(n))/A016777(A016777(n))²` -/
def P14382750437389281323.Spec : Prop :=
  ∀ n, P14382750437389281323.a n = (A017213 n : ℚ)

end A017213

/-! ## A017213.P5899981692329687008

`A016937(A016777(n))/32`
-/

namespace A017213.P5899981692329687008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016937 (A016777 n).toNat : ℚ) / 32

end

end A017213.P5899981692329687008

namespace A017213

/-- `A016937(A016777(n))/32` -/
def P5899981692329687008.Spec : Prop :=
  ∀ n, P5899981692329687008.a n = (A017213 n : ℚ)

end A017213

/-! ## A017213.P6037947180652841767

`A000584(9*n+4)`
-/

namespace A017213.P6037947180652841767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (9 * n + 4)

end

end A017213.P6037947180652841767

namespace A017213

/-- `A000584(9*n+4)` -/
def P6037947180652841767.Spec : Prop :=
  ∀ n, P6037947180652841767.a n = A017213 n

end A017213

/-!
# A017214: a(n) = (9*n + 4)^6.

The programs for A017214, the canonical program `A017214.P1941988033707041384` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017214 has offset 0).

The definition of A017214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+4)^6` (program `A017214.P1941988033707041384`, by `A017214.P1941988033707041384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017214.P1941988033707041384

`(9*n+4)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017214

/-- `(9*n+4)^6` -/
def P1941988033707041384.Spec : Prop :=
  ∀ n, (P1941988033707041384.a n : ℤ) = A017214 n

theorem P1941988033707041384.correct : P1941988033707041384.Spec := by
  intro n
  simp only [A017214]

end A017214

/-! ## A017214.P3705113391557624811

`A017211(n)²`
-/

namespace A017214.P3705113391557624811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017211 n ^ 2

end

end A017214.P3705113391557624811

namespace A017214

/-- `A017211(n)²` -/
def P3705113391557624811.Spec : Prop :=
  ∀ n, P3705113391557624811.a n = A017214 n

theorem P3705113391557624811.correct : P3705113391557624811.Spec := by
  intro n
  simp only [A017214, Nat.add_sub_cancel, A017214.P3705113391557624811.a, A017214.P1941988033707041384.a, A017211, A017211.P8534542557181721998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017214

/-! ## A017214.P6644169359017443569

`sqrt(A017212(n)^3)`
-/

namespace A017214.P6644169359017443569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017212 n ^ 3 : ℝ)

end

end A017214.P6644169359017443569

namespace A017214

/-- `sqrt(A017212(n)^3)` -/
def P6644169359017443569.Spec : Prop :=
  ∀ n, P6644169359017443569.a n = (A017214 n : ℝ)

end A017214

/-! ## A017214.P6981050333183974438

`A017209(n)*A017213(n)`
-/

namespace A017214.P6981050333183974438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n * A017213 n

end

end A017214.P6981050333183974438

namespace A017214

/-- `A017209(n)*A017213(n)` -/
def P6981050333183974438.Spec : Prop :=
  ∀ n, P6981050333183974438.a n = A017214 n

theorem P6981050333183974438.correct : P6981050333183974438.Spec := by
  intro n
  simp only [A017214, Nat.add_sub_cancel, A017214.P6981050333183974438.a, A017214.P1941988033707041384.a, A017209, A017209.P14094936957545695605.a, A017213, A017213.P3831774299691324808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017214

/-! ## A017214.P1578362019531654272

`A017210(n)*A017212(n)`
-/

namespace A017214.P1578362019531654272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017210 n * A017212 n

end

end A017214.P1578362019531654272

namespace A017214

/-- `A017210(n)*A017212(n)` -/
def P1578362019531654272.Spec : Prop :=
  ∀ n, P1578362019531654272.a n = A017214 n

theorem P1578362019531654272.correct : P1578362019531654272.Spec := by
  intro n
  simp only [A017214, Nat.add_sub_cancel, A017214.P1578362019531654272.a, A017214.P1941988033707041384.a, A017210, A017210.P1675687124226555491.a, A017212, A017212.P6894106073648720689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017214

/-! ## A017214.P1662294496144666774

`(A017209(n)*A017210(n))²`
-/

namespace A017214.P1662294496144666774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n * A017210 n) ^ 2

end

end A017214.P1662294496144666774

namespace A017214

/-- `(A017209(n)*A017210(n))²` -/
def P1662294496144666774.Spec : Prop :=
  ∀ n, P1662294496144666774.a n = A017214 n

theorem P1662294496144666774.correct : P1662294496144666774.Spec := by
  intro n
  simp only [A017214, Nat.add_sub_cancel, A017214.P1662294496144666774.a, A017214.P1941988033707041384.a, A017209, A017209.P14094936957545695605.a, A017210, A017210.P1675687124226555491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017214

/-! ## A017214.P8323073824629576236

`A017209(n)²*A017212(n)`
-/

namespace A017214.P8323073824629576236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n ^ 2 * A017212 n

end

end A017214.P8323073824629576236

namespace A017214

/-- `A017209(n)²*A017212(n)` -/
def P8323073824629576236.Spec : Prop :=
  ∀ n, P8323073824629576236.a n = A017214 n

theorem P8323073824629576236.correct : P8323073824629576236.Spec := by
  intro n
  simp only [A017214, Nat.add_sub_cancel, A017214.P8323073824629576236.a, A017214.P1941988033707041384.a, A017209, A017209.P14094936957545695605.a, A017212, A017212.P6894106073648720689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017214

/-! ## A017214.P14977807607854126152

`(A017213(n)/A017210(n))²`
-/

namespace A017214.P14977807607854126152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017213 n : ℚ) / (A017210 n : ℚ)) ^ 2

end

end A017214.P14977807607854126152

namespace A017214

/-- `(A017213(n)/A017210(n))²` -/
def P14977807607854126152.Spec : Prop :=
  ∀ n, P14977807607854126152.a n = (A017214 n : ℚ)

end A017214

/-! ## A017214.P1855329942268010331

`(A017212(n)²/A017213(n))²`
-/

namespace A017214.P1855329942268010331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017212 n ^ 2 : ℚ) / (A017213 n : ℚ)) ^ 2

end

end A017214.P1855329942268010331

namespace A017214

/-- `(A017212(n)²/A017213(n))²` -/
def P1855329942268010331.Spec : Prop :=
  ∀ n, P1855329942268010331.a n = (A017214 n : ℚ)

end A017214

/-! ## A017214.P2886929049007603292

`sqrt(sqrt(A017216(n))*A017216(n))`
-/

namespace A017214.P2886929049007603292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017216 n : ℝ) * (A017216 n : ℝ))

end

end A017214.P2886929049007603292

namespace A017214

/-- `sqrt(sqrt(A017216(n))*A017216(n))` -/
def P2886929049007603292.Spec : Prop :=
  ∀ n, P2886929049007603292.a n = (A017214 n : ℝ)

end A017214

/-! ## A017214.P17417510954228104383

`A017211(A038572(2*n))*A017211(n)`
-/

namespace A017214.P17417510954228104383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017211 (A038572 (2 * n)).toNat * A017211 n

end

end A017214.P17417510954228104383

namespace A017214

/-- `A017211(A038572(2*n))*A017211(n)` -/
def P17417510954228104383.Spec : Prop :=
  ∀ n, P17417510954228104383.a n = A017214 n

end A017214

/-! ## A017214.P4658931423644428417

`(Δ[A022266(n)]^3)²`
-/

namespace A017214.P4658931423644428417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017214.P4658931423644428417

namespace A017214

/-- `(Δ[A022266(n)]^3)²` -/
def P4658931423644428417.Spec : Prop :=
  ∀ n, P4658931423644428417.a n = A017214 n

end A017214

/-! ## A017214.P1932557580828376046

`(Δ[A276819(n)]^3)²`
-/

namespace A017214.P1932557580828376046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017214.P1932557580828376046

namespace A017214

/-- `(Δ[A276819(n)]^3)²` -/
def P1932557580828376046.Spec : Prop :=
  ∀ n, P1932557580828376046.a n = A017214 n

end A017214

/-! ## A017214.P10109406079893711559

`(A087444(2*(n+1))²*A087444(2*(n+1)))²`
-/

namespace A017214.P10109406079893711559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087444 (2 * (n + 1)) ^ 2 * A087444 (2 * (n + 1))) ^ 2

end

end A017214.P10109406079893711559

namespace A017214

/-- `(A087444(2*(n+1))²*A087444(2*(n+1)))²` -/
def P10109406079893711559.Spec : Prop :=
  ∀ n, P10109406079893711559.a n = A017214 n

end A017214

/-! ## A017214.P11092240133748781294

`A016782(3*n+1)`
-/

namespace A017214.P11092240133748781294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 (3 * n + 1)

end

end A017214.P11092240133748781294

namespace A017214

/-- `A016782(3*n+1)` -/
def P11092240133748781294.Spec : Prop :=
  ∀ n, P11092240133748781294.a n = A017214 n

theorem P11092240133748781294.correct : P11092240133748781294.Spec := by
  intro n
  simp only [A017214, Nat.add_sub_cancel, A017214.P11092240133748781294.a, A017214.P1941988033707041384.a, A016782, A016782.P12520626953037923259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017214

/-! ## A017214.P11322180558637447003

`(A016777(A016777(n))^3)²`
-/

namespace A017214.P11322180558637447003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 (A016777 n).toNat ^ 3) ^ 2

end

end A017214.P11322180558637447003

namespace A017214

/-- `(A016777(A016777(n))^3)²` -/
def P11322180558637447003.Spec : Prop :=
  ∀ n, P11322180558637447003.a n = A017214 n

end A017214

/-! ## A017214.P16457201813471045072

`A016779(3*n+1)²`
-/

namespace A017214.P16457201813471045072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 (3 * n + 1) ^ 2

end

end A017214.P16457201813471045072

namespace A017214

/-- `A016779(3*n+1)²` -/
def P16457201813471045072.Spec : Prop :=
  ∀ n, P16457201813471045072.a n = A017214 n

theorem P16457201813471045072.correct : P16457201813471045072.Spec := by
  intro n
  simp only [A017214, Nat.add_sub_cancel, A017214.P16457201813471045072.a, A017214.P1941988033707041384.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017214

/-! ## A017214.P15211143377082992802

`A118719(A016957(n))²`
-/

namespace A017214.P15211143377082992802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118719 (A016957 n).toNat ^ 2

end

end A017214.P15211143377082992802

namespace A017214

/-- `A118719(A016957(n))²` -/
def P15211143377082992802.Spec : Prop :=
  ∀ n, P15211143377082992802.a n = A017214 n

end A017214

/-! ## A017214.P586424396814903129

`A118719(A016933(n)+2)²`
-/

namespace A017214.P586424396814903129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118719 (A016933 n + 2).toNat ^ 2

end

end A017214.P586424396814903129

namespace A017214

/-- `A118719(A016933(n)+2)²` -/
def P586424396814903129.Spec : Prop :=
  ∀ n, P586424396814903129.a n = A017214 n

end A017214

/-!
# A017215: a(n) = (9*n + 4)^7.

The programs for A017215, the canonical program `A017215.P15934033360543450581` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017215 has offset 0).

The definition of A017215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+4)^7` (program `A017215.P15934033360543450581`, by `A017215.P15934033360543450581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017215.P15934033360543450581

`(9*n+4)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017215

/-- `(9*n+4)^7` -/
def P15934033360543450581.Spec : Prop :=
  ∀ n, (P15934033360543450581.a n : ℤ) = A017215 n

theorem P15934033360543450581.correct : P15934033360543450581.Spec := by
  intro n
  simp only [A017215]

end A017215

/-! ## A017215.P3769587562623122517

`A017209(n)*A017214(n)`
-/

namespace A017215.P3769587562623122517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n * A017214 n

end

end A017215.P3769587562623122517

namespace A017215

/-- `A017209(n)*A017214(n)` -/
def P3769587562623122517.Spec : Prop :=
  ∀ n, P3769587562623122517.a n = A017215 n

theorem P3769587562623122517.correct : P3769587562623122517.Spec := by
  intro n
  simp only [A017215, Nat.add_sub_cancel, A017215.P3769587562623122517.a, A017215.P15934033360543450581.a, A017209, A017209.P14094936957545695605.a, A017214, A017214.P1941988033707041384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017215

/-! ## A017215.P12056518662652092896

`A017210(n)*A017213(n)`
-/

namespace A017215.P12056518662652092896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017210 n * A017213 n

end

end A017215.P12056518662652092896

namespace A017215

/-- `A017210(n)*A017213(n)` -/
def P12056518662652092896.Spec : Prop :=
  ∀ n, P12056518662652092896.a n = A017215 n

theorem P12056518662652092896.correct : P12056518662652092896.Spec := by
  intro n
  simp only [A017215, Nat.add_sub_cancel, A017215.P12056518662652092896.a, A017215.P15934033360543450581.a, A017210, A017210.P1675687124226555491.a, A017213, A017213.P3831774299691324808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017215

/-! ## A017215.P16326065285964039806

`A017211(n)*A017212(n)`
-/

namespace A017215.P16326065285964039806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017211 n * A017212 n

end

end A017215.P16326065285964039806

namespace A017215

/-- `A017211(n)*A017212(n)` -/
def P16326065285964039806.Spec : Prop :=
  ∀ n, P16326065285964039806.a n = A017215 n

theorem P16326065285964039806.correct : P16326065285964039806.Spec := by
  intro n
  simp only [A017215, Nat.add_sub_cancel, A017215.P16326065285964039806.a, A017215.P15934033360543450581.a, A017211, A017211.P8534542557181721998.a, A017212, A017212.P6894106073648720689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017215

/-! ## A017215.P1654451661520633959

`A017209(n)²*A017213(n)`
-/

namespace A017215.P1654451661520633959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n ^ 2 * A017213 n

end

end A017215.P1654451661520633959

namespace A017215

/-- `A017209(n)²*A017213(n)` -/
def P1654451661520633959.Spec : Prop :=
  ∀ n, P1654451661520633959.a n = A017215 n

theorem P1654451661520633959.correct : P1654451661520633959.Spec := by
  intro n
  simp only [A017215, Nat.add_sub_cancel, A017215.P1654451661520633959.a, A017215.P15934033360543450581.a, A017209, A017209.P14094936957545695605.a, A017213, A017213.P3831774299691324808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017215

/-! ## A017215.P18384249615238810830

`A017210(n)²*A017211(n)`
-/

namespace A017215.P18384249615238810830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017210 n ^ 2 * A017211 n

end

end A017215.P18384249615238810830

namespace A017215

/-- `A017210(n)²*A017211(n)` -/
def P18384249615238810830.Spec : Prop :=
  ∀ n, P18384249615238810830.a n = A017215 n

theorem P18384249615238810830.correct : P18384249615238810830.Spec := by
  intro n
  simp only [A017215, Nat.add_sub_cancel, A017215.P18384249615238810830.a, A017215.P15934033360543450581.a, A017210, A017210.P1675687124226555491.a, A017211, A017211.P8534542557181721998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017215

/-! ## A017215.P11037455014996462904

`A017211(n)²*A017209(n)`
-/

namespace A017215.P11037455014996462904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017211 n ^ 2 * A017209 n

end

end A017215.P11037455014996462904

namespace A017215

/-- `A017211(n)²*A017209(n)` -/
def P11037455014996462904.Spec : Prop :=
  ∀ n, P11037455014996462904.a n = A017215 n

theorem P11037455014996462904.correct : P11037455014996462904.Spec := by
  intro n
  simp only [A017215, Nat.add_sub_cancel, A017215.P11037455014996462904.a, A017215.P15934033360543450581.a, A017209, A017209.P14094936957545695605.a, A017211, A017211.P8534542557181721998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017215

/-! ## A017215.P6604501413941469713

`A017212(n)²/A017209(n)`
-/

namespace A017215.P6604501413941469713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017212 n ^ 2 : ℚ) / (A017209 n : ℚ)

end

end A017215.P6604501413941469713

namespace A017215

/-- `A017212(n)²/A017209(n)` -/
def P6604501413941469713.Spec : Prop :=
  ∀ n, P6604501413941469713.a n = (A017215 n : ℚ)

end A017215

/-! ## A017215.P9460918739807704832

`A017210(n)²²/A017209(n)`
-/

namespace A017215.P9460918739807704832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017210 n ^ 2) ^ 2 : ℚ) / (A017209 n : ℚ)

end

end A017215.P9460918739807704832

namespace A017215

/-- `A017210(n)²²/A017209(n)` -/
def P9460918739807704832.Spec : Prop :=
  ∀ n, P9460918739807704832.a n = (A017215 n : ℚ)

end A017215

/-! ## A017215.P15191383158647298235

`A017213(n)/A017211(n)*A017213(n)`
-/

namespace A017215.P15191383158647298235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017213 n : ℚ) / (A017211 n : ℚ) * (A017213 n : ℚ)

end

end A017215.P15191383158647298235

namespace A017215

/-- `A017213(n)/A017211(n)*A017213(n)` -/
def P15191383158647298235.Spec : Prop :=
  ∀ n, P15191383158647298235.a n = (A017215 n : ℚ)

end A017215

/-! ## A017215.P5499889533245196431

`A017212(n)/A017213(n)*A017212(n)²`
-/

namespace A017215.P5499889533245196431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017212 n : ℚ) / (A017213 n : ℚ) * (A017212 n ^ 2 : ℚ)

end

end A017215.P5499889533245196431

namespace A017215

/-- `A017212(n)/A017213(n)*A017212(n)²` -/
def P5499889533245196431.Spec : Prop :=
  ∀ n, P5499889533245196431.a n = (A017215 n : ℚ)

end A017215

/-! ## A017215.P1772401635455844328

`A016783(3*n+1)`
-/

namespace A017215.P1772401635455844328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016783 (3 * n + 1)

end

end A017215.P1772401635455844328

namespace A017215

/-- `A016783(3*n+1)` -/
def P1772401635455844328.Spec : Prop :=
  ∀ n, P1772401635455844328.a n = A017215 n

theorem P1772401635455844328.correct : P1772401635455844328.Spec := by
  intro n
  simp only [A017215, Nat.add_sub_cancel, A017215.P1772401635455844328.a, A017215.P15934033360543450581.a, A016783, A016783.P4851290957634662023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017215

/-! ## A017215.P16754442035492463583

`A016784(A016777(n))/A016777(A016777(n))`
-/

namespace A017215.P16754442035492463583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016784 (A016777 n).toNat : ℚ) / (A016777 (A016777 n).toNat : ℚ)

end

end A017215.P16754442035492463583

namespace A017215

/-- `A016784(A016777(n))/A016777(A016777(n))` -/
def P16754442035492463583.Spec : Prop :=
  ∀ n, P16754442035492463583.a n = (A017215 n : ℚ)

end A017215

/-! ## A017215.P12017570315670071199

`A016785(3*n+1)/A016778(A016777(n))`
-/

namespace A017215.P12017570315670071199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016785 (3 * n + 1) : ℚ) / (A016778 (A016777 n).toNat : ℚ)

end

end A017215.P12017570315670071199

namespace A017215

/-- `A016785(3*n+1)/A016778(A016777(n))` -/
def P12017570315670071199.Spec : Prop :=
  ∀ n, P12017570315670071199.a n = (A017215 n : ℚ)

end A017215

/-! ## A017215.P11849993473362683133

`A001015(9*n+4)`
-/

namespace A017215.P11849993473362683133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (9 * n + 4)

end

end A017215.P11849993473362683133

namespace A017215

/-- `A001015(9*n+4)` -/
def P11849993473362683133.Spec : Prop :=
  ∀ n, P11849993473362683133.a n = A017215 n

end A017215

/-! ## A017215.P18086141042838812997

`A000578(9*n+4)²*(9*n+4)`
-/

namespace A017215.P18086141042838812997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (9 * n + 4) ^ 2 * (9 * n + 4 : ℤ)

end

end A017215.P18086141042838812997

namespace A017215

/-- `A000578(9*n+4)²*(9*n+4)` -/
def P18086141042838812997.Spec : Prop :=
  ∀ n, P18086141042838812997.a n = A017215 n

theorem P18086141042838812997.correct : P18086141042838812997.Spec := by
  intro n
  simp only [A017215, Nat.add_sub_cancel, A017215.P18086141042838812997.a, A017215.P15934033360543450581.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017215

/-!
# A017216: a(n) = (9*n + 4)^8.

The programs for A017216, the canonical program `A017216.P8569031641524378307` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017216 has offset 0).

The definition of A017216 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+4)^8` (program `A017216.P8569031641524378307`, by `A017216.P8569031641524378307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017216.P8569031641524378307

`(9*n+4)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017216

/-- `(9*n+4)^8` -/
def P8569031641524378307.Spec : Prop :=
  ∀ n, (P8569031641524378307.a n : ℤ) = A017216 n

theorem P8569031641524378307.correct : P8569031641524378307.Spec := by
  intro n
  simp only [A017216]

end A017216

/-! ## A017216.P7130735673322519697

`(lcm(4, 2*n+1)+n)²²²`
-/

namespace A017216.P7130735673322519697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 4 (2 * n + 1) + n) ^ 2) ^ 2) ^ 2

end

end A017216.P7130735673322519697

namespace A017216

/-- `(lcm(4, 2*n+1)+n)²²²` -/
def P7130735673322519697.Spec : Prop :=
  ∀ n, (P7130735673322519697.a n : ℤ) = A017216 n

end A017216

/-! ## A017216.P2146245056122059672

`A017212(n)²`
-/

namespace A017216.P2146245056122059672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017212 n ^ 2

end

end A017216.P2146245056122059672

namespace A017216

/-- `A017212(n)²` -/
def P2146245056122059672.Spec : Prop :=
  ∀ n, P2146245056122059672.a n = A017216 n

theorem P2146245056122059672.correct : P2146245056122059672.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P2146245056122059672.a, A017216.P8569031641524378307.a, A017212, A017212.P6894106073648720689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P13918784835889709877

`A017210(n)²²`
-/

namespace A017216.P13918784835889709877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017210 n ^ 2) ^ 2

end

end A017216.P13918784835889709877

namespace A017216

/-- `A017210(n)²²` -/
def P13918784835889709877.Spec : Prop :=
  ∀ n, P13918784835889709877.a n = A017216 n

theorem P13918784835889709877.correct : P13918784835889709877.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P13918784835889709877.a, A017216.P8569031641524378307.a, A017210, A017210.P1675687124226555491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P7211202955880831080

`(A017209(n)^4)²`
-/

namespace A017216.P7211202955880831080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n ^ 4) ^ 2

end

end A017216.P7211202955880831080

namespace A017216

/-- `(A017209(n)^4)²` -/
def P7211202955880831080.Spec : Prop :=
  ∀ n, P7211202955880831080.a n = A017216 n

theorem P7211202955880831080.correct : P7211202955880831080.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P7211202955880831080.a, A017216.P8569031641524378307.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P302996929922411094

`(A017197(n)+1)²²²`
-/

namespace A017216.P302996929922411094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017197 n + 1) ^ 2) ^ 2) ^ 2

end

end A017216.P302996929922411094

namespace A017216

/-- `(A017197(n)+1)²²²` -/
def P302996929922411094.Spec : Prop :=
  ∀ n, P302996929922411094.a n = A017216 n

theorem P302996929922411094.correct : P302996929922411094.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P302996929922411094.a, A017216.P8569031641524378307.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P7171444100905132979

`(A017185(n)+2)²²²`
-/

namespace A017216.P7171444100905132979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017185 n + 2) ^ 2) ^ 2) ^ 2

end

end A017216.P7171444100905132979

namespace A017216

/-- `(A017185(n)+2)²²²` -/
def P7171444100905132979.Spec : Prop :=
  ∀ n, P7171444100905132979.a n = A017216 n

theorem P7171444100905132979.correct : P7171444100905132979.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P7171444100905132979.a, A017216.P8569031641524378307.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P15146572731636899015

`(1-A017221(n))²²²`
-/

namespace A017216.P15146572731636899015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017221 n) ^ 2) ^ 2) ^ 2

end

end A017216.P15146572731636899015

namespace A017216

/-- `(1-A017221(n))²²²` -/
def P15146572731636899015.Spec : Prop :=
  ∀ n, P15146572731636899015.a n = A017216 n

theorem P15146572731636899015.correct : P15146572731636899015.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P15146572731636899015.a, A017216.P8569031641524378307.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P7636710679377687334

`(2-A017233(n))²²²`
-/

namespace A017216.P7636710679377687334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017233 n) ^ 2) ^ 2) ^ 2

end

end A017216.P7636710679377687334

namespace A017216

/-- `(2-A017233(n))²²²` -/
def P7636710679377687334.Spec : Prop :=
  ∀ n, P7636710679377687334.a n = A017216 n

theorem P7636710679377687334.correct : P7636710679377687334.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P7636710679377687334.a, A017216.P8569031641524378307.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P9147851507994531796

`(A017113(n)+n)²²²`
-/

namespace A017216.P9147851507994531796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017113 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017216.P9147851507994531796

namespace A017216

/-- `(A017113(n)+n)²²²` -/
def P9147851507994531796.Spec : Prop :=
  ∀ n, P9147851507994531796.a n = A017216 n

theorem P9147851507994531796.correct : P9147851507994531796.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P9147851507994531796.a, A017216.P8569031641524378307.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P17473715332772375087

`(n-A017317(n))²²²`
-/

namespace A017216.P17473715332772375087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017317 n) ^ 2) ^ 2) ^ 2

end

end A017216.P17473715332772375087

namespace A017216

/-- `(n-A017317(n))²²²` -/
def P17473715332772375087.Spec : Prop :=
  ∀ n, P17473715332772375087.a n = A017216 n

theorem P17473715332772375087.correct : P17473715332772375087.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P17473715332772375087.a, A017216.P8569031641524378307.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P7884513706641547666

`(1-A154295(n+1))²²`
-/

namespace A017216.P7884513706641547666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A154295 (n + 1)) ^ 2) ^ 2

end

end A017216.P7884513706641547666

namespace A017216

/-- `(1-A154295(n+1))²²` -/
def P7884513706641547666.Spec : Prop :=
  ∀ n, P7884513706641547666.a n = A017216 n

theorem P7884513706641547666.correct : P7884513706641547666.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P7884513706641547666.a, A017216.P8569031641524378307.a, A154295, A154295.P13439465799666436317.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P4301550031004518481

`A017210(n)*A017214(n)`
-/

namespace A017216.P4301550031004518481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017210 n * A017214 n

end

end A017216.P4301550031004518481

namespace A017216

/-- `A017210(n)*A017214(n)` -/
def P4301550031004518481.Spec : Prop :=
  ∀ n, P4301550031004518481.a n = A017216 n

theorem P4301550031004518481.correct : P4301550031004518481.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P4301550031004518481.a, A017216.P8569031641524378307.a, A017210, A017210.P1675687124226555491.a, A017214, A017214.P1941988033707041384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P9628305514218750875

`A017211(n)*A017213(n)`
-/

namespace A017216.P9628305514218750875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017211 n * A017213 n

end

end A017216.P9628305514218750875

namespace A017216

/-- `A017211(n)*A017213(n)` -/
def P9628305514218750875.Spec : Prop :=
  ∀ n, P9628305514218750875.a n = A017216 n

theorem P9628305514218750875.correct : P9628305514218750875.Spec := by
  intro n
  simp only [A017216, Nat.add_sub_cancel, A017216.P9628305514218750875.a, A017216.P8569031641524378307.a, A017211, A017211.P8534542557181721998.a, A017213, A017213.P3831774299691324808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017216

/-! ## A017216.P988843264799215392

`A017214(n)/(1/A017209(n))²`
-/

namespace A017216.P988843264799215392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017214 n : ℚ) / (1 / (A017209 n : ℚ)) ^ 2

end

end A017216.P988843264799215392

namespace A017216

/-- `A017214(n)/(1/A017209(n))²` -/
def P988843264799215392.Spec : Prop :=
  ∀ n, P988843264799215392.a n = (A017216 n : ℚ)

end A017216

/-! ## A017216.P8822774686418413028

`A017211(n)²*A017211(n)/A017209(n)`
-/

namespace A017216.P8822774686418413028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017211 n ^ 2 * A017211 n : ℚ) / (A017209 n : ℚ)

end

end A017216.P8822774686418413028

namespace A017216

/-- `A017211(n)²*A017211(n)/A017209(n)` -/
def P8822774686418413028.Spec : Prop :=
  ∀ n, P8822774686418413028.a n = (A017216 n : ℚ)

end A017216

/-! ## A017216.P5174023558059557330

`Δ[A022266(n)]²²²`
-/

namespace A017216.P5174023558059557330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017216.P5174023558059557330

namespace A017216

/-- `Δ[A022266(n)]²²²` -/
def P5174023558059557330.Spec : Prop :=
  ∀ n, P5174023558059557330.a n = A017216 n

end A017216

/-! ## A017216.P4564128865286158866

`Δ[A276819(n)]²²²`
-/

namespace A017216.P4564128865286158866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017216.P4564128865286158866

namespace A017216

/-- `Δ[A276819(n)]²²²` -/
def P4564128865286158866.Spec : Prop :=
  ∀ n, P4564128865286158866.a n = A017216 n

end A017216

/-! ## A017216.P3870350211892825057

`(A179805(n+2)-2)²²²`
-/

namespace A017216.P3870350211892825057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A179805 (n + 2) - 2) ^ 2) ^ 2) ^ 2

end

end A017216.P3870350211892825057

namespace A017216

/-- `(A179805(n+2)-2)²²²` -/
def P3870350211892825057.Spec : Prop :=
  ∀ n, P3870350211892825057.a n = A017216 n

end A017216

/-! ## A017216.P7337118429115964294

`lt[1, val(2*n+1, 3)]²²²`
-/

namespace A017216.P7337118429115964294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2) ^ 2) ^ 2

end

end A017216.P7337118429115964294

namespace A017216

/-- `lt[1, val(2*n+1, 3)]²²²` -/
def P7337118429115964294.Spec : Prop :=
  ∀ n, (P7337118429115964294.a n : ℤ) = A017216 n

end A017216

/-!
# A017217: a(n) = (9*n + 4)^9.

The programs for A017217, the canonical program `A017217.P3858293316745874115` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017217 has offset 0).

The definition of A017217 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+4)^9` (program `A017217.P3858293316745874115`, by `A017217.P3858293316745874115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017217.P3858293316745874115

`(9*n+4)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017217

/-- `(9*n+4)^9` -/
def P3858293316745874115.Spec : Prop :=
  ∀ n, (P3858293316745874115.a n : ℤ) = A017217 n

theorem P3858293316745874115.correct : P3858293316745874115.Spec := by
  intro n
  simp only [A017217]

end A017217

/-! ## A017217.P4705303474585201529

`sqrt(A017214(n)^3)`
-/

namespace A017217.P4705303474585201529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017214 n ^ 3 : ℝ)

end

end A017217.P4705303474585201529

namespace A017217

/-- `sqrt(A017214(n)^3)` -/
def P4705303474585201529.Spec : Prop :=
  ∀ n, P4705303474585201529.a n = (A017217 n : ℝ)

end A017217

/-! ## A017217.P12631690162447534000

`A017211(n)*A017214(n)`
-/

namespace A017217.P12631690162447534000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017211 n * A017214 n

end

end A017217.P12631690162447534000

namespace A017217

/-- `A017211(n)*A017214(n)` -/
def P12631690162447534000.Spec : Prop :=
  ∀ n, P12631690162447534000.a n = A017217 n

theorem P12631690162447534000.correct : P12631690162447534000.Spec := by
  intro n
  simp only [A017217, Nat.add_sub_cancel, A017217.P12631690162447534000.a, A017217.P3858293316745874115.a, A017211, A017211.P8534542557181721998.a, A017214, A017214.P1941988033707041384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017217

/-! ## A017217.P12506568589233220072

`A017212(n)*A017213(n)`
-/

namespace A017217.P12506568589233220072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017212 n * A017213 n

end

end A017217.P12506568589233220072

namespace A017217

/-- `A017212(n)*A017213(n)` -/
def P12506568589233220072.Spec : Prop :=
  ∀ n, P12506568589233220072.a n = A017217 n

theorem P12506568589233220072.correct : P12506568589233220072.Spec := by
  intro n
  simp only [A017217, Nat.add_sub_cancel, A017217.P12506568589233220072.a, A017217.P3858293316745874115.a, A017212, A017212.P6894106073648720689.a, A017213, A017213.P3831774299691324808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017217

/-! ## A017217.P16039990412874779369

`A017210(n)²*A017213(n)`
-/

namespace A017217.P16039990412874779369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017210 n ^ 2 * A017213 n

end

end A017217.P16039990412874779369

namespace A017217

/-- `A017210(n)²*A017213(n)` -/
def P16039990412874779369.Spec : Prop :=
  ∀ n, P16039990412874779369.a n = A017217 n

theorem P16039990412874779369.correct : P16039990412874779369.Spec := by
  intro n
  simp only [A017217, Nat.add_sub_cancel, A017217.P16039990412874779369.a, A017217.P3858293316745874115.a, A017210, A017210.P1675687124226555491.a, A017213, A017213.P3831774299691324808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017217

/-! ## A017217.P3772846527515705166

`A017212(n)²*A017209(n)`
-/

namespace A017217.P3772846527515705166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017212 n ^ 2 * A017209 n

end

end A017217.P3772846527515705166

namespace A017217

/-- `A017212(n)²*A017209(n)` -/
def P3772846527515705166.Spec : Prop :=
  ∀ n, P3772846527515705166.a n = A017217 n

theorem P3772846527515705166.correct : P3772846527515705166.Spec := by
  intro n
  simp only [A017217, Nat.add_sub_cancel, A017217.P3772846527515705166.a, A017217.P3858293316745874115.a, A017209, A017209.P14094936957545695605.a, A017212, A017212.P6894106073648720689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017217

/-! ## A017217.P15500634874900007480

`A017209(n)²²*A017213(n)`
-/

namespace A017217.P15500634874900007480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n ^ 2) ^ 2 * A017213 n

end

end A017217.P15500634874900007480

namespace A017217

/-- `A017209(n)²²*A017213(n)` -/
def P15500634874900007480.Spec : Prop :=
  ∀ n, P15500634874900007480.a n = A017217 n

theorem P15500634874900007480.correct : P15500634874900007480.Spec := by
  intro n
  simp only [A017217, Nat.add_sub_cancel, A017217.P15500634874900007480.a, A017217.P3858293316745874115.a, A017209, A017209.P14094936957545695605.a, A017213, A017213.P3831774299691324808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017217

/-! ## A017217.P2060709373054214423

`A017210(n)²²*A017209(n)`
-/

namespace A017217.P2060709373054214423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017210 n ^ 2) ^ 2 * A017209 n

end

end A017217.P2060709373054214423

namespace A017217

/-- `A017210(n)²²*A017209(n)` -/
def P2060709373054214423.Spec : Prop :=
  ∀ n, P2060709373054214423.a n = A017217 n

theorem P2060709373054214423.correct : P2060709373054214423.Spec := by
  intro n
  simp only [A017217, Nat.add_sub_cancel, A017217.P2060709373054214423.a, A017217.P3858293316745874115.a, A017209, A017209.P14094936957545695605.a, A017210, A017210.P1675687124226555491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017217

/-! ## A017217.P7128894434050648050

`A017209(n)*A017214(n)*A017209(n)²`
-/

namespace A017217.P7128894434050648050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n * A017214 n * A017209 n ^ 2

end

end A017217.P7128894434050648050

namespace A017217

/-- `A017209(n)*A017214(n)*A017209(n)²` -/
def P7128894434050648050.Spec : Prop :=
  ∀ n, P7128894434050648050.a n = A017217 n

theorem P7128894434050648050.correct : P7128894434050648050.Spec := by
  intro n
  simp only [A017217, Nat.add_sub_cancel, A017217.P7128894434050648050.a, A017217.P3858293316745874115.a, A017209, A017209.P14094936957545695605.a, A017214, A017214.P1941988033707041384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017217

/-! ## A017217.P12312977701482372011

`A016785(3*n+1)`
-/

namespace A017217.P12312977701482372011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016785 (3 * n + 1)

end

end A017217.P12312977701482372011

namespace A017217

/-- `A016785(3*n+1)` -/
def P12312977701482372011.Spec : Prop :=
  ∀ n, P12312977701482372011.a n = A017217 n

theorem P12312977701482372011.correct : P12312977701482372011.Spec := by
  intro n
  simp only [A017217, Nat.add_sub_cancel, A017217.P12312977701482372011.a, A017217.P3858293316745874115.a, A016785, A016785.P12257324286826069844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017217

/-! ## A017217.P6196742787984890391

`A016777(A016777(n))*A016784(A016777(n))`
-/

namespace A017217.P6196742787984890391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016777 n).toNat * A016784 (A016777 n).toNat

end

end A017217.P6196742787984890391

namespace A017217

/-- `A016777(A016777(n))*A016784(A016777(n))` -/
def P6196742787984890391.Spec : Prop :=
  ∀ n, P6196742787984890391.a n = A017217 n

end A017217

/-! ## A017217.P5700534712713202642

`A118719(A016957(n))²*A118719(A016957(n))`
-/

namespace A017217.P5700534712713202642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118719 (A016957 n).toNat ^ 2 * A118719 (A016957 n).toNat

end

end A017217.P5700534712713202642

namespace A017217

/-- `A118719(A016957(n))²*A118719(A016957(n))` -/
def P5700534712713202642.Spec : Prop :=
  ∀ n, P5700534712713202642.a n = A017217 n

end A017217

/-! ## A017217.P1949045507209136762

`A001017(9*n+4)`
-/

namespace A017217.P1949045507209136762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (9 * n + 4)

end

end A017217.P1949045507209136762

namespace A017217

/-- `A001017(9*n+4)` -/
def P1949045507209136762.Spec : Prop :=
  ∀ n, P1949045507209136762.a n = A017217 n

end A017217

/-! ## A017217.P11913349541231274089

`A109588(A154266(n))²*A109588(A154266(n))`
-/

namespace A017217.P11913349541231274089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A154266 n).toNat ^ 2 * A109588 (A154266 n).toNat

end

end A017217.P11913349541231274089

namespace A017217

/-- `A109588(A154266(n))²*A109588(A154266(n))` -/
def P11913349541231274089.Spec : Prop :=
  ∀ n, P11913349541231274089.a n = A017217 n

end A017217

/-!
# A017218: 

The programs for A017218, there is no canonical definition to state claims against.
-/

/-! ## A017218.P10762849831176183128

`(9*n+4)^10`
-/

namespace A017218.P10762849831176183128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 4) ^ 10

end

end A017218.P10762849831176183128

/-! ## A017218.P10086679922446378151

`A017213(n)²`
-/

namespace A017218.P10086679922446378151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017213 n ^ 2

end

end A017218.P10086679922446378151

/-! ## A017218.P3523814020958205007

`sqrt(A017212(n)^5)`
-/

namespace A017218.P3523814020958205007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017212 n ^ 5 : ℝ)

end

end A017218.P3523814020958205007

/-! ## A017218.P4953025351322502804

`(A017209(n)²*A017211(n))²`
-/

namespace A017218.P4953025351322502804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n ^ 2 * A017211 n) ^ 2

end

end A017218.P4953025351322502804

/-! ## A017218.P950468682374399330

`sqrt(sqrt(A017216(n)))*A017216(n)`
-/

namespace A017218.P950468682374399330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017216 n : ℝ)) * (A017216 n : ℝ)

end

end A017218.P950468682374399330

/-! ## A017218.P15005471088122232709

`A016786(3*n+1)`
-/

namespace A017218.P15005471088122232709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016786 (3 * n + 1)

end

end A017218.P15005471088122232709

/-! ## A017218.P5194091416690817573

`A016781(A016781(n)/A016780(n))²`
-/

namespace A017218.P5194091416690817573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (SequenceMachineLib.roundAway ((A016781 n : ℚ) / (A016780 n : ℚ))).toNat ^ 2

end

end A017218.P5194091416690817573

/-! ## A017218.P9660605647788502664

`A008454(A017341(n)-(n+2))`
-/

namespace A017218.P9660605647788502664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n - (n + 2 : ℤ)).toNat

end

end A017218.P9660605647788502664

/-! ## A017218.P4090619099113196865

`A008454(A017341(n)-2-n)`
-/

namespace A017218.P4090619099113196865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n - 2 - (n : ℤ)).toNat

end

end A017218.P4090619099113196865

/-! ## A017218.P17051371314966031210

`A008454(A008586(2*n+1)+n)`
-/

namespace A017218.P17051371314966031210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008586 (2 * n + 1) + (n : ℤ)).toNat

end

end A017218.P17051371314966031210

/-! ## A017218.P8505922730801032279

`A008454(A016777(2*n+1+n))`
-/

namespace A017218.P8505922730801032279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (2 * n + 1 + n)).toNat

end

end A017218.P8505922730801032279

/-! ## A017218.P13167425373719499832

`A008454(A008587(2*n+1)-(n+1))`
-/

namespace A017218.P13167425373719499832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008587 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A017218.P13167425373719499832

/-! ## A017218.P14946607875458852430

`A008454(A016861(2*n+1)-(n+2))`
-/

namespace A017218.P14946607875458852430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016861 (2 * n + 1) - (n + 2 : ℤ)).toNat

end

end A017218.P14946607875458852430

/-! ## A017218.P12789027002058703211

`A008454(A001651(A008585(2*n+1)))`
-/

namespace A017218.P12789027002058703211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A001651 (A008585 (2 * n + 1)).toNat).toNat

end

end A017218.P12789027002058703211

/-!
# A017219: 

The programs for A017219, there is no canonical definition to state claims against.
-/

/-! ## A017219.P9163694486337769411

`(9*n+4)^11`
-/

namespace A017219.P9163694486337769411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 4) ^ 11

end

end A017219.P9163694486337769411

/-! ## A017219.P3802307721539450741

`A017213(n)²*A017209(n)`
-/

namespace A017219.P3802307721539450741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017213 n ^ 2 * A017209 n

end

end A017219.P3802307721539450741

/-! ## A017219.P17618380186089340802

`A017211(n)²²/A017209(n)`
-/

namespace A017219.P17618380186089340802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017211 n ^ 2) ^ 2 : ℚ) / (A017209 n : ℚ)

end

end A017219.P17618380186089340802

/-! ## A017219.P17129488433710743345

`A016787(3*n+1)`
-/

namespace A017219.P17129488433710743345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016787 (3 * n + 1)

end

end A017219.P17129488433710743345

/-! ## A017219.P2898396556511307331

`A008455(A017209(n))`
-/

namespace A017219.P2898396556511307331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017209 n).toNat

end

end A017219.P2898396556511307331

/-! ## A017219.P2739000703051703681

`A008455(A017197(n)+1)`
-/

namespace A017219.P2739000703051703681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017197 n + 1).toNat

end

end A017219.P2739000703051703681

/-! ## A017219.P11865712485596080457

`A008455(A017113(n)+n)`
-/

namespace A017219.P11865712485596080457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017113 n + (n : ℤ)).toNat

end

end A017219.P11865712485596080457

/-! ## A017219.P2398491729157385777

`A008455(A001651(A008585(2*n+1)))`
-/

namespace A017219.P2398491729157385777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A001651 (A008585 (2 * n + 1)).toNat).toNat

end

end A017219.P2398491729157385777

/-!
# A017220: 

The programs for A017220, there is no canonical definition to state claims against.
-/

/-! ## A017220.P17993932125366739856

`(9*n+4)^12`
-/

namespace A017220.P17993932125366739856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 4) ^ 12

end

end A017220.P17993932125366739856

/-! ## A017220.P16092441764802316426

`A017214(n)²`
-/

namespace A017220.P16092441764802316426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017214 n ^ 2

end

end A017220.P16092441764802316426

/-! ## A017220.P11986340798811702062

`sqrt(A017216(n))*A017216(n)`
-/

namespace A017220.P11986340798811702062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017216 n : ℝ) * (A017216 n : ℝ)

end

end A017220.P11986340798811702062

/-! ## A017220.P14698676109428735328

`(A061101(2*n+1)²*A061101(2*n+1))²`
-/

namespace A017220.P14698676109428735328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061101 (2 * n + 1) ^ 2 * A061101 (2 * n + 1)) ^ 2

end

end A017220.P14698676109428735328

/-! ## A017220.P11577093449847568414

`A016788(3*n+1)`
-/

namespace A017220.P11577093449847568414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016788 (3 * n + 1)

end

end A017220.P11577093449847568414

/-! ## A017220.P3685246543978922345

`A016779(A016789(n)-1)²²`
-/

namespace A017220.P3685246543978922345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016779 (A016789 n - 1).toNat ^ 2) ^ 2

end

end A017220.P3685246543978922345

/-! ## A017220.P7634175407977085490

`A016779(A001651(2*n+1))²²`
-/

namespace A017220.P7634175407977085490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016779 (A001651 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A017220.P7634175407977085490

/-! ## A017220.P2013296291082494964

`A016779(A016779(n)/A016778(n))²²`
-/

namespace A017220.P2013296291082494964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016779 (SequenceMachineLib.roundAway ((A016779 n : ℚ) / (A016778 n : ℚ))).toNat ^ 2) ^ 2

end

end A017220.P2013296291082494964

/-! ## A017220.P8810735425470840622

`A016779(A016780(n)/A016779(n))²²`
-/

namespace A017220.P8810735425470840622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016779 (SequenceMachineLib.roundAway ((A016780 n : ℚ) / (A016779 n : ℚ))).toNat ^ 2) ^ 2

end

end A017220.P8810735425470840622

/-! ## A017220.P6810548250690741788

`sqrt(A017216(n)^3)`
-/

namespace A017220.P6810548250690741788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017216 n ^ 3 : ℝ)

end

end A017220.P6810548250690741788

/-! ## A017220.P10795271581449448507

`A000578(A017185(n)+2)²²`
-/

namespace A017220.P10795271581449448507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017185 n + 2).toNat ^ 2) ^ 2

end

end A017220.P10795271581449448507

/-! ## A017220.P14938643995635304103

`A000578(A017221(n)-1)²²`
-/

namespace A017220.P14938643995635304103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017221 n - 1).toNat ^ 2) ^ 2

end

end A017220.P14938643995635304103

/-! ## A017220.P3352106529476380686

`A000578(A017233(n)-2)²²`
-/

namespace A017220.P3352106529476380686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017233 n - 2).toNat ^ 2) ^ 2

end

end A017220.P3352106529476380686

/-! ## A017220.P14652379887878977834

`A000578(A156638(2*n+1))²²`
-/

namespace A017220.P14652379887878977834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A156638 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A017220.P14652379887878977834

/-!
# A017221: a(n) = 9*n + 5.

The programs for A017221, the canonical program `A017221.P17146920171309072654` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017221 has offset 0).

The definition of A017221 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n+5` (program `A017221.P17146920171309072654`, by `A017221.P17146920171309072654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017221.P17146920171309072654

`9*n+5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017221

/-- `9*n+5` -/
def P17146920171309072654.Spec : Prop :=
  ∀ n, (P17146920171309072654.a n : ℤ) = A017221 n

theorem P17146920171309072654.correct : P17146920171309072654.Spec := by
  intro n
  simp only [A017221]

end A017221

/-!
# A017222: a(n) = (9*n + 5)^2.

The programs for A017222, the canonical program `A017222.P1298584065895099024` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017222 has offset 0).

The definition of A017222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+5)²` (program `A017222.P1298584065895099024`, by `A017222.P1298584065895099024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017222.P1298584065895099024

`(9*n+5)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017222

/-- `(9*n+5)²` -/
def P1298584065895099024.Spec : Prop :=
  ∀ n, (P1298584065895099024.a n : ℤ) = A017222 n

theorem P1298584065895099024.correct : P1298584065895099024.Spec := by
  intro n
  simp only [A017222]

end A017222

/-! ## A017222.P12980147194226498669

`a(n-1)+9*(18*n+1)` with `a(0)=25`
-/

namespace A017222.P12980147194226498669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25] fun n a =>
  a (n - 1) + 9 * (18 * n + 1)

end

end A017222.P12980147194226498669

namespace A017222

/-- `a(n-1)+9*(18*n+1)` -/
def P12980147194226498669.Spec : Prop :=
  ∀ n, (P12980147194226498669.a n : ℤ) = A017222 n

theorem P12980147194226498669.correct : P12980147194226498669.Spec := by
  intro n
  induction n with
  | zero => simp [A017222, A017222.P12980147194226498669.a, A017222.P1298584065895099024.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A017222, Nat.add_sub_cancel, A017222.P12980147194226498669.a, A017222.P1298584065895099024.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A017222

/-! ## A017222.P5365083089504070336

`record[(dr(5-n)-n)²]`
-/

namespace A017222.P5365083089504070336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (5 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017222.P5365083089504070336

namespace A017222

/-- `record[(dr(5-n)-n)²]` -/
def P5365083089504070336.Spec : Prop :=
  ∀ n, P5365083089504070336.a n = A017222 n

end A017222

/-! ## A017222.P2395895475154318535

`record[((n+5)/dr(n+1))²]`
-/

namespace A017222.P2395895475154318535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 5 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017222.P2395895475154318535

namespace A017222

/-- `record[((n+5)/dr(n+1))²]` -/
def P2395895475154318535.Spec : Prop :=
  ∀ n, P2395895475154318535.a n = (A017222 n : ℚ)

end A017222

/-! ## A017222.P88421847433977333

`record[(gcd(9, 3-n)+n+2)²]`
-/

namespace A017222.P88421847433977333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 9 (3 - (n : ℤ)) + (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017222.P88421847433977333

namespace A017222

/-- `record[(gcd(9, 3-n)+n+2)²]` -/
def P88421847433977333.Spec : Prop :=
  ∀ n, (P88421847433977333.a n : ℤ) = A017222 n

end A017222

/-! ## A017222.P7699088708075326491

`sqrt(A017224(n))`
-/

namespace A017222.P7699088708075326491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017224 n : ℝ)

end

end A017222.P7699088708075326491

namespace A017222

/-- `sqrt(A017224(n))` -/
def P7699088708075326491.Spec : Prop :=
  ∀ n, P7699088708075326491.a n = (A017222 n : ℝ)

end A017222

/-! ## A017222.P11048336097139414937

`sqrt(sqrt(A017228(n)))`
-/

namespace A017222.P11048336097139414937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017228 n : ℝ))

end

end A017222.P11048336097139414937

namespace A017222

/-- `sqrt(sqrt(A017228(n)))` -/
def P11048336097139414937.Spec : Prop :=
  ∀ n, P11048336097139414937.a n = (A017222 n : ℝ)

end A017222

/-! ## A017222.P13293056749171091042

`A154277(n+1)-1`
-/

namespace A017222.P13293056749171091042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 (n + 1) - 1

end

end A017222.P13293056749171091042

namespace A017222

/-- `A154277(n+1)-1` -/
def P13293056749171091042.Spec : Prop :=
  ∀ n, P13293056749171091042.a n = A017222 n

theorem P13293056749171091042.correct : P13293056749171091042.Spec := by
  intro n
  simp only [A017222, Nat.add_sub_cancel, A017222.P13293056749171091042.a, A017222.P1298584065895099024.a, A154277, A154277.P16860181885600045702.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017222

/-! ## A017222.P7099624473382812760

`A017226(n)^(1/3)`
-/

namespace A017222.P7099624473382812760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017226 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017222.P7099624473382812760

namespace A017222

/-- `A017226(n)^(1/3)` -/
def P7099624473382812760.Spec : Prop :=
  ∀ n, P7099624473382812760.a n = (A017222 n : ℝ)

end A017222

/-! ## A017222.P943889494581396492

`A017223(n)^(2/3)`
-/

namespace A017222.P943889494581396492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017223 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017222.P943889494581396492

namespace A017222

/-- `A017223(n)^(2/3)` -/
def P943889494581396492.Spec : Prop :=
  ∀ n, P943889494581396492.a n = (A017222 n : ℝ)

end A017222

/-! ## A017222.P7717187119181576844

`A177073(n)+A017221(n)`
-/

namespace A017222.P7717187119181576844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177073 n + A017221 n

end

end A017222.P7717187119181576844

namespace A017222

/-- `A177073(n)+A017221(n)` -/
def P7717187119181576844.Spec : Prop :=
  ∀ n, P7717187119181576844.a n = A017222 n

theorem P7717187119181576844.correct : P7717187119181576844.Spec := by
  intro n
  simp only [A017222, Nat.add_sub_cancel, A017222.P7717187119181576844.a, A017222.P1298584065895099024.a, A017221, A017221.P17146920171309072654.a, A177073, A177073.P12367509334309309339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017222

/-! ## A017222.P16527792196354154266

`A017223(n)/A017221(n)`
-/

namespace A017222.P16527792196354154266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017223 n : ℚ) / (A017221 n : ℚ)

end

end A017222.P16527792196354154266

namespace A017222

/-- `A017223(n)/A017221(n)` -/
def P16527792196354154266.Spec : Prop :=
  ∀ n, P16527792196354154266.a n = (A017222 n : ℚ)

end A017222

/-! ## A017222.P14779032102863453149

`A017225(n)/A017223(n)`
-/

namespace A017222.P14779032102863453149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017225 n : ℚ) / (A017223 n : ℚ)

end

end A017222.P14779032102863453149

namespace A017222

/-- `A017225(n)/A017223(n)` -/
def P14779032102863453149.Spec : Prop :=
  ∀ n, P14779032102863453149.a n = (A017222 n : ℚ)

end A017222

/-! ## A017222.P13255158592360094213

`A017226(n)/A017224(n)`
-/

namespace A017222.P13255158592360094213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017226 n : ℚ) / (A017224 n : ℚ)

end

end A017222.P13255158592360094213

namespace A017222

/-- `A017226(n)/A017224(n)` -/
def P13255158592360094213.Spec : Prop :=
  ∀ n, P13255158592360094213.a n = (A017222 n : ℚ)

end A017222

/-! ## A017222.P16136194813696440859

`A017227(n)/A017225(n)`
-/

namespace A017222.P16136194813696440859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017227 n : ℚ) / (A017225 n : ℚ)

end

end A017222.P16136194813696440859

namespace A017222

/-- `A017227(n)/A017225(n)` -/
def P16136194813696440859.Spec : Prop :=
  ∀ n, P16136194813696440859.a n = (A017222 n : ℚ)

end A017222

/-! ## A017222.P16047850356992278786

`A017228(n)/A017226(n)`
-/

namespace A017222.P16047850356992278786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017228 n : ℚ) / (A017226 n : ℚ)

end

end A017222.P16047850356992278786

namespace A017222

/-- `A017228(n)/A017226(n)` -/
def P16047850356992278786.Spec : Prop :=
  ∀ n, P16047850356992278786.a n = (A017222 n : ℚ)

end A017222

/-! ## A017222.P2573234553625357235

`A017229(n)/A017227(n)`
-/

namespace A017222.P2573234553625357235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / (A017227 n : ℚ)

end

end A017222.P2573234553625357235

namespace A017222

/-- `A017229(n)/A017227(n)` -/
def P2573234553625357235.Spec : Prop :=
  ∀ n, P2573234553625357235.a n = (A017222 n : ℚ)

end A017222

/-! ## A017222.P17788147454883661737

`A017228(n)/A017223(n)²`
-/

namespace A017222.P17788147454883661737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017228 n : ℚ) / (A017223 n ^ 2 : ℚ)

end

end A017222.P17788147454883661737

namespace A017222

/-- `A017228(n)/A017223(n)²` -/
def P17788147454883661737.Spec : Prop :=
  ∀ n, P17788147454883661737.a n = (A017222 n : ℚ)

end A017222

/-! ## A017222.P2483737070047057752

`A017224(n)²/A017223(n)²`
-/

namespace A017222.P2483737070047057752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017224 n ^ 2 : ℚ) / (A017223 n ^ 2 : ℚ)

end

end A017222.P2483737070047057752

namespace A017222

/-- `A017224(n)²/A017223(n)²` -/
def P2483737070047057752.Spec : Prop :=
  ∀ n, P2483737070047057752.a n = (A017222 n : ℚ)

end A017222

/-! ## A017222.P9316383112695382359

`A017221(n)²²²/A017226(n)`
-/

namespace A017222.P9316383112695382359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017221 n ^ 2) ^ 2) ^ 2 : ℚ) / (A017226 n : ℚ)

end

end A017222.P9316383112695382359

namespace A017222

/-- `A017221(n)²²²/A017226(n)` -/
def P9316383112695382359.Spec : Prop :=
  ∀ n, P9316383112695382359.a n = (A017222 n : ℚ)

end A017222

/-!
# A017223: a(n) = (9*n+5)^3.

The programs for A017223, the canonical program `A017223.P15998366256862935672` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017223 has offset 0).

The definition of A017223 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+5)^3` (program `A017223.P15998366256862935672`, by `A017223.P15998366256862935672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017223.P15998366256862935672

`(9*n+5)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017223

/-- `(9*n+5)^3` -/
def P15998366256862935672.Spec : Prop :=
  ∀ n, (P15998366256862935672.a n : ℤ) = A017223 n

theorem P15998366256862935672.correct : P15998366256862935672.Spec := by
  intro n
  simp only [A017223]

end A017223

/-! ## A017223.P7620795496407718107

`sqrt(A017226(n))`
-/

namespace A017223.P7620795496407718107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017226 n : ℝ)

end

end A017223.P7620795496407718107

namespace A017223

/-- `sqrt(A017226(n))` -/
def P7620795496407718107.Spec : Prop :=
  ∀ n, P7620795496407718107.a n = (A017223 n : ℝ)

end A017223

/-! ## A017223.P3997574812217696800

`sqrt(A017222(n)^3)`
-/

namespace A017223.P3997574812217696800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017222 n ^ 3 : ℝ)

end

end A017223.P3997574812217696800

namespace A017223

/-- `sqrt(A017222(n)^3)` -/
def P3997574812217696800.Spec : Prop :=
  ∀ n, P3997574812217696800.a n = (A017223 n : ℝ)

end A017223

/-! ## A017223.P18344512044892150317

`A017221(n)*A017222(n)`
-/

namespace A017223.P18344512044892150317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n * A017222 n

end

end A017223.P18344512044892150317

namespace A017223

/-- `A017221(n)*A017222(n)` -/
def P18344512044892150317.Spec : Prop :=
  ∀ n, P18344512044892150317.a n = A017223 n

theorem P18344512044892150317.correct : P18344512044892150317.Spec := by
  intro n
  simp only [A017223, Nat.add_sub_cancel, A017223.P18344512044892150317.a, A017223.P15998366256862935672.a, A017221, A017221.P17146920171309072654.a, A017222, A017222.P1298584065895099024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017223

/-! ## A017223.P1735460252178987403

`A017224(n)/A017221(n)`
-/

namespace A017223.P1735460252178987403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017224 n : ℚ) / (A017221 n : ℚ)

end

end A017223.P1735460252178987403

namespace A017223

/-- `A017224(n)/A017221(n)` -/
def P1735460252178987403.Spec : Prop :=
  ∀ n, P1735460252178987403.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P10738692730358886714

`A017225(n)/A017222(n)`
-/

namespace A017223.P10738692730358886714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017225 n : ℚ) / (A017222 n : ℚ)

end

end A017223.P10738692730358886714

namespace A017223

/-- `A017225(n)/A017222(n)` -/
def P10738692730358886714.Spec : Prop :=
  ∀ n, P10738692730358886714.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P9868902395918557328

`A017227(n)/A017224(n)`
-/

namespace A017223.P9868902395918557328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017227 n : ℚ) / (A017224 n : ℚ)

end

end A017223.P9868902395918557328

namespace A017223

/-- `A017227(n)/A017224(n)` -/
def P9868902395918557328.Spec : Prop :=
  ∀ n, P9868902395918557328.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P10025392274344893470

`A017228(n)/A017225(n)`
-/

namespace A017223.P10025392274344893470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017228 n : ℚ) / (A017225 n : ℚ)

end

end A017223.P10025392274344893470

namespace A017223

/-- `A017228(n)/A017225(n)` -/
def P10025392274344893470.Spec : Prop :=
  ∀ n, P10025392274344893470.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P17726130559573411439

`A017229(n)/A017226(n)`
-/

namespace A017223.P17726130559573411439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / (A017226 n : ℚ)

end

end A017223.P17726130559573411439

namespace A017223

/-- `A017229(n)/A017226(n)` -/
def P17726130559573411439.Spec : Prop :=
  ∀ n, P17726130559573411439.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P4729262202716542963

`A017224(n)²/A017225(n)`
-/

namespace A017223.P4729262202716542963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017224 n ^ 2 : ℚ) / (A017225 n : ℚ)

end

end A017223.P4729262202716542963

namespace A017223

/-- `A017224(n)²/A017225(n)` -/
def P4729262202716542963.Spec : Prop :=
  ∀ n, P4729262202716542963.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P13952158239630472054

`A017225(n)/A017221(n)²`
-/

namespace A017223.P13952158239630472054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017225 n : ℚ) / (A017221 n ^ 2 : ℚ)

end

end A017223.P13952158239630472054

namespace A017223

/-- `A017225(n)/A017221(n)²` -/
def P13952158239630472054.Spec : Prop :=
  ∀ n, P13952158239630472054.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P15410047047613466228

`A017227(n)/A017222(n)²`
-/

namespace A017223.P15410047047613466228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017227 n : ℚ) / (A017222 n ^ 2 : ℚ)

end

end A017223.P15410047047613466228

namespace A017223

/-- `A017227(n)/A017222(n)²` -/
def P15410047047613466228.Spec : Prop :=
  ∀ n, P15410047047613466228.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P4266324800524193969

`(A017233(n)-1)*A017222(n)`
-/

namespace A017223.P4266324800524193969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n - 1) * A017222 n

end

end A017223.P4266324800524193969

namespace A017223

/-- `(A017233(n)-1)*A017222(n)` -/
def P4266324800524193969.Spec : Prop :=
  ∀ n, P4266324800524193969.a n = A017223 n

theorem P4266324800524193969.correct : P4266324800524193969.Spec := by
  intro n
  simp only [A017223, Nat.add_sub_cancel, A017223.P4266324800524193969.a, A017223.P15998366256862935672.a, A017222, A017222.P1298584065895099024.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017223

/-! ## A017223.P3564067731896012606

`A017224(n)/(A017233(n)-1)`
-/

namespace A017223.P3564067731896012606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017224 n : ℚ) / (A017233 n - 1 : ℚ)

end

end A017223.P3564067731896012606

namespace A017223

/-- `A017224(n)/(A017233(n)-1)` -/
def P3564067731896012606.Spec : Prop :=
  ∀ n, P3564067731896012606.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P6608452343524598737

`2*A017224(n)/A082286(n)`
-/

namespace A017223.P6608452343524598737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A017224 n : ℚ) / (A082286 n : ℚ))

end

end A017223.P6608452343524598737

namespace A017223

/-- `2*A017224(n)/A082286(n)` -/
def P6608452343524598737.Spec : Prop :=
  ∀ n, P6608452343524598737.a n = (A017223 n : ℚ)

theorem P6608452343524598737.correct : P6608452343524598737.Spec := by
  intro n
  simp only [A017223, Nat.add_sub_cancel, A017223.P6608452343524598737.a, A017223.P15998366256862935672.a, A017224, A017224.P8965647001278764542.a, A082286, A082286.P10023046808755581064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017223

/-! ## A017223.P3696172000521992787

`A017227(n)/A017221(n)²²`
-/

namespace A017223.P3696172000521992787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017227 n : ℚ) / ((A017221 n ^ 2) ^ 2 : ℚ)

end

end A017223.P3696172000521992787

namespace A017223

/-- `A017227(n)/A017221(n)²²` -/
def P3696172000521992787.Spec : Prop :=
  ∀ n, P3696172000521992787.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P18069374558296063724

`A017225(n)/(1-A017233(n))²`
-/

namespace A017223.P18069374558296063724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017225 n : ℚ) / ((1 - A017233 n) ^ 2 : ℚ)

end

end A017223.P18069374558296063724

namespace A017223

/-- `A017225(n)/(1-A017233(n))²` -/
def P18069374558296063724.Spec : Prop :=
  ∀ n, P18069374558296063724.a n = (A017223 n : ℚ)

end A017223

/-! ## A017223.P12476551790124163112

`Δ[A022267(n)]²*Δ[A022267(n)]`
-/

namespace A017223.P12476551790124163112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017223.P12476551790124163112

namespace A017223

/-- `Δ[A022267(n)]²*Δ[A022267(n)]` -/
def P12476551790124163112.Spec : Prop :=
  ∀ n, P12476551790124163112.a n = A017223 n

end A017223

/-! ## A017223.P9731152892608561608

`A017222(n)+A017209(n)*A017222(n)`
-/

namespace A017223.P9731152892608561608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n + A017209 n * A017222 n

end

end A017223.P9731152892608561608

namespace A017223

/-- `A017222(n)+A017209(n)*A017222(n)` -/
def P9731152892608561608.Spec : Prop :=
  ∀ n, P9731152892608561608.a n = A017223 n

theorem P9731152892608561608.correct : P9731152892608561608.Spec := by
  intro n
  simp only [A017223, Nat.add_sub_cancel, A017223.P9731152892608561608.a, A017223.P15998366256862935672.a, A017209, A017209.P14094936957545695605.a, A017222, A017222.P1298584065895099024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017223

/-!
# A017224: a(n) = (9*n + 5)^4.

The programs for A017224, the canonical program `A017224.P8965647001278764542` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017224 has offset 0).

The definition of A017224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+5)^4` (program `A017224.P8965647001278764542`, by `A017224.P8965647001278764542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017224.P8965647001278764542

`(9*n+5)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017224

/-- `(9*n+5)^4` -/
def P8965647001278764542.Spec : Prop :=
  ∀ n, (P8965647001278764542.a n : ℤ) = A017224 n

theorem P8965647001278764542.correct : P8965647001278764542.Spec := by
  intro n
  simp only [A017224]

end A017224

/-! ## A017224.P5126754906913766293

`A000583(A017221(n))`
-/

namespace A017224.P5126754906913766293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A017221 n).toNat

end

end A017224.P5126754906913766293

namespace A017224

/-- `A000583(A017221(n))` -/
def P5126754906913766293.Spec : Prop :=
  ∀ n, P5126754906913766293.a n = A017224 n

end A017224

/-! ## A017224.P9557843160429728510

`(record[lcm(4, n+1)]+n+1)²²`
-/

namespace A017224.P9557843160429728510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1)) ^ 2) ^ 2

end

end A017224.P9557843160429728510

namespace A017224

/-- `(record[lcm(4, n+1)]+n+1)²²` -/
def P9557843160429728510.Spec : Prop :=
  ∀ n, (P9557843160429728510.a n : ℤ) = A017224 n

end A017224

/-! ## A017224.P16178025522556293171

`(Δ[lcm(2, (2*n)²)]+n+1)²²`
-/

namespace A017224.P16178025522556293171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017224.P16178025522556293171

namespace A017224

/-- `(Δ[lcm(2, (2*n)²)]+n+1)²²` -/
def P16178025522556293171.Spec : Prop :=
  ∀ n, P16178025522556293171.a n = A017224 n

end A017224

/-! ## A017224.P3880267185579727193

`Δ[C(n+1, 2)+(2*n)²]²²`
-/

namespace A017224.P3880267185579727193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017224.P3880267185579727193

namespace A017224

/-- `Δ[C(n+1, 2)+(2*n)²]²²` -/
def P3880267185579727193.Spec : Prop :=
  ∀ n, P3880267185579727193.a n = A017224 n

theorem P3880267185579727193.correct : P3880267185579727193.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P3880267185579727193.f1, A017224.P3880267185579727193.a, A017224.P8965647001278764542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P2033873390409546548

`(Δ[and(2*n+1, 2*n)²]+n+1)²²`
-/

namespace A017224.P2033873390409546548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017224.P2033873390409546548

namespace A017224

/-- `(Δ[and(2*n+1, 2*n)²]+n+1)²²` -/
def P2033873390409546548.Spec : Prop :=
  ∀ n, P2033873390409546548.a n = A017224 n

end A017224

/-! ## A017224.P8020119807362862069

`A017222(n)²`
-/

namespace A017224.P8020119807362862069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n ^ 2

end

end A017224.P8020119807362862069

namespace A017224

/-- `A017222(n)²` -/
def P8020119807362862069.Spec : Prop :=
  ∀ n, P8020119807362862069.a n = A017224 n

theorem P8020119807362862069.correct : P8020119807362862069.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P8020119807362862069.a, A017224.P8965647001278764542.a, A017222, A017222.P1298584065895099024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P4772325398246028515

`sqrt(A017228(n))`
-/

namespace A017224.P4772325398246028515
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017228 n : ℝ)

end

end A017224.P4772325398246028515

namespace A017224

/-- `sqrt(A017228(n))` -/
def P4772325398246028515.Spec : Prop :=
  ∀ n, P4772325398246028515.a n = (A017224 n : ℝ)

end A017224

/-! ## A017224.P16986428491966010788

`Δ[A022267(n)]²²`
-/

namespace A017224.P16986428491966010788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017224.P16986428491966010788

namespace A017224

/-- `Δ[A022267(n)]²²` -/
def P16986428491966010788.Spec : Prop :=
  ∀ n, P16986428491966010788.a n = A017224 n

end A017224

/-! ## A017224.P13518942182274635642

`(A017209(n)+1)²²`
-/

namespace A017224.P13518942182274635642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017209 n + 1) ^ 2) ^ 2

end

end A017224.P13518942182274635642

namespace A017224

/-- `(A017209(n)+1)²²` -/
def P13518942182274635642.Spec : Prop :=
  ∀ n, P13518942182274635642.a n = A017224 n

theorem P13518942182274635642.correct : P13518942182274635642.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P13518942182274635642.a, A017224.P8965647001278764542.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P15593929349181858605

`(A017197(n)+2)²²`
-/

namespace A017224.P15593929349181858605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017197 n + 2) ^ 2) ^ 2

end

end A017224.P15593929349181858605

namespace A017224

/-- `(A017197(n)+2)²²` -/
def P15593929349181858605.Spec : Prop :=
  ∀ n, P15593929349181858605.a n = A017224 n

theorem P15593929349181858605.correct : P15593929349181858605.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P15593929349181858605.a, A017224.P8965647001278764542.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P14713866090887913406

`(1-A017233(n))²²`
-/

namespace A017224.P14713866090887913406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017233 n) ^ 2) ^ 2

end

end A017224.P14713866090887913406

namespace A017224

/-- `(1-A017233(n))²²` -/
def P14713866090887913406.Spec : Prop :=
  ∀ n, P14713866090887913406.a n = A017224 n

theorem P14713866090887913406.correct : P14713866090887913406.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P14713866090887913406.a, A017224.P8965647001278764542.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P15648211888951019710

`(A017185(n)+3)²²`
-/

namespace A017224.P15648211888951019710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017185 n + 3) ^ 2) ^ 2

end

end A017224.P15648211888951019710

namespace A017224

/-- `(A017185(n)+3)²²` -/
def P15648211888951019710.Spec : Prop :=
  ∀ n, P15648211888951019710.a n = A017224 n

theorem P15648211888951019710.correct : P15648211888951019710.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P15648211888951019710.a, A017224.P8965647001278764542.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P4377616044698777220

`(2-A017245(n))²²`
-/

namespace A017224.P4377616044698777220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017245 n) ^ 2) ^ 2

end

end A017224.P4377616044698777220

namespace A017224

/-- `(2-A017245(n))²²` -/
def P4377616044698777220.Spec : Prop :=
  ∀ n, P4377616044698777220.a n = A017224 n

theorem P4377616044698777220.correct : P4377616044698777220.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P4377616044698777220.a, A017224.P8965647001278764542.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P1389438193787953343

`(3-A017257(n))²²`
-/

namespace A017224.P1389438193787953343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017257 n) ^ 2) ^ 2

end

end A017224.P1389438193787953343

namespace A017224

/-- `(3-A017257(n))²²` -/
def P1389438193787953343.Spec : Prop :=
  ∀ n, P1389438193787953343.a n = A017224 n

theorem P1389438193787953343.correct : P1389438193787953343.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P1389438193787953343.a, A017224.P8965647001278764542.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P2580293042869748226

`(A082286(n)/2)²²`
-/

namespace A017224.P2580293042869748226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A082286 n : ℚ) / 2) ^ 2) ^ 2

end

end A017224.P2580293042869748226

namespace A017224

/-- `(A082286(n)/2)²²` -/
def P2580293042869748226.Spec : Prop :=
  ∀ n, P2580293042869748226.a n = (A017224 n : ℚ)

theorem P2580293042869748226.correct : P2580293042869748226.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P2580293042869748226.a, A017224.P8965647001278764542.a, A082286, A082286.P10023046808755581064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P15097830929494490154

`(A154267(n)/3)²²`
-/

namespace A017224.P15097830929494490154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A154267 n : ℚ) / 3) ^ 2) ^ 2

end

end A017224.P15097830929494490154

namespace A017224

/-- `(A154267(n)/3)²²` -/
def P15097830929494490154.Spec : Prop :=
  ∀ n, P15097830929494490154.a n = (A017224 n : ℚ)

theorem P15097830929494490154.correct : P15097830929494490154.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P15097830929494490154.a, A017224.P8965647001278764542.a, A154267, A154267.P12447157063750521671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P8709683948311094451

`(n-A017329(n))²²`
-/

namespace A017224.P8709683948311094451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017329 n) ^ 2) ^ 2

end

end A017224.P8709683948311094451

namespace A017224

/-- `(n-A017329(n))²²` -/
def P8709683948311094451.Spec : Prop :=
  ∀ n, P8709683948311094451.a n = A017224 n

theorem P8709683948311094451.correct : P8709683948311094451.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P8709683948311094451.a, A017224.P8965647001278764542.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P9043893702333461878

`(1-A154277(n+1))²`
-/

namespace A017224.P9043893702333461878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A154277 (n + 1)) ^ 2

end

end A017224.P9043893702333461878

namespace A017224

/-- `(1-A154277(n+1))²` -/
def P9043893702333461878.Spec : Prop :=
  ∀ n, P9043893702333461878.a n = A017224 n

theorem P9043893702333461878.correct : P9043893702333461878.Spec := by
  intro n
  simp only [A017224, Nat.add_sub_cancel, A017224.P9043893702333461878.a, A017224.P8965647001278764542.a, A154277, A154277.P16860181885600045702.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017224

/-! ## A017224.P3616519969608117193

`(sqrt(A017210(n))+1)²²`
-/

namespace A017224.P3616519969608117193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017210 n : ℝ) + 1) ^ 2) ^ 2

end

end A017224.P3616519969608117193

namespace A017224

/-- `(sqrt(A017210(n))+1)²²` -/
def P3616519969608117193.Spec : Prop :=
  ∀ n, P3616519969608117193.a n = (A017224 n : ℝ)

end A017224

/-!
# A017225: a(n) = (9*n + 5)^5.

The programs for A017225, the canonical program `A017225.P16411193177753553868` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017225 has offset 0).

The definition of A017225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+5)^5` (program `A017225.P16411193177753553868`, by `A017225.P16411193177753553868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017225.P16411193177753553868

`(9*n+5)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017225

/-- `(9*n+5)^5` -/
def P16411193177753553868.Spec : Prop :=
  ∀ n, (P16411193177753553868.a n : ℤ) = A017225 n

theorem P16411193177753553868.correct : P16411193177753553868.Spec := by
  intro n
  simp only [A017225]

end A017225

/-! ## A017225.P10797950206958684650

`sqrt(A017222(n)^5)`
-/

namespace A017225.P10797950206958684650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017222 n ^ 5 : ℝ)

end

end A017225.P10797950206958684650

namespace A017225

/-- `sqrt(A017222(n)^5)` -/
def P10797950206958684650.Spec : Prop :=
  ∀ n, P10797950206958684650.a n = (A017225 n : ℝ)

end A017225

/-! ## A017225.P11871152344036759315

`(9*n+5)*A017224(n)`
-/

namespace A017225.P11871152344036759315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 5 : ℤ) * A017224 n

end

end A017225.P11871152344036759315

namespace A017225

/-- `(9*n+5)*A017224(n)` -/
def P11871152344036759315.Spec : Prop :=
  ∀ n, P11871152344036759315.a n = A017225 n

theorem P11871152344036759315.correct : P11871152344036759315.Spec := by
  intro n
  simp only [A017225, Nat.add_sub_cancel, A017225.P11871152344036759315.a, A017225.P16411193177753553868.a, A017224, A017224.P8965647001278764542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017225

/-! ## A017225.P4176373619766262009

`A017222(n)*A017223(n)`
-/

namespace A017225.P4176373619766262009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n * A017223 n

end

end A017225.P4176373619766262009

namespace A017225

/-- `A017222(n)*A017223(n)` -/
def P4176373619766262009.Spec : Prop :=
  ∀ n, P4176373619766262009.a n = A017225 n

theorem P4176373619766262009.correct : P4176373619766262009.Spec := by
  intro n
  simp only [A017225, Nat.add_sub_cancel, A017225.P4176373619766262009.a, A017225.P16411193177753553868.a, A017222, A017222.P1298584065895099024.a, A017223, A017223.P15998366256862935672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017225

/-! ## A017225.P3945474924827749744

`A017226(n)/A017221(n)`
-/

namespace A017225.P3945474924827749744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017226 n : ℚ) / (A017221 n : ℚ)

end

end A017225.P3945474924827749744

namespace A017225

/-- `A017226(n)/A017221(n)` -/
def P3945474924827749744.Spec : Prop :=
  ∀ n, P3945474924827749744.a n = (A017225 n : ℚ)

end A017225

/-! ## A017225.P10154351088841684075

`A017227(n)/A017222(n)`
-/

namespace A017225.P10154351088841684075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017227 n : ℚ) / (A017222 n : ℚ)

end

end A017225.P10154351088841684075

namespace A017225

/-- `A017227(n)/A017222(n)` -/
def P10154351088841684075.Spec : Prop :=
  ∀ n, P10154351088841684075.a n = (A017225 n : ℚ)

end A017225

/-! ## A017225.P11426588835644194210

`A017228(n)/A017223(n)`
-/

namespace A017225.P11426588835644194210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017228 n : ℚ) / (A017223 n : ℚ)

end

end A017225.P11426588835644194210

namespace A017225

/-- `A017228(n)/A017223(n)` -/
def P11426588835644194210.Spec : Prop :=
  ∀ n, P11426588835644194210.a n = (A017225 n : ℚ)

end A017225

/-! ## A017225.P2087129174832151826

`A017229(n)/A017224(n)`
-/

namespace A017225.P2087129174832151826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / (A017224 n : ℚ)

end

end A017225.P2087129174832151826

namespace A017225

/-- `A017229(n)/A017224(n)` -/
def P2087129174832151826.Spec : Prop :=
  ∀ n, P2087129174832151826.a n = (A017225 n : ℚ)

end A017225

/-! ## A017225.P17822956828311469673

`A017221(n)²*A017223(n)`
-/

namespace A017225.P17822956828311469673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n ^ 2 * A017223 n

end

end A017225.P17822956828311469673

namespace A017225

/-- `A017221(n)²*A017223(n)` -/
def P17822956828311469673.Spec : Prop :=
  ∀ n, P17822956828311469673.a n = A017225 n

theorem P17822956828311469673.correct : P17822956828311469673.Spec := by
  intro n
  simp only [A017225, Nat.add_sub_cancel, A017225.P17822956828311469673.a, A017225.P16411193177753553868.a, A017221, A017221.P17146920171309072654.a, A017223, A017223.P15998366256862935672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017225

/-! ## A017225.P15379188280545752296

`A017222(n)²*A017221(n)`
-/

namespace A017225.P15379188280545752296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n ^ 2 * A017221 n

end

end A017225.P15379188280545752296

namespace A017225

/-- `A017222(n)²*A017221(n)` -/
def P15379188280545752296.Spec : Prop :=
  ∀ n, P15379188280545752296.a n = A017225 n

theorem P15379188280545752296.correct : P15379188280545752296.Spec := by
  intro n
  simp only [A017225, Nat.add_sub_cancel, A017225.P15379188280545752296.a, A017225.P16411193177753553868.a, A017221, A017221.P17146920171309072654.a, A017222, A017222.P1298584065895099024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017225

/-! ## A017225.P15564955967981869220

`A017224(n)²/A017223(n)`
-/

namespace A017225.P15564955967981869220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017224 n ^ 2 : ℚ) / (A017223 n : ℚ)

end

end A017225.P15564955967981869220

namespace A017225

/-- `A017224(n)²/A017223(n)` -/
def P15564955967981869220.Spec : Prop :=
  ∀ n, P15564955967981869220.a n = (A017225 n : ℚ)

end A017225

/-! ## A017225.P17818948549086788872

`A017227(n)/A017221(n)²`
-/

namespace A017225.P17818948549086788872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017227 n : ℚ) / (A017221 n ^ 2 : ℚ)

end

end A017225.P17818948549086788872

namespace A017225

/-- `A017227(n)/A017221(n)²` -/
def P17818948549086788872.Spec : Prop :=
  ∀ n, P17818948549086788872.a n = (A017225 n : ℚ)

end A017225

/-! ## A017225.P2795457740833175893

`A017229(n)/A017222(n)²`
-/

namespace A017225.P2795457740833175893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / (A017222 n ^ 2 : ℚ)

end

end A017225.P2795457740833175893

namespace A017225

/-- `A017229(n)/A017222(n)²` -/
def P2795457740833175893.Spec : Prop :=
  ∀ n, P2795457740833175893.a n = (A017225 n : ℚ)

end A017225

/-! ## A017225.P13495894033544559845

`A017224(n)/2*A082286(n)`
-/

namespace A017225.P13495894033544559845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017224 n : ℚ) / 2 * (A082286 n : ℚ)

end

end A017225.P13495894033544559845

namespace A017225

/-- `A017224(n)/2*A082286(n)` -/
def P13495894033544559845.Spec : Prop :=
  ∀ n, P13495894033544559845.a n = (A017225 n : ℚ)

theorem P13495894033544559845.correct : P13495894033544559845.Spec := by
  intro n
  simp only [A017225, Nat.add_sub_cancel, A017225.P13495894033544559845.a, A017225.P16411193177753553868.a, A017224, A017224.P8965647001278764542.a, A082286, A082286.P10023046808755581064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017225

/-! ## A017225.P5537134838418051948

`A017229(n)/A017221(n)²²`
-/

namespace A017225.P5537134838418051948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / ((A017221 n ^ 2) ^ 2 : ℚ)

end

end A017225.P5537134838418051948

namespace A017225

/-- `A017229(n)/A017221(n)²²` -/
def P5537134838418051948.Spec : Prop :=
  ∀ n, P5537134838418051948.a n = (A017225 n : ℚ)

end A017225

/-! ## A017225.P17930605078679246544

`(A017233(n)-1)*A017222(n)²`
-/

namespace A017225.P17930605078679246544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n - 1) * A017222 n ^ 2

end

end A017225.P17930605078679246544

namespace A017225

/-- `(A017233(n)-1)*A017222(n)²` -/
def P17930605078679246544.Spec : Prop :=
  ∀ n, P17930605078679246544.a n = A017225 n

theorem P17930605078679246544.correct : P17930605078679246544.Spec := by
  intro n
  simp only [A017225, Nat.add_sub_cancel, A017225.P17930605078679246544.a, A017225.P16411193177753553868.a, A017222, A017222.P1298584065895099024.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017225

/-! ## A017225.P15278150611731512701

`(A177073(n)+A017221(n))*A017223(n)`
-/

namespace A017225.P15278150611731512701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177073 n + A017221 n) * A017223 n

end

end A017225.P15278150611731512701

namespace A017225

/-- `(A177073(n)+A017221(n))*A017223(n)` -/
def P15278150611731512701.Spec : Prop :=
  ∀ n, P15278150611731512701.a n = A017225 n

theorem P15278150611731512701.correct : P15278150611731512701.Spec := by
  intro n
  simp only [A017225, Nat.add_sub_cancel, A017225.P15278150611731512701.a, A017225.P16411193177753553868.a, A017221, A017221.P17146920171309072654.a, A017223, A017223.P15998366256862935672.a, A177073, A177073.P12367509334309309339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017225

/-! ## A017225.P16343718050690871593

`A017224(n)*A017233(n)-A017224(n)`
-/

namespace A017225.P16343718050690871593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017224 n * A017233 n - A017224 n

end

end A017225.P16343718050690871593

namespace A017225

/-- `A017224(n)*A017233(n)-A017224(n)` -/
def P16343718050690871593.Spec : Prop :=
  ∀ n, P16343718050690871593.a n = A017225 n

theorem P16343718050690871593.correct : P16343718050690871593.Spec := by
  intro n
  simp only [A017225, Nat.add_sub_cancel, A017225.P16343718050690871593.a, A017225.P16411193177753553868.a, A017224, A017224.P8965647001278764542.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017225

/-! ## A017225.P6067371677370381556

`A017221(n)/A017223(n)*A017227(n)`
-/

namespace A017225.P6067371677370381556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017221 n : ℚ) / (A017223 n : ℚ) * (A017227 n : ℚ)

end

end A017225.P6067371677370381556

namespace A017225

/-- `A017221(n)/A017223(n)*A017227(n)` -/
def P6067371677370381556.Spec : Prop :=
  ∀ n, P6067371677370381556.a n = (A017225 n : ℚ)

end A017225

/-!
# A017226: a(n) = (9*n + 5)^6.

The programs for A017226, the canonical program `A017226.P9861641712015901541` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017226 has offset 0).

The definition of A017226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+5)^6` (program `A017226.P9861641712015901541`, by `A017226.P9861641712015901541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017226.P9861641712015901541

`(9*n+5)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017226

/-- `(9*n+5)^6` -/
def P9861641712015901541.Spec : Prop :=
  ∀ n, (P9861641712015901541.a n : ℤ) = A017226 n

theorem P9861641712015901541.correct : P9861641712015901541.Spec := by
  intro n
  simp only [A017226]

end A017226

/-! ## A017226.P8612439989880036327

`A017223(n)²`
-/

namespace A017226.P8612439989880036327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017223 n ^ 2

end

end A017226.P8612439989880036327

namespace A017226

/-- `A017223(n)²` -/
def P8612439989880036327.Spec : Prop :=
  ∀ n, P8612439989880036327.a n = A017226 n

theorem P8612439989880036327.correct : P8612439989880036327.Spec := by
  intro n
  simp only [A017226, Nat.add_sub_cancel, A017226.P8612439989880036327.a, A017226.P9861641712015901541.a, A017223, A017223.P15998366256862935672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017226

/-! ## A017226.P17163648007560256461

`sqrt(A017224(n)^3)`
-/

namespace A017226.P17163648007560256461
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017224 n ^ 3 : ℝ)

end

end A017226.P17163648007560256461

namespace A017226

/-- `sqrt(A017224(n)^3)` -/
def P17163648007560256461.Spec : Prop :=
  ∀ n, P17163648007560256461.a n = (A017226 n : ℝ)

end A017226

/-! ## A017226.P13747243851717539047

`(Δ[A022267(n)]^3)²`
-/

namespace A017226.P13747243851717539047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017226.P13747243851717539047

namespace A017226

/-- `(Δ[A022267(n)]^3)²` -/
def P13747243851717539047.Spec : Prop :=
  ∀ n, P13747243851717539047.a n = A017226 n

end A017226

/-! ## A017226.P11285027545728160910

`(9*n+5)*A017225(n)`
-/

namespace A017226.P11285027545728160910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 5 : ℤ) * A017225 n

end

end A017226.P11285027545728160910

namespace A017226

/-- `(9*n+5)*A017225(n)` -/
def P11285027545728160910.Spec : Prop :=
  ∀ n, P11285027545728160910.a n = A017226 n

theorem P11285027545728160910.correct : P11285027545728160910.Spec := by
  intro n
  simp only [A017226, Nat.add_sub_cancel, A017226.P11285027545728160910.a, A017226.P9861641712015901541.a, A017225, A017225.P16411193177753553868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017226

/-! ## A017226.P2121970279747016682

`A017222(n)*A017224(n)`
-/

namespace A017226.P2121970279747016682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n * A017224 n

end

end A017226.P2121970279747016682

namespace A017226

/-- `A017222(n)*A017224(n)` -/
def P2121970279747016682.Spec : Prop :=
  ∀ n, P2121970279747016682.a n = A017226 n

theorem P2121970279747016682.correct : P2121970279747016682.Spec := by
  intro n
  simp only [A017226, Nat.add_sub_cancel, A017226.P2121970279747016682.a, A017226.P9861641712015901541.a, A017222, A017222.P1298584065895099024.a, A017224, A017224.P8965647001278764542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017226

/-! ## A017226.P10006022975399826238

`A017227(n)/A017221(n)`
-/

namespace A017226.P10006022975399826238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017227 n : ℚ) / (A017221 n : ℚ)

end

end A017226.P10006022975399826238

namespace A017226

/-- `A017227(n)/A017221(n)` -/
def P10006022975399826238.Spec : Prop :=
  ∀ n, P10006022975399826238.a n = (A017226 n : ℚ)

end A017226

/-! ## A017226.P16630678106791323501

`A017228(n)/A017222(n)`
-/

namespace A017226.P16630678106791323501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017228 n : ℚ) / (A017222 n : ℚ)

end

end A017226.P16630678106791323501

namespace A017226

/-- `A017228(n)/A017222(n)` -/
def P16630678106791323501.Spec : Prop :=
  ∀ n, P16630678106791323501.a n = (A017226 n : ℚ)

end A017226

/-! ## A017226.P15633962987604881449

`A017229(n)/A017223(n)`
-/

namespace A017226.P15633962987604881449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / (A017223 n : ℚ)

end

end A017226.P15633962987604881449

namespace A017226

/-- `A017229(n)/A017223(n)` -/
def P15633962987604881449.Spec : Prop :=
  ∀ n, P15633962987604881449.a n = (A017226 n : ℚ)

end A017226

/-! ## A017226.P11525907513058325634

`(A017221(n)*A017222(n))²`
-/

namespace A017226.P11525907513058325634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017221 n * A017222 n) ^ 2

end

end A017226.P11525907513058325634

namespace A017226

/-- `(A017221(n)*A017222(n))²` -/
def P11525907513058325634.Spec : Prop :=
  ∀ n, P11525907513058325634.a n = A017226 n

theorem P11525907513058325634.correct : P11525907513058325634.Spec := by
  intro n
  simp only [A017226, Nat.add_sub_cancel, A017226.P11525907513058325634.a, A017226.P9861641712015901541.a, A017221, A017221.P17146920171309072654.a, A017222, A017222.P1298584065895099024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017226

/-! ## A017226.P10086987016349190937

`A017221(n)²*A017224(n)`
-/

namespace A017226.P10086987016349190937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n ^ 2 * A017224 n

end

end A017226.P10086987016349190937

namespace A017226

/-- `A017221(n)²*A017224(n)` -/
def P10086987016349190937.Spec : Prop :=
  ∀ n, P10086987016349190937.a n = A017226 n

theorem P10086987016349190937.correct : P10086987016349190937.Spec := by
  intro n
  simp only [A017226, Nat.add_sub_cancel, A017226.P10086987016349190937.a, A017226.P9861641712015901541.a, A017221, A017221.P17146920171309072654.a, A017224, A017224.P8965647001278764542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017226

/-! ## A017226.P6464894811501106903

`(A017225(n)/A017222(n))²`
-/

namespace A017226.P6464894811501106903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017225 n : ℚ) / (A017222 n : ℚ)) ^ 2

end

end A017226.P6464894811501106903

namespace A017226

/-- `(A017225(n)/A017222(n))²` -/
def P6464894811501106903.Spec : Prop :=
  ∀ n, P6464894811501106903.a n = (A017226 n : ℚ)

end A017226

/-! ## A017226.P13429077660817040523

`(A017227(n)/A017224(n))²`
-/

namespace A017226.P13429077660817040523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017227 n : ℚ) / (A017224 n : ℚ)) ^ 2

end

end A017226.P13429077660817040523

namespace A017226

/-- `(A017227(n)/A017224(n))²` -/
def P13429077660817040523.Spec : Prop :=
  ∀ n, P13429077660817040523.a n = (A017226 n : ℚ)

end A017226

/-! ## A017226.P3377500570297402529

`A017228(n)/A017221(n)²`
-/

namespace A017226.P3377500570297402529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017228 n : ℚ) / (A017221 n ^ 2 : ℚ)

end

end A017226.P3377500570297402529

namespace A017226

/-- `A017228(n)/A017221(n)²` -/
def P3377500570297402529.Spec : Prop :=
  ∀ n, P3377500570297402529.a n = (A017226 n : ℚ)

end A017226

/-! ## A017226.P9109589794726788905

`(A017228(n)/A017225(n))²`
-/

namespace A017226.P9109589794726788905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017228 n : ℚ) / (A017225 n : ℚ)) ^ 2

end

end A017226.P9109589794726788905

namespace A017226

/-- `(A017228(n)/A017225(n))²` -/
def P9109589794726788905.Spec : Prop :=
  ∀ n, P9109589794726788905.a n = (A017226 n : ℚ)

end A017226

/-! ## A017226.P17699934641024325891

`(A017224(n)²/A017225(n))²`
-/

namespace A017226.P17699934641024325891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017224 n ^ 2 : ℚ) / (A017225 n : ℚ)) ^ 2

end

end A017226.P17699934641024325891

namespace A017226

/-- `(A017224(n)²/A017225(n))²` -/
def P17699934641024325891.Spec : Prop :=
  ∀ n, P17699934641024325891.a n = (A017226 n : ℚ)

end A017226

/-! ## A017226.P16780711305335470007

`(A017227(n)/A017222(n)²)²`
-/

namespace A017226.P16780711305335470007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017227 n : ℚ) / (A017222 n ^ 2 : ℚ)) ^ 2

end

end A017226.P16780711305335470007

namespace A017226

/-- `(A017227(n)/A017222(n)²)²` -/
def P16780711305335470007.Spec : Prop :=
  ∀ n, P16780711305335470007.a n = (A017226 n : ℚ)

end A017226

/-! ## A017226.P3551408168881060810

`(A177073(n)+A017221(n))*A017224(n)`
-/

namespace A017226.P3551408168881060810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177073 n + A017221 n) * A017224 n

end

end A017226.P3551408168881060810

namespace A017226

/-- `(A177073(n)+A017221(n))*A017224(n)` -/
def P3551408168881060810.Spec : Prop :=
  ∀ n, P3551408168881060810.a n = A017226 n

theorem P3551408168881060810.correct : P3551408168881060810.Spec := by
  intro n
  simp only [A017226, Nat.add_sub_cancel, A017226.P3551408168881060810.a, A017226.P9861641712015901541.a, A017221, A017221.P17146920171309072654.a, A017224, A017224.P8965647001278764542.a, A177073, A177073.P12367509334309309339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017226

/-! ## A017226.P422395932470606508

`A017225(n)*A017233(n)-A017225(n)`
-/

namespace A017226.P422395932470606508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017225 n * A017233 n - A017225 n

end

end A017226.P422395932470606508

namespace A017226

/-- `A017225(n)*A017233(n)-A017225(n)` -/
def P422395932470606508.Spec : Prop :=
  ∀ n, P422395932470606508.a n = A017226 n

theorem P422395932470606508.correct : P422395932470606508.Spec := by
  intro n
  simp only [A017226, Nat.add_sub_cancel, A017226.P422395932470606508.a, A017226.P9861641712015901541.a, A017225, A017225.P16411193177753553868.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017226

/-!
# A017227: a(n) = (9*n + 5)^7.

The programs for A017227, the canonical program `A017227.P3892333922980057990` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017227 has offset 0).

The definition of A017227 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+5)^7` (program `A017227.P3892333922980057990`, by `A017227.P3892333922980057990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017227.P3892333922980057990

`(9*n+5)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017227

/-- `(9*n+5)^7` -/
def P3892333922980057990.Spec : Prop :=
  ∀ n, (P3892333922980057990.a n : ℤ) = A017227 n

theorem P3892333922980057990.correct : P3892333922980057990.Spec := by
  intro n
  simp only [A017227]

end A017227

/-! ## A017227.P479382693128869937

`A017221(n)*A017226(n)`
-/

namespace A017227.P479382693128869937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n * A017226 n

end

end A017227.P479382693128869937

namespace A017227

/-- `A017221(n)*A017226(n)` -/
def P479382693128869937.Spec : Prop :=
  ∀ n, P479382693128869937.a n = A017227 n

theorem P479382693128869937.correct : P479382693128869937.Spec := by
  intro n
  simp only [A017227, Nat.add_sub_cancel, A017227.P479382693128869937.a, A017227.P3892333922980057990.a, A017221, A017221.P17146920171309072654.a, A017226, A017226.P9861641712015901541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017227

/-! ## A017227.P17815518667014074241

`A017222(n)*A017225(n)`
-/

namespace A017227.P17815518667014074241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n * A017225 n

end

end A017227.P17815518667014074241

namespace A017227

/-- `A017222(n)*A017225(n)` -/
def P17815518667014074241.Spec : Prop :=
  ∀ n, P17815518667014074241.a n = A017227 n

theorem P17815518667014074241.correct : P17815518667014074241.Spec := by
  intro n
  simp only [A017227, Nat.add_sub_cancel, A017227.P17815518667014074241.a, A017227.P3892333922980057990.a, A017222, A017222.P1298584065895099024.a, A017225, A017225.P16411193177753553868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017227

/-! ## A017227.P17395826754828676436

`A017223(n)*A017224(n)`
-/

namespace A017227.P17395826754828676436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017223 n * A017224 n

end

end A017227.P17395826754828676436

namespace A017227

/-- `A017223(n)*A017224(n)` -/
def P17395826754828676436.Spec : Prop :=
  ∀ n, P17395826754828676436.a n = A017227 n

theorem P17395826754828676436.correct : P17395826754828676436.Spec := by
  intro n
  simp only [A017227, Nat.add_sub_cancel, A017227.P17395826754828676436.a, A017227.P3892333922980057990.a, A017223, A017223.P15998366256862935672.a, A017224, A017224.P8965647001278764542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017227

/-! ## A017227.P16978759059853362479

`A017228(n)/A017221(n)`
-/

namespace A017227.P16978759059853362479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017228 n : ℚ) / (A017221 n : ℚ)

end

end A017227.P16978759059853362479

namespace A017227

/-- `A017228(n)/A017221(n)` -/
def P16978759059853362479.Spec : Prop :=
  ∀ n, P16978759059853362479.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P17419630986555639424

`A017229(n)/A017222(n)`
-/

namespace A017227.P17419630986555639424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / (A017222 n : ℚ)

end

end A017227.P17419630986555639424

namespace A017227

/-- `A017229(n)/A017222(n)` -/
def P17419630986555639424.Spec : Prop :=
  ∀ n, P17419630986555639424.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P15543241359029975456

`A017221(n)²*A017225(n)`
-/

namespace A017227.P15543241359029975456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n ^ 2 * A017225 n

end

end A017227.P15543241359029975456

namespace A017227

/-- `A017221(n)²*A017225(n)` -/
def P15543241359029975456.Spec : Prop :=
  ∀ n, P15543241359029975456.a n = A017227 n

theorem P15543241359029975456.correct : P15543241359029975456.Spec := by
  intro n
  simp only [A017227, Nat.add_sub_cancel, A017227.P15543241359029975456.a, A017227.P3892333922980057990.a, A017221, A017221.P17146920171309072654.a, A017225, A017225.P16411193177753553868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017227

/-! ## A017227.P12273322355072450099

`A017222(n)²*A017223(n)`
-/

namespace A017227.P12273322355072450099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n ^ 2 * A017223 n

end

end A017227.P12273322355072450099

namespace A017227

/-- `A017222(n)²*A017223(n)` -/
def P12273322355072450099.Spec : Prop :=
  ∀ n, P12273322355072450099.a n = A017227 n

theorem P12273322355072450099.correct : P12273322355072450099.Spec := by
  intro n
  simp only [A017227, Nat.add_sub_cancel, A017227.P12273322355072450099.a, A017227.P3892333922980057990.a, A017222, A017222.P1298584065895099024.a, A017223, A017223.P15998366256862935672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017227

/-! ## A017227.P8605766626222271056

`A017223(n)²*A017221(n)`
-/

namespace A017227.P8605766626222271056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017223 n ^ 2 * A017221 n

end

end A017227.P8605766626222271056

namespace A017227

/-- `A017223(n)²*A017221(n)` -/
def P8605766626222271056.Spec : Prop :=
  ∀ n, P8605766626222271056.a n = A017227 n

theorem P8605766626222271056.correct : P8605766626222271056.Spec := by
  intro n
  simp only [A017227, Nat.add_sub_cancel, A017227.P8605766626222271056.a, A017227.P3892333922980057990.a, A017221, A017221.P17146920171309072654.a, A017223, A017223.P15998366256862935672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017227

/-! ## A017227.P13396745942279466948

`A017224(n)²/A017221(n)`
-/

namespace A017227.P13396745942279466948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017224 n ^ 2 : ℚ) / (A017221 n : ℚ)

end

end A017227.P13396745942279466948

namespace A017227

/-- `A017224(n)²/A017221(n)` -/
def P13396745942279466948.Spec : Prop :=
  ∀ n, P13396745942279466948.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P13396490016575629209

`A017229(n)/A017221(n)²`
-/

namespace A017227.P13396490016575629209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / (A017221 n ^ 2 : ℚ)

end

end A017227.P13396490016575629209

namespace A017227

/-- `A017229(n)/A017221(n)²` -/
def P13396490016575629209.Spec : Prop :=
  ∀ n, P13396490016575629209.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P10155817685583343204

`A017222(n)²²/A017221(n)`
-/

namespace A017227.P10155817685583343204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017222 n ^ 2) ^ 2 : ℚ) / (A017221 n : ℚ)

end

end A017227.P10155817685583343204

namespace A017227

/-- `A017222(n)²²/A017221(n)` -/
def P10155817685583343204.Spec : Prop :=
  ∀ n, P10155817685583343204.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P9936767335880299379

`(1-A017233(n))²*A017225(n)`
-/

namespace A017227.P9936767335880299379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A017233 n) ^ 2 * A017225 n

end

end A017227.P9936767335880299379

namespace A017227

/-- `(1-A017233(n))²*A017225(n)` -/
def P9936767335880299379.Spec : Prop :=
  ∀ n, P9936767335880299379.a n = A017227 n

theorem P9936767335880299379.correct : P9936767335880299379.Spec := by
  intro n
  simp only [A017227, Nat.add_sub_cancel, A017227.P9936767335880299379.a, A017227.P3892333922980057990.a, A017225, A017225.P16411193177753553868.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017227

/-! ## A017227.P16764888510735983344

`A017224(n)²/(A017233(n)-1)`
-/

namespace A017227.P16764888510735983344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017224 n ^ 2 : ℚ) / (A017233 n - 1 : ℚ)

end

end A017227.P16764888510735983344

namespace A017227

/-- `A017224(n)²/(A017233(n)-1)` -/
def P16764888510735983344.Spec : Prop :=
  ∀ n, P16764888510735983344.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P16365363263534295740

`A017221(n)*A017222(n)*A017224(n)`
-/

namespace A017227.P16365363263534295740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n * A017222 n * A017224 n

end

end A017227.P16365363263534295740

namespace A017227

/-- `A017221(n)*A017222(n)*A017224(n)` -/
def P16365363263534295740.Spec : Prop :=
  ∀ n, P16365363263534295740.a n = A017227 n

theorem P16365363263534295740.correct : P16365363263534295740.Spec := by
  intro n
  simp only [A017227, Nat.add_sub_cancel, A017227.P16365363263534295740.a, A017227.P3892333922980057990.a, A017221, A017221.P17146920171309072654.a, A017222, A017222.P1298584065895099024.a, A017224, A017224.P8965647001278764542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017227

/-! ## A017227.P11699573797108256926

`A017221(n)/A017223(n)*A017229(n)`
-/

namespace A017227.P11699573797108256926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017221 n : ℚ) / (A017223 n : ℚ) * (A017229 n : ℚ)

end

end A017227.P11699573797108256926

namespace A017227

/-- `A017221(n)/A017223(n)*A017229(n)` -/
def P11699573797108256926.Spec : Prop :=
  ∀ n, P11699573797108256926.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P18326185547168046558

`A017222(n)/A017223(n)*A017228(n)`
-/

namespace A017227.P18326185547168046558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017222 n : ℚ) / (A017223 n : ℚ) * (A017228 n : ℚ)

end

end A017227.P18326185547168046558

namespace A017227

/-- `A017222(n)/A017223(n)*A017228(n)` -/
def P18326185547168046558.Spec : Prop :=
  ∀ n, P18326185547168046558.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P7935891134326295246

`A017223(n)*A017225(n)/A017221(n)`
-/

namespace A017227.P7935891134326295246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017223 n * A017225 n : ℚ) / (A017221 n : ℚ)

end

end A017227.P7935891134326295246

namespace A017227

/-- `A017223(n)*A017225(n)/A017221(n)` -/
def P7935891134326295246.Spec : Prop :=
  ∀ n, P7935891134326295246.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P5746788141392295871

`A017223(n)/A017225(n)*A017229(n)`
-/

namespace A017227.P5746788141392295871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017223 n : ℚ) / (A017225 n : ℚ) * (A017229 n : ℚ)

end

end A017227.P5746788141392295871

namespace A017227

/-- `A017223(n)/A017225(n)*A017229(n)` -/
def P5746788141392295871.Spec : Prop :=
  ∀ n, P5746788141392295871.a n = (A017227 n : ℚ)

end A017227

/-! ## A017227.P14608294906420710207

`A017223(n)*A017226(n)/A017222(n)`
-/

namespace A017227.P14608294906420710207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017223 n * A017226 n : ℚ) / (A017222 n : ℚ)

end

end A017227.P14608294906420710207

namespace A017227

/-- `A017223(n)*A017226(n)/A017222(n)` -/
def P14608294906420710207.Spec : Prop :=
  ∀ n, P14608294906420710207.a n = (A017227 n : ℚ)

end A017227

/-!
# A017228: a(n) = (9*n + 5)^8.

The programs for A017228, the canonical program `A017228.P15439940905061236407` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017228 has offset 0).

The definition of A017228 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+5)^8` (program `A017228.P15439940905061236407`, by `A017228.P15439940905061236407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017228.P15439940905061236407

`(9*n+5)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017228

/-- `(9*n+5)^8` -/
def P15439940905061236407.Spec : Prop :=
  ∀ n, (P15439940905061236407.a n : ℤ) = A017228 n

theorem P15439940905061236407.correct : P15439940905061236407.Spec := by
  intro n
  simp only [A017228]

end A017228

/-! ## A017228.P5758029011842798283

`(lcm(4, 2*n+1)+n+1)²²²`
-/

namespace A017228.P5758029011842798283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 4 (2 * n + 1) + (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017228.P5758029011842798283

namespace A017228

/-- `(lcm(4, 2*n+1)+n+1)²²²` -/
def P5758029011842798283.Spec : Prop :=
  ∀ n, (P5758029011842798283.a n : ℤ) = A017228 n

end A017228

/-! ## A017228.P962660394600346132

`A017224(n)²`
-/

namespace A017228.P962660394600346132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017224 n ^ 2

end

end A017228.P962660394600346132

namespace A017228

/-- `A017224(n)²` -/
def P962660394600346132.Spec : Prop :=
  ∀ n, P962660394600346132.a n = A017228 n

theorem P962660394600346132.correct : P962660394600346132.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P962660394600346132.a, A017228.P15439940905061236407.a, A017224, A017224.P8965647001278764542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P3942217573872502243

`A017222(n)²²`
-/

namespace A017228.P3942217573872502243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017222 n ^ 2) ^ 2

end

end A017228.P3942217573872502243

namespace A017228

/-- `A017222(n)²²` -/
def P3942217573872502243.Spec : Prop :=
  ∀ n, P3942217573872502243.a n = A017228 n

theorem P3942217573872502243.correct : P3942217573872502243.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P3942217573872502243.a, A017228.P15439940905061236407.a, A017222, A017222.P1298584065895099024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P4265683000501314977

`A017221(n)²²²`
-/

namespace A017228.P4265683000501314977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017221 n ^ 2) ^ 2) ^ 2

end

end A017228.P4265683000501314977

namespace A017228

/-- `A017221(n)²²²` -/
def P4265683000501314977.Spec : Prop :=
  ∀ n, P4265683000501314977.a n = A017228 n

theorem P4265683000501314977.correct : P4265683000501314977.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P4265683000501314977.a, A017228.P15439940905061236407.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P2030570860610283746

`Δ[A022267(n)]²²²`
-/

namespace A017228.P2030570860610283746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017228.P2030570860610283746

namespace A017228

/-- `Δ[A022267(n)]²²²` -/
def P2030570860610283746.Spec : Prop :=
  ∀ n, P2030570860610283746.a n = A017228 n

end A017228

/-! ## A017228.P11656135507644054001

`(A017209(n)+1)²²²`
-/

namespace A017228.P11656135507644054001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017209 n + 1) ^ 2) ^ 2) ^ 2

end

end A017228.P11656135507644054001

namespace A017228

/-- `(A017209(n)+1)²²²` -/
def P11656135507644054001.Spec : Prop :=
  ∀ n, P11656135507644054001.a n = A017228 n

theorem P11656135507644054001.correct : P11656135507644054001.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P11656135507644054001.a, A017228.P15439940905061236407.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P3582771101212174302

`(A017197(n)+2)²²²`
-/

namespace A017228.P3582771101212174302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017197 n + 2) ^ 2) ^ 2) ^ 2

end

end A017228.P3582771101212174302

namespace A017228

/-- `(A017197(n)+2)²²²` -/
def P3582771101212174302.Spec : Prop :=
  ∀ n, P3582771101212174302.a n = A017228 n

theorem P3582771101212174302.correct : P3582771101212174302.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P3582771101212174302.a, A017228.P15439940905061236407.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P5719239411567399733

`(1-A017233(n))²²²`
-/

namespace A017228.P5719239411567399733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017233 n) ^ 2) ^ 2) ^ 2

end

end A017228.P5719239411567399733

namespace A017228

/-- `(1-A017233(n))²²²` -/
def P5719239411567399733.Spec : Prop :=
  ∀ n, P5719239411567399733.a n = A017228 n

theorem P5719239411567399733.correct : P5719239411567399733.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P5719239411567399733.a, A017228.P15439940905061236407.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P10511357794714053548

`(2-A017245(n))²²²`
-/

namespace A017228.P10511357794714053548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017245 n) ^ 2) ^ 2) ^ 2

end

end A017228.P10511357794714053548

namespace A017228

/-- `(2-A017245(n))²²²` -/
def P10511357794714053548.Spec : Prop :=
  ∀ n, P10511357794714053548.a n = A017228 n

theorem P10511357794714053548.correct : P10511357794714053548.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P10511357794714053548.a, A017228.P15439940905061236407.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P14286138987797200920

`(A082286(n)/2)²²²`
-/

namespace A017228.P14286138987797200920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A082286 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A017228.P14286138987797200920

namespace A017228

/-- `(A082286(n)/2)²²²` -/
def P14286138987797200920.Spec : Prop :=
  ∀ n, P14286138987797200920.a n = (A017228 n : ℚ)

theorem P14286138987797200920.correct : P14286138987797200920.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P14286138987797200920.a, A017228.P15439940905061236407.a, A082286, A082286.P10023046808755581064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P3550452213131799592

`(n-A017329(n))²²²`
-/

namespace A017228.P3550452213131799592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017329 n) ^ 2) ^ 2) ^ 2

end

end A017228.P3550452213131799592

namespace A017228

/-- `(n-A017329(n))²²²` -/
def P3550452213131799592.Spec : Prop :=
  ∀ n, P3550452213131799592.a n = A017228 n

theorem P3550452213131799592.correct : P3550452213131799592.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P3550452213131799592.a, A017228.P15439940905061236407.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P16124242473629593748

`(1-A154277(n+1))²²`
-/

namespace A017228.P16124242473629593748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A154277 (n + 1)) ^ 2) ^ 2

end

end A017228.P16124242473629593748

namespace A017228

/-- `(1-A154277(n+1))²²` -/
def P16124242473629593748.Spec : Prop :=
  ∀ n, P16124242473629593748.a n = A017228 n

theorem P16124242473629593748.correct : P16124242473629593748.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P16124242473629593748.a, A017228.P15439940905061236407.a, A154277, A154277.P16860181885600045702.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P14557849047409662658

`(A004770(n+1)+n)²²²`
-/

namespace A017228.P14557849047409662658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A004770 (n + 1) + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017228.P14557849047409662658

namespace A017228

/-- `(A004770(n+1)+n)²²²` -/
def P14557849047409662658.Spec : Prop :=
  ∀ n, P14557849047409662658.a n = A017228 n

theorem P14557849047409662658.correct : P14557849047409662658.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P14557849047409662658.a, A017228.P15439940905061236407.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P1358476888595594035

`A017221(n)*A017227(n)`
-/

namespace A017228.P1358476888595594035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n * A017227 n

end

end A017228.P1358476888595594035

namespace A017228

/-- `A017221(n)*A017227(n)` -/
def P1358476888595594035.Spec : Prop :=
  ∀ n, P1358476888595594035.a n = A017228 n

theorem P1358476888595594035.correct : P1358476888595594035.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P1358476888595594035.a, A017228.P15439940905061236407.a, A017221, A017221.P17146920171309072654.a, A017227, A017227.P3892333922980057990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P9544977562352701819

`A017222(n)*A017226(n)`
-/

namespace A017228.P9544977562352701819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n * A017226 n

end

end A017228.P9544977562352701819

namespace A017228

/-- `A017222(n)*A017226(n)` -/
def P9544977562352701819.Spec : Prop :=
  ∀ n, P9544977562352701819.a n = A017228 n

theorem P9544977562352701819.correct : P9544977562352701819.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P9544977562352701819.a, A017228.P15439940905061236407.a, A017222, A017222.P1298584065895099024.a, A017226, A017226.P9861641712015901541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P13798463432403575593

`A017223(n)*A017225(n)`
-/

namespace A017228.P13798463432403575593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017223 n * A017225 n

end

end A017228.P13798463432403575593

namespace A017228

/-- `A017223(n)*A017225(n)` -/
def P13798463432403575593.Spec : Prop :=
  ∀ n, P13798463432403575593.a n = A017228 n

theorem P13798463432403575593.correct : P13798463432403575593.Spec := by
  intro n
  simp only [A017228, Nat.add_sub_cancel, A017228.P13798463432403575593.a, A017228.P15439940905061236407.a, A017223, A017223.P15998366256862935672.a, A017225, A017225.P16411193177753553868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017228

/-! ## A017228.P13017522178325360216

`A017229(n)/A017221(n)`
-/

namespace A017228.P13017522178325360216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017229 n : ℚ) / (A017221 n : ℚ)

end

end A017228.P13017522178325360216

namespace A017228

/-- `A017229(n)/A017221(n)` -/
def P13017522178325360216.Spec : Prop :=
  ∀ n, P13017522178325360216.a n = (A017228 n : ℚ)

end A017228

/-! ## A017228.P15976917789194473717

`(A017229(n)/A017225(n))²`
-/

namespace A017228.P15976917789194473717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017229 n : ℚ) / (A017225 n : ℚ)) ^ 2

end

end A017228.P15976917789194473717

namespace A017228

/-- `(A017229(n)/A017225(n))²` -/
def P15976917789194473717.Spec : Prop :=
  ∀ n, P15976917789194473717.a n = (A017228 n : ℚ)

end A017228

/-! ## A017228.P1595718866567993126

`(A017229(n)/A017227(n))²²`
-/

namespace A017228.P1595718866567993126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017229 n : ℚ) / (A017227 n : ℚ)) ^ 2) ^ 2

end

end A017228.P1595718866567993126

namespace A017228

/-- `(A017229(n)/A017227(n))²²` -/
def P1595718866567993126.Spec : Prop :=
  ∀ n, P1595718866567993126.a n = (A017228 n : ℚ)

end A017228

/-!
# A017229: a(n) = (9*n + 5)^9.

The programs for A017229, the canonical program `A017229.P1966939052998246063` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017229 has offset 0).

The definition of A017229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+5)^9` (program `A017229.P1966939052998246063`, by `A017229.P1966939052998246063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017229.P1966939052998246063

`(9*n+5)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017229

/-- `(9*n+5)^9` -/
def P1966939052998246063.Spec : Prop :=
  ∀ n, (P1966939052998246063.a n : ℤ) = A017229 n

theorem P1966939052998246063.correct : P1966939052998246063.Spec := by
  intro n
  simp only [A017229]

end A017229

/-! ## A017229.P2461576444231592975

`sqrt(A017226(n)^3)`
-/

namespace A017229.P2461576444231592975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017226 n ^ 3 : ℝ)

end

end A017229.P2461576444231592975

namespace A017229

/-- `sqrt(A017226(n)^3)` -/
def P2461576444231592975.Spec : Prop :=
  ∀ n, P2461576444231592975.a n = (A017229 n : ℝ)

end A017229

/-! ## A017229.P5391066977030899487

`(9*n+5)*A017228(n)`
-/

namespace A017229.P5391066977030899487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 5 : ℤ) * A017228 n

end

end A017229.P5391066977030899487

namespace A017229

/-- `(9*n+5)*A017228(n)` -/
def P5391066977030899487.Spec : Prop :=
  ∀ n, P5391066977030899487.a n = A017229 n

theorem P5391066977030899487.correct : P5391066977030899487.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P5391066977030899487.a, A017229.P1966939052998246063.a, A017228, A017228.P15439940905061236407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P1575615001043734542

`A017222(n)*A017227(n)`
-/

namespace A017229.P1575615001043734542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n * A017227 n

end

end A017229.P1575615001043734542

namespace A017229

/-- `A017222(n)*A017227(n)` -/
def P1575615001043734542.Spec : Prop :=
  ∀ n, P1575615001043734542.a n = A017229 n

theorem P1575615001043734542.correct : P1575615001043734542.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P1575615001043734542.a, A017229.P1966939052998246063.a, A017222, A017222.P1298584065895099024.a, A017227, A017227.P3892333922980057990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P6495185499686339467

`A017223(n)*A017226(n)`
-/

namespace A017229.P6495185499686339467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017223 n * A017226 n

end

end A017229.P6495185499686339467

namespace A017229

/-- `A017223(n)*A017226(n)` -/
def P6495185499686339467.Spec : Prop :=
  ∀ n, P6495185499686339467.a n = A017229 n

theorem P6495185499686339467.correct : P6495185499686339467.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P6495185499686339467.a, A017229.P1966939052998246063.a, A017223, A017223.P15998366256862935672.a, A017226, A017226.P9861641712015901541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P4729068244714188763

`A017224(n)*A017225(n)`
-/

namespace A017229.P4729068244714188763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017224 n * A017225 n

end

end A017229.P4729068244714188763

namespace A017229

/-- `A017224(n)*A017225(n)` -/
def P4729068244714188763.Spec : Prop :=
  ∀ n, P4729068244714188763.a n = A017229 n

theorem P4729068244714188763.correct : P4729068244714188763.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P4729068244714188763.a, A017229.P1966939052998246063.a, A017224, A017224.P8965647001278764542.a, A017225, A017225.P16411193177753553868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P2941228685618599556

`A017221(n)²*A017227(n)`
-/

namespace A017229.P2941228685618599556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n ^ 2 * A017227 n

end

end A017229.P2941228685618599556

namespace A017229

/-- `A017221(n)²*A017227(n)` -/
def P2941228685618599556.Spec : Prop :=
  ∀ n, P2941228685618599556.a n = A017229 n

theorem P2941228685618599556.correct : P2941228685618599556.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P2941228685618599556.a, A017229.P1966939052998246063.a, A017221, A017221.P17146920171309072654.a, A017227, A017227.P3892333922980057990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P2347623615172811961

`A017222(n)²*A017225(n)`
-/

namespace A017229.P2347623615172811961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n ^ 2 * A017225 n

end

end A017229.P2347623615172811961

namespace A017229

/-- `A017222(n)²*A017225(n)` -/
def P2347623615172811961.Spec : Prop :=
  ∀ n, P2347623615172811961.a n = A017229 n

theorem P2347623615172811961.correct : P2347623615172811961.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P2347623615172811961.a, A017229.P1966939052998246063.a, A017222, A017222.P1298584065895099024.a, A017225, A017225.P16411193177753553868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P18416422331467191227

`A017224(n)²*A017221(n)`
-/

namespace A017229.P18416422331467191227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017224 n ^ 2 * A017221 n

end

end A017229.P18416422331467191227

namespace A017229

/-- `A017224(n)²*A017221(n)` -/
def P18416422331467191227.Spec : Prop :=
  ∀ n, P18416422331467191227.a n = A017229 n

theorem P18416422331467191227.correct : P18416422331467191227.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P18416422331467191227.a, A017229.P1966939052998246063.a, A017221, A017221.P17146920171309072654.a, A017224, A017224.P8965647001278764542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P10388575504362042905

`A017225(n)²/A017221(n)`
-/

namespace A017229.P10388575504362042905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017225 n ^ 2 : ℚ) / (A017221 n : ℚ)

end

end A017229.P10388575504362042905

namespace A017229

/-- `A017225(n)²/A017221(n)` -/
def P10388575504362042905.Spec : Prop :=
  ∀ n, P10388575504362042905.a n = (A017229 n : ℚ)

end A017229

/-! ## A017229.P13814578457509721822

`A017222(n)²²*A017221(n)`
-/

namespace A017229.P13814578457509721822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017222 n ^ 2) ^ 2 * A017221 n

end

end A017229.P13814578457509721822

namespace A017229

/-- `A017222(n)²²*A017221(n)` -/
def P13814578457509721822.Spec : Prop :=
  ∀ n, P13814578457509721822.a n = A017229 n

theorem P13814578457509721822.correct : P13814578457509721822.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P13814578457509721822.a, A017229.P1966939052998246063.a, A017221, A017221.P17146920171309072654.a, A017222, A017222.P1298584065895099024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P10617330956005966109

`(A017233(n)-1)*A017224(n)²`
-/

namespace A017229.P10617330956005966109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n - 1) * A017224 n ^ 2

end

end A017229.P10617330956005966109

namespace A017229

/-- `(A017233(n)-1)*A017224(n)²` -/
def P10617330956005966109.Spec : Prop :=
  ∀ n, P10617330956005966109.a n = A017229 n

theorem P10617330956005966109.correct : P10617330956005966109.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P10617330956005966109.a, A017229.P1966939052998246063.a, A017224, A017224.P8965647001278764542.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P12209123005976819548

`A017221(n)*A017222(n)*A017226(n)`
-/

namespace A017229.P12209123005976819548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n * A017222 n * A017226 n

end

end A017229.P12209123005976819548

namespace A017229

/-- `A017221(n)*A017222(n)*A017226(n)` -/
def P12209123005976819548.Spec : Prop :=
  ∀ n, P12209123005976819548.a n = A017229 n

theorem P12209123005976819548.correct : P12209123005976819548.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P12209123005976819548.a, A017229.P1966939052998246063.a, A017221, A017221.P17146920171309072654.a, A017222, A017222.P1298584065895099024.a, A017226, A017226.P9861641712015901541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P3185031702138341932

`A017221(n)*A017223(n)*A017225(n)`
-/

namespace A017229.P3185031702138341932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n * A017223 n * A017225 n

end

end A017229.P3185031702138341932

namespace A017229

/-- `A017221(n)*A017223(n)*A017225(n)` -/
def P3185031702138341932.Spec : Prop :=
  ∀ n, P3185031702138341932.a n = A017229 n

theorem P3185031702138341932.correct : P3185031702138341932.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P3185031702138341932.a, A017229.P1966939052998246063.a, A017221, A017221.P17146920171309072654.a, A017223, A017223.P15998366256862935672.a, A017225, A017225.P16411193177753553868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P5833904794410476591

`A017222(n)*A017223(n)*A017224(n)`
-/

namespace A017229.P5833904794410476591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n * A017223 n * A017224 n

end

end A017229.P5833904794410476591

namespace A017229

/-- `A017222(n)*A017223(n)*A017224(n)` -/
def P5833904794410476591.Spec : Prop :=
  ∀ n, P5833904794410476591.a n = A017229 n

theorem P5833904794410476591.correct : P5833904794410476591.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P5833904794410476591.a, A017229.P1966939052998246063.a, A017222, A017222.P1298584065895099024.a, A017223, A017223.P15998366256862935672.a, A017224, A017224.P8965647001278764542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-! ## A017229.P13104720086568258236

`A017224(n)/A017221(n)*A017226(n)`
-/

namespace A017229.P13104720086568258236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017224 n : ℚ) / (A017221 n : ℚ) * (A017226 n : ℚ)

end

end A017229.P13104720086568258236

namespace A017229

/-- `A017224(n)/A017221(n)*A017226(n)` -/
def P13104720086568258236.Spec : Prop :=
  ∀ n, P13104720086568258236.a n = (A017229 n : ℚ)

end A017229

/-! ## A017229.P8093159609872082144

`A017225(n)/A017223(n)*A017227(n)`
-/

namespace A017229.P8093159609872082144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017225 n : ℚ) / (A017223 n : ℚ) * (A017227 n : ℚ)

end

end A017229.P8093159609872082144

namespace A017229

/-- `A017225(n)/A017223(n)*A017227(n)` -/
def P8093159609872082144.Spec : Prop :=
  ∀ n, P8093159609872082144.a n = (A017229 n : ℚ)

end A017229

/-! ## A017229.P3257670091644194115

`A017226(n)/A017224(n)*A017227(n)`
-/

namespace A017229.P3257670091644194115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017226 n : ℚ) / (A017224 n : ℚ) * (A017227 n : ℚ)

end

end A017229.P3257670091644194115

namespace A017229

/-- `A017226(n)/A017224(n)*A017227(n)` -/
def P3257670091644194115.Spec : Prop :=
  ∀ n, P3257670091644194115.a n = (A017229 n : ℚ)

end A017229

/-! ## A017229.P7207447621901257370

`A016797(3*n+1)`
-/

namespace A017229.P7207447621901257370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016797 (3 * n + 1)

end

end A017229.P7207447621901257370

namespace A017229

/-- `A016797(3*n+1)` -/
def P7207447621901257370.Spec : Prop :=
  ∀ n, P7207447621901257370.a n = A017229 n

theorem P7207447621901257370.correct : P7207447621901257370.Spec := by
  intro n
  simp only [A017229, Nat.add_sub_cancel, A017229.P7207447621901257370.a, A017229.P1966939052998246063.a, A016797, A016797.P16599814047714379854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017229

/-!
# A017230: 

The programs for A017230, there is no canonical definition to state claims against.
-/

/-! ## A017230.P1378078516428815812

`(9*n+5)^10`
-/

namespace A017230.P1378078516428815812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 5) ^ 10

end

end A017230.P1378078516428815812

/-! ## A017230.P2263210994180364570

`A017225(n)²`
-/

namespace A017230.P2263210994180364570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017225 n ^ 2

end

end A017230.P2263210994180364570

/-! ## A017230.P17650283993860849890

`sqrt(A017224(n)^5)`
-/

namespace A017230.P17650283993860849890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017224 n ^ 5 : ℝ)

end

end A017230.P17650283993860849890

/-! ## A017230.P9891817973485272662

`(A017221(n)*A017224(n))²`
-/

namespace A017230.P9891817973485272662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017221 n * A017224 n) ^ 2

end

end A017230.P9891817973485272662

/-! ## A017230.P17056466826869100543

`(A017222(n)²*A017221(n))²`
-/

namespace A017230.P17056466826869100543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017222 n ^ 2 * A017221 n) ^ 2

end

end A017230.P17056466826869100543

/-! ## A017230.P9255030052669821876

`sqrt(sqrt(A017228(n)))*A017228(n)`
-/

namespace A017230.P9255030052669821876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017228 n : ℝ)) * (A017228 n : ℝ)

end

end A017230.P9255030052669821876

/-! ## A017230.P4764700591314653708

`A061101(2*n+2)²²*A061101(2*n+2)`
-/

namespace A017230.P4764700591314653708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061101 (2 * n + 2) ^ 2) ^ 2 * A061101 (2 * n + 2)

end

end A017230.P4764700591314653708

/-! ## A017230.P1578712344414645662

`A016798(3*n+1)`
-/

namespace A017230.P1578712344414645662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016798 (3 * n + 1)

end

end A017230.P1578712344414645662

/-! ## A017230.P12278784137884389663

`A008454(A017341(n)-(n+1))`
-/

namespace A017230.P12278784137884389663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n - (n + 1 : ℤ)).toNat

end

end A017230.P12278784137884389663

/-! ## A017230.P3000252010704625342

`A008454(A017341(n)-1-n)`
-/

namespace A017230.P3000252010704625342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n - 1 - (n : ℤ)).toNat

end

end A017230.P3000252010704625342

/-! ## A017230.P11155201720542161870

`A008454(A017353(n)-(n+2))`
-/

namespace A017230.P11155201720542161870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n - (n + 2 : ℤ)).toNat

end

end A017230.P11155201720542161870

/-! ## A017230.P14249365520734647666

`A008454(A017353(n)-2-n)`
-/

namespace A017230.P14249365520734647666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n - 2 - (n : ℤ)).toNat

end

end A017230.P14249365520734647666

/-! ## A017230.P1447655442616664937

`A008454(A016813(2*n+1)+n)`
-/

namespace A017230.P1447655442616664937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 (2 * n + 1) + (n : ℤ)).toNat

end

end A017230.P1447655442616664937

/-! ## A017230.P13906271473417316641

`A008454(A008587(2*n+1)-n)`
-/

namespace A017230.P13906271473417316641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008587 (2 * n + 1) - (n : ℤ)).toNat

end

end A017230.P13906271473417316641

/-! ## A017230.P404080065121664603

`A008454(A001651(A016777(2*n+1)))`
-/

namespace A017230.P404080065121664603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A001651 (A016777 (2 * n + 1)).toNat).toNat

end

end A017230.P404080065121664603

/-!
# A017231: 

The programs for A017231, there is no canonical definition to state claims against.
-/

/-! ## A017231.P2096428615864588756

`(9*n+5)^11`
-/

namespace A017231.P2096428615864588756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 5) ^ 11

end

end A017231.P2096428615864588756

/-! ## A017231.P9193588717894503549

`A017225(n)²*A017221(n)`
-/

namespace A017231.P9193588717894503549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017225 n ^ 2 * A017221 n

end

end A017231.P9193588717894503549

/-! ## A017231.P9438794900969833740

`(A017221(n)*A017224(n))²*A017221(n)`
-/

namespace A017231.P9438794900969833740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017221 n * A017224 n) ^ 2 * A017221 n

end

end A017231.P9438794900969833740

/-! ## A017231.P18255067864281990754

`A016799(3*n+1)`
-/

namespace A017231.P18255067864281990754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016799 (3 * n + 1)

end

end A017231.P18255067864281990754

/-! ## A017231.P17893969674105359800

`A008455(A016813(2*n+1)+n)`
-/

namespace A017231.P17893969674105359800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n + 1) + (n : ℤ)).toNat

end

end A017231.P17893969674105359800

/-! ## A017231.P12901124587417701065

`A008455(A008585(2*n+1)+A001651(2*n+2))`
-/

namespace A017231.P12901124587417701065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n + 1) + A001651 (2 * n + 2)).toNat

end

end A017231.P12901124587417701065

/-!
# A017232: 

The programs for A017232, there is no canonical definition to state claims against.
-/

/-! ## A017232.P337163691469319655

`(9*n+5)^12`
-/

namespace A017232.P337163691469319655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 5) ^ 12

end

end A017232.P337163691469319655

/-! ## A017232.P445748068828713124

`A017226(n)²`
-/

namespace A017232.P445748068828713124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017226 n ^ 2

end

end A017232.P445748068828713124

/-! ## A017232.P17599006819912541494

`(A017221(n)*A017225(n))²`
-/

namespace A017232.P17599006819912541494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017221 n * A017225 n) ^ 2

end

end A017232.P17599006819912541494

/-! ## A017232.P11925258727214682708

`sqrt(A017228(n))*A017228(n)`
-/

namespace A017232.P11925258727214682708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017228 n : ℝ) * (A017228 n : ℝ)

end

end A017232.P11925258727214682708

/-! ## A017232.P12802348873227334517

`(A017221(n)*A017222(n))²²`
-/

namespace A017232.P12802348873227334517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017221 n * A017222 n) ^ 2) ^ 2

end

end A017232.P12802348873227334517

/-! ## A017232.P14374555292121403834

`(A017224(n)/A017221(n))²²`
-/

namespace A017232.P14374555292121403834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017224 n : ℚ) / (A017221 n : ℚ)) ^ 2) ^ 2

end

end A017232.P14374555292121403834

/-! ## A017232.P7671208977962926566

`(A061101(2*n+2)²*A061101(2*n+2))²`
-/

namespace A017232.P7671208977962926566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061101 (2 * n + 2) ^ 2 * A061101 (2 * n + 2)) ^ 2

end

end A017232.P7671208977962926566

/-! ## A017232.P15887012487675912119

`A016791(A016789(n)-1)²²`
-/

namespace A017232.P15887012487675912119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016791 (A016789 n - 1).toNat ^ 2) ^ 2

end

end A017232.P15887012487675912119

/-! ## A017232.P9755742333526678817

`A016791(A001651(2*n+1))²²`
-/

namespace A017232.P9755742333526678817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016791 (A001651 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A017232.P9755742333526678817

/-! ## A017232.P6895246374385201952

`sqrt(A017228(n)^3)`
-/

namespace A017232.P6895246374385201952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017228 n ^ 3 : ℝ)

end

end A017232.P6895246374385201952

/-! ## A017232.P1884835056585143113

`A008456(A017209(n)+1)`
-/

namespace A017232.P1884835056585143113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017209 n + 1).toNat

end

end A017232.P1884835056585143113

/-! ## A017232.P16800755574516383724

`A008456(A017341(n)-(n+1))`
-/

namespace A017232.P16800755574516383724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017341 n - (n + 1 : ℤ)).toNat

end

end A017232.P16800755574516383724

/-! ## A017232.P14872889256933630409

`A000578(A017209(n)+1)²²`
-/

namespace A017232.P14872889256933630409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017209 n + 1).toNat ^ 2) ^ 2

end

end A017232.P14872889256933630409

/-! ## A017232.P16258562261835226980

`A000578(A017233(n)-1)²²`
-/

namespace A017232.P16258562261835226980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017233 n - 1).toNat ^ 2) ^ 2

end

end A017232.P16258562261835226980

/-! ## A017232.P2209979487616793501

`A000578(A156638(2*n+2))²²`
-/

namespace A017232.P2209979487616793501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A156638 (2 * n + 2)).toNat ^ 2) ^ 2

end

end A017232.P2209979487616793501

/-!
# A017233: a(n) = 9*n + 6.

The programs for A017233, the canonical program `A017233.P12949994042344701827` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017233 has offset 0).

The definition of A017233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n+6` (program `A017233.P12949994042344701827`, by `A017233.P12949994042344701827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017233.P12949994042344701827

`9*n+6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017233

/-- `9*n+6` -/
def P12949994042344701827.Spec : Prop :=
  ∀ n, (P12949994042344701827.a n : ℤ) = A017233 n

theorem P12949994042344701827.correct : P12949994042344701827.Spec := by
  intro n
  simp only [A017233]

end A017233

/-!
# A017234: a(n) = (9*n + 6)^2.

The programs for A017234, the canonical program `A017234.P12830955371013100798` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017234 has offset 0).

The definition of A017234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+6)²` (program `A017234.P12830955371013100798`, by `A017234.P12830955371013100798.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017234.P12830955371013100798

`(9*n+6)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017234

/-- `(9*n+6)²` -/
def P12830955371013100798.Spec : Prop :=
  ∀ n, (P12830955371013100798.a n : ℤ) = A017234 n

theorem P12830955371013100798.correct : P12830955371013100798.Spec := by
  intro n
  simp only [A017234]

end A017234

/-! ## A017234.P16498340671498903629

`record[(gcd(9, n)+n-3)²]`
-/

namespace A017234.P16498340671498903629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 9 n : ℤ) + ((n : ℤ) - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017234.P16498340671498903629

namespace A017234

/-- `record[(gcd(9, n)+n-3)²]` -/
def P16498340671498903629.Spec : Prop :=
  ∀ n, P16498340671498903629.a n = A017234 n

end A017234

/-! ## A017234.P14066668317560991241

`9*∑[a(n-1)+18]` with `a(0)=4, a(1)=21`
-/

namespace A017234.P14066668317560991241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 21] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A017234.P14066668317560991241

namespace A017234

/-- `9*∑[a(n-1)+18]` -/
def P14066668317560991241.Spec : Prop :=
  ∀ n, (P14066668317560991241.a n : ℤ) = A017234 n

end A017234

/-! ## A017234.P17281510738031717710

`9*∑[ogf((4+13x+x^2)/(1-2x+x^2))]`
-/

namespace A017234.P17281510738031717710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 13, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A017234.P17281510738031717710

namespace A017234

/-- `9*∑[ogf((4+13x+x^2)/(1-2x+x^2))]` -/
def P17281510738031717710.Spec : Prop :=
  ∀ n, P17281510738031717710.a n = A017234 n

end A017234

/-! ## A017234.P8167988328097467399

`record[((n+1)/dr(n+1)+5)²]`
-/

namespace A017234.P8167988328097467399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) + 5) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017234.P8167988328097467399

namespace A017234

/-- `record[((n+1)/dr(n+1)+5)²]` -/
def P8167988328097467399.Spec : Prop :=
  ∀ n, P8167988328097467399.a n = (A017234 n : ℚ)

end A017234

/-! ## A017234.P8464127649218959387

`record[(dr(2*(3-n))-2*n)²]`
-/

namespace A017234.P8464127649218959387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (2 * (3 - (n : ℤ))) : ℤ) - (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017234.P8464127649218959387

namespace A017234

/-- `record[(dr(2*(3-n))-2*n)²]` -/
def P8464127649218959387.Spec : Prop :=
  ∀ n, P8464127649218959387.a n = A017234 n

end A017234

/-! ## A017234.P4677457425137502872

`sqrt(A017236(n))`
-/

namespace A017234.P4677457425137502872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017236 n : ℝ)

end

end A017234.P4677457425137502872

namespace A017234

/-- `sqrt(A017236(n))` -/
def P4677457425137502872.Spec : Prop :=
  ∀ n, P4677457425137502872.a n = (A017234 n : ℝ)

end A017234

/-! ## A017234.P7905146170012080621

`sqrt(sqrt(A017240(n)))`
-/

namespace A017234.P7905146170012080621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017240 n : ℝ))

end

end A017234.P7905146170012080621

namespace A017234

/-- `sqrt(sqrt(A017240(n)))` -/
def P7905146170012080621.Spec : Prop :=
  ∀ n, P7905146170012080621.a n = (A017234 n : ℝ)

end A017234

/-! ## A017234.P10862938704685692763

`A017238(n)^(1/3)`
-/

namespace A017234.P10862938704685692763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017238 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017234.P10862938704685692763

namespace A017234

/-- `A017238(n)^(1/3)` -/
def P10862938704685692763.Spec : Prop :=
  ∀ n, P10862938704685692763.a n = (A017234 n : ℝ)

end A017234

/-! ## A017234.P15722486329250723774

`A017235(n)^(2/3)`
-/

namespace A017234.P15722486329250723774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017235 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017234.P15722486329250723774

namespace A017234

/-- `A017235(n)^(2/3)` -/
def P15722486329250723774.Spec : Prop :=
  ∀ n, P15722486329250723774.a n = (A017234 n : ℝ)

end A017234

/-! ## A017234.P4607046877947289598

`A017233(n)*A017233(n)`
-/

namespace A017234.P4607046877947289598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n * A017233 n

end

end A017234.P4607046877947289598

namespace A017234

/-- `A017233(n)*A017233(n)` -/
def P4607046877947289598.Spec : Prop :=
  ∀ n, P4607046877947289598.a n = A017234 n

theorem P4607046877947289598.correct : P4607046877947289598.Spec := by
  intro n
  simp only [A017234, Nat.add_sub_cancel, A017234.P4607046877947289598.a, A017234.P12830955371013100798.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017234

/-! ## A017234.P14308802758581342809

`A016789(n)*A124388(n)`
-/

namespace A017234.P14308802758581342809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n * A124388 n

end

end A017234.P14308802758581342809

namespace A017234

/-- `A016789(n)*A124388(n)` -/
def P14308802758581342809.Spec : Prop :=
  ∀ n, P14308802758581342809.a n = A017234 n

theorem P14308802758581342809.correct : P14308802758581342809.Spec := by
  intro n
  simp only [A017234, Nat.add_sub_cancel, A017234.P14308802758581342809.a, A017234.P12830955371013100798.a, A016789, A016789.P8277564872725303677.a, A124388, A124388.P7911995561138639037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017234

/-! ## A017234.P7729870798732957938

`A017235(n)/A017233(n)`
-/

namespace A017234.P7729870798732957938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017235 n : ℚ) / (A017233 n : ℚ)

end

end A017234.P7729870798732957938

namespace A017234

/-- `A017235(n)/A017233(n)` -/
def P7729870798732957938.Spec : Prop :=
  ∀ n, P7729870798732957938.a n = (A017234 n : ℚ)

end A017234

/-! ## A017234.P11679724917630493647

`A017237(n)/A017235(n)`
-/

namespace A017234.P11679724917630493647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017237 n : ℚ) / (A017235 n : ℚ)

end

end A017234.P11679724917630493647

namespace A017234

/-- `A017237(n)/A017235(n)` -/
def P11679724917630493647.Spec : Prop :=
  ∀ n, P11679724917630493647.a n = (A017234 n : ℚ)

end A017234

/-! ## A017234.P12791578481998705511

`A017238(n)/A017236(n)`
-/

namespace A017234.P12791578481998705511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017238 n : ℚ) / (A017236 n : ℚ)

end

end A017234.P12791578481998705511

namespace A017234

/-- `A017238(n)/A017236(n)` -/
def P12791578481998705511.Spec : Prop :=
  ∀ n, P12791578481998705511.a n = (A017234 n : ℚ)

end A017234

/-! ## A017234.P3353047071948333384

`A180578(n+1)+A016946(n)`
-/

namespace A017234.P3353047071948333384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180578 (n + 1) + A016946 n

end

end A017234.P3353047071948333384

namespace A017234

/-- `A180578(n+1)+A016946(n)` -/
def P3353047071948333384.Spec : Prop :=
  ∀ n, P3353047071948333384.a n = A017234 n

theorem P3353047071948333384.correct : P3353047071948333384.Spec := by
  intro n
  simp only [A017234, Nat.add_sub_cancel, A017234.P3353047071948333384.a, A017234.P12830955371013100798.a, A016946, A016946.P16494615086453922637.a, A180578, A180578.P8423033402098098908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017234

/-! ## A017234.P16540265927083459044

`A154277(n+1)+A082286(n)`
-/

namespace A017234.P16540265927083459044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 (n + 1) + A082286 n

end

end A017234.P16540265927083459044

namespace A017234

/-- `A154277(n+1)+A082286(n)` -/
def P16540265927083459044.Spec : Prop :=
  ∀ n, P16540265927083459044.a n = A017234 n

theorem P16540265927083459044.correct : P16540265927083459044.Spec := by
  intro n
  simp only [A017234, Nat.add_sub_cancel, A017234.P16540265927083459044.a, A017234.P12830955371013100798.a, A082286, A082286.P10023046808755581064.a, A154277, A154277.P16860181885600045702.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017234

/-! ## A017234.P14620488598313814595

`A017236(n)²/A017235(n)²`
-/

namespace A017234.P14620488598313814595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017236 n ^ 2 : ℚ) / (A017235 n ^ 2 : ℚ)

end

end A017234.P14620488598313814595

namespace A017234

/-- `A017236(n)²/A017235(n)²` -/
def P14620488598313814595.Spec : Prop :=
  ∀ n, P14620488598313814595.a n = (A017234 n : ℚ)

end A017234

/-! ## A017234.P11133015853783714760

`A017233(n)²²²/A017238(n)`
-/

namespace A017234.P11133015853783714760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017233 n ^ 2) ^ 2) ^ 2 : ℚ) / (A017238 n : ℚ)

end

end A017234.P11133015853783714760

namespace A017234

/-- `A017233(n)²²²/A017238(n)` -/
def P11133015853783714760.Spec : Prop :=
  ∀ n, P11133015853783714760.a n = (A017234 n : ℚ)

end A017234

/-!
# A017235: a(n) = (9*n + 6)^3.

The programs for A017235, the canonical program `A017235.P3492492154198024914` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017235 has offset 0).

The definition of A017235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+6)^3` (program `A017235.P3492492154198024914`, by `A017235.P3492492154198024914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017235.P3492492154198024914

`(9*n+6)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017235

/-- `(9*n+6)^3` -/
def P3492492154198024914.Spec : Prop :=
  ∀ n, (P3492492154198024914.a n : ℤ) = A017235 n

theorem P3492492154198024914.correct : P3492492154198024914.Spec := by
  intro n
  simp only [A017235]

end A017235

/-! ## A017235.P2524182729040787595

`sqrt(A017238(n))`
-/

namespace A017235.P2524182729040787595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017238 n : ℝ)

end

end A017235.P2524182729040787595

namespace A017235

/-- `sqrt(A017238(n))` -/
def P2524182729040787595.Spec : Prop :=
  ∀ n, P2524182729040787595.a n = (A017235 n : ℝ)

end A017235

/-! ## A017235.P9709033139792571121

`sqrt(A017234(n)^3)`
-/

namespace A017235.P9709033139792571121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017234 n ^ 3 : ℝ)

end

end A017235.P9709033139792571121

namespace A017235

/-- `sqrt(A017234(n)^3)` -/
def P9709033139792571121.Spec : Prop :=
  ∀ n, P9709033139792571121.a n = (A017235 n : ℝ)

end A017235

/-! ## A017235.P5930480277853329291

`A017233(n)*A017234(n)`
-/

namespace A017235.P5930480277853329291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n * A017234 n

end

end A017235.P5930480277853329291

namespace A017235

/-- `A017233(n)*A017234(n)` -/
def P5930480277853329291.Spec : Prop :=
  ∀ n, P5930480277853329291.a n = A017235 n

theorem P5930480277853329291.correct : P5930480277853329291.Spec := by
  intro n
  simp only [A017235, Nat.add_sub_cancel, A017235.P5930480277853329291.a, A017235.P3492492154198024914.a, A017233, A017233.P12949994042344701827.a, A017234, A017234.P12830955371013100798.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017235

/-! ## A017235.P7328024328703314035

`A017236(n)/A017233(n)`
-/

namespace A017235.P7328024328703314035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017236 n : ℚ) / (A017233 n : ℚ)

end

end A017235.P7328024328703314035

namespace A017235

/-- `A017236(n)/A017233(n)` -/
def P7328024328703314035.Spec : Prop :=
  ∀ n, P7328024328703314035.a n = (A017235 n : ℚ)

end A017235

/-! ## A017235.P2387381090027352309

`A017237(n)/A017234(n)`
-/

namespace A017235.P2387381090027352309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017237 n : ℚ) / (A017234 n : ℚ)

end

end A017235.P2387381090027352309

namespace A017235

/-- `A017237(n)/A017234(n)` -/
def P2387381090027352309.Spec : Prop :=
  ∀ n, P2387381090027352309.a n = (A017235 n : ℚ)

end A017235

/-! ## A017235.P2413177096780592418

`lcm(A016791(n), A040703(n))`
-/

namespace A017235.P2413177096780592418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016791 n) (A040703 n)

end

end A017235.P2413177096780592418

namespace A017235

/-- `lcm(A016791(n), A040703(n))` -/
def P2413177096780592418.Spec : Prop :=
  ∀ n, (P2413177096780592418.a n : ℤ) = A017235 n

end A017235

/-! ## A017235.P17486501975619155100

`A017237(n)/A017233(n)²`
-/

namespace A017235.P17486501975619155100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017237 n : ℚ) / (A017233 n ^ 2 : ℚ)

end

end A017235.P17486501975619155100

namespace A017235

/-- `A017237(n)/A017233(n)²` -/
def P17486501975619155100.Spec : Prop :=
  ∀ n, P17486501975619155100.a n = (A017235 n : ℚ)

end A017235

/-! ## A017235.P15030367609687596078

`A017239(n)/A017234(n)²`
-/

namespace A017235.P15030367609687596078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / (A017234 n ^ 2 : ℚ)

end

end A017235.P15030367609687596078

namespace A017235

/-- `A017239(n)/A017234(n)²` -/
def P15030367609687596078.Spec : Prop :=
  ∀ n, P15030367609687596078.a n = (A017235 n : ℚ)

end A017235

/-! ## A017235.P17153984935831557179

`(A017221(n)+1)*A017234(n)`
-/

namespace A017235.P17153984935831557179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017221 n + 1) * A017234 n

end

end A017235.P17153984935831557179

namespace A017235

/-- `(A017221(n)+1)*A017234(n)` -/
def P17153984935831557179.Spec : Prop :=
  ∀ n, P17153984935831557179.a n = A017235 n

theorem P17153984935831557179.correct : P17153984935831557179.Spec := by
  intro n
  simp only [A017235, Nat.add_sub_cancel, A017235.P17153984935831557179.a, A017235.P3492492154198024914.a, A017221, A017221.P17146920171309072654.a, A017234, A017234.P12830955371013100798.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017235

/-! ## A017235.P685560007204765329

`(A017245(n)-1)*A017234(n)`
-/

namespace A017235.P685560007204765329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017245 n - 1) * A017234 n

end

end A017235.P685560007204765329

namespace A017235

/-- `(A017245(n)-1)*A017234(n)` -/
def P685560007204765329.Spec : Prop :=
  ∀ n, P685560007204765329.a n = A017235 n

theorem P685560007204765329.correct : P685560007204765329.Spec := by
  intro n
  simp only [A017235, Nat.add_sub_cancel, A017235.P685560007204765329.a, A017235.P3492492154198024914.a, A017234, A017234.P12830955371013100798.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017235

/-! ## A017235.P4421229478404113857

`A017239(n)/A017233(n)²²`
-/

namespace A017235.P4421229478404113857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / ((A017233 n ^ 2) ^ 2 : ℚ)

end

end A017235.P4421229478404113857

namespace A017235

/-- `A017239(n)/A017233(n)²²` -/
def P4421229478404113857.Spec : Prop :=
  ∀ n, P4421229478404113857.a n = (A017235 n : ℚ)

end A017235

/-! ## A017235.P16489080712767473250

`A016791(n)/A016779(n)*A017199(n)`
-/

namespace A017235.P16489080712767473250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016791 n : ℚ) / (A016779 n : ℚ) * (A017199 n : ℚ)

end

end A017235.P16489080712767473250

namespace A017235

/-- `A016791(n)/A016779(n)*A017199(n)` -/
def P16489080712767473250.Spec : Prop :=
  ∀ n, P16489080712767473250.a n = (A017235 n : ℚ)

theorem P16489080712767473250.correct : P16489080712767473250.Spec := by
  intro n
  simp only [A017235, Nat.add_sub_cancel, A017235.P16489080712767473250.a, A017235.P3492492154198024914.a, A016779, A016779.P12183208488872344435.a, A016791, A016791.P13208806347124039064.a, A017199, A017199.P15140372890184300170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017235

/-! ## A017235.P15695893527524081608

`A017234(n)*A122709(n+1)`
-/

namespace A017235.P15695893527524081608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n * A122709 (n + 1)

end

end A017235.P15695893527524081608

namespace A017235

/-- `A017234(n)*A122709(n+1)` -/
def P15695893527524081608.Spec : Prop :=
  ∀ n, P15695893527524081608.a n = A017235 n

end A017235

/-! ## A017235.P3095047861411701124

`Δ[A038764(n)]²*Δ[A038764(n)]`
-/

namespace A017235.P3095047861411701124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017235.P3095047861411701124

namespace A017235

/-- `Δ[A038764(n)]²*Δ[A038764(n)]` -/
def P3095047861411701124.Spec : Prop :=
  ∀ n, P3095047861411701124.a n = A017235 n

end A017235

/-! ## A017235.P13894576265669543120

`A017233(n)*A122709(n+1)*A017233(n)`
-/

namespace A017235.P13894576265669543120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n * A122709 (n + 1) * A017233 n

end

end A017235.P13894576265669543120

namespace A017235

/-- `A017233(n)*A122709(n+1)*A017233(n)` -/
def P13894576265669543120.Spec : Prop :=
  ∀ n, P13894576265669543120.a n = A017235 n

end A017235

/-! ## A017235.P14368110565827592148

`A179805(n+2)²*A179805(n+2)`
-/

namespace A017235.P14368110565827592148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (n + 2) ^ 2 * A179805 (n + 2)

end

end A017235.P14368110565827592148

namespace A017235

/-- `A179805(n+2)²*A179805(n+2)` -/
def P14368110565827592148.Spec : Prop :=
  ∀ n, P14368110565827592148.a n = A017235 n

end A017235

/-! ## A017235.P16046008112183651897

`record[A269416(n)^3]`
-/

namespace A017235.P16046008112183651897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269416 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017235.P16046008112183651897

namespace A017235

/-- `record[A269416(n)^3]` -/
def P16046008112183651897.Spec : Prop :=
  ∀ n, P16046008112183651897.a n = A017235 n

end A017235

/-! ## A017235.P16418812950237243257

`A017199(2*n+1)/8`
-/

namespace A017235.P16418812950237243257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017199 (2 * n + 1) : ℚ) / 8

end

end A017235.P16418812950237243257

namespace A017235

/-- `A017199(2*n+1)/8` -/
def P16418812950237243257.Spec : Prop :=
  ∀ n, P16418812950237243257.a n = (A017235 n : ℚ)

theorem P16418812950237243257.correct : P16418812950237243257.Spec := by
  intro n
  simp only [A017235, Nat.add_sub_cancel, A017235.P16418812950237243257.a, A017235.P3492492154198024914.a, A017199, A017199.P15140372890184300170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017235

/-!
# A017236: a(n) = (9*n + 6)^4.

The programs for A017236, the canonical program `A017236.P11993750299410406662` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017236 has offset 0).

The definition of A017236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+6)^4` (program `A017236.P11993750299410406662`, by `A017236.P11993750299410406662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017236.P11993750299410406662

`(9*n+6)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017236

/-- `(9*n+6)^4` -/
def P11993750299410406662.Spec : Prop :=
  ∀ n, (P11993750299410406662.a n : ℤ) = A017236 n

theorem P11993750299410406662.correct : P11993750299410406662.Spec := by
  intro n
  simp only [A017236]

end A017236

/-! ## A017236.P10491508989410554396

`Δ[C(3*n+1, 2)]²²`
-/

namespace A017236.P10491508989410554396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017236.P10491508989410554396

namespace A017236

/-- `Δ[C(3*n+1, 2)]²²` -/
def P10491508989410554396.Spec : Prop :=
  ∀ n, P10491508989410554396.a n = A017236 n

theorem P10491508989410554396.correct : P10491508989410554396.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P10491508989410554396.f1, A017236.P10491508989410554396.a, A017236.P11993750299410406662.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P10491588885200685772

`record[((n+2)*gcd(3, n))²²]`
-/

namespace A017236.P10491588885200685772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n + 2) * Nat.gcd 3 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017236.P10491588885200685772

namespace A017236

/-- `record[((n+2)*gcd(3, n))²²]` -/
def P10491588885200685772.Spec : Prop :=
  ∀ n, (P10491588885200685772.a n : ℤ) = A017236 n

end A017236

/-! ## A017236.P8170445044326329128

`lcm(3, 2*n+n+2)²²`
-/

namespace A017236.P8170445044326329128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (2 * n + (n + 2)) ^ 2) ^ 2

end

end A017236.P8170445044326329128

namespace A017236

/-- `lcm(3, 2*n+n+2)²²` -/
def P8170445044326329128.Spec : Prop :=
  ∀ n, (P8170445044326329128.a n : ℤ) = A017236 n

end A017236

/-! ## A017236.P9956856395524774752

`(record[lcm(4, n+1)]+n+2)²²`
-/

namespace A017236.P9956856395524774752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 2)) ^ 2) ^ 2

end

end A017236.P9956856395524774752

namespace A017236

/-- `(record[lcm(4, n+1)]+n+2)²²` -/
def P9956856395524774752.Spec : Prop :=
  ∀ n, (P9956856395524774752.a n : ℤ) = A017236 n

end A017236

/-! ## A017236.P14260971420712086401

`(Δ[and(2*n+1, 2*n)²]+n+2)²²`
-/

namespace A017236.P14260971420712086401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 2 : ℤ)) ^ 2) ^ 2

end

end A017236.P14260971420712086401

namespace A017236

/-- `(Δ[and(2*n+1, 2*n)²]+n+2)²²` -/
def P14260971420712086401.Spec : Prop :=
  ∀ n, P14260971420712086401.a n = A017236 n

end A017236

/-! ## A017236.P14024504636858714391

`A017234(n)²`
-/

namespace A017236.P14024504636858714391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n ^ 2

end

end A017236.P14024504636858714391

namespace A017236

/-- `A017234(n)²` -/
def P14024504636858714391.Spec : Prop :=
  ∀ n, P14024504636858714391.a n = A017236 n

theorem P14024504636858714391.correct : P14024504636858714391.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P14024504636858714391.a, A017236.P11993750299410406662.a, A017234, A017234.P12830955371013100798.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P9488660849927957311

`sqrt(A017240(n))`
-/

namespace A017236.P9488660849927957311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017240 n : ℝ)

end

end A017236.P9488660849927957311

namespace A017236

/-- `sqrt(A017240(n))` -/
def P9488660849927957311.Spec : Prop :=
  ∀ n, P9488660849927957311.a n = (A017236 n : ℝ)

end A017236

/-! ## A017236.P3969414944026128797

`A017233(n)²²`
-/

namespace A017236.P3969414944026128797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n ^ 2) ^ 2

end

end A017236.P3969414944026128797

namespace A017236

/-- `A017233(n)²²` -/
def P3969414944026128797.Spec : Prop :=
  ∀ n, P3969414944026128797.a n = A017236 n

theorem P3969414944026128797.correct : P3969414944026128797.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P3969414944026128797.a, A017236.P11993750299410406662.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P3068758786519819315

`Δ[A081266(n)]²²`
-/

namespace A017236.P3068758786519819315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017236.P3068758786519819315

namespace A017236

/-- `Δ[A081266(n)]²²` -/
def P3068758786519819315.Spec : Prop :=
  ∀ n, P3068758786519819315.a n = A017236 n

end A017236

/-! ## A017236.P6742945670484894446

`(A017221(n)+1)²²`
-/

namespace A017236.P6742945670484894446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017221 n + 1) ^ 2) ^ 2

end

end A017236.P6742945670484894446

namespace A017236

/-- `(A017221(n)+1)²²` -/
def P6742945670484894446.Spec : Prop :=
  ∀ n, P6742945670484894446.a n = A017236 n

theorem P6742945670484894446.correct : P6742945670484894446.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P6742945670484894446.a, A017236.P11993750299410406662.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P14805753759982565732

`(A017209(n)+2)²²`
-/

namespace A017236.P14805753759982565732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017209 n + 2) ^ 2) ^ 2

end

end A017236.P14805753759982565732

namespace A017236

/-- `(A017209(n)+2)²²` -/
def P14805753759982565732.Spec : Prop :=
  ∀ n, P14805753759982565732.a n = A017236 n

theorem P14805753759982565732.correct : P14805753759982565732.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P14805753759982565732.a, A017236.P11993750299410406662.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P11606286808804847000

`(1-A017245(n))²²`
-/

namespace A017236.P11606286808804847000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017245 n) ^ 2) ^ 2

end

end A017236.P11606286808804847000

namespace A017236

/-- `(1-A017245(n))²²` -/
def P11606286808804847000.Spec : Prop :=
  ∀ n, P11606286808804847000.a n = A017236 n

theorem P11606286808804847000.correct : P11606286808804847000.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P11606286808804847000.a, A017236.P11993750299410406662.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P17527850376087390158

`(A017197(n)+3)²²`
-/

namespace A017236.P17527850376087390158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017197 n + 3) ^ 2) ^ 2

end

end A017236.P17527850376087390158

namespace A017236

/-- `(A017197(n)+3)²²` -/
def P17527850376087390158.Spec : Prop :=
  ∀ n, P17527850376087390158.a n = A017236 n

theorem P17527850376087390158.correct : P17527850376087390158.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P17527850376087390158.a, A017236.P11993750299410406662.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P8962723505433698075

`(2-A017257(n))²²`
-/

namespace A017236.P8962723505433698075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017257 n) ^ 2) ^ 2

end

end A017236.P8962723505433698075

namespace A017236

/-- `(2-A017257(n))²²` -/
def P8962723505433698075.Spec : Prop :=
  ∀ n, P8962723505433698075.a n = A017236 n

theorem P8962723505433698075.correct : P8962723505433698075.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P8962723505433698075.a, A017236.P11993750299410406662.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P15241077773162679745

`(3*A016789(n))²²`
-/

namespace A017236.P15241077773162679745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * A016789 n) ^ 2) ^ 2

end

end A017236.P15241077773162679745

namespace A017236

/-- `(3*A016789(n))²²` -/
def P15241077773162679745.Spec : Prop :=
  ∀ n, P15241077773162679745.a n = A017236 n

theorem P15241077773162679745.correct : P15241077773162679745.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P15241077773162679745.a, A017236.P11993750299410406662.a, A016789, A016789.P8277564872725303677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P16989088091134879017

`(A124388(n)/3)²²`
-/

namespace A017236.P16989088091134879017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A124388 n : ℚ) / 3) ^ 2) ^ 2

end

end A017236.P16989088091134879017

namespace A017236

/-- `(A124388(n)/3)²²` -/
def P16989088091134879017.Spec : Prop :=
  ∀ n, P16989088091134879017.a n = (A017236 n : ℚ)

theorem P16989088091134879017.correct : P16989088091134879017.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P16989088091134879017.a, A017236.P11993750299410406662.a, A124388, A124388.P7911995561138639037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P12858860863062043322

`(A017137(n)+n)²²`
-/

namespace A017236.P12858860863062043322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017137 n + (n : ℤ)) ^ 2) ^ 2

end

end A017236.P12858860863062043322

namespace A017236

/-- `(A017137(n)+n)²²` -/
def P12858860863062043322.Spec : Prop :=
  ∀ n, P12858860863062043322.a n = A017236 n

theorem P12858860863062043322.correct : P12858860863062043322.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P12858860863062043322.a, A017236.P11993750299410406662.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P6593496886354837078

`(n-A017341(n))²²`
-/

namespace A017236.P6593496886354837078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017341 n) ^ 2) ^ 2

end

end A017236.P6593496886354837078

namespace A017236

/-- `(n-A017341(n))²²` -/
def P6593496886354837078.Spec : Prop :=
  ∀ n, P6593496886354837078.a n = A017236 n

theorem P6593496886354837078.correct : P6593496886354837078.Spec := by
  intro n
  simp only [A017236, Nat.add_sub_cancel, A017236.P6593496886354837078.a, A017236.P11993750299410406662.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017236

/-! ## A017236.P12019313663431414225

`(sqrt(A017222(n))+1)²²`
-/

namespace A017236.P12019313663431414225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017222 n : ℝ) + 1) ^ 2) ^ 2

end

end A017236.P12019313663431414225

namespace A017236

/-- `(sqrt(A017222(n))+1)²²` -/
def P12019313663431414225.Spec : Prop :=
  ∀ n, P12019313663431414225.a n = (A017236 n : ℝ)

end A017236

/-!
# A017237: a(n) = (9*n + 6)^5.

The programs for A017237, the canonical program `A017237.P15396052644655322925` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017237 has offset 0).

The definition of A017237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+6)^5` (program `A017237.P15396052644655322925`, by `A017237.P15396052644655322925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017237.P15396052644655322925

`(9*n+6)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017237

/-- `(9*n+6)^5` -/
def P15396052644655322925.Spec : Prop :=
  ∀ n, (P15396052644655322925.a n : ℤ) = A017237 n

theorem P15396052644655322925.correct : P15396052644655322925.Spec := by
  intro n
  simp only [A017237]

end A017237

/-! ## A017237.P14982237416435287583

`sqrt(A017234(n)^5)`
-/

namespace A017237.P14982237416435287583
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017234 n ^ 5 : ℝ)

end

end A017237.P14982237416435287583

namespace A017237

/-- `sqrt(A017234(n)^5)` -/
def P14982237416435287583.Spec : Prop :=
  ∀ n, P14982237416435287583.a n = (A017237 n : ℝ)

end A017237

/-! ## A017237.P14628971048139784501

`(9*n+6)*A017236(n)`
-/

namespace A017237.P14628971048139784501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 6 : ℤ) * A017236 n

end

end A017237.P14628971048139784501

namespace A017237

/-- `(9*n+6)*A017236(n)` -/
def P14628971048139784501.Spec : Prop :=
  ∀ n, P14628971048139784501.a n = A017237 n

theorem P14628971048139784501.correct : P14628971048139784501.Spec := by
  intro n
  simp only [A017237, Nat.add_sub_cancel, A017237.P14628971048139784501.a, A017237.P15396052644655322925.a, A017236, A017236.P11993750299410406662.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017237

/-! ## A017237.P3889605883383161443

`A017234(n)*A017235(n)`
-/

namespace A017237.P3889605883383161443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n * A017235 n

end

end A017237.P3889605883383161443

namespace A017237

/-- `A017234(n)*A017235(n)` -/
def P3889605883383161443.Spec : Prop :=
  ∀ n, P3889605883383161443.a n = A017237 n

theorem P3889605883383161443.correct : P3889605883383161443.Spec := by
  intro n
  simp only [A017237, Nat.add_sub_cancel, A017237.P3889605883383161443.a, A017237.P15396052644655322925.a, A017234, A017234.P12830955371013100798.a, A017235, A017235.P3492492154198024914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017237

/-! ## A017237.P14809741918178964042

`A017238(n)/A017233(n)`
-/

namespace A017237.P14809741918178964042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017238 n : ℚ) / (A017233 n : ℚ)

end

end A017237.P14809741918178964042

namespace A017237

/-- `A017238(n)/A017233(n)` -/
def P14809741918178964042.Spec : Prop :=
  ∀ n, P14809741918178964042.a n = (A017237 n : ℚ)

end A017237

/-! ## A017237.P11488234798204267250

`A017239(n)/A017234(n)`
-/

namespace A017237.P11488234798204267250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / (A017234 n : ℚ)

end

end A017237.P11488234798204267250

namespace A017237

/-- `A017239(n)/A017234(n)` -/
def P11488234798204267250.Spec : Prop :=
  ∀ n, P11488234798204267250.a n = (A017237 n : ℚ)

end A017237

/-! ## A017237.P310853709142863313

`A017233(n)²*A017235(n)`
-/

namespace A017237.P310853709142863313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n ^ 2 * A017235 n

end

end A017237.P310853709142863313

namespace A017237

/-- `A017233(n)²*A017235(n)` -/
def P310853709142863313.Spec : Prop :=
  ∀ n, P310853709142863313.a n = A017237 n

theorem P310853709142863313.correct : P310853709142863313.Spec := by
  intro n
  simp only [A017237, Nat.add_sub_cancel, A017237.P310853709142863313.a, A017237.P15396052644655322925.a, A017233, A017233.P12949994042344701827.a, A017235, A017235.P3492492154198024914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017237

/-! ## A017237.P7904371519139881198

`A017234(n)²*A017233(n)`
-/

namespace A017237.P7904371519139881198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n ^ 2 * A017233 n

end

end A017237.P7904371519139881198

namespace A017237

/-- `A017234(n)²*A017233(n)` -/
def P7904371519139881198.Spec : Prop :=
  ∀ n, P7904371519139881198.a n = A017237 n

theorem P7904371519139881198.correct : P7904371519139881198.Spec := by
  intro n
  simp only [A017237, Nat.add_sub_cancel, A017237.P7904371519139881198.a, A017237.P15396052644655322925.a, A017233, A017233.P12949994042344701827.a, A017234, A017234.P12830955371013100798.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017237

/-! ## A017237.P18339809631282851057

`A017236(n)²/A017235(n)`
-/

namespace A017237.P18339809631282851057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017236 n ^ 2 : ℚ) / (A017235 n : ℚ)

end

end A017237.P18339809631282851057

namespace A017237

/-- `A017236(n)²/A017235(n)` -/
def P18339809631282851057.Spec : Prop :=
  ∀ n, P18339809631282851057.a n = (A017237 n : ℚ)

end A017237

/-! ## A017237.P2623040051767671462

`A017239(n)/A017233(n)²`
-/

namespace A017237.P2623040051767671462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / (A017233 n ^ 2 : ℚ)

end

end A017237.P2623040051767671462

namespace A017237

/-- `A017239(n)/A017233(n)²` -/
def P2623040051767671462.Spec : Prop :=
  ∀ n, P2623040051767671462.a n = (A017237 n : ℚ)

end A017237

/-! ## A017237.P2254580986861860451

`(A017221(n)+1)*A017234(n)²`
-/

namespace A017237.P2254580986861860451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017221 n + 1) * A017234 n ^ 2

end

end A017237.P2254580986861860451

namespace A017237

/-- `(A017221(n)+1)*A017234(n)²` -/
def P2254580986861860451.Spec : Prop :=
  ∀ n, P2254580986861860451.a n = A017237 n

theorem P2254580986861860451.correct : P2254580986861860451.Spec := by
  intro n
  simp only [A017237, Nat.add_sub_cancel, A017237.P2254580986861860451.a, A017237.P15396052644655322925.a, A017221, A017221.P17146920171309072654.a, A017234, A017234.P12830955371013100798.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017237

/-! ## A017237.P5051242016962530551

`(A017245(n)-1)*A017234(n)²`
-/

namespace A017237.P5051242016962530551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017245 n - 1) * A017234 n ^ 2

end

end A017237.P5051242016962530551

namespace A017237

/-- `(A017245(n)-1)*A017234(n)²` -/
def P5051242016962530551.Spec : Prop :=
  ∀ n, P5051242016962530551.a n = A017237 n

theorem P5051242016962530551.correct : P5051242016962530551.Spec := by
  intro n
  simp only [A017237, Nat.add_sub_cancel, A017237.P5051242016962530551.a, A017237.P15396052644655322925.a, A017234, A017234.P12830955371013100798.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017237

/-! ## A017237.P3582930712007653705

`A017239(n)/(1-A017245(n))²`
-/

namespace A017237.P3582930712007653705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / ((1 - A017245 n) ^ 2 : ℚ)

end

end A017237.P3582930712007653705

namespace A017237

/-- `A017239(n)/(1-A017245(n))²` -/
def P3582930712007653705.Spec : Prop :=
  ∀ n, P3582930712007653705.a n = (A017237 n : ℚ)

end A017237

/-! ## A017237.P12315750922788207756

`A017233(n)/A017235(n)*A017239(n)`
-/

namespace A017237.P12315750922788207756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017233 n : ℚ) / (A017235 n : ℚ) * (A017239 n : ℚ)

end

end A017237.P12315750922788207756

namespace A017237

/-- `A017233(n)/A017235(n)*A017239(n)` -/
def P12315750922788207756.Spec : Prop :=
  ∀ n, P12315750922788207756.a n = (A017237 n : ℚ)

end A017237

/-! ## A017237.P17391125967097731606

`A122709(n+1)²*A017235(n)`
-/

namespace A017237.P17391125967097731606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 (n + 1) ^ 2 * A017235 n

end

end A017237.P17391125967097731606

namespace A017237

/-- `A122709(n+1)²*A017235(n)` -/
def P17391125967097731606.Spec : Prop :=
  ∀ n, P17391125967097731606.a n = A017237 n

end A017237

/-! ## A017237.P1555744830462336481

`A017234(n)²*A122709(n+1)`
-/

namespace A017237.P1555744830462336481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n ^ 2 * A122709 (n + 1)

end

end A017237.P1555744830462336481

namespace A017237

/-- `A017234(n)²*A122709(n+1)` -/
def P1555744830462336481.Spec : Prop :=
  ∀ n, P1555744830462336481.a n = A017237 n

end A017237

/-! ## A017237.P8762976888673711662

`A017239(n)/A122709(n+1)²`
-/

namespace A017237.P8762976888673711662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / (A122709 (n + 1) ^ 2 : ℚ)

end

end A017237.P8762976888673711662

namespace A017237

/-- `A017239(n)/A122709(n+1)²` -/
def P8762976888673711662.Spec : Prop :=
  ∀ n, P8762976888673711662.a n = (A017237 n : ℚ)

end A017237

/-! ## A017237.P15891148011204622821

`A179805(n+2)²²*A179805(n+2)`
-/

namespace A017237.P15891148011204622821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A179805 (n + 2) ^ 2) ^ 2 * A179805 (n + 2)

end

end A017237.P15891148011204622821

namespace A017237

/-- `A179805(n+2)²²*A179805(n+2)` -/
def P15891148011204622821.Spec : Prop :=
  ∀ n, P15891148011204622821.a n = A017237 n

end A017237

/-! ## A017237.P14448680619090402040

`record[A269416(n)^5]`
-/

namespace A017237.P14448680619090402040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269416 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017237.P14448680619090402040

namespace A017237

/-- `record[A269416(n)^5]` -/
def P14448680619090402040.Spec : Prop :=
  ∀ n, P14448680619090402040.a n = A017237 n

end A017237

/-!
# A017238: a(n) = (9*n + 6)^6.

The programs for A017238, the canonical program `A017238.P6905146162946652620` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017238 has offset 0).

The definition of A017238 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+6)^6` (program `A017238.P6905146162946652620`, by `A017238.P6905146162946652620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017238.P6905146162946652620

`(9*n+6)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017238

/-- `(9*n+6)^6` -/
def P6905146162946652620.Spec : Prop :=
  ∀ n, (P6905146162946652620.a n : ℤ) = A017238 n

theorem P6905146162946652620.correct : P6905146162946652620.Spec := by
  intro n
  simp only [A017238]

end A017238

/-! ## A017238.P2922576564147863354

`A017235(n)²`
-/

namespace A017238.P2922576564147863354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017235 n ^ 2

end

end A017238.P2922576564147863354

namespace A017238

/-- `A017235(n)²` -/
def P2922576564147863354.Spec : Prop :=
  ∀ n, P2922576564147863354.a n = A017238 n

theorem P2922576564147863354.correct : P2922576564147863354.Spec := by
  intro n
  simp only [A017238, Nat.add_sub_cancel, A017238.P2922576564147863354.a, A017238.P6905146162946652620.a, A017235, A017235.P3492492154198024914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017238

/-! ## A017238.P13706225187044134683

`sqrt(A017236(n)^3)`
-/

namespace A017238.P13706225187044134683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017236 n ^ 3 : ℝ)

end

end A017238.P13706225187044134683

namespace A017238

/-- `sqrt(A017236(n)^3)` -/
def P13706225187044134683.Spec : Prop :=
  ∀ n, P13706225187044134683.a n = (A017238 n : ℝ)

end A017238

/-! ## A017238.P5749743428728928937

`(Δ[A081266(n)]^3)²`
-/

namespace A017238.P5749743428728928937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017238.P5749743428728928937

namespace A017238

/-- `(Δ[A081266(n)]^3)²` -/
def P5749743428728928937.Spec : Prop :=
  ∀ n, P5749743428728928937.a n = A017238 n

end A017238

/-! ## A017238.P5667155496432713094

`A017233(n)*A017237(n)`
-/

namespace A017238.P5667155496432713094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n * A017237 n

end

end A017238.P5667155496432713094

namespace A017238

/-- `A017233(n)*A017237(n)` -/
def P5667155496432713094.Spec : Prop :=
  ∀ n, P5667155496432713094.a n = A017238 n

theorem P5667155496432713094.correct : P5667155496432713094.Spec := by
  intro n
  simp only [A017238, Nat.add_sub_cancel, A017238.P5667155496432713094.a, A017238.P6905146162946652620.a, A017233, A017233.P12949994042344701827.a, A017237, A017237.P15396052644655322925.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017238

/-! ## A017238.P14101284607494031623

`A017234(n)*A017236(n)`
-/

namespace A017238.P14101284607494031623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n * A017236 n

end

end A017238.P14101284607494031623

namespace A017238

/-- `A017234(n)*A017236(n)` -/
def P14101284607494031623.Spec : Prop :=
  ∀ n, P14101284607494031623.a n = A017238 n

theorem P14101284607494031623.correct : P14101284607494031623.Spec := by
  intro n
  simp only [A017238, Nat.add_sub_cancel, A017238.P14101284607494031623.a, A017238.P6905146162946652620.a, A017234, A017234.P12830955371013100798.a, A017236, A017236.P11993750299410406662.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017238

/-! ## A017238.P15666130803670512985

`A017239(n)/A017233(n)`
-/

namespace A017238.P15666130803670512985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / (A017233 n : ℚ)

end

end A017238.P15666130803670512985

namespace A017238

/-- `A017239(n)/A017233(n)` -/
def P15666130803670512985.Spec : Prop :=
  ∀ n, P15666130803670512985.a n = (A017238 n : ℚ)

end A017238

/-! ## A017238.P764772121813023154

`(A017233(n)*A017234(n))²`
-/

namespace A017238.P764772121813023154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n * A017234 n) ^ 2

end

end A017238.P764772121813023154

namespace A017238

/-- `(A017233(n)*A017234(n))²` -/
def P764772121813023154.Spec : Prop :=
  ∀ n, P764772121813023154.a n = A017238 n

theorem P764772121813023154.correct : P764772121813023154.Spec := by
  intro n
  simp only [A017238, Nat.add_sub_cancel, A017238.P764772121813023154.a, A017238.P6905146162946652620.a, A017233, A017233.P12949994042344701827.a, A017234, A017234.P12830955371013100798.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017238

/-! ## A017238.P8114626042901035293

`A017233(n)²*A017236(n)`
-/

namespace A017238.P8114626042901035293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n ^ 2 * A017236 n

end

end A017238.P8114626042901035293

namespace A017238

/-- `A017233(n)²*A017236(n)` -/
def P8114626042901035293.Spec : Prop :=
  ∀ n, P8114626042901035293.a n = A017238 n

theorem P8114626042901035293.correct : P8114626042901035293.Spec := by
  intro n
  simp only [A017238, Nat.add_sub_cancel, A017238.P8114626042901035293.a, A017238.P6905146162946652620.a, A017233, A017233.P12949994042344701827.a, A017236, A017236.P11993750299410406662.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017238

/-! ## A017238.P91578198992322500

`(A017237(n)/A017234(n))²`
-/

namespace A017238.P91578198992322500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017237 n : ℚ) / (A017234 n : ℚ)) ^ 2

end

end A017238.P91578198992322500

namespace A017238

/-- `(A017237(n)/A017234(n))²` -/
def P91578198992322500.Spec : Prop :=
  ∀ n, P91578198992322500.a n = (A017238 n : ℚ)

end A017238

/-! ## A017238.P7097497780683071901

`lcm(A016791(n), A040703(n))²`
-/

namespace A017238.P7097497780683071901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016791 n) (A040703 n) ^ 2

end

end A017238.P7097497780683071901

namespace A017238

/-- `lcm(A016791(n), A040703(n))²` -/
def P7097497780683071901.Spec : Prop :=
  ∀ n, (P7097497780683071901.a n : ℤ) = A017238 n

end A017238

/-! ## A017238.P3224135525425865951

`A017239(n)/(A017245(n)-1)`
-/

namespace A017238.P3224135525425865951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / (A017245 n - 1 : ℚ)

end

end A017238.P3224135525425865951

namespace A017238

/-- `A017239(n)/(A017245(n)-1)` -/
def P3224135525425865951.Spec : Prop :=
  ∀ n, P3224135525425865951.a n = (A017238 n : ℚ)

end A017238

/-! ## A017238.P15633715000586973206

`(A017239(n)/A017234(n)²)²`
-/

namespace A017238.P15633715000586973206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017239 n : ℚ) / (A017234 n ^ 2 : ℚ)) ^ 2

end

end A017238.P15633715000586973206

namespace A017238

/-- `(A017239(n)/A017234(n)²)²` -/
def P15633715000586973206.Spec : Prop :=
  ∀ n, P15633715000586973206.a n = (A017238 n : ℚ)

end A017238

/-! ## A017238.P13009338256792071522

`sqrt(sqrt(A017240(n))*A017240(n))`
-/

namespace A017238.P13009338256792071522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017240 n : ℝ) * (A017240 n : ℝ))

end

end A017238.P13009338256792071522

namespace A017238

/-- `sqrt(sqrt(A017240(n))*A017240(n))` -/
def P13009338256792071522.Spec : Prop :=
  ∀ n, P13009338256792071522.a n = (A017238 n : ℝ)

end A017238

/-! ## A017238.P3205610581035981241

`A017234(n)/A017235(n)*A017239(n)`
-/

namespace A017238.P3205610581035981241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017234 n : ℚ) / (A017235 n : ℚ) * (A017239 n : ℚ)

end

end A017238.P3205610581035981241

namespace A017238

/-- `A017234(n)/A017235(n)*A017239(n)` -/
def P3205610581035981241.Spec : Prop :=
  ∀ n, P3205610581035981241.a n = (A017238 n : ℚ)

end A017238

/-! ## A017238.P9719416391519256613

`(Δ[A038764(n)]^3)²`
-/

namespace A017238.P9719416391519256613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017238.P9719416391519256613

namespace A017238

/-- `(Δ[A038764(n)]^3)²` -/
def P9719416391519256613.Spec : Prop :=
  ∀ n, P9719416391519256613.a n = A017238 n

end A017238

/-! ## A017238.P17223706271196011214

`A017239(n)/A122709(n+1)`
-/

namespace A017238.P17223706271196011214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / (A122709 (n + 1) : ℚ)

end

end A017238.P17223706271196011214

namespace A017238

/-- `A017239(n)/A122709(n+1)` -/
def P17223706271196011214.Spec : Prop :=
  ∀ n, P17223706271196011214.a n = (A017238 n : ℚ)

end A017238

/-! ## A017238.P5903195222826163893

`A017239(n)/A269416(2*n)`
-/

namespace A017238.P5903195222826163893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017239 n : ℚ) / (A269416 (2 * n) : ℚ)

end

end A017238.P5903195222826163893

namespace A017238

/-- `A017239(n)/A269416(2*n)` -/
def P5903195222826163893.Spec : Prop :=
  ∀ n, P5903195222826163893.a n = (A017238 n : ℚ)

end A017238

/-! ## A017238.P9108087187493520078

`record[A269416(n)²*A269416(n)]²`
-/

namespace A017238.P9108087187493520078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269416 n ^ 2 * A269416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A017238.P9108087187493520078

namespace A017238

/-- `record[A269416(n)²*A269416(n)]²` -/
def P9108087187493520078.Spec : Prop :=
  ∀ n, P9108087187493520078.a n = A017238 n

end A017238

/-!
# A017239: a(n) = (9*n + 6)^7.

The programs for A017239, the canonical program `A017239.P660217382437619707` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017239 has offset 0).

The definition of A017239 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+6)^7` (program `A017239.P660217382437619707`, by `A017239.P660217382437619707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017239.P660217382437619707

`(9*n+6)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017239

/-- `(9*n+6)^7` -/
def P660217382437619707.Spec : Prop :=
  ∀ n, (P660217382437619707.a n : ℤ) = A017239 n

theorem P660217382437619707.correct : P660217382437619707.Spec := by
  intro n
  simp only [A017239]

end A017239

/-! ## A017239.P11324289462565804273

`A017233(n)*A017238(n)`
-/

namespace A017239.P11324289462565804273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n * A017238 n

end

end A017239.P11324289462565804273

namespace A017239

/-- `A017233(n)*A017238(n)` -/
def P11324289462565804273.Spec : Prop :=
  ∀ n, P11324289462565804273.a n = A017239 n

theorem P11324289462565804273.correct : P11324289462565804273.Spec := by
  intro n
  simp only [A017239, Nat.add_sub_cancel, A017239.P11324289462565804273.a, A017239.P660217382437619707.a, A017233, A017233.P12949994042344701827.a, A017238, A017238.P6905146162946652620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017239

/-! ## A017239.P10531331972748796149

`A017234(n)*A017237(n)`
-/

namespace A017239.P10531331972748796149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n * A017237 n

end

end A017239.P10531331972748796149

namespace A017239

/-- `A017234(n)*A017237(n)` -/
def P10531331972748796149.Spec : Prop :=
  ∀ n, P10531331972748796149.a n = A017239 n

theorem P10531331972748796149.correct : P10531331972748796149.Spec := by
  intro n
  simp only [A017239, Nat.add_sub_cancel, A017239.P10531331972748796149.a, A017239.P660217382437619707.a, A017234, A017234.P12830955371013100798.a, A017237, A017237.P15396052644655322925.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017239

/-! ## A017239.P5726773648983213413

`A017235(n)*A017236(n)`
-/

namespace A017239.P5726773648983213413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017235 n * A017236 n

end

end A017239.P5726773648983213413

namespace A017239

/-- `A017235(n)*A017236(n)` -/
def P5726773648983213413.Spec : Prop :=
  ∀ n, P5726773648983213413.a n = A017239 n

theorem P5726773648983213413.correct : P5726773648983213413.Spec := by
  intro n
  simp only [A017239, Nat.add_sub_cancel, A017239.P5726773648983213413.a, A017239.P660217382437619707.a, A017235, A017235.P3492492154198024914.a, A017236, A017236.P11993750299410406662.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017239

/-! ## A017239.P17311455241016759533

`A017233(n)²*A017237(n)`
-/

namespace A017239.P17311455241016759533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n ^ 2 * A017237 n

end

end A017239.P17311455241016759533

namespace A017239

/-- `A017233(n)²*A017237(n)` -/
def P17311455241016759533.Spec : Prop :=
  ∀ n, P17311455241016759533.a n = A017239 n

theorem P17311455241016759533.correct : P17311455241016759533.Spec := by
  intro n
  simp only [A017239, Nat.add_sub_cancel, A017239.P17311455241016759533.a, A017239.P660217382437619707.a, A017233, A017233.P12949994042344701827.a, A017237, A017237.P15396052644655322925.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017239

/-! ## A017239.P6890418586503417597

`A017234(n)²*A017235(n)`
-/

namespace A017239.P6890418586503417597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n ^ 2 * A017235 n

end

end A017239.P6890418586503417597

namespace A017239

/-- `A017234(n)²*A017235(n)` -/
def P6890418586503417597.Spec : Prop :=
  ∀ n, P6890418586503417597.a n = A017239 n

theorem P6890418586503417597.correct : P6890418586503417597.Spec := by
  intro n
  simp only [A017239, Nat.add_sub_cancel, A017239.P6890418586503417597.a, A017239.P660217382437619707.a, A017234, A017234.P12830955371013100798.a, A017235, A017235.P3492492154198024914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017239

/-! ## A017239.P2387256657092409106

`A017235(n)²*A017233(n)`
-/

namespace A017239.P2387256657092409106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017235 n ^ 2 * A017233 n

end

end A017239.P2387256657092409106

namespace A017239

/-- `A017235(n)²*A017233(n)` -/
def P2387256657092409106.Spec : Prop :=
  ∀ n, P2387256657092409106.a n = A017239 n

theorem P2387256657092409106.correct : P2387256657092409106.Spec := by
  intro n
  simp only [A017239, Nat.add_sub_cancel, A017239.P2387256657092409106.a, A017239.P660217382437619707.a, A017233, A017233.P12949994042344701827.a, A017235, A017235.P3492492154198024914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017239

/-! ## A017239.P4264312167935487996

`A017236(n)²/A017233(n)`
-/

namespace A017239.P4264312167935487996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017236 n ^ 2 : ℚ) / (A017233 n : ℚ)

end

end A017239.P4264312167935487996

namespace A017239

/-- `A017236(n)²/A017233(n)` -/
def P4264312167935487996.Spec : Prop :=
  ∀ n, P4264312167935487996.a n = (A017239 n : ℚ)

end A017239

/-! ## A017239.P17370947293445844785

`A017234(n)²²/A017233(n)`
-/

namespace A017239.P17370947293445844785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017234 n ^ 2) ^ 2 : ℚ) / (A017233 n : ℚ)

end

end A017239.P17370947293445844785

namespace A017239

/-- `A017234(n)²²/A017233(n)` -/
def P17370947293445844785.Spec : Prop :=
  ∀ n, P17370947293445844785.a n = (A017239 n : ℚ)

end A017239

/-! ## A017239.P10105359254498331164

`A017237(n)/A017235(n)*A017237(n)`
-/

namespace A017239.P10105359254498331164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017237 n : ℚ) / (A017235 n : ℚ) * (A017237 n : ℚ)

end

end A017239.P10105359254498331164

namespace A017239

/-- `A017237(n)/A017235(n)*A017237(n)` -/
def P10105359254498331164.Spec : Prop :=
  ∀ n, P10105359254498331164.a n = (A017239 n : ℚ)

end A017239

/-! ## A017239.P5565273500483599397

`A017235(n)²*A122709(n+1)`
-/

namespace A017239.P5565273500483599397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017235 n ^ 2 * A122709 (n + 1)

end

end A017239.P5565273500483599397

namespace A017239

/-- `A017235(n)²*A122709(n+1)` -/
def P5565273500483599397.Spec : Prop :=
  ∀ n, P5565273500483599397.a n = A017239 n

end A017239

/-! ## A017239.P8925012507891608479

`record[A269416(n)^7]`
-/

namespace A017239.P8925012507891608479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269416 n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017239.P8925012507891608479

namespace A017239

/-- `record[A269416(n)^7]` -/
def P8925012507891608479.Spec : Prop :=
  ∀ n, P8925012507891608479.a n = A017239 n

end A017239

/-! ## A017239.P3440079607678657575

`A016771(3*n+2)`
-/

namespace A017239.P3440079607678657575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016771 (3 * n + 2)

end

end A017239.P3440079607678657575

namespace A017239

/-- `A016771(3*n+2)` -/
def P3440079607678657575.Spec : Prop :=
  ∀ n, P3440079607678657575.a n = A017239 n

theorem P3440079607678657575.correct : P3440079607678657575.Spec := by
  intro n
  simp only [A017239, Nat.add_sub_cancel, A017239.P3440079607678657575.a, A017239.P660217382437619707.a, A016771, A016771.P7538791312467411803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017239

/-! ## A017239.P10370657288139305926

`A001015(9*n+6)`
-/

namespace A017239.P10370657288139305926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (9 * n + 6)

end

end A017239.P10370657288139305926

namespace A017239

/-- `A001015(9*n+6)` -/
def P10370657288139305926.Spec : Prop :=
  ∀ n, P10370657288139305926.a n = A017239 n

end A017239

/-!
# A017240: a(n) = (9*n + 6)^8.

The programs for A017240, the canonical program `A017240.P3516431405740191971` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017240 has offset 0).

The definition of A017240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+6)^8` (program `A017240.P3516431405740191971`, by `A017240.P3516431405740191971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017240.P3516431405740191971

`(9*n+6)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017240

/-- `(9*n+6)^8` -/
def P3516431405740191971.Spec : Prop :=
  ∀ n, (P3516431405740191971.a n : ℤ) = A017240 n

theorem P3516431405740191971.correct : P3516431405740191971.Spec := by
  intro n
  simp only [A017240]

end A017240

/-! ## A017240.P4848840713513444271

`lcm(3, 2*n+n+2)²²²`
-/

namespace A017240.P4848840713513444271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 (2 * n + (n + 2)) ^ 2) ^ 2) ^ 2

end

end A017240.P4848840713513444271

namespace A017240

/-- `lcm(3, 2*n+n+2)²²²` -/
def P4848840713513444271.Spec : Prop :=
  ∀ n, (P4848840713513444271.a n : ℤ) = A017240 n

end A017240

/-! ## A017240.P7673388098507868272

`Δ[C(2*n+1+n, 2)]²²²`
-/

namespace A017240.P7673388098507868272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1 + n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017240.P7673388098507868272

namespace A017240

/-- `Δ[C(2*n+1+n, 2)]²²²` -/
def P7673388098507868272.Spec : Prop :=
  ∀ n, P7673388098507868272.a n = A017240 n

theorem P7673388098507868272.correct : P7673388098507868272.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P7673388098507868272.f1, A017240.P7673388098507868272.a, A017240.P3516431405740191971.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P12516434421162198699

`A017236(n)²`
-/

namespace A017240.P12516434421162198699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017236 n ^ 2

end

end A017240.P12516434421162198699

namespace A017240

/-- `A017236(n)²` -/
def P12516434421162198699.Spec : Prop :=
  ∀ n, P12516434421162198699.a n = A017240 n

theorem P12516434421162198699.correct : P12516434421162198699.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P12516434421162198699.a, A017240.P3516431405740191971.a, A017236, A017236.P11993750299410406662.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P2264175799886362081

`A017234(n)²²`
-/

namespace A017240.P2264175799886362081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017234 n ^ 2) ^ 2

end

end A017240.P2264175799886362081

namespace A017240

/-- `A017234(n)²²` -/
def P2264175799886362081.Spec : Prop :=
  ∀ n, P2264175799886362081.a n = A017240 n

theorem P2264175799886362081.correct : P2264175799886362081.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P2264175799886362081.a, A017240.P3516431405740191971.a, A017234, A017234.P12830955371013100798.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P7234174964853242718

`A017233(n)²²²`
-/

namespace A017240.P7234174964853242718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017233 n ^ 2) ^ 2) ^ 2

end

end A017240.P7234174964853242718

namespace A017240

/-- `A017233(n)²²²` -/
def P7234174964853242718.Spec : Prop :=
  ∀ n, P7234174964853242718.a n = A017240 n

theorem P7234174964853242718.correct : P7234174964853242718.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P7234174964853242718.a, A017240.P3516431405740191971.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P10350180990548160830

`Δ[A081266(n)]²²²`
-/

namespace A017240.P10350180990548160830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017240.P10350180990548160830

namespace A017240

/-- `Δ[A081266(n)]²²²` -/
def P10350180990548160830.Spec : Prop :=
  ∀ n, P10350180990548160830.a n = A017240 n

end A017240

/-! ## A017240.P11500124304741152168

`(A017221(n)+1)²²²`
-/

namespace A017240.P11500124304741152168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017221 n + 1) ^ 2) ^ 2) ^ 2

end

end A017240.P11500124304741152168

namespace A017240

/-- `(A017221(n)+1)²²²` -/
def P11500124304741152168.Spec : Prop :=
  ∀ n, P11500124304741152168.a n = A017240 n

theorem P11500124304741152168.correct : P11500124304741152168.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P11500124304741152168.a, A017240.P3516431405740191971.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P6215477261289432307

`(A017209(n)+2)²²²`
-/

namespace A017240.P6215477261289432307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017209 n + 2) ^ 2) ^ 2) ^ 2

end

end A017240.P6215477261289432307

namespace A017240

/-- `(A017209(n)+2)²²²` -/
def P6215477261289432307.Spec : Prop :=
  ∀ n, P6215477261289432307.a n = A017240 n

theorem P6215477261289432307.correct : P6215477261289432307.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P6215477261289432307.a, A017240.P3516431405740191971.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P14871478873919183546

`(1-A017245(n))²²²`
-/

namespace A017240.P14871478873919183546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017245 n) ^ 2) ^ 2) ^ 2

end

end A017240.P14871478873919183546

namespace A017240

/-- `(1-A017245(n))²²²` -/
def P14871478873919183546.Spec : Prop :=
  ∀ n, P14871478873919183546.a n = A017240 n

theorem P14871478873919183546.correct : P14871478873919183546.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P14871478873919183546.a, A017240.P3516431405740191971.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P2996021553805383084

`(2-A017257(n))²²²`
-/

namespace A017240.P2996021553805383084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017257 n) ^ 2) ^ 2) ^ 2

end

end A017240.P2996021553805383084

namespace A017240

/-- `(2-A017257(n))²²²` -/
def P2996021553805383084.Spec : Prop :=
  ∀ n, P2996021553805383084.a n = A017240 n

theorem P2996021553805383084.correct : P2996021553805383084.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P2996021553805383084.a, A017240.P3516431405740191971.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P16138785371082046544

`(3*A016789(n))²²²`
-/

namespace A017240.P16138785371082046544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((3 * A016789 n) ^ 2) ^ 2) ^ 2

end

end A017240.P16138785371082046544

namespace A017240

/-- `(3*A016789(n))²²²` -/
def P16138785371082046544.Spec : Prop :=
  ∀ n, P16138785371082046544.a n = A017240 n

theorem P16138785371082046544.correct : P16138785371082046544.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P16138785371082046544.a, A017240.P3516431405740191971.a, A016789, A016789.P8277564872725303677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P16566008727208824572

`(A017137(n)+n)²²²`
-/

namespace A017240.P16566008727208824572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017137 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017240.P16566008727208824572

namespace A017240

/-- `(A017137(n)+n)²²²` -/
def P16566008727208824572.Spec : Prop :=
  ∀ n, P16566008727208824572.a n = A017240 n

theorem P16566008727208824572.correct : P16566008727208824572.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P16566008727208824572.a, A017240.P3516431405740191971.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P11018182862513455458

`(n-A017341(n))²²²`
-/

namespace A017240.P11018182862513455458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017341 n) ^ 2) ^ 2) ^ 2

end

end A017240.P11018182862513455458

namespace A017240

/-- `(n-A017341(n))²²²` -/
def P11018182862513455458.Spec : Prop :=
  ∀ n, P11018182862513455458.a n = A017240 n

theorem P11018182862513455458.correct : P11018182862513455458.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P11018182862513455458.a, A017240.P3516431405740191971.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P8817942213996262205

`(A004770(n+1)+n+1)²²²`
-/

namespace A017240.P8817942213996262205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A004770 (n + 1) + (n + 1 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017240.P8817942213996262205

namespace A017240

/-- `(A004770(n+1)+n+1)²²²` -/
def P8817942213996262205.Spec : Prop :=
  ∀ n, P8817942213996262205.a n = A017240 n

theorem P8817942213996262205.correct : P8817942213996262205.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P8817942213996262205.a, A017240.P3516431405740191971.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P14949128488047152371

`A017233(n)*A017239(n)`
-/

namespace A017240.P14949128488047152371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n * A017239 n

end

end A017240.P14949128488047152371

namespace A017240

/-- `A017233(n)*A017239(n)` -/
def P14949128488047152371.Spec : Prop :=
  ∀ n, P14949128488047152371.a n = A017240 n

theorem P14949128488047152371.correct : P14949128488047152371.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P14949128488047152371.a, A017240.P3516431405740191971.a, A017233, A017233.P12949994042344701827.a, A017239, A017239.P660217382437619707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P18286401985550692958

`A017234(n)*A017238(n)`
-/

namespace A017240.P18286401985550692958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n * A017238 n

end

end A017240.P18286401985550692958

namespace A017240

/-- `A017234(n)*A017238(n)` -/
def P18286401985550692958.Spec : Prop :=
  ∀ n, P18286401985550692958.a n = A017240 n

theorem P18286401985550692958.correct : P18286401985550692958.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P18286401985550692958.a, A017240.P3516431405740191971.a, A017234, A017234.P12830955371013100798.a, A017238, A017238.P6905146162946652620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P3732148457453901213

`A017235(n)*A017237(n)`
-/

namespace A017240.P3732148457453901213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017235 n * A017237 n

end

end A017240.P3732148457453901213

namespace A017240

/-- `A017235(n)*A017237(n)` -/
def P3732148457453901213.Spec : Prop :=
  ∀ n, P3732148457453901213.a n = A017240 n

theorem P3732148457453901213.correct : P3732148457453901213.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P3732148457453901213.a, A017240.P3516431405740191971.a, A017235, A017235.P3492492154198024914.a, A017237, A017237.P15396052644655322925.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-! ## A017240.P7543077022347540205

`(A017239(n)/A017235(n))²`
-/

namespace A017240.P7543077022347540205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017239 n : ℚ) / (A017235 n : ℚ)) ^ 2

end

end A017240.P7543077022347540205

namespace A017240

/-- `(A017239(n)/A017235(n))²` -/
def P7543077022347540205.Spec : Prop :=
  ∀ n, P7543077022347540205.a n = (A017240 n : ℚ)

end A017240

/-! ## A017240.P1037430903988659836

`A017239(n)*A017245(n)-A017239(n)`
-/

namespace A017240.P1037430903988659836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017239 n * A017245 n - A017239 n

end

end A017240.P1037430903988659836

namespace A017240

/-- `A017239(n)*A017245(n)-A017239(n)` -/
def P1037430903988659836.Spec : Prop :=
  ∀ n, P1037430903988659836.a n = A017240 n

theorem P1037430903988659836.correct : P1037430903988659836.Spec := by
  intro n
  simp only [A017240, Nat.add_sub_cancel, A017240.P1037430903988659836.a, A017240.P3516431405740191971.a, A017239, A017239.P660217382437619707.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017240

/-!
# A017241: a(n) = (9*n + 6)^9.

The programs for A017241, the canonical program `A017241.P15252274099717664557` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017241 has offset 0).

The definition of A017241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+6)^9` (program `A017241.P15252274099717664557`, by `A017241.P15252274099717664557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017241.P15252274099717664557

`(9*n+6)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017241

/-- `(9*n+6)^9` -/
def P15252274099717664557.Spec : Prop :=
  ∀ n, (P15252274099717664557.a n : ℤ) = A017241 n

theorem P15252274099717664557.correct : P15252274099717664557.Spec := by
  intro n
  simp only [A017241]

end A017241

/-! ## A017241.P6018132972943949458

`record[(n+6)^gcd(9, n)]`
-/

namespace A017241.P6018132972943949458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 6) ^ Nat.gcd 9 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017241.P6018132972943949458

namespace A017241

/-- `record[(n+6)^gcd(9, n)]` -/
def P6018132972943949458.Spec : Prop :=
  ∀ n, (P6018132972943949458.a n : ℤ) = A017241 n

end A017241

/-! ## A017241.P8490191821509124113

`sqrt(A017238(n)^3)`
-/

namespace A017241.P8490191821509124113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017238 n ^ 3 : ℝ)

end

end A017241.P8490191821509124113

namespace A017241

/-- `sqrt(A017238(n)^3)` -/
def P8490191821509124113.Spec : Prop :=
  ∀ n, P8490191821509124113.a n = (A017241 n : ℝ)

end A017241

/-! ## A017241.P1469462926173890433

`A017234(n)*A017239(n)`
-/

namespace A017241.P1469462926173890433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n * A017239 n

end

end A017241.P1469462926173890433

namespace A017241

/-- `A017234(n)*A017239(n)` -/
def P1469462926173890433.Spec : Prop :=
  ∀ n, P1469462926173890433.a n = A017241 n

theorem P1469462926173890433.correct : P1469462926173890433.Spec := by
  intro n
  simp only [A017241, Nat.add_sub_cancel, A017241.P1469462926173890433.a, A017241.P15252274099717664557.a, A017234, A017234.P12830955371013100798.a, A017239, A017239.P660217382437619707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017241

/-! ## A017241.P15377119071617339221

`A017235(n)*A017238(n)`
-/

namespace A017241.P15377119071617339221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017235 n * A017238 n

end

end A017241.P15377119071617339221

namespace A017241

/-- `A017235(n)*A017238(n)` -/
def P15377119071617339221.Spec : Prop :=
  ∀ n, P15377119071617339221.a n = A017241 n

theorem P15377119071617339221.correct : P15377119071617339221.Spec := by
  intro n
  simp only [A017241, Nat.add_sub_cancel, A017241.P15377119071617339221.a, A017241.P15252274099717664557.a, A017235, A017235.P3492492154198024914.a, A017238, A017238.P6905146162946652620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017241

/-! ## A017241.P4341253606918486304

`A017233(n)²*A017239(n)`
-/

namespace A017241.P4341253606918486304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n ^ 2 * A017239 n

end

end A017241.P4341253606918486304

namespace A017241

/-- `A017233(n)²*A017239(n)` -/
def P4341253606918486304.Spec : Prop :=
  ∀ n, P4341253606918486304.a n = A017241 n

theorem P4341253606918486304.correct : P4341253606918486304.Spec := by
  intro n
  simp only [A017241, Nat.add_sub_cancel, A017241.P4341253606918486304.a, A017241.P15252274099717664557.a, A017233, A017233.P12949994042344701827.a, A017239, A017239.P660217382437619707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017241

/-! ## A017241.P13451254315372223119

`A017234(n)²²*A017233(n)`
-/

namespace A017241.P13451254315372223119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017234 n ^ 2) ^ 2 * A017233 n

end

end A017241.P13451254315372223119

namespace A017241

/-- `A017234(n)²²*A017233(n)` -/
def P13451254315372223119.Spec : Prop :=
  ∀ n, P13451254315372223119.a n = A017241 n

theorem P13451254315372223119.correct : P13451254315372223119.Spec := by
  intro n
  simp only [A017241, Nat.add_sub_cancel, A017241.P13451254315372223119.a, A017241.P15252274099717664557.a, A017233, A017233.P12949994042344701827.a, A017234, A017234.P12830955371013100798.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017241

/-! ## A017241.P1512379567278526540

`A017236(n)²*sqrt(sqrt(A017236(n)))`
-/

namespace A017241.P1512379567278526540
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017236 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017236 n : ℝ))

end

end A017241.P1512379567278526540

namespace A017241

/-- `A017236(n)²*sqrt(sqrt(A017236(n)))` -/
def P1512379567278526540.Spec : Prop :=
  ∀ n, P1512379567278526540.a n = (A017241 n : ℝ)

end A017241

/-! ## A017241.P8557846919924395405

`A016773(3*n+2)`
-/

namespace A017241.P8557846919924395405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016773 (3 * n + 2)

end

end A017241.P8557846919924395405

namespace A017241

/-- `A016773(3*n+2)` -/
def P8557846919924395405.Spec : Prop :=
  ∀ n, P8557846919924395405.a n = A017241 n

theorem P8557846919924395405.correct : P8557846919924395405.Spec := by
  intro n
  simp only [A017241, Nat.add_sub_cancel, A017241.P8557846919924395405.a, A017241.P15252274099717664557.a, A016773, A016773.P756360560506890922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017241

/-! ## A017241.P10834391763774844954

`A001017(A017233(n))`
-/

namespace A017241.P10834391763774844954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017233 n).toNat

end

end A017241.P10834391763774844954

namespace A017241

/-- `A001017(A017233(n))` -/
def P10834391763774844954.Spec : Prop :=
  ∀ n, P10834391763774844954.a n = A017241 n

end A017241

/-! ## A017241.P15200644250156765751

`A001017(A017221(n)+1)`
-/

namespace A017241.P15200644250156765751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017221 n + 1).toNat

end

end A017241.P15200644250156765751

namespace A017241

/-- `A001017(A017221(n)+1)` -/
def P15200644250156765751.Spec : Prop :=
  ∀ n, P15200644250156765751.a n = A017241 n

end A017241

/-! ## A017241.P17505585174904224182

`A001017(A017137(n)+n)`
-/

namespace A017241.P17505585174904224182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017137 n + (n : ℤ)).toNat

end

end A017241.P17505585174904224182

namespace A017241

/-- `A001017(A017137(n)+n)` -/
def P17505585174904224182.Spec : Prop :=
  ∀ n, P17505585174904224182.a n = A017241 n

end A017241

/-! ## A017241.P16383424732557360901

`A001017(A017341(n)-n)`
-/

namespace A017241.P16383424732557360901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017341 n - (n : ℤ)).toNat

end

end A017241.P16383424732557360901

namespace A017241

/-- `A001017(A017341(n)-n)` -/
def P16383424732557360901.Spec : Prop :=
  ∀ n, P16383424732557360901.a n = A017241 n

end A017241

/-! ## A017241.P1957531049249404095

`A001017(A017353(n)-(n+1))`
-/

namespace A017241.P1957531049249404095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017353 n - (n + 1 : ℤ)).toNat

end

end A017241.P1957531049249404095

namespace A017241

/-- `A001017(A017353(n)-(n+1))` -/
def P1957531049249404095.Spec : Prop :=
  ∀ n, P1957531049249404095.a n = A017241 n

end A017241

/-! ## A017241.P14749348457781012097

`A001017(A017353(n)-1-n)`
-/

namespace A017241.P14749348457781012097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017353 n - 1 - (n : ℤ)).toNat

end

end A017241.P14749348457781012097

namespace A017241

/-- `A001017(A017353(n)-1-n)` -/
def P14749348457781012097.Spec : Prop :=
  ∀ n, P14749348457781012097.a n = A017241 n

end A017241

/-! ## A017241.P7845614551456835167

`A001017(A008585(2*n+n+2))`
-/

namespace A017241.P7845614551456835167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008585 (2 * n + (n + 2))).toNat

end

end A017241.P7845614551456835167

namespace A017241

/-- `A001017(A008585(2*n+n+2))` -/
def P7845614551456835167.Spec : Prop :=
  ∀ n, P7845614551456835167.a n = A017241 n

end A017241

/-! ## A017241.P12989197508859057910

`A001017(A016813(2*n+1)+n+1)`
-/

namespace A017241.P12989197508859057910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A016813 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A017241.P12989197508859057910

namespace A017241

/-- `A001017(A016813(2*n+1)+n+1)` -/
def P12989197508859057910.Spec : Prop :=
  ∀ n, P12989197508859057910.a n = A017241 n

end A017241

/-!
# A017242: 

The programs for A017242, there is no canonical definition to state claims against.
-/

/-! ## A017242.P1090873834540150701

`(9*n+6)^10`
-/

namespace A017242.P1090873834540150701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 6) ^ 10

end

end A017242.P1090873834540150701

/-! ## A017242.P9871165257669834306

`A017237(n)²`
-/

namespace A017242.P9871165257669834306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017237 n ^ 2

end

end A017242.P9871165257669834306

/-! ## A017242.P3681203708499197434

`sqrt(A017236(n)^5)`
-/

namespace A017242.P3681203708499197434
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017236 n ^ 5 : ℝ)

end

end A017242.P3681203708499197434

/-! ## A017242.P18406122404186410770

`(A017233(n)²*A017235(n))²`
-/

namespace A017242.P18406122404186410770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n ^ 2 * A017235 n) ^ 2

end

end A017242.P18406122404186410770

/-! ## A017242.P11107414334934392695

`(A017234(n)²*A017233(n))²`
-/

namespace A017242.P11107414334934392695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017234 n ^ 2 * A017233 n) ^ 2

end

end A017242.P11107414334934392695

/-! ## A017242.P6310007859339687143

`(A017239(n)/A017233(n)²)²`
-/

namespace A017242.P6310007859339687143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017239 n : ℚ) / (A017233 n ^ 2 : ℚ)) ^ 2

end

end A017242.P6310007859339687143

/-! ## A017242.P1033160539399254537

`sqrt(sqrt(A017240(n)))*A017240(n)`
-/

namespace A017242.P1033160539399254537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017240 n : ℝ)) * (A017240 n : ℝ)

end

end A017242.P1033160539399254537

/-! ## A017242.P2902495909906146464

`(A122709(n+1)^5)²`
-/

namespace A017242.P2902495909906146464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122709 (n + 1) ^ 5) ^ 2

end

end A017242.P2902495909906146464

/-! ## A017242.P14681378904943038005

`A016774(3*n+2)`
-/

namespace A017242.P14681378904943038005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016774 (3 * n + 2)

end

end A017242.P14681378904943038005

/-! ## A017242.P12246117741324059395

`A008454(A017137(n)+n)`
-/

namespace A017242.P12246117741324059395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017137 n + (n : ℤ)).toNat

end

end A017242.P12246117741324059395

/-! ## A017242.P9754845566420125271

`A008454(A017341(n)-n)`
-/

namespace A017242.P9754845566420125271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n - (n : ℤ)).toNat

end

end A017242.P9754845566420125271

/-! ## A017242.P15708261293543116447

`A008454(A017353(n)-(n+1))`
-/

namespace A017242.P15708261293543116447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n - (n + 1 : ℤ)).toNat

end

end A017242.P15708261293543116447

/-! ## A017242.P17589069261922441878

`A008454(A017353(n)-1-n)`
-/

namespace A017242.P17589069261922441878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n - 1 - (n : ℤ)).toNat

end

end A017242.P17589069261922441878

/-!
# A017243: 

The programs for A017243, there is no canonical definition to state claims against.
-/

/-! ## A017243.P13440315984935115234

`(9*n+6)^11`
-/

namespace A017243.P13440315984935115234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 6) ^ 11

end

end A017243.P13440315984935115234

/-! ## A017243.P9831066500732327692

`A017233(n)²²*A017239(n)`
-/

namespace A017243.P9831066500732327692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n ^ 2) ^ 2 * A017239 n

end

end A017243.P9831066500732327692

/-! ## A017243.P14907198868818566554

`A017235(n)²²/A017233(n)`
-/

namespace A017243.P14907198868818566554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017235 n ^ 2) ^ 2 : ℚ) / (A017233 n : ℚ)

end

end A017243.P14907198868818566554

/-! ## A017243.P17164378171675794711

`A016775(3*n+2)`
-/

namespace A017243.P17164378171675794711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016775 (3 * n + 2)

end

end A017243.P17164378171675794711

/-! ## A017243.P3786040407598459215

`A008455(3*A016789(n))`
-/

namespace A017243.P3786040407598459215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (3 * A016789 n).toNat

end

end A017243.P3786040407598459215

/-! ## A017243.P11022588310574635075

`A008455(A008585(2*n+n+2))`
-/

namespace A017243.P11022588310574635075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n + (n + 2))).toNat

end

end A017243.P11022588310574635075

/-! ## A017243.P6124970379054506982

`A008455(A016813(2*n+1)+n+1)`
-/

namespace A017243.P6124970379054506982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A017243.P6124970379054506982

/-!
# A017244: 

The programs for A017244, there is no canonical definition to state claims against.
-/

/-! ## A017244.P14991091269822425955

`(9*n+6)^12`
-/

namespace A017244.P14991091269822425955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 6) ^ 12

end

end A017244.P14991091269822425955

/-! ## A017244.P14708401594498390779

`A017238(n)²`
-/

namespace A017244.P14708401594498390779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017238 n ^ 2

end

end A017244.P14708401594498390779

/-! ## A017244.P5061121564567619915

`(A017233(n)^6)²`
-/

namespace A017244.P5061121564567619915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n ^ 6) ^ 2

end

end A017244.P5061121564567619915

/-! ## A017244.P655786484292550246

`(A017239(n)/A017233(n))²`
-/

namespace A017244.P655786484292550246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017239 n : ℚ) / (A017233 n : ℚ)) ^ 2

end

end A017244.P655786484292550246

/-! ## A017244.P11249307402287424242

`sqrt(A017240(n))*A017240(n)`
-/

namespace A017244.P11249307402287424242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017240 n : ℝ) * (A017240 n : ℝ)

end

end A017244.P11249307402287424242

/-! ## A017244.P2708127657138974203

`(A017233(n)*A017234(n))²²`
-/

namespace A017244.P2708127657138974203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017233 n * A017234 n) ^ 2) ^ 2

end

end A017244.P2708127657138974203

/-! ## A017244.P389116831786616521

`(A122709(n+1)^3)²²`
-/

namespace A017244.P389116831786616521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A122709 (n + 1) ^ 3) ^ 2) ^ 2

end

end A017244.P389116831786616521

/-! ## A017244.P3741843061002914820

`A016776(3*n+2)`
-/

namespace A017244.P3741843061002914820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016776 (3 * n + 2)

end

end A017244.P3741843061002914820

/-! ## A017244.P12304865238569455079

`sqrt(A017240(n)^3)`
-/

namespace A017244.P12304865238569455079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017240 n ^ 3 : ℝ)

end

end A017244.P12304865238569455079

/-! ## A017244.P6990130775106790728

`A008456(A017209(n)+2)`
-/

namespace A017244.P6990130775106790728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017209 n + 2).toNat

end

end A017244.P6990130775106790728

/-! ## A017244.P558422177631860048

`A008456(A017341(n)-n)`
-/

namespace A017244.P558422177631860048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017341 n - (n : ℤ)).toNat

end

end A017244.P558422177631860048

/-! ## A017244.P8376892307944431141

`A008456(2*A004767(n)+n)`
-/

namespace A017244.P8376892307944431141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (2 * A004767 n + (n : ℤ)).toNat

end

end A017244.P8376892307944431141

/-! ## A017244.P15772920358248771868

`A000578(A017221(n)+1)²²`
-/

namespace A017244.P15772920358248771868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017221 n + 1).toNat ^ 2) ^ 2

end

end A017244.P15772920358248771868

/-! ## A017244.P27106335508346695

`A000578(A017209(n)+2)²²`
-/

namespace A017244.P27106335508346695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017209 n + 2).toNat ^ 2) ^ 2

end

end A017244.P27106335508346695

/-! ## A017244.P1854839460662865988

`A000578(A017137(n)+n)²²`
-/

namespace A017244.P1854839460662865988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017137 n + (n : ℤ)).toNat ^ 2) ^ 2

end

end A017244.P1854839460662865988

/-! ## A017244.P6152564816664406683

`A000578(A017341(n)-n)²²`
-/

namespace A017244.P6152564816664406683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017341 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A017244.P6152564816664406683

/-!
# A017245: a(n) = 9*n + 7.

The programs for A017245, the canonical program `A017245.P13986592314876826789` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017245 has offset 0).

The definition of A017245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n+7` (program `A017245.P13986592314876826789`, by `A017245.P13986592314876826789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017245.P13986592314876826789

`9*n+7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017245

/-- `9*n+7` -/
def P13986592314876826789.Spec : Prop :=
  ∀ n, (P13986592314876826789.a n : ℤ) = A017245 n

theorem P13986592314876826789.correct : P13986592314876826789.Spec := by
  intro n
  simp only [A017245]

end A017245

/-!
# A017246: a(n) = (9*n + 7)^2.

The programs for A017246, the canonical program `A017246.P9348811516791326222` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017246 has offset 0).

The definition of A017246 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+7)²` (program `A017246.P9348811516791326222`, by `A017246.P9348811516791326222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017246.P9348811516791326222

`(9*n+7)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017246

/-- `(9*n+7)²` -/
def P9348811516791326222.Spec : Prop :=
  ∀ n, (P9348811516791326222.a n : ℤ) = A017246 n

theorem P9348811516791326222.correct : P9348811516791326222.Spec := by
  intro n
  simp only [A017246]

end A017246

/-! ## A017246.P8843050555971499872

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=49, a(1)=256, a(2)=625`
-/

namespace A017246.P8843050555971499872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [49, 256, 625] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017246.P8843050555971499872

namespace A017246

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8843050555971499872.Spec : Prop :=
  ∀ n, P8843050555971499872.a n = A017246 n

theorem P8843050555971499872.correct : P8843050555971499872.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017246, Nat.add_sub_cancel, A017246.P8843050555971499872.a, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017246, Nat.add_sub_cancel, A017246.P8843050555971499872.a, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017246

/-! ## A017246.P2675207377588055402

`record[(gcd(9, n)+n-2)²]`
-/

namespace A017246.P2675207377588055402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 9 n : ℤ) + ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017246.P2675207377588055402

namespace A017246

/-- `record[(gcd(9, n)+n-2)²]` -/
def P2675207377588055402.Spec : Prop :=
  ∀ n, P2675207377588055402.a n = A017246 n

end A017246

/-! ## A017246.P8619453560411858491

`record[((n+2)/dr(n+1)+5)²]`
-/

namespace A017246.P8619453560411858491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) + 5) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017246.P8619453560411858491

namespace A017246

/-- `record[((n+2)/dr(n+1)+5)²]` -/
def P8619453560411858491.Spec : Prop :=
  ∀ n, P8619453560411858491.a n = (A017246 n : ℚ)

end A017246

/-! ## A017246.P10227498232846187513

`sqrt(A017248(n))`
-/

namespace A017246.P10227498232846187513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017248 n : ℝ)

end

end A017246.P10227498232846187513

namespace A017246

/-- `sqrt(A017248(n))` -/
def P10227498232846187513.Spec : Prop :=
  ∀ n, P10227498232846187513.a n = (A017246 n : ℝ)

end A017246

/-! ## A017246.P10971158574764822167

`A017245(n)^2`
-/

namespace A017246.P10971158574764822167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n ^ 2

end

end A017246.P10971158574764822167

namespace A017246

/-- `A017245(n)^2` -/
def P10971158574764822167.Spec : Prop :=
  ∀ n, P10971158574764822167.a n = A017246 n

theorem P10971158574764822167.correct : P10971158574764822167.Spec := by
  intro n
  simp only [A017246, Nat.add_sub_cancel, A017246.P10971158574764822167.a, A017246.P9348811516791326222.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017246

/-! ## A017246.P8297193268525226525

`sqrt(sqrt(A017252(n)))`
-/

namespace A017246.P8297193268525226525
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017252 n : ℝ))

end

end A017246.P8297193268525226525

namespace A017246

/-- `sqrt(sqrt(A017252(n)))` -/
def P8297193268525226525.Spec : Prop :=
  ∀ n, P8297193268525226525.a n = (A017246 n : ℝ)

end A017246

/-! ## A017246.P16256220572049547041

`A017250(n)^(1/3)`
-/

namespace A017246.P16256220572049547041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017250 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017246.P16256220572049547041

namespace A017246

/-- `A017250(n)^(1/3)` -/
def P16256220572049547041.Spec : Prop :=
  ∀ n, P16256220572049547041.a n = (A017246 n : ℝ)

end A017246

/-! ## A017246.P16886787247300794276

`A017247(n)^(2/3)`
-/

namespace A017246.P16886787247300794276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017247 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017246.P16886787247300794276

namespace A017246

/-- `A017247(n)^(2/3)` -/
def P16886787247300794276.Spec : Prop :=
  ∀ n, P16886787247300794276.a n = (A017246 n : ℝ)

end A017246

/-! ## A017246.P16822264494326604061

`A017247(n)/A017245(n)`
-/

namespace A017246.P16822264494326604061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017247 n : ℚ) / (A017245 n : ℚ)

end

end A017246.P16822264494326604061

namespace A017246

/-- `A017247(n)/A017245(n)` -/
def P16822264494326604061.Spec : Prop :=
  ∀ n, P16822264494326604061.a n = (A017246 n : ℚ)

end A017246

/-! ## A017246.P11600655292993908813

`A017249(n)/A017247(n)`
-/

namespace A017246.P11600655292993908813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017249 n : ℚ) / (A017247 n : ℚ)

end

end A017246.P11600655292993908813

namespace A017246

/-- `A017249(n)/A017247(n)` -/
def P11600655292993908813.Spec : Prop :=
  ∀ n, P11600655292993908813.a n = (A017246 n : ℚ)

end A017246

/-! ## A017246.P14070133132988900709

`A017250(n)/A017248(n)`
-/

namespace A017246.P14070133132988900709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017250 n : ℚ) / (A017248 n : ℚ)

end

end A017246.P14070133132988900709

namespace A017246

/-- `A017250(n)/A017248(n)` -/
def P14070133132988900709.Spec : Prop :=
  ∀ n, P14070133132988900709.a n = (A017246 n : ℚ)

end A017246

/-! ## A017246.P2723160921009674905

`A156676(n+1)+A017137(n)`
-/

namespace A017246.P2723160921009674905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156676 (n + 1) + A017137 n

end

end A017246.P2723160921009674905

namespace A017246

/-- `A156676(n+1)+A017137(n)` -/
def P2723160921009674905.Spec : Prop :=
  ∀ n, P2723160921009674905.a n = A017246 n

theorem P2723160921009674905.correct : P2723160921009674905.Spec := by
  intro n
  simp only [A017246, Nat.add_sub_cancel, A017246.P2723160921009674905.a, A017246.P9348811516791326222.a, A017137, A017137.P18352355205687682311.a, A156676, A156676.P2913965523641244757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017246

/-! ## A017246.P4241765428514147644

`A017368(n)%A157651(n+1)`
-/

namespace A017246.P4241765428514147644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017368 n) (A157651 (n + 1))

end

end A017246.P4241765428514147644

namespace A017246

/-- `A017368(n)%A157651(n+1)` -/
def P4241765428514147644.Spec : Prop :=
  ∀ n, P4241765428514147644.a n = A017246 n

end A017246

/-! ## A017246.P11737176061168099491

`A017248(n)²/A017247(n)²`
-/

namespace A017246.P11737176061168099491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017248 n ^ 2 : ℚ) / (A017247 n ^ 2 : ℚ)

end

end A017246.P11737176061168099491

namespace A017246

/-- `A017248(n)²/A017247(n)²` -/
def P11737176061168099491.Spec : Prop :=
  ∀ n, P11737176061168099491.a n = (A017246 n : ℚ)

end A017246

/-! ## A017246.P15954481418332974475

`A017245(n)²²²/A017250(n)`
-/

namespace A017246.P15954481418332974475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017245 n ^ 2) ^ 2) ^ 2 : ℚ) / (A017250 n : ℚ)

end

end A017246.P15954481418332974475

namespace A017246

/-- `A017245(n)²²²/A017250(n)` -/
def P15954481418332974475.Spec : Prop :=
  ∀ n, P15954481418332974475.a n = (A017246 n : ℚ)

end A017246

/-! ## A017246.P7906060997377857282

`A017173(n+1)*A017221(n)-A017173(n)`
-/

namespace A017246.P7906060997377857282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (n + 1) * A017221 n - A017173 n

end

end A017246.P7906060997377857282

namespace A017246

/-- `A017173(n+1)*A017221(n)-A017173(n)` -/
def P7906060997377857282.Spec : Prop :=
  ∀ n, P7906060997377857282.a n = A017246 n

theorem P7906060997377857282.correct : P7906060997377857282.Spec := by
  intro n
  simp only [A017246, Nat.add_sub_cancel, A017246.P7906060997377857282.a, A017246.P9348811516791326222.a, A017173, A017173.P17951010485655810208.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017246

/-! ## A017246.P3364777128809065359

`A013656(n+1)²/(n+1)²`
-/

namespace A017246.P3364777128809065359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013656 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017246.P3364777128809065359

namespace A017246

/-- `A013656(n+1)²/(n+1)²` -/
def P3364777128809065359.Spec : Prop :=
  ∀ n, P3364777128809065359.a n = (A017246 n : ℚ)

theorem P3364777128809065359.correct : P3364777128809065359.Spec := by
  intro n
  simp only [A017246, Nat.add_sub_cancel, A017246.P3364777128809065359.a, A017246.P9348811516791326222.a, A013656, A013656.P11559324039876728310.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017246

/-! ## A017246.P11587627308252296318

`A017245(n)²%A215414(n+5)`
-/

namespace A017246.P11587627308252296318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017245 n ^ 2) (A215414 (n + 5))

end

end A017246.P11587627308252296318

namespace A017246

/-- `A017245(n)²%A215414(n+5)` -/
def P11587627308252296318.Spec : Prop :=
  ∀ n, P11587627308252296318.a n = A017246 n

end A017246

/-! ## A017246.P10127802584070663917

`A061100(2*(n+1))`
-/

namespace A017246.P10127802584070663917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061100 (2 * (n + 1))

end

end A017246.P10127802584070663917

namespace A017246

/-- `A061100(2*(n+1))` -/
def P10127802584070663917.Spec : Prop :=
  ∀ n, P10127802584070663917.a n = A017246 n

end A017246

/-!
# A017247: a(n) = (9*n + 7)^3.

The programs for A017247, the canonical program `A017247.P8046235626779742222` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017247 has offset 0).

The definition of A017247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+7)^3` (program `A017247.P8046235626779742222`, by `A017247.P8046235626779742222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017247.P8046235626779742222

`(9*n+7)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017247

/-- `(9*n+7)^3` -/
def P8046235626779742222.Spec : Prop :=
  ∀ n, (P8046235626779742222.a n : ℤ) = A017247 n

theorem P8046235626779742222.correct : P8046235626779742222.Spec := by
  intro n
  simp only [A017247]

end A017247

/-! ## A017247.P17161634177525597105

`sqrt(A017250(n))`
-/

namespace A017247.P17161634177525597105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017250 n : ℝ)

end

end A017247.P17161634177525597105

namespace A017247

/-- `sqrt(A017250(n))` -/
def P17161634177525597105.Spec : Prop :=
  ∀ n, P17161634177525597105.a n = (A017247 n : ℝ)

end A017247

/-! ## A017247.P16803843351542592815

`sqrt(A017246(n)^3)`
-/

namespace A017247.P16803843351542592815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017246 n ^ 3 : ℝ)

end

end A017247.P16803843351542592815

namespace A017247

/-- `sqrt(A017246(n)^3)` -/
def P16803843351542592815.Spec : Prop :=
  ∀ n, P16803843351542592815.a n = (A017247 n : ℝ)

end A017247

/-! ## A017247.P10797304738107163958

`A017245(n)*(9*n+7)²`
-/

namespace A017247.P10797304738107163958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n * ((9 * n + 7) ^ 2 : ℤ)

end

end A017247.P10797304738107163958

namespace A017247

/-- `A017245(n)*(9*n+7)²` -/
def P10797304738107163958.Spec : Prop :=
  ∀ n, P10797304738107163958.a n = A017247 n

theorem P10797304738107163958.correct : P10797304738107163958.Spec := by
  intro n
  simp only [A017247, Nat.add_sub_cancel, A017247.P10797304738107163958.a, A017247.P8046235626779742222.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017247

/-! ## A017247.P14495734015069119817

`A017248(n)/A017245(n)`
-/

namespace A017247.P14495734015069119817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017248 n : ℚ) / (A017245 n : ℚ)

end

end A017247.P14495734015069119817

namespace A017247

/-- `A017248(n)/A017245(n)` -/
def P14495734015069119817.Spec : Prop :=
  ∀ n, P14495734015069119817.a n = (A017247 n : ℚ)

end A017247

/-! ## A017247.P11855316972974744065

`A017249(n)/A017246(n)`
-/

namespace A017247.P11855316972974744065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017249 n : ℚ) / (A017246 n : ℚ)

end

end A017247.P11855316972974744065

namespace A017247

/-- `A017249(n)/A017246(n)` -/
def P11855316972974744065.Spec : Prop :=
  ∀ n, P11855316972974744065.a n = (A017247 n : ℚ)

end A017247

/-! ## A017247.P16764123282096219551

`A017249(n)/A017245(n)²`
-/

namespace A017247.P16764123282096219551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017249 n : ℚ) / (A017245 n ^ 2 : ℚ)

end

end A017247.P16764123282096219551

namespace A017247

/-- `A017249(n)/A017245(n)²` -/
def P16764123282096219551.Spec : Prop :=
  ∀ n, P16764123282096219551.a n = (A017247 n : ℚ)

end A017247

/-! ## A017247.P5385339698443270206

`(A017233(n)+1)*A017246(n)`
-/

namespace A017247.P5385339698443270206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n + 1) * A017246 n

end

end A017247.P5385339698443270206

namespace A017247

/-- `(A017233(n)+1)*A017246(n)` -/
def P5385339698443270206.Spec : Prop :=
  ∀ n, P5385339698443270206.a n = A017247 n

theorem P5385339698443270206.correct : P5385339698443270206.Spec := by
  intro n
  simp only [A017247, Nat.add_sub_cancel, A017247.P5385339698443270206.a, A017247.P8046235626779742222.a, A017233, A017233.P12949994042344701827.a, A017246, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017247

/-! ## A017247.P17976775053202332730

`(A017353(n)-n)*A017246(n)`
-/

namespace A017247.P17976775053202332730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n - (n : ℤ)) * A017246 n

end

end A017247.P17976775053202332730

namespace A017247

/-- `(A017353(n)-n)*A017246(n)` -/
def P17976775053202332730.Spec : Prop :=
  ∀ n, P17976775053202332730.a n = A017247 n

theorem P17976775053202332730.correct : P17976775053202332730.Spec := by
  intro n
  simp only [A017247, Nat.add_sub_cancel, A017247.P17976775053202332730.a, A017247.P8046235626779742222.a, A017246, A017246.P9348811516791326222.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017247

/-! ## A017247.P5943215609439618768

`A017251(n)/A017245(n)²²`
-/

namespace A017247.P5943215609439618768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017251 n : ℚ) / ((A017245 n ^ 2) ^ 2 : ℚ)

end

end A017247.P5943215609439618768

namespace A017247

/-- `A017251(n)/A017245(n)²²` -/
def P5943215609439618768.Spec : Prop :=
  ∀ n, P5943215609439618768.a n = (A017247 n : ℚ)

end A017247

/-! ## A017247.P9251002313016703759

`(A004771(n)+n)*A017245(n)²`
-/

namespace A017247.P9251002313016703759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n + (n : ℤ)) * A017245 n ^ 2

end

end A017247.P9251002313016703759

namespace A017247

/-- `(A004771(n)+n)*A017245(n)²` -/
def P9251002313016703759.Spec : Prop :=
  ∀ n, P9251002313016703759.a n = A017247 n

theorem P9251002313016703759.correct : P9251002313016703759.Spec := by
  intro n
  simp only [A017247, Nat.add_sub_cancel, A017247.P9251002313016703759.a, A017247.P8046235626779742222.a, A004771, A004771.P15562682025386998074.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017247

/-! ## A017247.P15527580686964567074

`Δ[A062725(n)]²*Δ[A062725(n)]`
-/

namespace A017247.P15527580686964567074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017247.P15527580686964567074

namespace A017247

/-- `Δ[A062725(n)]²*Δ[A062725(n)]` -/
def P15527580686964567074.Spec : Prop :=
  ∀ n, P15527580686964567074.a n = A017247 n

end A017247

/-! ## A017247.P11793428333167687177

`(A156676(n+1)+A017137(n))*A017245(n)`
-/

namespace A017247.P11793428333167687177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156676 (n + 1) + A017137 n) * A017245 n

end

end A017247.P11793428333167687177

namespace A017247

/-- `(A156676(n+1)+A017137(n))*A017245(n)` -/
def P11793428333167687177.Spec : Prop :=
  ∀ n, P11793428333167687177.a n = A017247 n

theorem P11793428333167687177.correct : P11793428333167687177.Spec := by
  intro n
  simp only [A017247, Nat.add_sub_cancel, A017247.P11793428333167687177.a, A017247.P8046235626779742222.a, A017137, A017137.P18352355205687682311.a, A017245, A017245.P13986592314876826789.a, A156676, A156676.P2913965523641244757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017247

/-! ## A017247.P10637323862347550703

`(A062725(n+1)-A062725(n))*A017246(n)`
-/

namespace A017247.P10637323862347550703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062725 (n + 1) - A062725 n) * A017246 n

end

end A017247.P10637323862347550703

namespace A017247

/-- `(A062725(n+1)-A062725(n))*A017246(n)` -/
def P10637323862347550703.Spec : Prop :=
  ∀ n, P10637323862347550703.a n = A017247 n

end A017247

/-! ## A017247.P2016902073331709615

`A017223(2*n+1)/8`
-/

namespace A017247.P2016902073331709615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017223 (2 * n + 1) : ℚ) / 8

end

end A017247.P2016902073331709615

namespace A017247

/-- `A017223(2*n+1)/8` -/
def P2016902073331709615.Spec : Prop :=
  ∀ n, P2016902073331709615.a n = (A017247 n : ℚ)

theorem P2016902073331709615.correct : P2016902073331709615.Spec := by
  intro n
  simp only [A017247, Nat.add_sub_cancel, A017247.P2016902073331709615.a, A017247.P8046235626779742222.a, A017223, A017223.P15998366256862935672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017247

/-! ## A017247.P1286215184422633461

`A017246(n)*A168411(2*n+1)`
-/

namespace A017247.P1286215184422633461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n * A168411 (2 * n + 1)

end

end A017247.P1286215184422633461

namespace A017247

/-- `A017246(n)*A168411(2*n+1)` -/
def P1286215184422633461.Spec : Prop :=
  ∀ n, P1286215184422633461.a n = A017247 n

end A017247

/-! ## A017247.P14905614937704584700

`A017246(n)*A301451(2*(n+1))`
-/

namespace A017247.P14905614937704584700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n * A301451 (2 * (n + 1))

end

end A017247.P14905614937704584700

namespace A017247

/-- `A017246(n)*A301451(2*(n+1))` -/
def P14905614937704584700.Spec : Prop :=
  ∀ n, P14905614937704584700.a n = A017247 n

end A017247

/-! ## A017247.P2752822410999537128

`A061100(2*(n+1))*A301451(2*(n+1))`
-/

namespace A017247.P2752822410999537128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061100 (2 * (n + 1)) * A301451 (2 * (n + 1))

end

end A017247.P2752822410999537128

namespace A017247

/-- `A061100(2*(n+1))*A301451(2*(n+1))` -/
def P2752822410999537128.Spec : Prop :=
  ∀ n, P2752822410999537128.a n = A017247 n

end A017247

/-! ## A017247.P12246660432486878044

`A125758(2*(n+1))²*A125758(2*(n+1))`
-/

namespace A017247.P12246660432486878044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (2 * (n + 1)) ^ 2 * A125758 (2 * (n + 1))

end

end A017247.P12246660432486878044

namespace A017247

/-- `A125758(2*(n+1))²*A125758(2*(n+1))` -/
def P12246660432486878044.Spec : Prop :=
  ∀ n, P12246660432486878044.a n = A017247 n

end A017247

/-!
# A017248: a(n) = (9*n + 7)^4.

The programs for A017248, the canonical program `A017248.P16674596427348373062` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017248 has offset 0).

The definition of A017248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+7)^4` (program `A017248.P16674596427348373062`, by `A017248.P16674596427348373062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017248.P16674596427348373062

`(9*n+7)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017248

/-- `(9*n+7)^4` -/
def P16674596427348373062.Spec : Prop :=
  ∀ n, (P16674596427348373062.a n : ℤ) = A017248 n

theorem P16674596427348373062.correct : P16674596427348373062.Spec := by
  intro n
  simp only [A017248]

end A017248

/-! ## A017248.P1923327989228660685

`(record[lcm(4, n+1)]+n+3)²²`
-/

namespace A017248.P1923327989228660685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 3)) ^ 2) ^ 2

end

end A017248.P1923327989228660685

namespace A017248

/-- `(record[lcm(4, n+1)]+n+3)²²` -/
def P1923327989228660685.Spec : Prop :=
  ∀ n, (P1923327989228660685.a n : ℤ) = A017248 n

end A017248

/-! ## A017248.P3926650948996290798

`(Δ[lcm(2, (2*n)²)]+n+3)²²`
-/

namespace A017248.P3926650948996290798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 3 : ℤ)) ^ 2) ^ 2

end

end A017248.P3926650948996290798

namespace A017248

/-- `(Δ[lcm(2, (2*n)²)]+n+3)²²` -/
def P3926650948996290798.Spec : Prop :=
  ∀ n, P3926650948996290798.a n = A017248 n

end A017248

/-! ## A017248.P13484324521113469871

`Δ[C(n+3, 2)+(2*n)²]²²`
-/

namespace A017248.P13484324521113469871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2 + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017248.P13484324521113469871

namespace A017248

/-- `Δ[C(n+3, 2)+(2*n)²]²²` -/
def P13484324521113469871.Spec : Prop :=
  ∀ n, P13484324521113469871.a n = A017248 n

theorem P13484324521113469871.correct : P13484324521113469871.Spec := by
  intro n
  simp only [A017248, Nat.add_sub_cancel, A017248.P13484324521113469871.f1, A017248.P13484324521113469871.a, A017248.P16674596427348373062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017248

/-! ## A017248.P13335973291982959662

`((n+3)²-lcm(n-1, n-2))²²`
-/

namespace A017248.P13335973291982959662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 3) ^ 2 : ℤ) - (Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 2) : ℤ)) ^ 2) ^ 2

end

end A017248.P13335973291982959662

namespace A017248

/-- `((n+3)²-lcm(n-1, n-2))²²` -/
def P13335973291982959662.Spec : Prop :=
  ∀ n, P13335973291982959662.a n = A017248 n

end A017248

/-! ## A017248.P18395746866355670022

`(Δ[and(2*n+1, 2*n)²]+n+3)²²`
-/

namespace A017248.P18395746866355670022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 3 : ℤ)) ^ 2) ^ 2

end

end A017248.P18395746866355670022

namespace A017248

/-- `(Δ[and(2*n+1, 2*n)²]+n+3)²²` -/
def P18395746866355670022.Spec : Prop :=
  ∀ n, P18395746866355670022.a n = A017248 n

end A017248

/-! ## A017248.P610752521001523948

`A017246(n)²`
-/

namespace A017248.P610752521001523948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n ^ 2

end

end A017248.P610752521001523948

namespace A017248

/-- `A017246(n)²` -/
def P610752521001523948.Spec : Prop :=
  ∀ n, P610752521001523948.a n = A017248 n

theorem P610752521001523948.correct : P610752521001523948.Spec := by
  intro n
  simp only [A017248, Nat.add_sub_cancel, A017248.P610752521001523948.a, A017248.P16674596427348373062.a, A017246, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017248

/-! ## A017248.P3063178028912502895

`sqrt(A017252(n))`
-/

namespace A017248.P3063178028912502895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017252 n : ℝ)

end

end A017248.P3063178028912502895

namespace A017248

/-- `sqrt(A017252(n))` -/
def P3063178028912502895.Spec : Prop :=
  ∀ n, P3063178028912502895.a n = (A017248 n : ℝ)

end A017248

/-! ## A017248.P16548220754672272176

`A017245(n)²²`
-/

namespace A017248.P16548220754672272176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017245 n ^ 2) ^ 2

end

end A017248.P16548220754672272176

namespace A017248

/-- `A017245(n)²²` -/
def P16548220754672272176.Spec : Prop :=
  ∀ n, P16548220754672272176.a n = A017248 n

theorem P16548220754672272176.correct : P16548220754672272176.Spec := by
  intro n
  simp only [A017248, Nat.add_sub_cancel, A017248.P16548220754672272176.a, A017248.P16674596427348373062.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017248

/-! ## A017248.P2149014679820814241

`Δ[A062725(n)]²²`
-/

namespace A017248.P2149014679820814241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017248.P2149014679820814241

namespace A017248

/-- `Δ[A062725(n)]²²` -/
def P2149014679820814241.Spec : Prop :=
  ∀ n, P2149014679820814241.a n = A017248 n

end A017248

/-! ## A017248.P9238867784434108339

`(A017233(n)+1)²²`
-/

namespace A017248.P9238867784434108339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017233 n + 1) ^ 2) ^ 2

end

end A017248.P9238867784434108339

namespace A017248

/-- `(A017233(n)+1)²²` -/
def P9238867784434108339.Spec : Prop :=
  ∀ n, P9238867784434108339.a n = A017248 n

theorem P9238867784434108339.correct : P9238867784434108339.Spec := by
  intro n
  simp only [A017248, Nat.add_sub_cancel, A017248.P9238867784434108339.a, A017248.P16674596427348373062.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017248

/-! ## A017248.P15739643306466145839

`(A017221(n)+2)²²`
-/

namespace A017248.P15739643306466145839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017221 n + 2) ^ 2) ^ 2

end

end A017248.P15739643306466145839

namespace A017248

/-- `(A017221(n)+2)²²` -/
def P15739643306466145839.Spec : Prop :=
  ∀ n, P15739643306466145839.a n = A017248 n

theorem P15739643306466145839.correct : P15739643306466145839.Spec := by
  intro n
  simp only [A017248, Nat.add_sub_cancel, A017248.P15739643306466145839.a, A017248.P16674596427348373062.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017248

/-! ## A017248.P6936519385012165936

`(1-A017257(n))²²`
-/

namespace A017248.P6936519385012165936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017257 n) ^ 2) ^ 2

end

end A017248.P6936519385012165936

namespace A017248

/-- `(1-A017257(n))²²` -/
def P6936519385012165936.Spec : Prop :=
  ∀ n, P6936519385012165936.a n = A017248 n

theorem P6936519385012165936.correct : P6936519385012165936.Spec := by
  intro n
  simp only [A017248, Nat.add_sub_cancel, A017248.P6936519385012165936.a, A017248.P16674596427348373062.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017248

/-! ## A017248.P1757573939906422219

`(A017209(n)+3)²²`
-/

namespace A017248.P1757573939906422219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017209 n + 3) ^ 2) ^ 2

end

end A017248.P1757573939906422219

namespace A017248

/-- `(A017209(n)+3)²²` -/
def P1757573939906422219.Spec : Prop :=
  ∀ n, P1757573939906422219.a n = A017248 n

theorem P1757573939906422219.correct : P1757573939906422219.Spec := by
  intro n
  simp only [A017248, Nat.add_sub_cancel, A017248.P1757573939906422219.a, A017248.P16674596427348373062.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017248

/-! ## A017248.P7705509805194529331

`(A004771(n)+n)²²`
-/

namespace A017248.P7705509805194529331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004771 n + (n : ℤ)) ^ 2) ^ 2

end

end A017248.P7705509805194529331

namespace A017248

/-- `(A004771(n)+n)²²` -/
def P7705509805194529331.Spec : Prop :=
  ∀ n, P7705509805194529331.a n = A017248 n

theorem P7705509805194529331.correct : P7705509805194529331.Spec := by
  intro n
  simp only [A017248, Nat.add_sub_cancel, A017248.P7705509805194529331.a, A017248.P16674596427348373062.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017248

/-! ## A017248.P7985241553321032560

`(n-A017353(n))²²`
-/

namespace A017248.P7985241553321032560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017353 n) ^ 2) ^ 2

end

end A017248.P7985241553321032560

namespace A017248

/-- `(n-A017353(n))²²` -/
def P7985241553321032560.Spec : Prop :=
  ∀ n, P7985241553321032560.a n = A017248 n

theorem P7985241553321032560.correct : P7985241553321032560.Spec := by
  intro n
  simp only [A017248, Nat.add_sub_cancel, A017248.P7985241553321032560.a, A017248.P16674596427348373062.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017248

/-! ## A017248.P368069398021313054

`(sqrt(A017234(n))+1)²²`
-/

namespace A017248.P368069398021313054
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017234 n : ℝ) + 1) ^ 2) ^ 2

end

end A017248.P368069398021313054

namespace A017248

/-- `(sqrt(A017234(n))+1)²²` -/
def P368069398021313054.Spec : Prop :=
  ∀ n, P368069398021313054.a n = (A017248 n : ℝ)

end A017248

/-! ## A017248.P8697708233250803351

`(sqrt(A017222(n))+2)²²`
-/

namespace A017248.P8697708233250803351
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017222 n : ℝ) + 2) ^ 2) ^ 2

end

end A017248.P8697708233250803351

namespace A017248

/-- `(sqrt(A017222(n))+2)²²` -/
def P8697708233250803351.Spec : Prop :=
  ∀ n, P8697708233250803351.a n = (A017248 n : ℝ)

end A017248

/-! ## A017248.P18054809105662311231

`(1-sqrt(A017258(n)))²²`
-/

namespace A017248.P18054809105662311231
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017258 n : ℝ)) ^ 2) ^ 2

end

end A017248.P18054809105662311231

namespace A017248

/-- `(1-sqrt(A017258(n)))²²` -/
def P18054809105662311231.Spec : Prop :=
  ∀ n, P18054809105662311231.a n = (A017248 n : ℝ)

end A017248

/-! ## A017248.P619127560306678635

`(Δ[A081266(n)]+1)²²`
-/

namespace A017248.P619127560306678635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + 1) ^ 2) ^ 2

end

end A017248.P619127560306678635

namespace A017248

/-- `(Δ[A081266(n)]+1)²²` -/
def P619127560306678635.Spec : Prop :=
  ∀ n, P619127560306678635.a n = A017248 n

end A017248

/-!
# A017249: a(n) = (9*n + 7)^5.

The programs for A017249, the canonical program `A017249.P5165766131636441887` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017249 has offset 0).

The definition of A017249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+7)^5` (program `A017249.P5165766131636441887`, by `A017249.P5165766131636441887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017249.P5165766131636441887

`(9*n+7)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017249

/-- `(9*n+7)^5` -/
def P5165766131636441887.Spec : Prop :=
  ∀ n, (P5165766131636441887.a n : ℤ) = A017249 n

theorem P5165766131636441887.correct : P5165766131636441887.Spec := by
  intro n
  simp only [A017249]

end A017249

/-! ## A017249.P3342251548691006115

`sqrt(A017246(n)^5)`
-/

namespace A017249.P3342251548691006115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017246 n ^ 5 : ℝ)

end

end A017249.P3342251548691006115

namespace A017249

/-- `sqrt(A017246(n)^5)` -/
def P3342251548691006115.Spec : Prop :=
  ∀ n, P3342251548691006115.a n = (A017249 n : ℝ)

end A017249

/-! ## A017249.P10281219356764393440

`(9*n+7)*A017248(n)`
-/

namespace A017249.P10281219356764393440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 7 : ℤ) * A017248 n

end

end A017249.P10281219356764393440

namespace A017249

/-- `(9*n+7)*A017248(n)` -/
def P10281219356764393440.Spec : Prop :=
  ∀ n, P10281219356764393440.a n = A017249 n

theorem P10281219356764393440.correct : P10281219356764393440.Spec := by
  intro n
  simp only [A017249, Nat.add_sub_cancel, A017249.P10281219356764393440.a, A017249.P5165766131636441887.a, A017248, A017248.P16674596427348373062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017249

/-! ## A017249.P15660164635153866274

`A017246(n)*A017247(n)`
-/

namespace A017249.P15660164635153866274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n * A017247 n

end

end A017249.P15660164635153866274

namespace A017249

/-- `A017246(n)*A017247(n)` -/
def P15660164635153866274.Spec : Prop :=
  ∀ n, P15660164635153866274.a n = A017249 n

theorem P15660164635153866274.correct : P15660164635153866274.Spec := by
  intro n
  simp only [A017249, Nat.add_sub_cancel, A017249.P15660164635153866274.a, A017249.P5165766131636441887.a, A017246, A017246.P9348811516791326222.a, A017247, A017247.P8046235626779742222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017249

/-! ## A017249.P3662605126343905969

`A017250(n)/A017245(n)`
-/

namespace A017249.P3662605126343905969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017250 n : ℚ) / (A017245 n : ℚ)

end

end A017249.P3662605126343905969

namespace A017249

/-- `A017250(n)/A017245(n)` -/
def P3662605126343905969.Spec : Prop :=
  ∀ n, P3662605126343905969.a n = (A017249 n : ℚ)

end A017249

/-! ## A017249.P7321333765122311256

`A017245(n)²*A017247(n)`
-/

namespace A017249.P7321333765122311256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n ^ 2 * A017247 n

end

end A017249.P7321333765122311256

namespace A017249

/-- `A017245(n)²*A017247(n)` -/
def P7321333765122311256.Spec : Prop :=
  ∀ n, P7321333765122311256.a n = A017249 n

theorem P7321333765122311256.correct : P7321333765122311256.Spec := by
  intro n
  simp only [A017249, Nat.add_sub_cancel, A017249.P7321333765122311256.a, A017249.P5165766131636441887.a, A017245, A017245.P13986592314876826789.a, A017247, A017247.P8046235626779742222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017249

/-! ## A017249.P4466099206625936961

`A017246(n)²*A017245(n)`
-/

namespace A017249.P4466099206625936961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n ^ 2 * A017245 n

end

end A017249.P4466099206625936961

namespace A017249

/-- `A017246(n)²*A017245(n)` -/
def P4466099206625936961.Spec : Prop :=
  ∀ n, P4466099206625936961.a n = A017249 n

theorem P4466099206625936961.correct : P4466099206625936961.Spec := by
  intro n
  simp only [A017249, Nat.add_sub_cancel, A017249.P4466099206625936961.a, A017249.P5165766131636441887.a, A017245, A017245.P13986592314876826789.a, A017246, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017249

/-! ## A017249.P12391614876527491590

`A017248(n)²/A017247(n)`
-/

namespace A017249.P12391614876527491590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017248 n ^ 2 : ℚ) / (A017247 n : ℚ)

end

end A017249.P12391614876527491590

namespace A017249

/-- `A017248(n)²/A017247(n)` -/
def P12391614876527491590.Spec : Prop :=
  ∀ n, P12391614876527491590.a n = (A017249 n : ℚ)

end A017249

/-! ## A017249.P9120654954492107464

`A017251(n)/A017245(n)²`
-/

namespace A017249.P9120654954492107464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017251 n : ℚ) / (A017245 n ^ 2 : ℚ)

end

end A017249.P9120654954492107464

namespace A017249

/-- `A017251(n)/A017245(n)²` -/
def P9120654954492107464.Spec : Prop :=
  ∀ n, P9120654954492107464.a n = (A017249 n : ℚ)

end A017249

/-! ## A017249.P8075254697278477327

`(A017233(n)+1)*A017246(n)²`
-/

namespace A017249.P8075254697278477327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017233 n + 1) * A017246 n ^ 2

end

end A017249.P8075254697278477327

namespace A017249

/-- `(A017233(n)+1)*A017246(n)²` -/
def P8075254697278477327.Spec : Prop :=
  ∀ n, P8075254697278477327.a n = A017249 n

theorem P8075254697278477327.correct : P8075254697278477327.Spec := by
  intro n
  simp only [A017249, Nat.add_sub_cancel, A017249.P8075254697278477327.a, A017249.P5165766131636441887.a, A017233, A017233.P12949994042344701827.a, A017246, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017249

/-! ## A017249.P6992685708412360961

`(A017353(n)-n)*A017246(n)²`
-/

namespace A017249.P6992685708412360961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n - (n : ℤ)) * A017246 n ^ 2

end

end A017249.P6992685708412360961

namespace A017249

/-- `(A017353(n)-n)*A017246(n)²` -/
def P6992685708412360961.Spec : Prop :=
  ∀ n, P6992685708412360961.a n = A017249 n

theorem P6992685708412360961.correct : P6992685708412360961.Spec := by
  intro n
  simp only [A017249, Nat.add_sub_cancel, A017249.P6992685708412360961.a, A017249.P5165766131636441887.a, A017246, A017246.P9348811516791326222.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017249

/-! ## A017249.P14828906606040049126

`A017252(n)/(A017245(n)²*A017245(n))`
-/

namespace A017249.P14828906606040049126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017252 n : ℚ) / (A017245 n ^ 2 * A017245 n : ℚ)

end

end A017249.P14828906606040049126

namespace A017249

/-- `A017252(n)/(A017245(n)²*A017245(n))` -/
def P14828906606040049126.Spec : Prop :=
  ∀ n, P14828906606040049126.a n = (A017249 n : ℚ)

end A017249

/-! ## A017249.P16156544172694378290

`A017246(n)²*A168411(2*n+1)`
-/

namespace A017249.P16156544172694378290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n ^ 2 * A168411 (2 * n + 1)

end

end A017249.P16156544172694378290

namespace A017249

/-- `A017246(n)²*A168411(2*n+1)` -/
def P16156544172694378290.Spec : Prop :=
  ∀ n, P16156544172694378290.a n = A017249 n

end A017249

/-! ## A017249.P4403082473764317161

`A061100(2*(n+1))²*A301451(2*(n+1))`
-/

namespace A017249.P4403082473764317161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061100 (2 * (n + 1)) ^ 2 * A301451 (2 * (n + 1))

end

end A017249.P4403082473764317161

namespace A017249

/-- `A061100(2*(n+1))²*A301451(2*(n+1))` -/
def P4403082473764317161.Spec : Prop :=
  ∀ n, P4403082473764317161.a n = A017249 n

end A017249

/-! ## A017249.P11323103747478382481

`A125758(2*(n+1))²²*A125758(2*(n+1))`
-/

namespace A017249.P11323103747478382481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A125758 (2 * (n + 1)) ^ 2) ^ 2 * A125758 (2 * (n + 1))

end

end A017249.P11323103747478382481

namespace A017249

/-- `A125758(2*(n+1))²²*A125758(2*(n+1))` -/
def P11323103747478382481.Spec : Prop :=
  ∀ n, P11323103747478382481.a n = A017249 n

end A017249

/-! ## A017249.P736450624972587685

`A168411(2*n+1)²²*A168411(2*(n+1))`
-/

namespace A017249.P736450624972587685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168411 (2 * n + 1) ^ 2) ^ 2 * A168411 (2 * (n + 1))

end

end A017249.P736450624972587685

namespace A017249

/-- `A168411(2*n+1)²²*A168411(2*(n+1))` -/
def P736450624972587685.Spec : Prop :=
  ∀ n, P736450624972587685.a n = A017249 n

end A017249

/-! ## A017249.P16815204675330376031

`A016781(3*n+2)`
-/

namespace A017249.P16815204675330376031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (3 * n + 2)

end

end A017249.P16815204675330376031

namespace A017249

/-- `A016781(3*n+2)` -/
def P16815204675330376031.Spec : Prop :=
  ∀ n, P16815204675330376031.a n = A017249 n

theorem P16815204675330376031.correct : P16815204675330376031.Spec := by
  intro n
  simp only [A017249, Nat.add_sub_cancel, A017249.P16815204675330376031.a, A017249.P5165766131636441887.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017249

/-! ## A017249.P7598172346750576981

`A000584(8*n+7+n)`
-/

namespace A017249.P7598172346750576981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (8 * n + 7 + n)

end

end A017249.P7598172346750576981

namespace A017249

/-- `A000584(8*n+7+n)` -/
def P7598172346750576981.Spec : Prop :=
  ∀ n, P7598172346750576981.a n = A017249 n

theorem P7598172346750576981.correct : P7598172346750576981.Spec := by
  intro n
  simp only [A017249, Nat.add_sub_cancel, A017249.P7598172346750576981.a, A017249.P5165766131636441887.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017249

/-!
# A017250: a(n) = (9*n + 7)^6.

The programs for A017250, the canonical program `A017250.P7262753368167077502` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017250 has offset 0).

The definition of A017250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+7)^6` (program `A017250.P7262753368167077502`, by `A017250.P7262753368167077502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017250.P7262753368167077502

`(9*n+7)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017250

/-- `(9*n+7)^6` -/
def P7262753368167077502.Spec : Prop :=
  ∀ n, (P7262753368167077502.a n : ℤ) = A017250 n

theorem P7262753368167077502.correct : P7262753368167077502.Spec := by
  intro n
  simp only [A017250]

end A017250

/-! ## A017250.P979632376259444055

`A017247(n)²`
-/

namespace A017250.P979632376259444055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017247 n ^ 2

end

end A017250.P979632376259444055

namespace A017250

/-- `A017247(n)²` -/
def P979632376259444055.Spec : Prop :=
  ∀ n, P979632376259444055.a n = A017250 n

theorem P979632376259444055.correct : P979632376259444055.Spec := by
  intro n
  simp only [A017250, Nat.add_sub_cancel, A017250.P979632376259444055.a, A017250.P7262753368167077502.a, A017247, A017247.P8046235626779742222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017250

/-! ## A017250.P12193284246747824380

`sqrt(A017248(n)^3)`
-/

namespace A017250.P12193284246747824380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017248 n ^ 3 : ℝ)

end

end A017250.P12193284246747824380

namespace A017250

/-- `sqrt(A017248(n)^3)` -/
def P12193284246747824380.Spec : Prop :=
  ∀ n, P12193284246747824380.a n = (A017250 n : ℝ)

end A017250

/-! ## A017250.P5388442013783867825

`(Δ[A062725(n)]^3)²`
-/

namespace A017250.P5388442013783867825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017250.P5388442013783867825

namespace A017250

/-- `(Δ[A062725(n)]^3)²` -/
def P5388442013783867825.Spec : Prop :=
  ∀ n, P5388442013783867825.a n = A017250 n

end A017250

/-! ## A017250.P5634883269374364882

`A017245(n)*A017249(n)`
-/

namespace A017250.P5634883269374364882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n * A017249 n

end

end A017250.P5634883269374364882

namespace A017250

/-- `A017245(n)*A017249(n)` -/
def P5634883269374364882.Spec : Prop :=
  ∀ n, P5634883269374364882.a n = A017250 n

theorem P5634883269374364882.correct : P5634883269374364882.Spec := by
  intro n
  simp only [A017250, Nat.add_sub_cancel, A017250.P5634883269374364882.a, A017250.P7262753368167077502.a, A017245, A017245.P13986592314876826789.a, A017249, A017249.P5165766131636441887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017250

/-! ## A017250.P11032797457938295186

`A017246(n)*A017248(n)`
-/

namespace A017250.P11032797457938295186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n * A017248 n

end

end A017250.P11032797457938295186

namespace A017250

/-- `A017246(n)*A017248(n)` -/
def P11032797457938295186.Spec : Prop :=
  ∀ n, P11032797457938295186.a n = A017250 n

theorem P11032797457938295186.correct : P11032797457938295186.Spec := by
  intro n
  simp only [A017250, Nat.add_sub_cancel, A017250.P11032797457938295186.a, A017250.P7262753368167077502.a, A017246, A017246.P9348811516791326222.a, A017248, A017248.P16674596427348373062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017250

/-! ## A017250.P11554037532003419621

`A017251(n)/A017245(n)`
-/

namespace A017250.P11554037532003419621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017251 n : ℚ) / (A017245 n : ℚ)

end

end A017250.P11554037532003419621

namespace A017250

/-- `A017251(n)/A017245(n)` -/
def P11554037532003419621.Spec : Prop :=
  ∀ n, P11554037532003419621.a n = (A017250 n : ℚ)

end A017250

/-! ## A017250.P225992528744417522

`(A017245(n)*A017246(n))²`
-/

namespace A017250.P225992528744417522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017245 n * A017246 n) ^ 2

end

end A017250.P225992528744417522

namespace A017250

/-- `(A017245(n)*A017246(n))²` -/
def P225992528744417522.Spec : Prop :=
  ∀ n, P225992528744417522.a n = A017250 n

theorem P225992528744417522.correct : P225992528744417522.Spec := by
  intro n
  simp only [A017250, Nat.add_sub_cancel, A017250.P225992528744417522.a, A017250.P7262753368167077502.a, A017245, A017245.P13986592314876826789.a, A017246, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017250

/-! ## A017250.P13681263049141123452

`A017245(n)²*A017248(n)`
-/

namespace A017250.P13681263049141123452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n ^ 2 * A017248 n

end

end A017250.P13681263049141123452

namespace A017250

/-- `A017245(n)²*A017248(n)` -/
def P13681263049141123452.Spec : Prop :=
  ∀ n, P13681263049141123452.a n = A017250 n

theorem P13681263049141123452.correct : P13681263049141123452.Spec := by
  intro n
  simp only [A017250, Nat.add_sub_cancel, A017250.P13681263049141123452.a, A017250.P7262753368167077502.a, A017245, A017245.P13986592314876826789.a, A017248, A017248.P16674596427348373062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017250

/-! ## A017250.P996516391012037021

`(A017249(n)/A017246(n))²`
-/

namespace A017250.P996516391012037021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017249 n : ℚ) / (A017246 n : ℚ)) ^ 2

end

end A017250.P996516391012037021

namespace A017250

/-- `(A017249(n)/A017246(n))²` -/
def P996516391012037021.Spec : Prop :=
  ∀ n, P996516391012037021.a n = (A017250 n : ℚ)

end A017250

/-! ## A017250.P8367905739030950606

`A017252(n)/A017245(n)²`
-/

namespace A017250.P8367905739030950606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017252 n : ℚ) / (A017245 n ^ 2 : ℚ)

end

end A017250.P8367905739030950606

namespace A017250

/-- `A017252(n)/A017245(n)²` -/
def P8367905739030950606.Spec : Prop :=
  ∀ n, P8367905739030950606.a n = (A017250 n : ℚ)

end A017250

/-! ## A017250.P15810565763996403428

`((A017233(n)+1)*A017246(n))²`
-/

namespace A017250.P15810565763996403428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017233 n + 1) * A017246 n) ^ 2

end

end A017250.P15810565763996403428

namespace A017250

/-- `((A017233(n)+1)*A017246(n))²` -/
def P15810565763996403428.Spec : Prop :=
  ∀ n, P15810565763996403428.a n = A017250 n

theorem P15810565763996403428.correct : P15810565763996403428.Spec := by
  intro n
  simp only [A017250, Nat.add_sub_cancel, A017250.P15810565763996403428.a, A017250.P7262753368167077502.a, A017233, A017233.P12949994042344701827.a, A017246, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017250

/-! ## A017250.P9144619298805459050

`((n-A017353(n))*A017246(n))²`
-/

namespace A017250.P9144619298805459050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017353 n) * A017246 n) ^ 2

end

end A017250.P9144619298805459050

namespace A017250

/-- `((n-A017353(n))*A017246(n))²` -/
def P9144619298805459050.Spec : Prop :=
  ∀ n, P9144619298805459050.a n = A017250 n

theorem P9144619298805459050.correct : P9144619298805459050.Spec := by
  intro n
  simp only [A017250, Nat.add_sub_cancel, A017250.P9144619298805459050.a, A017250.P7262753368167077502.a, A017246, A017246.P9348811516791326222.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017250

/-! ## A017250.P15608092529877584755

`(Δ[A064225(n)]^3)²`
-/

namespace A017250.P15608092529877584755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017250.P15608092529877584755

namespace A017250

/-- `(Δ[A064225(n)]^3)²` -/
def P15608092529877584755.Spec : Prop :=
  ∀ n, P15608092529877584755.a n = A017250 n

end A017250

/-! ## A017250.P10250525793257358484

`A061100(2*(n+1))²*A061100(2*(n+1))`
-/

namespace A017250.P10250525793257358484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061100 (2 * (n + 1)) ^ 2 * A061100 (2 * (n + 1))

end

end A017250.P10250525793257358484

namespace A017250

/-- `A061100(2*(n+1))²*A061100(2*(n+1))` -/
def P10250525793257358484.Spec : Prop :=
  ∀ n, P10250525793257358484.a n = A017250 n

end A017250

/-! ## A017250.P5308972393716824710

`A016782(3*n+2)`
-/

namespace A017250.P5308972393716824710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 (3 * n + 2)

end

end A017250.P5308972393716824710

namespace A017250

/-- `A016782(3*n+2)` -/
def P5308972393716824710.Spec : Prop :=
  ∀ n, P5308972393716824710.a n = A017250 n

theorem P5308972393716824710.correct : P5308972393716824710.Spec := by
  intro n
  simp only [A017250, Nat.add_sub_cancel, A017250.P5308972393716824710.a, A017250.P7262753368167077502.a, A016782, A016782.P12520626953037923259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017250

/-! ## A017250.P7665673538800515099

`A016779(3*n+2)²`
-/

namespace A017250.P7665673538800515099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 (3 * n + 2) ^ 2

end

end A017250.P7665673538800515099

namespace A017250

/-- `A016779(3*n+2)²` -/
def P7665673538800515099.Spec : Prop :=
  ∀ n, P7665673538800515099.a n = A017250 n

theorem P7665673538800515099.correct : P7665673538800515099.Spec := by
  intro n
  simp only [A017250, Nat.add_sub_cancel, A017250.P7665673538800515099.a, A017250.P7262753368167077502.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017250

/-! ## A017250.P4469277442456097568

`(A033627(A033627(n+3))^3)²`
-/

namespace A017250.P4469277442456097568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033627 (A033627 (n + 3)).toNat ^ 3) ^ 2

end

end A017250.P4469277442456097568

namespace A017250

/-- `(A033627(A033627(n+3))^3)²` -/
def P4469277442456097568.Spec : Prop :=
  ∀ n, P4469277442456097568.a n = A017250 n

end A017250

/-! ## A017250.P12708100601830453563

`A118719(A016969(n)+1)²`
-/

namespace A017250.P12708100601830453563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118719 (A016969 n + 1).toNat ^ 2

end

end A017250.P12708100601830453563

namespace A017250

/-- `A118719(A016969(n)+1)²` -/
def P12708100601830453563.Spec : Prop :=
  ∀ n, P12708100601830453563.a n = A017250 n

end A017250

/-!
# A017251: a(n) = (9*n+7)^7.

The programs for A017251, the canonical program `A017251.P15122441394229414086` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017251 has offset 0).

The definition of A017251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+7)^7` (program `A017251.P15122441394229414086`, by `A017251.P15122441394229414086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017251.P15122441394229414086

`(9*n+7)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017251

/-- `(9*n+7)^7` -/
def P15122441394229414086.Spec : Prop :=
  ∀ n, (P15122441394229414086.a n : ℤ) = A017251 n

theorem P15122441394229414086.correct : P15122441394229414086.Spec := by
  intro n
  simp only [A017251]

end A017251

/-! ## A017251.P4279673260694311513

`A017245(n)*A017250(n)`
-/

namespace A017251.P4279673260694311513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n * A017250 n

end

end A017251.P4279673260694311513

namespace A017251

/-- `A017245(n)*A017250(n)` -/
def P4279673260694311513.Spec : Prop :=
  ∀ n, P4279673260694311513.a n = A017251 n

theorem P4279673260694311513.correct : P4279673260694311513.Spec := by
  intro n
  simp only [A017251, Nat.add_sub_cancel, A017251.P4279673260694311513.a, A017251.P15122441394229414086.a, A017245, A017245.P13986592314876826789.a, A017250, A017250.P7262753368167077502.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017251

/-! ## A017251.P6614173852330529771

`A017246(n)*A017249(n)`
-/

namespace A017251.P6614173852330529771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n * A017249 n

end

end A017251.P6614173852330529771

namespace A017251

/-- `A017246(n)*A017249(n)` -/
def P6614173852330529771.Spec : Prop :=
  ∀ n, P6614173852330529771.a n = A017251 n

theorem P6614173852330529771.correct : P6614173852330529771.Spec := by
  intro n
  simp only [A017251, Nat.add_sub_cancel, A017251.P6614173852330529771.a, A017251.P15122441394229414086.a, A017246, A017246.P9348811516791326222.a, A017249, A017249.P5165766131636441887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017251

/-! ## A017251.P2924693496577142304

`A017247(n)*A017248(n)`
-/

namespace A017251.P2924693496577142304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017247 n * A017248 n

end

end A017251.P2924693496577142304

namespace A017251

/-- `A017247(n)*A017248(n)` -/
def P2924693496577142304.Spec : Prop :=
  ∀ n, P2924693496577142304.a n = A017251 n

theorem P2924693496577142304.correct : P2924693496577142304.Spec := by
  intro n
  simp only [A017251, Nat.add_sub_cancel, A017251.P2924693496577142304.a, A017251.P15122441394229414086.a, A017247, A017247.P8046235626779742222.a, A017248, A017248.P16674596427348373062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017251

/-! ## A017251.P14107716503373429101

`A017252(n)/A017245(n)`
-/

namespace A017251.P14107716503373429101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017252 n : ℚ) / (A017245 n : ℚ)

end

end A017251.P14107716503373429101

namespace A017251

/-- `A017252(n)/A017245(n)` -/
def P14107716503373429101.Spec : Prop :=
  ∀ n, P14107716503373429101.a n = (A017251 n : ℚ)

end A017251

/-! ## A017251.P6588484599403874677

`A017245(n)²*A017249(n)`
-/

namespace A017251.P6588484599403874677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n ^ 2 * A017249 n

end

end A017251.P6588484599403874677

namespace A017251

/-- `A017245(n)²*A017249(n)` -/
def P6588484599403874677.Spec : Prop :=
  ∀ n, P6588484599403874677.a n = A017251 n

theorem P6588484599403874677.correct : P6588484599403874677.Spec := by
  intro n
  simp only [A017251, Nat.add_sub_cancel, A017251.P6588484599403874677.a, A017251.P15122441394229414086.a, A017245, A017245.P13986592314876826789.a, A017249, A017249.P5165766131636441887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017251

/-! ## A017251.P2674767421104709168

`A017246(n)²*A017247(n)`
-/

namespace A017251.P2674767421104709168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n ^ 2 * A017247 n

end

end A017251.P2674767421104709168

namespace A017251

/-- `A017246(n)²*A017247(n)` -/
def P2674767421104709168.Spec : Prop :=
  ∀ n, P2674767421104709168.a n = A017251 n

theorem P2674767421104709168.correct : P2674767421104709168.Spec := by
  intro n
  simp only [A017251, Nat.add_sub_cancel, A017251.P2674767421104709168.a, A017251.P15122441394229414086.a, A017246, A017246.P9348811516791326222.a, A017247, A017247.P8046235626779742222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017251

/-! ## A017251.P12896603754313924893

`A017247(n)²*A017245(n)`
-/

namespace A017251.P12896603754313924893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017247 n ^ 2 * A017245 n

end

end A017251.P12896603754313924893

namespace A017251

/-- `A017247(n)²*A017245(n)` -/
def P12896603754313924893.Spec : Prop :=
  ∀ n, P12896603754313924893.a n = A017251 n

theorem P12896603754313924893.correct : P12896603754313924893.Spec := by
  intro n
  simp only [A017251, Nat.add_sub_cancel, A017251.P12896603754313924893.a, A017251.P15122441394229414086.a, A017245, A017245.P13986592314876826789.a, A017247, A017247.P8046235626779742222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017251

/-! ## A017251.P6040154457134164544

`A017248(n)²/A017245(n)`
-/

namespace A017251.P6040154457134164544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017248 n ^ 2 : ℚ) / (A017245 n : ℚ)

end

end A017251.P6040154457134164544

namespace A017251

/-- `A017248(n)²/A017245(n)` -/
def P6040154457134164544.Spec : Prop :=
  ∀ n, P6040154457134164544.a n = (A017251 n : ℚ)

end A017251

/-! ## A017251.P10614015154417565114

`A017246(n)²²/A017245(n)`
-/

namespace A017251.P10614015154417565114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017246 n ^ 2) ^ 2 : ℚ) / (A017245 n : ℚ)

end

end A017251.P10614015154417565114

namespace A017251

/-- `A017246(n)²²/A017245(n)` -/
def P10614015154417565114.Spec : Prop :=
  ∀ n, P10614015154417565114.a n = (A017251 n : ℚ)

end A017251

/-! ## A017251.P7166647282552785850

`A017249(n)/A017247(n)*A017249(n)`
-/

namespace A017251.P7166647282552785850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017249 n : ℚ) / (A017247 n : ℚ) * (A017249 n : ℚ)

end

end A017251.P7166647282552785850

namespace A017251

/-- `A017249(n)/A017247(n)*A017249(n)` -/
def P7166647282552785850.Spec : Prop :=
  ∀ n, P7166647282552785850.a n = (A017251 n : ℚ)

end A017251

/-! ## A017251.P9471376532634712131

`A016783(3*n+2)`
-/

namespace A017251.P9471376532634712131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016783 (3 * n + 2)

end

end A017251.P9471376532634712131

namespace A017251

/-- `A016783(3*n+2)` -/
def P9471376532634712131.Spec : Prop :=
  ∀ n, P9471376532634712131.a n = A017251 n

theorem P9471376532634712131.correct : P9471376532634712131.Spec := by
  intro n
  simp only [A017251, Nat.add_sub_cancel, A017251.P9471376532634712131.a, A017251.P15122441394229414086.a, A016783, A016783.P4851290957634662023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017251

/-! ## A017251.P6727584690643481150

`A001015(9*n+7)`
-/

namespace A017251.P6727584690643481150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (9 * n + 7)

end

end A017251.P6727584690643481150

namespace A017251

/-- `A001015(9*n+7)` -/
def P6727584690643481150.Spec : Prop :=
  ∀ n, P6727584690643481150.a n = A017251 n

end A017251

/-! ## A017251.P12496602691348061806

`A117280(A017245(n))`
-/

namespace A017251.P12496602691348061806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117280 (A017245 n).toNat

end

end A017251.P12496602691348061806

namespace A017251

/-- `A117280(A017245(n))` -/
def P12496602691348061806.Spec : Prop :=
  ∀ n, P12496602691348061806.a n = A017251 n

end A017251

/-!
# A017252: a(n) = (9*n + 7)^8.

The programs for A017252, the canonical program `A017252.P2059715551767843450` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017252 has offset 0).

The definition of A017252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+7)^8` (program `A017252.P2059715551767843450`, by `A017252.P2059715551767843450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017252.P2059715551767843450

`(9*n+7)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017252

/-- `(9*n+7)^8` -/
def P2059715551767843450.Spec : Prop :=
  ∀ n, (P2059715551767843450.a n : ℤ) = A017252 n

theorem P2059715551767843450.correct : P2059715551767843450.Spec := by
  intro n
  simp only [A017252]

end A017252

/-! ## A017252.P15846499007142124777

`(lcm(4, 2*n+1)+n+3)²²²`
-/

namespace A017252.P15846499007142124777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 4 (2 * n + 1) + (n + 3)) ^ 2) ^ 2) ^ 2

end

end A017252.P15846499007142124777

namespace A017252

/-- `(lcm(4, 2*n+1)+n+3)²²²` -/
def P15846499007142124777.Spec : Prop :=
  ∀ n, (P15846499007142124777.a n : ℤ) = A017252 n

end A017252

/-! ## A017252.P8025568829159100232

`A017248(n)²`
-/

namespace A017252.P8025568829159100232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017248 n ^ 2

end

end A017252.P8025568829159100232

namespace A017252

/-- `A017248(n)²` -/
def P8025568829159100232.Spec : Prop :=
  ∀ n, P8025568829159100232.a n = A017252 n

theorem P8025568829159100232.correct : P8025568829159100232.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P8025568829159100232.a, A017252.P2059715551767843450.a, A017248, A017248.P16674596427348373062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P11055187668164081013

`A017246(n)²²`
-/

namespace A017252.P11055187668164081013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017246 n ^ 2) ^ 2

end

end A017252.P11055187668164081013

namespace A017252

/-- `A017246(n)²²` -/
def P11055187668164081013.Spec : Prop :=
  ∀ n, P11055187668164081013.a n = A017252 n

theorem P11055187668164081013.correct : P11055187668164081013.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P11055187668164081013.a, A017252.P2059715551767843450.a, A017246, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P3340557292341584557

`A017245(n)²²²`
-/

namespace A017252.P3340557292341584557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017245 n ^ 2) ^ 2) ^ 2

end

end A017252.P3340557292341584557

namespace A017252

/-- `A017245(n)²²²` -/
def P3340557292341584557.Spec : Prop :=
  ∀ n, P3340557292341584557.a n = A017252 n

theorem P3340557292341584557.correct : P3340557292341584557.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P3340557292341584557.a, A017252.P2059715551767843450.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P3848514114042371497

`Δ[A062725(n)]²²²`
-/

namespace A017252.P3848514114042371497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017252.P3848514114042371497

namespace A017252

/-- `Δ[A062725(n)]²²²` -/
def P3848514114042371497.Spec : Prop :=
  ∀ n, P3848514114042371497.a n = A017252 n

end A017252

/-! ## A017252.P16804952484597084315

`(A017233(n)+1)²²²`
-/

namespace A017252.P16804952484597084315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017233 n + 1) ^ 2) ^ 2) ^ 2

end

end A017252.P16804952484597084315

namespace A017252

/-- `(A017233(n)+1)²²²` -/
def P16804952484597084315.Spec : Prop :=
  ∀ n, P16804952484597084315.a n = A017252 n

theorem P16804952484597084315.correct : P16804952484597084315.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P16804952484597084315.a, A017252.P2059715551767843450.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P10370115418645749739

`(A017221(n)+2)²²²`
-/

namespace A017252.P10370115418645749739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017221 n + 2) ^ 2) ^ 2) ^ 2

end

end A017252.P10370115418645749739

namespace A017252

/-- `(A017221(n)+2)²²²` -/
def P10370115418645749739.Spec : Prop :=
  ∀ n, P10370115418645749739.a n = A017252 n

theorem P10370115418645749739.correct : P10370115418645749739.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P10370115418645749739.a, A017252.P2059715551767843450.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P5733471708900563477

`(1-A017257(n))²²²`
-/

namespace A017252.P5733471708900563477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017257 n) ^ 2) ^ 2) ^ 2

end

end A017252.P5733471708900563477

namespace A017252

/-- `(1-A017257(n))²²²` -/
def P5733471708900563477.Spec : Prop :=
  ∀ n, P5733471708900563477.a n = A017252 n

theorem P5733471708900563477.correct : P5733471708900563477.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P5733471708900563477.a, A017252.P2059715551767843450.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P3407321207371920379

`(A004771(n)+n)²²²`
-/

namespace A017252.P3407321207371920379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A004771 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017252.P3407321207371920379

namespace A017252

/-- `(A004771(n)+n)²²²` -/
def P3407321207371920379.Spec : Prop :=
  ∀ n, P3407321207371920379.a n = A017252 n

theorem P3407321207371920379.correct : P3407321207371920379.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P3407321207371920379.a, A017252.P2059715551767843450.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P16910242940741063778

`(n-A017353(n))²²²`
-/

namespace A017252.P16910242940741063778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017353 n) ^ 2) ^ 2) ^ 2

end

end A017252.P16910242940741063778

namespace A017252

/-- `(n-A017353(n))²²²` -/
def P16910242940741063778.Spec : Prop :=
  ∀ n, P16910242940741063778.a n = A017252 n

theorem P16910242940741063778.correct : P16910242940741063778.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P16910242940741063778.a, A017252.P2059715551767843450.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P7802366420174755452

`A017245(n)*A017251(n)`
-/

namespace A017252.P7802366420174755452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n * A017251 n

end

end A017252.P7802366420174755452

namespace A017252

/-- `A017245(n)*A017251(n)` -/
def P7802366420174755452.Spec : Prop :=
  ∀ n, P7802366420174755452.a n = A017252 n

theorem P7802366420174755452.correct : P7802366420174755452.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P7802366420174755452.a, A017252.P2059715551767843450.a, A017245, A017245.P13986592314876826789.a, A017251, A017251.P15122441394229414086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P12999477539829158885

`A017246(n)*A017250(n)`
-/

namespace A017252.P12999477539829158885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n * A017250 n

end

end A017252.P12999477539829158885

namespace A017252

/-- `A017246(n)*A017250(n)` -/
def P12999477539829158885.Spec : Prop :=
  ∀ n, P12999477539829158885.a n = A017252 n

theorem P12999477539829158885.correct : P12999477539829158885.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P12999477539829158885.a, A017252.P2059715551767843450.a, A017246, A017246.P9348811516791326222.a, A017250, A017250.P7262753368167077502.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P10179021625303524263

`A017247(n)*A017249(n)`
-/

namespace A017252.P10179021625303524263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017247 n * A017249 n

end

end A017252.P10179021625303524263

namespace A017252

/-- `A017247(n)*A017249(n)` -/
def P10179021625303524263.Spec : Prop :=
  ∀ n, P10179021625303524263.a n = A017252 n

theorem P10179021625303524263.correct : P10179021625303524263.Spec := by
  intro n
  simp only [A017252, Nat.add_sub_cancel, A017252.P10179021625303524263.a, A017252.P2059715551767843450.a, A017247, A017247.P8046235626779742222.a, A017249, A017249.P5165766131636441887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017252

/-! ## A017252.P2215647982897841641

`Δ[A064225(n)]²²²`
-/

namespace A017252.P2215647982897841641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017252.P2215647982897841641

namespace A017252

/-- `Δ[A064225(n)]²²²` -/
def P2215647982897841641.Spec : Prop :=
  ∀ n, P2215647982897841641.a n = A017252 n

end A017252

/-! ## A017252.P17765779068798596549

`A061100(2*(n+1))²²`
-/

namespace A017252.P17765779068798596549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061100 (2 * (n + 1)) ^ 2) ^ 2

end

end A017252.P17765779068798596549

namespace A017252

/-- `A061100(2*(n+1))²²` -/
def P17765779068798596549.Spec : Prop :=
  ∀ n, P17765779068798596549.a n = A017252 n

end A017252

/-! ## A017252.P16289946306319225081

`A125758(2*(n+1))²²²`
-/

namespace A017252.P16289946306319225081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A125758 (2 * (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017252.P16289946306319225081

namespace A017252

/-- `A125758(2*(n+1))²²²` -/
def P16289946306319225081.Spec : Prop :=
  ∀ n, P16289946306319225081.a n = A017252 n

end A017252

/-! ## A017252.P11653949107155971270

`A168411(2*n+1)²²²`
-/

namespace A017252.P11653949107155971270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A168411 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017252.P11653949107155971270

namespace A017252

/-- `A168411(2*n+1)²²²` -/
def P11653949107155971270.Spec : Prop :=
  ∀ n, P11653949107155971270.a n = A017252 n

end A017252

/-! ## A017252.P18177141538844715672

`A301451(2*(n+1))²²²`
-/

namespace A017252.P18177141538844715672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A301451 (2 * (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017252.P18177141538844715672

namespace A017252

/-- `A301451(2*(n+1))²²²` -/
def P18177141538844715672.Spec : Prop :=
  ∀ n, P18177141538844715672.a n = A017252 n

end A017252

/-! ## A017252.P16502988365656221607

`Δ[A210981(2*n)]²²²`
-/

namespace A017252.P16502988365656221607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210981 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017252.P16502988365656221607

namespace A017252

/-- `Δ[A210981(2*n)]²²²` -/
def P16502988365656221607.Spec : Prop :=
  ∀ n, P16502988365656221607.a n = A017252 n

end A017252

/-!
# A017253: a(n) = (9*n + 7)^9.

The programs for A017253, the canonical program `A017253.P7722319817632852898` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017253 has offset 0).

The definition of A017253 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+7)^9` (program `A017253.P7722319817632852898`, by `A017253.P7722319817632852898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017253.P7722319817632852898

`(9*n+7)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017253

/-- `(9*n+7)^9` -/
def P7722319817632852898.Spec : Prop :=
  ∀ n, (P7722319817632852898.a n : ℤ) = A017253 n

theorem P7722319817632852898.correct : P7722319817632852898.Spec := by
  intro n
  simp only [A017253]

end A017253

/-! ## A017253.P5177570182793422667

`sqrt(A017250(n)^3)`
-/

namespace A017253.P5177570182793422667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017250 n ^ 3 : ℝ)

end

end A017253.P5177570182793422667

namespace A017253

/-- `sqrt(A017250(n)^3)` -/
def P5177570182793422667.Spec : Prop :=
  ∀ n, P5177570182793422667.a n = (A017253 n : ℝ)

end A017253

/-! ## A017253.P5844148062370860962

`A017247(n)*A017250(n)`
-/

namespace A017253.P5844148062370860962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017247 n * A017250 n

end

end A017253.P5844148062370860962

namespace A017253

/-- `A017247(n)*A017250(n)` -/
def P5844148062370860962.Spec : Prop :=
  ∀ n, P5844148062370860962.a n = A017253 n

theorem P5844148062370860962.correct : P5844148062370860962.Spec := by
  intro n
  simp only [A017253, Nat.add_sub_cancel, A017253.P5844148062370860962.a, A017253.P7722319817632852898.a, A017247, A017247.P8046235626779742222.a, A017250, A017250.P7262753368167077502.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017253

/-! ## A017253.P12841809468754642201

`A017248(n)²*sqrt(sqrt(A017248(n)))`
-/

namespace A017253.P12841809468754642201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017248 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017248 n : ℝ))

end

end A017253.P12841809468754642201

namespace A017253

/-- `A017248(n)²*sqrt(sqrt(A017248(n)))` -/
def P12841809468754642201.Spec : Prop :=
  ∀ n, P12841809468754642201.a n = (A017253 n : ℝ)

end A017253

/-! ## A017253.P16509300506481359624

`A016785(3*n+2)`
-/

namespace A017253.P16509300506481359624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016785 (3 * n + 2)

end

end A017253.P16509300506481359624

namespace A017253

/-- `A016785(3*n+2)` -/
def P16509300506481359624.Spec : Prop :=
  ∀ n, P16509300506481359624.a n = A017253 n

theorem P16509300506481359624.correct : P16509300506481359624.Spec := by
  intro n
  simp only [A017253, Nat.add_sub_cancel, A017253.P16509300506481359624.a, A017253.P7722319817632852898.a, A016785, A016785.P12257324286826069844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017253

/-! ## A017253.P9902046924754966397

`A001017(A017245(n))`
-/

namespace A017253.P9902046924754966397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017245 n).toNat

end

end A017253.P9902046924754966397

namespace A017253

/-- `A001017(A017245(n))` -/
def P9902046924754966397.Spec : Prop :=
  ∀ n, P9902046924754966397.a n = A017253 n

end A017253

/-! ## A017253.P2278332675587752486

`A001017(A017353(n)-n)`
-/

namespace A017253.P2278332675587752486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017353 n - (n : ℤ)).toNat

end

end A017253.P2278332675587752486

namespace A017253

/-- `A001017(A017353(n)-n)` -/
def P2278332675587752486.Spec : Prop :=
  ∀ n, P2278332675587752486.a n = A017253 n

end A017253

/-! ## A017253.P5778261048346520435

`A001017(A008591(n+1)-2)`
-/

namespace A017253.P5778261048346520435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008591 (n + 1) - 2).toNat

end

end A017253.P5778261048346520435

namespace A017253

/-- `A001017(A008591(n+1)-2)` -/
def P5778261048346520435.Spec : Prop :=
  ∀ n, P5778261048346520435.a n = A017253 n

end A017253

/-! ## A017253.P11514304406826451358

`A001017(A017341(n)+1-n)`
-/

namespace A017253.P11514304406826451358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017341 n + (1 - (n : ℤ))).toNat

end

end A017253.P11514304406826451358

namespace A017253

/-- `A001017(A017341(n)+1-n)` -/
def P11514304406826451358.Spec : Prop :=
  ∀ n, P11514304406826451358.a n = A017253 n

end A017253

/-! ## A017253.P260558818925412208

`A001017(1-(n-A017341(n)))`
-/

namespace A017253.P260558818925412208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (1 - ((n : ℤ) - A017341 n)).toNat

end

end A017253.P260558818925412208

namespace A017253

/-- `A001017(1-(n-A017341(n)))` -/
def P260558818925412208.Spec : Prop :=
  ∀ n, P260558818925412208.a n = A017253 n

end A017253

/-! ## A017253.P13831341313023352109

`A001017(A016813(2*n+1)+n+2)`
-/

namespace A017253.P13831341313023352109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A016813 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A017253.P13831341313023352109

namespace A017253

/-- `A001017(A016813(2*n+1)+n+2)` -/
def P13831341313023352109.Spec : Prop :=
  ∀ n, P13831341313023352109.a n = A017253 n

end A017253

/-!
# A017254: 

The programs for A017254, there is no canonical definition to state claims against.
-/

/-! ## A017254.P9313407988007308605

`(9*n+7)^10`
-/

namespace A017254.P9313407988007308605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 7) ^ 10

end

end A017254.P9313407988007308605

/-! ## A017254.P2462794787528195252

`A017249(n)²`
-/

namespace A017254.P2462794787528195252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017249 n ^ 2

end

end A017254.P2462794787528195252

/-! ## A017254.P14232537436715802060

`sqrt(A017248(n)^5)`
-/

namespace A017254.P14232537436715802060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017248 n ^ 5 : ℝ)

end

end A017254.P14232537436715802060

/-! ## A017254.P17529961287404889021

`sqrt(sqrt(A017252(n)))*A017252(n)`
-/

namespace A017254.P17529961287404889021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017252 n : ℝ)) * (A017252 n : ℝ)

end

end A017254.P17529961287404889021

/-! ## A017254.P153556277459549901

`A061100(2*n+2)²²*A061100(2*n+2)`
-/

namespace A017254.P153556277459549901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061100 (2 * n + 2) ^ 2) ^ 2 * A061100 (2 * n + 2)

end

end A017254.P153556277459549901

/-! ## A017254.P8741800825856755693

`A016786(3*n+2)`
-/

namespace A017254.P8741800825856755693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016786 (3 * n + 2)

end

end A017254.P8741800825856755693

/-! ## A017254.P5606552319312667296

`A016781(A016777(n)+1)²`
-/

namespace A017254.P5606552319312667296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (A016777 n + 1).toNat ^ 2

end

end A017254.P5606552319312667296

/-! ## A017254.P147173409498664119

`A008454(A017353(n)-n)`
-/

namespace A017254.P147173409498664119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n - (n : ℤ)).toNat

end

end A017254.P147173409498664119

/-! ## A017254.P17735300666887205633

`A008454(A008591(n+1)-2)`
-/

namespace A017254.P17735300666887205633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008591 (n + 1) - 2).toNat

end

end A017254.P17735300666887205633

/-! ## A017254.P67259273577587614

`A008454(A017341(n)+1-n)`
-/

namespace A017254.P67259273577587614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n + (1 - (n : ℤ))).toNat

end

end A017254.P67259273577587614

/-! ## A017254.P13269450999666737163

`A008454(1-(n-A017341(n)))`
-/

namespace A017254.P13269450999666737163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (1 - ((n : ℤ) - A017341 n)).toNat

end

end A017254.P13269450999666737163

/-! ## A017254.P8780415278138739888

`A008454(A016777(2*n+n+2))`
-/

namespace A017254.P8780415278138739888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (2 * n + (n + 2))).toNat

end

end A017254.P8780415278138739888

/-! ## A017254.P17546085363608436179

`A008454(A016813(2*n+1)+n+2)`
-/

namespace A017254.P17546085363608436179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A017254.P17546085363608436179

/-!
# A017255: 

The programs for A017255, there is no canonical definition to state claims against.
-/

/-! ## A017255.P2035852266610283504

`(9*n+7)^11`
-/

namespace A017255.P2035852266610283504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 7) ^ 11

end

end A017255.P2035852266610283504

/-! ## A017255.P2223236287573985542

`A016787(3*n+2)`
-/

namespace A017255.P2223236287573985542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016787 (3 * n + 2)

end

end A017255.P2223236287573985542

/-! ## A017255.P17772596572731547358

`A008455(Δ[A062725(n)])`
-/

namespace A017255.P17772596572731547358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (f1 (n + 1) - f1 n).toNat

end

end A017255.P17772596572731547358

/-! ## A017255.P6721790513463128301

`A008455(A017257(n)-1)`
-/

namespace A017255.P6721790513463128301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017257 n - 1).toNat

end

end A017255.P6721790513463128301

/-! ## A017255.P17027626315378252593

`A008455(A008591(n+1)-2)`
-/

namespace A017255.P17027626315378252593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008591 (n + 1) - 2).toNat

end

end A017255.P17027626315378252593

/-! ## A017255.P15643325498644426898

`A008455(A016813(2*n+1)+n+2)`
-/

namespace A017255.P15643325498644426898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A017255.P15643325498644426898

/-!
# A017256: 

The programs for A017256, there is no canonical definition to state claims against.
-/

/-! ## A017256.P8056910619959254084

`(9*n+7)^12`
-/

namespace A017256.P8056910619959254084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 7) ^ 12

end

end A017256.P8056910619959254084

/-! ## A017256.P13252934742401311513

`A017250(n)²`
-/

namespace A017256.P13252934742401311513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017250 n ^ 2

end

end A017256.P13252934742401311513

/-! ## A017256.P2817002729197397988

`sqrt(A017252(n))*A017252(n)`
-/

namespace A017256.P2817002729197397988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017252 n : ℝ) * (A017252 n : ℝ)

end

end A017256.P2817002729197397988

/-! ## A017256.P10509036758043929220

`(A061100(2*n+2)²*A061100(2*n+2))²`
-/

namespace A017256.P10509036758043929220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061100 (2 * n + 2) ^ 2 * A061100 (2 * n + 2)) ^ 2

end

end A017256.P10509036758043929220

/-! ## A017256.P16872350922570214016

`A016788(3*n+2)`
-/

namespace A017256.P16872350922570214016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016788 (3 * n + 2)

end

end A017256.P16872350922570214016

/-! ## A017256.P13771757075811750330

`A016782(A016777(n)+1)²`
-/

namespace A017256.P13771757075811750330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 (A016777 n + 1).toNat ^ 2

end

end A017256.P13771757075811750330

/-! ## A017256.P17086340607606682226

`A016779(A016777(n)+1)²²`
-/

namespace A017256.P17086340607606682226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016779 (A016777 n + 1).toNat ^ 2) ^ 2

end

end A017256.P17086340607606682226

/-! ## A017256.P13548168145308793794

`A016779(A007494(2*n+1))²²`
-/

namespace A017256.P13548168145308793794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016779 (A007494 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A017256.P13548168145308793794

/-! ## A017256.P8422927686347180671

`A016779(A001651(2*n+2))²²`
-/

namespace A017256.P8422927686347180671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016779 (A001651 (2 * n + 2)).toNat ^ 2) ^ 2

end

end A017256.P8422927686347180671

/-! ## A017256.P2854007738356397175

`sqrt(A017252(n)^3)`
-/

namespace A017256.P2854007738356397175
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017252 n ^ 3 : ℝ)

end

end A017256.P2854007738356397175

/-! ## A017256.P12592314999574932331

`A000578(A017233(n)+1)²²`
-/

namespace A017256.P12592314999574932331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017233 n + 1).toNat ^ 2) ^ 2

end

end A017256.P12592314999574932331

/-! ## A017256.P16374687651990162494

`A000578(A017221(n)+2)²²`
-/

namespace A017256.P16374687651990162494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017221 n + 2).toNat ^ 2) ^ 2

end

end A017256.P16374687651990162494

/-! ## A017256.P13163214591256656839

`A000578(A004771(n)+n)²²`
-/

namespace A017256.P13163214591256656839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A004771 n + (n : ℤ)).toNat ^ 2) ^ 2

end

end A017256.P13163214591256656839

/-! ## A017256.P8066279081193877894

`A000578(A017353(n)-n)²²`
-/

namespace A017256.P8066279081193877894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017353 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A017256.P8066279081193877894

/-!
# A017257: a(n) = 9*n + 8.

The programs for A017257, the canonical program `A017257.P3330609659631501478` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017257 has offset 0).

The definition of A017257 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n+8` (program `A017257.P3330609659631501478`, by `A017257.P3330609659631501478.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017257.P3330609659631501478

`9*n+8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017257

/-- `9*n+8` -/
def P3330609659631501478.Spec : Prop :=
  ∀ n, (P3330609659631501478.a n : ℤ) = A017257 n

theorem P3330609659631501478.correct : P3330609659631501478.Spec := by
  intro n
  simp only [A017257]

end A017257

/-!
# A017258: a(n) = (9*n + 8)^2.

The programs for A017258, the canonical program `A017258.P14241176196969724133` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017258 has offset 0).

The definition of A017258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+8)²` (program `A017258.P14241176196969724133`, by `A017258.P14241176196969724133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017258.P14241176196969724133

`(9*n+8)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017258

/-- `(9*n+8)²` -/
def P14241176196969724133.Spec : Prop :=
  ∀ n, (P14241176196969724133.a n : ℤ) = A017258 n

theorem P14241176196969724133.correct : P14241176196969724133.Spec := by
  intro n
  simp only [A017258]

end A017258

/-! ## A017258.P16343490576961580008

`record[(gcd(9, n)+n-1)²]`
-/

namespace A017258.P16343490576961580008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 9 n : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017258.P16343490576961580008

namespace A017258

/-- `record[(gcd(9, n)+n-1)²]` -/
def P16343490576961580008.Spec : Prop :=
  ∀ n, P16343490576961580008.a n = A017258 n

end A017258

/-! ## A017258.P544203721700956967

`record[((n+3)/dr(n+1)+5)²]`
-/

namespace A017258.P544203721700956967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) + 5) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017258.P544203721700956967

namespace A017258

/-- `record[((n+3)/dr(n+1)+5)²]` -/
def P544203721700956967.Spec : Prop :=
  ∀ n, P544203721700956967.a n = (A017258 n : ℚ)

end A017258

/-! ## A017258.P16934438484236851575

`sqrt(A017260(n))`
-/

namespace A017258.P16934438484236851575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017260 n : ℝ)

end

end A017258.P16934438484236851575

namespace A017258

/-- `sqrt(A017260(n))` -/
def P16934438484236851575.Spec : Prop :=
  ∀ n, P16934438484236851575.a n = (A017258 n : ℝ)

end A017258

/-! ## A017258.P14908890608310835366

`A017257(n)^2`
-/

namespace A017258.P14908890608310835366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n ^ 2

end

end A017258.P14908890608310835366

namespace A017258

/-- `A017257(n)^2` -/
def P14908890608310835366.Spec : Prop :=
  ∀ n, P14908890608310835366.a n = A017258 n

theorem P14908890608310835366.correct : P14908890608310835366.Spec := by
  intro n
  simp only [A017258, Nat.add_sub_cancel, A017258.P14908890608310835366.a, A017258.P14241176196969724133.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017258

/-! ## A017258.P13877936720770149298

`sqrt(sqrt(A017264(n)))`
-/

namespace A017258.P13877936720770149298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017264 n : ℝ))

end

end A017258.P13877936720770149298

namespace A017258

/-- `sqrt(sqrt(A017264(n)))` -/
def P13877936720770149298.Spec : Prop :=
  ∀ n, P13877936720770149298.a n = (A017258 n : ℝ)

end A017258

/-! ## A017258.P2049457394007948231

`A017262(n)^(1/3)`
-/

namespace A017258.P2049457394007948231
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017262 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017258.P2049457394007948231

namespace A017258

/-- `A017262(n)^(1/3)` -/
def P2049457394007948231.Spec : Prop :=
  ∀ n, P2049457394007948231.a n = (A017258 n : ℝ)

end A017258

/-! ## A017258.P13483647436949410396

`A017259(n)^(2/3)`
-/

namespace A017258.P13483647436949410396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017259 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017258.P13483647436949410396

namespace A017258

/-- `A017259(n)^(2/3)` -/
def P13483647436949410396.Spec : Prop :=
  ∀ n, P13483647436949410396.a n = (A017258 n : ℝ)

end A017258

/-! ## A017258.P11136048808750744138

`A154516(n+1)²/(n+1)²`
-/

namespace A017258.P11136048808750744138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154516 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017258.P11136048808750744138

namespace A017258

/-- `A154516(n+1)²/(n+1)²` -/
def P11136048808750744138.Spec : Prop :=
  ∀ n, P11136048808750744138.a n = (A017258 n : ℚ)

theorem P11136048808750744138.correct : P11136048808750744138.Spec := by
  intro n
  simp only [A017258, Nat.add_sub_cancel, A017258.P11136048808750744138.a, A017258.P14241176196969724133.a, A154516, A154516.P16195019807221984260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017258

/-! ## A017258.P8936791774985484312

`A017259(n)/A017257(n)`
-/

namespace A017258.P8936791774985484312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017259 n : ℚ) / (A017257 n : ℚ)

end

end A017258.P8936791774985484312

namespace A017258

/-- `A017259(n)/A017257(n)` -/
def P8936791774985484312.Spec : Prop :=
  ∀ n, P8936791774985484312.a n = (A017258 n : ℚ)

end A017258

/-! ## A017258.P2735075186569518464

`A017261(n)/A017259(n)`
-/

namespace A017258.P2735075186569518464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017261 n : ℚ) / (A017259 n : ℚ)

end

end A017258.P2735075186569518464

namespace A017258

/-- `A017261(n)/A017259(n)` -/
def P2735075186569518464.Spec : Prop :=
  ∀ n, P2735075186569518464.a n = (A017258 n : ℚ)

end A017258

/-! ## A017258.P1129447088284961063

`A017262(n)/A017260(n)`
-/

namespace A017258.P1129447088284961063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017262 n : ℚ) / (A017260 n : ℚ)

end

end A017258.P1129447088284961063

namespace A017258

/-- `A017262(n)/A017260(n)` -/
def P1129447088284961063.Spec : Prop :=
  ∀ n, P1129447088284961063.a n = (A017258 n : ℚ)

end A017258

/-! ## A017258.P2796310619374010649

`A157507(n+1)-A125169(n)`
-/

namespace A017258.P2796310619374010649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157507 (n + 1) - A125169 n

end

end A017258.P2796310619374010649

namespace A017258

/-- `A157507(n+1)-A125169(n)` -/
def P2796310619374010649.Spec : Prop :=
  ∀ n, P2796310619374010649.a n = A017258 n

theorem P2796310619374010649.correct : P2796310619374010649.Spec := by
  intro n
  simp only [A017258, Nat.add_sub_cancel, A017258.P2796310619374010649.a, A017258.P14241176196969724133.a, A125169, A125169.P15085034264192254056.a, A157507, A157507.P2051790061440857362.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017258

/-! ## A017258.P6878089904936147845

`A017260(n)²/A017259(n)²`
-/

namespace A017258.P6878089904936147845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017260 n ^ 2 : ℚ) / (A017259 n ^ 2 : ℚ)

end

end A017258.P6878089904936147845

namespace A017258

/-- `A017260(n)²/A017259(n)²` -/
def P6878089904936147845.Spec : Prop :=
  ∀ n, P6878089904936147845.a n = (A017258 n : ℚ)

end A017258

/-! ## A017258.P5100301425650345661

`A017257(n)²²²/A017262(n)`
-/

namespace A017258.P5100301425650345661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017257 n ^ 2) ^ 2) ^ 2 : ℚ) / (A017262 n : ℚ)

end

end A017258.P5100301425650345661

namespace A017258

/-- `A017257(n)²²²/A017262(n)` -/
def P5100301425650345661.Spec : Prop :=
  ∀ n, P5100301425650345661.a n = (A017258 n : ℚ)

end A017258

/-! ## A017258.P14219398876287670408

`A157953(n+1)-A361692(n+1)`
-/

namespace A017258.P14219398876287670408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157953 (n + 1) - A361692 (n + 1)

end

end A017258.P14219398876287670408

namespace A017258

/-- `A157953(n+1)-A361692(n+1)` -/
def P14219398876287670408.Spec : Prop :=
  ∀ n, P14219398876287670408.a n = A017258 n

theorem P14219398876287670408.correct : P14219398876287670408.Spec := by
  intro n
  simp only [A017258, Nat.add_sub_cancel, A017258.P14219398876287670408.a, A017258.P14241176196969724133.a, A157953, A157953.P53253869954381866.a, A361692, A361692.P1603049286899998838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017258

/-! ## A017258.P5637084941902101729

`(A361692(n+1)-A008590(n+1))*A017257(n)`
-/

namespace A017258.P5637084941902101729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A361692 (n + 1) - A008590 (n + 1)) * A017257 n

end

end A017258.P5637084941902101729

namespace A017258

/-- `(A361692(n+1)-A008590(n+1))*A017257(n)` -/
def P5637084941902101729.Spec : Prop :=
  ∀ n, P5637084941902101729.a n = A017258 n

theorem P5637084941902101729.correct : P5637084941902101729.Spec := by
  intro n
  simp only [A017258, Nat.add_sub_cancel, A017258.P5637084941902101729.a, A017258.P14241176196969724133.a, A008590, A008590.P15621076316638553644.a, A017257, A017257.P3330609659631501478.a, A361692, A361692.P1603049286899998838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017258

/-! ## A017258.P15283530924357398301

`A061099(2*(n+1))`
-/

namespace A017258.P15283530924357398301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061099 (2 * (n + 1))

end

end A017258.P15283530924357398301

namespace A017258

/-- `A061099(2*(n+1))` -/
def P15283530924357398301.Spec : Prop :=
  ∀ n, P15283530924357398301.a n = A017258 n

end A017258

/-! ## A017258.P14197669612585416097

`A017246(2*n+1)/4`
-/

namespace A017258.P14197669612585416097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017246 (2 * n + 1) : ℚ) / 4

end

end A017258.P14197669612585416097

namespace A017258

/-- `A017246(2*n+1)/4` -/
def P14197669612585416097.Spec : Prop :=
  ∀ n, P14197669612585416097.a n = (A017258 n : ℚ)

theorem P14197669612585416097.correct : P14197669612585416097.Spec := by
  intro n
  simp only [A017258, Nat.add_sub_cancel, A017258.P14197669612585416097.a, A017258.P14241176196969724133.a, A017246, A017246.P9348811516791326222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017258

/-! ## A017258.P16952677796903306110

`A056020(2*(n+1))*A056020(2*(n+1))`
-/

namespace A017258.P16952677796903306110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (2 * (n + 1)) * A056020 (2 * (n + 1))

end

end A017258.P16952677796903306110

namespace A017258

/-- `A056020(2*(n+1))*A056020(2*(n+1))` -/
def P16952677796903306110.Spec : Prop :=
  ∀ n, P16952677796903306110.a n = A017258 n

end A017258

/-!
# A017259: a(n) = (9*n + 8)^3.

The programs for A017259, the canonical program `A017259.P3274228343626659253` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017259 has offset 0).

The definition of A017259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+8)^3` (program `A017259.P3274228343626659253`, by `A017259.P3274228343626659253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017259.P3274228343626659253

`(9*n+8)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017259

/-- `(9*n+8)^3` -/
def P3274228343626659253.Spec : Prop :=
  ∀ n, (P3274228343626659253.a n : ℤ) = A017259 n

theorem P3274228343626659253.correct : P3274228343626659253.Spec := by
  intro n
  simp only [A017259]

end A017259

/-! ## A017259.P3618474717459546135

`sqrt(A017262(n))`
-/

namespace A017259.P3618474717459546135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017262 n : ℝ)

end

end A017259.P3618474717459546135

namespace A017259

/-- `sqrt(A017262(n))` -/
def P3618474717459546135.Spec : Prop :=
  ∀ n, P3618474717459546135.a n = (A017259 n : ℝ)

end A017259

/-! ## A017259.P18424974113529954236

`sqrt(A017258(n)^3)`
-/

namespace A017259.P18424974113529954236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017258 n ^ 3 : ℝ)

end

end A017259.P18424974113529954236

namespace A017259

/-- `sqrt(A017258(n)^3)` -/
def P18424974113529954236.Spec : Prop :=
  ∀ n, P18424974113529954236.a n = (A017259 n : ℝ)

end A017259

/-! ## A017259.P12600711125525611138

`A017257(n)*A017258(n)`
-/

namespace A017259.P12600711125525611138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n * A017258 n

end

end A017259.P12600711125525611138

namespace A017259

/-- `A017257(n)*A017258(n)` -/
def P12600711125525611138.Spec : Prop :=
  ∀ n, P12600711125525611138.a n = A017259 n

theorem P12600711125525611138.correct : P12600711125525611138.Spec := by
  intro n
  simp only [A017259, Nat.add_sub_cancel, A017259.P12600711125525611138.a, A017259.P3274228343626659253.a, A017257, A017257.P3330609659631501478.a, A017258, A017258.P14241176196969724133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017259

/-! ## A017259.P4615500694959536047

`A017260(n)/A017257(n)`
-/

namespace A017259.P4615500694959536047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017260 n : ℚ) / (A017257 n : ℚ)

end

end A017259.P4615500694959536047

namespace A017259

/-- `A017260(n)/A017257(n)` -/
def P4615500694959536047.Spec : Prop :=
  ∀ n, P4615500694959536047.a n = (A017259 n : ℚ)

end A017259

/-! ## A017259.P7154080199658603063

`A017261(n)/A017258(n)`
-/

namespace A017259.P7154080199658603063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017261 n : ℚ) / (A017258 n : ℚ)

end

end A017259.P7154080199658603063

namespace A017259

/-- `A017261(n)/A017258(n)` -/
def P7154080199658603063.Spec : Prop :=
  ∀ n, P7154080199658603063.a n = (A017259 n : ℚ)

end A017259

/-! ## A017259.P14906557906097327826

`A017261(n)/A017257(n)²`
-/

namespace A017259.P14906557906097327826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017261 n : ℚ) / (A017257 n ^ 2 : ℚ)

end

end A017259.P14906557906097327826

namespace A017259

/-- `A017261(n)/A017257(n)²` -/
def P14906557906097327826.Spec : Prop :=
  ∀ n, P14906557906097327826.a n = (A017259 n : ℚ)

end A017259

/-! ## A017259.P17346848399785139002

`A017263(n)/A017257(n)²²`
-/

namespace A017259.P17346848399785139002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017263 n : ℚ) / ((A017257 n ^ 2) ^ 2 : ℚ)

end

end A017259.P17346848399785139002

namespace A017259

/-- `A017263(n)/A017257(n)²²` -/
def P17346848399785139002.Spec : Prop :=
  ∀ n, P17346848399785139002.a n = (A017259 n : ℚ)

end A017259

/-! ## A017259.P10476666591297001086

`Δ[A062728(n)]²*Δ[A062728(n)]`
-/

namespace A017259.P10476666591297001086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017259.P10476666591297001086

namespace A017259

/-- `Δ[A062728(n)]²*Δ[A062728(n)]` -/
def P10476666591297001086.Spec : Prop :=
  ∀ n, P10476666591297001086.a n = A017259 n

end A017259

/-! ## A017259.P11776711896178110192

`Δ[A081267(n)]²*Δ[A081267(n)]`
-/

namespace A017259.P11776711896178110192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017259.P11776711896178110192

namespace A017259

/-- `Δ[A081267(n)]²*Δ[A081267(n)]` -/
def P11776711896178110192.Spec : Prop :=
  ∀ n, P11776711896178110192.a n = A017259 n

end A017259

/-! ## A017259.P14758796455595718906

`A017247(2*n+1)/8`
-/

namespace A017259.P14758796455595718906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017247 (2 * n + 1) : ℚ) / 8

end

end A017259.P14758796455595718906

namespace A017259

/-- `A017247(2*n+1)/8` -/
def P14758796455595718906.Spec : Prop :=
  ∀ n, P14758796455595718906.a n = (A017259 n : ℚ)

theorem P14758796455595718906.correct : P14758796455595718906.Spec := by
  intro n
  simp only [A017259, Nat.add_sub_cancel, A017259.P14758796455595718906.a, A017259.P3274228343626659253.a, A017247, A017247.P8046235626779742222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017259

/-! ## A017259.P7589486220630102145

`A056020(2*(n+1))*A061099(2*(n+1))`
-/

namespace A017259.P7589486220630102145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (2 * (n + 1)) * A061099 (2 * (n + 1))

end

end A017259.P7589486220630102145

namespace A017259

/-- `A056020(2*(n+1))*A061099(2*(n+1))` -/
def P7589486220630102145.Spec : Prop :=
  ∀ n, P7589486220630102145.a n = A017259 n

end A017259

/-! ## A017259.P1119402491087451388

`A168409(2*n+1)²*A168409(2*n+1)`
-/

namespace A017259.P1119402491087451388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168409 (2 * n + 1) ^ 2 * A168409 (2 * n + 1)

end

end A017259.P1119402491087451388

namespace A017259

/-- `A168409(2*n+1)²*A168409(2*n+1)` -/
def P1119402491087451388.Spec : Prop :=
  ∀ n, P1119402491087451388.a n = A017259 n

end A017259

/-! ## A017259.P12857459646728363071

`A253195(2*(n+1))²*A253195(2*(n+1))`
-/

namespace A017259.P12857459646728363071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (2 * (n + 1)) ^ 2 * A253195 (2 * (n + 1))

end

end A017259.P12857459646728363071

namespace A017259

/-- `A253195(2*(n+1))²*A253195(2*(n+1))` -/
def P12857459646728363071.Spec : Prop :=
  ∀ n, P12857459646728363071.a n = A017259 n

end A017259

/-! ## A017259.P12135494642711378475

`A274406(2*(n+1))²*A274406(2*(n+1))`
-/

namespace A017259.P12135494642711378475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (2 * (n + 1)) ^ 2 * A274406 (2 * (n + 1))

end

end A017259.P12135494642711378475

namespace A017259

/-- `A274406(2*(n+1))²*A274406(2*(n+1))` -/
def P12135494642711378475.Spec : Prop :=
  ∀ n, P12135494642711378475.a n = A017259 n

end A017259

/-! ## A017259.P5982383783810839188

`(A016777(3*n)+7)*(A016777(3*n)+7)²`
-/

namespace A017259.P5982383783810839188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 (3 * n) + 7) * (A016777 (3 * n) + 7) ^ 2

end

end A017259.P5982383783810839188

namespace A017259

/-- `(A016777(3*n)+7)*(A016777(3*n)+7)²` -/
def P5982383783810839188.Spec : Prop :=
  ∀ n, P5982383783810839188.a n = A017259 n

theorem P5982383783810839188.correct : P5982383783810839188.Spec := by
  intro n
  simp only [A017259, Nat.add_sub_cancel, A017259.P5982383783810839188.a, A017259.P3274228343626659253.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017259

/-! ## A017259.P285029391174265154

`A016791(3*n+2)`
-/

namespace A017259.P285029391174265154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 (3 * n + 2)

end

end A017259.P285029391174265154

namespace A017259

/-- `A016791(3*n+2)` -/
def P285029391174265154.Spec : Prop :=
  ∀ n, P285029391174265154.a n = A017259 n

theorem P285029391174265154.correct : P285029391174265154.Spec := by
  intro n
  simp only [A017259, Nat.add_sub_cancel, A017259.P285029391174265154.a, A017259.P3274228343626659253.a, A016791, A016791.P13208806347124039064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017259

/-! ## A017259.P4586638962050302293

`A016797(A016789(n))/A016791(A016789(n))²`
-/

namespace A017259.P4586638962050302293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016797 (A016789 n).toNat : ℚ) / (A016791 (A016789 n).toNat ^ 2 : ℚ)

end

end A017259.P4586638962050302293

namespace A017259

/-- `A016797(A016789(n))/A016791(A016789(n))²` -/
def P4586638962050302293.Spec : Prop :=
  ∀ n, P4586638962050302293.a n = (A017259 n : ℚ)

end A017259

/-! ## A017259.P5238200573585696045

`A118719(6*n+7)`
-/

namespace A017259.P5238200573585696045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118719 (6 * n + 7)

end

end A017259.P5238200573585696045

namespace A017259

/-- `A118719(6*n+7)` -/
def P5238200573585696045.Spec : Prop :=
  ∀ n, P5238200573585696045.a n = A017259 n

end A017259

/-!
# A017260: a(n) = (9*n + 8)^4.

The programs for A017260, the canonical program `A017260.P13387487026085145838` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017260 has offset 0).

The definition of A017260 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+8)^4` (program `A017260.P13387487026085145838`, by `A017260.P13387487026085145838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017260.P13387487026085145838

`(9*n+8)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017260

/-- `(9*n+8)^4` -/
def P13387487026085145838.Spec : Prop :=
  ∀ n, (P13387487026085145838.a n : ℤ) = A017260 n

theorem P13387487026085145838.correct : P13387487026085145838.Spec := by
  intro n
  simp only [A017260]

end A017260

/-! ## A017260.P9531940598202290803

`(Δ[C(3*n, 2)]+5)²²`
-/

namespace A017260.P9531940598202290803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 5) ^ 2) ^ 2

end

end A017260.P9531940598202290803

namespace A017260

/-- `(Δ[C(3*n, 2)]+5)²²` -/
def P9531940598202290803.Spec : Prop :=
  ∀ n, P9531940598202290803.a n = A017260 n

theorem P9531940598202290803.correct : P9531940598202290803.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P9531940598202290803.f1, A017260.P9531940598202290803.a, A017260.P13387487026085145838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P14209863478776185855

`(lcm(2, Δ[(2*n+1)²])+n)²²`
-/

namespace A017260.P14209863478776185855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + n) ^ 2) ^ 2

end

end A017260.P14209863478776185855

namespace A017260

/-- `(lcm(2, Δ[(2*n+1)²])+n)²²` -/
def P14209863478776185855.Spec : Prop :=
  ∀ n, (P14209863478776185855.a n : ℤ) = A017260 n

end A017260

/-! ## A017260.P10976904088332795066

`(Δ[(2*n+1)²]+gcd(n, 2*n))²²`
-/

namespace A017260.P10976904088332795066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.gcd n (2 * n) : ℤ)) ^ 2) ^ 2

end

end A017260.P10976904088332795066

namespace A017260

/-- `(Δ[(2*n+1)²]+gcd(n, 2*n))²²` -/
def P10976904088332795066.Spec : Prop :=
  ∀ n, P10976904088332795066.a n = A017260 n

theorem P10976904088332795066.correct : P10976904088332795066.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P10976904088332795066.f1, A017260.P10976904088332795066.a, A017260.P13387487026085145838.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017260

/-! ## A017260.P3302956243375420145

`A017258(n)²`
-/

namespace A017260.P3302956243375420145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017258 n ^ 2

end

end A017260.P3302956243375420145

namespace A017260

/-- `A017258(n)²` -/
def P3302956243375420145.Spec : Prop :=
  ∀ n, P3302956243375420145.a n = A017260 n

theorem P3302956243375420145.correct : P3302956243375420145.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P3302956243375420145.a, A017260.P13387487026085145838.a, A017258, A017258.P14241176196969724133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P288899233754911753

`sqrt(A017264(n))`
-/

namespace A017260.P288899233754911753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017264 n : ℝ)

end

end A017260.P288899233754911753

namespace A017260

/-- `sqrt(A017264(n))` -/
def P288899233754911753.Spec : Prop :=
  ∀ n, P288899233754911753.a n = (A017260 n : ℝ)

end A017260

/-! ## A017260.P862640595526122722

`A017257(n)²²`
-/

namespace A017260.P862640595526122722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017257 n ^ 2) ^ 2

end

end A017260.P862640595526122722

namespace A017260

/-- `A017257(n)²²` -/
def P862640595526122722.Spec : Prop :=
  ∀ n, P862640595526122722.a n = A017260 n

theorem P862640595526122722.correct : P862640595526122722.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P862640595526122722.a, A017260.P13387487026085145838.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P14097028197755253498

`(A017245(n)+1)²²`
-/

namespace A017260.P14097028197755253498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017245 n + 1) ^ 2) ^ 2

end

end A017260.P14097028197755253498

namespace A017260

/-- `(A017245(n)+1)²²` -/
def P14097028197755253498.Spec : Prop :=
  ∀ n, P14097028197755253498.a n = A017260 n

theorem P14097028197755253498.correct : P14097028197755253498.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P14097028197755253498.a, A017260.P13387487026085145838.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P5856386287003647878

`(A017233(n)+2)²²`
-/

namespace A017260.P5856386287003647878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017233 n + 2) ^ 2) ^ 2

end

end A017260.P5856386287003647878

namespace A017260

/-- `(A017233(n)+2)²²` -/
def P5856386287003647878.Spec : Prop :=
  ∀ n, P5856386287003647878.a n = A017260 n

theorem P5856386287003647878.correct : P5856386287003647878.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P5856386287003647878.a, A017260.P13387487026085145838.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P3534630845047045232

`(A017221(n)+3)²²`
-/

namespace A017260.P3534630845047045232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017221 n + 3) ^ 2) ^ 2

end

end A017260.P3534630845047045232

namespace A017260

/-- `(A017221(n)+3)²²` -/
def P3534630845047045232.Spec : Prop :=
  ∀ n, P3534630845047045232.a n = A017260 n

theorem P3534630845047045232.correct : P3534630845047045232.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P3534630845047045232.a, A017260.P13387487026085145838.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P8173298965914495476

`(A350522(n)/2)²²`
-/

namespace A017260.P8173298965914495476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A350522 n : ℚ) / 2) ^ 2) ^ 2

end

end A017260.P8173298965914495476

namespace A017260

/-- `(A350522(n)/2)²²` -/
def P8173298965914495476.Spec : Prop :=
  ∀ n, P8173298965914495476.a n = (A017260 n : ℚ)

theorem P8173298965914495476.correct : P8173298965914495476.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P8173298965914495476.a, A017260.P13387487026085145838.a, A350522, A350522.P13009567044850805638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P14329999970886095835

`(n-A017365(n))²²`
-/

namespace A017260.P14329999970886095835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017365 n) ^ 2) ^ 2

end

end A017260.P14329999970886095835

namespace A017260

/-- `(n-A017365(n))²²` -/
def P14329999970886095835.Spec : Prop :=
  ∀ n, P14329999970886095835.a n = A017260 n

theorem P14329999970886095835.correct : P14329999970886095835.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P14329999970886095835.a, A017260.P13387487026085145838.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P1906301882355790610

`(sqrt(A017246(n))+1)²²`
-/

namespace A017260.P1906301882355790610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017246 n : ℝ) + 1) ^ 2) ^ 2

end

end A017260.P1906301882355790610

namespace A017260

/-- `(sqrt(A017246(n))+1)²²` -/
def P1906301882355790610.Spec : Prop :=
  ∀ n, P1906301882355790610.a n = (A017260 n : ℝ)

end A017260

/-! ## A017260.P12379765140641698411

`(sqrt(A017234(n))+2)²²`
-/

namespace A017260.P12379765140641698411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017234 n : ℝ) + 2) ^ 2) ^ 2

end

end A017260.P12379765140641698411

namespace A017260

/-- `(sqrt(A017234(n))+2)²²` -/
def P12379765140641698411.Spec : Prop :=
  ∀ n, P12379765140641698411.a n = (A017260 n : ℝ)

end A017260

/-! ## A017260.P16138689878381156844

`(Δ[A062725(n)]+1)²²`
-/

namespace A017260.P16138689878381156844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + 1) ^ 2) ^ 2

end

end A017260.P16138689878381156844

namespace A017260

/-- `(Δ[A062725(n)]+1)²²` -/
def P16138689878381156844.Spec : Prop :=
  ∀ n, P16138689878381156844.a n = A017260 n

end A017260

/-! ## A017260.P32332329793054806

`(Δ[A081266(n)]+2)²²`
-/

namespace A017260.P32332329793054806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + 2) ^ 2) ^ 2

end

end A017260.P32332329793054806

namespace A017260

/-- `(Δ[A081266(n)]+2)²²` -/
def P32332329793054806.Spec : Prop :=
  ∀ n, P32332329793054806.a n = A017260 n

end A017260

/-! ## A017260.P14505388621277860043

`(n-sqrt(A017366(n)))²²`
-/

namespace A017260.P14505388621277860043
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017366 n : ℝ)) ^ 2) ^ 2

end

end A017260.P14505388621277860043

namespace A017260

/-- `(n-sqrt(A017366(n)))²²` -/
def P14505388621277860043.Spec : Prop :=
  ∀ n, P14505388621277860043.a n = (A017260 n : ℝ)

end A017260

/-! ## A017260.P4523325601738324422

`(2-A017173(n+1))²²`
-/

namespace A017260.P4523325601738324422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017173 (n + 1)) ^ 2) ^ 2

end

end A017260.P4523325601738324422

namespace A017260

/-- `(2-A017173(n+1))²²` -/
def P4523325601738324422.Spec : Prop :=
  ∀ n, P4523325601738324422.a n = A017260 n

theorem P4523325601738324422.correct : P4523325601738324422.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P4523325601738324422.a, A017260.P13387487026085145838.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P12426435603467112341

`(A004771(n)+n+1)²²`
-/

namespace A017260.P12426435603467112341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004771 n + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017260.P12426435603467112341

namespace A017260

/-- `(A004771(n)+n+1)²²` -/
def P12426435603467112341.Spec : Prop :=
  ∀ n, P12426435603467112341.a n = A017260 n

theorem P12426435603467112341.correct : P12426435603467112341.Spec := by
  intro n
  simp only [A017260, Nat.add_sub_cancel, A017260.P12426435603467112341.a, A017260.P13387487026085145838.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017260

/-! ## A017260.P1403923918077109222

`(A022144(n+1)+n)²²`
-/

namespace A017260.P1403923918077109222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A022144 (n + 1) + (n : ℤ)) ^ 2) ^ 2

end

end A017260.P1403923918077109222

namespace A017260

/-- `(A022144(n+1)+n)²²` -/
def P1403923918077109222.Spec : Prop :=
  ∀ n, P1403923918077109222.a n = A017260 n

end A017260

/-!
# A017261: a(n) = (9*n + 8)^5.

The programs for A017261, the canonical program `A017261.P12236934521073845848` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017261 has offset 0).

The definition of A017261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+8)^5` (program `A017261.P12236934521073845848`, by `A017261.P12236934521073845848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017261.P12236934521073845848

`(9*n+8)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017261

/-- `(9*n+8)^5` -/
def P12236934521073845848.Spec : Prop :=
  ∀ n, (P12236934521073845848.a n : ℤ) = A017261 n

theorem P12236934521073845848.correct : P12236934521073845848.Spec := by
  intro n
  simp only [A017261]

end A017261

/-! ## A017261.P8464514960317073978

`sqrt(A017258(n)^5)`
-/

namespace A017261.P8464514960317073978
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017258 n ^ 5 : ℝ)

end

end A017261.P8464514960317073978

namespace A017261

/-- `sqrt(A017258(n)^5)` -/
def P8464514960317073978.Spec : Prop :=
  ∀ n, P8464514960317073978.a n = (A017261 n : ℝ)

end A017261

/-! ## A017261.P14216105918304470926

`(9*n+8)*A017260(n)`
-/

namespace A017261.P14216105918304470926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 8 : ℤ) * A017260 n

end

end A017261.P14216105918304470926

namespace A017261

/-- `(9*n+8)*A017260(n)` -/
def P14216105918304470926.Spec : Prop :=
  ∀ n, P14216105918304470926.a n = A017261 n

theorem P14216105918304470926.correct : P14216105918304470926.Spec := by
  intro n
  simp only [A017261, Nat.add_sub_cancel, A017261.P14216105918304470926.a, A017261.P12236934521073845848.a, A017260, A017260.P13387487026085145838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017261

/-! ## A017261.P6462059604760525374

`A017258(n)*A017259(n)`
-/

namespace A017261.P6462059604760525374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017258 n * A017259 n

end

end A017261.P6462059604760525374

namespace A017261

/-- `A017258(n)*A017259(n)` -/
def P6462059604760525374.Spec : Prop :=
  ∀ n, P6462059604760525374.a n = A017261 n

theorem P6462059604760525374.correct : P6462059604760525374.Spec := by
  intro n
  simp only [A017261, Nat.add_sub_cancel, A017261.P6462059604760525374.a, A017261.P12236934521073845848.a, A017258, A017258.P14241176196969724133.a, A017259, A017259.P3274228343626659253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017261

/-! ## A017261.P8807941285485772546

`A017262(n)/A017257(n)`
-/

namespace A017261.P8807941285485772546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017262 n : ℚ) / (A017257 n : ℚ)

end

end A017261.P8807941285485772546

namespace A017261

/-- `A017262(n)/A017257(n)` -/
def P8807941285485772546.Spec : Prop :=
  ∀ n, P8807941285485772546.a n = (A017261 n : ℚ)

end A017261

/-! ## A017261.P5189540454778595745

`A017257(n)²*A017259(n)`
-/

namespace A017261.P5189540454778595745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n ^ 2 * A017259 n

end

end A017261.P5189540454778595745

namespace A017261

/-- `A017257(n)²*A017259(n)` -/
def P5189540454778595745.Spec : Prop :=
  ∀ n, P5189540454778595745.a n = A017261 n

theorem P5189540454778595745.correct : P5189540454778595745.Spec := by
  intro n
  simp only [A017261, Nat.add_sub_cancel, A017261.P5189540454778595745.a, A017261.P12236934521073845848.a, A017257, A017257.P3330609659631501478.a, A017259, A017259.P3274228343626659253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017261

/-! ## A017261.P9632041991922006151

`A017258(n)²*A017257(n)`
-/

namespace A017261.P9632041991922006151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017258 n ^ 2 * A017257 n

end

end A017261.P9632041991922006151

namespace A017261

/-- `A017258(n)²*A017257(n)` -/
def P9632041991922006151.Spec : Prop :=
  ∀ n, P9632041991922006151.a n = A017261 n

theorem P9632041991922006151.correct : P9632041991922006151.Spec := by
  intro n
  simp only [A017261, Nat.add_sub_cancel, A017261.P9632041991922006151.a, A017261.P12236934521073845848.a, A017257, A017257.P3330609659631501478.a, A017258, A017258.P14241176196969724133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017261

/-! ## A017261.P14584673484791164847

`A017260(n)²/A017259(n)`
-/

namespace A017261.P14584673484791164847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017260 n ^ 2 : ℚ) / (A017259 n : ℚ)

end

end A017261.P14584673484791164847

namespace A017261

/-- `A017260(n)²/A017259(n)` -/
def P14584673484791164847.Spec : Prop :=
  ∀ n, P14584673484791164847.a n = (A017261 n : ℚ)

end A017261

/-! ## A017261.P9681418452196104480

`A017263(n)/A017257(n)²`
-/

namespace A017261.P9681418452196104480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017263 n : ℚ) / (A017257 n ^ 2 : ℚ)

end

end A017261.P9681418452196104480

namespace A017261

/-- `A017263(n)/A017257(n)²` -/
def P9681418452196104480.Spec : Prop :=
  ∀ n, P9681418452196104480.a n = (A017261 n : ℚ)

end A017261

/-! ## A017261.P8580901474475018873

`A061099(2*(n+1))²*A056020(2*(n+1))`
-/

namespace A017261.P8580901474475018873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061099 (2 * (n + 1)) ^ 2 * A056020 (2 * (n + 1))

end

end A017261.P8580901474475018873

namespace A017261

/-- `A061099(2*(n+1))²*A056020(2*(n+1))` -/
def P8580901474475018873.Spec : Prop :=
  ∀ n, P8580901474475018873.a n = A017261 n

end A017261

/-! ## A017261.P13016028126789091889

`A168409(2*n+1)²²*A168409(2*n+1)`
-/

namespace A017261.P13016028126789091889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168409 (2 * n + 1) ^ 2) ^ 2 * A168409 (2 * n + 1)

end

end A017261.P13016028126789091889

namespace A017261

/-- `A168409(2*n+1)²²*A168409(2*n+1)` -/
def P13016028126789091889.Spec : Prop :=
  ∀ n, P13016028126789091889.a n = A017261 n

end A017261

/-! ## A017261.P14743012935489676164

`A253195(2*(n+1))²²*A253195(2*(n+1))`
-/

namespace A017261.P14743012935489676164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253195 (2 * (n + 1)) ^ 2) ^ 2 * A253195 (2 * (n + 1))

end

end A017261.P14743012935489676164

namespace A017261

/-- `A253195(2*(n+1))²²*A253195(2*(n+1))` -/
def P14743012935489676164.Spec : Prop :=
  ∀ n, P14743012935489676164.a n = A017261 n

end A017261

/-! ## A017261.P907993978440113610

`A274406(2*(n+1))²²*A274406(2*(n+1))`
-/

namespace A017261.P907993978440113610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274406 (2 * (n + 1)) ^ 2) ^ 2 * A274406 (2 * (n + 1))

end

end A017261.P907993978440113610

namespace A017261

/-- `A274406(2*(n+1))²²*A274406(2*(n+1))` -/
def P907993978440113610.Spec : Prop :=
  ∀ n, P907993978440113610.a n = A017261 n

end A017261

/-! ## A017261.P3074127242846366642

`A016793(3*n+2)`
-/

namespace A017261.P3074127242846366642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 (3 * n + 2)

end

end A017261.P3074127242846366642

namespace A017261

/-- `A016793(3*n+2)` -/
def P3074127242846366642.Spec : Prop :=
  ∀ n, P3074127242846366642.a n = A017261 n

theorem P3074127242846366642.correct : P3074127242846366642.Spec := by
  intro n
  simp only [A017261, Nat.add_sub_cancel, A017261.P3074127242846366642.a, A017261.P12236934521073845848.a, A016793, A016793.P7571111589597192072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017261

/-! ## A017261.P17407370230035851589

`-(5-A016777(A016777(n+1)))^5`
-/

namespace A017261.P17407370230035851589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((5 - A016777 (A016777 (n + 1)).toNat) ^ 5)

end

end A017261.P17407370230035851589

namespace A017261

/-- `-(5-A016777(A016777(n+1)))^5` -/
def P17407370230035851589.Spec : Prop :=
  ∀ n, P17407370230035851589.a n = A017261 n

end A017261

/-! ## A017261.P15808682652416588910

`A016789(A016789(n))²*A017259(n)`
-/

namespace A017261.P15808682652416588910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A016789 n).toNat ^ 2 * A017259 n

end

end A017261.P15808682652416588910

namespace A017261

/-- `A016789(A016789(n))²*A017259(n)` -/
def P15808682652416588910.Spec : Prop :=
  ∀ n, P15808682652416588910.a n = A017261 n

end A017261

/-! ## A017261.P10704420631177468106

`A016789(A016789(n))²²*A017257(n)`
-/

namespace A017261.P10704420631177468106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 (A016789 n).toNat ^ 2) ^ 2 * A017257 n

end

end A017261.P10704420631177468106

namespace A017261

/-- `A016789(A016789(n))²²*A017257(n)` -/
def P10704420631177468106.Spec : Prop :=
  ∀ n, P10704420631177468106.a n = A017261 n

end A017261

/-! ## A017261.P6518632293770144741

`record[A004497(n)^5]`
-/

namespace A017261.P6518632293770144741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017261.P6518632293770144741

namespace A017261

/-- `record[A004497(n)^5]` -/
def P6518632293770144741.Spec : Prop :=
  ∀ n, P6518632293770144741.a n = A017261 n

end A017261

/-! ## A017261.P4906525269649636258

`A000584(9*n+8)`
-/

namespace A017261.P4906525269649636258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (9 * n + 8)

end

end A017261.P4906525269649636258

namespace A017261

/-- `A000584(9*n+8)` -/
def P4906525269649636258.Spec : Prop :=
  ∀ n, P4906525269649636258.a n = A017261 n

end A017261

/-!
# A017262: a(n) = (9*n + 8)^6.

The programs for A017262, the canonical program `A017262.P17462359574555017866` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017262 has offset 0).

The definition of A017262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+8)^6` (program `A017262.P17462359574555017866`, by `A017262.P17462359574555017866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017262.P17462359574555017866

`(9*n+8)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017262

/-- `(9*n+8)^6` -/
def P17462359574555017866.Spec : Prop :=
  ∀ n, (P17462359574555017866.a n : ℤ) = A017262 n

theorem P17462359574555017866.correct : P17462359574555017866.Spec := by
  intro n
  simp only [A017262]

end A017262

/-! ## A017262.P317052351625677266

`A017259(n)²`
-/

namespace A017262.P317052351625677266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017259 n ^ 2

end

end A017262.P317052351625677266

namespace A017262

/-- `A017259(n)²` -/
def P317052351625677266.Spec : Prop :=
  ∀ n, P317052351625677266.a n = A017262 n

theorem P317052351625677266.correct : P317052351625677266.Spec := by
  intro n
  simp only [A017262, Nat.add_sub_cancel, A017262.P317052351625677266.a, A017262.P17462359574555017866.a, A017259, A017259.P3274228343626659253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017262

/-! ## A017262.P15172305986360327227

`sqrt(A017260(n)^3)`
-/

namespace A017262.P15172305986360327227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017260 n ^ 3 : ℝ)

end

end A017262.P15172305986360327227

namespace A017262

/-- `sqrt(A017260(n)^3)` -/
def P15172305986360327227.Spec : Prop :=
  ∀ n, P15172305986360327227.a n = (A017262 n : ℝ)

end A017262

/-! ## A017262.P1724652522196349318

`A017263(n)/(9*n+8)`
-/

namespace A017262.P1724652522196349318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017263 n : ℚ) / (9 * n + 8 : ℚ)

end

end A017262.P1724652522196349318

namespace A017262

/-- `A017263(n)/(9*n+8)` -/
def P1724652522196349318.Spec : Prop :=
  ∀ n, P1724652522196349318.a n = (A017262 n : ℚ)

end A017262

/-! ## A017262.P11725448111834406612

`((2*A016897(n)-n)^3)²`
-/

namespace A017262.P11725448111834406612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016897 n - (n : ℤ)) ^ 3) ^ 2

end

end A017262.P11725448111834406612

namespace A017262

/-- `((2*A016897(n)-n)^3)²` -/
def P11725448111834406612.Spec : Prop :=
  ∀ n, P11725448111834406612.a n = A017262 n

theorem P11725448111834406612.correct : P11725448111834406612.Spec := by
  intro n
  simp only [A017262, Nat.add_sub_cancel, A017262.P11725448111834406612.a, A017262.P17462359574555017866.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017262

/-! ## A017262.P16439532086194123024

`A017257(n)*A017261(n)`
-/

namespace A017262.P16439532086194123024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n * A017261 n

end

end A017262.P16439532086194123024

namespace A017262

/-- `A017257(n)*A017261(n)` -/
def P16439532086194123024.Spec : Prop :=
  ∀ n, P16439532086194123024.a n = A017262 n

theorem P16439532086194123024.correct : P16439532086194123024.Spec := by
  intro n
  simp only [A017262, Nat.add_sub_cancel, A017262.P16439532086194123024.a, A017262.P17462359574555017866.a, A017257, A017257.P3330609659631501478.a, A017261, A017261.P12236934521073845848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017262

/-! ## A017262.P11775779338577661832

`A017258(n)*A017260(n)`
-/

namespace A017262.P11775779338577661832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017258 n * A017260 n

end

end A017262.P11775779338577661832

namespace A017262

/-- `A017258(n)*A017260(n)` -/
def P11775779338577661832.Spec : Prop :=
  ∀ n, P11775779338577661832.a n = A017262 n

theorem P11775779338577661832.correct : P11775779338577661832.Spec := by
  intro n
  simp only [A017262, Nat.add_sub_cancel, A017262.P11775779338577661832.a, A017262.P17462359574555017866.a, A017258, A017258.P14241176196969724133.a, A017260, A017260.P13387487026085145838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017262

/-! ## A017262.P6836435255529556613

`(A017257(n)*A017258(n))²`
-/

namespace A017262.P6836435255529556613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017257 n * A017258 n) ^ 2

end

end A017262.P6836435255529556613

namespace A017262

/-- `(A017257(n)*A017258(n))²` -/
def P6836435255529556613.Spec : Prop :=
  ∀ n, P6836435255529556613.a n = A017262 n

theorem P6836435255529556613.correct : P6836435255529556613.Spec := by
  intro n
  simp only [A017262, Nat.add_sub_cancel, A017262.P6836435255529556613.a, A017262.P17462359574555017866.a, A017257, A017257.P3330609659631501478.a, A017258, A017258.P14241176196969724133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017262

/-! ## A017262.P16261359080233164608

`A017257(n)²*A017260(n)`
-/

namespace A017262.P16261359080233164608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n ^ 2 * A017260 n

end

end A017262.P16261359080233164608

namespace A017262

/-- `A017257(n)²*A017260(n)` -/
def P16261359080233164608.Spec : Prop :=
  ∀ n, P16261359080233164608.a n = A017262 n

theorem P16261359080233164608.correct : P16261359080233164608.Spec := by
  intro n
  simp only [A017262, Nat.add_sub_cancel, A017262.P16261359080233164608.a, A017262.P17462359574555017866.a, A017257, A017257.P3330609659631501478.a, A017260, A017260.P13387487026085145838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017262

/-! ## A017262.P7251900296630177876

`(A017261(n)/A017258(n))²`
-/

namespace A017262.P7251900296630177876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017261 n : ℚ) / (A017258 n : ℚ)) ^ 2

end

end A017262.P7251900296630177876

namespace A017262

/-- `(A017261(n)/A017258(n))²` -/
def P7251900296630177876.Spec : Prop :=
  ∀ n, P7251900296630177876.a n = (A017262 n : ℚ)

end A017262

/-! ## A017262.P17510492309655230588

`sqrt(sqrt(A017264(n))*A017264(n))`
-/

namespace A017262.P17510492309655230588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017264 n : ℝ) * (A017264 n : ℝ))

end

end A017262.P17510492309655230588

namespace A017262

/-- `sqrt(sqrt(A017264(n))*A017264(n))` -/
def P17510492309655230588.Spec : Prop :=
  ∀ n, P17510492309655230588.a n = (A017262 n : ℝ)

end A017262

/-! ## A017262.P7653492301848602532

`(Δ[A062728(n)]^3)²`
-/

namespace A017262.P7653492301848602532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017262.P7653492301848602532

namespace A017262

/-- `(Δ[A062728(n)]^3)²` -/
def P7653492301848602532.Spec : Prop :=
  ∀ n, P7653492301848602532.a n = A017262 n

end A017262

/-! ## A017262.P4376335285844570758

`(Δ[A081267(n)]^3)²`
-/

namespace A017262.P4376335285844570758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017262.P4376335285844570758

namespace A017262

/-- `(Δ[A081267(n)]^3)²` -/
def P4376335285844570758.Spec : Prop :=
  ∀ n, P4376335285844570758.a n = A017262 n

end A017262

/-! ## A017262.P12088332121245025453

`(A056020(2*(n+1))*A061099(2*(n+1)))²`
-/

namespace A017262.P12088332121245025453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056020 (2 * (n + 1)) * A061099 (2 * (n + 1))) ^ 2

end

end A017262.P12088332121245025453

namespace A017262

/-- `(A056020(2*(n+1))*A061099(2*(n+1)))²` -/
def P12088332121245025453.Spec : Prop :=
  ∀ n, P12088332121245025453.a n = A017262 n

end A017262

/-! ## A017262.P17091746415885774862

`(A253195(2*(n+1))²*A253195(2*(n+1)))²`
-/

namespace A017262.P17091746415885774862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253195 (2 * (n + 1)) ^ 2 * A253195 (2 * (n + 1))) ^ 2

end

end A017262.P17091746415885774862

namespace A017262

/-- `(A253195(2*(n+1))²*A253195(2*(n+1)))²` -/
def P17091746415885774862.Spec : Prop :=
  ∀ n, P17091746415885774862.a n = A017262 n

end A017262

/-! ## A017262.P6978419928001776665

`((Δ[record[A152020(n+1)]]+n)^3)²`
-/

namespace A017262.P6978419928001776665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152020 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + (n : ℤ)) ^ 3) ^ 2

end

end A017262.P6978419928001776665

namespace A017262

/-- `((Δ[record[A152020(n+1)]]+n)^3)²` -/
def P6978419928001776665.Spec : Prop :=
  ∀ n, P6978419928001776665.a n = A017262 n

end A017262

/-! ## A017262.P7433010335410042031

`A016794(3*n+2)`
-/

namespace A017262.P7433010335410042031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016794 (3 * n + 2)

end

end A017262.P7433010335410042031

namespace A017262

/-- `A016794(3*n+2)` -/
def P7433010335410042031.Spec : Prop :=
  ∀ n, P7433010335410042031.a n = A017262 n

theorem P7433010335410042031.correct : P7433010335410042031.Spec := by
  intro n
  simp only [A017262, Nat.add_sub_cancel, A017262.P7433010335410042031.a, A017262.P17462359574555017866.a, A016794, A016794.P16688178066975936005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017262

/-! ## A017262.P8027300536493945873

`A016791(3*n+2)²`
-/

namespace A017262.P8027300536493945873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 (3 * n + 2) ^ 2

end

end A017262.P8027300536493945873

namespace A017262

/-- `A016791(3*n+2)²` -/
def P8027300536493945873.Spec : Prop :=
  ∀ n, P8027300536493945873.a n = A017262 n

theorem P8027300536493945873.correct : P8027300536493945873.Spec := by
  intro n
  simp only [A017262, Nat.add_sub_cancel, A017262.P8027300536493945873.a, A017262.P17462359574555017866.a, A016791, A016791.P13208806347124039064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017262

/-! ## A017262.P12497595899610136879

`(A016789(A016789(n))^3)²`
-/

namespace A017262.P12497595899610136879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 (A016789 n).toNat ^ 3) ^ 2

end

end A017262.P12497595899610136879

namespace A017262

/-- `(A016789(A016789(n))^3)²` -/
def P12497595899610136879.Spec : Prop :=
  ∀ n, P12497595899610136879.a n = A017262 n

end A017262

/-!
# A017263: a(n) = (9*n + 8)^7.

The programs for A017263, the canonical program `A017263.P9119414287994863076` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017263 has offset 0).

The definition of A017263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+8)^7` (program `A017263.P9119414287994863076`, by `A017263.P9119414287994863076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017263.P9119414287994863076

`(9*n+8)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017263

/-- `(9*n+8)^7` -/
def P9119414287994863076.Spec : Prop :=
  ∀ n, (P9119414287994863076.a n : ℤ) = A017263 n

theorem P9119414287994863076.correct : P9119414287994863076.Spec := by
  intro n
  simp only [A017263]

end A017263

/-! ## A017263.P11301847969894970998

`A017257(n)*A017262(n)`
-/

namespace A017263.P11301847969894970998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n * A017262 n

end

end A017263.P11301847969894970998

namespace A017263

/-- `A017257(n)*A017262(n)` -/
def P11301847969894970998.Spec : Prop :=
  ∀ n, P11301847969894970998.a n = A017263 n

theorem P11301847969894970998.correct : P11301847969894970998.Spec := by
  intro n
  simp only [A017263, Nat.add_sub_cancel, A017263.P11301847969894970998.a, A017263.P9119414287994863076.a, A017257, A017257.P3330609659631501478.a, A017262, A017262.P17462359574555017866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017263

/-! ## A017263.P14892717683099519514

`A017258(n)*A017261(n)`
-/

namespace A017263.P14892717683099519514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017258 n * A017261 n

end

end A017263.P14892717683099519514

namespace A017263

/-- `A017258(n)*A017261(n)` -/
def P14892717683099519514.Spec : Prop :=
  ∀ n, P14892717683099519514.a n = A017263 n

theorem P14892717683099519514.correct : P14892717683099519514.Spec := by
  intro n
  simp only [A017263, Nat.add_sub_cancel, A017263.P14892717683099519514.a, A017263.P9119414287994863076.a, A017258, A017258.P14241176196969724133.a, A017261, A017261.P12236934521073845848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017263

/-! ## A017263.P101652973567041248

`A017259(n)*A017260(n)`
-/

namespace A017263.P101652973567041248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017259 n * A017260 n

end

end A017263.P101652973567041248

namespace A017263

/-- `A017259(n)*A017260(n)` -/
def P101652973567041248.Spec : Prop :=
  ∀ n, P101652973567041248.a n = A017263 n

theorem P101652973567041248.correct : P101652973567041248.Spec := by
  intro n
  simp only [A017263, Nat.add_sub_cancel, A017263.P101652973567041248.a, A017263.P9119414287994863076.a, A017259, A017259.P3274228343626659253.a, A017260, A017260.P13387487026085145838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017263

/-! ## A017263.P13037708795408492353

`A017257(n)²*A017261(n)`
-/

namespace A017263.P13037708795408492353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n ^ 2 * A017261 n

end

end A017263.P13037708795408492353

namespace A017263

/-- `A017257(n)²*A017261(n)` -/
def P13037708795408492353.Spec : Prop :=
  ∀ n, P13037708795408492353.a n = A017263 n

theorem P13037708795408492353.correct : P13037708795408492353.Spec := by
  intro n
  simp only [A017263, Nat.add_sub_cancel, A017263.P13037708795408492353.a, A017263.P9119414287994863076.a, A017257, A017257.P3330609659631501478.a, A017261, A017261.P12236934521073845848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017263

/-! ## A017263.P10291058599421316230

`A017258(n)²*A017259(n)`
-/

namespace A017263.P10291058599421316230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017258 n ^ 2 * A017259 n

end

end A017263.P10291058599421316230

namespace A017263

/-- `A017258(n)²*A017259(n)` -/
def P10291058599421316230.Spec : Prop :=
  ∀ n, P10291058599421316230.a n = A017263 n

theorem P10291058599421316230.correct : P10291058599421316230.Spec := by
  intro n
  simp only [A017263, Nat.add_sub_cancel, A017263.P10291058599421316230.a, A017263.P9119414287994863076.a, A017258, A017258.P14241176196969724133.a, A017259, A017259.P3274228343626659253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017263

/-! ## A017263.P12871843163195596497

`A017259(n)²*A017257(n)`
-/

namespace A017263.P12871843163195596497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017259 n ^ 2 * A017257 n

end

end A017263.P12871843163195596497

namespace A017263

/-- `A017259(n)²*A017257(n)` -/
def P12871843163195596497.Spec : Prop :=
  ∀ n, P12871843163195596497.a n = A017263 n

theorem P12871843163195596497.correct : P12871843163195596497.Spec := by
  intro n
  simp only [A017263, Nat.add_sub_cancel, A017263.P12871843163195596497.a, A017263.P9119414287994863076.a, A017257, A017257.P3330609659631501478.a, A017259, A017259.P3274228343626659253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017263

/-! ## A017263.P13292612743275425181

`A017260(n)²/A017257(n)`
-/

namespace A017263.P13292612743275425181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017260 n ^ 2 : ℚ) / (A017257 n : ℚ)

end

end A017263.P13292612743275425181

namespace A017263

/-- `A017260(n)²/A017257(n)` -/
def P13292612743275425181.Spec : Prop :=
  ∀ n, P13292612743275425181.a n = (A017263 n : ℚ)

end A017263

/-! ## A017263.P15675211663873995254

`A017258(n)²²/A017257(n)`
-/

namespace A017263.P15675211663873995254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017258 n ^ 2) ^ 2 : ℚ) / (A017257 n : ℚ)

end

end A017263.P15675211663873995254

namespace A017263

/-- `A017258(n)²²/A017257(n)` -/
def P15675211663873995254.Spec : Prop :=
  ∀ n, P15675211663873995254.a n = (A017263 n : ℚ)

end A017263

/-! ## A017263.P13751657682299036483

`A017261(n)/A017259(n)*A017261(n)`
-/

namespace A017263.P13751657682299036483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017261 n : ℚ) / (A017259 n : ℚ) * (A017261 n : ℚ)

end

end A017263.P13751657682299036483

namespace A017263

/-- `A017261(n)/A017259(n)*A017261(n)` -/
def P13751657682299036483.Spec : Prop :=
  ∀ n, P13751657682299036483.a n = (A017263 n : ℚ)

end A017263

/-! ## A017263.P2079803453284660910

`A061099(2*(n+1))²²/A056020(2*(n+1))`
-/

namespace A017263.P2079803453284660910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061099 (2 * (n + 1)) ^ 2) ^ 2 : ℚ) / (A056020 (2 * (n + 1)) : ℚ)

end

end A017263.P2079803453284660910

namespace A017263

/-- `A061099(2*(n+1))²²/A056020(2*(n+1))` -/
def P2079803453284660910.Spec : Prop :=
  ∀ n, P2079803453284660910.a n = (A017263 n : ℚ)

end A017263

/-! ## A017263.P11370882436203975153

`A016795(3*n+2)`
-/

namespace A017263.P11370882436203975153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016795 (3 * n + 2)

end

end A017263.P11370882436203975153

namespace A017263

/-- `A016795(3*n+2)` -/
def P11370882436203975153.Spec : Prop :=
  ∀ n, P11370882436203975153.a n = A017263 n

theorem P11370882436203975153.correct : P11370882436203975153.Spec := by
  intro n
  simp only [A017263, Nat.add_sub_cancel, A017263.P11370882436203975153.a, A017263.P9119414287994863076.a, A016795, A016795.P9782135587463226103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017263

/-! ## A017263.P17717233974959725941

`A017259(n)²*A016789(A016789(n))`
-/

namespace A017263.P17717233974959725941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017259 n ^ 2 * A016789 (A016789 n).toNat

end

end A017263.P17717233974959725941

namespace A017263

/-- `A017259(n)²*A016789(A016789(n))` -/
def P17717233974959725941.Spec : Prop :=
  ∀ n, P17717233974959725941.a n = A017263 n

end A017263

/-! ## A017263.P9495189080312341277

`A001015(9*n+8)`
-/

namespace A017263.P9495189080312341277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (9 * n + 8)

end

end A017263.P9495189080312341277

namespace A017263

/-- `A001015(9*n+8)` -/
def P9495189080312341277.Spec : Prop :=
  ∀ n, P9495189080312341277.a n = A017263 n

end A017263

/-!
# A017264: a(n) = (9*n + 8)^8.

The programs for A017264, the canonical program `A017264.P5004420900427201186` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017264 has offset 0).

The definition of A017264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+8)^8` (program `A017264.P5004420900427201186`, by `A017264.P5004420900427201186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017264.P5004420900427201186

`(9*n+8)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017264

/-- `(9*n+8)^8` -/
def P5004420900427201186.Spec : Prop :=
  ∀ n, (P5004420900427201186.a n : ℤ) = A017264 n

theorem P5004420900427201186.correct : P5004420900427201186.Spec := by
  intro n
  simp only [A017264]

end A017264

/-! ## A017264.P18019937148298806395

`(Δ[lcm(2*n+1, 2*n)]+n+2)²²²`
-/

namespace A017264.P18019937148298806395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 2 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017264.P18019937148298806395

namespace A017264

/-- `(Δ[lcm(2*n+1, 2*n)]+n+2)²²²` -/
def P18019937148298806395.Spec : Prop :=
  ∀ n, P18019937148298806395.a n = A017264 n

end A017264

/-! ## A017264.P15354169912519554776

`A017260(n)²`
-/

namespace A017264.P15354169912519554776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017260 n ^ 2

end

end A017264.P15354169912519554776

namespace A017264

/-- `A017260(n)²` -/
def P15354169912519554776.Spec : Prop :=
  ∀ n, P15354169912519554776.a n = A017264 n

theorem P15354169912519554776.correct : P15354169912519554776.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P15354169912519554776.a, A017264.P5004420900427201186.a, A017260, A017260.P13387487026085145838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P11994706076896682747

`A017258(n)²²`
-/

namespace A017264.P11994706076896682747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017258 n ^ 2) ^ 2

end

end A017264.P11994706076896682747

namespace A017264

/-- `A017258(n)²²` -/
def P11994706076896682747.Spec : Prop :=
  ∀ n, P11994706076896682747.a n = A017264 n

theorem P11994706076896682747.correct : P11994706076896682747.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P11994706076896682747.a, A017264.P5004420900427201186.a, A017258, A017258.P14241176196969724133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P11239018635703453750

`A017257(n)²²²`
-/

namespace A017264.P11239018635703453750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017257 n ^ 2) ^ 2) ^ 2

end

end A017264.P11239018635703453750

namespace A017264

/-- `A017257(n)²²²` -/
def P11239018635703453750.Spec : Prop :=
  ∀ n, P11239018635703453750.a n = A017264 n

theorem P11239018635703453750.correct : P11239018635703453750.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P11239018635703453750.a, A017264.P5004420900427201186.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P2411364256807672530

`(A017245(n)+1)²²²`
-/

namespace A017264.P2411364256807672530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017245 n + 1) ^ 2) ^ 2) ^ 2

end

end A017264.P2411364256807672530

namespace A017264

/-- `(A017245(n)+1)²²²` -/
def P2411364256807672530.Spec : Prop :=
  ∀ n, P2411364256807672530.a n = A017264 n

theorem P2411364256807672530.correct : P2411364256807672530.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P2411364256807672530.a, A017264.P5004420900427201186.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P12959427504364507391

`(A017233(n)+2)²²²`
-/

namespace A017264.P12959427504364507391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017233 n + 2) ^ 2) ^ 2) ^ 2

end

end A017264.P12959427504364507391

namespace A017264

/-- `(A017233(n)+2)²²²` -/
def P12959427504364507391.Spec : Prop :=
  ∀ n, P12959427504364507391.a n = A017264 n

theorem P12959427504364507391.correct : P12959427504364507391.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P12959427504364507391.a, A017264.P5004420900427201186.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P3439473979030671111

`(A350522(n)/2)²²²`
-/

namespace A017264.P3439473979030671111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A350522 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A017264.P3439473979030671111

namespace A017264

/-- `(A350522(n)/2)²²²` -/
def P3439473979030671111.Spec : Prop :=
  ∀ n, P3439473979030671111.a n = (A017264 n : ℚ)

theorem P3439473979030671111.correct : P3439473979030671111.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P3439473979030671111.a, A017264.P5004420900427201186.a, A350522, A350522.P13009567044850805638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P10024090441748662404

`(n-A017365(n))²²²`
-/

namespace A017264.P10024090441748662404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017365 n) ^ 2) ^ 2) ^ 2

end

end A017264.P10024090441748662404

namespace A017264

/-- `(n-A017365(n))²²²` -/
def P10024090441748662404.Spec : Prop :=
  ∀ n, P10024090441748662404.a n = A017264 n

theorem P10024090441748662404.correct : P10024090441748662404.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P10024090441748662404.a, A017264.P5004420900427201186.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P3987906194970819759

`A017263(n)*(9*n+8)`
-/

namespace A017264.P3987906194970819759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017263 n * (9 * n + 8 : ℤ)

end

end A017264.P3987906194970819759

namespace A017264

/-- `A017263(n)*(9*n+8)` -/
def P3987906194970819759.Spec : Prop :=
  ∀ n, P3987906194970819759.a n = A017264 n

theorem P3987906194970819759.correct : P3987906194970819759.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P3987906194970819759.a, A017264.P5004420900427201186.a, A017263, A017263.P9119414287994863076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P13817446686280577338

`(A000027(2*n+1)+7*(n+1))²²²`
-/

namespace A017264.P13817446686280577338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A000027 (2 * n + 1) + (7 * (n + 1) : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017264.P13817446686280577338

namespace A017264

/-- `(A000027(2*n+1)+7*(n+1))²²²` -/
def P13817446686280577338.Spec : Prop :=
  ∀ n, P13817446686280577338.a n = A017264 n

theorem P13817446686280577338.correct : P13817446686280577338.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P13817446686280577338.a, A017264.P5004420900427201186.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P6052669518144803764

`A017257(n)*A017263(n)`
-/

namespace A017264.P6052669518144803764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n * A017263 n

end

end A017264.P6052669518144803764

namespace A017264

/-- `A017257(n)*A017263(n)` -/
def P6052669518144803764.Spec : Prop :=
  ∀ n, P6052669518144803764.a n = A017264 n

theorem P6052669518144803764.correct : P6052669518144803764.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P6052669518144803764.a, A017264.P5004420900427201186.a, A017257, A017257.P3330609659631501478.a, A017263, A017263.P9119414287994863076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P14119915136081440906

`A017258(n)*A017262(n)`
-/

namespace A017264.P14119915136081440906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017258 n * A017262 n

end

end A017264.P14119915136081440906

namespace A017264

/-- `A017258(n)*A017262(n)` -/
def P14119915136081440906.Spec : Prop :=
  ∀ n, P14119915136081440906.a n = A017264 n

theorem P14119915136081440906.correct : P14119915136081440906.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P14119915136081440906.a, A017264.P5004420900427201186.a, A017258, A017258.P14241176196969724133.a, A017262, A017262.P17462359574555017866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P1565187358291156465

`A017259(n)*A017261(n)`
-/

namespace A017264.P1565187358291156465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017259 n * A017261 n

end

end A017264.P1565187358291156465

namespace A017264

/-- `A017259(n)*A017261(n)` -/
def P1565187358291156465.Spec : Prop :=
  ∀ n, P1565187358291156465.a n = A017264 n

theorem P1565187358291156465.correct : P1565187358291156465.Spec := by
  intro n
  simp only [A017264, Nat.add_sub_cancel, A017264.P1565187358291156465.a, A017264.P5004420900427201186.a, A017259, A017259.P3274228343626659253.a, A017261, A017261.P12236934521073845848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017264

/-! ## A017264.P13895847743669004703

`Δ[A062728(n)]²²²`
-/

namespace A017264.P13895847743669004703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017264.P13895847743669004703

namespace A017264

/-- `Δ[A062728(n)]²²²` -/
def P13895847743669004703.Spec : Prop :=
  ∀ n, P13895847743669004703.a n = A017264 n

end A017264

/-! ## A017264.P9225921123383926125

`Δ[A081267(n)]²²²`
-/

namespace A017264.P9225921123383926125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017264.P9225921123383926125

namespace A017264

/-- `Δ[A081267(n)]²²²` -/
def P9225921123383926125.Spec : Prop :=
  ∀ n, P9225921123383926125.a n = A017264 n

end A017264

/-! ## A017264.P16455520001093677864

`(A179805(n+2)+2)²²²`
-/

namespace A017264.P16455520001093677864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A179805 (n + 2) + 2) ^ 2) ^ 2) ^ 2

end

end A017264.P16455520001093677864

namespace A017264

/-- `(A179805(n+2)+2)²²²` -/
def P16455520001093677864.Spec : Prop :=
  ∀ n, P16455520001093677864.a n = A017264 n

end A017264

/-! ## A017264.P13948949176435259724

`A061099(2*(n+1))²²`
-/

namespace A017264.P13948949176435259724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061099 (2 * (n + 1)) ^ 2) ^ 2

end

end A017264.P13948949176435259724

namespace A017264

/-- `A061099(2*(n+1))²²` -/
def P13948949176435259724.Spec : Prop :=
  ∀ n, P13948949176435259724.a n = A017264 n

end A017264

/-! ## A017264.P5466061037169317120

`A056020(2*(n+1))²²²`
-/

namespace A017264.P5466061037169317120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A056020 (2 * (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017264.P5466061037169317120

namespace A017264

/-- `A056020(2*(n+1))²²²` -/
def P5466061037169317120.Spec : Prop :=
  ∀ n, P5466061037169317120.a n = A017264 n

end A017264

/-! ## A017264.P11843251780877256695

`A168409(2*n+1)²²²`
-/

namespace A017264.P11843251780877256695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A168409 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017264.P11843251780877256695

namespace A017264

/-- `A168409(2*n+1)²²²` -/
def P11843251780877256695.Spec : Prop :=
  ∀ n, P11843251780877256695.a n = A017264 n

end A017264

/-!
# A017265: a(n) = (9*n + 8)^9.

The programs for A017265, the canonical program `A017265.P13353747416073496445` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017265 has offset 0).

The definition of A017265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+8)^9` (program `A017265.P13353747416073496445`, by `A017265.P13353747416073496445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017265.P13353747416073496445

`(9*n+8)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017265

/-- `(9*n+8)^9` -/
def P13353747416073496445.Spec : Prop :=
  ∀ n, (P13353747416073496445.a n : ℤ) = A017265 n

theorem P13353747416073496445.correct : P13353747416073496445.Spec := by
  intro n
  simp only [A017265]

end A017265

/-! ## A017265.P13383991894609761919

`sqrt(A017262(n)^3)`
-/

namespace A017265.P13383991894609761919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017262 n ^ 3 : ℝ)

end

end A017265.P13383991894609761919

namespace A017265

/-- `sqrt(A017262(n)^3)` -/
def P13383991894609761919.Spec : Prop :=
  ∀ n, P13383991894609761919.a n = (A017265 n : ℝ)

end A017265

/-! ## A017265.P8186561186594509904

`A017259(n)*A017262(n)`
-/

namespace A017265.P8186561186594509904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017259 n * A017262 n

end

end A017265.P8186561186594509904

namespace A017265

/-- `A017259(n)*A017262(n)` -/
def P8186561186594509904.Spec : Prop :=
  ∀ n, P8186561186594509904.a n = A017265 n

theorem P8186561186594509904.correct : P8186561186594509904.Spec := by
  intro n
  simp only [A017265, Nat.add_sub_cancel, A017265.P8186561186594509904.a, A017265.P13353747416073496445.a, A017259, A017259.P3274228343626659253.a, A017262, A017262.P17462359574555017866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017265

/-! ## A017265.P10554503318943622759

`A017263(n)/(1/A017257(n))²`
-/

namespace A017265.P10554503318943622759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017263 n : ℚ) / (1 / (A017257 n : ℚ)) ^ 2

end

end A017265.P10554503318943622759

namespace A017265

/-- `A017263(n)/(1/A017257(n))²` -/
def P10554503318943622759.Spec : Prop :=
  ∀ n, P10554503318943622759.a n = (A017265 n : ℚ)

end A017265

/-! ## A017265.P4403829453423431382

`A017258(n)²²*sqrt(A017258(n))`
-/

namespace A017265.P4403829453423431382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A017258 n ^ 2) ^ 2 : ℝ) * Real.sqrt (A017258 n : ℝ)

end

end A017265.P4403829453423431382

namespace A017265

/-- `A017258(n)²²*sqrt(A017258(n))` -/
def P4403829453423431382.Spec : Prop :=
  ∀ n, P4403829453423431382.a n = (A017265 n : ℝ)

end A017265

/-! ## A017265.P1003595567461478645

`A017260(n)²*sqrt(sqrt(A017260(n)))`
-/

namespace A017265.P1003595567461478645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017260 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017260 n : ℝ))

end

end A017265.P1003595567461478645

namespace A017265

/-- `A017260(n)²*sqrt(sqrt(A017260(n)))` -/
def P1003595567461478645.Spec : Prop :=
  ∀ n, P1003595567461478645.a n = (A017265 n : ℝ)

end A017265

/-! ## A017265.P12420078619010468035

`A016797(3*n+2)`
-/

namespace A017265.P12420078619010468035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016797 (3 * n + 2)

end

end A017265.P12420078619010468035

namespace A017265

/-- `A016797(3*n+2)` -/
def P12420078619010468035.Spec : Prop :=
  ∀ n, P12420078619010468035.a n = A017265 n

theorem P12420078619010468035.correct : P12420078619010468035.Spec := by
  intro n
  simp only [A017265, Nat.add_sub_cancel, A017265.P12420078619010468035.a, A017265.P13353747416073496445.a, A016797, A016797.P16599814047714379854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017265

/-! ## A017265.P5572182848379190529

`A001017(A017257(n))`
-/

namespace A017265.P5572182848379190529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017257 n).toNat

end

end A017265.P5572182848379190529

namespace A017265

/-- `A001017(A017257(n))` -/
def P5572182848379190529.Spec : Prop :=
  ∀ n, P5572182848379190529.a n = A017265 n

end A017265

/-! ## A017265.P7619591606864386378

`A001017(A008591(n+1)-1)`
-/

namespace A017265.P7619591606864386378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008591 (n + 1) - 1).toNat

end

end A017265.P7619591606864386378

namespace A017265

/-- `A001017(A008591(n+1)-1)` -/
def P7619591606864386378.Spec : Prop :=
  ∀ n, P7619591606864386378.a n = A017265 n

end A017265

/-! ## A017265.P14585116825318037781

`A001017(A017353(n)+1-n)`
-/

namespace A017265.P14585116825318037781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017353 n + (1 - (n : ℤ))).toNat

end

end A017265.P14585116825318037781

namespace A017265

/-- `A001017(A017353(n)+1-n)` -/
def P14585116825318037781.Spec : Prop :=
  ∀ n, P14585116825318037781.a n = A017265 n

end A017265

/-! ## A017265.P7820299318500029447

`A001017(A017341(n)+2-n)`
-/

namespace A017265.P7820299318500029447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017341 n + (2 - (n : ℤ))).toNat

end

end A017265.P7820299318500029447

namespace A017265

/-- `A001017(A017341(n)+2-n)` -/
def P7820299318500029447.Spec : Prop :=
  ∀ n, P7820299318500029447.a n = A017265 n

end A017265

/-! ## A017265.P11626268844274715809

`A001017(1-(n-A017353(n)))`
-/

namespace A017265.P11626268844274715809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (1 - ((n : ℤ) - A017353 n)).toNat

end

end A017265.P11626268844274715809

namespace A017265

/-- `A001017(1-(n-A017353(n)))` -/
def P11626268844274715809.Spec : Prop :=
  ∀ n, P11626268844274715809.a n = A017265 n

end A017265

/-! ## A017265.P14245624610185807184

`A001017(2-(n-A017341(n)))`
-/

namespace A017265.P14245624610185807184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (2 - ((n : ℤ) - A017341 n)).toNat

end

end A017265.P14245624610185807184

namespace A017265

/-- `A001017(2-(n-A017341(n)))` -/
def P14245624610185807184.Spec : Prop :=
  ∀ n, P14245624610185807184.a n = A017265 n

end A017265

/-! ## A017265.P1777810000734548950

`A001017(A008592(n+1)-(n+2))`
-/

namespace A017265.P1777810000734548950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008592 (n + 1) - (n + 2 : ℤ)).toNat

end

end A017265.P1777810000734548950

namespace A017265

/-- `A001017(A008592(n+1)-(n+2))` -/
def P1777810000734548950.Spec : Prop :=
  ∀ n, P1777810000734548950.a n = A017265 n

end A017265

/-! ## A017265.P14402433741136626004

`A001017(A017497(n)-(2*n+1))`
-/

namespace A017265.P14402433741136626004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n - (2 * n + 1 : ℤ)).toNat

end

end A017265.P14402433741136626004

namespace A017265

/-- `A001017(A017497(n)-(2*n+1))` -/
def P14402433741136626004.Spec : Prop :=
  ∀ n, P14402433741136626004.a n = A017265 n

end A017265

/-!
# A017266: 

The programs for A017266, there is no canonical definition to state claims against.
-/

/-! ## A017266.P13739532168217078291

`(9*n+8)^10`
-/

namespace A017266.P13739532168217078291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 8) ^ 10

end

end A017266.P13739532168217078291

/-! ## A017266.P12233064384708216174

`A017261(n)²`
-/

namespace A017266.P12233064384708216174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017261 n ^ 2

end

end A017266.P12233064384708216174

/-! ## A017266.P12133604784803807486

`sqrt(A017260(n)^5)`
-/

namespace A017266.P12133604784803807486
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017260 n ^ 5 : ℝ)

end

end A017266.P12133604784803807486

/-! ## A017266.P478263104475247024

`sqrt(sqrt(A017264(n)))*A017264(n)`
-/

namespace A017266.P478263104475247024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017264 n : ℝ)) * (A017264 n : ℝ)

end

end A017266.P478263104475247024

/-! ## A017266.P10323390346190510412

`A061099(2*n+2)²²*A061099(2*n+2)`
-/

namespace A017266.P10323390346190510412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061099 (2 * n + 2) ^ 2) ^ 2 * A061099 (2 * n + 2)

end

end A017266.P10323390346190510412

/-! ## A017266.P2809401431534315186

`A016798(3*n+2)`
-/

namespace A017266.P2809401431534315186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016798 (3 * n + 2)

end

end A017266.P2809401431534315186

/-! ## A017266.P15066465302415553819

`A016793(A016789(n))²`
-/

namespace A017266.P15066465302415553819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 (A016789 n).toNat ^ 2

end

end A017266.P15066465302415553819

/-! ## A017266.P9916572468148122853

`A008454(A008591(n+1)-1)`
-/

namespace A017266.P9916572468148122853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008591 (n + 1) - 1).toNat

end

end A017266.P9916572468148122853

/-! ## A017266.P4836747160532621035

`A008454(A017353(n)+1-n)`
-/

namespace A017266.P4836747160532621035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n + (1 - (n : ℤ))).toNat

end

end A017266.P4836747160532621035

/-! ## A017266.P230101563430673345

`A008454(A017341(n)+2-n)`
-/

namespace A017266.P230101563430673345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n + (2 - (n : ℤ))).toNat

end

end A017266.P230101563430673345

/-! ## A017266.P13032107468687569967

`A008454(1-(n-A017353(n)))`
-/

namespace A017266.P13032107468687569967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (1 - ((n : ℤ) - A017353 n)).toNat

end

end A017266.P13032107468687569967

/-! ## A017266.P13923783443622741521

`A008454(2-(n-A017341(n)))`
-/

namespace A017266.P13923783443622741521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 - ((n : ℤ) - A017341 n)).toNat

end

end A017266.P13923783443622741521

/-! ## A017266.P13973481505951311408

`A008454(A008592(n+1)-(n+2))`
-/

namespace A017266.P13973481505951311408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008592 (n + 1) - (n + 2 : ℤ)).toNat

end

end A017266.P13973481505951311408

/-! ## A017266.P17624698449755402614

`A008454(A017497(n)-(2*n+1))`
-/

namespace A017266.P17624698449755402614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017497 n - (2 * n + 1 : ℤ)).toNat

end

end A017266.P17624698449755402614

/-! ## A017266.P15033287827131722549

`A008454(A016777(2*n+1)+A016777(n+1))`
-/

namespace A017266.P15033287827131722549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (2 * n + 1) + A016777 (n + 1)).toNat

end

end A017266.P15033287827131722549

/-!
# A017267: 

The programs for A017267, there is no canonical definition to state claims against.
-/

/-! ## A017267.P4601735954259194247

`(9*n+8)^11`
-/

namespace A017267.P4601735954259194247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 8) ^ 11

end

end A017267.P4601735954259194247

/-! ## A017267.P13979416557904152204

`A017257(n)²²*A017263(n)`
-/

namespace A017267.P13979416557904152204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017257 n ^ 2) ^ 2 * A017263 n

end

end A017267.P13979416557904152204

/-! ## A017267.P2608522139486895975

`A016799(3*n+2)`
-/

namespace A017267.P2608522139486895975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016799 (3 * n + 2)

end

end A017267.P2608522139486895975

/-! ## A017267.P1014363315387233552

`A008455(A017257(n))`
-/

namespace A017267.P1014363315387233552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017257 n).toNat

end

end A017267.P1014363315387233552

/-! ## A017267.P10490947109388256198

`A008455(A017209(n)+4)`
-/

namespace A017267.P10490947109388256198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017209 n + 4).toNat

end

end A017267.P10490947109388256198

/-! ## A017267.P1987581103469177720

`A008455(A008591(n+1)-1)`
-/

namespace A017267.P1987581103469177720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008591 (n + 1) - 1).toNat

end

end A017267.P1987581103469177720

/-! ## A017267.P10804231062344407936

`A008455(A016789(A016789(n)))`
-/

namespace A017267.P10804231062344407936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016789 (A016789 n).toNat).toNat

end

end A017267.P10804231062344407936

/-!
# A017268: 

The programs for A017268, there is no canonical definition to state claims against.
-/

/-! ## A017268.P6991969561632431600

`(9*n+8)^12`
-/

namespace A017268.P6991969561632431600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 8) ^ 12

end

end A017268.P6991969561632431600

/-! ## A017268.P6750818618383781097

`A017262(n)²`
-/

namespace A017268.P6750818618383781097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017262 n ^ 2

end

end A017268.P6750818618383781097

/-! ## A017268.P9692852069663249080

`sqrt(A017264(n))*A017264(n)`
-/

namespace A017268.P9692852069663249080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017264 n : ℝ) * (A017264 n : ℝ)

end

end A017268.P9692852069663249080

/-! ## A017268.P3657688874917290544

`(eq[n+1, lcm(9, n+1)]^6)²`
-/

namespace A017268.P3657688874917290544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 6) ^ 2

end

end A017268.P3657688874917290544

/-! ## A017268.P16815499395894450601

`(A061099(2*n+2)²*A061099(2*n+2))²`
-/

namespace A017268.P16815499395894450601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061099 (2 * n + 2) ^ 2 * A061099 (2 * n + 2)) ^ 2

end

end A017268.P16815499395894450601

/-! ## A017268.P3233925072000051416

`A016791(A001651(2*n+2))²²`
-/

namespace A017268.P3233925072000051416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016791 (A001651 (2 * n + 2)).toNat ^ 2) ^ 2

end

end A017268.P3233925072000051416

/-! ## A017268.P6744551354634362185

`sqrt(A017264(n)^3)`
-/

namespace A017268.P6744551354634362185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017264 n ^ 3 : ℝ)

end

end A017268.P6744551354634362185

/-! ## A017268.P1367992196471475624

`A008456(A008591(n+1)-1)`
-/

namespace A017268.P1367992196471475624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A008591 (n + 1) - 1).toNat

end

end A017268.P1367992196471475624

/-! ## A017268.P517166057813698449

`A008456(A017341(n)+2-n)`
-/

namespace A017268.P517166057813698449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017341 n + (2 - (n : ℤ))).toNat

end

end A017268.P517166057813698449

/-! ## A017268.P11591071966537822414

`A008456(2-(n-A017341(n)))`
-/

namespace A017268.P11591071966537822414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (2 - ((n : ℤ) - A017341 n)).toNat

end

end A017268.P11591071966537822414

/-! ## A017268.P11098859709978716073

`A000578(A017233(n)+2)²²`
-/

namespace A017268.P11098859709978716073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017233 n + 2).toNat ^ 2) ^ 2

end

end A017268.P11098859709978716073

/-! ## A017268.P3637746025678424829

`A008456(A004767(2*n+1)+n+1)`
-/

namespace A017268.P3637746025678424829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A017268.P3637746025678424829

/-! ## A017268.P17851094233313384930

`A008456(A016777(2*n+1)+A016777(n+1))`
-/

namespace A017268.P17851094233313384930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016777 (2 * n + 1) + A016777 (n + 1)).toNat

end

end A017268.P17851094233313384930

/-!
# A017269: Expansion of 1/((1-3x)(1-5x)(1-6x)).

The programs for A017269, the canonical program `A017269.P6427660025962019252` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017269 has offset 0).

The definition of A017269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-14x+63x^2-90x^3))` (program `A017269.P6427660025962019252`, by `A017269.P6427660025962019252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017269.P6427660025962019252

`ogf(1/(1-14x+63x^2-90x^3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017269

/-- `ogf(1/(1-14x+63x^2-90x^3))` -/
def P6427660025962019252.Spec : Prop :=
  ∀ n, P6427660025962019252.a n = A017269 n

theorem P6427660025962019252.correct : P6427660025962019252.Spec := by
  intro n
  simp only [A017269]

end A017269

/-! ## A017269.P17935317223829690995

`11*a(n-1)-30*a(n-2)+3^n` with `a(0)=1, a(1)=14`
-/

namespace A017269.P17935317223829690995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  11 * a (n - 1) - 30 * a (n - 2) + (3 ^ n : ℤ)

end

end A017269.P17935317223829690995

namespace A017269

/-- `11*a(n-1)-30*a(n-2)+3^n` -/
def P17935317223829690995.Spec : Prop :=
  ∀ n, P17935317223829690995.a n = A017269 n

end A017269

/-! ## A017269.P2983885996816003716

`(2*6^(n+2)-3*5^(n+2)+3^(n+2))/6`
-/

namespace A017269.P2983885996816003716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 6 ^ (n + 2) : ℤ) - (3 * 5 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 6

end

end A017269.P2983885996816003716

namespace A017269

/-- `(2*6^(n+2)-3*5^(n+2)+3^(n+2))/6` -/
def P2983885996816003716.Spec : Prop :=
  ∀ n, P2983885996816003716.a n = (A017269 n : ℚ)

end A017269

/-! ## A017269.P5796726271966674237

`∑[A257286(n)]+3*a(n-1)` with `a(0)=1`
-/

namespace A017269.P5796726271966674237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257286 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A017269.P5796726271966674237

namespace A017269

/-- `∑[A257286(n)]+3*a(n-1)` -/
def P5796726271966674237.Spec : Prop :=
  ∀ n, P5796726271966674237.a n = A017269 n

end A017269

/-! ## A017269.P7118537321942227094

`A005059(n+1)+6*a(n-1)` with `a(0)=1`
-/

namespace A017269.P7118537321942227094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005059 (n + 1) + 6 * a (n - 1)

end

end A017269.P7118537321942227094

namespace A017269

/-- `A005059(n+1)+6*a(n-1)` -/
def P7118537321942227094.Spec : Prop :=
  ∀ n, P7118537321942227094.a n = A017269 n

end A017269

/-! ## A017269.P13862428526524872695

`Δ[A016211(n)-A016209(n)]`
-/

namespace A017269.P13862428526524872695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016211 n - A016209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017269.P13862428526524872695

namespace A017269

/-- `Δ[A016211(n)-A016209(n)]` -/
def P13862428526524872695.Spec : Prop :=
  ∀ n, P13862428526524872695.a n = A017269 n

end A017269

/-! ## A017269.P1942168354922278393

`2*A016765(n)-A016753(n)`
-/

namespace A017269.P1942168354922278393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016765 n - A016753 n

end

end A017269.P1942168354922278393

namespace A017269

/-- `2*A016765(n)-A016753(n)` -/
def P1942168354922278393.Spec : Prop :=
  ∀ n, P1942168354922278393.a n = A017269 n

end A017269

/-!
# A017270: a(n) = (10*n)^2.

The programs for A017270, the canonical program `A017270.P17011890906423583366` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017270 has offset 0).

The definition of A017270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n)²` (program `A017270.P17011890906423583366`, by `A017270.P17011890906423583366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017270.P17011890906423583366

`(10*n)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017270

/-- `(10*n)²` -/
def P17011890906423583366.Spec : Prop :=
  ∀ n, (P17011890906423583366.a n : ℤ) = A017270 n

theorem P17011890906423583366.correct : P17011890906423583366.Spec := by
  intro n
  simp only [A017270]

end A017270

/-!
# A017271: a(n) = (10*n)^3.

The programs for A017271, the canonical program `A017271.P16549421429603654595` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017271 has offset 0).

The definition of A017271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n)^3` (program `A017271.P16549421429603654595`, by `A017271.P16549421429603654595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017271.P16549421429603654595

`(10*n)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017271

/-- `(10*n)^3` -/
def P16549421429603654595.Spec : Prop :=
  ∀ n, (P16549421429603654595.a n : ℤ) = A017271 n

theorem P16549421429603654595.correct : P16549421429603654595.Spec := by
  intro n
  simp only [A017271]

end A017271

/-!
# A017272: a(n) = (10*n)^4.

The programs for A017272, the canonical program `A017272.P8974056215948890356` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017272 has offset 0).

The definition of A017272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n)^4` (program `A017272.P8974056215948890356`, by `A017272.P8974056215948890356.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017272.P8974056215948890356

`(10*n)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017272

/-- `(10*n)^4` -/
def P8974056215948890356.Spec : Prop :=
  ∀ n, (P8974056215948890356.a n : ℤ) = A017272 n

theorem P8974056215948890356.correct : P8974056215948890356.Spec := by
  intro n
  simp only [A017272]

end A017272

/-!
# A017273: a(n) = (10*n)^5.

The programs for A017273, the canonical program `A017273.P12940113345597604896` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017273 has offset 0).

The definition of A017273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n)^5` (program `A017273.P12940113345597604896`, by `A017273.P12940113345597604896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017273.P12940113345597604896

`(10*n)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017273

/-- `(10*n)^5` -/
def P12940113345597604896.Spec : Prop :=
  ∀ n, (P12940113345597604896.a n : ℤ) = A017273 n

theorem P12940113345597604896.correct : P12940113345597604896.Spec := by
  intro n
  simp only [A017273]

end A017273

/-!
# A017274: a(n) = (10*n)^6.

The programs for A017274, the canonical program `A017274.P10142580079484378051` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017274 has offset 0).

The definition of A017274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n)^6` (program `A017274.P10142580079484378051`, by `A017274.P10142580079484378051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017274.P10142580079484378051

`(10*n)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017274

/-- `(10*n)^6` -/
def P10142580079484378051.Spec : Prop :=
  ∀ n, (P10142580079484378051.a n : ℤ) = A017274 n

theorem P10142580079484378051.correct : P10142580079484378051.Spec := by
  intro n
  simp only [A017274]

end A017274

/-!
# A017275: a(n) = (10*n)^7.

The programs for A017275, the canonical program `A017275.P13585862180731360780` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017275 has offset 0).

The definition of A017275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n)^7` (program `A017275.P13585862180731360780`, by `A017275.P13585862180731360780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017275.P13585862180731360780

`(10*n)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017275

/-- `(10*n)^7` -/
def P13585862180731360780.Spec : Prop :=
  ∀ n, (P13585862180731360780.a n : ℤ) = A017275 n

theorem P13585862180731360780.correct : P13585862180731360780.Spec := by
  intro n
  simp only [A017275]

end A017275

/-!
# A017276: a(n) = (10*n)^8.

The programs for A017276, the canonical program `A017276.P2715959136169741104` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017276 has offset 0).

The definition of A017276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n)^8` (program `A017276.P2715959136169741104`, by `A017276.P2715959136169741104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017276.P2715959136169741104

`(10*n)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017276

/-- `(10*n)^8` -/
def P2715959136169741104.Spec : Prop :=
  ∀ n, (P2715959136169741104.a n : ℤ) = A017276 n

theorem P2715959136169741104.correct : P2715959136169741104.Spec := by
  intro n
  simp only [A017276]

end A017276

/-!
# A017277: a(n) = (10*n)^9.

The programs for A017277, the canonical program `A017277.P1648271785087068667` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017277 has offset 0).

The definition of A017277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n)^9` (program `A017277.P1648271785087068667`, by `A017277.P1648271785087068667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017277.P1648271785087068667

`(10*n)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017277

/-- `(10*n)^9` -/
def P1648271785087068667.Spec : Prop :=
  ∀ n, (P1648271785087068667.a n : ℤ) = A017277 n

theorem P1648271785087068667.correct : P1648271785087068667.Spec := by
  intro n
  simp only [A017277]

end A017277

/-!
# A017278: 

The programs for A017278, there is no canonical definition to state claims against.
-/

/-! ## A017278.P18360808120557876019

`(10*n)^10`
-/

namespace A017278.P18360808120557876019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n) ^ 10

end

end A017278.P18360808120557876019

/-!
# A017279: 

The programs for A017279, there is no canonical definition to state claims against.
-/

/-! ## A017279.P15168969798313375793

`(10*n)^11`
-/

namespace A017279.P15168969798313375793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n) ^ 11

end

end A017279.P15168969798313375793

/-!
# A017280: 

The programs for A017280, there is no canonical definition to state claims against.
-/

/-! ## A017280.P14385373554796804177

`(10*n)^12`
-/

namespace A017280.P14385373554796804177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n) ^ 12

end

end A017280.P14385373554796804177

/-!
# A017281: a(n) = 10*n + 1.

The programs for A017281, the canonical program `A017281.P12372910670058171543` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017281 has offset 0).

The definition of A017281 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n+1` (program `A017281.P12372910670058171543`, by `A017281.P12372910670058171543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017281.P12372910670058171543

`10*n+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017281

/-- `10*n+1` -/
def P12372910670058171543.Spec : Prop :=
  ∀ n, (P12372910670058171543.a n : ℤ) = A017281 n

theorem P12372910670058171543.correct : P12372910670058171543.Spec := by
  intro n
  simp only [A017281]

end A017281

/-!
# A017282: a(n) = (10*n + 1)^2.

The programs for A017282, the canonical program `A017282.P475574155490114698` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017282 has offset 0).

The definition of A017282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+1)²` (program `A017282.P475574155490114698`, by `A017282.P475574155490114698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017282.P475574155490114698

`(10*n+1)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017282

/-- `(10*n+1)²` -/
def P475574155490114698.Spec : Prop :=
  ∀ n, (P475574155490114698.a n : ℤ) = A017282 n

theorem P475574155490114698.correct : P475574155490114698.Spec := by
  intro n
  simp only [A017282]

end A017282

/-! ## A017282.P13978462305943169587

`a(n-1)+40*(5*n-2)` with `a(0)=1`
-/

namespace A017282.P13978462305943169587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 40 * ((5 * n : ℤ) - 2)

end

end A017282.P13978462305943169587

namespace A017282

/-- `a(n-1)+40*(5*n-2)` -/
def P13978462305943169587.Spec : Prop :=
  ∀ n, P13978462305943169587.a n = A017282 n

theorem P13978462305943169587.correct : P13978462305943169587.Spec := by
  intro n
  induction n with
  | zero => simp [A017282, A017282.P13978462305943169587.a, A017282.P475574155490114698.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A017282, Nat.add_sub_cancel, A017282.P13978462305943169587.a, A017282.P475574155490114698.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A017282

/-! ## A017282.P9144187816250205265

`xor(1, 10*n)^2`
-/

namespace A017282.P9144187816250205265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * n) ^ 2

end

end A017282.P9144187816250205265

namespace A017282

/-- `xor(1, 10*n)^2` -/
def P9144187816250205265.Spec : Prop :=
  ∀ n, (P9144187816250205265.a n : ℤ) = A017282 n

end A017282

/-! ## A017282.P9410283323006922453

`or(1, or(1, 10*n)²)`
-/

namespace A017282.P9410283323006922453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (10 * n) ^ 2)

end

end A017282.P9410283323006922453

namespace A017282

/-- `or(1, or(1, 10*n)²)` -/
def P9410283323006922453.Spec : Prop :=
  ∀ n, (P9410283323006922453.a n : ℤ) = A017282 n

end A017282

/-! ## A017282.P11568107833189316977

`record[(gcd(10, 1-n)+n)²]`
-/

namespace A017282.P11568107833189316977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 10 (1 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017282.P11568107833189316977

namespace A017282

/-- `record[(gcd(10, 1-n)+n)²]` -/
def P11568107833189316977.Spec : Prop :=
  ∀ n, (P11568107833189316977.a n : ℤ) = A017282 n

end A017282

/-! ## A017282.P17952258608880241665

`record[gcd(n+1, n%10)²]`
-/

namespace A017282.P17952258608880241665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 10) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017282.P17952258608880241665

namespace A017282

/-- `record[gcd(n+1, n%10)²]` -/
def P17952258608880241665.Spec : Prop :=
  ∀ n, (P17952258608880241665.a n : ℤ) = A017282 n

end A017282

/-! ## A017282.P11016604351569589611

`ceil((sqrt(a(n-1))+10)²)` with `a(0)=1`
-/

namespace A017282.P11016604351569589611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 10) ^ 2⌉

end

end A017282.P11016604351569589611

namespace A017282

/-- `ceil((sqrt(a(n-1))+10)²)` -/
def P11016604351569589611.Spec : Prop :=
  ∀ n, P11016604351569589611.a n = A017282 n

end A017282

/-! ## A017282.P9609857588234643233

`record[(2*n+1)^(gcd(5, n)-3)]`
-/

namespace A017282.P9609857588234643233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((Nat.gcd 5 n : ℤ) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017282.P9609857588234643233

namespace A017282

/-- `record[(2*n+1)^(gcd(5, n)-3)]` -/
def P9609857588234643233.Spec : Prop :=
  ∀ n, P9609857588234643233.a n = (A017282 n : ℚ)

end A017282

/-! ## A017282.P15694024358803763730

`record[(2*n+1)^(2-lcm(5, n)+n)]`
-/

namespace A017282.P15694024358803763730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (2 - (Nat.lcm 5 n : ℤ) + (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017282.P15694024358803763730

namespace A017282

/-- `record[(2*n+1)^(2-lcm(5, n)+n)]` -/
def P15694024358803763730.Spec : Prop :=
  ∀ n, P15694024358803763730.a n = (A017282 n : ℚ)

end A017282

/-! ## A017282.P18301094598300214187

`sqrt(A017284(n))`
-/

namespace A017282.P18301094598300214187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017284 n : ℝ)

end

end A017282.P18301094598300214187

namespace A017282

/-- `sqrt(A017284(n))` -/
def P18301094598300214187.Spec : Prop :=
  ∀ n, P18301094598300214187.a n = (A017282 n : ℝ)

end A017282

/-! ## A017282.P2739969455732568453

`sqrt(sqrt(A017288(n)))`
-/

namespace A017282.P2739969455732568453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017288 n : ℝ))

end

end A017282.P2739969455732568453

namespace A017282

/-- `sqrt(sqrt(A017288(n)))` -/
def P2739969455732568453.Spec : Prop :=
  ∀ n, P2739969455732568453.a n = (A017282 n : ℝ)

end A017282

/-! ## A017282.P7617919823612793814

`A017286(n)^(1/3)`
-/

namespace A017282.P7617919823612793814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017286 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017282.P7617919823612793814

namespace A017282

/-- `A017286(n)^(1/3)` -/
def P7617919823612793814.Spec : Prop :=
  ∀ n, P7617919823612793814.a n = (A017282 n : ℝ)

end A017282

/-! ## A017282.P3282536451961882325

`A017283(n)^(2/3)`
-/

namespace A017282.P3282536451961882325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017283 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017282.P3282536451961882325

namespace A017282

/-- `A017283(n)^(2/3)` -/
def P3282536451961882325.Spec : Prop :=
  ∀ n, P3282536451961882325.a n = (A017282 n : ℝ)

end A017282

/-! ## A017282.P17916373068825090882

`A215145(n)+A017270(n)`
-/

namespace A017282.P17916373068825090882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n + A017270 n

end

end A017282.P17916373068825090882

namespace A017282

/-- `A215145(n)+A017270(n)` -/
def P17916373068825090882.Spec : Prop :=
  ∀ n, P17916373068825090882.a n = A017282 n

theorem P17916373068825090882.correct : P17916373068825090882.Spec := by
  intro n
  simp only [A017282, Nat.add_sub_cancel, A017282.P17916373068825090882.a, A017282.P475574155490114698.a, A017270, A017270.P17011890906423583366.a, A215145, A215145.P202274833192986980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017282

/-! ## A017282.P8715395542330805121

`A161709(n)+A158129(n)`
-/

namespace A017282.P8715395542330805121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A158129 n

end

end A017282.P8715395542330805121

namespace A017282

/-- `A161709(n)+A158129(n)` -/
def P8715395542330805121.Spec : Prop :=
  ∀ n, P8715395542330805121.a n = A017282 n

theorem P8715395542330805121.correct : P8715395542330805121.Spec := by
  intro n
  simp only [A017282, Nat.add_sub_cancel, A017282.P8715395542330805121.a, A017282.P475574155490114698.a, A158129, A158129.P10566472877537967381.a, A161709, A161709.P7473715427958799161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017282

/-! ## A017282.P11890091931949663135

`A323178(n)+A008602(n)`
-/

namespace A017282.P11890091931949663135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323178 n + A008602 n

end

end A017282.P11890091931949663135

namespace A017282

/-- `A323178(n)+A008602(n)` -/
def P11890091931949663135.Spec : Prop :=
  ∀ n, P11890091931949663135.a n = A017282 n

theorem P11890091931949663135.correct : P11890091931949663135.Spec := by
  intro n
  simp only [A017282, Nat.add_sub_cancel, A017282.P11890091931949663135.a, A017282.P475574155490114698.a, A008602, A008602.P10803716924039054280.a, A323178, A323178.P2135116130192440510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017282

/-! ## A017282.P17513131123199832051

`A017281(n)*A017281(n)`
-/

namespace A017282.P17513131123199832051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n * A017281 n

end

end A017282.P17513131123199832051

namespace A017282

/-- `A017281(n)*A017281(n)` -/
def P17513131123199832051.Spec : Prop :=
  ∀ n, P17513131123199832051.a n = A017282 n

theorem P17513131123199832051.correct : P17513131123199832051.Spec := by
  intro n
  simp only [A017282, Nat.add_sub_cancel, A017282.P17513131123199832051.a, A017282.P475574155490114698.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017282

/-! ## A017282.P14572305401396560384

`A017283(n)/A017281(n)`
-/

namespace A017282.P14572305401396560384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017283 n : ℚ) / (A017281 n : ℚ)

end

end A017282.P14572305401396560384

namespace A017282

/-- `A017283(n)/A017281(n)` -/
def P14572305401396560384.Spec : Prop :=
  ∀ n, P14572305401396560384.a n = (A017282 n : ℚ)

end A017282

/-! ## A017282.P363375610013124891

`A017285(n)/A017283(n)`
-/

namespace A017282.P363375610013124891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017285 n : ℚ) / (A017283 n : ℚ)

end

end A017282.P363375610013124891

namespace A017282

/-- `A017285(n)/A017283(n)` -/
def P363375610013124891.Spec : Prop :=
  ∀ n, P363375610013124891.a n = (A017282 n : ℚ)

end A017282

/-! ## A017282.P10584410205144570451

`A017286(n)/A017284(n)`
-/

namespace A017282.P10584410205144570451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017286 n : ℚ) / (A017284 n : ℚ)

end

end A017282.P10584410205144570451

namespace A017282

/-- `A017286(n)/A017284(n)` -/
def P10584410205144570451.Spec : Prop :=
  ∀ n, P10584410205144570451.a n = (A017282 n : ℚ)

end A017282

/-!
# A017283: a(n) = (10*n + 1)^3.

The programs for A017283, the canonical program `A017283.P15161184413553206471` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017283 has offset 0).

The definition of A017283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+1)^3` (program `A017283.P15161184413553206471`, by `A017283.P15161184413553206471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017283.P15161184413553206471

`(10*n+1)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017283

/-- `(10*n+1)^3` -/
def P15161184413553206471.Spec : Prop :=
  ∀ n, (P15161184413553206471.a n : ℤ) = A017283 n

theorem P15161184413553206471.correct : P15161184413553206471.Spec := by
  intro n
  simp only [A017283]

end A017283

/-! ## A017283.P4218857137342052185

`sqrt(A017286(n))`
-/

namespace A017283.P4218857137342052185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017286 n : ℝ)

end

end A017283.P4218857137342052185

namespace A017283

/-- `sqrt(A017286(n))` -/
def P4218857137342052185.Spec : Prop :=
  ∀ n, P4218857137342052185.a n = (A017283 n : ℝ)

end A017283

/-! ## A017283.P15985744088855535821

`sqrt(A017282(n)^3)`
-/

namespace A017283.P15985744088855535821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017282 n ^ 3 : ℝ)

end

end A017283.P15985744088855535821

namespace A017283

/-- `sqrt(A017282(n)^3)` -/
def P15985744088855535821.Spec : Prop :=
  ∀ n, P15985744088855535821.a n = (A017283 n : ℝ)

end A017283

/-! ## A017283.P16921272549957341759

`A017281(n)*(10*n+1)²`
-/

namespace A017283.P16921272549957341759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n * ((10 * n + 1) ^ 2 : ℤ)

end

end A017283.P16921272549957341759

namespace A017283

/-- `A017281(n)*(10*n+1)²` -/
def P16921272549957341759.Spec : Prop :=
  ∀ n, P16921272549957341759.a n = A017283 n

theorem P16921272549957341759.correct : P16921272549957341759.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P16921272549957341759.a, A017283.P15161184413553206471.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P9967364957895185734

`A017284(n)/A017281(n)`
-/

namespace A017283.P9967364957895185734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017284 n : ℚ) / (A017281 n : ℚ)

end

end A017283.P9967364957895185734

namespace A017283

/-- `A017284(n)/A017281(n)` -/
def P9967364957895185734.Spec : Prop :=
  ∀ n, P9967364957895185734.a n = (A017283 n : ℚ)

end A017283

/-! ## A017283.P348936410827709688

`A017285(n)/A017282(n)`
-/

namespace A017283.P348936410827709688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017285 n : ℚ) / (A017282 n : ℚ)

end

end A017283.P348936410827709688

namespace A017283

/-- `A017285(n)/A017282(n)` -/
def P348936410827709688.Spec : Prop :=
  ∀ n, P348936410827709688.a n = (A017283 n : ℚ)

end A017283

/-! ## A017283.P536618879047246982

`A017282(n)²/A017281(n)`
-/

namespace A017283.P536618879047246982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017282 n ^ 2 : ℚ) / (A017281 n : ℚ)

end

end A017283.P536618879047246982

namespace A017283

/-- `A017282(n)²/A017281(n)` -/
def P536618879047246982.Spec : Prop :=
  ∀ n, P536618879047246982.a n = (A017283 n : ℚ)

end A017283

/-! ## A017283.P17415302289932935014

`A017285(n)/A017281(n)²`
-/

namespace A017283.P17415302289932935014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017285 n : ℚ) / (A017281 n ^ 2 : ℚ)

end

end A017283.P17415302289932935014

namespace A017283

/-- `A017285(n)/A017281(n)²` -/
def P17415302289932935014.Spec : Prop :=
  ∀ n, P17415302289932935014.a n = (A017283 n : ℚ)

end A017283

/-! ## A017283.P11355368645001817873

`(A017293(n)-1)*A017282(n)`
-/

namespace A017283.P11355368645001817873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017293 n - 1) * A017282 n

end

end A017283.P11355368645001817873

namespace A017283

/-- `(A017293(n)-1)*A017282(n)` -/
def P11355368645001817873.Spec : Prop :=
  ∀ n, P11355368645001817873.a n = A017283 n

theorem P11355368645001817873.correct : P11355368645001817873.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P11355368645001817873.a, A017283.P15161184413553206471.a, A017282, A017282.P475574155490114698.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P17836633261356143367

`(A017305(n)-2)*A017282(n)`
-/

namespace A017283.P17836633261356143367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017305 n - 2) * A017282 n

end

end A017283.P17836633261356143367

namespace A017283

/-- `(A017305(n)-2)*A017282(n)` -/
def P17836633261356143367.Spec : Prop :=
  ∀ n, P17836633261356143367.a n = A017283 n

theorem P17836633261356143367.correct : P17836633261356143367.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P17836633261356143367.a, A017283.P15161184413553206471.a, A017282, A017282.P475574155490114698.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P12411775237078098111

`(A008592(n)+1)*A017281(n)²`
-/

namespace A017283.P12411775237078098111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008592 n + 1) * A017281 n ^ 2

end

end A017283.P12411775237078098111

namespace A017283

/-- `(A008592(n)+1)*A017281(n)²` -/
def P12411775237078098111.Spec : Prop :=
  ∀ n, P12411775237078098111.a n = A017283 n

theorem P12411775237078098111.correct : P12411775237078098111.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P12411775237078098111.a, A017283.P15161184413553206471.a, A008592, A008592.P4981059802862696142.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P10463279077702978481

`(1-A017293(n))²*A017281(n)`
-/

namespace A017283.P10463279077702978481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A017293 n) ^ 2 * A017281 n

end

end A017283.P10463279077702978481

namespace A017283

/-- `(1-A017293(n))²*A017281(n)` -/
def P10463279077702978481.Spec : Prop :=
  ∀ n, P10463279077702978481.a n = A017283 n

theorem P10463279077702978481.correct : P10463279077702978481.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P10463279077702978481.a, A017283.P15161184413553206471.a, A017281, A017281.P12372910670058171543.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P14100997479846788630

`(A323178(n)+A008602(n))*A017281(n)`
-/

namespace A017283.P14100997479846788630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323178 n + A008602 n) * A017281 n

end

end A017283.P14100997479846788630

namespace A017283

/-- `(A323178(n)+A008602(n))*A017281(n)` -/
def P14100997479846788630.Spec : Prop :=
  ∀ n, P14100997479846788630.a n = A017283 n

theorem P14100997479846788630.correct : P14100997479846788630.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P14100997479846788630.a, A017283.P15161184413553206471.a, A008602, A008602.P10803716924039054280.a, A017281, A017281.P12372910670058171543.a, A323178, A323178.P2135116130192440510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P13965592436816195243

`A017286(n)/(A017281(n)²*A017281(n))`
-/

namespace A017283.P13965592436816195243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017286 n : ℚ) / (A017281 n ^ 2 * A017281 n : ℚ)

end

end A017283.P13965592436816195243

namespace A017283

/-- `A017286(n)/(A017281(n)²*A017281(n))` -/
def P13965592436816195243.Spec : Prop :=
  ∀ n, P13965592436816195243.a n = (A017283 n : ℚ)

end A017283

/-! ## A017283.P9500674218592467375

`Δ[A190816(n)]²*Δ[A190816(n)]`
-/

namespace A017283.P9500674218592467375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017283.P9500674218592467375

namespace A017283

/-- `Δ[A190816(n)]²*Δ[A190816(n)]` -/
def P9500674218592467375.Spec : Prop :=
  ∀ n, P9500674218592467375.a n = A017283 n

theorem P9500674218592467375.correct : P9500674218592467375.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P9500674218592467375.f1, A017283.P9500674218592467375.f2, A017283.P9500674218592467375.a, A017283.P15161184413553206471.a, A190816, A190816.P8283183310090663644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P1907909188939027792

`A016863(2*n)`
-/

namespace A017283.P1907909188939027792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 (2 * n)

end

end A017283.P1907909188939027792

namespace A017283

/-- `A016863(2*n)` -/
def P1907909188939027792.Spec : Prop :=
  ∀ n, P1907909188939027792.a n = A017283 n

theorem P1907909188939027792.correct : P1907909188939027792.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P1907909188939027792.a, A017283.P15161184413553206471.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P5691401514221122285

`A017295(2*n)/8`
-/

namespace A017283.P5691401514221122285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017295 (2 * n) : ℚ) / 8

end

end A017283.P5691401514221122285

namespace A017283

/-- `A017295(2*n)/8` -/
def P5691401514221122285.Spec : Prop :=
  ∀ n, P5691401514221122285.a n = (A017283 n : ℚ)

theorem P5691401514221122285.correct : P5691401514221122285.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P5691401514221122285.a, A017283.P15161184413553206471.a, A017295, A017295.P1533593726141428041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P15642018119702805263

`A016864(2*n)/(10*n+1)`
-/

namespace A017283.P15642018119702805263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 (2 * n) : ℚ) / (10 * n + 1 : ℚ)

end

end A017283.P15642018119702805263

namespace A017283

/-- `A016864(2*n)/(10*n+1)` -/
def P15642018119702805263.Spec : Prop :=
  ∀ n, P15642018119702805263.a n = (A017283 n : ℚ)

theorem P15642018119702805263.correct : P15642018119702805263.Spec := by
  intro n
  simp only [A017283, Nat.add_sub_cancel, A017283.P15642018119702805263.a, A017283.P15161184413553206471.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017283

/-! ## A017283.P18009757211874806606

`sqrt(A016866(2*n))`
-/

namespace A017283.P18009757211874806606
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016866 (2 * n) : ℝ)

end

end A017283.P18009757211874806606

namespace A017283

/-- `sqrt(A016866(2*n))` -/
def P18009757211874806606.Spec : Prop :=
  ∀ n, P18009757211874806606.a n = (A017283 n : ℝ)

end A017283

/-!
# A017284: a(n) = (10*n + 1)^4.

The programs for A017284, the canonical program `A017284.P7981903839667571776` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017284 has offset 0).

The definition of A017284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+1)^4` (program `A017284.P7981903839667571776`, by `A017284.P7981903839667571776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017284.P7981903839667571776

`(10*n+1)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017284

/-- `(10*n+1)^4` -/
def P7981903839667571776.Spec : Prop :=
  ∀ n, (P7981903839667571776.a n : ℤ) = A017284 n

theorem P7981903839667571776.correct : P7981903839667571776.Spec := by
  intro n
  simp only [A017284]

end A017284

/-! ## A017284.P2390437301504244932

`or(1, 10*n)²²`
-/

namespace A017284.P2390437301504244932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (10 * n) ^ 2) ^ 2

end

end A017284.P2390437301504244932

namespace A017284

/-- `or(1, 10*n)²²` -/
def P2390437301504244932.Spec : Prop :=
  ∀ n, (P2390437301504244932.a n : ℤ) = A017284 n

end A017284

/-! ## A017284.P3626117152806014489

`xor(1, 10*n)²²`
-/

namespace A017284.P3626117152806014489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (10 * n) ^ 2) ^ 2

end

end A017284.P3626117152806014489

namespace A017284

/-- `xor(1, 10*n)²²` -/
def P3626117152806014489.Spec : Prop :=
  ∀ n, (P3626117152806014489.a n : ℤ) = A017284 n

end A017284

/-! ## A017284.P7891776606628158047

`∩[2*n+1, a(n-1)+5]²²` with `a(0)=1`
-/

namespace A017284.P7891776606628158047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A017284.P7891776606628158047

namespace A017284

/-- `∩[2*n+1, a(n-1)+5]²²` -/
def P7891776606628158047.Spec : Prop :=
  ∀ n, (P7891776606628158047.a n : ℤ) = A017284 n

end A017284

/-! ## A017284.P9321550213260326546

`A017282(n)²`
-/

namespace A017284.P9321550213260326546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n ^ 2

end

end A017284.P9321550213260326546

namespace A017284

/-- `A017282(n)²` -/
def P9321550213260326546.Spec : Prop :=
  ∀ n, P9321550213260326546.a n = A017284 n

theorem P9321550213260326546.correct : P9321550213260326546.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P9321550213260326546.a, A017284.P7981903839667571776.a, A017282, A017282.P475574155490114698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-! ## A017284.P9940028164848883114

`sqrt(A017288(n))`
-/

namespace A017284.P9940028164848883114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017288 n : ℝ)

end

end A017284.P9940028164848883114

namespace A017284

/-- `sqrt(A017288(n))` -/
def P9940028164848883114.Spec : Prop :=
  ∀ n, P9940028164848883114.a n = (A017284 n : ℝ)

end A017284

/-! ## A017284.P15854399222384538756

`A017281(n)²²`
-/

namespace A017284.P15854399222384538756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017281 n ^ 2) ^ 2

end

end A017284.P15854399222384538756

namespace A017284

/-- `A017281(n)²²` -/
def P15854399222384538756.Spec : Prop :=
  ∀ n, P15854399222384538756.a n = A017284 n

theorem P15854399222384538756.correct : P15854399222384538756.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P15854399222384538756.a, A017284.P7981903839667571776.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-! ## A017284.P14371809430226210298

`(A008592(n)+1)²²`
-/

namespace A017284.P14371809430226210298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008592 n + 1) ^ 2) ^ 2

end

end A017284.P14371809430226210298

namespace A017284

/-- `(A008592(n)+1)²²` -/
def P14371809430226210298.Spec : Prop :=
  ∀ n, P14371809430226210298.a n = A017284 n

theorem P14371809430226210298.correct : P14371809430226210298.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P14371809430226210298.a, A017284.P7981903839667571776.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-! ## A017284.P16628137306939075498

`(1-A017293(n))²²`
-/

namespace A017284.P16628137306939075498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017293 n) ^ 2) ^ 2

end

end A017284.P16628137306939075498

namespace A017284

/-- `(1-A017293(n))²²` -/
def P16628137306939075498.Spec : Prop :=
  ∀ n, P16628137306939075498.a n = A017284 n

theorem P16628137306939075498.correct : P16628137306939075498.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P16628137306939075498.a, A017284.P7981903839667571776.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-! ## A017284.P11402143773291461644

`(2-A017305(n))²²`
-/

namespace A017284.P11402143773291461644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017305 n) ^ 2) ^ 2

end

end A017284.P11402143773291461644

namespace A017284

/-- `(2-A017305(n))²²` -/
def P11402143773291461644.Spec : Prop :=
  ∀ n, P11402143773291461644.a n = A017284 n

theorem P11402143773291461644.correct : P11402143773291461644.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P11402143773291461644.a, A017284.P7981903839667571776.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-! ## A017284.P17444727561048704929

`(3-A017317(n))²²`
-/

namespace A017284.P17444727561048704929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017317 n) ^ 2) ^ 2

end

end A017284.P17444727561048704929

namespace A017284

/-- `(3-A017317(n))²²` -/
def P17444727561048704929.Spec : Prop :=
  ∀ n, P17444727561048704929.a n = A017284 n

theorem P17444727561048704929.correct : P17444727561048704929.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P17444727561048704929.a, A017284.P7981903839667571776.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-! ## A017284.P2776601535251619266

`(A017173(n)+n)²²`
-/

namespace A017284.P2776601535251619266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017173 n + (n : ℤ)) ^ 2) ^ 2

end

end A017284.P2776601535251619266

namespace A017284

/-- `(A017173(n)+n)²²` -/
def P2776601535251619266.Spec : Prop :=
  ∀ n, P2776601535251619266.a n = A017284 n

theorem P2776601535251619266.correct : P2776601535251619266.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P2776601535251619266.a, A017284.P7981903839667571776.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-! ## A017284.P8127166199590745185

`(n-A017401(n))²²`
-/

namespace A017284.P8127166199590745185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017401 n) ^ 2) ^ 2

end

end A017284.P8127166199590745185

namespace A017284

/-- `(n-A017401(n))²²` -/
def P8127166199590745185.Spec : Prop :=
  ∀ n, P8127166199590745185.a n = A017284 n

theorem P8127166199590745185.correct : P8127166199590745185.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P8127166199590745185.a, A017284.P7981903839667571776.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-! ## A017284.P7160868388705213853

`(sqrt(A017270(n))+1)²²`
-/

namespace A017284.P7160868388705213853
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017270 n : ℝ) + 1) ^ 2) ^ 2

end

end A017284.P7160868388705213853

namespace A017284

/-- `(sqrt(A017270(n))+1)²²` -/
def P7160868388705213853.Spec : Prop :=
  ∀ n, P7160868388705213853.a n = (A017284 n : ℝ)

end A017284

/-! ## A017284.P7815089574514198641

`(1-sqrt(A017294(n)))²²`
-/

namespace A017284.P7815089574514198641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017294 n : ℝ)) ^ 2) ^ 2

end

end A017284.P7815089574514198641

namespace A017284

/-- `(1-sqrt(A017294(n)))²²` -/
def P7815089574514198641.Spec : Prop :=
  ∀ n, P7815089574514198641.a n = (A017284 n : ℝ)

end A017284

/-! ## A017284.P13217213271517216986

`(2-sqrt(A017306(n)))²²`
-/

namespace A017284.P13217213271517216986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017306 n : ℝ)) ^ 2) ^ 2

end

end A017284.P13217213271517216986

namespace A017284

/-- `(2-sqrt(A017306(n)))²²` -/
def P13217213271517216986.Spec : Prop :=
  ∀ n, P13217213271517216986.a n = (A017284 n : ℝ)

end A017284

/-! ## A017284.P13419824092182911261

`(sqrt(A017174(n))+n)²²`
-/

namespace A017284.P13419824092182911261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017174 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017284.P13419824092182911261

namespace A017284

/-- `(sqrt(A017174(n))+n)²²` -/
def P13419824092182911261.Spec : Prop :=
  ∀ n, P13419824092182911261.a n = (A017284 n : ℝ)

end A017284

/-! ## A017284.P13050861748164208715

`(n-sqrt(A017402(n)))²²`
-/

namespace A017284.P13050861748164208715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017402 n : ℝ)) ^ 2) ^ 2

end

end A017284.P13050861748164208715

namespace A017284

/-- `(n-sqrt(A017402(n)))²²` -/
def P13050861748164208715.Spec : Prop :=
  ∀ n, P13050861748164208715.a n = (A017284 n : ℝ)

end A017284

/-! ## A017284.P7514556748032114299

`(A008591(n)+n+1)²²`
-/

namespace A017284.P7514556748032114299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008591 n + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017284.P7514556748032114299

namespace A017284

/-- `(A008591(n)+n+1)²²` -/
def P7514556748032114299.Spec : Prop :=
  ∀ n, P7514556748032114299.a n = A017284 n

theorem P7514556748032114299.correct : P7514556748032114299.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P7514556748032114299.a, A017284.P7981903839667571776.a, A008591, A008591.P8937864482545511630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-! ## A017284.P9254781913591831145

`(1-A017413(n)+n)²²`
-/

namespace A017284.P9254781913591831145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017413 n + (n : ℤ)) ^ 2) ^ 2

end

end A017284.P9254781913591831145

namespace A017284

/-- `(1-A017413(n)+n)²²` -/
def P9254781913591831145.Spec : Prop :=
  ∀ n, P9254781913591831145.a n = A017284 n

theorem P9254781913591831145.correct : P9254781913591831145.Spec := by
  intro n
  simp only [A017284, Nat.add_sub_cancel, A017284.P9254781913591831145.a, A017284.P7981903839667571776.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017284

/-!
# A017285: a(n) = (10*n + 1)^5.

The programs for A017285, the canonical program `A017285.P11398861547975282707` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017285 has offset 0).

The definition of A017285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+1)^5` (program `A017285.P11398861547975282707`, by `A017285.P11398861547975282707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017285.P11398861547975282707

`(10*n+1)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017285

/-- `(10*n+1)^5` -/
def P11398861547975282707.Spec : Prop :=
  ∀ n, (P11398861547975282707.a n : ℤ) = A017285 n

theorem P11398861547975282707.correct : P11398861547975282707.Spec := by
  intro n
  simp only [A017285]

end A017285

/-! ## A017285.P4233950612625721487

`sqrt(A017282(n)^5)`
-/

namespace A017285.P4233950612625721487
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017282 n ^ 5 : ℝ)

end

end A017285.P4233950612625721487

namespace A017285

/-- `sqrt(A017282(n)^5)` -/
def P4233950612625721487.Spec : Prop :=
  ∀ n, P4233950612625721487.a n = (A017285 n : ℝ)

end A017285

/-! ## A017285.P2957722076738839377

`(10*n+1)*A017284(n)`
-/

namespace A017285.P2957722076738839377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 1 : ℤ) * A017284 n

end

end A017285.P2957722076738839377

namespace A017285

/-- `(10*n+1)*A017284(n)` -/
def P2957722076738839377.Spec : Prop :=
  ∀ n, P2957722076738839377.a n = A017285 n

theorem P2957722076738839377.correct : P2957722076738839377.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P2957722076738839377.a, A017285.P11398861547975282707.a, A017284, A017284.P7981903839667571776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P4742818312479504453

`A017283(n)*(10*n+1)²`
-/

namespace A017285.P4742818312479504453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017283 n * ((10 * n + 1) ^ 2 : ℤ)

end

end A017285.P4742818312479504453

namespace A017285

/-- `A017283(n)*(10*n+1)²` -/
def P4742818312479504453.Spec : Prop :=
  ∀ n, P4742818312479504453.a n = A017285 n

theorem P4742818312479504453.correct : P4742818312479504453.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P4742818312479504453.a, A017285.P11398861547975282707.a, A017283, A017283.P15161184413553206471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P7695897252058542382

`A017282(n)*A017283(n)`
-/

namespace A017285.P7695897252058542382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n * A017283 n

end

end A017285.P7695897252058542382

namespace A017285

/-- `A017282(n)*A017283(n)` -/
def P7695897252058542382.Spec : Prop :=
  ∀ n, P7695897252058542382.a n = A017285 n

theorem P7695897252058542382.correct : P7695897252058542382.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P7695897252058542382.a, A017285.P11398861547975282707.a, A017282, A017282.P475574155490114698.a, A017283, A017283.P15161184413553206471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P13712598921465308097

`A017286(n)/A017281(n)`
-/

namespace A017285.P13712598921465308097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017286 n : ℚ) / (A017281 n : ℚ)

end

end A017285.P13712598921465308097

namespace A017285

/-- `A017286(n)/A017281(n)` -/
def P13712598921465308097.Spec : Prop :=
  ∀ n, P13712598921465308097.a n = (A017285 n : ℚ)

end A017285

/-! ## A017285.P646285139374283377

`A017281(n)²*A017283(n)`
-/

namespace A017285.P646285139374283377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n ^ 2 * A017283 n

end

end A017285.P646285139374283377

namespace A017285

/-- `A017281(n)²*A017283(n)` -/
def P646285139374283377.Spec : Prop :=
  ∀ n, P646285139374283377.a n = A017285 n

theorem P646285139374283377.correct : P646285139374283377.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P646285139374283377.a, A017285.P11398861547975282707.a, A017281, A017281.P12372910670058171543.a, A017283, A017283.P15161184413553206471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P10335103563784944892

`A017282(n)²*A017281(n)`
-/

namespace A017285.P10335103563784944892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n ^ 2 * A017281 n

end

end A017285.P10335103563784944892

namespace A017285

/-- `A017282(n)²*A017281(n)` -/
def P10335103563784944892.Spec : Prop :=
  ∀ n, P10335103563784944892.a n = A017285 n

theorem P10335103563784944892.correct : P10335103563784944892.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P10335103563784944892.a, A017285.P11398861547975282707.a, A017281, A017281.P12372910670058171543.a, A017282, A017282.P475574155490114698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P7429370638279769798

`A017284(n)²/A017283(n)`
-/

namespace A017285.P7429370638279769798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017284 n ^ 2 : ℚ) / (A017283 n : ℚ)

end

end A017285.P7429370638279769798

namespace A017285

/-- `A017284(n)²/A017283(n)` -/
def P7429370638279769798.Spec : Prop :=
  ∀ n, P7429370638279769798.a n = (A017285 n : ℚ)

end A017285

/-! ## A017285.P7424068460799177865

`(A017293(n)-1)*A017282(n)²`
-/

namespace A017285.P7424068460799177865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017293 n - 1) * A017282 n ^ 2

end

end A017285.P7424068460799177865

namespace A017285

/-- `(A017293(n)-1)*A017282(n)²` -/
def P7424068460799177865.Spec : Prop :=
  ∀ n, P7424068460799177865.a n = A017285 n

theorem P7424068460799177865.correct : P7424068460799177865.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P7424068460799177865.a, A017285.P11398861547975282707.a, A017282, A017282.P475574155490114698.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P15329822930230129409

`(A017305(n)-2)*A017282(n)²`
-/

namespace A017285.P15329822930230129409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017305 n - 2) * A017282 n ^ 2

end

end A017285.P15329822930230129409

namespace A017285

/-- `(A017305(n)-2)*A017282(n)²` -/
def P15329822930230129409.Spec : Prop :=
  ∀ n, P15329822930230129409.a n = A017285 n

theorem P15329822930230129409.correct : P15329822930230129409.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P15329822930230129409.a, A017285.P11398861547975282707.a, A017282, A017282.P475574155490114698.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P3264327027008180431

`(10*n+1)*A016864(2*n)`
-/

namespace A017285.P3264327027008180431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 1 : ℤ) * A016864 (2 * n)

end

end A017285.P3264327027008180431

namespace A017285

/-- `(10*n+1)*A016864(2*n)` -/
def P3264327027008180431.Spec : Prop :=
  ∀ n, P3264327027008180431.a n = A017285 n

theorem P3264327027008180431.correct : P3264327027008180431.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P3264327027008180431.a, A017285.P11398861547975282707.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P3502170821427484080

`A016863(2*n)*A017282(n)`
-/

namespace A017285.P3502170821427484080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 (2 * n) * A017282 n

end

end A017285.P3502170821427484080

namespace A017285

/-- `A016863(2*n)*A017282(n)` -/
def P3502170821427484080.Spec : Prop :=
  ∀ n, P3502170821427484080.a n = A017285 n

theorem P3502170821427484080.correct : P3502170821427484080.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P3502170821427484080.a, A017285.P11398861547975282707.a, A016863, A016863.P8174085331725437101.a, A017282, A017282.P475574155490114698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P18016401625031183020

`A016864(2*n)²/A016863(2*n)`
-/

namespace A017285.P18016401625031183020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 (2 * n) ^ 2 : ℚ) / (A016863 (2 * n) : ℚ)

end

end A017285.P18016401625031183020

namespace A017285

/-- `A016864(2*n)²/A016863(2*n)` -/
def P18016401625031183020.Spec : Prop :=
  ∀ n, P18016401625031183020.a n = (A017285 n : ℚ)

theorem P18016401625031183020.correct : P18016401625031183020.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P18016401625031183020.a, A017285.P11398861547975282707.a, A016863, A016863.P8174085331725437101.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P8961340745410210974

`A016865(2*n)`
-/

namespace A017285.P8961340745410210974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016865 (2 * n)

end

end A017285.P8961340745410210974

namespace A017285

/-- `A016865(2*n)` -/
def P8961340745410210974.Spec : Prop :=
  ∀ n, P8961340745410210974.a n = A017285 n

theorem P8961340745410210974.correct : P8961340745410210974.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P8961340745410210974.a, A017285.P11398861547975282707.a, A016865, A016865.P15075696711859102256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P11496482618496832763

`A016862(2*n)²*A017281(n)`
-/

namespace A017285.P11496482618496832763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 (2 * n) ^ 2 * A017281 n

end

end A017285.P11496482618496832763

namespace A017285

/-- `A016862(2*n)²*A017281(n)` -/
def P11496482618496832763.Spec : Prop :=
  ∀ n, P11496482618496832763.a n = A017285 n

theorem P11496482618496832763.correct : P11496482618496832763.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P11496482618496832763.a, A017285.P11398861547975282707.a, A016862, A016862.P4720776691186821444.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P13549566867875709490

`A016862(2*n)*A016863(2*n)`
-/

namespace A017285.P13549566867875709490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 (2 * n) * A016863 (2 * n)

end

end A017285.P13549566867875709490

namespace A017285

/-- `A016862(2*n)*A016863(2*n)` -/
def P13549566867875709490.Spec : Prop :=
  ∀ n, P13549566867875709490.a n = A017285 n

theorem P13549566867875709490.correct : P13549566867875709490.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P13549566867875709490.a, A017285.P11398861547975282707.a, A016862, A016862.P4720776691186821444.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P7751496313086660088

`A016866(2*n)/A016861(2*n)`
-/

namespace A017285.P7751496313086660088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016866 (2 * n) : ℚ) / (A016861 (2 * n) : ℚ)

end

end A017285.P7751496313086660088

namespace A017285

/-- `A016866(2*n)/A016861(2*n)` -/
def P7751496313086660088.Spec : Prop :=
  ∀ n, P7751496313086660088.a n = (A017285 n : ℚ)

theorem P7751496313086660088.correct : P7751496313086660088.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P7751496313086660088.a, A017285.P11398861547975282707.a, A016861, A016861.P12760207785627616280.a, A016866, A016866.P4617952236870524676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-! ## A017285.P2891197946135890150

`A016867(2*n)/A016862(2*n)`
-/

namespace A017285.P2891197946135890150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 (2 * n) : ℚ) / (A016862 (2 * n) : ℚ)

end

end A017285.P2891197946135890150

namespace A017285

/-- `A016867(2*n)/A016862(2*n)` -/
def P2891197946135890150.Spec : Prop :=
  ∀ n, P2891197946135890150.a n = (A017285 n : ℚ)

theorem P2891197946135890150.correct : P2891197946135890150.Spec := by
  intro n
  simp only [A017285, Nat.add_sub_cancel, A017285.P2891197946135890150.a, A017285.P11398861547975282707.a, A016862, A016862.P4720776691186821444.a, A016867, A016867.P4252928174738916812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017285

/-!
# A017286: a(n) = (10*n + 1)^6.

The programs for A017286, the canonical program `A017286.P16412691481744683594` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017286 has offset 0).

The definition of A017286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+1)^6` (program `A017286.P16412691481744683594`, by `A017286.P16412691481744683594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017286.P16412691481744683594

`(10*n+1)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017286

/-- `(10*n+1)^6` -/
def P16412691481744683594.Spec : Prop :=
  ∀ n, (P16412691481744683594.a n : ℤ) = A017286 n

theorem P16412691481744683594.correct : P16412691481744683594.Spec := by
  intro n
  simp only [A017286]

end A017286

/-! ## A017286.P13835411406600135990

`(or(1, 5*2*n)^3)²`
-/

namespace A017286.P13835411406600135990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (5 * (2 * n)) ^ 3) ^ 2

end

end A017286.P13835411406600135990

namespace A017286

/-- `(or(1, 5*2*n)^3)²` -/
def P13835411406600135990.Spec : Prop :=
  ∀ n, (P13835411406600135990.a n : ℤ) = A017286 n

end A017286

/-! ## A017286.P14514030381504575707

`(xor(1, 5*2*n)^3)²`
-/

namespace A017286.P14514030381504575707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (5 * (2 * n)) ^ 3) ^ 2

end

end A017286.P14514030381504575707

namespace A017286

/-- `(xor(1, 5*2*n)^3)²` -/
def P14514030381504575707.Spec : Prop :=
  ∀ n, (P14514030381504575707.a n : ℤ) = A017286 n

end A017286

/-! ## A017286.P10249893056736194795

`A017283(n)²`
-/

namespace A017286.P10249893056736194795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017283 n ^ 2

end

end A017286.P10249893056736194795

namespace A017286

/-- `A017283(n)²` -/
def P10249893056736194795.Spec : Prop :=
  ∀ n, P10249893056736194795.a n = A017286 n

theorem P10249893056736194795.correct : P10249893056736194795.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P10249893056736194795.a, A017286.P16412691481744683594.a, A017283, A017283.P15161184413553206471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P10102740948440821720

`sqrt(A017284(n)^3)`
-/

namespace A017286.P10102740948440821720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017284 n ^ 3 : ℝ)

end

end A017286.P10102740948440821720

namespace A017286

/-- `sqrt(A017284(n)^3)` -/
def P10102740948440821720.Spec : Prop :=
  ∀ n, P10102740948440821720.a n = (A017286 n : ℝ)

end A017286

/-! ## A017286.P1926970606066053972

`A017281(n)*A017285(n)`
-/

namespace A017286.P1926970606066053972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n * A017285 n

end

end A017286.P1926970606066053972

namespace A017286

/-- `A017281(n)*A017285(n)` -/
def P1926970606066053972.Spec : Prop :=
  ∀ n, P1926970606066053972.a n = A017286 n

theorem P1926970606066053972.correct : P1926970606066053972.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P1926970606066053972.a, A017286.P16412691481744683594.a, A017281, A017281.P12372910670058171543.a, A017285, A017285.P11398861547975282707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P6579695645029104943

`A017282(n)*A017284(n)`
-/

namespace A017286.P6579695645029104943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n * A017284 n

end

end A017286.P6579695645029104943

namespace A017286

/-- `A017282(n)*A017284(n)` -/
def P6579695645029104943.Spec : Prop :=
  ∀ n, P6579695645029104943.a n = A017286 n

theorem P6579695645029104943.correct : P6579695645029104943.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P6579695645029104943.a, A017286.P16412691481744683594.a, A017282, A017282.P475574155490114698.a, A017284, A017284.P7981903839667571776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P5802370722961287498

`(A017281(n)*A017282(n))²`
-/

namespace A017286.P5802370722961287498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017281 n * A017282 n) ^ 2

end

end A017286.P5802370722961287498

namespace A017286

/-- `(A017281(n)*A017282(n))²` -/
def P5802370722961287498.Spec : Prop :=
  ∀ n, P5802370722961287498.a n = A017286 n

theorem P5802370722961287498.correct : P5802370722961287498.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P5802370722961287498.a, A017286.P16412691481744683594.a, A017281, A017281.P12372910670058171543.a, A017282, A017282.P475574155490114698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P3119414012780446167

`A017281(n)²*A017284(n)`
-/

namespace A017286.P3119414012780446167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n ^ 2 * A017284 n

end

end A017286.P3119414012780446167

namespace A017286

/-- `A017281(n)²*A017284(n)` -/
def P3119414012780446167.Spec : Prop :=
  ∀ n, P3119414012780446167.a n = A017286 n

theorem P3119414012780446167.correct : P3119414012780446167.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P3119414012780446167.a, A017286.P16412691481744683594.a, A017281, A017281.P12372910670058171543.a, A017284, A017284.P7981903839667571776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P8343046751176239817

`(A017285(n)/A017282(n))²`
-/

namespace A017286.P8343046751176239817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017285 n : ℚ) / (A017282 n : ℚ)) ^ 2

end

end A017286.P8343046751176239817

namespace A017286

/-- `(A017285(n)/A017282(n))²` -/
def P8343046751176239817.Spec : Prop :=
  ∀ n, P8343046751176239817.a n = (A017286 n : ℚ)

end A017286

/-! ## A017286.P16097263032165612177

`sqrt(sqrt(A017288(n))*A017288(n))`
-/

namespace A017286.P16097263032165612177
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017288 n : ℝ) * (A017288 n : ℝ))

end

end A017286.P16097263032165612177

namespace A017286

/-- `sqrt(sqrt(A017288(n))*A017288(n))` -/
def P16097263032165612177.Spec : Prop :=
  ∀ n, P16097263032165612177.a n = (A017286 n : ℝ)

end A017286

/-! ## A017286.P8764282753876333793

`(Δ[A051624(n)]^3)²`
-/

namespace A017286.P8764282753876333793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017286.P8764282753876333793

namespace A017286

/-- `(Δ[A051624(n)]^3)²` -/
def P8764282753876333793.Spec : Prop :=
  ∀ n, P8764282753876333793.a n = A017286 n

theorem P8764282753876333793.correct : P8764282753876333793.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P8764282753876333793.f1, A017286.P8764282753876333793.a, A017286.P16412691481744683594.a, A051624, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P15046940637902392330

`(Δ[A190816(n)]^3)²`
-/

namespace A017286.P15046940637902392330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017286.P15046940637902392330

namespace A017286

/-- `(Δ[A190816(n)]^3)²` -/
def P15046940637902392330.Spec : Prop :=
  ∀ n, P15046940637902392330.a n = A017286 n

theorem P15046940637902392330.correct : P15046940637902392330.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P15046940637902392330.f1, A017286.P15046940637902392330.a, A017286.P16412691481744683594.a, A190816, A190816.P8283183310090663644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P14865284806303720388

`A016863(2*n)²`
-/

namespace A017286.P14865284806303720388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 (2 * n) ^ 2

end

end A017286.P14865284806303720388

namespace A017286

/-- `A016863(2*n)²` -/
def P14865284806303720388.Spec : Prop :=
  ∀ n, P14865284806303720388.a n = A017286 n

theorem P14865284806303720388.correct : P14865284806303720388.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P14865284806303720388.a, A017286.P16412691481744683594.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P14666670068790165229

`A016864(2*n)*A017282(n)`
-/

namespace A017286.P14666670068790165229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 (2 * n) * A017282 n

end

end A017286.P14666670068790165229

namespace A017286

/-- `A016864(2*n)*A017282(n)` -/
def P14666670068790165229.Spec : Prop :=
  ∀ n, P14666670068790165229.a n = A017286 n

theorem P14666670068790165229.correct : P14666670068790165229.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P14666670068790165229.a, A017286.P16412691481744683594.a, A016864, A016864.P18068450066866692869.a, A017282, A017282.P475574155490114698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P6247226969741892649

`A016866(2*n)`
-/

namespace A017286.P6247226969741892649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016866 (2 * n)

end

end A017286.P6247226969741892649

namespace A017286

/-- `A016866(2*n)` -/
def P6247226969741892649.Spec : Prop :=
  ∀ n, P6247226969741892649.a n = A017286 n

theorem P6247226969741892649.correct : P6247226969741892649.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P6247226969741892649.a, A017286.P16412691481744683594.a, A016866, A016866.P4617952236870524676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P7634855911227953236

`A016861(2*n)*A016865(2*n)`
-/

namespace A017286.P7634855911227953236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * n) * A016865 (2 * n)

end

end A017286.P7634855911227953236

namespace A017286

/-- `A016861(2*n)*A016865(2*n)` -/
def P7634855911227953236.Spec : Prop :=
  ∀ n, P7634855911227953236.a n = A017286 n

theorem P7634855911227953236.correct : P7634855911227953236.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P7634855911227953236.a, A017286.P16412691481744683594.a, A016861, A016861.P12760207785627616280.a, A016865, A016865.P15075696711859102256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P1556908268027540906

`A016862(2*n)*A016864(2*n)`
-/

namespace A017286.P1556908268027540906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 (2 * n) * A016864 (2 * n)

end

end A017286.P1556908268027540906

namespace A017286

/-- `A016862(2*n)*A016864(2*n)` -/
def P1556908268027540906.Spec : Prop :=
  ∀ n, P1556908268027540906.a n = A017286 n

theorem P1556908268027540906.correct : P1556908268027540906.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P1556908268027540906.a, A017286.P16412691481744683594.a, A016862, A016862.P4720776691186821444.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-! ## A017286.P3759094144806024357

`A016867(2*n)/A016861(2*n)`
-/

namespace A017286.P3759094144806024357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 (2 * n) : ℚ) / (A016861 (2 * n) : ℚ)

end

end A017286.P3759094144806024357

namespace A017286

/-- `A016867(2*n)/A016861(2*n)` -/
def P3759094144806024357.Spec : Prop :=
  ∀ n, P3759094144806024357.a n = (A017286 n : ℚ)

theorem P3759094144806024357.correct : P3759094144806024357.Spec := by
  intro n
  simp only [A017286, Nat.add_sub_cancel, A017286.P3759094144806024357.a, A017286.P16412691481744683594.a, A016861, A016861.P12760207785627616280.a, A016867, A016867.P4252928174738916812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017286

/-!
# A017287: a(n) = (10*n + 1)^7.

The programs for A017287, the canonical program `A017287.P10739128866370728225` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017287 has offset 0).

The definition of A017287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+1)^7` (program `A017287.P10739128866370728225`, by `A017287.P10739128866370728225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017287.P10739128866370728225

`(10*n+1)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017287

/-- `(10*n+1)^7` -/
def P10739128866370728225.Spec : Prop :=
  ∀ n, (P10739128866370728225.a n : ℤ) = A017287 n

theorem P10739128866370728225.correct : P10739128866370728225.Spec := by
  intro n
  simp only [A017287]

end A017287

/-! ## A017287.P9913711038083248731

`A017281(n)*A017286(n)`
-/

namespace A017287.P9913711038083248731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n * A017286 n

end

end A017287.P9913711038083248731

namespace A017287

/-- `A017281(n)*A017286(n)` -/
def P9913711038083248731.Spec : Prop :=
  ∀ n, P9913711038083248731.a n = A017287 n

theorem P9913711038083248731.correct : P9913711038083248731.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P9913711038083248731.a, A017287.P10739128866370728225.a, A017281, A017281.P12372910670058171543.a, A017286, A017286.P16412691481744683594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P2395477720250885062

`A017282(n)*A017285(n)`
-/

namespace A017287.P2395477720250885062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n * A017285 n

end

end A017287.P2395477720250885062

namespace A017287

/-- `A017282(n)*A017285(n)` -/
def P2395477720250885062.Spec : Prop :=
  ∀ n, P2395477720250885062.a n = A017287 n

theorem P2395477720250885062.correct : P2395477720250885062.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P2395477720250885062.a, A017287.P10739128866370728225.a, A017282, A017282.P475574155490114698.a, A017285, A017285.P11398861547975282707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P17923072842291654710

`A017283(n)*A017284(n)`
-/

namespace A017287.P17923072842291654710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017283 n * A017284 n

end

end A017287.P17923072842291654710

namespace A017287

/-- `A017283(n)*A017284(n)` -/
def P17923072842291654710.Spec : Prop :=
  ∀ n, P17923072842291654710.a n = A017287 n

theorem P17923072842291654710.correct : P17923072842291654710.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P17923072842291654710.a, A017287.P10739128866370728225.a, A017283, A017283.P15161184413553206471.a, A017284, A017284.P7981903839667571776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P375138424473403623

`A017281(n)²*A017285(n)`
-/

namespace A017287.P375138424473403623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n ^ 2 * A017285 n

end

end A017287.P375138424473403623

namespace A017287

/-- `A017281(n)²*A017285(n)` -/
def P375138424473403623.Spec : Prop :=
  ∀ n, P375138424473403623.a n = A017287 n

theorem P375138424473403623.correct : P375138424473403623.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P375138424473403623.a, A017287.P10739128866370728225.a, A017281, A017281.P12372910670058171543.a, A017285, A017285.P11398861547975282707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P4620167018667826798

`A017282(n)²*A017283(n)`
-/

namespace A017287.P4620167018667826798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n ^ 2 * A017283 n

end

end A017287.P4620167018667826798

namespace A017287

/-- `A017282(n)²*A017283(n)` -/
def P4620167018667826798.Spec : Prop :=
  ∀ n, P4620167018667826798.a n = A017287 n

theorem P4620167018667826798.correct : P4620167018667826798.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P4620167018667826798.a, A017287.P10739128866370728225.a, A017282, A017282.P475574155490114698.a, A017283, A017283.P15161184413553206471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P366865435291390623

`A017283(n)²*A017281(n)`
-/

namespace A017287.P366865435291390623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017283 n ^ 2 * A017281 n

end

end A017287.P366865435291390623

namespace A017287

/-- `A017283(n)²*A017281(n)` -/
def P366865435291390623.Spec : Prop :=
  ∀ n, P366865435291390623.a n = A017287 n

theorem P366865435291390623.correct : P366865435291390623.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P366865435291390623.a, A017287.P10739128866370728225.a, A017281, A017281.P12372910670058171543.a, A017283, A017283.P15161184413553206471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P3687927960212662296

`A017284(n)²/A017281(n)`
-/

namespace A017287.P3687927960212662296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017284 n ^ 2 : ℚ) / (A017281 n : ℚ)

end

end A017287.P3687927960212662296

namespace A017287

/-- `A017284(n)²/A017281(n)` -/
def P3687927960212662296.Spec : Prop :=
  ∀ n, P3687927960212662296.a n = (A017287 n : ℚ)

end A017287

/-! ## A017287.P3388290085975107295

`A017282(n)²²/A017281(n)`
-/

namespace A017287.P3388290085975107295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017282 n ^ 2) ^ 2 : ℚ) / (A017281 n : ℚ)

end

end A017287.P3388290085975107295

namespace A017287

/-- `A017282(n)²²/A017281(n)` -/
def P3388290085975107295.Spec : Prop :=
  ∀ n, P3388290085975107295.a n = (A017287 n : ℚ)

end A017287

/-! ## A017287.P6974955123129302906

`A017285(n)/A017283(n)*A017285(n)`
-/

namespace A017287.P6974955123129302906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017285 n : ℚ) / (A017283 n : ℚ) * (A017285 n : ℚ)

end

end A017287.P6974955123129302906

namespace A017287

/-- `A017285(n)/A017283(n)*A017285(n)` -/
def P6974955123129302906.Spec : Prop :=
  ∀ n, P6974955123129302906.a n = (A017287 n : ℚ)

end A017287

/-! ## A017287.P15051220768511733142

`A016867(2*n)`
-/

namespace A017287.P15051220768511733142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016867 (2 * n)

end

end A017287.P15051220768511733142

namespace A017287

/-- `A016867(2*n)` -/
def P15051220768511733142.Spec : Prop :=
  ∀ n, P15051220768511733142.a n = A017287 n

theorem P15051220768511733142.correct : P15051220768511733142.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P15051220768511733142.a, A017287.P10739128866370728225.a, A016867, A016867.P4252928174738916812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P13674874817454427202

`A016863(2*n)*A016864(2*n)`
-/

namespace A017287.P13674874817454427202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 (2 * n) * A016864 (2 * n)

end

end A017287.P13674874817454427202

namespace A017287

/-- `A016863(2*n)*A016864(2*n)` -/
def P13674874817454427202.Spec : Prop :=
  ∀ n, P13674874817454427202.a n = A017287 n

theorem P13674874817454427202.correct : P13674874817454427202.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P13674874817454427202.a, A017287.P10739128866370728225.a, A016863, A016863.P8174085331725437101.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P3045150088008100876

`A016861(2*n)*A016866(2*n)`
-/

namespace A017287.P3045150088008100876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * n) * A016866 (2 * n)

end

end A017287.P3045150088008100876

namespace A017287

/-- `A016861(2*n)*A016866(2*n)` -/
def P3045150088008100876.Spec : Prop :=
  ∀ n, P3045150088008100876.a n = A017287 n

theorem P3045150088008100876.correct : P3045150088008100876.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P3045150088008100876.a, A017287.P10739128866370728225.a, A016861, A016861.P12760207785627616280.a, A016866, A016866.P4617952236870524676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P13716007834489282171

`A016862(2*n)*A016865(2*n)`
-/

namespace A017287.P13716007834489282171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 (2 * n) * A016865 (2 * n)

end

end A017287.P13716007834489282171

namespace A017287

/-- `A016862(2*n)*A016865(2*n)` -/
def P13716007834489282171.Spec : Prop :=
  ∀ n, P13716007834489282171.a n = A017287 n

theorem P13716007834489282171.correct : P13716007834489282171.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P13716007834489282171.a, A017287.P10739128866370728225.a, A016862, A016862.P4720776691186821444.a, A016865, A016865.P15075696711859102256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P3427714653351013548

`A016868(2*n)/A016861(2*n)`
-/

namespace A017287.P3427714653351013548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016868 (2 * n) : ℚ) / (A016861 (2 * n) : ℚ)

end

end A017287.P3427714653351013548

namespace A017287

/-- `A016868(2*n)/A016861(2*n)` -/
def P3427714653351013548.Spec : Prop :=
  ∀ n, P3427714653351013548.a n = (A017287 n : ℚ)

theorem P3427714653351013548.correct : P3427714653351013548.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P3427714653351013548.a, A017287.P10739128866370728225.a, A016861, A016861.P12760207785627616280.a, A016868, A016868.P5827958273917566203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P11519017420688313513

`A016861(2*n)²*A016865(2*n)`
-/

namespace A017287.P11519017420688313513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * n) ^ 2 * A016865 (2 * n)

end

end A017287.P11519017420688313513

namespace A017287

/-- `A016861(2*n)²*A016865(2*n)` -/
def P11519017420688313513.Spec : Prop :=
  ∀ n, P11519017420688313513.a n = A017287 n

theorem P11519017420688313513.correct : P11519017420688313513.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P11519017420688313513.a, A017287.P10739128866370728225.a, A016861, A016861.P12760207785627616280.a, A016865, A016865.P15075696711859102256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P4884836580174929959

`A016862(2*n)²*A016863(2*n)`
-/

namespace A017287.P4884836580174929959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 (2 * n) ^ 2 * A016863 (2 * n)

end

end A017287.P4884836580174929959

namespace A017287

/-- `A016862(2*n)²*A016863(2*n)` -/
def P4884836580174929959.Spec : Prop :=
  ∀ n, P4884836580174929959.a n = A017287 n

theorem P4884836580174929959.correct : P4884836580174929959.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P4884836580174929959.a, A017287.P10739128866370728225.a, A016862, A016862.P4720776691186821444.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-! ## A017287.P3370219515928962207

`A016863(2*n)²*A016861(2*n)`
-/

namespace A017287.P3370219515928962207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 (2 * n) ^ 2 * A016861 (2 * n)

end

end A017287.P3370219515928962207

namespace A017287

/-- `A016863(2*n)²*A016861(2*n)` -/
def P3370219515928962207.Spec : Prop :=
  ∀ n, P3370219515928962207.a n = A017287 n

theorem P3370219515928962207.correct : P3370219515928962207.Spec := by
  intro n
  simp only [A017287, Nat.add_sub_cancel, A017287.P3370219515928962207.a, A017287.P10739128866370728225.a, A016861, A016861.P12760207785627616280.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017287

/-!
# A017288: a(n) = (10*n + 1)^8.

The programs for A017288, the canonical program `A017288.P464963052930790467` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017288 has offset 0).

The definition of A017288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+1)^8` (program `A017288.P464963052930790467`, by `A017288.P464963052930790467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017288.P464963052930790467

`(10*n+1)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017288

/-- `(10*n+1)^8` -/
def P464963052930790467.Spec : Prop :=
  ∀ n, (P464963052930790467.a n : ℤ) = A017288 n

theorem P464963052930790467.correct : P464963052930790467.Spec := by
  intro n
  simp only [A017288]

end A017288

/-! ## A017288.P3087240211405661234

`(or(1, 5*2*n)^4)²`
-/

namespace A017288.P3087240211405661234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (5 * (2 * n)) ^ 4) ^ 2

end

end A017288.P3087240211405661234

namespace A017288

/-- `(or(1, 5*2*n)^4)²` -/
def P3087240211405661234.Spec : Prop :=
  ∀ n, (P3087240211405661234.a n : ℤ) = A017288 n

end A017288

/-! ## A017288.P1315239531612556160

`(xor(1, 5*2*n)^4)²`
-/

namespace A017288.P1315239531612556160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (5 * (2 * n)) ^ 4) ^ 2

end

end A017288.P1315239531612556160

namespace A017288

/-- `(xor(1, 5*2*n)^4)²` -/
def P1315239531612556160.Spec : Prop :=
  ∀ n, (P1315239531612556160.a n : ℤ) = A017288 n

end A017288

/-! ## A017288.P4307372648818212336

`or(1, 5*2*n)²²²`
-/

namespace A017288.P4307372648818212336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (5 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017288.P4307372648818212336

namespace A017288

/-- `or(1, 5*2*n)²²²` -/
def P4307372648818212336.Spec : Prop :=
  ∀ n, (P4307372648818212336.a n : ℤ) = A017288 n

end A017288

/-! ## A017288.P7425493608471880985

`xor(1, 5*2*n)²²²`
-/

namespace A017288.P7425493608471880985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (5 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017288.P7425493608471880985

namespace A017288

/-- `xor(1, 5*2*n)²²²` -/
def P7425493608471880985.Spec : Prop :=
  ∀ n, (P7425493608471880985.a n : ℤ) = A017288 n

end A017288

/-! ## A017288.P7497443490293239430

`A017284(n)²`
-/

namespace A017288.P7497443490293239430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n ^ 2

end

end A017288.P7497443490293239430

namespace A017288

/-- `A017284(n)²` -/
def P7497443490293239430.Spec : Prop :=
  ∀ n, P7497443490293239430.a n = A017288 n

theorem P7497443490293239430.correct : P7497443490293239430.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P7497443490293239430.a, A017288.P464963052930790467.a, A017284, A017284.P7981903839667571776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P12084173781520977850

`A017282(n)²²`
-/

namespace A017288.P12084173781520977850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017282 n ^ 2) ^ 2

end

end A017288.P12084173781520977850

namespace A017288

/-- `A017282(n)²²` -/
def P12084173781520977850.Spec : Prop :=
  ∀ n, P12084173781520977850.a n = A017288 n

theorem P12084173781520977850.correct : P12084173781520977850.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P12084173781520977850.a, A017288.P464963052930790467.a, A017282, A017282.P475574155490114698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P5446951481685482600

`A017281(n)²²²`
-/

namespace A017288.P5446951481685482600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017281 n ^ 2) ^ 2) ^ 2

end

end A017288.P5446951481685482600

namespace A017288

/-- `A017281(n)²²²` -/
def P5446951481685482600.Spec : Prop :=
  ∀ n, P5446951481685482600.a n = A017288 n

theorem P5446951481685482600.correct : P5446951481685482600.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P5446951481685482600.a, A017288.P464963052930790467.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P2846214595058387862

`(A008592(n)+1)²²²`
-/

namespace A017288.P2846214595058387862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008592 n + 1) ^ 2) ^ 2) ^ 2

end

end A017288.P2846214595058387862

namespace A017288

/-- `(A008592(n)+1)²²²` -/
def P2846214595058387862.Spec : Prop :=
  ∀ n, P2846214595058387862.a n = A017288 n

theorem P2846214595058387862.correct : P2846214595058387862.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P2846214595058387862.a, A017288.P464963052930790467.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P3390940653590272426

`(1-A017293(n))²²²`
-/

namespace A017288.P3390940653590272426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017293 n) ^ 2) ^ 2) ^ 2

end

end A017288.P3390940653590272426

namespace A017288

/-- `(1-A017293(n))²²²` -/
def P3390940653590272426.Spec : Prop :=
  ∀ n, P3390940653590272426.a n = A017288 n

theorem P3390940653590272426.correct : P3390940653590272426.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P3390940653590272426.a, A017288.P464963052930790467.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P11300849197443951173

`(2-A017305(n))²²²`
-/

namespace A017288.P11300849197443951173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017305 n) ^ 2) ^ 2) ^ 2

end

end A017288.P11300849197443951173

namespace A017288

/-- `(2-A017305(n))²²²` -/
def P11300849197443951173.Spec : Prop :=
  ∀ n, P11300849197443951173.a n = A017288 n

theorem P11300849197443951173.correct : P11300849197443951173.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P11300849197443951173.a, A017288.P464963052930790467.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P16452050079317009954

`(A017173(n)+n)²²²`
-/

namespace A017288.P16452050079317009954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017173 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017288.P16452050079317009954

namespace A017288

/-- `(A017173(n)+n)²²²` -/
def P16452050079317009954.Spec : Prop :=
  ∀ n, P16452050079317009954.a n = A017288 n

theorem P16452050079317009954.correct : P16452050079317009954.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P16452050079317009954.a, A017288.P464963052930790467.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P14263134002235805440

`(n-A017401(n))²²²`
-/

namespace A017288.P14263134002235805440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017401 n) ^ 2) ^ 2) ^ 2

end

end A017288.P14263134002235805440

namespace A017288

/-- `(n-A017401(n))²²²` -/
def P14263134002235805440.Spec : Prop :=
  ∀ n, P14263134002235805440.a n = A017288 n

theorem P14263134002235805440.correct : P14263134002235805440.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P14263134002235805440.a, A017288.P464963052930790467.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P12696931450020942419

`A017282(n)*A017286(n)`
-/

namespace A017288.P12696931450020942419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n * A017286 n

end

end A017288.P12696931450020942419

namespace A017288

/-- `A017282(n)*A017286(n)` -/
def P12696931450020942419.Spec : Prop :=
  ∀ n, P12696931450020942419.a n = A017288 n

theorem P12696931450020942419.correct : P12696931450020942419.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P12696931450020942419.a, A017288.P464963052930790467.a, A017282, A017282.P475574155490114698.a, A017286, A017286.P16412691481744683594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P2932289344824677278

`A017283(n)*A017285(n)`
-/

namespace A017288.P2932289344824677278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017283 n * A017285 n

end

end A017288.P2932289344824677278

namespace A017288

/-- `A017283(n)*A017285(n)` -/
def P2932289344824677278.Spec : Prop :=
  ∀ n, P2932289344824677278.a n = A017288 n

theorem P2932289344824677278.correct : P2932289344824677278.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P2932289344824677278.a, A017288.P464963052930790467.a, A017283, A017283.P15161184413553206471.a, A017285, A017285.P11398861547975282707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P13090977646151425583

`A017282(n)*A017283(n)*A017283(n)`
-/

namespace A017288.P13090977646151425583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n * A017283 n * A017283 n

end

end A017288.P13090977646151425583

namespace A017288

/-- `A017282(n)*A017283(n)*A017283(n)` -/
def P13090977646151425583.Spec : Prop :=
  ∀ n, P13090977646151425583.a n = A017288 n

theorem P13090977646151425583.correct : P13090977646151425583.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P13090977646151425583.a, A017288.P464963052930790467.a, A017282, A017282.P475574155490114698.a, A017283, A017283.P15161184413553206471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P17439694630587856065

`Δ[A051624(n)]²²²`
-/

namespace A017288.P17439694630587856065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017288.P17439694630587856065

namespace A017288

/-- `Δ[A051624(n)]²²²` -/
def P17439694630587856065.Spec : Prop :=
  ∀ n, P17439694630587856065.a n = A017288 n

theorem P17439694630587856065.correct : P17439694630587856065.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P17439694630587856065.f1, A017288.P17439694630587856065.a, A017288.P464963052930790467.a, A051624, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P18015608186890113258

`Δ[A190816(n)]²²²`
-/

namespace A017288.P18015608186890113258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017288.P18015608186890113258

namespace A017288

/-- `Δ[A190816(n)]²²²` -/
def P18015608186890113258.Spec : Prop :=
  ∀ n, P18015608186890113258.a n = A017288 n

theorem P18015608186890113258.correct : P18015608186890113258.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P18015608186890113258.f1, A017288.P18015608186890113258.a, A017288.P464963052930790467.a, A190816, A190816.P8283183310090663644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P15976785841654884453

`A016864(2*n)²`
-/

namespace A017288.P15976785841654884453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 (2 * n) ^ 2

end

end A017288.P15976785841654884453

namespace A017288

/-- `A016864(2*n)²` -/
def P15976785841654884453.Spec : Prop :=
  ∀ n, P15976785841654884453.a n = A017288 n

theorem P15976785841654884453.correct : P15976785841654884453.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P15976785841654884453.a, A017288.P464963052930790467.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-! ## A017288.P1782674142657792175

`A016868(2*n)`
-/

namespace A017288.P1782674142657792175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016868 (2 * n)

end

end A017288.P1782674142657792175

namespace A017288

/-- `A016868(2*n)` -/
def P1782674142657792175.Spec : Prop :=
  ∀ n, P1782674142657792175.a n = A017288 n

theorem P1782674142657792175.correct : P1782674142657792175.Spec := by
  intro n
  simp only [A017288, Nat.add_sub_cancel, A017288.P1782674142657792175.a, A017288.P464963052930790467.a, A016868, A016868.P5827958273917566203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017288

/-!
# A017289: a(n) = (10*n + 1)^9.

The programs for A017289, the canonical program `A017289.P3287822326259595669` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017289 has offset 0).

The definition of A017289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+1)^9` (program `A017289.P3287822326259595669`, by `A017289.P3287822326259595669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017289.P3287822326259595669

`(10*n+1)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017289

/-- `(10*n+1)^9` -/
def P3287822326259595669.Spec : Prop :=
  ∀ n, (P3287822326259595669.a n : ℤ) = A017289 n

theorem P3287822326259595669.correct : P3287822326259595669.Spec := by
  intro n
  simp only [A017289]

end A017289

/-! ## A017289.P7387797973731408035

`sqrt(A017286(n)^3)`
-/

namespace A017289.P7387797973731408035
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017286 n ^ 3 : ℝ)

end

end A017289.P7387797973731408035

namespace A017289

/-- `sqrt(A017286(n)^3)` -/
def P7387797973731408035.Spec : Prop :=
  ∀ n, P7387797973731408035.a n = (A017289 n : ℝ)

end A017289

/-! ## A017289.P3762130987956126981

`A017283(n)*A017286(n)`
-/

namespace A017289.P3762130987956126981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017283 n * A017286 n

end

end A017289.P3762130987956126981

namespace A017289

/-- `A017283(n)*A017286(n)` -/
def P3762130987956126981.Spec : Prop :=
  ∀ n, P3762130987956126981.a n = A017289 n

theorem P3762130987956126981.correct : P3762130987956126981.Spec := by
  intro n
  simp only [A017289, Nat.add_sub_cancel, A017289.P3762130987956126981.a, A017289.P3287822326259595669.a, A017283, A017283.P15161184413553206471.a, A017286, A017286.P16412691481744683594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017289

/-! ## A017289.P1992047104441166525

`A017282(n)²²*A017281(n)`
-/

namespace A017289.P1992047104441166525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017282 n ^ 2) ^ 2 * A017281 n

end

end A017289.P1992047104441166525

namespace A017289

/-- `A017282(n)²²*A017281(n)` -/
def P1992047104441166525.Spec : Prop :=
  ∀ n, P1992047104441166525.a n = A017289 n

theorem P1992047104441166525.correct : P1992047104441166525.Spec := by
  intro n
  simp only [A017289, Nat.add_sub_cancel, A017289.P1992047104441166525.a, A017289.P3287822326259595669.a, A017281, A017281.P12372910670058171543.a, A017282, A017282.P475574155490114698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017289

/-! ## A017289.P9100667500708601023

`A017284(n)²*sqrt(sqrt(A017284(n)))`
-/

namespace A017289.P9100667500708601023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017284 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017284 n : ℝ))

end

end A017289.P9100667500708601023

namespace A017289

/-- `A017284(n)²*sqrt(sqrt(A017284(n)))` -/
def P9100667500708601023.Spec : Prop :=
  ∀ n, P9100667500708601023.a n = (A017289 n : ℝ)

end A017289

/-! ## A017289.P11134556504911927257

`A016869(2*n)`
-/

namespace A017289.P11134556504911927257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016869 (2 * n)

end

end A017289.P11134556504911927257

namespace A017289

/-- `A016869(2*n)` -/
def P11134556504911927257.Spec : Prop :=
  ∀ n, P11134556504911927257.a n = A017289 n

theorem P11134556504911927257.correct : P11134556504911927257.Spec := by
  intro n
  simp only [A017289, Nat.add_sub_cancel, A017289.P11134556504911927257.a, A017289.P3287822326259595669.a, A016869, A016869.P8261051290482480769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017289

/-! ## A017289.P11896366500647906474

`A016761(5*n)`
-/

namespace A017289.P11896366500647906474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (5 * n)

end

end A017289.P11896366500647906474

namespace A017289

/-- `A016761(5*n)` -/
def P11896366500647906474.Spec : Prop :=
  ∀ n, P11896366500647906474.a n = A017289 n

theorem P11896366500647906474.correct : P11896366500647906474.Spec := by
  intro n
  simp only [A017289, Nat.add_sub_cancel, A017289.P11896366500647906474.a, A017289.P3287822326259595669.a, A016761, A016761.P2892480136193022373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017289

/-! ## A017289.P17848183751605824995

`A001017(A017281(n))`
-/

namespace A017289.P17848183751605824995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017281 n).toNat

end

end A017289.P17848183751605824995

namespace A017289

/-- `A001017(A017281(n))` -/
def P17848183751605824995.Spec : Prop :=
  ∀ n, P17848183751605824995.a n = A017289 n

end A017289

/-! ## A017289.P9326962643933226970

`A001017(A017293(n)-1)`
-/

namespace A017289.P9326962643933226970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017293 n - 1).toNat

end

end A017289.P9326962643933226970

namespace A017289

/-- `A001017(A017293(n)-1)` -/
def P9326962643933226970.Spec : Prop :=
  ∀ n, P9326962643933226970.a n = A017289 n

end A017289

/-! ## A017289.P9428807173021451909

`A001017(A017305(n)-2)`
-/

namespace A017289.P9428807173021451909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017305 n - 2).toNat

end

end A017289.P9428807173021451909

namespace A017289

/-- `A001017(A017305(n)-2)` -/
def P9428807173021451909.Spec : Prop :=
  ∀ n, P9428807173021451909.a n = A017289 n

end A017289

/-! ## A017289.P7511736177878054109

`A001017(A008587(2*n)+1)`
-/

namespace A017289.P7511736177878054109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008587 (2 * n) + 1).toNat

end

end A017289.P7511736177878054109

namespace A017289

/-- `A001017(A008587(2*n)+1)` -/
def P7511736177878054109.Spec : Prop :=
  ∀ n, P7511736177878054109.a n = A017289 n

end A017289

/-! ## A017289.P7693524706877260301

`A001017(A017293(2*n)/2)`
-/

namespace A017289.P7693524706877260301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (SequenceMachineLib.roundAway ((A017293 (2 * n) : ℚ) / 2)).toNat

end

end A017289.P7693524706877260301

namespace A017289

/-- `A001017(A017293(2*n)/2)` -/
def P7693524706877260301.Spec : Prop :=
  ∀ n, P7693524706877260301.a n = A017289 n

end A017289

/-! ## A017289.P13705618830107878131

`A001017(A017533(n)-2*n)`
-/

namespace A017289.P13705618830107878131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017533 n - (2 * n : ℤ)).toNat

end

end A017289.P13705618830107878131

namespace A017289

/-- `A001017(A017533(n)-2*n)` -/
def P13705618830107878131.Spec : Prop :=
  ∀ n, P13705618830107878131.a n = A017289 n

end A017289

/-! ## A017289.P16959742099194282251

`A001017(A017533(n)-n-n)`
-/

namespace A017289.P16959742099194282251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017533 n - (n : ℤ) - (n : ℤ)).toNat

end

end A017289.P16959742099194282251

namespace A017289

/-- `A001017(A017533(n)-n-n)` -/
def P16959742099194282251.Spec : Prop :=
  ∀ n, P16959742099194282251.a n = A017289 n

end A017289

/-! ## A017289.P17755865919535739094

`A001017(A008585(A008585(n))+n+1)`
-/

namespace A017289.P17755865919535739094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008585 (A008585 n).toNat + (n + 1 : ℤ)).toNat

end

end A017289.P17755865919535739094

namespace A017289

/-- `A001017(A008585(A008585(n))+n+1)` -/
def P17755865919535739094.Spec : Prop :=
  ∀ n, P17755865919535739094.a n = A017289 n

end A017289

/-!
# A017290: 

The programs for A017290, there is no canonical definition to state claims against.
-/

/-! ## A017290.P9294275726391205657

`(10*n+1)^10`
-/

namespace A017290.P9294275726391205657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 1) ^ 10

end

end A017290.P9294275726391205657

/-! ## A017290.P13106679238442809188

`A017285(n)²`
-/

namespace A017290.P13106679238442809188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017285 n ^ 2

end

end A017290.P13106679238442809188

/-! ## A017290.P732789637052205443

`sqrt(A017284(n)^5)`
-/

namespace A017290.P732789637052205443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017284 n ^ 5 : ℝ)

end

end A017290.P732789637052205443

/-! ## A017290.P7361747267128454451

`(A017282(n)*A017283(n))²`
-/

namespace A017290.P7361747267128454451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017282 n * A017283 n) ^ 2

end

end A017290.P7361747267128454451

/-! ## A017290.P12459799591709108018

`(A017281(n)²*A017283(n))²`
-/

namespace A017290.P12459799591709108018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017281 n ^ 2 * A017283 n) ^ 2

end

end A017290.P12459799591709108018

/-! ## A017290.P15241633611074647306

`(A017282(n)²*A017281(n))²`
-/

namespace A017290.P15241633611074647306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017282 n ^ 2 * A017281 n) ^ 2

end

end A017290.P15241633611074647306

/-! ## A017290.P8357357624656362399

`sqrt(sqrt(A017288(n)))*A017288(n)`
-/

namespace A017290.P8357357624656362399
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017288 n : ℝ)) * (A017288 n : ℝ)

end

end A017290.P8357357624656362399

/-! ## A017290.P3107349978131306611

`A016870(2*n)`
-/

namespace A017290.P3107349978131306611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016870 (2 * n)

end

end A017290.P3107349978131306611

/-! ## A017290.P8111788940249820054

`A016865(2*n)²`
-/

namespace A017290.P8111788940249820054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016865 (2 * n) ^ 2

end

end A017290.P8111788940249820054

/-! ## A017290.P2967854849742679115

`(A016862(2*n)*A016863(2*n))²`
-/

namespace A017290.P2967854849742679115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016862 (2 * n) * A016863 (2 * n)) ^ 2

end

end A017290.P2967854849742679115

/-! ## A017290.P16075128083383535238

`A016762(5*n)`
-/

namespace A017290.P16075128083383535238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016762 (5 * n)

end

end A017290.P16075128083383535238

/-! ## A017290.P11278532772871427419

`A016757(5*n)²`
-/

namespace A017290.P11278532772871427419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016757 (5 * n) ^ 2

end

end A017290.P11278532772871427419

/-!
# A017291: 

The programs for A017291, there is no canonical definition to state claims against.
-/

/-! ## A017291.P6114010945205990617

`(10*n+1)^11`
-/

namespace A017291.P6114010945205990617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 1) ^ 11

end

end A017291.P6114010945205990617

/-! ## A017291.P2761586229450431606

`A017282(n)²²*A017283(n)`
-/

namespace A017291.P2761586229450431606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017282 n ^ 2) ^ 2 * A017283 n

end

end A017291.P2761586229450431606

/-! ## A017291.P16755676518426350156

`A017283(n)²²/A017281(n)`
-/

namespace A017291.P16755676518426350156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017283 n ^ 2) ^ 2 : ℚ) / (A017281 n : ℚ)

end

end A017291.P16755676518426350156

/-! ## A017291.P16339390953403195106

`A016864(2*n)²*A016863(2*n)`
-/

namespace A017291.P16339390953403195106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 (2 * n) ^ 2 * A016863 (2 * n)

end

end A017291.P16339390953403195106

/-! ## A017291.P15828115433841283873

`A016862(2*n)²²*A016863(2*n)`
-/

namespace A017291.P15828115433841283873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016862 (2 * n) ^ 2) ^ 2 * A016863 (2 * n)

end

end A017291.P15828115433841283873

/-! ## A017291.P9194512698875120722

`A016863(2*n)²²/A016861(2*n)`
-/

namespace A017291.P9194512698875120722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016863 (2 * n) ^ 2) ^ 2 : ℚ) / (A016861 (2 * n) : ℚ)

end

end A017291.P9194512698875120722

/-! ## A017291.P9362329688295056989

`A016763(5*n)`
-/

namespace A017291.P9362329688295056989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (5 * n)

end

end A017291.P9362329688295056989

/-! ## A017291.P10315341637935289783

`A008455(A017281(n))`
-/

namespace A017291.P10315341637935289783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n).toNat

end

end A017291.P10315341637935289783

/-! ## A017291.P756579447248734651

`A008455(A008591(n)+1+n)`
-/

namespace A017291.P756579447248734651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008591 n + 1 + (n : ℤ)).toNat

end

end A017291.P756579447248734651

/-! ## A017291.P366195406280921641

`A008455(A008593(n)+1-n)`
-/

namespace A017291.P366195406280921641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008593 n + (1 - (n : ℤ))).toNat

end

end A017291.P366195406280921641

/-! ## A017291.P6688185176616119272

`A008455(1-(n-A008593(n)))`
-/

namespace A017291.P6688185176616119272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (1 - ((n : ℤ) - A008593 n)).toNat

end

end A017291.P6688185176616119272

/-! ## A017291.P2215137710119649851

`A008455(A017533(n)-2*n)`
-/

namespace A017291.P2215137710119649851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017533 n - (2 * n : ℤ)).toNat

end

end A017291.P2215137710119649851

/-! ## A017291.P11634448463492903291

`A008455(A017533(n)-n-n)`
-/

namespace A017291.P11634448463492903291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017533 n - (n : ℤ) - (n : ℤ)).toNat

end

end A017291.P11634448463492903291

/-! ## A017291.P8785908247080569861

`A008455(A008585(A008585(n))+n+1)`
-/

namespace A017291.P8785908247080569861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (A008585 n).toNat + (n + 1 : ℤ)).toNat

end

end A017291.P8785908247080569861

/-!
# A017292: 

The programs for A017292, there is no canonical definition to state claims against.
-/

/-! ## A017292.P9017339593725300508

`(10*n+1)^12`
-/

namespace A017292.P9017339593725300508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 1) ^ 12

end

end A017292.P9017339593725300508

/-! ## A017292.P749470596916995398

`A017286(n)²`
-/

namespace A017292.P749470596916995398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017286 n ^ 2

end

end A017292.P749470596916995398

/-! ## A017292.P4723851713318225130

`(A017281(n)^6)²`
-/

namespace A017292.P4723851713318225130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017281 n ^ 6) ^ 2

end

end A017292.P4723851713318225130

/-! ## A017292.P6773163125487559057

`sqrt(A017288(n))*A017288(n)`
-/

namespace A017292.P6773163125487559057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017288 n : ℝ) * (A017288 n : ℝ)

end

end A017292.P6773163125487559057

/-! ## A017292.P182282379976761397

`(A017281(n)*A017282(n))²²`
-/

namespace A017292.P182282379976761397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017281 n * A017282 n) ^ 2) ^ 2

end

end A017292.P182282379976761397

/-! ## A017292.P3979122421582785511

`(A273372(2*n+1)²*A273372(2*n+1))²`
-/

namespace A017292.P3979122421582785511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273372 (2 * n + 1) ^ 2 * A273372 (2 * n + 1)) ^ 2

end

end A017292.P3979122421582785511

/-! ## A017292.P11908381249366099334

`A016764(5*n)`
-/

namespace A017292.P11908381249366099334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (5 * n)

end

end A017292.P11908381249366099334

/-! ## A017292.P16278223659353283069

`A016758(5*n)²`
-/

namespace A017292.P16278223659353283069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 (5 * n) ^ 2

end

end A017292.P16278223659353283069

/-! ## A017292.P6617763764809951288

`sqrt(A017288(n)^3)`
-/

namespace A017292.P6617763764809951288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017288 n ^ 3 : ℝ)

end

end A017292.P6617763764809951288

/-! ## A017292.P15696134248945451959

`A000578(A017293(n)-1)²²`
-/

namespace A017292.P15696134248945451959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017293 n - 1).toNat ^ 2) ^ 2

end

end A017292.P15696134248945451959

/-! ## A017292.P14071116971559177216

`A000578(A017305(n)-2)²²`
-/

namespace A017292.P14071116971559177216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017305 n - 2).toNat ^ 2) ^ 2

end

end A017292.P14071116971559177216

/-!
# A017293: a(n) = 10*n + 2.

The programs for A017293, the canonical program `A017293.P18006279673560884615` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017293 has offset 0).

The definition of A017293 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n+2` (program `A017293.P18006279673560884615`, by `A017293.P18006279673560884615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017293.P18006279673560884615

`10*n+2`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017293

/-- `10*n+2` -/
def P18006279673560884615.Spec : Prop :=
  ∀ n, (P18006279673560884615.a n : ℤ) = A017293 n

theorem P18006279673560884615.correct : P18006279673560884615.Spec := by
  intro n
  simp only [A017293]

end A017293

/-!
# A017294: a(n) = (10*n + 2)^2.

The programs for A017294, the canonical program `A017294.P377073045484030866` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017294 has offset 0).

The definition of A017294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+2)²` (program `A017294.P377073045484030866`, by `A017294.P377073045484030866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017294.P377073045484030866

`(10*n+2)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017294

/-- `(10*n+2)²` -/
def P377073045484030866.Spec : Prop :=
  ∀ n, (P377073045484030866.a n : ℤ) = A017294 n

theorem P377073045484030866.correct : P377073045484030866.Spec := by
  intro n
  simp only [A017294]

end A017294

/-! ## A017294.P13763843751813358377

`a(n-1)+200*n-60` with `a(0)=4`
-/

namespace A017294.P13763843751813358377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (200 * n : ℤ) - 60

end

end A017294.P13763843751813358377

namespace A017294

/-- `a(n-1)+200*n-60` -/
def P13763843751813358377.Spec : Prop :=
  ∀ n, P13763843751813358377.a n = A017294 n

theorem P13763843751813358377.correct : P13763843751813358377.Spec := by
  intro n
  induction n with
  | zero => simp [A017294, A017294.P13763843751813358377.a, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A017294, Nat.add_sub_cancel, A017294.P13763843751813358377.a, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A017294

/-! ## A017294.P10897916422126234746

`A016874(2*n)`
-/

namespace A017294.P10897916422126234746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 (2 * n)

end

end A017294.P10897916422126234746

namespace A017294

/-- `A016874(2*n)` -/
def P10897916422126234746.Spec : Prop :=
  ∀ n, P10897916422126234746.a n = A017294 n

theorem P10897916422126234746.correct : P10897916422126234746.Spec := by
  intro n
  simp only [A017294, Nat.add_sub_cancel, A017294.P10897916422126234746.a, A017294.P377073045484030866.a, A016874, A016874.P17500456718272948104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017294

/-! ## A017294.P1219418379046705644

`record[(gcd(10, 2-n)+n)²]`
-/

namespace A017294.P1219418379046705644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 10 (2 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017294.P1219418379046705644

namespace A017294

/-- `record[(gcd(10, 2-n)+n)²]` -/
def P1219418379046705644.Spec : Prop :=
  ∀ n, (P1219418379046705644.a n : ℤ) = A017294 n

end A017294

/-! ## A017294.P10698824282653006961

`record[gcd(n+2, n%10)²]`
-/

namespace A017294.P10698824282653006961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (n % 10) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017294.P10698824282653006961

namespace A017294

/-- `record[gcd(n+2, n%10)²]` -/
def P10698824282653006961.Spec : Prop :=
  ∀ n, (P10698824282653006961.a n : ℤ) = A017294 n

end A017294

/-! ## A017294.P14963068244705474542

`4*lt[lcm(5, 1-n), n]²`
-/

namespace A017294.P14963068244705474542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A017294.P14963068244705474542

namespace A017294

/-- `4*lt[lcm(5, 1-n), n]²` -/
def P14963068244705474542.Spec : Prop :=
  ∀ n, (P14963068244705474542.a n : ℤ) = A017294 n

end A017294

/-! ## A017294.P1918303140812170738

`ratio[a(n-1)-5]²*a(n-1)` with `a(0)=4`
-/

namespace A017294.P1918303140812170738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ 2 * a (n - 1)

end

end A017294.P1918303140812170738

namespace A017294

/-- `ratio[a(n-1)-5]²*a(n-1)` -/
def P1918303140812170738.Spec : Prop :=
  ∀ n, P1918303140812170738.a n = (A017294 n : ℚ)

end A017294

/-! ## A017294.P1426324542150395642

`sqrt(A017296(n))`
-/

namespace A017294.P1426324542150395642
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017296 n : ℝ)

end

end A017294.P1426324542150395642

namespace A017294

/-- `sqrt(A017296(n))` -/
def P1426324542150395642.Spec : Prop :=
  ∀ n, P1426324542150395642.a n = (A017294 n : ℝ)

end A017294

/-! ## A017294.P1699093318994840175

`4*A016862(n)`
-/

namespace A017294.P1699093318994840175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016862 n

end

end A017294.P1699093318994840175

namespace A017294

/-- `4*A016862(n)` -/
def P1699093318994840175.Spec : Prop :=
  ∀ n, P1699093318994840175.a n = A017294 n

theorem P1699093318994840175.correct : P1699093318994840175.Spec := by
  intro n
  simp only [A017294, Nat.add_sub_cancel, A017294.P1699093318994840175.a, A017294.P377073045484030866.a, A016862, A016862.P4720776691186821444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017294

/-! ## A017294.P10500819867177189532

`sqrt(sqrt(A017300(n)))`
-/

namespace A017294.P10500819867177189532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017300 n : ℝ))

end

end A017294.P10500819867177189532

namespace A017294

/-- `sqrt(sqrt(A017300(n)))` -/
def P10500819867177189532.Spec : Prop :=
  ∀ n, P10500819867177189532.a n = (A017294 n : ℝ)

end A017294

/-! ## A017294.P11452564312510354843

`4*A016861(n)²`
-/

namespace A017294.P11452564312510354843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016861 n ^ 2

end

end A017294.P11452564312510354843

namespace A017294

/-- `4*A016861(n)²` -/
def P11452564312510354843.Spec : Prop :=
  ∀ n, P11452564312510354843.a n = A017294 n

theorem P11452564312510354843.correct : P11452564312510354843.Spec := by
  intro n
  simp only [A017294, Nat.add_sub_cancel, A017294.P11452564312510354843.a, A017294.P377073045484030866.a, A016861, A016861.P12760207785627616280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017294

/-! ## A017294.P11191292571846024213

`4*sqrt(A016864(n))`
-/

namespace A017294.P11191292571846024213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016864 n : ℝ)

end

end A017294.P11191292571846024213

namespace A017294

/-- `4*sqrt(A016864(n))` -/
def P11191292571846024213.Spec : Prop :=
  ∀ n, P11191292571846024213.a n = (A017294 n : ℝ)

end A017294

/-! ## A017294.P10582946627931797821

`5*A381196(n)-1`
-/

namespace A017294.P10582946627931797821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A381196 n - 1

end

end A017294.P10582946627931797821

namespace A017294

/-- `5*A381196(n)-1` -/
def P10582946627931797821.Spec : Prop :=
  ∀ n, P10582946627931797821.a n = A017294 n

theorem P10582946627931797821.correct : P10582946627931797821.Spec := by
  intro n
  simp only [A017294, Nat.add_sub_cancel, A017294.P10582946627931797821.a, A017294.P377073045484030866.a, A381196, A381196.P2799879096650830800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017294

/-! ## A017294.P677086519291530775

`A017298(n)^(1/3)`
-/

namespace A017294.P677086519291530775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017298 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017294.P677086519291530775

namespace A017294

/-- `A017298(n)^(1/3)` -/
def P677086519291530775.Spec : Prop :=
  ∀ n, P677086519291530775.a n = (A017294 n : ℝ)

end A017294

/-! ## A017294.P12667288170078329014

`A017295(n)^(2/3)`
-/

namespace A017294.P12667288170078329014
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017295 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017294.P12667288170078329014

namespace A017294

/-- `A017295(n)^(2/3)` -/
def P12667288170078329014.Spec : Prop :=
  ∀ n, P12667288170078329014.a n = (A017294 n : ℝ)

end A017294

/-! ## A017294.P1076474735111888100

`A139245(n+1)²/4`
-/

namespace A017294.P1076474735111888100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139245 (n + 1) ^ 2 : ℚ) / 4

end

end A017294.P1076474735111888100

namespace A017294

/-- `A139245(n+1)²/4` -/
def P1076474735111888100.Spec : Prop :=
  ∀ n, P1076474735111888100.a n = (A017294 n : ℚ)

theorem P1076474735111888100.correct : P1076474735111888100.Spec := by
  intro n
  simp only [A017294, Nat.add_sub_cancel, A017294.P1076474735111888100.a, A017294.P377073045484030866.a, A139245, A139245.P8764148854706106174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017294

/-! ## A017294.P16517870687314120841

`A017354(n)-A053743(n)`
-/

namespace A017294.P16517870687314120841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 n - A053743 n

end

end A017294.P16517870687314120841

namespace A017294

/-- `A017354(n)-A053743(n)` -/
def P16517870687314120841.Spec : Prop :=
  ∀ n, P16517870687314120841.a n = A017294 n

theorem P16517870687314120841.correct : P16517870687314120841.Spec := by
  intro n
  simp only [A017294, Nat.add_sub_cancel, A017294.P16517870687314120841.a, A017294.P377073045484030866.a, A017354, A017354.P6363149355192370715.a, A053743, A053743.P1433997258938577713.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017294

/-! ## A017294.P4249484173553615606

`A017293(n)*A017293(n)`
-/

namespace A017294.P4249484173553615606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n * A017293 n

end

end A017294.P4249484173553615606

namespace A017294

/-- `A017293(n)*A017293(n)` -/
def P4249484173553615606.Spec : Prop :=
  ∀ n, P4249484173553615606.a n = A017294 n

theorem P4249484173553615606.correct : P4249484173553615606.Spec := by
  intro n
  simp only [A017294, Nat.add_sub_cancel, A017294.P4249484173553615606.a, A017294.P377073045484030866.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017294

/-! ## A017294.P14654114938547954822

`A017295(n)/A017293(n)`
-/

namespace A017294.P14654114938547954822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017295 n : ℚ) / (A017293 n : ℚ)

end

end A017294.P14654114938547954822

namespace A017294

/-- `A017295(n)/A017293(n)` -/
def P14654114938547954822.Spec : Prop :=
  ∀ n, P14654114938547954822.a n = (A017294 n : ℚ)

end A017294

/-! ## A017294.P9815453283096470437

`A017297(n)/A017295(n)`
-/

namespace A017294.P9815453283096470437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017297 n : ℚ) / (A017295 n : ℚ)

end

end A017294.P9815453283096470437

namespace A017294

/-- `A017297(n)/A017295(n)` -/
def P9815453283096470437.Spec : Prop :=
  ∀ n, P9815453283096470437.a n = (A017294 n : ℚ)

end A017294

/-!
# A017295: a(n) = (10*n + 2)^3.

The programs for A017295, the canonical program `A017295.P1533593726141428041` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017295 has offset 0).

The definition of A017295 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+2)^3` (program `A017295.P1533593726141428041`, by `A017295.P1533593726141428041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017295.P1533593726141428041

`(10*n+2)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017295

/-- `(10*n+2)^3` -/
def P1533593726141428041.Spec : Prop :=
  ∀ n, (P1533593726141428041.a n : ℤ) = A017295 n

theorem P1533593726141428041.correct : P1533593726141428041.Spec := by
  intro n
  simp only [A017295]

end A017295

/-! ## A017295.P5040084255896910701

`8*A016863(n)`
-/

namespace A017295.P5040084255896910701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016863 n

end

end A017295.P5040084255896910701

namespace A017295

/-- `8*A016863(n)` -/
def P5040084255896910701.Spec : Prop :=
  ∀ n, P5040084255896910701.a n = A017295 n

theorem P5040084255896910701.correct : P5040084255896910701.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P5040084255896910701.a, A017295.P1533593726141428041.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P8931365677936583505

`A016875(2*n)`
-/

namespace A017295.P8931365677936583505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 (2 * n)

end

end A017295.P8931365677936583505

namespace A017295

/-- `A016875(2*n)` -/
def P8931365677936583505.Spec : Prop :=
  ∀ n, P8931365677936583505.a n = A017295 n

theorem P8931365677936583505.correct : P8931365677936583505.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P8931365677936583505.a, A017295.P1533593726141428041.a, A016875, A016875.P10633171972771459334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P12433263859115433100

`A000578(10*n+2)`
-/

namespace A017295.P12433263859115433100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (10 * n + 2)

end

end A017295.P12433263859115433100

namespace A017295

/-- `A000578(10*n+2)` -/
def P12433263859115433100.Spec : Prop :=
  ∀ n, P12433263859115433100.a n = A017295 n

end A017295

/-! ## A017295.P10540662236550088630

`sqrt(A017298(n))`
-/

namespace A017295.P10540662236550088630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017298 n : ℝ)

end

end A017295.P10540662236550088630

namespace A017295

/-- `sqrt(A017298(n))` -/
def P10540662236550088630.Spec : Prop :=
  ∀ n, P10540662236550088630.a n = (A017295 n : ℝ)

end A017295

/-! ## A017295.P6266008484474419565

`sqrt(A017294(n)^3)`
-/

namespace A017295.P6266008484474419565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017294 n ^ 3 : ℝ)

end

end A017295.P6266008484474419565

namespace A017295

/-- `sqrt(A017294(n)^3)` -/
def P6266008484474419565.Spec : Prop :=
  ∀ n, P6266008484474419565.a n = (A017295 n : ℝ)

end A017295

/-! ## A017295.P1852172498763478444

`8*A016861(n)^3`
-/

namespace A017295.P1852172498763478444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016861 n ^ 3

end

end A017295.P1852172498763478444

namespace A017295

/-- `8*A016861(n)^3` -/
def P1852172498763478444.Spec : Prop :=
  ∀ n, P1852172498763478444.a n = A017295 n

theorem P1852172498763478444.correct : P1852172498763478444.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P1852172498763478444.a, A017295.P1533593726141428041.a, A016861, A016861.P12760207785627616280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P13700624149317433695

`8*(A016873(n)-1)^3`
-/

namespace A017295.P13700624149317433695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A016873 n - 1) ^ 3

end

end A017295.P13700624149317433695

namespace A017295

/-- `8*(A016873(n)-1)^3` -/
def P13700624149317433695.Spec : Prop :=
  ∀ n, P13700624149317433695.a n = A017295 n

theorem P13700624149317433695.correct : P13700624149317433695.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P13700624149317433695.a, A017295.P1533593726141428041.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P3467967898856868500

`A017293(n)*A017294(n)`
-/

namespace A017295.P3467967898856868500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n * A017294 n

end

end A017295.P3467967898856868500

namespace A017295

/-- `A017293(n)*A017294(n)` -/
def P3467967898856868500.Spec : Prop :=
  ∀ n, P3467967898856868500.a n = A017295 n

theorem P3467967898856868500.correct : P3467967898856868500.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P3467967898856868500.a, A017295.P1533593726141428041.a, A017293, A017293.P18006279673560884615.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P13702900377289694778

`A017296(n)/A017293(n)`
-/

namespace A017295.P13702900377289694778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017296 n : ℚ) / (A017293 n : ℚ)

end

end A017295.P13702900377289694778

namespace A017295

/-- `A017296(n)/A017293(n)` -/
def P13702900377289694778.Spec : Prop :=
  ∀ n, P13702900377289694778.a n = (A017295 n : ℚ)

end A017295

/-! ## A017295.P1032038715549875415

`A017297(n)/A017294(n)`
-/

namespace A017295.P1032038715549875415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017297 n : ℚ) / (A017294 n : ℚ)

end

end A017295.P1032038715549875415

namespace A017295

/-- `A017297(n)/A017294(n)` -/
def P1032038715549875415.Spec : Prop :=
  ∀ n, P1032038715549875415.a n = (A017295 n : ℚ)

end A017295

/-! ## A017295.P15149603163970238201

`A017297(n)/A017293(n)²`
-/

namespace A017295.P15149603163970238201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017297 n : ℚ) / (A017293 n ^ 2 : ℚ)

end

end A017295.P15149603163970238201

namespace A017295

/-- `A017297(n)/A017293(n)²` -/
def P15149603163970238201.Spec : Prop :=
  ∀ n, P15149603163970238201.a n = (A017295 n : ℚ)

end A017295

/-! ## A017295.P2784932729040870565

`(A017281(n)+1)*A017294(n)`
-/

namespace A017295.P2784932729040870565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017281 n + 1) * A017294 n

end

end A017295.P2784932729040870565

namespace A017295

/-- `(A017281(n)+1)*A017294(n)` -/
def P2784932729040870565.Spec : Prop :=
  ∀ n, P2784932729040870565.a n = A017295 n

theorem P2784932729040870565.correct : P2784932729040870565.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P2784932729040870565.a, A017295.P1533593726141428041.a, A017281, A017281.P12372910670058171543.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P16745114257316928132

`A016862(n)*A139279(n+1)`
-/

namespace A017295.P16745114257316928132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 n * A139279 (n + 1)

end

end A017295.P16745114257316928132

namespace A017295

/-- `A016862(n)*A139279(n+1)` -/
def P16745114257316928132.Spec : Prop :=
  ∀ n, P16745114257316928132.a n = A017295 n

theorem P16745114257316928132.correct : P16745114257316928132.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P16745114257316928132.a, A017295.P1533593726141428041.a, A016862, A016862.P4720776691186821444.a, A139279, A139279.P12774484099064457542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P789507124096923633

`(A017305(n)-1)*A017294(n)`
-/

namespace A017295.P789507124096923633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017305 n - 1) * A017294 n

end

end A017295.P789507124096923633

namespace A017295

/-- `(A017305(n)-1)*A017294(n)` -/
def P789507124096923633.Spec : Prop :=
  ∀ n, P789507124096923633.a n = A017295 n

theorem P789507124096923633.correct : P789507124096923633.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P789507124096923633.a, A017295.P1533593726141428041.a, A017294, A017294.P377073045484030866.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P15639625591153146693

`2*A016861(n)*A017294(n)`
-/

namespace A017295.P15639625591153146693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016861 n * A017294 n)

end

end A017295.P15639625591153146693

namespace A017295

/-- `2*A016861(n)*A017294(n)` -/
def P15639625591153146693.Spec : Prop :=
  ∀ n, P15639625591153146693.a n = A017295 n

theorem P15639625591153146693.correct : P15639625591153146693.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P15639625591153146693.a, A017295.P1533593726141428041.a, A016861, A016861.P12760207785627616280.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P7308333735846416485

`2*A139245(n+1)*A016862(n)`
-/

namespace A017295.P7308333735846416485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139245 (n + 1) * A016862 n

end

end A017295.P7308333735846416485

namespace A017295

/-- `2*A139245(n+1)*A016862(n)` -/
def P7308333735846416485.Spec : Prop :=
  ∀ n, P7308333735846416485.a n = A017295 n

theorem P7308333735846416485.correct : P7308333735846416485.Spec := by
  intro n
  simp only [A017295, Nat.add_sub_cancel, A017295.P7308333735846416485.a, A017295.P1533593726141428041.a, A016862, A016862.P4720776691186821444.a, A139245, A139245.P8764148854706106174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017295

/-! ## A017295.P8835327318476998320

`sqrt((A008592(n)+2)²*(A008592(n)+2)²²)`
-/

namespace A017295.P8835327318476998320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A008592 n + 2) ^ 2 * ((A008592 n + 2) ^ 2) ^ 2 : ℝ)

end

end A017295.P8835327318476998320

namespace A017295

/-- `sqrt((A008592(n)+2)²*(A008592(n)+2)²²)` -/
def P8835327318476998320.Spec : Prop :=
  ∀ n, P8835327318476998320.a n = (A017295 n : ℝ)

end A017295

/-! ## A017295.P5903480674518485417

`A017298(n)/(A017293(n)²*A017293(n))`
-/

namespace A017295.P5903480674518485417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017298 n : ℚ) / (A017293 n ^ 2 * A017293 n : ℚ)

end

end A017295.P5903480674518485417

namespace A017295

/-- `A017298(n)/(A017293(n)²*A017293(n))` -/
def P5903480674518485417.Spec : Prop :=
  ∀ n, P5903480674518485417.a n = (A017295 n : ℚ)

end A017295

/-!
# A017296: a(n) = (10*n + 2)^4.

The programs for A017296, the canonical program `A017296.P1598874217564621727` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017296 has offset 0).

The definition of A017296 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+2)^4` (program `A017296.P1598874217564621727`, by `A017296.P1598874217564621727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017296.P1598874217564621727

`(10*n+2)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017296

/-- `(10*n+2)^4` -/
def P1598874217564621727.Spec : Prop :=
  ∀ n, (P1598874217564621727.a n : ℤ) = A017296 n

theorem P1598874217564621727.correct : P1598874217564621727.Spec := by
  intro n
  simp only [A017296]

end A017296

/-! ## A017296.P14984363417101126435

`xor(10*n, -2)²²`
-/

namespace A017296.P14984363417101126435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (10 * n : ℤ) (-2) ^ 2) ^ 2

end

end A017296.P14984363417101126435

namespace A017296

/-- `xor(10*n, -2)²²` -/
def P14984363417101126435.Spec : Prop :=
  ∀ n, P14984363417101126435.a n = A017296 n

end A017296

/-! ## A017296.P4183748062738446218

`lcm(2, (10*n+2)²²)`
-/

namespace A017296.P4183748062738446218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (((10 * n + 2) ^ 2) ^ 2)

end

end A017296.P4183748062738446218

namespace A017296

/-- `lcm(2, (10*n+2)²²)` -/
def P4183748062738446218.Spec : Prop :=
  ∀ n, (P4183748062738446218.a n : ℤ) = A017296 n

end A017296

/-! ## A017296.P6583289379015056700

`∩[2*n, a(n-1)+5]²²` with `a(0)=2`
-/

namespace A017296.P6583289379015056700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A017296.P6583289379015056700

namespace A017296

/-- `∩[2*n, a(n-1)+5]²²` -/
def P6583289379015056700.Spec : Prop :=
  ∀ n, (P6583289379015056700.a n : ℤ) = A017296 n

end A017296

/-! ## A017296.P3120475654600674360

`Δ[n²+8*C(n, 2)+n]²²`
-/

namespace A017296.P3120475654600674360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (8 * Nat.choose n 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017296.P3120475654600674360

namespace A017296

/-- `Δ[n²+8*C(n, 2)+n]²²` -/
def P3120475654600674360.Spec : Prop :=
  ∀ n, P3120475654600674360.a n = A017296 n

theorem P3120475654600674360.correct : P3120475654600674360.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P3120475654600674360.f1, A017296.P3120475654600674360.a, A017296.P1598874217564621727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P10969262731417647922

`A017294(n)²`
-/

namespace A017296.P10969262731417647922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n ^ 2

end

end A017296.P10969262731417647922

namespace A017296

/-- `A017294(n)²` -/
def P10969262731417647922.Spec : Prop :=
  ∀ n, P10969262731417647922.a n = A017296 n

theorem P10969262731417647922.correct : P10969262731417647922.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P10969262731417647922.a, A017296.P1598874217564621727.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P6021237700527420975

`sqrt(A017300(n))`
-/

namespace A017296.P6021237700527420975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017300 n : ℝ)

end

end A017296.P6021237700527420975

namespace A017296

/-- `sqrt(A017300(n))` -/
def P6021237700527420975.Spec : Prop :=
  ∀ n, P6021237700527420975.a n = (A017296 n : ℝ)

end A017296

/-! ## A017296.P4902658375843449250

`A017293(n)²²`
-/

namespace A017296.P4902658375843449250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017293 n ^ 2) ^ 2

end

end A017296.P4902658375843449250

namespace A017296

/-- `A017293(n)²²` -/
def P4902658375843449250.Spec : Prop :=
  ∀ n, P4902658375843449250.a n = A017296 n

theorem P4902658375843449250.correct : P4902658375843449250.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P4902658375843449250.a, A017296.P1598874217564621727.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P18339714811683359934

`(4*A016862(n))²`
-/

namespace A017296.P18339714811683359934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016862 n) ^ 2

end

end A017296.P18339714811683359934

namespace A017296

/-- `(4*A016862(n))²` -/
def P18339714811683359934.Spec : Prop :=
  ∀ n, P18339714811683359934.a n = A017296 n

theorem P18339714811683359934.correct : P18339714811683359934.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P18339714811683359934.a, A017296.P1598874217564621727.a, A016862, A016862.P4720776691186821444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P7970254411751978214

`4*4*A016864(n)`
-/

namespace A017296.P7970254411751978214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A016864 n)

end

end A017296.P7970254411751978214

namespace A017296

/-- `4*4*A016864(n)` -/
def P7970254411751978214.Spec : Prop :=
  ∀ n, P7970254411751978214.a n = A017296 n

theorem P7970254411751978214.correct : P7970254411751978214.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P7970254411751978214.a, A017296.P1598874217564621727.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P14888300435534197573

`(A017281(n)+1)²²`
-/

namespace A017296.P14888300435534197573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017281 n + 1) ^ 2) ^ 2

end

end A017296.P14888300435534197573

namespace A017296

/-- `(A017281(n)+1)²²` -/
def P14888300435534197573.Spec : Prop :=
  ∀ n, P14888300435534197573.a n = A017296 n

theorem P14888300435534197573.correct : P14888300435534197573.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P14888300435534197573.a, A017296.P1598874217564621727.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P17499029480295604261

`(A008592(n)+2)²²`
-/

namespace A017296.P17499029480295604261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008592 n + 2) ^ 2) ^ 2

end

end A017296.P17499029480295604261

namespace A017296

/-- `(A008592(n)+2)²²` -/
def P17499029480295604261.Spec : Prop :=
  ∀ n, P17499029480295604261.a n = A017296 n

theorem P17499029480295604261.correct : P17499029480295604261.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P17499029480295604261.a, A017296.P1598874217564621727.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P7235019631350259849

`(1-A017305(n))²²`
-/

namespace A017296.P7235019631350259849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017305 n) ^ 2) ^ 2

end

end A017296.P7235019631350259849

namespace A017296

/-- `(1-A017305(n))²²` -/
def P7235019631350259849.Spec : Prop :=
  ∀ n, P7235019631350259849.a n = A017296 n

theorem P7235019631350259849.correct : P7235019631350259849.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P7235019631350259849.a, A017296.P1598874217564621727.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P17996117081442554307

`(2-A017317(n))²²`
-/

namespace A017296.P17996117081442554307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017317 n) ^ 2) ^ 2

end

end A017296.P17996117081442554307

namespace A017296

/-- `(2-A017317(n))²²` -/
def P17996117081442554307.Spec : Prop :=
  ∀ n, P17996117081442554307.a n = A017296 n

theorem P17996117081442554307.correct : P17996117081442554307.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P17996117081442554307.a, A017296.P1598874217564621727.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P18088652367589859753

`(2*A016861(n))²²`
-/

namespace A017296.P18088652367589859753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016861 n) ^ 2) ^ 2

end

end A017296.P18088652367589859753

namespace A017296

/-- `(2*A016861(n))²²` -/
def P18088652367589859753.Spec : Prop :=
  ∀ n, P18088652367589859753.a n = A017296 n

theorem P18088652367589859753.correct : P18088652367589859753.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P18088652367589859753.a, A017296.P1598874217564621727.a, A016861, A016861.P12760207785627616280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P14685715784077741656

`(3-A017329(n))²²`
-/

namespace A017296.P14685715784077741656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017329 n) ^ 2) ^ 2

end

end A017296.P14685715784077741656

namespace A017296

/-- `(3-A017329(n))²²` -/
def P14685715784077741656.Spec : Prop :=
  ∀ n, P14685715784077741656.a n = A017296 n

theorem P14685715784077741656.correct : P14685715784077741656.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P14685715784077741656.a, A017296.P1598874217564621727.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P11675681344975706697

`(A017185(n)+n)²²`
-/

namespace A017296.P11675681344975706697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017185 n + (n : ℤ)) ^ 2) ^ 2

end

end A017296.P11675681344975706697

namespace A017296

/-- `(A017185(n)+n)²²` -/
def P11675681344975706697.Spec : Prop :=
  ∀ n, P11675681344975706697.a n = A017296 n

theorem P11675681344975706697.correct : P11675681344975706697.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P11675681344975706697.a, A017296.P1598874217564621727.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P898571386363452203

`(n-A017413(n))²²`
-/

namespace A017296.P898571386363452203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017413 n) ^ 2) ^ 2

end

end A017296.P898571386363452203

namespace A017296

/-- `(n-A017413(n))²²` -/
def P898571386363452203.Spec : Prop :=
  ∀ n, P898571386363452203.a n = A017296 n

theorem P898571386363452203.correct : P898571386363452203.Spec := by
  intro n
  simp only [A017296, Nat.add_sub_cancel, A017296.P898571386363452203.a, A017296.P1598874217564621727.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017296

/-! ## A017296.P13659835011789615835

`(sqrt(A017282(n))+1)²²`
-/

namespace A017296.P13659835011789615835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017282 n : ℝ) + 1) ^ 2) ^ 2

end

end A017296.P13659835011789615835

namespace A017296

/-- `(sqrt(A017282(n))+1)²²` -/
def P13659835011789615835.Spec : Prop :=
  ∀ n, P13659835011789615835.a n = (A017296 n : ℝ)

end A017296

/-! ## A017296.P18223568342687315562

`(sqrt(A017270(n))+2)²²`
-/

namespace A017296.P18223568342687315562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017270 n : ℝ) + 2) ^ 2) ^ 2

end

end A017296.P18223568342687315562

namespace A017296

/-- `(sqrt(A017270(n))+2)²²` -/
def P18223568342687315562.Spec : Prop :=
  ∀ n, P18223568342687315562.a n = (A017296 n : ℝ)

end A017296

/-!
# A017297: a(n) = (10*n + 2)^5.

The programs for A017297, the canonical program `A017297.P7548638678609786491` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017297 has offset 0).

The definition of A017297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+2)^5` (program `A017297.P7548638678609786491`, by `A017297.P7548638678609786491.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017297.P7548638678609786491

`(10*n+2)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017297

/-- `(10*n+2)^5` -/
def P7548638678609786491.Spec : Prop :=
  ∀ n, (P7548638678609786491.a n : ℤ) = A017297 n

theorem P7548638678609786491.correct : P7548638678609786491.Spec := by
  intro n
  simp only [A017297]

end A017297

/-! ## A017297.P8733365602803675466

`record[(n+2+n)^gcd(5, n)]`
-/

namespace A017297.P8733365602803675466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2 + n) ^ Nat.gcd 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017297.P8733365602803675466

namespace A017297

/-- `record[(n+2+n)^gcd(5, n)]` -/
def P8733365602803675466.Spec : Prop :=
  ∀ n, (P8733365602803675466.a n : ℤ) = A017297 n

end A017297

/-! ## A017297.P17783282805417500366

`sqrt(A017294(n)^5)`
-/

namespace A017297.P17783282805417500366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017294 n ^ 5 : ℝ)

end

end A017297.P17783282805417500366

namespace A017297

/-- `sqrt(A017294(n)^5)` -/
def P17783282805417500366.Spec : Prop :=
  ∀ n, P17783282805417500366.a n = (A017297 n : ℝ)

end A017297

/-! ## A017297.P4417076593500821619

`(10*n+2)*A017296(n)`
-/

namespace A017297.P4417076593500821619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 2 : ℤ) * A017296 n

end

end A017297.P4417076593500821619

namespace A017297

/-- `(10*n+2)*A017296(n)` -/
def P4417076593500821619.Spec : Prop :=
  ∀ n, P4417076593500821619.a n = A017297 n

theorem P4417076593500821619.correct : P4417076593500821619.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P4417076593500821619.a, A017297.P7548638678609786491.a, A017296, A017296.P1598874217564621727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P429464974265567507

`A017298(n)/(10*n+2)`
-/

namespace A017297.P429464974265567507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017298 n : ℚ) / (10 * n + 2 : ℚ)

end

end A017297.P429464974265567507

namespace A017297

/-- `A017298(n)/(10*n+2)` -/
def P429464974265567507.Spec : Prop :=
  ∀ n, P429464974265567507.a n = (A017297 n : ℚ)

end A017297

/-! ## A017297.P1961601231351840653

`A017294(n)*A017295(n)`
-/

namespace A017297.P1961601231351840653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n * A017295 n

end

end A017297.P1961601231351840653

namespace A017297

/-- `A017294(n)*A017295(n)` -/
def P1961601231351840653.Spec : Prop :=
  ∀ n, P1961601231351840653.a n = A017297 n

theorem P1961601231351840653.correct : P1961601231351840653.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P1961601231351840653.a, A017297.P7548638678609786491.a, A017294, A017294.P377073045484030866.a, A017295, A017295.P1533593726141428041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P455093992523422520

`A017293(n)²*A017295(n)`
-/

namespace A017297.P455093992523422520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n ^ 2 * A017295 n

end

end A017297.P455093992523422520

namespace A017297

/-- `A017293(n)²*A017295(n)` -/
def P455093992523422520.Spec : Prop :=
  ∀ n, P455093992523422520.a n = A017297 n

theorem P455093992523422520.correct : P455093992523422520.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P455093992523422520.a, A017297.P7548638678609786491.a, A017293, A017293.P18006279673560884615.a, A017295, A017295.P1533593726141428041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P4922240144324359333

`A017294(n)²*A017293(n)`
-/

namespace A017297.P4922240144324359333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n ^ 2 * A017293 n

end

end A017297.P4922240144324359333

namespace A017297

/-- `A017294(n)²*A017293(n)` -/
def P4922240144324359333.Spec : Prop :=
  ∀ n, P4922240144324359333.a n = A017297 n

theorem P4922240144324359333.correct : P4922240144324359333.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P4922240144324359333.a, A017297.P7548638678609786491.a, A017293, A017293.P18006279673560884615.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P17045967763171390547

`A017296(n)²/A017295(n)`
-/

namespace A017297.P17045967763171390547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017296 n ^ 2 : ℚ) / (A017295 n : ℚ)

end

end A017297.P17045967763171390547

namespace A017297

/-- `A017296(n)²/A017295(n)` -/
def P17045967763171390547.Spec : Prop :=
  ∀ n, P17045967763171390547.a n = (A017297 n : ℚ)

end A017297

/-! ## A017297.P3665279006676839068

`1/A017293(n)*A017298(n)`
-/

namespace A017297.P3665279006676839068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A017293 n : ℚ) * (A017298 n : ℚ)

end

end A017297.P3665279006676839068

namespace A017297

/-- `1/A017293(n)*A017298(n)` -/
def P3665279006676839068.Spec : Prop :=
  ∀ n, P3665279006676839068.a n = (A017297 n : ℚ)

end A017297

/-! ## A017297.P2087636719649990021

`(A017281(n)+1)*A017294(n)²`
-/

namespace A017297.P2087636719649990021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017281 n + 1) * A017294 n ^ 2

end

end A017297.P2087636719649990021

namespace A017297

/-- `(A017281(n)+1)*A017294(n)²` -/
def P2087636719649990021.Spec : Prop :=
  ∀ n, P2087636719649990021.a n = A017297 n

theorem P2087636719649990021.correct : P2087636719649990021.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P2087636719649990021.a, A017297.P7548638678609786491.a, A017281, A017281.P12372910670058171543.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P17487467226781549977

`(A017305(n)-1)*A017294(n)²`
-/

namespace A017297.P17487467226781549977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017305 n - 1) * A017294 n ^ 2

end

end A017297.P17487467226781549977

namespace A017297

/-- `(A017305(n)-1)*A017294(n)²` -/
def P17487467226781549977.Spec : Prop :=
  ∀ n, P17487467226781549977.a n = A017297 n

theorem P17487467226781549977.correct : P17487467226781549977.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P17487467226781549977.a, A017297.P7548638678609786491.a, A017294, A017294.P377073045484030866.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P7391610094750595021

`2*A016861(n)*A017294(n)²`
-/

namespace A017297.P7391610094750595021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016861 n * A017294 n ^ 2

end

end A017297.P7391610094750595021

namespace A017297

/-- `2*A016861(n)*A017294(n)²` -/
def P7391610094750595021.Spec : Prop :=
  ∀ n, P7391610094750595021.a n = A017297 n

theorem P7391610094750595021.correct : P7391610094750595021.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P7391610094750595021.a, A017297.P7548638678609786491.a, A016861, A016861.P12760207785627616280.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P8476493628851486242

`(2*A016862(n))²*A139279(n+1)`
-/

namespace A017297.P8476493628851486242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A016862 n) ^ 2 * A139279 (n + 1)

end

end A017297.P8476493628851486242

namespace A017297

/-- `(2*A016862(n))²*A139279(n+1)` -/
def P8476493628851486242.Spec : Prop :=
  ∀ n, P8476493628851486242.a n = A017297 n

theorem P8476493628851486242.correct : P8476493628851486242.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P8476493628851486242.a, A017297.P7548638678609786491.a, A016862, A016862.P4720776691186821444.a, A139279, A139279.P12774484099064457542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P493505262753087454

`A016877(2*n)`
-/

namespace A017297.P493505262753087454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016877 (2 * n)

end

end A017297.P493505262753087454

namespace A017297

/-- `A016877(2*n)` -/
def P493505262753087454.Spec : Prop :=
  ∀ n, P493505262753087454.a n = A017297 n

theorem P493505262753087454.correct : P493505262753087454.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P493505262753087454.a, A017297.P7548638678609786491.a, A016877, A016877.P4696338323351149343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P1457877727519511632

`record[A016873(n)^A010686(n+1)]`
-/

namespace A017297.P1457877727519511632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016873 n : ℚ) ^ (A010686 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017297.P1457877727519511632

namespace A017297

/-- `record[A016873(n)^A010686(n+1)]` -/
def P1457877727519511632.Spec : Prop :=
  ∀ n, P1457877727519511632.a n = (A017297 n : ℚ)

end A017297

/-! ## A017297.P16166386362076594603

`A017295(n)*A273375(2*n+1)`
-/

namespace A017297.P16166386362076594603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017295 n * A273375 (2 * n + 1)

end

end A017297.P16166386362076594603

namespace A017297

/-- `A017295(n)*A273375(2*n+1)` -/
def P16166386362076594603.Spec : Prop :=
  ∀ n, P16166386362076594603.a n = A017297 n

end A017297

/-! ## A017297.P7060563215506787688

`A016873(2*n)*A016876(2*n)`
-/

namespace A017297.P7060563215506787688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (2 * n) * A016876 (2 * n)

end

end A017297.P7060563215506787688

namespace A017297

/-- `A016873(2*n)*A016876(2*n)` -/
def P7060563215506787688.Spec : Prop :=
  ∀ n, P7060563215506787688.a n = A017297 n

theorem P7060563215506787688.correct : P7060563215506787688.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P7060563215506787688.a, A017297.P7548638678609786491.a, A016873, A016873.P366335242068170250.a, A016876, A016876.P3444311806117056528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-! ## A017297.P14810464670369686303

`A016874(2*n)*A016875(2*n)`
-/

namespace A017297.P14810464670369686303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 (2 * n) * A016875 (2 * n)

end

end A017297.P14810464670369686303

namespace A017297

/-- `A016874(2*n)*A016875(2*n)` -/
def P14810464670369686303.Spec : Prop :=
  ∀ n, P14810464670369686303.a n = A017297 n

theorem P14810464670369686303.correct : P14810464670369686303.Spec := by
  intro n
  simp only [A017297, Nat.add_sub_cancel, A017297.P14810464670369686303.a, A017297.P7548638678609786491.a, A016874, A016874.P17500456718272948104.a, A016875, A016875.P10633171972771459334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017297

/-!
# A017298: a(n) = (10*n + 2)^6.

The programs for A017298, the canonical program `A017298.P17607095530800570329` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017298 has offset 0).

The definition of A017298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+2)^6` (program `A017298.P17607095530800570329`, by `A017298.P17607095530800570329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017298.P17607095530800570329

`(10*n+2)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017298

/-- `(10*n+2)^6` -/
def P17607095530800570329.Spec : Prop :=
  ∀ n, (P17607095530800570329.a n : ℤ) = A017298 n

theorem P17607095530800570329.correct : P17607095530800570329.Spec := by
  intro n
  simp only [A017298]

end A017298

/-! ## A017298.P13213210803033702802

`A017295(n)²`
-/

namespace A017298.P13213210803033702802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017295 n ^ 2

end

end A017298.P13213210803033702802

namespace A017298

/-- `A017295(n)²` -/
def P13213210803033702802.Spec : Prop :=
  ∀ n, P13213210803033702802.a n = A017298 n

theorem P13213210803033702802.correct : P13213210803033702802.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P13213210803033702802.a, A017298.P17607095530800570329.a, A017295, A017295.P1533593726141428041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P8676404697090288053

`(8*A016863(n))²`
-/

namespace A017298.P8676404697090288053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A016863 n) ^ 2

end

end A017298.P8676404697090288053

namespace A017298

/-- `(8*A016863(n))²` -/
def P8676404697090288053.Spec : Prop :=
  ∀ n, P8676404697090288053.a n = A017298 n

theorem P8676404697090288053.correct : P8676404697090288053.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P8676404697090288053.a, A017298.P17607095530800570329.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P9761052577885163640

`(A017293(n)^3)²`
-/

namespace A017298.P9761052577885163640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017293 n ^ 3) ^ 2

end

end A017298.P9761052577885163640

namespace A017298

/-- `(A017293(n)^3)²` -/
def P9761052577885163640.Spec : Prop :=
  ∀ n, P9761052577885163640.a n = A017298 n

theorem P9761052577885163640.correct : P9761052577885163640.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P9761052577885163640.a, A017298.P17607095530800570329.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P14458556751820066207

`sqrt(A017296(n)^3)`
-/

namespace A017298.P14458556751820066207
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017296 n ^ 3 : ℝ)

end

end A017298.P14458556751820066207

namespace A017298

/-- `sqrt(A017296(n)^3)` -/
def P14458556751820066207.Spec : Prop :=
  ∀ n, P14458556751820066207.a n = (A017298 n : ℝ)

end A017298

/-! ## A017298.P10523613312635992814

`A017293(n)*A017297(n)`
-/

namespace A017298.P10523613312635992814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n * A017297 n

end

end A017298.P10523613312635992814

namespace A017298

/-- `A017293(n)*A017297(n)` -/
def P10523613312635992814.Spec : Prop :=
  ∀ n, P10523613312635992814.a n = A017298 n

theorem P10523613312635992814.correct : P10523613312635992814.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P10523613312635992814.a, A017298.P17607095530800570329.a, A017293, A017293.P18006279673560884615.a, A017297, A017297.P7548638678609786491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P8030595326052983838

`A017294(n)*A017296(n)`
-/

namespace A017298.P8030595326052983838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n * A017296 n

end

end A017298.P8030595326052983838

namespace A017298

/-- `A017294(n)*A017296(n)` -/
def P8030595326052983838.Spec : Prop :=
  ∀ n, P8030595326052983838.a n = A017298 n

theorem P8030595326052983838.correct : P8030595326052983838.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P8030595326052983838.a, A017298.P17607095530800570329.a, A017294, A017294.P377073045484030866.a, A017296, A017296.P1598874217564621727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P14061801231068003316

`(A017293(n)*A017294(n))²`
-/

namespace A017298.P14061801231068003316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017293 n * A017294 n) ^ 2

end

end A017298.P14061801231068003316

namespace A017298

/-- `(A017293(n)*A017294(n))²` -/
def P14061801231068003316.Spec : Prop :=
  ∀ n, P14061801231068003316.a n = A017298 n

theorem P14061801231068003316.correct : P14061801231068003316.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P14061801231068003316.a, A017298.P17607095530800570329.a, A017293, A017293.P18006279673560884615.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P14363632664968100042

`A017293(n)²*A017296(n)`
-/

namespace A017298.P14363632664968100042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n ^ 2 * A017296 n

end

end A017298.P14363632664968100042

namespace A017298

/-- `A017293(n)²*A017296(n)` -/
def P14363632664968100042.Spec : Prop :=
  ∀ n, P14363632664968100042.a n = A017298 n

theorem P14363632664968100042.correct : P14363632664968100042.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P14363632664968100042.a, A017298.P17607095530800570329.a, A017293, A017293.P18006279673560884615.a, A017296, A017296.P1598874217564621727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P17393979465665578108

`(A017297(n)/A017294(n))²`
-/

namespace A017298.P17393979465665578108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017297 n : ℚ) / (A017294 n : ℚ)) ^ 2

end

end A017298.P17393979465665578108

namespace A017298

/-- `(A017297(n)/A017294(n))²` -/
def P17393979465665578108.Spec : Prop :=
  ∀ n, P17393979465665578108.a n = (A017298 n : ℚ)

end A017298

/-! ## A017298.P15529265627650126279

`sqrt(sqrt(A017300(n))*A017300(n))`
-/

namespace A017298.P15529265627650126279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017300 n : ℝ) * (A017300 n : ℝ))

end

end A017298.P15529265627650126279

namespace A017298

/-- `sqrt(sqrt(A017300(n))*A017300(n))` -/
def P15529265627650126279.Spec : Prop :=
  ∀ n, P15529265627650126279.a n = (A017298 n : ℝ)

end A017298

/-! ## A017298.P18122797863451342388

`(A016862(n)*A139279(n+1))²`
-/

namespace A017298.P18122797863451342388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016862 n * A139279 (n + 1)) ^ 2

end

end A017298.P18122797863451342388

namespace A017298

/-- `(A016862(n)*A139279(n+1))²` -/
def P18122797863451342388.Spec : Prop :=
  ∀ n, P18122797863451342388.a n = A017298 n

theorem P18122797863451342388.correct : P18122797863451342388.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P18122797863451342388.a, A017298.P17607095530800570329.a, A016862, A016862.P4720776691186821444.a, A139279, A139279.P12774484099064457542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P290916577836865673

`(A008592(n)+2)²*(A008592(n)+2)²²`
-/

namespace A017298.P290916577836865673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008592 n + 2) ^ 2 * ((A008592 n + 2) ^ 2) ^ 2

end

end A017298.P290916577836865673

namespace A017298

/-- `(A008592(n)+2)²*(A008592(n)+2)²²` -/
def P290916577836865673.Spec : Prop :=
  ∀ n, P290916577836865673.a n = A017298 n

theorem P290916577836865673.correct : P290916577836865673.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P290916577836865673.a, A017298.P17607095530800570329.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P4333833279926075180

`(Δ[A135706(n)]^3)²`
-/

namespace A017298.P4333833279926075180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017298.P4333833279926075180

namespace A017298

/-- `(Δ[A135706(n)]^3)²` -/
def P4333833279926075180.Spec : Prop :=
  ∀ n, P4333833279926075180.a n = A017298 n

theorem P4333833279926075180.correct : P4333833279926075180.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P4333833279926075180.f1, A017298.P4333833279926075180.a, A017298.P17607095530800570329.a, A135706, A135706.P11401560679944584335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P3812043287871300991

`A016878(2*n)`
-/

namespace A017298.P3812043287871300991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016878 (2 * n)

end

end A017298.P3812043287871300991

namespace A017298

/-- `A016878(2*n)` -/
def P3812043287871300991.Spec : Prop :=
  ∀ n, P3812043287871300991.a n = A017298 n

theorem P3812043287871300991.correct : P3812043287871300991.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P3812043287871300991.a, A017298.P17607095530800570329.a, A016878, A016878.P5221297515916649507.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P13467637148653481776

`A016863(n)*A017319(2*n)`
-/

namespace A017298.P13467637148653481776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n * A017319 (2 * n)

end

end A017298.P13467637148653481776

namespace A017298

/-- `A016863(n)*A017319(2*n)` -/
def P13467637148653481776.Spec : Prop :=
  ∀ n, P13467637148653481776.a n = A017298 n

theorem P13467637148653481776.correct : P13467637148653481776.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P13467637148653481776.a, A017298.P17607095530800570329.a, A016863, A016863.P8174085331725437101.a, A017319, A017319.P7214915799351479979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P3479054910831809166

`A017322(2*n)/A016746(n+1)*A001014(n+1)`
-/

namespace A017298.P3479054910831809166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017322 (2 * n) : ℚ) / (A016746 (n + 1) : ℚ) * (A001014 (n + 1) : ℚ)

end

end A017298.P3479054910831809166

namespace A017298

/-- `A017322(2*n)/A016746(n+1)*A001014(n+1)` -/
def P3479054910831809166.Spec : Prop :=
  ∀ n, P3479054910831809166.a n = (A017298 n : ℚ)

theorem P3479054910831809166.correct : P3479054910831809166.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P3479054910831809166.a, A017298.P17607095530800570329.a, A001014, A001014.P10270364271630987481.a, A016746, A016746.P14284362242224681843.a, A017322, A017322.P13003129980100266173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P16669579819336075479

`A016875(2*n)²`
-/

namespace A017298.P16669579819336075479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 (2 * n) ^ 2

end

end A017298.P16669579819336075479

namespace A017298

/-- `A016875(2*n)²` -/
def P16669579819336075479.Spec : Prop :=
  ∀ n, P16669579819336075479.a n = A017298 n

theorem P16669579819336075479.correct : P16669579819336075479.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P16669579819336075479.a, A017298.P17607095530800570329.a, A016875, A016875.P10633171972771459334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-! ## A017298.P16063895981643930114

`(A016873(2*n)^3)²`
-/

namespace A017298.P16063895981643930114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016873 (2 * n) ^ 3) ^ 2

end

end A017298.P16063895981643930114

namespace A017298

/-- `(A016873(2*n)^3)²` -/
def P16063895981643930114.Spec : Prop :=
  ∀ n, P16063895981643930114.a n = A017298 n

theorem P16063895981643930114.correct : P16063895981643930114.Spec := by
  intro n
  simp only [A017298, Nat.add_sub_cancel, A017298.P16063895981643930114.a, A017298.P17607095530800570329.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017298

/-!
# A017299: a(n) = (10*n + 2)^7.

The programs for A017299, the canonical program `A017299.P15852325697808707952` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017299 has offset 0).

The definition of A017299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+2)^7` (program `A017299.P15852325697808707952`, by `A017299.P15852325697808707952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017299.P15852325697808707952

`(10*n+2)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017299

/-- `(10*n+2)^7` -/
def P15852325697808707952.Spec : Prop :=
  ∀ n, (P15852325697808707952.a n : ℤ) = A017299 n

theorem P15852325697808707952.correct : P15852325697808707952.Spec := by
  intro n
  simp only [A017299]

end A017299

/-! ## A017299.P6433130494738080680

`(10*n+2)*A017298(n)`
-/

namespace A017299.P6433130494738080680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 2 : ℤ) * A017298 n

end

end A017299.P6433130494738080680

namespace A017299

/-- `(10*n+2)*A017298(n)` -/
def P6433130494738080680.Spec : Prop :=
  ∀ n, P6433130494738080680.a n = A017299 n

theorem P6433130494738080680.correct : P6433130494738080680.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P6433130494738080680.a, A017299.P15852325697808707952.a, A017298, A017298.P17607095530800570329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P4486003590174908819

`A017294(n)*A017297(n)`
-/

namespace A017299.P4486003590174908819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n * A017297 n

end

end A017299.P4486003590174908819

namespace A017299

/-- `A017294(n)*A017297(n)` -/
def P4486003590174908819.Spec : Prop :=
  ∀ n, P4486003590174908819.a n = A017299 n

theorem P4486003590174908819.correct : P4486003590174908819.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P4486003590174908819.a, A017299.P15852325697808707952.a, A017294, A017294.P377073045484030866.a, A017297, A017297.P7548638678609786491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P4015916890868426888

`A017295(n)*A017296(n)`
-/

namespace A017299.P4015916890868426888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017295 n * A017296 n

end

end A017299.P4015916890868426888

namespace A017299

/-- `A017295(n)*A017296(n)` -/
def P4015916890868426888.Spec : Prop :=
  ∀ n, P4015916890868426888.a n = A017299 n

theorem P4015916890868426888.correct : P4015916890868426888.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P4015916890868426888.a, A017299.P15852325697808707952.a, A017295, A017295.P1533593726141428041.a, A017296, A017296.P1598874217564621727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P8489792129767702793

`A017293(n)²*A017297(n)`
-/

namespace A017299.P8489792129767702793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n ^ 2 * A017297 n

end

end A017299.P8489792129767702793

namespace A017299

/-- `A017293(n)²*A017297(n)` -/
def P8489792129767702793.Spec : Prop :=
  ∀ n, P8489792129767702793.a n = A017299 n

theorem P8489792129767702793.correct : P8489792129767702793.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P8489792129767702793.a, A017299.P15852325697808707952.a, A017293, A017293.P18006279673560884615.a, A017297, A017297.P7548638678609786491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P13458091366619299966

`A017294(n)²*A017295(n)`
-/

namespace A017299.P13458091366619299966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n ^ 2 * A017295 n

end

end A017299.P13458091366619299966

namespace A017299

/-- `A017294(n)²*A017295(n)` -/
def P13458091366619299966.Spec : Prop :=
  ∀ n, P13458091366619299966.a n = A017299 n

theorem P13458091366619299966.correct : P13458091366619299966.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P13458091366619299966.a, A017299.P15852325697808707952.a, A017294, A017294.P377073045484030866.a, A017295, A017295.P1533593726141428041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P13463849879224775500

`A017295(n)²*A017293(n)`
-/

namespace A017299.P13463849879224775500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017295 n ^ 2 * A017293 n

end

end A017299.P13463849879224775500

namespace A017299

/-- `A017295(n)²*A017293(n)` -/
def P13463849879224775500.Spec : Prop :=
  ∀ n, P13463849879224775500.a n = A017299 n

theorem P13463849879224775500.correct : P13463849879224775500.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P13463849879224775500.a, A017299.P15852325697808707952.a, A017293, A017293.P18006279673560884615.a, A017295, A017295.P1533593726141428041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P6453098278636465557

`A017296(n)²/A017293(n)`
-/

namespace A017299.P6453098278636465557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017296 n ^ 2 : ℚ) / (A017293 n : ℚ)

end

end A017299.P6453098278636465557

namespace A017299

/-- `A017296(n)²/A017293(n)` -/
def P6453098278636465557.Spec : Prop :=
  ∀ n, P6453098278636465557.a n = (A017299 n : ℚ)

end A017299

/-! ## A017299.P1268590563532428051

`A017294(n)²²/A017293(n)`
-/

namespace A017299.P1268590563532428051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017294 n ^ 2) ^ 2 : ℚ) / (A017293 n : ℚ)

end

end A017299.P1268590563532428051

namespace A017299

/-- `A017294(n)²²/A017293(n)` -/
def P1268590563532428051.Spec : Prop :=
  ∀ n, P1268590563532428051.a n = (A017299 n : ℚ)

end A017299

/-! ## A017299.P11128953053026351130

`A017298(n)*A017305(n)-A017298(n)`
-/

namespace A017299.P11128953053026351130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017298 n * A017305 n - A017298 n

end

end A017299.P11128953053026351130

namespace A017299

/-- `A017298(n)*A017305(n)-A017298(n)` -/
def P11128953053026351130.Spec : Prop :=
  ∀ n, P11128953053026351130.a n = A017299 n

theorem P11128953053026351130.correct : P11128953053026351130.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P11128953053026351130.a, A017299.P15852325697808707952.a, A017298, A017298.P17607095530800570329.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P3918105424300004429

`A017297(n)/A017295(n)*A017297(n)`
-/

namespace A017299.P3918105424300004429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017297 n : ℚ) / (A017295 n : ℚ) * (A017297 n : ℚ)

end

end A017299.P3918105424300004429

namespace A017299

/-- `A017297(n)/A017295(n)*A017297(n)` -/
def P3918105424300004429.Spec : Prop :=
  ∀ n, P3918105424300004429.a n = (A017299 n : ℚ)

end A017299

/-! ## A017299.P13207804452764764768

`A016879(2*n)`
-/

namespace A017299.P13207804452764764768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016879 (2 * n)

end

end A017299.P13207804452764764768

namespace A017299

/-- `A016879(2*n)` -/
def P13207804452764764768.Spec : Prop :=
  ∀ n, P13207804452764764768.a n = A017299 n

theorem P13207804452764764768.correct : P13207804452764764768.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P13207804452764764768.a, A017299.P15852325697808707952.a, A016879, A016879.P9881379482011814406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P17640814426625091675

`A016880(2*n)/(10*n+2)`
-/

namespace A017299.P17640814426625091675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016880 (2 * n) : ℚ) / (10 * n + 2 : ℚ)

end

end A017299.P17640814426625091675

namespace A017299

/-- `A016880(2*n)/(10*n+2)` -/
def P17640814426625091675.Spec : Prop :=
  ∀ n, P17640814426625091675.a n = (A017299 n : ℚ)

theorem P17640814426625091675.correct : P17640814426625091675.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P17640814426625091675.a, A017299.P15852325697808707952.a, A016880, A016880.P10254929196614950629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P1655930166571644244

`A016873(2*n)*A016878(2*n)`
-/

namespace A017299.P1655930166571644244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (2 * n) * A016878 (2 * n)

end

end A017299.P1655930166571644244

namespace A017299

/-- `A016873(2*n)*A016878(2*n)` -/
def P1655930166571644244.Spec : Prop :=
  ∀ n, P1655930166571644244.a n = A017299 n

theorem P1655930166571644244.correct : P1655930166571644244.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P1655930166571644244.a, A017299.P15852325697808707952.a, A016873, A016873.P366335242068170250.a, A016878, A016878.P5221297515916649507.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P9092833875302907904

`A016874(2*n)*A016877(2*n)`
-/

namespace A017299.P9092833875302907904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 (2 * n) * A016877 (2 * n)

end

end A017299.P9092833875302907904

namespace A017299

/-- `A016874(2*n)*A016877(2*n)` -/
def P9092833875302907904.Spec : Prop :=
  ∀ n, P9092833875302907904.a n = A017299 n

theorem P9092833875302907904.correct : P9092833875302907904.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P9092833875302907904.a, A017299.P15852325697808707952.a, A016874, A016874.P17500456718272948104.a, A016877, A016877.P4696338323351149343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P9180121102681967633

`A016875(2*n)*A016876(2*n)`
-/

namespace A017299.P9180121102681967633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 (2 * n) * A016876 (2 * n)

end

end A017299.P9180121102681967633

namespace A017299

/-- `A016875(2*n)*A016876(2*n)` -/
def P9180121102681967633.Spec : Prop :=
  ∀ n, P9180121102681967633.a n = A017299 n

theorem P9180121102681967633.correct : P9180121102681967633.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P9180121102681967633.a, A017299.P15852325697808707952.a, A016875, A016875.P10633171972771459334.a, A016876, A016876.P3444311806117056528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P11691345171936952109

`A016873(2*n)²*A016877(2*n)`
-/

namespace A017299.P11691345171936952109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (2 * n) ^ 2 * A016877 (2 * n)

end

end A017299.P11691345171936952109

namespace A017299

/-- `A016873(2*n)²*A016877(2*n)` -/
def P11691345171936952109.Spec : Prop :=
  ∀ n, P11691345171936952109.a n = A017299 n

theorem P11691345171936952109.correct : P11691345171936952109.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P11691345171936952109.a, A017299.P15852325697808707952.a, A016873, A016873.P366335242068170250.a, A016877, A016877.P4696338323351149343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P5550641566733787989

`A016874(2*n)²*A016875(2*n)`
-/

namespace A017299.P5550641566733787989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 (2 * n) ^ 2 * A016875 (2 * n)

end

end A017299.P5550641566733787989

namespace A017299

/-- `A016874(2*n)²*A016875(2*n)` -/
def P5550641566733787989.Spec : Prop :=
  ∀ n, P5550641566733787989.a n = A017299 n

theorem P5550641566733787989.correct : P5550641566733787989.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P5550641566733787989.a, A017299.P15852325697808707952.a, A016874, A016874.P17500456718272948104.a, A016875, A016875.P10633171972771459334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P3584709492865130850

`A016875(2*n)²*A016873(2*n)`
-/

namespace A017299.P3584709492865130850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 (2 * n) ^ 2 * A016873 (2 * n)

end

end A017299.P3584709492865130850

namespace A017299

/-- `A016875(2*n)²*A016873(2*n)` -/
def P3584709492865130850.Spec : Prop :=
  ∀ n, P3584709492865130850.a n = A017299 n

theorem P3584709492865130850.correct : P3584709492865130850.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P3584709492865130850.a, A017299.P15852325697808707952.a, A016873, A016873.P366335242068170250.a, A016875, A016875.P10633171972771459334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

/-! ## A017299.P12507004972777354082

`A016876(2*n)²/A016873(2*n)`
-/

namespace A017299.P12507004972777354082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016876 (2 * n) ^ 2 : ℚ) / (A016873 (2 * n) : ℚ)

end

end A017299.P12507004972777354082

namespace A017299

/-- `A016876(2*n)²/A016873(2*n)` -/
def P12507004972777354082.Spec : Prop :=
  ∀ n, P12507004972777354082.a n = (A017299 n : ℚ)

theorem P12507004972777354082.correct : P12507004972777354082.Spec := by
  intro n
  simp only [A017299, Nat.add_sub_cancel, A017299.P12507004972777354082.a, A017299.P15852325697808707952.a, A016873, A016873.P366335242068170250.a, A016876, A016876.P3444311806117056528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017299

