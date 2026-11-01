import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C049
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A396400: Numbers k for which A395994(k)/k sets a new record.

The programs for A396400, there is no canonical definition to state claims against.
-/

/-! ## A396400.P12667144716622914687

`∩[A324761(n+1), A396399(n+1)]`
-/

namespace A396400.P12667144716622914687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P12667144716622914687

/-! ## A396400.P968164966321311167

`∩[A324769(n+1), A396399(n+1)]`
-/

namespace A396400.P968164966321311167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P968164966321311167

/-! ## A396400.P13266279083368976615

`∩[A324760(n+1), A396399(n+1)]`
-/

namespace A396400.P13266279083368976615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P13266279083368976615

/-! ## A396400.P13745252241765975672

`∩[A355330(n+1), A396399(n+1)]`
-/

namespace A396400.P13745252241765975672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P13745252241765975672

/-! ## A396400.P13628017649285951765

`∩[A344881(n+1), A396399(n+1)]`
-/

namespace A396400.P13628017649285951765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P13628017649285951765

/-!
# A396402: Numbers k such that there is a record number of values of j with 1 <= j <= k and GCD(j,k) = 1 such that the number of terms in the greedy Egyptian fraction representation of j/k (A050205(k,j)) is the minimum possible (A097847(k,j)).

The programs for A396402, there is no canonical definition to state claims against.
-/

/-! ## A396402.P15882057561674157207

`∪[A040184(n+3), A324761(A267888(n))]`
-/

namespace A396402.P15882057561674157207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (A267888 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396402.P15882057561674157207

/-! ## A396402.P3271954347837304030

`A040990(n+1)-A102460(A235265(3*n+1))`
-/

namespace A396402.P3271954347837304030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1) - A102460 (A235265 (3 * n + 1)).toNat

end

end A396402.P3271954347837304030

/-! ## A396402.P6551208870448337863

`A342194(A040177(n+1))`
-/

namespace A396402.P6551208870448337863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A040177 (n + 1)).toNat

end

end A396402.P6551208870448337863

/-! ## A396402.P16061030561019631816

`A342194(A040184(n+1))`
-/

namespace A396402.P16061030561019631816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A040184 (n + 1)).toNat

end

end A396402.P16061030561019631816

/-! ## A396402.P11606418057597908296

`A342194(A040988(n+1))`
-/

namespace A396402.P11606418057597908296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A040988 (n + 1)).toNat

end

end A396402.P11606418057597908296

/-!
# A396403: Array read by ascending antidiagonals: A(n,k) = k^(n*(n - 1)/2) for k >= 0.

The programs for A396403, the canonical program `A396403.P11039031012012612074` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396403 has offset 0).

The definition of A396403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396403.P11039031012012612074

`col(n)^((row(n)-col(n))*(row(n)-col(n)-1)/2)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396403

/-- `col(n)^((row(n)-col(n))*(row(n)-col(n)-1)/2)` -/
def P11039031012012612074.Spec : Prop :=
  ∀ n, P11039031012012612074.a n = (A396403 n : ℝ)

end A396403

/-! ## A396403.P18220757758528140453

`col(n)^C(row(n)-col(n), 2)`
-/

namespace A396403.P18220757758528140453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat 2

end

end A396403.P18220757758528140453

namespace A396403

/-- `col(n)^C(row(n)-col(n), 2)` -/
def P18220757758528140453.Spec : Prop :=
  ∀ n, (P18220757758528140453.a n : ℤ) = A396403 n

end A396403

/-! ## A396403.P17196541531894802982

`col(n)^C(A025581(n), 2)`
-/

namespace A396403.P17196541531894802982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ Nat.choose (A025581 n).toNat 2

end

end A396403.P17196541531894802982

namespace A396403

/-- `col(n)^C(A025581(n), 2)` -/
def P17196541531894802982.Spec : Prop :=
  ∀ n, (P17196541531894802982.a n : ℤ) = A396403 n

end A396403

/-! ## A396403.P9152168459652782253

`A002262(n)^C(A025581(n), 2)`
-/

namespace A396403.P9152168459652782253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ Nat.choose (A025581 n).toNat 2

end

end A396403.P9152168459652782253

namespace A396403

/-- `A002262(n)^C(A025581(n), 2)` -/
def P9152168459652782253.Spec : Prop :=
  ∀ n, P9152168459652782253.a n = A396403 n

end A396403

/-! ## A396403.P1881153082126949978

`col(n)^C(A025683(n+1), 2)`
-/

namespace A396403.P1881153082126949978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ Nat.choose (A025683 (n + 1)).toNat 2

end

end A396403.P1881153082126949978

namespace A396403

/-- `col(n)^C(A025683(n+1), 2)` -/
def P1881153082126949978.Spec : Prop :=
  ∀ n, (P1881153082126949978.a n : ℤ) = A396403 n

end A396403

/-!
# A396404: Antidiagonal sums of A396403.

The programs for A396404, there is no canonical definition to state claims against.
-/

/-! ## A396404.P15315208114996807317

`∑{#}[n, (n-#)^C(#, 2)]`
-/

namespace A396404.P15315208114996807317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - (k : ℤ)) ^ Nat.choose k 2

end

end A396404.P15315208114996807317

/-!
# A396405: A sequence constructed by greedily sampling the probability distribution given by 1/log_2(i+1)^2 - 1/log_2(i+2)^2 to minimize ratio discrepancy.

The programs for A396405, there is no canonical definition to state claims against.
-/

/-! ## A396405.P9528211734468974319

`gcd(A002910(n), A381522(n+1))`
-/

namespace A396405.P9528211734468974319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002910 n) (A381522 (n + 1))

end

end A396405.P9528211734468974319

/-! ## A396405.P13565958618095220815

`A381522(n+1)%A375027(n+1)`
-/

namespace A396405.P13565958618095220815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381522 (n + 1)) (A375027 (n + 1))

end

end A396405.P13565958618095220815

/-! ## A396405.P300461148432744624

`and(A234936(n+2), A381522(n+1))`
-/

namespace A396405.P300461148432744624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A234936 (n + 2)) (A381522 (n + 1))

end

end A396405.P300461148432744624

/-! ## A396405.P5376044771536589544

`A243713(A381522(n+1))%A183016(n+1)`
-/

namespace A396405.P5376044771536589544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243713 (A381522 (n + 1)).toNat) (A183016 (n + 1))

end

end A396405.P5376044771536589544

/-!
# A396406: Number of distinct affine isometries at word-length n in the side-reflection group of a right triangle in the plane whose legs have transcendental ratio; independent of the choice of triangle.

The programs for A396406, there is no canonical definition to state claims against.
-/

/-! ## A396406.P13537050984042789822

`∪[A000045(n+4), A401258(A398958(n+1))]`
-/

