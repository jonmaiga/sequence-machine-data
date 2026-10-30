import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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
# A397400: Array read by ascending antidiagonals: A(n, k) = (-1)^n * Sum_{j=1..n+1} Stirling1(k+j, k+1) * Stirling2(n+1, j).

The programs for A397400, there is no canonical definition to state claims against.
-/

/-! ## A397400.P10283389329556180442

`A055570(A202178(n+1))`
-/

namespace A397400.P10283389329556180442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A202178 (n + 1)).toNat

end

end A397400.P10283389329556180442

/-!
# A397402: Number of permutations p of 1,2,...,n satisfying p(i+2)-p(i)<>3 for all 1<=i<=n-2.

The programs for A397402, there is no canonical definition to state claims against.
-/

/-! ## A397402.P15418334704133370572

`A178772(A148484(n))`
-/

namespace A397402.P15418334704133370572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (A148484 n).toNat

end

end A397402.P15418334704133370572

/-! ## A397402.P5929974466458971730

`A081611(A001147(n)-A361245(n))`
-/

namespace A397402.P5929974466458971730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A001147 n - A361245 n).toNat

end

end A397402.P5929974466458971730

/-!
# A397403: Indices k such that k - A396071(k) reaches a new record value.

The programs for A397403, there is no canonical definition to state claims against.
-/

/-! ## A397403.P7571032967950538805

`∩[A225240(n+1), A084515(n)]`
-/

namespace A397403.P7571032967950538805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084515 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397403.P7571032967950538805

/-! ## A397403.P12603898687606149096

`∩[A225240(n+1), A084525(n)]`
-/

namespace A397403.P12603898687606149096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397403.P12603898687606149096

/-! ## A397403.P15132546630738227254

`record[A022998(A133299(3*n+2))]`
-/

namespace A397403.P15132546630738227254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A133299 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397403.P15132546630738227254

/-!
# A397404: Number of inversions of the (2*n)-th Josephus permutation with step 2.

The programs for A397404, the canonical program `A397404.P13267547636590681043` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397404 has offset 1).

The definition of A397404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397404.P13267547636590681043

`a(floor((n+1)/2)-1)+(n+1)*(n+2)/2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397404

/-- `a(floor((n+1)/2)-1)+(n+1)*(n+2)/2` -/
def P13267547636590681043.Spec : Prop :=
  ∀ n, P13267547636590681043.a n = (A397404 (n + 1) : ℚ)

end A397404

/-! ## A397404.P13258029652996987957

`∑[n+1]+a(floor((n-1)/2))` with `a(0)=1`
-/

namespace A397404.P13258029652996987957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A397404.P13258029652996987957

namespace A397404

/-- `∑[n+1]+a(floor((n-1)/2))` -/
def P13258029652996987957.Spec : Prop :=
  ∀ n, (P13258029652996987957.a n : ℤ) = A397404 (n + 1)

end A397404

/-! ## A397404.P10782833966892598581

`∑[2*n+1-floor(n/2^val(n+1, 2))]`
-/

namespace A397404.P10782833966892598581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P10782833966892598581

namespace A397404

/-- `∑[2*n+1-floor(n/2^val(n+1, 2))]` -/
def P10782833966892598581.Spec : Prop :=
  ∀ n, P10782833966892598581.a n = A397404 (n + 1)

end A397404

/-! ## A397404.P1389392794884220114

`∑[(n+1)/2^val(n+1, 2)*xor(n+1, n)]`
-/

namespace A397404.P1389392794884220114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (Nat.xor (n + 1) n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P1389392794884220114

namespace A397404

/-- `∑[(n+1)/2^val(n+1, 2)*xor(n+1, n)]` -/
def P1389392794884220114.Spec : Prop :=
  ∀ n, P1389392794884220114.a n = (A397404 (n + 1) : ℚ)

end A397404

/-! ## A397404.P6962718285498889320

`∑[∑{d}[n+1, (n+1)*#]/∑{d}[n+1, #/gcd(#, 2)]]`
-/

namespace A397404.P6962718285498889320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), (n + 1) * d : ℕ) : ℚ) / (∑ d ∈ Nat.divisors (f3 n), (d : ℚ) / (Nat.gcd d 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P6962718285498889320

namespace A397404

/-- `∑[∑{d}[n+1, (n+1)*#]/∑{d}[n+1, #/gcd(#, 2)]]` -/
def P6962718285498889320.Spec : Prop :=
  ∀ n, P6962718285498889320.a n = (A397404 (n + 1) : ℚ)

end A397404

/-! ## A397404.P17969581435971824969

`∑[A129527(n+1)]`
-/

namespace A397404.P17969581435971824969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P17969581435971824969

namespace A397404

/-- `∑[A129527(n+1)]` -/
def P17969581435971824969.Spec : Prop :=
  ∀ n, P17969581435971824969.a n = A397404 (n + 1)

end A397404

/-! ## A397404.P18122154147708240022

`(n+1)²-∑[A153733(n)]`
-/

namespace A397404.P18122154147708240022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P18122154147708240022

namespace A397404

/-- `(n+1)²-∑[A153733(n)]` -/
def P18122154147708240022.Spec : Prop :=
  ∀ n, P18122154147708240022.a n = A397404 (n + 1)

end A397404

/-! ## A397404.P16917891600403221534

`∑[A331739(n+1)+n+1]`
-/

namespace A397404.P16917891600403221534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P16917891600403221534

namespace A397404

/-- `∑[A331739(n+1)+n+1]` -/
def P16917891600403221534.Spec : Prop :=
  ∀ n, P16917891600403221534.a n = A397404 (n + 1)

end A397404

/-! ## A397404.P2941706624446933152

`∑[A091519(n+1)/(n+1)]`
-/

namespace A397404.P2941706624446933152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091519 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P2941706624446933152

namespace A397404

/-- `∑[A091519(n+1)/(n+1)]` -/
def P2941706624446933152.Spec : Prop :=
  ∀ n, P2941706624446933152.a n = (A397404 (n + 1) : ℚ)

end A397404

/-! ## A397404.P12761186274034017940

`A000217(n+1)+A000217(n+1)-A135013(n+1)`
-/

namespace A397404.P12761186274034017940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) - A135013 (n + 1)

end

end A397404.P12761186274034017940

namespace A397404

/-- `A000217(n+1)+A000217(n+1)-A135013(n+1)` -/
def P12761186274034017940.Spec : Prop :=
  ∀ n, P12761186274034017940.a n = A397404 (n + 1)

end A397404

/-! ## A397404.P3076501783387943180

`∑[A331739(2*(n+1))]`
-/

namespace A397404.P3076501783387943180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P3076501783387943180

namespace A397404

/-- `∑[A331739(2*(n+1))]` -/
def P3076501783387943180.Spec : Prop :=
  ∀ n, P3076501783387943180.a n = A397404 (n + 1)

end A397404

/-! ## A397404.P14003429519398481583

`∑[A384055(2*(n+1))]`
-/

namespace A397404.P14003429519398481583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384055 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P14003429519398481583

namespace A397404

/-- `∑[A384055(2*(n+1))]` -/
def P14003429519398481583.Spec : Prop :=
  ∀ n, P14003429519398481583.a n = A397404 (n + 1)

end A397404

/-! ## A397404.P12287389048348874934

`∑[A214748(2*(n+1))]`
-/

namespace A397404.P12287389048348874934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214748 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397404.P12287389048348874934

namespace A397404

/-- `∑[A214748(2*(n+1))]` -/
def P12287389048348874934.Spec : Prop :=
  ∀ n, P12287389048348874934.a n = A397404 (n + 1)

end A397404

/-!
# A397405: Numbers that are not Jacobsthal-Lucas numbers.

The programs for A397405, the canonical program `A397405.P10130307376618811225` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397405 has offset 1).

The definition of A397405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397405.P10130307376618811225

`comp[ceil(2^(n-1))-(-1)^n]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397405

/-- `comp[ceil(2^(n-1))-(-1)^n]` -/
def P10130307376618811225.Spec : Prop :=
  ∀ n, (P10130307376618811225.a n : ℤ) = A397405 (n + 1)

theorem P10130307376618811225.correct : P10130307376618811225.Spec := by
  intro n
  simp only [A397405, Nat.add_sub_cancel]

end A397405

/-! ## A397405.P11645735261950875544

`comp[A099430(n)]+1`
-/

namespace A397405.P11645735261950875544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A397405.P11645735261950875544

namespace A397405

/-- `comp[A099430(n)]+1` -/
def P11645735261950875544.Spec : Prop :=
  ∀ n, (P11645735261950875544.a n : ℤ) = A397405 (n + 1)

end A397405

/-! ## A397405.P11741778611117689223

`comp[A166956(n)]+2`
-/

namespace A397405.P11741778611117689223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166956 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A397405.P11741778611117689223

namespace A397405

/-- `comp[A166956(n)]+2` -/
def P11741778611117689223.Spec : Prop :=
  ∀ n, (P11741778611117689223.a n : ℤ) = A397405 (n + 1)

end A397405

/-! ## A397405.P16509530710524439936

`comp[A014551(n)-1]+1`
-/

namespace A397405.P16509530710524439936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A397405.P16509530710524439936

namespace A397405

/-- `comp[A014551(n)-1]+1` -/
def P16509530710524439936.Spec : Prop :=
  ∀ n, (P16509530710524439936.a n : ℤ) = A397405 (n + 1)

end A397405

/-! ## A397405.P12427267911803817270

`comp[2*or(n, A000918(n))]+3`
-/

namespace A397405.P12427267911803817270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor (n : ℤ) (A000918 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A397405.P12427267911803817270

namespace A397405

/-- `comp[2*or(n, A000918(n))]+3` -/
def P12427267911803817270.Spec : Prop :=
  ∀ n, (P12427267911803817270.a n : ℤ) = A397405 (n + 1)

end A397405

/-! ## A397405.P14741671384786806190

`comp[A000225(n)+(-1)^n]+1`
-/

namespace A397405.P14741671384786806190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (-1) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A397405.P14741671384786806190

namespace A397405

/-- `comp[A000225(n)+(-1)^n]+1` -/
def P14741671384786806190.Spec : Prop :=
  ∀ n, (P14741671384786806190.a n : ℤ) = A397405 (n + 1)

end A397405

/-! ## A397405.P3327647637660938464

`A000027(comp[a(n-1)+2*a(n-2)])` with `a(0)=2, a(1)=0, a(2)=1, a(3)=5, a(4)=7`
-/

namespace A397405.P3327647637660938464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 5, 7] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A397405.P3327647637660938464

namespace A397405

/-- `A000027(comp[a(n-1)+2*a(n-2)])` -/
def P3327647637660938464.Spec : Prop :=
  ∀ n, P3327647637660938464.a n = A397405 (n + 1)

end A397405

/-! ## A397405.P14967475365823146332

`lt[char[A014551(n)], A057427(n)]`
-/

namespace A397405.P14967475365823146332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A397405.P14967475365823146332

namespace A397405

/-- `lt[char[A014551(n)], A057427(n)]` -/
def P14967475365823146332.Spec : Prop :=
  ∀ n, (P14967475365823146332.a n : ℤ) = A397405 (n + 1)

end A397405

/-! ## A397405.P12191845301815991421

`comp[A128309(A060594(n+1))]+3`
-/

namespace A397405.P12191845301815991421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (A060594 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A397405.P12191845301815991421

namespace A397405

/-- `comp[A128309(A060594(n+1))]+3` -/
def P12191845301815991421.Spec : Prop :=
  ∀ n, (P12191845301815991421.a n : ℤ) = A397405 (n + 1)

end A397405

/-!
# A397410: Primes of the form p^2 + 2*q, where p and q are primes.

The programs for A397410, there is no canonical definition to state claims against.
-/

/-! ## A397410.P16316870229431859823

`A000040(comp[col(A185131(n+2))])`
-/

namespace A397410.P16316870229431859823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A185131 (n + 2)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A397410.P16316870229431859823

/-! ## A397410.P1965945628591655314

`A095070(n+5)+A083927(A354000(n))`
-/

namespace A397410.P1965945628591655314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 5) + A083927 (A354000 n).toNat

end

end A397410.P1965945628591655314

/-! ## A397410.P5226972120735701404

`A095070(n+5)+A083927(A001159(n+1))`
-/

namespace A397410.P5226972120735701404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 5) + A083927 (A001159 (n + 1)).toNat

end

end A397410.P5226972120735701404

/-! ## A397410.P13290342859210431417

`A095070(n+5)+A083927(A217500(n+1))`
-/

namespace A397410.P13290342859210431417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 5) + A083927 (A217500 (n + 1)).toNat

end

end A397410.P13290342859210431417

/-! ## A397410.P13504698346246277185

`A350577(n+5)+A121373(A104370(n+1))`
-/

namespace A397410.P13504698346246277185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350577 (n + 5) + A121373 (A104370 (n + 1)).toNat

end

end A397410.P13504698346246277185

/-!
# A397412: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 - 1/p^s + 1/p^(2*s-1)).

The programs for A397412, the canonical program `A397412.P16519194348179518311` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397412 has offset 1).

The definition of A397412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397412.P10156290181591837882

`lcm(∏{p}[n+1, #], ∏{e}[n+1, ((-1)^#)%#])`
-/

namespace A397412.P10156290181591837882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (∏ p ∈ Nat.primeFactors (f2 n), Int.tmod ((-1) ^ Nat.factorization (f2 n) p) (Nat.factorization (f2 n) p : ℤ))

end

end A397412.P10156290181591837882

namespace A397412

/-- `lcm(∏{p}[n+1, #], ∏{e}[n+1, ((-1)^#)%#])` -/
def P10156290181591837882.Spec : Prop :=
  ∀ n, (P10156290181591837882.a n : ℤ) = A397412 (n + 1)

end A397412

/-! ## A397412.P13191014989315532294

`∏{p}[n+1, #]*A010052(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A397412.P13191014989315532294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A010052 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A397412.P13191014989315532294

namespace A397412

/-- `∏{p}[n+1, #]*A010052(∏{p}[n+1, lcm(n+1, #²)/(n+1)])` -/
def P13191014989315532294.Spec : Prop :=
  ∀ n, P13191014989315532294.a n = A397412 (n + 1)

end A397412

/-! ## A397412.P6895270764086220037

`∏{p}[n+1, #]%A299277(∏{p}[n+1, #-1]*∏{e}[n+1, #-1])`
-/

namespace A397412.P6895270764086220037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A299277 ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) * (∏ p ∈ Nat.primeFactors (f3 n), ((Nat.factorization (f3 n) p : ℤ) - 1))).toNat)

