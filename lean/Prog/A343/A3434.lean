import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A343400: Number of ways to write n as 3^x + [y^2/3] + [z^2/4], where [.] is the floor function, x is a nonnegative integer, and y and z are positive integers.

The programs for A343400, there is no canonical definition to state claims against.
-/

/-! ## A343400.P8737527327973659350

`A304689(xor(A100357(n+1), A185624(n)))`
-/

namespace A343400.P8737527327973659350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304689 (Int.xor (A100357 (n + 1)) (A185624 n)).toNat

end

end A343400.P8737527327973659350

/-!
# A343403: Numbers k such that the product of the digits of k is not the product of digits of any earlier term in the sequence.

The programs for A343403, there is no canonical definition to state claims against.
-/

/-! ## A343403.P8150300387425404128

`eq[A063524(n), A357526(n)]`
-/

namespace A343403.P8150300387425404128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343403.P8150300387425404128

/-! ## A343403.P11716215380306071597

`eq[A178333(n), A357526(n)]`
-/

namespace A343403.P11716215380306071597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343403.P11716215380306071597

/-! ## A343403.P6149188279411038105

`eq[1, char[A068189(n+1)]]`
-/

namespace A343403.P6149188279411038105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343403.P6149188279411038105

/-! ## A343403.P10059552827541848930

`lt[A063524(3*n+4), char[A068189(n+1)]]`
-/

namespace A343403.P10059552827541848930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343403.P10059552827541848930

/-! ## A343403.P1327125703294420036

`lt[A000038(3*(n+1)), char[A068189(n+1)]]`
-/

namespace A343403.P1327125703294420036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (3 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343403.P1327125703294420036

/-!
# A343405: Numbers k such that A343404(k) = k.

The programs for A343405, there is no canonical definition to state claims against.
-/

/-! ## A343405.P8477688047034724721

`eq[n, A343404(n)]`
-/

namespace A343405.P8477688047034724721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343404 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343405.P8477688047034724721

/-! ## A343405.P16379366277022624780

`lt[A053836(A175228(n+1)), 7]`
-/

namespace A343405.P16379366277022624780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A175228 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343405.P16379366277022624780

/-! ## A343405.P1511552762819804493

`lt[A302163(n+3), A006465(A296910(n))]`
-/

namespace A343405.P1511552762819804493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006465 (A296910 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343405.P1511552762819804493

/-!
# A343406: Number of generalized polyforms on the truncated hexagonal tiling with n cells.

The programs for A343406, there is no canonical definition to state claims against.
-/

/-! ## A343406.P15148964915756432473

`A004523(A228495(n)+A292796(n)+1)`
-/

namespace A343406.P15148964915756432473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A228495 n + (A292796 n + 1)).toNat

end

end A343406.P15148964915756432473

/-! ## A343406.P17015194430743922734

`A020943(A084652(n))+a(n-1)` with `a(0)=1`
-/

namespace A343406.P17015194430743922734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020943 (A084652 n).toNat + a (n - 1)

end

end A343406.P17015194430743922734

/-!
# A343407: Number of proper divisors of n that are triangular numbers.

The programs for A343407, the canonical program `A343407.P12989164857061377449` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343407 has offset 1).

The definition of A343407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343407.P9530348018058995067

`Δ[A069470(n)]-char[∑[n-1]]`
-/

namespace A343407.P9530348018058995067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A343407.P9530348018058995067

namespace A343407

/-- `Δ[A069470(n)]-char[∑[n-1]]` -/
def P9530348018058995067.Spec : Prop :=
  ∀ n, P9530348018058995067.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P12989164857061377449

`∑{d}[n+1, A073424(#%(n+1))]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A343407

/-- `∑{d}[n+1, A073424(#%(n+1))]` -/
def P12989164857061377449.Spec : Prop :=
  ∀ n, P12989164857061377449.a n = A343407 (n + 1)

theorem P12989164857061377449.correct : P12989164857061377449.Spec := by
  intro n
  simp only [A343407, Nat.add_sub_cancel]

end A343407

/-! ## A343407.P3841396480584480077

`A007862(n+1)-char[∑[n-1]]`
-/

namespace A343407.P3841396480584480077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A343407.P3841396480584480077

namespace A343407

/-- `A007862(n+1)-char[∑[n-1]]` -/
def P3841396480584480077.Spec : Prop :=
  ∀ n, P3841396480584480077.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P4648327832805448572

`A325334(n+1)+char[comp[∑[n-1]]]`
-/

namespace A343407.P4648327832805448572
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A343407.P4648327832805448572

namespace A343407

/-- `A325334(n+1)+char[comp[∑[n-1]]]` -/
def P4648327832805448572.Spec : Prop :=
  ∀ n, P4648327832805448572.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P11772769986141108208

`∑{d}[n+1, A073423(#)]-char[∑[n-1]]`
-/

namespace A343407.P11772769986141108208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073423 d - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A343407.P11772769986141108208

namespace A343407

/-- `∑{d}[n+1, A073423(#)]-char[∑[n-1]]` -/
def P11772769986141108208.Spec : Prop :=
  ∀ n, P11772769986141108208.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P5217113903024293306

`Δ[A069470(n)-A003056(n)]`
-/

namespace A343407.P5217113903024293306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n - A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343407.P5217113903024293306

namespace A343407

/-- `Δ[A069470(n)-A003056(n)]` -/
def P5217113903024293306.Spec : Prop :=
  ∀ n, P5217113903024293306.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P3514333546296973069

`abs(A007862(n+1)-A023531(n))`
-/

namespace A343407.P3514333546296973069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007862 (n + 1) - A023531 n|

end

end A343407.P3514333546296973069

namespace A343407

/-- `abs(A007862(n+1)-A023531(n))` -/
def P3514333546296973069.Spec : Prop :=
  ∀ n, P3514333546296973069.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P17606135015409808198

`A325334(n+1)+1-A023531(n)`
-/

namespace A343407.P17606135015409808198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (n + 1) + 1 - A023531 n

end

end A343407.P17606135015409808198

namespace A343407

/-- `A325334(n+1)+1-A023531(n)` -/
def P17606135015409808198.Spec : Prop :=
  ∀ n, P17606135015409808198.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P9403100192818992501

`abs(A007862(n+1)-A010054(n+1))`
-/

namespace A343407.P9403100192818992501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007862 (n + 1) - A010054 (n + 1)|

end

end A343407.P9403100192818992501

namespace A343407

/-- `abs(A007862(n+1)-A010054(n+1))` -/
def P9403100192818992501.Spec : Prop :=
  ∀ n, P9403100192818992501.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P2389772023547988011

`ceil(A007862(n+1)-1/A132749(n))`
-/

namespace A343407.P2389772023547988011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007862 (n + 1) : ℚ) - 1 / (A132749 n : ℚ)⌉

end

end A343407.P2389772023547988011

namespace A343407

/-- `ceil(A007862(n+1)-1/A132749(n))` -/
def P2389772023547988011.Spec : Prop :=
  ∀ n, P2389772023547988011.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P10214615322397978094

`∑{d}[n+1, A010054(#)]-A010054(n+1)`
-/

namespace A343407.P10214615322397978094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 d - A010054 (n + 1)

end

end A343407.P10214615322397978094

namespace A343407

/-- `∑{d}[n+1, A010054(#)]-A010054(n+1)` -/
def P10214615322397978094.Spec : Prop :=
  ∀ n, P10214615322397978094.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P2228853519778872215

`∑{d}[n+1, A073424(#)]-A073424(n+1)`
-/

namespace A343407.P2228853519778872215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073424 d - A073424 (n + 1)

end

end A343407.P2228853519778872215

namespace A343407

/-- `∑{d}[n+1, A073424(#)]-A073424(n+1)` -/
def P2228853519778872215.Spec : Prop :=
  ∀ n, P2228853519778872215.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P1514136611874601169

`∑{d}[n+1, A007862(#)*A157658((n+1)/#)]`
-/

namespace A343407.P1514136611874601169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007862 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343407.P1514136611874601169

namespace A343407

/-- `∑{d}[n+1, A007862(#)*A157658((n+1)/#)]` -/
def P1514136611874601169.Spec : Prop :=
  ∀ n, P1514136611874601169.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P1892517022240185178

`∑{d}[n+1, A023531(#-1)*A057427((n+1)/#-1)]`
-/

namespace A343407.P1892517022240185178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023531 (d - 1) * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A343407.P1892517022240185178

namespace A343407

/-- `∑{d}[n+1, A023531(#-1)*A057427((n+1)/#-1)]` -/
def P1892517022240185178.Spec : Prop :=
  ∀ n, P1892517022240185178.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P12384016419393543277

`A001222(2^(A007862(n+1)-A023531(n)))`
-/

namespace A343407.P12384016419393543277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A007862 (n + 1) - A023531 n : ℤ))).toNat

end

end A343407.P12384016419393543277

namespace A343407

/-- `A001222(2^(A007862(n+1)-A023531(n)))` -/
def P12384016419393543277.Spec : Prop :=
  ∀ n, P12384016419393543277.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P1396900880179431464

`A000005(2*(n+1))-A174199(n+1)-A023531(n)`
-/

namespace A343407.P1396900880179431464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A174199 (n + 1) - A023531 n

end

end A343407.P1396900880179431464

namespace A343407

/-- `A000005(2*(n+1))-A174199(n+1)-A023531(n)` -/
def P1396900880179431464.Spec : Prop :=
  ∀ n, P1396900880179431464.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P11235823930229437566

`Δ[A069470(n)-A002024(n+1)]`
-/

namespace A343407.P11235823930229437566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n - A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343407.P11235823930229437566

namespace A343407

/-- `Δ[A069470(n)-A002024(n+1)]` -/
def P11235823930229437566.Spec : Prop :=
  ∀ n, P11235823930229437566.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P10400508920076933245

`Δ[A069470(n)-A003057(n+2)]`
-/

namespace A343407.P10400508920076933245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n - A003057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343407.P10400508920076933245

namespace A343407

/-- `Δ[A069470(n)-A003057(n+2)]` -/
def P10400508920076933245.Spec : Prop :=
  ∀ n, P10400508920076933245.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P15297868515351792060

`∑{d}[n+1, A197870(#)²]-A023531(n)`
-/

namespace A343407.P15297868515351792060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A197870 d ^ 2 - A023531 n

end

end A343407.P15297868515351792060

namespace A343407

/-- `∑{d}[n+1, A197870(#)²]-A023531(n)` -/
def P15297868515351792060.Spec : Prop :=
  ∀ n, P15297868515351792060.a n = A343407 (n + 1)

end A343407

/-! ## A343407.P16067385656648201775

`A002024(n+1)+A007862(n+1)-A002024(n+2)`
-/

namespace A343407.P16067385656648201775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A007862 (n + 1) - A002024 (n + 2))

end

end A343407.P16067385656648201775

namespace A343407

/-- `A002024(n+1)+A007862(n+1)-A002024(n+2)` -/
def P16067385656648201775.Spec : Prop :=
  ∀ n, P16067385656648201775.a n = A343407 (n + 1)

end A343407

/-!
# A343408: Sum of proper divisors of n that are triangular numbers.

The programs for A343408, the canonical program `A343408.P1295939081408960791` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343408 has offset 1).

The definition of A343408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343408.P1295939081408960791

`∑{d}[n+1, A127773(#)%(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343408

/-- `∑{d}[n+1, A127773(#)%(n+1)]` -/
def P1295939081408960791.Spec : Prop :=
  ∀ n, P1295939081408960791.a n = A343408 (n + 1)

theorem P1295939081408960791.correct : P1295939081408960791.Spec := by
  intro n
  simp only [A343408, Nat.add_sub_cancel]

end A343408

/-! ## A343408.P4198304781233575173

`∑{d}[n+1, #%(n+1)*A010054(#)]`
-/

namespace A343408.P4198304781233575173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d % (n + 1) : ℕ) : ℤ) * A010054 d

end

end A343408.P4198304781233575173

namespace A343408

/-- `∑{d}[n+1, #%(n+1)*A010054(#)]` -/
def P4198304781233575173.Spec : Prop :=
  ∀ n, P4198304781233575173.a n = A343408 (n + 1)

end A343408

/-! ## A343408.P11300298353710225486

`∑{d}[n+1, (#*A073424(#))%(n+1)]`
-/

namespace A343408.P11300298353710225486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((d : ℤ) * A073424 d) (n + 1 : ℤ)

end

end A343408.P11300298353710225486

namespace A343408

/-- `∑{d}[n+1, (#*A073424(#))%(n+1)]` -/
def P11300298353710225486.Spec : Prop :=
  ∀ n, P11300298353710225486.a n = A343408 (n + 1)

end A343408

/-! ## A343408.P15179262365440829231

`A185027(n+1)%C(comp[∑[n]]-n, 2)`
-/

namespace A343408.P15179262365440829231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185027 (n + 1)) (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A343408.P15179262365440829231

namespace A343408

/-- `A185027(n+1)%C(comp[∑[n]]-n, 2)` -/
def P15179262365440829231.Spec : Prop :=
  ∀ n, P15179262365440829231.a n = A343408 (n + 1)

end A343408

/-! ## A343408.P15067683854959178028

`A185027(n+1)%A094305(n)`
-/

namespace A343408.P15067683854959178028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185027 (n + 1)) (A094305 n)

end

end A343408.P15067683854959178028

namespace A343408

/-- `A185027(n+1)%A094305(n)` -/
def P15067683854959178028.Spec : Prop :=
  ∀ n, P15067683854959178028.a n = A343408 (n + 1)

end A343408

/-! ## A343408.P10594720390163122198

`A185027(n+1)-A127773(n+1)`
-/

namespace A343408.P10594720390163122198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (n + 1) - A127773 (n + 1)

end

end A343408.P10594720390163122198

namespace A343408

/-- `A185027(n+1)-A127773(n+1)` -/
def P10594720390163122198.Spec : Prop :=
  ∀ n, P10594720390163122198.a n = A343408 (n + 1)

end A343408

/-! ## A343408.P5076169819480866560

`∑{d}[n+1, A127773(#)]-A127773(n+1)`
-/

namespace A343408.P5076169819480866560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127773 d - A127773 (n + 1)

end

end A343408.P5076169819480866560

namespace A343408

/-- `∑{d}[n+1, A127773(#)]-A127773(n+1)` -/
def P5076169819480866560.Spec : Prop :=
  ∀ n, P5076169819480866560.a n = A343408 (n + 1)

end A343408

/-! ## A343408.P18417887445318128582

`A185027(n+1)-(n+1)*A010054(n+1)`
-/

namespace A343408.P18417887445318128582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (n + 1) - (n + 1 : ℤ) * A010054 (n + 1)

end

end A343408.P18417887445318128582

namespace A343408

/-- `A185027(n+1)-(n+1)*A010054(n+1)` -/
def P18417887445318128582.Spec : Prop :=
  ∀ n, P18417887445318128582.a n = A343408 (n + 1)

end A343408

/-! ## A343408.P3082204389996078884

`∑{d}[n+1, A157658(#)*A185027((n+1)/#)]`
-/

namespace A343408.P3082204389996078884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A185027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343408.P3082204389996078884

namespace A343408

/-- `∑{d}[n+1, A157658(#)*A185027((n+1)/#)]` -/
def P3082204389996078884.Spec : Prop :=
  ∀ n, P3082204389996078884.a n = A343408 (n + 1)

end A343408

/-!
# A343409: Numbers whose square is the sum of one or more consecutive nonnegative cubes.

The programs for A343409, there is no canonical definition to state claims against.
-/

