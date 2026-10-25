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
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A110801: Numbers k such that 12k + 1 is prime.

The programs for A110801, the canonical program `A110801.P10495732041269564719` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110801 has offset 1).

The definition of A110801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2793 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110801.P7351350374128843883

`floor(∩[A002144(n+1), A002476(n+1)]/12)`
-/

namespace A110801.P7351350374128843883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 12⌋

end

end A110801.P7351350374128843883

namespace A110801

/-- `floor(∩[A002144(n+1), A002476(n+1)]/12)` -/
def P7351350374128843883.Spec : Prop :=
  ∀ n, P7351350374128843883.a n = A110801 (n + 1)

end A110801

/-! ## A110801.P3973061511450021404

`comp[A153383(n+1)]`
-/

namespace A110801.P3973061511450021404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A110801.P3973061511450021404

namespace A110801

/-- `comp[A153383(n+1)]` -/
def P3973061511450021404.Spec : Prop :=
  ∀ n, (P3973061511450021404.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P962005294109151997

`floor(∩[A002144(n+1), A017533(n)]/12)`
-/

namespace A110801.P962005294109151997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 12⌋

end

end A110801.P962005294109151997

namespace A110801

/-- `floor(∩[A002144(n+1), A017533(n)]/12)` -/
def P962005294109151997.Spec : Prop :=
  ∀ n, P962005294109151997.a n = A110801 (n + 1)

end A110801

/-! ## A110801.P10495732041269564719

`floor(∩[A002313(n+1), A017533(n)]/12)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110801

/-- `floor(∩[A002313(n+1), A017533(n)]/12)` -/
def P10495732041269564719.Spec : Prop :=
  ∀ n, P10495732041269564719.a n = A110801 (n + 1)

theorem P10495732041269564719.correct : P10495732041269564719.Spec := by
  intro n
  simp only [A110801, Nat.add_sub_cancel]

end A110801

/-! ## A110801.P12552148754891631129

`floor(∩[A038874(n+1), A017533(n)]/12)`
-/

namespace A110801.P12552148754891631129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 12⌋

end

end A110801.P12552148754891631129

namespace A110801

/-- `floor(∩[A038874(n+1), A017533(n)]/12)` -/
def P12552148754891631129.Spec : Prop :=
  ∀ n, P12552148754891631129.a n = A110801 (n + 1)

end A110801

/-! ## A110801.P12135938831528630983

`floor(∩[A040116(n+1), A017533(n)]/12)`
-/

namespace A110801.P12135938831528630983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 12⌋

end

end A110801.P12135938831528630983

namespace A110801

/-- `floor(∩[A040116(n+1), A017533(n)]/12)` -/
def P12135938831528630983.Spec : Prop :=
  ∀ n, P12135938831528630983.a n = A110801 (n + 1)

end A110801

/-! ## A110801.P4462336893664310753

`floor(∩[A045352(n+1), A017533(n)]/12)`
-/

namespace A110801.P4462336893664310753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 12⌋

end

end A110801.P4462336893664310753

namespace A110801

/-- `floor(∩[A045352(n+1), A017533(n)]/12)` -/
def P4462336893664310753.Spec : Prop :=
  ∀ n, P4462336893664310753.a n = A110801 (n + 1)

end A110801

/-! ## A110801.P231231150279122109

`floor(∩[A059500(n+1), A017533(n)]/12)`
-/

namespace A110801.P231231150279122109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 12⌋

end

end A110801.P231231150279122109

namespace A110801

/-- `floor(∩[A059500(n+1), A017533(n)]/12)` -/
def P231231150279122109.Spec : Prop :=
  ∀ n, P231231150279122109.a n = A110801 (n + 1)

end A110801

/-! ## A110801.P8033356719683016415

`eq[1, A101264(6*n)]`
-/

namespace A110801.P8033356719683016415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110801.P8033356719683016415

namespace A110801

/-- `eq[1, A101264(6*n)]` -/
def P8033356719683016415.Spec : Prop :=
  ∀ n, (P8033356719683016415.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P827729218128588786

`eq[1, A001222(12*n+1)]`
-/

namespace A110801.P827729218128588786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110801.P827729218128588786

namespace A110801

/-- `eq[1, A001222(12*n+1)]` -/
def P827729218128588786.Spec : Prop :=
  ∀ n, (P827729218128588786.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P10223766435322078479

`eq[2, A000005(12*n+1)]`
-/

namespace A110801.P10223766435322078479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110801.P10223766435322078479

namespace A110801

/-- `eq[2, A000005(12*n+1)]` -/
def P10223766435322078479.Spec : Prop :=
  ∀ n, (P10223766435322078479.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P2335260545316688968

`lt[n+3, A020639(10*n+2*n+1)]`
-/

namespace A110801.P2335260545316688968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110801.P2335260545316688968

namespace A110801

/-- `lt[n+3, A020639(10*n+2*n+1)]` -/
def P2335260545316688968.Spec : Prop :=
  ∀ n, (P2335260545316688968.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P16164399918800962750

`eq[1, A156706(A008486(n)+n)]`
-/

namespace A110801.P16164399918800962750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A008486 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110801.P16164399918800962750

namespace A110801

/-- `eq[1, A156706(A008486(n)+n)]` -/
def P16164399918800962750.Spec : Prop :=
  ∀ n, (P16164399918800962750.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P23331947478758811

`eq[1, A072815(2*n)]`
-/

namespace A110801.P23331947478758811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110801.P23331947478758811

namespace A110801

/-- `eq[1, A072815(2*n)]` -/
def P23331947478758811.Spec : Prop :=
  ∀ n, (P23331947478758811.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P17533658864148551943

`eq[1, ∑{e}[A016921(2*n), #]]`
-/

namespace A110801.P17533658864148551943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110801.P17533658864148551943

namespace A110801

/-- `eq[1, ∑{e}[A016921(2*n), #]]` -/
def P17533658864148551943.Spec : Prop :=
  ∀ n, (P17533658864148551943.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P6868073946298027358

`eq[A016921(2*n), A133387(2*n+1)]`
-/

namespace A110801.P6868073946298027358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133387 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110801.P6868073946298027358

namespace A110801

/-- `eq[A016921(2*n), A133387(2*n+1)]` -/
def P6868073946298027358.Spec : Prop :=
  ∀ n, (P6868073946298027358.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P5391333011641387076

`A001617(A068228(n+1))+1`
-/

namespace A110801.P5391333011641387076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A068228 (n + 1)).toNat + 1

end

end A110801.P5391333011641387076

namespace A110801

/-- `A001617(A068228(n+1))+1` -/
def P5391333011641387076.Spec : Prop :=
  ∀ n, P5391333011641387076.a n = A110801 (n + 1)

end A110801

/-! ## A110801.P16118262912139828763

`A001617(p?[A016921(2*n)])+1`
-/

namespace A110801.P16118262912139828763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A110801.P16118262912139828763

namespace A110801

/-- `A001617(p?[A016921(2*n)])+1` -/
def P16118262912139828763.Spec : Prop :=
  ∀ n, P16118262912139828763.a n = A110801 (n + 1)

end A110801

/-! ## A110801.P2856327679980532595

`eq[2, A035218(A103214(n)+1)]`
-/

namespace A110801.P2856327679980532595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A103214 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110801.P2856327679980532595

namespace A110801

/-- `eq[2, A035218(A103214(n)+1)]` -/
def P2856327679980532595.Spec : Prop :=
  ∀ n, (P2856327679980532595.a n : ℤ) = A110801 (n + 1)

end A110801

/-! ## A110801.P1758115422766165307

`eq[1, A211173(3*n)]/2`
-/

namespace A110801.P1758115422766165307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A110801.P1758115422766165307

namespace A110801

/-- `eq[1, A211173(3*n)]/2` -/
def P1758115422766165307.Spec : Prop :=
  ∀ n, P1758115422766165307.a n = (A110801 (n + 1) : ℚ)

end A110801

/-!
# A110803: n times the number of digits in the decimal expansion of n.

The programs for A110803, the canonical program `A110803.P6341764083761505143` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110803 has offset 1).

The definition of A110803 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A110803.P6341764083761505143

`(n+1)*A055642(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110803

/-- `(n+1)*A055642(n+1)` -/
def P6341764083761505143.Spec : Prop :=
  ∀ n, P6341764083761505143.a n = A110803 (n + 1)

theorem P6341764083761505143.correct : P6341764083761505143.Spec := by
  intro n
  simp only [A110803, Nat.add_sub_cancel]

end A110803

/-! ## A110803.P9162689563538361655

`(n+1)*∑{digits}[n+1, (#%2)!]`
-/

namespace A110803.P9162689563538361655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum

end

end A110803.P9162689563538361655

namespace A110803

/-- `(n+1)*∑{digits}[n+1, (#%2)!]` -/
def P9162689563538361655.Spec : Prop :=
  ∀ n, (P9162689563538361655.a n : ℤ) = A110803 (n + 1)

end A110803

/-! ## A110803.P11160862055950393495

`(n+1)*(A004216(n+1)+1)`
-/

namespace A110803.P11160862055950393495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004216 (n + 1) + 1)

end

end A110803.P11160862055950393495

namespace A110803

/-- `(n+1)*(A004216(n+1)+1)` -/
def P11160862055950393495.Spec : Prop :=
  ∀ n, P11160862055950393495.a n = A110803 (n + 1)

theorem P11160862055950393495.correct : P11160862055950393495.Spec := by
  intro n
  simp only [A110803, Nat.add_sub_cancel, A110803.P11160862055950393495.a, A110803.P6341764083761505143.a, A004216, A004216.P11701108540860389608.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110803

/-! ## A110803.P14871402512996061485

`(n+1)*∑{digits}[n+1, A036370(#)]`
-/

namespace A110803.P14871402512996061485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum

end

end A110803.P14871402512996061485

namespace A110803

/-- `(n+1)*∑{digits}[n+1, A036370(#)]` -/
def P14871402512996061485.Spec : Prop :=
  ∀ n, P14871402512996061485.a n = A110803 (n + 1)

end A110803

/-! ## A110803.P6589658514332927750

`(n+1)*∑{digits}[n+1, A219208(#)]`
-/

namespace A110803.P6589658514332927750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219208 x).sum

end

end A110803.P6589658514332927750

namespace A110803

/-- `(n+1)*∑{digits}[n+1, A219208(#)]` -/
def P6589658514332927750.Spec : Prop :=
  ∀ n, P6589658514332927750.a n = A110803 (n + 1)

end A110803

/-! ## A110803.P13851618445543754245

`(n+1)*∑{digits}[n+1, A133707(#+1)]`
-/

namespace A110803.P13851618445543754245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A133707 (x + 1)).sum

end

end A110803.P13851618445543754245

namespace A110803

/-- `(n+1)*∑{digits}[n+1, A133707(#+1)]` -/
def P13851618445543754245.Spec : Prop :=
  ∀ n, P13851618445543754245.a n = A110803 (n + 1)

end A110803

/-! ## A110803.P11181044205576655912

`∑{digits}[n+1, A007318(A007318(#))+n]`
-/

namespace A110803.P11181044205576655912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat + (n : ℤ)).sum

end

end A110803.P11181044205576655912

namespace A110803

/-- `∑{digits}[n+1, A007318(A007318(#))+n]` -/
def P11181044205576655912.Spec : Prop :=
  ∀ n, P11181044205576655912.a n = A110803 (n + 1)

end A110803

/-! ## A110803.P9047835708795764013

`(n+1)*A004218(n+2)`
-/

namespace A110803.P9047835708795764013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004218 (n + 2)

end

end A110803.P9047835708795764013

namespace A110803

/-- `(n+1)*A004218(n+2)` -/
def P9047835708795764013.Spec : Prop :=
  ∀ n, P9047835708795764013.a n = A110803 (n + 1)

end A110803

/-! ## A110803.P14491258739115704728

`∑{digits}[n+1, gcd(n+1, #*(n+1)!)]`
-/

namespace A110803.P14491258739115704728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd (n + 1) (x * Nat.factorial (n + 1))).sum

end

end A110803.P14491258739115704728

namespace A110803

/-- `∑{digits}[n+1, gcd(n+1, #*(n+1)!)]` -/
def P14491258739115704728.Spec : Prop :=
  ∀ n, (P14491258739115704728.a n : ℤ) = A110803 (n + 1)

end A110803

/-! ## A110803.P3326839774480409435

`A000142(n+1)*A138902(n+1)/A000142(n)`
-/

namespace A110803.P3326839774480409435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A138902 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A110803.P3326839774480409435

namespace A110803

/-- `A000142(n+1)*A138902(n+1)/A000142(n)` -/
def P3326839774480409435.Spec : Prop :=
  ∀ n, P3326839774480409435.a n = (A110803 (n + 1) : ℚ)

end A110803

/-!
# A110804: a(1) = 10, a(n) = a(n-1) times the number of digits in a(n-1).

The programs for A110804, there is no canonical definition to state claims against.
-/

/-! ## A110804.P14265276757190200242

`10*A000010(A216920(2*(n+1)))`
-/

namespace A110804.P14265276757190200242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000010 (A216920 (2 * (n + 1))).toNat

end

end A110804.P14265276757190200242

/-! ## A110804.P10770270872873517961

`A110803(a(n-1))` with `a(0)=10`
-/

namespace A110804.P10770270872873517961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A110803 (a (n - 1)).toNat

end

end A110804.P10770270872873517961

/-! ## A110804.P14801811779911966334

`a(n-1)*A055642(a(n-1))` with `a(0)=10`
-/

namespace A110804.P14801811779911966334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) * A055642 (a (n - 1)).toNat

end

end A110804.P14801811779911966334

/-! ## A110804.P5978479582282632360

`a(n-1)*A004218(a(n-1)+1)` with `a(0)=10`
-/

namespace A110804.P5978479582282632360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) * A004218 (a (n - 1) + 1).toNat

end

end A110804.P5978479582282632360

/-! ## A110804.P9432096285822021372

`(A004216(a(n-1))+1)*a(n-1)` with `a(0)=10`
-/

namespace A110804.P9432096285822021372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (A004216 (a (n - 1)).toNat + 1) * a (n - 1)

end

end A110804.P9432096285822021372

/-!
# A110805: Sum of digits of n times number of digits of n.

The programs for A110805, the canonical program `A110805.P11855113545855583108` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110805 has offset 1).

The definition of A110805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110805.P11855113545855583108

`∑{digits}[n+1, #*A055642(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110805

/-- `∑{digits}[n+1, #*A055642(n+1)]` -/
def P11855113545855583108.Spec : Prop :=
  ∀ n, P11855113545855583108.a n = A110805 (n + 1)

theorem P11855113545855583108.correct : P11855113545855583108.Spec := by
  intro n
  simp only [A110805, Nat.add_sub_cancel]

end A110805

/-! ## A110805.P7887995116119791741

`∑{digits}[n+1, #]*∑{digits}[n+1, A025794(#)]`
-/

namespace A110805.P7887995116119791741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A025794 x).sum

end

end A110805.P7887995116119791741

namespace A110805

/-- `∑{digits}[n+1, #]*∑{digits}[n+1, A025794(#)]` -/
def P7887995116119791741.Spec : Prop :=
  ∀ n, P7887995116119791741.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P1933053031728094139

`∑{digits}[n+1, #]*∑{digits}[n+1, A036608(#)]`
-/

namespace A110805.P1933053031728094139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A036608 x).sum

end

end A110805.P1933053031728094139

namespace A110805

/-- `∑{digits}[n+1, #]*∑{digits}[n+1, A036608(#)]` -/
def P1933053031728094139.Spec : Prop :=
  ∀ n, P1933053031728094139.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P7006503100673651876

`A307629(n+1)+A007953(n+1)`
-/

namespace A110805.P7006503100673651876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 (n + 1) + A007953 (n + 1)

end

end A110805.P7006503100673651876

namespace A110805

/-- `A307629(n+1)+A007953(n+1)` -/
def P7006503100673651876.Spec : Prop :=
  ∀ n, P7006503100673651876.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P1402671551888652996

`A007953(n+1)*A055642(n+1)`
-/

namespace A110805.P1402671551888652996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A055642 (n + 1)

end

end A110805.P1402671551888652996

namespace A110805

/-- `A007953(n+1)*A055642(n+1)` -/
def P1402671551888652996.Spec : Prop :=
  ∀ n, P1402671551888652996.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P12209386706619064738

`sqrt(A118881(n+1))*A055642(n+1)`
-/

namespace A110805.P12209386706619064738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (n + 1) : ℝ) * (A055642 (n + 1) : ℝ)

end

end A110805.P12209386706619064738

namespace A110805