end

end A397412.P6895270764086220037

namespace A397412

/-- `∏{p}[n+1, #]%A299277(∏{p}[n+1, #-1]*∏{e}[n+1, #-1])` -/
def P6895270764086220037.Spec : Prop :=
  ∀ n, P6895270764086220037.a n = A397412 (n + 1)

end A397412

/-! ## A397412.P2716116127221810259

`A037213(A007948(n+1))`
-/

namespace A397412.P2716116127221810259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A007948 (n + 1)).toNat

end

end A397412.P2716116127221810259

namespace A397412

/-- `A037213(A007948(n+1))` -/
def P2716116127221810259.Spec : Prop :=
  ∀ n, P2716116127221810259.a n = A397412 (n + 1)

end A397412

/-! ## A397412.P3106809651257605383

`A037213(A097377(n+1)-1)`
-/

namespace A397412.P3106809651257605383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A097377 (n + 1) - 1).toNat

end

end A397412.P3106809651257605383

namespace A397412

/-- `A037213(A097377(n+1)-1)` -/
def P3106809651257605383.Spec : Prop :=
  ∀ n, P3106809651257605383.a n = A397412 (n + 1)

end A397412

/-! ## A397412.P4286065898120147307

`A007947(n+1)*A112526(n+1)`
-/

namespace A397412.P4286065898120147307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A112526 (n + 1)

end

end A397412.P4286065898120147307

namespace A397412

/-- `A007947(n+1)*A112526(n+1)` -/
def P4286065898120147307.Spec : Prop :=
  ∀ n, P4286065898120147307.a n = A397412 (n + 1)

end A397412

/-! ## A397412.P16519194348179518311

`A071773(n+1)*A112526(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A397412

/-- `A071773(n+1)*A112526(n+1)` -/
def P16519194348179518311.Spec : Prop :=
  ∀ n, P16519194348179518311.a n = A397412 (n + 1)

theorem P16519194348179518311.correct : P16519194348179518311.Spec := by
  intro n
  simp only [A397412, Nat.add_sub_cancel]

end A397412

/-! ## A397412.P11066765801688383274

`A089384(n+1)*A112526(n+1)`
-/

namespace A397412.P11066765801688383274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (n + 1) * A112526 (n + 1)

end

end A397412.P11066765801688383274

namespace A397412

/-- `A089384(n+1)*A112526(n+1)` -/
def P11066765801688383274.Spec : Prop :=
  ∀ n, P11066765801688383274.a n = A397412 (n + 1)

end A397412

/-! ## A397412.P17539649169190902215

`lcm(A334085(n+1), A355683(n+1))`
-/

namespace A397412.P17539649169190902215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A334085 (n + 1)) (A355683 (n + 1))

end

end A397412.P17539649169190902215

namespace A397412

/-- `lcm(A334085(n+1), A355683(n+1))` -/
def P17539649169190902215.Spec : Prop :=
  ∀ n, (P17539649169190902215.a n : ℤ) = A397412 (n + 1)

end A397412

/-! ## A397412.P13529333234437808341

`∑{d}[n+1, A055615(#)*A057723((n+1)/#)]`
-/

namespace A397412.P13529333234437808341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A057723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397412.P13529333234437808341

namespace A397412

/-- `∑{d}[n+1, A055615(#)*A057723((n+1)/#)]` -/
def P13529333234437808341.Spec : Prop :=
  ∀ n, P13529333234437808341.a n = A397412 (n + 1)

end A397412

/-! ## A397412.P14411785850828788236

`∑{d}[n+1, A069193(#)*A101035((n+1)/#)]`
-/

namespace A397412.P14411785850828788236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069193 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397412.P14411785850828788236

namespace A397412

/-- `∑{d}[n+1, A069193(#)*A101035((n+1)/#)]` -/
def P14411785850828788236.Spec : Prop :=
  ∀ n, P14411785850828788236.a n = A397412 (n + 1)

end A397412

/-! ## A397412.P6376394957161914760

`∑{d}[n+1, A023900(#)*A384050((n+1)/#)]`
-/

namespace A397412.P6376394957161914760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A384050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397412.P6376394957161914760

namespace A397412

/-- `∑{d}[n+1, A023900(#)*A384050((n+1)/#)]` -/
def P6376394957161914760.Spec : Prop :=
  ∀ n, P6376394957161914760.a n = A397412 (n + 1)

end A397412

/-! ## A397412.P4946522298564559208

`(A217038(n+2)-A217038(n+1))*A007947(n+1)`
-/

namespace A397412.P4946522298564559208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A217038 (n + 2) - A217038 (n + 1)) * A007947 (n + 1)

end

end A397412.P4946522298564559208

namespace A397412

/-- `(A217038(n+2)-A217038(n+1))*A007947(n+1)` -/
def P4946522298564559208.Spec : Prop :=
  ∀ n, P4946522298564559208.a n = A397412 (n + 1)

end A397412

/-!
# A397416: Numbers k such that both k and k+1 can be written as the sum of two nonzero and nonunit squares.

The programs for A397416, the canonical program `A397416.P2588075705200324543` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397416 has offset 1).

The definition of A397416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397416.P2588075705200324543

`∩[A085989(n+1)-1, A085989(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A397416

/-- `∩[A085989(n+1)-1, A085989(n+1)]` -/
def P2588075705200324543.Spec : Prop :=
  ∀ n, (P2588075705200324543.a n : ℤ) = A397416 (n + 1)

theorem P2588075705200324543.correct : P2588075705200324543.Spec := by
  intro n
  simp only [A397416, Nat.add_sub_cancel]

end A397416

/-! ## A397416.P6005779576922509539

`∩[A183233(n+1), A274555(n+1)]`
-/

namespace A397416.P6005779576922509539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397416.P6005779576922509539

namespace A397416

/-- `∩[A183233(n+1), A274555(n+1)]` -/
def P6005779576922509539.Spec : Prop :=
  ∀ n, (P6005779576922509539.a n : ℤ) = A397416 (n + 1)

end A397416

/-! ## A397416.P15760333529378627950

`∩[A274555(n+1), A363088(n+1)]`
-/

namespace A397416.P15760333529378627950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397416.P15760333529378627950

namespace A397416

/-- `∩[A274555(n+1), A363088(n+1)]` -/
def P15760333529378627950.Spec : Prop :=
  ∀ n, (P15760333529378627950.a n : ℤ) = A397416 (n + 1)

end A397416

/-!
# A397417: Number of compositions of n in which each pair of adjacent parts is comparable under divisibility (each part divides, or is divided by, the next).

The programs for A397417, there is no canonical definition to state claims against.
-/

/-! ## A397417.P14902860903246055363

`A082447(A148708(n))`
-/

namespace A397417.P14902860903246055363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A148708 n).toNat

end

end A397417.P14902860903246055363

/-! ## A397417.P8333167910442820122

`A194323(A148946(n))`
-/

namespace A397417.P8333167910442820122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194323 (A148946 n).toNat

end

end A397417.P8333167910442820122

/-! ## A397417.P1978876048592407362

`A194295(A289612(n))`
-/

namespace A397417.P1978876048592407362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194295 (A289612 n).toNat

end

end A397417.P1978876048592407362

/-! ## A397417.P6009366075810694

`A136499(A186546(n+1))`
-/

namespace A397417.P6009366075810694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136499 (A186546 (n + 1)).toNat

end

end A397417.P6009366075810694

/-! ## A397417.P2928035405129570368

`A374633(A374634(n)+A290689(n+1))`
-/

namespace A397417.P2928035405129570368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (A374634 n + A290689 (n + 1)).toNat

end

end A397417.P2928035405129570368

/-!
# A397419: a(n) = Sum_{j=0..n} binomial(n, j) * A005043(j)^2.

The programs for A397419, the canonical program `A397419.P13214611387662659643` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397419 has offset 0).

The definition of A397419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397419.P13214611387662659643

`∑{#}[n, C(n, #)*A005043(#)²]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A397419

/-- `∑{#}[n, C(n, #)*A005043(#)²]` -/
def P13214611387662659643.Spec : Prop :=
  ∀ n, P13214611387662659643.a n = A397419 n

theorem P13214611387662659643.correct : P13214611387662659643.Spec := by
  intro n
  simp only [A397419]

end A397419

/-! ## A397419.P1757914007828405287

`A397603(∑[n])`
-/

namespace A397419.P1757914007828405287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397603 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397419.P1757914007828405287

namespace A397419

/-- `A397603(∑[n])` -/
def P1757914007828405287.Spec : Prop :=
  ∀ n, P1757914007828405287.a n = A397419 n

end A397419

/-! ## A397419.P14809327780787976393

`A236861(n)*A397603(A000217(n))`
-/

namespace A397419.P14809327780787976393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236861 n * A397603 (A000217 n).toNat

end

end A397419.P14809327780787976393

namespace A397419

/-- `A236861(n)*A397603(A000217(n))` -/
def P14809327780787976393.Spec : Prop :=
  ∀ n, P14809327780787976393.a n = A397419 n

end A397419

/-! ## A397419.P3617010749401694840

`A397603(A000217(n))%A046325(n+1)`
-/

namespace A397419.P3617010749401694840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397603 (A000217 n).toNat) (A046325 (n + 1))

end

end A397419.P3617010749401694840

namespace A397419

/-- `A397603(A000217(n))%A046325(n+1)` -/
def P3617010749401694840.Spec : Prop :=
  ∀ n, P3617010749401694840.a n = A397419 n

end A397419

/-!
# A397420: Array read by ascending antidiagonals: A(n, k) = Sum_{j=0..k} Stirling1(k, j) * binomial(n+j, k) * k^j.

The programs for A397420, there is no canonical definition to state claims against.
-/

/-! ## A397420.P12620871681789858177

`A207333(A121426(n))`
-/

namespace A397420.P12620871681789858177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207333 (A121426 n).toNat

end

end A397420.P12620871681789858177

/-! ## A397420.P13635256937904422424

`A122291(A258219(n))`
-/

namespace A397420.P13635256937904422424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (A258219 n).toNat

end

end A397420.P13635256937904422424

/-!
# A397422: Triangle read by rows: T(n, k) = binomial(n+k, n) * |Stirling1(n, k)| * n^k.

The programs for A397422, the canonical program `A397422.P5494168866610696871` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397422 has offset 0).

