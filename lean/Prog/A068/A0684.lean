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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C003
import Seq.B004.C004
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
# A068402: Numbers n such that sigma(n+1) = n + phi(n).

The programs for A068402, there is no canonical definition to state claims against.
-/

/-! ## A068402.P1719230075625640767

`eq[A109606(A028310(n)), A173455(n+1)]`
-/

namespace A068402.P1719230075625640767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068402.P1719230075625640767

/-!
# A068403: Numbers k such that sigma(k) > 3*k.

The programs for A068403, there is no canonical definition to state claims against.
-/

/-! ## A068403.P8591032801424589931

`∩[A023197(n+1), A214408(n+1)]`
-/

namespace A068403.P8591032801424589931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068403.P8591032801424589931

/-! ## A068403.P1874753579359643377

`A023197(round(root(A152718(n), n+1)+n)+1)`
-/

namespace A068403.P1874753579359643377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023197 (SequenceMachineLib.roundAway ((A152718 n : ℝ) ^ (1 / (n + 1 : ℝ)) + (n : ℝ)) + 1).toNat

end

end A068403.P1874753579359643377

/-! ## A068403.P10571195087149089522

`lt[or(1, 3*n+1), A039653(n)]`
-/

namespace A068403.P10571195087149089522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068403.P10571195087149089522

/-! ## A068403.P4699408889482286496

`lt[A033885(A028310(n)), 0]`
-/

namespace A068403.P4699408889482286496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A068403.P4699408889482286496

/-! ## A068403.P2973716296746465663

`lt[A008486(n), A039653(n)]`
-/

namespace A068403.P2973716296746465663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068403.P2973716296746465663

/-! ## A068403.P3774086825228772709

`lt[A016789(n), A039653(n)]`
-/

namespace A068403.P3774086825228772709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068403.P3774086825228772709

/-! ## A068403.P14450828626960956582

`lt[A005408(n), A001065(A028310(n))]`
-/

namespace A068403.P14450828626960956582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068403.P14450828626960956582

/-! ## A068403.P1643577511053969184

`lt[A008486(n), A000203(A028310(n))]`
-/

namespace A068403.P1643577511053969184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068403.P1643577511053969184

/-! ## A068403.P11217449358535351177

`lt[A008588(A004526(n)), A039653(n)]`
-/

namespace A068403.P11217449358535351177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068403.P11217449358535351177

/-! ## A068403.P10143882490445373572

`lt[A004277(n), A048050(A028310(n))]`
-/

namespace A068403.P10143882490445373572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068403.P10143882490445373572

/-! ## A068403.P8010908616540609537

`lt[A005843(n), A325826(A028310(n))]`
-/

namespace A068403.P8010908616540609537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325826 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068403.P8010908616540609537

/-! ## A068403.P8278067371054428111

`lt[A325601(n+1), A000203(A028310(n))]`
-/

namespace A068403.P8278067371054428111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068403.P8278067371054428111

/-!
# A068404: Numbers k such that sigma(k) > 4*k.

The programs for A068404, there is no canonical definition to state claims against.
-/

/-! ## A068404.P3251296767613817566

`record[A023198(A023123(n+4))]`
-/

namespace A068404.P3251296767613817566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023198 (A023123 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068404.P3251296767613817566

/-! ## A068404.P4144219222233602069

`record[A023198(A138121(n+5))]`
-/

namespace A068404.P4144219222233602069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023198 (A138121 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068404.P4144219222233602069

/-! ## A068404.P469671272958673206

`A204831(A227549(n+4)^floor(n^(1/5)))`
-/

namespace A068404.P469671272958673206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204831 (SequenceMachineLib.roundAway ((A227549 (n + 4) : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ : ℤ))).toNat

end

end A068404.P469671272958673206

/-!
# A068405: Numbers k such that (k+1) is squarefree and composite and such that there is one more distinct prime factor in k than in (k+1).

The programs for A068405, there is no canonical definition to state claims against.
-/

/-! ## A068405.P12145658869307340890

`eq[n+1, A227976(A100806(n+1))]`
-/

namespace A068405.P12145658869307340890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227976 (A100806 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068405.P12145658869307340890

/-! ## A068405.P5860578682031446425

`∩[A033992(n+1), A023443(A350486(n+1))]`
-/

namespace A068405.P5860578682031446425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A350486 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068405.P5860578682031446425

/-!
# A068406: Numbers n such that n and 2n+1 have the same number of prime divisors.

The programs for A068406, the canonical program `A068406.P7194259482102905941` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068406 has offset 1).

The definition of A068406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068406.P7194259482102905941

`eq[A001221(2*n+3), A001221(n+1)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068406

/-- `eq[A001221(2*n+3), A001221(n+1)]+1` -/
def P7194259482102905941.Spec : Prop :=
  ∀ n, (P7194259482102905941.a n : ℤ) = A068406 (n + 1)

theorem P7194259482102905941.correct : P7194259482102905941.Spec := by
  intro n
  simp only [A068406, Nat.add_sub_cancel]

end A068406

/-! ## A068406.P7312609449132760645

`A020725(eq[A001221(n+1), A001221(2*n+3)])`
-/

namespace A068406.P7312609449132760645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068406.P7312609449132760645

namespace A068406

/-- `A020725(eq[A001221(n+1), A001221(2*n+3)])` -/
def P7312609449132760645.Spec : Prop :=
  ∀ n, P7312609449132760645.a n = A068406 (n + 1)

end A068406

/-! ## A068406.P5653092880626534991

`eq[A074816(2*n+3), A074816(n+1)]+1`
-/

namespace A068406.P5653092880626534991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068406.P5653092880626534991

namespace A068406

/-- `eq[A074816(2*n+3), A074816(n+1)]+1` -/
def P5653092880626534991.Spec : Prop :=
  ∀ n, (P5653092880626534991.a n : ℤ) = A068406 (n + 1)

end A068406

/-! ## A068406.P12132006430315753180

`eq[A034444(2*n+3), A034444(n+1)]+1`
-/

namespace A068406.P12132006430315753180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068406.P12132006430315753180

namespace A068406

/-- `eq[A034444(2*n+3), A034444(n+1)]+1` -/
def P12132006430315753180.Spec : Prop :=
  ∀ n, (P12132006430315753180.a n : ℤ) = A068406 (n + 1)

end A068406

/-! ## A068406.P3592397650565470667

`eq[A083399(2*n+3), A083399(n+1)]+1`
-/

namespace A068406.P3592397650565470667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068406.P3592397650565470667

namespace A068406

/-- `eq[A083399(2*n+3), A083399(n+1)]+1` -/
def P3592397650565470667.Spec : Prop :=
  ∀ n, (P3592397650565470667.a n : ℤ) = A068406 (n + 1)

end A068406

/-! ## A068406.P16475228220949763321

`A020725(eq[A034444(2*n+3), A034444(n+1)])`
-/

namespace A068406.P16475228220949763321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068406.P16475228220949763321

namespace A068406

/-- `A020725(eq[A034444(2*n+3), A034444(n+1)])` -/
def P16475228220949763321.Spec : Prop :=
  ∀ n, P16475228220949763321.a n = A068406 (n + 1)

end A068406

/-! ## A068406.P9783359337268321927

`eq[A001221(A028310(n)), A087802(2*n+1)]`
-/

namespace A068406.P9783359337268321927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068406.P9783359337268321927

namespace A068406

/-- `eq[A001221(A028310(n)), A087802(2*n+1)]` -/
def P9783359337268321927.Spec : Prop :=
  ∀ n, (P9783359337268321927.a n : ℤ) = A068406 (n + 1)

end A068406

/-!
# A068407: Automorphic numbers: numbers k such that k^5 ends with k. Also m-morphic numbers for all m > 5 such that m-1 is not divisible by 10 and m == 1 (mod 4).

The programs for A068407, there is no canonical definition to state claims against.
-/

/-! ## A068407.P4697890426619206291

`∪[A003226(n+1), A056033(n+1)]`
-/

namespace A068407.P4697890426619206291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068407.P4697890426619206291

/-! ## A068407.P15250616012508484334

`∪[A033819(n+1), A056033(n+1)]`
-/

namespace A068407.P15250616012508484334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068407.P15250616012508484334

/-! ## A068407.P14364072142157784542

`∪[A033819(n+1), A056036(n+1)]`
-/

namespace A068407.P14364072142157784542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068407.P14364072142157784542

/-! ## A068407.P5545667161894153230

`lt[A027181(n), A133900(A270042(n+7))]`
-/

namespace A068407.P5545667161894153230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133900 (A270042 (n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068407.P5545667161894153230

/-!
# A068408: Automorphic numbers: numbers k such that k^6 ends with k. Also m-morphic numbers for all m not congruent to 26 (mod 50) but congruent to 6 (mod 10).

The programs for A068408, there is no canonical definition to state claims against.
-/

/-! ## A068408.P1410321089514235364

`∩[A187127(n+1), A238712(n+1)]`
-/

namespace A068408.P1410321089514235364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068408.P1410321089514235364

/-! ## A068408.P536191190849027629

`∩[A238712(n+1), A187127(A348553(n))]`
-/

namespace A068408.P536191190849027629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187127 (A348553 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068408.P536191190849027629

/-! ## A068408.P16437162288147691143

`∩[A028813(n+1)-32, A238712(n+1)]`
-/

namespace A068408.P16437162288147691143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028813 (n + 1) - 32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068408.P16437162288147691143

/-!
# A068409: a(n) = binomial(binomial(2*n,n),n).

The programs for A068409, the canonical program `A068409.P14768570274838272970` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068409 has offset 0).

The definition of A068409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(2*n, n), n)` (program `A068409.P14768570274838272970`, by `A068409.P14768570274838272970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068409.P14768570274838272970

`C(C(2*n, n), n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068409

/-- `C(C(2*n, n), n)` -/
def P14768570274838272970.Spec : Prop :=
  ∀ n, (P14768570274838272970.a n : ℤ) = A068409 n

theorem P14768570274838272970.correct : P14768570274838272970.Spec := by
  intro n
  simp only [A068409]

end A068409

/-! ## A068409.P3187067333847422661

`C(∑{#}[n, C(n, #)²], n)`
-/

namespace A068409.P3187067333847422661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2) n

end

end A068409.P3187067333847422661

namespace A068409

/-- `C(∑{#}[n, C(n, #)²], n)` -/
def P3187067333847422661.Spec : Prop :=
  ∀ n, (P3187067333847422661.a n : ℤ) = A068409 n

end A068409

/-! ## A068409.P1713154143803039622

`C(record[a(n-1)/(floor(n/2)/n-1)], n)` with `a(0)=1`
-/

namespace A068409.P1713154143803039622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat n

end

end A068409.P1713154143803039622

namespace A068409

/-- `C(record[a(n-1)/(floor(n/2)/n-1)], n)` -/
def P1713154143803039622.Spec : Prop :=
  ∀ n, (P1713154143803039622.a n : ℤ) = A068409 n

end A068409

/-! ## A068409.P10263129597869543266

`C(A000984(n), n)`
-/

namespace A068409.P10263129597869543266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000984 n).toNat n

end

end A068409.P10263129597869543266

namespace A068409

/-- `C(A000984(n), n)` -/
def P10263129597869543266.Spec : Prop :=
  ∀ n, (P10263129597869543266.a n : ℤ) = A068409 n

end A068409

/-! ## A068409.P12340288298781746712

`C(sqrt(A002894(n)), n)`
-/

namespace A068409.P12340288298781746712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A002894 n : ℝ))).toNat n

end

end A068409.P12340288298781746712

namespace A068409

/-- `C(sqrt(A002894(n)), n)` -/
def P12340288298781746712.Spec : Prop :=
  ∀ n, (P12340288298781746712.a n : ℤ) = A068409 n

end A068409

/-!
# A068410: Numbers k such that k+1 is composite and divides 3^k-2^k.

The programs for A068410, there is no canonical definition to state claims against.
-/

/-! ## A068410.P14420668016008329961

`A073631(n+2)-1`
-/

namespace A068410.P14420668016008329961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 2) - 1

end

end A068410.P14420668016008329961

/-! ## A068410.P2580611043020286254

`∑[abs(Δ[A073631(n+1)])]`
-/

namespace A068410.P2580611043020286254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068410.P2580611043020286254

/-! ## A068410.P4930084548634349092

`∑[Δ[A073631(n+1)]%A351301(n+4)]`
-/

namespace A068410.P4930084548634349092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A351301 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068410.P4930084548634349092

/-! ## A068410.P15615058514955475084

`A280193(Δ[n²])+A073631(n+2)`
-/

namespace A068410.P15615058514955475084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A073631 (n + 2)

end

end A068410.P15615058514955475084

/-! ## A068410.P8890790796213825023

`xor(1, A073631(A008619(2*n+3)))`
-/

namespace A068410.P8890790796213825023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A073631 (A008619 (2 * n + 3)).toNat)

end

end A068410.P8890790796213825023

/-! ## A068410.P721221333996963898

`∑[A000027(Δ[A073631(n+1)])]`
-/

namespace A068410.P721221333996963898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068410.P721221333996963898

/-! ## A068410.P802928701452969810

`∑[A245092(Δ[A073631(n+1)])]`
-/

namespace A068410.P802928701452969810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068410.P802928701452969810

/-! ## A068410.P1029635124458974262

`∑[A052928(Δ[A073631(n+1)])]`
-/

namespace A068410.P1029635124458974262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068410.P1029635124458974262

/-!
# A068412: Composite numbers k such that phi(k) divides sigma(k) - 2*k.

The programs for A068412, there is no canonical definition to state claims against.
-/

/-! ## A068412.P7617741327505152358

`A100715(∑[A216326(n+1)²])`
-/

namespace A068412.P7617741327505152358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216326 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100715 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068412.P7617741327505152358

/-! ## A068412.P3312151796752421264

`A140494(or(A140504(n), A259834(n)))`
-/

namespace A068412.P3312151796752421264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140494 (Int.lor (A140504 n) (A259834 n)).toNat

end

end A068412.P3312151796752421264

/-!
# A068413: a(n) = number of partitions of 2^n.

The programs for A068413, there is no canonical definition to state claims against.
-/

/-! ## A068413.P7598387683015035689

`A000041(2^n)`
-/

namespace A068413.P7598387683015035689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 ^ n)

end

end A068413.P7598387683015035689

/-! ## A068413.P6234491031606368987

`A381013(2^n)`
-/

namespace A068413.P6234491031606368987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381013 (2 ^ n)

end

end A068413.P6234491031606368987

/-! ## A068413.P2061462092306775384

`∑[A000837(2^n)]`
-/

namespace A068413.P2061462092306775384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068413.P2061462092306775384

/-! ## A068413.P8079628947741647879

`∑[A086543(2^n)]`
-/

namespace A068413.P8079628947741647879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068413.P8079628947741647879

/-! ## A068413.P12253134480274776084

`∑[A238546(2^n)]`
-/

namespace A068413.P12253134480274776084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238546 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068413.P12253134480274776084

/-!
# A068414: Numbers k such that sigma(k) = 3k - 2*phi(k).

The programs for A068414, there is no canonical definition to state claims against.
-/

/-! ## A068414.P16616103335219293109

`eq[A000007(n), A297159(A028310(n))]`
-/

namespace A068414.P16616103335219293109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297159 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068414.P16616103335219293109

/-! ## A068414.P11191475427197496958

`eq[A000038(n), A297159(A028310(n))]`
-/

namespace A068414.P11191475427197496958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297159 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068414.P11191475427197496958

/-!
# A068415: Engel expansion of log(Pi/2).

The programs for A068415, there is no canonical definition to state claims against.
-/

/-! ## A068415.P727575706405854464

`A076619(A383841(n))`
-/

namespace A068415.P727575706405854464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076619 (A383841 n).toNat

end

end A068415.P727575706405854464

/-!
# A068416: Number of partitionings of n X n checkerboard into two edgewise-connected sets.

The programs for A068416, there is no canonical definition to state claims against.
-/

/-! ## A068416.P366902483378855973

`A166755(n+1)/2`
-/

namespace A068416.P366902483378855973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166755 (n + 1) : ℚ) / 2

end

end A068416.P366902483378855973

/-! ## A068416.P5173968665543861380

`A378932(∑[4*n]+1)`
-/

namespace A068416.P5173968665543861380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378932 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A068416.P5173968665543861380

/-!
# A068419: Odd prime values of sigma(k) - phi(k) taking k in increasing order.

