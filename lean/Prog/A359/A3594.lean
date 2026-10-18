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
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A359400: Sum of positions of zeros in the reversed binary expansion of n, where positions in a sequence are read starting with 1 from the left.

The programs for A359400, the canonical program `A359400.P8597808526579173198` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359400 has offset 0).

The definition of A359400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359400.P8597808526579173198

`A029931(A035327(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359400

/-- `A029931(A035327(n))` -/
def P8597808526579173198.Spec : Prop :=
  ∀ n, P8597808526579173198.a n = A359400 n

theorem P8597808526579173198.correct : P8597808526579173198.Spec := by
  intro n
  simp only [A359400]

end A359400

/-! ## A359400.P3902041189736103386

`A029931(n)-A393336(n)`
-/

namespace A359400.P3902041189736103386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A393336 n

end

end A359400.P3902041189736103386

namespace A359400

/-- `A029931(n)-A393336(n)` -/
def P3902041189736103386.Spec : Prop :=
  ∀ n, P3902041189736103386.a n = A359400 n

end A359400

/-! ## A359400.P5671512507922461450

`C(A070939(n)+1, 2)-A029931(n)`
-/

namespace A359400.P5671512507922461450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A070939 n + 1).toNat 2 : ℤ) - A029931 n

end

end A359400.P5671512507922461450

namespace A359400

/-- `C(A070939(n)+1, 2)-A029931(n)` -/
def P5671512507922461450.Spec : Prop :=
  ∀ n, P5671512507922461450.a n = A359400 n

end A359400

/-! ## A359400.P16404048271774149158

`A029931(abs(and(2*n, A003817(n))-(n-1)))`
-/

namespace A359400.P16404048271774149158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 |Int.land (2 * n : ℤ) (A003817 n) - ((n : ℤ) - 1)|.toNat

end

end A359400.P16404048271774149158

namespace A359400

/-- `A029931(abs(and(2*n, A003817(n))-(n-1)))` -/
def P16404048271774149158.Spec : Prop :=
  ∀ n, P16404048271774149158.a n = A359400 n

end A359400

/-! ## A359400.P5926992870931909209

`A029931(A028310(n)-A006257(n))`
-/

namespace A359400.P5926992870931909209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A028310 n - A006257 n).toNat

end

end A359400.P5926992870931909209

namespace A359400

/-- `A029931(A028310(n)-A006257(n))` -/
def P5926992870931909209.Spec : Prop :=
  ∀ n, P5926992870931909209.a n = A359400 n

end A359400

/-! ## A359400.P16810772059329557229

`A000217(A070939(n))-A029931(n)`
-/

namespace A359400.P16810772059329557229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A070939 n).toNat - A029931 n

end

end A359400.P16810772059329557229

namespace A359400

/-- `A000217(A070939(n))-A029931(n)` -/
def P16810772059329557229.Spec : Prop :=
  ∀ n, P16810772059329557229.a n = A359400 n

end A359400

/-! ## A359400.P8128492997376112420

`A029931(A000225(A070939(n))-n)`
-/

namespace A359400.P8128492997376112420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A000225 (A070939 n).toNat - (n : ℤ)).toNat

end

end A359400.P8128492997376112420

namespace A359400

/-- `A029931(A000225(A070939(n))-n)` -/
def P8128492997376112420.Spec : Prop :=
  ∀ n, P8128492997376112420.a n = A359400 n

end A359400

/-! ## A359400.P2566204046285973134

`A000120(n)+A073642(n)-A393336(n)`
-/

namespace A359400.P2566204046285973134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A073642 n - A393336 n)

end

end A359400.P2566204046285973134

namespace A359400

/-- `A000120(n)+A073642(n)-A393336(n)` -/
def P2566204046285973134.Spec : Prop :=
  ∀ n, P2566204046285973134.a n = A359400 n

end A359400

/-! ## A359400.P17820583749987551592

`A029931(A008486(n)-2*n-A006257(n))`
-/

namespace A359400.P17820583749987551592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A008486 n - (2 * n : ℤ) - A006257 n).toNat

end

end A359400.P17820583749987551592

namespace A359400

/-- `A029931(A008486(n)-2*n-A006257(n))` -/
def P17820583749987551592.Spec : Prop :=
  ∀ n, P17820583749987551592.a n = A359400 n

end A359400

/-! ## A359400.P15989181267002828461

`A073642(2*A035327(n))`
-/

namespace A359400.P15989181267002828461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * A035327 n).toNat

end

end A359400.P15989181267002828461

namespace A359400

/-- `A073642(2*A035327(n))` -/
def P15989181267002828461.Spec : Prop :=
  ∀ n, P15989181267002828461.a n = A359400 n

end A359400

/-! ## A359400.P557351496881934867

`A073642(2*n)-A393336(n)`
-/

namespace A359400.P557351496881934867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n) - A393336 n

end

end A359400.P557351496881934867

namespace A359400

/-- `A073642(2*n)-A393336(n)` -/
def P557351496881934867.Spec : Prop :=
  ∀ n, P557351496881934867.a n = A359400 n

end A359400

/-! ## A359400.P15319867576504575975

`A073642(2*A036044(n))+A230877(n)-A029931(n)`
-/

namespace A359400.P15319867576504575975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * A036044 n).toNat + (A230877 n - A029931 n)

end

end A359400.P15319867576504575975

namespace A359400

/-- `A073642(2*A036044(n))+A230877(n)-A029931(n)` -/
def P15319867576504575975.Spec : Prop :=
  ∀ n, P15319867576504575975.a n = A359400 n

end A359400

/-! ## A359400.P11680595954563280326

`A073642(2*A036044(n))+A281392(n)-A161511(n)`
-/

namespace A359400.P11680595954563280326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * A036044 n).toNat + (A281392 n - A161511 n)

end

end A359400.P11680595954563280326

namespace A359400

/-- `A073642(2*A036044(n))+A281392(n)-A161511(n)` -/
def P11680595954563280326.Spec : Prop :=
  ∀ n, P11680595954563280326.a n = A359400 n

end A359400

/-!
# A359401: Nonnegative integers whose sum of positions of 1's in their binary expansion is greater than the sum of positions of 1's in their reversed binary expansion, where positions in a sequence are read starting with 1 from the left.

The programs for A359401, there is no canonical definition to state claims against.
-/

/-! ## A359401.P11174508927553545801

`lt[0, A359495(n)]`
-/

namespace A359401.P11174508927553545801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359401.P11174508927553545801

/-! ## A359401.P14458851982254305293

`lt[A029931(n), A230877(n)]`
-/

namespace A359401.P14458851982254305293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359401.P14458851982254305293

/-! ## A359401.P2920284463235960756

`lt[A073642(n), A231204(n)]`
-/

namespace A359401.P2920284463235960756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359401.P2920284463235960756

/-! ## A359401.P14421690400532543257

`lt[A329369(n), A360288(n)]`
-/

namespace A359401.P14421690400532543257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359401.P14421690400532543257

/-! ## A359401.P9641901996681443832

`lt[log2(A029930(n)), A230877(n)]`
-/

namespace A359401.P9641901996681443832
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A359401.P9641901996681443832

/-! ## A359401.P2234967376260899276

`lt[0, A281392(n)-A161511(n)]`
-/

namespace A359401.P2234967376260899276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n - A161511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359401.P2234967376260899276

/-! ## A359401.P309576110247506253

`lt[A073642(2*n), A230877(n)]`
-/

namespace A359401.P309576110247506253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359401.P309576110247506253

/-! ## A359401.P10409865801588881433

`lt[A029930(n), A029930(A030101(n))]`
-/

namespace A359401.P10409865801588881433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359401.P10409865801588881433

/-! ## A359401.P7076601926605876924

`lt[A029931(n), A029931(A030101(n))]`
-/

namespace A359401.P7076601926605876924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359401.P7076601926605876924

/-! ## A359401.P11006343221956461488

`lt[A055941(n), A055941(A035327(n))]`
-/

namespace A359401.P11006343221956461488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359401.P11006343221956461488

/-!
# A359402: Numbers whose binary expansion and reversed binary expansion have the same sum of positions of 1's, where positions in a sequence are read starting with 1 from the left.

The programs for A359402, there is no canonical definition to state claims against.
-/

/-! ## A359402.P2954401809940756854

`eq[0, A359495(n)]`
-/

namespace A359402.P2954401809940756854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359402.P2954401809940756854

/-! ## A359402.P9447332985328836455

`eq[A029931(n), A230877(n)]`
-/

namespace A359402.P9447332985328836455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359402.P9447332985328836455

/-! ## A359402.P8548128973437423022

`eq[A073642(n), A231204(n)]`
-/

namespace A359402.P8548128973437423022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359402.P8548128973437423022

/-! ## A359402.P8832938427078036950

`eq[A161511(n), A281392(n)]`
-/

namespace A359402.P8832938427078036950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359402.P8832938427078036950

/-! ## A359402.P17681556631517788617

`eq[A326730(n), A326732(n)]`
-/

namespace A359402.P17681556631517788617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359402.P17681556631517788617

/-! ## A359402.P10459844448461889095

`∪[A006995(n+1), A256082(n+1)]`
-/

namespace A359402.P10459844448461889095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359402.P10459844448461889095

/-!
# A359404: Number of unordered triples of self-avoiding paths with nodes that cover all vertices of a convex n-gon.

The programs for A359404, there is no canonical definition to state claims against.
-/

/-! ## A359404.P12931745826533470975

`A242735(A151353(n))`
-/

namespace A359404.P12931745826533470975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242735 (A151353 n).toNat

end

end A359404.P12931745826533470975

/-! ## A359404.P17371327445712256324

`A326541(A080241(n))`
-/

namespace A359404.P17371327445712256324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 (A080241 n).toNat

end

end A359404.P17371327445712256324

/-! ## A359404.P11196337748066483370

`A326541(A346296(n))`
-/

namespace A359404.P11196337748066483370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 (A346296 n).toNat

end

end A359404.P11196337748066483370

/-!
# A359405: Number of unordered pairs of self-avoiding paths with nodes that cover all vertices of a convex n-gon; one-node paths are allowed.

The programs for A359405, there is no canonical definition to state claims against.
-/

/-! ## A359405.P5373433543306301657

`A332426(n+1)+A363964(n+1)-A308914(n+1)`
-/

namespace A359405.P5373433543306301657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332426 (n + 1) + (A363964 (n + 1) - A308914 (n + 1))

end

end A359405.P5373433543306301657

/-! ## A359405.P4708000951822845380

`A390894(∑[n+1]+2)`
-/

namespace A359405.P4708000951822845380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390894 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A359405.P4708000951822845380

/-!
# A359406: Integers k such that the concatenation of k consecutive primes starting at 31 is prime.

The programs for A359406, there is no canonical definition to state claims against.
-/

/-! ## A359406.P13033605034699062678

`A143071(A359391(n))`
-/

namespace A359406.P13033605034699062678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143071 (A359391 n).toNat

end

end A359406.P13033605034699062678

/-!
# A359408: Integers d such that the longest possible arithmetic progression (AP) of primes with common difference d has only two elements.

The programs for A359408, there is no canonical definition to state claims against.
-/

/-! ## A359408.P18231910708480217242

`eq[2, A123556(n+1)]+1`
-/

namespace A359408.P18231910708480217242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359408.P18231910708480217242

/-! ## A359408.P2191812723924644667

`lt[A067079(A046125(3*n+4)), A005065(n+2)]`
-/

namespace A359408.P2191812723924644667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067079 (A046125 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359408.P2191812723924644667

/-!
# A359409: Integers d such that the largest possible arithmetic progression (AP) of primes with common difference d has exactly four elements.

The programs for A359409, there is no canonical definition to state claims against.
-/

/-! ## A359409.P1560354447822918166

`eq[4, A123556(n+1)]+1`
-/

namespace A359409.P1560354447822918166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359409.P1560354447822918166

/-! ## A359409.P14349326191041855533

`eq[4, A123556(A028310(n))]`
-/

namespace A359409.P14349326191041855533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359409.P14349326191041855533

/-! ## A359409.P3495013016545863475

`eq[4, A123556(A065190(n+1))]`
-/

namespace A359409.P3495013016545863475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359409.P3495013016545863475

/-! ## A359409.P7972740926468330359

`A153152(eq[4, A123556(n+1)])`
-/

namespace A359409.P7972740926468330359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359409.P7972740926468330359

/-! ## A359409.P16182440431225536468

`eq[4, A123556(A233583(n+1))]`
-/

namespace A359409.P16182440431225536468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359409.P16182440431225536468

/-!
# A359410: Integers d such that the longest possible arithmetic progression (AP) of primes with common difference d has exactly 6 elements.

The programs for A359410, there is no canonical definition to state claims against.
-/

/-! ## A359410.P16649786127416344162

`A249674(comp[a(n-2)+7])` with `a(0)=5, a(1)=0, a(2)=0`
-/

namespace A359410.P16649786127416344162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 0, 0] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A359410.P16649786127416344162

/-! ## A359410.P16660595233660329067

`A358756(A055642(2*(n+1))+n)`
-/

namespace A359410.P16660595233660329067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358756 (A055642 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A359410.P16660595233660329067

/-! ## A359410.P9210798336704287671

`∑[A040871(A005657(n)+1)]`
-/

namespace A359410.P9210798336704287671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040871 (A005657 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359410.P9210798336704287671

/-! ## A359410.P3752933758177321051

`record[30*A086389(n+1)]`
-/

namespace A359410.P3752933758177321051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A086389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359410.P3752933758177321051

/-! ## A359410.P15677390743845686150

`record[30*A086257(2*(n+1))]`
-/

namespace A359410.P15677390743845686150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A086257 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359410.P15677390743845686150

/-!
# A359411: a(n) is the number of divisors of n that are both infinitary and exponential.

The programs for A359411, the canonical program `A359411.P11879795316904517508` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359411 has offset 1).

The definition of A359411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359411.P11879795316904517508

`∏{e}[n+1, A092505(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A359411

/-- `∏{e}[n+1, A092505(#)]` -/
def P11879795316904517508.Spec : Prop :=
  ∀ n, P11879795316904517508.a n = A359411 (n + 1)

theorem P11879795316904517508.correct : P11879795316904517508.Spec := by
  intro n
  simp only [A359411, Nat.add_sub_cancel]

end A359411

/-! ## A359411.P4004047632219633515

`A034444(A368540(n+1))`
-/

namespace A359411.P4004047632219633515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A368540 (n + 1)).toNat

end

end A359411.P4004047632219633515

namespace A359411

/-- `A034444(A368540(n+1))` -/
def P4004047632219633515.Spec : Prop :=
  ∀ n, P4004047632219633515.a n = A359411 (n + 1)

end A359411

/-! ## A359411.P5000963828253291044

`A278908(n+1)/A056624(n+1)`
-/

namespace A359411.P5000963828253291044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278908 (n + 1) : ℚ) / (A056624 (n + 1) : ℚ)

end

end A359411.P5000963828253291044

namespace A359411

/-- `A278908(n+1)/A056624(n+1)` -/
def P5000963828253291044.Spec : Prop :=
  ∀ n, P5000963828253291044.a n = (A359411 (n + 1) : ℚ)

end A359411

/-! ## A359411.P6286699875243886322

`∏{e}[n+1, A034444(#)]/A056624(n+1)`
-/

namespace A359411.P6286699875243886322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), A034444 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / (A056624 (n + 1) : ℚ)

end

end A359411.P6286699875243886322

namespace A359411

/-- `∏{e}[n+1, A034444(#)]/A056624(n+1)` -/
def P6286699875243886322.Spec : Prop :=
  ∀ n, P6286699875243886322.a n = (A359411 (n + 1) : ℚ)

end A359411

/-! ## A359411.P13645698519377767945

`∏{e}[n+1, A048669(#)]/A056624(n+1)`
-/

namespace A359411.P13645698519377767945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), A048669 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / (A056624 (n + 1) : ℚ)

end

end A359411.P13645698519377767945

namespace A359411

/-- `∏{e}[n+1, A048669(#)]/A056624(n+1)` -/
def P13645698519377767945.Spec : Prop :=
  ∀ n, P13645698519377767945.a n = (A359411 (n + 1) : ℚ)

end A359411

/-! ## A359411.P2713783924832904953

`2^∑{e}[n+1, A001221(#)]/A056624(n+1)`
-/

namespace A359411.P2713783924832904953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A001221 (Nat.factorization (f1 n) p) : ℤ) / (A056624 (n + 1) : ℚ)

end

end A359411.P2713783924832904953

namespace A359411

/-- `2^∑{e}[n+1, A001221(#)]/A056624(n+1)` -/
def P2713783924832904953.Spec : Prop :=
  ∀ n, P2713783924832904953.a n = (A359411 (n + 1) : ℚ)

end A359411

/-! ## A359411.P5950552281873352777

`∏{e}[n+1, 2^A051265(#+1)]/A056624(n+1)`
-/

namespace A359411.P5950552281873352777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ (A051265 (Nat.factorization (f1 n) p + 1) : ℤ)) / (A056624 (n + 1) : ℚ)

end

end A359411.P5950552281873352777

namespace A359411

/-- `∏{e}[n+1, 2^A051265(#+1)]/A056624(n+1)` -/
def P5950552281873352777.Spec : Prop :=
  ∀ n, P5950552281873352777.a n = (A359411 (n + 1) : ℚ)

end A359411

/-! ## A359411.P10577687281681720465

`∏{e}[n+1, 2^A001221(#%(n+1))]/A056624(n+1)`
-/

namespace A359411.P10577687281681720465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ (A001221 (Nat.factorization (f1 n) p % (n + 1)) : ℤ)) / (A056624 (n + 1) : ℚ)

end

end A359411.P10577687281681720465

namespace A359411

/-- `∏{e}[n+1, 2^A001221(#%(n+1))]/A056624(n+1)` -/
def P10577687281681720465.Spec : Prop :=
  ∀ n, P10577687281681720465.a n = (A359411 (n + 1) : ℚ)

end A359411

/-! ## A359411.P1090069336009402173

`A034444(A338782(n+1)/A007948(n+1))`
-/

namespace A359411.P1090069336009402173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((A338782 (n + 1) : ℚ) / (A007948 (n + 1) : ℚ))).toNat

end

end A359411.P1090069336009402173

namespace A359411

/-- `A034444(A338782(n+1)/A007948(n+1))` -/
def P1090069336009402173.Spec : Prop :=
  ∀ n, P1090069336009402173.a n = A359411 (n + 1)

end A359411

/-! ## A359411.P2941165447894493990

`∏{e}[A278254(n+1), A000005(A000120(#))]`
-/

namespace A359411.P2941165447894493990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (A000120 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A359411.P2941165447894493990

namespace A359411

/-- `∏{e}[A278254(n+1), A000005(A000120(#))]` -/
def P2941165447894493990.Spec : Prop :=
  ∀ n, P2941165447894493990.a n = A359411 (n + 1)

end A359411

/-! ## A359411.P11896630838812835976

`∏{e}[(n+1)², A001221(#)]`
-/

namespace A359411.P11896630838812835976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001221 (Nat.factorization (f1 n) p)

end

end A359411.P11896630838812835976

namespace A359411

/-- `∏{e}[(n+1)², A001221(#)]` -/
def P11896630838812835976.Spec : Prop :=
  ∀ n, P11896630838812835976.a n = A359411 (n + 1)

end A359411

/-! ## A359411.P3142356531261019508

`∏{e}[((n+1)*(-1)^∑{e}[n+1, #])², A348928(#)]`
-/

namespace A359411.P3142356531261019508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A348928 (Nat.factorization (f1 n).natAbs p)

end

end A359411.P3142356531261019508

namespace A359411

/-- `∏{e}[((n+1)*(-1)^∑{e}[n+1, #])², A348928(#)]` -/
def P3142356531261019508.Spec : Prop :=
  ∀ n, P3142356531261019508.a n = A359411 (n + 1)

end A359411

/-! ## A359411.P5840559144898017983

`gcd(A000079(n), A361063(n+1))`
-/

namespace A359411.P5840559144898017983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A361063 (n + 1))

end

end A359411.P5840559144898017983

namespace A359411

/-- `gcd(A000079(n), A361063(n+1))` -/
def P5840559144898017983.Spec : Prop :=
  ∀ n, (P5840559144898017983.a n : ℤ) = A359411 (n + 1)

end A359411

/-!
# A359412: Numbers with a record number of divisors that are both infinitary and exponential.

The programs for A359412, there is no canonical definition to state claims against.
-/

/-! ## A359412.P8896399755575476019

`∏[A323520(n+1)^3]`
-/

namespace A359412.P8896399755575476019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A359412.P8896399755575476019

/-! ## A359412.P5052413902183276202

`A046056(3^n)`
-/

namespace A359412.P5052413902183276202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (3 ^ n)

end

end A359412.P5052413902183276202

/-! ## A359412.P5130329166878934698

`A344085(2^n)^3`
-/

namespace A359412.P5130329166878934698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344085 (2 ^ n) ^ 3

end

end A359412.P5130329166878934698

/-!
# A359414: Primes prime(k) such that prime(k)^2 + prime(k+1)^2 - 1 is the square of a prime.

The programs for A359414, there is no canonical definition to state claims against.
-/

/-! ## A359414.P13006113936691029581

`A160054(lt[A099612(n), A016993(n)])`
-/

namespace A359414.P13006113936691029581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359414.P13006113936691029581

/-! ## A359414.P10156007501399481029

`A160054(lt[A099612(n), A124177(n+1)])`
-/

namespace A359414.P10156007501399481029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359414.P10156007501399481029

/-! ## A359414.P17591346036339179003

`A160054(lt[A099612(n), A138137(n+1)])`
-/

namespace A359414.P17591346036339179003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359414.P17591346036339179003

/-!
# A359415: Numbers k such that phi(k) is a 5-smooth number where phi is the Euler totient function.

The programs for A359415, there is no canonical definition to state claims against.
-/

/-! ## A359415.P15321579911354970631

`eq[1, A336468(n+1)]+1`
-/

namespace A359415.P15321579911354970631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359415.P15321579911354970631

/-! ## A359415.P7202296932134293124

`record[(n+1)/A336468(2*(n+1))]`
-/

namespace A359415.P7202296932134293124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A336468 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359415.P7202296932134293124

/-! ## A359415.P3608064584279741880

`eq[1, A035160(Δ[A002088(n)])]+1`
-/

namespace A359415.P3608064584279741880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035160 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359415.P3608064584279741880

/-! ## A359415.P17888359239618014904

`eq[1, A007732(A007732(n+1))]+1`
-/

namespace A359415.P17888359239618014904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A007732 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359415.P17888359239618014904

/-! ## A359415.P17297621763591571713

`eq[1, A035160(A000010(n+1))]+1`
-/

namespace A359415.P17297621763591571713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035160 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359415.P17297621763591571713

/-! ## A359415.P15095878155124401926

`eq[2, A141256(A007733(n+1))]+1`
-/

namespace A359415.P15095878155124401926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A007733 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359415.P15095878155124401926

/-! ## A359415.P4103265084329046066

`∪[A048135(n+1), A396553(n+1)]`
-/

namespace A359415.P4103265084329046066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359415.P4103265084329046066

/-! ## A359415.P17149572492827180607

`∪[A051913(n+1), A396553(n+1)]`
-/

namespace A359415.P17149572492827180607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359415.P17149572492827180607

/-! ## A359415.P6319865803906626873

`∪[A122254(n+1), A396553(n+1)]`
-/

namespace A359415.P6319865803906626873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359415.P6319865803906626873

/-! ## A359415.P11879391266756921353

`record[A028310(n+1)/A007732(A007732(n+1))]`
-/

namespace A359415.P11879391266756921353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A007732 (A007732 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359415.P11879391266756921353

/-!
# A359417: Phi-practical numbers (A260653) whose divisors have distinct values of the Euler totient function (A000010).

The programs for A359417, there is no canonical definition to state claims against.
-/

/-! ## A359417.P11116013196102245128

`∩[A260653(n+1), A326835(n+1)]`
-/

namespace A359417.P11116013196102245128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359417.P11116013196102245128

/-! ## A359417.P11123340209877266309

`or(A001274(n+1), A152271(n!))`
-/

namespace A359417.P11123340209877266309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001274 (n + 1)) (A152271 (Nat.factorial n))

end

end A359417.P11123340209877266309

/-! ## A359417.P10449343954568687094

`or(A001274(n+1), A340428(∑[n]))`
-/

namespace A359417.P10449343954568687094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001274 (n + 1)) (A340428 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A359417.P10449343954568687094

/-! ## A359417.P4130414413742754559

`or(A001221(5^n), A001274(n+1))`
-/

namespace A359417.P4130414413742754559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (5 ^ n)) (A001274 (n + 1))

end

end A359417.P4130414413742754559

/-!
# A359418: Unitary phi-practical (A286906) whose unitary divisors have distinct values of the unitary totient function uphi (A047994).

The programs for A359418, there is no canonical definition to state claims against.
-/

/-! ## A359418.P2020307632958247801

`filter[A359417(n+1), A384667(#)]`
-/

namespace A359418.P2020307632958247801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A359418.P2020307632958247801

/-! ## A359418.P11267469584604259591

`A279510(A265501(n+1))`
-/

namespace A359418.P11267469584604259591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279510 (A265501 (n + 1)).toNat

end

end A359418.P11267469584604259591

/-! ## A359418.P17754990148235750834

`A279510(A286652(n+1))`
-/

namespace A359418.P17754990148235750834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279510 (A286652 (n + 1)).toNat

end

end A359418.P17754990148235750834

/-! ## A359418.P901648477473247899

`A003961(A286652(n+1)%A071363(n+1))`
-/

namespace A359418.P901648477473247899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A286652 (n + 1)) (A071363 (n + 1))).toNat

end

end A359418.P901648477473247899

/-!
# A359419: Nonsquarefree numbers that are both phi-practical and unitary phi-practical.

The programs for A359419, there is no canonical definition to state claims against.
-/

/-! ## A359419.P9440279184489742536

`filter[A286906(n+1), A355447(#)]`
-/

namespace A359419.P9440279184489742536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A359419.P9440279184489742536

/-! ## A359419.P370115649187442733

`filter[A286906(n+1), A389905(#)]`
-/

namespace A359419.P370115649187442733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A359419.P370115649187442733

/-! ## A359419.P17470102891526623006

`filter[A286906(n+2), A087049(#)]`
-/