The definition of A397422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397422.P5494168866610696871

`A046899(n)*A355007(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A397422

/-- `A046899(n)*A355007(n)` -/
def P5494168866610696871.Spec : Prop :=
  ∀ n, P5494168866610696871.a n = A397422 n

theorem P5494168866610696871.correct : P5494168866610696871.Spec := by
  intro n
  simp only [A397422]

end A397422

/-!
# A397424: a(n) = A074854(n) mod n.

The programs for A397424, the canonical program `A397424.P11634624968641727163` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397424 has offset 1).

The definition of A397424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397424.P11634624968641727163

`A074854(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397424

/-- `A074854(n+1)%(n+1)` -/
def P11634624968641727163.Spec : Prop :=
  ∀ n, P11634624968641727163.a n = A397424 (n + 1)

theorem P11634624968641727163.correct : P11634624968641727163.Spec := by
  intro n
  simp only [A397424, Nat.add_sub_cancel]

end A397424

/-! ## A397424.P10738198666250799146

`∑{d}[n+1, 2^(n+1-#)]%(n+1)`
-/

namespace A397424.P10738198666250799146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) : ℤ))) (n + 1 : ℤ)

end

end A397424.P10738198666250799146

namespace A397424

/-- `∑{d}[n+1, 2^(n+1-#)]%(n+1)` -/
def P10738198666250799146.Spec : Prop :=
  ∀ n, P10738198666250799146.a n = A397424 (n + 1)

end A397424

/-!
# A397426: Number of lines through 4 or more points of an n X n grid of points.

The programs for A397426, there is no canonical definition to state claims against.
-/

/-! ## A397426.P16196527430177398521

`A018808(n)-A018809(n)-A018810(n)`
-/

namespace A397426.P16196527430177398521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n - A018809 n - A018810 n

end

end A397426.P16196527430177398521

/-! ## A397426.P7241786774083202221

`A225606(n)-A018810(n)`
-/

namespace A397426.P7241786774083202221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225606 n - A018810 n

end

end A397426.P7241786774083202221

/-! ## A397426.P5977453044798087007

`A018808(n)-(A018810(n)+A018809(n))`
-/

namespace A397426.P5977453044798087007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 n - (A018810 n + A018809 n)

end

end A397426.P5977453044798087007

/-!
# A397428: Numbers k such that k, floor(k*phi), and floor(k^2*phi), where phi = golden ratio (A001622), are all prime.

The programs for A397428, there is no canonical definition to state claims against.
-/

/-! ## A397428.P1962659987949969374

`A000720(A397464(n+1))`
-/

namespace A397428.P1962659987949969374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A397464 (n + 1)).toNat

end

end A397428.P1962659987949969374

/-!
# A397429: Primes in A161601 whose binary reversal is prime.

The programs for A397429, the canonical program `A397429.P9837664119609473260` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397429 has offset 1).

The definition of A397429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397429.P13455394374684327083

`∩[A074832(n+1), A161601(n+1)]`
-/

namespace A397429.P13455394374684327083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397429.P13455394374684327083

namespace A397429

/-- `∩[A074832(n+1), A161601(n+1)]` -/
def P13455394374684327083.Spec : Prop :=
  ∀ n, (P13455394374684327083.a n : ℤ) = A397429 (n + 1)

end A397429

/-! ## A397429.P9837664119609473260

`∩[A080790(n+1), A161601(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A397429

/-- `∩[A080790(n+1), A161601(n+1)]` -/
def P9837664119609473260.Spec : Prop :=
  ∀ n, (P9837664119609473260.a n : ℤ) = A397429 (n + 1)

theorem P9837664119609473260.correct : P9837664119609473260.Spec := by
  intro n
  simp only [A397429, Nat.add_sub_cancel]

end A397429

/-! ## A397429.P2615495761327427268

`∩[A080790(n+1), A340718(n)]`
-/

namespace A397429.P2615495761327427268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397429.P2615495761327427268

namespace A397429

/-- `∩[A080790(n+1), A340718(n)]` -/
def P2615495761327427268.Spec : Prop :=
  ∀ n, (P2615495761327427268.a n : ℤ) = A397429 (n + 1)

end A397429

/-! ## A397429.P8918600821846175640

`∩[A074832(n+1), A359401(n+1)]`
-/

namespace A397429.P8918600821846175640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397429.P8918600821846175640

namespace A397429

/-- `∩[A074832(n+1), A359401(n+1)]` -/
def P8918600821846175640.Spec : Prop :=
  ∀ n, (P8918600821846175640.a n : ℤ) = A397429 (n + 1)

end A397429

/-! ## A397429.P11387741003819898895

`∩[A080790(n+1), A359401(n+1)]`
-/

namespace A397429.P11387741003819898895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397429.P11387741003819898895

namespace A397429

/-- `∩[A080790(n+1), A359401(n+1)]` -/
def P11387741003819898895.Spec : Prop :=
  ∀ n, (P11387741003819898895.a n : ℤ) = A397429 (n + 1)

end A397429

/-!
# A397430: Primes in A161601 whose binary reversal is composite.

The programs for A397430, there is no canonical definition to state claims against.
-/

/-! ## A397430.P7001761666946758577

`∩[A161601(n+1), A204219(n+1)]`
-/

namespace A397430.P7001761666946758577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397430.P7001761666946758577

/-! ## A397430.P17794082967539653260

`∩[A204219(n+1), A340718(n)]`
-/

namespace A397430.P17794082967539653260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397430.P17794082967539653260

/-! ## A397430.P6927239020211066576

`∩[A204219(n+1), A359401(n+1)]`
-/

namespace A397430.P6927239020211066576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397430.P6927239020211066576

/-!
# A397431: Composites in A161601 whose binary reversal is prime.

The programs for A397431, there is no canonical definition to state claims against.
-/

/-! ## A397431.P11626070583791203166

`A276448(lt[A000105(n), A049444(3*n+1)])`
-/

namespace A397431.P11626070583791203166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049444 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276448 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397431.P11626070583791203166

/-!
# A397433: a(n) is the number of integers k >= 0 such that n has a divisor in the interval [2^k, 2^(k+1)).

The programs for A397433, there is no canonical definition to state claims against.
-/

/-! ## A397433.P11595893970053615896

`A289849(n+1)-A093958(n+1)`
-/

namespace A397433.P11595893970053615896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (n + 1) - A093958 (n + 1)

end

end A397433.P11595893970053615896

/-! ## A397433.P4548147683297862799

`A289849(n+1)-A122841(n+1)`
-/

namespace A397433.P4548147683297862799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (n + 1) - A122841 (n + 1)

end

end A397433.P4548147683297862799

/-! ## A397433.P2721318706667759782

`A289849(n+1)-A353528(n+1)`
-/

namespace A397433.P2721318706667759782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (n + 1) - A353528 (n + 1)

end

end A397433.P2721318706667759782

/-! ## A397433.P12399281856300197510

`A289849(n+1)-A358755(n+1)`
-/

namespace A397433.P12399281856300197510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (n + 1) - A358755 (n + 1)

end

end A397433.P12399281856300197510

/-! ## A397433.P3366639449377518803

`A122027(A378596(n+1))`
-/

namespace A397433.P3366639449377518803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122027 (A378596 (n + 1)).toNat

end

end A397433.P3366639449377518803

/-!
# A397437: Growth function of the reflection group of a four-dimensional orthoscheme with distinct edge lengths.

The programs for A397437, the canonical program `A397437.P2934526097843624774` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397437 has offset 0).

The definition of A397437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397437.P13837418181398075741

`ogf((1+3x+3x^2+x^3)/(1-2x-x^2+x^3))`
-/

namespace A397437.P13837418181398075741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 1] [1, -2, -1, 1] n

end

end A397437.P13837418181398075741

namespace A397437

/-- `ogf((1+3x+3x^2+x^3)/(1-2x-x^2+x^3))` -/
def P13837418181398075741.Spec : Prop :=
  ∀ n, P13837418181398075741.a n = A397437 n

end A397437

/-! ## A397437.P2934526097843624774

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=33`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397437

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P2934526097843624774.Spec : Prop :=
  ∀ n, P2934526097843624774.a n = A397437 n

theorem P2934526097843624774.correct : P2934526097843624774.Spec := by
  intro n
  simp only [A397437]

end A397437

/-! ## A397437.P7524166537673441642

`A385963(A255631(n+1))`
-/

namespace A397437.P7524166537673441642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385963 (A255631 (n + 1)).toNat

end

end A397437.P7524166537673441642

namespace A397437

/-- `A385963(A255631(n+1))` -/
def P7524166537673441642.Spec : Prop :=
  ∀ n, P7524166537673441642.a n = A397437 n

end A397437

/-!
# A397438: Growth function of the reflection group of a six-dimensional orthoscheme with distinct edge lengths.

The programs for A397438, the canonical program `A397438.P9704635539638965306` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397438 has offset 0).

The definition of A397438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397438.P7649515061314234376

`ogf((1+4x+6x^2+4x^3+x^4)/(1-3x+3x^3))`
-/

namespace A397438.P7649515061314234376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 6, 4, 1] [1, -3, 0, 3] n

end

end A397438.P7649515061314234376

namespace A397438

/-- `ogf((1+4x+6x^2+4x^3+x^4)/(1-3x+3x^3))` -/
def P7649515061314234376.Spec : Prop :=
  ∀ n, P7649515061314234376.a n = A397438 n

end A397438

/-! ## A397438.P9704635539638965306

`3*a(n-1)-3*a(n-3)` with `a(0)=1, a(1)=7, a(2)=27, a(3)=82, a(4)=226`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397438

/-- `3*a(n-1)-3*a(n-3)` -/
def P9704635539638965306.Spec : Prop :=
  ∀ n, P9704635539638965306.a n = A397438 n

theorem P9704635539638965306.correct : P9704635539638965306.Spec := by
  intro n
  simp only [A397438]

end A397438

/-!
# A397439: Growth function of the reflection group of a three-dimensional orthoscheme with distinct edge lengths.

The programs for A397439, the canonical program `A397439.P2030397398083014680` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397439 has offset 0).

The definition of A397439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397439.P312768526870639962

`ogf((1+2x+x^2)/(1-2x))`
-/

namespace A397439.P312768526870639962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2] n

end

end A397439.P312768526870639962

namespace A397439

/-- `ogf((1+2x+x^2)/(1-2x))` -/
def P312768526870639962.Spec : Prop :=
  ∀ n, P312768526870639962.a n = A397439 n

end A397439

/-! ## A397439.P2030397398083014680

`2*a(n-1)` with `a(0)=1, a(1)=4, a(2)=9`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397439

/-- `2*a(n-1)` -/
def P2030397398083014680.Spec : Prop :=
  ∀ n, (P2030397398083014680.a n : ℤ) = A397439 n

theorem P2030397398083014680.correct : P2030397398083014680.Spec := by
  intro n
  simp only [A397439]

end A397439

/-! ## A397439.P15987687103071966730

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A397439.P15987687103071966730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  a (n - 1) + a (n - 1)

end

end A397439.P15987687103071966730

namespace A397439

/-- `a(n-1)+a(n-1)` -/
def P15987687103071966730.Spec : Prop :=
  ∀ n, (P15987687103071966730.a n : ℤ) = A397439 n