The programs for A068419, the canonical program `A068419.P7642446315281868870` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068419 has offset 1).

The definition of A068419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068419.P7642446315281868870

`p?[A226586(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068419

/-- `p?[A226586(n+1)]` -/
def P7642446315281868870.Spec : Prop :=
  ∀ n, P7642446315281868870.a n = A068419 (n + 1)

theorem P7642446315281868870.correct : P7642446315281868870.Spec := by
  intro n
  simp only [A068419, Nat.add_sub_cancel]

end A068419

/-! ## A068419.P14581031622160645159

`p?[A152677(n+3)-A000010(A028982(n+3))]`
-/

namespace A068419.P14581031622160645159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152677 (n + 3) - A000010 (A028982 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068419.P14581031622160645159

namespace A068419

/-- `p?[A152677(n+3)-A000010(A028982(n+3))]` -/
def P14581031622160645159.Spec : Prop :=
  ∀ n, P14581031622160645159.a n = A068419 (n + 1)

end A068419

/-! ## A068419.P1977768361868896311

`filter[A226586(n+1), A010051(#)]`
-/

namespace A068419.P1977768361868896311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068419.P1977768361868896311

namespace A068419

/-- `filter[A226586(n+1), A010051(#)]` -/
def P1977768361868896311.Spec : Prop :=
  ∀ n, P1977768361868896311.a n = A068419 (n + 1)

end A068419

/-! ## A068419.P10874602224072698107

`filter[A226586(n+1), A365716(#)]`
-/

namespace A068419.P10874602224072698107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A068419.P10874602224072698107

namespace A068419

/-- `filter[A226586(n+1), A365716(#)]` -/
def P10874602224072698107.Spec : Prop :=
  ∀ n, P10874602224072698107.a n = A068419 (n + 1)

end A068419

/-! ## A068419.P10688125253433269487

`filter[A226586(n+1), A379969(#)]`
-/

namespace A068419.P10688125253433269487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A068419.P10688125253433269487

namespace A068419

/-- `filter[A226586(n+1), A379969(#)]` -/
def P10688125253433269487.Spec : Prop :=
  ∀ n, P10688125253433269487.a n = A068419 (n + 1)

end A068419

/-! ## A068419.P9695522953777632918

`filter[A226586(n+1), A380467(#)]`
-/

namespace A068419.P9695522953777632918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A068419.P9695522953777632918

namespace A068419

/-- `filter[A226586(n+1), A380467(#)]` -/
def P9695522953777632918.Spec : Prop :=
  ∀ n, P9695522953777632918.a n = A068419 (n + 1)

end A068419

/-!
# A068420: Numbers n such that sigma(n) = 4*(n-phi(n)).

The programs for A068420, there is no canonical definition to state claims against.
-/

/-! ## A068420.P973572449087601199

`filter[A068422(n+1), A359379(#)]`
-/

namespace A068420.P973572449087601199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A068420.P973572449087601199

/-!
# A068422: Numbers k such that k-phi(k) divides sigma(k).

The programs for A068422, there is no canonical definition to state claims against.
-/

/-! ## A068422.P151220253380077775

`∪[A055163(n+1), Δ[A007504(n)]]`
-/

namespace A068422.P151220253380077775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068422.P151220253380077775

/-! ## A068422.P2892886434342121423

`∪[A055163(n+1), p?[A259153(n)]]`
-/

namespace A068422.P2892886434342121423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068422.P2892886434342121423

/-! ## A068422.P2822565310262187090

`∪[A000040(n+1), A055163(n+1)]`
-/

namespace A068422.P2822565310262187090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068422.P2822565310262187090

/-! ## A068422.P4361062620022604684

`∪[A055163(n+1), A085118(n+1)]`
-/

namespace A068422.P4361062620022604684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068422.P4361062620022604684

/-! ## A068422.P12287894005417020664

`∪[A055164(n+1), A085118(n+1)]`
-/

namespace A068422.P12287894005417020664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068422.P12287894005417020664

/-! ## A068422.P16538495060710456537

`∪[A116974(n+1), A055163(n+1)]`
-/

namespace A068422.P16538495060710456537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068422.P16538495060710456537

/-! ## A068422.P12495970800702452861

`∪[∑[A054541(n+1)], A055163(n+1)]`
-/

namespace A068422.P12495970800702452861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A068422.P12495970800702452861

/-! ## A068422.P5048407650952681790

`∪[∑{d}[n+1, A007444(#)], A055163(n+1)]`
-/

namespace A068422.P5048407650952681790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007444 d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A068422.P5048407650952681790

/-!
# A068423: Numbers k such that sigma(k) = 2*phi(k+1).

The programs for A068423, there is no canonical definition to state claims against.
-/

/-! ## A068423.P12560375132186204051

`eq[2*A000010(n+2), A000203(n+1)]+1`
-/

namespace A068423.P12560375132186204051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068423.P12560375132186204051

/-! ## A068423.P13865465278381500850

`eq[2, A000203(n+2)/A000010(n+3)]+2`
-/

namespace A068423.P13865465278381500850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (A000010 (n + 3) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 2

end

end A068423.P13865465278381500850

/-! ## A068423.P14885438126977850074

`eq[A004280(A039649(n+1)), A039653(n)]`
-/

namespace A068423.P14885438126977850074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A039649 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068423.P14885438126977850074

/-! ## A068423.P6562074661210200544

`eq[A005408(A109606(n+1)), A039653(n)]`
-/

namespace A068423.P6562074661210200544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A109606 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068423.P6562074661210200544

/-! ## A068423.P5372369855682563446

`eq[A002246(n+1), A107505(n)]`
-/

namespace A068423.P5372369855682563446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068423.P5372369855682563446

/-!
# A068424: Triangle of falling factorials, read by rows: T(n, k) = n*(n-1)*...*(n-k+1), n > 0, 1 <= k <= n.

The programs for A068424, the canonical program `A068424.P39123959342676534` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068424 has offset 1).

The definition of A068424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068424.P39123959342676534

`(col(n)+1)!*C(row(n)+1, col(n)+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068424

/-- `(col(n)+1)!*C(row(n)+1, col(n)+1)` -/
def P39123959342676534.Spec : Prop :=
  ∀ n, (P39123959342676534.a n : ℤ) = A068424 (n + 1)

theorem P39123959342676534.correct : P39123959342676534.Spec := by
  intro n
  simp only [A068424, Nat.add_sub_cancel]

end A068424

/-! ## A068424.P14506890186116757952

`(row(n)+1)*(T(T(n-1,k-1), 2*T(n-1,k-1))+T(n-1,k-1))` with `a(0)=1`
-/

namespace A068424.P14506890186116757952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpLeft a n : ℤ) + SequenceMachineLib.triUpLeft a n)

end

end A068424.P14506890186116757952

namespace A068424

/-- `(row(n)+1)*(T(T(n-1,k-1), 2*T(n-1,k-1))+T(n-1,k-1))` -/
def P14506890186116757952.Spec : Prop :=
  ∀ n, (P14506890186116757952.a n : ℤ) = A068424 (n + 1)

end A068424

/-! ## A068424.P9562715272689855262

`row(n)!/(row(n)-col(n))!+T(n-1,k)-(T(n-1,k-1)-2*T(n-1,k-1))*col(n)` with `a(0)=1`
-/

namespace A068424.P9562715272689855262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) + (SequenceMachineLib.triUp a n - (SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triCol n : ℚ))

end

end A068424.P9562715272689855262

namespace A068424

/-- `row(n)!/(row(n)-col(n))!+T(n-1,k)-(T(n-1,k-1)-2*T(n-1,k-1))*col(n)` -/
def P9562715272689855262.Spec : Prop :=
  ∀ n, P9562715272689855262.a n = (A068424 (n + 1) : ℚ)

end A068424

/-! ## A068424.P1175228759882899862

`A008279(comp[∑[n]])`
-/

namespace A068424.P1175228759882899862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A068424.P1175228759882899862

namespace A068424

/-- `A008279(comp[∑[n]])` -/
def P1175228759882899862.Spec : Prop :=
  ∀ n, P1175228759882899862.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P13850996855913501148

`A121757(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A068424.P13850996855913501148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121757 n + SequenceMachineLib.triUp a n

end

end A068424.P13850996855913501148

namespace A068424

/-- `A121757(n)+T(n-1,k)` -/
def P13850996855913501148.Spec : Prop :=
  ∀ n, P13850996855913501148.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P11822545974544333532

`∑[char[∑[n]]]*A008279(n)`
-/

namespace A068424.P11822545974544333532
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008279 n

end

end A068424.P11822545974544333532

namespace A068424

/-- `∑[char[∑[n]]]*A008279(n)` -/
def P11822545974544333532.Spec : Prop :=
  ∀ n, P11822545974544333532.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P12289186222147133803

`col(n)!*A003506(n+1)`
-/

namespace A068424.P12289186222147133803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * A003506 (n + 1)

end

end A068424.P12289186222147133803

namespace A068424

/-- `col(n)!*A003506(n+1)` -/
def P12289186222147133803.Spec : Prop :=
  ∀ n, P12289186222147133803.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P13772130629057733356

`A074909(n)*A137948(n)`
-/

namespace A068424.P13772130629057733356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A137948 n

end

end A068424.P13772130629057733356

namespace A068424

/-- `A074909(n)*A137948(n)` -/
def P13772130629057733356.Spec : Prop :=
  ∀ n, P13772130629057733356.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P327255767186379693

`A003506(n+1)*A233543(n)`
-/

namespace A068424.P327255767186379693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A233543 n

end

end A068424.P327255767186379693

namespace A068424

/-- `A003506(n+1)*A233543(n)` -/
def P327255767186379693.Spec : Prop :=
  ∀ n, P327255767186379693.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P2370660776858282141

`A135278(n)*A166350(n+1)`
-/

namespace A068424.P2370660776858282141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A166350 (n + 1)

end

end A068424.P2370660776858282141

namespace A068424

/-- `A135278(n)*A166350(n+1)` -/
def P2370660776858282141.Spec : Prop :=
  ∀ n, P2370660776858282141.a n = A068424 (n + 1)

theorem P2370660776858282141.correct : P2370660776858282141.Spec := by
  intro n
  simp only [A068424, Nat.add_sub_cancel, A068424.P2370660776858282141.a, A068424.P39123959342676534.a, A135278, A135278.P15294612270063548765.a, A166350, A166350.P6799128383526673935.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068424

/-! ## A068424.P7583041078083285131

`A004736(n+1)*A181511(n+1)`
-/

namespace A068424.P7583041078083285131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A181511 (n + 1)

end

end A068424.P7583041078083285131

namespace A068424

/-- `A004736(n+1)*A181511(n+1)` -/
def P7583041078083285131.Spec : Prop :=
  ∀ n, P7583041078083285131.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P15988209637273088336

`A074909(n+1)*A166350(n+1)`
-/

namespace A068424.P15988209637273088336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A166350 (n + 1)

end

end A068424.P15988209637273088336

namespace A068424

/-- `A074909(n+1)*A166350(n+1)` -/
def P15988209637273088336.Spec : Prop :=
  ∀ n, P15988209637273088336.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P13867161266948918002

`lcm(A181511(n+1), A181511(n+2))`
-/

namespace A068424.P13867161266948918002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A181511 (n + 1)) (A181511 (n + 2))

end

end A068424.P13867161266948918002

namespace A068424

/-- `lcm(A181511(n+1), A181511(n+2))` -/
def P13867161266948918002.Spec : Prop :=
  ∀ n, (P13867161266948918002.a n : ℤ) = A068424 (n + 1)

end A068424

/-! ## A068424.P2178802485168426491

`A007318(C(row(n)+2, 2)+col(n)+1)*A000142(col(n)+1)`
-/

namespace A068424.P2178802485168426491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + (SequenceMachineLib.triCol n + 1)) * A000142 (SequenceMachineLib.triCol n + 1)

end

end A068424.P2178802485168426491

namespace A068424

/-- `A007318(C(row(n)+2, 2)+col(n)+1)*A000142(col(n)+1)` -/
def P2178802485168426491.Spec : Prop :=
  ∀ n, P2178802485168426491.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P11645587582315189884

`A007318(A014132(n+1))*A233543(A014132(n+1))`
-/

namespace A068424.P11645587582315189884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat * A233543 (A014132 (n + 1)).toNat

end

end A068424.P11645587582315189884

namespace A068424

/-- `A007318(A014132(n+1))*A233543(A014132(n+1))` -/
def P11645587582315189884.Spec : Prop :=
  ∀ n, P11645587582315189884.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P8660441900982427894

`A094587(A099375(n)+n)`
-/

namespace A068424.P8660441900982427894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A099375 n + (n : ℤ)).toNat

end

end A068424.P8660441900982427894

namespace A068424

/-- `A094587(A099375(n)+n)` -/
def P8660441900982427894.Spec : Prop :=
  ∀ n, P8660441900982427894.a n = A068424 (n + 1)

end A068424

/-! ## A068424.P3092955301314981771

`A130493(n+1)/A119502(n)`
-/

namespace A068424.P3092955301314981771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A119502 n : ℚ)

end

end A068424.P3092955301314981771

namespace A068424

/-- `A130493(n+1)/A119502(n)` -/
def P3092955301314981771.Spec : Prop :=
  ∀ n, P3092955301314981771.a n = (A068424 (n + 1) : ℚ)

end A068424

/-! ## A068424.P5694622882226906761

`A199673(n+1)/A009998(n)`
-/

namespace A068424.P5694622882226906761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199673 (n + 1) : ℚ) / (A009998 n : ℚ)

end

end A068424.P5694622882226906761

namespace A068424

/-- `A199673(n+1)/A009998(n)` -/
def P5694622882226906761.Spec : Prop :=
  ∀ n, P5694622882226906761.a n = (A068424 (n + 1) : ℚ)

end A068424

/-! ## A068424.P5311876132729486760

`A156992(n+1)/A094587(n)`
-/

namespace A068424.P5311876132729486760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A094587 n : ℚ)

end

end A068424.P5311876132729486760

namespace A068424

/-- `A156992(n+1)/A094587(n)` -/
def P5311876132729486760.Spec : Prop :=
  ∀ n, P5311876132729486760.a n = (A068424 (n + 1) : ℚ)

end A068424

/-! ## A068424.P18293186179460321227

`A004736(n+1)/A003057(n+2)*A119741(n+2)`
-/

namespace A068424.P18293186179460321227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A003057 (n + 2) : ℚ) * (A119741 (n + 2) : ℚ)

end

end A068424.P18293186179460321227

namespace A068424

/-- `A004736(n+1)/A003057(n+2)*A119741(n+2)` -/
def P18293186179460321227.Spec : Prop :=
  ∀ n, P18293186179460321227.a n = (A068424 (n + 1) : ℚ)

end A068424

/-!
# A068425: a(n) = floor(2^n*Pi).

The programs for A068425, there is no canonical definition to state claims against.
-/

/-! ## A068425.P8658094141565287936

`floor(2^(n-1)*π)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068425.P8658094141565287936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) * Real.pi⌋

end

end A068425.P8658094141565287936

/-! ## A068425.P12600983872332150650

`floor(2^n*acos(0))`
-/

namespace A068425.P12600983872332150650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) * Real.arccos (0 : ℝ)⌋

end

end A068425.P12600983872332150650

/-! ## A068425.P5680860702640960154

`floor(2^n*asin(1))`
-/

namespace A068425.P5680860702640960154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) * Real.arcsin (1 : ℝ)⌋

end

end A068425.P5680860702640960154

/-! ## A068425.P6766360160455454575

`∑[round(2^n*atan(1))]`
-/

namespace A068425.P6766360160455454575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) * Real.arctan (1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068425.P6766360160455454575

/-! ## A068425.P10814437681324653161

`∑[round(2^n*acot(1))]`
-/

namespace A068425.P10814437681324653161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) * SequenceMachineLib.acot (1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068425.P10814437681324653161

/-! ## A068425.P8914889190332808644

`∑[A155996(n)]`
-/

namespace A068425.P8914889190332808644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068425.P8914889190332808644

/-! ## A068425.P5476821834804558861

`A121349(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A068425.P5476821834804558861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A121349 (n - 1) + a (n - 1)

end

end A068425.P5476821834804558861

/-! ## A068425.P5540101019920090481

`A004601(n+2)+2*a(n-1)` with `a(0)=1`
-/

namespace A068425.P5540101019920090481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004601 (n + 2) + 2 * a (n - 1)

end

end A068425.P5540101019920090481

/-! ## A068425.P5956971337405859099

`A155996(n+1)-A004601(n+3)`
-/

namespace A068425.P5956971337405859099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 (n + 1) - A004601 (n + 3)

end

end A068425.P5956971337405859099

/-!
# A068426: Expansion of log(2) in base 2.

The programs for A068426, the canonical program `A068426.P10437059448932842721` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068426 has offset 0).