namespace A359419.P17470102891526623006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A359419.P17470102891526623006

/-! ## A359419.P9767829255271689198

`∩[A284342(n+1), A286906(n+1)]`
-/

namespace A359419.P9767829255271689198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P9767829255271689198

/-! ## A359419.P14500068234252420149

`∩[A274141(n+1), A286906(n+1)]`
-/

namespace A359419.P14500068234252420149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P14500068234252420149

/-! ## A359419.P3000117679712151508

`∩[A065303(n+1), A286906(n+1)]`
-/

namespace A359419.P3000117679712151508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P3000117679712151508

/-! ## A359419.P14946886300788588159

`∩[A286906(n+1), A389227(n+1)]`
-/

namespace A359419.P14946886300788588159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P14946886300788588159

/-! ## A359419.P7149796056268942261

`∩[A286906(n+1), A332785(n+1)]`
-/

namespace A359419.P7149796056268942261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P7149796056268942261

/-! ## A359419.P11776030796631188089

`∩[A286906(n+1), A317616(n+1)]`
-/

namespace A359419.P11776030796631188089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P11776030796631188089

/-! ## A359419.P16308968969213206097

`∩[A051144(n+1), A286906(n+1)]`
-/

namespace A359419.P16308968969213206097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P16308968969213206097

/-! ## A359419.P4109994162393003430

`∩[A059404(n+1), A286906(n+1)]`
-/

namespace A359419.P4109994162393003430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P4109994162393003430

/-! ## A359419.P16886955174955804317

`∩[A126706(n+1), A286906(n+1)]`
-/

namespace A359419.P16886955174955804317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P16886955174955804317

/-! ## A359419.P17939936626837838798

`∩[A286906(n+1), A303946(n+1)]`
-/

namespace A359419.P17939936626837838798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P17939936626837838798

/-! ## A359419.P8745856390269060339

`∩[A383080(n+1), A286906(n+1)]`
-/

namespace A359419.P8745856390269060339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P8745856390269060339

/-! ## A359419.P11938244516295453257

`∩[A013929(n+1), A286906(n+1)]`
-/

namespace A359419.P11938244516295453257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P11938244516295453257

/-! ## A359419.P8185691062009888056

`∩[A049199(n+1), A286906(n+1)]`
-/

namespace A359419.P8185691062009888056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P8185691062009888056

/-! ## A359419.P506529199246805443

`∩[A080756(n+1), A286906(n+1)]`
-/

namespace A359419.P506529199246805443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359419.P506529199246805443

/-! ## A359419.P6436345462014345315

`filter[A286906(n+1), A107078(#)]`
-/

namespace A359419.P6436345462014345315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A359419.P6436345462014345315

/-!
# A359420: Numbers that are both practical (A005153) and phi-practical (A260653).

The programs for A359420, there is no canonical definition to state claims against.
-/

/-! ## A359420.P5483490062874234500

`filter[A260653(n+1), A365429(#)]`
-/

namespace A359420.P5483490062874234500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A359420.P5483490062874234500

/-! ## A359420.P9355302041645977014

`filter[A336506(n+1), A365429(#)]`
-/

namespace A359420.P9355302041645977014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A359420.P9355302041645977014

/-! ## A359420.P18297367360476822758

`∩[A174973(n+1), A260653(n+1)]`
-/

namespace A359420.P18297367360476822758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P18297367360476822758

/-! ## A359420.P10075474364917512713

`∩[A336506(n+1), A174973(n+1)]`
-/

namespace A359420.P10075474364917512713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P10075474364917512713

/-! ## A359420.P1103018570983182949

`∩[A005153(n+1), A260653(n+1)]`
-/

namespace A359420.P1103018570983182949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P1103018570983182949

/-! ## A359420.P18419745446799713092

`∩[A005153(n+1), A336506(n+1)]`
-/

namespace A359420.P18419745446799713092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P18419745446799713092

/-! ## A359420.P3457289829912823267

`∩[A093891(n+1), A260653(n+1)]`
-/

namespace A359420.P3457289829912823267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P3457289829912823267

/-! ## A359420.P4483241506050674196

`∩[A093891(n+1), A336506(n+1)]`
-/

namespace A359420.P4483241506050674196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P4483241506050674196

/-! ## A359420.P1788996598353933466

`filter[A260653(n+1), A322860(#)]`
-/

namespace A359420.P1788996598353933466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A359420.P1788996598353933466

/-! ## A359420.P2138088823956212263

`filter[A336506(n+1), A322860(#)]`
-/

namespace A359420.P2138088823956212263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A359420.P2138088823956212263

/-! ## A359420.P9112171861022484364

`∩[A260653(n+1), A004277(n)]`
-/

namespace A359420.P9112171861022484364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P9112171861022484364

/-! ## A359420.P8367822807666528417

`∩[A336506(n+1), A004277(n)]`
-/

namespace A359420.P8367822807666528417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P8367822807666528417

/-! ## A359420.P8164754874203801330

`∩[A260653(n+1), A004275(n)]`
-/

namespace A359420.P8164754874203801330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P8164754874203801330

/-! ## A359420.P13191680457298878804

`∩[A336506(n+1), A004275(n)]`
-/

namespace A359420.P13191680457298878804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P13191680457298878804

/-! ## A359420.P13722434202214288433

`∩[A066507(n+1), A260653(n+1)]`
-/

namespace A359420.P13722434202214288433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P13722434202214288433

/-! ## A359420.P11383103718689182739

`∩[A066507(n+1), A336506(n+1)]`
-/

namespace A359420.P11383103718689182739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P11383103718689182739

/-! ## A359420.P6751853471639970239

`∩[A047237(n+1), A260653(n+1)]`
-/

namespace A359420.P6751853471639970239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P6751853471639970239

/-! ## A359420.P497076410178946912

`∩[A047237(n+1), A336506(n+1)]`
-/

namespace A359420.P497076410178946912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P497076410178946912

/-! ## A359420.P9122484251500154081

`∩[A047263(n+1), A260653(n+1)]`
-/

namespace A359420.P9122484251500154081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P9122484251500154081

/-! ## A359420.P1490320473801776134

`∩[A047263(n+1), A336506(n+1)]`
-/

namespace A359420.P1490320473801776134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359420.P1490320473801776134

/-!
# A359421: a(n) = number of abelian groups of order p^2 - 1, where p = prime(n).

The programs for A359421, there is no canonical definition to state claims against.
-/

/-! ## A359421.P17551476072748515572

`A000688(A084920(n+1))`
-/

namespace A359421.P17551476072748515572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A084920 (n + 1)).toNat

end

end A359421.P17551476072748515572

/-! ## A359421.P17013959337380556594

`A000688(A000040(n+1)²-1)`
-/

namespace A359421.P17013959337380556594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000040 (n + 1) ^ 2 - 1).toNat

end

end A359421.P17013959337380556594

/-! ## A359421.P10962206612941959450

`∏{e}[A084920(n+1), A000041(#)]`
-/

namespace A359421.P10962206612941959450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A359421.P10962206612941959450

/-! ## A359421.P2484851283463288971

`∏{e}[A084920(n+1), A092885(#)]`
-/

namespace A359421.P2484851283463288971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A092885 (Nat.factorization (f1 n).natAbs p)

end

end A359421.P2484851283463288971

/-! ## A359421.P394296692614653584

`∏{e}[A084920(n+1), A238868(#)]`
-/

namespace A359421.P394296692614653584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A238868 (Nat.factorization (f1 n).natAbs p)

end

end A359421.P394296692614653584

/-! ## A359421.P10186047679986181693

`∏{e}[1-A001248(n+1), A000041(#)]`
-/

namespace A359421.P10186047679986181693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A359421.P10186047679986181693

/-! ## A359421.P9779362902482976148

`∏{e}[A000040(n+1)²-1, A242699(#)]`
-/

namespace A359421.P9779362902482976148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A242699 (Nat.factorization (f1 n).natAbs p + 64)

end

end A359421.P9779362902482976148

/-! ## A359421.P7754916635002706806

`A101872(A084921(n+1))`
-/

namespace A359421.P7754916635002706806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A084921 (n + 1)).toNat

end

end A359421.P7754916635002706806

/-!
# A359422: Dirichlet inverse of A187074, characteristic function of numbers that are neither multiples of 3 nor of the form 4u+2.

The programs for A359422, there is no canonical definition to state claims against.
-/

/-! ## A359422.P9538314725510450793

`A355690(A203648(n+1))`
-/

namespace A359422.P9538314725510450793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (A203648 (n + 1)).toNat

end

end A359422.P9538314725510450793

/-! ## A359422.P13435655424190620322

`A355690(n+1)%A132708(n)`
-/

namespace A359422.P13435655424190620322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355690 (n + 1)) (A132708 n)

end

end A359422.P13435655424190620322

/-! ## A359422.P4883925321975859034

`A010892(n)²*A355690(n+1)`
-/

namespace A359422.P4883925321975859034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n ^ 2 * A355690 (n + 1)

end

end A359422.P4883925321975859034

/-! ## A359422.P13871979714098048095

`A049347(n)²*A355690(n+1)`
-/

namespace A359422.P13871979714098048095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n ^ 2 * A355690 (n + 1)

end

end A359422.P13871979714098048095

/-! ## A359422.P1412336928350410769

`A117441(n)²*A355690(n+1)`
-/

namespace A359422.P1412336928350410769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117441 n ^ 2 * A355690 (n + 1)

end

end A359422.P1412336928350410769

/-! ## A359422.P5399848450585310897

`A187074(n+1)*A355690(n+1)`
-/

namespace A359422.P5399848450585310897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (n + 1) * A355690 (n + 1)

end

end A359422.P5399848450585310897

/-! ## A359422.P9654070894823222510

`A355690(n+1)*A374039(n+1)`
-/

namespace A359422.P9654070894823222510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (n + 1) * A374039 (n + 1)

end

end A359422.P9654070894823222510

/-! ## A359422.P1835646677294305432

`∑{d}[n+1, A051064(#)*A355691((n+1)/#)]`
-/

namespace A359422.P1835646677294305432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d * A355691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359422.P1835646677294305432

/-! ## A359422.P17388172487215492235

`A011655(n+1)*A355690(n+1)`
-/

namespace A359422.P17388172487215492235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A355690 (n + 1)

end

end A359422.P17388172487215492235

/-! ## A359422.P8877449219820346660

`A355690(A008606(n+1))`
-/

namespace A359422.P8877449219820346660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (A008606 (n + 1)).toNat

end

end A359422.P8877449219820346660

/-! ## A359422.P5549016044303036048

`A355690(A004949(n+1))`
-/

namespace A359422.P5549016044303036048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (A004949 (n + 1)).toNat

end

end A359422.P5549016044303036048

/-!
# A359423: The least common multiple of the arithmetic derivative and the primorial base exp-function.

The programs for A359423, there is no canonical definition to state claims against.
-/

/-! ## A359423.P12082799248802206093

`A358669(n)/A327858(n)`
-/

namespace A359423.P12082799248802206093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358669 n : ℚ) / (A327858 n : ℚ)

end

end A359423.P12082799248802206093

/-! ## A359423.P10583645630654590067

`A003415(n)*A351231(n)`
-/

namespace A359423.P10583645630654590067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A351231 n

end

end A359423.P10583645630654590067

/-! ## A359423.P13193649233362229225

`A276086(n)*A351230(n)`
-/

namespace A359423.P13193649233362229225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n * A351230 n

end

end A359423.P13193649233362229225

/-! ## A359423.P3752607269913097873

`lcm(A003415(n), A276086(n))`
-/

namespace A359423.P3752607269913097873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003415 n) (A276086 n)

end

end A359423.P3752607269913097873

/-! ## A359423.P3197326822196989835

`A003415(n)*A276086(A351233(n))`
-/

namespace A359423.P3197326822196989835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A276086 (A351233 n).toNat

end

end A359423.P3197326822196989835

/-! ## A359423.P5489484349343828075

`A358669(n)/A276086(A351234(n))`
-/

namespace A359423.P5489484349343828075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358669 n : ℚ) / (A276086 (A351234 n).toNat : ℚ)

end

end A359423.P5489484349343828075

/-! ## A359423.P4418404567770598467

`(A373849(n)+A003415(n))*A351230(n)`
-/

namespace A359423.P4418404567770598467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A373849 n + A003415 n) * A351230 n

end

end A359423.P4418404567770598467

/-! ## A359423.P5235606691054941211

`(A276086(n)-A373849(n))*A351231(n)`
-/

namespace A359423.P5235606691054941211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A276086 n - A373849 n) * A351231 n

end

end A359423.P5235606691054941211

/-! ## A359423.P11209791723480577720

`A324198(n)*A351230(n)*A351251(n)`
-/

namespace A359423.P11209791723480577720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n * A351230 n * A351251 n

end

end A359423.P11209791723480577720

/-! ## A359423.P15952793663321532042

`A327858(n)*A351230(n)*A351231(n)`
-/

namespace A359423.P15952793663321532042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351230 n * A351231 n

end

end A359423.P15952793663321532042

/-! ## A359423.P8262650771073440122

`A003415(n)*A276086(n)/A327858(n)`
-/

namespace A359423.P8262650771073440122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 n * A276086 n : ℚ) / (A327858 n : ℚ)

end

end A359423.P8262650771073440122

/-!
# A359424: The least common multiple of the arithmetic derivative and the primorial base exp-function, reduced modulo 60.

The programs for A359424, there is no canonical definition to state claims against.
-/

/-! ## A359424.P7532572061000122875

`A359423(n)%60`
-/

namespace A359424.P7532572061000122875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359423 n) 60

end

end A359424.P7532572061000122875

/-!
# A359425: Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

The programs for A359425, there is no canonical definition to state claims against.
-/

/-! ## A359425.P15850963050512501650

`∑{d}[n+1, A347130(#)*A383286((n+1)/#)]`
-/

namespace A359425.P15850963050512501650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347130 d * A383286 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359425.P15850963050512501650

/-!
# A359426: a(n) = A342001(A358764(n)).

The programs for A359426, there is no canonical definition to state claims against.
-/

/-! ## A359426.P3948860908790500283

`A342001(A358764(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359426.P3948860908790500283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A358764 (n + 1)).toNat

end

end A359426.P3948860908790500283

/-! ## A359426.P14555714651764154841

`A342002(n)%A342919(A346470(2*n+1))`
-/

namespace A359426.P14555714651764154841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342002 n) (A342919 (A346470 (2 * n + 1)).toNat)

end

end A359426.P14555714651764154841

/-! ## A359426.P8808380378784997510

`A346469(n)-A117944(A099612(n))`
-/

namespace A359426.P8808380378784997510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346469 n - A117944 (A099612 n).toNat

end

end A359426.P8808380378784997510

/-! ## A359426.P7754538722336813974

`A342002(n)%A014777(A039300(n))`
-/

namespace A359426.P7754538722336813974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342002 n) (A014777 (A039300 n).toNat)

end

end A359426.P7754538722336813974

/-! ## A359426.P7437997779588541380

`A351952(n)%A099312(A005248(n))`
-/

namespace A359426.P7437997779588541380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351952 n) (A099312 (A005248 n).toNat)

end

end A359426.P7437997779588541380

/-!
# A359427: Dirichlet inverse of A358764.

The programs for A359427, there is no canonical definition to state claims against.
-/

/-! ## A359427.P801991296920088632

`A359428(n+1)-A358764(n+1)`
-/

namespace A359427.P801991296920088632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359428 (n + 1) - A358764 (n + 1)

end

end A359427.P801991296920088632

/-! ## A359427.P5904090781409538440

`A359428(n+1)-A060681(A276086(n+1))`
-/

namespace A359427.P5904090781409538440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359428 (n + 1) - A060681 (A276086 (n + 1)).toNat

end

end A359427.P5904090781409538440

/-!
# A359428: Sum of A358764 and its Dirichlet inverse.

The programs for A359428, there is no canonical definition to state claims against.
-/

/-! ## A359428.P7981025265402587957

`A358764(n+1)+A359427(n+1)`
-/

namespace A359428.P7981025265402587957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358764 (n + 1) + A359427 (n + 1)

end

end A359428.P7981025265402587957

/-! ## A359428.P4749305635592900065

`A359427(n+1)+A060681(A276086(n+1))`
-/

namespace A359428.P4749305635592900065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359427 (n + 1) + A060681 (A276086 (n + 1)).toNat

end

end A359428.P4749305635592900065

/-!
# A359429: a(n) = 1 if n is cubefree, but not squarefree, otherwise 0.

The programs for A359429, the canonical program `A359429.P17076319737236321028` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359429 has offset 1).

The definition of A359429 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359429.P17076319737236321028

`A212793(n+1)-A008966(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359429

/-- `A212793(n+1)-A008966(n+1)` -/
def P17076319737236321028.Spec : Prop :=
  ∀ n, P17076319737236321028.a n = A359429 (n + 1)

theorem P17076319737236321028.correct : P17076319737236321028.Spec := by
  intro n
  simp only [A359429, Nat.add_sub_cancel]

end A359429

/-! ## A359429.P9311788912955452408

`A107078(n+1)*A212793(n+1)`
-/

namespace A359429.P9311788912955452408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) * A212793 (n + 1)

end

end A359429.P9311788912955452408

namespace A359429

/-- `A107078(n+1)*A212793(n+1)` -/
def P9311788912955452408.Spec : Prop :=
  ∀ n, P9311788912955452408.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P15259821416372878697

`char[A067259(n+1)-1]`
-/

namespace A359429.P15259821416372878697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359429.P15259821416372878697

namespace A359429

/-- `char[A067259(n+1)-1]` -/
def P15259821416372878697.Spec : Prop :=
  ∀ n, (P15259821416372878697.a n : ℤ) = A359429 (n + 1)

end A359429

/-! ## A359429.P8627197689395663244

`char[eq[2, A051903(n+1)]]`
-/

namespace A359429.P8627197689395663244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359429.P8627197689395663244

namespace A359429

/-- `char[eq[2, A051903(n+1)]]` -/
def P8627197689395663244.Spec : Prop :=
  ∀ n, (P8627197689395663244.a n : ℤ) = A359429 (n + 1)

end A359429

/-! ## A359429.P1802550665411110653

`char[eq[2, A072411(n+1)]]`
-/

namespace A359429.P1802550665411110653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359429.P1802550665411110653

namespace A359429

/-- `char[eq[2, A072411(n+1)]]` -/
def P1802550665411110653.Spec : Prop :=
  ∀ n, (P1802550665411110653.a n : ℤ) = A359429 (n + 1)

end A359429

/-! ## A359429.P9215412824119500090

`char[eq[2, A157754(n+1)]]`
-/

namespace A359429.P9215412824119500090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359429.P9215412824119500090

namespace A359429

/-- `char[eq[2, A157754(n+1)]]` -/
def P9215412824119500090.Spec : Prop :=
  ∀ n, (P9215412824119500090.a n : ℤ) = A359429 (n + 1)

end A359429

/-! ## A359429.P14491879978977276494

`char[eq[3, A067132(n+1)]]`
-/

namespace A359429.P14491879978977276494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359429.P14491879978977276494

namespace A359429

/-- `char[eq[3, A067132(n+1)]]` -/
def P14491879978977276494.Spec : Prop :=
  ∀ n, (P14491879978977276494.a n : ℤ) = A359429 (n + 1)

end A359429

/-! ## A359429.P1113679659247276973

`and(2, A292589(n+1))/2`
-/

namespace A359429.P1113679659247276973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A292589 (n + 1)) : ℚ) / 2

end

end A359429.P1113679659247276973

namespace A359429

/-- `and(2, A292589(n+1))/2` -/
def P1113679659247276973.Spec : Prop :=
  ∀ n, P1113679659247276973.a n = (A359429 (n + 1) : ℚ)

end A359429

/-! ## A359429.P13926538089080108134

`A185012(A051903(n+1))`
-/

namespace A359429.P13926538089080108134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A051903 (n + 1)).toNat

end

end A359429.P13926538089080108134

namespace A359429

/-- `A185012(A051903(n+1))` -/
def P13926538089080108134.Spec : Prop :=
  ∀ n, P13926538089080108134.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P1088518781778393130

`abs(A157658(A003557(n+1)))`
-/

namespace A359429.P1088518781778393130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157658 (A003557 (n + 1)).toNat|

end

end A359429.P1088518781778393130

namespace A359429

/-- `abs(A157658(A003557(n+1)))` -/
def P1088518781778393130.Spec : Prop :=
  ∀ n, P1088518781778393130.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P14011039312387985781

`A157658(A000190(n+1))²`
-/

namespace A359429.P14011039312387985781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A000190 (n + 1)).toNat ^ 2

end

end A359429.P14011039312387985781

namespace A359429

/-- `A157658(A000190(n+1))²` -/
def P14011039312387985781.Spec : Prop :=
  ∀ n, P14011039312387985781.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P7690337664302456798

`A063524(A072411(n+1)-1)`
-/

namespace A359429.P7690337664302456798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A072411 (n + 1) - 1).toNat

end

end A359429.P7690337664302456798

namespace A359429

/-- `A063524(A072411(n+1)-1)` -/
def P7690337664302456798.Spec : Prop :=
  ∀ n, P7690337664302456798.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P14112759861624003292

`A209229(A328400(n+1)+4)`
-/

namespace A359429.P14112759861624003292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A328400 (n + 1) + 4).toNat

end

end A359429.P14112759861624003292

namespace A359429

/-- `A209229(A328400(n+1)+4)` -/
def P14112759861624003292.Spec : Prop :=
  ∀ n, P14112759861624003292.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P14144331681330909843

`A098108(A051903(n+1)+7)`
-/

namespace A359429.P14144331681330909843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A051903 (n + 1) + 7).toNat

end

end A359429.P14144331681330909843

namespace A359429

/-- `A098108(A051903(n+1)+7)` -/
def P14144331681330909843.Spec : Prop :=
  ∀ n, P14144331681330909843.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P7361007237819183872

`A116676(C(2, A072411(n+1)))`
-/

namespace A359429.P7361007237819183872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 (Nat.choose 2 (A072411 (n + 1)).toNat)

end

end A359429.P7361007237819183872

namespace A359429

/-- `A116676(C(2, A072411(n+1)))` -/
def P7361007237819183872.Spec : Prop :=
  ∀ n, P7361007237819183872.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P7166557106577792157

`A105518(C(4, A051903(n+1)))`
-/

namespace A359429.P7166557106577792157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (Nat.choose 4 (A051903 (n + 1)).toNat)

end

end A359429.P7166557106577792157

namespace A359429

/-- `A105518(C(4, A051903(n+1)))` -/
def P7166557106577792157.Spec : Prop :=
  ∀ n, P7166557106577792157.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P5479681666359635682

`A008683(A008834(n+1))-A008683(n+1)²`
-/

namespace A359429.P5479681666359635682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008834 (n + 1)).toNat - A008683 (n + 1) ^ 2

end

end A359429.P5479681666359635682

namespace A359429

/-- `A008683(A008834(n+1))-A008683(n+1)²` -/
def P5479681666359635682.Spec : Prop :=
  ∀ n, P5479681666359635682.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P12624394285368375987

`(A008683(n+1)-A008683(A019554(n+1)))²`
-/

namespace A359429.P12624394285368375987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) - A008683 (A019554 (n + 1)).toNat) ^ 2

end

end A359429.P12624394285368375987

namespace A359429

/-- `(A008683(n+1)-A008683(A019554(n+1)))²` -/
def P12624394285368375987.Spec : Prop :=
  ∀ n, P12624394285368375987.a n = A359429 (n + 1)

end A359429

/-! ## A359429.P4753345659729014782

`(A008683(n+1)-A008683(A350390(n+1)))²`
-/

namespace A359429.P4753345659729014782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) - A008683 (A350390 (n + 1)).toNat) ^ 2

end

end A359429.P4753345659729014782

namespace A359429

/-- `(A008683(n+1)-A008683(A350390(n+1)))²` -/
def P4753345659729014782.Spec : Prop :=
  ∀ n, P4753345659729014782.a n = A359429 (n + 1)

end A359429

/-!
# A359430: a(n) = 1 if the arithmetic derivative of n is a multiple of 3, otherwise 0.

The programs for A359430, the canonical program `A359430.P17743289433619034511` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359430 has offset 0).

The definition of A359430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359430.P332625973379969903

`A267142(n)+A369658(n)`
-/

namespace A359430.P332625973379969903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 n + A369658 n

end

end A359430.P332625973379969903

namespace A359430

/-- `A267142(n)+A369658(n)` -/
def P332625973379969903.Spec : Prop :=
  ∀ n, P332625973379969903.a n = A359430 n

end A359430

/-! ## A359430.P8421260033017211422

`1-(A373254(n)+A373256(n))`
-/

namespace A359430.P8421260033017211422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A373254 n + A373256 n)

end

end A359430.P8421260033017211422

namespace A359430

/-- `1-(A373254(n)+A373256(n))` -/
def P8421260033017211422.Spec : Prop :=
  ∀ n, P8421260033017211422.a n = A359430 n

end A359430

/-! ## A359430.P14687424213309721933

`1-A373253(n)²`
-/

namespace A359430.P14687424213309721933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A373253 n ^ 2

end

end A359430.P14687424213309721933

namespace A359430

/-- `1-A373253(n)²` -/
def P14687424213309721933.Spec : Prop :=
  ∀ n, P14687424213309721933.a n = A359430 n

end A359430

/-! ## A359430.P10025480477222506328

`char[A327863(n+1)]`
-/

namespace A359430.P10025480477222506328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359430.P10025480477222506328

namespace A359430

/-- `char[A327863(n+1)]` -/
def P10025480477222506328.Spec : Prop :=
  ∀ n, (P10025480477222506328.a n : ℤ) = A359430 n

end A359430

/-! ## A359430.P17743289433619034511