namespace A396406.P13537050984042789822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401258 (A398958 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396406.P13537050984042789822

/-! ## A396406.P9328089834385432045

`∪[A000045(n+4), A000246(A377390(3*n))]`
-/

namespace A396406.P9328089834385432045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 (A377390 (3 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396406.P9328089834385432045

/-!
# A396409: Number of iterations of x -> x XOR 2^A000120(x) from x = n to reach a number of the form 2^m-1.

The programs for A396409, the canonical program `A396409.P16372428509261204668` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396409 has offset 0).

The definition of A396409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396409.P2832380059938815650

`∑{e}[or(n, n+1)-n, #]-A397100(n)`
-/

namespace A396409.P2832380059938815650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A397100 n

end

end A396409.P2832380059938815650

namespace A396409

/-- `∑{e}[or(n, n+1)-n, #]-A397100(n)` -/
def P2832380059938815650.Spec : Prop :=
  ∀ n, P2832380059938815650.a n = A396409 n

end A396409

/-! ## A396409.P9084681117393821384

`A326730((n+1)/2^val(n+1, 2))-1`
-/

namespace A396409.P9084681117393821384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - 1

end

end A396409.P9084681117393821384

namespace A396409

/-- `A326730((n+1)/2^val(n+1, 2))-1` -/
def P9084681117393821384.Spec : Prop :=
  ∀ n, P9084681117393821384.a n = A396409 n

end A396409

/-! ## A396409.P16372428509261204668

`A326730(A025480(n))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A396409

/-- `A326730(A025480(n))` -/
def P16372428509261204668.Spec : Prop :=
  ∀ n, P16372428509261204668.a n = A396409 n

theorem P16372428509261204668.correct : P16372428509261204668.Spec := by
  intro n
  simp only [A396409]

end A396409

/-! ## A396409.P15004951091231725875

`A326730(A003602(1+n)-1)`
-/

namespace A396409.P15004951091231725875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A003602 (1 + n) - 1).toNat

end

end A396409.P15004951091231725875

namespace A396409

/-- `A326730(A003602(1+n)-1)` -/
def P15004951091231725875.Spec : Prop :=
  ∀ n, P15004951091231725875.a n = A396409 n

end A396409

/-! ## A396409.P7869203277249282943

`A007814(n+1)-A397100(n)`
-/

namespace A396409.P7869203277249282943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A397100 n

end

end A396409.P7869203277249282943

namespace A396409

/-- `A007814(n+1)-A397100(n)` -/
def P7869203277249282943.Spec : Prop :=
  ∀ n, P7869203277249282943.a n = A396409 n

theorem P7869203277249282943.correct : P7869203277249282943.Spec := by
  intro n
  simp only [A396409, Nat.add_sub_cancel, A396409.P7869203277249282943.a, A396409.P16372428509261204668.a, A007814, A007814.P13537437864234730737.a, A025480, A025480.P15873863116418380882.a, A326730, A326730.P12598629395687838766.a, A397100, A397100.P2153576112342565242.a, A000120, A000120.P2816527436160941581.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A029931, A029931.P9873769426762813119.a, A005187, A005187.P3874015513960485494.a, A029930, A029930.P11577499233529821410.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396409

/-! ## A396409.P8764725659743948392

`(A037227(n+1)-1)/2-A397100(n)`
-/

namespace A396409.P8764725659743948392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037227 (n + 1) - 1 : ℚ) / 2 - (A397100 n : ℚ)

end

end A396409.P8764725659743948392

namespace A396409

/-- `(A037227(n+1)-1)/2-A397100(n)` -/
def P8764725659743948392.Spec : Prop :=
  ∀ n, P8764725659743948392.a n = (A396409 n : ℚ)

theorem P8764725659743948392.correct : P8764725659743948392.Spec := by
  intro n
  simp only [A396409, Nat.add_sub_cancel, A396409.P8764725659743948392.a, A396409.P16372428509261204668.a, A025480, A025480.P15873863116418380882.a, A037227, A037227.P1481052513991100259.a, A326730, A326730.P12598629395687838766.a, A397100, A397100.P2153576112342565242.a, A000120, A000120.P2816527436160941581.a, A006519, A006519.P10435570611646570274.a, A007814, A007814.P13537437864234730737.a, A029931, A029931.P9873769426762813119.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A029930, A029930.P11577499233529821410.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396409

/-! ## A396409.P6757623886610951493

`A055941((n+1)/2^val(n+1, 2))+A055941(n)`
-/

namespace A396409.P6757623886610951493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + A055941 n

end

end A396409.P6757623886610951493

namespace A396409

/-- `A055941((n+1)/2^val(n+1, 2))+A055941(n)` -/
def P6757623886610951493.Spec : Prop :=
  ∀ n, P6757623886610951493.a n = A396409 n

end A396409

/-! ## A396409.P13812136852778523688

`A055941(A025480(n))+A055941(n)`
-/

namespace A396409.P13812136852778523688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A025480 n).toNat + A055941 n

end

end A396409.P13812136852778523688

namespace A396409

/-- `A055941(A025480(n))+A055941(n)` -/
def P13812136852778523688.Spec : Prop :=
  ∀ n, P13812136852778523688.a n = A396409 n

end A396409

/-! ## A396409.P12074019731654172746

`A055941(A000265(n+1))+A055941(n)`
-/

namespace A396409.P12074019731654172746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A000265 (n + 1)).toNat + A055941 n

end

end A396409.P12074019731654172746

namespace A396409

/-- `A055941(A000265(n+1))+A055941(n)` -/
def P12074019731654172746.Spec : Prop :=
  ∀ n, P12074019731654172746.a n = A396409 n

end A396409

/-!
# A396410: Numbers that are both highly factorable numbers (A033833) and highly composite numbers (A002182).

The programs for A396410, there is no canonical definition to state claims against.
-/

/-! ## A396410.P5147145473715500485

`filter[A033833(n+1), A322586(#)]`
-/

namespace A396410.P5147145473715500485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A396410.P5147145473715500485

/-! ## A396410.P3977195180629963641

`∩[A002182(n+1), A033833(n+1)]`
-/

namespace A396410.P3977195180629963641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396410.P3977195180629963641

/-! ## A396410.P8153148183600414788

`∩[A033833(n+1), A097212(n+1)]`
-/

namespace A396410.P8153148183600414788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396410.P8153148183600414788

/-! ## A396410.P3754736871218099279

`∩[A033833(n+1), A134865(n+1)]`
-/

namespace A396410.P3754736871218099279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396410.P3754736871218099279

/-! ## A396410.P15539829990072415553

`∩[A033833(n+1), A212169(n+1)]`
-/

namespace A396410.P15539829990072415553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396410.P15539829990072415553

/-!
# A396412: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G3(x) with G3(x) = 1 + x*G3(x)^3.

The programs for A396412, there is no canonical definition to state claims against.
-/

/-! ## A396412.P622724353294225916

`A007966(A362588(n))`
-/

namespace A396412.P622724353294225916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A362588 n).toNat

end

end A396412.P622724353294225916

/-! ## A396412.P17952982718614499284

`A102705(A362079(n))`
-/

namespace A396412.P17952982718614499284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A362079 n).toNat

end

end A396412.P17952982718614499284

/-! ## A396412.P8511793370672119931

`A102705(A378289(n))`
-/

namespace A396412.P8511793370672119931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A378289 n).toNat

end

end A396412.P8511793370672119931

/-! ## A396412.P8718350299543600923

`A382019(A396498(n))`
-/

namespace A396412.P8718350299543600923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A396498 n).toNat

end

end A396412.P8718350299543600923

/-! ## A396412.P7208856835029511065

`A373624(A349971(n+1))`
-/

namespace A396412.P7208856835029511065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373624 (A349971 (n + 1)).toNat

end

end A396412.P7208856835029511065

/-!
# A396413: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G4(x) with G4(x) = 1 + x*G4(x)^4.

The programs for A396413, there is no canonical definition to state claims against.
-/

/-! ## A396413.P4882504126446646039

`A372826(A378236(n))`
-/

namespace A396413.P4882504126446646039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372826 (A378236 n).toNat

end

end A396413.P4882504126446646039

/-! ## A396413.P12709112545777394930

`xor(A119896(2*n+5)%A156953(n), A384978(n))`
-/

namespace A396413.P12709112545777394930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A119896 (2 * n + 5)) (A156953 n)) (A384978 n)

end

end A396413.P12709112545777394930

/-! ## A396413.P7347424767967897805

`A007966(A362787(n))`
-/

namespace A396413.P7347424767967897805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A362787 n).toNat

end

end A396413.P7347424767967897805

/-! ## A396413.P4090323555084576157

`A122341(A384751(n))`
-/

namespace A396413.P4090323555084576157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122341 (A384751 n).toNat

end

end A396413.P4090323555084576157

/-! ## A396413.P3753336229163587719

`A174231(A378239(n))`
-/

namespace A396413.P3753336229163587719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A378239 n).toNat

end

end A396413.P3753336229163587719

/-!
# A396414: Expansion of F_2(x)/x, where F_k(x) is the k-th iteration of x*G3(x) with G3(x) = 1 + x*G3(x)^3.

The programs for A396414, there is no canonical definition to state claims against.
-/

/-! ## A396414.P8557270856642279727

`A396412(∑[n+3])`
-/

namespace A396414.P8557270856642279727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396412 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396414.P8557270856642279727

/-! ## A396414.P1947089934229867795

`record[A010054(n+3)*A396412(n)]`
-/

namespace A396414.P1947089934229867795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A396412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396414.P1947089934229867795

/-! ## A396414.P8075811321425633738

`record[A396412(n)/A048505(n+2)]`
-/

namespace A396414.P8075811321425633738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396412 n : ℚ) / (A048505 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396414.P8075811321425633738

/-! ## A396414.P14553363170159306726

`record[A396412(gcd(n, A396412(n+2)))]`
-/

namespace A396414.P14553363170159306726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396412 (Int.gcd (n : ℤ) (A396412 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396414.P14553363170159306726

/-! ## A396414.P11233404231906315752

`A396412(A141214(n))%A023989(n)`
-/

namespace A396414.P11233404231906315752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396412 (A141214 n).toNat) (A023989 n)

end

end A396414.P11233404231906315752

/-!
# A396415: Expansion of F_3(x)/x, where F_k(x) is the k-th iteration of x*G3(x) with G3(x) = 1 + x*G3(x)^3.

The programs for A396415, there is no canonical definition to state claims against.
-/

/-! ## A396415.P7089466271618156271

`∑{#}[n, (#+1)*C(3*n-2*#+1, n-#)/(3*n-2*#+1)*A396414(#)]`
-/

namespace A396415.P7089466271618156271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) * Nat.choose ((3 * n : ℤ) - (2 * k : ℤ) + 1).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ) / ((3 * n : ℤ) - (2 * k : ℤ) + 1 : ℚ) * (A396414 k : ℚ)

end

end A396415.P7089466271618156271

/-! ## A396415.P796432129956500404

`A396412(A046691(2+n))`
-/

namespace A396415.P796432129956500404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396412 (A046691 (2 + n)).toNat

end

end A396415.P796432129956500404

/-! ## A396415.P1131969558458107778

`A396412(A000217(n+4)-4)`
-/

namespace A396415.P1131969558458107778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396412 (A000217 (n + 4) - 4).toNat

end

end A396415.P1131969558458107778

/-! ## A396415.P6515032602683056473

`A396412(eq[4, A004736(n+1)])`
-/

namespace A396415.P6515032602683056473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A396415.P6515032602683056473

/-!
# A396416: Expansion of F_2(x)/x, where F_k(x) is the k-th iteration of x*G4(x) with G4(x) = 1 + x*G4(x)^4.