The definition of A068426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068426.P10437059448932842721

`A293364(n)-A293362(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068426

/-- `A293364(n)-A293362(n)` -/
def P10437059448932842721.Spec : Prop :=
  ∀ n, P10437059448932842721.a n = A068426 n

theorem P10437059448932842721.correct : P10437059448932842721.Spec := by
  intro n
  simp only [A068426]

end A068426

/-! ## A068426.P10741602931955080943

`C(A293364(n), A293363(n))`
-/

namespace A068426.P10741602931955080943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293364 n).toNat (A293363 n).toNat

end

end A068426.P10741602931955080943

namespace A068426

/-- `C(A293364(n), A293363(n))` -/
def P10741602931955080943.Spec : Prop :=
  ∀ n, (P10741602931955080943.a n : ℤ) = A068426 n

end A068426

/-! ## A068426.P3563877591566254034

`A069284(A293363(n)-A293364(n))`
-/

namespace A068426.P3563877591566254034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069284 ((A293363 n - A293364 n).toNat + 1)

end

end A068426.P3563877591566254034

namespace A068426

/-- `A069284(A293363(n)-A293364(n))` -/
def P3563877591566254034.Spec : Prop :=
  ∀ n, P3563877591566254034.a n = A068426 n

end A068426

/-! ## A068426.P4436784324983127446

`A210593(A293363(n)-A293364(n))`
-/

namespace A068426.P4436784324983127446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210593 (A293363 n - A293364 n).toNat

end

end A068426.P4436784324983127446

namespace A068426

/-- `A210593(A293363(n)-A293364(n))` -/
def P4436784324983127446.Spec : Prop :=
  ∀ n, P4436784324983127446.a n = A068426 n

end A068426

/-! ## A068426.P15002269029971355267

`A263353(A293363(n)-A293364(n))`
-/

namespace A068426.P15002269029971355267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263353 ((A293363 n - A293364 n).toNat + 1)

end

end A068426.P15002269029971355267

namespace A068426

/-- `A263353(A293363(n)-A293364(n))` -/
def P15002269029971355267.Spec : Prop :=
  ∀ n, P15002269029971355267.a n = A068426 n

end A068426

/-! ## A068426.P3364063515954743083

`A369884(A293363(n)-A293364(n))`
-/

namespace A068426.P3364063515954743083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369884 ((A293363 n - A293364 n).toNat + 1)

end

end A068426.P3364063515954743083

namespace A068426

/-- `A369884(A293363(n)-A293364(n))` -/
def P3364063515954743083.Spec : Prop :=
  ∀ n, P3364063515954743083.a n = A068426 n

end A068426

/-! ## A068426.P16949407989205453600

`A397377(A293363(n)-A293364(n))`
-/

namespace A068426.P16949407989205453600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397377 ((A293363 n - A293364 n).toNat + 1)

end

end A068426.P16949407989205453600

namespace A068426

/-- `A397377(A293363(n)-A293364(n))` -/
def P16949407989205453600.Spec : Prop :=
  ∀ n, P16949407989205453600.a n = A068426 n

end A068426

/-! ## A068426.P16435803679916219835

`A397478(A293363(n)-A293364(n))`
-/

namespace A068426.P16435803679916219835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397478 ((A293363 n - A293364 n).toNat + 1)

end

end A068426.P16435803679916219835

namespace A068426

/-- `A397478(A293363(n)-A293364(n))` -/
def P16435803679916219835.Spec : Prop :=
  ∀ n, P16435803679916219835.a n = A068426 n

end A068426

/-! ## A068426.P16496595274279248787

`A068462(A293363(n)-(A293364(n)-1))`
-/

namespace A068426.P16496595274279248787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068462 (A293363 n - (A293364 n - 1)).toNat

end

end A068426.P16496595274279248787

namespace A068426

/-- `A068462(A293363(n)-(A293364(n)-1))` -/
def P16496595274279248787.Spec : Prop :=
  ∀ n, P16496595274279248787.a n = A068426 n

end A068426

/-! ## A068426.P225440520246797818

`2-A293363(A293363(n)-A293364(n))`
-/

namespace A068426.P225440520246797818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A293363 (A293363 n - A293364 n).toNat

end

end A068426.P225440520246797818

namespace A068426

/-- `2-A293363(A293363(n)-A293364(n))` -/
def P225440520246797818.Spec : Prop :=
  ∀ n, P225440520246797818.a n = A068426 n

end A068426

/-! ## A068426.P14259300740506849566

`A068462(A293363(A293363(n)-A293364(n)))`
-/

namespace A068426.P14259300740506849566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068462 (A293363 (A293363 n - A293364 n).toNat).toNat

end

end A068426.P14259300740506849566

namespace A068426

/-- `A068462(A293363(A293363(n)-A293364(n)))` -/
def P14259300740506849566.Spec : Prop :=
  ∀ n, P14259300740506849566.a n = A068426 n

end A068426

/-! ## A068426.P17876761348025148051

`A293362(n+1)%2`
-/

namespace A068426.P17876761348025148051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293362 (n + 1)) 2

end

end A068426.P17876761348025148051

namespace A068426

/-- `A293362(n+1)%2` -/
def P17876761348025148051.Spec : Prop :=
  ∀ n, P17876761348025148051.a n = A068426 n

end A068426

/-! ## A068426.P8343816357910511941

`Δ[A293363(n)]-A293362(n)`
-/

namespace A068426.P8343816357910511941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A293362 n

end

end A068426.P8343816357910511941

namespace A068426

/-- `Δ[A293363(n)]-A293362(n)` -/
def P8343816357910511941.Spec : Prop :=
  ∀ n, P8343816357910511941.a n = A068426 n

end A068426

/-! ## A068426.P8015859618896263902

`round(A293364(n)/A293363(n+1))`
-/

namespace A068426.P8015859618896263902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293364 n : ℚ) / (A293363 (n + 1) : ℚ))

end

end A068426.P8015859618896263902

namespace A068426

/-- `round(A293364(n)/A293363(n+1))` -/
def P8015859618896263902.Spec : Prop :=
  ∀ n, P8015859618896263902.a n = A068426 n

end A068426

/-! ## A068426.P16402504492009324410

`A293362(n+1)-2*A293362(n)`
-/

namespace A068426.P16402504492009324410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293362 (n + 1) - 2 * A293362 n

end

end A068426.P16402504492009324410

namespace A068426

/-- `A293362(n+1)-2*A293362(n)` -/
def P16402504492009324410.Spec : Prop :=
  ∀ n, P16402504492009324410.a n = A068426 n

end A068426

/-! ## A068426.P16726641244349519698

`A293362(Δ[A293362(n)]-A293362(n))`
-/

namespace A068426.P16726641244349519698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293362 (f1 (n + 1) - f1 n - A293362 n).toNat

end

end A068426.P16726641244349519698

namespace A068426

/-- `A293362(Δ[A293362(n)]-A293362(n))` -/
def P16726641244349519698.Spec : Prop :=
  ∀ n, P16726641244349519698.a n = A068426 n

end A068426

/-! ## A068426.P14074434626787779443

`A293363(n+1)-(A293363(n)+A293362(n))`
-/

namespace A068426.P14074434626787779443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293363 (n + 1) - (A293363 n + A293362 n)

end

end A068426.P14074434626787779443

namespace A068426

/-- `A293363(n+1)-(A293363(n)+A293362(n))` -/
def P14074434626787779443.Spec : Prop :=
  ∀ n, P14074434626787779443.a n = A068426 n

end A068426

/-!
# A068427: Expansion of zeta(2) in base 2.

The programs for A068427, there is no canonical definition to state claims against.
-/

/-! ## A068427.P10721437092228163693

`A054521(lcm(A055998(n+2), A283975(n)))`
-/

namespace A068427.P10721437092228163693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (Int.lcm (A055998 (n + 2)) (A283975 n))

end

end A068427.P10721437092228163693

/-! ## A068427.P5374537780493951660

`A141743(A193749(n)*A262124(n))`
-/

namespace A068427.P5374537780493951660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141743 (A193749 n * A262124 n).toNat

end

end A068427.P5374537780493951660

/-! ## A068427.P13033431903127727517

`A323239(A050031(∑[A051119(n+1)]))`
-/

namespace A068427.P13033431903127727517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A050031 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A068427.P13033431903127727517

/-! ## A068427.P6303745775437354035

`A267708(or(A000096(n), A117349(n+1)))`
-/

namespace A068427.P6303745775437354035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 (Int.lor (A000096 n) (A117349 (n + 1))).toNat

end

end A068427.P6303745775437354035

/-! ## A068427.P6005688191946420196

`A030308(A030308(n)+∑[A206926(2*(n+1))])`
-/

namespace A068427.P6005688191946420196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206926 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A030308 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068427.P6005688191946420196

/-!
# A068428: Expansion of zeta(3) in base 2.

The programs for A068428, there is no canonical definition to state claims against.
-/

/-! ## A068428.P15159810242058683677

`and(A001222(A336414(n+3)), A096270(2*n+3))`
-/

namespace A068428.P15159810242058683677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A336414 (n + 3)).toNat) (A096270 (2 * n + 3))

end

end A068428.P15159810242058683677

/-! ## A068428.P18151922992943177010

`A250299(A358991(3*n+2)+A096777(3*(n+1)))`
-/

namespace A068428.P18151922992943177010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250299 (A358991 (3 * n + 2) + A096777 (3 * (n + 1))).toNat

end

end A068428.P18151922992943177010

/-! ## A068428.P17677417693093537741

`A159638(Δ[A141214(n+8)])`
-/

namespace A068428.P17677417693093537741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159638 (f1 (n + 1) - f1 n).toNat

end

end A068428.P17677417693093537741

/-! ## A068428.P10558276978494379685

`A010054(A257654(n)*A280604(n+4))`
-/

namespace A068428.P10558276978494379685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A257654 n * A280604 (n + 4)).toNat

end

end A068428.P10558276978494379685

/-! ## A068428.P14188712608882835968

`A010051(gcd(A000045(n), A005928(n+4)))`
-/

namespace A068428.P14188712608882835968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.gcd (A000045 n) (A005928 (n + 4)))

end

end A068428.P14188712608882835968

/-!
# A068429: Expansion of log(Pi) in base 2.

The programs for A068429, there is no canonical definition to state claims against.
-/

/-! ## A068429.P15476139365387820930

`A288173(6*n+16-A102609(4*n+1))`
-/

namespace A068429.P15476139365387820930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288173 ((6 * n + 16 : ℤ) - A102609 (4 * n + 1)).toNat

end

end A068429.P15476139365387820930

/-! ## A068429.P18161865455095513388

`A289034(A293402(3*n)+A003963(n+1))`
-/

namespace A068429.P18161865455095513388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A293402 (3 * n) + A003963 (n + 1)).toNat

end

end A068429.P18161865455095513388

/-! ## A068429.P11650604584435562173

`A179761(A284168(2*(n+2))+A284152(n+1))`
-/

namespace A068429.P11650604584435562173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179761 (A284168 (2 * (n + 2)) + A284152 (n + 1)).toNat

end

end A068429.P11650604584435562173

/-! ## A068429.P15655810943499808758

`A176137(A134243(2*n+5)+A022846(n+2))`
-/

namespace A068429.P15655810943499808758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 (A134243 (2 * n + 5) + A022846 (n + 2)).toNat

end

end A068429.P15655810943499808758

/-! ## A068429.P6590519840551992279

`A217586(A018145(n))`
-/

namespace A068429.P6590519840551992279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (A018145 n).toNat

end

end A068429.P6590519840551992279

/-!
# A068430: Expansion of zeta(4) in base 2.

The programs for A068430, there is no canonical definition to state claims against.
-/

/-! ## A068430.P14818440441979624997

`and(A132194(n+1), A270566(A334147(n+1)))`
-/

namespace A068430.P14818440441979624997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132194 (n + 1)) (A270566 (A334147 (n + 1)).toNat)

end

end A068430.P14818440441979624997

/-! ## A068430.P16019077074250698792

`A264739(A264751(n+1)+A179310(n+1))`
-/

namespace A068430.P16019077074250698792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (A264751 (n + 1) + A179310 (n + 1)).toNat

end

end A068430.P16019077074250698792

/-! ## A068430.P7238144205377491758

`A269134(A282445(n+5))%2`
-/

namespace A068430.P7238144205377491758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269134 (A282445 (n + 5)).toNat) 2

end

end A068430.P7238144205377491758

/-! ## A068430.P15515467122813410122

`and(A046956(n), A285621(n+1))`
-/

namespace A068430.P15515467122813410122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046956 n) (A285621 (n + 1))

end

end A068430.P15515467122813410122

/-! ## A068430.P13696115767599690736

`A082410(A297073(n+1)+A236854(n+1))`
-/

namespace A068430.P13696115767599690736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (A297073 (n + 1) + A236854 (n + 1)).toNat

end

end A068430.P13696115767599690736

/-!
# A068432: Expansion of golden ratio (1 + sqrt(5))/2 in base 2.

The programs for A068432, there is no canonical definition to state claims against.
-/

/-! ## A068432.P15853340597640839302

`A004555(n+2)+char[1]`
-/

namespace A068432.P15853340597640839302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A068432.P15853340597640839302

/-! ## A068432.P14235869245740168615

`A063524(n)+A004555(n+2)`
-/

namespace A068432.P14235869245740168615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A004555 (n + 2)

end

end A068432.P14235869245740168615

/-! ## A068432.P16398234630731204931

`A004555(A159075(n)+2+n)`
-/

namespace A068432.P16398234630731204931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (A159075 n + 2 + (n : ℤ)).toNat

end

end A068432.P16398234630731204931

/-! ## A068432.P2346134937329646608

`A004555(2-(A063524(n)-n))`
-/

namespace A068432.P2346134937329646608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (2 - (A063524 n - (n : ℤ))).toNat

end

end A068432.P2346134937329646608

/-! ## A068432.P6884879606169000260

`A004555(n*A157928(n)+2)`
-/

namespace A068432.P6884879606169000260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 ((n : ℤ) * A157928 n + 2).toNat

end

end A068432.P6884879606169000260

/-! ## A068432.P7414962144243206400

`A000007(n)+char[A004714(n+1)]`
-/

namespace A068432.P7414962144243206400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004714 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A068432.P7414962144243206400

/-! ## A068432.P14281805425351787070

`(A033322(n+1)-A004555(n+2))²`
-/

namespace A068432.P14281805425351787070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033322 (n + 1) - A004555 (n + 2)) ^ 2

end

end A068432.P14281805425351787070

/-! ## A068432.P9430709469051103191

`A048298(A175298(n))+A004555(n+2)`
-/

namespace A068432.P9430709469051103191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A175298 n).toNat + A004555 (n + 2)

end

end A068432.P9430709469051103191

/-! ## A068432.P4436749356893865072

`A010051(eq[1, A010051(n+1)])+A004555(n+2)`
-/

namespace A068432.P4436749356893865072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A004555 (n + 2)

end

end A068432.P4436749356893865072

/-! ## A068432.P13890781601515391095

`A010051(∑[n+1])+A004555(n+2)`
-/

namespace A068432.P13890781601515391095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f1 j) + A004555 (n + 2)

end

end A068432.P13890781601515391095

/-! ## A068432.P9768794620830714600

`(floor(2^n/ϕ)%2)^n`
-/

namespace A068432.P9768794620830714600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 ^ n : ℝ) / Real.goldenRatio⌋ 2 ^ n

end

end A068432.P9768794620830714600

/-! ## A068432.P14538888768610851914

`and(1, A293322(n)+A004277(n))`
-/

namespace A068432.P14538888768610851914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A293322 n + A004277 n)

end

end A068432.P14538888768610851914

/-! ## A068432.P13845860473907700603

`and(1, A293322(A004277(n)-n))`
-/

namespace A068432.P13845860473907700603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A293322 (A004277 n - (n : ℤ)).toNat)

end

end A068432.P13845860473907700603

/-! ## A068432.P12788510167622183247

`floor(ϕ*2^n)%2`
-/

namespace A068432.P12788510167622183247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (2 ^ n : ℝ)⌋ 2

end

end A068432.P12788510167622183247

/-! ## A068432.P3762089266551952568

`and(1, floor(ϕ*2^n))`
-/

namespace A068432.P3762089266551952568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.goldenRatio * (2 ^ n : ℝ)⌋

end

end A068432.P3762089266551952568

/-! ## A068432.P3487003355494306873

`(A293313(n)%2)²`
-/

namespace A068432.P3487003355494306873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293313 n) 2 ^ 2

end

end A068432.P3487003355494306873

/-! ## A068432.P16588296357404902240

`log2(gcd(2, A293314(n)))`
-/

namespace A068432.P16588296357404902240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A293314 n) : ℝ)

end

end A068432.P16588296357404902240

/-! ## A068432.P14219751052706131328

`A293314(n)-A376448(n)`
-/

namespace A068432.P14219751052706131328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - A376448 n

end

end A068432.P14219751052706131328

/-!
# A068433: Expansion of log(3) in base 2.

The programs for A068433, the canonical program `A068433.P3631299675756152043` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068433 has offset 1).

The definition of A068433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068433.P3631299675756152043

`floor(2^n*log(3))²%2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068433