theorem P15987687103071966730.correct : P15987687103071966730.Spec := by
  intro n
  simp only [A397439, Nat.add_sub_cancel, A397439.P15987687103071966730.a, A397439.P2030397398083014680.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A397439

/-! ## A397439.P5956374836168925852

`a(n-1)-(char[1]-a(n-1))` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A397439.P5956374836168925852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A397439.P5956374836168925852

namespace A397439

/-- `a(n-1)-(char[1]-a(n-1))` -/
def P5956374836168925852.Spec : Prop :=
  ∀ n, P5956374836168925852.a n = A397439 n

end A397439

/-! ## A397439.P18144715441967327000

`floor(2/n-a(n-1)/(1/2-1))` with `a(0)=1`
-/

namespace A397439.P18144715441967327000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 / (n : ℚ) - (a (n - 1) : ℚ) / ((1 : ℚ) / 2 - 1)⌋

end

end A397439.P18144715441967327000

namespace A397439

/-- `floor(2/n-a(n-1)/(1/2-1))` -/
def P18144715441967327000.Spec : Prop :=
  ∀ n, P18144715441967327000.a n = A397439 n

end A397439

/-! ## A397439.P9692093718837397498

`∑[abs(A279634(n))]`
-/

namespace A397439.P9692093718837397498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279634 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397439.P9692093718837397498

namespace A397439

/-- `∑[abs(A279634(n))]` -/
def P9692093718837397498.Spec : Prop :=
  ∀ n, P9692093718837397498.a n = A397439 n

end A397439

/-! ## A397439.P5640086068658892414

`A246074(A270545(n))`
-/

namespace A397439.P5640086068658892414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (A270545 n).toNat

end

end A397439.P5640086068658892414

namespace A397439

/-- `A246074(A270545(n))` -/
def P5640086068658892414.Spec : Prop :=
  ∀ n, P5640086068658892414.a n = A397439 n

end A397439

/-! ## A397439.P2660264178880215507

`A057427(n)+A052996(n)`
-/

namespace A397439.P2660264178880215507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A052996 n

end

end A397439.P2660264178880215507

namespace A397439

/-- `A057427(n)+A052996(n)` -/
def P2660264178880215507.Spec : Prop :=
  ∀ n, P2660264178880215507.a n = A397439 n

end A397439

/-! ## A397439.P16090660688960613822

`A155559(n)+A084215(n)`
-/

namespace A397439.P16090660688960613822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A084215 n

end

end A397439.P16090660688960613822

namespace A397439

/-- `A155559(n)+A084215(n)` -/
def P16090660688960613822.Spec : Prop :=
  ∀ n, P16090660688960613822.a n = A397439 n

end A397439

/-! ## A397439.P14706211941680303733

`A166444(n)+A077552(n)`
-/

namespace A397439.P14706211941680303733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A077552 n

end

end A397439.P14706211941680303733

namespace A397439

/-- `A166444(n)+A077552(n)` -/
def P14706211941680303733.Spec : Prop :=
  ∀ n, P14706211941680303733.a n = A397439 n

end A397439

/-! ## A397439.P11892709612532426104

`A267604(n)+A127904(n)`
-/

namespace A397439.P11892709612532426104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 n + A127904 n

end

end A397439.P11892709612532426104

namespace A397439

/-- `A267604(n)+A127904(n)` -/
def P11892709612532426104.Spec : Prop :=
  ∀ n, P11892709612532426104.a n = A397439 n

end A397439

/-! ## A397439.P857179009008951409

`A052996(n)-A057428(n)`
-/

namespace A397439.P857179009008951409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n - A057428 n

end

end A397439.P857179009008951409

namespace A397439

/-- `A052996(n)-A057428(n)` -/
def P857179009008951409.Spec : Prop :=
  ∀ n, P857179009008951409.a n = A397439 n

end A397439

/-! ## A397439.P4915219632126765183

`A186949(n+1)+A034008(n)`
-/

namespace A397439.P4915219632126765183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 (n + 1) + A034008 n

end

end A397439.P4915219632126765183

namespace A397439

/-- `A186949(n+1)+A034008(n)` -/
def P4915219632126765183.Spec : Prop :=
  ∀ n, P4915219632126765183.a n = A397439 n

end A397439

/-! ## A397439.P780547265239598447

`A131577(n)+A125176(n+1)`
-/

namespace A397439.P780547265239598447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A125176 (n + 1)

end

end A397439.P780547265239598447

namespace A397439

/-- `A131577(n)+A125176(n+1)` -/
def P780547265239598447.Spec : Prop :=
  ∀ n, P780547265239598447.a n = A397439 n

end A397439

/-! ## A397439.P7913527641611889814

`A323227(n)+A076878(n+1)`
-/

namespace A397439.P7913527641611889814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323227 n + A076878 (n + 1)

end

end A397439.P7913527641611889814

namespace A397439

/-- `A323227(n)+A076878(n+1)` -/
def P7913527641611889814.Spec : Prop :=
  ∀ n, P7913527641611889814.a n = A397439 n

end A397439

/-! ## A397439.P3370523568999436238

`A034008(n)+2*A155559(n)`
-/

namespace A397439.P3370523568999436238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n + 2 * A155559 n

end

end A397439.P3370523568999436238

namespace A397439

/-- `A034008(n)+2*A155559(n)` -/
def P3370523568999436238.Spec : Prop :=
  ∀ n, P3370523568999436238.a n = A397439 n

end A397439

/-! ## A397439.P10673570232254485429

`A003945(n)+A003945(n)-A098011(n+2)`
-/

namespace A397439.P10673570232254485429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + (A003945 n - A098011 (n + 2))

end

end A397439.P10673570232254485429

namespace A397439

/-- `A003945(n)+A003945(n)-A098011(n+2)` -/
def P10673570232254485429.Spec : Prop :=
  ∀ n, P10673570232254485429.a n = A397439 n

end A397439

/-! ## A397439.P17984833300301430805

`abs(∑[A296775(n)])`
-/

namespace A397439.P17984833300301430805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A397439.P17984833300301430805

namespace A397439

/-- `abs(∑[A296775(n)])` -/
def P17984833300301430805.Spec : Prop :=
  ∀ n, P17984833300301430805.a n = A397439 n

end A397439

/-! ## A397439.P5135070450785481963

`A146523(n)-A166444(n)`
-/

namespace A397439.P5135070450785481963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n - A166444 n

end

end A397439.P5135070450785481963

namespace A397439

/-- `A146523(n)-A166444(n)` -/
def P5135070450785481963.Spec : Prop :=
  ∀ n, P5135070450785481963.a n = A397439 n

end A397439

/-! ## A397439.P827253883228813257

`A060182(n)-A296953(n)`
-/

namespace A397439.P827253883228813257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060182 n - A296953 n

end

end A397439.P827253883228813257

namespace A397439

/-- `A060182(n)-A296953(n)` -/
def P827253883228813257.Spec : Prop :=
  ∀ n, P827253883228813257.a n = A397439 n

end A397439

/-!
# A397441: a(n) is the number of partitions of n into parts of the form 2^r*(2^s - 1) with each r distinct.

The programs for A397441, there is no canonical definition to state claims against.
-/

/-! ## A397441.P202440973179392954

`A001227(8*A278243(n))`
-/

namespace A397441.P202440973179392954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (8 * A278243 n).toNat

end

end A397441.P202440973179392954

/-! ## A397441.P1668416599791003493

`A091316(A294640(n))`
-/

namespace A397441.P1668416599791003493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091316 (A294640 n).toNat

end

end A397441.P1668416599791003493

/-! ## A397441.P13325180842235697625

`A345935(A260443(n)^A345932(n+1))`
-/

namespace A397441.P13325180842235697625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (SequenceMachineLib.roundAway ((A260443 n : ℚ) ^ (A345932 (n + 1) : ℤ))).toNat

end

end A397441.P13325180842235697625

/-! ## A397441.P498884063064985012

`A000119(A001911(A001911(A120562(n))))`
-/

namespace A397441.P498884063064985012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A001911 (A001911 (A120562 n).toNat).toNat).toNat

end

end A397441.P498884063064985012

/-! ## A397441.P4961262187507602119

`A163109(A052531(n))`
-/

namespace A397441.P4961262187507602119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A052531 n).toNat

end

end A397441.P4961262187507602119

/-!
# A397443: Least integer such that floor(R(a(n))) = n, where R(x) is the Riemann prime counting function (slightly truncated).

The programs for A397443, there is no canonical definition to state claims against.
-/

/-! ## A397443.P11628664071972692433

`round(log2(A305128(n+2)))`
-/

namespace A397443.P11628664071972692433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A305128 (n + 2) : ℝ))

end

end A397443.P11628664071972692433

/-! ## A397443.P6680508768772461294

`round(log2(A330074(n+2)))`
-/

namespace A397443.P6680508768772461294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A330074 (n + 2) : ℝ))

end

end A397443.P6680508768772461294

/-! ## A397443.P16488429354349400213

`A279551(A010894(3*n+2))+A052488(n+1)`
-/

namespace A397443.P16488429354349400213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279551 (A010894 (3 * n + 2 + 21)).toNat + A052488 (n + 1)

end

end A397443.P16488429354349400213

/-! ## A397443.P14021572581025076026

`∑[A329683(A292496(n))+A329683(n)]`
-/

namespace A397443.P14021572581025076026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 (A292496 n).toNat + A329683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397443.P14021572581025076026

/-! ## A397443.P3354394544734455218

`∑[A329683(A292497(n))+A329683(n)]`
-/

namespace A397443.P3354394544734455218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 (A292497 n).toNat + A329683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397443.P3354394544734455218

/-!
# A397444: Anion excess of a saturated rock-salt (NaCl) cube with n atoms along each edge: a(n) = 3*n^2 + 1 - (-1)^n.

The programs for A397444, the canonical program `A397444.P9187088293383785550` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397444 has offset 0).

The definition of A397444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+1-(-1)^n` (program `A397444.P9187088293383785550`, by `A397444.P9187088293383785550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397444.P9696363564492948617

`3*n²+2*n%2`
-/

namespace A397444.P9696363564492948617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 2 * (n % 2)

end

end A397444.P9696363564492948617

namespace A397444

/-- `3*n²+2*n%2` -/
def P9696363564492948617.Spec : Prop :=
  ∀ n, (P9696363564492948617.a n : ℤ) = A397444 n

end A397444

/-! ## A397444.P9187088293383785550

`3*n²+1-(-1)^n`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397444

/-- `3*n²+1-(-1)^n` -/
def P9187088293383785550.Spec : Prop :=
  ∀ n, P9187088293383785550.a n = A397444 n

theorem P9187088293383785550.correct : P9187088293383785550.Spec := by
  intro n
  simp only [A397444]

end A397444

/-! ## A397444.P18358030279820739302

`ogf((5x+2x^2+5x^3)/(1-2x+2x^3-x^4))`
-/

namespace A397444.P18358030279820739302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 2, 5] [1, -2, 0, 2, -1] n

end

end A397444.P18358030279820739302

namespace A397444

/-- `ogf((5x+2x^2+5x^3)/(1-2x+2x^3-x^4))` -/
def P18358030279820739302.Spec : Prop :=
  ∀ n, P18358030279820739302.a n = A397444 n

end A397444

/-! ## A397444.P4216669305033689798

`xor(1, 3*n²+1)`
-/

namespace A397444.P4216669305033689798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n ^ 2 + 1)

end

end A397444.P4216669305033689798

namespace A397444

/-- `xor(1, 3*n²+1)` -/
def P4216669305033689798.Spec : Prop :=
  ∀ n, (P4216669305033689798.a n : ℤ) = A397444 n

end A397444

/-! ## A397444.P16217367089924227732

`∑[a(n-2)+12]` with `a(0)=0, a(1)=5, a(2)=7`
-/

namespace A397444.P16217367089924227732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 7] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397444.P16217367089924227732

namespace A397444

/-- `∑[a(n-2)+12]` -/
def P16217367089924227732.Spec : Prop :=
  ∀ n, (P16217367089924227732.a n : ℤ) = A397444 n

end A397444

/-! ## A397444.P13804330663051152650

`2*and(1, n)+3*n²`
-/

namespace A397444.P13804330663051152650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 3 * n ^ 2

end

end A397444.P13804330663051152650

namespace A397444

/-- `2*and(1, n)+3*n²` -/
def P13804330663051152650.Spec : Prop :=
  ∀ n, (P13804330663051152650.a n : ℤ) = A397444 n

end A397444

/-! ## A397444.P13435369322789960887