`val(gcd(3, A003415(n)), 3)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A359430

/-- `val(gcd(3, A003415(n)), 3)` -/
def P17743289433619034511.Spec : Prop :=
  ∀ n, (P17743289433619034511.a n : ℤ) = A359430 n

theorem P17743289433619034511.correct : P17743289433619034511.Spec := by
  intro n
  simp only [A359430]

end A359430

/-! ## A359430.P10796431306868751198

`floor(acot((A129283(n)-n)%3))`
-/

namespace A359430.P10796431306868751198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (A129283 n - (n : ℤ)) 3 : ℝ)⌋

end

end A359430.P10796431306868751198

namespace A359430

/-- `floor(acot((A129283(n)-n)%3))` -/
def P10796431306868751198.Spec : Prop :=
  ∀ n, P10796431306868751198.a n = A359430 n

end A359430

/-! ## A359430.P14564145147908088649

`1-(A168036(n)+n)²%3`
-/

namespace A359430.P14564145147908088649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ((A168036 n + (n : ℤ)) ^ 2) 3

end

end A359430.P14564145147908088649

namespace A359430

/-- `1-(A168036(n)+n)²%3` -/
def P14564145147908088649.Spec : Prop :=
  ∀ n, P14564145147908088649.a n = A359430 n

end A359430

/-! ## A359430.P9214405207270372692

`A369658(n)+1-A168182(n)`
-/

namespace A359430.P9214405207270372692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 n + (1 - A168182 n)

end

end A359430.P9214405207270372692

namespace A359430

/-- `A369658(n)+1-A168182(n)` -/
def P9214405207270372692.Spec : Prop :=
  ∀ n, P9214405207270372692.a n = A359430 n

end A359430

/-! ## A359430.P3154113122787464721

`((A129283(n)+A016897(n))%3)%2`
-/

namespace A359430.P3154113122787464721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A129283 n + A016897 n) 3) 2

end

end A359430.P3154113122787464721

namespace A359430

/-- `((A129283(n)+A016897(n))%3)%2` -/
def P3154113122787464721.Spec : Prop :=
  ∀ n, P3154113122787464721.a n = A359430 n

end A359430

/-! ## A359430.P10723308375899160898

`A093719(2*(A168036(n)+n))`
-/

namespace A359430.P10723308375899160898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * (A168036 n + (n : ℤ))).toNat

end

end A359430.P10723308375899160898

namespace A359430

/-- `A093719(2*(A168036(n)+n))` -/
def P10723308375899160898.Spec : Prop :=
  ∀ n, P10723308375899160898.a n = A359430 n

end A359430

/-! ## A359430.P7245361184091643365

`A093719(2*(A129283(n)-n))`
-/

namespace A359430.P7245361184091643365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * (A129283 n - (n : ℤ))).toNat

end

end A359430.P7245361184091643365

namespace A359430

/-- `A093719(2*(A129283(n)-n))` -/
def P7245361184091643365.Spec : Prop :=
  ∀ n, P7245361184091643365.a n = A359430 n

end A359430

/-! ## A359430.P2184511542905406759

`A093719(2*(∑{d}[n, A348976(#)]-n))`
-/

namespace A359430.P2184511542905406759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * (∑ d ∈ Nat.divisors (f1 n), A348976 d - (n : ℤ))).toNat

end

end A359430.P2184511542905406759

namespace A359430

/-- `A093719(2*(∑{d}[n, A348976(#)]-n))` -/
def P2184511542905406759.Spec : Prop :=
  ∀ n, P2184511542905406759.a n = A359430 n

end A359430

/-! ## A359430.P12723240600508987887

`A093719(2*A319703(n-(1-n)%(n+1)+1))`
-/

namespace A359430.P12723240600508987887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat).toNat

end

end A359430.P12723240600508987887

namespace A359430

/-- `A093719(2*A319703(n-(1-n)%(n+1)+1))` -/
def P12723240600508987887.Spec : Prop :=
  ∀ n, P12723240600508987887.a n = A359430 n

end A359430

/-! ## A359430.P2178336968549661074

`A093719(2*A327858(n)*A351230(n))`
-/

namespace A359430.P2178336968549661074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * (A327858 n * A351230 n)).toNat

end

end A359430.P2178336968549661074

namespace A359430

/-- `A093719(2*A327858(n)*A351230(n))` -/
def P2178336968549661074.Spec : Prop :=
  ∀ n, P2178336968549661074.a n = A359430 n

end A359430

/-! ## A359430.P14312804097226033927

`A093719(2*(∑[A258057(n)]-A258057(n)))`
-/

namespace A359430.P14312804097226033927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - A258057 n)).toNat

end

end A359430.P14312804097226033927

namespace A359430

/-- `A093719(2*(∑[A258057(n)]-A258057(n)))` -/
def P14312804097226033927.Spec : Prop :=
  ∀ n, P14312804097226033927.a n = A359430 n

end A359430

/-! ## A359430.P11998626984701680122

`A093719(2*A129283(2*n))`
-/

namespace A359430.P11998626984701680122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * A129283 (2 * n)).toNat

end

end A359430.P11998626984701680122

namespace A359430

/-- `A093719(2*A129283(2*n))` -/
def P11998626984701680122.Spec : Prop :=
  ∀ n, P11998626984701680122.a n = A359430 n

end A359430

/-! ## A359430.P18128902668809313939

`A093719(A168036(4*n)/2)`
-/

namespace A359430.P18128902668809313939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (SequenceMachineLib.roundAway ((A168036 (4 * n) : ℚ) / 2)).toNat

end

end A359430.P18128902668809313939

namespace A359430

/-- `A093719(A168036(4*n)/2)` -/
def P18128902668809313939.Spec : Prop :=
  ∀ n, P18128902668809313939.a n = A359430 n

end A359430

/-! ## A359430.P14468547625930947787

`A079978(A003415(n))`
-/

namespace A359430.P14468547625930947787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A003415 n).toNat

end

end A359430.P14468547625930947787

namespace A359430

/-- `A079978(A003415(n))` -/
def P14468547625930947787.Spec : Prop :=
  ∀ n, P14468547625930947787.a n = A359430 n

end A359430

/-! ## A359430.P8126482044149052322

`A055999(A003415(n)+4)%3`
-/

namespace A359430.P8126482044149052322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055999 (A003415 n + 4).toNat) 3

end

end A359430.P8126482044149052322

namespace A359430

/-- `A055999(A003415(n)+4)%3` -/
def P8126482044149052322.Spec : Prop :=
  ∀ n, P8126482044149052322.a n = A359430 n

end A359430

/-! ## A359430.P10457292479290848206

`val(abs(3-A163322(A003415(n)+4))+1, 3)`
-/

namespace A359430.P10457292479290848206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|3 - A163322 (A003415 n + 4).toNat| + 1).toNat 3

end

end A359430.P10457292479290848206

namespace A359430

/-- `val(abs(3-A163322(A003415(n)+4))+1, 3)` -/
def P10457292479290848206.Spec : Prop :=
  ∀ n, (P10457292479290848206.a n : ℤ) = A359430 n

end A359430

/-!
# A359431: a(n) = A325973(n) - A326043(n).

The programs for A359431, there is no canonical definition to state claims against.
-/

/-! ## A359431.P15524053732235288645

`A325973(n+1)-A326043(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359431.P15524053732235288645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - A326043 (n + 1)

end

end A359431.P15524053732235288645

/-! ## A359431.P16268687367319268262

`A325977(n+1)+1+n-A326043(n+1)`
-/

namespace A359431.P16268687367319268262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + 1 + (n : ℤ) - A326043 (n + 1)

end

end A359431.P16268687367319268262

/-! ## A359431.P6384122642599472407

`A325978(n+1)+A001065(n+1)-A326043(n+1)`
-/

namespace A359431.P6384122642599472407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) + A001065 (n + 1) - A326043 (n + 1)

end

end A359431.P6384122642599472407

/-! ## A359431.P11550509790792274640

`A000203(n+1)-A325974(n+1)-A326043(n+1)`
-/

namespace A359431.P11550509790792274640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325974 (n + 1) - A326043 (n + 1)

end

end A359431.P11550509790792274640

/-! ## A359431.P6410742571787594587

`A074400(n+1)/2-A325974(n+1)-A326043(n+1)`
-/

namespace A359431.P6410742571787594587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A325974 (n + 1) : ℚ) - (A326043 (n + 1) : ℚ)

end

end A359431.P6410742571787594587

/-! ## A359431.P5094148540027724931

`abs(A325974(n+1)-A245092(2*n+1))-A326043(n+1)`
-/

namespace A359431.P5094148540027724931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325974 (n + 1) - A245092 (2 * n + 1)| - A326043 (n + 1)

end

end A359431.P5094148540027724931

/-! ## A359431.P8419356363730050389

`A034460(n+1)+A325978(n+1)+A048146(n+1)-A326043(n+1)`
-/

namespace A359431.P8419356363730050389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (A325978 (n + 1) + A048146 (n + 1)) - A326043 (n + 1)

end

end A359431.P8419356363730050389

/-! ## A359431.P16647282959499642050

`A000217(n+1)-(A325974(n+1)+A024816(n+1))-A326043(n+1)`
-/

namespace A359431.P16647282959499642050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (A325974 (n + 1) + A024816 (n + 1)) - A326043 (n + 1)

end

end A359431.P16647282959499642050

/-!
# A359432: Dirichlet inverse of A327936, which is multiplicative sequence with a(p^e) = p if e >= p, otherwise 1.

The programs for A359432, there is no canonical definition to state claims against.
-/

/-! ## A359432.P3363080811040693737

`A359433(n+1)^A000367(A187329(n))`
-/

namespace A359432.P3363080811040693737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359433 (n + 1) : ℚ) ^ (A000367 (A187329 n).toNat : ℤ)

end

end A359432.P3363080811040693737

/-! ## A359432.P14786698266757678424

`A359433(n+1)%A046523(A028871(n+1))`
-/

namespace A359432.P14786698266757678424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359433 (n + 1)) (A046523 (A028871 (n + 1)).toNat)

end

end A359432.P14786698266757678424

/-! ## A359432.P11646057826977723758

`A359433(n+1)^A077925(A000720(3*n+1))`
-/

namespace A359432.P11646057826977723758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359433 (n + 1) : ℚ) ^ (A077925 (A000720 (3 * n + 1)).toNat : ℤ)

end

end A359432.P11646057826977723758

/-! ## A359432.P14204671441546591700

`A359433(n+1)%A061393(A007865(n))`
-/

namespace A359432.P14204671441546591700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359433 (n + 1)) (A061393 (A007865 n).toNat)

end

end A359432.P14204671441546591700

/-! ## A359432.P9752669546376500054

`A359433(n+1)^A332793(A007686(n+1))`
-/

namespace A359432.P9752669546376500054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359433 (n + 1) : ℚ) ^ (A332793 (A007686 (n + 1)).toNat : ℤ)

end

end A359432.P9752669546376500054

/-!
# A359433: Dirichlet inverse of A071773.

The programs for A359433, the canonical program `A359433.P4608172396385939507` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359433 has offset 1).

The definition of A359433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359433.P4608172396385939507

`(-1)^∑{e}[n+1, #]*A125131(∏{p}[n+1, #^val(n+1, #²)])`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A359433

/-- `(-1)^∑{e}[n+1, #]*A125131(∏{p}[n+1, #^val(n+1, #²)])` -/
def P4608172396385939507.Spec : Prop :=
  ∀ n, P4608172396385939507.a n = A359433 (n + 1)

theorem P4608172396385939507.correct : P4608172396385939507.Spec := by
  intro n
  simp only [A359433, Nat.add_sub_cancel]

end A359433

/-! ## A359433.P13156516657719394552

`A003958(n+1)/A125131(A019554(n+1))`
-/

namespace A359433.P13156516657719394552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A125131 (A019554 (n + 1)).toNat : ℚ)

end

end A359433.P13156516657719394552

namespace A359433

/-- `A003958(n+1)/A125131(A019554(n+1))` -/
def P13156516657719394552.Spec : Prop :=
  ∀ n, P13156516657719394552.a n = (A359433 (n + 1) : ℚ)

end A359433

/-! ## A359433.P8617639136280809081

`A298735(n+1)/A166234(A056555(n+1))`
-/

namespace A359433.P8617639136280809081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298735 (n + 1) : ℚ) / (A166234 (A056555 (n + 1)).toNat : ℚ)

end

end A359433.P8617639136280809081

namespace A359433

/-- `A298735(n+1)/A166234(A056555(n+1))` -/
def P8617639136280809081.Spec : Prop :=
  ∀ n, P8617639136280809081.a n = (A359433 (n + 1) : ℚ)

end A359433

/-! ## A359433.P9537533363030011823

`A349340(n+1)^A154269(A289625(n+1))`
-/

namespace A359433.P9537533363030011823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349340 (n + 1) : ℚ) ^ (A154269 (A289625 (n + 1)).toNat : ℤ)

end

end A359433.P9537533363030011823

namespace A359433

/-- `A349340(n+1)^A154269(A289625(n+1))` -/
def P9537533363030011823.Spec : Prop :=
  ∀ n, P9537533363030011823.a n = (A359433 (n + 1) : ℚ)

end A359433

/-! ## A359433.P7191106800842204226

`A110503(11*(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A359433.P7191106800842204226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110503 (SequenceMachineLib.roundAway (11 * (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)))).toNat

end

end A359433.P7191106800842204226

namespace A359433

/-- `A110503(11*(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))` -/
def P7191106800842204226.Spec : Prop :=
  ∀ n, P7191106800842204226.a n = A359433 (n + 1)

end A359433

/-!
# A359434: Numbers k >= 1 such that k * phi(k) / (k + phi(k)) is an integer, where phi(k) = A000010(k).

The programs for A359434, there is no canonical definition to state claims against.
-/

/-! ## A359434.P17483991996669621920

`∩[A322002(n+1), A333919(n+1)]`
-/

namespace A359434.P17483991996669621920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359434.P17483991996669621920

/-! ## A359434.P9828166021449147841

`∩[A335147(n+1), A350137(n+1)]`
-/

namespace A359434.P9828166021449147841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359434.P9828166021449147841

/-! ## A359434.P11339988747824888863

`A141552(A109417(n+1))`
-/

namespace A359434.P11339988747824888863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141552 (A109417 (n + 1)).toNat

end

end A359434.P11339988747824888863

/-! ## A359434.P4122899866273075571

`∩[A098714(n+1), A342339(n+1)]`
-/

namespace A359434.P4122899866273075571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359434.P4122899866273075571

/-!
# A359435: a(n) = binomial(2*n-1,n) - n^2 - 1.

The programs for A359435, the canonical program `A359435.P7894353083277410484` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359435 has offset 3).

The definition of A359435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359435.P9365196586660439891

`A387913(n+1)-1`
-/

namespace A359435.P9365196586660439891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387913 (n + 1) - 1

end

end A359435.P9365196586660439891

namespace A359435

/-- `A387913(n+1)-1` -/
def P9365196586660439891.Spec : Prop :=
  ∀ n, P9365196586660439891.a n = A359435 (n + 3)

end A359435

/-! ## A359435.P7894353083277410484

`A352027(n+3)-(n+3)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359435

/-- `A352027(n+3)-(n+3)` -/
def P7894353083277410484.Spec : Prop :=
  ∀ n, P7894353083277410484.a n = A359435 (n + 3)

theorem P7894353083277410484.correct : P7894353083277410484.Spec := by
  intro n
  simp only [A359435, Nat.add_sub_cancel]

end A359435

/-! ## A359435.P16619541338458344550

`record[A088218(floor(sqrt(n)))-(n+1)]`
-/

namespace A359435.P16619541338458344550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (Nat.sqrt n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359435.P16619541338458344550

namespace A359435

/-- `record[A088218(floor(sqrt(n)))-(n+1)]` -/
def P16619541338458344550.Spec : Prop :=
  ∀ n, P16619541338458344550.a n = A359435 (n + 3)

end A359435

/-! ## A359435.P1567777235626281672

`A088218(n+3)-((n+3)²+1)`
-/

namespace A359435.P1567777235626281672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 3) - ((n + 3) ^ 2 + 1 : ℤ)

end

end A359435.P1567777235626281672

namespace A359435

/-- `A088218(n+3)-((n+3)²+1)` -/
def P1567777235626281672.Spec : Prop :=
  ∀ n, P1567777235626281672.a n = A359435 (n + 3)

end A359435

/-! ## A359435.P3568517190241772411

`A001700(n+2)-A002522(n+3)`
-/

namespace A359435.P3568517190241772411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 2) - A002522 (n + 3)

end

end A359435.P3568517190241772411

namespace A359435

/-- `A001700(n+2)-A002522(n+3)` -/
def P3568517190241772411.Spec : Prop :=
  ∀ n, P3568517190241772411.a n = A359435 (n + 3)

end A359435

/-! ## A359435.P11466840887900153494

`A001700(n+2)-A067998(n+4)-2`
-/

namespace A359435.P11466840887900153494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 2) - A067998 (n + 4) - 2

end

end A359435.P11466840887900153494

namespace A359435

/-- `A001700(n+2)-A067998(n+4)-2` -/
def P11466840887900153494.Spec : Prop :=
  ∀ n, P11466840887900153494.a n = A359435 (n + 3)

end A359435

/-!
# A359436: Primes p such that (4^p - 2^p + 1)/3 is prime.

The programs for A359436, there is no canonical definition to state claims against.
-/

/-! ## A359436.P509509465085148571

`p?[∑[A292741(3*n)]+n]`
-/

namespace A359436.P509509465085148571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292741 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359436.P509509465085148571

/-! ## A359436.P4866668243782908744

`∩[A085013(n+1), A181525(n+1)]`
-/

namespace A359436.P4866668243782908744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359436.P4866668243782908744

/-! ## A359436.P6121810934154051012

`A196230(A062996(n+1)+A000105(n))`
-/

namespace A359436.P6121810934154051012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196230 (A062996 (n + 1) + A000105 n).toNat

end

end A359436.P6121810934154051012

/-!
# A359437: a(n) is the first prime p such that there are exactly n numbers i with 1 <= i < p such that one of i*p-(p-i) and i*p+(p-i) is a prime and the other is the square of a prime.

The programs for A359437, there is no canonical definition to state claims against.
-/

/-! ## A359437.P3941885631107399583

`A006530(A002652(n)+A000152(n))`
-/

namespace A359437.P3941885631107399583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002652 n + A000152 n).toNat

end

end A359437.P3941885631107399583

/-!
# A359438: For n >= 0, let S be the sequence of numbers m such that (m^2 - 2*n^2 + 1)/2 is a square. Then a(n) is the number k such that S(j) = 6*S(j-k) - S(j-2k) for all j for which S(j-2k) is defined.

The programs for A359438, the canonical program `A359438.P5688249692624788358` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359438 has offset 0).

The definition of A359438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359438.P5688249692624788358

`∏{e}[1-2*n², #+1]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359438

/-- `∏{e}[1-2*n², #+1]` -/
def P5688249692624788358.Spec : Prop :=
  ∀ n, (P5688249692624788358.a n : ℤ) = A359438 n

theorem P5688249692624788358.correct : P5688249692624788358.Spec := by
  intro n
  simp only [A359438]

end A359438

/-! ## A359438.P13205368039964591345

`∑{d}[1-2*n², #%2]`
-/

namespace A359438.P13205368039964591345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A359438.P13205368039964591345

namespace A359438

/-- `∑{d}[1-2*n², #%2]` -/
def P13205368039964591345.Spec : Prop :=
  ∀ n, (P13205368039964591345.a n : ℤ) = A359438 n

end A359438

/-! ## A359438.P18064394160635321386

`∑{d}[2*n²-1, gcd(2, #)]`
-/

namespace A359438.P18064394160635321386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd 2 d

end

end A359438.P18064394160635321386

namespace A359438

/-- `∑{d}[2*n²-1, gcd(2, #)]` -/
def P18064394160635321386.Spec : Prop :=
  ∀ n, (P18064394160635321386.a n : ℤ) = A359438 n

end A359438

/-! ## A359438.P2986521404308437607

`∑{d}[1-2*n², and(1, #)]`
-/

namespace A359438.P2986521404308437607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A359438.P2986521404308437607

namespace A359438

/-- `∑{d}[1-2*n², and(1, #)]` -/
def P2986521404308437607.Spec : Prop :=
  ∀ n, (P2986521404308437607.a n : ℤ) = A359438 n

end A359438

/-! ## A359438.P16192717349492226691

`∑{d}[2-(2*n)², val(#, 2)]`
-/

namespace A359438.P16192717349492226691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.valuation d 2

end

end A359438.P16192717349492226691

namespace A359438

/-- `∑{d}[2-(2*n)², val(#, 2)]` -/
def P16192717349492226691.Spec : Prop :=
  ∀ n, (P16192717349492226691.a n : ℤ) = A359438 n

end A359438

/-! ## A359438.P9973688212175873703

`val(∏{d}[2-(2*n)², #], 2)`
-/

namespace A359438.P9973688212175873703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n).natAbs, d) 2

end

end A359438.P9973688212175873703

namespace A359438

/-- `val(∏{d}[2-(2*n)², #], 2)` -/
def P9973688212175873703.Spec : Prop :=
  ∀ n, (P9973688212175873703.a n : ℤ) = A359438 n

end A359438

/-! ## A359438.P2264693932684815786

`A000005(abs(1-2*n²))`
-/

namespace A359438.P2264693932684815786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |1 - (2 * n ^ 2 : ℤ)|.toNat

end

end A359438.P2264693932684815786

namespace A359438

/-- `A000005(abs(1-2*n²))` -/
def P2264693932684815786.Spec : Prop :=
  ∀ n, P2264693932684815786.a n = A359438 n

end A359438

/-! ## A359438.P16755945009933534542

`A000005(lcm(2, 2-(2*n)²))/2`
-/

namespace A359438.P16755945009933534542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Int.lcm 2 (2 - ((2 * n) ^ 2 : ℤ))) : ℚ) / 2

end

end A359438.P16755945009933534542

namespace A359438

/-- `A000005(lcm(2, 2-(2*n)²))/2` -/
def P16755945009933534542.Spec : Prop :=
  ∀ n, P16755945009933534542.a n = (A359438 n : ℚ)

end A359438

/-! ## A359438.P12681811767341090877

`A099774(A253909(n))`
-/

namespace A359438.P12681811767341090877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A253909 n).toNat

end

end A359438.P12681811767341090877

namespace A359438

/-- `A099774(A253909(n))` -/
def P12681811767341090877.Spec : Prop :=
  ∀ n, P12681811767341090877.a n = A359438 n

end A359438

/-! ## A359438.P5652604588993060325

`A277692(A106230(2*n+1))`
-/

namespace A359438.P5652604588993060325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A106230 (2 * n + 1)).toNat

end

end A359438.P5652604588993060325

namespace A359438

/-- `A277692(A106230(2*n+1))` -/
def P5652604588993060325.Spec : Prop :=
  ∀ n, P5652604588993060325.a n = A359438 n

end A359438

/-!
# A359443: Primes p such that if q is the next prime, the sum (with multiplicity) of prime factors of p^2 + q^2 is a square.

The programs for A359443, there is no canonical definition to state claims against.
-/

/-! ## A359443.P3087171081828331293

`A107802(A238895(n+1)+1)`
-/

namespace A359443.P3087171081828331293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (A238895 (n + 1) + 1).toNat

end

end A359443.P3087171081828331293

/-!
# A359444: a(n) is the least number that has exactly n divisors with sum of digits n.

The programs for A359444, there is no canonical definition to state claims against.
-/

/-! ## A359444.P9131398232377817821

`A051176(lcm(gcd(2*n², (n+1)%2)+n*(n+2), A001715(n+3)))`
-/

namespace A359444.P9131398232377817821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.lcm (Nat.gcd (2 * n ^ 2) ((n + 1) % 2) + n * (n + 2) : ℤ) (A001715 (n + 3)))

end

end A359444.P9131398232377817821

/-!
# A359445: Numbers k such that the sums (with multiplicity) of prime factors of k and k+1 are both squares.

The programs for A359445, the canonical program `A359445.P18211126488119010067` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359445 has offset 1).

The definition of A359445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359445.P18211126488119010067

`∩[A051448(n+1)-1, A051448(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359445

/-- `∩[A051448(n+1)-1, A051448(n+1)]` -/
def P18211126488119010067.Spec : Prop :=
  ∀ n, (P18211126488119010067.a n : ℤ) = A359445 (n + 1)

theorem P18211126488119010067.correct : P18211126488119010067.Spec := by
  intro n
  simp only [A359445, Nat.add_sub_cancel]

end A359445

/-! ## A359445.P12589636152052372642

`∩[A051448(n+1), A023443(A051448(n+1))]`
-/

namespace A359445.P12589636152052372642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A051448 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359445.P12589636152052372642

namespace A359445

/-- `∩[A051448(n+1), A023443(A051448(n+1))]` -/
def P12589636152052372642.Spec : Prop :=
  ∀ n, (P12589636152052372642.a n : ℤ) = A359445 (n + 1)

end A359445

/-!
# A359450: a(1) = 1, a(2) = 2; thereafter a(n) = n * a(A070939(n)).

The programs for A359450, the canonical program `A359450.P14934760979615825406` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359450 has offset 1).

The definition of A359450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359450.P14934760979615825406

`(n+1)*a(A070939(n+1)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359450

/-- `(n+1)*a(A070939(n+1)-1)` -/
def P14934760979615825406.Spec : Prop :=
  ∀ n, (P14934760979615825406.a n : ℤ) = A359450 (n + 1)

theorem P14934760979615825406.correct : P14934760979615825406.Spec := by
  intro n
  simp only [A359450, Nat.add_sub_cancel]

end A359450

/-! ## A359450.P7407791120691210984

`(n+1)*a(floor(log2(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A359450.P7407791120691210984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1) * a (Nat.log 2 (n + 1))

end

end A359450.P7407791120691210984

namespace A359450

/-- `(n+1)*a(floor(log2(n+1)))` -/
def P7407791120691210984.Spec : Prop :=
  ∀ n, (P7407791120691210984.a n : ℤ) = A359450 (n + 1)

end A359450

/-! ## A359450.P4299583668347597970

`round((n+1)*a(ceil(log2(n+2))-1))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A359450.P4299583668347597970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1) * a (⌈Real.logb 2 (n + 2 : ℝ)⌉ - 1).toNat

end

end A359450.P4299583668347597970

namespace A359450

/-- `round((n+1)*a(ceil(log2(n+2))-1))` -/
def P4299583668347597970.Spec : Prop :=
  ∀ n, (P4299583668347597970.a n : ℤ) = A359450 (n + 1)

end A359450

/-! ## A359450.P9587079640781320227