The programs for A396416, there is no canonical definition to state claims against.
-/

/-! ## A396416.P15972478973913522782

`A396413(∑[3+n])`
-/

namespace A396416.P15972478973913522782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396416.P15972478973913522782

/-! ## A396416.P163114747860300640

`record[A396413(lt[0, A008275(n+1)])]`
-/

namespace A396416.P163114747860300640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396416.P163114747860300640

/-! ## A396416.P11675324499386839077

`record[A010054(n+3)*A396413(n)]`
-/

namespace A396416.P11675324499386839077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A396413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396416.P11675324499386839077

/-! ## A396416.P4533819281261015862

`record[A396413(gcd(n, A396412(n+2)))]`
-/

namespace A396416.P4533819281261015862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 (Int.gcd (n : ℤ) (A396412 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396416.P4533819281261015862

/-! ## A396416.P711058486750167797

`A396413(A141214(n))+A326683(n)`
-/

namespace A396416.P711058486750167797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 (A141214 n).toNat + A326683 n

end

end A396416.P711058486750167797

/-!
# A396417: Expansion of F_3(x)/x, where F_k(x) is the k-th iteration of x*G4(x) with G4(x) = 1 + x*G4(x)^4.

The programs for A396417, there is no canonical definition to state claims against.
-/

/-! ## A396417.P14862582693024055070

`∑{#}[n, (#+1)*C(4*n-3*#+1, n-#)/(4*n-3*#+1)*A396416(#)]`
-/

namespace A396417.P14862582693024055070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) * Nat.choose ((4 * n : ℤ) - (3 * k : ℤ) + 1).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ) / ((4 * n : ℤ) - (3 * k : ℤ) + 1 : ℚ) * (A396416 k : ℚ)

end

end A396417.P14862582693024055070

/-! ## A396417.P8403647552119402471

`A396413(A046691(n+2))`
-/

namespace A396417.P8403647552119402471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 (A046691 (n + 2)).toNat

end

end A396417.P8403647552119402471

/-! ## A396417.P8590706111407991165

`A396413(A000217(n+4)-4)`
-/

namespace A396417.P8590706111407991165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 (A000217 (n + 4) - 4).toNat

end

end A396417.P8590706111407991165

/-! ## A396417.P539701326599753658

`A396413(eq[4, A004736(n+1)])`
-/

namespace A396417.P539701326599753658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A396417.P539701326599753658

/-!
# A396418: a(n) is the smallest n-digit prime that produces the most primes according to rules stipulated in Honaker's A048853.

The programs for A396418, there is no canonical definition to state claims against.
-/

/-! ## A396418.P18409543766584671586

`A050673(A121444(n)*A396419(n+1))`
-/

namespace A396418.P18409543766584671586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050673 (A121444 n * A396419 (n + 1)).toNat

end

end A396418.P18409543766584671586

/-!
# A396423: a(n) = r(n,n), where r(1,k)=f(k)=floor(k*c), r(n,k)=f(r(n-1,k)), c=5/3.

The programs for A396423, there is no canonical definition to state claims against.
-/

/-! ## A396423.P12355517875369822655

`A193259(A134270(n+1))`
-/

namespace A396423.P12355517875369822655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193259 (A134270 (n + 1)).toNat

end

end A396423.P12355517875369822655

/-! ## A396423.P669517782361418439

`A004736(A024718(n+3)+n)`
-/

namespace A396423.P669517782361418439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A024718 (n + 3) + (n : ℤ)).toNat

end

end A396423.P669517782361418439

/-!
# A396424: a(n) = r(n,n), where r(1,k)=f(k)=ceiling(k*c), r(n,k)=f(r(n-1,k)), c=5/3.

The programs for A396424, there is no canonical definition to state claims against.
-/

/-! ## A396424.P9882268070951699557

`A056239((2+(3-2*sqrt(2))^(n+1)+(3+2*sqrt(2))^(n+1))/4)+A048739(n)`
-/

namespace A396424.P9882268070951699557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 + (3 - 2 * Real.sqrt (2 : ℝ)) ^ (n + 1) + (3 + 2 * Real.sqrt (2 : ℝ)) ^ (n + 1)) / 4)).toNat + A048739 n

end

end A396424.P9882268070951699557

/-! ## A396424.P13915353054508382594

`A132411(n)+A003056(A010917(n))`
-/

namespace A396424.P13915353054508382594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n + A003056 (A010917 n).toNat

end

end A396424.P13915353054508382594

/-!
# A396425: a(n) = r(n,n), where r(1,k)=f(k)=round(k*c), r(n,k)=f(r(n-1,k)), c=5/3.

The programs for A396425, there is no canonical definition to state claims against.
-/

/-! ## A396425.P13877553591871812313

`A319847(A247395(n))+A182705(n+1)`
-/

namespace A396425.P13877553591871812313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319847 (A247395 n).toNat + A182705 (n + 1)

end

end A396425.P13877553591871812313

/-! ## A396425.P17457939349570073760

`A325460(A262803(n)+A184117(n+1))`
-/

namespace A396425.P17457939349570073760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (A262803 n + A184117 (n + 1)).toNat

end

end A396425.P17457939349570073760

/-!
# A396427: Total number of edge-collision walks on the complete directed graph with self-loops on n labeled vertices.

The programs for A396427, there is no canonical definition to state claims against.
-/

/-! ## A396427.P18101933693640768100

`n*A246536(n+1)+1`
-/

namespace A396427.P18101933693640768100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A246536 (n + 1) + 1

end

end A396427.P18101933693640768100

/-!
# A396429: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G3(x)^2 with G3(x) = 1 + x*G3(x)^3.

The programs for A396429, there is no canonical definition to state claims against.
-/

/-! ## A396429.P10559988807253072834

`A396504(n)%(A106452(A341268(n))+A057731(n+1))`
-/

namespace A396429.P10559988807253072834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396504 n) (A106452 (A341268 n).toNat + A057731 (n + 1))

end

end A396429.P10559988807253072834

/-! ## A396429.P7757675768436116718

`A175585(A378238(n))%(A341268(n)+A212640(n+1))`
-/

namespace A396429.P7757675768436116718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175585 (A378238 n).toNat) (A341268 n + A212640 (n + 1))

end

end A396429.P7757675768436116718

/-!
# A396430: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G4(x)^2 with G4(x) = 1 + x*G4(x)^4.

The programs for A396430, there is no canonical definition to state claims against.
-/

/-! ## A396430.P13504468036264480336

`A196082(A396588(n)+A306697(n+1))`
-/

namespace A396430.P13504468036264480336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196082 (A396588 n + A306697 (n + 1)).toNat

end

end A396430.P13504468036264480336

/-! ## A396430.P1574386462347865278

`A396466(n)-A326683(A056512(n+1))`
-/

namespace A396430.P1574386462347865278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396466 n - A326683 (A056512 (n + 1)).toNat

end

end A396430.P1574386462347865278

/-! ## A396430.P15983405774727182750

`and(A117223(A217932(n+1)), A274390(n))`
-/

namespace A396430.P15983405774727182750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117223 (A217932 (n + 1)).toNat) (A274390 n)

end

end A396430.P15983405774727182750

/-!
# A396431: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G4(x)^3 with G4(x) = 1 + x*G4(x)^4.

The programs for A396431, there is no canonical definition to state claims against.
-/

/-! ## A396431.P12182340307122174585

`A072088(A384751(n))*A361966(A053615(2*n+1))`
-/

namespace A396431.P12182340307122174585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A384751 n).toNat * A361966 (A053615 (2 * n + 1)).toNat

end

end A396431.P12182340307122174585

/-! ## A396431.P4353790433907375015

`A381573(A049872(n))`
-/

namespace A396431.P4353790433907375015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (A049872 n).toNat

end

end A396431.P4353790433907375015

/-! ## A396431.P6164122062364083622

`A381573(A062279(n))`
-/

namespace A396431.P6164122062364083622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (A062279 n).toNat

end

end A396431.P6164122062364083622

/-! ## A396431.P7698472584620373034

`A381573(A004862(n+1))`
-/

namespace A396431.P7698472584620373034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (A004862 (n + 1)).toNat

end

end A396431.P7698472584620373034

/-! ## A396431.P894354970119630090

`A381573(A004873(n+1))`
-/

namespace A396431.P894354970119630090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (A004873 (n + 1)).toNat

end

end A396431.P894354970119630090

/-!
# A396432: Expansion of (F_2(x)/x)^(1/2), where F_k(x) is the k-th iteration of x*G3(x)^2 with G3(x) = 1 + x*G3(x)^3.

The programs for A396432, there is no canonical definition to state claims against.
-/

/-! ## A396432.P11396117955737197111

`A396446(∑[3+n])`
-/

namespace A396432.P11396117955737197111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396446 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396432.P11396117955737197111

/-! ## A396432.P12990309961872455990

`A396446(A141214(n))*A396446(A359855(n+1))`
-/

namespace A396432.P12990309961872455990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396446 (A141214 n).toNat * A396446 (A359855 (n + 1)).toNat

end

end A396432.P12990309961872455990

/-! ## A396432.P4763283151559884706

`A396446(A141214(n))^A396446(A359855(n+3))`
-/