/-! ## A343409.P16921137478158872958

`∪[A126200(n+1), ∑[n]]`
-/

namespace A343409.P16921137478158872958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126200 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A343409.P16921137478158872958

/-! ## A343409.P2650505188968126328

`∪[A000217(n), A126200(n+1)]`
-/

namespace A343409.P2650505188968126328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343409.P2650505188968126328

/-! ## A343409.P5045422391714202011

`∪[C(n+1, 2), A126200(A000027(n+1))]`
-/

namespace A343409.P5045422391714202011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126200 (A000027 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343409.P5045422391714202011

/-! ## A343409.P2456112426533466734

`lt[0, A297199(n^ceil(atan(n)))]`
-/

namespace A343409.P2456112426533466734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297199 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343409.P2456112426533466734

/-! ## A343409.P4606574318863686412

`eq[1, A297199(A253909(n))]`
-/

namespace A343409.P4606574318863686412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297199 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343409.P4606574318863686412

/-!
# A343411: Number of ways to write n as x^3 + [y^3/2] + [z^3/3] + 2^w, where [.] is the floor function, x,y,z are positive integers, and w is a nonnegative integer.

The programs for A343411, there is no canonical definition to state claims against.
-/

/-! ## A343411.P13147662318584837214

`A005811(A135660(2^n))`
-/

namespace A343411.P13147662318584837214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A135660 (2 ^ n)).toNat

end

end A343411.P13147662318584837214

/-! ## A343411.P9372654528700359914

`gcd(A130519(2^n), A287477(n))`
-/

namespace A343411.P9372654528700359914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130519 (2 ^ n)) (A287477 n)

end

end A343411.P9372654528700359914

/-! ## A343411.P12454482293811784595

`A103921(A059283(3*n+2)-1)`
-/

namespace A343411.P12454482293811784595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A059283 (3 * n + 2) - 1).toNat

end

end A343411.P12454482293811784595

/-! ## A343411.P696738974688912969

`gcd(A191797(3*n), A241556(A000079(n)))`
-/

namespace A343411.P696738974688912969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191797 (3 * n)) (A241556 (A000079 n).toNat)

end

end A343411.P696738974688912969

/-! ## A343411.P14359378554050381556

`A001222(or(A000045(n+2), A001006(n)))`
-/

namespace A343411.P14359378554050381556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000045 (n + 2)) (A001006 n)).toNat

end

end A343411.P14359378554050381556

/-!
# A343413: Primes p such that 2*p+1+A001414(p+1) is prime.

The programs for A343413, there is no canonical definition to state claims against.
-/

/-! ## A343413.P11505243071140461852

`p?[A343412(n+1)]`
-/

namespace A343413.P11505243071140461852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343413.P11505243071140461852

/-! ## A343413.P2980925526045643047

`p?[record[A343412(A328397(n))]]`
-/

namespace A343413.P2980925526045643047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343413.P2980925526045643047

/-! ## A343413.P6967891886677319588

`∩[A348283(n+1), A343412(n+1)]`
-/

namespace A343413.P6967891886677319588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P6967891886677319588

/-! ## A343413.P13447815096128347283

`∩[A000040(n+1), A343412(n+1)]`
-/

namespace A343413.P13447815096128347283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P13447815096128347283

/-! ## A343413.P8003989958793295189

`∩[A004139(n+1), A343412(n+1)]`
-/

namespace A343413.P8003989958793295189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P8003989958793295189

/-! ## A343413.P6637851153415186603

`∩[A045319(n+1), A343412(n+1)]`
-/

namespace A343413.P6637851153415186603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P6637851153415186603

/-! ## A343413.P8556345549657128377

`∩[A051948(n+1), A343412(n+1)]`
-/

namespace A343413.P8556345549657128377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P8556345549657128377

/-! ## A343413.P14093290893310889615

`∩[A064728(n+1), A343412(n+1)]`
-/

namespace A343413.P14093290893310889615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P14093290893310889615

/-! ## A343413.P12533648082097059001

`∩[A065091(n+1), A343412(n+1)]`
-/

namespace A343413.P12533648082097059001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P12533648082097059001

/-! ## A343413.P18421873273761503351

`∩[A065396(n+1), A343412(n+1)]`
-/

namespace A343413.P18421873273761503351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P18421873273761503351

/-! ## A343413.P17945820107692439553

`∩[A106118(n+1), A343412(n+1)]`
-/

namespace A343413.P17945820107692439553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P17945820107692439553

/-! ## A343413.P13666054153160807577

`∩[A116974(n+1), A343412(n+1)]`
-/

namespace A343413.P13666054153160807577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P13666054153160807577

/-! ## A343413.P1018051325990201713

`∩[A161346(n+1), A343412(n+1)]`
-/

namespace A343413.P1018051325990201713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P1018051325990201713

/-! ## A343413.P11992304941826484392

`∩[A175787(n+1), A343412(n+1)]`
-/

namespace A343413.P11992304941826484392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P11992304941826484392

/-! ## A343413.P7779844547059695122

`∩[A182986(n+1), A343412(n+1)]`
-/

namespace A343413.P7779844547059695122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343413.P7779844547059695122

/-! ## A343413.P3434717969104856025

`record[A020639(A343412(n+2))]`
-/

namespace A343413.P3434717969104856025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A343412 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343413.P3434717969104856025

/-! ## A343413.P16615629064037010617

`filter[A343412(n+1), A010051(#)]`
-/

namespace A343413.P16615629064037010617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A343413.P16615629064037010617

/-! ## A343413.P15259854794631289081

`filter[A343412(n+1), A302777(#)]`
-/

namespace A343413.P15259854794631289081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A343413.P15259854794631289081

/-! ## A343413.P15890426458574096258

`record[p?[A343412(A052938(n))]]`
-/

namespace A343413.P15890426458574096258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343413.P15890426458574096258

/-! ## A343413.P1278159744837539003

`p?[record[A343412(A117910(n))]]`
-/

namespace A343413.P1278159744837539003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343412 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343413.P1278159744837539003

/-!
# A343414: a(n) = Sum_{i=1..n+1} prime(i)*Sum_{j=0..i-1} binomial(n,j).

The programs for A343414, there is no canonical definition to state claims against.
-/

/-! ## A343414.P17726950615036546620

`∑[∑[A184416(A063727(n))]]`
-/

namespace A343414.P17726950615036546620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (A063727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343414.P17726950615036546620

/-!
# A343415: Primes in A343414.

The programs for A343415, there is no canonical definition to state claims against.
-/

/-! ## A343415.P7888368933324202733

`A343414(eq[A112382(n), A318816(n+1)])`
-/

namespace A343415.P7888368933324202733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343414 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343415.P7888368933324202733

/-!
# A343417: a(n) is the number of free polyominoes with k cells and n-k distinguished vertices.

The programs for A343417, there is no canonical definition to state claims against.
-/

/-! ## A343417.P417474058420427945

`A226190(A326558(n))`
-/

namespace A343417.P417474058420427945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A326558 n).toNat

end

end A343417.P417474058420427945

/-! ## A343417.P18050956100091320495

`A001462(A029767(n)+1-n)`
-/

namespace A343417.P18050956100091320495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A029767 n + 1 - (n : ℤ)).toNat

end

end A343417.P18050956100091320495

/-! ## A343417.P5078220810649046803

`A226190(A138178(n)+A003987(n))`
-/

namespace A343417.P5078220810649046803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A138178 n + A003987 n).toNat

end

end A343417.P5078220810649046803

/-!
# A343418: Primes that occur in A343416.

The programs for A343418, there is no canonical definition to state claims against.
-/

/-! ## A343418.P14810991241455356467

`A127209(3*(n+1))-A135416(A127210(n+1))`
-/

namespace A343418.P14810991241455356467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127209 (3 * (n + 1)) - A135416 (A127210 (n + 1)).toNat

end

end A343418.P14810991241455356467

/-! ## A343418.P7591256825182225

`A352443(A183212(n+1)+A047263(3*n+2))`
-/

namespace A343418.P7591256825182225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352443 (A183212 (n + 1) + A047263 (3 * n + 2)).toNat

end

end A343418.P7591256825182225

/-!
# A343419: Number of distinct sets { p(i) - p(j) : 1 <= i <= j <= n } where p ranges over all permutations of [n].

The programs for A343419, there is no canonical definition to state claims against.
-/

/-! ## A343419.P10104652251307370565

`A345921(A182984(n+1)+1)`
-/

namespace A343419.P10104652251307370565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (A182984 (n + 1) + 1).toNat

end

end A343419.P10104652251307370565

/-! ## A343419.P12519036810309828909

`A028495(n)+A001222(A001349(n))`
-/

namespace A343419.P12519036810309828909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n + A001222 (A001349 n).toNat

end

end A343419.P12519036810309828909

/-! ## A343419.P14236268282272599977

`A194975(A080014(n))+A004526(n)`
-/

namespace A343419.P14236268282272599977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (A080014 n).toNat + A004526 n

end

end A343419.P14236268282272599977

/-! ## A343419.P1131744724418879999

`A376179(A291986(n)%A376192(3*n+2))`
-/

namespace A343419.P1131744724418879999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376179 (Int.tmod (A291986 n) (A376192 (3 * n + 2))).toNat

end

end A343419.P1131744724418879999

/-! ## A343419.P7835366155854492108

`A076869(A256268(3*(n+1)))+A046732(n+1)-(n+1)`
-/

namespace A343419.P7835366155854492108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A256268 (3 * (n + 1))).toNat + (A046732 (n + 1) - (n + 1 : ℤ))

end

end A343419.P7835366155854492108

/-!
# A343420: G.f.: 1/(1 - (1*x)/(1 - (2*x)^2/(1 - (3*x)^3/(1 - (4*x)^4/(1 - (5*x)^5/(1 - ...)))))).

The programs for A343420, there is no canonical definition to state claims against.
-/

/-! ## A343420.P4645220080714088944

`or(3, A135831(n))-2`
-/

namespace A343420.P4645220080714088944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A135831 n) - 2

end

end A343420.P4645220080714088944

/-! ## A343420.P16670898254957213512

`A053575(A161007(n)+2)`
-/

namespace A343420.P16670898254957213512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A161007 n + 2).toNat

end

end A343420.P16670898254957213512

/-! ## A343420.P14653623584254057619

`A088177(A196708(n+1)-char[2])`
-/

namespace A343420.P14653623584254057619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (A196708 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A343420.P14653623584254057619

/-!
# A343421: Number of Dean words of length n, i.e., squarefree reduced words over {0,1,2,3}.

The programs for A343421, there is no canonical definition to state claims against.
-/

/-! ## A343421.P2953193123112309539

`A075124(∑[record[A339373(n)]])`
-/

namespace A343421.P2953193123112309539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343421.P2953193123112309539

/-! ## A343421.P4226977802046109735

`2*A131770(A303166(n+1)+1)`
-/

namespace A343421.P4226977802046109735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131770 (A303166 (n + 1) + 1).toNat

end

end A343421.P4226977802046109735

/-!
# A343423: Prime numbers p such that Euclidean distance from origin to p in hexagonal grid sets a new record. Number '1' is placed at the origin and '2' at (1, 0). Number 'm' (m >= 3) is placed by moving one unit forward in the direction from 'm-2' to 'm-1', if m - 1 is not a prime; otherwise, making 1/6 turn counterclockwise at 'm-1' followed by moving one unit forward.

The programs for A343423, there is no canonical definition to state claims against.
-/

/-! ## A343423.P12118254364065986031

`A000040(lt[A282035(n+2), A323830(3*n+2)])`
-/

namespace A343423.P12118254364065986031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282035 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323830 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343423.P12118254364065986031

/-! ## A343423.P1444629785408468178

`∩[A133431(n+1), A257658(n+1)]`
-/

namespace A343423.P1444629785408468178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343423.P1444629785408468178

/-!
# A343424: Numbers k such that sopfr((k-1)!) is divisible by k, where sopfr(k) = A001414(k) = sum of primes, with repetition, dividing k.

The programs for A343424, there is no canonical definition to state claims against.
-/

/-! ## A343424.P12478505096096677080

`lt[A025281(n)%(n+1), 1]+1`
-/

namespace A343424.P12478505096096677080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025281 n) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343424.P12478505096096677080

/-!
# A343425: a(n) = Sum_{k=1..n} mu(k) * n^(n - k).

The programs for A343425, there is no canonical definition to state claims against.
-/

/-! ## A343425.P5991361057092838836

`A306904((n+2)^n)-n`
-/

namespace A343425.P5991361057092838836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306904 ((n + 2) ^ n) - (n : ℤ)

end

end A343425.P5991361057092838836

/-!
# A343428: G.f.: 1 + 1!*x/(1 + 2!*x/(1 + 3!*x/(1 + 4!*x/(1 + 5!*x/(1 + ...))))).

The programs for A343428, there is no canonical definition to state claims against.
-/

/-! ## A343428.P11340764330285947201

`A134028(A298647(∑[n]))`
-/

namespace A343428.P11340764330285947201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (A298647 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A343428.P11340764330285947201

/-!
# A343430: Part of n composed of prime factors of the form 3k-1.

The programs for A343430, the canonical program `A343430.P15037986344255415619` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343430 has offset 1).

The definition of A343430 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343430.P14155774196714792248

`A006519(n+1)*A343431(n+1)`
-/

namespace A343430.P14155774196714792248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A343431 (n + 1)

end

end A343430.P14155774196714792248

namespace A343430

/-- `A006519(n+1)*A343431(n+1)` -/
def P14155774196714792248.Spec : Prop :=
  ∀ n, P14155774196714792248.a n = A343430 (n + 1)

end A343430

/-! ## A343430.P15037986344255415619

`A038502(n+1)/A248909(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343430

/-- `A038502(n+1)/A248909(n+1)` -/
def P15037986344255415619.Spec : Prop :=
  ∀ n, P15037986344255415619.a n = (A343430 (n + 1) : ℚ)

end A343430

/-! ## A343430.P7651396755921931021

`lcm(2^val(n+1, 2), A343431(lcm(6, n+1)/6))`
-/

namespace A343430.P7651396755921931021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A343431 (SequenceMachineLib.roundAway ((Nat.lcm 6 (n + 1) : ℚ) / 6)).toNat)

end

end A343430.P7651396755921931021

namespace A343430

/-- `lcm(2^val(n+1, 2), A343431(lcm(6, n+1)/6))` -/
def P7651396755921931021.Spec : Prop :=
  ∀ n, (P7651396755921931021.a n : ℤ) = A343430 (n + 1)

end A343430

/-! ## A343430.P11611408830175476727

`lcm(Δ[A003188(n)], A343431(n+1))`
-/

namespace A343430.P11611408830175476727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A343431 (n + 1))

end

end A343430.P11611408830175476727

namespace A343430

/-- `lcm(Δ[A003188(n)], A343431(n+1))` -/
def P11611408830175476727.Spec : Prop :=
  ∀ n, (P11611408830175476727.a n : ℤ) = A343430 (n + 1)

end A343430

/-! ## A343430.P16057181604508407137

`xor(n+1, and(n, n+1))*∏{d}[n+1, A170825(A014963(#))]`
-/

namespace A343430.P16057181604508407137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℤ) * (∏ d ∈ Nat.divisors (f1 n), A170825 (A014963 d).toNat)

end

end A343430.P16057181604508407137

namespace A343430

/-- `xor(n+1, and(n, n+1))*∏{d}[n+1, A170825(A014963(#))]` -/
def P16057181604508407137.Spec : Prop :=
  ∀ n, P16057181604508407137.a n = A343430 (n + 1)

end A343430

/-! ## A343430.P14006228383007630917

`∑{d}[A038502(n+1), A091684(A000010(#))]`
-/

namespace A343430.P14006228383007630917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A091684 (A000010 d).toNat

end

end A343430.P14006228383007630917

namespace A343430

/-- `∑{d}[A038502(n+1), A091684(A000010(#))]` -/
def P14006228383007630917.Spec : Prop :=
  ∀ n, P14006228383007630917.a n = A343430 (n + 1)

end A343430

/-! ## A343430.P13795481824169348876

`A065331(n+1)/A038500(n+1)*A343431(n+1)`
-/

namespace A343430.P13795481824169348876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065331 (n + 1) : ℚ) / (A038500 (n + 1) : ℚ) * (A343431 (n + 1) : ℚ)

end

end A343430.P13795481824169348876

namespace A343430

/-- `A065331(n+1)/A038500(n+1)*A343431(n+1)` -/
def P13795481824169348876.Spec : Prop :=
  ∀ n, P13795481824169348876.a n = (A343430 (n + 1) : ℚ)

end A343430

/-! ## A343430.P4653517470515636246

`A038502(n+1)/gcd(A038502(n+1), A307233(n+1))`
-/

namespace A343430.P4653517470515636246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038502 (n + 1) : ℚ) / (Int.gcd (A038502 (n + 1)) (A307233 (n + 1)) : ℚ)