/-- `sqrt(A118881(n+1))*A055642(n+1)` -/
def P12209386706619064738.Spec : Prop :=
  ∀ n, P12209386706619064738.a n = (A110805 (n + 1) : ℝ)

end A110805

/-! ## A110805.P1753823736161831049

`log2(A329562(n+1))*A055642(n+1)`
-/

namespace A110805.P1753823736161831049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (n + 1) : ℝ) * (A055642 (n + 1) : ℝ)

end

end A110805.P1753823736161831049

namespace A110805

/-- `log2(A329562(n+1))*A055642(n+1)` -/
def P1753823736161831049.Spec : Prop :=
  ∀ n, P1753823736161831049.a n = (A110805 (n + 1) : ℝ)

end A110805

/-! ## A110805.P16223651039338947496

`(A037123(n+1)-A037123(n))*A055642(n+1)`
-/

namespace A110805.P16223651039338947496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037123 (n + 1) - A037123 n) * A055642 (n + 1)

end

end A110805.P16223651039338947496

namespace A110805

/-- `(A037123(n+1)-A037123(n))*A055642(n+1)` -/
def P16223651039338947496.Spec : Prop :=
  ∀ n, P16223651039338947496.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P11741659938588578727

`A007953(n+1)+A004216(n+1)*A007953(n+1)`
-/

namespace A110805.P11741659938588578727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A004216 (n + 1) * A007953 (n + 1)

end

end A110805.P11741659938588578727

namespace A110805

/-- `A007953(n+1)+A004216(n+1)*A007953(n+1)` -/
def P11741659938588578727.Spec : Prop :=
  ∀ n, P11741659938588578727.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P17876936688093744770

`A055642(n+1)*A062028(n+1)-A110803(n+1)`
-/

namespace A110805.P17876936688093744770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) * A062028 (n + 1) - A110803 (n + 1)

end

end A110805.P17876936688093744770

namespace A110805

/-- `A055642(n+1)*A062028(n+1)-A110803(n+1)` -/
def P17876936688093744770.Spec : Prop :=
  ∀ n, P17876936688093744770.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P14793381018796292119

`(A343644(n+1)-A395743(n+1))*A007953(n+1)`
-/

namespace A110805.P14793381018796292119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A343644 (n + 1) - A395743 (n + 1)) * A007953 (n + 1)

end

end A110805.P14793381018796292119

namespace A110805

/-- `(A343644(n+1)-A395743(n+1))*A007953(n+1)` -/
def P14793381018796292119.Spec : Prop :=
  ∀ n, P14793381018796292119.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P16803386872320138423

`A055642(n+1)/A047726(n+1)*A276716(n+1)`
-/

namespace A110805.P16803386872320138423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055642 (n + 1) : ℚ) / (A047726 (n + 1) : ℚ) * (A276716 (n + 1) : ℚ)

end

end A110805.P16803386872320138423

namespace A110805

/-- `A055642(n+1)/A047726(n+1)*A276716(n+1)` -/
def P16803386872320138423.Spec : Prop :=
  ∀ n, P16803386872320138423.a n = (A110805 (n + 1) : ℚ)

end A110805

/-! ## A110805.P13313555112821700868

`A004218(n+2)*A007953(n+1)`
-/

namespace A110805.P13313555112821700868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2) * A007953 (n + 1)

end

end A110805.P13313555112821700868

namespace A110805

/-- `A004218(n+2)*A007953(n+1)` -/
def P13313555112821700868.Spec : Prop :=
  ∀ n, P13313555112821700868.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P15209264850261421458

`dr(A348783(n+1))*A007953(n+1)`
-/

namespace A110805.P15209264850261421458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A348783 (n + 1)) : ℤ) * A007953 (n + 1)

end

end A110805.P15209264850261421458

namespace A110805

/-- `dr(A348783(n+1))*A007953(n+1)` -/
def P15209264850261421458.Spec : Prop :=
  ∀ n, P15209264850261421458.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P7027669466976315700

`A055642(n+1)/2*A169805(n+1)`
-/

namespace A110805.P7027669466976315700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055642 (n + 1) : ℚ) / 2 * (A169805 (n + 1) : ℚ)

end

end A110805.P7027669466976315700

namespace A110805

/-- `A055642(n+1)/2*A169805(n+1)` -/
def P7027669466976315700.Spec : Prop :=
  ∀ n, P7027669466976315700.a n = (A110805 (n + 1) : ℚ)

end A110805

/-! ## A110805.P15828696508309466153

`A004525(A055642(n+1)*A169805(n+1))`
-/

namespace A110805.P15828696508309466153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A055642 (n + 1) * A169805 (n + 1)).toNat

end

end A110805.P15828696508309466153

namespace A110805

/-- `A004525(A055642(n+1)*A169805(n+1))` -/
def P15828696508309466153.Spec : Prop :=
  ∀ n, P15828696508309466153.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P9996771786517886884

`(A321999(n+1)+A055642(n+1))*A055642(n+1)`
-/

namespace A110805.P9996771786517886884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321999 (n + 1) + A055642 (n + 1)) * A055642 (n + 1)

end

end A110805.P9996771786517886884

namespace A110805

/-- `(A321999(n+1)+A055642(n+1))*A055642(n+1)` -/
def P9996771786517886884.Spec : Prop :=
  ∀ n, P9996771786517886884.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P10363381627993800927

`(A007953(n+1)-A321999(n+1))*A007953(n+1)`
-/

namespace A110805.P10363381627993800927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007953 (n + 1) - A321999 (n + 1)) * A007953 (n + 1)

end

end A110805.P10363381627993800927

namespace A110805

/-- `(A007953(n+1)-A321999(n+1))*A007953(n+1)` -/
def P10363381627993800927.Spec : Prop :=
  ∀ n, P10363381627993800927.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P9282337932796679943

`(A117804(n+2)-A117804(n+1))*A007953(n+1)`
-/

namespace A110805.P9282337932796679943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117804 (n + 2) - A117804 (n + 1)) * A007953 (n + 1)

end

end A110805.P9282337932796679943

namespace A110805

/-- `(A117804(n+2)-A117804(n+1))*A007953(n+1)` -/
def P9282337932796679943.Spec : Prop :=
  ∀ n, P9282337932796679943.a n = A110805 (n + 1)

end A110805

/-! ## A110805.P8154406697937314293

`(A321999(n+1)+A004218(n+2))*A004218(n+2)`
-/

namespace A110805.P8154406697937314293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321999 (n + 1) + A004218 (n + 2)) * A004218 (n + 2)

end

end A110805.P8154406697937314293

namespace A110805

/-- `(A321999(n+1)+A004218(n+2))*A004218(n+2)` -/
def P8154406697937314293.Spec : Prop :=
  ∀ n, P8154406697937314293.a n = A110805 (n + 1)

end A110805

/-!
# A110806: Numbers n such that sum of the digits as well as number of digits divides n.

The programs for A110806, there is no canonical definition to state claims against.
-/

/-! ## A110806.P4942013576123920333

`∩[A005349(n+1), A098952(n+1)]`
-/

namespace A110806.P4942013576123920333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110806.P4942013576123920333

/-! ## A110806.P2970964841828555368

`filter[A098952(n+2), A188641(#)]`
-/

namespace A110806.P2970964841828555368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098952 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A110806.P2970964841828555368

/-! ## A110806.P12303101405103996565

`∩[A085133(n+1), A375590(n+1)]`
-/

namespace A110806.P12303101405103996565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110806.P12303101405103996565

/-! ## A110806.P2282666574380232146

`∩[A085135(n+1), A375590(n+1)]`
-/

namespace A110806.P2282666574380232146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110806.P2282666574380232146

/-!
# A110807: n times largest n-digit number.

The programs for A110807, the canonical program `A110807.P14274922415214294595` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110807 has offset 0).

The definition of A110807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110807.P14274922415214294595

`(10^n-1)*n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110807

/-- `(10^n-1)*n` -/
def P14274922415214294595.Spec : Prop :=
  ∀ n, P14274922415214294595.a n = A110807 n

theorem P14274922415214294595.correct : P14274922415214294595.Spec := by
  intro n
  simp only [A110807]

end A110807

/-! ## A110807.P9648015086777441313

`A126431(n)-n`
-/

namespace A110807.P9648015086777441313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126431 n - (n : ℤ)

end

end A110807.P9648015086777441313

namespace A110807

/-- `A126431(n)-n` -/
def P9648015086777441313.Spec : Prop :=
  ∀ n, P9648015086777441313.a n = A110807 n

theorem P9648015086777441313.correct : P9648015086777441313.Spec := by
  intro n
  simp only [A110807, Nat.add_sub_cancel, A110807.P9648015086777441313.a, A110807.P14274922415214294595.a, A126431, A126431.P4687800304985180740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110807

/-! ## A110807.P7072805529834014572

`A064748(n)-(n+1)`
-/

namespace A110807.P7072805529834014572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064748 n - (n + 1 : ℤ)

end

end A110807.P7072805529834014572

namespace A110807

/-- `A064748(n)-(n+1)` -/
def P7072805529834014572.Spec : Prop :=
  ∀ n, P7072805529834014572.a n = A110807 n

theorem P7072805529834014572.correct : P7072805529834014572.Spec := by
  intro n
  simp only [A110807, Nat.add_sub_cancel, A110807.P7072805529834014572.a, A110807.P14274922415214294595.a, A064748, A064748.P4514015484673215208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110807

/-! ## A110807.P875995354510089936

`lcm(3, n*A002283(n))`
-/

namespace A110807.P875995354510089936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((n : ℤ) * A002283 n)

end

end A110807.P875995354510089936

namespace A110807

/-- `lcm(3, n*A002283(n))` -/
def P875995354510089936.Spec : Prop :=
  ∀ n, (P875995354510089936.a n : ℤ) = A110807 n

end A110807

/-! ## A110807.P3797500274218758192

`n*A011557(n)-n`
-/

namespace A110807.P3797500274218758192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011557 n - (n : ℤ)

end

end A110807.P3797500274218758192

namespace A110807

/-- `n*A011557(n)-n` -/
def P3797500274218758192.Spec : Prop :=
  ∀ n, P3797500274218758192.a n = A110807 n

theorem P3797500274218758192.correct : P3797500274218758192.Spec := by
  intro n
  simp only [A110807, Nat.add_sub_cancel, A110807.P3797500274218758192.a, A110807.P14274922415214294595.a, A011557, A011557.P11220211478167790856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110807

/-! ## A110807.P16897633362057677816

`n*A178500(n)-n`
-/

namespace A110807.P16897633362057677816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178500 n - (n : ℤ)

end

end A110807.P16897633362057677816

namespace A110807

/-- `n*A178500(n)-n` -/
def P16897633362057677816.Spec : Prop :=
  ∀ n, P16897633362057677816.a n = A110807 n

end A110807

/-! ## A110807.P7500169947865095057

`n*Δ[A002275(n)]-n`
-/

namespace A110807.P7500169947865095057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - (n : ℤ)

end

end A110807.P7500169947865095057

namespace A110807

/-- `n*Δ[A002275(n)]-n` -/
def P7500169947865095057.Spec : Prop :=
  ∀ n, P7500169947865095057.a n = A110807 n

end A110807

/-! ## A110807.P12003230326086734217

`A001489(n)+n*10^n`
-/

namespace A110807.P12003230326086734217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (n * 10 ^ n : ℤ)

end

end A110807.P12003230326086734217

namespace A110807

/-- `A001489(n)+n*10^n` -/
def P12003230326086734217.Spec : Prop :=
  ∀ n, P12003230326086734217.a n = A110807 n

theorem P12003230326086734217.correct : P12003230326086734217.Spec := by
  intro n
  simp only [A110807, Nat.add_sub_cancel, A110807.P12003230326086734217.a, A110807.P14274922415214294595.a, A001489, A001489.P15233530513763566776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110807

/-! ## A110807.P10232870668962526530

`abs(A001489(n)*A002283(n))`
-/

namespace A110807.P10232870668962526530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A002283 n|

end

end A110807.P10232870668962526530

namespace A110807

/-- `abs(A001489(n)*A002283(n))` -/
def P10232870668962526530.Spec : Prop :=
  ∀ n, P10232870668962526530.a n = A110807 n

end A110807

/-! ## A110807.P14089012348882896225

`A002275(n)*A017173(n)-A002275(n)`
-/

namespace A110807.P14089012348882896225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * A017173 n - A002275 n

end

end A110807.P14089012348882896225

namespace A110807

/-- `A002275(n)*A017173(n)-A002275(n)` -/
def P14089012348882896225.Spec : Prop :=
  ∀ n, P14089012348882896225.a n = A110807 n

end A110807

/-!
# A110808: Least factorial obtained as n*(n-1)*...*(n-k).

The programs for A110808, there is no canonical definition to state claims against.
-/

/-! ## A110808.P3584163927130467236

`A000142(n+1)/A000142(A359945(n+1))`
-/

namespace A110808.P3584163927130467236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A000142 (A359945 (n + 1)).toNat : ℚ)

end

end A110808.P3584163927130467236

/-! ## A110808.P8667962236930825771

`(A064446(n+1)%A268261(n+1))!`
-/

namespace A110808.P8667962236930825771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A064446 (n + 1)) (A268261 (n + 1))).toNat

end

end A110808.P8667962236930825771

/-! ## A110808.P648716715253026413

`A000142(A327393(n+1)+A058348(3*n+1))`
-/

namespace A110808.P648716715253026413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A327393 (n + 1) + A058348 (3 * n + 1)).toNat

end

end A110808.P648716715253026413

/-! ## A110808.P16807739451286582160

`(A349634(n+1)+A165878(2*n+1))!`
-/

namespace A110808.P16807739451286582160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A349634 (n + 1) + A165878 (2 * n + 1)).toNat

end

end A110808.P16807739451286582160

/-! ## A110808.P15851047368287333054

`((n+1)/∏{e}[A318769(n), #])!`
-/

namespace A110808.P15851047368287333054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ))).toNat

end

end A110808.P15851047368287333054

/-!
# A110809: a(1) = 3, a(2n) = a(2n-1)*(a(2n-1)+1)/2, a(2n+1) = a(2n)*(a(2n)-1)/2.

The programs for A110809, there is no canonical definition to state claims against.
-/

/-! ## A110809.P2654050720563106367

`C(a(n-1)+n%2, 2)` with `a(0)=3`
-/

namespace A110809.P2654050720563106367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose (a (n - 1) + n % 2) 2

end

end A110809.P2654050720563106367

/-! ## A110809.P5105236171747736446

`C(a(n-1)+and(1, n), 2)` with `a(0)=3`
-/

namespace A110809.P5105236171747736446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose (a (n - 1) + Nat.land 1 n) 2

end

end A110809.P5105236171747736446

/-! ## A110809.P1285097957779527990

`C(a(n-1)+2-gcd(2, n), 2)` with `a(0)=3`
-/

namespace A110809.P1285097957779527990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose ((a (n - 1) : ℤ) + (2 - (Nat.gcd 2 n : ℤ))).toNat 2

end

end A110809.P1285097957779527990

/-! ## A110809.P11281718527750254439

`(a(n-1)-(-1)^n)/2*a(n-1)` with `a(0)=3`
-/

namespace A110809.P11281718527750254439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) - ((-1) ^ n : ℚ)) / 2 * a (n - 1)

end

end A110809.P11281718527750254439

/-! ## A110809.P4394340872889681767

`C(a(n-1)+A008683(2*n)², 2)` with `a(0)=3`
-/

namespace A110809.P4394340872889681767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose ((a (n - 1) : ℤ) + A008683 (2 * n) ^ 2).toNat 2

end

end A110809.P4394340872889681767

/-!
# A110810: Binomial transform of A000796.

The programs for A110810, there is no canonical definition to state claims against.
-/

/-! ## A110810.P3339948814978482199

`∑{d}[A002110(n), A000796(A001222(#))]`
-/

namespace A110810.P3339948814978482199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000796 ((A001222 d).toNat + 1)

end

end A110810.P3339948814978482199

/-! ## A110810.P1016257183748821242

`A249728(A153395(n)+A047022(n+2))`
-/

namespace A110810.P1016257183748821242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A153395 n + A047022 (n + 2)).toNat

end

end A110810.P1016257183748821242

/-! ## A110810.P5433294972137444212

`A111439(A241829(n+1)+A150152(n+1))`
-/

namespace A110810.P5433294972137444212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A241829 (n + 1) + A150152 (n + 1)).toNat

end

end A110810.P5433294972137444212

/-!
# A110811: Perfect powers not a multiple of 10 whose digit reversal is also a perfect power (not necessarily with the same exponent, but with exponent > 1).

The programs for A110811, there is no canonical definition to state claims against.
-/

/-! ## A110811.P2238863730054881712