namespace A396432.P4763283151559884706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396446 (A141214 n).toNat : ℚ) ^ (A396446 (A359855 (n + 3)).toNat : ℤ)

end

end A396432.P4763283151559884706

/-!
# A396433: Expansion of (F_2(x)/x)^(1/2), where F_k(x) is the k-th iteration of x*G4(x)^2 with G4(x) = 1 + x*G4(x)^4.

The programs for A396433, there is no canonical definition to state claims against.
-/

/-! ## A396433.P4623201784373147696

`A396447(∑[3+n])`
-/

namespace A396433.P4623201784373147696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396433.P4623201784373147696

/-! ## A396433.P3124570287441649131

`A181937(n)*A396447(A141214(n))`
-/

namespace A396433.P3124570287441649131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n * A396447 (A141214 n).toNat

end

end A396433.P3124570287441649131

/-!
# A396434: Expansion of (F_2(x)/x)^(1/3), where F_k(x) is the k-th iteration of x*G4(x)^3 with G4(x) = 1 + x*G4(x)^4.

The programs for A396434, there is no canonical definition to state claims against.
-/

/-! ## A396434.P16316447496953872490

`A396448(∑[3+n])`
-/

namespace A396434.P16316447496953872490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396434.P16316447496953872490

/-! ## A396434.P12682906721197932237

`record[A396448(record[A087401(n)])]`
-/

namespace A396434.P12682906721197932237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396448 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396434.P12682906721197932237

/-! ## A396434.P17814232686125681067

`record[A396448(n)/A396457(n+3)]`
-/

namespace A396434.P17814232686125681067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396448 n : ℚ) / (A396457 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396434.P17814232686125681067

/-!
# A396446: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] (F_k(x)/x)^(1/2) and F_k(x) is the k-th iteration of x*G3(x)^2 with G3(x) = 1 + x*G3(x)^3.

The programs for A396446, there is no canonical definition to state claims against.
-/

/-! ## A396446.P5687890579284577183

`or(A101264(A008965(n+4)), A396412(n))`
-/

namespace A396446.P5687890579284577183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101264 (A008965 (n + 4)).toNat) (A396412 n)

end

end A396446.P5687890579284577183

/-! ## A396446.P249512477020405040

`A396998(n+1)-A110174(A078860(n+1))`
-/

namespace A396446.P249512477020405040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396998 (n + 1) - A110174 (A078860 (n + 1)).toNat

end

end A396446.P249512477020405040

/-! ## A396446.P13591158259797616177

`A396412(n)+A217884(3*(n+1))%A133687(n)`
-/

namespace A396446.P13591158259797616177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396412 n + Int.tmod (A217884 (3 * (n + 1))) (A133687 n)

end

end A396446.P13591158259797616177

/-! ## A396446.P15589792560971582926

`A222254(A396412(n))+A000007(A128457(n+1))`
-/

namespace A396446.P15589792560971582926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A396412 n).toNat + A000007 (A128457 (n + 1)).toNat

end

end A396446.P15589792560971582926

/-! ## A396446.P17442695858505319181

`A222254(A396412(n))+A000007(A129339(n+1))`
-/

namespace A396446.P17442695858505319181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A396412 n).toNat + A000007 (A129339 (n + 1)).toNat

end

end A396446.P17442695858505319181

/-!
# A396447: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] (F_k(x)/x)^(1/2) and F_k(x) is the k-th iteration of x*G4(x)^2 with G4(x) = 1 + x*G4(x)^4.

The programs for A396447, there is no canonical definition to state claims against.
-/

/-! ## A396447.P8353604914658887671

`A396971(n+1)+A249517(A144150(n))`
-/

namespace A396447.P8353604914658887671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396971 (n + 1) + A249517 (A144150 n).toNat

end

end A396447.P8353604914658887671

/-! ## A396447.P15454641676884569362

`A396413(n)+A324731(A022173(n)+1)`
-/

namespace A396447.P15454641676884569362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 n + A324731 (A022173 n + 1).toNat

end

end A396447.P15454641676884569362

/-! ## A396447.P6706208493486045491

`A396413(n)+A122840(A100683(n+1))`
-/

namespace A396447.P6706208493486045491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 n + A122840 (A100683 (n + 1)).toNat

end

end A396447.P6706208493486045491

/-! ## A396447.P9426231712411603604

`A396413(n)+A178514(A267338(n+1))`
-/

namespace A396447.P9426231712411603604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 n + A178514 (A267338 (n + 1)).toNat

end

end A396447.P9426231712411603604

/-! ## A396447.P7079987566900801604

`or(A000007(A396498(2*n+3)), A396413(n))`
-/

namespace A396447.P7079987566900801604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A396498 (2 * n + 3)).toNat) (A396413 n)

end

end A396447.P7079987566900801604

/-!
# A396448: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] (F_k(x)/x)^(1/3) and F_k(x) is the k-th iteration of x*G4(x)^3 with G4(x) = 1 + x*G4(x)^4.

The programs for A396448, there is no canonical definition to state claims against.
-/

/-! ## A396448.P11421659180326470400

`A089867(A351761(n))`
-/

namespace A396448.P11421659180326470400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A351761 n).toNat

end

end A396448.P11421659180326470400

/-! ## A396448.P13433317691710242547

`A351761(n)+A010815(A135193(n+1))`
-/

namespace A396448.P13433317691710242547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351761 n + A010815 (A135193 (n + 1)).toNat

end

end A396448.P13433317691710242547

/-! ## A396448.P13545516479031103257

`A351761(n)+A021913(A395456(n))`
-/

namespace A396448.P13545516479031103257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351761 n + A021913 (A395456 n).toNat

end

end A396448.P13545516479031103257

/-! ## A396448.P8581233513694134744

`A380178(n)+A083915(A135897(n))`
-/

namespace A396448.P8581233513694134744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380178 n + A083915 (A135897 n).toNat

end

end A396448.P8581233513694134744

/-! ## A396448.P1305960107912975104

`A351761(n)+A295659(A000041(3*n+4))`
-/

namespace A396448.P1305960107912975104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351761 n + A295659 (A000041 (3 * n + 4)).toNat

end

end A396448.P1305960107912975104

/-!
# A396453: Primes p such that p^2 - 2 is a prime and p^2 + 2 is a semiprime.

The programs for A396453, there is no canonical definition to state claims against.
-/

/-! ## A396453.P10576719998116963221

`∩[A062326(n+1), A240878(n+1)]`
-/

namespace A396453.P10576719998116963221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396453.P10576719998116963221

/-! ## A396453.P15903169217768305990

`∩[A062326(n+1), A109953(n+1)]`
-/

namespace A396453.P15903169217768305990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396453.P15903169217768305990

/-! ## A396453.P7238180503184582735

`∩[A028870(n+1), A109953(n+1)]`
-/

namespace A396453.P7238180503184582735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396453.P7238180503184582735

/-! ## A396453.P15108085706908003518

`∩[A000040(A137291(n+1)), A109953(n+1)]`
-/

namespace A396453.P15108085706908003518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A137291 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396453.P15108085706908003518

/-! ## A396453.P14660892313592385067

`∩[A062326(n+1), A242330(n+1)]`
-/

namespace A396453.P14660892313592385067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396453.P14660892313592385067

/-!
# A396455: Primes p such that p^2 = A075254(k) for some k.

The programs for A396455, there is no canonical definition to state claims against.
-/

/-! ## A396455.P12887827403995469333

`p?[A390150(n+1)]`
-/

namespace A396455.P12887827403995469333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396455.P12887827403995469333

/-! ## A396455.P15186928730767773469

`filter[A390150(1+n), A010051(#)]`
-/

namespace A396455.P15186928730767773469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A396455.P15186928730767773469

/-! ## A396455.P13741401319946006253

`filter[A390150(n+1), A167865(#)]`
-/

namespace A396455.P13741401319946006253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167865 (f1 j).toNat = 1) n)

end

end A396455.P13741401319946006253

/-! ## A396455.P12156077337299765484

`filter[A390150(2+n), A080339(#)]`
-/

namespace A396455.P12156077337299765484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A396455.P12156077337299765484

/-! ## A396455.P16929857751974578610

`∩[A000040(n+1), A390150(n+1)]`
-/

namespace A396455.P16929857751974578610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P16929857751974578610

/-! ## A396455.P2427210923085754101

`∩[A045319(n+1), A390150(n+1)]`
-/

namespace A396455.P2427210923085754101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P2427210923085754101

/-! ## A396455.P15383253283812475904

`∩[A045344(n+1), A390150(n+1)]`
-/

namespace A396455.P15383253283812475904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P15383253283812475904

/-! ## A396455.P2783910660061083718

`∩[A175787(n+1), A390150(n+1)]`
-/

namespace A396455.P2783910660061083718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P2783910660061083718

/-! ## A396455.P13257153795766279537

`∩[A182986(n+1), A390150(n+1)]`
-/

namespace A396455.P13257153795766279537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P13257153795766279537

/-! ## A396455.P15477843976090260428

`∩[A240960(n+1), A390150(n+1)]`
-/

namespace A396455.P15477843976090260428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P15477843976090260428

/-! ## A396455.P2802707107681241746

`∩[A348283(n+1), A390150(n+1)]`
-/

namespace A396455.P2802707107681241746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P2802707107681241746