end

end A343430.P4653517470515636246

namespace A343430

/-- `A038502(n+1)/gcd(A038502(n+1), A307233(n+1))` -/
def P4653517470515636246.Spec : Prop :=
  ∀ n, P4653517470515636246.a n = (A343430 (n + 1) : ℚ)

end A343430

/-! ## A343430.P4799286235207191435

`round((n+1)/3^val(n+1, 3))/A248909(2*(n+1))`
-/

namespace A343430.P4799286235207191435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)) : ℚ) / (A248909 (2 * (n + 1)) : ℚ)

end

end A343430.P4799286235207191435

namespace A343430

/-- `round((n+1)/3^val(n+1, 3))/A248909(2*(n+1))` -/
def P4799286235207191435.Spec : Prop :=
  ∀ n, P4799286235207191435.a n = (A343430 (n + 1) : ℚ)

end A343430

/-! ## A343430.P11047426446441646685

`∏{d}[n+1, A014963(2*#)]/2*∏{d}[n+1, A170825(A014963(#))]`
-/

namespace A343430.P11047426446441646685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A014963 (2 * d) : ℤ) : ℚ) / 2 * ((∏ d ∈ Nat.divisors (f2 n), A170825 (A014963 d).toNat : ℤ) : ℚ)

end

end A343430.P11047426446441646685

namespace A343430

/-- `∏{d}[n+1, A014963(2*#)]/2*∏{d}[n+1, A170825(A014963(#))]` -/
def P11047426446441646685.Spec : Prop :=
  ∀ n, P11047426446441646685.a n = (A343430 (n + 1) : ℚ)

end A343430

/-! ## A343430.P13290496697442690335

`gcd(n+1, A326312(2*n+1))`
-/

namespace A343430.P13290496697442690335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326312 (2 * n + 1))

end

end A343430.P13290496697442690335

namespace A343430

/-- `gcd(n+1, A326312(2*n+1))` -/
def P13290496697442690335.Spec : Prop :=
  ∀ n, (P13290496697442690335.a n : ℤ) = A343430 (n + 1)

end A343430

/-!
# A343431: Part of n composed of prime factors of the form 6k-1.

The programs for A343431, the canonical program `A343431.P12258509485588509954` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343431 has offset 1).

The definition of A343431 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343431.P12258509485588509954

`A065330(n+1)/A248909(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343431

/-- `A065330(n+1)/A248909(n+1)` -/
def P12258509485588509954.Spec : Prop :=
  ∀ n, P12258509485588509954.a n = (A343431 (n + 1) : ℚ)

end A343431

/-! ## A343431.P11034229341198787465

`A343430(A000265(n+1))`
-/

namespace A343431.P11034229341198787465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A000265 (n + 1)).toNat

end

end A343431.P11034229341198787465

namespace A343431

/-- `A343430(A000265(n+1))` -/
def P11034229341198787465.Spec : Prop :=
  ∀ n, P11034229341198787465.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P3200816414403891127

`A343430(A065330(n+1))`
-/

namespace A343431.P3200816414403891127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A065330 (n + 1)).toNat

end

end A343431.P3200816414403891127

namespace A343431

/-- `A343430(A065330(n+1))` -/
def P3200816414403891127.Spec : Prop :=
  ∀ n, P3200816414403891127.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P4096839565431675596

`A343430(A153733(n)+1)`
-/

namespace A343431.P4096839565431675596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A153733 n + 1).toNat

end

end A343431.P4096839565431675596

namespace A343431

/-- `A343430(A153733(n)+1)` -/
def P4096839565431675596.Spec : Prop :=
  ∀ n, P4096839565431675596.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P15533243022030739373

`A093411(2*A343430(n+1))`
-/

namespace A343431.P15533243022030739373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * A343430 (n + 1)).toNat

end

end A343431.P15533243022030739373

namespace A343431

/-- `A093411(2*A343430(n+1))` -/
def P15533243022030739373.Spec : Prop :=
  ∀ n, P15533243022030739373.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P17825098299917928885

`∏{d}[n+1, A170825(A014963(#))]`
-/

namespace A343431.P17825098299917928885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A170825 (A014963 d).toNat

end

end A343431.P17825098299917928885

namespace A343431

/-- `∏{d}[n+1, A170825(A014963(#))]` -/
def P17825098299917928885.Spec : Prop :=
  ∀ n, P17825098299917928885.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P7253677994673382811

`A343430((n+1)/A006519(n+1))`
-/

namespace A343431.P7253677994673382811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A343431.P7253677994673382811

namespace A343431

/-- `A343430((n+1)/A006519(n+1))` -/
def P7253677994673382811.Spec : Prop :=
  ∀ n, P7253677994673382811.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P13179186389881570210

`A343430((n+1)/A065331(n+1))`
-/

namespace A343431.P13179186389881570210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A343431.P13179186389881570210

namespace A343431

/-- `A343430((n+1)/A065331(n+1))` -/
def P13179186389881570210.Spec : Prop :=
  ∀ n, P13179186389881570210.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P4154269630287121862

`A343430(A119674(n+1)-A007814(n+1))`
-/

namespace A343431.P4154269630287121862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A119674 (n + 1) - A007814 (n + 1)).toNat

end

end A343431.P4154269630287121862

namespace A343431

/-- `A343430(A119674(n+1)-A007814(n+1))` -/
def P4154269630287121862.Spec : Prop :=
  ∀ n, P4154269630287121862.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P5204933032495010762

`A343430(A097706(n+1)*A170818(n+1))`
-/

namespace A343431.P5204933032495010762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A097706 (n + 1) * A170818 (n + 1)).toNat

end

end A343431.P5204933032495010762

namespace A343431

/-- `A343430(A097706(n+1)*A170818(n+1))` -/
def P5204933032495010762.Spec : Prop :=
  ∀ n, P5204933032495010762.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P3757469859459971475

`lcm(A061142(n+1), A343430(n+1))/A061142(n+1)`
-/

namespace A343431.P3757469859459971475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A061142 (n + 1)) (A343430 (n + 1)) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A343431.P3757469859459971475

namespace A343431

/-- `lcm(A061142(n+1), A343430(n+1))/A061142(n+1)` -/
def P3757469859459971475.Spec : Prop :=
  ∀ n, P3757469859459971475.a n = (A343431 (n + 1) : ℚ)

end A343431

/-! ## A343431.P6382028362322506317

`A000265(n+1)/(A065331(A000265(n+1))*A248909(n+1))`
-/

namespace A343431.P6382028362322506317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A065331 (A000265 (n + 1)).toNat * A248909 (n + 1) : ℚ)

end

end A343431.P6382028362322506317

namespace A343431

/-- `A000265(n+1)/(A065331(A000265(n+1))*A248909(n+1))` -/
def P6382028362322506317.Spec : Prop :=
  ∀ n, P6382028362322506317.a n = (A343431 (n + 1) : ℚ)

end A343431

/-! ## A343431.P16177802490757105991

`A028234(2*A343430(n+1))`
-/

namespace A343431.P16177802490757105991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A343430 (n + 1)).toNat

end

end A343431.P16177802490757105991

namespace A343431

/-- `A028234(2*A343430(n+1))` -/
def P16177802490757105991.Spec : Prop :=
  ∀ n, P16177802490757105991.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P3450654675784853216

`A028234(A343430(n+2+n))`
-/

namespace A343431.P3450654675784853216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A343430 (n + 2 + n)).toNat

end

end A343431.P3450654675784853216

namespace A343431

/-- `A028234(A343430(n+2+n))` -/
def P3450654675784853216.Spec : Prop :=
  ∀ n, P3450654675784853216.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P1322008285803973879

`A343430(A166466(n+1))`
-/

namespace A343431.P1322008285803973879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A166466 (n + 1)).toNat

end

end A343431.P1322008285803973879

namespace A343431

/-- `A343430(A166466(n+1))` -/
def P1322008285803973879.Spec : Prop :=
  ∀ n, P1322008285803973879.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P2424112778773906798

`A343430(A394497(n+1))`
-/

namespace A343431.P2424112778773906798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A394497 (n + 1)).toNat

end

end A343431.P2424112778773906798

namespace A343431

/-- `A343430(A394497(n+1))` -/
def P2424112778773906798.Spec : Prop :=
  ∀ n, P2424112778773906798.a n = A343431 (n + 1)

end A343431

/-! ## A343431.P14834136414642692821

`gcd(n+1, A326314(n+1))`
-/

namespace A343431.P14834136414642692821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326314 (n + 1))

end

end A343431.P14834136414642692821

namespace A343431

/-- `gcd(n+1, A326314(n+1))` -/
def P14834136414642692821.Spec : Prop :=
  ∀ n, (P14834136414642692821.a n : ℤ) = A343431 (n + 1)

end A343431

/-! ## A343431.P5984953919081416243

`gcd(A343430(n+1), A396748(n))`
-/

namespace A343431.P5984953919081416243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343430 (n + 1)) (A396748 n)

end

end A343431.P5984953919081416243

namespace A343431

/-- `gcd(A343430(n+1), A396748(n))` -/
def P5984953919081416243.Spec : Prop :=
  ∀ n, (P5984953919081416243.a n : ℤ) = A343431 (n + 1)

end A343431

/-! ## A343431.P1260415966262979332

`A343430(gcd(n+1, A261274(n)))`
-/

namespace A343431.P1260415966262979332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (Int.gcd (n + 1 : ℤ) (A261274 n))

end

end A343431.P1260415966262979332

namespace A343431

/-- `A343430(gcd(n+1, A261274(n)))` -/
def P1260415966262979332.Spec : Prop :=
  ∀ n, P1260415966262979332.a n = A343431 (n + 1)

end A343431

/-!
# A343434: Sorted numbers of (undirected) Hamiltonian cycles in the graphs of the Catalan solids (the Archimedean duals).

The programs for A343434, there is no canonical definition to state claims against.
-/

/-! ## A343434.P4949951791071709778

`6*A180649(C(n, 3))²`
-/

namespace A343434.P4949951791071709778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A180649 (Nat.choose n 3) ^ 2

end

end A343434.P4949951791071709778

/-! ## A343434.P818914797106158428

`6*floor(n!/A006530(5^n+1))²`
-/

namespace A343434.P818914797106158428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(Nat.factorial n : ℚ) / (A006530 (5 ^ n + 1) : ℚ)⌋ ^ 2

end

end A343434.P818914797106158428

/-! ## A343434.P6074454177652999070

`A165071(A005815(n))`
-/

namespace A343434.P6074454177652999070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 (A005815 n).toNat

end

end A343434.P6074454177652999070

/-! ## A343434.P58593711065300354

`A316400(A385913(n))`
-/

namespace A343434.P58593711065300354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316400 (A385913 n).toNat

end

end A343434.P58593711065300354

/-!
# A343435: Maximum value of the number of different internal squarefree extensions for words of length n in the set of all finite squarefree words over the alphabet A3 = {1,2,3}.

The programs for A343435, there is no canonical definition to state claims against.
-/

/-! ## A343435.P12732280450166325841

`A130713(A039900(n))+A086161(n)`
-/

namespace A343435.P12732280450166325841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A039900 n).toNat + A086161 n

end

end A343435.P12732280450166325841

/-! ## A343435.P11540925311356797157

`A130713(A000045(n))+A086161(n)`
-/

namespace A343435.P11540925311356797157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A000045 n).toNat + A086161 n

end

end A343435.P11540925311356797157

/-! ## A343435.P18332852276756018357

`A084558(xor(A098575(n), A099654(n+1)))`
-/

namespace A343435.P18332852276756018357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (Int.xor (A098575 n) (A099654 (n + 1))).toNat

end

end A343435.P18332852276756018357

/-!
# A343439: G.f.: 1 + 2^0*x/(1 + 2^1*x/(1 + 2^2*x/(1 + 2^3*x/(1 + 2^4*x/(1 + ...))))).

The programs for A343439, there is no canonical definition to state claims against.
-/

/-! ## A343439.P4521433450914783822

`A128497(A002528(n+1))`
-/

namespace A343439.P4521433450914783822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128497 (A002528 (n + 1)).toNat

end

end A343439.P4521433450914783822

/-!
# A343440: a(n) = Sum_{d|n, gcd(d, n/d) = 1} (-1)^omega(n/d) * 2^(d-1).

The programs for A343440, the canonical program `A343440.P31135175070880535` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343440 has offset 1).

The definition of A343440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343440.P31135175070880535

`∑{d}[A003557(n+1), A000740((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A343440

/-- `∑{d}[A003557(n+1), A000740((n+1)/#)]` -/
def P31135175070880535.Spec : Prop :=
  ∀ n, P31135175070880535.a n = A343440 (n + 1)

theorem P31135175070880535.correct : P31135175070880535.Spec := by
  intro n
  simp only [A343440, Nat.add_sub_cancel]

end A343440

/-! ## A343440.P13638393263253410413

`or(A274638(n), A319755(n))`
-/

namespace A343440.P13638393263253410413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A274638 n) (A319755 n)

end

end A343440.P13638393263253410413

namespace A343440

/-- `or(A274638(n), A319755(n))` -/
def P13638393263253410413.Spec : Prop :=
  ∀ n, P13638393263253410413.a n = A343440 (n + 1)

end A343440

/-! ## A343440.P17016769901518156072

`or(A000005(A119372(n)), A274638(n))`
-/

namespace A343440.P17016769901518156072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A119372 n).toNat) (A274638 n)

end

end A343440.P17016769901518156072

namespace A343440

/-- `or(A000005(A119372(n)), A274638(n))` -/
def P17016769901518156072.Spec : Prop :=
  ∀ n, P17016769901518156072.a n = A343440 (n + 1)

end A343440

/-! ## A343440.P13544288533688141062

`or(A000005(A327060(n)), A274638(n))`
-/

namespace A343440.P13544288533688141062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A327060 n).toNat) (A274638 n)

end

end A343440.P13544288533688141062

namespace A343440

/-- `or(A000005(A327060(n)), A274638(n))` -/
def P13544288533688141062.Spec : Prop :=
  ∀ n, P13544288533688141062.a n = A343440 (n + 1)

end A343440

/-! ## A343440.P8548531213505848542

`A175298(A000740(n+1)^A211226(n))`
-/