`ceil((n+1)*a(A000523(2*n+3)-1))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A359450.P9587079640781320227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1) * a (A000523 (2 * n + 3) - 1).toNat

end

end A359450.P9587079640781320227

namespace A359450

/-- `ceil((n+1)*a(A000523(2*n+3)-1))` -/
def P9587079640781320227.Spec : Prop :=
  ∀ n, (P9587079640781320227.a n : ℤ) = A359450 (n + 1)

end A359450

/-! ## A359450.P4578618789734932060

`(n+1)*A138902(∑[(3*n)²])`
-/

namespace A359450.P4578618789734932060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A138902 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359450.P4578618789734932060

namespace A359450

/-- `(n+1)*A138902(∑[(3*n)²])` -/
def P4578618789734932060.Spec : Prop :=
  ∀ n, P4578618789734932060.a n = A359450 (n + 1)

end A359450

/-!
# A359452: Number of vertices in the partite set of the n-Menger sponge graph that contains the corners.

The programs for A359452, the canonical program `A359452.P7650297204740575905` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359452 has offset 0).

The definition of A359452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359452.P7650297204740575905

`(20^n+(-4)^n)/2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359452

/-- `(20^n+(-4)^n)/2` -/
def P7650297204740575905.Spec : Prop :=
  ∀ n, P7650297204740575905.a n = (A359452 n : ℚ)

end A359452

/-! ## A359452.P14996054252032188754

`20^n-A359453(n)`
-/

namespace A359452.P14996054252032188754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 ^ n : ℤ) - A359453 n

end

end A359452.P14996054252032188754

namespace A359452

/-- `20^n-A359453(n)` -/
def P14996054252032188754.Spec : Prop :=
  ∀ n, P14996054252032188754.a n = A359452 n

end A359452

/-! ## A359452.P12704242209634265488

`A359453(n)+A262710(n)`
-/

namespace A359452.P12704242209634265488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359453 n + A262710 n

end

end A359452.P12704242209634265488

namespace A359452

/-- `A359453(n)+A262710(n)` -/
def P12704242209634265488.Spec : Prop :=
  ∀ n, P12704242209634265488.a n = A359452 n

end A359452

/-! ## A359452.P9681152057832611014

`A000079(n)²*A081340(n)`
-/

namespace A359452.P9681152057832611014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A081340 n

end

end A359452.P9681152057832611014

namespace A359452

/-- `A000079(n)²*A081340(n)` -/
def P9681152057832611014.Spec : Prop :=
  ∀ n, P9681152057832611014.a n = A359452 n

end A359452

/-! ## A359452.P5958106801187897457

`∑[A002001(n)]*A081340(n)`
-/

namespace A359452.P5958106801187897457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A081340 n

end

end A359452.P5958106801187897457

namespace A359452

/-- `∑[A002001(n)]*A081340(n)` -/
def P5958106801187897457.Spec : Prop :=
  ∀ n, P5958106801187897457.a n = A359452 n

end A359452

/-! ## A359452.P4391620926632423213

`A000079(2*n)*A081340(n)`
-/

namespace A359452.P4391620926632423213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A081340 n

end

end A359452.P4391620926632423213

namespace A359452

/-- `A000079(2*n)*A081340(n)` -/
def P4391620926632423213.Spec : Prop :=
  ∀ n, P4391620926632423213.a n = A359452 n

end A359452

/-!
# A359453: Number of vertices in the partite set of the n-Menger sponge graph that do not contain the corners.

The programs for A359453, the canonical program `A359453.P5849783982903546749` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359453 has offset 0).

The definition of A359453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359453.P3921770458009643531

`(20^n-(-4)^n)/2`
-/

namespace A359453.P3921770458009643531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 ^ n : ℤ) - (-4) ^ n : ℚ) / 2

end

end A359453.P3921770458009643531

namespace A359453

/-- `(20^n-(-4)^n)/2` -/
def P3921770458009643531.Spec : Prop :=
  ∀ n, P3921770458009643531.a n = (A359453 n : ℚ)

end A359453

/-! ## A359453.P5849783982903546749

`20^n-A359452(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359453

/-- `20^n-A359452(n)` -/
def P5849783982903546749.Spec : Prop :=
  ∀ n, P5849783982903546749.a n = A359453 n

theorem P5849783982903546749.correct : P5849783982903546749.Spec := by
  intro n
  simp only [A359453]

end A359453

/-! ## A359453.P11466565773892108961

`A359452(n)-A262710(n)`
-/

namespace A359453.P11466565773892108961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359452 n - A262710 n

end

end A359453.P11466565773892108961

namespace A359453

/-- `A359452(n)-A262710(n)` -/
def P11466565773892108961.Spec : Prop :=
  ∀ n, P11466565773892108961.a n = A359453 n

end A359453

/-! ## A359453.P7987843389157279941

`xor(A000302(n), A359452(n))`
-/

namespace A359453.P7987843389157279941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000302 n) (A359452 n)

end

end A359453.P7987843389157279941

namespace A359453

/-- `xor(A000302(n), A359452(n))` -/
def P7987843389157279941.Spec : Prop :=
  ∀ n, P7987843389157279941.a n = A359453 n

end A359453

/-! ## A359453.P3900172099699465528

`xor(∑[A002001(n)], A359452(n))`
-/

namespace A359453.P3900172099699465528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A359452 n)

end

end A359453.P3900172099699465528

namespace A359453

/-- `xor(∑[A002001(n)], A359452(n))` -/
def P3900172099699465528.Spec : Prop :=
  ∀ n, P3900172099699465528.a n = A359453 n

end A359453

/-! ## A359453.P3727989482605821311

`Δ[A000079(n)²]*A015531(n)`
-/

namespace A359453.P3727989482605821311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A015531 n

end

end A359453.P3727989482605821311

namespace A359453

/-- `Δ[A000079(n)²]*A015531(n)` -/
def P3727989482605821311.Spec : Prop :=
  ∀ n, P3727989482605821311.a n = A359453 n

end A359453

/-! ## A359453.P14926218650894184045

`Δ[A000079(2*n)]*A015531(n)`
-/

namespace A359453.P14926218650894184045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A015531 n

end

end A359453.P14926218650894184045

namespace A359453

/-- `Δ[A000079(2*n)]*A015531(n)` -/
def P14926218650894184045.Spec : Prop :=
  ∀ n, P14926218650894184045.a n = A359453 n

end A359453

/-!
# A359455: Expansion of Sum_{k>0} x^k / (1 - x^(k^3)).

The programs for A359455, there is no canonical definition to state claims against.
-/

/-! ## A359455.P18064352508050267922

`A001221(A096453(n+1)*A334579(n+1))`
-/

namespace A359455.P18064352508050267922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A096453 (n + 1) * A334579 (n + 1)).toNat

end

end A359455.P18064352508050267922

/-! ## A359455.P4674819881199862886

`A001221(A132248(n+1)*A334579(n+1))`
-/

namespace A359455.P4674819881199862886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A132248 (n + 1) * A334579 (n + 1)).toNat

end

end A359455.P4674819881199862886

/-! ## A359455.P4247038798879446838

`A001221(A132230(2*n+1)*A334579(n+1))`
-/

namespace A359455.P4247038798879446838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A132230 (2 * n + 1) * A334579 (n + 1)).toNat

end

end A359455.P4247038798879446838

/-! ## A359455.P14009103019373648687

`A001221(A001359(3*n+1)*A334579(n+1))`
-/

namespace A359455.P14009103019373648687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001359 (3 * n + 1) * A334579 (n + 1)).toNat

end

end A359455.P14009103019373648687

/-! ## A359455.P5965142344537436533

`A006530(A000005((2*n+1)*A006530(n+1)²+n))`
-/

namespace A359455.P5965142344537436533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 ((2 * n + 1 : ℤ) * A006530 (n + 1) ^ 2 + (n : ℤ)).toNat).toNat

end

end A359455.P5965142344537436533

/-!
# A359456: Characteristic function of Fibonorial numbers.

The programs for A359456, the canonical program `A359456.P14812899688263349338` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359456 has offset 1).

The definition of A359456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359456.P12827368737592266904

`char[A103815(n+1)]`
-/

namespace A359456.P12827368737592266904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359456.P12827368737592266904

namespace A359456

/-- `char[A103815(n+1)]` -/
def P12827368737592266904.Spec : Prop :=
  ∀ n, (P12827368737592266904.a n : ℤ) = A359456 (n + 1)

end A359456

/-! ## A359456.P11289533767862704036

`char[A003266(n)-1]`
-/

namespace A359456.P11289533767862704036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359456.P11289533767862704036

namespace A359456

/-- `char[A003266(n)-1]` -/
def P11289533767862704036.Spec : Prop :=
  ∀ n, (P11289533767862704036.a n : ℤ) = A359456 (n + 1)

end A359456

/-! ## A359456.P4519221160274644473

`char[A154851(∑[n])-2]`
-/

namespace A359456.P4519221160274644473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154851 (∑ j ∈ Finset.range (n + 1), f2 j) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359456.P4519221160274644473

namespace A359456

/-- `char[A154851(∑[n])-2]` -/
def P4519221160274644473.Spec : Prop :=
  ∀ n, (P4519221160274644473.a n : ℤ) = A359456 (n + 1)

end A359456

/-! ## A359456.P14042652903078636292

`char[abs(A128207(∑[n]))-1]`
-/

namespace A359456.P14042652903078636292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128207 (∑ j ∈ Finset.range (n + 1), f2 j)| - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359456.P14042652903078636292

namespace A359456

/-- `char[abs(A128207(∑[n]))-1]` -/
def P14042652903078636292.Spec : Prop :=
  ∀ n, (P14042652903078636292.a n : ℤ) = A359456 (n + 1)

end A359456

/-! ## A359456.P14812899688263349338

`char[∏[A000045(n+1)]-1]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359456

/-- `char[∏[A000045(n+1)]-1]` -/
def P14812899688263349338.Spec : Prop :=
  ∀ n, (P14812899688263349338.a n : ℤ) = A359456 (n + 1)

theorem P14812899688263349338.correct : P14812899688263349338.Spec := by
  intro n
  simp only [A359456, Nat.add_sub_cancel]

end A359456

/-! ## A359456.P2224911731025811057

`char[A023443(A003266(n))]`
-/

namespace A359456.P2224911731025811057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003266 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359456.P2224911731025811057

namespace A359456

/-- `char[A023443(A003266(n))]` -/
def P2224911731025811057.Spec : Prop :=
  ∀ n, (P2224911731025811057.a n : ℤ) = A359456 (n + 1)

end A359456

/-! ## A359456.P13377380363012843985

`and(A105349(n), A390133(n))`
-/

namespace A359456.P13377380363012843985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105349 n) (A390133 n)

end

end A359456.P13377380363012843985

namespace A359456

/-- `and(A105349(n), A390133(n))` -/
def P13377380363012843985.Spec : Prop :=
  ∀ n, P13377380363012843985.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P8595446822246658442

`and(A105349(n), A131408(n))`
-/

namespace A359456.P8595446822246658442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105349 n) (A131408 n)

end

end A359456.P8595446822246658442

namespace A359456

/-- `and(A105349(n), A131408(n))` -/
def P8595446822246658442.Spec : Prop :=
  ∀ n, P8595446822246658442.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P6314412904353996344

`and(A105349(n), A361779(n))`
-/

namespace A359456.P6314412904353996344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105349 n) (A361779 n)

end

end A359456.P6314412904353996344

namespace A359456

/-- `and(A105349(n), A361779(n))` -/
def P6314412904353996344.Spec : Prop :=
  ∀ n, P6314412904353996344.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P3466239302737885665

`and(A042601(n), A105349(n))`
-/

namespace A359456.P3466239302737885665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042601 n) (A105349 n)

end

end A359456.P3466239302737885665

namespace A359456

/-- `and(A042601(n), A105349(n))` -/
def P3466239302737885665.Spec : Prop :=
  ∀ n, P3466239302737885665.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P10380609636450286482

`and(A105349(n), A217333(n))`
-/

namespace A359456.P10380609636450286482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105349 n) (A217333 n)

end

end A359456.P10380609636450286482

namespace A359456

/-- `and(A105349(n), A217333(n))` -/
def P10380609636450286482.Spec : Prop :=
  ∀ n, P10380609636450286482.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P7893502945804284536

`and(A197183(n), A372995(n))`
-/

namespace A359456.P7893502945804284536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A197183 n) (A372995 n)

end

end A359456.P7893502945804284536

namespace A359456

/-- `and(A197183(n), A372995(n))` -/
def P7893502945804284536.Spec : Prop :=
  ∀ n, P7893502945804284536.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P7906625859409111906

`and(A007748(n+1), A197183(n))`
-/

namespace A359456.P7906625859409111906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007748 (n + 1)) (A197183 n)

end

end A359456.P7906625859409111906

namespace A359456

/-- `and(A007748(n+1), A197183(n))` -/
def P7906625859409111906.Spec : Prop :=
  ∀ n, P7906625859409111906.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P2147902756386348597

`and(A005664(n), A105349(n))`
-/

namespace A359456.P2147902756386348597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005664 n) (A105349 n)

end

end A359456.P2147902756386348597

namespace A359456

/-- `and(A005664(n), A105349(n))` -/
def P2147902756386348597.Spec : Prop :=
  ∀ n, P2147902756386348597.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P304376090409583567

`and(A027333(n), A105349(n))`
-/

namespace A359456.P304376090409583567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027333 n) (A105349 n)

end

end A359456.P304376090409583567

namespace A359456

/-- `and(A027333(n), A105349(n))` -/
def P304376090409583567.Spec : Prop :=
  ∀ n, P304376090409583567.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P14658975040051972882

`and(A105349(n), A133756(n))`
-/

namespace A359456.P14658975040051972882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105349 n) (A133756 n)

end

end A359456.P14658975040051972882

namespace A359456

/-- `and(A105349(n), A133756(n))` -/
def P14658975040051972882.Spec : Prop :=
  ∀ n, P14658975040051972882.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P15589880968487758700

`and(A185100(n), A197183(n))`
-/

namespace A359456.P15589880968487758700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185100 n) (A197183 n)

end

end A359456.P15589880968487758700

namespace A359456

/-- `and(A185100(n), A197183(n))` -/
def P15589880968487758700.Spec : Prop :=
  ∀ n, P15589880968487758700.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P14209782254090138209

`and(A032010(n+1), A197183(n))`
-/

namespace A359456.P14209782254090138209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032010 (n + 1)) (A197183 n)

end

end A359456.P14209782254090138209

namespace A359456

/-- `and(A032010(n+1), A197183(n))` -/
def P14209782254090138209.Spec : Prop :=
  ∀ n, P14209782254090138209.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P14425736946792715383

`and(char[A100438(n+1)], A100437(n+1))`
-/

namespace A359456.P14425736946792715383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100438 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A100437 (n + 1))

end

end A359456.P14425736946792715383

namespace A359456

/-- `and(char[A100438(n+1)], A100437(n+1))` -/
def P14425736946792715383.Spec : Prop :=
  ∀ n, P14425736946792715383.a n = A359456 (n + 1)

end A359456

/-! ## A359456.P3890663004879973261

`A323879(p?[20*(n+1)-n²%12])^A276151(n+1)`
-/

namespace A359456.P3890663004879973261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * (n + 1) : ℤ) - ((n ^ 2 % 12 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323879 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) ^ (A276151 (n + 1) : ℤ)

end

end A359456.P3890663004879973261

namespace A359456

/-- `A323879(p?[20*(n+1)-n²%12])^A276151(n+1)` -/
def P3890663004879973261.Spec : Prop :=
  ∀ n, P3890663004879973261.a n = (A359456 (n + 1) : ℚ)

end A359456

/-!
# A359458: a(n) = A001911(n)*A003266(n+2).

The programs for A359458, there is no canonical definition to state claims against.
-/

/-! ## A359458.P11284887237456819253

`A001911(n)*A003266(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359458.P11284887237456819253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n * A003266 (n + 2)

end

end A359458.P11284887237456819253

/-! ## A359458.P17900095912041228452

`∏[Δ[A020695(n)]]*A001911(n)`
-/

namespace A359458.P17900095912041228452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001911 n

end

end A359458.P17900095912041228452

/-! ## A359458.P9737857111146258289

`∏[A212804(n+3)]*A001911(n)`
-/

namespace A359458.P9737857111146258289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001911 n

end

end A359458.P9737857111146258289

/-! ## A359458.P16841797424455478897

`Δ[Δ[A003266(n+1)]]-A003266(n+1)`
-/

namespace A359458.P16841797424455478897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003266 (n + 1)

end

end A359458.P16841797424455478897

/-! ## A359458.P14167801549424592677

`Δ[Δ[A153757(n+1)]-A153757(n+1)]`
-/

namespace A359458.P14167801549424592677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153757 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A153757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359458.P14167801549424592677

/-!
# A359459: a(n) = coefficient of x^n/n! in A(x) = Sum_{n>=0} x^n/n! * ( (1 + sqrt(n)*x)^sqrt(n) + 1/(1 - sqrt(n)*x)^sqrt(n) )/2.

The programs for A359459, there is no canonical definition to state claims against.
-/

/-! ## A359459.P500355100968709032

`A045917(A001529(n+2))`
-/

namespace A359459.P500355100968709032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A001529 (n + 2)).toNat

end

end A359459.P500355100968709032

/-! ## A359459.P9726250829681141451

`A008621(A089066(n+3))`
-/

namespace A359459.P9726250829681141451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A089066 (n + 3)).toNat

end

end A359459.P9726250829681141451

/-!
# A359460: a(n) = coefficient of x^n/n! in A(x) = Sum_{n>=0} x^n * ( (exp(sqrt(n)*x) + x)^sqrt(n) + exp(n*x)/(1 + x*exp(sqrt(n)*x))^sqrt(n) )/2.

The programs for A359460, there is no canonical definition to state claims against.
-/

/-! ## A359460.P4445275032720260252

`A341071(n)+A011371(A001147(n))`
-/

namespace A359460.P4445275032720260252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341071 n + A011371 (A001147 n).toNat

end

end A359460.P4445275032720260252

/-! ## A359460.P2964980215830360920

`A076897(A323770(n)+A140995(n))`
-/

namespace A359460.P2964980215830360920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076897 (A323770 n + A140995 n).toNat

end

end A359460.P2964980215830360920

/-!
# A359461: a(n) = coefficient of x^n/n! in A(x) such that A(x) = Sum_{n>=0} x^n * ( (A(x)^sqrt(n) + x)^sqrt(n) + A(x)^n/(1 + x*A(x)^sqrt(n))^sqrt(n) )/2.

The programs for A359461, there is no canonical definition to state claims against.
-/

/-! ## A359461.P17418528421215671636

`A176084(n+1)/∏{p}[A139682(n), #]*n!`
-/

namespace A359461.P17418528421215671636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139682 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176084 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) * (Nat.factorial n : ℚ)

end

end A359461.P17418528421215671636

/-! ## A359461.P15451636957174563544

`A004526(A002866(n)+A001761(n))`
-/

namespace A359461.P15451636957174563544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002866 n + A001761 n).toNat

end

end A359461.P15451636957174563544

/-!
# A359462: a(n) = coefficient of x^n/n! in A(x) = Sum_{n>=0} x^n * ( (A(x)^sqrt(2*n) + x)^sqrt(2*n) + A(x)^(2*n)/(1 + x*A(x)^sqrt(2*n))^sqrt(2*n) )/2.

The programs for A359462, there is no canonical definition to state claims against.
-/

/-! ## A359462.P8329373243579784327

`A165026(A151086(n))`
-/

namespace A359462.P8329373243579784327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165026 (A151086 n).toNat

end

end A359462.P8329373243579784327

/-!
# A359463: Coefficient a(n) of x^n in power series A(x), n >= 0, such that A(x) = Sum_{n=-oo..+oo} (-x*A(x))^n * (1 - (-x*A(x))^(n-1))^n.

The programs for A359463, there is no canonical definition to state claims against.
-/

/-! ## A359463.P11094027179637102055

`A163135(C(n, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1))`
-/

namespace A359463.P11094027179637102055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163135 (Nat.choose n (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)).toNat)

end

end A359463.P11094027179637102055

/-! ## A359463.P17597623829277291833

`A320536(A077587(n))`
-/

namespace A359463.P17597623829277291833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A077587 n).toNat

end

end A359463.P17597623829277291833

/-! ## A359463.P2649755699988560994

`A163135(A250262(n+1))`
-/

namespace A359463.P2649755699988560994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163135 (A250262 (n + 1)).toNat

end

end A359463.P2649755699988560994

/-!
# A359464: a(n) = 1 if the total number of 1-bits in the exponents of prime factorization n is even, otherwise 0.

The programs for A359464, the canonical program `A359464.P323897448991584528` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359464 has offset 1).

The definition of A359464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359464.P727659455795891011

`1-A092248(A367514(n+1))`
-/

namespace A359464.P727659455795891011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A092248 (A367514 (n + 1)).toNat

end

end A359464.P727659455795891011

namespace A359464

/-- `1-A092248(A367514(n+1))` -/
def P727659455795891011.Spec : Prop :=
  ∀ n, P727659455795891011.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P12266111076761059037

`log2(gcd(2, A046645(n+1)))`
-/

namespace A359464.P12266111076761059037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A046645 (n + 1)) : ℝ)

end

end A359464.P12266111076761059037

namespace A359464

/-- `log2(gcd(2, A046645(n+1)))` -/
def P12266111076761059037.Spec : Prop :=
  ∀ n, P12266111076761059037.a n = (A359464 (n + 1) : ℝ)

end A359464

/-! ## A359464.P323897448991584528

`ceil(A064179(n+1)/2)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A359464

/-- `ceil(A064179(n+1)/2)` -/
def P323897448991584528.Spec : Prop :=
  ∀ n, P323897448991584528.a n = A359464 (n + 1)

theorem P323897448991584528.correct : P323897448991584528.Spec := by
  intro n
  simp only [A359464, Nat.add_sub_cancel]

end A359464

/-! ## A359464.P3233130353292843466

`char[A000379(n+1)-1]`
-/

namespace A359464.P3233130353292843466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359464.P3233130353292843466

namespace A359464

/-- `char[A000379(n+1)-1]` -/
def P3233130353292843466.Spec : Prop :=
  ∀ n, (P3233130353292843466.a n : ℤ) = A359464 (n + 1)

end A359464

/-! ## A359464.P8110801374921310503

`(A064547(n+1)+1)%2`
-/

namespace A359464.P8110801374921310503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064547 (n + 1) + 1) 2

end

end A359464.P8110801374921310503

namespace A359464

/-- `(A064547(n+1)+1)%2` -/
def P8110801374921310503.Spec : Prop :=
  ∀ n, P8110801374921310503.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P13865150598076941194

`(A268386(n+1)+1)%2`
-/

namespace A359464.P13865150598076941194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268386 (n + 1) + 1) 2

end

end A359464.P13865150598076941194

namespace A359464

/-- `(A268386(n+1)+1)%2` -/
def P13865150598076941194.Spec : Prop :=
  ∀ n, P13865150598076941194.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P8578095130353163174

`2-A037445(n+1)%3`
-/

namespace A359464.P8578095130353163174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A037445 (n + 1)) 3

end

end A359464.P8578095130353163174

namespace A359464

/-- `2-A037445(n+1)%3` -/
def P8578095130353163174.Spec : Prop :=
  ∀ n, P8578095130353163174.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P17043764110728126268

`(A046644(n+1)+4)²%3`
-/

namespace A359464.P17043764110728126268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A046644 (n + 1) + 4) ^ 2) 3

end

end A359464.P17043764110728126268

namespace A359464

/-- `(A046644(n+1)+4)²%3` -/
def P17043764110728126268.Spec : Prop :=
  ∀ n, P17043764110728126268.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P10452010309940912384

`A002324(A037445(n+1))`
-/

namespace A359464.P10452010309940912384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A037445 (n + 1)).toNat

end

end A359464.P10452010309940912384

namespace A359464

/-- `A002324(A037445(n+1))` -/
def P10452010309940912384.Spec : Prop :=
  ∀ n, P10452010309940912384.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P4832754914718812948

`A059841(A046645(n+1))`
-/

namespace A359464.P4832754914718812948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A046645 (n + 1)).toNat

end

end A359464.P4832754914718812948

namespace A359464

/-- `A059841(A046645(n+1))` -/
def P4832754914718812948.Spec : Prop :=
  ∀ n, P4832754914718812948.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P3338170519536086850

`A056594(A046645(n+1)²)`
-/

namespace A359464.P3338170519536086850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A046645 (n + 1) ^ 2).toNat

end

end A359464.P3338170519536086850

namespace A359464

/-- `A056594(A046645(n+1)²)` -/
def P3338170519536086850.Spec : Prop :=
  ∀ n, P3338170519536086850.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P10505027998202177417

`A000035(A046645(n+1)+1)`
-/

namespace A359464.P10505027998202177417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A046645 (n + 1) + 1).toNat

end

end A359464.P10505027998202177417

namespace A359464

/-- `A000035(A046645(n+1)+1)` -/
def P10505027998202177417.Spec : Prop :=
  ∀ n, P10505027998202177417.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P5975548434263974918

`2-A055076(A367515(n+1))`
-/

namespace A359464.P5975548434263974918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A055076 (A367515 (n + 1)).toNat

end

end A359464.P5975548434263974918

namespace A359464

/-- `2-A055076(A367515(n+1))` -/
def P5975548434263974918.Spec : Prop :=
  ∀ n, P5975548434263974918.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P10004663682432567857

`A083905(2*A037445(n+1))`
-/

namespace A359464.P10004663682432567857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083905 (2 * A037445 (n + 1)).toNat

end

end A359464.P10004663682432567857

namespace A359464

/-- `A083905(2*A037445(n+1))` -/
def P10004663682432567857.Spec : Prop :=
  ∀ n, P10004663682432567857.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P10562327975506368427

`A139352(2*A037445(n+1))`
-/

namespace A359464.P10562327975506368427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * A037445 (n + 1)).toNat

end

end A359464.P10562327975506368427

namespace A359464

/-- `A139352(2*A037445(n+1))` -/
def P10562327975506368427.Spec : Prop :=
  ∀ n, P10562327975506368427.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P11572292907001861858

`A212412(2*A037445(n+1))`
-/

namespace A359464.P11572292907001861858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 (2 * A037445 (n + 1)).toNat

end

end A359464.P11572292907001861858

namespace A359464

/-- `A212412(2*A037445(n+1))` -/
def P11572292907001861858.Spec : Prop :=
  ∀ n, P11572292907001861858.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P11244005644719918009

`A083905(A037445(n+1)+1)²`
-/

namespace A359464.P11244005644719918009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083905 (A037445 (n + 1) + 1).toNat ^ 2

end

end A359464.P11244005644719918009

namespace A359464

/-- `A083905(A037445(n+1)+1)²` -/
def P11244005644719918009.Spec : Prop :=
  ∀ n, P11244005644719918009.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P2603619702571341334

`A007814(A046645(n+1)²+2)`
-/

namespace A359464.P2603619702571341334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046645 (n + 1) ^ 2 + 2).toNat

end

end A359464.P2603619702571341334

namespace A359464

/-- `A007814(A046645(n+1)²+2)` -/
def P2603619702571341334.Spec : Prop :=
  ∀ n, P2603619702571341334.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P4349778162442505256

`A007814(A318656(n+1)²+2)`
-/

namespace A359464.P4349778162442505256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318656 (n + 1) ^ 2 + 2).toNat

end

end A359464.P4349778162442505256

namespace A359464

/-- `A007814(A318656(n+1)²+2)` -/
def P4349778162442505256.Spec : Prop :=
  ∀ n, P4349778162442505256.a n = A359464 (n + 1)

end A359464

/-! ## A359464.P6978366360648809765

`A318455(A046645(n+1)²+2)`
-/

namespace A359464.P6978366360648809765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318455 (A046645 (n + 1) ^ 2 + 2).toNat

end

end A359464.P6978366360648809765

namespace A359464

/-- `A318455(A046645(n+1)²+2)` -/
def P6978366360648809765.Spec : Prop :=
  ∀ n, P6978366360648809765.a n = A359464 (n + 1)

end A359464

/-!
# A359465: a(n) = 1 if n is an odd squarefree number with an even number of prime factors, otherwise 0.

The programs for A359465, the canonical program `A359465.P15801582525117201442` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359465 has offset 1).

The definition of A359465 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359465.P15801582525117201442

`A008966(n+1)*A353557(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359465

/-- `A008966(n+1)*A353557(n+1)` -/
def P15801582525117201442.Spec : Prop :=
  ∀ n, P15801582525117201442.a n = A359465 (n + 1)

theorem P15801582525117201442.correct : P15801582525117201442.Spec := by
  intro n
  simp only [A359465, Nat.add_sub_cancel]

end A359465

/-! ## A359465.P11689269480940445198

`A008966(n+1)*A353675(n+1)`
-/

namespace A359465.P11689269480940445198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A353675 (n + 1)

end

end A359465.P11689269480940445198

namespace A359465

/-- `A008966(n+1)*A353675(n+1)` -/
def P11689269480940445198.Spec : Prop :=
  ∀ n, P11689269480940445198.a n = A359465 (n + 1)

end A359465

/-! ## A359465.P15020561489655432947

`A065043(n+1)*A323239(n+1)`
-/

namespace A359465.P15020561489655432947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A323239 (n + 1)

end

end A359465.P15020561489655432947

namespace A359465

/-- `A065043(n+1)*A323239(n+1)` -/
def P15020561489655432947.Spec : Prop :=
  ∀ n, P15020561489655432947.a n = A359465 (n + 1)

end A359465

/-! ## A359465.P641888112845725692

`A323239(n+1)*A359464(n+1)`
-/

namespace A359465.P641888112845725692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (n + 1) * A359464 (n + 1)

end

end A359465.P641888112845725692

namespace A359465

/-- `A323239(n+1)*A359464(n+1)` -/
def P641888112845725692.Spec : Prop :=
  ∀ n, P641888112845725692.a n = A359465 (n + 1)

end A359465

/-! ## A359465.P14343677387742395801

`A000035(n+1)*A353629(n+1)`
-/

namespace A359465.P14343677387742395801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A353629 (n + 1)

end

end A359465.P14343677387742395801

namespace A359465

/-- `A000035(n+1)*A353629(n+1)` -/
def P14343677387742395801.Spec : Prop :=
  ∀ n, P14343677387742395801.a n = A359465 (n + 1)

end A359465

/-! ## A359465.P7275746002867231670

`char[n*(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2]`
-/

namespace A359465.P7275746002867231670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ((Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)))) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359465.P7275746002867231670