`filter[A118895(n+1), A011558(#)]`
-/

namespace A110811.P2238863730054881712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A110811.P2238863730054881712

/-! ## A110811.P3300126176135712012

`∪[A035090(n+1), A004086(A075786(n+1))]`
-/

namespace A110811.P3300126176135712012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A075786 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110811.P3300126176135712012

/-! ## A110811.P6841131450062317794

`∩[A047206(n+1), A118895(n+1)]`
-/

namespace A110811.P6841131450062317794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110811.P6841131450062317794

/-! ## A110811.P3371669084398751210

`∩[A047201(n+1), A118895(n+1)]`
-/

namespace A110811.P3371669084398751210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110811.P3371669084398751210

/-! ## A110811.P16716653852758249443

`∩[A008320(n+1), A118895(n+1)]`
-/

namespace A110811.P16716653852758249443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110811.P16716653852758249443

/-!
# A110812: Fractalization of sqrt(2).

The programs for A110812, there is no canonical definition to state claims against.
-/

/-! ## A110812.P4662690531298090256

`A002193(floor(n/(xor(n, n+1)+1)))`
-/

namespace A110812.P4662690531298090256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat + 1)

end

end A110812.P4662690531298090256

/-! ## A110812.P1454586764765634089

`A002193(floor(n/2^val(n+1, 2))/2)`
-/

namespace A110812.P1454586764765634089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat + 1)

end

end A110812.P1454586764765634089

/-! ## A110812.P1465326246516696321

`A120731(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A110812.P1465326246516696321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat + 1)

end

end A110812.P1465326246516696321

/-! ## A110812.P9895355137269163773

`A120731(ceil((n+1)/(xor(n, n+1)+1)))`
-/

namespace A110812.P9895355137269163773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉.toNat + 1)

end

end A110812.P9895355137269163773

/-! ## A110812.P8338524750227160352

`A120731(round((n+1)/(xor(n, n+1)+1)))`
-/

namespace A110812.P8338524750227160352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat + 1)

end

end A110812.P8338524750227160352

/-! ## A110812.P14015372638780742754

`A120731(floor(n/2^val(n+1, 2))/2+1)`
-/

namespace A110812.P14015372638780742754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2 + 1)).toNat + 1)

end

end A110812.P14015372638780742754

/-! ## A110812.P16699867768709108463

`A002193(ceil((n+1)/(xor(n, n+1)+1))-1)`
-/

namespace A110812.P16699867768709108463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ - 1).toNat + 1)

end

end A110812.P16699867768709108463

/-! ## A110812.P9008286479975571211

`A002193((n+1)/(or(n, n+1)-n)-((n+1)/2^val(n+1, 2)+1)/2)`
-/

namespace A110812.P9008286479975571211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) - ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat + 1)

end

end A110812.P9008286479975571211

/-! ## A110812.P16117601947611648719

`A002193(A110962(2*n))`
-/

namespace A110812.P16117601947611648719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((A110962 (2 * n)).toNat + 1)

end

end A110812.P16117601947611648719

/-! ## A110812.P9874268147625844737

`A002193(A003602(n+1)-1)`
-/

namespace A110812.P9874268147625844737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((A003602 (n + 1) - 1).toNat + 1)

end

end A110812.P9874268147625844737

/-! ## A110812.P15331425623743006362

`A002193(A110963(2*n+1)-1)`
-/

namespace A110812.P15331425623743006362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((A110963 (2 * n + 1) - 1).toNat + 1)

end

end A110812.P15331425623743006362

/-!
# A110813: A triangle of pyramidal numbers.

The programs for A110813, the canonical program `A110813.P12087588426013829952` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110813 has offset 0).

The definition of A110813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110813.P12087588426013829952

`A214292(n)+A051597(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A110813

/-- `A214292(n)+A051597(n)` -/
def P12087588426013829952.Spec : Prop :=
  ∀ n, P12087588426013829952.a n = A110813 n

theorem P12087588426013829952.correct : P12087588426013829952.Spec := by
  intro n
  simp only [A110813]

end A110813

/-! ## A110813.P18404247402004457709

`A131768(n)-A014473(n)`
-/

namespace A110813.P18404247402004457709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131768 n - A014473 n

end

end A110813.P18404247402004457709

namespace A110813

/-- `A131768(n)-A014473(n)` -/
def P18404247402004457709.Spec : Prop :=
  ∀ n, P18404247402004457709.a n = A110813 n

end A110813

/-! ## A110813.P5799418120508070737

`A264357(n+1)+A131085(n)`
-/

namespace A110813.P5799418120508070737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264357 (n + 1) + A131085 n

end

end A110813.P5799418120508070737

namespace A110813

/-- `A264357(n+1)+A131085(n)` -/
def P5799418120508070737.Spec : Prop :=
  ∀ n, P5799418120508070737.a n = A110813 n

theorem P5799418120508070737.correct : P5799418120508070737.Spec := by
  intro n
  simp only [A110813, Nat.add_sub_cancel, A110813.P5799418120508070737.a, A110813.P12087588426013829952.a, A051597, A051597.P4383731425265306086.a, A131085, A131085.P15158434548820626258.a, A214292, A214292.P4475227448882697213.f1, A214292.P4475227448882697213.a, A264357, A264357.P4841253329854367094.a, A014430, A014430.P11701806938926061192.a, A014473, A014473.P9301799580602651200.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A104712, A104712.P8393777965278521263.a, A135278, A135278.P10862305414900331449.a, A002262, A002262.P12129691700837801527.a, A007318, A007318.P302227728145965961.a, A010054, A010054.P18347828677204923252.a, A014410, A014410.P12420516935091573692.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A110813

/-! ## A110813.P5193367295360120485

`A131768(n)+1-A007318(n)`
-/

namespace A110813.P5193367295360120485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131768 n + (1 - A007318 n)

end

end A110813.P5193367295360120485

namespace A110813

/-- `A131768(n)+1-A007318(n)` -/
def P5193367295360120485.Spec : Prop :=
  ∀ n, P5193367295360120485.a n = A110813 n

end A110813

/-! ## A110813.P14569541679950196699

`A135855(n)-A264357(n+1)`
-/

namespace A110813.P14569541679950196699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135855 n - A264357 (n + 1)

end

end A110813.P14569541679950196699

namespace A110813

/-- `A135855(n)-A264357(n+1)` -/
def P14569541679950196699.Spec : Prop :=
  ∀ n, P14569541679950196699.a n = A110813 n

theorem P14569541679950196699.correct : P14569541679950196699.Spec := by
  intro n
  simp only [A110813, Nat.add_sub_cancel, A110813.P14569541679950196699.a, A110813.P12087588426013829952.a, A051597, A051597.P4383731425265306086.a, A135855, A135855.P16850139679087986239.a, A214292, A214292.P4475227448882697213.f1, A214292.P4475227448882697213.a, A264357, A264357.P4841253329854367094.a, A014430, A014430.P11701806938926061192.a, A014473, A014473.P9301799580602651200.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A131085, A131085.P15158434548820626258.a, A002262, A002262.P12129691700837801527.a, A007318, A007318.P302227728145965961.a, A010054, A010054.P18347828677204923252.a, A014410, A014410.P12420516935091573692.a, A104712, A104712.P8393777965278521263.a, A135278, A135278.P10862305414900331449.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A168577, A168577.P14364464542492817144.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A110813

/-! ## A110813.P2675359416517497451

`A209757(n+1)/A059268(n)`
-/

namespace A110813.P2675359416517497451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209757 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A110813.P2675359416517497451

namespace A110813

/-- `A209757(n+1)/A059268(n)` -/
def P2675359416517497451.Spec : Prop :=
  ∀ n, P2675359416517497451.a n = (A110813 n : ℚ)

end A110813

/-! ## A110813.P14618325930458932356

`2*A135278(n)-A007318(n)`
-/

namespace A110813.P14618325930458932356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - A007318 n

end

end A110813.P14618325930458932356

namespace A110813

/-- `2*A135278(n)-A007318(n)` -/
def P14618325930458932356.Spec : Prop :=
  ∀ n, P14618325930458932356.a n = A110813 n

end A110813

/-! ## A110813.P7649859323632668188

`(A135857(n)+A135278(n))/2`
-/

namespace A110813.P7649859323632668188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135857 n + A135278 n : ℚ) / 2

end

end A110813.P7649859323632668188

namespace A110813

/-- `(A135857(n)+A135278(n))/2` -/
def P7649859323632668188.Spec : Prop :=
  ∀ n, P7649859323632668188.a n = (A110813 n : ℚ)

theorem P7649859323632668188.correct : P7649859323632668188.Spec := by
  intro n
  simp only [A110813, Nat.add_sub_cancel, A110813.P7649859323632668188.a, A110813.P12087588426013829952.a, A051597, A051597.P4383731425265306086.a, A135278, A135278.P10862305414900331449.a, A135857, A135857.P11901277241392894431.a, A214292, A214292.P4475227448882697213.f1, A214292.P4475227448882697213.a, A014430, A014430.P11701806938926061192.a, A014473, A014473.P9301799580602651200.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A007318, A007318.P302227728145965961.a, A010054, A010054.P18347828677204923252.a, A014410, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A110813

/-! ## A110813.P2010676250435700004

`A028326(comp[∑[n]])-A007318(n)`
-/

namespace A110813.P2010676250435700004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A007318 n

end

end A110813.P2010676250435700004

namespace A110813

/-- `A028326(comp[∑[n]])-A007318(n)` -/
def P2010676250435700004.Spec : Prop :=
  ∀ n, P2010676250435700004.a n = A110813 n

end A110813

/-! ## A110813.P12513736387829735571

`A029656(n+2)-A010054(n+1)`
-/

namespace A110813.P12513736387829735571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 2) - A010054 (n + 1)

end

end A110813.P12513736387829735571

namespace A110813

/-- `A029656(n+2)-A010054(n+1)` -/
def P12513736387829735571.Spec : Prop :=
  ∀ n, P12513736387829735571.a n = A110813 n

end A110813

/-! ## A110813.P10438266564957668392

`A029637(n+1)+2*A214292(n)`
-/

namespace A110813.P10438266564957668392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (n + 1) + 2 * A214292 n

end

end A110813.P10438266564957668392

namespace A110813

/-- `A029637(n+1)+2*A214292(n)` -/
def P10438266564957668392.Spec : Prop :=
  ∀ n, P10438266564957668392.a n = A110813 n

end A110813

/-! ## A110813.P8388320923910649657

`A029656(n+2)/A035214(n+1)`
-/

namespace A110813.P8388320923910649657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029656 (n + 2) : ℚ) / (A035214 (n + 1) : ℚ)

end

end A110813.P8388320923910649657

namespace A110813

/-- `A029656(n+2)/A035214(n+1)` -/
def P8388320923910649657.Spec : Prop :=
  ∀ n, P8388320923910649657.a n = (A110813 n : ℚ)

end A110813

/-! ## A110813.P17807252380152236739

`2*A051597(n)-A029637(n+1)`
-/

namespace A110813.P17807252380152236739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051597 n - A029637 (n + 1)

end

end A110813.P17807252380152236739

namespace A110813

/-- `2*A051597(n)-A029637(n+1)` -/
def P17807252380152236739.Spec : Prop :=
  ∀ n, P17807252380152236739.a n = A110813 n

end A110813

/-! ## A110813.P13579528574319366227

`gcd(A010816(n+1), A029656(n+2))`
-/

namespace A110813.P13579528574319366227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 (n + 1)) (A029656 (n + 2))

end

end A110813.P13579528574319366227

namespace A110813

/-- `gcd(A010816(n+1), A029656(n+2))` -/
def P13579528574319366227.Spec : Prop :=
  ∀ n, (P13579528574319366227.a n : ℤ) = A110813 n

end A110813

/-! ## A110813.P8424838027118989111

`A051597(n)+A135278(n)-A074909(n)`
-/

namespace A110813.P8424838027118989111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A135278 n - A074909 n)

end

end A110813.P8424838027118989111

namespace A110813

/-- `A051597(n)+A135278(n)-A074909(n)` -/
def P8424838027118989111.Spec : Prop :=
  ∀ n, P8424838027118989111.a n = A110813 n

theorem P8424838027118989111.correct : P8424838027118989111.Spec := by
  intro n
  simp only [A110813, Nat.add_sub_cancel, A110813.P8424838027118989111.a, A110813.P12087588426013829952.a, A051597, A051597.P4383731425265306086.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A135278, A135278.P10862305414900331449.a, A214292, A214292.P4475227448882697213.f1, A214292.P4475227448882697213.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A014430, A014430.P11701806938926061192.a, A014473, A014473.P9301799580602651200.a, A005369, A005369.P10796159359873341658.a, A007318, A007318.P302227728145965961.a, A014410, A014410.P12420516935091573692.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A110813

/-! ## A110813.P3050429164179424299

`2*A007318(A014132(n+1))-A007318(n)`
-/

namespace A110813.P3050429164179424299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (A014132 (n + 1)).toNat - A007318 n

end

end A110813.P3050429164179424299

namespace A110813

/-- `2*A007318(A014132(n+1))-A007318(n)` -/
def P3050429164179424299.Spec : Prop :=
  ∀ n, P3050429164179424299.a n = A110813 n

end A110813

/-! ## A110813.P4926147806139381415

`A124927(n+1)+A129994(n)-A007318(n)`
-/

namespace A110813.P4926147806139381415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (n + 1) + (A129994 n - A007318 n)

end

end A110813.P4926147806139381415

namespace A110813

/-- `A124927(n+1)+A129994(n)-A007318(n)` -/
def P4926147806139381415.Spec : Prop :=
  ∀ n, P4926147806139381415.a n = A110813 n

end A110813

/-!
# A110814: Inverse of a triangle of pyramidal numbers.

The programs for A110814, the canonical program `A110814.P14618578239472963574` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110814 has offset 0).

The definition of A110814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110814.P14618578239472963574