namespace A343440.P8548531213505848542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (SequenceMachineLib.roundAway ((A000740 (n + 1) : ℚ) ^ (A211226 n : ℤ))).toNat

end

end A343440.P8548531213505848542

namespace A343440

/-- `A175298(A000740(n+1)^A211226(n))` -/
def P8548531213505848542.Spec : Prop :=
  ∀ n, P8548531213505848542.a n = A343440 (n + 1)

end A343440

/-!
# A343441: G.f.: 1 + C(1)*x/(1 + C(2)*x/(1 + C(3)*x/(1 + C(4)*x/(1 + C(5)*x/(1 +...))))), where C(n) are the Catalan numbers A000108.

The programs for A343441, there is no canonical definition to state claims against.
-/

/-! ## A343441.P3722130565558203881

`(1-A103677(1/2^-n))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A343441.P3722130565558203881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - A103677 (SequenceMachineLib.roundAway (1 / (2 : ℚ) ^ (-(n : ℤ) : ℤ))).toNat) * a (n - 1)

end

end A343441.P3722130565558203881

/-!
# A343442: If n = Product (p_j^k_j) then a(n) = Product (p_j + 2), with a(1) = 1.

The programs for A343442, the canonical program `A343442.P16166498586330522036` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343442 has offset 1).

The definition of A343442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343442.P16166498586330522036

`∏{p}[n+1, #+2]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343442

/-- `∏{p}[n+1, #+2]` -/
def P16166498586330522036.Spec : Prop :=
  ∀ n, (P16166498586330522036.a n : ℤ) = A343442 (n + 1)

theorem P16166498586330522036.correct : P16166498586330522036.Spec := by
  intro n
  simp only [A343442, Nat.add_sub_cancel]

end A343442

/-! ## A343442.P6300509536593904829

`exp(∑{p}[n+1, log(#+2)])`
-/

namespace A343442.P6300509536593904829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p + 2 : ℝ))

end

end A343442.P6300509536593904829

namespace A343442

/-- `exp(∑{p}[n+1, log(#+2)])` -/
def P6300509536593904829.Spec : Prop :=
  ∀ n, P6300509536593904829.a n = (A343442 (n + 1) : ℝ)

end A343442

/-! ## A343442.P15121829988671033038

`2^∑{p}[n+1, log2(#+2)]`
-/

namespace A343442.P15121829988671033038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p + 2 : ℝ))

end

end A343442.P15121829988671033038

namespace A343442

/-- `2^∑{p}[n+1, log2(#+2)]` -/
def P15121829988671033038.Spec : Prop :=
  ∀ n, P15121829988671033038.a n = (A343442 (n + 1) : ℝ)

end A343442

/-! ## A343442.P6043620011684122401

`A003969(∏{p}[n+1, #])`
-/

namespace A343442.P6043620011684122401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003969 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A343442.P6043620011684122401

namespace A343442

/-- `A003969(∏{p}[n+1, #])` -/
def P6043620011684122401.Spec : Prop :=
  ∀ n, P6043620011684122401.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P18407453580092430011

`A007429(∏{p}[n+1, #])`
-/

namespace A343442.P18407453580092430011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A343442.P18407453580092430011

namespace A343442

/-- `A007429(∏{p}[n+1, #])` -/
def P18407453580092430011.Spec : Prop :=
  ∀ n, P18407453580092430011.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P17373408974525331336

`A060648(∏{p}[n+1, #])`
-/

namespace A343442.P17373408974525331336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A343442.P17373408974525331336

namespace A343442

/-- `A060648(∏{p}[n+1, #])` -/
def P17373408974525331336.Spec : Prop :=
  ∀ n, P17373408974525331336.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P15893478592077963058

`A107758(∏{p}[n+1, #])`
-/

namespace A343442.P15893478592077963058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107758 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A343442.P15893478592077963058

namespace A343442

/-- `A107758(∏{p}[n+1, #])` -/
def P15893478592077963058.Spec : Prop :=
  ∀ n, P15893478592077963058.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P17682875330894604216

`A107759(∏{p}[n+1, #])`
-/

namespace A343442.P17682875330894604216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107759 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A343442.P17682875330894604216

namespace A343442

/-- `A107759(∏{p}[n+1, #])` -/
def P17682875330894604216.Spec : Prop :=
  ∀ n, P17682875330894604216.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P7898475467864865349

`A166590(∏{p}[n+1, #])`
-/

namespace A343442.P7898475467864865349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A343442.P7898475467864865349

namespace A343442

/-- `A166590(∏{p}[n+1, #])` -/
def P7898475467864865349.Spec : Prop :=
  ∀ n, P7898475467864865349.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P1097303872830491670

`A319132(∏{p}[n+1, #])`
-/

namespace A343442.P1097303872830491670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319132 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A343442.P1097303872830491670

namespace A343442

/-- `A319132(∏{p}[n+1, #])` -/
def P1097303872830491670.Spec : Prop :=
  ∀ n, P1097303872830491670.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P4971659945014027957

`A328485(∏{p}[n+1, #])`
-/

namespace A343442.P4971659945014027957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328485 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A343442.P4971659945014027957

namespace A343442

/-- `A328485(∏{p}[n+1, #])` -/
def P4971659945014027957.Spec : Prop :=
  ∀ n, P4971659945014027957.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P10417601272685307919

`A003969(A007947(n+1))`
-/

namespace A343442.P10417601272685307919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003969 (A007947 (n + 1)).toNat

end

end A343442.P10417601272685307919

namespace A343442

/-- `A003969(A007947(n+1))` -/
def P10417601272685307919.Spec : Prop :=
  ∀ n, P10417601272685307919.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P2492785967065727251

`∑{d}[A007947(n+1), A000203(#)]`
-/

namespace A343442.P2492785967065727251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000203 d

end

end A343442.P2492785967065727251

namespace A343442

/-- `∑{d}[A007947(n+1), A000203(#)]` -/
def P2492785967065727251.Spec : Prop :=
  ∀ n, P2492785967065727251.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P14904523315840703999

`A060648((n+1)/A003557(n+1))`
-/

namespace A343442.P14904523315840703999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A343442.P14904523315840703999

namespace A343442

/-- `A060648((n+1)/A003557(n+1))` -/
def P14904523315840703999.Spec : Prop :=
  ∀ n, P14904523315840703999.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P4060104641887923337

`A107758((n+1)/A003557(n+1))`
-/

namespace A343442.P4060104641887923337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107758 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A343442.P4060104641887923337

namespace A343442

/-- `A107758((n+1)/A003557(n+1))` -/
def P4060104641887923337.Spec : Prop :=
  ∀ n, P4060104641887923337.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P11450365686639465201

`A107759(A064549(n+1)/(n+1))`
-/

namespace A343442.P11450365686639465201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107759 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A343442.P11450365686639465201

namespace A343442

/-- `A107759(A064549(n+1)/(n+1))` -/
def P11450365686639465201.Spec : Prop :=
  ∀ n, P11450365686639465201.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P9697862831151367834

`A107759(A007947(2*n+1-n))`
-/

namespace A343442.P9697862831151367834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107759 (A007947 (2 * n + 1 - n)).toNat

end

end A343442.P9697862831151367834

namespace A343442

/-- `A107759(A007947(2*n+1-n))` -/
def P9697862831151367834.Spec : Prop :=
  ∀ n, P9697862831151367834.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P5021801589217689127

`∑{d}[n+1, lcm(A000203(#), A008683(#))]`
-/

namespace A343442.P5021801589217689127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lcm (A000203 d) (A008683 d)

end

end A343442.P5021801589217689127

namespace A343442

/-- `∑{d}[n+1, lcm(A000203(#), A008683(#))]` -/
def P5021801589217689127.Spec : Prop :=
  ∀ n, (P5021801589217689127.a n : ℤ) = A343442 (n + 1)

end A343442

/-! ## A343442.P10038838224521855487

`∑{d}[n+1, A046970(#)*A160889((n+1)/#)]`
-/

namespace A343442.P10038838224521855487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A160889 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343442.P10038838224521855487

namespace A343442

/-- `∑{d}[n+1, A046970(#)*A160889((n+1)/#)]` -/
def P10038838224521855487.Spec : Prop :=
  ∀ n, P10038838224521855487.a n = A343442 (n + 1)

end A343442

/-! ## A343442.P14867181482446447530

`∑{d}[n+1, A008966(#)*A367991((n+1)/#)]`
-/

namespace A343442.P14867181482446447530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A367991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343442.P14867181482446447530

namespace A343442

/-- `∑{d}[n+1, A008966(#)*A367991((n+1)/#)]` -/
def P14867181482446447530.Spec : Prop :=
  ∀ n, P14867181482446447530.a n = A343442 (n + 1)

end A343442

/-!
# A343443: If n = Product (p_j^k_j) then a(n) = Product (k_j + 2), with a(1) = 1.

The programs for A343443, the canonical program `A343443.P12415919070870733576` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343443 has offset 1).

The definition of A343443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343443.P1565134825724379775

`A363194(A348018(n+1))`
-/

namespace A343443.P1565134825724379775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363194 (A348018 (n + 1)).toNat

end

end A343443.P1565134825724379775

namespace A343443

/-- `A363194(A348018(n+1))` -/
def P1565134825724379775.Spec : Prop :=
  ∀ n, P1565134825724379775.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P12415919070870733576

`A000005(A064549(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343443

/-- `A000005(A064549(n+1))` -/
def P12415919070870733576.Spec : Prop :=
  ∀ n, P12415919070870733576.a n = A343443 (n + 1)

theorem P12415919070870733576.correct : P12415919070870733576.Spec := by
  intro n
  simp only [A343443, Nat.add_sub_cancel]

end A343443

/-! ## A343443.P11607798124795733847

`∏{e}[n+1, #+2]`
-/

namespace A343443.P11607798124795733847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 2)

end

end A343443.P11607798124795733847

namespace A343443

/-- `∏{e}[n+1, #+2]` -/
def P11607798124795733847.Spec : Prop :=
  ∀ n, (P11607798124795733847.a n : ℤ) = A343443 (n + 1)

end A343443

/-! ## A343443.P2836796656983278455

`exp(∑{e}[n+1, log(#+2)])`
-/

namespace A343443.P2836796656983278455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorization (f1 n) p + 2 : ℝ))

end

end A343443.P2836796656983278455

namespace A343443

/-- `exp(∑{e}[n+1, log(#+2)])` -/
def P2836796656983278455.Spec : Prop :=
  ∀ n, P2836796656983278455.a n = (A343443 (n + 1) : ℝ)

end A343443

/-! ## A343443.P11046685994902163317

`2^∑{e}[n+1, log2(#+2)]`
-/

namespace A343443.P11046685994902163317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 2 : ℝ))

end

end A343443.P11046685994902163317

namespace A343443

/-- `2^∑{e}[n+1, log2(#+2)]` -/
def P11046685994902163317.Spec : Prop :=
  ∀ n, P11046685994902163317.a n = (A343443 (n + 1) : ℝ)

end A343443

/-! ## A343443.P7481574527240444503

`∏{p}[n+1, val(n+1, #)+2]`
-/

namespace A343443.P7481574527240444503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p + 2)

end

end A343443.P7481574527240444503

namespace A343443

/-- `∏{p}[n+1, val(n+1, #)+2]` -/
def P7481574527240444503.Spec : Prop :=
  ∀ n, (P7481574527240444503.a n : ℤ) = A343443 (n + 1)

end A343443

/-! ## A343443.P1792780740504468051

`∑{d}[n+1, A056671(#)]`
-/

namespace A343443.P1792780740504468051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056671 d

end

end A343443.P1792780740504468051

namespace A343443

/-- `∑{d}[n+1, A056671(#)]` -/
def P1792780740504468051.Spec : Prop :=
  ∀ n, P1792780740504468051.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P1343798452474186917

`∑{d}[n+1, A000005(#)*A189021((n+1)/#)]`
-/

namespace A343443.P1343798452474186917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A189021 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343443.P1343798452474186917

namespace A343443

/-- `∑{d}[n+1, A000005(#)*A189021((n+1)/#)]` -/
def P1343798452474186917.Spec : Prop :=
  ∀ n, P1343798452474186917.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P3351692238675286031

`∑{d}[n+1, A034444(#)*A295316((n+1)/#)]`
-/

namespace A343443.P3351692238675286031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A295316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343443.P3351692238675286031

namespace A343443

/-- `∑{d}[n+1, A034444(#)*A295316((n+1)/#)]` -/
def P3351692238675286031.Spec : Prop :=
  ∀ n, P3351692238675286031.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P12736097510214083746

`∑{d}[n+1, A008966(#)*A322483((n+1)/#)]`
-/

namespace A343443.P12736097510214083746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A322483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343443.P12736097510214083746

namespace A343443

/-- `∑{d}[n+1, A008966(#)*A322483((n+1)/#)]` -/
def P12736097510214083746.Spec : Prop :=
  ∀ n, P12736097510214083746.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P11108036537648997949

`∑{d}[n+1, A271102(#)*A332730((n+1)/#)]`
-/

namespace A343443.P11108036537648997949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A332730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343443.P11108036537648997949

namespace A343443

/-- `∑{d}[n+1, A271102(#)*A332730((n+1)/#)]` -/
def P11108036537648997949.Spec : Prop :=
  ∀ n, P11108036537648997949.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P17065005369818698938

`A064553(A003961(A181819(n+1)))`
-/

namespace A343443.P17065005369818698938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A003961 (A181819 (n + 1)).toNat).toNat

end

end A343443.P17065005369818698938

namespace A343443

/-- `A064553(A003961(A181819(n+1)))` -/
def P17065005369818698938.Spec : Prop :=
  ∀ n, P17065005369818698938.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P12683092374907475580

`A000005((n+1)*∏{p}[n+1, #])`
-/

namespace A343443.P12683092374907475580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A343443.P12683092374907475580

namespace A343443

/-- `A000005((n+1)*∏{p}[n+1, #])` -/
def P12683092374907475580.Spec : Prop :=
  ∀ n, P12683092374907475580.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P2886847709303516377

`A000005((n+1)/∏{p}[n+1, 1/#])`
-/

namespace A343443.P2886847709303516377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ)))).toNat

end

end A343443.P2886847709303516377

namespace A343443

/-- `A000005((n+1)/∏{p}[n+1, 1/#])` -/
def P2886847709303516377.Spec : Prop :=
  ∀ n, P2886847709303516377.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P5359225890502735042

`A000005(A078310(n+1)-1)`
-/

namespace A343443.P5359225890502735042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A078310 (n + 1) - 1).toNat

end

end A343443.P5359225890502735042

namespace A343443

/-- `A000005(A078310(n+1)-1)` -/
def P5359225890502735042.Spec : Prop :=
  ∀ n, P5359225890502735042.a n = A343443 (n + 1)

theorem P5359225890502735042.correct : P5359225890502735042.Spec := by
  intro n
  simp only [A343443, Nat.add_sub_cancel, A343443.P5359225890502735042.a, A343443.P12415919070870733576.a, A000005, A000005.P16091521709108585461.a, A064549, A064549.P18019400484953624932.a, A078310, A078310.P14219530768046252322.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343443

/-! ## A343443.P14599648583609080227

`A000005((n+1)*A007947(n+1))`
-/

namespace A343443.P14599648583609080227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A343443.P14599648583609080227

namespace A343443

/-- `A000005((n+1)*A007947(n+1))` -/
def P14599648583609080227.Spec : Prop :=
  ∀ n, P14599648583609080227.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P2298539389689081255

`A000005((n+1)*A019555(A019555(n+1)))`
-/

namespace A343443.P2298539389689081255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A019555 (A019555 (n + 1)).toNat).toNat