namespace A359465

/-- `char[n*(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2]` -/
def P7275746002867231670.Spec : Prop :=
  ∀ n, (P7275746002867231670.a n : ℤ) = A359465 (n + 1)

end A359465

/-! ## A359465.P4446421116458901557

`A252233(2*(n+1))`
-/

namespace A359465.P4446421116458901557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252233 (2 * (n + 1))

end

end A359465.P4446421116458901557

namespace A359465

/-- `A252233(2*(n+1))` -/
def P4446421116458901557.Spec : Prop :=
  ∀ n, P4446421116458901557.a n = A359465 (n + 1)

end A359465

/-! ## A359465.P3602892372576451750

`ceil(A087003(n+1)/2)`
-/

namespace A359465.P3602892372576451750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087003 (n + 1) : ℚ) / 2⌉

end

end A359465.P3602892372576451750

namespace A359465

/-- `ceil(A087003(n+1)/2)` -/
def P3602892372576451750.Spec : Prop :=
  ∀ n, P3602892372576451750.a n = A359465 (n + 1)

end A359465

/-! ## A359465.P16241223563696600615

`char[A056913(n+1)-1]`
-/

namespace A359465.P16241223563696600615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359465.P16241223563696600615

namespace A359465

/-- `char[A056913(n+1)-1]` -/
def P16241223563696600615.Spec : Prop :=
  ∀ n, (P16241223563696600615.a n : ℤ) = A359465 (n + 1)

end A359465

/-! ## A359465.P7583498143598878508

`char[A346234(n+1)-1]`
-/

namespace A359465.P7583498143598878508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346234 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359465.P7583498143598878508

namespace A359465

/-- `char[A346234(n+1)-1]` -/
def P7583498143598878508.Spec : Prop :=
  ∀ n, (P7583498143598878508.a n : ℤ) = A359465 (n + 1)

end A359465

/-! ## A359465.P15361037915985068727

`C(2, A061669(2*(n+1)))`
-/

namespace A359465.P15361037915985068727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A061669 (2 * (n + 1))).toNat

end

end A359465.P15361037915985068727

namespace A359465

/-- `C(2, A061669(2*(n+1)))` -/
def P15361037915985068727.Spec : Prop :=
  ∀ n, (P15361037915985068727.a n : ℤ) = A359465 (n + 1)

end A359465

/-! ## A359465.P834560887039638463

`C(2, A346488(2*(n+1)))`
-/

namespace A359465.P834560887039638463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A346488 (2 * (n + 1))).toNat

end

end A359465.P834560887039638463

namespace A359465

/-- `C(2, A346488(2*(n+1)))` -/
def P834560887039638463.Spec : Prop :=
  ∀ n, (P834560887039638463.a n : ℤ) = A359465 (n + 1)

end A359465

/-! ## A359465.P1663392260917354514

`and(n+1, A353629(n+1))`
-/

namespace A359465.P1663392260917354514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A353629 (n + 1))

end

end A359465.P1663392260917354514

namespace A359465

/-- `and(n+1, A353629(n+1))` -/
def P1663392260917354514.Spec : Prop :=
  ∀ n, P1663392260917354514.a n = A359465 (n + 1)

end A359465

/-! ## A359465.P17231538961882091271

`and(n+1, A359156(n+1))`
-/

namespace A359465.P17231538961882091271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A359156 (n + 1))

end

end A359465.P17231538961882091271

namespace A359465

/-- `and(n+1, A359156(n+1))` -/
def P17231538961882091271.Spec : Prop :=
  ∀ n, P17231538961882091271.a n = A359465 (n + 1)

end A359465

/-! ## A359465.P2882068858706099238

`and(n+1, A359605(n+1))`
-/

namespace A359465.P2882068858706099238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A359605 (n + 1))

end

end A359465.P2882068858706099238

namespace A359465

/-- `and(n+1, A359605(n+1))` -/
def P2882068858706099238.Spec : Prop :=
  ∀ n, P2882068858706099238.a n = A359465 (n + 1)

end A359465

/-! ## A359465.P10661351456537153996

`char[A326937(2*n+1)-1]`
-/

namespace A359465.P10661351456537153996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326937 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359465.P10661351456537153996

namespace A359465

/-- `char[A326937(2*n+1)-1]` -/
def P10661351456537153996.Spec : Prop :=
  ∀ n, (P10661351456537153996.a n : ℤ) = A359465 (n + 1)

end A359465

/-! ## A359465.P15621222451867009448

`char[and(n, A008683(2*(n+1)))]`
-/

namespace A359465.P15621222451867009448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008683 (2 * (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359465.P15621222451867009448

namespace A359465

/-- `char[and(n, A008683(2*(n+1)))]` -/
def P15621222451867009448.Spec : Prop :=
  ∀ n, (P15621222451867009448.a n : ℤ) = A359465 (n + 1)

end A359465

/-! ## A359465.P11200319002295974240

`val(2-A008683(2*n+2), 3)`
-/

namespace A359465.P11200319002295974240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 - A008683 (2 * n + 2)).toNat 3

end

end A359465.P11200319002295974240

namespace A359465

/-- `val(2-A008683(2*n+2), 3)` -/
def P11200319002295974240.Spec : Prop :=
  ∀ n, (P11200319002295974240.a n : ℤ) = A359465 (n + 1)

end A359465

/-! ## A359465.P8142164618475171848

`val(A008683(n+2+n)+4, 3)`
-/

namespace A359465.P8142164618475171848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008683 (n + 2 + n) + 4).toNat 3

end

end A359465.P8142164618475171848

namespace A359465

/-- `val(A008683(n+2+n)+4, 3)` -/
def P8142164618475171848.Spec : Prop :=
  ∀ n, (P8142164618475171848.a n : ℤ) = A359465 (n + 1)

end A359465

/-! ## A359465.P4507110857497884449

`char[2*n*A008683(comp[2*n])]`
-/

namespace A359465.P4507110857497884449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A008683 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359465.P4507110857497884449

namespace A359465

/-- `char[2*n*A008683(comp[2*n])]` -/
def P4507110857497884449.Spec : Prop :=
  ∀ n, (P4507110857497884449.a n : ℤ) = A359465 (n + 1)

end A359465

/-!
# A359466: a(n) = 1 if n has exactly one non-unitary prime factor, otherwise 0.

The programs for A359466, the canonical program `A359466.P10474254180579388009` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359466 has offset 1).

The definition of A359466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, A353670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359466.P10474254180579388009

`A353670(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A359466

/-- `A353670(A181819(n+1))` -/
def P10474254180579388009.Spec : Prop :=
  ∀ n, P10474254180579388009.a n = A359466 (n + 1)

theorem P10474254180579388009.correct : P10474254180579388009.Spec := by
  intro n
  simp only [A359466, Nat.add_sub_cancel]

end A359466

/-! ## A359466.P5145048138882564474

`char[A190641(n+1)-1]`
-/

namespace A359466.P5145048138882564474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359466.P5145048138882564474

namespace A359466

/-- `char[A190641(n+1)-1]` -/
def P5145048138882564474.Spec : Prop :=
  ∀ n, (P5145048138882564474.a n : ℤ) = A359466 (n + 1)

end A359466

/-! ## A359466.P10091602210052894566

`char[eq[1, A056170(n+1)]]`
-/

namespace A359466.P10091602210052894566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359466.P10091602210052894566

namespace A359466

/-- `char[eq[1, A056170(n+1)]]` -/
def P10091602210052894566.Spec : Prop :=
  ∀ n, (P10091602210052894566.a n : ℤ) = A359466 (n + 1)

end A359466

/-! ## A359466.P9019242002738048162

`and(2, A294874(n+1))/2`
-/

namespace A359466.P9019242002738048162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A294874 (n + 1)) : ℚ) / 2

end

end A359466.P9019242002738048162

namespace A359466

/-- `and(2, A294874(n+1))/2` -/
def P9019242002738048162.Spec : Prop :=
  ∀ n, P9019242002738048162.a n = (A359466 (n + 1) : ℚ)

end A359466

/-! ## A359466.P14548701427882846605

`and(2, A323308(n+1))/2`
-/

namespace A359466.P14548701427882846605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A323308 (n + 1)) : ℚ) / 2

end

end A359466.P14548701427882846605

namespace A359466

/-- `and(2, A323308(n+1))/2` -/
def P14548701427882846605.Spec : Prop :=
  ∀ n, P14548701427882846605.a n = (A359466 (n + 1) : ℚ)

end A359466

/-! ## A359466.P1811704056307243188

`A069513(A000188(n+1))`
-/

namespace A359466.P1811704056307243188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A000188 (n + 1)).toNat

end

end A359466.P1811704056307243188

namespace A359466

/-- `A069513(A000188(n+1))` -/
def P1811704056307243188.Spec : Prop :=
  ∀ n, P1811704056307243188.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P9534502431337362686

`A069513(A003557(n+1))`
-/

namespace A359466.P9534502431337362686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A003557 (n + 1)).toNat

end

end A359466.P9534502431337362686

namespace A359466

/-- `A069513(A003557(n+1))` -/
def P9534502431337362686.Spec : Prop :=
  ∀ n, P9534502431337362686.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P11918184647552366986

`A107078(n+1)-A353625(n+1)`
-/

namespace A359466.P11918184647552366986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) - A353625 (n + 1)

end

end A359466.P11918184647552366986

namespace A359466

/-- `A107078(n+1)-A353625(n+1)` -/
def P11918184647552366986.Spec : Prop :=
  ∀ n, P11918184647552366986.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P12254595369531676094

`∑{d}[n+1, A271102(#)*A362412((n+1)/#)]`
-/

namespace A359466.P12254595369531676094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A362412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359466.P12254595369531676094

namespace A359466

/-- `∑{d}[n+1, A271102(#)*A362412((n+1)/#)]` -/
def P12254595369531676094.Spec : Prop :=
  ∀ n, P12254595369531676094.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P15303681572253641477

`A069513(A011264(n+1))`
-/

namespace A359466.P15303681572253641477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A011264 (n + 1)).toNat

end

end A359466.P15303681572253641477

namespace A359466

/-- `A069513(A011264(n+1))` -/
def P15303681572253641477.Spec : Prop :=
  ∀ n, P15303681572253641477.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P16863925930535348189

`A069513(A295666(n+1))`
-/

namespace A359466.P16863925930535348189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A295666 (n + 1)).toNat

end

end A359466.P16863925930535348189

namespace A359466

/-- `A069513(A295666(n+1))` -/
def P16863925930535348189.Spec : Prop :=
  ∀ n, P16863925930535348189.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P1037459326890680750

`and(A056170(n+1), A174692(n))`
-/

namespace A359466.P1037459326890680750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056170 (n + 1)) (A174692 n)

end

end A359466.P1037459326890680750

namespace A359466

/-- `and(A056170(n+1), A174692(n))` -/
def P1037459326890680750.Spec : Prop :=
  ∀ n, P1037459326890680750.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P5956485572232144580

`and(A055416(n), A056170(n+1))`
-/

namespace A359466.P5956485572232144580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055416 n) (A056170 (n + 1))

end

end A359466.P5956485572232144580

namespace A359466

/-- `and(A055416(n), A056170(n+1))` -/
def P5956485572232144580.Spec : Prop :=
  ∀ n, P5956485572232144580.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P10017634787451258865

`and(A000322(n), A056170(n+1))`
-/

namespace A359466.P10017634787451258865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000322 n) (A056170 (n + 1))

end

end A359466.P10017634787451258865

namespace A359466

/-- `and(A000322(n), A056170(n+1))` -/
def P10017634787451258865.Spec : Prop :=
  ∀ n, P10017634787451258865.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P7507780649661727600

`and(A000051(n), A056170(n+1))`
-/

namespace A359466.P7507780649661727600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A056170 (n + 1))

end

end A359466.P7507780649661727600

namespace A359466

/-- `and(A000051(n), A056170(n+1))` -/
def P7507780649661727600.Spec : Prop :=
  ∀ n, P7507780649661727600.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P1430139297948986350

`and(A004119(n), A056170(n+1))`
-/

namespace A359466.P1430139297948986350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004119 n) (A056170 (n + 1))

end

end A359466.P1430139297948986350

namespace A359466

/-- `and(A004119(n), A056170(n+1))` -/
def P1430139297948986350.Spec : Prop :=
  ∀ n, P1430139297948986350.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P17273109397070299643

`and(A056170(n+1), A196657(n))`
-/

namespace A359466.P17273109397070299643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056170 (n + 1)) (A196657 n)

end

end A359466.P17273109397070299643

namespace A359466

/-- `and(A056170(n+1), A196657(n))` -/
def P17273109397070299643.Spec : Prop :=
  ∀ n, P17273109397070299643.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P4671549328349586433

`and(A005183(n), A056170(n+1))`
-/

namespace A359466.P4671549328349586433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005183 n) (A056170 (n + 1))

end

end A359466.P4671549328349586433

namespace A359466

/-- `and(A005183(n), A056170(n+1))` -/
def P4671549328349586433.Spec : Prop :=
  ∀ n, P4671549328349586433.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P12494683188078384282

`and(A047861(n), A056170(n+1))`
-/

namespace A359466.P12494683188078384282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047861 n) (A056170 (n + 1))

end

end A359466.P12494683188078384282

namespace A359466

/-- `and(A047861(n), A056170(n+1))` -/
def P12494683188078384282.Spec : Prop :=
  ∀ n, P12494683188078384282.a n = A359466 (n + 1)

end A359466

/-! ## A359466.P2031255825128689915

`and(A048469(n), A056170(n+1))`
-/

namespace A359466.P2031255825128689915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048469 n) (A056170 (n + 1))

end

end A359466.P2031255825128689915

namespace A359466

/-- `and(A048469(n), A056170(n+1))` -/
def P2031255825128689915.Spec : Prop :=
  ∀ n, P2031255825128689915.a n = A359466 (n + 1)

end A359466

/-!
# A359467: 

The programs for A359467, there is no canonical definition to state claims against.
-/

/-! ## A359467.P7842746427084964437

`A347095(n+1)%2`
-/

namespace A359467.P7842746427084964437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347095 (n + 1)) 2

end

end A359467.P7842746427084964437

/-! ## A359467.P4982124694147278272

`A349342(n+1)%2`
-/

namespace A359467.P4982124694147278272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349342 (n + 1)) 2

end

end A359467.P4982124694147278272

/-! ## A359467.P14303748149697704524

`and(1, A342419(n+1))`
-/

namespace A359467.P14303748149697704524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A342419 (n + 1))

end

end A359467.P14303748149697704524

/-! ## A359467.P17189561291134578995

`char[A359468(n+1)-1]`
-/

namespace A359467.P17189561291134578995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359468 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359467.P17189561291134578995

/-! ## A359467.P17213202885552596195

`A126168((n+1)/∏{p}[n+1, #])%2`
-/

namespace A359467.P17213202885552596195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126168 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) 2

end

end A359467.P17213202885552596195

/-! ## A359467.P17313603944519459016

`A318833((n+1)/∏{p}[n+1, #])%2`
-/

namespace A359467.P17313603944519459016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) 2

end

end A359467.P17313603944519459016

/-! ## A359467.P17779712072019212468

`A318841((n+1)/∏{p}[n+1, #])%2`
-/

namespace A359467.P17779712072019212468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) 2

end

end A359467.P17779712072019212468

/-! ## A359467.P17521560458696961300

`A323413((n+1)/∏{p}[n+1, #])%2`
-/

namespace A359467.P17521560458696961300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323413 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) 2

end

end A359467.P17521560458696961300

/-! ## A359467.P8656214723175277332

`and(1, A325313((n+1)/∏{p}[n+1, #]))`
-/

namespace A359467.P8656214723175277332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A325313 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A359467.P8656214723175277332

/-! ## A359467.P14501506079999815001

`A126168(∏{p}[n+1, #^val(n+1, #²)])%2`
-/

namespace A359467.P14501506079999815001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126168 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))) 2

end

end A359467.P14501506079999815001

/-! ## A359467.P15315249091865948696

`and(1, A325313(∏{p}[n+1, #^val(n+1, #²)]))`
-/

namespace A359467.P15315249091865948696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A325313 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)))

end

end A359467.P15315249091865948696

/-! ## A359467.P9042955034760033138

`A323410(A003557(n+1))%2`
-/

namespace A359467.P9042955034760033138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323410 (A003557 (n + 1)).toNat) 2

end

end A359467.P9042955034760033138

/-! ## A359467.P13773522291084930991

`and(1, A347095(A000027(n+1)))`
-/

namespace A359467.P13773522291084930991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A347095 (A000027 (n + 1)).toNat)

end

end A359467.P13773522291084930991

/-! ## A359467.P15270760478894832591

`A296066(∏{p}[A003557(n+1), #])`
-/

namespace A359467.P15270760478894832591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296066 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A359467.P15270760478894832591

/-! ## A359467.P6743690093304085503

`(A355689(n+1)-A358839(n+1))²`
-/

namespace A359467.P6743690093304085503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A355689 (n + 1) - A358839 (n + 1)) ^ 2

end

end A359467.P6743690093304085503

/-! ## A359467.P3851089404032241925

`and(A126168(A000188(n+1)), A294619(n))`
-/

namespace A359467.P3851089404032241925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126168 (A000188 (n + 1)).toNat) (A294619 n)

end

end A359467.P3851089404032241925

/-! ## A359467.P2602220078826324188

`and(A126168(A000188(n+1)), A132126(2*(n+2)))`
-/

namespace A359467.P2602220078826324188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126168 (A000188 (n + 1)).toNat) (A132126 (2 * (n + 2)))

end

end A359467.P2602220078826324188

/-!
# A359469: a(n) = A353459(n) mod 2.

The programs for A359469, there is no canonical definition to state claims against.
-/

/-! ## A359469.P12659719220313563684

`and(1, A353459(n+1))`
-/

namespace A359469.P12659719220313563684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353459 (n + 1))

end

end A359469.P12659719220313563684

/-! ## A359469.P9669693020881478470

`(A353459(A028310(n)+1)+2)%2`
-/

namespace A359469.P9669693020881478470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353459 (A028310 n + 1).toNat + 2) 2

end

end A359469.P9669693020881478470

/-! ## A359469.P220424016783611060

`A000035(A353459(n+1)+A001316(3*n+2))`
-/

namespace A359469.P220424016783611060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A353459 (n + 1) + A001316 (3 * n + 2)).toNat

end

end A359469.P220424016783611060

/-! ## A359469.P13586049775032748508

`A000035(A353459(n+1)+2*(n+2))`
-/

namespace A359469.P13586049775032748508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A353459 (n + 1) + (2 * (n + 2) : ℤ)).toNat

end

end A359469.P13586049775032748508

/-! ## A359469.P4822327515752340392

`A266591(A353459(n+1)+A000040(n+5))`
-/

namespace A359469.P4822327515752340392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (A353459 (n + 1) + A000040 (n + 5)).toNat

end

end A359469.P4822327515752340392

/-! ## A359469.P7503793668282252721

`A056570(A334109(n+1))%2`
-/

namespace A359469.P7503793668282252721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056570 (A334109 (n + 1)).toNat) 2

end

end A359469.P7503793668282252721

/-! ## A359469.P6233149194227471508

`A010060(A071327(n+1)*A071327(n+1))`
-/

namespace A359469.P6233149194227471508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A071327 (n + 1) * A071327 (n + 1)).toNat

end

end A359469.P6233149194227471508

/-! ## A359469.P3939665668517667356

`A003001(A000188(n+1))%2`
-/

namespace A359469.P3939665668517667356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003001 (A000188 (n + 1)).toNat) 2

end

end A359469.P3939665668517667356

/-! ## A359469.P14999174731601549030

`A057427(A155161(∏{p}[n+1, #^val(n+1, #²)]²))`
-/

namespace A359469.P14999174731601549030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A155161 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)).toNat

end

end A359469.P14999174731601549030

/-! ## A359469.P16770928753328564086

`A057427(A360763(∏{p}[n+1, #^val(n+1, #²)]²)²)`
-/

namespace A359469.P16770928753328564086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A360763 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2) ^ 2).toNat

end

end A359469.P16770928753328564086

/-! ## A359469.P5897401348460522468

`A267152((n+1)/∏{p}[n+1, #]*A317311((n+1)/∏{p}[n+1, #])+5)`
-/

namespace A359469.P5897401348460522468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267152 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A317311 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ) + 5)).toNat

end

end A359469.P5897401348460522468

/-! ## A359469.P18337909121589655701

`A124010(A323953(∏{p}[n+1, #^val(n+1, #²)]²))`
-/

namespace A359469.P18337909121589655701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A323953 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)).toNat

end

end A359469.P18337909121589655701

/-! ## A359469.P2074470249304160594

`A086251(A000188(n+1))^A000125(n)`
-/

namespace A359469.P2074470249304160594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086251 (A000188 (n + 1)).toNat : ℚ) ^ (A000125 n : ℤ)

end

end A359469.P2074470249304160594

/-! ## A359469.P7803603725073616722

`A086251(A000188(n+1))^A000196(n)!`
-/

namespace A359469.P7803603725073616722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (A000188 (n + 1)).toNat ^ Nat.factorial (A000196 n).toNat

end

end A359469.P7803603725073616722

/-! ## A359469.P13568474765939350039

`A086251(A000188(n+1))^A023248(n+1)`
-/

namespace A359469.P13568474765939350039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086251 (A000188 (n + 1)).toNat : ℚ) ^ (A023248 (n + 1) : ℤ)

end

end A359469.P13568474765939350039

/-!
# A359470: Positions of odd terms in A353459.

The programs for A359470, there is no canonical definition to state claims against.
-/

/-! ## A359470.P2676064739619103933

`filter[n+1, A359469(#)]`
-/

namespace A359470.P2676064739619103933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j) = 1) n)

end

end A359470.P2676064739619103933

/-! ## A359470.P9643975573695066686

`lt[0, A359469(n+1)]+1`
-/

namespace A359470.P9643975573695066686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359469 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359470.P9643975573695066686

/-! ## A359470.P5868133758707964516

`lt[1, A370784(n+1)]+1`
-/

namespace A359470.P5868133758707964516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359470.P5868133758707964516

/-! ## A359470.P5265798307088935620

`eq[1, gcd(3, A334109(n+1))]+1`
-/

namespace A359470.P5265798307088935620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A334109 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359470.P5265798307088935620