`∑[∑[floor(a(n-2))]]` with `a(0)=0, a(1)=5, a(2)=2, a(3)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A397444.P13435369322789960887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 2, 10] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397444.P13435369322789960887

namespace A397444

/-- `∑[∑[floor(a(n-2))]]` -/
def P13435369322789960887.Spec : Prop :=
  ∀ n, (P13435369322789960887.a n : ℤ) = A397444 n

end A397444

/-! ## A397444.P16859122417782568132

`∑[∑[4*5/a(n-1)]]` with `a(0)=0, a(1)=5, a(2)=2`
-/

namespace A397444.P16859122417782568132
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 5, 2] fun n f2 =>
  4 * (5 / f2 (n - 1))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397444.P16859122417782568132

namespace A397444

/-- `∑[∑[4*5/a(n-1)]]` -/
def P16859122417782568132.Spec : Prop :=
  ∀ n, P16859122417782568132.a n = (A397444 n : ℚ)

end A397444

/-! ## A397444.P18161800776419932496

`A010005(n)%A110907(n)`
-/

namespace A397444.P18161800776419932496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010005 n) (A110907 n)

end

end A397444.P18161800776419932496

namespace A397444

/-- `A010005(n)%A110907(n)` -/
def P18161800776419932496.Spec : Prop :=
  ∀ n, P18161800776419932496.a n = A397444 n

end A397444

/-! ## A397444.P1329783362531727578

`A267489(3*n)`
-/

namespace A397444.P1329783362531727578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267489 (3 * n)

end

end A397444.P1329783362531727578

namespace A397444

/-- `A267489(3*n)` -/
def P1329783362531727578.Spec : Prop :=
  ∀ n, P1329783362531727578.a n = A397444 n

end A397444

/-! ## A397444.P8023925417887342037

`∑[record[A147666(2*n)]]`
-/

namespace A397444.P8023925417887342037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397444.P8023925417887342037

namespace A397444

/-- `∑[record[A147666(2*n)]]` -/
def P8023925417887342037.Spec : Prop :=
  ∀ n, P8023925417887342037.a n = A397444 n

end A397444

/-! ## A397444.P4688959141001387597

`A072833(n²)`
-/

namespace A397444.P4688959141001387597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072833 (n ^ 2)

end

end A397444.P4688959141001387597

namespace A397444

/-- `A072833(n²)` -/
def P4688959141001387597.Spec : Prop :=
  ∀ n, P4688959141001387597.a n = A397444 n

end A397444

/-! ## A397444.P14158667997567235163

`A047264(n²+1)`
-/

namespace A397444.P14158667997567235163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047264 (n ^ 2 + 1)

end

end A397444.P14158667997567235163

namespace A397444

/-- `A047264(n²+1)` -/
def P14158667997567235163.Spec : Prop :=
  ∀ n, P14158667997567235163.a n = A397444 n

end A397444

/-!
# A397446: a(n) is the number of distinct primitive, simple, nondegenerate, integer-sided quadrilaterals with both diagonals integral and integer area, having semiperimeter n.

The programs for A397446, there is no canonical definition to state claims against.
-/

/-! ## A397446.P8661330973342092231

`A397447(n+1)+A397448(n+1)`
-/

namespace A397446.P8661330973342092231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397447 (n + 1) + A397448 (n + 1)

end

end A397446.P8661330973342092231

/-! ## A397446.P6399428898163606553

`A397448(n+1)+A374100(A363955(n+1))`
-/

namespace A397446.P6399428898163606553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397448 (n + 1) + A374100 (A363955 (n + 1)).toNat

end

end A397446.P6399428898163606553

/-! ## A397446.P16692432313434111494

`A397448(n+1)+A143123(n)%A066788(n+1)`
-/

namespace A397446.P16692432313434111494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397448 (n + 1) + Int.tmod (A143123 n) (A066788 (n + 1))

end

end A397446.P16692432313434111494

/-! ## A397446.P15929993906792022602

`A397448(n+1)+and(A025195(n+4), A262448(n))`
-/

namespace A397446.P15929993906792022602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397448 (n + 1) + Int.land (A025195 (n + 4)) (A262448 n)

end

end A397446.P15929993906792022602

/-!
# A397447: a(n) is the number of distinct primitive cyclic integer-sided quadrilaterals with integral diagonals and integer area, having semiperimeter n.

The programs for A397447, there is no canonical definition to state claims against.
-/

/-! ## A397447.P13325317389325333163

`A397446(n+1)-A397448(n+1)`
-/

namespace A397447.P13325317389325333163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397446 (n + 1) - A397448 (n + 1)

end

end A397447.P13325317389325333163

/-! ## A397447.P6509946100656356850

`A316345(A211821(n+1))`
-/

namespace A397447.P6509946100656356850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A211821 (n + 1)).toNat

end

end A397447.P6509946100656356850

/-! ## A397447.P1663826066221993937

`A374100(A363955(n+1))`
-/

namespace A397447.P1663826066221993937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374100 (A363955 (n + 1)).toNat

end

end A397447.P1663826066221993937

/-! ## A397447.P12566940648558794422

`A143123(n)%A066788(n+1)`
-/

namespace A397447.P12566940648558794422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143123 n) (A066788 (n + 1))

end

end A397447.P12566940648558794422

/-! ## A397447.P9996166856654335554

`and(A025195(n+4), A262448(n))`
-/

namespace A397447.P9996166856654335554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025195 (n + 4)) (A262448 n)

end

end A397447.P9996166856654335554

/-!
# A397448: a(n) is the number of distinct primitive noncyclic integer-sided quadrilaterals with integral diagonals and integer area, having semiperimeter n.

The programs for A397448, there is no canonical definition to state claims against.
-/

/-! ## A397448.P11960947595201410547

`A397446(n+1)-A397447(n+1)`
-/

namespace A397448.P11960947595201410547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397446 (n + 1) - A397447 (n + 1)

end

end A397448.P11960947595201410547

/-!
# A397449: a(n) = Sum_{k=0..n-1} a(k)*(-2)^k, with a(0) = 1.

The programs for A397449, there is no canonical definition to state claims against.
-/

/-! ## A397449.P2909951148765740176

`ceil(∏[(-2)^(n-1)+1])`
-/

namespace A397449.P2909951148765740176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A397449.P2909951148765740176

/-!
# A397450: a(n) is the number of positive integers <= n that are the sum of 2 nonzero squares.

The programs for A397450, the canonical program `A397450.P7401832557812972848` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397450 has offset 1).

The definition of A397450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, A398671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A397450.P7401832557812972848

`A102548(n+1)-A398671(floor(sqrt(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A397450

/-- `A102548(n+1)-A398671(floor(sqrt(n+1)))` -/
def P7401832557812972848.Spec : Prop :=
  ∀ n, P7401832557812972848.a n = A397450 (n + 1)

theorem P7401832557812972848.correct : P7401832557812972848.Spec := by
  intro n
  simp only [A397450, Nat.add_sub_cancel]

end A397450

/-! ## A397450.P7784993561724683160

`∑[ceil(A025426(n+1)/12)]`
-/

namespace A397450.P7784993561724683160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025426 (n + 1) : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397450.P7784993561724683160

namespace A397450

/-- `∑[ceil(A025426(n+1)/12)]` -/
def P7784993561724683160.Spec : Prop :=
  ∀ n, P7784993561724683160.a n = A397450 (n + 1)

end A397450

/-! ## A397450.P3164831371215049961

`∑[char[A000404(1+n)-1]]`
-/

namespace A397450.P3164831371215049961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397450.P3164831371215049961

namespace A397450

/-- `∑[char[A000404(1+n)-1]]` -/
def P3164831371215049961.Spec : Prop :=
  ∀ n, (P3164831371215049961.a n : ℤ) = A397450 (n + 1)

end A397450

/-! ## A397450.P9913994314165226892

`∑[C(A001511(2*n+3), A266314(n))]`
-/

namespace A397450.P9913994314165226892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001511 (2 * n + 3)).toNat (A266314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397450.P9913994314165226892

namespace A397450

/-- `∑[C(A001511(2*n+3), A266314(n))]` -/
def P9913994314165226892.Spec : Prop :=
  ∀ n, (P9913994314165226892.a n : ℤ) = A397450 (n + 1)

end A397450

/-! ## A397450.P17158299742974095984

`∑[A055090(A084888(n+1))]`
-/

namespace A397450.P17158299742974095984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (A084888 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397450.P17158299742974095984

namespace A397450

/-- `∑[A055090(A084888(n+1))]` -/
def P17158299742974095984.Spec : Prop :=
  ∀ n, P17158299742974095984.a n = A397450 (n + 1)

end A397450

/-!
# A397453: Numbers k such that, writing m = floor(sqrt(k)), both k-m^2 and k+m^2 are perfect squares.

The programs for A397453, there is no canonical definition to state claims against.
-/

/-! ## A397453.P16754677992578779844

`A354235(A299291(n))`
-/

namespace A397453.P16754677992578779844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354235 (A299291 n).toNat

end

end A397453.P16754677992578779844

/-!
# A397456: Number of consecutive n-digit prime pairs with gap 6.

The programs for A397456, there is no canonical definition to state claims against.
-/

/-! ## A397456.P12003289481637276170

`Δ[A093738(A028310(n))]`
-/

namespace A397456.P12003289481637276170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093738 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A397456.P12003289481637276170

/-! ## A397456.P4935227572096247911

`Δ[A093738(A065033(2*n))]`
-/

namespace A397456.P4935227572096247911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093738 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A397456.P4935227572096247911

/-! ## A397456.P15957272078567666710

`A093738(n+1)-A093738(A028310(n))`
-/

namespace A397456.P15957272078567666710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093738 (n + 1) - A093738 (A028310 n).toNat

end

end A397456.P15957272078567666710

/-! ## A397456.P17126918993848060746

`A093738(n+1)-A093738(A065033(2*n))`
-/

namespace A397456.P17126918993848060746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093738 (n + 1) - A093738 (A065033 (2 * n)).toNat

end

end A397456.P17126918993848060746

/-!
# A397457: a(n) = Product_{k=1..n} (prime(n) + 1/k).

The programs for A397457, there is no canonical definition to state claims against.
-/

/-! ## A397457.P12563711167110416905

`A191670(A112670(n+2))+A064291(n)`
-/

namespace A397457.P12563711167110416905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191670 (A112670 (n + 2)).toNat + A064291 n

end

end A397457.P12563711167110416905

/-!
# A397458: Numbers k of the form lpf(k)^2 * rad(k), where rad = A007947 and lpf is the least prime factor of k.

The programs for A397458, the canonical program `A397458.P15426724961007206167` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397458 has offset 1).

The definition of A397458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397458.P17716140204797412062

`filter[A365866(n+1), A359472(#)]`
-/

namespace A397458.P17716140204797412062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A397458.P17716140204797412062

namespace A397458

/-- `filter[A365866(n+1), A359472(#)]` -/
def P17716140204797412062.Spec : Prop :=
  ∀ n, P17716140204797412062.a n = A397458 (n + 1)

end A397458

/-! ## A397458.P1519020102030898202

`∩[A048109(n+1), A365866(n+1)]`
-/

namespace A397458.P1519020102030898202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P1519020102030898202

namespace A397458

/-- `∩[A048109(n+1), A365866(n+1)]` -/
def P1519020102030898202.Spec : Prop :=
  ∀ n, (P1519020102030898202.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P11140404902928427272

`∩[A195086(n+1), A365866(n+1)]`
-/

namespace A397458.P11140404902928427272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P11140404902928427272

namespace A397458

/-- `∩[A195086(n+1), A365866(n+1)]` -/
def P11140404902928427272.Spec : Prop :=
  ∀ n, (P11140404902928427272.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P15426724961007206167

`filter[A048109(n+1), A319710(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A397458

/-- `filter[A048109(n+1), A319710(#)]` -/
def P15426724961007206167.Spec : Prop :=
  ∀ n, P15426724961007206167.a n = A397458 (n + 1)

theorem P15426724961007206167.correct : P15426724961007206167.Spec := by
  intro n
  simp only [A397458, Nat.add_sub_cancel]

end A397458

/-! ## A397458.P14728234483035689832

`∩[A082293(n+1), A365866(n+1)]`
-/

namespace A397458.P14728234483035689832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P14728234483035689832

namespace A397458

/-- `∩[A082293(n+1), A365866(n+1)]` -/
def P14728234483035689832.Spec : Prop :=
  ∀ n, (P14728234483035689832.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P17418596632055973046

`filter[A371601(n+1), A359472(#)]`
-/

namespace A397458.P17418596632055973046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A397458.P17418596632055973046

namespace A397458

/-- `filter[A371601(n+1), A359472(#)]` -/
def P17418596632055973046.Spec : Prop :=
  ∀ n, P17418596632055973046.a n = A397458 (n + 1)

end A397458

/-! ## A397458.P12139255362396426671

`∩[A048109(n+1), A371601(n+1)]`
-/

namespace A397458.P12139255362396426671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P12139255362396426671

namespace A397458

/-- `∩[A048109(n+1), A371601(n+1)]` -/
def P12139255362396426671.Spec : Prop :=
  ∀ n, (P12139255362396426671.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P4529032526681325756

`filter[A283050(n+1), A359472(#)]`
-/

namespace A397458.P4529032526681325756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A397458.P4529032526681325756

namespace A397458

/-- `filter[A283050(n+1), A359472(#)]` -/
def P4529032526681325756.Spec : Prop :=
  ∀ n, P4529032526681325756.a n = A397458 (n + 1)

end A397458

/-! ## A397458.P4049521625926290779

`∩[A048109(n+1), A283050(n+1)]`
-/

namespace A397458.P4049521625926290779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P4049521625926290779

namespace A397458

/-- `∩[A048109(n+1), A283050(n+1)]` -/
def P4049521625926290779.Spec : Prop :=
  ∀ n, (P4049521625926290779.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P14870787173337866047

`filter[A364160(n+1), A359472(#)]`
-/

namespace A397458.P14870787173337866047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A397458.P14870787173337866047

namespace A397458

/-- `filter[A364160(n+1), A359472(#)]` -/
def P14870787173337866047.Spec : Prop :=
  ∀ n, P14870787173337866047.a n = A397458 (n + 1)

end A397458

/-! ## A397458.P7176851164011755414

`∩[A048109(n+1), A364160(n+1)]`
-/

namespace A397458.P7176851164011755414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P7176851164011755414

namespace A397458

/-- `∩[A048109(n+1), A364160(n+1)]` -/
def P7176851164011755414.Spec : Prop :=
  ∀ n, (P7176851164011755414.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P12046784424961223407

`∩[A195086(n+1), A364160(n+1)]`
-/

namespace A397458.P12046784424961223407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P12046784424961223407

namespace A397458

/-- `∩[A195086(n+1), A364160(n+1)]` -/
def P12046784424961223407.Spec : Prop :=
  ∀ n, (P12046784424961223407.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P14220589547068030190

`filter[A375396(n+1), A359472(#)]`
-/

namespace A397458.P14220589547068030190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A397458.P14220589547068030190

namespace A397458

/-- `filter[A375396(n+1), A359472(#)]` -/
def P14220589547068030190.Spec : Prop :=
  ∀ n, P14220589547068030190.a n = A397458 (n + 1)

end A397458

/-! ## A397458.P924031384442538139

`∩[A048109(n+1), A375396(n+1)]`
-/

namespace A397458.P924031384442538139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P924031384442538139

namespace A397458

/-- `∩[A048109(n+1), A375396(n+1)]` -/
def P924031384442538139.Spec : Prop :=
  ∀ n, (P924031384442538139.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P194751150589032080

`∩[A176297(n+1), A375396(n+1)]`
-/

namespace A397458.P194751150589032080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P194751150589032080

namespace A397458

/-- `∩[A176297(n+1), A375396(n+1)]` -/
def P194751150589032080.Spec : Prop :=
  ∀ n, (P194751150589032080.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P1676270873397864607

`∩[A195086(n+1), A375396(n+1)]`
-/

namespace A397458.P1676270873397864607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P1676270873397864607

namespace A397458

/-- `∩[A195086(n+1), A375396(n+1)]` -/
def P1676270873397864607.Spec : Prop :=
  ∀ n, (P1676270873397864607.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P12829344638696926879

`∩[A375072(n+1), A375396(n+1)]`
-/

namespace A397458.P12829344638696926879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P12829344638696926879

namespace A397458

/-- `∩[A375072(n+1), A375396(n+1)]` -/
def P12829344638696926879.Spec : Prop :=
  ∀ n, (P12829344638696926879.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P6169619983431145387

`∩[A375396(n+1), A381315(n+1)]`
-/

namespace A397458.P6169619983431145387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P6169619983431145387

namespace A397458

/-- `∩[A375396(n+1), A381315(n+1)]` -/
def P6169619983431145387.Spec : Prop :=
  ∀ n, (P6169619983431145387.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P17136264451544270588

`∩[A375396(n+1), A386800(n+1)]`
-/

namespace A397458.P17136264451544270588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397458.P17136264451544270588

namespace A397458

/-- `∩[A375396(n+1), A386800(n+1)]` -/
def P17136264451544270588.Spec : Prop :=
  ∀ n, (P17136264451544270588.a n : ℤ) = A397458 (n + 1)

end A397458

/-! ## A397458.P9816157706579749257

`filter[A317257(n+1), A359472(#)]`
-/

namespace A397458.P9816157706579749257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A397458.P9816157706579749257

namespace A397458

/-- `filter[A317257(n+1), A359472(#)]` -/
def P9816157706579749257.Spec : Prop :=
  ∀ n, P9816157706579749257.a n = A397458 (n + 1)

end A397458

/-!
# A397459: Numbers k of the form lpf(k)^3 * rad(k), where rad = A007947 and lpf is the least prime factor of k.

The programs for A397459, the canonical program `A397459.P5570082344827990689` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397459 has offset 1).

The definition of A397459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397459.P5570082344827990689

`∩[A082294(n+1), A383264(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A397459

/-- `∩[A082294(n+1), A383264(n+1)]` -/
def P5570082344827990689.Spec : Prop :=
  ∀ n, (P5570082344827990689.a n : ℤ) = A397459 (n + 1)

theorem P5570082344827990689.correct : P5570082344827990689.Spec := by
  intro n
  simp only [A397459, Nat.add_sub_cancel]

end A397459

/-! ## A397459.P14775900655840994002

`∩[A195087(n+1), A383264(n+1)]`
-/

namespace A397459.P14775900655840994002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397459.P14775900655840994002

namespace A397459

/-- `∩[A195087(n+1), A383264(n+1)]` -/
def P14775900655840994002.Spec : Prop :=
  ∀ n, (P14775900655840994002.a n : ℤ) = A397459 (n + 1)

end A397459

/-! ## A397459.P14230823004968092915

`∩[A082294(n+1), A365869(n+1)]`
-/

namespace A397459.P14230823004968092915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397459.P14230823004968092915

namespace A397459

/-- `∩[A082294(n+1), A365869(n+1)]` -/
def P14230823004968092915.Spec : Prop :=
  ∀ n, (P14230823004968092915.a n : ℤ) = A397459 (n + 1)

end A397459

/-! ## A397459.P5501042468675397654

`∩[A195087(n+1), A375396(n+1)]`
-/

namespace A397459.P5501042468675397654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397459.P5501042468675397654

namespace A397459

/-- `∩[A195087(n+1), A375396(n+1)]` -/
def P5501042468675397654.Spec : Prop :=
  ∀ n, (P5501042468675397654.a n : ℤ) = A397459 (n + 1)

end A397459

/-! ## A397459.P14708961044899485025

`∩[A375396(n+1), A386804(n+1)]`
-/

namespace A397459.P14708961044899485025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397459.P14708961044899485025

namespace A397459

/-- `∩[A375396(n+1), A386804(n+1)]` -/
def P14708961044899485025.Spec : Prop :=
  ∀ n, (P14708961044899485025.a n : ℤ) = A397459 (n + 1)

end A397459

/-!
# A397460: Triangle read by rows: T(1,1) = 2; for n > 1, 1 <= k <= n, T(n,k) is the smallest unused positive number that has a common factor with at least one term in row T(n-1) but has no common factor with any term in row T(n-2).

The programs for A397460, there is no canonical definition to state claims against.
-/

/-! ## A397460.P11968351338141326079

`A356302(A000142(n))+A338059(n+2)`
-/

namespace A397460.P11968351338141326079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356302 (A000142 n).toNat + A338059 (n + 2)

end

end A397460.P11968351338141326079

/-! ## A397460.P7751680600047646188

`A358233(A083324(n))+A338059(n+2)`
-/

namespace A397460.P7751680600047646188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358233 (A083324 n).toNat + A338059 (n + 2)

end

end A397460.P7751680600047646188

/-! ## A397460.P497517170659448516

`A338059(n+2)%A213891(A306772(n))`
-/

namespace A397460.P497517170659448516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338059 (n + 2)) (A213891 (A306772 n).toNat)

end

end A397460.P497517170659448516

/-! ## A397460.P13248203700786220274

`or(A294018(A107025(n)), A338059(n+2))`
-/

namespace A397460.P13248203700786220274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A294018 (A107025 n).toNat) (A338059 (n + 2))

end

end A397460.P13248203700786220274

/-! ## A397460.P10225835311830306225

`A358233(A083278(n+1))+A338059(n+2)`
-/

namespace A397460.P10225835311830306225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358233 (A083278 (n + 1)).toNat + A338059 (n + 2)

end

end A397460.P10225835311830306225

/-!
# A397463: Smallest prime greater than or equal to (prime(n)^2 + prime(n+1)^2)/2.

The programs for A397463, there is no canonical definition to state claims against.
-/

/-! ## A397463.P15749723090109474706

`A308052(A069484(n+1))`
-/

namespace A397463.P15749723090109474706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A069484 (n + 1)).toNat

end

end A397463.P15749723090109474706

/-! ## A397463.P17996259494040593903

`A308052(A048851(n+2))`
-/

namespace A397463.P17996259494040593903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A048851 (n + 2)).toNat

end

end A397463.P17996259494040593903

/-!
# A397464: Primes indexed by A397428.

The programs for A397464, there is no canonical definition to state claims against.
-/

/-! ## A397464.P769958414102251154

`A064988(A397428(n+1))`
-/

namespace A397464.P769958414102251154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A397428 (n + 1)).toNat

end

end A397464.P769958414102251154

/-! ## A397464.P3910657256375271403

`A000040(A397428(n+1))`
-/

namespace A397464.P3910657256375271403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A397428 (n + 1)).toNat

end

end A397464.P3910657256375271403

/-!
# A397466: a(n) = prime(floor(n*sqrt(2))).

The programs for A397466, the canonical program `A397466.P10007294299205545502` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397466 has offset 1).

The definition of A397466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(2)))` (program `A397466.P10007294299205545502`, by `A397466.P10007294299205545502.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397466.P10007294299205545502

`A000040(floor((n+1)*sqrt(2)))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397466

/-- `A000040(floor((n+1)*sqrt(2)))` -/
def P10007294299205545502.Spec : Prop :=
  ∀ n, P10007294299205545502.a n = A397466 (n + 1)

theorem P10007294299205545502.correct : P10007294299205545502.Spec := by
  intro n
  simp only [A397466, Nat.add_sub_cancel]

end A397466

/-! ## A397466.P10262244452158698558

`A008578(1+floor((n+1)*sqrt(2)))`
-/

namespace A397466.P10262244452158698558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋).toNat

end

end A397466.P10262244452158698558

namespace A397466

/-- `A008578(1+floor((n+1)*sqrt(2)))` -/
def P10262244452158698558.Spec : Prop :=
  ∀ n, P10262244452158698558.a n = A397466 (n + 1)

end A397466

/-! ## A397466.P738663124549195333

`A001747(ceil((n+1)*sqrt(2)))/2`
-/

namespace A397466.P738663124549195333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉.toNat : ℚ) / 2

end

end A397466.P738663124549195333

namespace A397466

/-- `A001747(ceil((n+1)*sqrt(2)))/2` -/
def P738663124549195333.Spec : Prop :=
  ∀ n, P738663124549195333.a n = (A397466 (n + 1) : ℚ)

end A397466

/-! ## A397466.P14128069279691843419

`A008864(A001951(n+1))-1`
-/

namespace A397466.P14128069279691843419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A001951 (n + 1)).toNat - 1

end

end A397466.P14128069279691843419

namespace A397466

/-- `A008864(A001951(n+1))-1` -/
def P14128069279691843419.Spec : Prop :=
  ∀ n, P14128069279691843419.a n = A397466 (n + 1)

end A397466

/-! ## A397466.P14021123863064331564

`record[A000040(n+1)*A080764(n)]`
-/

namespace A397466.P14021123863064331564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A080764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397466.P14021123863064331564

namespace A397466

/-- `record[A000040(n+1)*A080764(n)]` -/
def P14021123863064331564.Spec : Prop :=
  ∀ n, P14021123863064331564.a n = A397466 (n + 1)

end A397466

/-! ## A397466.P7144869234459623079

`or(A000040(A001951(n+1)), A059648(n))`
-/

namespace A397466.P7144869234459623079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000040 (A001951 (n + 1)).toNat) (A059648 n)

end

end A397466.P7144869234459623079

namespace A397466

/-- `or(A000040(A001951(n+1)), A059648(n))` -/
def P7144869234459623079.Spec : Prop :=
  ∀ n, P7144869234459623079.a n = A397466 (n + 1)

end A397466

/-! ## A397466.P2712582136291906709

`A000040(A001951(n+1))%A007350(n+1)`
-/

namespace A397466.P2712582136291906709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A001951 (n + 1)).toNat) (A007350 (n + 1))

end

end A397466.P2712582136291906709

namespace A397466

/-- `A000040(A001951(n+1))%A007350(n+1)` -/
def P2712582136291906709.Spec : Prop :=
  ∀ n, P2712582136291906709.a n = A397466 (n + 1)

end A397466

/-! ## A397466.P11840454807690134816

`A073846(A286909(n+1))`
-/

namespace A397466.P11840454807690134816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A286909 (n + 1)).toNat

end

end A397466.P11840454807690134816

namespace A397466

/-- `A073846(A286909(n+1))` -/
def P11840454807690134816.Spec : Prop :=
  ∀ n, P11840454807690134816.a n = A397466 (n + 1)

end A397466

/-! ## A397466.P1719225256398063587

`A000040(A001951(n+1))+A000007(A059268(n))`
-/

namespace A397466.P1719225256398063587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001951 (n + 1)).toNat + A000007 (A059268 n).toNat

end

end A397466.P1719225256398063587

namespace A397466

/-- `A000040(A001951(n+1))+A000007(A059268(n))` -/
def P1719225256398063587.Spec : Prop :=
  ∀ n, P1719225256398063587.a n = A397466 (n + 1)

end A397466

/-!
# A397467: a(n) = prime(2n + floor(n*sqrt(2))).

The programs for A397467, the canonical program `A397467.P15957268274473207768` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397467 has offset 1).

The definition of A397467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)+floor((n+1)*sqrt(2)))` (program `A397467.P15957268274473207768`, by `A397467.P15957268274473207768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397467.P15957268274473207768

`A000040(2*(n+1)+floor((n+1)*sqrt(2)))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397467

/-- `A000040(2*(n+1)+floor((n+1)*sqrt(2)))` -/
def P15957268274473207768.Spec : Prop :=
  ∀ n, P15957268274473207768.a n = A397467 (n + 1)

theorem P15957268274473207768.correct : P15957268274473207768.Spec := by
  intro n
  simp only [A397467, Nat.add_sub_cancel]

end A397467

/-! ## A397467.P13228730868190144

`A045344(comp[floor(n*sqrt(2))]-1)`
-/

namespace A397467.P13228730868190144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - 1)

end

end A397467.P13228730868190144

namespace A397467

/-- `A045344(comp[floor(n*sqrt(2))]-1)` -/
def P13228730868190144.Spec : Prop :=
  ∀ n, P13228730868190144.a n = A397467 (n + 1)

end A397467

/-! ## A397467.P127401456920207992

`sqrt(A001248(floor((n+1)*(2+sqrt(2)))))`
-/

namespace A397467.P127401456920207992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 ⌊(n + 1 : ℝ) * (2 + Real.sqrt (2 : ℝ))⌋.toNat : ℝ)

end

end A397467.P127401456920207992

namespace A397467

/-- `sqrt(A001248(floor((n+1)*(2+sqrt(2)))))` -/
def P127401456920207992.Spec : Prop :=
  ∀ n, P127401456920207992.a n = (A397467 (n + 1) : ℝ)

end A397467

/-! ## A397467.P7951310030170513942

`or(1, A000040(floor((n+1)*(2+sqrt(2)))))`
-/

namespace A397467.P7951310030170513942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 ⌊(n + 1 : ℝ) * (2 + Real.sqrt (2 : ℝ))⌋.toNat)

end

end A397467.P7951310030170513942

namespace A397467

/-- `or(1, A000040(floor((n+1)*(2+sqrt(2)))))` -/
def P7951310030170513942.Spec : Prop :=
  ∀ n, P7951310030170513942.a n = A397467 (n + 1)

end A397467

/-! ## A397467.P7540201148590186439

`A006005(comp[A001951(n)])`
-/

namespace A397467.P7540201148590186439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397467.P7540201148590186439

namespace A397467

/-- `A006005(comp[A001951(n)])` -/
def P7540201148590186439.Spec : Prop :=
  ∀ n, P7540201148590186439.a n = A397467 (n + 1)

end A397467

/-! ## A397467.P13301039486702014536

`A008578(A083051(n+1))`
-/

namespace A397467.P13301039486702014536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A083051 (n + 1)).toNat

end

end A397467.P13301039486702014536

namespace A397467

/-- `A008578(A083051(n+1))` -/
def P13301039486702014536.Spec : Prop :=
  ∀ n, P13301039486702014536.a n = A397467 (n + 1)

end A397467

/-! ## A397467.P1841563910079699297

`A162753(A187393(n+1))`
-/

namespace A397467.P1841563910079699297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A187393 (n + 1)).toNat

end

end A397467.P1841563910079699297

namespace A397467

/-- `A162753(A187393(n+1))` -/
def P1841563910079699297.Spec : Prop :=
  ∀ n, P1841563910079699297.a n = A397467 (n + 1)

end A397467

/-! ## A397467.P15761350211077282548

`A067747(A286690(n+1))`
-/

namespace A397467.P15761350211077282548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A286690 (n + 1)).toNat

end

end A397467.P15761350211077282548

namespace A397467

/-- `A067747(A286690(n+1))` -/
def P15761350211077282548.Spec : Prop :=
  ∀ n, P15761350211077282548.a n = A397467 (n + 1)

end A397467

/-! ## A397467.P3742199040703305871

`A073846(A286927(n+1))`
-/

namespace A397467.P3742199040703305871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A286927 (n + 1)).toNat

end

end A397467.P3742199040703305871

namespace A397467

/-- `A073846(A286927(n+1))` -/
def P3742199040703305871.Spec : Prop :=
  ∀ n, P3742199040703305871.a n = A397467 (n + 1)

end A397467

/-!
# A397468: a(n) = prime(floor(n*sqrt(3))).

The programs for A397468, the canonical program `A397468.P17706950763602875033` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397468 has offset 1).

The definition of A397468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(3)))` (program `A397468.P17706950763602875033`, by `A397468.P17706950763602875033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397468.P17706950763602875033

`A000040(floor((n+1)*sqrt(3)))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397468

/-- `A000040(floor((n+1)*sqrt(3)))` -/
def P17706950763602875033.Spec : Prop :=
  ∀ n, P17706950763602875033.a n = A397468 (n + 1)

theorem P17706950763602875033.correct : P17706950763602875033.Spec := by
  intro n
  simp only [A397468, Nat.add_sub_cancel]

end A397468

/-! ## A397468.P15165158725291955494

`A040976(floor((1+n)*sqrt(3)))+2`
-/

namespace A397468.P15165158725291955494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 ⌊(1 + n : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat + 2

end

end A397468.P15165158725291955494

namespace A397468

/-- `A040976(floor((1+n)*sqrt(3)))+2` -/
def P15165158725291955494.Spec : Prop :=
  ∀ n, P15165158725291955494.a n = A397468 (n + 1)

theorem P15165158725291955494.correct : P15165158725291955494.Spec := by
  intro n
  simp only [A397468, Nat.add_sub_cancel, A397468.P15165158725291955494.a, A397468.P17706950763602875033.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A397468

/-! ## A397468.P17124062682930116357

`A006093(A022838(n+1))+1`
-/

namespace A397468.P17124062682930116357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A022838 (n + 1)).toNat + 1

end

end A397468.P17124062682930116357

namespace A397468

/-- `A006093(A022838(n+1))+1` -/
def P17124062682930116357.Spec : Prop :=
  ∀ n, P17124062682930116357.a n = A397468 (n + 1)

theorem P17124062682930116357.correct : P17124062682930116357.Spec := by
  intro n
  simp only [A397468, Nat.add_sub_cancel, A397468.P17124062682930116357.a, A397468.P17706950763602875033.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A022838, A022838.P2955185450675945792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A397468

/-! ## A397468.P16256827013294551807

`A008578(A198081(n+1))`
-/

namespace A397468.P16256827013294551807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A198081 (n + 1)).toNat

end

end A397468.P16256827013294551807

namespace A397468

/-- `A008578(A198081(n+1))` -/
def P16256827013294551807.Spec : Prop :=
  ∀ n, P16256827013294551807.a n = A397468 (n + 1)

end A397468

/-! ## A397468.P14122796306566343205

`A008578(A022838(n+1)+1)`
-/

namespace A397468.P14122796306566343205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022838 (n + 1) + 1).toNat

end

end A397468.P14122796306566343205

namespace A397468

/-- `A008578(A022838(n+1)+1)` -/
def P14122796306566343205.Spec : Prop :=
  ∀ n, P14122796306566343205.a n = A397468 (n + 1)

end A397468

/-! ## A397468.P2422028856212744368

`A006530(A100484(floor((n+1)*sqrt(3))))`
-/

namespace A397468.P2422028856212744368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100484 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat).toNat

end

end A397468.P2422028856212744368

namespace A397468

/-- `A006530(A100484(floor((n+1)*sqrt(3))))` -/
def P2422028856212744368.Spec : Prop :=
  ∀ n, P2422028856212744368.a n = A397468 (n + 1)

end A397468

/-! ## A397468.P3495853930646244346

`A162753(A194028(n+1))`
-/

namespace A397468.P3495853930646244346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A194028 (n + 1)).toNat

end

end A397468.P3495853930646244346

namespace A397468

/-- `A162753(A194028(n+1))` -/
def P3495853930646244346.Spec : Prop :=
  ∀ n, P3495853930646244346.a n = A397468 (n + 1)

end A397468

/-! ## A397468.P18163073380284017487

`A008578(Δ[A022777(n+1)])`
-/

namespace A397468.P18163073380284017487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (n + 1) - f1 n).toNat

end

end A397468.P18163073380284017487

namespace A397468

/-- `A008578(Δ[A022777(n+1)])` -/
def P18163073380284017487.Spec : Prop :=
  ∀ n, P18163073380284017487.a n = A397468 (n + 1)

end A397468

/-!
# A397469: a(n) = prime(floor(n*r)), where r = (3 + sqrt(3))/2.

The programs for A397469, the canonical program `A397469.P12444766347461370515` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397469 has offset 1).

The definition of A397469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397469.P12444766347461370515

`A065091(A054406(n+1)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A397469

/-- `A065091(A054406(n+1)-1)` -/
def P12444766347461370515.Spec : Prop :=
  ∀ n, P12444766347461370515.a n = A397469 (n + 1)

theorem P12444766347461370515.correct : P12444766347461370515.Spec := by
  intro n
  simp only [A397469, Nat.add_sub_cancel]

end A397469

/-! ## A397469.P12416416767034501053

`A065091(A003511(n+1)+n)`
-/

namespace A397469.P12416416767034501053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A003511 (n + 1) + (n : ℤ)).toNat

end

end A397469.P12416416767034501053

namespace A397469

/-- `A065091(A003511(n+1)+n)` -/
def P12416416767034501053.Spec : Prop :=
  ∀ n, P12416416767034501053.a n = A397469 (n + 1)

end A397469

/-! ## A397469.P6635105433858999390

`A000040(comp[floor(n*sqrt(3))])`
-/

namespace A397469.P6635105433858999390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397469.P6635105433858999390

namespace A397469

/-- `A000040(comp[floor(n*sqrt(3))])` -/
def P6635105433858999390.Spec : Prop :=
  ∀ n, P6635105433858999390.a n = A397469 (n + 1)

end A397469

/-! ## A397469.P14729386237541905723

`A006005(A054406(n+1))`
-/

namespace A397469.P14729386237541905723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A054406 (n + 1)).toNat

end

end A397469.P14729386237541905723

namespace A397469

/-- `A006005(A054406(n+1))` -/
def P14729386237541905723.Spec : Prop :=
  ∀ n, P14729386237541905723.a n = A397469 (n + 1)

end A397469

/-! ## A397469.P6878384214006864102

`record[A000040(A026255(n+1))]`
-/

namespace A397469.P6878384214006864102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A026255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397469.P6878384214006864102

namespace A397469

/-- `record[A000040(A026255(n+1))]` -/
def P6878384214006864102.Spec : Prop :=
  ∀ n, P6878384214006864102.a n = A397469 (n + 1)

end A397469

/-! ## A397469.P14296166722914869306

`A008578(A054406(n+1)+1)`
-/

namespace A397469.P14296166722914869306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A054406 (n + 1) + 1).toNat

end

end A397469.P14296166722914869306

namespace A397469

/-- `A008578(A054406(n+1)+1)` -/
def P14296166722914869306.Spec : Prop :=
  ∀ n, P14296166722914869306.a n = A397469 (n + 1)

end A397469

/-! ## A397469.P15443129304672525570

`or(A000040(A054406(n+1)), A079944(n))`
-/

namespace A397469.P15443129304672525570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000040 (A054406 (n + 1)).toNat) (A079944 n)

end

end A397469.P15443129304672525570

namespace A397469

/-- `or(A000040(A054406(n+1)), A079944(n))` -/
def P15443129304672525570.Spec : Prop :=
  ∀ n, P15443129304672525570.a n = A397469 (n + 1)

end A397469

/-! ## A397469.P14455225369884629137

`gcd(A000040(A054406(n+1)), A213618(3*n+1))`
-/

namespace A397469.P14455225369884629137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (A054406 (n + 1)).toNat) (A213618 (3 * n + 1))

end

end A397469.P14455225369884629137

namespace A397469

/-- `gcd(A000040(A054406(n+1)), A213618(3*n+1))` -/
def P14455225369884629137.Spec : Prop :=
  ∀ n, (P14455225369884629137.a n : ℤ) = A397469 (n + 1)

end A397469

/-!
# A397471: Numbers not appearing in A399995.

The programs for A397471, there is no canonical definition to state claims against.
-/

/-! ## A397471.P3698348874374460106

`comp[A399995(n+1)]`
-/

namespace A397471.P3698348874374460106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397471.P3698348874374460106

/-! ## A397471.P5066128517600739438

`lt[char[A399995(n+2)], 1]`
-/

namespace A397471.P5066128517600739438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399995 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A397471.P5066128517600739438

/-! ## A397471.P13296150503426194250

`comp[1-A397177(n+1)+n]`
-/

namespace A397471.P13296150503426194250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A397177 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397471.P13296150503426194250

/-! ## A397471.P7179011696643445036

`comp[A024000(A397177(n+1))+n]`
-/

namespace A397471.P7179011696643445036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A397177 (n + 1)).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397471.P7179011696643445036

/-! ## A397471.P1845215141061665986

`comp[(A397177(n+1)*n)%A000027(n+1)]`
-/

namespace A397471.P1845215141061665986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397177 (n + 1) * (n : ℤ)) (A000027 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397471.P1845215141061665986

/-! ## A397471.P9048943262346325193

`comp[(A028310(n)*A397177(n+1))%(n+1)]`
-/

namespace A397471.P9048943262346325193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n * A397177 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397471.P9048943262346325193

/-!
# A397472: a(n) = 64^n * [z^n] 2F1(1/4, 1/4; 1; z)^4.

The programs for A397472, the canonical program `A397472.P16857331926682471212` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397472 has offset 0).

The definition of A397472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397472.P16857331926682471212

`∑{#}[n, C(2*#, #)^3*C(2*(n-#), n-#)^3]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397472

/-- `∑{#}[n, C(2*#, #)^3*C(2*(n-#), n-#)^3]` -/
def P16857331926682471212.Spec : Prop :=
  ∀ n, (P16857331926682471212.a n : ℤ) = A397472 n

theorem P16857331926682471212.correct : P16857331926682471212.Spec := by
  intro n
  simp only [A397472]

end A397472

/-!
# A397480: a(n) = n/m for the smallest m such that denominator(B_{2m}) = denominator(B_{2n}), where B_k is the k-th Bernoulli number.

The programs for A397480, there is no canonical definition to state claims against.
-/

/-! ## A397480.P6758560497451374006

`A346468(2*n+3)`
-/

namespace A397480.P6758560497451374006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (2 * n + 3)

end

end A397480.P6758560497451374006

/-!
# A397482: Integers x such that there exist four integers 0<y<=z<=t<=w such that sigma(x)^4*psi(x) = x^5 + y^5 + z^5 + t^5 + w^5.

The programs for A397482, there is no canonical definition to state claims against.
-/

/-! ## A397482.P15437248057480030571

`filter[A386672(n+1), A008966(#)]`
-/

namespace A397482.P15437248057480030571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A397482.P15437248057480030571

/-!
# A397488: Number A(n,k) of ways to write n as a sum n = 0 + 1 + 2 +- 3 +- 4 ... +- k with nonnegative partial sums; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A397488, there is no canonical definition to state claims against.
-/

/-! ## A397488.P15567823991455011362

`A109017(A174995(n+2))`
-/

namespace A397488.P15567823991455011362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (A174995 (n + 2)).toNat

end

end A397488.P15567823991455011362

/-! ## A397488.P7991713911282226946

`and(char[A392461(n+1)], A347669(n))`
-/

namespace A397488.P7991713911282226946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392461 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A347669 n)

end

end A397488.P7991713911282226946

/-! ## A397488.P1732946959852310145

`A358007(A324153(n))^A358048(2*n)`
-/

namespace A397488.P1732946959852310145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358007 ((A324153 n).toNat + 53) : ℚ) ^ (A358048 (2 * n) : ℤ)

end

end A397488.P1732946959852310145

/-! ## A397488.P3597312445458495436

`A010052(A083486(n+1))`
-/

namespace A397488.P3597312445458495436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A083486 (n + 1)).toNat

end

end A397488.P3597312445458495436

/-! ## A397488.P942491884056023554

`A000122(A083486(n+1))/A258757(3*(n+1))`
-/

namespace A397488.P942491884056023554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (A083486 (n + 1)).toNat : ℚ) / (A258757 (3 * (n + 1)) : ℚ)