end

end A343443.P2298539389689081255

namespace A343443

/-- `A000005((n+1)*A019555(A019555(n+1)))` -/
def P2298539389689081255.Spec : Prop :=
  ∀ n, P2298539389689081255.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P11789480769688790485

`A000005((n+1)*A053166(A053166(n+1)))`
-/

namespace A343443.P11789480769688790485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A053166 (A053166 (n + 1)).toNat).toNat

end

end A343443.P11789480769688790485

namespace A343443

/-- `A000005((n+1)*A053166(A053166(n+1)))` -/
def P11789480769688790485.Spec : Prop :=
  ∀ n, P11789480769688790485.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P2703194196988598500

`A000005(A361264(n+1)/A007947(n+1))`
-/

namespace A343443.P2703194196988598500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A361264 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A343443.P2703194196988598500

namespace A343443

/-- `A000005(A361264(n+1)/A007947(n+1))` -/
def P2703194196988598500.Spec : Prop :=
  ∀ n, P2703194196988598500.a n = A343443 (n + 1)

end A343443

/-! ## A343443.P7311643060756244623

`A365173(A278254(n+1))`
-/

namespace A343443.P7311643060756244623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365173 (A278254 (n + 1)).toNat

end

end A343443.P7311643060756244623

namespace A343443

/-- `A365173(A278254(n+1))` -/
def P7311643060756244623.Spec : Prop :=
  ∀ n, P7311643060756244623.a n = A343443 (n + 1)

end A343443

/-!
# A343444: Smallest nonnegative integer such that altering at most one of its digits cannot result in a previous term.

The programs for A343444, there is no canonical definition to state claims against.
-/

/-! ## A343444.P4620124004729940057

`eq[0, A346511(n)]`
-/

namespace A343444.P4620124004729940057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343444.P4620124004729940057

/-! ## A343444.P14808903594679908646

`eq[0, A160700(A102489(n))]`
-/