`A097807(n)*A104709(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A110814

/-- `A097807(n)*A104709(n)` -/
def P14618578239472963574.Spec : Prop :=
  ∀ n, P14618578239472963574.a n = A110814 n

theorem P14618578239472963574.correct : P14618578239472963574.Spec := by
  intro n
  simp only [A110814]

end A110814

/-! ## A110814.P4724014892015130209

`A033999(A025581(n))*A104709(n)`
-/

namespace A110814.P4724014892015130209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A104709 n

end

end A110814.P4724014892015130209

namespace A110814

/-- `A033999(A025581(n))*A104709(n)` -/
def P4724014892015130209.Spec : Prop :=
  ∀ n, P4724014892015130209.a n = A110814 n

end A110814

/-! ## A110814.P2683887829274579778

`A103316(n)-A103316(n+1)%A055248(n)`
-/

namespace A110814.P2683887829274579778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103316 n - Int.tmod (A103316 (n + 1)) (A055248 n)

end

end A110814.P2683887829274579778

namespace A110814

/-- `A103316(n)-A103316(n+1)%A055248(n)` -/
def P2683887829274579778.Spec : Prop :=
  ∀ n, P2683887829274579778.a n = A110814 n

end A110814

/-! ## A110814.P7787108559180818339

`A054143(A061579(n))*A097807(n)`
-/

namespace A110814.P7787108559180818339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A061579 n).toNat * A097807 n

end

end A110814.P7787108559180818339

namespace A110814

/-- `A054143(A061579(n))*A097807(n)` -/
def P7787108559180818339.Spec : Prop :=
  ∀ n, P7787108559180818339.a n = A110814 n

end A110814

/-! ## A110814.P8545869164096809458

`A009531(A099375(n))*A054143(A038722(n+2))`
-/

namespace A110814.P8545869164096809458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A054143 (A038722 (n + 2)).toNat

end

end A110814.P8545869164096809458

namespace A110814

/-- `A009531(A099375(n))*A054143(A038722(n+2))` -/
def P8545869164096809458.Spec : Prop :=
  ∀ n, P8545869164096809458.a n = A110814 n

end A110814

/-! ## A110814.P17325491535597522070

`A103316(comp[∑[n]])`
-/

namespace A110814.P17325491535597522070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103316 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110814.P17325491535597522070

namespace A110814

/-- `A103316(comp[∑[n]])` -/
def P17325491535597522070.Spec : Prop :=
  ∀ n, P17325491535597522070.a n = A110814 n

end A110814

/-! ## A110814.P3863711727467028678

`A055248(A014132(n+1))*A097807(n)`
-/

namespace A110814.P3863711727467028678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A014132 (n + 1)).toNat * A097807 n

end

end A110814.P3863711727467028678

namespace A110814

/-- `A055248(A014132(n+1))*A097807(n)` -/
def P3863711727467028678.Spec : Prop :=
  ∀ n, P3863711727467028678.a n = A110814 n

end A110814

/-! ## A110814.P2237798988291933637

`or(A000007(n), A103316(A014132(n+1)))`
-/

namespace A110814.P2237798988291933637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A103316 (A014132 (n + 1)).toNat)

end

end A110814.P2237798988291933637

namespace A110814

/-- `or(A000007(n), A103316(A014132(n+1)))` -/
def P2237798988291933637.Spec : Prop :=
  ∀ n, P2237798988291933637.a n = A110814 n

end A110814

/-! ## A110814.P12059082153667759549

`A103316(A014132(n+1))+A000007(A014132(n+1)²)`
-/

namespace A110814.P12059082153667759549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103316 (A014132 (n + 1)).toNat + A000007 (A014132 (n + 1) ^ 2).toNat

end

end A110814.P12059082153667759549

namespace A110814

/-- `A103316(A014132(n+1))+A000007(A014132(n+1)²)` -/
def P12059082153667759549.Spec : Prop :=
  ∀ n, P12059082153667759549.a n = A110814 n

end A110814

/-!
# A110815: Least n-digit number m whose square contains only digits not appearing in m.

The programs for A110815, there is no canonical definition to state claims against.
-/

/-! ## A110815.P14831640073231817752

`sqrt(A110816(n+1))`
-/

namespace A110815.P14831640073231817752
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110816 (n + 1) : ℝ)

end

end A110815.P14831640073231817752

/-! ## A110815.P18206437391519057804

`root(A110816(n+1), p?[A343632(n)])`
-/

namespace A110815.P18206437391519057804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A110816 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A110815.P18206437391519057804

/-! ## A110815.P7517258809271040119

`root(A110816(n+1), p?[A038769(n+1)])`
-/

namespace A110815.P7517258809271040119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A110816 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A110815.P7517258809271040119

/-! ## A110815.P3710029257297555367

`root(A110816(n+1), p?[A086150(n+1)])`
-/

namespace A110815.P3710029257297555367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086150 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A110816 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A110815.P3710029257297555367

/-! ## A110815.P5929241223793211708

`A110816(n+1)^(1/A000005(A083016(n+1)))`
-/

namespace A110815.P5929241223793211708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A110816 (n + 1) : ℝ) ^ (1 / (A000005 (A083016 (n + 1)).toNat : ℚ) : ℝ)

end

end A110815.P5929241223793211708

/-!
# A110816: Squares corresponding to the terms of A110815.

The programs for A110816, there is no canonical definition to state claims against.
-/

/-! ## A110816.P15255798588331699700

`A110815(n+1)²`
-/

namespace A110816.P15255798588331699700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110815 (n + 1) ^ 2

end

end A110816.P15255798588331699700

/-! ## A110816.P13098010053621675454

`A110815(n+1)^A020639(A016933(n))`
-/

namespace A110816.P13098010053621675454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110815 (n + 1) : ℚ) ^ (A020639 (A016933 n).toNat : ℤ)

end

end A110816.P13098010053621675454

/-! ## A110816.P12250609714752130049

`A110815(n+1)^A020639(A034041(n))`
-/

namespace A110816.P12250609714752130049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110815 (n + 1) : ℚ) ^ (A020639 (A034041 n).toNat : ℤ)

end

end A110816.P12250609714752130049

/-! ## A110816.P16266389322614215059

`A110815(n+1)^A000005(A110798(n))`
-/

namespace A110816.P16266389322614215059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110815 (n + 1) : ℚ) ^ (A000005 (A110798 n).toNat : ℤ)

end

end A110816.P16266389322614215059

/-! ## A110816.P3300248335097478994

`A110815(n+1)^A000005(A007510(n+1))`
-/

namespace A110816.P3300248335097478994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110815 (n + 1) : ℚ) ^ (A000005 (A007510 (n + 1)).toNat : ℤ)

end

end A110816.P3300248335097478994

/-!
# A110819: Non-palindromes in A110751; that is, non-palindromic numbers n such that n and R(n) have the same prime divisors, where R(n) = digit reversal of n.

The programs for A110819, there is no canonical definition to state claims against.
-/

/-! ## A110819.P9430897134527009878

`∩[A110751(n+1), A392783(n+1)]`
-/

namespace A110819.P9430897134527009878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110819.P9430897134527009878

/-! ## A110819.P9800624366347819269

`∩[A050702(n+1), A111708(n)]`
-/

namespace A110819.P9800624366347819269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111708 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110819.P9800624366347819269

/-!
# A110821: SuperRefactorable numbers: m=A005179(n) such that k=m/n is an integer.

The programs for A110821, there is no canonical definition to state claims against.
-/

/-! ## A110821.P8405390500549430598

`∩[A007416(n+1), A057529(n+1)]`
-/

namespace A110821.P8405390500549430598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110821.P8405390500549430598

/-! ## A110821.P5608791555045472319

`∩[A007416(n+1), A174457(n+1)]`
-/

namespace A110821.P5608791555045472319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110821.P5608791555045472319

/-! ## A110821.P10706255039062316381

`∩[A007416(n+1), A033950(n+1)]`
-/

namespace A110821.P10706255039062316381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110821.P10706255039062316381

/-! ## A110821.P1514874132552922620

`filter[A007416(n+1), A336040(#)]`
-/

namespace A110821.P1514874132552922620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A110821.P1514874132552922620

/-! ## A110821.P11421203266649940036

`∩[A007416(n+1), A279373(n+1)]`
-/

namespace A110821.P11421203266649940036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110821.P11421203266649940036

/-!
# A110831: a(n) = 3*n^2 + 27*n + 1.

The programs for A110831, the canonical program `A110831.P2729907574655170531` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110831 has offset 1).

The definition of A110831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²+27*(n+1)+1` (program `A110831.P2729907574655170531`, by `A110831.P2729907574655170531.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110831.P2729907574655170531

`3*(n+1)²+27*(n+1)+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110831

/-- `3*(n+1)²+27*(n+1)+1` -/
def P2729907574655170531.Spec : Prop :=
  ∀ n, (P2729907574655170531.a n : ℤ) = A110831 (n + 1)

theorem P2729907574655170531.correct : P2729907574655170531.Spec := by
  intro n
  simp only [A110831, Nat.add_sub_cancel]

end A110831

/-! ## A110831.P1864308354700017369

`∑[a(n-1)+6]` with `a(0)=31, a(1)=36`
-/

namespace A110831.P1864308354700017369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [31, 36] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110831.P1864308354700017369

namespace A110831

/-- `∑[a(n-1)+6]` -/
def P1864308354700017369.Spec : Prop :=
  ∀ n, (P1864308354700017369.a n : ℤ) = A110831 (n + 1)

end A110831

/-! ## A110831.P5377762076964828205

`∑[A271114(n)+29]`
-/

namespace A110831.P5377762076964828205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110831.P5377762076964828205

namespace A110831

/-- `∑[A271114(n)+29]` -/
def P5377762076964828205.Spec : Prop :=
  ∀ n, P5377762076964828205.a n = A110831 (n + 1)

end A110831

/-! ## A110831.P8543054282753264673

`∑[A008458(n)+30]`
-/

namespace A110831.P8543054282753264673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110831.P8543054282753264673

namespace A110831

/-- `∑[A008458(n)+30]` -/
def P8543054282753264673.Spec : Prop :=
  ∀ n, P8543054282753264673.a n = A110831 (n + 1)

end A110831

/-! ## A110831.P11583239648315868387

`∑[A008706(n)+30+n]`
-/

namespace A110831.P11583239648315868387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + 30 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110831.P11583239648315868387

namespace A110831

/-- `∑[A008706(n)+30+n]` -/
def P11583239648315868387.Spec : Prop :=
  ∀ n, P11583239648315868387.a n = A110831 (n + 1)

end A110831

/-! ## A110831.P2996098409219385618

`abs((ceil(A016945(n)/2)+29)*(n+1)-n)`
-/

namespace A110831.P2996098409219385618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌈(A016945 n : ℚ) / 2⌉ + 29) * (n + 1 : ℤ) - (n : ℤ)|

end

end A110831.P2996098409219385618

namespace A110831

/-- `abs((ceil(A016945(n)/2)+29)*(n+1)-n)` -/
def P2996098409219385618.Spec : Prop :=
  ∀ n, P2996098409219385618.a n = A110831 (n + 1)

end A110831

/-! ## A110831.P16159141831477043760

`Δ[A229013(n+1)+A001504(n)]`
-/

namespace A110831.P16159141831477043760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229013 (n + 1) + A001504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110831.P16159141831477043760

namespace A110831

/-- `Δ[A229013(n+1)+A001504(n)]` -/
def P16159141831477043760.Spec : Prop :=
  ∀ n, P16159141831477043760.a n = A110831 (n + 1)

theorem P16159141831477043760.correct : P16159141831477043760.Spec := by
  intro n
  simp only [A110831, Nat.add_sub_cancel, A110831.P16159141831477043760.f1, A110831.P16159141831477043760.a, A110831.P2729907574655170531.a, A001504, A001504.P13639601878872911563.a, A229013, A229013.P14030391387298666303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110831

/-! ## A110831.P10094752130392637237

`∑[A008486(n+10)+A008486(n)]`
-/

namespace A110831.P10094752130392637237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 10) + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110831.P10094752130392637237

namespace A110831

/-- `∑[A008486(n+10)+A008486(n)]` -/
def P10094752130392637237.Spec : Prop :=
  ∀ n, P10094752130392637237.a n = A110831 (n + 1)

end A110831

/-! ## A110831.P13821321368251543270

`∑[A008486(2*n)+30]`
-/

namespace A110831.P13821321368251543270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110831.P13821321368251543270

namespace A110831

/-- `∑[A008486(2*n)+30]` -/
def P13821321368251543270.Spec : Prop :=
  ∀ n, P13821321368251543270.a n = A110831 (n + 1)

end A110831

/-! ## A110831.P8358064072536575133

`∑[A004277(3*n)+30]`
-/

namespace A110831.P8358064072536575133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110831.P8358064072536575133

namespace A110831

/-- `∑[A004277(3*n)+30]` -/
def P8358064072536575133.Spec : Prop :=
  ∀ n, P8358064072536575133.a n = A110831 (n + 1)

end A110831

/-! ## A110831.P8098620768869896129

`A016921(∑[n+5])`
-/

namespace A110831.P8098620768869896129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110831.P8098620768869896129

namespace A110831

/-- `A016921(∑[n+5])` -/
def P8098620768869896129.Spec : Prop :=
  ∀ n, P8098620768869896129.a n = A110831 (n + 1)

end A110831

/-! ## A110831.P12493681478688345731

`A308196(∑[n+5])`
-/

namespace A110831.P12493681478688345731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110831.P12493681478688345731

namespace A110831

/-- `A308196(∑[n+5])` -/
def P12493681478688345731.Spec : Prop :=
  ∀ n, P12493681478688345731.a n = A110831 (n + 1)

end A110831

/-! ## A110831.P14330977067799205972

`abs(3-A016957(∑[n+5]))`
-/

namespace A110831.P14330977067799205972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A016957 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A110831.P14330977067799205972

namespace A110831

/-- `abs(3-A016957(∑[n+5]))` -/
def P14330977067799205972.Spec : Prop :=
  ∀ n, P14330977067799205972.a n = A110831 (n + 1)

end A110831

/-!
# A110833: a(n) = (prime(n)+1)^2.

The programs for A110833, the canonical program `A110833.P8809668050970673234` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110833 has offset 1).

The definition of A110833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110833.P8809668050970673234

`A008864(n+1)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110833

/-- `A008864(n+1)²` -/
def P8809668050970673234.Spec : Prop :=
  ∀ n, P8809668050970673234.a n = A110833 (n + 1)

theorem P8809668050970673234.correct : P8809668050970673234.Spec := by
  intro n
  simp only [A110833, Nat.add_sub_cancel]

end A110833

/-! ## A110833.P2226062186635349890

`A028815(n+1)²`
-/

namespace A110833.P2226062186635349890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) ^ 2

end

end A110833.P2226062186635349890

namespace A110833

/-- `A028815(n+1)²` -/
def P2226062186635349890.Spec : Prop :=
  ∀ n, P2226062186635349890.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P17750372491101135084

`∑[A125266(n+1)]²`
-/

namespace A110833.P17750372491101135084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A110833.P17750372491101135084

namespace A110833

/-- `∑[A125266(n+1)]²` -/
def P17750372491101135084.Spec : Prop :=
  ∀ n, P17750372491101135084.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P14285274741770365075

`(Δ[A007504(n)]+1)²`
-/

namespace A110833.P14285274741770365075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A110833.P14285274741770365075

namespace A110833

/-- `(Δ[A007504(n)]+1)²` -/
def P14285274741770365075.Spec : Prop :=
  ∀ n, P14285274741770365075.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P1222343943438548476

`(∑[A075526(n)]+2)²`
-/

namespace A110833.P1222343943438548476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A110833.P1222343943438548476

namespace A110833

/-- `(∑[A075526(n)]+2)²` -/
def P1222343943438548476.Spec : Prop :=
  ∀ n, P1222343943438548476.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P10840220808851545744

`(1+A000040(n+1))²`
-/

namespace A110833.P10840220808851545744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + A000040 (n + 1)) ^ 2

end

end A110833.P10840220808851545744

namespace A110833

/-- `(1+A000040(n+1))²` -/
def P10840220808851545744.Spec : Prop :=
  ∀ n, P10840220808851545744.a n = A110833 (n + 1)

theorem P10840220808851545744.correct : P10840220808851545744.Spec := by
  intro n
  simp only [A110833, Nat.add_sub_cancel, A110833.P10840220808851545744.a, A110833.P8809668050970673234.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110833

/-! ## A110833.P12489098962927040445

`(A006093(n+1)+2)²`
-/

namespace A110833.P12489098962927040445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 2) ^ 2

end

end A110833.P12489098962927040445

namespace A110833

/-- `(A006093(n+1)+2)²` -/
def P12489098962927040445.Spec : Prop :=
  ∀ n, P12489098962927040445.a n = A110833 (n + 1)

theorem P12489098962927040445.correct : P12489098962927040445.Spec := by
  intro n
  simp only [A110833, Nat.add_sub_cancel, A110833.P12489098962927040445.a, A110833.P8809668050970673234.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110833

/-! ## A110833.P10664266868842423223

`(A040976(n+1)+3)²`
-/

namespace A110833.P10664266868842423223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 3) ^ 2

end

end A110833.P10664266868842423223

namespace A110833

/-- `(A040976(n+1)+3)²` -/
def P10664266868842423223.Spec : Prop :=
  ∀ n, P10664266868842423223.a n = A110833 (n + 1)

theorem P10664266868842423223.correct : P10664266868842423223.Spec := by
  intro n
  simp only [A110833, Nat.add_sub_cancel, A110833.P10664266868842423223.a, A110833.P8809668050970673234.a, A008864, A008864.P9177617808325052279.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110833

/-! ## A110833.P9742342831151046954

`(A014688(n+1)-n)²`
-/

namespace A110833.P9742342831151046954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014688 (n + 1) - (n : ℤ)) ^ 2

end

end A110833.P9742342831151046954

namespace A110833

/-- `(A014688(n+1)-n)²` -/
def P9742342831151046954.Spec : Prop :=
  ∀ n, P9742342831151046954.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P9905795818226895556

`(A382097(n+1)+1)/2`
-/

namespace A110833.P9905795818226895556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382097 (n + 1) + 1 : ℚ) / 2

end

end A110833.P9905795818226895556

namespace A110833

/-- `(A382097(n+1)+1)/2` -/
def P9905795818226895556.Spec : Prop :=
  ∀ n, P9905795818226895556.a n = (A110833 (n + 1) : ℚ)

theorem P9905795818226895556.correct : P9905795818226895556.Spec := by
  intro n
  simp only [A110833, Nat.add_sub_cancel, A110833.P9905795818226895556.a, A110833.P8809668050970673234.a, A008864, A008864.P9177617808325052279.a, A382097, A382097.P16883226550991024872.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110833

/-! ## A110833.P5122258419180252510

`∑{d}[A000040(2*n-(n-1)), #]²`
-/

namespace A110833.P5122258419180252510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2

end

end A110833.P5122258419180252510

namespace A110833

/-- `∑{d}[A000040(2*n-(n-1)), #]²` -/
def P5122258419180252510.Spec : Prop :=
  ∀ n, (P5122258419180252510.a n : ℤ) = A110833 (n + 1)

end A110833

/-! ## A110833.P17249211102179264218

`(1-Δ[a(n-1)-A000040(n)])²` with `a(0)=0`
-/

namespace A110833.P17249211102179264218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A000040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) ^ 2

end

end A110833.P17249211102179264218