end

end A397488.P942491884056023554

/-!
# A397489: Number of ways to write n as a sum n = 0 + 1 + 2 +- 3 +- 4 ... +- n with nonnegative partial sums.

The programs for A397489, there is no canonical definition to state claims against.
-/

/-! ## A397489.P3498453241346593981

`A397488(C(n+n+1, 2)+n)`
-/

namespace A397489.P3498453241346593981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397488 (Nat.choose (n + n + 1) 2 + n)

end

end A397489.P3498453241346593981

/-! ## A397489.P5137828388442936433

`A397488(∑[4*n])`
-/

namespace A397489.P5137828388442936433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397488 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397489.P5137828388442936433

/-!
# A397491: a(n) = (n^13 - n)/2730.

The programs for A397491, the canonical program `A397491.P13383591952212142653` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397491 has offset 0).

The definition of A397491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397491.P13383591952212142653

`A366489(n)/210`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397491

/-- `A366489(n)/210` -/
def P13383591952212142653.Spec : Prop :=
  ∀ n, P13383591952212142653.a n = (A397491 n : ℚ)

end A397491

/-!
# A397492: Square array read by antidiagonals: A(n,m) is the number of satisfiable 3-SAT formulas with n variables and m clauses in the multiset clause model, n >= 1, m >= 1.