namespace A343444.P14808903594679908646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 (A102489 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343444.P14808903594679908646

/-! ## A343444.P6237741221616607535

`lt[A160700(A102489(2*n-n)), 1]`
-/

namespace A343444.P6237741221616607535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 (A102489 (2 * n - n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343444.P6237741221616607535

/-! ## A343444.P8618209654178023230

`lt[A160700(A102489(n))*A299257(n+1), 1]`
-/

namespace A343444.P8618209654178023230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 (A102489 n).toNat * A299257 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343444.P8618209654178023230

/-! ## A343444.P7125211071762934271

`lt[A160700(A102489(n))*A302202(n+1), 19]`
-/

namespace A343444.P7125211071762934271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 (A102489 n).toNat * A302202 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343444.P7125211071762934271

/-! ## A343444.P10817067710937180828

`lt[A160700(A102489(n))*A237593(2*n+1), 1]`
-/

namespace A343444.P10817067710937180828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 (A102489 n).toNat * A237593 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343444.P10817067710937180828

/-!
# A343445: Coefficients of the series S(p, q) for which (-sqrt(p))*S converges to the largest real root of x^3 - p*x + q for 0 < p and 0 < q < 2*(p/3)^(3/2).

The programs for A343445, the canonical program `A343445.P867553585936514653` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343445 has offset 0).

The definition of A343445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343445.P867553585936514653

`3*(3*n-5)*(3*n-7)*a(n-2)` with `a(0)=-1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343445

/-- `3*(3*n-5)*(3*n-7)*a(n-2)` -/
def P867553585936514653.Spec : Prop :=
  ∀ n, P867553585936514653.a n = A343445 n

theorem P867553585936514653.correct : P867553585936514653.Spec := by
  intro n
  simp only [A343445]

end A343445

/-! ## A343445.P13889416187383380892

`A370419(A001844(n))-A000007(n)`
-/

namespace A343445.P13889416187383380892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (A001844 n).toNat - A000007 n

end

end A343445.P13889416187383380892

namespace A343445

/-- `A370419(A001844(n))-A000007(n)` -/
def P13889416187383380892.Spec : Prop :=
  ∀ n, P13889416187383380892.a n = A343445 n

end A343445

/-!
# A343446: Coefficients of the series S(p, q) for which -(p^(1/3))*S converges to the largest real root of x^4 - p*x + q, where 0 < p and 0 < q < 3*(p/4)^(4/3).

The programs for A343446, the canonical program `A343446.P6899511362719388569` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343446 has offset 0).

The definition of A343446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343446.P6899511362719388569

`4*(4*n-7)*(4*n-10)*(4*n-13)*a(n-3)` with `a(0)=-1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343446

/-- `4*(4*n-7)*(4*n-10)*(4*n-13)*a(n-3)` -/
def P6899511362719388569.Spec : Prop :=
  ∀ n, P6899511362719388569.a n = A343446 n

theorem P6899511362719388569.correct : P6899511362719388569.Spec := by
  intro n
  simp only [A343446]

end A343446

/-!
# A343448: Primes p such that p+q*(r+s) is prime, where p,q,r,s are consecutive primes.

The programs for A343448, there is no canonical definition to state claims against.
-/

/-! ## A343448.P10347211185308065427

`record[A352442(A032886(n+1)+A023763(n+1))]`
-/

namespace A343448.P10347211185308065427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (A032886 (n + 1) + A023763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343448.P10347211185308065427

/-! ## A343448.P3953085112914874385

`A352442(A046807(n+1)+2)`
-/

namespace A343448.P3953085112914874385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (A046807 (n + 1) + 2).toNat

end

end A343448.P3953085112914874385

/-! ## A343448.P1817420817927944914

`A003961(p?[eq[1, A047895(n+1)]])`
-/

namespace A343448.P1817420817927944914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047895 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A343448.P1817420817927944914

/-! ## A343448.P12482982340482024908

`A003961(p?[n*A047895(n+1)])`
-/

namespace A343448.P12482982340482024908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A047895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343448.P12482982340482024908

/-!
# A343450: Integers whose nonincreasing digits are nonzero and at most one more than their position.

The programs for A343450, there is no canonical definition to state claims against.
-/

/-! ## A343450.P13850968996159826502

`∩[A097904(n+1), A101248(n+1)]`
-/

namespace A343450.P13850968996159826502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343450.P13850968996159826502

/-! ## A343450.P17431088792224664074

`∩[A101248(n+1), A357758(n+1)]`
-/

namespace A343450.P17431088792224664074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343450.P17431088792224664074

/-!
# A343451: Primes in A014342.

The programs for A343451, there is no canonical definition to state claims against.
-/

/-! ## A343451.P5178665410064448111

`p?[A014342(n+1)]`
-/

namespace A343451.P5178665410064448111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343451.P5178665410064448111

/-!
# A343452: Numbers k such that A085942(k) = 0.

The programs for A343452, the canonical program `A343452.P6602143482175885216` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343452 has offset 1).

The definition of A343452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343452.P15014681635196048265

`eq[0, A085942(n)]`
-/

namespace A343452.P15014681635196048265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343452.P15014681635196048265

namespace A343452

/-- `eq[0, A085942(n)]` -/
def P15014681635196048265.Spec : Prop :=
  ∀ n, (P15014681635196048265.a n : ℤ) = A343452 (n + 1)

end A343452

/-! ## A343452.P6602143482175885216

`eq[0, A111707(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A343452

/-- `eq[0, A111707(n)]` -/
def P6602143482175885216.Spec : Prop :=
  ∀ n, (P6602143482175885216.a n : ℤ) = A343452 (n + 1)

theorem P6602143482175885216.correct : P6602143482175885216.Spec := by
  intro n
  simp only [A343452, Nat.add_sub_cancel]

end A343452

/-! ## A343452.P4777479116088007431

`2*lt[A111707(2*n), 1]`
-/

namespace A343452.P4777479116088007431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343452.P4777479116088007431

namespace A343452

/-- `2*lt[A111707(2*n), 1]` -/
def P4777479116088007431.Spec : Prop :=
  ∀ n, (P4777479116088007431.a n : ℤ) = A343452 (n + 1)

end A343452

/-! ## A343452.P1910542798930512921

`record[gcd(10*n, A111707(10*n))]`
-/

namespace A343452.P1910542798930512921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 * n : ℤ) (A111707 (10 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343452.P1910542798930512921

namespace A343452

/-- `record[gcd(10*n, A111707(10*n))]` -/
def P1910542798930512921.Spec : Prop :=
  ∀ n, (P1910542798930512921.a n : ℤ) = A343452 (n + 1)

end A343452

/-! ## A343452.P15004656048663466848

`eq[A007953(n), A064834(n)]`
-/

namespace A343452.P15004656048663466848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343452.P15004656048663466848

namespace A343452

/-- `eq[A007953(n), A064834(n)]` -/
def P15004656048663466848.Spec : Prop :=
  ∀ n, (P15004656048663466848.a n : ℤ) = A343452 (n + 1)

end A343452

/-! ## A343452.P15783199335822877808

`record[A338827(n)-A004086(n)]`
-/

namespace A343452.P15783199335822877808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n - A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343452.P15783199335822877808

namespace A343452

/-- `record[A338827(n)-A004086(n)]` -/
def P15783199335822877808.Spec : Prop :=
  ∀ n, P15783199335822877808.a n = A343452 (n + 1)

end A343452

/-! ## A343452.P563298033372037702

`lt[A111707(n), A054977(n)]`
-/

namespace A343452.P563298033372037702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343452.P563298033372037702

namespace A343452

/-- `lt[A111707(n), A054977(n)]` -/
def P563298033372037702.Spec : Prop :=
  ∀ n, (P563298033372037702.a n : ℤ) = A343452 (n + 1)

end A343452

/-! ## A343452.P14594460992875377123

`eq[1, A032762(A355223(n+1))]`
-/

namespace A343452.P14594460992875377123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032762 (A355223 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343452.P14594460992875377123

namespace A343452

/-- `eq[1, A032762(A355223(n+1))]` -/
def P14594460992875377123.Spec : Prop :=
  ∀ n, (P14594460992875377123.a n : ℤ) = A343452 (n + 1)

end A343452

/-! ## A343452.P16650963207128946392

`eq[2*A064834(n), A169805(n)]`
-/

namespace A343452.P16650963207128946392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343452.P16650963207128946392

namespace A343452

/-- `eq[2*A064834(n), A169805(n)]` -/
def P16650963207128946392.Spec : Prop :=
  ∀ n, (P16650963207128946392.a n : ℤ) = A343452 (n + 1)

end A343452

/-!
# A343453: The number of 3's minus the number of 2's among the first n terms of A342101.

The programs for A343453, there is no canonical definition to state claims against.
-/

/-! ## A343453.P7911406693589688107

`∑[A056594(comp[or(n, n-1)+n+1])]`
-/

namespace A343453.P7911406693589688107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P7911406693589688107

/-! ## A343453.P2373816760141900888

`∑[A131379(comp[or(n, n-1)+n+1])]`
-/

namespace A343453.P2373816760141900888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P2373816760141900888

/-! ## A343453.P3932051599844778462

`∑[A056594(comp[or(n, n+1)+n+1]+1)]`
-/

namespace A343453.P3932051599844778462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P3932051599844778462

/-! ## A343453.P12406605551318700666

`∑[A131379(comp[or(n, n+1)+n+1]+1)]`
-/

namespace A343453.P12406605551318700666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P12406605551318700666

/-! ## A343453.P4909584726285639488

`∑[A056594(comp[A322015(n)])]`
-/

namespace A343453.P4909584726285639488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P4909584726285639488

/-! ## A343453.P8363483197435068488

`∑[A131379(comp[A322015(n)])]`
-/

namespace A343453.P8363483197435068488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P8363483197435068488

/-! ## A343453.P2729581434070238686

`∑[A056594(A091072(n+1))]`
-/

namespace A343453.P2729581434070238686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A091072 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P2729581434070238686

/-! ## A343453.P16910890326567563748

`∑[A056594(eq[1, A089309(n)])]`
-/

namespace A343453.P16910890326567563748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P16910890326567563748

/-! ## A343453.P8732783666138209100

`∑[A056594(∑[A088742(n+1)])]`
-/

namespace A343453.P8732783666138209100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088742 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P8732783666138209100

/-! ## A343453.P6846358027278558423

`∑[A073097(A091072(n+1)+1)]`
-/

namespace A343453.P6846358027278558423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A091072 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343453.P6846358027278558423

/-!
# A343454: Numbers k such that k^2+2*A001414(k) and k^2-2*A001414(k) are primes.

The programs for A343454, there is no canonical definition to state claims against.
-/

/-! ## A343454.P4768209584269142302

`A096788(A330876(n)+A246655(n+1))`
-/

namespace A343454.P4768209584269142302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096788 (A330876 n + A246655 (n + 1)).toNat

end

end A343454.P4768209584269142302

/-!
# A343455: Numbers where A244112(n) = n.

The programs for A343455, there is no canonical definition to state claims against.
-/

/-! ## A343455.P8516871688736700283

`∩[A109776(n+1), A278441(n+1)]`
-/

namespace A343455.P8516871688736700283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343455.P8516871688736700283

/-! ## A343455.P7006241796553898546

`∩[A278440(n+1), A278441(n+1)]`
-/

namespace A343455.P7006241796553898546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343455.P7006241796553898546

/-!
# A343456: Indices k for which A343376(k+1) = A343376(k)/k.

The programs for A343456, there is no canonical definition to state claims against.
-/

/-! ## A343456.P5870531827701003813

`∑[A344712(n)]-1`
-/

namespace A343456.P5870531827701003813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A343456.P5870531827701003813

/-! ## A343456.P15026799968678275141

`A023443(∑[A344712(n)])`
-/

namespace A343456.P15026799968678275141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343456.P15026799968678275141

/-! ## A343456.P12245456311179158149

`abs(A024000(∑[A344712(n)]))`
-/

namespace A343456.P12245456311179158149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A343456.P12245456311179158149

/-! ## A343456.P1920068594267340185

`A023444(∑[A344712(n)]+1)`
-/

namespace A343456.P1920068594267340185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A343456.P1920068594267340185

/-! ## A343456.P4296635641282291361

`A004275(∑[A344712(n)])/2`
-/

namespace A343456.P4296635641282291361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344712 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A343456.P4296635641282291361

/-! ## A343456.P3754626484854247258

`∑[A344712(n)/A054977(n)]`
-/

namespace A343456.P3754626484854247258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344712 n : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343456.P3754626484854247258

/-! ## A343456.P1950381765251875030

`ceil(A004280(∑[A344712(n)])/2)`
-/

namespace A343456.P1950381765251875030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004280 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌉

end

end A343456.P1950381765251875030

/-! ## A343456.P13730453784306327988

`∑[A344712(n)/A000038(n)!]`
-/

namespace A343456.P13730453784306327988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344712 n : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343456.P13730453784306327988

/-! ## A343456.P11014713633192822711

`∑[A344712(n)/(A000007(n)+1)]`
-/

namespace A343456.P11014713633192822711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344712 n : ℚ) / (A000007 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343456.P11014713633192822711

/-! ## A343456.P15094604617194587501

`∑[A344712(n)^and(1, A000040(n+1))]`
-/

namespace A343456.P15094604617194587501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344712 n : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343456.P15094604617194587501

/-!
# A343457: a(n) = A343376(A343456(n)+1) for n >= 1.

The programs for A343457, there is no canonical definition to state claims against.
-/

/-! ## A343457.P2852334476576895669

`A343376(A343456(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343457.P2852334476576895669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343376 (A343456 (n + 1) + 1).toNat

end

end A343457.P2852334476576895669

/-! ## A343457.P15942769015273669570

`A343376(∑[A344712(n)])`
-/

namespace A343457.P15942769015273669570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343457.P15942769015273669570

/-! ## A343457.P3461913935824202857

`A344709(n+1)/A343456(n+1)`
-/

namespace A343457.P3461913935824202857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344709 (n + 1) : ℚ) / (A343456 (n + 1) : ℚ)

end

end A343457.P3461913935824202857

/-! ## A343457.P2860390173641286329

`A344709(n+1)/(∑[A344712(n)]-1)`
-/

namespace A343457.P2860390173641286329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344712 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344709 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ)

end

end A343457.P2860390173641286329

/-! ## A343457.P1965371161828440993

`A344709(n+1)/∑[A344712(n)/A014963(4*n+2)]`
-/

namespace A343457.P1965371161828440993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344712 n : ℚ) / (A014963 (4 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344709 (n + 1) : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343457.P1965371161828440993

/-!
# A343458: Distinct values of the least common multiple of initial segments of numbers of least prime signature (A025487).

The programs for A343458, there is no canonical definition to state claims against.
-/

/-! ## A343458.P13461060528719064638

`lcm(a(n-1), A100778(n+1))` with `a(0)=1`
-/

namespace A343458.P13461060528719064638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A100778 (n + 1))

end

end A343458.P13461060528719064638

/-! ## A343458.P9907838097363335556

`a(n-1)*A343534(n)` with `a(0)=1`
-/

namespace A343458.P9907838097363335556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A343534 n

end

end A343458.P9907838097363335556

/-! ## A343458.P8514098852987915846

`∏[A343534(A000038(a(n-1))+n)]` with `a(0)=1`
-/

namespace A343458.P8514098852987915846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A343534 (A000038 (f1 (n - 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A343458.P8514098852987915846

/-! ## A343458.P11945027833969712673

`∏[A343534(A000038(n)+n)]/2`
-/

namespace A343458.P11945027833969712673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343534 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A343458.P11945027833969712673

/-! ## A343458.P17215910823787276741

`∏[A343534(n+1)]/A343534(n+1)`
-/

namespace A343458.P17215910823787276741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343534 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A343534 (n + 1) : ℚ)

end

end A343458.P17215910823787276741

/-!
# A343461: a(n) is the maximal number of regular n-gons that can be arranged around a vertex without overlapping.

The programs for A343461, the canonical program `A343461.P17690203611575598467` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343461 has offset 3).

The definition of A343461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343461.P17690203611575598467

`floor(2*(n+3)/(n+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343461

/-- `floor(2*(n+3)/(n+1))` -/
def P17690203611575598467.Spec : Prop :=
  ∀ n, P17690203611575598467.a n = A343461 (n + 3)

theorem P17690203611575598467.correct : P17690203611575598467.Spec := by
  intro n
  simp only [A343461, Nat.add_sub_cancel]

end A343461

/-!
# A343463: The number of connected graphs on n nodes that can be induced subgraphs of a Hamming graph.

The programs for A343463, there is no canonical definition to state claims against.
-/

/-! ## A343463.P13659421964856584409

`A090018(A350839(n))+A058488(n)`
-/

namespace A343463.P13659421964856584409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090018 (A350839 n).toNat + A058488 n

end

end A343463.P13659421964856584409

/-! ## A343463.P14981080330158942178

`A219652(A217924(n)-A067439(n+1))`
-/

namespace A343463.P14981080330158942178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A217924 n - A067439 (n + 1)).toNat

end

end A343463.P14981080330158942178

/-! ## A343463.P17464250294716748392

`or(A061462(A226506(n)), A103293(n+1))`
-/

namespace A343463.P17464250294716748392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061462 (A226506 n).toNat) (A103293 (n + 1))

end

end A343463.P17464250294716748392

/-! ## A343463.P5540266931856324332

`or(A166408(A182751(n+1)), A345207(n+9))`
-/

namespace A343463.P5540266931856324332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166408 (A182751 (n + 1)).toNat) (A345207 (n + 9))

end

end A343463.P5540266931856324332

/-!
# A343465: a(n) = -(1/n) * Sum_{d|n} phi(n/d) * (-3)^d.

The programs for A343465, the canonical program `A343465.P4491986218114601855` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343465 has offset 1).

The definition of A343465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343465.P6018509467498116054

`∑{d}[n+1, A038064(#)]`
-/

namespace A343465.P6018509467498116054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038064 d

end

end A343465.P6018509467498116054

namespace A343465

/-- `∑{d}[n+1, A038064(#)]` -/
def P6018509467498116054.Spec : Prop :=
  ∀ n, P6018509467498116054.a n = A343465 (n + 1)

end A343465

/-! ## A343465.P12351627767435128988

`∑{d}[n+1, A038068(#)*A059841((n+1)/#-1)]`
-/

namespace A343465.P12351627767435128988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038068 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A343465.P12351627767435128988

namespace A343465

/-- `∑{d}[n+1, A038068(#)*A059841((n+1)/#-1)]` -/
def P12351627767435128988.Spec : Prop :=
  ∀ n, P12351627767435128988.a n = A343465 (n + 1)

end A343465

/-! ## A343465.P4491986218114601855

`3/(n+1)*A383000(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343465

/-- `3/(n+1)*A383000(n+1)` -/
def P4491986218114601855.Spec : Prop :=
  ∀ n, P4491986218114601855.a n = (A343465 (n + 1) : ℚ)

end A343465

/-! ## A343465.P12573943257862036052

`A382993(A034856(n+2))`
-/

namespace A343465.P12573943257862036052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382993 (A034856 (n + 2)).toNat

end

end A343465.P12573943257862036052

namespace A343465

/-- `A382993(A034856(n+2))` -/
def P12573943257862036052.Spec : Prop :=
  ∀ n, P12573943257862036052.a n = A343465 (n + 1)

end A343465

/-! ## A343465.P3846908642365931936

`A382993(eq[A074650(n+2), A154955(n+1)])`
-/

namespace A343465.P3846908642365931936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382993 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343465.P3846908642365931936

namespace A343465

/-- `A382993(eq[A074650(n+2), A154955(n+1)])` -/
def P3846908642365931936.Spec : Prop :=
  ∀ n, P3846908642365931936.a n = A343465 (n + 1)

end A343465

/-!
# A343466: a(n) = -(1/n) * Sum_{d|n} phi(n/d) * (-4)^d.

The programs for A343466, there is no canonical definition to state claims against.
-/

/-! ## A343466.P17148638876964997634

`∑{d}[n+1, A038065(#)]`
-/

namespace A343466.P17148638876964997634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038065 d

end

end A343466.P17148638876964997634

/-! ## A343466.P13721475198927789321

`∑{d}[n+1, A038069(#)*A059841((n+1)/#-1)]`
-/

namespace A343466.P13721475198927789321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038069 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A343466.P13721475198927789321

/-! ## A343466.P12503174040115264486

`A382993(lt[A264071(n+3), A207661(n+1)])`
-/

namespace A343466.P12503174040115264486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382993 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343466.P12503174040115264486

/-!
# A343467: a(n) = -(1/n) * Sum_{d|n} phi(n/d) * (-5)^d.

The programs for A343467, there is no canonical definition to state claims against.
-/

/-! ## A343467.P13652313324310361276

`∑{d}[n+1, A038066(#)]`
-/

namespace A343467.P13652313324310361276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038066 d

end

end A343467.P13652313324310361276

/-!
# A343471: Start of the first run of n or more consecutive primes using only prime digits.

The programs for A343471, there is no canonical definition to state claims against.
-/

/-! ## A343471.P658441644748645289

`A352312(n+1)+A262553(a(A262553(n)))` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A343471.P658441644748645289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  A352312 (n + 1) + A262553 (a (A262553 n).toNat).toNat

end

end A343471.P658441644748645289

/-! ## A343471.P12948847643094365213

`A352312(A352041(n)+3)`
-/

namespace A343471.P12948847643094365213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352312 (A352041 n + 3).toNat

end

end A343471.P12948847643094365213

/-! ## A343471.P4306290355392920566

`A292600(a(A292600(n)))*A352312(n+1)` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A343471.P4306290355392920566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  A292600 (a (A292600 n).toNat).toNat * A352312 (n + 1)

end

end A343471.P4306290355392920566

/-!
# A343472: G.f.: 1 + 1!*x/(1 + 2!*x^2/(1 + 3!*x^3/(1 + 4!*x^4/(1 + 5!*x^5/(1 + ...))))).

The programs for A343472, there is no canonical definition to state claims against.
-/

/-! ## A343472.P16409583460177805170

`A040001(A091200(n))*A343468(n)`
-/

namespace A343472.P16409583460177805170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A091200 n).toNat * A343468 n

end

end A343472.P16409583460177805170

/-!
# A343473: G.f.: 1 + (1*x)/(1 + (2*x)^2/(1 + (3*x)^3/(1 + (4*x)^4/(1 + (5*x)^5/(1 + ...))))).

The programs for A343473, there is no canonical definition to state claims against.
-/

/-! ## A343473.P16232723306572308123

`A000120(A000698(n))*A343472(n)`
-/

namespace A343473.P16232723306572308123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000698 n).toNat * A343472 n

end

end A343473.P16232723306572308123

/-! ## A343473.P17909617146774101923

`A000120(abs(A185971(n)))*A343472(n)`
-/

namespace A343473.P17909617146774101923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 |A185971 n|.toNat * A343472 n

end

end A343473.P17909617146774101923

/-! ## A343473.P13502620323554677045

`A000120(A286781(C(n, 2)))*A343472(n)`
-/

namespace A343473.P13502620323554677045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A286781 (Nat.choose n 2)).toNat * A343472 n

end

end A343473.P13502620323554677045

/-!
# A343474: a(n) is the number of preference profiles for n men and n women, where all men prefer the same woman and all women prefer the same man.

The programs for A343474, the canonical program `A343474.P9019254794420137629` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343474 has offset 1).

The definition of A343474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343474.P9019254794420137629

`(n+1)²*n!^(2*(n+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343474

/-- `(n+1)²*n!^(2*(n+1))` -/
def P9019254794420137629.Spec : Prop :=
  ∀ n, (P9019254794420137629.a n : ℤ) = A343474 (n + 1)

theorem P9019254794420137629.correct : P9019254794420137629.Spec := by
  intro n
  simp only [A343474, Nat.add_sub_cancel]

end A343474

/-! ## A343474.P18057413074410057577

`(n!^n*(n+1)!)²`
-/

namespace A343474.P18057413074410057577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ n * Nat.factorial (n + 1)) ^ 2

end

end A343474.P18057413074410057577

namespace A343474

/-- `(n!^n*(n+1)!)²` -/
def P18057413074410057577.Spec : Prop :=
  ∀ n, (P18057413074410057577.a n : ℤ) = A343474 (n + 1)

theorem P18057413074410057577.correct : P18057413074410057577.Spec := by
  intro n
  simp only [A343474, Nat.add_sub_cancel, A343474.P18057413074410057577.a, A343474.P9019254794420137629.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A343474

/-! ## A343474.P7713873738871553269

`n!^(2*n+1)*Δ[(n+1)!]`
-/

namespace A343474.P7713873738871553269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ (2 * n + 1) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A343474.P7713873738871553269

namespace A343474

/-- `n!^(2*n+1)*Δ[(n+1)!]` -/
def P7713873738871553269.Spec : Prop :=
  ∀ n, P7713873738871553269.a n = A343474 (n + 1)

theorem P7713873738871553269.correct : P7713873738871553269.Spec := by
  intro n
  simp only [A343474, Nat.add_sub_cancel, A343474.P7713873738871553269.f1, A343474.P7713873738871553269.a, A343474.P9019254794420137629.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A343474

/-! ## A343474.P7961403376530429353

`n!^(2*n)*∏[∑[2*n+1]]`
-/

namespace A343474.P7961403376530429353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ (2 * n) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A343474.P7961403376530429353

namespace A343474

/-- `n!^(2*n)*∏[∑[2*n+1]]` -/
def P7961403376530429353.Spec : Prop :=
  ∀ n, (P7961403376530429353.a n : ℤ) = A343474 (n + 1)

end A343474

/-! ## A343474.P183399742884113278

`A342573(n+1)²`
-/

namespace A343474.P183399742884113278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342573 (n + 1) ^ 2

end

end A343474.P183399742884113278

namespace A343474

/-- `A342573(n+1)²` -/
def P183399742884113278.Spec : Prop :=
  ∀ n, P183399742884113278.a n = A343474 (n + 1)

theorem P183399742884113278.correct : P183399742884113278.Spec := by
  intro n
  simp only [A343474, Nat.add_sub_cancel, A343474.P183399742884113278.a, A343474.P9019254794420137629.a, A342573, A342573.P11895055850012896166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343474

/-!
# A343475: 

The programs for A343475, there is no canonical definition to state claims against.
-/

/-! ## A343475.P10670203481490138099

`A091868(n+1)*A091868(n)`
-/

namespace A343475.P10670203481490138099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091868 (n + 1) * A091868 n

end

end A343475.P10670203481490138099

/-! ## A343475.P1160515690984179795

`A000178(n+1)*A036740(n+1)*A002109(n)`
-/

namespace A343475.P1160515690984179795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (n + 1) * A036740 (n + 1) * A002109 n

end

end A343475.P1160515690984179795

/-!
# A343477: Numbers k whose representations in primorial base include each of the digits from 0 to d-1 exactly once, where d is the number of digits of k in primorial base.

The programs for A343477, there is no canonical definition to state claims against.
-/

/-! ## A343477.P8225218807290256104

`eq[A235224(n), A329027(A028310(n))]`
-/

namespace A343477.P8225218807290256104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343477.P8225218807290256104

/-! ## A343477.P15563413561664481217

`A056926(A002426(n))*A351576(A343476(n+1))`
-/

namespace A343477.P15563413561664481217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A002426 n).toNat * A351576 (A343476 (n + 1)).toNat

end

end A343477.P15563413561664481217

/-! ## A343477.P3877479102478821872

`A351576(A343476(n+1))%A000040(A115390(n+2))`
-/

namespace A343477.P3877479102478821872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351576 (A343476 (n + 1)).toNat) (A000040 (A115390 (n + 2)).toNat)

end

end A343477.P3877479102478821872

/-!
# A343478: Prime numbers p == 2 (mod 3) such that p-1 has exactly one distinct odd prime divisor and p+1 has exactly one distinct prime divisor > 3.

The programs for A343478, there is no canonical definition to state claims against.
-/

/-! ## A343478.P7933357066019151674

`A007528(lt[A000010(n+3), A258643(n+3)])`
-/

namespace A343478.P7933357066019151674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258643 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343478.P7933357066019151674

/-! ## A343478.P2308866313881964252

`p?[A026179(A028786(n+1))]`
-/

namespace A343478.P2308866313881964252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (A028786 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343478.P2308866313881964252

/-!
# A343479: Prime numbers p == 2 (mod 3) such that p-1 has exactly one odd prime divisor and p+1 has exactly one prime divisor > 3 (counting prime divisors with multiplicity in both).

The programs for A343479, there is no canonical definition to state claims against.
-/

/-! ## A343479.P4136721781383822325

`A343478(record[A121467(n+1)-A121467(n+2)])`
-/

namespace A343479.P4136721781383822325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121467 (n + 1) - A121467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343478 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343479.P4136721781383822325

/-! ## A343479.P16250413423474767645

`A343478(ceil(log(A343463(n+3))))`
-/

namespace A343479.P16250413423474767645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343478 ⌈Real.log (A343463 (n + 3) : ℝ)⌉.toNat

end

end A343479.P16250413423474767645

/-!
# A343482: Expansion of the e.g.f. sqrt(-1 + 2 / (1 - x) / exp(x)).

The programs for A343482, there is no canonical definition to state claims against.
-/

/-! ## A343482.P11807094041285351197

`∏{e}[A189274(n+2), A216779(#)]`
-/

namespace A343482.P11807094041285351197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A216779 (Nat.factorization (f1 n).natAbs p)

end

end A343482.P11807094041285351197

/-! ## A343482.P3856142216336100066

`A130371(floor(A216779(n)+acot(n)))`
-/

namespace A343482.P3856142216336100066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 ⌊(A216779 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A343482.P3856142216336100066

/-! ## A343482.P14103076288977051522

`A001281(A000166(n)+abs(1-n))`
-/

namespace A343482.P14103076288977051522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000166 n + |1 - (n : ℤ)|).toNat

end

end A343482.P14103076288977051522

/-! ## A343482.P9975467390731512972

`A004526(A000166(n)+abs(1-n))`
-/

namespace A343482.P9975467390731512972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000166 n + |1 - (n : ℤ)|).toNat

end

end A343482.P9975467390731512972

/-!
# A343484: Number of equivalence classes of length n squarefree reduced words over {0, 1, 2, 3} under action of renaming symbols.

The programs for A343484, there is no canonical definition to state claims against.
-/

/-! ## A343484.P3459702561934764526

`A024936(2*A097076(n))`
-/

namespace A343484.P3459702561934764526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (2 * A097076 n).toNat

end

end A343484.P3459702561934764526

/-! ## A343484.P15886801167716778658

`A114324(n+1)+A001222((n²+n)*2^(n-1)+1)`
-/

namespace A343484.P15886801167716778658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114324 (n + 1) + A001222 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1)).toNat

end

end A343484.P15886801167716778658

/-! ## A343484.P5235844035687592529

`A024936(A001333(n)-A033999(n))`
-/

namespace A343484.P5235844035687592529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A001333 n - A033999 n).toNat

end

end A343484.P5235844035687592529

/-! ## A343484.P14986430468592068484

`A024936(A033999(n+1)+A001333(n))`
-/

namespace A343484.P14986430468592068484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A033999 (n + 1) + A001333 n).toNat