/-! ## A359470.P10628547779788249831

`lt[0, A359469(n-a(a(n-1)))]` with `a(0)=0`
-/

namespace A359470.P10628547779788249831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A359469 ((n : ℤ) - f2 (f2 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359470.P10628547779788249831

/-! ## A359470.P16494307579844597755

`∪[(5*comp[7*n])², A190641(n+1)]`
-/

namespace A359470.P16494307579844597755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A359470.P16494307579844597755

/-! ## A359470.P4900630361316405317

`eq[1, A359469(A000007(n)+n)]`
-/

namespace A359470.P4900630361316405317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359469 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359470.P4900630361316405317

/-! ## A359470.P5999199745485528761

`∪[A190641(n+1), A016958(n)]`
-/

namespace A359470.P5999199745485528761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359470.P5999199745485528761

/-! ## A359470.P12843439320755506829

`∪[A190641(n+1), A017018(n)]`
-/

namespace A359470.P12843439320755506829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359470.P12843439320755506829

/-! ## A359470.P10019548502108112214

`∪[A190641(n+1), A017090(n)]`
-/

namespace A359470.P10019548502108112214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359470.P10019548502108112214

/-!
# A359471: a(n) = 1 if the product of exponents in the prime factorization of n is less than 3, otherwise 0.

The programs for A359471, the canonical program `A359471.P18375457830657465753` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359471 has offset 1).

The definition of A359471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359471.P18087103500267981908

`A008966(n+1)+A359474(n+1)`
-/

namespace A359471.P18087103500267981908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + A359474 (n + 1)

end

end A359471.P18087103500267981908

namespace A359471

/-- `A008966(n+1)+A359474(n+1)` -/
def P18087103500267981908.Spec : Prop :=
  ∀ n, P18087103500267981908.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P18375457830657465753

`round(1/∏{e}[n+1, #])`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359471

/-- `round(1/∏{e}[n+1, #])` -/
def P18375457830657465753.Spec : Prop :=
  ∀ n, P18375457830657465753.a n = A359471 (n + 1)

theorem P18375457830657465753.correct : P18375457830657465753.Spec := by
  intro n
  simp only [A359471, Nat.add_sub_cancel]

end A359471

/-! ## A359471.P17269176999613060696

`char[lt[∏{e}[n+1, #], 3]]`
-/

namespace A359471.P17269176999613060696
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359471.P17269176999613060696

namespace A359471

/-- `char[lt[∏{e}[n+1, #], 3]]` -/
def P17269176999613060696.Spec : Prop :=
  ∀ n, (P17269176999613060696.a n : ℤ) = A359471 (n + 1)

end A359471

/-! ## A359471.P12928718013688199451

`ceil(cos(∑{e}[n+1, log2(#)]))`
-/

namespace A359471.P12928718013688199451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ))⌉

end

end A359471.P12928718013688199451

namespace A359471

/-- `ceil(cos(∑{e}[n+1, log2(#)]))` -/
def P12928718013688199451.Spec : Prop :=
  ∀ n, P12928718013688199451.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P14528036069044448542

`ceil(cos(log2(∏{e}[n+1, #])))`
-/

namespace A359471.P14528036069044448542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌉

end

end A359471.P14528036069044448542

namespace A359471

/-- `ceil(cos(log2(∏{e}[n+1, #])))` -/
def P14528036069044448542.Spec : Prop :=
  ∀ n, P14528036069044448542.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P210280992380504708

`round(cot(atan(∏{e}[n+1, #])))`
-/

namespace A359471.P210280992380504708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A359471.P210280992380504708

namespace A359471

/-- `round(cot(atan(∏{e}[n+1, #])))` -/
def P210280992380504708.Spec : Prop :=
  ∀ n, P210280992380504708.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P3616808882401664042

`C(C(3, ∏{e}[n+1, #]), 3)`
-/

namespace A359471.P3616808882401664042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 3

end

end A359471.P3616808882401664042

namespace A359471

/-- `C(C(3, ∏{e}[n+1, #]), 3)` -/
def P3616808882401664042.Spec : Prop :=
  ∀ n, (P3616808882401664042.a n : ℤ) = A359471 (n + 1)

end A359471

/-! ## A359471.P2422860209342968424

`round(∏{e}[n+1, #^-1])`
-/

namespace A359471.P2422860209342968424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (-1 : ℤ))

end

end A359471.P2422860209342968424

namespace A359471

/-- `round(∏{e}[n+1, #^-1])` -/
def P2422860209342968424.Spec : Prop :=
  ∀ n, P2422860209342968424.a n = A359471 (n + 1)

theorem P2422860209342968424.correct : P2422860209342968424.Spec := by
  intro n
  simp only [A359471, Nat.add_sub_cancel, A359471.P2422860209342968424.f1, A359471.P2422860209342968424.a, A359471.P18375457830657465753.f1, A359471.P18375457830657465753.a, SequenceMachineLib.memo_apply]
  try simp

end A359471

/-! ## A359471.P3127099123408749364

`∏{e}[n+1, #]!²%3`
-/

namespace A359471.P3127099123408749364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2 % 3

end

end A359471.P3127099123408749364

namespace A359471

/-- `∏{e}[n+1, #]!²%3` -/
def P3127099123408749364.Spec : Prop :=
  ∀ n, (P3127099123408749364.a n : ℤ) = A359471 (n + 1)

end A359471

/-! ## A359471.P11105986680503858222

`floor(3/(∏{e}[n+1, #]+1))`
-/

namespace A359471.P11105986680503858222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℚ)⌋

end

end A359471.P11105986680503858222

namespace A359471

/-- `floor(3/(∏{e}[n+1, #]+1))` -/
def P11105986680503858222.Spec : Prop :=
  ∀ n, P11105986680503858222.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P5895442246226543733

`round(2^∑{e}[n+1, 1-#])`
-/

namespace A359471.P5895442246226543733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), (1 - (Nat.factorization (f1 n) p : ℤ)) : ℤ))

end

end A359471.P5895442246226543733

namespace A359471

/-- `round(2^∑{e}[n+1, 1-#])` -/
def P5895442246226543733.Spec : Prop :=
  ∀ n, P5895442246226543733.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P2467515418749554248

`round(2^(1-∏{e}[n+1, #]))`
-/

namespace A359471.P2467515418749554248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (1 - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) : ℤ))

end

end A359471.P2467515418749554248

namespace A359471

/-- `round(2^(1-∏{e}[n+1, #]))` -/
def P2467515418749554248.Spec : Prop :=
  ∀ n, P2467515418749554248.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P1402724771479069788

`C(2, A275812(n+1))`
-/

namespace A359471.P1402724771479069788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A275812 (n + 1)).toNat

end

end A359471.P1402724771479069788

namespace A359471

/-- `C(2, A275812(n+1))` -/
def P1402724771479069788.Spec : Prop :=
  ∀ n, (P1402724771479069788.a n : ℤ) = A359471 (n + 1)

end A359471

/-! ## A359471.P6529340277223035055

`C(2, A348945(n+1))`
-/

namespace A359471.P6529340277223035055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A348945 (n + 1)).toNat

end

end A359471.P6529340277223035055

namespace A359471

/-- `C(2, A348945(n+1))` -/
def P6529340277223035055.Spec : Prop :=
  ∀ n, (P6529340277223035055.a n : ℤ) = A359471 (n + 1)

end A359471

/-! ## A359471.P16626644853316861983

`A014096(∏{e}[n+1, #])`
-/

namespace A359471.P16626644853316861983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014096 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A359471.P16626644853316861983

namespace A359471

/-- `A014096(∏{e}[n+1, #])` -/
def P16626644853316861983.Spec : Prop :=
  ∀ n, P16626644853316861983.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P1866253244885542954

`A014102(∏{e}[n+1, #])`
-/

namespace A359471.P1866253244885542954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014102 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A359471.P1866253244885542954

namespace A359471

/-- `A014102(∏{e}[n+1, #])` -/
def P1866253244885542954.Spec : Prop :=
  ∀ n, P1866253244885542954.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P7610083012424053912

`A019590(∏{e}[n+1, #])`
-/

namespace A359471.P7610083012424053912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A359471.P7610083012424053912

namespace A359471

/-- `A019590(∏{e}[n+1, #])` -/
def P7610083012424053912.Spec : Prop :=
  ∀ n, P7610083012424053912.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P795172812837260663

`round(1/A000688(n+1))`
-/

namespace A359471.P795172812837260663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A000688 (n + 1) : ℚ))

end

end A359471.P795172812837260663

namespace A359471

/-- `round(1/A000688(n+1))` -/
def P795172812837260663.Spec : Prop :=
  ∀ n, P795172812837260663.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P15572832444451433026

`round(1/A104404(n+1))`
-/

namespace A359471.P15572832444451433026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A104404 (n + 1) : ℚ))

end

end A359471.P15572832444451433026

namespace A359471

/-- `round(1/A104404(n+1))` -/
def P15572832444451433026.Spec : Prop :=
  ∀ n, P15572832444451433026.a n = A359471 (n + 1)

end A359471

/-! ## A359471.P10877723559116553821

`round(1/A295879(n+1))`
-/

namespace A359471.P10877723559116553821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A295879 (n + 1) : ℚ))

end

end A359471.P10877723559116553821

namespace A359471

/-- `round(1/A295879(n+1))` -/
def P10877723559116553821.Spec : Prop :=
  ∀ n, P10877723559116553821.a n = A359471 (n + 1)

end A359471

/-!
# A359472: a(n) = 1 if the product of exponents in the prime factorization of n is 3, otherwise 0.

The programs for A359472, the canonical program `A359472.P252733584322664762` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359472 has offset 1).

The definition of A359472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359472.P252733584322664762

`(4%∏{e}[n+1, #])%2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359472

/-- `(4%∏{e}[n+1, #])%2` -/
def P252733584322664762.Spec : Prop :=
  ∀ n, (P252733584322664762.a n : ℤ) = A359472 (n + 1)

theorem P252733584322664762.correct : P252733584322664762.Spec := by
  intro n
  simp only [A359472, Nat.add_sub_cancel]

end A359472

/-! ## A359472.P7074372005869853428

`round(sin(C(3, ∏{e}[n+1, #])))`
-/

namespace A359472.P7074372005869853428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Nat.choose 3 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℝ))

end

end A359472.P7074372005869853428

namespace A359472

/-- `round(sin(C(3, ∏{e}[n+1, #])))` -/
def P7074372005869853428.Spec : Prop :=
  ∀ n, P7074372005869853428.a n = A359472 (n + 1)

end A359472

/-! ## A359472.P14675714954223774836

`floor(acot(xor(3, ∏{e}[n+1, #])))`
-/

namespace A359472.P14675714954223774836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Nat.xor 3 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℝ)⌋

end

end A359472.P14675714954223774836

namespace A359472

/-- `floor(acot(xor(3, ∏{e}[n+1, #])))` -/
def P14675714954223774836.Spec : Prop :=
  ∀ n, P14675714954223774836.a n = A359472 (n + 1)

end A359472

/-! ## A359472.P3905563728652929766

`val(∏{e}[n+1, #!]+2, 8)`
-/

namespace A359472.P3905563728652929766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) + 2) 8

end

end A359472.P3905563728652929766

namespace A359472

/-- `val(∏{e}[n+1, #!]+2, 8)` -/
def P3905563728652929766.Spec : Prop :=
  ∀ n, (P3905563728652929766.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P17207042394292569220

`and(4, ∏{e}[n+1, #]!)/4`
-/

namespace A359472.P17207042394292569220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℚ) / 4

end

end A359472.P17207042394292569220

namespace A359472

/-- `and(4, ∏{e}[n+1, #]!)/4` -/
def P17207042394292569220.Spec : Prop :=
  ∀ n, P17207042394292569220.a n = (A359472 (n + 1) : ℚ)

end A359472

/-! ## A359472.P9696525149641245331

`floor(1/xor(7, ∏{e}[n+1, #!]))`
-/

namespace A359472.P9696525149641245331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Nat.xor 7 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) : ℚ)⌋

end

end A359472.P9696525149641245331

namespace A359472

/-- `floor(1/xor(7, ∏{e}[n+1, #!]))` -/
def P9696525149641245331.Spec : Prop :=
  ∀ n, P9696525149641245331.a n = A359472 (n + 1)

end A359472

/-! ## A359472.P6264347416488444412

`char[eq[0, A048106(n+1)]]`
-/

namespace A359472.P6264347416488444412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048106 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359472.P6264347416488444412

namespace A359472

/-- `char[eq[0, A048106(n+1)]]` -/
def P6264347416488444412.Spec : Prop :=
  ∀ n, (P6264347416488444412.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P5045383111547640081

`char[eq[2, A183094(n+1)]]`
-/

namespace A359472.P5045383111547640081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359472.P5045383111547640081

namespace A359472

/-- `char[eq[2, A183094(n+1)]]` -/
def P5045383111547640081.Spec : Prop :=
  ∀ n, (P5045383111547640081.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P2705711786224774443

`char[eq[3, A000688(n+1)]]`
-/

namespace A359472.P2705711786224774443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359472.P2705711786224774443

namespace A359472

/-- `char[eq[3, A000688(n+1)]]` -/
def P2705711786224774443.Spec : Prop :=
  ∀ n, (P2705711786224774443.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P16996631420139882486

`char[eq[3, A091050(n+1)]]`
-/

namespace A359472.P16996631420139882486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359472.P16996631420139882486

namespace A359472

/-- `char[eq[3, A091050(n+1)]]` -/
def P16996631420139882486.Spec : Prop :=
  ∀ n, (P16996631420139882486.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P16979959374965873080

`char[eq[6, A294875(n+1)]]`
-/

namespace A359472.P16979959374965873080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294875 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359472.P16979959374965873080

namespace A359472

/-- `char[eq[6, A294875(n+1)]]` -/
def P16979959374965873080.Spec : Prop :=
  ∀ n, (P16979959374965873080.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P17382031548087817595

`char[eq[7, A360911(n+1)]]`
-/

namespace A359472.P17382031548087817595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360911 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359472.P17382031548087817595

namespace A359472

/-- `char[eq[7, A360911(n+1)]]` -/
def P17382031548087817595.Spec : Prop :=
  ∀ n, (P17382031548087817595.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P14593363743653587851

`val(A000040(∏{e}[n+1, #]), 5)`
-/

namespace A359472.P14593363743653587851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat 5

end

end A359472.P14593363743653587851

namespace A359472

/-- `val(A000040(∏{e}[n+1, #]), 5)` -/
def P14593363743653587851.Spec : Prop :=
  ∀ n, (P14593363743653587851.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P10327276665658621960

`val(A000040(2^∑{e}[n+1, log2(#)]), 5)`
-/

namespace A359472.P10327276665658621960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ)))).toNat).toNat 5

end

end A359472.P10327276665658621960

namespace A359472

/-- `val(A000040(2^∑{e}[n+1, log2(#)]), 5)` -/
def P10327276665658621960.Spec : Prop :=
  ∀ n, (P10327276665658621960.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P10656396519710633699

`val(A000040(∏{p}[n+1, val(n+1, #)]), 5)`
-/

namespace A359472.P10656396519710633699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)).toNat 5

end

end A359472.P10656396519710633699

namespace A359472

/-- `val(A000040(∏{p}[n+1, val(n+1, #)]), 5)` -/
def P10656396519710633699.Spec : Prop :=
  ∀ n, (P10656396519710633699.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P3133960908488561366

`val(A000040(A005361(n+1)), 5)`
-/

namespace A359472.P3133960908488561366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A005361 (n + 1)).toNat).toNat 5

end

end A359472.P3133960908488561366

namespace A359472

/-- `val(A000040(A005361(n+1)), 5)` -/
def P3133960908488561366.Spec : Prop :=
  ∀ n, (P3133960908488561366.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P15616127495573235347

`val(A000040(A351219(n+1)), 5)`
-/

namespace A359472.P15616127495573235347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A351219 (n + 1)).toNat).toNat 5

end

end A359472.P15616127495573235347

namespace A359472

/-- `val(A000040(A351219(n+1)), 5)` -/
def P15616127495573235347.Spec : Prop :=
  ∀ n, (P15616127495573235347.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P9399573986439649070

`val(A000040(A360908(n+1)), 11)`
-/

namespace A359472.P9399573986439649070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A360908 (n + 1)).toNat).toNat 11

end

end A359472.P9399573986439649070

namespace A359472

/-- `val(A000040(A360908(n+1)), 11)` -/
def P9399573986439649070.Spec : Prop :=
  ∀ n, (P9399573986439649070.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P2974493946621361812

`val(A000040(A324910(n+1)), 17)`
-/

namespace A359472.P2974493946621361812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A324910 (n + 1)).toNat).toNat 17

end

end A359472.P2974493946621361812

namespace A359472

/-- `val(A000040(A324910(n+1)), 17)` -/
def P2974493946621361812.Spec : Prop :=
  ∀ n, (P2974493946621361812.a n : ℤ) = A359472 (n + 1)

end A359472

/-! ## A359472.P11485580677276020272

`val(A000040(A293515(n+1)), 5)`
-/

namespace A359472.P11485580677276020272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A293515 (n + 1)).toNat).toNat 5

end

end A359472.P11485580677276020272

namespace A359472

/-- `val(A000040(A293515(n+1)), 5)` -/
def P11485580677276020272.Spec : Prop :=
  ∀ n, (P11485580677276020272.a n : ℤ) = A359472 (n + 1)

end A359472

/-!
# A359473: a(n) = 1 if the number of divisors of n is a power of 2, otherwise 0.

The programs for A359473, the canonical program `A359473.P5174824545835334631` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359473 has offset 1).

The definition of A359473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359473.P5174824545835334631

`A209229(A000005(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359473

/-- `A209229(A000005(n+1))` -/
def P5174824545835334631.Spec : Prop :=
  ∀ n, P5174824545835334631.a n = A359473 (n + 1)

theorem P5174824545835334631.correct : P5174824545835334631.Spec := by
  intro n
  simp only [A359473, Nat.add_sub_cancel]

end A359473

/-! ## A359473.P10711450220043097476

`A069739(n+1)%2`
-/

namespace A359473.P10711450220043097476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069739 (n + 1)) 2

end

end A359473.P10711450220043097476

namespace A359473

/-- `A069739(n+1)%2` -/
def P10711450220043097476.Spec : Prop :=
  ∀ n, P10711450220043097476.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P12383653280901072933

`A372331(n+1)%2`
-/

namespace A359473.P12383653280901072933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372331 (n + 1)) 2

end

end A359473.P12383653280901072933

namespace A359473

/-- `A372331(n+1)%2` -/
def P12383653280901072933.Spec : Prop :=
  ∀ n, P12383653280901072933.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P1456435267752182418

`and(1, A355824(n+1))`
-/

namespace A359473.P1456435267752182418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A355824 (n + 1))

end

end A359473.P1456435267752182418

namespace A359473

/-- `and(1, A355824(n+1))` -/
def P1456435267752182418.Spec : Prop :=
  ∀ n, P1456435267752182418.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P5960465664928439882

`C(2, A348271(n+1)²)`
-/

namespace A359473.P5960465664928439882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A348271 (n + 1) ^ 2).toNat

end

end A359473.P5960465664928439882

namespace A359473

/-- `C(2, A348271(n+1)²)` -/
def P5960465664928439882.Spec : Prop :=
  ∀ n, (P5960465664928439882.a n : ℤ) = A359473 (n + 1)

end A359473

/-! ## A359473.P3690968605197092291

`floor(1/A193349(n+1))`
-/

namespace A359473.P3690968605197092291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A193349 (n + 1) : ℚ)⌋

end

end A359473.P3690968605197092291

namespace A359473

/-- `floor(1/A193349(n+1))` -/
def P3690968605197092291.Spec : Prop :=
  ∀ n, P3690968605197092291.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P5455011899737606609

`floor(1/A212181(n+1))`
-/

namespace A359473.P5455011899737606609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A212181 (n + 1) : ℚ)⌋

end

end A359473.P5455011899737606609

namespace A359473

/-- `floor(1/A212181(n+1))` -/
def P5455011899737606609.Spec : Prop :=
  ∀ n, P5455011899737606609.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P14462882553738866142

`char[A036537(n+1)-1]`
-/

namespace A359473.P14462882553738866142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359473.P14462882553738866142

namespace A359473

/-- `char[A036537(n+1)-1]` -/
def P14462882553738866142.Spec : Prop :=
  ∀ n, (P14462882553738866142.a n : ℤ) = A359473 (n + 1)

end A359473

/-! ## A359473.P15761795197743511292

`C(n+1, A372329(n+1))`
-/

namespace A359473.P15761795197743511292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A372329 (n + 1)).toNat

end

end A359473.P15761795197743511292

namespace A359473

/-- `C(n+1, A372329(n+1))` -/
def P15761795197743511292.Spec : Prop :=
  ∀ n, (P15761795197743511292.a n : ℤ) = A359473 (n + 1)

end A359473

/-! ## A359473.P17448027851611472791

`C(A372379(n+1), n+1)`
-/

namespace A359473.P17448027851611472791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A372379 (n + 1)).toNat (n + 1)

end

end A359473.P17448027851611472791

namespace A359473

/-- `C(A372379(n+1), n+1)` -/
def P17448027851611472791.Spec : Prop :=
  ∀ n, (P17448027851611472791.a n : ℤ) = A359473 (n + 1)

end A359473

/-! ## A359473.P6467571605342495115

`C(A390863(n+1), n+1)`
-/

namespace A359473.P6467571605342495115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A390863 (n + 1)).toNat (n + 1)

end

end A359473.P6467571605342495115

namespace A359473

/-- `C(A390863(n+1), n+1)` -/
def P6467571605342495115.Spec : Prop :=
  ∀ n, (P6467571605342495115.a n : ℤ) = A359473 (n + 1)

end A359473

/-! ## A359473.P2101246392358396227

`C(2, A008472(∏{e}[n+1, #+1]))`
-/

namespace A359473.P2101246392358396227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A008472 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A359473.P2101246392358396227

namespace A359473

/-- `C(2, A008472(∏{e}[n+1, #+1]))` -/
def P2101246392358396227.Spec : Prop :=
  ∀ n, (P2101246392358396227.a n : ℤ) = A359473 (n + 1)

end A359473

/-! ## A359473.P5722544103212687727

`and(1, A336158(∏{e}[n+1, #+1]))`
-/

namespace A359473.P5722544103212687727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A336158 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A359473.P5722544103212687727

namespace A359473

/-- `and(1, A336158(∏{e}[n+1, #+1]))` -/
def P5722544103212687727.Spec : Prop :=
  ∀ n, P5722544103212687727.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P3239031153677275680

`∏{p}[∑{d}[n+1, ceil(1/#)], A142150(#)]`
-/

namespace A359473.P3239031153677275680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A142150 p

end

end A359473.P3239031153677275680

namespace A359473

/-- `∏{p}[∑{d}[n+1, ceil(1/#)], A142150(#)]` -/
def P3239031153677275680.Spec : Prop :=
  ∀ n, P3239031153677275680.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P17995362067247999601

`A036987(A325765(n))`
-/

namespace A359473.P17995362067247999601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A325765 n).toNat

end

end A359473.P17995362067247999601

namespace A359473

/-- `A036987(A325765(n))` -/
def P17995362067247999601.Spec : Prop :=
  ∀ n, P17995362067247999601.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P9634523754624285706

`A036987(A032741(n+1))`
-/

namespace A359473.P9634523754624285706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A032741 (n + 1)).toNat

end

end A359473.P9634523754624285706

namespace A359473

/-- `A036987(A032741(n+1))` -/
def P9634523754624285706.Spec : Prop :=
  ∀ n, P9634523754624285706.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P5404778775657394910

`A209229(A212181(n+1))`
-/

namespace A359473.P5404778775657394910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A212181 (n + 1)).toNat

end

end A359473.P5404778775657394910

namespace A359473

/-- `A209229(A212181(n+1))` -/
def P5404778775657394910.Spec : Prop :=
  ∀ n, P5404778775657394910.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P12569678363194183913

`A209229(A372470(n+1))`
-/

namespace A359473.P12569678363194183913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A372470 (n + 1)).toNat

end

end A359473.P12569678363194183913

namespace A359473

/-- `A209229(A372470(n+1))` -/
def P12569678363194183913.Spec : Prop :=
  ∀ n, P12569678363194183913.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P350502181946471238

`A076141(A000005(n+1)²)`
-/

namespace A359473.P350502181946471238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076141 (A000005 (n + 1) ^ 2).toNat

end

end A359473.P350502181946471238

namespace A359473

/-- `A076141(A000005(n+1)²)` -/
def P350502181946471238.Spec : Prop :=
  ∀ n, P350502181946471238.a n = A359473 (n + 1)

end A359473

/-! ## A359473.P15494986459850556969

`A154269(A000005(n+1)²)`
-/

namespace A359473.P15494986459850556969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A000005 (n + 1) ^ 2).toNat

end

end A359473.P15494986459850556969

namespace A359473

/-- `A154269(A000005(n+1)²)` -/
def P15494986459850556969.Spec : Prop :=
  ∀ n, P15494986459850556969.a n = A359473 (n + 1)

end A359473

/-!
# A359474: a(n) = 1 if the product of exponents in the prime factorization of n is 2, otherwise 0.

The programs for A359474, the canonical program `A359474.P3439923367546427684` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359474 has offset 1).

The definition of A359474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A359471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359474.P12425667054791290777

`A302048(n+1)+A359475(n+1)`
-/

namespace A359474.P12425667054791290777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (n + 1) + A359475 (n + 1)

end

end A359474.P12425667054791290777

namespace A359474

/-- `A302048(n+1)+A359475(n+1)` -/
def P12425667054791290777.Spec : Prop :=
  ∀ n, P12425667054791290777.a n = A359474 (n + 1)

end A359474

/-! ## A359474.P3439923367546427684