namespace A110833

/-- `(1-Δ[a(n-1)-A000040(n)])²` -/
def P17249211102179264218.Spec : Prop :=
  ∀ n, P17249211102179264218.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P8385003573242566294

`A005722(n+1)+A001749(n+1)`
-/

namespace A110833.P8385003573242566294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1) + A001749 (n + 1)

end

end A110833.P8385003573242566294

namespace A110833

/-- `A005722(n+1)+A001749(n+1)` -/
def P8385003573242566294.Spec : Prop :=
  ∀ n, P8385003573242566294.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P13867827683274380131

`A036690(n+1)+A008864(n+1)`
-/

namespace A110833.P13867827683274380131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + A008864 (n + 1)

end

end A110833.P13867827683274380131

namespace A110833

/-- `A036690(n+1)+A008864(n+1)` -/
def P13867827683274380131.Spec : Prop :=
  ∀ n, P13867827683274380131.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P14017043366098073773

`A060800(n+1)+A000040(n+1)`
-/

namespace A110833.P14017043366098073773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) + A000040 (n + 1)

end

end A110833.P14017043366098073773

namespace A110833

/-- `A060800(n+1)+A000040(n+1)` -/
def P14017043366098073773.Spec : Prop :=
  ∀ n, P14017043366098073773.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P8563832120178799223

`A072055(n+1)+A001248(n+1)`
-/

namespace A110833.P8563832120178799223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A001248 (n + 1)

end

end A110833.P8563832120178799223

namespace A110833

/-- `A072055(n+1)+A001248(n+1)` -/
def P8563832120178799223.Spec : Prop :=
  ∀ n, P8563832120178799223.a n = A110833 (n + 1)

theorem P8563832120178799223.correct : P8563832120178799223.Spec := by
  intro n
  simp only [A110833, Nat.add_sub_cancel, A110833.P8563832120178799223.a, A110833.P8809668050970673234.a, A001248, A001248.P16278241061688229202.a, A008864, A008864.P9177617808325052279.a, A072055, A072055.P6834316123461544049.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P4698073971912800570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110833

/-! ## A110833.P16100051960296194430

`A119959(n+1)+A001748(n+1)`
-/

namespace A110833.P16100051960296194430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) + A001748 (n + 1)

end

end A110833.P16100051960296194430

namespace A110833

/-- `A119959(n+1)+A001748(n+1)` -/
def P16100051960296194430.Spec : Prop :=
  ∀ n, P16100051960296194430.a n = A110833 (n + 1)

end A110833

/-! ## A110833.P555374796662512439

`A100484(n+1)+A066872(n+1)`
-/

namespace A110833.P555374796662512439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A066872 (n + 1)

end

end A110833.P555374796662512439

namespace A110833

/-- `A100484(n+1)+A066872(n+1)` -/
def P555374796662512439.Spec : Prop :=
  ∀ n, P555374796662512439.a n = A110833 (n + 1)

theorem P555374796662512439.correct : P555374796662512439.Spec := by
  intro n
  simp only [A110833, Nat.add_sub_cancel, A110833.P555374796662512439.a, A110833.P8809668050970673234.a, A008864, A008864.P9177617808325052279.a, A066872, A066872.P16309924819967402.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110833

/-! ## A110833.P685000198283312391

`A089241(n+1)+A084920(n+1)`
-/

namespace A110833.P685000198283312391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + A084920 (n + 1)

end

end A110833.P685000198283312391

namespace A110833

/-- `A089241(n+1)+A084920(n+1)` -/
def P685000198283312391.Spec : Prop :=
  ∀ n, P685000198283312391.a n = A110833 (n + 1)

theorem P685000198283312391.correct : P685000198283312391.Spec := by
  intro n
  simp only [A110833, Nat.add_sub_cancel, A110833.P685000198283312391.a, A110833.P8809668050970673234.a, A008864, A008864.P9177617808325052279.a, A084920, A084920.P18008529996685256336.a, A089241, A089241.P4698073971912800570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110833

/-! ## A110833.P13050652411090224694

`A129069(n+1)+A049001(n+1)`
-/

namespace A110833.P13050652411090224694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) + A049001 (n + 1)

end

end A110833.P13050652411090224694

namespace A110833

/-- `A129069(n+1)+A049001(n+1)` -/
def P13050652411090224694.Spec : Prop :=
  ∀ n, P13050652411090224694.a n = A110833 (n + 1)

theorem P13050652411090224694.correct : P13050652411090224694.Spec := by
  intro n
  simp only [A110833, Nat.add_sub_cancel, A110833.P13050652411090224694.a, A110833.P8809668050970673234.a, A008864, A008864.P9177617808325052279.a, A049001, A049001.P16714800471455782698.a, A129069, A129069.P4766735713249215201.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A089241, A089241.P4698073971912800570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110833

/-!
# A110835: Smallest m > 0 such that there are no primes between n*m and n*(m+1) inclusive.

The programs for A110835, there is no canonical definition to state claims against.
-/

/-! ## A110835.P14943239421687927077

`A228775(abs(1-n)+2)+1`
-/

namespace A110835.P14943239421687927077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228775 (|1 - (n : ℤ)| + 2).toNat + 1

end

end A110835.P14943239421687927077

/-!
# A110836: G.f.: 4th root of weight enumerator of [64,22,16] Reed-Muller code RM(2,6).

The programs for A110836, there is no canonical definition to state claims against.
-/

/-! ## A110836.P11261328764143580837

`A001726(n)/A000005(A001686(n))`
-/

namespace A110836.P11261328764143580837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001726 n : ℚ) / (A000005 (A001686 n).toNat : ℚ)

end

end A110836.P11261328764143580837

/-! ## A110836.P1208699609601991753

`A001726(n)/A193432(A000254(n))`
-/

namespace A110836.P1208699609601991753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001726 n : ℚ) / (A193432 (A000254 n).toNat : ℚ)

end

end A110836.P1208699609601991753

/-! ## A110836.P17387089052686001897

`A001726(n)/A064830(A255906(n))`
-/

namespace A110836.P17387089052686001897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001726 n : ℚ) / (A064830 (A255906 n).toNat : ℚ)

end

end A110836.P17387089052686001897

/-!
# A110837: Number of ways to fold a strip of n stamps taking account of order and direction of folds.

The programs for A110837, there is no canonical definition to state claims against.
-/

/-! ## A110837.P7773191156784166668

`A340606(A091358(n+4))`
-/

namespace A110837.P7773191156784166668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340606 (A091358 (n + 4)).toNat

end

end A110837.P7773191156784166668

/-! ## A110837.P13668625730376694706

`A064007(A008485(n+1))-n`
-/

namespace A110837.P13668625730376694706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064007 (A008485 (n + 1)).toNat - (n : ℤ)

end

end A110837.P13668625730376694706

/-!
# A110838: G.f.: 4th root of weight enumerator of [128,29,32] Reed-Muller code RM(2,7).

The programs for A110838, there is no canonical definition to state claims against.
-/

/-! ## A110838.P16957515804415301643

`A006006(n)/A000120(A014517(n))`
-/

namespace A110838.P16957515804415301643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006006 n : ℚ) / (A000120 (A014517 n).toNat : ℚ)

end

end A110838.P16957515804415301643

/-! ## A110838.P12534128623451727499

`A006006(n)/A000120(A095670(n))`
-/

namespace A110838.P12534128623451727499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006006 n : ℚ) / (A000120 (A095670 n).toNat : ℚ)

end

end A110838.P12534128623451727499

/-! ## A110838.P13093537309723743341

`A006006(n)/A259363(A036493(n))`
-/

namespace A110838.P13093537309723743341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006006 n : ℚ) / (A259363 (A036493 n).toNat : ℚ)

end

end A110838.P13093537309723743341

/-! ## A110838.P16160017853594001138

`A006006(n)/A000005(A300665(n))`
-/

namespace A110838.P16160017853594001138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006006 n : ℚ) / (A000005 (A300665 n).toNat : ℚ)

end

end A110838.P16160017853594001138

/-!
# A110844: G.f.: 8th root of weight enumerator of [64,42,8] Reed-Muller code RM(3,6).

The programs for A110844, there is no canonical definition to state claims against.
-/

/-! ## A110844.P16158541537571548876

`A001727(n)/A000005(A001832(n+1))`
-/

namespace A110844.P16158541537571548876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001727 n : ℚ) / (A000005 (A001832 (n + 1)).toNat : ℚ)

end

end A110844.P16158541537571548876

/-! ## A110844.P9859840270822333988

`A001727(n)/A339991(A109906(3*n+4))`
-/

namespace A110844.P9859840270822333988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001727 n : ℚ) / (A339991 (A109906 (3 * n + 4)).toNat : ℚ)

end

end A110844.P9859840270822333988

/-!
# A110845: Weight enumerator of [128,64,16] Reed-Muller code RM(3,7).

The programs for A110845, there is no canonical definition to state claims against.
-/

/-! ## A110845.P16896437553856073865

`A110757(A110796(n+1))*A110846(n)`
-/

namespace A110845.P16896437553856073865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110757 (A110796 (n + 1)).toNat * A110846 n

end

end A110845.P16896437553856073865

/-! ## A110845.P7879984100069606437

`A000005(A185623(n))*A110846(n)`
-/

namespace A110845.P7879984100069606437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A185623 n).toNat * A110846 n

end

end A110845.P7879984100069606437

/-! ## A110845.P15626451230802627014

`A006028(n)/A006519(A000629(n))`
-/

namespace A110845.P15626451230802627014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006028 n : ℚ) / (A006519 (A000629 n).toNat : ℚ)

end

end A110845.P15626451230802627014

/-!
# A110846: G.f.: 8th root of weight enumerator of [128,64,16] Reed-Muller code RM(3,7).

The programs for A110846, there is no canonical definition to state claims against.
-/

/-! ## A110846.P9263755701714720389

`A110845(n)/A110757(A110796(n+1))`
-/

namespace A110846.P9263755701714720389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110845 n : ℚ) / (A110757 (A110796 (n + 1)).toNat : ℚ)

end

end A110846.P9263755701714720389

/-! ## A110846.P13720692474359577448

`A110845(n)/A003557(A110837(n+1))`
-/

namespace A110846.P13720692474359577448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110845 n : ℚ) / (A003557 (A110837 (n + 1)).toNat : ℚ)

end

end A110846.P13720692474359577448

/-! ## A110846.P5114188465730184032

`A110845(n)/A209863(A056654(n+1))`
-/

namespace A110846.P5114188465730184032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110845 n : ℚ) / (A209863 (A056654 (n + 1)).toNat : ℚ)

end

end A110846.P5114188465730184032

/-!
# A110847: Weight enumerator of [32,31,2] Reed-Muller code RM(4,5).

The programs for A110847, there is no canonical definition to state claims against.
-/

/-! ## A110847.P6644007530465258763

`C(32, 2*n)`
-/

namespace A110847.P6644007530465258763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 32 (2 * n)

end

end A110847.P6644007530465258763

/-! ## A110847.P13483934230703176346

`A010948(2*n)`
-/

namespace A110847.P13483934230703176346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010948 (2 * n)

end

end A110847.P13483934230703176346

/-! ## A110847.P3524423880448720088

`A201461(n+20)`
-/

namespace A110847.P3524423880448720088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201461 (n + 20)

end

end A110847.P3524423880448720088

/-! ## A110847.P13926069135033280952

`A086645(136+n)`
-/

namespace A110847.P13926069135033280952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 (136 + n)

end

end A110847.P13926069135033280952

/-! ## A110847.P4990996925224610973

`A340263(2*n+35)`
-/

namespace A110847.P4990996925224610973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340263 (2 * n + 35)

end

end A110847.P4990996925224610973

/-!
# A110851: Weight enumerator of [64,63,2] Reed-Muller code RM(5,6).

The programs for A110851, the canonical program `A110851.P4138184541457838199` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110851 has offset 0).

The definition of A110851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110851.P4138184541457838199

`C(64, 2*n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110851

/-- `C(64, 2*n)` -/
def P4138184541457838199.Spec : Prop :=
  ∀ n, (P4138184541457838199.a n : ℤ) = A110851 n

theorem P4138184541457838199.correct : P4138184541457838199.Spec := by
  intro n
  simp only [A110851]

end A110851

/-!
# A110854: A155750(n)-A155067(n) = prime(2n+2)-prime(2n+1)-prime(2n)+prime(2n-1).

The programs for A110854, the canonical program `A110854.P2471624004047318377` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110854 has offset 1).

The definition of A110854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110854.P2471624004047318377

`A155750(n+1)-A155067(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110854

/-- `A155750(n+1)-A155067(n+1)` -/
def P2471624004047318377.Spec : Prop :=
  ∀ n, P2471624004047318377.a n = A110854 (n + 1)

theorem P2471624004047318377.correct : P2471624004047318377.Spec := by
  intro n
  simp only [A110854, Nat.add_sub_cancel]

end A110854

/-! ## A110854.P17077601278275681644

`Δ[A001223(2*n+1)]`
-/

namespace A110854.P17077601278275681644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110854.P17077601278275681644

namespace A110854

/-- `Δ[A001223(2*n+1)]` -/
def P17077601278275681644.Spec : Prop :=
  ∀ n, P17077601278275681644.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P9086104338578686617

`A036263(2*n+1)+A036263(2*(n+1))`
-/

namespace A110854.P9086104338578686617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (2 * n + 1) + A036263 (2 * (n + 1))

end

end A110854.P9086104338578686617

namespace A110854

/-- `A036263(2*n+1)+A036263(2*(n+1))` -/
def P9086104338578686617.Spec : Prop :=
  ∀ n, P9086104338578686617.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P6696547318491661485

`A001223(2*n+3)-A001223(2*n+1)`
-/

namespace A110854.P6696547318491661485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 3) - A001223 (2 * n + 1)

end

end A110854.P6696547318491661485

namespace A110854

/-- `A001223(2*n+3)-A001223(2*n+1)` -/
def P6696547318491661485.Spec : Prop :=
  ∀ n, P6696547318491661485.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P3858817182279943358

`Δ[A078584(n+1)]`
-/

namespace A110854.P3858817182279943358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110854.P3858817182279943358

namespace A110854

/-- `Δ[A078584(n+1)]` -/
def P3858817182279943358.Spec : Prop :=
  ∀ n, P3858817182279943358.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P17228370077857816627

`Δ[A256737(n+1)]`
-/

namespace A110854.P17228370077857816627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110854.P17228370077857816627

namespace A110854

/-- `Δ[A256737(n+1)]` -/
def P17228370077857816627.Spec : Prop :=
  ∀ n, P17228370077857816627.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P12002267846790230349

`Δ[Δ[A008347(2*n)]]`
-/

namespace A110854.P12002267846790230349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110854.P12002267846790230349

namespace A110854

/-- `Δ[Δ[A008347(2*n)]]` -/
def P12002267846790230349.Spec : Prop :=
  ∀ n, P12002267846790230349.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P8456451698125480584

`Δ[A001223(Δ[n²])%(n+3)]`
-/

namespace A110854.P8456451698125480584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110854.P8456451698125480584

namespace A110854

/-- `Δ[A001223(Δ[n²])%(n+3)]` -/
def P8456451698125480584.Spec : Prop :=
  ∀ n, P8456451698125480584.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P10598625889706987266

`A078584(n+2)-A078584(n+1)`
-/

namespace A110854.P10598625889706987266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 2) - A078584 (n + 1)

end

end A110854.P10598625889706987266

namespace A110854

/-- `A078584(n+2)-A078584(n+1)` -/
def P10598625889706987266.Spec : Prop :=
  ∀ n, P10598625889706987266.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P4116101138670611148

`A256737(n+2)-A256737(n+1)`
-/

namespace A110854.P4116101138670611148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256737 (n + 2) - A256737 (n + 1)

end

end A110854.P4116101138670611148

namespace A110854

/-- `A256737(n+2)-A256737(n+1)` -/
def P4116101138670611148.Spec : Prop :=
  ∀ n, P4116101138670611148.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P2319360392646589058

`Δ[A007504(2*n)-A166448(2*n+1)]`
-/

namespace A110854.P2319360392646589058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n) - A166448 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110854.P2319360392646589058

namespace A110854

/-- `Δ[A007504(2*n)-A166448(2*n+1)]` -/
def P2319360392646589058.Spec : Prop :=
  ∀ n, P2319360392646589058.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P641054815576693914

`A031368(n+1)+A031215(n+2)-A092163(n+1)`
-/

namespace A110854.P641054815576693914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) + (A031215 (n + 2) - A092163 (n + 1))

end

end A110854.P641054815576693914

namespace A110854