end

end A343484.P14986430468592068484

/-! ## A343484.P10429695140107025739

`A291296(n+2)-A040001(A291317(n+1))`
-/

namespace A343484.P10429695140107025739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291296 (n + 2) - A040001 (A291317 (n + 1)).toNat

end

end A343484.P10429695140107025739

/-!
# A343485: Area of the convex hull around terdragon expansion level n, measured in unit triangles.

The programs for A343485, there is no canonical definition to state claims against.
-/

/-! ## A343485.P13517643041055572499

`A279891(A004189(n))`
-/

namespace A343485.P13517643041055572499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (A004189 n).toNat

end

end A343485.P13517643041055572499

/-! ## A343485.P18172847045385340258

`A273881(3^A082356(n))`
-/

namespace A343485.P18172847045385340258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273881 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A082356 n : ℤ))).toNat

end

end A343485.P18172847045385340258

/-!
# A343489: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=1..n} k^(gcd(j, n) - 1).

The programs for A343489, there is no canonical definition to state claims against.
-/

/-! ## A343489.P12855323642415243754

`A001221(A080508(n+1))*A097805(n)`
-/

namespace A343489.P12855323642415243754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080508 (n + 1)).toNat * A097805 n

end

end A343489.P12855323642415243754

/-! ## A343489.P1033855501520406091

`A001221(A080508(n+1))*A135225(n)`
-/

namespace A343489.P1033855501520406091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080508 (n + 1)).toNat * A135225 n

end

end A343489.P1033855501520406091

/-! ## A343489.P7153036697492301381

`A001221(A080508(n+1))*A193554(n)`
-/

namespace A343489.P7153036697492301381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080508 (n + 1)).toNat * A193554 n

end

end A343489.P7153036697492301381

/-! ## A343489.P10545530487382324632

`A178602(A210545(n+1))+A097805(A028310(n))`
-/

namespace A343489.P10545530487382324632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178602 (A210545 (n + 1)).toNat + A097805 (A028310 n).toNat

end

end A343489.P10545530487382324632

/-! ## A343489.P14407617160860486491

`A360742(n)%A373551(n+1)`
-/

namespace A343489.P14407617160860486491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360742 n) (A373551 (n + 1))

end

end A343489.P14407617160860486491

/-!
# A343490: a(n) = Sum_{k=1..n} 4^(gcd(k, n) - 1).

The programs for A343490, the canonical program `A343490.P15473732071549519995` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343490 has offset 1).

The definition of A343490 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343490.P15473732071549519995

`A054611(n+1)/4`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343490

/-- `A054611(n+1)/4` -/
def P15473732071549519995.Spec : Prop :=
  ∀ n, P15473732071549519995.a n = (A343490 (n + 1) : ℚ)

end A343490

/-! ## A343490.P10027685202890572525

`(n+1)/4*A001868(n+1)`
-/

namespace A343490.P10027685202890572525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A001868 (n + 1) : ℚ)

end

end A343490.P10027685202890572525

namespace A343490

/-- `(n+1)/4*A001868(n+1)` -/
def P10027685202890572525.Spec : Prop :=
  ∀ n, P10027685202890572525.a n = (A343490 (n + 1) : ℚ)

end A343490

/-! ## A343490.P11085896974170910640

`∑{d}[n+1, #*A295505((n+1)/#)]`
-/

namespace A343490.P11085896974170910640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A295505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343490.P11085896974170910640

namespace A343490

/-- `∑{d}[n+1, #*A295505((n+1)/#)]` -/
def P11085896974170910640.Spec : Prop :=
  ∀ n, P11085896974170910640.a n = A343490 (n + 1)

end A343490

/-! ## A343490.P17127696418033606741

`∑{d}[n+1, A008683(#)*A359190((n+1)/#)]`
-/

namespace A343490.P17127696418033606741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A359190 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343490.P17127696418033606741

namespace A343490

/-- `∑{d}[n+1, A008683(#)*A359190((n+1)/#)]` -/
def P17127696418033606741.Spec : Prop :=
  ∀ n, P17127696418033606741.a n = A343490 (n + 1)

end A343490

/-! ## A343490.P11987366298906822808

`∑{d}[n+1, A000010(#)*A000302((n+1)/#-1)]`
-/

namespace A343490.P11987366298906822808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A343490.P11987366298906822808

namespace A343490

/-- `∑{d}[n+1, A000010(#)*A000302((n+1)/#-1)]` -/
def P11987366298906822808.Spec : Prop :=
  ∀ n, P11987366298906822808.a n = A343490 (n + 1)

end A343490

/-! ## A343490.P5766886755106252925

`Δ[∑[A054611(n)]/4]`
-/

namespace A343490.P5766886755106252925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054611 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343490.P5766886755106252925

namespace A343490

/-- `Δ[∑[A054611(n)]/4]` -/
def P5766886755106252925.Spec : Prop :=
  ∀ n, P5766886755106252925.a n = (A343490 (n + 1) : ℚ)

end A343490

/-! ## A343490.P3169279138847738442

`A185651(A055999(n+3)+1)/4`
-/

namespace A343490.P3169279138847738442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185651 (A055999 (n + 3) + 1).toNat : ℚ) / 4

end

end A343490.P3169279138847738442

namespace A343490

/-- `A185651(A055999(n+3)+1)/4` -/
def P3169279138847738442.Spec : Prop :=
  ∀ n, P3169279138847738442.a n = (A343490 (n + 1) : ℚ)

end A343490

/-!
# A343491: Number of representations of n! as a sum of 3 tetrahedral numbers (A000292).

The programs for A343491, there is no canonical definition to state claims against.
-/

/-! ## A343491.P896867890407591931

`A206487(A325676(n)+A051903(n+1))`
-/

namespace A343491.P896867890407591931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (A325676 n + A051903 (n + 1)).toNat

end

end A343491.P896867890407591931

/-! ## A343491.P505520721119188431

`A000120(A254440(n+1)-A326753(n))`
-/

namespace A343491.P505520721119188431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A254440 (n + 1) - A326753 n).toNat

end

end A343491.P505520721119188431

/-! ## A343491.P276132543016667128

`A038548(A075687(n+2)+A005940(n+1))`
-/

namespace A343491.P276132543016667128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A075687 (n + 2) + A005940 (n + 1)).toNat

end

end A343491.P276132543016667128

/-! ## A343491.P15726864839374230822

`A007949(A001498(2*n+1))+A000700(n)`
-/

namespace A343491.P15726864839374230822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A001498 (2 * n + 1)).toNat + A000700 n

end

end A343491.P15726864839374230822

/-!
# A343492: a(n) = Sum_{k=1..n} 5^(gcd(k, n) - 1).

The programs for A343492, the canonical program `A343492.P4977235289244464473` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343492 has offset 1).

The definition of A343492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343492.P11896436895322325409

`A054612(n+1)/5`
-/

namespace A343492.P11896436895322325409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054612 (n + 1) : ℚ) / 5

end

end A343492.P11896436895322325409

namespace A343492

/-- `A054612(n+1)/5` -/
def P11896436895322325409.Spec : Prop :=
  ∀ n, P11896436895322325409.a n = (A343492 (n + 1) : ℚ)

end A343492

/-! ## A343492.P4977235289244464473

`∑{d}[n+1, #*A295506((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A343492

/-- `∑{d}[n+1, #*A295506((n+1)/#)]` -/
def P4977235289244464473.Spec : Prop :=
  ∀ n, P4977235289244464473.a n = A343492 (n + 1)

theorem P4977235289244464473.correct : P4977235289244464473.Spec := by
  intro n
  simp only [A343492, Nat.add_sub_cancel]

end A343492

/-! ## A343492.P16723048131542618780

`∑{d}[n+1, A000010(#)*A000351((n+1)/#-1)]`
-/

namespace A343492.P16723048131542618780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000351 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A343492.P16723048131542618780

namespace A343492

/-- `∑{d}[n+1, A000010(#)*A000351((n+1)/#-1)]` -/
def P16723048131542618780.Spec : Prop :=
  ∀ n, P16723048131542618780.a n = A343492 (n + 1)

end A343492

/-! ## A343492.P4261200317304786266

`Δ[∑[A054612(n)]/5]`
-/

namespace A343492.P4261200317304786266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054612 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343492.P4261200317304786266

namespace A343492

/-- `Δ[∑[A054612(n)]/5]` -/
def P4261200317304786266.Spec : Prop :=
  ∀ n, P4261200317304786266.a n = (A343492 (n + 1) : ℚ)

end A343492

/-! ## A343492.P4677192195507260815

`A185651(A055999(n+4))/5`
-/

namespace A343492.P4677192195507260815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185651 (A055999 (n + 4)).toNat : ℚ) / 5

end

end A343492.P4677192195507260815

namespace A343492

/-- `A185651(A055999(n+4))/5` -/
def P4677192195507260815.Spec : Prop :=
  ∀ n, P4677192195507260815.a n = (A343492 (n + 1) : ℚ)

end A343492

/-! ## A343492.P17160461937241109223

`A185651(A000217(n+7)-6)/5`
-/

namespace A343492.P17160461937241109223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185651 (A000217 (n + 7) - 6).toNat : ℚ) / 5

end

end A343492.P17160461937241109223

namespace A343492

/-- `A185651(A000217(n+7)-6)/5` -/
def P17160461937241109223.Spec : Prop :=
  ∀ n, P17160461937241109223.a n = (A343492 (n + 1) : ℚ)

end A343492

/-!
# A343493: a(n) = 1 - Sum_{d|n, d < n} a(d - 1).

The programs for A343493, there is no canonical definition to state claims against.
-/

/-! ## A343493.P2702340311036192070

`A144608(A004399(n+1))-char[2*(n+1)]`
-/

namespace A343493.P2702340311036192070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144608 (A004399 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A343493.P2702340311036192070

/-! ## A343493.P13547193442001953972

`A008683(or(A193791(n), A309336(n+1)))`
-/

namespace A343493.P13547193442001953972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A193791 n) (A309336 (n + 1))).toNat

end

end A343493.P13547193442001953972

/-! ## A343493.P390677453710660524

`A010054(A212133(n))-A288426(2*n+1)`
-/

namespace A343493.P390677453710660524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A212133 n).toNat - A288426 (2 * n + 1)

end

end A343493.P390677453710660524

/-! ## A343493.P9226199891509522022

`A016370(A106442(record[A334433(n)]))`
-/

namespace A343493.P9226199891509522022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016370 (A106442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A343493.P9226199891509522022

/-! ## A343493.P9936476967125161262

`2-A001221(A218465(3*n+1))`
-/

namespace A343493.P9936476967125161262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001221 (A218465 (3 * n + 1)).toNat

end

end A343493.P9936476967125161262

/-!
# A343494: Numbers k such that tau(k) and tau(k+1) are both prime, where tau is the number of divisors function.

The programs for A343494, there is no canonical definition to state claims against.
-/

/-! ## A343494.P6591307558702955344

`2^a(n-1)` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A343494.P6591307558702955344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  2 ^ a (n - 1)

end

end A343494.P6591307558702955344

/-!
# A343495: Numbers k such that tau(k) and tau(k+2) are both prime, where tau is the number of divisors function (the lesser of twin prime pairs are excluded).

The programs for A343495, there is no canonical definition to state claims against.
-/

/-! ## A343495.P8029852755553854660

`A163492(n+3)-A266591(A141761(n))`
-/

namespace A343495.P8029852755553854660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 3) - A266591 (A141761 n).toNat

end

end A343495.P8029852755553854660

/-! ## A343495.P2699481679412577013

`A163492(n+3)-A330677(A185034(n))`
-/

namespace A343495.P2699481679412577013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 3) - A330677 (A185034 n).toNat

end

end A343495.P2699481679412577013

/-! ## A343495.P328727950653250281

`A163492(n+3)-A349509(A256208(n))`
-/

namespace A343495.P328727950653250281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 3) - A349509 (A256208 n).toNat

end

end A343495.P328727950653250281

/-! ## A343495.P11773486030215069811

`A163492(n+3)-A379733(A243366(n))`
-/

namespace A343495.P11773486030215069811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 3) - A379733 (A243366 n).toNat

end

end A343495.P11773486030215069811

/-!
# A343497: a(n) = Sum_{k=1..n} gcd(k, n)^3.

The programs for A343497, the canonical program `A343497.P5131747724074345410` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343497 has offset 1).

The definition of A343497 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343497.P5131747724074345410