/-- `floor(2^n*log(3))²%2` -/
def P3631299675756152043.Spec : Prop :=
  ∀ n, P3631299675756152043.a n = A068433 (n + 1)

theorem P3631299675756152043.correct : P3631299675756152043.Spec := by
  intro n
  simp only [A068433, Nat.add_sub_cancel]

end A068433

/-! ## A068433.P16026817682655235393

`A054521(A167487(n)+A143591(n+1))`
-/

namespace A068433.P16026817682655235393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A167487 n + A143591 (n + 1)).toNat

end

end A068433.P16026817682655235393

namespace A068433

/-- `A054521(A167487(n)+A143591(n+1))` -/
def P16026817682655235393.Spec : Prop :=
  ∀ n, P16026817682655235393.a n = A068433 (n + 1)

end A068433

/-! ## A068433.P14930315268656995786

`A283316(or(A108396(n), A341615(n+1)))`
-/

namespace A068433.P14930315268656995786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (Int.lor (A108396 n) (A341615 (n + 1))).toNat

end

end A068433.P14930315268656995786

namespace A068433

/-- `A283316(or(A108396(n), A341615(n+1)))` -/
def P14930315268656995786.Spec : Prop :=
  ∀ n, P14930315268656995786.a n = A068433 (n + 1)

end A068433

/-! ## A068433.P4411631037759344658

`A000035(A331904(n+1)+A223080(n+1))`
-/

namespace A068433.P4411631037759344658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A331904 (n + 1) + A223080 (n + 1)).toNat

end

end A068433.P4411631037759344658

namespace A068433

/-- `A000035(A331904(n+1)+A223080(n+1))` -/
def P4411631037759344658.Spec : Prop :=
  ∀ n, P4411631037759344658.a n = A068433 (n + 1)

end A068433

/-! ## A068433.P18320314019791059792

`A354097(A391488(n+1))`
-/

namespace A068433.P18320314019791059792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354097 (A391488 (n + 1)).toNat

end

end A068433.P18320314019791059792

namespace A068433

/-- `A354097(A391488(n+1))` -/
def P18320314019791059792.Spec : Prop :=
  ∀ n, P18320314019791059792.a n = A068433 (n + 1)

end A068433

/-!
# A068434: Expansion of log(5) in base 2.

The programs for A068434, the canonical program `A068434.P13581560543357549764` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068434 has offset 1).

The definition of A068434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068434.P13581560543357549764

`floor(2^n*log(5))%2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068434

/-- `floor(2^n*log(5))%2` -/
def P13581560543357549764.Spec : Prop :=
  ∀ n, P13581560543357549764.a n = A068434 (n + 1)

theorem P13581560543357549764.correct : P13581560543357549764.Spec := by
  intro n
  simp only [A068434, Nat.add_sub_cancel]

end A068434

/-!
# A068435: Consecutive prime powers without a prime between them.

The programs for A068435, there is no canonical definition to state claims against.
-/

/-! ## A068435.P2676185059481932701

`A371223(A370858(n+1)+2)`
-/

namespace A068435.P2676185059481932701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371223 (A370858 (n + 1) + 2).toNat

end

end A068435.P2676185059481932701

/-! ## A068435.P11289446358627921710

`A182715(A325981(n+1))*A346068(n+1)`
-/

namespace A068435.P11289446358627921710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182715 (A325981 (n + 1)).toNat * A346068 (n + 1)

end

end A068435.P11289446358627921710

/-!
# A068437: Expansion of Pi in base 12.

The programs for A068437, there is no canonical definition to state claims against.
-/

/-! ## A068437.P15668387179116273787

`floor(π*12^n)%12`
-/

namespace A068437.P15668387179116273787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.pi * (12 ^ n : ℝ)⌋ 12

end

end A068437.P15668387179116273787

/-!
# A068441: Numbers k such that the k-th digit is the same in e and Pi expansions in base 2.

The programs for A068441, there is no canonical definition to state claims against.
-/

/-! ## A068441.P12382007777224633072

`eq[0, A114915(n+1)]`
-/

namespace A068441.P12382007777224633072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068441.P12382007777224633072

/-! ## A068441.P1504439483812285873

`lt[A114915(n+2), 1]+1`
-/

namespace A068441.P1504439483812285873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114915 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068441.P1504439483812285873

/-! ## A068441.P18338240256656301183

`lt[A114915(A000027(n+1)), 1]`
-/

namespace A068441.P18338240256656301183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114915 (A000027 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A068441.P18338240256656301183

/-! ## A068441.P8684611401114793131

`A028310(lt[A114915(n+1), 1])`
-/

namespace A068441.P8684611401114793131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114915 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A068441.P8684611401114793131

/-! ## A068441.P7026341392854975004

`lt[A114915(n+1), A057427(n)]`
-/

namespace A068441.P7026341392854975004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068441.P7026341392854975004

/-! ## A068441.P9451786137175411204

`eq[A004593(n+3), A004601(n+3)]`
-/

namespace A068441.P9451786137175411204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068441.P9451786137175411204

/-!
# A068442: Numbers k such that the k-th digit is the same in e and Pi expansions in base 3.

The programs for A068442, there is no canonical definition to state claims against.
-/

/-! ## A068442.P4298777337337898662

`eq[A004594(n+1), A004602(n+3)]`
-/

namespace A068442.P4298777337337898662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004602 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068442.P4298777337337898662

/-!
# A068443: Triangular numbers which are the product of two primes.

The programs for A068443, the canonical program `A068443.P12532033995933004656` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068443 has offset 1).

The definition of A068443 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164977, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068443.P12532033995933004656

`A000217(A164977(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A068443

/-- `A000217(A164977(n+1))` -/
def P12532033995933004656.Spec : Prop :=
  ∀ n, P12532033995933004656.a n = A068443 (n + 1)

theorem P12532033995933004656.correct : P12532033995933004656.Spec := by
  intro n
  simp only [A068443, Nat.add_sub_cancel]

end A068443

/-! ## A068443.P1881969281156483868

`C(A164977(n+1)+1, 2)`
-/

namespace A068443.P1881969281156483868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A164977 (n + 1) + 1).toNat 2

end

end A068443.P1881969281156483868

namespace A068443

/-- `C(A164977(n+1)+1, 2)` -/
def P1881969281156483868.Spec : Prop :=
  ∀ n, (P1881969281156483868.a n : ℤ) = A068443 (n + 1)

end A068443

/-! ## A068443.P9604984826647451331

`∪[A129521(n+1), A156592(n+1)]`
-/

namespace A068443.P9604984826647451331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068443.P9604984826647451331

namespace A068443

/-- `∪[A129521(n+1), A156592(n+1)]` -/
def P9604984826647451331.Spec : Prop :=
  ∀ n, (P9604984826647451331.a n : ℤ) = A068443 (n + 1)

end A068443

/-! ## A068443.P3996459467111548055

`∩[A119663(n+1), A124000(n+1)]`
-/

namespace A068443.P3996459467111548055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068443.P3996459467111548055

namespace A068443

/-- `∩[A119663(n+1), A124000(n+1)]` -/
def P3996459467111548055.Spec : Prop :=
  ∀ n, (P3996459467111548055.a n : ℤ) = A068443 (n + 1)

end A068443

/-! ## A068443.P4357710313312532778

`∩[A124000(n+1), A147846(n+1)]`
-/

namespace A068443.P4357710313312532778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068443.P4357710313312532778

namespace A068443

/-- `∩[A124000(n+1), A147846(n+1)]` -/
def P4357710313312532778.Spec : Prop :=
  ∀ n, (P4357710313312532778.a n : ℤ) = A068443 (n + 1)

end A068443

/-! ## A068443.P15757784416562371325

`∩[A124000(n+1), A000217(n)]`
-/

namespace A068443.P15757784416562371325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068443.P15757784416562371325

namespace A068443

/-- `∩[A124000(n+1), A000217(n)]` -/
def P15757784416562371325.Spec : Prop :=
  ∀ n, (P15757784416562371325.a n : ℤ) = A068443 (n + 1)

end A068443

/-! ## A068443.P16091323275087324545

`∩[A061304(n+1), A124000(n+1)]`
-/

namespace A068443.P16091323275087324545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068443.P16091323275087324545

namespace A068443

/-- `∩[A061304(n+1), A124000(n+1)]` -/
def P16091323275087324545.Spec : Prop :=
  ∀ n, (P16091323275087324545.a n : ℤ) = A068443 (n + 1)

end A068443

/-! ## A068443.P6978475424933889554

`A000217(eq[2, A069904(n+1)]+1)`
-/

namespace A068443.P6978475424933889554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A068443.P6978475424933889554

namespace A068443

/-- `A000217(eq[2, A069904(n+1)]+1)` -/
def P6978475424933889554.Spec : Prop :=
  ∀ n, P6978475424933889554.a n = A068443 (n + 1)

end A068443

/-! ## A068443.P6491877402957702379

`∩[A117520(n+1), A124000(n+1)]`
-/

namespace A068443.P6491877402957702379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068443.P6491877402957702379

namespace A068443

/-- `∩[A117520(n+1), A124000(n+1)]` -/
def P6491877402957702379.Spec : Prop :=
  ∀ n, (P6491877402957702379.a n : ℤ) = A068443 (n + 1)

end A068443

/-! ## A068443.P4414458195846092998

`A161680(A164977(n+1)+1)`
-/

namespace A068443.P4414458195846092998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A164977 (n + 1) + 1).toNat

end

end A068443.P4414458195846092998

namespace A068443

/-- `A161680(A164977(n+1)+1)` -/
def P4414458195846092998.Spec : Prop :=
  ∀ n, P4414458195846092998.a n = A068443 (n + 1)

end A068443

/-! ## A068443.P5864058558309144185

`A179865(A164977(n+1)+1)`
-/

namespace A068443.P5864058558309144185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A164977 (n + 1) + 1).toNat

end

end A068443.P5864058558309144185

namespace A068443

/-- `A179865(A164977(n+1)+1)` -/
def P5864058558309144185.Spec : Prop :=
  ∀ n, P5864058558309144185.a n = A068443 (n + 1)

end A068443

/-! ## A068443.P1409904601076328309

`A253145(A164977(n+1)-1)`
-/

namespace A068443.P1409904601076328309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A164977 (n + 1) - 1).toNat

end

end A068443.P1409904601076328309

namespace A068443

/-- `A253145(A164977(n+1)-1)` -/
def P1409904601076328309.Spec : Prop :=
  ∀ n, P1409904601076328309.a n = A068443 (n + 1)

end A068443

/-! ## A068443.P3169586252387475658

`A253145(eq[2, A069904(n+1)])`
-/

namespace A068443.P3169586252387475658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068443.P3169586252387475658

namespace A068443

/-- `A253145(eq[2, A069904(n+1)])` -/
def P3169586252387475658.Spec : Prop :=
  ∀ n, P3169586252387475658.a n = A068443 (n + 1)

end A068443

/-! ## A068443.P4084882918595929361

`∩[A124000(n+1), A253145(n)]`
-/

namespace A068443.P4084882918595929361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068443.P4084882918595929361

namespace A068443

/-- `∩[A124000(n+1), A253145(n)]` -/
def P4084882918595929361.Spec : Prop :=
  ∀ n, (P4084882918595929361.a n : ℤ) = A068443 (n + 1)

end A068443

/-! ## A068443.P4448571343165104040

`A034856(A164977(n+1)-1)+2`
-/

namespace A068443.P4448571343165104040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A164977 (n + 1) - 1).toNat + 2

end

end A068443.P4448571343165104040

namespace A068443

/-- `A034856(A164977(n+1)-1)+2` -/
def P4448571343165104040.Spec : Prop :=
  ∀ n, P4448571343165104040.a n = A068443 (n + 1)

end A068443

/-! ## A068443.P1848659099078089563

`A000096(eq[2, A069904(n+1)])+1`
-/

namespace A068443.P1848659099078089563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A068443.P1848659099078089563

namespace A068443

/-- `A000096(eq[2, A069904(n+1)])+1` -/
def P1848659099078089563.Spec : Prop :=
  ∀ n, P1848659099078089563.a n = A068443 (n + 1)

end A068443

/-! ## A068443.P13818452603789049095

`A253145(eq[2, A063440(n+1)-2])`
-/

namespace A068443.P13818452603789049095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068443.P13818452603789049095

namespace A068443

/-- `A253145(eq[2, A063440(n+1)-2])` -/
def P13818452603789049095.Spec : Prop :=
  ∀ n, P13818452603789049095.a n = A068443 (n + 1)

end A068443

/-! ## A068443.P379973081649789089

`A253145(eq[2, A063440(n+1)/2])`
-/

namespace A068443.P379973081649789089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063440 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A068443.P379973081649789089

namespace A068443

/-- `A253145(eq[2, A063440(n+1)/2])` -/
def P379973081649789089.Spec : Prop :=
  ∀ n, P379973081649789089.a n = A068443 (n + 1)

end A068443

/-! ## A068443.P1180150088781220617

`∩[A124000(n+1), A186783(n+1)]`
-/

namespace A068443.P1180150088781220617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068443.P1180150088781220617

namespace A068443

/-- `∩[A124000(n+1), A186783(n+1)]` -/
def P1180150088781220617.Spec : Prop :=
  ∀ n, (P1180150088781220617.a n : ℤ) = A068443 (n + 1)

end A068443

/-! ## A068443.P12906784044123288124

`∩[A124000(n+1), A350295(n+3)]`
-/

namespace A068443.P12906784044123288124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068443.P12906784044123288124

namespace A068443

/-- `∩[A124000(n+1), A350295(n+3)]` -/
def P12906784044123288124.Spec : Prop :=
  ∀ n, (P12906784044123288124.a n : ℤ) = A068443 (n + 1)

end A068443

/-!
# A068444: a(0) = 10; for n>0, a(n) = n*a(n-1)-n-2.

The programs for A068444, the canonical program `A068444.P8905716152117481928` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068444 has offset 0).

The definition of A068444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)-n-2` (program `A068444.P8905716152117481928`, by `A068444.P8905716152117481928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068444.P8905716152117481928