`A359471(n+1)-A008966(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359474

/-- `A359471(n+1)-A008966(n+1)` -/
def P3439923367546427684.Spec : Prop :=
  ∀ n, P3439923367546427684.a n = A359474 (n + 1)

theorem P3439923367546427684.correct : P3439923367546427684.Spec := by
  intro n
  simp only [A359474, Nat.add_sub_cancel]

end A359474

/-! ## A359474.P765980544617932457

`A359429(n+1)*A359466(n+1)`
-/

namespace A359474.P765980544617932457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359429 (n + 1) * A359466 (n + 1)

end

end A359474.P765980544617932457

namespace A359474

/-- `A359429(n+1)*A359466(n+1)` -/
def P765980544617932457.Spec : Prop :=
  ∀ n, P765980544617932457.a n = A359474 (n + 1)

end A359474

/-! ## A359474.P999295337792589416

`char[eq[2, ∏{e}[n+1, #]]]`
-/

namespace A359474.P999295337792589416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359474.P999295337792589416

namespace A359474

/-- `char[eq[2, ∏{e}[n+1, #]]]` -/
def P999295337792589416.Spec : Prop :=
  ∀ n, (P999295337792589416.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P12160420556939438892

`(3%∏{e}[n+1, #])%3`
-/

namespace A359474.P12160420556939438892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 3

end

end A359474.P12160420556939438892

namespace A359474

/-- `(3%∏{e}[n+1, #])%3` -/
def P12160420556939438892.Spec : Prop :=
  ∀ n, (P12160420556939438892.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P4843144065604142583

`A359475(lcm(6, n+1))`
-/

namespace A359474.P4843144065604142583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359475 (Nat.lcm 6 (n + 1))

end

end A359474.P4843144065604142583

namespace A359474

/-- `A359475(lcm(6, n+1))` -/
def P4843144065604142583.Spec : Prop :=
  ∀ n, P4843144065604142583.a n = A359474 (n + 1)

end A359474

/-! ## A359474.P2482996719487734596

`A014061(∏{e}[n+1, #])`
-/

namespace A359474.P2482996719487734596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014061 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A359474.P2482996719487734596

namespace A359474

/-- `A014061(∏{e}[n+1, #])` -/
def P2482996719487734596.Spec : Prop :=
  ∀ n, P2482996719487734596.a n = A359474 (n + 1)

end A359474

/-! ## A359474.P13061064140011765058

`char[A060687(n+1)-1]`
-/

namespace A359474.P13061064140011765058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359474.P13061064140011765058

namespace A359474

/-- `char[A060687(n+1)-1]` -/
def P13061064140011765058.Spec : Prop :=
  ∀ n, (P13061064140011765058.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P6588806929385478868

`char[eq[1, A046660(n+1)]]`
-/

namespace A359474.P6588806929385478868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359474.P6588806929385478868

namespace A359474

/-- `char[eq[1, A046660(n+1)]]` -/
def P6588806929385478868.Spec : Prop :=
  ∀ n, (P6588806929385478868.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P1421797839157987804

`char[eq[1, A183094(n+1)]]`
-/

namespace A359474.P1421797839157987804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359474.P1421797839157987804

namespace A359474

/-- `char[eq[1, A183094(n+1)]]` -/
def P1421797839157987804.Spec : Prop :=
  ∀ n, (P1421797839157987804.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P1670947206620600766

`char[eq[2, A000688(n+1)]]`
-/

namespace A359474.P1670947206620600766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359474.P1670947206620600766

namespace A359474

/-- `char[eq[2, A000688(n+1)]]` -/
def P1670947206620600766.Spec : Prop :=
  ∀ n, (P1670947206620600766.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P3243271438260108997

`char[eq[2, A005361(n+1)]]`
-/

namespace A359474.P3243271438260108997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359474.P3243271438260108997

namespace A359474

/-- `char[eq[2, A005361(n+1)]]` -/
def P3243271438260108997.Spec : Prop :=
  ∀ n, (P3243271438260108997.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P7458107551021879726

`char[eq[2, A091050(n+1)]]`
-/

namespace A359474.P7458107551021879726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359474.P7458107551021879726

namespace A359474

/-- `char[eq[2, A091050(n+1)]]` -/
def P7458107551021879726.Spec : Prop :=
  ∀ n, (P7458107551021879726.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P12865184332660762731

`char[eq[2, A294875(n+1)]]`
-/

namespace A359474.P12865184332660762731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294875 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359474.P12865184332660762731

namespace A359474

/-- `char[eq[2, A294875(n+1)]]` -/
def P12865184332660762731.Spec : Prop :=
  ∀ n, (P12865184332660762731.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P6874738107420862662

`and(2, A069626(n+1))/2`
-/

namespace A359474.P6874738107420862662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A069626 (n + 1)) : ℚ) / 2

end

end A359474.P6874738107420862662

namespace A359474

/-- `and(2, A069626(n+1))/2` -/
def P6874738107420862662.Spec : Prop :=
  ∀ n, P6874738107420862662.a n = (A359474 (n + 1) : ℚ)

end A359474

/-! ## A359474.P18334663441162079565

`and(2, A162510(n+1))/2`
-/

namespace A359474.P18334663441162079565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A162510 (n + 1)) : ℚ) / 2

end

end A359474.P18334663441162079565

namespace A359474

/-- `and(2, A162510(n+1))/2` -/
def P18334663441162079565.Spec : Prop :=
  ∀ n, P18334663441162079565.a n = (A359474 (n + 1) : ℚ)

end A359474

/-! ## A359474.P11893902611987791051

`and(2, A372504(n+1))/2`
-/

namespace A359474.P11893902611987791051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A372504 (n + 1)) : ℚ) / 2

end

end A359474.P11893902611987791051

namespace A359474

/-- `and(2, A372504(n+1))/2` -/
def P11893902611987791051.Spec : Prop :=
  ∀ n, P11893902611987791051.a n = (A359474 (n + 1) : ℚ)

end A359474

/-! ## A359474.P17690401999538853565

`val(A395458(n+1), n+3)`
-/

namespace A359474.P17690401999538853565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A395458 (n + 1)).toNat (n + 3)

end

end A359474.P17690401999538853565

namespace A359474

/-- `val(A395458(n+1), n+3)` -/
def P17690401999538853565.Spec : Prop :=
  ∀ n, (P17690401999538853565.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P12969131565456652788

`val(A000040(∏{e}[n+1, #]), 3)`
-/

namespace A359474.P12969131565456652788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat 3

end

end A359474.P12969131565456652788

namespace A359474

/-- `val(A000040(∏{e}[n+1, #]), 3)` -/
def P12969131565456652788.Spec : Prop :=
  ∀ n, (P12969131565456652788.a n : ℤ) = A359474 (n + 1)

end A359474

/-! ## A359474.P1442609130593686171

`A010051(A000189(n+1))`
-/

namespace A359474.P1442609130593686171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000189 (n + 1)).toNat

end

end A359474.P1442609130593686171

namespace A359474

/-- `A010051(A000189(n+1))` -/
def P1442609130593686171.Spec : Prop :=
  ∀ n, P1442609130593686171.a n = A359474 (n + 1)

end A359474

/-!
# A359475: a(n) = 1 if n is a cubefree nonsquare whose factorization into a product of primes contains exactly one square, otherwise 0.

The programs for A359475, the canonical program `A359475.P3885974890903103559` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359475 has offset 1).

The definition of A359475 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302048, A359474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359475.P3885974890903103559

`A359474(n+1)-A302048(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359475

/-- `A359474(n+1)-A302048(n+1)` -/
def P3885974890903103559.Spec : Prop :=
  ∀ n, P3885974890903103559.a n = A359475 (n + 1)

theorem P3885974890903103559.correct : P3885974890903103559.Spec := by
  intro n
  simp only [A359475, Nat.add_sub_cancel]

end A359475

/-! ## A359475.P18265481206150499370

`A049240(n+1)*A359474(n+1)`
-/

namespace A359475.P18265481206150499370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A359474 (n + 1)

end

end A359475.P18265481206150499370

namespace A359475

/-- `A049240(n+1)*A359474(n+1)` -/
def P18265481206150499370.Spec : Prop :=
  ∀ n, P18265481206150499370.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P8996918059504556817

`char[A072357(n+1)-1]`
-/

namespace A359475.P8996918059504556817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359475.P8996918059504556817

namespace A359475

/-- `char[A072357(n+1)-1]` -/
def P8996918059504556817.Spec : Prop :=
  ∀ n, (P8996918059504556817.a n : ℤ) = A359475 (n + 1)

end A359475

/-! ## A359475.P17347846365378964357

`and(2, A076413(n+1))/2`
-/

namespace A359475.P17347846365378964357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A076413 (n + 1)) : ℚ) / 2

end

end A359475.P17347846365378964357

namespace A359475

/-- `and(2, A076413(n+1))/2` -/
def P17347846365378964357.Spec : Prop :=
  ∀ n, P17347846365378964357.a n = (A359475 (n + 1) : ℚ)

end A359475

/-! ## A359475.P15792075930332935002

`C(A293902(n+1)%6, 4)`
-/

namespace A359475.P15792075930332935002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A293902 (n + 1)) 6).toNat 4

end

end A359475.P15792075930332935002

namespace A359475

/-- `C(A293902(n+1)%6, 4)` -/
def P15792075930332935002.Spec : Prop :=
  ∀ n, (P15792075930332935002.a n : ℤ) = A359475 (n + 1)

end A359475

/-! ## A359475.P11523128111356883776

`val(∏{e}[n+1, #+1], A259646(∏{e}[n+1, #]))`
-/

namespace A359475.P11523128111356883776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) (A259646 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

end

end A359475.P11523128111356883776

namespace A359475

/-- `val(∏{e}[n+1, #+1], A259646(∏{e}[n+1, #]))` -/
def P11523128111356883776.Spec : Prop :=
  ∀ n, (P11523128111356883776.a n : ℤ) = A359475 (n + 1)

end A359475

/-! ## A359475.P7987716867523250538

`A010051(gcd((n+1)/∏{p}[n+1, #], ∏{e}[n+1, -1%#]))`
-/

namespace A359475.P7987716867523250538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (∏ p ∈ Nat.primeFactors (f2 n), Int.tmod (-1) (Nat.factorization (f2 n) p : ℤ)))

end

end A359475.P7987716867523250538

namespace A359475

/-- `A010051(gcd((n+1)/∏{p}[n+1, #], ∏{e}[n+1, -1%#]))` -/
def P7987716867523250538.Spec : Prop :=
  ∀ n, P7987716867523250538.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P1102963713540524844

`A157658(gcd(∏{e}[n+1, #+1]², ∏{e}[n+1, (-2)^#/2]))`
-/

namespace A359475.P1102963713540524844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (Int.gcd (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2 : ℕ) : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), ((-2) ^ Nat.factorization (f2 n) p : ℚ) / 2)))

end

end A359475.P1102963713540524844

namespace A359475

/-- `A157658(gcd(∏{e}[n+1, #+1]², ∏{e}[n+1, (-2)^#/2]))` -/
def P1102963713540524844.Spec : Prop :=
  ∀ n, P1102963713540524844.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P5115765972207023856

`A354874((2^∑{e}[n+1, #-1])%∏{e}[n+1, 2*(-1)^#])`
-/

namespace A359475.P5115765972207023856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))) (∏ p ∈ Nat.primeFactors (f2 n), 2 * (-1) ^ Nat.factorization (f2 n) p)).toNat

end

end A359475.P5115765972207023856

namespace A359475

/-- `A354874((2^∑{e}[n+1, #-1])%∏{e}[n+1, 2*(-1)^#])` -/
def P5115765972207023856.Spec : Prop :=
  ∀ n, P5115765972207023856.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P9733014921427575597

`A267848(n)*A359474(n+1)`
-/

namespace A359475.P9733014921427575597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267848 n * A359474 (n + 1)

end

end A359475.P9733014921427575597

namespace A359475

/-- `A267848(n)*A359474(n+1)` -/
def P9733014921427575597.Spec : Prop :=
  ∀ n, P9733014921427575597.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P9790246002408063546

`A267866(n)*A359474(n+1)`
-/

namespace A359475.P9790246002408063546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 n * A359474 (n + 1)

end

end A359475.P9790246002408063546

namespace A359475

/-- `A267866(n)*A359474(n+1)` -/
def P9790246002408063546.Spec : Prop :=
  ∀ n, P9790246002408063546.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P10723289944508202194

`val(A000032(abs(A326814(n+1))), 6)`
-/

namespace A359475.P10723289944508202194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000032 |A326814 (n + 1)|.toNat).toNat 6

end

end A359475.P10723289944508202194

namespace A359475

/-- `val(A000032(abs(A326814(n+1))), 6)` -/
def P10723289944508202194.Spec : Prop :=
  ∀ n, (P10723289944508202194.a n : ℤ) = A359475 (n + 1)

end A359475

/-! ## A359475.P10582041177200952297

`A230595(A230595(n+1)+A212173(n+1))`
-/

namespace A359475.P10582041177200952297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230595 (A230595 (n + 1) + A212173 (n + 1)).toNat

end

end A359475.P10582041177200952297

namespace A359475

/-- `A230595(A230595(n+1)+A212173(n+1))` -/
def P10582041177200952297.Spec : Prop :=
  ∀ n, P10582041177200952297.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P10343351290776448857

`val(A181819(n+1), A181788(A181819(n+1)))`
-/

namespace A359475.P10343351290776448857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181819 (n + 1)).toNat (A181788 (A181819 (n + 1)).toNat).toNat

end

end A359475.P10343351290776448857

namespace A359475

/-- `val(A181819(n+1), A181788(A181819(n+1)))` -/
def P10343351290776448857.Spec : Prop :=
  ∀ n, (P10343351290776448857.a n : ℤ) = A359475 (n + 1)

end A359475

/-! ## A359475.P7423270720837845702

`val(A343443(n+1), A093084(A292589(n+1)))`
-/

namespace A359475.P7423270720837845702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A343443 (n + 1)).toNat (A093084 (A292589 (n + 1)).toNat).toNat

end

end A359475.P7423270720837845702

namespace A359475

/-- `val(A343443(n+1), A093084(A292589(n+1)))` -/
def P7423270720837845702.Spec : Prop :=
  ∀ n, (P7423270720837845702.a n : ℤ) = A359475 (n + 1)

end A359475

/-! ## A359475.P18051800558854588860

`A089026(∏{p}[n+1, #])%A089026(A003557(n+1))`
-/

namespace A359475.P18051800558854588860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089026 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A089026 (A003557 (n + 1)).toNat)

end

end A359475.P18051800558854588860

namespace A359475

/-- `A089026(∏{p}[n+1, #])%A089026(A003557(n+1))` -/
def P18051800558854588860.Spec : Prop :=
  ∀ n, P18051800558854588860.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P16420914112594938857

`val(A240219(∑{e}[n+1, #]!/∏{e}[n+1, #!]), 3)`
-/

namespace A359475.P16420914112594938857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A240219 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat).toNat 3

end

end A359475.P16420914112594938857

namespace A359475

/-- `val(A240219(∑{e}[n+1, #]!/∏{e}[n+1, #!]), 3)` -/
def P16420914112594938857.Spec : Prop :=
  ∀ n, (P16420914112594938857.a n : ℤ) = A359475 (n + 1)

end A359475

/-! ## A359475.P11378514185293001410

`A354874(2^∑{e}[n+1, #-1]^ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A359475.P11378514185293001410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (SequenceMachineLib.roundAway (((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ)) ^ (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℤ))).toNat

end

end A359475.P11378514185293001410

namespace A359475

/-- `A354874(2^∑{e}[n+1, #-1]^ceil((n+1)/∏{p}[n+1, (n+1)/#]))` -/
def P11378514185293001410.Spec : Prop :=
  ∀ n, P11378514185293001410.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P4002936658703507028

`A010059(A050356(n+1))`
-/

namespace A359475.P4002936658703507028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A050356 (n + 1)).toNat

end

end A359475.P4002936658703507028

namespace A359475

/-- `A010059(A050356(n+1))` -/
def P4002936658703507028.Spec : Prop :=
  ∀ n, P4002936658703507028.a n = A359475 (n + 1)

end A359475

/-! ## A359475.P13702055534648399339

`val(A058055(A318812(n+1)), 8)`
-/

namespace A359475.P13702055534648399339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A058055 (A318812 (n + 1)).toNat).toNat 8

end

end A359475.P13702055534648399339

namespace A359475

/-- `val(A058055(A318812(n+1)), 8)` -/
def P13702055534648399339.Spec : Prop :=
  ∀ n, (P13702055534648399339.a n : ℤ) = A359475 (n + 1)

end A359475

/-!
# A359476: The sequence {-a(n)}_{n>=1} gives all negative integers that are properly represented by each primitive binary quadratic forms of discriminant 28 that is properly equivalent to the reduced principal form [1, 4, -3].

The programs for A359476, there is no canonical definition to state claims against.
-/

/-! ## A359476.P2254945330842524845

`filter[A262932(n+1), A038189(#)]`
-/

namespace A359476.P2254945330842524845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A359476.P2254945330842524845

/-! ## A359476.P16804766360398572599

`filter[A262932(n+1), A089013(#)]`
-/

namespace A359476.P16804766360398572599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A359476.P16804766360398572599

/-! ## A359476.P16679096560556742382

`∩[A047514(n+1), A262932(n+1)]`
-/

namespace A359476.P16679096560556742382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359476.P16679096560556742382

/-! ## A359476.P16517542673156673707

`∩[A047515(n+1), A262932(n+1)]`
-/

namespace A359476.P16517542673156673707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359476.P16517542673156673707

/-! ## A359476.P13065631666040111088

`∩[A047556(n+1), A262932(n+1)]`
-/

namespace A359476.P13065631666040111088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359476.P13065631666040111088

/-! ## A359476.P5785339537768028955

`∩[A047557(n+1), A262932(n+1)]`
-/

namespace A359476.P5785339537768028955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359476.P5785339537768028955

/-! ## A359476.P302641808518786396

`∩[A091067(n+1), A262932(n+1)]`
-/

namespace A359476.P302641808518786396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359476.P302641808518786396

/-! ## A359476.P3324626731870575761

`∩[A047613(n+1)+2, A262932(n+1)]`
-/

namespace A359476.P3324626731870575761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047613 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359476.P3324626731870575761

/-! ## A359476.P16273848114997025848

`∩[A047620(n+1)-2, A262932(n+1)]`
-/

namespace A359476.P16273848114997025848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047620 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359476.P16273848114997025848

/-!
# A359478: a(1) = 1; a(n) = -Sum_{k=2..n} k * a(floor(n/k)).

The programs for A359478, the canonical program `A359478.P9305944363533904150` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359478 has offset 1).

The definition of A359478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359478.P9305944363533904150

`∑[A359484(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A359478

/-- `∑[A359484(n+1)]` -/
def P9305944363533904150.Spec : Prop :=
  ∀ n, P9305944363533904150.a n = A359478 (n + 1)

theorem P9305944363533904150.correct : P9305944363533904150.Spec := by
  intro n
  simp only [A359478, Nat.add_sub_cancel]

end A359478

/-! ## A359478.P6086717963579358562

`∑[A000265(n+1)*A361019(n+1)]`
-/

namespace A359478.P6086717963579358562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A361019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359478.P6086717963579358562

namespace A359478

/-- `∑[A000265(n+1)*A361019(n+1)]` -/
def P6086717963579358562.Spec : Prop :=
  ∀ n, P6086717963579358562.a n = A359478 (n + 1)

end A359478

/-! ## A359478.P10344572677407812965

`∑[A318661(n+1)*A361019(n+1)]`
-/

namespace A359478.P10344572677407812965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318661 (n + 1) * A361019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359478.P10344572677407812965

namespace A359478

/-- `∑[A318661(n+1)*A361019(n+1)]` -/
def P10344572677407812965.Spec : Prop :=
  ∀ n, P10344572677407812965.a n = A359478 (n + 1)

end A359478

/-! ## A359478.P6883738213533828345

`∑[∑{d}[n+1, A117212(#)*A361984((n+1)/#)]]`
-/

namespace A359478.P6883738213533828345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A117212 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359478.P6883738213533828345

namespace A359478

/-- `∑[∑{d}[n+1, A117212(#)*A361984((n+1)/#)]]` -/
def P6883738213533828345.Spec : Prop :=
  ∀ n, P6883738213533828345.a n = A359478 (n + 1)

end A359478

/-!
# A359479: a(1) = 1; a(n) = Sum_{k=2..n} (-1)^k * k * a(floor(n/k)).

The programs for A359479, the canonical program `A359479.P2526974503153798656` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359479 has offset 1).

The definition of A359479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359479.P3984490405550696526

`∑[A361985(n+1)]`
-/

namespace A359479.P3984490405550696526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359479.P3984490405550696526

namespace A359479

/-- `∑[A361985(n+1)]` -/
def P3984490405550696526.Spec : Prop :=
  ∀ n, P3984490405550696526.a n = A359479 (n + 1)

end A359479

/-! ## A359479.P2526974503153798656

`∑[∑{d}[n+1, A059841(#-1)*A327268((n+1)/#)]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359479

/-- `∑[∑{d}[n+1, A059841(#-1)*A327268((n+1)/#)]]` -/
def P2526974503153798656.Spec : Prop :=
  ∀ n, P2526974503153798656.a n = A359479 (n + 1)

theorem P2526974503153798656.correct : P2526974503153798656.Spec := by
  intro n
  simp only [A359479, Nat.add_sub_cancel]

end A359479

/-!
# A359481: Irregular triangle read by rows in which T(n,k) is one half of the number of overpartitions of n having k distinct parts, n>=1, k>=1.

The programs for A359481, there is no canonical definition to state claims against.
-/

/-! ## A359481.P5163803048456855267

`1/2*A235790(n+1)`
-/

namespace A359481.P5163803048456855267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A235790 (n + 1) : ℚ)

end

end A359481.P5163803048456855267

/-! ## A359481.P8746147562204024886

`A235790(n+1)/2`
-/

namespace A359481.P8746147562204024886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235790 (n + 1) : ℚ) / 2

end

end A359481.P8746147562204024886

/-! ## A359481.P10067637011989029087

`A001281(A235790(n+1))`
-/

namespace A359481.P10067637011989029087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A235790 (n + 1)).toNat

end

end A359481.P10067637011989029087

/-! ## A359481.P8104521356877268204

`A004526(A235790(n+1)+1)`
-/

namespace A359481.P8104521356877268204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A235790 (n + 1) + 1).toNat

end

end A359481.P8104521356877268204

/-! ## A359481.P3683587279074153034

`A028242(A235790(n+1)+1)`
-/

namespace A359481.P3683587279074153034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A235790 (n + 1) + 1).toNat

end

end A359481.P3683587279074153034

/-! ## A359481.P17368062235421855723

`A101279(A235790(n+1)+1)`
-/

namespace A359481.P17368062235421855723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A235790 (n + 1) + 1).toNat

end

end A359481.P17368062235421855723

/-! ## A359481.P1315646104966275016

`A226107(A235790(n+1)+1)`
-/

namespace A359481.P1315646104966275016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 (A235790 (n + 1) + 1).toNat

end

end A359481.P1315646104966275016

/-! ## A359481.P11545392160533908353

`A001057(A235790(n+1)-1)`
-/

namespace A359481.P11545392160533908353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A235790 (n + 1) - 1).toNat

end

end A359481.P11545392160533908353

/-! ## A359481.P954189497336736049

`A008619(A235790(n+1)-1)`
-/

namespace A359481.P954189497336736049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A235790 (n + 1) - 1).toNat

end

end A359481.P954189497336736049

/-! ## A359481.P18217744586314123087

`A065033(A235790(n+1)-1)`
-/

namespace A359481.P18217744586314123087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A235790 (n + 1) - 1).toNat

end

end A359481.P18217744586314123087

/-!
# A359483: For n > 2, a(n) is the least prime p > a(n-1) such that a(n-1) + p is divisible by a(n-2); a(1) = 2, a(2) = 3.

The programs for A359483, there is no canonical definition to state claims against.
-/

/-! ## A359483.P15093860161446397517

`∩[A267307(n+1), A279956(n+1)]`
-/

namespace A359483.P15093860161446397517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359483.P15093860161446397517

/-! ## A359483.P9550252000533026811

`p?[A147141(n+1)+n]`
-/

namespace A359483.P9550252000533026811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147141 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359483.P9550252000533026811

/-! ## A359483.P5555159448160276695