/-!
# A396456: Smallest prime greater than the n-th prime-complete number.

The programs for A396456, there is no canonical definition to state claims against.
-/

/-! ## A396456.P2682933192663827248

`A151800(A055932(n+2))`
-/

namespace A396456.P2682933192663827248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A055932 (n + 2)).toNat

end

end A396456.P2682933192663827248

/-! ## A396456.P10983846341791626704

`A066169(A055932(2+n))`
-/

namespace A396456.P10983846341791626704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A055932 (2 + n)).toNat

end

end A396456.P10983846341791626704

/-! ## A396456.P2009554732205517572

`A007918(A055932(n+2)+1)`
-/

namespace A396456.P2009554732205517572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A055932 (n + 2) + 1).toNat

end

end A396456.P2009554732205517572

/-! ## A396456.P3264909691952749870

`A151800(eq[1, A286469(n+1)]+1)`
-/

namespace A396456.P3264909691952749870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A396456.P3264909691952749870

/-! ## A396456.P8859889684943733313

`A151800(eq[A083720(n+1), n%2]+1)`
-/

namespace A396456.P8859889684943733313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083720 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1)

end

end A396456.P8859889684943733313

/-!
# A396463: Consider the square spiral in a single quadrant with its cells numbered starting at 0. Three players take turns and place black knights(K), cyan antelopes(A), and red ferzes(F), respectively, at the smallest unoccupied cell not attacked by an existing pieces of a different color. Sequence lists squares occupied by a red ferz.

The programs for A396463, there is no canonical definition to state claims against.
-/

/-! ## A396463.P3337477238374902762

`A266619(A000296(n))+A059456(n+1)`
-/

namespace A396463.P3337477238374902762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266619 (A000296 n).toNat + A059456 (n + 1)

end

end A396463.P3337477238374902762

/-! ## A396463.P5828740865653684623

`lt[A034735(A093412(2*(n+1))), A350601(n+1)]`
-/

namespace A396463.P5828740865653684623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034735 (A093412 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350601 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396463.P5828740865653684623

/-!
# A396466: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] (F_k(x)/x)^(2/3) and F_k(x) is the k-th iteration of x*G4(x)^3 with G4(x) = 1 + x*G4(x)^4.

The programs for A396466, there is no canonical definition to state claims against.
-/

/-! ## A396466.P8623689427781504741

`A055572(A396430(n))`
-/

namespace A396466.P8623689427781504741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A396430 n).toNat

end

end A396466.P8623689427781504741

/-! ## A396466.P5690423837971250336

`A274390(n)-A337451(A185254(n))`
-/

namespace A396466.P5690423837971250336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 n - A337451 (A185254 n).toNat

end

end A396466.P5690423837971250336

/-!
# A396467: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and excluding the centers of three triangles in a same symmetrical axis.

The programs for A396467, the canonical program `A396467.P1293345253100451359` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396467 has offset 1).

The definition of A396467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396467.P1293345253100451359

`A396285(n+1)-C(n+1, 3)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396467

/-- `A396285(n+1)-C(n+1, 3)` -/
def P1293345253100451359.Spec : Prop :=
  ∀ n, P1293345253100451359.a n = A396467 (n + 1)

theorem P1293345253100451359.correct : P1293345253100451359.Spec := by
  intro n
  simp only [A396467, Nat.add_sub_cancel]

end A396467

/-!
# A396468: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and triples in which all three triangles lie in the same row parallel to a side of the grid.

The programs for A396468, the canonical program `A396468.P381070870614237921` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396468 has offset 1).

The definition of A396468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396468.P381070870614237921

`A396285(n+1)-∑[A000447(n)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396468

/-- `A396285(n+1)-∑[A000447(n)]` -/
def P381070870614237921.Spec : Prop :=
  ∀ n, P381070870614237921.a n = A396468 (n + 1)

theorem P381070870614237921.correct : P381070870614237921.Spec := by
  intro n
  simp only [A396468, Nat.add_sub_cancel]

end A396468

/-!
# A396470: Sum of the distinct prime divisors of C(prime(n), n).

The programs for A396470, there is no canonical definition to state claims against.
-/

/-! ## A396470.P780988594408897600

`∑{p}[A060604(n+1), #]`
-/

namespace A396470.P780988594408897600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A396470.P780988594408897600

/-! ## A396470.P725708189357105665

`∑{p}[C(Δ[A007504(n)], n+1), #]`
-/

namespace A396470.P725708189357105665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (n + 1) - f2 n).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A396470.P725708189357105665

/-! ## A396470.P3494072246679087023

`∑{p}[C(A000040(n+1), n+1), #]`
-/

namespace A396470.P3494072246679087023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A396470.P3494072246679087023

/-! ## A396470.P6737598152120513358

`∑{p}[C(A238852(n+1), n+1), #]`
-/

namespace A396470.P6737598152120513358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238852 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A396470.P6737598152120513358

/-! ## A396470.P8917029110230697025

`∑{p}[C(A238853(n+1), n+1), #]`
-/

namespace A396470.P8917029110230697025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238853 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A396470.P8917029110230697025

/-!
# A396471: Irregular triangle read by rows: row n lists the coefficients of Product_{k=0..n-1} (1 + x^Fibonacci(k+2)).

The programs for A396471, there is no canonical definition to state claims against.
-/

/-! ## A396471.P2468888666497970339

`gcd(A001221(A052955(n)), A182590(n+6))`
-/

namespace A396471.P2468888666497970339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A052955 n).toNat) (A182590 (n + 6))

end

end A396471.P2468888666497970339

/-! ## A396471.P13362600654656609424

`A022303(A008277(n+1)*A334376(n+1))`
-/

namespace A396471.P13362600654656609424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A008277 (n + 1) * A334376 (n + 1)).toNat

end

end A396471.P13362600654656609424

/-!
# A396473: Expansion of g.f. (1 - 4*x^2)/(1 - 2*x - 4*x^2 + 2*x^3).

The programs for A396473, the canonical program `A396473.P6846612393426705265` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396473 has offset 0).

The definition of A396473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x^2)/(1-2x-4x^2+2x^3))` (program `A396473.P6846612393426705265`, by `A396473.P6846612393426705265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396473.P6846612393426705265

`ogf((1-4x^2)/(1-2x-4x^2+2x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396473

/-- `ogf((1-4x^2)/(1-2x-4x^2+2x^3))` -/
def P6846612393426705265.Spec : Prop :=
  ∀ n, P6846612393426705265.a n = A396473 n

theorem P6846612393426705265.correct : P6846612393426705265.Spec := by
  intro n
  simp only [A396473]

end A396473

/-! ## A396473.P4433085411227752813

`2*a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A396473.P4433085411227752813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 2 * a (n - 3)

end

end A396473.P4433085411227752813

namespace A396473

/-- `2*a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P4433085411227752813.Spec : Prop :=
  ∀ n, P4433085411227752813.a n = A396473 n

end A396473

/-! ## A396473.P1300252999270100738

`A384677(n+1)+A384677(n)-A384678(n)`
-/

namespace A396473.P1300252999270100738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384677 (n + 1) + (A384677 n - A384678 n)

end

end A396473.P1300252999270100738

namespace A396473

/-- `A384677(n+1)+A384677(n)-A384678(n)` -/
def P1300252999270100738.Spec : Prop :=
  ∀ n, P1300252999270100738.a n = A396473 n

end A396473

/-!
# A396474: Expansion of g.f. (1 - 7*x^2 - 2*x^4)/(1 - 2*x - 7*x^2 - 2*x^4 + 2*x^5).

The programs for A396474, the canonical program `A396474.P2294582637050824259` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396474 has offset 0).

The definition of A396474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x^2-2x^4)/(1-2x-7x^2-2x^4+2x^5))` (program `A396474.P2294582637050824259`, by `A396474.P2294582637050824259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396474.P2294582637050824259

`ogf((1-7x^2-2x^4)/(1-2x-7x^2-2x^4+2x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396474

/-- `ogf((1-7x^2-2x^4)/(1-2x-7x^2-2x^4+2x^5))` -/
def P2294582637050824259.Spec : Prop :=
  ∀ n, P2294582637050824259.a n = A396474 n

theorem P2294582637050824259.correct : P2294582637050824259.Spec := by
  intro n
  simp only [A396474]

end A396474

/-! ## A396474.P15223094748339416202

`2*a(n-1)+7*a(n-2)+2*a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=22, a(4)=72`
-/

namespace A396474.P15223094748339416202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 22, 72] fun n a =>
  2 * a (n - 1) + 7 * a (n - 2) + 2 * a (n - 4) - 2 * a (n - 5)

end

end A396474.P15223094748339416202

namespace A396474

/-- `2*a(n-1)+7*a(n-2)+2*a(n-4)-2*a(n-5)` -/
def P15223094748339416202.Spec : Prop :=
  ∀ n, P15223094748339416202.a n = A396474 n

end A396474

/-!
# A396475: Expansion of g.f. (1 - 11*x^2 - 20*x^4)/(1 - 2*x - 11*x^2 - 8*x^3 - 20*x^4 + 10*x^5).

The programs for A396475, the canonical program `A396475.P16693309358590420851` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396475 has offset 0).

The definition of A396475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-11x^2-20x^4)/(1-2x-11x^2-8x^3-20x^4+10x^5))` (program `A396475.P16693309358590420851`, by `A396475.P16693309358590420851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396475.P16693309358590420851