/-- `A031368(n+1)+A031215(n+2)-A092163(n+1)` -/
def P641054815576693914.Spec : Prop :=
  ∀ n, P641054815576693914.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P14525620828535304924

`A031215(n+2)-(A155067(n+1)+A031215(n+1))`
-/

namespace A110854.P14525620828535304924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 2) - (A155067 (n + 1) + A031215 (n + 1))

end

end A110854.P14525620828535304924

namespace A110854

/-- `A031215(n+2)-(A155067(n+1)+A031215(n+1))` -/
def P14525620828535304924.Spec : Prop :=
  ∀ n, P14525620828535304924.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P10010546019640731522

`A031368(n+1)+A155750(n+1)-A031368(n+2)`
-/

namespace A110854.P10010546019640731522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) + (A155750 (n + 1) - A031368 (n + 2))

end

end A110854.P10010546019640731522

namespace A110854

/-- `A031368(n+1)+A155750(n+1)-A031368(n+2)` -/
def P10010546019640731522.Spec : Prop :=
  ∀ n, P10010546019640731522.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P16034999960239683506

`A261470(Δ[n²])`
-/

namespace A110854.P16034999960239683506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A110854.P16034999960239683506

namespace A110854

/-- `A261470(Δ[n²])` -/
def P16034999960239683506.Spec : Prop :=
  ∀ n, P16034999960239683506.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P13014500193306996513

`A261470(2*n+1)%(n+2)`
-/

namespace A110854.P13014500193306996513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261470 (2 * n + 1)) (n + 2 : ℤ)

end

end A110854.P13014500193306996513

namespace A110854

/-- `A261470(2*n+1)%(n+2)` -/
def P13014500193306996513.Spec : Prop :=
  ∀ n, P13014500193306996513.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P5692977712835959584

`A031131(2*(n+1))-A155067(n+1)`
-/

namespace A110854.P5692977712835959584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * (n + 1)) - A155067 (n + 1)

end

end A110854.P5692977712835959584

namespace A110854

/-- `A031131(2*(n+1))-A155067(n+1)` -/
def P5692977712835959584.Spec : Prop :=
  ∀ n, P5692977712835959584.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P12040718639136643405

`A155750(n+1)-A031131(2*n+1)`
-/

namespace A110854.P12040718639136643405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) - A031131 (2 * n + 1)

end

end A110854.P12040718639136643405

namespace A110854

/-- `A155750(n+1)-A031131(2*n+1)` -/
def P12040718639136643405.Spec : Prop :=
  ∀ n, P12040718639136643405.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P12300703970282995501

`A155750(n+1)-A075527(2*n+1)`
-/

namespace A110854.P12300703970282995501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) - A075527 (2 * n + 1)

end

end A110854.P12300703970282995501

namespace A110854

/-- `A155750(n+1)-A075527(2*n+1)` -/
def P12300703970282995501.Spec : Prop :=
  ∀ n, P12300703970282995501.a n = A110854 (n + 1)

end A110854

/-! ## A110854.P10094760328281852039

`A031131(2*(n+1))-A031131(2*n+1)`
-/

namespace A110854.P10094760328281852039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * (n + 1)) - A031131 (2 * n + 1)

end

end A110854.P10094760328281852039

namespace A110854

/-- `A031131(2*(n+1))-A031131(2*n+1)` -/
def P10094760328281852039.Spec : Prop :=
  ∀ n, P10094760328281852039.a n = A110854 (n + 1)

end A110854

/-!
# A110855: Table T(n,k), n >= 0, k >= 0, product M*M^(T) where M is the lower triangular matrix in A048993 (Stirling2 numbers) and M^(T) denotes the transpose matrix of M, read by antidiagonals.

The programs for A110855, there is no canonical definition to state claims against.
-/

/-! ## A110855.P18029795263843567857

`A350681(n)+A124761(A028326(n))`
-/

namespace A110855.P18029795263843567857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350681 n + A124761 (A028326 n).toNat

end

end A110855.P18029795263843567857

/-! ## A110855.P12163509865344971328

`A350681(n)+A124761(A124927(n))`
-/

namespace A110855.P12163509865344971328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350681 n + A124761 (A124927 n).toNat

end

end A110855.P12163509865344971328

/-! ## A110855.P14392516106831105610

`A350681(n)+A102677(A185255(n))`
-/

namespace A110855.P14392516106831105610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350681 n + A102677 (A185255 n).toNat

end

end A110855.P14392516106831105610

/-! ## A110855.P962651762295431934

`A350681(n)+A178798(A297328(n))`
-/

namespace A110855.P962651762295431934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350681 n + A178798 (A297328 n).toNat

end

end A110855.P962651762295431934

/-!
# A110856: Magic numbers: another version of A018226, which see for further information.

The programs for A110856, there is no canonical definition to state claims against.
-/

/-! ## A110856.P18377880040829564449

`A018226(comp[5*n])`
-/

namespace A110856.P18377880040829564449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018226 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110856.P18377880040829564449

/-!
# A110857: Table T(n,k), n>=0, k>=0, product M*M^(T) where M is the lower triangular matrix in A106566 and M^(T) denotes the transpose matrix of M, read by antidiagonals.

The programs for A110857, there is no canonical definition to state claims against.
-/

/-! ## A110857.P6611243319277201159

`A097430(A316376(n+1))+C(2, n+2)`
-/

namespace A110857.P6611243319277201159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A316376 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A110857.P6611243319277201159

/-! ## A110857.P13408367622022732438

`A097430(A316376(n+1))+A000007(n)`
-/

namespace A110857.P13408367622022732438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A316376 (n + 1)).toNat + A000007 n

end

end A110857.P13408367622022732438

/-! ## A110857.P11143873235768042605

`A112316(n)+A097430(A316376(n+1))`
-/

namespace A110857.P11143873235768042605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + A097430 (A316376 (n + 1)).toNat

end

end A110857.P11143873235768042605

/-! ## A110857.P2064206165315189208

`A341882(n)+A097430(A316376(n+1))`
-/

namespace A110857.P2064206165315189208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341882 (n + 64) + A097430 (A316376 (n + 1)).toNat

end

end A110857.P2064206165315189208

/-! ## A110857.P3643087164081237918

`A097430(A316376(n+1))+A001222(ceil(2/(n+1)))`
-/

namespace A110857.P3643087164081237918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A316376 (n + 1)).toNat + A001222 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A110857.P3643087164081237918

/-!
# A110858: Triangle read by rows: number of order-preserving partial transformations (of an n-element chain) of width and waist both equal to r (width(alpha) = |Dom(alpha)| and waist(alpha) = max(Im(alpha))).

The programs for A110858, there is no canonical definition to state claims against.
-/

/-! ## A110858.P15348299632090588911

`A120588(A002262(n))*A134399(n)`
-/

namespace A110858.P15348299632090588911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A002262 n).toNat * A134399 n

end

end A110858.P15348299632090588911

/-! ## A110858.P7646874563534498613

`A007318(n)*A336524(A112367(n))`
-/

namespace A110858.P7646874563534498613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A336524 (A112367 n).toNat

end

end A110858.P7646874563534498613

/-! ## A110858.P13971635286100386568

`A007318(n)*A095923(A232089(n))`
-/

namespace A110858.P13971635286100386568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A095923 (A232089 n).toNat

end

end A110858.P13971635286100386568

/-! ## A110858.P15479899446207586037

`A007318(n)*A096115(A233543(n))`
-/

namespace A110858.P15479899446207586037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A096115 (A233543 n).toNat

end

end A110858.P15479899446207586037

/-! ## A110858.P18397095066614597521

`A099386(A233543(n))*A134399(n)`
-/

namespace A110858.P18397095066614597521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099386 (A233543 n).toNat * A134399 n

end

end A110858.P18397095066614597521

/-!
# A110860: Number of even formally self-dual (but not self-dual) binary codes of length 2n that have the highest possible minimal distance.

The programs for A110860, there is no canonical definition to state claims against.
-/

/-! ## A110860.P7358016480784812840

`A008019(a(n-1))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=2`
-/

namespace A110860.P7358016480784812840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 2] fun n a =>
  A008019 (a (n - 1)).toNat

end

end A110860.P7358016480784812840

/-! ## A110860.P10104638489557552775

`A219347(floor((n+4)*2^(n-2))+1)-1`
-/

namespace A110860.P10104638489557552775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (⌊(n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ + 1).toNat - 1

end

end A110860.P10104638489557552775

/-! ## A110860.P380998628249771149

`A180196(A026636(n))`
-/

namespace A110860.P380998628249771149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180196 (A026636 n).toNat

end

end A110860.P380998628249771149

/-! ## A110860.P11338290960466558079

`A180196(A026658(n))`
-/

namespace A110860.P11338290960466558079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180196 (A026658 n).toNat

end

end A110860.P11338290960466558079

/-!
# A110861: Number of even isodual (but not self-dual) binary codes of length 2n.

The programs for A110861, there is no canonical definition to state claims against.
-/

/-! ## A110861.P674725028398265605

`∑[A116901(A204631(n))]`
-/

namespace A110861.P674725028398265605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116901 (A204631 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110861.P674725028398265605

/-! ## A110861.P2444311678118317000

`∑[A062299(A005470(n)+n)]`
-/

namespace A110861.P2444311678118317000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A005470 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110861.P2444311678118317000

/-! ## A110861.P1371946250298656376

`∑[A240202(A240213(n)+A240206(n))]`
-/

namespace A110861.P1371946250298656376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240202 (A240213 n + A240206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110861.P1371946250298656376

/-!
# A110865: Number of Type I but not Type II additive Hermitian self-dual codes of length n over GF(4).

The programs for A110865, there is no canonical definition to state claims against.
-/

/-! ## A110865.P14519893557786707931

`A245328(Δ[A000322(2*n)]+1)`
-/

namespace A110865.P14519893557786707931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (f1 (n + 1) - f1 n + 1).toNat

end

end A110865.P14519893557786707931

/-! ## A110865.P7666019743064975356

`xor(A180813(n+1), A321994(n+1))`
-/

namespace A110865.P7666019743064975356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A180813 (n + 1)) (A321994 (n + 1))

end

end A110865.P7666019743064975356

/-! ## A110865.P6801376155734537161

`A163858(A001003(n+1))+round(lcm(2, n+3)/6)`
-/

namespace A110865.P6801376155734537161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163858 (A001003 (n + 1)).toNat + SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)

end

end A110865.P6801376155734537161

/-! ## A110865.P8154527861342053243

`A325393(A325406(n)+A325349(3*n))`
-/

namespace A110865.P8154527861342053243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (A325406 n + A325349 (3 * n)).toNat

end

end A110865.P8154527861342053243

/-!
# A110866: Number of Type I but not Type II additive Hermitian self-dual codes of length n over GF(4) having the highest possible minimal distance.

The programs for A110866, there is no canonical definition to state claims against.
-/

/-! ## A110866.P12014951659585951248

`A247469(A190162(n)-A202850(n))`
-/

namespace A110866.P12014951659585951248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247469 (A190162 n - A202850 n).toNat

end

end A110866.P12014951659585951248

/-! ## A110866.P8312072637674492292

`A247469(A190162(n)%A202850(n))`
-/

namespace A110866.P8312072637674492292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247469 (Int.tmod (A190162 n) (A202850 n)).toNat

end

end A110866.P8312072637674492292

/-! ## A110866.P1969751816203661687

`gcd(A011539(A001844(n)), A197937(n+1))`
-/

namespace A110866.P1969751816203661687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011539 (A001844 n).toNat) (A197937 (n + 1))

end

end A110866.P1969751816203661687

/-! ## A110866.P7381628422184048544

`A330953(A106621(n+1))+A048735(A353896(n))`
-/

namespace A110866.P7381628422184048544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330953 (A106621 (n + 1)).toNat + A048735 (A353896 n).toNat

end

end A110866.P7381628422184048544

/-!
# A110869: Molien series for real 64-dimensional Clifford group of genus 6 and order 819651496316379542323200.

The programs for A110869, there is no canonical definition to state claims against.
-/

/-! ## A110869.P4385044762533635354

`A110876(n)-A355478(A110868(n))`
-/

namespace A110869.P4385044762533635354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110876 n - A355478 (A110868 n).toNat

end

end A110869.P4385044762533635354

/-! ## A110869.P8054340616930087154

`A110876(n)-A326443(A326449(n))`
-/

namespace A110869.P8054340616930087154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110876 n - A326443 (A326449 n).toNat

end

end A110869.P8054340616930087154

/-!
# A110872: Numbers n such that (n^2+7)/8 is prime.

The programs for A110872, there is no canonical definition to state claims against.
-/

/-! ## A110872.P13724805501355888861

`sqrt(A110873(n+1))`
-/

namespace A110872.P13724805501355888861
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110873 (n + 1) : ℝ)

end

end A110872.P13724805501355888861

/-! ## A110872.P11484846313144821777

`2*A067186(n+1)+1`
-/

namespace A110872.P11484846313144821777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067186 (n + 1) + 1

end

end A110872.P11484846313144821777

/-! ## A110872.P9297862823435023282

`sqrt(8*A055469(n+1)-7)`
-/

namespace A110872.P9297862823435023282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (8 * A055469 (n + 1) - 7 : ℝ)

end

end A110872.P9297862823435023282

/-! ## A110872.P10359690789144864882

`a(n-1)+2*A134460(n)` with `a(0)=3`
-/

namespace A110872.P10359690789144864882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * A134460 n

end

end A110872.P10359690789144864882

/-! ## A110872.P17381294275470088620

`A000265(A067186(n+1)+A067186(n+1)+1)`
-/

namespace A110872.P17381294275470088620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067186 (n + 1) + (A067186 (n + 1) + 1)).toNat

end

end A110872.P17381294275470088620

/-! ## A110872.P16396132341178421342

`2*eq[1, A129634(n)]+1`
-/

namespace A110872.P16396132341178421342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110872.P16396132341178421342

/-! ## A110872.P16757462708990100257

`A144396(A067186(n+1))`
-/

namespace A110872.P16757462708990100257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A067186 (n + 1)).toNat

end

end A110872.P16757462708990100257

/-! ## A110872.P4976340426314544444

`A004442(2*A067186(n+1))`
-/

namespace A110872.P4976340426314544444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A067186 (n + 1)).toNat

end

end A110872.P4976340426314544444

/-! ## A110872.P20930667511644166

`sqrt(8*(p?[a(n-1)+n]-1)+1)` with `a(0)=1`
-/

namespace A110872.P20930667511644166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (8 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) + 1 : ℝ)

end

end A110872.P20930667511644166

/-! ## A110872.P3920254843342134963

`2*A080098(A129545(n+1))+1`
-/

namespace A110872.P3920254843342134963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080098 (A129545 (n + 1)).toNat + 1

end

end A110872.P3920254843342134963

/-!
# A110873: Squares of the form 8p - 7, where p is prime.

The programs for A110873, there is no canonical definition to state claims against.
-/

/-! ## A110873.P9777523620867633445

`A110872(n+1)²`
-/

namespace A110873.P9777523620867633445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1) ^ 2

end

end A110873.P9777523620867633445

/-! ## A110873.P1343794166035627794

`8*A055469(n+1)-7`
-/

namespace A110873.P1343794166035627794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A055469 (n + 1) - 7

end

end A110873.P1343794166035627794

/-! ## A110873.P7815381041593150966

`8*A129545(n+1)+1`
-/

namespace A110873.P7815381041593150966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A129545 (n + 1) + 1

end

end A110873.P7815381041593150966

/-! ## A110873.P16951226436595810721

`(2*A067186(n+1)+1)²`
-/

namespace A110873.P16951226436595810721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A067186 (n + 1) + 1) ^ 2

end

end A110873.P16951226436595810721

/-! ## A110873.P413161938468138667

`A110872(A000027(n+1))*A110872(n+1)`
-/

namespace A110873.P413161938468138667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (A000027 (n + 1)).toNat * A110872 (n + 1)

end

end A110873.P413161938468138667

/-! ## A110873.P12183033277458353242

`A000265(A067186(n+1)+A067186(n+1)+1)²`
-/

namespace A110873.P12183033277458353242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067186 (n + 1) + A067186 (n + 1) + 1).toNat ^ 2

end

end A110873.P12183033277458353242

/-! ## A110873.P18117839291591986768

`A110872(A008619(2*n+1))*A110872(n+1)`
-/

namespace A110873.P18117839291591986768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (A008619 (2 * n + 1)).toNat * A110872 (n + 1)

end

end A110873.P18117839291591986768

/-! ## A110873.P9978896958623301520

`A110872(n+1)^A056619(2*n+3)`
-/

namespace A110873.P9978896958623301520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110872 (n + 1) : ℚ) ^ (A056619 (2 * n + 3) : ℤ)

end