The programs for A397492, there is no canonical definition to state claims against.
-/

/-! ## A397492.P14516864404886721095

`A401175(A401187(n+1))+A401146(3*(n+1))`
-/

namespace A397492.P14516864404886721095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401175 (A401187 (n + 1)).toNat + A401146 (3 * (n + 1))

end

end A397492.P14516864404886721095

/-!
# A397493: Distinct values of A400000 in order of appearance, with index 0.

The programs for A397493, there is no canonical definition to state claims against.
-/

/-! ## A397493.P12965435347015941931

`A400000(A400121(n))`
-/

namespace A397493.P12965435347015941931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A400121 n).toNat

end

end A397493.P12965435347015941931

/-!
# A397495: Number of quadruples (a,b,c,d) of nonzero quadratic residues modulo prime(n) such that a + b == c + d (mod prime(n)).

The programs for A397495, the canonical program `A397495.P2362568275880317952` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397495 has offset 2).

The definition of A397495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397495.P9784057517719672084

`A074149(A005097(n+1))`
-/

namespace A397495.P9784057517719672084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (A005097 (n + 1)).toNat

end

end A397495.P9784057517719672084

namespace A397495

/-- `A074149(A005097(n+1))` -/
def P9784057517719672084.Spec : Prop :=
  ∀ n, P9784057517719672084.a n = A397495 (n + 2)