`A000040(∑[2^a(n-1)])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A359483.P5555159448160276695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  2 ^ f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359483.P5555159448160276695

/-!
# A359484: a(n) = n * mu(n) if n is odd, otherwise n * mu(n) - (n/2) * mu(n/2).

The programs for A359484, the canonical program `A359484.P7918762155448628384` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359484 has offset 1).

The definition of A359484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359484.P9717310501662887045

`A000265(n+1)*A361019(n+1)`
-/

namespace A359484.P9717310501662887045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A361019 (n + 1)

end

end A359484.P9717310501662887045

namespace A359484

/-- `A000265(n+1)*A361019(n+1)` -/
def P9717310501662887045.Spec : Prop :=
  ∀ n, P9717310501662887045.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P16410979139152136980

`A060819(n+1)*A361019(n+1)`
-/

namespace A359484.P16410979139152136980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) * A361019 (n + 1)

end

end A359484.P16410979139152136980

namespace A359484

/-- `A060819(n+1)*A361019(n+1)` -/
def P16410979139152136980.Spec : Prop :=
  ∀ n, P16410979139152136980.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P6835015782237541575

`A204455(n+1)*A361019(n+1)`
-/

namespace A359484.P6835015782237541575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1) * A361019 (n + 1)

end

end A359484.P6835015782237541575

namespace A359484

/-- `A204455(n+1)*A361019(n+1)` -/
def P6835015782237541575.Spec : Prop :=
  ∀ n, P6835015782237541575.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P2566774436540966997

`A318653(n+1)*A361019(n+1)`
-/

namespace A359484.P2566774436540966997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318653 (n + 1) * A361019 (n + 1)

end

end A359484.P2566774436540966997

namespace A359484

/-- `A318653(n+1)*A361019(n+1)` -/
def P2566774436540966997.Spec : Prop :=
  ∀ n, P2566774436540966997.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P17612302699743088268

`A318661(n+1)*A361019(n+1)`
-/

namespace A359484.P17612302699743088268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318661 (n + 1) * A361019 (n + 1)

end

end A359484.P17612302699743088268

namespace A359484

/-- `A318661(n+1)*A361019(n+1)` -/
def P17612302699743088268.Spec : Prop :=
  ∀ n, P17612302699743088268.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P7371786988979773281

`A324894(n+1)*A361019(n+1)`
-/

namespace A359484.P7371786988979773281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324894 (n + 1) * A361019 (n + 1)

end

end A359484.P7371786988979773281

namespace A359484

/-- `A324894(n+1)*A361019(n+1)` -/
def P7371786988979773281.Spec : Prop :=
  ∀ n, P7371786988979773281.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P10020555243313884774

`A336652(n+1)*A361019(n+1)`
-/

namespace A359484.P10020555243313884774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336652 (n + 1) * A361019 (n + 1)

end

end A359484.P10020555243313884774

namespace A359484

/-- `A336652(n+1)*A361019(n+1)` -/
def P10020555243313884774.Spec : Prop :=
  ∀ n, P10020555243313884774.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P14036064660147789880

`A341042(n+1)*A361019(n+1)`
-/

namespace A359484.P14036064660147789880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341042 (n + 1) * A361019 (n + 1)

end

end A359484.P14036064660147789880

namespace A359484

/-- `A341042(n+1)*A361019(n+1)` -/
def P14036064660147789880.Spec : Prop :=
  ∀ n, P14036064660147789880.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P10691509024754237639

`∑{d}[n+1, A023900(#)*A092673((n+1)/#)]`
-/

namespace A359484.P10691509024754237639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P10691509024754237639

namespace A359484

/-- `∑{d}[n+1, A023900(#)*A092673((n+1)/#)]` -/
def P10691509024754237639.Spec : Prop :=
  ∀ n, P10691509024754237639.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P16010042408427293761

`∑{d}[n+1, A002131(#)*A327960((n+1)/#)]`
-/

namespace A359484.P16010042408427293761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P16010042408427293761

namespace A359484

/-- `∑{d}[n+1, A002131(#)*A327960((n+1)/#)]` -/
def P16010042408427293761.Spec : Prop :=
  ∀ n, P16010042408427293761.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P1278884172760777984

`∑{d}[n+1, A000056(#)*A359531((n+1)/#)]`
-/

namespace A359484.P1278884172760777984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A359531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P1278884172760777984

namespace A359484

/-- `∑{d}[n+1, A000056(#)*A359531((n+1)/#)]` -/
def P1278884172760777984.Spec : Prop :=
  ∀ n, P1278884172760777984.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P8339568682478546770

`∑{d}[n+1, A002618(#)*A359485((n+1)/#)]`
-/

namespace A359484.P8339568682478546770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A359485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P8339568682478546770

namespace A359484

/-- `∑{d}[n+1, A002618(#)*A359485((n+1)/#)]` -/
def P8339568682478546770.Spec : Prop :=
  ∀ n, P8339568682478546770.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P1670012939201663118

`∑{d}[n+1, A076577(#)*A328254((n+1)/#)]`
-/

namespace A359484.P1670012939201663118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076577 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P1670012939201663118

namespace A359484

/-- `∑{d}[n+1, A076577(#)*A328254((n+1)/#)]` -/
def P1670012939201663118.Spec : Prop :=
  ∀ n, P1670012939201663118.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P1128237696525367883

`∑{d}[n+1, A101035(#)*A326305((n+1)/#)]`
-/

namespace A359484.P1128237696525367883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P1128237696525367883

namespace A359484

/-- `∑{d}[n+1, A101035(#)*A326305((n+1)/#)]` -/
def P1128237696525367883.Spec : Prop :=
  ∀ n, P1128237696525367883.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P11102524324808264993

`∑{d}[n+1, A117212(#)*A361984((n+1)/#)]`
-/

namespace A359484.P11102524324808264993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P11102524324808264993

namespace A359484

/-- `∑{d}[n+1, A117212(#)*A361984((n+1)/#)]` -/
def P11102524324808264993.Spec : Prop :=
  ∀ n, P11102524324808264993.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P7918762155448628384

`∑{d}[n+1, A230074(#)*A327278((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A359484

/-- `∑{d}[n+1, A230074(#)*A327278((n+1)/#)]` -/
def P7918762155448628384.Spec : Prop :=
  ∀ n, P7918762155448628384.a n = A359484 (n + 1)

theorem P7918762155448628384.correct : P7918762155448628384.Spec := by
  intro n
  simp only [A359484, Nat.add_sub_cancel]

end A359484

/-! ## A359484.P14642945177522294951

`∑{d}[n+1, A328372(#)*A347090((n+1)/#)]`
-/

namespace A359484.P14642945177522294951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328372 d * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P14642945177522294951

namespace A359484

/-- `∑{d}[n+1, A328372(#)*A347090((n+1)/#)]` -/
def P14642945177522294951.Spec : Prop :=
  ∀ n, P14642945177522294951.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P6315806932198523916

`∑{d}[n+1, A349346(#)*A349431((n+1)/#)]`
-/

namespace A359484.P6315806932198523916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349346 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P6315806932198523916

namespace A359484

/-- `∑{d}[n+1, A349346(#)*A349431((n+1)/#)]` -/
def P6315806932198523916.Spec : Prop :=
  ∀ n, P6315806932198523916.a n = A359484 (n + 1)

end A359484

/-! ## A359484.P5401541219252253716

`∑{d}[n+1, A345182(#)*A378217((n+1)/#)]`
-/

namespace A359484.P5401541219252253716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345182 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359484.P5401541219252253716

namespace A359484

/-- `∑{d}[n+1, A345182(#)*A378217((n+1)/#)]` -/
def P5401541219252253716.Spec : Prop :=
  ∀ n, P5401541219252253716.a n = A359484 (n + 1)

end A359484

/-!
# A359485: a(1) = 1, a(2) = -5; a(n) = -n^2 * Sum_{d|n, d < n} a(d) / d^2.

The programs for A359485, the canonical program `A359485.P1680214592273319641` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359485 has offset 1).

The definition of A359485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359485.P1773425059937487478

`∑{d}[n+1, A046970(#)*A092673((n+1)/#)]`
-/

namespace A359485.P1773425059937487478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359485.P1773425059937487478

namespace A359485

/-- `∑{d}[n+1, A046970(#)*A092673((n+1)/#)]` -/
def P1773425059937487478.Spec : Prop :=
  ∀ n, P1773425059937487478.a n = A359485 (n + 1)

end A359485

/-! ## A359485.P1680214592273319641

`∑{d}[n+1, A002131(#)*A328254((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A359485

/-- `∑{d}[n+1, A002131(#)*A328254((n+1)/#)]` -/
def P1680214592273319641.Spec : Prop :=
  ∀ n, P1680214592273319641.a n = A359485 (n + 1)

theorem P1680214592273319641.correct : P1680214592273319641.Spec := by
  intro n
  simp only [A359485, Nat.add_sub_cancel]

end A359485

/-! ## A359485.P1199240533076902922

`∑{d}[n+1, A053191(#)*A359531((n+1)/#)]`
-/

namespace A359485.P1199240533076902922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A359531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359485.P1199240533076902922

namespace A359485

/-- `∑{d}[n+1, A053191(#)*A359531((n+1)/#)]` -/
def P1199240533076902922.Spec : Prop :=
  ∀ n, P1199240533076902922.a n = A359485 (n + 1)

end A359485

/-! ## A359485.P8238073035328801299

`∑{d}[n+1, A326305(#)*A351654((n+1)/#)]`
-/

namespace A359485.P8238073035328801299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359485.P8238073035328801299

namespace A359485

/-- `∑{d}[n+1, A326305(#)*A351654((n+1)/#)]` -/
def P8238073035328801299.Spec : Prop :=
  ∀ n, P8238073035328801299.a n = A359485 (n + 1)

end A359485

/-! ## A359485.P12794838865255687498

`∑{d}[n+1, A053822(#)*A059841((n+1)/#-1)]`
-/

namespace A359485.P12794838865255687498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A359485.P12794838865255687498

namespace A359485

/-- `∑{d}[n+1, A053822(#)*A059841((n+1)/#-1)]` -/
def P12794838865255687498.Spec : Prop :=
  ∀ n, P12794838865255687498.a n = A359485 (n + 1)

end A359485

/-!
# A359486: Indices of primes in A087712.

The programs for A359486, there is no canonical definition to state claims against.
-/

/-! ## A359486.P14405064746906802667

`eq[1, ∑{e}[A087712(n+1), #²]]+1`
-/

namespace A359486.P14405064746906802667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359486.P14405064746906802667

/-! ## A359486.P13564542978685479456

`lt[A360248(n+2), A360255(A360284(n+4))]`
-/

namespace A359486.P13564542978685479456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360248 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360255 (A360284 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359486.P13564542978685479456

/-! ## A359486.P18115697289301195357

`eq[A178142(A325183(2*(n+2))), A264025(n+1)]`
-/

namespace A359486.P18115697289301195357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178142 (A325183 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359486.P18115697289301195357

/-!
# A359488: Run lengths of A359487.

The programs for A359488, there is no canonical definition to state claims against.
-/

/-! ## A359488.P3760733472695615986

`Δ[record[A006530(A100317(n+1))]]`
-/

namespace A359488.P3760733472695615986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100317 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359488.P3760733472695615986

/-! ## A359488.P2720792507654213314

`Δ[record[A174257(A164977(n+1))]]`
-/

namespace A359488.P2720792507654213314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A164977 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359488.P2720792507654213314

/-! ## A359488.P8779576038698739622

`Δ[record[A006530(A333197(n+1))]]`
-/

namespace A359488.P8779576038698739622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A333197 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359488.P8779576038698739622

/-! ## A359488.P11877253931381994141

`Δ[∪[A120628(n+1), A362863(n+1)]]`
-/

namespace A359488.P11877253931381994141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120628 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362863 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A359488.P11877253931381994141

/-! ## A359488.P12782867009705937584

`Δ[record[A006530(A023023(n+3))]]`
-/

namespace A359488.P12782867009705937584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023023 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359488.P12782867009705937584

/-!
# A359489: Expansion of 1/sqrt(1 - 4*x/(1-x)^3).

The programs for A359489, there is no canonical definition to state claims against.
-/

/-! ## A359489.P2617917815550943355

`A070952(A070952(6*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A359489.P2617917815550943355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A070952 (A070952 (6 * a (n - 1)).toNat).toNat

end

end A359489.P2617917815550943355

/-!
# A359491: Numbers k with the property that the set of decimal digits of k matches the set of first digits of the prime factors of k.

The programs for A359491, there is no canonical definition to state claims against.
-/

/-! ## A359491.P11067794907359618503

`lcm(Δ[n²], p?[A321728(n)])`
-/

namespace A359491.P11067794907359618503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A359491.P11067794907359618503

/-!
# A359493: Numbers k such that the bottom entry in the ratio d(i)/d(i+1) triangle of the elements in the divisors of n, where d(1) < d(2) < ... < d(q) denote the divisors of k, is equal to 1.

The programs for A359493, there is no canonical definition to state claims against.
-/

/-! ## A359493.P12152011063394128141

`∪[(n+1)², A025475(n+1)]`
-/

namespace A359493.P12152011063394128141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359493.P12152011063394128141

/-! ## A359493.P3896872718910075190

`∪[(n+1)², A056824(n+1)]`
-/

namespace A359493.P3896872718910075190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359493.P3896872718910075190

/-! ## A359493.P5650416642797111073

`∪[A100391(n+1), (n+1)²]`
-/

namespace A359493.P5650416642797111073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A359493.P5650416642797111073

/-! ## A359493.P2754024257807842776

`∪[A134612(n+1), (n+1)²]`
-/

namespace A359493.P2754024257807842776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A359493.P2754024257807842776

/-! ## A359493.P409589858334829824

`∪[(n+1)², A246067(n+1)]`
-/

namespace A359493.P409589858334829824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359493.P409589858334829824

/-! ## A359493.P11628704620804218382

`∪[(n+1)², A246549(n+1)]`
-/

namespace A359493.P11628704620804218382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359493.P11628704620804218382

/-! ## A359493.P1951630462493607181

`∪[(n+1)², ∑[A053707(n+1)]+1]`
-/

namespace A359493.P1951630462493607181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359493.P1951630462493607181

/-! ## A359493.P10680982026868126729

`filter[A166401(n+1), A075802(#)]`
-/

namespace A359493.P10680982026868126729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A359493.P10680982026868126729

/-! ## A359493.P3843579485235159860

`filter[A180734(n+1), A075802(#)]`
-/

namespace A359493.P3843579485235159860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A359493.P3843579485235159860

/-!
# A359494: Zeroless numbers k which can be written as a product of the powers whose base is a digit of k and whose exponent is a nonnegative integer.

The programs for A359494, there is no canonical definition to state claims against.
-/

/-! ## A359494.P8550598338525872790

`filter[A100753(n+1), A168046(#)]`
-/

namespace A359494.P8550598338525872790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A359494.P8550598338525872790

/-! ## A359494.P9738502123431699171

`A100753(A347520(n+1))`
-/

namespace A359494.P9738502123431699171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100753 (A347520 (n + 1)).toNat

end

end A359494.P9738502123431699171

/-!
# A359495: Sum of positions of 1's in binary expansion minus sum of positions of 1's in reversed binary expansion, where positions in a sequence are read starting with 1 from the left.

The programs for A359495, the canonical program `A359495.P14356946249672535810` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359495 has offset 0).

The definition of A359495 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A230877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359495.P14356946249672535810

`A230877(n)-A029931(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359495

/-- `A230877(n)-A029931(n)` -/
def P14356946249672535810.Spec : Prop :=
  ∀ n, P14356946249672535810.a n = A359495 n

theorem P14356946249672535810.correct : P14356946249672535810.Spec := by
  intro n
  simp only [A359495]

end A359495

/-! ## A359495.P2281367393482416057

`A281392(n)-A161511(n)`
-/

namespace A359495.P2281367393482416057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n - A161511 n

end

end A359495.P2281367393482416057

namespace A359495

/-- `A281392(n)-A161511(n)` -/
def P2281367393482416057.Spec : Prop :=
  ∀ n, P2281367393482416057.a n = A359495 n

end A359495

/-! ## A359495.P9504905815866652159

`A055941(A035327(n))-A055941(n)`
-/

namespace A359495.P9504905815866652159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A035327 n).toNat - A055941 n

end

end A359495.P9504905815866652159

namespace A359495

/-- `A055941(A035327(n))-A055941(n)` -/
def P9504905815866652159.Spec : Prop :=
  ∀ n, P9504905815866652159.a n = A359495 n

end A359495

/-! ## A359495.P9013584970714742367

`A029931(A030101(n))-A029931(n)`
-/

namespace A359495.P9013584970714742367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A030101 n).toNat - A029931 n

end

end A359495.P9013584970714742367

namespace A359495

/-- `A029931(A030101(n))-A029931(n)` -/
def P9013584970714742367.Spec : Prop :=
  ∀ n, P9013584970714742367.a n = A359495 n

end A359495

/-! ## A359495.P12846793711582995553

`A055941(A030101(n))-A055941(n)`
-/

namespace A359495.P12846793711582995553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A030101 n).toNat - A055941 n

end

end A359495.P12846793711582995553

namespace A359495

/-- `A055941(A030101(n))-A055941(n)` -/
def P12846793711582995553.Spec : Prop :=
  ∀ n, P12846793711582995553.a n = A359495 n

end A359495

/-! ## A359495.P14798573084668977166

`A073642(A030101(n))-A073642(n)`
-/

namespace A359495.P14798573084668977166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A030101 n).toNat - A073642 n

end

end A359495.P14798573084668977166

namespace A359495

/-- `A073642(A030101(n))-A073642(n)` -/
def P14798573084668977166.Spec : Prop :=
  ∀ n, P14798573084668977166.a n = A359495 n

end A359495

/-! ## A359495.P915214052048695007

`A161511(A030101(n))-A161511(n)`
-/

namespace A359495.P915214052048695007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A030101 n).toNat - A161511 n

end

end A359495.P915214052048695007

namespace A359495

/-- `A161511(A030101(n))-A161511(n)` -/
def P915214052048695007.Spec : Prop :=
  ∀ n, P915214052048695007.a n = A359495 n

end A359495

/-! ## A359495.P1662902401151489119

`A231204(n)-A073642(n)`
-/

namespace A359495.P1662902401151489119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n - A073642 n

end

end A359495.P1662902401151489119

namespace A359495

/-- `A231204(n)-A073642(n)` -/
def P1662902401151489119.Spec : Prop :=
  ∀ n, P1662902401151489119.a n = A359495 n

end A359495

/-! ## A359495.P10831267688597734348

`(A326732(n)-A326730(n))/2`
-/

namespace A359495.P10831267688597734348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326732 n - A326730 n : ℚ) / 2

end

end A359495.P10831267688597734348

namespace A359495

/-- `(A326732(n)-A326730(n))/2` -/
def P10831267688597734348.Spec : Prop :=
  ∀ n, P10831267688597734348.a n = (A359495 n : ℚ)

end A359495

/-! ## A359495.P13149447341828121448

`A000120(n)+A231204(n)-A029931(n)`
-/

namespace A359495.P13149447341828121448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A231204 n - A029931 n)

end

end A359495.P13149447341828121448

namespace A359495

/-- `A000120(n)+A231204(n)-A029931(n)` -/
def P13149447341828121448.Spec : Prop :=
  ∀ n, P13149447341828121448.a n = A359495 n

end A359495

/-! ## A359495.P1588120431685116435

`A230877(n)-A073642(2*n)`
-/

namespace A359495.P1588120431685116435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n - A073642 (2 * n)

end

end A359495.P1588120431685116435

namespace A359495

/-- `A230877(n)-A073642(2*n)` -/
def P1588120431685116435.Spec : Prop :=
  ∀ n, P1588120431685116435.a n = A359495 n

end A359495

/-! ## A359495.P3344433688931614878

`A281392(n)-A055941(2*n)`
-/

namespace A359495.P3344433688931614878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n - A055941 (2 * n)

end

end A359495.P3344433688931614878

namespace A359495

/-- `A281392(n)-A055941(2*n)` -/
def P3344433688931614878.Spec : Prop :=
  ∀ n, P3344433688931614878.a n = A359495 n

end A359495

/-! ## A359495.P6151619743093709933

`A071295(2*n)-A326730(n)`
-/

namespace A359495.P6151619743093709933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071295 (2 * n) - A326730 n

end

end A359495.P6151619743093709933

namespace A359495

/-- `A071295(2*n)-A326730(n)` -/
def P6151619743093709933.Spec : Prop :=
  ∀ n, P6151619743093709933.a n = A359495 n

end A359495

/-! ## A359495.P10224312032291538680

`A326732(n)-A071295(2*n)`
-/

namespace A359495.P10224312032291538680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326732 n - A071295 (2 * n)

end

end A359495.P10224312032291538680

namespace A359495

/-- `A326732(n)-A071295(2*n)` -/
def P10224312032291538680.Spec : Prop :=
  ∀ n, P10224312032291538680.a n = A359495 n

end A359495

/-! ## A359495.P11210501097021602978

`A055941(A010078(2*n+1))-A055941(2*n)`
-/

namespace A359495.P11210501097021602978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A010078 (2 * n + 1)).toNat - A055941 (2 * n)

end

end A359495.P11210501097021602978

namespace A359495

/-- `A055941(A010078(2*n+1))-A055941(2*n)` -/
def P11210501097021602978.Spec : Prop :=
  ∀ n, P11210501097021602978.a n = A359495 n

end A359495

/-!
# A359496: Nonnegative integers whose sum of positions of 1's in their binary expansion is less than the sum of positions of 1's in their reversed binary expansion, where positions in a sequence are read starting with 1 from the left.

The programs for A359496, there is no canonical definition to state claims against.
-/

/-! ## A359496.P7118211561084090671

`lt[A359495(n), 0]`
-/

namespace A359496.P7118211561084090671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359496.P7118211561084090671

/-! ## A359496.P3224491472036247309

`lt[A325401(n), (lcm(2, n)+n)/3]`
-/

namespace A359496.P3224491472036247309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n + n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A359496.P3224491472036247309

/-! ## A359496.P9023757639168685186

`lt[A230877(n), A029931(n)]`
-/

namespace A359496.P9023757639168685186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359496.P9023757639168685186

/-! ## A359496.P10215206962449193993

`lt[A231204(n), A073642(n)]`
-/

namespace A359496.P10215206962449193993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359496.P10215206962449193993

/-! ## A359496.P14607894481478171705

`lt[A319650(n), A233931(n)]`
-/

namespace A359496.P14607894481478171705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359496.P14607894481478171705

/-! ## A359496.P11054083216324972044

`lt[A057889(n), A055945(2*n)]`
-/

namespace A359496.P11054083216324972044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359496.P11054083216324972044

/-! ## A359496.P318836463053232492

`lt[A230877(n), A073642(2*n)]`
-/

namespace A359496.P318836463053232492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359496.P318836463053232492

/-! ## A359496.P473339174270813799

`lt[A057889(n), A055945(n)+n]`
-/

namespace A359496.P473339174270813799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359496.P473339174270813799

/-! ## A359496.P12396516482790666056

`lt[A019565(A030101(n)), A019565(n)]`
-/

namespace A359496.P12396516482790666056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A030101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359496.P12396516482790666056

/-! ## A359496.P4988277493749919510

`lt[A029930(A030101(n)), A029930(n)]`
-/

namespace A359496.P4988277493749919510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 (A030101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359496.P4988277493749919510

/-!
# A359497: Greatest positive integer whose weakly increasing prime indices have weighted sum (A304818) equal to n.

The programs for A359497, there is no canonical definition to state claims against.
-/

/-! ## A359497.P3642252018059789430

`A160382(A268815(n))+A008578(n+1)`
-/

namespace A359497.P3642252018059789430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A268815 n).toNat + A008578 (n + 1)

end

end A359497.P3642252018059789430

/-! ## A359497.P16447640144547882822

`A372059(n+1)+A137579(A000045(n))`
-/

namespace A359497.P16447640144547882822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1) + A137579 (A000045 n).toNat

end

end A359497.P16447640144547882822

/-! ## A359497.P9996401272712424150

`A244606(A316292(n))+A008578(n+1)`
-/

namespace A359497.P9996401272712424150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (A316292 n).toNat + A008578 (n + 1)

end

end A359497.P9996401272712424150

/-! ## A359497.P16523961774415114011

`eq[A074206(n), A335211(A230421(n+1))]`
-/

namespace A359497.P16523961774415114011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335211 (A230421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359497.P16523961774415114011

/-! ## A359497.P11465263567130861834

`A003309(n+1)-A064287(A108951(n+1))`
-/

namespace A359497.P11465263567130861834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - A064287 (A108951 (n + 1)).toNat

end

end A359497.P11465263567130861834

/-!
# A359498: a(n) = ((2*n+1)^8 - 1)/32.

The programs for A359498, the canonical program `A359498.P209552481815961539` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359498 has offset 0).

The definition of A359498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359498.P4932180646683181801

`((2*n+1)^8-1)/32`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359498.P4932180646683181801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 8 : ℤ) - 1 : ℚ) / 32

end

end A359498.P4932180646683181801

namespace A359498

/-- `((2*n+1)^8-1)/32` -/
def P4932180646683181801.Spec : Prop :=
  ∀ n, P4932180646683181801.a n = (A359498 n : ℚ)

end A359498

/-! ## A359498.P209552481815961539

`A219086(n)*A175110(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359498

/-- `A219086(n)*A175110(n)` -/
def P209552481815961539.Spec : Prop :=
  ∀ n, P209552481815961539.a n = A359498 n

theorem P209552481815961539.correct : P209552481815961539.Spec := by
  intro n
  simp only [A359498]

end A359498

/-! ## A359498.P14813109499514182778

`A000217(n)*A001844(n)*A175110(n)`
-/

namespace A359498.P14813109499514182778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A001844 n * A175110 n

end

end A359498.P14813109499514182778

namespace A359498

/-- `A000217(n)*A001844(n)*A175110(n)` -/
def P14813109499514182778.Spec : Prop :=
  ∀ n, P14813109499514182778.a n = A359498 n

end A359498

/-! ## A359498.P14495884256760755875

`A171714(2*n)*A219086(n)`
-/

namespace A359498.P14495884256760755875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171714 (2 * n) * A219086 n

end

end A359498.P14495884256760755875

namespace A359498

/-- `A171714(2*n)*A219086(n)` -/
def P14495884256760755875.Spec : Prop :=
  ∀ n, P14495884256760755875.a n = A359498 n

end A359498

/-! ## A359498.P1062852787325220188

`A011863(2*n+1)*A175110(n)`
-/

namespace A359498.P1062852787325220188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * n + 1) * A175110 n

end

end A359498.P1062852787325220188

namespace A359498

/-- `A011863(2*n+1)*A175110(n)` -/
def P1062852787325220188.Spec : Prop :=
  ∀ n, P1062852787325220188.a n = A359498 n

end A359498

/-! ## A359498.P10345745925788863905

`A011863(2*n+1)*A171714(2*n)`
-/

namespace A359498.P10345745925788863905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * n + 1) * A171714 (2 * n)

end

end A359498.P10345745925788863905

namespace A359498

/-- `A011863(2*n+1)*A171714(2*n)` -/
def P10345745925788863905.Spec : Prop :=
  ∀ n, P10345745925788863905.a n = A359498 n

end A359498

/-!
# A359499: a(n) = ((2*n+1)^16 - 1)/64.

The programs for A359499, the canonical program `A359499.P4428695671887271465` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359499 has offset 0).

The definition of A359499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359499.P11850003348721600507

`((2*n+1)^16-1)/64`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359499.P11850003348721600507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 16 : ℤ) - 1 : ℚ) / 64

end

end A359499.P11850003348721600507

namespace A359499

/-- `((2*n+1)^16-1)/64` -/
def P11850003348721600507.Spec : Prop :=
  ∀ n, P11850003348721600507.a n = (A359499 n : ℚ)

end A359499

/-! ## A359499.P4428695671887271465

`A219086(n)*A175110(n)*A359844(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359499

/-- `A219086(n)*A175110(n)*A359844(n)` -/
def P4428695671887271465.Spec : Prop :=
  ∀ n, P4428695671887271465.a n = A359499 n

theorem P4428695671887271465.correct : P4428695671887271465.Spec := by
  intro n
  simp only [A359499]

end A359499

/-! ## A359499.P14054429626191763437

`A359498(n)*A359844(n)`
-/

namespace A359499.P14054429626191763437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359498 n * A359844 n

end

end A359499.P14054429626191763437

namespace A359499

/-- `A359498(n)*A359844(n)` -/
def P14054429626191763437.Spec : Prop :=
  ∀ n, P14054429626191763437.a n = A359499 n

end A359499