end A110873.P9978896958623301520

/-! ## A110873.P7002918325482751369

`A016754(A067186(n+1))`
-/

namespace A110873.P7002918325482751369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A067186 (n + 1)).toNat

end

end A110873.P7002918325482751369

/-! ## A110873.P16973268734130369003

`A004442(2*A067186(n+1))²`
-/

namespace A110873.P16973268734130369003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A067186 (n + 1)).toNat ^ 2

end

end A110873.P16973268734130369003

/-! ## A110873.P15182105045454050268

`A000463(2*A110872(n+1))`
-/

namespace A110873.P15182105045454050268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A110872 (n + 1)).toNat

end

end A110873.P15182105045454050268

/-! ## A110873.P1205909653649131861

`A026741(2*A110872(n+1))*A110872(n+1)`
-/

namespace A110873.P1205909653649131861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A110872 (n + 1)).toNat * A110872 (n + 1)

end

end A110873.P1205909653649131861

/-! ## A110873.P5655304379302817516

`8*(p?[a(n-1)+n]-1)+1` with `a(0)=1`
-/

namespace A110873.P5655304379302817516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) + 1

end

end A110873.P5655304379302817516

/-! ## A110873.P3052220718121788525

`8*(p?[A000124(n)]-1)+1`
-/

namespace A110873.P3052220718121788525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) + 1

end

end A110873.P3052220718121788525

/-!
# A110874: Number of prime factors of 2 + n^(n+1) counted with multiplicity.

The programs for A110874, there is no canonical definition to state claims against.
-/

/-! ## A110874.P974324215929509383

`A336121(A083538(2*n+1)*A140776(n+1))`
-/

namespace A110874.P974324215929509383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A083538 (2 * n + 1) * A140776 (n + 1)).toNat

end

end A110874.P974324215929509383

/-! ## A110874.P1275400531663835351

`A040008(A354661(2*n+1))-A382857(n+4)`
-/

namespace A110874.P1275400531663835351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 (A354661 (2 * n + 1)).toNat - A382857 (n + 4)

end

end A110874.P1275400531663835351

/-!
# A110876: Molien series for real 128-dimensional Clifford group of genus 7 and order 110857799304670627788849414144000.

The programs for A110876, there is no canonical definition to state claims against.
-/

/-! ## A110876.P8221084608211628729

`A355478(A110868(n))+A110869(n)`
-/

namespace A110876.P8221084608211628729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355478 (A110868 n).toNat + A110869 n

end

end A110876.P8221084608211628729

/-! ## A110876.P8440169258988361801

`A326443(A326449(n))+A110869(n)`
-/

namespace A110876.P8440169258988361801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326443 (A326449 n).toNat + A110869 n

end

end A110876.P8440169258988361801

/-! ## A110876.P9579558491908409707

`A110880(A187320(n))`
-/

namespace A110876.P9579558491908409707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110880 (A187320 n).toNat

end

end A110876.P9579558491908409707

/-! ## A110876.P362929783413911864

`A110880(record[A235489(n)])`
-/

namespace A110876.P362929783413911864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110880 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A110876.P362929783413911864

/-!
# A110878: Positive integers k such that the sum of the divisors of k, excluding 1, is a multiple of the number of divisors of k.

The programs for A110878, there is no canonical definition to state claims against.
-/

/-! ## A110878.P7397150150989832997

`lt[(A000203(n+1)-1)%A000005(n+1), 1]+1`
-/

namespace A110878.P7397150150989832997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - 1) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A110878.P7397150150989832997

/-! ## A110878.P14996643923172297261

`eq[1, A054025(round(sqrt(n²+1))+1)]+1`
-/

namespace A110878.P14996643923172297261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110878.P14996643923172297261

/-! ## A110878.P507137214950852477

`eq[A054025(n+1), A057427(n)]+1`
-/

namespace A110878.P507137214950852477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A110878.P507137214950852477

/-! ## A110878.P4749024668441275946

`eq[A054025(A233583(n+1)), A057427(n)]`
-/

namespace A110878.P4749024668441275946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110878.P4749024668441275946

/-! ## A110878.P6912314851306180303

`record[A187201(n+2)^round(sqrt(n%4))]`
-/

namespace A110878.P6912314851306180303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187201 (n + 2) : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt ((n % 4 : ℕ) : ℝ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110878.P6912314851306180303

/-!
# A110882: a(n) is the least integer x such that x^n < 2 * (x-1)^n.

The programs for A110882, there is no canonical definition to state claims against.
-/

/-! ## A110882.P9754334194940913000

`round(log2(ceil(exp(n))))+1`
-/

namespace A110882.P9754334194940913000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (⌈Real.exp (n : ℝ)⌉ : ℝ)) + 1

end

end A110882.P9754334194940913000

/-! ## A110882.P3558942898732541437

`or(round(n/log(2))+1, char[1])`
-/

namespace A110882.P3558942898732541437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℝ) / Real.log (2 : ℝ)) + 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A110882.P3558942898732541437

/-! ## A110882.P5509443099022749986

`xor(round(n/log(2))+1, char[1])`
-/

namespace A110882.P5509443099022749986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℝ) / Real.log (2 : ℝ)) + 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A110882.P5509443099022749986

/-! ## A110882.P8343113773266068189

`floor(a(n-1)+(1/a(n-1)+1)^n)` with `a(0)=1`
-/

namespace A110882.P8343113773266068189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (1 / (a (n - 1) : ℚ) + 1) ^ n⌋

end

end A110882.P8343113773266068189

/-! ## A110882.P14545044462556583841

`(A078607(n)+1)/ceil(acot(n))`
-/

namespace A110882.P14545044462556583841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078607 n + 1 : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A110882.P14545044462556583841

/-! ## A110882.P12352965019883888098

`A065475(A078607(n))`
-/

namespace A110882.P12352965019883888098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A078607 n).toNat

end

end A110882.P12352965019883888098

/-! ## A110882.P8957611311446737000

`(A078607(n)+1)^and(1, A000040(n+1))`
-/

namespace A110882.P8957611311446737000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078607 n + 1 : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A110882.P8957611311446737000

/-! ## A110882.P17570303858863752212

`gcd(A078607(n)+1, A000045(C(2, n+2)))`
-/

namespace A110882.P17570303858863752212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078607 n + 1) (A000045 (Nat.choose 2 (n + 2)))

end

end A110882.P17570303858863752212

/-! ## A110882.P8130441374862072527

`abs(A078607(n)+A008683(2*A000040(n+1)))`
-/

namespace A110882.P8130441374862072527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078607 n + A008683 (2 * A000040 (n + 1)).toNat|

end

end A110882.P8130441374862072527

/-!
# A110883: Sum of consecutive digits in the decimal expansion of Pi.

The programs for A110883, there is no canonical definition to state claims against.
-/

/-! ## A110883.P1781231737197059129

`A000796(n)+A000796(n+1)`
-/

namespace A110883.P1781231737197059129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + A000796 (n + 1 + 1)

end

end A110883.P1781231737197059129

/-! ## A110883.P17137015664196993818

`abs(Δ[A000796(n)*A033999(n)])`
-/

namespace A110883.P17137015664196993818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A110883.P17137015664196993818

/-! ## A110883.P5772922675115554662

`Δ[A227844(n+3)-A227844(n+1)]`
-/

namespace A110883.P5772922675115554662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 3) - A227844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110883.P5772922675115554662

/-! ## A110883.P10768115372015060436

`A095916(n+1)+A095916(n)+a(n-1)` with `a(0)=4`
-/

namespace A110883.P10768115372015060436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A095916 (n + 1) + (A095916 n + a (n - 1))

end

end A110883.P10768115372015060436

/-! ## A110883.P11810473469567652143

`A095916(n+1)+A005843(A187747(n)+A001113(n))`
-/

namespace A110883.P11810473469567652143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1) + A005843 (A187747 n + A001113 (n + 1)).toNat

end

end A110883.P11810473469567652143

/-! ## A110883.P14871847838198746259

`A095916(n+1)+A005843(A054249(n+1)+A033999(n))`
-/

namespace A110883.P14871847838198746259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1) + A005843 (A054249 (n + 1) + A033999 n).toNat

end

end A110883.P14871847838198746259

/-! ## A110883.P5406154530006481582

`A000796(n)+Δ[A046974(n)]`
-/

namespace A110883.P5406154530006481582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + (f1 (n + 1) - f1 n)

end

end A110883.P5406154530006481582

/-! ## A110883.P1188408292852967811

`Δ[A030644(n)+2*A046974(n)]`
-/

namespace A110883.P1188408292852967811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1) + 2 * A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110883.P1188408292852967811

/-! ## A110883.P9979745403395883685

`A054249(n+1)+A054249(n+2)`
-/

namespace A110883.P9979745403395883685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + A054249 (n + 2)

end

end A110883.P9979745403395883685

/-! ## A110883.P8612934016512109805

`Δ[A046974(n)]+A166931(n+1)%A123152(n+1)`
-/

namespace A110883.P8612934016512109805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A166931 (n + 1)) (A123152 (n + 1))

end

end A110883.P8612934016512109805

/-! ## A110883.P6317059145511802774

`A010879(A065253(n+1))+Δ[A046974(n)]`
-/

namespace A110883.P6317059145511802774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A110883.P6317059145511802774

/-! ## A110883.P16769160930024950123

`A001355(Δ[n²])+Δ[A046974(n)]`
-/

namespace A110883.P16769160930024950123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (f2 (n + 1) - f2 n)

end

end A110883.P16769160930024950123

/-! ## A110883.P5605406144783113775

`A110766(Δ[n²])+Δ[A046974(n)]`
-/

namespace A110883.P5605406144783113775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (f2 (n + 1) - f2 n)

end

end A110883.P5605406144783113775

/-! ## A110883.P10410371423665196643

`Δ[A046974(n)]+dr(A110766(2*n+1))`
-/

namespace A110883.P10410371423665196643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (SequenceMachineLib.digitalRoot (A110766 (2 * n + 1)) : ℤ)

end

end A110883.P10410371423665196643

/-! ## A110883.P5274645404232874112

`A010879(A065253(n+2))+A001355(2*n+1)`
-/

namespace A110883.P5274645404232874112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 2)).toNat + A001355 (2 * n + 1)

end

end A110883.P5274645404232874112

/-! ## A110883.P16929126679155549264

`A110766(Δ[n²])+A001355(2*n+3)`
-/

namespace A110883.P16929126679155549264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A001355 (2 * n + 3)

end

end A110883.P16929126679155549264

/-! ## A110883.P3768638441643157109

`A001355(2*n+3)+A123152(n+1)-1`
-/

namespace A110883.P3768638441643157109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 3) + (A123152 (n + 1) - 1)

end

end A110883.P3768638441643157109

/-! ## A110883.P13550811818363407007

`A001355(2*n+3)+dr(A001355(2*n+1))`
-/

namespace A110883.P13550811818363407007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 3) + (SequenceMachineLib.digitalRoot (A001355 (2 * n + 1)) : ℤ)

end

end A110883.P13550811818363407007

/-! ## A110883.P4494185267882707328

`A110766(A060747(n+2))+A110766(Δ[n²])`
-/

namespace A110883.P4494185267882707328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (A060747 (n + 2)).toNat + A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A110883.P4494185267882707328

/-! ## A110883.P18111453314349719166

`A059582(n+2)-A059582(n)`
-/

namespace A110883.P18111453314349719166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 2) - A059582 n

end

end A110883.P18111453314349719166

/-!
# A110884: a(n) = limiting ratio of successive terms in the trajectory of 1 under the map m -> n*phi(m).

The programs for A110884, there is no canonical definition to state claims against.
-/

/-! ## A110884.P6837288750605096588

`A000010((n+1)*A113766(n+1))/A113766(n+1)`
-/

namespace A110884.P6837288750605096588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 1 : ℤ) * A113766 (n + 1)).toNat : ℚ) / (A113766 (n + 1) : ℚ)

end

end A110884.P6837288750605096588

/-! ## A110884.P6622213266572741120

`(n+1)/A127699(n+1)*A000010(A127699(n+1))`
-/

namespace A110884.P6622213266572741120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A127699 (n + 1) : ℚ) * (A000010 (A127699 (n + 1)).toNat : ℚ)

end

end A110884.P6622213266572741120

/-! ## A110884.P13662857439282712933

`A000010(A309243(n+1))/A309243(A003958(n+1))`
-/

namespace A110884.P13662857439282712933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A309243 (n + 1)).toNat : ℚ) / (A309243 (A003958 (n + 1)).toNat : ℚ)

end

end A110884.P13662857439282712933

/-! ## A110884.P8069189892935209207

`A000010(A291782(n+1))/A092694(n+1)`
-/

namespace A110884.P8069189892935209207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A291782 (n + 1)).toNat : ℚ) / (A092694 (n + 1) : ℚ)

end

end A110884.P8069189892935209207

/-! ## A110884.P8812070280298296210

`A200905(A053191(n+1))/A064400(n+1)`
-/

namespace A110884.P8812070280298296210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (A053191 (n + 1)).toNat : ℚ) / (A064400 (n + 1) : ℚ)

end

end A110884.P8812070280298296210

/-!
# A110886: Number of signed weighted Euler trees with total weight n (associated to even switching classes of matrices of order 2n).

The programs for A110886, there is no canonical definition to state claims against.
-/

/-! ## A110886.P13855582097341870269

`A049093(or(1, A279565(n)))`
-/

namespace A110886.P13855582097341870269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (Int.lor 1 (A279565 n)).toNat

end

end A110886.P13855582097341870269

/-! ## A110886.P9944672411931677475

`A302478(A049124(n)+A004526(n))`
-/

namespace A110886.P9944672411931677475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A049124 n + A004526 n).toNat

end

end A110886.P9944672411931677475

/-! ## A110886.P3800443182380759255

`A239366(n)+A165190(A168081(2*(n+1)))`
-/

namespace A110886.P3800443182380759255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 n + A165190 (A168081 (2 * (n + 1))).toNat

end

end A110886.P3800443182380759255

/-!
# A110888: Number of spindle configurations of n skew lines.

The programs for A110888, there is no canonical definition to state claims against.
-/

/-! ## A110888.P16581522912504914822

`A357452(A357453(n))+floor(n/3)`
-/

namespace A110888.P16581522912504914822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357452 (A357453 n).toNat + ⌊(n : ℚ) / 3⌋

end

end A110888.P16581522912504914822

/-! ## A110888.P1265527303609728311

`A357452(A357455(n))+A330558(n)`
-/

namespace A110888.P1265527303609728311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357452 (A357455 n).toNat + A330558 n

end

end A110888.P1265527303609728311

/-! ## A110888.P17842565868195829921

`A051742(A246446(n+1)+A052533(n))`
-/

namespace A110888.P17842565868195829921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A246446 (n + 1) + A052533 n).toNat

end

end A110888.P17842565868195829921

/-! ## A110888.P16857168035119994047

`A284836(A238351(n+1)+A025900(n))`
-/

namespace A110888.P16857168035119994047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284836 (A238351 (n + 1) + A025900 n).toNat

end

end A110888.P16857168035119994047

/-!
# A110889: Carmichael numbers that are not == 1 mod 12. There are 69 Carmichael numbers out to 2*m+1, m=2*10^6 and all but the above 9 are 1 mod 12.

The programs for A110889, there is no canonical definition to state claims against.
-/

/-! ## A110889.P13044973110585327770

`∪[A185321(n+1), A205947(n+1)]`
-/

namespace A110889.P13044973110585327770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110889.P13044973110585327770

/-!
# A110891: Numbers of the form prime(n) + prime(n+1) - 2 that are also triangular numbers, T(k) = k(k+1)/2.

The programs for A110891, there is no canonical definition to state claims against.
-/

/-! ## A110891.P12122898562912620036

`∩[Δ[A061802(n)]-2, ∑[n]]`
-/

namespace A110891.P12122898562912620036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = x) n

end

end A110891.P12122898562912620036

/-! ## A110891.P9483172676556639985

`∩[A001043(n+1)-2, ∑[n]]`
-/

namespace A110891.P9483172676556639985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A110891.P9483172676556639985

/-! ## A110891.P12045460598551920204

`∩[C(n+1, 2), A031131(n)+a(n-1)]` with `a(0)=3`
-/

namespace A110891.P12045460598551920204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A031131 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110891.P12045460598551920204

/-! ## A110891.P13265789965093238002

`∩[A000217(n+1), A011974(n+2)-2]`
-/

namespace A110891.P13265789965093238002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110891.P13265789965093238002

/-! ## A110891.P13441732357763037138

`∩[A000040(n+1)+A000040(n+2)-2, C(n+3, 2)]`
-/

namespace A110891.P13441732357763037138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A110891.P13441732357763037138