end A397495

/-! ## A397495.P2362568275880317952

`A074149(A102781(n+2))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A397495

/-- `A074149(A102781(n+2))` -/
def P2362568275880317952.Spec : Prop :=
  ∀ n, P2362568275880317952.a n = A397495 (n + 2)

theorem P2362568275880317952.correct : P2362568275880317952.Spec := by
  intro n
  simp only [A397495, Nat.add_sub_cancel]

end A397495

/-! ## A397495.P10297424682800709072

`A074149(A130290(n+2))`
-/

namespace A397495.P10297424682800709072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (A130290 (n + 2)).toNat

end

end A397495.P10297424682800709072

namespace A397495

/-- `A074149(A130290(n+2))` -/
def P10297424682800709072.Spec : Prop :=
  ∀ n, P10297424682800709072.a n = A397495 (n + 2)

end A397495

/-! ## A397495.P4387685642300573089

`A074149(eq[2, A099774(n+1)])`
-/

namespace A397495.P4387685642300573089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A397495.P4387685642300573089

namespace A397495

/-- `A074149(eq[2, A099774(n+1)])` -/
def P4387685642300573089.Spec : Prop :=
  ∀ n, P4387685642300573089.a n = A397495 (n + 2)

end A397495

/-! ## A397495.P17493704012962003261

`A074149(eq[2, A278223(n+1)])`
-/

namespace A397495.P17493704012962003261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A397495.P17493704012962003261

namespace A397495

/-- `A074149(eq[2, A278223(n+1)])` -/
def P17493704012962003261.Spec : Prop :=
  ∀ n, P17493704012962003261.a n = A397495 (n + 2)

end A397495

/-!
# A397496: Triangle read by rows: T(n, k) is the concatenation of numbers from n down to n + 1 - k, n >= k >= 1.

The programs for A397496, there is no canonical definition to state claims against.
-/

/-! ## A397496.P7682724694032775031

`A262557(A043569(n+1))`
-/

namespace A397496.P7682724694032775031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A043569 (n + 1)).toNat

end

end A397496.P7682724694032775031

/-! ## A397496.P7353201131850151828

`A262557(A043756(n+1))`
-/

namespace A397496.P7353201131850151828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A043756 (n + 1)).toNat

end

end A397496.P7353201131850151828

/-! ## A397496.P15600540980363750966

`A262557(A043765(n+1))`
-/

namespace A397496.P15600540980363750966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A043765 (n + 1)).toNat

end

end A397496.P15600540980363750966

/-! ## A397496.P13936609640494455642

`A004086(A224841(n+1))`
-/

namespace A397496.P13936609640494455642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A224841 (n + 1)).toNat

end

end A397496.P13936609640494455642

/-! ## A397496.P6748488089569557857

`A127668(A098012(n+1))`
-/

namespace A397496.P6748488089569557857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127668 (A098012 (n + 1)).toNat

end

end A397496.P6748488089569557857

/-!
# A397497: Primes in A397496, in order of appearance.

The programs for A397497, there is no canonical definition to state claims against.
-/

/-! ## A397497.P9014101088904526509

`p?[A397496(n+1)]`
-/

namespace A397497.P9014101088904526509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A397497.P9014101088904526509

/-!
# A397499: a(n) = A003557(A055932(n)).

The programs for A397499, there is no canonical definition to state claims against.
-/

/-! ## A397499.P11118894361312116769

`A055932(n+1)/A007947(A055932(n+1))`
-/

namespace A397499.P11118894361312116769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055932 (n + 1) : ℚ) / (A007947 (A055932 (n + 1)).toNat : ℚ)

end

end A397499.P11118894361312116769

/-! ## A397499.P14199164258207150813

`A003557(A055932(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397499.P14199164258207150813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A055932 (n + 1)).toNat

end

end A397499.P14199164258207150813

/-! ## A397499.P16295992643055883639

`A124833(n+1)/A006530(A055932(n+1))`
-/

namespace A397499.P16295992643055883639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124833 (n + 1) : ℚ) / (A006530 (A055932 (n + 1)).toNat : ℚ)

end

end A397499.P16295992643055883639

/-! ## A397499.P5487314464806622168

`A052126(A124833(n+1))`
-/

namespace A397499.P5487314464806622168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A124833 (n + 1)).toNat

end

end A397499.P5487314464806622168

/-! ## A397499.P177248947525948730

`A396938(A055932(2*n+1-n))`
-/

namespace A397499.P177248947525948730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396938 (A055932 (2 * n + 1 - n)).toNat

end

end A397499.P177248947525948730

/-! ## A397499.P3345487832438912463

`A111701(A055932(n+1)-A000007(n+4))`
-/

namespace A397499.P3345487832438912463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A055932 (n + 1) - A000007 (n + 4)).toNat

end

end A397499.P3345487832438912463