`ogf((1-11x^2-20x^4)/(1-2x-11x^2-8x^3-20x^4+10x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A396475

/-- `ogf((1-11x^2-20x^4)/(1-2x-11x^2-8x^3-20x^4+10x^5))` -/
def P16693309358590420851.Spec : Prop :=
  ∀ n, P16693309358590420851.a n = A396475 n

theorem P16693309358590420851.correct : P16693309358590420851.Spec := by
  intro n
  simp only [A396475]

end A396475

/-!
# A396476: Numbers k such that Q(zeta_{psi(k)}) has class number 1, where psi = A002322 is the reduced totient function.

The programs for A396476, there is no canonical definition to state claims against.
-/

/-! ## A396476.P12895575797001119953

`comp[A396477(n+1)-1]+1`
-/

namespace A396476.P12895575797001119953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396477 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396476.P12895575797001119953

/-! ## A396476.P7505031732964166714

`comp[A023443(A396477(n+1))]+1`
-/

namespace A396476.P7505031732964166714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A396477 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396476.P7505031732964166714

/-! ## A396476.P9490370184943942298

`comp[A085713(n+3)*A132350(A140454(n+1))]`
-/

namespace A396476.P9490370184943942298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085713 (n + 3) * A132350 (A140454 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396476.P9490370184943942298

/-! ## A396476.P10038816094661616086

`comp[A082419(A101307(n+1)+7)]+1`
-/

namespace A396476.P10038816094661616086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082419 (A101307 (n + 1) + 7).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396476.P10038816094661616086

/-! ## A396476.P13775199407987743739

`comp[A136799(6+A089072(n+1)*A075363(n+1))]+1`
-/

namespace A396476.P13775199407987743739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (6 + A089072 (n + 1) * A075363 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396476.P13775199407987743739

/-! ## A396476.P5805737689035290941

`comp[A005705(A318926(2*(n+1))+5)]+1`
-/

namespace A396476.P5805737689035290941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005705 (A318926 (2 * (n + 1)) + 5).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396476.P5805737689035290941

/-! ## A396476.P13960068724128144897

`comp[A057175(n+3)%A350445(n+1)²]`
-/

namespace A396476.P13960068724128144897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057175 (n + 3)) (A350445 (n + 1) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396476.P13960068724128144897

/-! ## A396476.P11018081143907999270

`comp[A000040(A147300(3*n+2)+14)-1]+1`
-/

namespace A396476.P11018081143907999270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A147300 (3 * n + 2) + 14).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396476.P11018081143907999270

/-! ## A396476.P14543471061435395187

`∑[val(A268115(A169945(n)), 7)+1]`
-/

namespace A396476.P14543471061435395187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268115 (A169945 n).toNat).toNat 7 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396476.P14543471061435395187

/-! ## A396476.P13858101382468525835

`∑[A071178(∑[A275201(2*(n+2))])]`
-/

namespace A396476.P13858101382468525835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275201 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396476.P13858101382468525835

/-!
# A396477: Numbers k such that Q(zeta_{psi(k)}) has class number greater than 1, where psi = A002322.

The programs for A396477, there is no canonical definition to state claims against.
-/

/-! ## A396477.P2122779168174212866

`comp[A396476(n+1)-1]+1`
-/

namespace A396477.P2122779168174212866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396476 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396477.P2122779168174212866

/-!
# A396478: Numbers k such that psi(k) has primitive roots (i.e., is in A033948), where psi = A002322.

The programs for A396478, there is no canonical definition to state claims against.
-/

/-! ## A396478.P15660009104157291302

`comp[A396479(n+1)-1]+1`
-/

namespace A396478.P15660009104157291302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396478.P15660009104157291302

/-! ## A396478.P18370852613562708008

`eq[char[A396479(n+1)], A000038(n)]`
-/

namespace A396478.P18370852613562708008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A396478.P18370852613562708008

/-! ## A396478.P2118235654284525746

`eq[1, A034380(A002322(n+1))]+1`
-/

namespace A396478.P2118235654284525746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A002322 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A396478.P2118235654284525746

/-! ## A396478.P3424530363206361347

`lt[A034380(A000010(n+1)-A104194(n+1)), 2]+1`
-/

namespace A396478.P3424530363206361347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A000010 (n + 1) - A104194 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396478.P3424530363206361347

/-! ## A396478.P4575975654851203312

`lt[A034380((A109606(n+1)+1)/A034380(n+1)), 2]+1`
-/

namespace A396478.P4575975654851203312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (SequenceMachineLib.roundAway ((A109606 (n + 1) + 1 : ℚ) / (A034380 (n + 1) : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396478.P4575975654851203312

/-! ## A396478.P4066147257525441839

`lt[A034380((A039649(n+1)-1)/A034380(n+1)), 2]+1`
-/

namespace A396478.P4066147257525441839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (SequenceMachineLib.roundAway ((A039649 (n + 1) - 1 : ℚ) / (A034380 (n + 1) : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396478.P4066147257525441839

/-! ## A396478.P2478961918284524564

`lt[A034380((n-A219428(n+1))/A034380(n+1)), 2]+1`
-/

namespace A396478.P2478961918284524564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (SequenceMachineLib.roundAway (((n : ℤ) - A219428 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396478.P2478961918284524564

/-!
# A396479: Numbers k such that psi(k) does not have primitive roots (i.e., is in A033949), where psi = A002322.

The programs for A396479, there is no canonical definition to state claims against.
-/

/-! ## A396479.P5995424359423066208

`comp[A396478(n+1)-1]+1`
-/

namespace A396479.P5995424359423066208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396479.P5995424359423066208

/-! ## A396479.P16063645260809783368

`eq[0, A046144(A002322(n+1))]+1`
-/

namespace A396479.P16063645260809783368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (A002322 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A396479.P16063645260809783368

/-! ## A396479.P8153803236490111021

`lt[A175723(A135833(n+1)), A379672(2*n+1)]`
-/

namespace A396479.P8153803236490111021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175723 (A135833 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379672 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396479.P8153803236490111021

/-!
# A396480: Primes p such that p-1 has primitive roots (i.e., is in A033948).

The programs for A396480, there is no canonical definition to state claims against.
-/

/-! ## A396480.P16270382996554939411

`∩[A077500(n+1), A179401(n+1)]`
-/

namespace A396480.P16270382996554939411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P16270382996554939411

/-! ## A396480.P2676718268252153263

`p?[A179401(n+1)]`
-/

namespace A396480.P2676718268252153263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396480.P2676718268252153263

/-! ## A396480.P5359163589443270511

`p?[A396478(n+1)]`
-/

namespace A396480.P5359163589443270511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396480.P5359163589443270511

/-! ## A396480.P3538046537670413259

`∩[A077500(n+1), A396478(n+1)]`
-/

namespace A396480.P3538046537670413259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3538046537670413259

/-! ## A396480.P15551282149515731447

`p?[A123101(n+1)]`
-/

namespace A396480.P15551282149515731447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396480.P15551282149515731447

/-! ## A396480.P6826014706469654970

`∩[A077500(n+1), A123101(n+1)]`
-/

namespace A396480.P6826014706469654970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P6826014706469654970

/-! ## A396480.P15571300744562003623

`∩[A179401(n+1), A301590(n+1)]`
-/

namespace A396480.P15571300744562003623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P15571300744562003623

/-! ## A396480.P3837146588107263784

`∩[A301590(n+1), A396478(n+1)]`
-/

namespace A396480.P3837146588107263784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3837146588107263784

/-! ## A396480.P1823346809527538614

`∩[A042987(n+1), A123101(n+1)]`
-/

namespace A396480.P1823346809527538614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P1823346809527538614

/-! ## A396480.P8101378639269781107

`∩[A042987(n+1), A179401(n+1)]`
-/

namespace A396480.P8101378639269781107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P8101378639269781107

/-! ## A396480.P18059397378809377504

`∩[A123101(n+1), A167135(n+1)]`
-/

namespace A396480.P18059397378809377504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P18059397378809377504

/-! ## A396480.P17971252398061253794

`∩[A123101(n+1), A216286(n+1)]`
-/

namespace A396480.P17971252398061253794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P17971252398061253794

/-! ## A396480.P2578063826619609108

`∩[A167135(n+1), A179401(n+1)]`
-/

namespace A396480.P2578063826619609108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P2578063826619609108

/-! ## A396480.P3957432579144036423

`∩[A179401(n+1), A216286(n+1)]`
-/

namespace A396480.P3957432579144036423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3957432579144036423

/-! ## A396480.P14904340584368522625

`∩[A042987(n+1), A396478(n+1)]`
-/

namespace A396480.P14904340584368522625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P14904340584368522625

/-! ## A396480.P3907512291651626016

`∩[A167135(n+1), A396478(n+1)]`
-/

namespace A396480.P3907512291651626016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3907512291651626016

/-! ## A396480.P10463296782261831243

`∩[A216286(n+1), A396478(n+1)]`
-/

namespace A396480.P10463296782261831243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P10463296782261831243

/-! ## A396480.P3698208287751958409

`∩[A040177(n+1), A123101(n+1)]`
-/

namespace A396480.P3698208287751958409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3698208287751958409

/-! ## A396480.P5596466494305866058

`∩[A040177(n+1), A179401(n+1)]`
-/

namespace A396480.P5596466494305866058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P5596466494305866058

/-! ## A396480.P4968955644993805798

`∩[A040177(n+1), A396478(n+1)]`
-/

namespace A396480.P4968955644993805798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P4968955644993805798

/-!
# A396481: Primes p such that p-1 does not have primitive roots (i.e., is in A033949).

The programs for A396481, the canonical program `A396481.P2226222884117461974` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396481 has offset 1).

The definition of A396481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396481.P2226222884117461974

`∩[A000040(n+1), A033949(n+1)+1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A396481

/-- `∩[A000040(n+1), A033949(n+1)+1]` -/
def P2226222884117461974.Spec : Prop :=
  ∀ n, (P2226222884117461974.a n : ℤ) = A396481 (n + 1)

theorem P2226222884117461974.correct : P2226222884117461974.Spec := by
  intro n
  simp only [A396481, Nat.add_sub_cancel]

end A396481

/-! ## A396481.P5191069458793889426

`∩[A033949(n+1)+1, A215848(n+1)]`
-/

namespace A396481.P5191069458793889426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P5191069458793889426

namespace A396481

/-- `∩[A033949(n+1)+1, A215848(n+1)]` -/
def P5191069458793889426.Spec : Prop :=
  ∀ n, (P5191069458793889426.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P10871366223342594975

`p?[A396479(n+1)]`
-/

namespace A396481.P10871366223342594975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396481.P10871366223342594975

namespace A396481

/-- `p?[A396479(n+1)]` -/
def P10871366223342594975.Spec : Prop :=
  ∀ n, P10871366223342594975.a n = A396481 (n + 1)

end A396481

/-! ## A396481.P5443144161522243695

`filter[A396479(n+1), A001222(#)]`
-/

namespace A396481.P5443144161522243695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A396481.P5443144161522243695

namespace A396481

/-- `filter[A396479(n+1), A001222(#)]` -/
def P5443144161522243695.Spec : Prop :=
  ∀ n, P5443144161522243695.a n = A396481 (n + 1)

end A396481

/-! ## A396481.P16510571393783784071

`filter[A396479(n+1), A010051(#)]`
-/

namespace A396481.P16510571393783784071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A396481.P16510571393783784071

namespace A396481

/-- `filter[A396479(n+1), A010051(#)]` -/
def P16510571393783784071.Spec : Prop :=
  ∀ n, P16510571393783784071.a n = A396481 (n + 1)

end A396481

/-! ## A396481.P12756133727857597785

`filter[A396479(n+1), A168066(#)]`
-/

namespace A396481.P12756133727857597785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168066 (f1 j).toNat = 1) n)