`∑{d}[n+1, #^3*A000010((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A343497

/-- `∑{d}[n+1, #^3*A000010((n+1)/#)]` -/
def P5131747724074345410.Spec : Prop :=
  ∀ n, P5131747724074345410.a n = A343497 (n + 1)

theorem P5131747724074345410.correct : P5131747724074345410.Spec := by
  intro n
  simp only [A343497, Nat.add_sub_cancel]

end A343497

/-! ## A343497.P14728271527669368307

`∑{d}[n+1, #*A059376((n+1)/#)]`
-/

namespace A343497.P14728271527669368307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P14728271527669368307

namespace A343497

/-- `∑{d}[n+1, #*A059376((n+1)/#)]` -/
def P14728271527669368307.Spec : Prop :=
  ∀ n, P14728271527669368307.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P1635555160135349830

`∑{d}[n+1, A000010(#)*A000578((n+1)/#)]`
-/

namespace A343497.P1635555160135349830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P1635555160135349830

namespace A343497

/-- `∑{d}[n+1, A000010(#)*A000578((n+1)/#)]` -/
def P1635555160135349830.Spec : Prop :=
  ∀ n, P1635555160135349830.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P3458841783391582378

`∑{d}[n+1, A001158(#)*A007431((n+1)/#)]`
-/

namespace A343497.P3458841783391582378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P3458841783391582378

namespace A343497

/-- `∑{d}[n+1, A001158(#)*A007431((n+1)/#)]` -/
def P3458841783391582378.Spec : Prop :=
  ∀ n, P3458841783391582378.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P7830755741148460753

`∑{d}[n+1, A000056(#)*A018804((n+1)/#)]`
-/

namespace A343497.P7830755741148460753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P7830755741148460753

namespace A343497

/-- `∑{d}[n+1, A000056(#)*A018804((n+1)/#)]` -/
def P7830755741148460753.Spec : Prop :=
  ∀ n, P7830755741148460753.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P5302417768635133215

`∑{d}[n+1, A007427(#)*A027847((n+1)/#)]`
-/

namespace A343497.P5302417768635133215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A027847 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P5302417768635133215

namespace A343497

/-- `∑{d}[n+1, A007427(#)*A027847((n+1)/#)]` -/
def P5302417768635133215.Spec : Prop :=
  ∀ n, P5302417768635133215.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P3542313753647916930

`∑{d}[n+1, A053191(#)*A069097((n+1)/#)]`
-/

namespace A343497.P3542313753647916930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P3542313753647916930

namespace A343497

/-- `∑{d}[n+1, A053191(#)*A069097((n+1)/#)]` -/
def P3542313753647916930.Spec : Prop :=
  ∀ n, P3542313753647916930.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P11830141930288661132

`∑{d}[n+1, A065959(#)*A074722((n+1)/#)]`
-/

namespace A343497.P11830141930288661132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065959 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P11830141930288661132

namespace A343497

/-- `∑{d}[n+1, A065959(#)*A074722((n+1)/#)]` -/
def P11830141930288661132.Spec : Prop :=
  ∀ n, P11830141930288661132.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P12229219981456899865

`∑{d}[n+1, A007432(#)*A321140((n+1)/#)]`
-/

namespace A343497.P12229219981456899865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A321140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P12229219981456899865

namespace A343497

/-- `∑{d}[n+1, A007432(#)*A321140((n+1)/#)]` -/
def P12229219981456899865.Spec : Prop :=
  ∀ n, P12229219981456899865.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P12570950615039615265

`∑{d}[n+1, A008683(#)*A328259((n+1)/#)]`
-/

namespace A343497.P12570950615039615265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P12570950615039615265

namespace A343497

/-- `∑{d}[n+1, A008683(#)*A328259((n+1)/#)]` -/
def P12570950615039615265.Spec : Prop :=
  ∀ n, P12570950615039615265.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P16658245704854093540

`∑{d}[n+1, A062570(#)*A309335((n+1)/#)]`
-/

namespace A343497.P16658245704854093540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A309335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P16658245704854093540

namespace A343497

/-- `∑{d}[n+1, A062570(#)*A309335((n+1)/#)]` -/
def P16658245704854093540.Spec : Prop :=
  ∀ n, P16658245704854093540.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P9421213366051337539

`∑{d}[n+1, A029935(#)*A350156((n+1)/#)]`
-/

namespace A343497.P9421213366051337539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P9421213366051337539

namespace A343497

/-- `∑{d}[n+1, A029935(#)*A350156((n+1)/#)]` -/
def P9421213366051337539.Spec : Prop :=
  ∀ n, P9421213366051337539.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P11850559575706196760

`∑{d}[n+1, A068963(#)*A341772((n+1)/#)]`
-/

namespace A343497.P11850559575706196760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068963 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P11850559575706196760

namespace A343497

/-- `∑{d}[n+1, A068963(#)*A341772((n+1)/#)]` -/
def P11850559575706196760.Spec : Prop :=
  ∀ n, P11850559575706196760.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P11458280345126140472

`∑{d}[n+1, A208895(#)*A255655((n+1)/#)]`
-/

namespace A343497.P11458280345126140472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A208895 d * A255655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P11458280345126140472

namespace A343497

/-- `∑{d}[n+1, A208895(#)*A255655((n+1)/#)]` -/
def P11458280345126140472.Spec : Prop :=
  ∀ n, P11458280345126140472.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P371989376531210007

`∑{d}[n+1, A162728(#)*A309337((n+1)/#)]`
-/

namespace A343497.P371989376531210007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A309337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P371989376531210007

namespace A343497

/-- `∑{d}[n+1, A162728(#)*A309337((n+1)/#)]` -/
def P371989376531210007.Spec : Prop :=
  ∀ n, P371989376531210007.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P1422848273607896423

`∑{d}[n+1, A288419(#)*A327274((n+1)/#)]`
-/

namespace A343497.P1422848273607896423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288419 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P1422848273607896423

namespace A343497

/-- `∑{d}[n+1, A288419(#)*A327274((n+1)/#)]` -/
def P1422848273607896423.Spec : Prop :=
  ∀ n, P1422848273607896423.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P15726810262718646994

`∑{d}[n+1, A326305(#)*A328408((n+1)/#)]`
-/

namespace A343497.P15726810262718646994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A328408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P15726810262718646994

namespace A343497

/-- `∑{d}[n+1, A326305(#)*A328408((n+1)/#)]` -/
def P15726810262718646994.Spec : Prop :=
  ∀ n, P15726810262718646994.a n = A343497 (n + 1)

end A343497

/-! ## A343497.P9188097473952428954

`∑{d}[n+1, A349469(#)*A360428((n+1)/#)]`
-/

namespace A343497.P9188097473952428954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349469 d * A360428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343497.P9188097473952428954

namespace A343497

/-- `∑{d}[n+1, A349469(#)*A360428((n+1)/#)]` -/
def P9188097473952428954.Spec : Prop :=
  ∀ n, P9188097473952428954.a n = A343497 (n + 1)

end A343497

/-!
# A343498: a(n) = Sum_{k=1..n} gcd(k, n)^4.

The programs for A343498, the canonical program `A343498.P3977255890582142715` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343498 has offset 1).

The definition of A343498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343498.P3977255890582142715

`∑{d}[n+1, #*A059377((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A343498

/-- `∑{d}[n+1, #*A059377((n+1)/#)]` -/
def P3977255890582142715.Spec : Prop :=
  ∀ n, P3977255890582142715.a n = A343498 (n + 1)

theorem P3977255890582142715.correct : P3977255890582142715.Spec := by
  intro n
  simp only [A343498, Nat.add_sub_cancel]

end A343498

/-! ## A343498.P18258116327465754889

`∑{d}[n+1, A001159(#)*A007431((n+1)/#)]`
-/

namespace A343498.P18258116327465754889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P18258116327465754889

namespace A343498

/-- `∑{d}[n+1, A001159(#)*A007431((n+1)/#)]` -/
def P18258116327465754889.Spec : Prop :=
  ∀ n, P18258116327465754889.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P15796629119620716547

`∑{d}[n+1, A007427(#)*A027848((n+1)/#)]`
-/

namespace A343498.P15796629119620716547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A027848 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P15796629119620716547

namespace A343498

/-- `∑{d}[n+1, A007427(#)*A027848((n+1)/#)]` -/
def P15796629119620716547.Spec : Prop :=
  ∀ n, P15796629119620716547.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P9875215834224615094

`∑{d}[n+1, A065960(#)*A074722((n+1)/#)]`
-/

namespace A343498.P9875215834224615094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065960 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P9875215834224615094

namespace A343498

/-- `∑{d}[n+1, A065960(#)*A074722((n+1)/#)]` -/
def P9875215834224615094.Spec : Prop :=
  ∀ n, P9875215834224615094.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P12372388145862513448

`∑{d}[n+1, A062570(#)*A309336((n+1)/#)]`
-/

namespace A343498.P12372388145862513448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A309336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P12372388145862513448

namespace A343498

/-- `∑{d}[n+1, A062570(#)*A309336((n+1)/#)]` -/
def P12372388145862513448.Spec : Prop :=
  ∀ n, P12372388145862513448.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P16194645523776610715

`∑{d}[n+1, A029935(#)*A372952((n+1)/#)]`
-/

namespace A343498.P16194645523776610715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P16194645523776610715

namespace A343498

/-- `∑{d}[n+1, A029935(#)*A372952((n+1)/#)]` -/
def P16194645523776610715.Spec : Prop :=
  ∀ n, P16194645523776610715.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P18153414444461029070

`∑{d}[n+1, A084218(#)*A341772((n+1)/#)]`
-/

namespace A343498.P18153414444461029070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084218 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P18153414444461029070

namespace A343498

/-- `∑{d}[n+1, A084218(#)*A341772((n+1)/#)]` -/
def P18153414444461029070.Spec : Prop :=
  ∀ n, P18153414444461029070.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P6155938834181038083

`∑{d}[n+1, A069097(#)*A379833((n+1)/#)]`
-/

namespace A343498.P6155938834181038083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P6155938834181038083

namespace A343498

/-- `∑{d}[n+1, A069097(#)*A379833((n+1)/#)]` -/
def P6155938834181038083.Spec : Prop :=
  ∀ n, P6155938834181038083.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P12894768508116679365

`∑{d}[n+1, A162728(#)*A309338((n+1)/#)]`
-/

namespace A343498.P12894768508116679365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A309338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P12894768508116679365

namespace A343498

/-- `∑{d}[n+1, A162728(#)*A309338((n+1)/#)]` -/
def P12894768508116679365.Spec : Prop :=
  ∀ n, P12894768508116679365.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P4888359942302607462

`∑{d}[n+1, A189393(#)*A343497((n+1)/#)]`
-/

namespace A343498.P4888359942302607462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P4888359942302607462

namespace A343498

/-- `∑{d}[n+1, A189393(#)*A343497((n+1)/#)]` -/
def P4888359942302607462.Spec : Prop :=
  ∀ n, P4888359942302607462.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P12776048255310801663

`∑{d}[n+1, A288420(#)*A327274((n+1)/#)]`
-/

namespace A343498.P12776048255310801663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288420 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P12776048255310801663

namespace A343498

/-- `∑{d}[n+1, A288420(#)*A327274((n+1)/#)]` -/
def P12776048255310801663.Spec : Prop :=
  ∀ n, P12776048255310801663.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P14309167852147952826

`∑{d}[n+1, A000010(#)*A000583((n+1)/#)]`
-/

namespace A343498.P14309167852147952826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000583 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P14309167852147952826

namespace A343498

/-- `∑{d}[n+1, A000010(#)*A000583((n+1)/#)]` -/
def P14309167852147952826.Spec : Prop :=
  ∀ n, P14309167852147952826.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P1495635007937806658

`∑{d}[n+1, A008683(#)*A281372((n+1)/#)]`
-/

namespace A343498.P1495635007937806658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A281372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343498.P1495635007937806658

namespace A343498

/-- `∑{d}[n+1, A008683(#)*A281372((n+1)/#)]` -/
def P1495635007937806658.Spec : Prop :=
  ∀ n, P1495635007937806658.a n = A343498 (n + 1)

end A343498

/-! ## A343498.P7618348344862828566

`A396901((n+1)²)/(n+1)`
-/

namespace A343498.P7618348344862828566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396901 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A343498.P7618348344862828566

namespace A343498

/-- `A396901((n+1)²)/(n+1)` -/
def P7618348344862828566.Spec : Prop :=
  ∀ n, P7618348344862828566.a n = (A343498 (n + 1) : ℚ)

end A343498

/-!
# A343499: a(n) = Sum_{k=1..n} gcd(k, n)^5.

The programs for A343499, the canonical program `A343499.P1780454562911944393` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343499 has offset 1).

The definition of A343499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343499.P1780454562911944393

`∑{d}[n+1, #*A059378((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A343499

/-- `∑{d}[n+1, #*A059378((n+1)/#)]` -/
def P1780454562911944393.Spec : Prop :=
  ∀ n, P1780454562911944393.a n = A343499 (n + 1)

theorem P1780454562911944393.correct : P1780454562911944393.Spec := by
  intro n
  simp only [A343499, Nat.add_sub_cancel]

end A343499

/-! ## A343499.P18228005508471124991

`∑{d}[n+1, A001160(#)*A007431((n+1)/#)]`
-/

namespace A343499.P18228005508471124991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343499.P18228005508471124991

namespace A343499

/-- `∑{d}[n+1, A001160(#)*A007431((n+1)/#)]` -/
def P18228005508471124991.Spec : Prop :=
  ∀ n, P18228005508471124991.a n = A343499 (n + 1)

end A343499

/-! ## A343499.P9965038214693826985

`∑{d}[n+1, A069097(#)*A115224((n+1)/#)]`
-/

namespace A343499.P9965038214693826985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A115224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343499.P9965038214693826985

namespace A343499

/-- `∑{d}[n+1, A069097(#)*A115224((n+1)/#)]` -/
def P9965038214693826985.Spec : Prop :=
  ∀ n, P9965038214693826985.a n = A343499 (n + 1)

end A343499

/-! ## A343499.P8621105188202688671

`∑{d}[n+1, A029935(#)*A372961((n+1)/#)]`
-/

namespace A343499.P8621105188202688671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343499.P8621105188202688671

namespace A343499

/-- `∑{d}[n+1, A029935(#)*A372961((n+1)/#)]` -/
def P8621105188202688671.Spec : Prop :=
  ∀ n, P8621105188202688671.a n = A343499 (n + 1)

end A343499

/-! ## A343499.P12841279839634599599

`∑{d}[n+1, A074722(#)*A351300((n+1)/#)]`
-/

namespace A343499.P12841279839634599599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A351300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343499.P12841279839634599599

namespace A343499

/-- `∑{d}[n+1, A074722(#)*A351300((n+1)/#)]` -/
def P12841279839634599599.Spec : Prop :=
  ∀ n, P12841279839634599599.a n = A343499 (n + 1)

end A343499

/-! ## A343499.P8562237619466740308

`∑{d}[n+1, A238533(#)*A343498((n+1)/#)]`
-/

namespace A343499.P8562237619466740308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A343498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343499.P8562237619466740308

namespace A343499

/-- `∑{d}[n+1, A238533(#)*A343498((n+1)/#)]` -/
def P8562237619466740308.Spec : Prop :=
  ∀ n, P8562237619466740308.a n = A343499 (n + 1)

end A343499

/-! ## A343499.P7810642513569651454

`∑{d}[n+1, A341772(#)*A372962((n+1)/#)]`
-/

namespace A343499.P7810642513569651454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341772 d * A372962 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343499.P7810642513569651454

namespace A343499

/-- `∑{d}[n+1, A341772(#)*A372962((n+1)/#)]` -/
def P7810642513569651454.Spec : Prop :=
  ∀ n, P7810642513569651454.a n = A343499 (n + 1)

end A343499

/-! ## A343499.P373442580687478492

`A343510(Δ[A023545(n+1)])`
-/

namespace A343499.P373442580687478492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (f1 (n + 1) - f1 n).toNat

end

end A343499.P373442580687478492

namespace A343499

/-- `A343510(Δ[A023545(n+1)])` -/
def P373442580687478492.Spec : Prop :=
  ∀ n, P373442580687478492.a n = A343499 (n + 1)

end A343499