`n*a(n-1)-n-2` with `a(0)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068444

/-- `n*a(n-1)-n-2` -/
def P8905716152117481928.Spec : Prop :=
  ∀ n, P8905716152117481928.a n = A068444 n

theorem P8905716152117481928.correct : P8905716152117481928.Spec := by
  intro n
  simp only [A068444]

end A068444

/-! ## A068444.P1333551356616376578

`n*(a(n-1)-1)-2` with `a(0)=10`
-/

namespace A068444.P1333551356616376578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (n : ℤ) * (a (n - 1) - 1) - 2

end

end A068444.P1333551356616376578

namespace A068444

/-- `n*(a(n-1)-1)-2` -/
def P1333551356616376578.Spec : Prop :=
  ∀ n, P1333551356616376578.a n = A068444 n

theorem P1333551356616376578.correct : P1333551356616376578.Spec := by
  intro n
  simp only [A068444, Nat.add_sub_cancel, A068444.P1333551356616376578.a, A068444.P8905716152117481928.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A068444

/-! ## A068444.P3028266772948285426

`lcm(n, a(n-1))-(n+2)` with `a(0)=10`
-/

namespace A068444.P3028266772948285426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (Int.lcm (n : ℤ) (a (n - 1)) : ℤ) - (n + 2 : ℤ)

end

end A068444.P3028266772948285426

namespace A068444

/-- `lcm(n, a(n-1))-(n+2)` -/
def P3028266772948285426.Spec : Prop :=
  ∀ n, P3028266772948285426.a n = A068444 n

end A068444

/-! ## A068444.P16487301993412599727

`a(n-1)/cot(atan(n))-(n+2)` with `a(0)=10`
-/

namespace A068444.P16487301993412599727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (n : ℝ)) - (n + 2 : ℝ)

end

end A068444.P16487301993412599727

namespace A068444

/-- `a(n-1)/cot(atan(n))-(n+2)` -/
def P16487301993412599727.Spec : Prop :=
  ∀ n, P16487301993412599727.a n = (A068444 n : ℝ)

end A068444

/-! ## A068444.P14625278920929146067

`a(n-1)/n^-1-(n+2)` with `a(0)=10`
-/

namespace A068444.P14625278920929146067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (n + 2 : ℚ)

end

end A068444.P14625278920929146067

namespace A068444

/-- `a(n-1)/n^-1-(n+2)` -/
def P14625278920929146067.Spec : Prop :=
  ∀ n, P14625278920929146067.a n = (A068444 n : ℚ)

end A068444

/-! ## A068444.P10066648292448577042

`n*a(A258071(n))-(n+2)` with `a(0)=10`
-/

namespace A068444.P10066648292448577042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (n : ℤ) * a (A258071 n).toNat - (n + 2 : ℤ)

end

end A068444.P10066648292448577042

namespace A068444

/-- `n*a(A258071(n))-(n+2)` -/
def P10066648292448577042.Spec : Prop :=
  ∀ n, P10066648292448577042.a n = A068444 n

end A068444

/-! ## A068444.P5989622034092137779

`lcm(n, a(A023443(n)))-n-2` with `a(0)=10`
-/

namespace A068444.P5989622034092137779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (Int.lcm (n : ℤ) (a (A023443 n).toNat) : ℤ) - (n : ℤ) - 2

end

end A068444.P5989622034092137779

namespace A068444

/-- `lcm(n, a(A023443(n)))-n-2` -/
def P5989622034092137779.Spec : Prop :=
  ∀ n, P5989622034092137779.a n = A068444 n

end A068444

/-!
# A068449: Factorial expansion of log(Pi/2) = sum n>0 a(n)/n!.

The programs for A068449, the canonical program `A068449.P3233074658566794342` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068449 has offset 1).

The definition of A068449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068449.P3233074658566794342

`floor((n+1)!*log(π/2))-(n+1)*floor(n!*log(π/2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068449

/-- `floor((n+1)!*log(π/2))-(n+1)*floor(n!*log(π/2))` -/
def P3233074658566794342.Spec : Prop :=
  ∀ n, P3233074658566794342.a n = A068449 (n + 1)

theorem P3233074658566794342.correct : P3233074658566794342.Spec := by
  intro n
  simp only [A068449, Nat.add_sub_cancel]

end A068449

/-!
# A068451: Factorial expansion of the golden ratio (1+sqrt(5))/2 = Sum_{n>=1} a(n)/n!.

The programs for A068451, there is no canonical definition to state claims against.
-/

/-! ## A068451.P12887036282416106166

`n-A322119(n+1)`
-/

namespace A068451.P12887036282416106166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A322119 (n + 1)

end

end A068451.P12887036282416106166

/-! ## A068451.P15686268689317560531

`abs(A322119(n+1)+A001489(n))`
-/

namespace A068451.P15686268689317560531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322119 (n + 1) + A001489 n|

end

end A068451.P15686268689317560531

/-! ## A068451.P12673250270426138617

`gcd(A322119(n+1)+A001489(n), A169585(n))`
-/

namespace A068451.P12673250270426138617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322119 (n + 1) + A001489 n) (A169585 n)

end

end A068451.P12673250270426138617

/-! ## A068451.P4505697360892976994

`lcm(A322119(n+1)+A001489(n), A020985(n))`
-/

namespace A068451.P4505697360892976994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A322119 (n + 1) + A001489 n) (A020985 n)

end

end A068451.P4505697360892976994

/-! ## A068451.P818474054215410765

`(A322119(n+1)+A001489(n))*A190611(gcd(n, n+1))`
-/

namespace A068451.P818474054215410765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322119 (n + 1) + A001489 n) * A190611 (Nat.gcd n (n + 1))

end

end A068451.P818474054215410765

/-! ## A068451.P7984532356856915297

`and(-(A322119(n+1)+A001489(n)), A107464(n))`
-/

namespace A068451.P7984532356856915297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(A322119 (n + 1) + A001489 n)) (A107464 n)

end

end A068451.P7984532356856915297

/-!
# A068453: Factorial expansion of sqrt(e) = Sum_{n>=1} a(n)/n!.

The programs for A068453, there is no canonical definition to state claims against.
-/

/-! ## A068453.P14549465149831240933

`floor(sqrt(e)*(n+1)!)%(round(1/acot(n))+1)`
-/

namespace A068453.P14549465149831240933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (Real.exp 1) * (Nat.factorial (n + 1) : ℝ)⌋ (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 1)

end

end A068453.P14549465149831240933

/-! ## A068453.P5574874028470215891

`A030799(n+1)%A020725(A028310(n))`
-/

namespace A068453.P5574874028470215891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030799 (n + 1)) (A020725 (A028310 n).toNat)

end

end A068453.P5574874028470215891

/-!
# A068455: Factorial expansion of zeta(6) = Sum_{n>=1} a(n)/n!.

The programs for A068455, there is no canonical definition to state claims against.
-/

/-! ## A068455.P5368209047335023413

`and(A127240(n), A127290(A127296(n)))`
-/

namespace A068455.P5368209047335023413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127240 n) (A127290 (A127296 n).toNat)

end

end A068455.P5368209047335023413

/-!
# A068464: Factorial expansion of Gamma(1/4) = Sum_{n>=1} a(n)/n! with largest possible a(n), and Gamma = Euler's gamma function.

The programs for A068464, there is no canonical definition to state claims against.
-/

/-! ## A068464.P8028706027438370757

`and(A085207(3*n+4), A219041(A284308(n+1)))`
-/

namespace A068464.P8028706027438370757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085207 (3 * n + 4)) (A219041 (A284308 (n + 1)).toNat)

end

end A068464.P8028706027438370757

/-!
# A068471: Number of n X n binary matrices with each 1 having at most 2 adjacent 1's.

The programs for A068471, there is no canonical definition to state claims against.
-/

/-! ## A068471.P8394393462262449193

`record[gcd(A114327(n+1), A283130(n+2))]`
-/

namespace A068471.P8394393462262449193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 (n + 1)) (A283130 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068471.P8394393462262449193

/-!
# A068474: Numbers k such that phi((prime(k)-1)/2) = sigma(k).

The programs for A068474, there is no canonical definition to state claims against.
-/

/-! ## A068474.P3202681382617895283

`A136090(n+1)+A000005(A306373(n+1))`
-/

namespace A068474.P3202681382617895283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136090 (n + 1) + A000005 (A306373 (n + 1)).toNat

end

end A068474.P3202681382617895283

/-!
# A068475: a(n) = Sum_{m=0..n} m*n^(m-1).

The programs for A068475, there is no canonical definition to state claims against.
-/

/-! ## A068475.P12666583322795496394

`∑{#}[n-1, (#+1)*n^#]`
-/

namespace A068475.P12666583322795496394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1) * n ^ k

end

end A068475.P12666583322795496394

/-! ## A068475.P11807513314259497698

`(n+1)*A023037(n)-A062805(n)`
-/

namespace A068475.P11807513314259497698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023037 n - A062805 n

end

end A068475.P11807513314259497698

/-! ## A068475.P1958056849083344737

`A062813(A028310(n))+A023037(n)`
-/

namespace A068475.P1958056849083344737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (A028310 n).toNat + A023037 n

end

end A068475.P1958056849083344737

/-! ## A068475.P3127102454135621414

`A031972(n)-A023811(A028310(n))`
-/

namespace A068475.P3127102454135621414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031972 n - A023811 (A028310 n).toNat

end

end A068475.P3127102454135621414

/-! ## A068475.P6761237502536060873

`A031973(n)-A058128(A028310(n))`
-/

namespace A068475.P6761237502536060873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031973 n - A058128 (A028310 n).toNat

end

end A068475.P6761237502536060873

/-! ## A068475.P8663187507584844301

`A023037(n)+A031972(n)-A062805(n)`
-/

namespace A068475.P8663187507584844301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 n + (A031972 n - A062805 n)

end

end A068475.P8663187507584844301

/-! ## A068475.P17956068331672358848

`(A189001(n)-A031973(n))/A028310(n)`
-/

namespace A068475.P17956068331672358848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189001 n - A031973 n : ℚ) / (A028310 n : ℚ)

end

end A068475.P17956068331672358848

/-!
# A068476: a(n) = Sum_{m=1..n} m*n^(m+(-1)^n).

The programs for A068476, the canonical program `A068476.P15701261497958452300` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068476 has offset 0).

The definition of A068476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068476.P15701261497958452300

`∑{#}[n-1, (#+1)*n^(#+1+(-1)^n)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068476

/-- `∑{#}[n-1, (#+1)*n^(#+1+(-1)^n)]` -/
def P15701261497958452300.Spec : Prop :=
  ∀ n, P15701261497958452300.a n = (A068476 n : ℚ)

end A068476

/-! ## A068476.P1294795820148553974

`A009531(n)²*A068475(n)`
-/

namespace A068476.P1294795820148553974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n ^ 2 * A068475 n

end

end A068476.P1294795820148553974

namespace A068476

/-- `A009531(n)²*A068475(n)` -/
def P1294795820148553974.Spec : Prop :=
  ∀ n, P1294795820148553974.a n = A068476 n

end A068476

/-! ## A068476.P12468634468724696288

`lcm(A009531(n²), A068475(n))`
-/

namespace A068476.P12468634468724696288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009531 (n ^ 2)) (A068475 n)

end

end A068476.P12468634468724696288

namespace A068476

/-- `lcm(A009531(n²), A068475(n))` -/
def P12468634468724696288.Spec : Prop :=
  ∀ n, (P12468634468724696288.a n : ℤ) = A068476 n

end A068476

/-! ## A068476.P10728032989126975867

`n*A068475(n)*n^A033999(n)`
-/

namespace A068476.P10728032989126975867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A068475 n : ℚ) * (n : ℚ) ^ (A033999 n : ℤ)

end

end A068476.P10728032989126975867

namespace A068476

/-- `n*A068475(n)*n^A033999(n)` -/
def P10728032989126975867.Spec : Prop :=
  ∀ n, P10728032989126975867.a n = (A068476 n : ℚ)

end A068476

/-! ## A068476.P11079754909078486513

`((n+1)*A023037(n)-A062805(n))*A009531(n)²`
-/

namespace A068476.P11079754909078486513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A023037 n - A062805 n) * A009531 n ^ 2

end

end A068476.P11079754909078486513

namespace A068476

/-- `((n+1)*A023037(n)-A062805(n))*A009531(n)²` -/
def P11079754909078486513.Spec : Prop :=
  ∀ n, P11079754909078486513.a n = A068476 n

end A068476

/-! ## A068476.P899154165477468326

`(A062813(A028310(n))+A023037(n))*A009531(n)²`
-/

namespace A068476.P899154165477468326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062813 (A028310 n).toNat + A023037 n) * A009531 n ^ 2

end

end A068476.P899154165477468326

namespace A068476

/-- `(A062813(A028310(n))+A023037(n))*A009531(n)²` -/
def P899154165477468326.Spec : Prop :=
  ∀ n, P899154165477468326.a n = A068476 n

end A068476

/-!
# A068477: a(n) is the digital sum of 1^n + 2^n + ... + n^n.

The programs for A068477, there is no canonical definition to state claims against.
-/

/-! ## A068477.P5390148897678645444

`∑{digits}[A215083(2*(C(n, 2)/2+n)), #]`
-/