/-!
# A110892: Sum of the squares of digits of n^2.

The programs for A110892, the canonical program `A110892.P9207624648665752740` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110892 has offset 1).

The definition of A110892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A110892.P9207624648665752740

`A003132(A000290(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110892

/-- `A003132(A000290(n+1))` -/
def P9207624648665752740.Spec : Prop :=
  ∀ n, P9207624648665752740.a n = A110892 (n + 1)

theorem P9207624648665752740.correct : P9207624648665752740.Spec := by
  intro n
  simp only [A110892, Nat.add_sub_cancel]

end A110892

/-! ## A110892.P14971729516249285715

`∑{digits}[(n+1)², #²]`
-/

namespace A110892.P14971729516249285715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A110892.P14971729516249285715

namespace A110892

/-- `∑{digits}[(n+1)², #²]` -/
def P14971729516249285715.Spec : Prop :=
  ∀ n, (P14971729516249285715.a n : ℤ) = A110892 (n + 1)

end A110892

/-! ## A110892.P8199979485303780502

`∑{digits}[∑[2*n+1], A001105(#)]/2`
-/

namespace A110892.P8199979485303780502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001105 x).sum : ℤ) : ℚ) / 2

end

end A110892.P8199979485303780502

namespace A110892

/-- `∑{digits}[∑[2*n+1], A001105(#)]/2` -/
def P8199979485303780502.Spec : Prop :=
  ∀ n, P8199979485303780502.a n = (A110892 (n + 1) : ℚ)

end A110892

/-! ## A110892.P12924005224363180444

`A000027(∑{digits}[A000290(n+1), A000290(#)])`
-/

namespace A110892.P12924005224363180444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000290 x).sum.toNat

end

end A110892.P12924005224363180444

namespace A110892

/-- `A000027(∑{digits}[A000290(n+1), A000290(#)])` -/
def P12924005224363180444.Spec : Prop :=
  ∀ n, P12924005224363180444.a n = A110892 (n + 1)

end A110892

/-! ## A110892.P6307174293042816970

`A001281(∑{digits}[A253445(n+1), A003132(#)])`
-/

namespace A110892.P6307174293042816970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003132 x).sum.toNat

end

end A110892.P6307174293042816970

namespace A110892

/-- `A001281(∑{digits}[A253445(n+1), A003132(#)])` -/
def P6307174293042816970.Spec : Prop :=
  ∀ n, P6307174293042816970.a n = A110892 (n + 1)

end A110892

/-! ## A110892.P2445241774855616545

`log2(∏{digits}[(n+1)², 2^#²])`
-/

namespace A110892.P2445241774855616545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x ^ 2).prod : ℕ) : ℝ)

end

end A110892.P2445241774855616545

namespace A110892

/-- `log2(∏{digits}[(n+1)², 2^#²])` -/
def P2445241774855616545.Spec : Prop :=
  ∀ n, P2445241774855616545.a n = (A110892 (n + 1) : ℝ)

end A110892

/-! ## A110892.P8986364074594829082

`A003132(A028907(n+1))`
-/

namespace A110892.P8986364074594829082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A028907 (n + 1)).toNat

end

end A110892.P8986364074594829082

namespace A110892

/-- `A003132(A028907(n+1))` -/
def P8986364074594829082.Spec : Prop :=
  ∀ n, P8986364074594829082.a n = A110892 (n + 1)

end A110892

/-! ## A110892.P2732842002552667585

`A003132((n+1)²)`
-/

namespace A110892.P2732842002552667585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 ((n + 1) ^ 2)

end

end A110892.P2732842002552667585

namespace A110892

/-- `A003132((n+1)²)` -/
def P2732842002552667585.Spec : Prop :=
  ∀ n, P2732842002552667585.a n = A110892 (n + 1)

end A110892

/-! ## A110892.P524810114806796386

`∑[-Δ[-A003132(n²)]]`
-/

namespace A110892.P524810114806796386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A003132 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110892.P524810114806796386

namespace A110892

/-- `∑[-Δ[-A003132(n²)]]` -/
def P524810114806796386.Spec : Prop :=
  ∀ n, P524810114806796386.a n = A110892 (n + 1)

end A110892

/-!
# A110893: Numbers with a semiprime number of prime divisors (counted with multiplicity).

The programs for A110893, the canonical program `A110893.P14859875972476411817` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110893 has offset 1).

The definition of A110893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110893.P5599548440217995015

`eq[4, A004474(a(A001222(n)))]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A110893.P5599548440217995015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  A004474 (f2 (A001222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110893.P5599548440217995015

namespace A110893

/-- `eq[4, A004474(a(A001222(n)))]` -/
def P5599548440217995015.Spec : Prop :=
  ∀ n, (P5599548440217995015.a n : ℤ) = A110893 (n + 1)

end A110893

/-! ## A110893.P14859875972476411817

`eq[2, A001222(A001222(n+2))]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A110893

/-- `eq[2, A001222(A001222(n+2))]+2` -/
def P14859875972476411817.Spec : Prop :=
  ∀ n, (P14859875972476411817.a n : ℤ) = A110893 (n + 1)

theorem P14859875972476411817.correct : P14859875972476411817.Spec := by
  intro n
  simp only [A110893, Nat.add_sub_cancel]

end A110893

/-! ## A110893.P17197617717232533403

`eq[2, A167746(n+1)]+1`
-/

namespace A110893.P17197617717232533403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110893.P17197617717232533403

namespace A110893

/-- `eq[2, A167746(n+1)]+1` -/
def P17197617717232533403.Spec : Prop :=
  ∀ n, (P17197617717232533403.a n : ℤ) = A110893 (n + 1)

end A110893

/-! ## A110893.P17791383628947020872

`eq[2, A008481(A086436(n+1))]+1`
-/

namespace A110893.P17791383628947020872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A086436 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110893.P17791383628947020872

namespace A110893

/-- `eq[2, A008481(A086436(n+1))]+1` -/
def P17791383628947020872.Spec : Prop :=
  ∀ n, (P17791383628947020872.a n : ℤ) = A110893 (n + 1)

end A110893

/-! ## A110893.P10855321490438749336

`eq[1, A252736(A252736(n+1)+1)]+1`
-/

namespace A110893.P10855321490438749336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A252736 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110893.P10855321490438749336

namespace A110893

/-- `eq[1, A252736(A252736(n+1)+1)]+1` -/
def P10855321490438749336.Spec : Prop :=
  ∀ n, (P10855321490438749336.a n : ℤ) = A110893 (n + 1)

end A110893

/-!
# A110895: a(n) = a(n-1) + 1 + prime(n), with a(1) = 1.

The programs for A110895, the canonical program `A110895.P3631375456375347758` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110895 has offset 1).

The definition of A110895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110895.P3631375456375347758

`∑[p?[a(n-1)+2]]-2+n` with `a(0)=3, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110895

/-- `∑[p?[a(n-1)+2]]-2+n` -/
def P3631375456375347758.Spec : Prop :=
  ∀ n, P3631375456375347758.a n = A110895 (n + 1)

theorem P3631375456375347758.correct : P3631375456375347758.Spec := by
  intro n
  simp only [A110895, Nat.add_sub_cancel]

end A110895

/-! ## A110895.P10362855175610573015

`∑[A299763(n+1)]`
-/

namespace A110895.P10362855175610573015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110895.P10362855175610573015

namespace A110895

/-- `∑[A299763(n+1)]` -/
def P10362855175610573015.Spec : Prop :=
  ∀ n, P10362855175610573015.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P8534749156237025960

`∑[A028815(n)]-1`
-/

namespace A110895.P8534749156237025960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A110895.P8534749156237025960

namespace A110895

/-- `∑[A028815(n)]-1` -/
def P8534749156237025960.Spec : Prop :=
  ∀ n, P8534749156237025960.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P15085756919631521477

`n+1+A007504(n)`
-/

namespace A110895.P15085756919631521477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007504 n

end

end A110895.P15085756919631521477

namespace A110895

/-- `n+1+A007504(n)` -/
def P15085756919631521477.Spec : Prop :=
  ∀ n, P15085756919631521477.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P13782734235051090820

`A014284(n+1)+n`
-/

namespace A110895.P13782734235051090820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) + (n : ℤ)

end

end A110895.P13782734235051090820

namespace A110895

/-- `A014284(n+1)+n` -/
def P13782734235051090820.Spec : Prop :=
  ∀ n, P13782734235051090820.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P310797179376891111

`∑[A182986(n+1)+1]`
-/

namespace A110895.P310797179376891111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110895.P310797179376891111

namespace A110895

/-- `∑[A182986(n+1)+1]` -/
def P310797179376891111.Spec : Prop :=
  ∀ n, P310797179376891111.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P5304549328655388511

`∑[A008578(n+1)]+n`
-/

namespace A110895.P5304549328655388511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A110895.P5304549328655388511

namespace A110895

/-- `∑[A008578(n+1)]+n` -/
def P5304549328655388511.Spec : Prop :=
  ∀ n, P5304549328655388511.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P8600750078704250848

`A036439(n+1)-1+n`
-/

namespace A110895.P8600750078704250848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - 1 + (n : ℤ)

end

end A110895.P8600750078704250848

namespace A110895

/-- `A036439(n+1)-1+n` -/
def P8600750078704250848.Spec : Prop :=
  ∀ n, P8600750078704250848.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P16798970683550904567

`A227547(n+1)-2+n`
-/

namespace A110895.P16798970683550904567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 1) - 2 + (n : ℤ)

end

end A110895.P16798970683550904567

namespace A110895

/-- `A227547(n+1)-2+n` -/
def P16798970683550904567.Spec : Prop :=
  ∀ n, P16798970683550904567.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P18003980219022784980

`A008864(n)+a(n-1)` with `a(0)=1`
-/

namespace A110895.P18003980219022784980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008864 n + a (n - 1)

end

end A110895.P18003980219022784980

namespace A110895

/-- `A008864(n)+a(n-1)` -/
def P18003980219022784980.Spec : Prop :=
  ∀ n, P18003980219022784980.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P4048107311476133228

`∑[sqrt(A280076(n+1))]+n`
-/

namespace A110895.P4048107311476133228
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A110895.P4048107311476133228

namespace A110895

/-- `∑[sqrt(A280076(n+1))]+n` -/
def P4048107311476133228.Spec : Prop :=
  ∀ n, P4048107311476133228.a n = (A110895 (n + 1) : ℝ)

end A110895

/-! ## A110895.P18156343204067064191

`A036439(n+1)+A023443(n)`
-/

namespace A110895.P18156343204067064191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) + A023443 n

end

end A110895.P18156343204067064191

namespace A110895

/-- `A036439(n+1)+A023443(n)` -/
def P18156343204067064191.Spec : Prop :=
  ∀ n, P18156343204067064191.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P3540985763628932233

`A227547(n+1)+A023444(n)`
-/

namespace A110895.P3540985763628932233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 1) + A023444 n

end

end A110895.P3540985763628932233

namespace A110895

/-- `A227547(n+1)+A023444(n)` -/
def P3540985763628932233.Spec : Prop :=
  ∀ n, P3540985763628932233.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P4704946296687529105

`A060939(n+1)-A000040(n+1)`
-/

namespace A110895.P4704946296687529105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060939 (n + 1) - A000040 (n + 1)

end

end A110895.P4704946296687529105

namespace A110895

/-- `A060939(n+1)-A000040(n+1)` -/
def P4704946296687529105.Spec : Prop :=
  ∀ n, P4704946296687529105.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P1640514117689409135

`∑[A158611(n+2)]+n`
-/

namespace A110895.P1640514117689409135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A110895.P1640514117689409135

namespace A110895

/-- `∑[A158611(n+2)]+n` -/
def P1640514117689409135.Spec : Prop :=
  ∀ n, P1640514117689409135.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P17035758034305587527

`A175965(n+2)+n-1`
-/

namespace A110895.P17035758034305587527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 2) + ((n : ℤ) - 1)

end

end A110895.P17035758034305587527

namespace A110895

/-- `A175965(n+2)+n-1` -/
def P17035758034305587527.Spec : Prop :=
  ∀ n, P17035758034305587527.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P1158641017996662265

`A083719(n+1)/(n+1)+n`
-/

namespace A110895.P1158641017996662265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083719 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A110895.P1158641017996662265

namespace A110895

/-- `A083719(n+1)/(n+1)+n` -/
def P1158641017996662265.Spec : Prop :=
  ∀ n, P1158641017996662265.a n = (A110895 (n + 1) : ℚ)

end A110895

/-! ## A110895.P17563068909610104357

`∑[record[A025473(n+1)]]+n`
-/

namespace A110895.P17563068909610104357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A110895.P17563068909610104357

namespace A110895

/-- `∑[record[A025473(n+1)]]+n` -/
def P17563068909610104357.Spec : Prop :=
  ∀ n, P17563068909610104357.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P2941165452691486588

`∑[record[A008472(n+1)+1]]`
-/

namespace A110895.P2941165452691486588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110895.P2941165452691486588

namespace A110895

/-- `∑[record[A008472(n+1)+1]]` -/
def P2941165452691486588.Spec : Prop :=
  ∀ n, P2941165452691486588.a n = A110895 (n + 1)

end A110895

/-! ## A110895.P6490040971401063464

`∑[record[A006530(n+1)]]+n`
-/

namespace A110895.P6490040971401063464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A110895.P6490040971401063464

namespace A110895

/-- `∑[record[A006530(n+1)]]+n` -/
def P6490040971401063464.Spec : Prop :=
  ∀ n, P6490040971401063464.a n = A110895 (n + 1)

end A110895

/-!
# A110896: Difference between prime(10^n) and prime(10^(n-1)).

The programs for A110896, there is no canonical definition to state claims against.
-/

/-! ## A110896.P4972123815413617607

`A006988(n+1)-A006988(n)`
-/

namespace A110896.P4972123815413617607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 (n + 1) - A006988 n

end

end A110896.P4972123815413617607

/-! ## A110896.P5285527987927824467

`Δ[A006988(n)]`
-/

namespace A110896.P5285527987927824467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110896.P5285527987927824467

/-! ## A110896.P8660328371601184931

`record[A006988(A008611(n))]-A006988(n)`
-/

namespace A110896.P8660328371601184931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006988 n

end

end A110896.P8660328371601184931

/-! ## A110896.P12901604427981649108

`Δ[A347000(A155212(n+5)-1)]`
-/

namespace A110896.P12901604427981649108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A155212 (n + 5) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110896.P12901604427981649108

/-! ## A110896.P7533210976513912699

`Δ[A347000(A052905(n+6)-4)]`
-/

namespace A110896.P7533210976513912699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A052905 (n + 6) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110896.P7533210976513912699

/-!
# A110897: a(n) = 1 + a(n - a(n-1)) - (n - a(n-1)) mod 2 + (n - a(n-2)) mod 3, with a(0) = 0, a(1) = 1.

The programs for A110897, the canonical program `A110897.P2451758952285630572` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110897 has offset 0).

The definition of A110897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110897.P2451758952285630572

`1+a(n-a(n-1))-(n-a(n-1))%2+(n-a(n-2))%3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110897

/-- `1+a(n-a(n-1))-(n-a(n-1))%2+(n-a(n-2))%3` -/
def P2451758952285630572.Spec : Prop :=
  ∀ n, P2451758952285630572.a n = A110897 n

theorem P2451758952285630572.correct : P2451758952285630572.Spec := by
  intro n
  simp only [A110897]

end A110897

/-!
# A110898: a(n) = 1 + a(n - a(n-1)) - (n - a(n-1)) mod 3 + (n - a(n-2)) mod 4, with a(0) = 0, a(1) = 1.

The programs for A110898, the canonical program `A110898.P7309555492943233526` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110898 has offset 0).

The definition of A110898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110898.P7309555492943233526

`1+a(n-a(n-1))-(n-a(n-1))%3+(n-a(n-2))%4` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110898

/-- `1+a(n-a(n-1))-(n-a(n-1))%3+(n-a(n-2))%4` -/
def P7309555492943233526.Spec : Prop :=
  ∀ n, P7309555492943233526.a n = A110898 n

theorem P7309555492943233526.correct : P7309555492943233526.Spec := by
  intro n
  simp only [A110898]

end A110898

/-! ## A110898.P10022075926644325884

`A000005(A133041(n))-A246142(2*n+1)`
-/

namespace A110898.P10022075926644325884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A133041 n).toNat - A246142 (2 * n + 1)

end

end A110898.P10022075926644325884

namespace A110898

/-- `A000005(A133041(n))-A246142(2*n+1)` -/
def P10022075926644325884.Spec : Prop :=
  ∀ n, P10022075926644325884.a n = A110898 n

end A110898