end

end A396481.P12756133727857597785

namespace A396481

/-- `filter[A396479(n+1), A168066(#)]` -/
def P12756133727857597785.Spec : Prop :=
  ∀ n, P12756133727857597785.a n = A396481 (n + 1)

end A396481

/-! ## A396481.P14141965783615348524

`∩[A000040(n+1), A396479(n+1)]`
-/

namespace A396481.P14141965783615348524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P14141965783615348524

namespace A396481

/-- `∩[A000040(n+1), A396479(n+1)]` -/
def P14141965783615348524.Spec : Prop :=
  ∀ n, (P14141965783615348524.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P15201563213592762501

`∩[A004139(n+1), A396479(n+1)]`
-/

namespace A396481.P15201563213592762501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P15201563213592762501

namespace A396481

/-- `∩[A004139(n+1), A396479(n+1)]` -/
def P15201563213592762501.Spec : Prop :=
  ∀ n, (P15201563213592762501.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P3020861752877722126

`∩[A006005(n+1), A396479(n+1)]`
-/

namespace A396481.P3020861752877722126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P3020861752877722126

namespace A396481

/-- `∩[A006005(n+1), A396479(n+1)]` -/
def P3020861752877722126.Spec : Prop :=
  ∀ n, (P3020861752877722126.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P9422125423788762433

`∩[A008578(n+1), A396479(n+1)]`
-/

namespace A396481.P9422125423788762433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P9422125423788762433

namespace A396481

/-- `∩[A008578(n+1), A396479(n+1)]` -/
def P9422125423788762433.Spec : Prop :=
  ∀ n, (P9422125423788762433.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P3047688772142505148

`∩[A045319(n+1), A396479(n+1)]`
-/

namespace A396481.P3047688772142505148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P3047688772142505148

namespace A396481

/-- `∩[A045319(n+1), A396479(n+1)]` -/
def P3047688772142505148.Spec : Prop :=
  ∀ n, (P3047688772142505148.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P15312402031165856336

`∩[A045344(n+1), A396479(n+1)]`
-/

namespace A396481.P15312402031165856336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P15312402031165856336

namespace A396481

/-- `∩[A045344(n+1), A396479(n+1)]` -/
def P15312402031165856336.Spec : Prop :=
  ∀ n, (P15312402031165856336.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P4733408322827167887

`∩[A046022(n+1), A396479(n+1)]`
-/

namespace A396481.P4733408322827167887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P4733408322827167887

namespace A396481

/-- `∩[A046022(n+1), A396479(n+1)]` -/
def P4733408322827167887.Spec : Prop :=
  ∀ n, (P4733408322827167887.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P9399583121860118750

`∩[A051948(n+1), A396479(n+1)]`
-/

namespace A396481.P9399583121860118750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P9399583121860118750

namespace A396481

/-- `∩[A051948(n+1), A396479(n+1)]` -/
def P9399583121860118750.Spec : Prop :=
  ∀ n, (P9399583121860118750.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P11687266027917300106

`∩[A059456(n+1), A396479(n+1)]`
-/

namespace A396481.P11687266027917300106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P11687266027917300106

namespace A396481

/-- `∩[A059456(n+1), A396479(n+1)]` -/
def P11687266027917300106.Spec : Prop :=
  ∀ n, (P11687266027917300106.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P5445257389755010091

`∩[A065091(n+1), A396479(n+1)]`
-/

namespace A396481.P5445257389755010091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P5445257389755010091

namespace A396481

/-- `∩[A065091(n+1), A396479(n+1)]` -/
def P5445257389755010091.Spec : Prop :=
  ∀ n, (P5445257389755010091.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P861149273423561307

`∩[A066050(n+1), A396479(n+1)]`
-/

namespace A396481.P861149273423561307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P861149273423561307

namespace A396481

/-- `∩[A066050(n+1), A396479(n+1)]` -/
def P861149273423561307.Spec : Prop :=
  ∀ n, (P861149273423561307.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P7729881994159954828

`∩[A067126(n+1), A396479(n+1)]`
-/

namespace A396481.P7729881994159954828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P7729881994159954828

namespace A396481

/-- `∩[A067126(n+1), A396479(n+1)]` -/
def P7729881994159954828.Spec : Prop :=
  ∀ n, (P7729881994159954828.a n : ℤ) = A396481 (n + 1)

end A396481

/-! ## A396481.P3609480846559398059

`filter[A396479(n+1), A080339(#)]`
-/

namespace A396481.P3609480846559398059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A396481.P3609480846559398059

namespace A396481

/-- `filter[A396479(n+1), A080339(#)]` -/
def P3609480846559398059.Spec : Prop :=
  ∀ n, P3609480846559398059.a n = A396481 (n + 1)

end A396481

/-! ## A396481.P8977467820767748907

`filter[A396479(n+1), A080545(#)]`
-/

namespace A396481.P8977467820767748907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A396481.P8977467820767748907

namespace A396481

/-- `filter[A396479(n+1), A080545(#)]` -/
def P8977467820767748907.Spec : Prop :=
  ∀ n, P8977467820767748907.a n = A396481 (n + 1)

end A396481

/-!
# A396483: Number of undirected Hamiltonian cycles in the n X n torus grid graph, reduced for symmetry (with rotations, reflections, and translations not counted as distinct).

The programs for A396483, there is no canonical definition to state claims against.
-/

/-! ## A396483.P10496692350679380735

`A193405(a(n-1)+n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A396483.P10496692350679380735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  A193405 (a (n - 1) + (n : ℤ)).toNat + a (n - 3)

end

end A396483.P10496692350679380735

/-!
# A396484: If n appears in A394166, say A394166(k) = n, then a(n) = k, otherwise a(n) = -1.

The programs for A396484, there is no canonical definition to state claims against.
-/

/-! ## A396484.P9565763942002762258

`fo[A394166(n)]`
-/

namespace A396484.P9565763942002762258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A396484.P9565763942002762258

/-!
# A396487: Numbers with exactly one representation as the sum of two distinct upper twin primes.

The programs for A396487, there is no canonical definition to state claims against.
-/

/-! ## A396487.P2405482430049851195

`∩[A167662(n+1), A334160(n+1)]`
-/

namespace A396487.P2405482430049851195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396487.P2405482430049851195

/-! ## A396487.P10083081078448263376

`∩[A323733(n+1), A334160(n+1)]`
-/

namespace A396487.P10083081078448263376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396487.P10083081078448263376

/-! ## A396487.P5871213223036968590

`A334160(record[(n+1)/gcd(A180502(n+1), n+56)])`
-/

namespace A396487.P5871213223036968590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A180502 (n + 1)) (n + 56 : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334160 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A396487.P5871213223036968590

/-! ## A396487.P588248010733637144

`∩[A334160(n+1), A346124(n+1)]`
-/

namespace A396487.P588248010733637144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396487.P588248010733637144

/-! ## A396487.P5964823253179569649

`∩[A187797(n+1)+2, A346124(n+1)]`
-/

namespace A396487.P5964823253179569649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396487.P5964823253179569649

/-!
# A396488: Number of labeled histories for rooted at-most-4-furcating trees with n leaves, if simultaneous branching events are allowed.

The programs for A396488, there is no canonical definition to state claims against.
-/

/-! ## A396488.P10169971539614056747

`A292728(A084631(n))`
-/

namespace A396488.P10169971539614056747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292728 (A084631 n).toNat

end

end A396488.P10169971539614056747

/-!
# A396489: Least k such that psi(k) has exactly n divisors, where psi = A002322 is the reduced totient function.

The programs for A396489, there is no canonical definition to state claims against.
-/

/-! ## A396489.P12012551169923357199

`fo[A066800(n+1)-1]+1`
-/

namespace A396489.P12012551169923357199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066800 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A396489.P12012551169923357199

/-!
# A396491: Number of unsatisfiable 3-SAT formulas with n variables and 5 clauses in the multiset clause model.

The programs for A396491, there is no canonical definition to state claims against.
-/

/-! ## A396491.P6753749821573285979

`A396351(C(n+5, 2)+n+1)`
-/

namespace A396491.P6753749821573285979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (Nat.choose (n + 5) 2 + (n + 1))

end

end A396491.P6753749821573285979

/-! ## A396491.P13892955326869926403

`A396351(A046691(n+3))`
-/

namespace A396491.P13892955326869926403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A046691 (n + 3)).toNat

end

end A396491.P13892955326869926403

/-!
# A396492: Number of satisfiable 3-SAT formulas with n variables and 3 clauses in the multiset clause model.

The programs for A396492, there is no canonical definition to state claims against.
-/

/-! ## A396492.P11312978643171316113

`A397492(∑[n+3]+1)`
-/

namespace A396492.P11312978643171316113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397492 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A396492.P11312978643171316113

/-!
# A396493: Number of satisfiable 3-SAT formulas with n variables and 4 clauses in the multiset clause model.

The programs for A396493, there is no canonical definition to state claims against.
-/

/-! ## A396493.P10661450807575221484

`C(C(2*(n+1)+2, 3)+3, 4)-A396354(n+1)`
-/

namespace A396493.P10661450807575221484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (2 * (n + 1) + 2) 3 + 3) 4 : ℤ) - A396354 (n + 1)

end

end A396493.P10661450807575221484

/-! ## A396493.P4785638993396577554

`A397492(∑[n+4]+3)`
-/

namespace A396493.P4785638993396577554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397492 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A396493.P4785638993396577554

/-!
# A396494: Number of sets S of nonempty strict integer partitions with total sum n such that all elements in S have pairwise disjoint sets of adjacent differences.

The programs for A396494, there is no canonical definition to state claims against.
-/

/-! ## A396494.P4259295916689688049

`A122409(A293547(n+1))`
-/

namespace A396494.P4259295916689688049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122409 (A293547 (n + 1)).toNat

end

end A396494.P4259295916689688049

/-! ## A396494.P1160752097428319772

`A025047(n)-A051516(A001006(n+1))`
-/

namespace A396494.P1160752097428319772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n - A051516 (A001006 (n + 1)).toNat

end

end A396494.P1160752097428319772

/-! ## A396494.P14299321382638474254

`A162344(A025047(n))`
-/

namespace A396494.P14299321382638474254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A025047 n).toNat

end

end A396494.P14299321382638474254

/-! ## A396494.P14106064552463443482

`A162782(A320356(n))+A025047(n)`
-/

namespace A396494.P14106064552463443482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162782 (A320356 n).toNat + A025047 n

end

end A396494.P14106064552463443482

/-! ## A396494.P7120808748443049739

`A279785(n)+A244735(A007716(n))`
-/

namespace A396494.P7120808748443049739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279785 n + A244735 (A007716 n).toNat

end

end A396494.P7120808748443049739

/-!
# A396496: Number of ways to write n as a sum n = 0 + 1 + 2 +- 3 +- 4 ... +- m with nonnegative partial sums and minimal m >= 0 allowing at least one way.

The programs for A396496, there is no canonical definition to state claims against.
-/

/-! ## A396496.P12304246437635821428

`A397488(C(n+A397365(n)+1, 2)+n)`
-/

namespace A396496.P12304246437635821428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397488 (Nat.choose ((n : ℤ) + A397365 n + 1).toNat 2 + n)

end

end A396496.P12304246437635821428

/-! ## A396496.P14168481717494295161

`A366604(gcd(A357499(n), A380367(n)))`
-/

namespace A396496.P14168481717494295161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366604 (Int.gcd (A357499 n) (A380367 n))

end

end A396496.P14168481717494295161

/-! ## A396496.P1515513364962573400

`gcd(A058398(n+1), A103032(n+1))`
-/

namespace A396496.P1515513364962573400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058398 (n + 1)) (A103032 (n + 1))

end

end A396496.P1515513364962573400

/-! ## A396496.P5851893305954099678

`gcd(A240595(n+1), A291830(n+1))`
-/

namespace A396496.P5851893305954099678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240595 (n + 1)) (A291830 (n + 1))

end

end A396496.P5851893305954099678

/-! ## A396496.P14085612213047513809

`gcd(A058398(n+1), A124367(A290771(n)))`
-/

namespace A396496.P14085612213047513809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058398 (n + 1)) (A124367 (A290771 n).toNat)

end

end A396496.P14085612213047513809

/-!
# A396498: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = n! * [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G(x) with G(x) = exp(x*G(x)).

The programs for A396498, there is no canonical definition to state claims against.
-/

/-! ## A396498.P6331428290422910075

`A274390(n)/(col(n)+1)`
-/

namespace A396498.P6331428290422910075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A396498.P6331428290422910075

/-! ## A396498.P14019159397553984864

`A274390(n)/A128227(n)`
-/

namespace A396498.P14019159397553984864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A128227 n : ℚ)

end

end A396498.P14019159397553984864

/-! ## A396498.P13514251885294535510

`A274390(n)/A193738(n)`
-/

namespace A396498.P13514251885294535510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A193738 n : ℚ)

end

end A396498.P13514251885294535510

/-! ## A396498.P5704844656669804559

`A274390(n)/A002260(n+1)`
-/

namespace A396498.P5704844656669804559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A396498.P5704844656669804559

/-! ## A396498.P8452219643129406603

`A274390(n)/A080508(n+1)`
-/

namespace A396498.P8452219643129406603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A080508 (n + 1) : ℚ)

end

end A396498.P8452219643129406603

/-! ## A396498.P4033645841372255366

`A274390(n)/A080511(n+1)`
-/

namespace A396498.P4033645841372255366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A080511 (n + 1) : ℚ)

end

end A396498.P4033645841372255366

/-! ## A396498.P8892384826512937501

`A274390(n)/A080818(n+1)`
-/

namespace A396498.P8892384826512937501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A080818 (n + 1) : ℚ)

end

end A396498.P8892384826512937501

/-! ## A396498.P7938839936899006145

`A274390(n)/A081517(n+1)`
-/

namespace A396498.P7938839936899006145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A081517 (n + 1) : ℚ)

end

end A396498.P7938839936899006145

/-! ## A396498.P13231963859858518058

`A274390(n)/A128077(n+1)`
-/

namespace A396498.P13231963859858518058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A128077 (n + 1) : ℚ)

end

end A396498.P13231963859858518058

/-!
# A396499: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = n! * [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G(x) with G(x) = exp(x*G(x)^2).

The programs for A396499, there is no canonical definition to state claims against.
-/

/-! ## A396499.P15715417952340068720

`A396504(n)/A059268(n)`
-/

namespace A396499.P15715417952340068720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396504 n : ℚ) / (A059268 n : ℚ)

end

end A396499.P15715417952340068720

/-! ## A396499.P13015367989900619058

`A396500(n)+A072088(A379168(n))-A384692(n)`
-/

namespace A396499.P13015367989900619058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396500 n + A072088 (A379168 n).toNat - A384692 n

end

end A396499.P13015367989900619058

/-! ## A396499.P9191143636626824715

`A396500(n)+A384801(n)-A072088(A379168(n))`
-/

namespace A396499.P9191143636626824715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396500 n + A384801 n - A072088 (A379168 n).toNat

end

end A396499.P9191143636626824715

/-! ## A396499.P9946833429843169420

`A217884(3*n+2)%(A341268(n)+1)`
-/

namespace A396499.P9946833429843169420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217884 (3 * n + 2)) (A341268 n + 1)

end

end A396499.P9946833429843169420

/-! ## A396499.P16472036768053933816

`A106452(A341268(n))`
-/

namespace A396499.P16472036768053933816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106452 (A341268 n).toNat

end

end A396499.P16472036768053933816