namespace A068477.P5390148897678645444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215083 (SequenceMachineLib.roundAway (2 * ((Nat.choose n 2 : ℚ) / 2 + (n : ℚ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A068477.P5390148897678645444

/-! ## A068477.P11516508918804460512

`∑{digits}[A215078(2*(C(n, 2)/2+n)), #]`
-/

namespace A068477.P11516508918804460512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215078 (SequenceMachineLib.roundAway (2 * ((Nat.choose n 2 : ℚ) / 2 + (n : ℚ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A068477.P11516508918804460512

/-! ## A068477.P16610719407141132358

`∑{digits}[A215078(-Δ[n-C(n+2, 3)]), #]`
-/

namespace A068477.P16610719407141132358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (n + 2) 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215078 (-(f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A068477.P16610719407141132358

/-! ## A068477.P789008026933856106

`∑{digits}[A215078(A000096(n)), #]`
-/

namespace A068477.P789008026933856106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215078 (A000096 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A068477.P789008026933856106

/-! ## A068477.P8712348390782607222

`∑{digits}[A103438(A046092(n)), #]`
-/

namespace A068477.P8712348390782607222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (A046092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A068477.P8712348390782607222

/-!
# A068478: Engel expansion of Gamma(3/4) = Sum_{i>0} 1/Product_{n=1..i} 1/a(n).

The programs for A068478, there is no canonical definition to state claims against.
-/

/-! ## A068478.P6806441164707947161

`A000679(A360782(n))*A133269(n+1)`
-/

namespace A068478.P6806441164707947161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000679 (A360782 n).toNat * A133269 (n + 1)

end

end A068478.P6806441164707947161

/-!
# A068479: Engel expansion of Gamma(1/4)=3.62560990822190831193...

The programs for A068479, there is no canonical definition to state claims against.
-/

/-! ## A068479.P9002295260474925007

`A371130(abs(1-n)!+2)`
-/

namespace A068479.P9002295260474925007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371130 (Nat.factorial |1 - (n : ℤ)|.toNat + 2)

end

end A068479.P9002295260474925007

/-! ## A068479.P11176669573224732594

`A193673(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A068479.P11176669573224732594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A193673 (a (n - 1) ^ 2).toNat

end

end A068479.P11176669573224732594

/-!
# A068480: Numbers n such that gcd(n!-1,2^n+1)>1.

The programs for A068480, the canonical program `A068480.P17758720691650621398` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068480 has offset 1).

The definition of A068480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068480.P12715735368121096740

`record[A266072(A066160(n+1))]`
-/

namespace A068480.P12715735368121096740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 (A066160 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068480.P12715735368121096740

namespace A068480

/-- `record[A266072(A066160(n+1))]` -/
def P12715735368121096740.Spec : Prop :=
  ∀ n, P12715735368121096740.a n = A068480 (n + 1)

end A068480

/-! ## A068480.P16342692331561050130

`A004273(record[A093178(A066160(n+1))])`
-/

namespace A068480.P16342692331561050130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A066160 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068480.P16342692331561050130

namespace A068480

/-- `A004273(record[A093178(A066160(n+1))])` -/
def P16342692331561050130.Spec : Prop :=
  ∀ n, P16342692331561050130.a n = A068480 (n + 1)

end A068480

/-! ## A068480.P3477693150772620598

`∩[A053663(n+1), A186297(n+1)]`
-/

namespace A068480.P3477693150772620598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068480.P3477693150772620598

namespace A068480

/-- `∩[A053663(n+1), A186297(n+1)]` -/
def P3477693150772620598.Spec : Prop :=
  ∀ n, (P3477693150772620598.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P17758720691650621398

`eq[A109534(n), A394666(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A068480

/-- `eq[A109534(n), A394666(n+1)]` -/
def P17758720691650621398.Spec : Prop :=
  ∀ n, (P17758720691650621398.a n : ℤ) = A068480 (n + 1)

theorem P17758720691650621398.correct : P17758720691650621398.Spec := by
  intro n
  simp only [A068480, Nat.add_sub_cancel]

end A068480

/-! ## A068480.P11755018472698915572

`eq[A341744(n), A394666(n+1)]`
-/

namespace A068480.P11755018472698915572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P11755018472698915572

namespace A068480

/-- `eq[A341744(n), A394666(n+1)]` -/
def P11755018472698915572.Spec : Prop :=
  ∀ n, (P11755018472698915572.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P10384357848252240908

`eq[A057227(n+1), A394666(n+1)]`
-/

namespace A068480.P10384357848252240908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P10384357848252240908

namespace A068480

/-- `eq[A057227(n+1), A394666(n+1)]` -/
def P10384357848252240908.Spec : Prop :=
  ∀ n, (P10384357848252240908.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P2286054335535861056

`eq[A065883(n+1), A394666(n+1)]`
-/

namespace A068480.P2286054335535861056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P2286054335535861056

namespace A068480

/-- `eq[A065883(n+1), A394666(n+1)]` -/
def P2286054335535861056.Spec : Prop :=
  ∀ n, (P2286054335535861056.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P4662606519667001775

`eq[A186646(n+1), A394666(n+1)]`
-/

namespace A068480.P4662606519667001775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P4662606519667001775

namespace A068480

/-- `eq[A186646(n+1), A394666(n+1)]` -/
def P4662606519667001775.Spec : Prop :=
  ∀ n, (P4662606519667001775.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P1639223097168702148

`eq[A222259(n+1), A394666(n+1)]`
-/

namespace A068480.P1639223097168702148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P1639223097168702148

namespace A068480

/-- `eq[A222259(n+1), A394666(n+1)]` -/
def P1639223097168702148.Spec : Prop :=
  ∀ n, (P1639223097168702148.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P16179514116737583573

`eq[A232625(n+1), A394666(n+1)]`
-/

namespace A068480.P16179514116737583573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P16179514116737583573

namespace A068480

/-- `eq[A232625(n+1), A394666(n+1)]` -/
def P16179514116737583573.Spec : Prop :=
  ∀ n, (P16179514116737583573.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P9860433737079975606

`eq[A259445(n+1), A394666(n+1)]`
-/

namespace A068480.P9860433737079975606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P9860433737079975606

namespace A068480

/-- `eq[A259445(n+1), A394666(n+1)]` -/
def P9860433737079975606.Spec : Prop :=
  ∀ n, (P9860433737079975606.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P5209275668138517156

`eq[A371573(n+1), A394666(n+1)]`
-/

namespace A068480.P5209275668138517156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P5209275668138517156

namespace A068480

/-- `eq[A371573(n+1), A394666(n+1)]` -/
def P5209275668138517156.Spec : Prop :=
  ∀ n, (P5209275668138517156.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P4445662861921981199

`eq[A373188(n+1), A394666(n+1)]`
-/

namespace A068480.P4445662861921981199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P4445662861921981199

namespace A068480

/-- `eq[A373188(n+1), A394666(n+1)]` -/
def P4445662861921981199.Spec : Prop :=
  ∀ n, (P4445662861921981199.a n : ℤ) = A068480 (n + 1)

end A068480

/-! ## A068480.P11430562130036971206

`A004396(record[A019426(A066160(n+1))])`
-/

namespace A068480.P11430562130036971206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A066160 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068480.P11430562130036971206

namespace A068480

/-- `A004396(record[A019426(A066160(n+1))])` -/
def P11430562130036971206.Spec : Prop :=
  ∀ n, P11430562130036971206.a n = A068480 (n + 1)

end A068480

/-! ## A068480.P11597867853753569994

`record[A119688(8*n+2)/2]`
-/

namespace A068480.P11597867853753569994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119688 (8 * n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068480.P11597867853753569994

namespace A068480

/-- `record[A119688(8*n+2)/2]` -/
def P11597867853753569994.Spec : Prop :=
  ∀ n, P11597867853753569994.a n = (A068480 (n + 1) : ℚ)

end A068480

/-! ## A068480.P7581777045293704669

`record[A009001(A032742(A260611(n+1)))]`
-/

namespace A068480.P7581777045293704669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A032742 (A260611 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068480.P7581777045293704669

namespace A068480

/-- `record[A009001(A032742(A260611(n+1)))]` -/
def P7581777045293704669.Spec : Prop :=
  ∀ n, P7581777045293704669.a n = A068480 (n + 1)

end A068480

/-! ## A068480.P5651861190451944775

`record[A119688(A111284(n+1))-A123168(n+1)]`
-/

namespace A068480.P5651861190451944775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (A111284 (n + 1)).toNat - A123168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068480.P5651861190451944775

namespace A068480

/-- `record[A119688(A111284(n+1))-A123168(n+1)]` -/
def P5651861190451944775.Spec : Prop :=
  ∀ n, P5651861190451944775.a n = A068480 (n + 1)

end A068480

/-!
# A068481: Numbers k such that gcd(k!+1, 2^k+1) > 1.

The programs for A068481, there is no canonical definition to state claims against.
-/

/-! ## A068481.P3292917835046788388

`A204995(A067660(n+2))`
-/

namespace A068481.P3292917835046788388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (A067660 (n + 2)).toNat

end

end A068481.P3292917835046788388

/-! ## A068481.P10234729527226113703

`A177501(A067660(n+2))`
-/

namespace A068481.P10234729527226113703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (A067660 (n + 2)).toNat

end

end A068481.P10234729527226113703

/-! ## A068481.P15465367624264832996

`∩[A067241(n+1), A177501(A051073(n+3))]`
-/

namespace A068481.P15465367624264832996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (A051073 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068481.P15465367624264832996

/-! ## A068481.P8999312553451767415

`A083802(A067660(n+2))`
-/

namespace A068481.P8999312553451767415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083802 (A067660 (n + 2)).toNat

end

end A068481.P8999312553451767415

/-! ## A068481.P6108237833863198519

`∩[A053662(n+1), A264120(n+1)]`
-/

namespace A068481.P6108237833863198519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068481.P6108237833863198519

/-!
# A068482: Numbers n such that gcd(n!+1,2^n-1)>1.

The programs for A068482, there is no canonical definition to state claims against.
-/

/-! ## A068482.P4160507735552193915

`eq[1, A326034(A002033(2*n+1))]`
-/

namespace A068482.P4160507735552193915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326034 (A002033 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068482.P4160507735552193915

/-! ## A068482.P1533163602918005069

`eq[2, A171914(A046523(2*(n+1)))]`
-/

namespace A068482.P1533163602918005069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171914 (A046523 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068482.P1533163602918005069

/-! ## A068482.P13342441908624866673

`lt[A003621(∏{e}[2*(n+1), #+1]), A299485(2*(n+1))]`
-/

namespace A068482.P13342441908624866673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299485 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A068482.P13342441908624866673

/-! ## A068482.P9199558665720583673

`eq[A001511(A276076(n)), A268387(n+1)]`
-/

namespace A068482.P9199558665720583673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A276076 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068482.P9199558665720583673

/-! ## A068482.P12393434883283314256

`eq[A092674(A296121(2*(n+1))), A296121(2*(n+1))]`
-/

namespace A068482.P12393434883283314256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092674 (A296121 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296121 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068482.P12393434883283314256

/-!
# A068483: Numbers n such that gcd(n!-1,2^n-1)>1.

The programs for A068483, there is no canonical definition to state claims against.
-/

/-! ## A068483.P3120578575368054719

`lt[1, A214709(n+1)]+1`
-/

namespace A068483.P3120578575368054719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A068483.P3120578575368054719

/-! ## A068483.P742758530750092428

`eq[3, A214709(n+2)]+2`
-/

namespace A068483.P742758530750092428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214709 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A068483.P742758530750092428

/-! ## A068483.P4918330683854915888

`lt[1, A214709(A028310(n))]`
-/

namespace A068483.P4918330683854915888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214709 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068483.P4918330683854915888

/-! ## A068483.P9727581229684348830

`A020725(eq[3, A214709(n+1)])`
-/

namespace A068483.P9727581229684348830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068483.P9727581229684348830

/-!
# A068484: Numbers k that divide phi(k)^2 + sigma(k)^2.

The programs for A068484, there is no canonical definition to state claims against.
-/

/-! ## A068484.P4759091985814407950

`A333483(A073850(n)*A073851(n))`
-/

namespace A068484.P4759091985814407950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (A073850 n * A073851 n).toNat

end

end A068484.P4759091985814407950

/-! ## A068484.P15135599854823263237

`A239455(or(A000096(n), A323582(n)))`
-/

namespace A068484.P15135599854823263237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239455 (Int.lor (A000096 n) (A323582 n)).toNat

end

end A068484.P15135599854823263237

/-!
# A068485: One-sixtieth of the even leg of Pythagorean triangles whose other sides are both primes (other than 3, 5 or 13).

The programs for A068485, there is no canonical definition to state claims against.
-/

/-! ## A068485.P9138871818146265814

`A067755(n+3)/60`
-/

namespace A068485.P9138871818146265814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067755 (n + 3) : ℚ) / 60

end

end A068485.P9138871818146265814

/-! ## A068485.P17527568730445201563

`(A263951(n+3)-1)/120`
-/

namespace A068485.P17527568730445201563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263951 (n + 3) - 1 : ℚ) / 120

end

end A068485.P17527568730445201563

/-! ## A068485.P14128603542301994075

`A000217(A068501(n+3))/15`
-/

namespace A068485.P14128603542301994075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A068501 (n + 3)).toNat : ℚ) / 15

end

end A068485.P14128603542301994075

/-! ## A068485.P3650926132581843777

`A123596(A048161(n+3))/15`
-/

namespace A068485.P3650926132581843777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123596 (A048161 (n + 3)).toNat : ℚ) / 15

end

end A068485.P3650926132581843777

/-! ## A068485.P17073524237742361164

`∩[A002381(n+1), A088958(n+1)]`
-/

namespace A068485.P17073524237742361164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068485.P17073524237742361164

/-!
# A068486: Smallest prime equal to n^2 + m^2 with n >= m.

The programs for A068486, there is no canonical definition to state claims against.
-/

/-! ## A068486.P12622934895468935224

`(n+1)²+A069003(n+1)²`
-/

namespace A068486.P12622934895468935224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A069003 (n + 1) ^ 2

end

end A068486.P12622934895468935224

/-! ## A068486.P17636358026112878400

`A000290(n+1)+A000290(A069003(n+1))`
-/

namespace A068486.P17636358026112878400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + A000290 (A069003 (n + 1)).toNat

end

end A068486.P17636358026112878400

/-! ## A068486.P98637437528949654

`A002522(n+1)+A002522(A069003(n+1))-2`
-/

namespace A068486.P98637437528949654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) + (A002522 (A069003 (n + 1)).toNat - 2)

end

end A068486.P98637437528949654

/-! ## A068486.P9255186861369165968

`A281229(2*(n+1))/A152765(2*n)`
-/

namespace A068486.P9255186861369165968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281229 (2 * (n + 1)) : ℚ) / (A152765 (2 * n) : ℚ)

end

end A068486.P9255186861369165968

/-! ## A068486.P3108259212515719305

`A281229(2*(n+1))/(4*n+1-A004273(2*n))`
-/

namespace A068486.P3108259212515719305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281229 (2 * (n + 1)) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A068486.P3108259212515719305

/-! ## A068486.P2439780267162631614

`(n+1)²+A056898((n+1)²)²`
-/

namespace A068486.P2439780267162631614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A056898 ((n + 1) ^ 2) ^ 2

end

end A068486.P2439780267162631614

/-! ## A068486.P2522604760798238977

`A006530(A281229(2*(n+1)))`
-/

namespace A068486.P2522604760798238977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A281229 (2 * (n + 1))).toNat

end

end A068486.P2522604760798238977

/-! ## A068486.P6812619936481563983

`A056896((n+1)²)`
-/

namespace A068486.P6812619936481563983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056896 ((n + 1) ^ 2)

end

end A068486.P6812619936481563983

/-! ## A068486.P6985043945240719017

`A059843((n+1)²)`
-/

namespace A068486.P6985043945240719017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 ((n + 1) ^ 2)

end

end A068486.P6985043945240719017

/-! ## A068486.P2842138078990645926

`A275115((n+1)²)`
-/

namespace A068486.P2842138078990645926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275115 ((n + 1) ^ 2)

end

end A068486.P2842138078990645926

/-! ## A068486.P17919254772658157051

`A059844((n+1)²)+(n+1)²`
-/

namespace A068486.P17919254772658157051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059844 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A068486.P17919254772658157051

/-!
# A068487: Smallest prime equal to n^2 + m^2 with n<m.

The programs for A068487, there is no canonical definition to state claims against.
-/

/-! ## A068487.P15439176496321358479

`(n+1)²+A089489(n+1)²`
-/

namespace A068487.P15439176496321358479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A089489 (n + 1) ^ 2

end

end A068487.P15439176496321358479

/-! ## A068487.P16313437268177507650

`A089489(n+1)²+∑[A005408(n)]`
-/

namespace A068487.P16313437268177507650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089489 (n + 1) ^ 2 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068487.P16313437268177507650

/-! ## A068487.P7327543764322874096

`A005563(n)+A002522(A089489(n+1))`
-/

namespace A068487.P7327543764322874096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + A002522 (A089489 (n + 1)).toNat

end

end A068487.P7327543764322874096

/-! ## A068487.P6201674231438153198

`A000290(n+1)+A000290(A089489(n+1))`
-/

namespace A068487.P6201674231438153198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + A000290 (A089489 (n + 1)).toNat

end

end A068487.P6201674231438153198

/-! ## A068487.P1038819119000034879

`A005563(n)+A002522(A378898(n+1)+1+n)`
-/

namespace A068487.P1038819119000034879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + A002522 (A378898 (n + 1) + 1 + (n : ℤ)).toNat

end

end A068487.P1038819119000034879

/-! ## A068487.P13476432378048510729

`A059843(A005563(n)+A089489(n+1)²)`
-/

namespace A068487.P13476432378048510729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A005563 n + A089489 (n + 1) ^ 2).toNat

end

end A068487.P13476432378048510729

/-!
# A068488: m for which p(m) is the least prime dividing #p(n) + 1, i.e., primorial n-th prime augmented by 1 (A005234).

The programs for A068488, there is no canonical definition to state claims against.
-/

/-! ## A068488.P15788132766479369606

`A000720(A051342(n+1))`
-/

namespace A068488.P15788132766479369606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A051342 (n + 1)).toNat

end

end A068488.P15788132766479369606

/-! ## A068488.P7704888304450198326

`A061395(A051342(n+1)*(n+1)²)`
-/

namespace A068488.P7704888304450198326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A051342 (n + 1) * ((n + 1) ^ 2 : ℤ)).toNat

end

end A068488.P7704888304450198326

/-! ## A068488.P10139140664504884337

`A055396(A051342(n+1))%A245742(n+1)`
-/

namespace A068488.P10139140664504884337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A051342 (n + 1)).toNat) (A245742 (n + 1))

end

end A068488.P10139140664504884337

/-! ## A068488.P11108546142702339759

`A055396(A051342(n+1)%A254368(n+4))`
-/

namespace A068488.P11108546142702339759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A051342 (n + 1)) (A254368 (n + 4))).toNat

end

end A068488.P11108546142702339759

/-!
# A068489: m for which prime(m) is the least prime dividing #prime(n) - 1, i.e., one less than primorial n-th prime (A057588).

The programs for A068489, there is no canonical definition to state claims against.
-/

/-! ## A068489.P9699743089325151882

`A061395(A153077(n+2))/A329684(n)`
-/

namespace A068489.P9699743089325151882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061395 (A153077 (n + 2)).toNat : ℚ) / (A329684 n : ℚ)

end

end A068489.P9699743089325151882

/-!
# A068490: Fixed point of the morphism 1 -> 121, 2 -> 12, starting from 1.

The programs for A068490, there is no canonical definition to state claims against.
-/

/-! ## A068490.P14347590025807622708

`A214317(ceil(exp(n)))`
-/

namespace A068490.P14347590025807622708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214317 ⌈Real.exp (n : ℝ)⌉.toNat

end

end A068490.P14347590025807622708

/-!
# A068491: Expansion of Molien series for a certain 4-D group of order 96.

The programs for A068491, the canonical program `A068491.P13525769717976008257` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068491 has offset 0).

The definition of A068491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068491.P13525769717976008257

`floor((n^3+3*n²+(18+3*(-1)^n)*n+36)/36)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068491

/-- `floor((n^3+3*n²+(18+3*(-1)^n)*n+36)/36)` -/
def P13525769717976008257.Spec : Prop :=
  ∀ n, P13525769717976008257.a n = A068491 n

theorem P13525769717976008257.correct : P13525769717976008257.Spec := by
  intro n
  simp only [A068491]

end A068491

/-! ## A068491.P9931361733012774716

`ogf((1-x+x^2+x^4+x^6+x^8-x^9+x^10)/(1-2x+x^2-x^4+2x^5-2x^6+2x^7-x^8+x^10-2x^11+x^12))`
-/

namespace A068491.P9931361733012774716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 0, 1, 0, 1, 0, 1, -1, 1] [1, -2, 1, 0, -1, 2, -2, 2, -1, 0, 1, -2, 1] n

end

end A068491.P9931361733012774716

namespace A068491

/-- `ogf((1-x+x^2+x^4+x^6+x^8-x^9+x^10)/(1-2x+x^2-x^4+2x^5-2x^6+2x^7-x^8+x^10-2x^11+x^12))` -/
def P9931361733012774716.Spec : Prop :=
  ∀ n, P9931361733012774716.a n = A068491 n

end A068491

/-! ## A068491.P2386533507776034586

`∑[A000933(xor(1, n+4))]`
-/

namespace A068491.P2386533507776034586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (Nat.xor 1 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068491.P2386533507776034586

namespace A068491

/-- `∑[A000933(xor(1, n+4))]` -/
def P2386533507776034586.Spec : Prop :=
  ∀ n, P2386533507776034586.a n = A068491 n

end A068491

/-! ## A068491.P4178575297317424319

`∑[A000933(A004442(n+4))]`
-/

namespace A068491.P4178575297317424319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (A004442 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068491.P4178575297317424319

namespace A068491

/-- `∑[A000933(A004442(n+4))]` -/
def P4178575297317424319.Spec : Prop :=
  ∀ n, P4178575297317424319.a n = A068491 n

end A068491

/-! ## A068491.P8210588083743547405

`∑[A005044(A166519(n))]-A001971(n)`
-/

namespace A068491.P8210588083743547405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A166519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001971 n

end

end A068491.P8210588083743547405

namespace A068491

/-- `∑[A005044(A166519(n))]-A001971(n)` -/
def P8210588083743547405.Spec : Prop :=
  ∀ n, P8210588083743547405.a n = A068491 n

end A068491

/-! ## A068491.P4108869260482116352

`∑[A005044(A166519(n))-A059169(n+1)]`
-/

namespace A068491.P4108869260482116352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A166519 n).toNat - A059169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068491.P4108869260482116352

namespace A068491

/-- `∑[A005044(A166519(n))-A059169(n+1)]` -/
def P4108869260482116352.Spec : Prop :=
  ∀ n, P4108869260482116352.a n = A068491 n

end A068491

/-! ## A068491.P9925787517890070255

`∑[A319973(3*n)+A319973(n+1)]`
-/

namespace A068491.P9925787517890070255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319973 (3 * n) + A319973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068491.P9925787517890070255

namespace A068491

/-- `∑[A319973(3*n)+A319973(n+1)]` -/
def P9925787517890070255.Spec : Prop :=
  ∀ n, P9925787517890070255.a n = A068491 n

end A068491

/-! ## A068491.P9948501398567084007

`∑[A110654(A008742(A042948(n)))]`
-/

namespace A068491.P9948501398567084007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008742 (A042948 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068491.P9948501398567084007

namespace A068491

/-- `∑[A110654(A008742(A042948(n)))]` -/
def P9948501398567084007.Spec : Prop :=
  ∀ n, P9948501398567084007.a n = A068491 n

end A068491

/-! ## A068491.P14436604111191507581

`∑[A008615(A000124(A004442(n)))]`
-/

namespace A068491.P14436604111191507581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000124 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068491.P14436604111191507581

namespace A068491

/-- `∑[A008615(A000124(A004442(n)))]` -/
def P14436604111191507581.Spec : Prop :=
  ∀ n, P14436604111191507581.a n = A068491 n

end A068491

/-!
# A068492: Primes that remain prime after each digit is replaced by its square.

The programs for A068492, there is no canonical definition to state claims against.
-/

/-! ## A068492.P16741982709764707495

`p?[A048388(n+1)]`
-/

namespace A068492.P16741982709764707495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068492.P16741982709764707495

/-! ## A068492.P2813121099567498412

`∩[A004139(n+1), A048388(n+1)]`
-/

namespace A068492.P2813121099567498412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P2813121099567498412

/-! ## A068492.P8817152203835072483

`∩[A045319(n+1), A048388(n+1)]`
-/

namespace A068492.P8817152203835072483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P8817152203835072483

/-! ## A068492.P12630133238458319249

`∩[A045344(n+1), A048388(n+1)]`
-/

namespace A068492.P12630133238458319249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P12630133238458319249

/-! ## A068492.P12316306745418908479

`∩[A048388(n+1), A065091(n+1)]`
-/

namespace A068492.P12316306745418908479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P12316306745418908479

/-! ## A068492.P6284044416723752743

`∩[A048388(n+1), A065396(n+1)]`
-/

namespace A068492.P6284044416723752743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P6284044416723752743

/-! ## A068492.P12611275599458168676

`∩[A000040(n+1), A048388(n+1)]`
-/

namespace A068492.P12611275599458168676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P12611275599458168676

/-! ## A068492.P4400874308788183564

`∩[A006005(n+1), A048388(n+1)]`
-/

namespace A068492.P4400874308788183564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P4400874308788183564

/-! ## A068492.P14132028178175203260

`∩[A008578(n+1), A048388(n+1)]`
-/

namespace A068492.P14132028178175203260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P14132028178175203260

/-! ## A068492.P4592435561586559643

`∩[A033946(n+1), A048388(n+1)]`
-/

namespace A068492.P4592435561586559643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P4592435561586559643

/-! ## A068492.P9877438480421955818

`∩[A046022(n+1), A048388(n+1)]`
-/

namespace A068492.P9877438480421955818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P9877438480421955818

/-! ## A068492.P9647319326180718135

`∩[A048388(n+1), A051948(n+1)]`
-/

namespace A068492.P9647319326180718135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P9647319326180718135

/-! ## A068492.P1775600258436236119

`∩[A048388(n+1), A053813(n+1)]`
-/

namespace A068492.P1775600258436236119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P1775600258436236119

/-! ## A068492.P8475421949917247809

`∩[A048388(n+1), A066050(n+1)]`
-/

namespace A068492.P8475421949917247809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P8475421949917247809

/-! ## A068492.P3119003926110218516

`∩[A048388(n+1), A067126(n+1)]`
-/

namespace A068492.P3119003926110218516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P3119003926110218516

/-! ## A068492.P4781827562207435667

`∩[A048388(n+1), A093515(n+1)]`
-/

namespace A068492.P4781827562207435667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P4781827562207435667

/-! ## A068492.P6314317109731676527

`∩[A048388(n+1), A161346(n+1)]`
-/

namespace A068492.P6314317109731676527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P6314317109731676527

/-! ## A068492.P12422896214107388961

`∩[A048388(n+1), A162788(n+1)]`
-/

namespace A068492.P12422896214107388961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P12422896214107388961

/-! ## A068492.P10034343609347986778

`∩[A048388(n+1), A193339(n+1)]`
-/

namespace A068492.P10034343609347986778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P10034343609347986778

/-! ## A068492.P6418090163355699660

`∩[A048388(n+1), A062972(n+1)]`
-/

namespace A068492.P6418090163355699660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068492.P6418090163355699660

/-!
# A068493: Primes which are concatenations of positive squares.

The programs for A068493, there is no canonical definition to state claims against.
-/

/-! ## A068493.P13792964366532936780

`p?[A357474(n+1)]`
-/

namespace A068493.P13792964366532936780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068493.P13792964366532936780

/-! ## A068493.P4522074903753566071

`filter[A357474(n+1), A010051(#)]`
-/

namespace A068493.P4522074903753566071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068493.P4522074903753566071

/-! ## A068493.P257637415623305910

`filter[A357474(n+1), A171387(#)]`
-/

namespace A068493.P257637415623305910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A068493.P257637415623305910

/-! ## A068493.P7631256648801567199

`filter[A357474(n+1), A257531(#)]`
-/

namespace A068493.P7631256648801567199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A068493.P7631256648801567199

/-! ## A068493.P14690252805393238959

`filter[A357474(n+1), A323153(#)]`
-/

namespace A068493.P14690252805393238959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A068493.P14690252805393238959

/-!
# A068494: a(n) = n mod phi(n).

The programs for A068494, the canonical program `A068494.P776882635877311646` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068494 has offset 1).

The definition of A068494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)%A000010(n+1)` (program `A068494.P776882635877311646`, by `A068494.P776882635877311646.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068494.P776882635877311646

`(n+1)%A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068494

/-- `(n+1)%A000010(n+1)` -/
def P776882635877311646.Spec : Prop :=
  ∀ n, P776882635877311646.a n = A068494 (n + 1)

theorem P776882635877311646.correct : P776882635877311646.Spec := by
  intro n
  simp only [A068494, Nat.add_sub_cancel]

end A068494

/-! ## A068494.P11340348799333978031

`(1+n)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A068494.P11340348799333978031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + n : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A068494.P11340348799333978031

namespace A068494

/-- `(1+n)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P11340348799333978031.Spec : Prop :=
  ∀ n, P11340348799333978031.a n = A068494 (n + 1)

end A068494

/-! ## A068494.P15908730638512613592

`(1+n)%Δ[A002088(n)]`
-/

namespace A068494.P15908730638512613592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + n : ℤ) (f1 (n + 1) - f1 n)

end

end A068494.P15908730638512613592

namespace A068494

/-- `(1+n)%Δ[A002088(n)]` -/
def P15908730638512613592.Spec : Prop :=
  ∀ n, P15908730638512613592.a n = A068494 (n + 1)

end A068494

/-! ## A068494.P13658887978584534295

`(n+1)%Δ[A005728(n)]`
-/

namespace A068494.P13658887978584534295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A068494.P13658887978584534295

namespace A068494

/-- `(n+1)%Δ[A005728(n)]` -/
def P13658887978584534295.Spec : Prop :=
  ∀ n, P13658887978584534295.a n = A068494 (n + 1)

end A068494

/-! ## A068494.P6376389523003831872

`(n-log2(1/2))%A349137(2*n+1)`
-/

namespace A068494.P6376389523003831872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A349137 (2 * n + 1))

end

end A068494.P6376389523003831872

namespace A068494

/-- `(n-log2(1/2))%A349137(2*n+1)` -/
def P6376389523003831872.Spec : Prop :=
  ∀ n, P6376389523003831872.a n = A068494 (n + 1)

end A068494

/-! ## A068494.P9021792237109090233

`(2*n+1-n)%(A219428(n+1)-n)`
-/

namespace A068494.P9021792237109090233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) - (n : ℤ)) (A219428 (n + 1) - (n : ℤ))

end

end A068494.P9021792237109090233

namespace A068494

/-- `(2*n+1-n)%(A219428(n+1)-n)` -/
def P9021792237109090233.Spec : Prop :=
  ∀ n, P9021792237109090233.a n = A068494 (n + 1)

end A068494

/-! ## A068494.P17013258773459430241

`A003557(n+1)*A089631(n+1)`
-/

namespace A068494.P17013258773459430241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A089631 (n + 1)

end

end A068494.P17013258773459430241

namespace A068494

/-- `A003557(n+1)*A089631(n+1)` -/
def P17013258773459430241.Spec : Prop :=
  ∀ n, P17013258773459430241.a n = A068494 (n + 1)

end A068494

/-! ## A068494.P2441687376193900489

`A000027(A000027(n+1))%(A039649(n+1)-1)`
-/

namespace A068494.P2441687376193900489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A000027 (n + 1)).toNat) (A039649 (n + 1) - 1)

end

end A068494.P2441687376193900489

namespace A068494

/-- `A000027(A000027(n+1))%(A039649(n+1)-1)` -/
def P2441687376193900489.Spec : Prop :=
  ∀ n, P2441687376193900489.a n = A068494 (n + 1)

end A068494

/-! ## A068494.P9947490157615980750

`A000010(n+1)*A089631(n+1)/A173557(n+1)`
-/

namespace A068494.P9947490157615980750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A089631 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A068494.P9947490157615980750

namespace A068494

/-- `A000010(n+1)*A089631(n+1)/A173557(n+1)` -/
def P9947490157615980750.Spec : Prop :=
  ∀ n, P9947490157615980750.a n = (A068494 (n + 1) : ℚ)

end A068494

/-! ## A068494.P13819558768834797382

`A051953(n+1)%Δ[A049643(n)]`
-/

namespace A068494.P13819558768834797382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051953 (n + 1)) (f1 (n + 1) - f1 n)

end

end A068494.P13819558768834797382

namespace A068494

/-- `A051953(n+1)%Δ[A049643(n)]` -/
def P13819558768834797382.Spec : Prop :=
  ∀ n, P13819558768834797382.a n = A068494 (n + 1)

end A068494

/-! ## A068494.P4812134138850053364

`(n+1)%(n-∑{#}[n, 1-floor(1/gcd(n+1, #))]+1)`
-/

namespace A068494.P4812134138850053364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) ((n : ℤ) - ∑ k ∈ Finset.range (f1 n + 1), (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋) + 1)

end

end A068494.P4812134138850053364

namespace A068494

/-- `(n+1)%(n-∑{#}[n, 1-floor(1/gcd(n+1, #))]+1)` -/
def P4812134138850053364.Spec : Prop :=
  ∀ n, P4812134138850053364.a n = A068494 (n + 1)

end A068494

/-!
# A068496: a(n) = n! reduced mod 2^n.

The programs for A068496, the canonical program `A068496.P16008085768783862985` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068496 has offset 1).

The definition of A068496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068496.P16008085768783862985

`(n+1)!%(2^(n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068496

/-- `(n+1)!%(2^(n+1))` -/
def P16008085768783862985.Spec : Prop :=
  ∀ n, (P16008085768783862985.a n : ℤ) = A068496 (n + 1)

theorem P16008085768783862985.correct : P16008085768783862985.Spec := by
  intro n
  simp only [A068496, Nat.add_sub_cancel]

end A068496

/-! ## A068496.P972967011906671374

`and((n+1)!, ∑[2^n])`
-/

namespace A068496.P972967011906671374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (Nat.factorial (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068496.P972967011906671374

namespace A068496

/-- `and((n+1)!, ∑[2^n])` -/
def P972967011906671374.Spec : Prop :=
  ∀ n, (P972967011906671374.a n : ℤ) = A068496 (n + 1)

end A068496

/-! ## A068496.P8528650338437438610

`and(∑[2^n], ∏[n+1])`
-/

namespace A068496.P8528650338437438610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (∑ j ∈ Finset.range (n + 1), f1 j) (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A068496.P8528650338437438610

namespace A068496

/-- `and(∑[2^n], ∏[n+1])` -/
def P8528650338437438610.Spec : Prop :=
  ∀ n, (P8528650338437438610.a n : ℤ) = A068496 (n + 1)

end A068496

/-! ## A068496.P14816260582585065851

`A000027(and((n+1)!, A126646(n)))`
-/

namespace A068496.P14816260582585065851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.land (Nat.factorial (n + 1) : ℤ) (A126646 n)).toNat

end

end A068496.P14816260582585065851

namespace A068496

/-- `A000027(and((n+1)!, A126646(n)))` -/
def P14816260582585065851.Spec : Prop :=
  ∀ n, P14816260582585065851.a n = A068496 (n + 1)

end A068496

/-! ## A068496.P8523277919911348625

`∑{d}[2^n, and(#, (n+1)!)]`
-/

namespace A068496.P8523277919911348625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land d (Nat.factorial (n + 1))

end

end A068496.P8523277919911348625

namespace A068496

/-- `∑{d}[2^n, and(#, (n+1)!)]` -/
def P8523277919911348625.Spec : Prop :=
  ∀ n, (P8523277919911348625.a n : ℤ) = A068496 (n + 1)

end A068496

/-!
# A068497: Primes p such that 2*p+1 and 2*p-1 are composites.

The programs for A068497, the canonical program `A068497.P16499874508488581460` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068497 has offset 1).

The definition of A068497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068497.P3240545680936711744

`record[A020639(sqrt(A296304(n+2)))]`
-/

namespace A068497.P3240545680936711744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A296304 (n + 2) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068497.P3240545680936711744

namespace A068497

/-- `record[A020639(sqrt(A296304(n+2)))]` -/
def P3240545680936711744.Spec : Prop :=
  ∀ n, P3240545680936711744.a n = A068497 (n + 1)

end A068497

/-! ## A068497.P4790316813190273595

`∩[A307390(n+1), A079698(n)]`
-/

namespace A068497.P4790316813190273595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068497.P4790316813190273595

namespace A068497

/-- `∩[A307390(n+1), A079698(n)]` -/
def P4790316813190273595.Spec : Prop :=
  ∀ n, (P4790316813190273595.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P16499874508488581460

`p?[lt[A175851(n+2), A175851(2*n+1)]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068497

/-- `p?[lt[A175851(n+2), A175851(2*n+1)]]` -/
def P16499874508488581460.Spec : Prop :=
  ∀ n, (P16499874508488581460.a n : ℤ) = A068497 (n + 1)

theorem P16499874508488581460.correct : P16499874508488581460.Spec := by
  intro n
  simp only [A068497, Nat.add_sub_cancel]

end A068497

/-! ## A068497.P6490781678034326004

`eq[1, A269668(n+1)]+1`
-/

namespace A068497.P6490781678034326004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068497.P6490781678034326004

namespace A068497

/-- `eq[1, A269668(n+1)]+1` -/
def P6490781678034326004.Spec : Prop :=
  ∀ n, (P6490781678034326004.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P7132820102909910291

`filter[2*n+1, A269668(#)]`
-/

namespace A068497.P7132820102909910291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A269668 (f1 j) = 1) n)

end

end A068497.P7132820102909910291

namespace A068497

/-- `filter[2*n+1, A269668(#)]` -/
def P7132820102909910291.Spec : Prop :=
  ∀ n, (P7132820102909910291.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P15584746873559408722

`p?[A104278(n+1)]`
-/

namespace A068497.P15584746873559408722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068497.P15584746873559408722

namespace A068497

/-- `p?[A104278(n+1)]` -/
def P15584746873559408722.Spec : Prop :=
  ∀ n, P15584746873559408722.a n = A068497 (n + 1)

end A068497

/-! ## A068497.P59407604837999409

`p?[lt[5, A020481(n+2)]]`
-/

namespace A068497.P59407604837999409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068497.P59407604837999409

namespace A068497

/-- `p?[lt[5, A020481(n+2)]]` -/
def P59407604837999409.Spec : Prop :=
  ∀ n, (P59407604837999409.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P6519657991805737653

`p?[floor(A025583(n+1)/2)]`
-/

namespace A068497.P6519657991805737653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025583 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068497.P6519657991805737653

namespace A068497

/-- `p?[floor(A025583(n+1)/2)]` -/
def P6519657991805737653.Spec : Prop :=
  ∀ n, P6519657991805737653.a n = A068497 (n + 1)

end A068497

/-! ## A068497.P803095288964904222

`filter[A104278(n+1), A010051(#)]`
-/

namespace A068497.P803095288964904222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068497.P803095288964904222

namespace A068497

/-- `filter[A104278(n+1), A010051(#)]` -/
def P803095288964904222.Spec : Prop :=
  ∀ n, P803095288964904222.a n = A068497 (n + 1)

end A068497

/-! ## A068497.P6012108472111988904

`record[A020639(floor(A025583(n+1)/2))]`
-/

namespace A068497.P6012108472111988904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A025583 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068497.P6012108472111988904

namespace A068497

/-- `record[A020639(floor(A025583(n+1)/2))]` -/
def P6012108472111988904.Spec : Prop :=
  ∀ n, P6012108472111988904.a n = A068497 (n + 1)

end A068497

/-! ## A068497.P2995804026278414166

`∩[A000040(n+1), A104278(n+1)]`
-/

namespace A068497.P2995804026278414166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068497.P2995804026278414166

namespace A068497

/-- `∩[A000040(n+1), A104278(n+1)]` -/
def P2995804026278414166.Spec : Prop :=
  ∀ n, (P2995804026278414166.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P8707937295090976175

`∩[A004139(n+1), A104278(n+1)]`
-/

namespace A068497.P8707937295090976175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068497.P8707937295090976175

namespace A068497

/-- `∩[A004139(n+1), A104278(n+1)]` -/
def P8707937295090976175.Spec : Prop :=
  ∀ n, (P8707937295090976175.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P3604550005793550118

`∩[A006005(n+1), A104278(n+1)]`
-/

namespace A068497.P3604550005793550118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068497.P3604550005793550118

namespace A068497

/-- `∩[A006005(n+1), A104278(n+1)]` -/
def P3604550005793550118.Spec : Prop :=
  ∀ n, (P3604550005793550118.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P13229243213159361890

`∩[A008578(n+1), A104278(n+1)]`
-/

namespace A068497.P13229243213159361890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068497.P13229243213159361890

namespace A068497

/-- `∩[A008578(n+1), A104278(n+1)]` -/
def P13229243213159361890.Spec : Prop :=
  ∀ n, (P13229243213159361890.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P2684967722971213826

`∩[A033946(n+1), A104278(n+1)]`
-/

namespace A068497.P2684967722971213826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068497.P2684967722971213826

namespace A068497

/-- `∩[A033946(n+1), A104278(n+1)]` -/
def P2684967722971213826.Spec : Prop :=
  ∀ n, (P2684967722971213826.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P9779319330481171850

`∩[A045319(n+1), A104278(n+1)]`
-/

namespace A068497.P9779319330481171850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068497.P9779319330481171850

namespace A068497

/-- `∩[A045319(n+1), A104278(n+1)]` -/
def P9779319330481171850.Spec : Prop :=
  ∀ n, (P9779319330481171850.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P6979926420083187203

`∩[A045344(n+1), A104278(n+1)]`
-/

namespace A068497.P6979926420083187203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068497.P6979926420083187203

namespace A068497

/-- `∩[A045344(n+1), A104278(n+1)]` -/
def P6979926420083187203.Spec : Prop :=
  ∀ n, (P6979926420083187203.a n : ℤ) = A068497 (n + 1)

end A068497

/-! ## A068497.P10347550540728585118

`∩[A046022(n+1), A104278(n+1)]`
-/

namespace A068497.P10347550540728585118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068497.P10347550540728585118

namespace A068497

/-- `∩[A046022(n+1), A104278(n+1)]` -/
def P10347550540728585118.Spec : Prop :=
  ∀ n, (P10347550540728585118.a n : ℤ) = A068497 (n + 1)

end A068497

/-!
# A068498: Fibonacci numbers whose sum of decimal digits is greater than its index.

The programs for A068498, the canonical program `A068498.P10147595051279811510` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068498 has offset 1).

The definition of A068498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068498.P10147595051279811510

`A000045(lt[A280185(n), 0])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068498

/-- `A000045(lt[A280185(n), 0])` -/
def P10147595051279811510.Spec : Prop :=
  ∀ n, P10147595051279811510.a n = A068498 (n + 1)

theorem P10147595051279811510.correct : P10147595051279811510.Spec := by
  intro n
  simp only [A068498, Nat.add_sub_cancel]

end A068498

/-! ## A068498.P12677353913318439496

`A000045(lt[n, A004090(n)])`
-/

namespace A068498.P12677353913318439496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A068498.P12677353913318439496

namespace A068498

/-- `A000045(lt[n, A004090(n)])` -/
def P12677353913318439496.Spec : Prop :=
  ∀ n, P12677353913318439496.a n = A068498 (n + 1)

end A068498

/-! ## A068498.P17365452969745721476

`A000071(lt[n, A004090(n)])+1`
-/

namespace A068498.P17365452969745721476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A068498.P17365452969745721476

namespace A068498

/-- `A000071(lt[n, A004090(n)])+1` -/
def P17365452969745721476.Spec : Prop :=
  ∀ n, P17365452969745721476.a n = A068498 (n + 1)

end A068498

/-! ## A068498.P12378952642106617833

`A000045(lt[n, ∑{digits}[A000045(n), #]])`
-/

namespace A068498.P12378952642106617833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068498.P12378952642106617833

namespace A068498

/-- `A000045(lt[n, ∑{digits}[A000045(n), #]])` -/
def P12378952642106617833.Spec : Prop :=
  ∀ n, P12378952642106617833.a n = A068498 (n + 1)

end A068498

/-! ## A068498.P4991621459335664298

`round(A153382(lt[A280185(n), 0])/10)`
-/

namespace A068498.P4991621459335664298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280185 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153382 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 10)

end

end A068498.P4991621459335664298

namespace A068498

/-- `round(A153382(lt[A280185(n), 0])/10)` -/
def P4991621459335664298.Spec : Prop :=
  ∀ n, P4991621459335664298.a n = A068498 (n + 1)

end A068498

/-!
# A068499: Numbers m such that m! reduced modulo (m+1) is not zero.

The programs for A068499, the canonical program `A068499.P703561085316997960` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068499 has offset 1).

The definition of A068499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068499.P7780504387880669082

`A175787(n+1)-1`
-/

namespace A068499.P7780504387880669082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) - 1

end

end A068499.P7780504387880669082

namespace A068499

/-- `A175787(n+1)-1` -/
def P7780504387880669082.Spec : Prop :=
  ∀ n, P7780504387880669082.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P18121678837568682896

`A161344(n+1)/2-1`
-/

namespace A068499.P18121678837568682896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161344 (n + 1) : ℚ) / 2 - 1

end

end A068499.P18121678837568682896

namespace A068499

/-- `A161344(n+1)/2-1` -/
def P18121678837568682896.Spec : Prop :=
  ∀ n, P18121678837568682896.a n = (A068499 (n + 1) : ℚ)

end A068499

/-! ## A068499.P703561085316997960

`A008578(n+1)-C(n, C(5, n²))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068499

/-- `A008578(n+1)-C(n, C(5, n²))` -/
def P703561085316997960.Spec : Prop :=
  ∀ n, P703561085316997960.a n = A068499 (n + 1)

theorem P703561085316997960.correct : P703561085316997960.Spec := by
  intro n
  simp only [A068499, Nat.add_sub_cancel]

end A068499

/-! ## A068499.P12751807394939827756

`A028815(n)-A329683(n)`
-/

namespace A068499.P12751807394939827756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - A329683 n

end

end A068499.P12751807394939827756

namespace A068499

/-- `A028815(n)-A329683(n)` -/
def P12751807394939827756.Spec : Prop :=
  ∀ n, P12751807394939827756.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P16591971412496445330

`A299763(n+1)-A046698(n)`
-/

namespace A068499.P16591971412496445330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) - A046698 n

end

end A068499.P16591971412496445330

namespace A068499

/-- `A299763(n+1)-A046698(n)` -/
def P16591971412496445330.Spec : Prop :=
  ∀ n, P16591971412496445330.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P10494083895515169380

`A167136(n+1)-A326178(n)`
-/

namespace A068499.P10494083895515169380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) - A326178 n

end

end A068499.P10494083895515169380

namespace A068499

/-- `A167136(n+1)-A326178(n)` -/
def P10494083895515169380.Spec : Prop :=
  ∀ n, P10494083895515169380.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P12850545563730680840

`xor(A179184(n), A182986(n+1))`
-/

namespace A068499.P12850545563730680840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179184 n) (A182986 (n + 1))

end

end A068499.P12850545563730680840

namespace A068499

/-- `xor(A179184(n), A182986(n+1))` -/
def P12850545563730680840.Spec : Prop :=
  ∀ n, P12850545563730680840.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P9368555778599271672

`A008578(n+1)-A030220(C(2, n)+1)`
-/

namespace A068499.P9368555778599271672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A030220 (Nat.choose 2 n + 1)

end

end A068499.P9368555778599271672

namespace A068499

/-- `A008578(n+1)-A030220(C(2, n)+1)` -/
def P9368555778599271672.Spec : Prop :=
  ∀ n, P9368555778599271672.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P6629490861417208069

`A008578(n+1)-A179184(A028310(n))`
-/

namespace A068499.P6629490861417208069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A179184 (A028310 n).toNat

end

end A068499.P6629490861417208069

namespace A068499

/-- `A008578(n+1)-A179184(A028310(n))` -/
def P6629490861417208069.Spec : Prop :=
  ∀ n, P6629490861417208069.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P1181391192367333675

`A008578(n+1)-A060576(A083036(n+1))`
-/

namespace A068499.P1181391192367333675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A060576 (A083036 (n + 1)).toNat

end

end A068499.P1181391192367333675

namespace A068499

/-- `A008578(n+1)-A060576(A083036(n+1))` -/
def P1181391192367333675.Spec : Prop :=
  ∀ n, P1181391192367333675.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P4684019130353374169

`A008578(n+1)+A171622(n+1)-A171626(n+1)`
-/

namespace A068499.P4684019130353374169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A171622 (n + 1) - A171626 (n + 1))

end

end A068499.P4684019130353374169

namespace A068499

/-- `A008578(n+1)+A171622(n+1)-A171626(n+1)` -/
def P4684019130353374169.Spec : Prop :=
  ∀ n, P4684019130353374169.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P325397130092403976

`A046022(n+2)-1`
-/

namespace A068499.P325397130092403976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2) - 1

end

end A068499.P325397130092403976

namespace A068499

/-- `A046022(n+2)-1` -/
def P325397130092403976.Spec : Prop :=
  ∀ n, P325397130092403976.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P14118654169003490130

`A008578(n+1)-char[A256210(n+3)]`
-/

namespace A068499.P14118654169003490130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256210 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A068499.P14118654169003490130

namespace A068499

/-- `A008578(n+1)-char[A256210(n+3)]` -/
def P14118654169003490130.Spec : Prop :=
  ∀ n, P14118654169003490130.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P12932776498341926110

`record[A001414(n+2)-1]`
-/

namespace A068499.P12932776498341926110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068499.P12932776498341926110

namespace A068499

/-- `record[A001414(n+2)-1]` -/
def P12932776498341926110.Spec : Prop :=
  ∀ n, P12932776498341926110.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P10236247231217076300

`record[A000010(n+1)+n%2]`
-/

namespace A068499.P10236247231217076300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068499.P10236247231217076300

namespace A068499

/-- `record[A000010(n+1)+n%2]` -/
def P10236247231217076300.Spec : Prop :=
  ∀ n, P10236247231217076300.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P16102749735472723590

`record[gcd(n, xor(1, A001222(n+1)))]`
-/

namespace A068499.P16102749735472723590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (Int.xor 1 (A001222 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068499.P16102749735472723590

namespace A068499

/-- `record[gcd(n, xor(1, A001222(n+1)))]` -/
def P16102749735472723590.Spec : Prop :=
  ∀ n, (P16102749735472723590.a n : ℤ) = A068499 (n + 1)

end A068499

/-! ## A068499.P3764286997158799556

`record[(n-2)/A001222(n+2)+3]`
-/

namespace A068499.P3764286997158799556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (A001222 (n + 2) : ℚ) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068499.P3764286997158799556

namespace A068499

/-- `record[(n-2)/A001222(n+2)+3]` -/
def P3764286997158799556.Spec : Prop :=
  ∀ n, P3764286997158799556.a n = (A068499 (n + 1) : ℚ)

end A068499

/-! ## A068499.P2213857074111219908

`record[ceil(2*n/A000005(n+2))+1]`
-/

namespace A068499.P2213857074111219908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) / (A000005 (n + 2) : ℚ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068499.P2213857074111219908

namespace A068499

/-- `record[ceil(2*n/A000005(n+2))+1]` -/
def P2213857074111219908.Spec : Prop :=
  ∀ n, P2213857074111219908.a n = A068499 (n + 1)

end A068499

/-! ## A068499.P13873237286716452267

`record[gcd(n, A300228(n+1))]`
-/

namespace A068499.P13873237286716452267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A300228 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068499.P13873237286716452267

namespace A068499

/-- `record[gcd(n, A300228(n+1))]` -/
def P13873237286716452267.Spec : Prop :=
  ∀ n, (P13873237286716452267.a n : ℤ) = A068499 (n + 1)

end A068499

/-! ## A068499.P18437958083530948201

`eq[0, A072480(n+1)]`
-/

namespace A068499.P18437958083530948201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068499.P18437958083530948201

namespace A068499

/-- `eq[0, A072480(n+1)]` -/
def P18437958083530948201.Spec : Prop :=
  ∀ n, (P18437958083530948201.a n : ℤ) = A068499 (n + 1)

end A068499

/-! ## A068499.P14672976173663059674

`eq[1, ∑{p}[n+1, n-#]²]`
-/

namespace A068499.P14672976173663059674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f3 n), ((n : ℤ) - (p : ℤ))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068499.P14672976173663059674

namespace A068499

/-- `eq[1, ∑{p}[n+1, n-#]²]` -/
def P14672976173663059674.Spec : Prop :=
  ∀ n, (P14672976173663059674.a n : ℤ) = A068499 (n + 1)

end A068499

