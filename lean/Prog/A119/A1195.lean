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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
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
# A119500: Numbers n such that A114717(n) sets a new record.

The programs for A119500, there is no canonical definition to state claims against.
-/

/-! ## A119500.P9317687736068710694

`∪[A279930(n+1), A351694(n+1)]`
-/

namespace A119500.P9317687736068710694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119500.P9317687736068710694

/-! ## A119500.P11905577225794643645

`A097212(comp[A001196(n)-A293544(2*(n+1))])`
-/

namespace A119500.P11905577225794643645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n - A293544 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A119500.P11905577225794643645

/-! ## A119500.P15105200977638953568

`∩[A266228(n+1), A381240(n+1)]`
-/

namespace A119500.P15105200977638953568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119500.P15105200977638953568

/-! ## A119500.P8050557151574939641

`∩[A303703(n+1), A381240(n+1)]`
-/

namespace A119500.P8050557151574939641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119500.P8050557151574939641

/-! ## A119500.P1595034330282177601

`record[A046523(A309836(n+1))]`
-/

namespace A119500.P1595034330282177601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A309836 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119500.P1595034330282177601

/-!
# A119501: Number of isomorphism classes of 3-connected simple planar graphs (convex polytopes) where isomorphism does not allow reflection.

The programs for A119501, there is no canonical definition to state claims against.
-/

/-! ## A119501.P18228226206170915213

`A002264(A017898(∑[n])+n)`
-/

namespace A119501.P18228226206170915213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A017898 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A119501.P18228226206170915213

/-! ## A119501.P18288107279474003011

`A002375(A321732(n))-floor((n/2)²)`
-/

namespace A119501.P18288107279474003011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A321732 n).toNat - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A119501.P18288107279474003011

/-! ## A119501.P12505674595711918211

`A054895(A196720(n)+A001253(n+1))`
-/

namespace A119501.P12505674595711918211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (A196720 n + A001253 (n + 1)).toNat

end

end A119501.P12505674595711918211

/-! ## A119501.P16947599229072738683

`A329741(A210184(2*n+3))%A356704(n)`
-/

namespace A119501.P16947599229072738683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329741 (A210184 (2 * n + 3)).toNat) (A356704 n)

end

end A119501.P16947599229072738683

/-!
# A119502: Triangle read by rows, T(n,k) = (n-k)!, for n>=0 and 0<=k<=n.

The programs for A119502, the canonical program `A119502.P16886903027794226168` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119502 has offset 0).

The definition of A119502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119502.P4195364272970246458

`(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A119502.P4195364272970246458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A119502.P4195364272970246458

namespace A119502

/-- `(C(comp[∑[n]]-n, 2)-(n+1))!` -/
def P4195364272970246458.Spec : Prop :=
  ∀ n, (P4195364272970246458.a n : ℤ) = A119502 n

end A119502

/-! ## A119502.P9574254950593155016

`(C(comp[∑[n]]-n, 2)-1-n)!`
-/

namespace A119502.P9574254950593155016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - 1 - (n : ℤ)).toNat

end

end A119502.P9574254950593155016

namespace A119502

/-- `(C(comp[∑[n]]-n, 2)-1-n)!` -/
def P9574254950593155016.Spec : Prop :=
  ∀ n, (P9574254950593155016.a n : ℤ) = A119502 n

end A119502

/-! ## A119502.P17613314841221141107

`(lt[0, n-round(sqrt(n))²]%xor(n, -1))!`
-/

namespace A119502.P17613314841221141107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (Int.xor (n : ℤ) (-1))).toNat

end

end A119502.P17613314841221141107

namespace A119502

/-- `(lt[0, n-round(sqrt(n))²]%xor(n, -1))!` -/
def P17613314841221141107.Spec : Prop :=
  ∀ n, (P17613314841221141107.a n : ℤ) = A119502 n

end A119502

/-! ## A119502.P3373258067326390797

`floor((∑[2*n]%(comp[∑[n]]+1)+1)/2)!`
-/

namespace A119502.P3373258067326390797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 : ℕ) : ℚ) / 2⌋.toNat

end

end A119502.P3373258067326390797

namespace A119502

/-- `floor((∑[2*n]%(comp[∑[n]]+1)+1)/2)!` -/
def P3373258067326390797.Spec : Prop :=
  ∀ n, (P3373258067326390797.a n : ℤ) = A119502 n

end A119502

/-! ## A119502.P384656748993197729

`abs(∑[1-round(sqrt(2*(n+1)))*char[∑[n]]])!`
-/

namespace A119502.P384656748993197729
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A119502.P384656748993197729

namespace A119502

/-- `abs(∑[1-round(sqrt(2*(n+1)))*char[∑[n]]])!` -/
def P384656748993197729.Spec : Prop :=
  ∀ n, (P384656748993197729.a n : ℤ) = A119502 n

end A119502

/-! ## A119502.P16874108805176132375

`or(A025581(n)!, char[1])`
-/

namespace A119502.P16874108805176132375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.factorial (A025581 n).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A119502.P16874108805176132375

namespace A119502

/-- `or(A025581(n)!, char[1])` -/
def P16874108805176132375.Spec : Prop :=
  ∀ n, (P16874108805176132375.a n : ℤ) = A119502 n

end A119502

/-! ## A119502.P16886903027794226168

`A000142(A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119502

/-- `A000142(A025581(n))` -/
def P16886903027794226168.Spec : Prop :=
  ∀ n, P16886903027794226168.a n = A119502 n

theorem P16886903027794226168.correct : P16886903027794226168.Spec := by
  intro n
  simp only [A119502]

end A119502

/-! ## A119502.P4648187497595333780

`A081123(A099375(n))`
-/

namespace A119502.P4648187497595333780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A099375 n).toNat

end

end A119502.P4648187497595333780

namespace A119502

/-- `A081123(A099375(n))` -/
def P4648187497595333780.Spec : Prop :=
  ∀ n, P4648187497595333780.a n = A119502 n

end A119502

/-! ## A119502.P8269054385219882782

`A233543(A061579(n))`
-/

namespace A119502.P8269054385219882782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 (A061579 n).toNat

end

end A119502.P8269054385219882782

namespace A119502

/-- `A233543(A061579(n))` -/
def P8269054385219882782.Spec : Prop :=
  ∀ n, P8269054385219882782.a n = A119502 n

end A119502

/-! ## A119502.P314501207462856875

`A033295(A055461(n+1))`
-/

namespace A119502.P314501207462856875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033295 (A055461 (n + 1)).toNat

end

end A119502.P314501207462856875

namespace A119502

/-- `A033295(A055461(n+1))` -/
def P314501207462856875.Spec : Prop :=
  ∀ n, P314501207462856875.a n = A119502 n

end A119502

/-! ## A119502.P8728415046615775813

`A104150(A004736(n+1))`
-/

namespace A119502.P8728415046615775813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A004736 (n + 1)).toNat

end

end A119502.P8728415046615775813

namespace A119502

/-- `A104150(A004736(n+1))` -/
def P8728415046615775813.Spec : Prop :=
  ∀ n, P8728415046615775813.a n = A119502 n

end A119502

/-! ## A119502.P259282600282845717

`A124795(A104887(n+1))`
-/

namespace A119502.P259282600282845717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (A104887 (n + 1)).toNat

end

end A119502.P259282600282845717

namespace A119502

/-- `A124795(A104887(n+1))` -/
def P259282600282845717.Spec : Prop :=
  ∀ n, P259282600282845717.a n = A119502 n

end A119502

/-! ## A119502.P6579125540053732058

`A081123(2*A025581(n))`
-/

namespace A119502.P6579125540053732058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * A025581 n).toNat

end

end A119502.P6579125540053732058

namespace A119502

/-- `A081123(2*A025581(n))` -/
def P6579125540053732058.Spec : Prop :=
  ∀ n, P6579125540053732058.a n = A119502 n

end A119502

/-! ## A119502.P16018291486376521302

`A094587(n)/A007318(n)`
-/

namespace A119502.P16018291486376521302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 n : ℚ) / (A007318 n : ℚ)

end

end A119502.P16018291486376521302

namespace A119502

/-- `A094587(n)/A007318(n)` -/
def P16018291486376521302.Spec : Prop :=
  ∀ n, P16018291486376521302.a n = (A119502 n : ℚ)

end A119502

/-! ## A119502.P4747077804589804077

`A126064(n)/A013609(n)`
-/

namespace A119502.P4747077804589804077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126064 n : ℚ) / (A013609 n : ℚ)

end

end A119502.P4747077804589804077

namespace A119502

/-- `A126064(n)/A013609(n)` -/
def P4747077804589804077.Spec : Prop :=
  ∀ n, P4747077804589804077.a n = (A119502 n : ℚ)

end A119502

/-! ## A119502.P2451647838035697337

`A155856(n)/A054142(n)`
-/

namespace A119502.P2451647838035697337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155856 n : ℚ) / (A054142 n : ℚ)

end

end A119502.P2451647838035697337

namespace A119502

/-- `A155856(n)/A054142(n)` -/
def P2451647838035697337.Spec : Prop :=
  ∀ n, P2451647838035697337.a n = (A119502 n : ℚ)

end A119502

/-! ## A119502.P7179605013547775853

`A098361(n)/A233543(n)`
-/

namespace A119502.P7179605013547775853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 n : ℚ) / (A233543 n : ℚ)

end

end A119502.P7179605013547775853

namespace A119502

/-- `A098361(n)/A233543(n)` -/
def P7179605013547775853.Spec : Prop :=
  ∀ n, P7179605013547775853.a n = (A119502 n : ℚ)

end A119502

/-! ## A119502.P17813229538690117323

`A233543(∑[A198954(n)-1])`
-/

namespace A119502.P17813229538690117323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A119502.P17813229538690117323

namespace A119502

/-- `A233543(∑[A198954(n)-1])` -/
def P17813229538690117323.Spec : Prop :=
  ∀ n, P17813229538690117323.a n = A119502 n

end A119502

/-! ## A119502.P524823560854187791

`abs(A094587(n)/A130595(n))`
-/

namespace A119502.P524823560854187791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A094587 n : ℚ) / (A130595 n : ℚ)|

end

end A119502.P524823560854187791

namespace A119502

/-- `abs(A094587(n)/A130595(n))` -/
def P524823560854187791.Spec : Prop :=
  ∀ n, P524823560854187791.a n = (A119502 n : ℚ)

end A119502

/-! ## A119502.P9866868244551962800

`A000142(A004736(n+1)-1)`
-/

namespace A119502.P9866868244551962800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A004736 (n + 1) - 1).toNat

end

end A119502.P9866868244551962800

namespace A119502

/-- `A000142(A004736(n+1)-1)` -/
def P9866868244551962800.Spec : Prop :=
  ∀ n, P9866868244551962800.a n = A119502 n

end A119502

/-!
# A119503: Increasing gaps in the even sieve (A056533) by lower term.

The programs for A119503, there is no canonical definition to state claims against.
-/

/-! ## A119503.P6944185257130185243

`A172308(lt[A283899(n+1), A354266(3*(n+1))])`
-/

namespace A119503.P6944185257130185243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354266 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172308 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119503.P6944185257130185243

/-!
# A119505: The Pi-th digit of Pi where the digit value of 0 is interpreted as decimal 10.

The programs for A119505, the canonical program `A119505.P7465890050861402913` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119505 has offset 1).

The definition of A119505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119505.P7465890050861402913

`A097902(A000124(A097902(A000124(n+1))))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119505

/-- `A097902(A000124(A097902(A000124(n+1))))` -/
def P7465890050861402913.Spec : Prop :=
  ∀ n, P7465890050861402913.a n = A119505 (n + 1)

theorem P7465890050861402913.correct : P7465890050861402913.Spec := by
  intro n
  simp only [A119505, Nat.add_sub_cancel]

end A119505

/-! ## A119505.P9405247987285123918

`A000796(and(A000796(n)-1, A201914(n)))`
-/

namespace A119505.P9405247987285123918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((Int.land (A000796 (n + 1) - 1) (A201914 n)).toNat + 1)

end

end A119505.P9405247987285123918

namespace A119505

/-- `A000796(and(A000796(n)-1, A201914(n)))` -/
def P9405247987285123918.Spec : Prop :=
  ∀ n, P9405247987285123918.a n = A119505 (n + 1)

end A119505

/-! ## A119505.P11207074606736069308

`A000796(A000796(n)-A007913(A017306(n)))`
-/

namespace A119505.P11207074606736069308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A000796 (n + 1) - A007913 (A017306 n).toNat).toNat + 1)

end

end A119505.P11207074606736069308

namespace A119505

/-- `A000796(A000796(n)-A007913(A017306(n)))` -/
def P11207074606736069308.Spec : Prop :=
  ∀ n, P11207074606736069308.a n = A119505 (n + 1)

end A119505

/-! ## A119505.P3704995497198995495

`A000796(A000796(n)-A001222(A273756(n)))`
-/

namespace A119505.P3704995497198995495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A000796 (n + 1) - A001222 (A273756 n).toNat).toNat + 1)

end

end A119505.P3704995497198995495

namespace A119505

/-- `A000796(A000796(n)-A001222(A273756(n)))` -/
def P3704995497198995495.Spec : Prop :=
  ∀ n, P3704995497198995495.a n = A119505 (n + 1)

end A119505

/-!
# A119506: The e-th digit of e where the digit value of 0 is interpreted as decimal 10.

The programs for A119506, there is no canonical definition to state claims against.
-/

/-! ## A119506.P14270982315428013008

`A138115(A073212(n)-A000796(n)+36)`
-/

namespace A119506.P14270982315428013008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (A073212 n - A000796 (n + 1) + 36).toNat

end

end A119506.P14270982315428013008

/-! ## A119506.P2514597804389363789

`A095711(46-(A073212(n)-A000796(n)))`
-/

namespace A119506.P2514597804389363789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (46 - (A073212 n - A000796 (n + 1))).toNat

end

end A119506.P2514597804389363789

/-! ## A119506.P8380441340340909526

`A138115(A073212(n)-Δ[A059582(n)]+36)`
-/

namespace A119506.P8380441340340909526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (A073212 n - (f1 (n + 1) - f1 n) + 36).toNat

end

end A119506.P8380441340340909526

/-! ## A119506.P16436819439818618194

`A138115(Δ[A059582(n)]-A187747(n)+36)`
-/

namespace A119506.P16436819439818618194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (f1 (n + 1) - f1 n - A187747 n + 36).toNat

end

end A119506.P16436819439818618194

/-! ## A119506.P5697125945570101128

`A095711(46-(A073212(n)-Δ[A059582(n)]))`
-/

namespace A119506.P5697125945570101128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (46 - (A073212 n - (f1 (n + 1) - f1 n))).toNat

end

end A119506.P5697125945570101128

/-! ## A119506.P15457837431127786120

`A095711(46-(Δ[A059582(n)]-A187747(n)))`
-/

namespace A119506.P15457837431127786120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (46 - (f1 (n + 1) - f1 n - A187747 n)).toNat

end

end A119506.P15457837431127786120

/-! ## A119506.P235635772578752063

`A095711(46-(A073212(n)-A187747(n))/2)`
-/

namespace A119506.P235635772578752063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (SequenceMachineLib.roundAway (46 - (A073212 n - A187747 n : ℚ) / 2)).toNat

end

end A119506.P235635772578752063

/-!
# A119507: Members of A016052 whose digit sum is three.

The programs for A119507, there is no canonical definition to state claims against.
-/

/-! ## A119507.P1218214102509121011

`A016052(A084229(n+1)-2)`
-/

namespace A119507.P1218214102509121011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016052 (A084229 (n + 1) - 2).toNat

end

end A119507.P1218214102509121011

/-! ## A119507.P1885375054011205944

`A016052(eq[3, A084228(n+2)])`
-/

namespace A119507.P1885375054011205944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119507.P1885375054011205944

/-! ## A119507.P15651427345346910831

`∩[A016052(n+1), A052217(n+1)]`
-/

namespace A119507.P15651427345346910831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119507.P15651427345346910831

/-! ## A119507.P13818542725915210137

`∩[A016052(n+1), A062713(n+1)]`
-/

namespace A119507.P13818542725915210137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119507.P13818542725915210137

/-! ## A119507.P12201579390112645939

`record[root(A016052(n+1), A230287(n+1))]`
-/

namespace A119507.P12201579390112645939
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016052 (n + 1) : ℝ) ^ (1 / (A230287 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119507.P12201579390112645939

/-!
# A119509: Positive numbers whose square contains no digit more than once.

The programs for A119509, there is no canonical definition to state claims against.
-/

/-! ## A119509.P17013541403260041910

`sqrt(A078255(n+2))`
-/

namespace A119509.P17013541403260041910
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078255 (n + 2) : ℝ)

end

end A119509.P17013541403260041910

/-! ## A119509.P9387178187507790713

`∩[A052061(n+1), A052081(n+2)]`
-/

namespace A119509.P9387178187507790713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052081 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119509.P9387178187507790713

/-! ## A119509.P16766307842244638604

`sqrt(∩[A052046(n+1), A075309(n+1)])`
-/

namespace A119509.P16766307842244638604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A119509.P16766307842244638604

/-! ## A119509.P17933801351874034558

`sqrt(∩[A052062(n+1), A075309(n+1)])`
-/

namespace A119509.P17933801351874034558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A119509.P17933801351874034558

/-! ## A119509.P5268021043740291018

`sqrt(∩[A075309(n+1), n²])`
-/

namespace A119509.P5268021043740291018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A119509.P5268021043740291018

/-! ## A119509.P12636928461909113352

`sqrt(∩[A000290(n), A075309(n+1)])`
-/

namespace A119509.P12636928461909113352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A119509.P12636928461909113352

/-! ## A119509.P13771619177918725419

`record[A056926(A075309(n+1))]`
-/

namespace A119509.P13771619177918725419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A075309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119509.P13771619177918725419

/-! ## A119509.P15774393670590400455

`A056926(∩[A075309(n+1), n²])`
-/

namespace A119509.P15774393670590400455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A119509.P15774393670590400455

/-! ## A119509.P13777884494821804343

`A056926(∩[A052046(n+1), A075309(n+1)])`
-/

namespace A119509.P13777884494821804343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A119509.P13777884494821804343

/-! ## A119509.P9359518842092160990

`record[A045540(n+1)%A273756(n)]`
-/

namespace A119509.P9359518842092160990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045540 (n + 1)) (A273756 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119509.P9359518842092160990

/-!
# A119511: a(n) is the smallest positive integer whose square starts with precisely n identical digits.

The programs for A119511, there is no canonical definition to state claims against.
-/

/-! ## A119511.P9953813609472098190

`A119998(A001104(n+1))`
-/

namespace A119511.P9953813609472098190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119998 (A001104 (n + 1)).toNat

end

end A119511.P9953813609472098190

/-! ## A119511.P10740807315308857019

`A119998(A032555(n+1))`
-/

namespace A119511.P10740807315308857019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119998 (A032555 (n + 1)).toNat

end

end A119511.P10740807315308857019

/-! ## A119511.P14202252087514234880

`A119998(A082217(n+1))`
-/

namespace A119511.P14202252087514234880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119998 (A082217 (n + 1)).toNat

end

end A119511.P14202252087514234880

/-! ## A119511.P345392722871762954

`A119998(A134853(n+1))`
-/

namespace A119511.P345392722871762954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119998 (A134853 (n + 1)).toNat

end

end A119511.P345392722871762954

/-! ## A119511.P9598148881679538407

`A119998(C(n+1, A324198(n)))`
-/

namespace A119511.P9598148881679538407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119998 (Nat.choose (n + 1) (A324198 n).toNat)

end

end A119511.P9598148881679538407

/-!
# A119513: a(n) = A119957(n) / n.

The programs for A119513, there is no canonical definition to state claims against.
-/

/-! ## A119513.P10254179761973772689

`A119957(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119513.P10254179761973772689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119957 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A119513.P10254179761973772689

/-! ## A119513.P13420097011359661050

`A179382(floor(n/(xor(n, n+1)+1))+1)-char[2^n-1]`
-/

namespace A119513.P13420097011359661050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119513.P13420097011359661050

/-! ## A119513.P8132614160934825588

`∑{digits}[A104013(n+1), #]`
-/

namespace A119513.P8132614160934825588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A119513.P8132614160934825588

/-! ## A119513.P8197299954185382308

`A136043((n+1)/2^val(n+1, 2))%∑{d}[n+1, #*#%2]`
-/

namespace A119513.P8197299954185382308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ)

end

end A119513.P8197299954185382308

/-! ## A119513.P16599505454893371791

`A136043((n+1)/(or(n, n+1)-n))%((n+1)/2^val(n+1, 2))`
-/

namespace A119513.P16599505454893371791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))

end

end A119513.P16599505454893371791

/-! ## A119513.P333975116133170740

`A136043((n+1)*2^-val(n+1, 2))%((n+1)/2^val(n+1, 2))`
-/

namespace A119513.P333975116133170740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))

end

end A119513.P333975116133170740

/-! ## A119513.P3870917856040422096

`A136043((n+1)/round(xor(n, n+1)/2))%((n+1)/2^val(n+1, 2))`
-/

namespace A119513.P3870917856040422096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))

end

end A119513.P3870917856040422096

/-! ## A119513.P6157912138818332168

`A136043(n+1)-char[2^n-1]`
-/

namespace A119513.P6157912138818332168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136043 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119513.P6157912138818332168

/-! ## A119513.P3443649385601434236

`A043545(n)*A136043(n+1)`
-/

namespace A119513.P3443649385601434236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A136043 (n + 1)

end

end A119513.P3443649385601434236

/-! ## A119513.P12457471600918943975

`A136043(n+1)%A035109(n)`
-/

namespace A119513.P12457471600918943975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136043 (n + 1)) (A035109 n)

end

end A119513.P12457471600918943975

/-!
# A119515: Expansion of x*(x^3+2*x^2+3*x-1)/(x+1)^5.

The programs for A119515, the canonical program `A119515.P2361046199151451000` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119515 has offset 0).

The definition of A119515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-x+3x^2+2x^3+x^4)/(1+5x+10x^2+10x^3+5x^4+x^5))` (program `A119515.P2361046199151451000`, by `A119515.P2361046199151451000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119515.P2361046199151451000

`ogf((-x+3x^2+2x^3+x^4)/(1+5x+10x^2+10x^3+5x^4+x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119515

/-- `ogf((-x+3x^2+2x^3+x^4)/(1+5x+10x^2+10x^3+5x^4+x^5))` -/
def P2361046199151451000.Spec : Prop :=
  ∀ n, P2361046199151451000.a n = A119515 n

theorem P2361046199151451000.correct : P2361046199151451000.Spec := by
  intro n
  simp only [A119515]

end A119515

/-! ## A119515.P15306216086998357068

`(A161680(n)+A001296(n))*A033999(n)`
-/

namespace A119515.P15306216086998357068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 n + A001296 n) * A033999 n

end

end A119515.P15306216086998357068

namespace A119515

/-- `(A161680(n)+A001296(n))*A033999(n)` -/
def P15306216086998357068.Spec : Prop :=
  ∀ n, P15306216086998357068.a n = A119515 n

end A119515

/-! ## A119515.P2642042753191412934

`(A161680(n)+A001296(n))*(A004442(n)-n)`
-/

namespace A119515.P2642042753191412934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 n + A001296 n) * (A004442 n - (n : ℤ))

end

end A119515.P2642042753191412934

namespace A119515

/-- `(A161680(n)+A001296(n))*(A004442(n)-n)` -/
def P2642042753191412934.Spec : Prop :=
  ∀ n, P2642042753191412934.a n = A119515 n

end A119515

/-! ## A119515.P18214815007191999451

`(A161680(A000027(n+1)-1)+A001296(n))/A033999(n)`
-/

namespace A119515.P18214815007191999451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 (A000027 (n + 1) - 1).toNat + A001296 n : ℚ) / (A033999 n : ℚ)

end

end A119515.P18214815007191999451

namespace A119515

/-- `(A161680(A000027(n+1)-1)+A001296(n))/A033999(n)` -/
def P18214815007191999451.Spec : Prop :=
  ∀ n, P18214815007191999451.a n = (A119515 n : ℚ)

end A119515

/-! ## A119515.P17275643993627231552

`(A161680(n)+A001296(n))*A165326(n+1)`
-/

namespace A119515.P17275643993627231552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 n + A001296 n) * A165326 (n + 1)

end

end A119515.P17275643993627231552

namespace A119515

/-- `(A161680(n)+A001296(n))*A165326(n+1)` -/
def P17275643993627231552.Spec : Prop :=
  ∀ n, P17275643993627231552.a n = A119515 n

end A119515

/-! ## A119515.P17373934302896158251

`(A161680(n)+A001296(n))*A056594(A005843(n))`
-/

namespace A119515.P17373934302896158251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 n + A001296 n) * A056594 (A005843 n).toNat

end

end A119515.P17373934302896158251

namespace A119515

/-- `(A161680(n)+A001296(n))*A056594(A005843(n))` -/
def P17373934302896158251.Spec : Prop :=
  ∀ n, P17373934302896158251.a n = A119515 n

end A119515

/-!
# A119516: Expansion of x*(7*x^3+7*x^2+9*x+1)/(5*x^4+10*x^2+1).

The programs for A119516, the canonical program `A119516.P10839263594824661216` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119516 has offset 0).

The definition of A119516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+9x^2+7x^3+7x^4)/(1+10x^2+5x^4))` (program `A119516.P10839263594824661216`, by `A119516.P10839263594824661216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119516.P10839263594824661216

`ogf((x+9x^2+7x^3+7x^4)/(1+10x^2+5x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119516

/-- `ogf((x+9x^2+7x^3+7x^4)/(1+10x^2+5x^4))` -/
def P10839263594824661216.Spec : Prop :=
  ∀ n, P10839263594824661216.a n = A119516 n

theorem P10839263594824661216.correct : P10839263594824661216.Spec := by
  intro n
  simp only [A119516]

end A119516

/-!
# A119522: Determinant of n X n matrix of first n^2 nonzero terms of triangular numbers.

The programs for A119522, the canonical program `A119522.P1365007953929942063` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119522 has offset 1).

The definition of A119522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119522.P1365007953929942063

`a(n-1)` with `a(0)=1, a(1)=-8, a(2)=-27, a(3)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119522

/-- `a(n-1)` -/
def P1365007953929942063.Spec : Prop :=
  ∀ n, P1365007953929942063.a n = A119522 (n + 1)

theorem P1365007953929942063.correct : P1365007953929942063.Spec := by
  intro n
  simp only [A119522, Nat.add_sub_cancel]

end A119522

/-!
# A119523: Decimal expansion of 2^-1 + 2^-2 + 2^-4 + 2^-6 + 2^-10 + ..., where the exponents are 1 less than the primes.

The programs for A119523, there is no canonical definition to state claims against.
-/

/-! ## A119523.P13488154821085596142

`9-A119524(n)`
-/

namespace A119523.P13488154821085596142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A119524 n

end

end A119523.P13488154821085596142

/-!
# A119524: Decimal expansion of Sum_{k >= 1} ((-1)^A010051(k))/2^k.

The programs for A119524, there is no canonical definition to state claims against.
-/

/-! ## A119524.P9055929766122470708

`9-A119523(n)`
-/

namespace A119524.P9055929766122470708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A119523 n

end

end A119524.P9055929766122470708

/-!
# A119526: Odd denominators of n * n-th harmonic number = A027611[2^n].

The programs for A119526, the canonical program `A119526.P17309535747538120691` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119526 has offset 0).

The definition of A119526 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119526.P17309535747538120691

`A027611(2^n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A119526

/-- `A027611(2^n)` -/
def P17309535747538120691.Spec : Prop :=
  ∀ n, P17309535747538120691.a n = A119526 n

theorem P17309535747538120691.correct : P17309535747538120691.Spec := by
  intro n
  simp only [A119526]

end A119526

/-! ## A119526.P1444896897381450951

`A128438(2^n)`
-/

namespace A119526.P1444896897381450951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128438 (2 ^ n)

end

end A119526.P1444896897381450951

namespace A119526

/-- `A128438(2^n)` -/
def P1444896897381450951.Spec : Prop :=
  ∀ n, P1444896897381450951.a n = A119526 n

end A119526

/-! ## A119526.P8507507305095198564

`A096620(2^n-1)`
-/

namespace A119526.P8507507305095198564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096620 (2 ^ n - 1)

end

end A119526.P8507507305095198564

namespace A119526

/-- `A096620(2^n-1)` -/
def P8507507305095198564.Spec : Prop :=
  ∀ n, P8507507305095198564.a n = A119526 n

end A119526

/-!
# A119529: Numbers k such that Sum_{j=1..k-1} j*2^(j-1) is prime.

The programs for A119529, there is no canonical definition to state claims against.
-/

/-! ## A119529.P2536444269433747916

`A128001(n+1)+1`
-/

namespace A119529.P2536444269433747916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128001 (n + 1) + 1

end

end A119529.P2536444269433747916

/-! ## A119529.P7068631558949968922

`A058767(n+1)/2+2`
-/

namespace A119529.P7068631558949968922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058767 (n + 1) : ℚ) / 2 + 2

end

end A119529.P7068631558949968922

/-! ## A119529.P13385323515775682996

`A014682(A058767(n+1))+2`
-/

namespace A119529.P13385323515775682996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A058767 (n + 1)).toNat + 2

end

end A119529.P13385323515775682996

/-! ## A119529.P5314339752381119760

`A020725(A128001(n+1))`
-/

namespace A119529.P5314339752381119760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A128001 (n + 1)).toNat

end

end A119529.P5314339752381119760

/-! ## A119529.P1014160355428623080

`A111234(A058767(n+1))`
-/

namespace A119529.P1014160355428623080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (A058767 (n + 1)).toNat

end

end A119529.P1014160355428623080

/-!
# A119530: Determinant of n X n matrix of first n^2 odious numbers: odd number of 1's in binary expansion (A000069).

The programs for A119530, there is no canonical definition to state claims against.
-/

/-! ## A119530.P11842033352731274266

`A007325(n)*A340688(A005867(n))`
-/

namespace A119530.P11842033352731274266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007325 n * A340688 (A005867 n).toNat

end

end A119530.P11842033352731274266

/-!
# A119532: Number of n-ominoes plus number of n-iamonds.

The programs for A119532, there is no canonical definition to state claims against.
-/

/-! ## A119532.P13584706741439187345

`A000577(round(acot(n)+n))+A000105(n)`
-/

namespace A119532.P13584706741439187345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A000105 n

end

end A119532.P13584706741439187345

/-! ## A119532.P9872231962486969739

`A000577(abs(1-n)+1)+A000105(n)`
-/

namespace A119532.P9872231962486969739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (|1 - (n : ℤ)| + 1).toNat + A000105 n

end

end A119532.P9872231962486969739

/-! ## A119532.P342879055801193983

`A000577(A028310(n))+A006765(A028310(n))+1`
-/

namespace A119532.P342879055801193983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (A028310 n).toNat + (A006765 (A028310 n).toNat + 1)

end

end A119532.P342879055801193983

/-! ## A119532.P9105876323769840259

`A000577(A028310(n))+A030228(n)+A030227(n)`
-/

namespace A119532.P9105876323769840259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (A028310 n).toNat + (A030228 n + A030227 n)

end

end A119532.P9105876323769840259

/-! ## A119532.P10534950702564799221

`A000577(A028310(n))+A000988(n)-A030228(n)`
-/

namespace A119532.P10534950702564799221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (A028310 n).toNat + (A000988 n - A030228 n)

end

end A119532.P10534950702564799221

/-!
# A119533: a(n+1) = prime(1+a(n)), starting with a(0) = 0.

The programs for A119533, there is no canonical definition to state claims against.
-/

/-! ## A119533.P9797752307233091925

`A257320(n)-1`
-/

namespace A119533.P9797752307233091925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257320 n - 1

end

end A119533.P9797752307233091925

/-! ## A119533.P4949422845525597186

`record[Δ[A257320(A142150(n))]]`
-/

namespace A119533.P4949422845525597186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257320 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119533.P4949422845525597186

/-! ## A119533.P15435421601271747418

`A280193(2*n+1)+A257320(n)`
-/

namespace A119533.P15435421601271747418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A257320 n

end

end A119533.P15435421601271747418

/-! ## A119533.P3253681562514833483

`A001478(n+1)+A257320(n)+n`
-/

namespace A119533.P3253681562514833483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A257320 n + (n : ℤ))

end

end A119533.P3253681562514833483

/-! ## A119533.P8899636451179823633

`abs(A257320(n)+A008683(A007918(n)))`
-/

namespace A119533.P8899636451179823633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257320 n + A008683 (A007918 n).toNat|

end

end A119533.P8899636451179823633

/-!
# A119534: Largest prime divisor of numerator of the n-th Artin's product.

The programs for A119534, there is no canonical definition to state claims against.
-/

/-! ## A119534.P13836978130995145691

`p?[A124827(A151800(2*n))-1]`
-/

namespace A119534.P13836978130995145691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124827 (A151800 (2 * n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119534.P13836978130995145691

/-! ## A119534.P9302830013689381461

`A002943(A256654(n+1))-A325446(A010098(n))`
-/

namespace A119534.P9302830013689381461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 (A256654 (n + 1)).toNat - A325446 (A010098 n).toNat

end

end A119534.P9302830013689381461

/-!
# A119535: Primeval primes: primes in A072857.

The programs for A119535, there is no canonical definition to state claims against.
-/

/-! ## A119535.P11657388492453248569

`p?[A072857(n+1)]`
-/

namespace A119535.P11657388492453248569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119535.P11657388492453248569

/-! ## A119535.P10061806036155199469

`p?[Δ[A173052(n+1)]]`
-/

namespace A119535.P10061806036155199469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173052 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119535.P10061806036155199469

/-! ## A119535.P13195419146102492450

`record[∑{p}[A072857(n+2), #]]`
-/

namespace A119535.P13195419146102492450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072857 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119535.P13195419146102492450

/-! ## A119535.P2188107800345099408

`p?[A076449(A076497(n+1))]`
-/

namespace A119535.P2188107800345099408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076449 (A076497 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119535.P2188107800345099408

/-! ## A119535.P16490358459433455023

`filter[A072857(n+2), A324290(#)]`
-/

namespace A119535.P16490358459433455023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A119535.P16490358459433455023

/-!
# A119536: a(n) = 3*n^3 + 3*n.

The programs for A119536, the canonical program `A119536.P17684524526440716851` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119536 has offset 0).

The definition of A119536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^3+3*n` (program `A119536.P17684524526440716851`, by `A119536.P17684524526440716851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119536.P17684524526440716851

`3*n^3+3*n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119536

/-- `3*n^3+3*n` -/
def P17684524526440716851.Spec : Prop :=
  ∀ n, (P17684524526440716851.a n : ℤ) = A119536 n

theorem P17684524526440716851.correct : P17684524526440716851.Spec := by
  intro n
  simp only [A119536]

end A119536

/-! ## A119536.P1554010486108507486

`3*A034262(n)`
-/

namespace A119536.P1554010486108507486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034262 n

end

end A119536.P1554010486108507486

namespace A119536

/-- `3*A034262(n)` -/
def P1554010486108507486.Spec : Prop :=
  ∀ n, P1554010486108507486.a n = A119536 n

end A119536

/-! ## A119536.P2101353577466293854

`6*A006003(n)`
-/

namespace A119536.P2101353577466293854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006003 n

end

end A119536.P2101353577466293854

namespace A119536

/-- `6*A006003(n)` -/
def P2101353577466293854.Spec : Prop :=
  ∀ n, P2101353577466293854.a n = A119536 n

end A119536

/-! ## A119536.P14559897607596486572

`floor(3/acot(n)^3)`
-/

namespace A119536.P14559897607596486572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ) ^ 3⌋

end

end A119536.P14559897607596486572

namespace A119536

/-- `floor(3/acot(n)^3)` -/
def P14559897607596486572.Spec : Prop :=
  ∀ n, P14559897607596486572.a n = A119536 n

end A119536

/-! ## A119536.P9271874674814384608

`lcm(n²+1, 3*n)`
-/

namespace A119536.P9271874674814384608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ 2 + 1) (3 * n)

end

end A119536.P9271874674814384608

namespace A119536

/-- `lcm(n²+1, 3*n)` -/
def P9271874674814384608.Spec : Prop :=
  ∀ n, (P9271874674814384608.a n : ℤ) = A119536 n

end A119536

/-! ## A119536.P3463319218687809558

`floor(3*acot(n)^-3)`
-/

namespace A119536.P3463319218687809558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ)⌋

end

end A119536.P3463319218687809558

namespace A119536

/-- `floor(3*acot(n)^-3)` -/
def P3463319218687809558.Spec : Prop :=
  ∀ n, P3463319218687809558.a n = A119536 n

end A119536

/-! ## A119536.P8184957100959199658

`3*n/cos(atan(n))²`
-/

namespace A119536.P8184957100959199658
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * n : ℝ) / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A119536.P8184957100959199658

namespace A119536

/-- `3*n/cos(atan(n))²` -/
def P8184957100959199658.Spec : Prop :=
  ∀ n, P8184957100959199658.a n = (A119536 n : ℝ)

end A119536

/-! ## A119536.P14013096511714760167

`3*n/sin(acot(n))²`
-/

namespace A119536.P14013096511714760167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * n : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2

end

end A119536.P14013096511714760167

namespace A119536

/-- `3*n/sin(acot(n))²` -/
def P14013096511714760167.Spec : Prop :=
  ∀ n, P14013096511714760167.a n = (A119536 n : ℝ)

end A119536

/-! ## A119536.P7964638574802283885

`Δ[6*C(C(n, 2)+1, 2)]`
-/

namespace A119536.P7964638574802283885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (Nat.choose n 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A119536.P7964638574802283885

namespace A119536

/-- `Δ[6*C(C(n, 2)+1, 2)]` -/
def P7964638574802283885.Spec : Prop :=
  ∀ n, P7964638574802283885.a n = A119536 n

end A119536

/-! ## A119536.P17306517893632207188

`∑[∑[a(n-1)+18]]` with `a(0)=0, a(1)=6, a(2)=18`
-/

namespace A119536.P17306517893632207188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 18] fun n f2 =>
  f2 (n - 1) + 18

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119536.P17306517893632207188

namespace A119536

/-- `∑[∑[a(n-1)+18]]` -/
def P17306517893632207188.Spec : Prop :=
  ∀ n, (P17306517893632207188.a n : ℤ) = A119536 n

end A119536

/-! ## A119536.P10169898445864911040

`∑[∑[ogf((6x+6x^2+6x^3)/(1-2x+x^2))]]`
-/

namespace A119536.P10169898445864911040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 6, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119536.P10169898445864911040

namespace A119536

/-- `∑[∑[ogf((6x+6x^2+6x^3)/(1-2x+x^2))]]` -/
def P10169898445864911040.Spec : Prop :=
  ∀ n, P10169898445864911040.a n = A119536 n

end A119536

/-! ## A119536.P6691991544332995452

`∑[A211615(n)]`
-/

namespace A119536.P6691991544332995452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119536.P6691991544332995452

namespace A119536

/-- `∑[A211615(n)]` -/
def P6691991544332995452.Spec : Prop :=
  ∀ n, P6691991544332995452.a n = A119536 n

end A119536

/-! ## A119536.P4752376693946149078

`sqrt((3*n)²*A002522(n)²)`
-/

namespace A119536.P4752376693946149078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((3 * n) ^ 2 : ℤ) * A002522 n ^ 2 : ℝ)

end

end A119536.P4752376693946149078

namespace A119536

/-- `sqrt((3*n)²*A002522(n)²)` -/
def P4752376693946149078.Spec : Prop :=
  ∀ n, P4752376693946149078.a n = (A119536 n : ℝ)

end A119536

/-!
# A119538: Fixed point of the morphism a -> {a, a + 1, 2a + 2} beginning with 0.

The programs for A119538, there is no canonical definition to state claims against.
-/

/-! ## A119538.P17369770381220212126

`A134024(A265367(n))+(2^n)%A038148(2^n)`
-/

namespace A119538.P17369770381220212126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A265367 n).toNat + Int.tmod (2 ^ n : ℤ) (A038148 (2 ^ n))

end

end A119538.P17369770381220212126

/-! ## A119538.P8370729666252480332

`A115756(A283293(n))%A115728(n)`
-/

namespace A119538.P8370729666252480332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115756 (A283293 n).toNat) (A115728 n)

end

end A119538.P8370729666252480332

/-! ## A119538.P16255335605764798464

`A001222(∑[A015442((n+1)/2^val(n+1, 2))])`
-/

namespace A119538.P16255335605764798464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A119538.P16255335605764798464

/-! ## A119538.P14374102304907231496

`A359237(A000079(n+2))*A365722(n)`
-/

namespace A119538.P14374102304907231496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359237 (A000079 (n + 2)).toNat * A365722 n

end

end A119538.P14374102304907231496

/-! ## A119538.P14314100686342839308

`A001222(C(A005689(n+6), A180562(n)))`
-/

namespace A119538.P14314100686342839308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A005689 (n + 6)).toNat (A180562 n).toNat)

end

end A119538.P14314100686342839308

/-!
# A119542: Coefficients of Pi^(2*n+1) in a certain integer relation involving Ramanujan exponential-type sums.

The programs for A119542, there is no canonical definition to state claims against.
-/

/-! ## A119542.P2956240513629242975

`gcd(A119540(n+3), A119541(n+3))`
-/

namespace A119542.P2956240513629242975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119540 (n + 3)) (A119541 (n + 3))

end

end A119542.P2956240513629242975

/-!
# A119547: 10-gonal numbers for which the sum of the digits is also a 10-gonal number.

The programs for A119547, there is no canonical definition to state claims against.
-/

/-! ## A119547.P7757945680257368096

`A001107(lt[A309590(n), 3])`
-/

namespace A119547.P7757945680257368096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309590 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A119547.P7757945680257368096

/-! ## A119547.P12019864940082043626

`∩[record[A056969(n+1)], A001107(n)]`
-/

namespace A119547.P12019864940082043626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056969 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A119547.P12019864940082043626

/-!
# A119548: 10-gonal numbers which are divisible by the sum of their digits.

The programs for A119548, there is no canonical definition to state claims against.
-/

/-! ## A119548.P1458024828877926896

`∩[(n+1)*(n+1+3*n), A005349(n+1)]`
-/

namespace A119548.P1458024828877926896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1 + 3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119548.P1458024828877926896

/-! ## A119548.P10235744575284108868

`∩[8*C(n, 2)+n, A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A119548.P10235744575284108868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose n 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119548.P10235744575284108868

/-! ## A119548.P9938074883936881027

`∩[A005349(n+1), A001107(n)]`
-/

namespace A119548.P9938074883936881027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119548.P9938074883936881027

/-! ## A119548.P9426449539104540809

`∩[A001107(n), A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A119548.P9426449539104540809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119548.P9426449539104540809

/-! ## A119548.P6181316941322880108

`∩[A054552(n)-1, A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A119548.P6181316941322880108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119548.P6181316941322880108

/-!
# A119549: a(n) = binomial(Catalan(n), 4).

The programs for A119549, there is no canonical definition to state claims against.
-/

/-! ## A119549.P14464468662113631980

`C(C(2*n, n)/(n+1), 4)`
-/

namespace A119549.P14464468662113631980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))).toNat 4

end

end A119549.P14464468662113631980

/-! ## A119549.P15677588403612026543

`C(A000108(n), 4)`
-/

namespace A119549.P15677588403612026543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000108 n).toNat 4

end

end A119549.P15677588403612026543

/-! ## A119549.P16540025426354421704

`C(abs(A168491(n)), 4)`
-/

namespace A119549.P16540025426354421704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A168491 n|.toNat 4

end

end A119549.P16540025426354421704

/-! ## A119549.P5447570157015715106

`C(sqrt(A001246(n)), 4)`
-/

namespace A119549.P5447570157015715106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A001246 n : ℝ))).toNat 4

end

end A119549.P5447570157015715106

/-! ## A119549.P2703406122604255456

`C(A028364(∑[n]), 4)`
-/

namespace A119549.P2703406122604255456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 4

end

end A119549.P2703406122604255456

/-!
# A119550: Prime numbers of the form 2^(2^k) + 2^k - 1.

The programs for A119550, there is no canonical definition to state claims against.
-/

/-! ## A119550.P4304728716729769295

`char[5]+2^2^n+2^n-1`
-/

namespace A119550.P4304728716729769295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((2 ^ 2 ^ n : ℤ) + ((2 ^ n : ℤ) - 1))

end

end A119550.P4304728716729769295

/-!
# A119552: Binomial(binomial(2*n,n)*n,n).

The programs for A119552, there is no canonical definition to state claims against.
-/

/-! ## A119552.P17094208673758170008

`C(n*C(2*n, n), n)`
-/

namespace A119552.P17094208673758170008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * Nat.choose (2 * n) n) n

end

end A119552.P17094208673758170008

/-! ## A119552.P8248601900379134078

`C(A005430(n), n)`
-/

namespace A119552.P8248601900379134078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005430 n).toNat n

end

end A119552.P8248601900379134078

/-! ## A119552.P8347452641616015900

`C(A319924(n)-1, n)`
-/

namespace A119552.P8347452641616015900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A319924 n - 1).toNat n

end

end A119552.P8347452641616015900

/-! ## A119552.P18244057097801715599

`C(A100071(2*n), n)`
-/

namespace A119552.P18244057097801715599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100071 (2 * n)).toNat n

end

end A119552.P18244057097801715599

/-! ## A119552.P9128131020756285963

`C(A212303(2*n), n)`
-/

namespace A119552.P9128131020756285963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212303 (2 * n)).toNat n

end

end A119552.P9128131020756285963

/-!
# A119553: a(n) = binomial(n^2 * binomial(2*n,n), n).

The programs for A119553, there is no canonical definition to state claims against.
-/

/-! ## A119553.P4907459549315285624

`C(n²*C(2*n, n), n)`
-/

namespace A119553.P4907459549315285624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 * Nat.choose (2 * n) n) n

end

end A119553.P4907459549315285624

/-! ## A119553.P17076302822965260918

`C(A002736(n), n)`
-/

namespace A119553.P17076302822965260918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002736 n).toNat n

end

end A119553.P17076302822965260918

/-! ## A119553.P7283336977843010942

`C(n²*A000984(n), n)`
-/

namespace A119553.P7283336977843010942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) * A000984 n).toNat n

end

end A119553.P7283336977843010942

/-! ## A119553.P2840941557968329233

`C(A000108(n)*A011379(n), n)`
-/

namespace A119553.P2840941557968329233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000108 n * A011379 n).toNat n

end

end A119553.P2840941557968329233

/-!
# A119554: Binomial(binomial(2*n,n)*n^3,n).

The programs for A119554, there is no canonical definition to state claims against.
-/

/-! ## A119554.P6509660722472222895

`C(A005429(n), n)`
-/

namespace A119554.P6509660722472222895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005429 n).toNat n

end

end A119554.P6509660722472222895

/-! ## A119554.P8269584795156123210

`C(n^3*A000984(n), n)`
-/

namespace A119554.P8269584795156123210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 3 : ℤ) * A000984 n).toNat n

end

end A119554.P8269584795156123210

/-! ## A119554.P5865127420234089256

`C(n^3*A007318(∑[4*n]), n)`
-/

namespace A119554.P5865127420234089256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 3 : ℤ) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat n

end

end A119554.P5865127420234089256

/-!
# A119556: 

The programs for A119556, there is no canonical definition to state claims against.
-/

/-! ## A119556.P8681487917251247932

`record[or(4, A359808(2*n+1))]`
-/

namespace A119556.P8681487917251247932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A359808 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119556.P8681487917251247932

/-!
# A119557: a(1)=0,a(2)=0,a(3)=1 then a(n)=abs(a(n-1)-a(n-2))-a(n-3).

The programs for A119557, the canonical program `A119557.P9482477194788746059` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119557 has offset 0).

The definition of A119557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-a(n-2))-a(n-3)` (program `A119557.P9482477194788746059`, by `A119557.P9482477194788746059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119557.P9482477194788746059

`abs(a(n-1)-a(n-2))-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119557

/-- `abs(a(n-1)-a(n-2))-a(n-3)` -/
def P9482477194788746059.Spec : Prop :=
  ∀ n, P9482477194788746059.a n = A119557 n

theorem P9482477194788746059.correct : P9482477194788746059.Spec := by
  intro n
  simp only [A119557]

end A119557

/-! ## A119557.P12944724115947477242

`A064353(n+1)-A054546(A187829(n+1))`
-/

namespace A119557.P12944724115947477242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (n + 1) - A054546 (A187829 (n + 1)).toNat

end

end A119557.P12944724115947477242

namespace A119557

/-- `A064353(n+1)-A054546(A187829(n+1))` -/
def P12944724115947477242.Spec : Prop :=
  ∀ n, P12944724115947477242.a n = A119557 n

end A119557

/-! ## A119557.P13699183480205703375

`A095774(A000096(n)+A204644(n+2)/2)`
-/

namespace A119557.P13699183480205703375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095774 (SequenceMachineLib.roundAway ((A000096 n : ℚ) + (A204644 (n + 2) : ℚ) / 2)).toNat

end

end A119557.P13699183480205703375

namespace A119557

/-- `A095774(A000096(n)+A204644(n+2)/2)` -/
def P13699183480205703375.Spec : Prop :=
  ∀ n, P13699183480205703375.a n = A119557 n

end A119557

/-!
# A119559: Inverse Euler transform of A119268.

The programs for A119559, there is no canonical definition to state claims against.
-/

/-! ## A119559.P856985152781848611

`A000196(floor(sqrt(A120765(n))))`
-/

namespace A119559.P856985152781848611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.sqrt (A120765 n)).toNat

end

end A119559.P856985152781848611

/-! ## A119559.P17167830943270003875

`A000196(ceil(sqrt(A120765(n))))`
-/

namespace A119559.P17167830943270003875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈Real.sqrt (A120765 n : ℝ)⌉.toNat

end

end A119559.P17167830943270003875

/-! ## A119559.P166606563720931624

`A000196(round(sqrt(A120765(n))))`
-/

namespace A119559.P166606563720931624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (Real.sqrt (A120765 n : ℝ))).toNat

end

end A119559.P166606563720931624

/-! ## A119559.P5612315180694734472

`Δ[A003056(∑[A324614(n)])]`
-/

namespace A119559.P5612315180694734472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324614 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119559.P5612315180694734472

/-! ## A119559.P2780099393088779153

`Δ[A133196(∑[A324614(n)]+1)]`
-/

namespace A119559.P2780099393088779153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324614 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119559.P2780099393088779153

/-!
# A119561: Define F(n) = 2^(2^n)+1 = the n-th Fermat number, M(n) = 2^n-1 = the n-th Mersenne number. Then a(n) = F(n)+M(n)+1=2^(2^n)+1+2^n-1+1 = 2^(2^n)+2^n+1 = F(n)+2^n.

The programs for A119561, the canonical program `A119561.P17604894935124116122` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119561 has offset 0).

The definition of A119561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n+1+2^n` (program `A119561.P17604894935124116122`, by `A119561.P17604894935124116122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119561.P17604894935124116122

`2^2^n+1+2^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119561

/-- `2^2^n+1+2^n` -/
def P17604894935124116122.Spec : Prop :=
  ∀ n, (P17604894935124116122.a n : ℤ) = A119561 n

theorem P17604894935124116122.correct : P17604894935124116122.Spec := by
  intro n
  simp only [A119561]

end A119561

/-! ## A119561.P13831187211913084045

`2^2^n+2^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119561.P13831187211913084045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n + 2 ^ n + 1

end

end A119561.P13831187211913084045

namespace A119561

/-- `2^2^n+2^n+1` -/
def P13831187211913084045.Spec : Prop :=
  ∀ n, (P13831187211913084045.a n : ℤ) = A119561 n

theorem P13831187211913084045.correct : P13831187211913084045.Spec := by
  intro n
  simp only [A119561, Nat.add_sub_cancel, A119561.P13831187211913084045.a, A119561.P17604894935124116122.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A119561

/-! ## A119561.P4497880783092079944

`A005126(2^n)`
-/

namespace A119561.P4497880783092079944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 (2 ^ n)

end

end A119561.P4497880783092079944

namespace A119561

/-- `A005126(2^n)` -/
def P4497880783092079944.Spec : Prop :=
  ∀ n, P4497880783092079944.a n = A119561 n

end A119561

/-! ## A119561.P13498774713857527007

`A288133(2^n+2)`
-/

namespace A119561.P13498774713857527007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (2 ^ n + 2)

end

end A119561.P13498774713857527007

namespace A119561

/-- `A288133(2^n+2)` -/
def P13498774713857527007.Spec : Prop :=
  ∀ n, P13498774713857527007.a n = A119561 n

end A119561

/-! ## A119561.P12437402098399790651

`2*(A119563(n)/2+1)`
-/

namespace A119561.P12437402098399790651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A119563 n : ℚ) / 2 + 1)

end

end A119561.P12437402098399790651

namespace A119561

/-- `2*(A119563(n)/2+1)` -/
def P12437402098399790651.Spec : Prop :=
  ∀ n, P12437402098399790651.a n = (A119561 n : ℚ)

end A119561

/-!
# A119562: Let F(n) = 2^(2^n) + 1 = the n-th Fermat number, M(n) = 2^n - 1 = the n-th Mersenne number. Then a(n) = F(n) - M(n) + 1 = 2^(2^n) + 1 - (2^n - 1) + 1 = 2^(2^n) - 2^n + 3.

The programs for A119562, the canonical program `A119562.P14580429329586597682` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119562 has offset 0).

The definition of A119562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n-2^n+3` (program `A119562.P14580429329586597682`, by `A119562.P14580429329586597682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119562.P14580429329586597682

`2^2^n-2^n+3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119562

/-- `2^2^n-2^n+3` -/
def P14580429329586597682.Spec : Prop :=
  ∀ n, P14580429329586597682.a n = A119562 n

theorem P14580429329586597682.correct : P14580429329586597682.Spec := by
  intro n
  simp only [A119562]

end A119562

/-! ## A119562.P13534520167068895239

`2*(A119564(n)/2+1)`
-/

namespace A119562.P13534520167068895239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A119564 n : ℚ) / 2 + 1)

end

end A119562.P13534520167068895239

namespace A119562

/-- `2*(A119564(n)/2+1)` -/
def P13534520167068895239.Spec : Prop :=
  ∀ n, P13534520167068895239.a n = (A119562 n : ℚ)

end A119562

/-! ## A119562.P11290006037527576335

`record[A286865(2*(n+1))-(n-3)]`
-/

namespace A119562.P11290006037527576335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286865 (2 * (n + 1)) - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119562.P11290006037527576335

namespace A119562

/-- `record[A286865(2*(n+1))-(n-3)]` -/
def P11290006037527576335.Spec : Prop :=
  ∀ n, P11290006037527576335.a n = A119562 n

end A119562

/-! ## A119562.P197909008999287040

`abs(A001146(n)-A036563(n))`
-/

namespace A119562.P197909008999287040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001146 n - A036563 n|

end

end A119562.P197909008999287040

namespace A119562

/-- `abs(A001146(n)-A036563(n))` -/
def P197909008999287040.Spec : Prop :=
  ∀ n, P197909008999287040.a n = A119562 n

end A119562

/-! ## A119562.P14001430430878167057

`record[A000325(A181815(n+1))+3]`
-/

namespace A119562.P14001430430878167057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (A181815 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119562.P14001430430878167057

namespace A119562

/-- `record[A000325(A181815(n+1))+3]` -/
def P14001430430878167057.Spec : Prop :=
  ∀ n, P14001430430878167057.a n = A119562 n

end A119562

/-!
# A119563: Define F(n) = 2^(2^n)+1 = n-th Fermat number, M(n) = 2^n-1 = the n-th Mersenne number. Then a(n) = F(n)+M(n)-1 = 2^(2^n) + 2^n - 1.

The programs for A119563, the canonical program `A119563.P13499308650170163904` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119563 has offset 0).

The definition of A119563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n+2^n-1` (program `A119563.P13499308650170163904`, by `A119563.P13499308650170163904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119563.P13499308650170163904

`2^2^n+2^n-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119563

/-- `2^2^n+2^n-1` -/
def P13499308650170163904.Spec : Prop :=
  ∀ n, P13499308650170163904.a n = A119563 n

theorem P13499308650170163904.correct : P13499308650170163904.Spec := by
  intro n
  simp only [A119563]

end A119563

/-! ## A119563.P2670164790215733156

`A052944(2^n)`
-/

namespace A119563.P2670164790215733156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 (2 ^ n)

end

end A119563.P2670164790215733156

namespace A119563

/-- `A052944(2^n)` -/
def P2670164790215733156.Spec : Prop :=
  ∀ n, P2670164790215733156.a n = A119563 n

end A119563

/-! ## A119563.P18129528040201185193

`or(∑[A131577(n)], A001146(n))`
-/

namespace A119563.P18129528040201185193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A001146 n)

end

end A119563.P18129528040201185193

namespace A119563

/-- `or(∑[A131577(n)], A001146(n))` -/
def P18129528040201185193.Spec : Prop :=
  ∀ n, P18129528040201185193.a n = A119563 n

end A119563

/-! ## A119563.P509783226106423899

`or(A000079(A000079(n)), A000225(n))`
-/

namespace A119563.P509783226106423899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (A000079 n).toNat) (A000225 n)

end

end A119563.P509783226106423899

namespace A119563

/-- `or(A000079(A000079(n)), A000225(n))` -/
def P509783226106423899.Spec : Prop :=
  ∀ n, P509783226106423899.a n = A119563 n

end A119563

/-!
# A119564: Define F(n) = 2^(2^n)+1 = n-th Fermat number, M(n) = 2^n-1 = the n-th Mersenne number. Then a(n) = F(n)-M(n)-1 = 2^(2^n) - 2^n + 1.

The programs for A119564, the canonical program `A119564.P3633501673913694271` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119564 has offset 0).

The definition of A119564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n-2^n+1` (program `A119564.P3633501673913694271`, by `A119564.P3633501673913694271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119564.P3633501673913694271

`2^2^n-2^n+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119564

/-- `2^2^n-2^n+1` -/
def P3633501673913694271.Spec : Prop :=
  ∀ n, P3633501673913694271.a n = A119564 n

theorem P3633501673913694271.correct : P3633501673913694271.Spec := by
  intro n
  simp only [A119564]

end A119564

/-! ## A119564.P17775879909848823047

`A132045(2^n)`
-/

namespace A119564.P17775879909848823047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 (2 ^ n)

end

end A119564.P17775879909848823047

namespace A119564

/-- `A132045(2^n)` -/
def P17775879909848823047.Spec : Prop :=
  ∀ n, P17775879909848823047.a n = A119564 n

end A119564

/-! ## A119564.P11881640203599215209

`abs(2-A119562(n))`
-/

namespace A119564.P11881640203599215209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A119562 n|

end

end A119564.P11881640203599215209

namespace A119564

/-- `abs(2-A119562(n))` -/
def P11881640203599215209.Spec : Prop :=
  ∀ n, P11881640203599215209.a n = A119564 n

end A119564

/-! ## A119564.P5038045886132808379

`(A145654(2^n)+4)/2`
-/

namespace A119564.P5038045886132808379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145654 (2 ^ n) + 4 : ℚ) / 2

end

end A119564.P5038045886132808379

namespace A119564

/-- `(A145654(2^n)+4)/2` -/
def P5038045886132808379.Spec : Prop :=
  ∀ n, P5038045886132808379.a n = (A119564 n : ℚ)

end A119564

/-! ## A119564.P11284131323034744661

`abs(2^n-1-A001146(n))`
-/

namespace A119564.P11284131323034744661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A001146 n|

end

end A119564.P11284131323034744661

namespace A119564

/-- `abs(2^n-1-A001146(n))` -/
def P11284131323034744661.Spec : Prop :=
  ∀ n, P11284131323034744661.a n = A119564 n

end A119564

/-!
# A119565: a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=10; a(n) = floor(a(n-1) + 1 + a(n-2)/6) for n>=6.

The programs for A119565, there is no canonical definition to state claims against.
-/

/-! ## A119565.P9246219675860479633

`∑[∑[A231122(A082289(n+7)+1)]]`
-/

namespace A119565.P9246219675860479633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231122 (A082289 (n + 7) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119565.P9246219675860479633

/-! ## A119565.P11306883237246915914

`A135663(∑[A116111(2*n+5)+A000045(n)])`
-/

namespace A119565.P11306883237246915914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116111 (2 * n + 5) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A119565.P11306883237246915914

/-! ## A119565.P11404888746534750527

`∑[A061070(A102566(2^n))]`
-/

namespace A119565.P11404888746534750527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (A102566 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119565.P11404888746534750527

/-! ## A119565.P97732921740873816

`∑[A103921(A003114(2*(n+1))²)]`
-/

namespace A119565.P97732921740873816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A003114 (2 * (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119565.P97732921740873816

/-!
# A119569: Number of non-isomorphic Con-Cos groups of order n.

The programs for A119569, there is no canonical definition to state claims against.
-/

/-! ## A119569.P4116910903075686376

`A134681(A364906(n+1))`
-/

namespace A119569.P4116910903075686376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134681 (A364906 (n + 1)).toNat

end

end A119569.P4116910903075686376

/-! ## A119569.P17248090093613733867

`A001055(3*A364906(n+1))`
-/

namespace A119569.P17248090093613733867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (3 * A364906 (n + 1)).toNat

end

end A119569.P17248090093613733867

/-! ## A119569.P3600339359684957542

`A328855(n+1)+A123671(n+1)`
-/

namespace A119569.P3600339359684957542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (n + 1) + A123671 (n + 1)

end

end A119569.P3600339359684957542

/-! ## A119569.P16755388203925892789

`or(A210229(A066389(n+1)), A284093(n))`
-/

namespace A119569.P16755388203925892789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210229 (A066389 (n + 1)).toNat) (A284093 n)

end

end A119569.P16755388203925892789

/-! ## A119569.P5835309126772931058

`A123671(n+1)+A005117(A005361(n+1))`
-/

namespace A119569.P5835309126772931058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123671 (n + 1) + A005117 (A005361 (n + 1)).toNat

end

end A119569.P5835309126772931058

/-!
# A119570: Primes p such that p^2 - p - 1 is not prime.

The programs for A119570, there is no canonical definition to state claims against.
-/

/-! ## A119570.P6005869625184167202

`p?[comp[A002328(n+1)]]`
-/

namespace A119570.P6005869625184167202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119570.P6005869625184167202

/-! ## A119570.P916661800682022132

`floor(sqrt(A119609(n+1)))+1`
-/

namespace A119570.P916661800682022132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A119609 (n + 1)) + 1

end

end A119570.P916661800682022132

/-! ## A119570.P7493629617075167917

`p?[comp[A045546(n+1)+1]]`
-/

namespace A119570.P7493629617075167917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119570.P7493629617075167917

/-! ## A119570.P11895180787963150800

`p?[comp[A094210(n+1)+2]]`
-/

namespace A119570.P11895180787963150800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119570.P11895180787963150800

/-! ## A119570.P13668245718861533726

`p?[comp[A089362(n+1)-2]]`
-/

namespace A119570.P13668245718861533726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119570.P13668245718861533726

/-! ## A119570.P17069064306434085965

`A000010(ceil(sqrt(A119609(n+1))))+1`
-/

namespace A119570.P17069064306434085965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈Real.sqrt (A119609 (n + 1) : ℝ)⌉.toNat + 1

end

end A119570.P17069064306434085965

/-! ## A119570.P13732906317164213212

`A020639(round(sqrt(A119609(n+1)))+1)`
-/

namespace A119570.P13732906317164213212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A119609 (n + 1) : ℝ)) + 1).toNat

end

end A119570.P13732906317164213212

/-! ## A119570.P17671062024256804515

`p?[A157928(A272903(n+2))-A131738(n)]`
-/

namespace A119570.P17671062024256804515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A272903 (n + 2)).toNat - A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119570.P17671062024256804515

/-!
# A119571: a(n) = 2^(2^n - 1) + 2^(2^(n + 1) - 1) + 1.

The programs for A119571, the canonical program `A119571.P17465059737676069611` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119571 has offset 0).

The definition of A119571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119571.P17465059737676069611

`2^(2^n-1)+2^(2^(n+1)-1)+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119571

/-- `2^(2^n-1)+2^(2^(n+1)-1)+1` -/
def P17465059737676069611.Spec : Prop :=
  ∀ n, P17465059737676069611.a n = (A119571 n : ℚ)

end A119571

/-! ## A119571.P5785777540228010014

`(A000215(n)+A000215(n+1))/2`
-/

namespace A119571.P5785777540228010014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000215 n + A000215 (n + 1) : ℚ) / 2

end

end A119571.P5785777540228010014

namespace A119571

/-- `(A000215(n)+A000215(n+1))/2` -/
def P5785777540228010014.Spec : Prop :=
  ∀ n, P5785777540228010014.a n = (A119571 n : ℚ)

end A119571

/-! ## A119571.P1817044738993471247

`A281481(2^n)`
-/

namespace A119571.P1817044738993471247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 (2 ^ n)

end

end A119571.P1817044738993471247

namespace A119571

/-- `A281481(2^n)` -/
def P1817044738993471247.Spec : Prop :=
  ∀ n, P1817044738993471247.a n = A119571 n

end A119571

/-!
# A119572: a(n) = (2^(2^n) + 1 + 2^(2^(n + 1) - 1) + 1)/2.

The programs for A119572, there is no canonical definition to state claims against.
-/

/-! ## A119572.P1161130055674140980

`A365310(n)/2+1`
-/

namespace A119572.P1161130055674140980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365310 n : ℚ) / 2 + 1

end

end A119572.P1161130055674140980

/-! ## A119572.P11191108921090493993

`A001576(2^n-1)`
-/

namespace A119572.P11191108921090493993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 (2 ^ n - 1)

end

end A119572.P11191108921090493993

/-! ## A119572.P109885717070143448

`ceil((A000215(n)/2)²)`
-/

namespace A119572.P109885717070143448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A000215 n : ℚ) / 2) ^ 2⌉

end

end A119572.P109885717070143448

/-! ## A119572.P2639823061389745972

`A005418(2^(n+1))+1`
-/

namespace A119572.P2639823061389745972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (2 ^ (n + 1)) + 1

end

end A119572.P2639823061389745972

/-!
# A119573: Primes that have one of the forms 2^(2^n) + 1, 2^(2^n - 1) + 2^(2^(n + 1) - 1) + 1 or (2^(2^n) + 1 + 2^(2^(n + 1) - 1) + 1)/2.

The programs for A119573, there is no canonical definition to state claims against.
-/

/-! ## A119573.P5066226809991925811

`p?[∑[A125229(A106436(n))]]`
-/

namespace A119573.P5066226809991925811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125229 (A106436 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119573.P5066226809991925811

/-! ## A119573.P3327895957445793746

`p?[∑[A116413(A116449(n))]]`
-/

namespace A119573.P3327895957445793746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116413 (A116449 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119573.P3327895957445793746

/-! ## A119573.P13469718245480751049

`p?[A003601(A224301(a(n-1))/6)]` with `a(0)=-5, a(1)=3, a(2)=5`
-/

namespace A119573.P13469718245480751049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-5, 3, 5] fun n f1 =>
  A003601 (SequenceMachineLib.roundAway ((A224301 (f1 (n - 1)).toNat : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119573.P13469718245480751049

/-!
# A119574: a(n) = binomial(2*n,n)*(n+2)^2/(n+1).

The programs for A119574, the canonical program `A119574.P14004957112172224916` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119574 has offset 0).

The definition of A119574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119574.P14004957112172224916

`A000108(n)*A000290(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A119574

/-- `A000108(n)*A000290(n+2)` -/
def P14004957112172224916.Spec : Prop :=
  ∀ n, P14004957112172224916.a n = A119574 n

theorem P14004957112172224916.correct : P14004957112172224916.Spec := by
  intro n
  simp only [A119574]

end A119574

/-! ## A119574.P7016894119457754619

`(n+2)*(A000777(n)+1)`
-/

namespace A119574.P7016894119457754619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A000777 n + 1)

end

end A119574.P7016894119457754619

namespace A119574

/-- `(n+2)*(A000777(n)+1)` -/
def P7016894119457754619.Spec : Prop :=
  ∀ n, P7016894119457754619.a n = A119574 n

end A119574

/-! ## A119574.P3209138693004397333

`(n+2)*A275329(2*n)`
-/

namespace A119574.P3209138693004397333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A275329 (2 * n)

end

end A119574.P3209138693004397333

namespace A119574

/-- `(n+2)*A275329(2*n)` -/
def P3209138693004397333.Spec : Prop :=
  ∀ n, P3209138693004397333.a n = A119574 n

end A119574

/-! ## A119574.P1957397036425327227

`abs(A168491(n))*(n+2)²`
-/

namespace A119574.P1957397036425327227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * ((n + 2) ^ 2 : ℤ)

end

end A119574.P1957397036425327227

namespace A119574

/-- `abs(A168491(n))*(n+2)²` -/
def P1957397036425327227.Spec : Prop :=
  ∀ n, P1957397036425327227.a n = A119574 n

end A119574

/-! ## A119574.P13701518953207722508

`(n+2)²*Δ[A155587(n)]`
-/

namespace A119574.P13701518953207722508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A119574.P13701518953207722508

namespace A119574

/-- `(n+2)²*Δ[A155587(n)]` -/
def P13701518953207722508.Spec : Prop :=
  ∀ n, P13701518953207722508.a n = A119574 n

end A119574

/-! ## A119574.P6245629234667644317

`(n+2)²*A120588(n+1)`
-/

namespace A119574.P6245629234667644317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A120588 (n + 1)

end

end A119574.P6245629234667644317

namespace A119574

/-- `(n+2)²*A120588(n+1)` -/
def P6245629234667644317.Spec : Prop :=
  ∀ n, P6245629234667644317.a n = A119574 n

end A119574

/-! ## A119574.P12774892903012894243

`(n+2)²*A028303(2*n)`
-/

namespace A119574.P12774892903012894243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A028303 (2 * n)

end

end A119574.P12774892903012894243

namespace A119574

/-- `(n+2)²*A028303(2*n)` -/
def P12774892903012894243.Spec : Prop :=
  ∀ n, P12774892903012894243.a n = A119574 n

end A119574

/-! ## A119574.P14595983429807857607

`(n+2)²*A028304(2*n)`
-/

namespace A119574.P14595983429807857607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A028304 (2 * n)

end

end A119574.P14595983429807857607

namespace A119574

/-- `(n+2)²*A028304(2*n)` -/
def P14595983429807857607.Spec : Prop :=
  ∀ n, P14595983429807857607.a n = A119574 n

end A119574

/-! ## A119574.P7125970744130560326

`(n+2)²*A057977(2*n)`
-/

namespace A119574.P7125970744130560326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A057977 (2 * n)

end

end A119574.P7125970744130560326

namespace A119574

/-- `(n+2)²*A057977(2*n)` -/
def P7125970744130560326.Spec : Prop :=
  ∀ n, P7125970744130560326.a n = A119574 n

end A119574

/-! ## A119574.P3866673023395710132

`(n+2)²*A126120(2*n)`
-/

namespace A119574.P3866673023395710132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A126120 (2 * n)

end

end A119574.P3866673023395710132

namespace A119574

/-- `(n+2)²*A126120(2*n)` -/
def P3866673023395710132.Spec : Prop :=
  ∀ n, P3866673023395710132.a n = A119574 n

end A119574

/-! ## A119574.P10797662890206074917

`(n+2)²*A208355(2*n)`
-/

namespace A119574.P10797662890206074917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A208355 (2 * n)

end

end A119574.P10797662890206074917

namespace A119574

/-- `(n+2)²*A208355(2*n)` -/
def P10797662890206074917.Spec : Prop :=
  ∀ n, P10797662890206074917.a n = A119574 n

end A119574

/-! ## A119574.P391082277059261963

`(n+2)²*A089408(2*n+1)`
-/

namespace A119574.P391082277059261963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A089408 (2 * n + 1)

end

end A119574.P391082277059261963

namespace A119574

/-- `(n+2)²*A089408(2*n+1)` -/
def P391082277059261963.Spec : Prop :=
  ∀ n, P391082277059261963.a n = A119574 n

end A119574

/-! ## A119574.P14064397087177395434

`(n+2)²*A097331(2*n+1)`
-/

namespace A119574.P14064397087177395434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A097331 (2 * n + 1)

end

end A119574.P14064397087177395434

namespace A119574

/-- `(n+2)²*A097331(2*n+1)` -/
def P14064397087177395434.Spec : Prop :=
  ∀ n, P14064397087177395434.a n = A119574 n

end A119574

/-! ## A119574.P15105649167845723061

`abs(A182492(4*n+3))*(n+2)²`
-/

namespace A119574.P15105649167845723061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (4 * n + 3)| * ((n + 2) ^ 2 : ℤ)

end

end A119574.P15105649167845723061

namespace A119574

/-- `abs(A182492(4*n+3))*(n+2)²` -/
def P15105649167845723061.Spec : Prop :=
  ∀ n, P15105649167845723061.a n = A119574 n

end A119574

/-! ## A119574.P10905768635835003575

`A000108(2*n-n)*record[(n-2)²]`
-/

namespace A119574.P10905768635835003575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n - n) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119574.P10905768635835003575

namespace A119574

/-- `A000108(2*n-n)*record[(n-2)²]` -/
def P10905768635835003575.Spec : Prop :=
  ∀ n, P10905768635835003575.a n = A119574 n

end A119574

/-! ## A119574.P213099305082718638

`A001405(2*n)/(n+1)*(n+2)²`
-/

namespace A119574.P213099305082718638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n) : ℚ) / (n + 1 : ℚ) * ((n + 2) ^ 2 : ℚ)

end

end A119574.P213099305082718638

namespace A119574

/-- `A001405(2*n)/(n+1)*(n+2)²` -/
def P213099305082718638.Spec : Prop :=
  ∀ n, P213099305082718638.a n = (A119574 n : ℚ)

end A119574

/-! ## A119574.P9229784168454050990

`A028329(n)/(2*(n+1))*(n+2)²`
-/

namespace A119574.P9229784168454050990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028329 n : ℚ) / (2 * (n + 1) : ℚ) * ((n + 2) ^ 2 : ℚ)

end

end A119574.P9229784168454050990

namespace A119574

/-- `A028329(n)/(2*(n+1))*(n+2)²` -/
def P9229784168454050990.Spec : Prop :=
  ∀ n, P9229784168454050990.a n = (A119574 n : ℚ)

end A119574

/-! ## A119574.P3735901998573423047

`A240530(n)+A110609(n)`
-/

namespace A119574.P3735901998573423047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240530 n + A110609 n

end

end A119574.P3735901998573423047

namespace A119574

/-- `A240530(n)+A110609(n)` -/
def P3735901998573423047.Spec : Prop :=
  ∀ n, P3735901998573423047.a n = A119574 n

end A119574

/-! ## A119574.P5919441901515647796

`A000108(n)*A253909(n+2)`
-/

namespace A119574.P5919441901515647796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A253909 (n + 2)

end

end A119574.P5919441901515647796

namespace A119574

/-- `A000108(n)*A253909(n+2)` -/
def P5919441901515647796.Spec : Prop :=
  ∀ n, P5919441901515647796.a n = A119574 n

end A119574

/-! ## A119574.P6427598581526875189

`A000984(n+1)+A180266(n+1)+A000108(n)`
-/

namespace A119574.P6427598581526875189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) + (A180266 (n + 1) + A000108 n)

end

end A119574.P6427598581526875189

namespace A119574

/-- `A000984(n+1)+A180266(n+1)+A000108(n)` -/
def P6427598581526875189.Spec : Prop :=
  ∀ n, P6427598581526875189.a n = A119574 n

end A119574

/-!
# A119575: a(n) = binomial(2*n,n)*(n+3)^2/(n+1).

The programs for A119575, the canonical program `A119575.P17905336988431938056` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119575 has offset 0).

The definition of A119575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119575.P17905336988431938056

`(n+3)²*A000108(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A119575

/-- `(n+3)²*A000108(n)` -/
def P17905336988431938056.Spec : Prop :=
  ∀ n, P17905336988431938056.a n = A119575 n

theorem P17905336988431938056.correct : P17905336988431938056.Spec := by
  intro n
  simp only [A119575]

end A119575

/-! ## A119575.P11065437247099967731

`abs(A168491(n))*(n+3)²`
-/

namespace A119575.P11065437247099967731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * ((n + 3) ^ 2 : ℤ)

end

end A119575.P11065437247099967731

namespace A119575

/-- `abs(A168491(n))*(n+3)²` -/
def P11065437247099967731.Spec : Prop :=
  ∀ n, P11065437247099967731.a n = A119575 n

end A119575

/-! ## A119575.P14945888515034140953

`(n+3)²*Δ[A155587(n)]`
-/

namespace A119575.P14945888515034140953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A119575.P14945888515034140953

namespace A119575

/-- `(n+3)²*Δ[A155587(n)]` -/
def P14945888515034140953.Spec : Prop :=
  ∀ n, P14945888515034140953.a n = A119575 n

end A119575

/-! ## A119575.P4984073581084630331

`(n+3)²*A120588(n+1)`
-/

namespace A119575.P4984073581084630331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A120588 (n + 1)

end

end A119575.P4984073581084630331

namespace A119575

/-- `(n+3)²*A120588(n+1)` -/
def P4984073581084630331.Spec : Prop :=
  ∀ n, P4984073581084630331.a n = A119575 n

end A119575

/-! ## A119575.P10803268979154277836

`(n+3)²*A028303(2*n)`
-/

namespace A119575.P10803268979154277836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A028303 (2 * n)

end

end A119575.P10803268979154277836

namespace A119575

/-- `(n+3)²*A028303(2*n)` -/
def P10803268979154277836.Spec : Prop :=
  ∀ n, P10803268979154277836.a n = A119575 n

end A119575

/-! ## A119575.P9837430332721588345

`(n+3)²*A028304(2*n)`
-/

namespace A119575.P9837430332721588345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A028304 (2 * n)

end

end A119575.P9837430332721588345

namespace A119575

/-- `(n+3)²*A028304(2*n)` -/
def P9837430332721588345.Spec : Prop :=
  ∀ n, P9837430332721588345.a n = A119575 n

end A119575

/-! ## A119575.P13104466876452722244

`(n+3)²*A057977(2*n)`
-/

namespace A119575.P13104466876452722244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A057977 (2 * n)

end

end A119575.P13104466876452722244

namespace A119575

/-- `(n+3)²*A057977(2*n)` -/
def P13104466876452722244.Spec : Prop :=
  ∀ n, P13104466876452722244.a n = A119575 n

end A119575

/-! ## A119575.P10402482766890703976

`(n+3)²*A089408(2*n+1)`
-/

namespace A119575.P10402482766890703976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A089408 (2 * n + 1)

end

end A119575.P10402482766890703976

namespace A119575

/-- `(n+3)²*A089408(2*n+1)` -/
def P10402482766890703976.Spec : Prop :=
  ∀ n, P10402482766890703976.a n = A119575 n

end A119575

/-! ## A119575.P11386361280986183272

`A000984(n)/(n+1)*(n+3)²`
-/

namespace A119575.P11386361280986183272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (n + 1 : ℚ) * ((n + 3) ^ 2 : ℚ)

end

end A119575.P11386361280986183272

namespace A119575

/-- `A000984(n)/(n+1)*(n+3)²` -/
def P11386361280986183272.Spec : Prop :=
  ∀ n, P11386361280986183272.a n = (A119575 n : ℚ)

end A119575

/-! ## A119575.P15903837811574142242

`abs(A182492(4*n+3))*(n+3)²`
-/

namespace A119575.P15903837811574142242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (4 * n + 3)| * ((n + 3) ^ 2 : ℤ)

end

end A119575.P15903837811574142242

namespace A119575

/-- `abs(A182492(4*n+3))*(n+3)²` -/
def P15903837811574142242.Spec : Prop :=
  ∀ n, P15903837811574142242.a n = A119575 n

end A119575

/-! ## A119575.P11547277533332593490

`A000108(2*n-n)*record[(n-3)²]`
-/

namespace A119575.P11547277533332593490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n - n) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119575.P11547277533332593490

namespace A119575

/-- `A000108(2*n-n)*record[(n-3)²]` -/
def P11547277533332593490.Spec : Prop :=
  ∀ n, P11547277533332593490.a n = A119575 n

end A119575

/-! ## A119575.P2195003077161888384

`(n+3)*(n+3)*A000108(n%(n+1))`
-/

namespace A119575.P2195003077161888384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((n + 3 : ℤ) * A000108 (n % (n + 1)))

end

end A119575.P2195003077161888384

namespace A119575

/-- `(n+3)*(n+3)*A000108(n%(n+1))` -/
def P2195003077161888384.Spec : Prop :=
  ∀ n, P2195003077161888384.a n = A119575 n

theorem P2195003077161888384.correct : P2195003077161888384.Spec := by
  intro n
  simp only [A119575, Nat.add_sub_cancel, A119575.P2195003077161888384.a, A119575.P17905336988431938056.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A119575

/-! ## A119575.P1922945926238912470

`(n+3)*(n+3)*A000108(gcd(n, 2*n))`
-/

namespace A119575.P1922945926238912470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((n + 3 : ℤ) * A000108 (Nat.gcd n (2 * n)))

end

end A119575.P1922945926238912470

namespace A119575

/-- `(n+3)*(n+3)*A000108(gcd(n, 2*n))` -/
def P1922945926238912470.Spec : Prop :=
  ∀ n, P1922945926238912470.a n = A119575 n

theorem P1922945926238912470.correct : P1922945926238912470.Spec := by
  intro n
  simp only [A119575, Nat.add_sub_cancel, A119575.P1922945926238912470.a, A119575.P17905336988431938056.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A119575

/-! ## A119575.P1797552445500476693

`A000108(n)*A000290(n+3)`
-/

namespace A119575.P1797552445500476693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000290 (n + 3)

end

end A119575.P1797552445500476693

namespace A119575

/-- `A000108(n)*A000290(n+3)` -/
def P1797552445500476693.Spec : Prop :=
  ∀ n, P1797552445500476693.a n = A119575 n

end A119575

/-! ## A119575.P14525330759168260573

`A000108(n)*Δ[∑[A005563(n+1)]+n]`
-/

namespace A119575.P14525330759168260573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A119575.P14525330759168260573

namespace A119575

/-- `A000108(n)*Δ[∑[A005563(n+1)]+n]` -/
def P14525330759168260573.Spec : Prop :=
  ∀ n, P14525330759168260573.a n = A119575 n

end A119575

/-! ## A119575.P15292574707541945816

`A037965(n+1)/A110609(n+1)*A119574(n+1)`
-/

namespace A119575.P15292574707541945816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037965 (n + 1) : ℚ) / (A110609 (n + 1) : ℚ) * (A119574 (n + 1) : ℚ)

end

end A119575.P15292574707541945816

namespace A119575

/-- `A037965(n+1)/A110609(n+1)*A119574(n+1)` -/
def P15292574707541945816.Spec : Prop :=
  ∀ n, P15292574707541945816.a n = (A119575 n : ℚ)

end A119575

/-! ## A119575.P3896973783420263768

`(n+3)²*A028364(∑[n])`
-/

namespace A119575.P3896973783420263768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A028364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119575.P3896973783420263768

namespace A119575

/-- `(n+3)²*A028364(∑[n])` -/
def P3896973783420263768.Spec : Prop :=
  ∀ n, P3896973783420263768.a n = A119575 n

end A119575

/-! ## A119575.P18191626722133526092

`(n+3)²*A033820(∑[n])`
-/

namespace A119575.P18191626722133526092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A033820 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119575.P18191626722133526092

namespace A119575

/-- `(n+3)²*A033820(∑[n])` -/
def P18191626722133526092.Spec : Prop :=
  ∀ n, P18191626722133526092.a n = A119575 n

end A119575

/-! ## A119575.P2365536037031782063

`(n+3)²*A039599(∑[n])`
-/

namespace A119575.P2365536037031782063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119575.P2365536037031782063

namespace A119575

/-- `(n+3)²*A039599(∑[n])` -/
def P2365536037031782063.Spec : Prop :=
  ∀ n, P2365536037031782063.a n = A119575 n

end A119575

/-! ## A119575.P2020905671230603419

`(n+3)²*A046527(∑[n])`
-/

namespace A119575.P2020905671230603419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A046527 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119575.P2020905671230603419

namespace A119575

/-- `(n+3)²*A046527(∑[n])` -/
def P2020905671230603419.Spec : Prop :=
  ∀ n, P2020905671230603419.a n = A119575 n

end A119575

/-!
# A119576: a(n) = (n+n^2+n^3)*(binomial(2*n,n)).

The programs for A119576, the canonical program `A119576.P14770277927319120296` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119576 has offset 0).

The definition of A119576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119576.P9697099671251489395

`2*A119577(n)`
-/

namespace A119576.P9697099671251489395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119577 n

end

end A119576.P9697099671251489395

namespace A119576

/-- `2*A119577(n)` -/
def P9697099671251489395.Spec : Prop :=
  ∀ n, P9697099671251489395.a n = A119576 n

end A119576

/-! ## A119576.P14770277927319120296

`(∑[2*n]+1)*A005430(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119576

/-- `(∑[2*n]+1)*A005430(n)` -/
def P14770277927319120296.Spec : Prop :=
  ∀ n, P14770277927319120296.a n = A119576 n

theorem P14770277927319120296.correct : P14770277927319120296.Spec := by
  intro n
  simp only [A119576]

end A119576

/-! ## A119576.P13771357444484846750

`2*A034275(n+1)*∑[n]`
-/

namespace A119576.P13771357444484846750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034275 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A119576.P13771357444484846750

namespace A119576

/-- `2*A034275(n+1)*∑[n]` -/
def P13771357444484846750.Spec : Prop :=
  ∀ n, P13771357444484846750.a n = A119576 n

end A119576

/-! ## A119576.P5927795686421204837

`A000108(n)*Δ[(n^5-n)/5]`
-/

namespace A119576.P5927795686421204837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 5 : ℤ) - (n : ℤ) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) * (f1 (n + 1) - f1 n)

end

end A119576.P5927795686421204837

namespace A119576

/-- `A000108(n)*Δ[(n^5-n)/5]` -/
def P5927795686421204837.Spec : Prop :=
  ∀ n, P5927795686421204837.a n = (A119576 n : ℚ)

end A119576

/-! ## A119576.P3732662681257803465

`round(n/Δ[atan(n)])*A001405(2*n)`
-/

namespace A119576.P3732662681257803465
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (f1 (n + 1) - f1 n)) * A001405 (2 * n)

end

end A119576.P3732662681257803465

namespace A119576

/-- `round(n/Δ[atan(n)])*A001405(2*n)` -/
def P3732662681257803465.Spec : Prop :=
  ∀ n, P3732662681257803465.a n = A119576 n

end A119576

/-! ## A119576.P16179285313644469603

`A000984(n)*A027444(n)`
-/

namespace A119576.P16179285313644469603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A027444 n

end

end A119576.P16179285313644469603

namespace A119576

/-- `A000984(n)*A027444(n)` -/
def P16179285313644469603.Spec : Prop :=
  ∀ n, P16179285313644469603.a n = A119576 n

end A119576

/-! ## A119576.P11695198241947074266

`A001791(n)*A069778(n)`
-/

namespace A119576.P11695198241947074266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n * A069778 n

end

end A119576.P11695198241947074266

namespace A119576

/-- `A001791(n)*A069778(n)` -/
def P11695198241947074266.Spec : Prop :=
  ∀ n, P11695198241947074266.a n = A119576 n

end A119576

/-! ## A119576.P14268078200987758350

`A068875(n)*A110450(n)`
-/

namespace A119576.P14268078200987758350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n * A110450 n

end

end A119576.P14268078200987758350

namespace A119576

/-- `A068875(n)*A110450(n)` -/
def P14268078200987758350.Spec : Prop :=
  ∀ n, P14268078200987758350.a n = A119576 n

end A119576

/-! ## A119576.P4950053865431071172

`A002378(n)*A034275(n+1)`
-/

namespace A119576.P4950053865431071172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A034275 (n + 1)

end

end A119576.P4950053865431071172

namespace A119576

/-- `A002378(n)*A034275(n+1)` -/
def P4950053865431071172.Spec : Prop :=
  ∀ n, P4950053865431071172.a n = A119576 n

end A119576

/-! ## A119576.P10545581399302184453

`A110450(n)*A262543(n+1)`
-/

namespace A119576.P10545581399302184453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n * A262543 (n + 1)

end

end A119576.P10545581399302184453

namespace A119576

/-- `A110450(n)*A262543(n+1)` -/
def P10545581399302184453.Spec : Prop :=
  ∀ n, P10545581399302184453.a n = A119576 n

end A119576

/-! ## A119576.P8327432506901322700

`A034267(n)*A180291(n+2)`
-/

namespace A119576.P8327432506901322700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034267 n * A180291 (n + 2)

end

end A119576.P8327432506901322700

namespace A119576

/-- `A034267(n)*A180291(n+2)` -/
def P8327432506901322700.Spec : Prop :=
  ∀ n, P8327432506901322700.a n = A119576 n

end A119576

/-! ## A119576.P14157493865821841053

`2*A027444(n)*A088218(n)`
-/

namespace A119576.P14157493865821841053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027444 n * A088218 n)

end

end A119576.P14157493865821841053

namespace A119576

/-- `2*A027444(n)*A088218(n)` -/
def P14157493865821841053.Spec : Prop :=
  ∀ n, P14157493865821841053.a n = A119576 n

end A119576

/-! ## A119576.P17486186607988397680

`2*A034267(n)*A253145(n)`
-/

namespace A119576.P17486186607988397680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034267 n * A253145 n)

end

end A119576.P17486186607988397680

namespace A119576

/-- `2*A034267(n)*A253145(n)` -/
def P17486186607988397680.Spec : Prop :=
  ∀ n, P17486186607988397680.a n = A119576 n

end A119576

/-! ## A119576.P4081517735319021462

`lcm(A005430(n), A034275(n+1))`
-/

namespace A119576.P4081517735319021462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005430 n) (A034275 (n + 1))

end

end A119576.P4081517735319021462

namespace A119576

/-- `lcm(A005430(n), A034275(n+1))` -/
def P4081517735319021462.Spec : Prop :=
  ∀ n, (P4081517735319021462.a n : ℤ) = A119576 n

end A119576

/-! ## A119576.P10595505589235882922

`(A011379(n)+n)*A000984(n)`
-/

namespace A119576.P10595505589235882922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011379 n + (n : ℤ)) * A000984 n

end

end A119576.P10595505589235882922

namespace A119576

/-- `(A011379(n)+n)*A000984(n)` -/
def P10595505589235882922.Spec : Prop :=
  ∀ n, P10595505589235882922.a n = A119576 n

end A119576

/-! ## A119576.P12342229046418313488

`n*A000984(n)*∑[A004277(n)]`
-/

namespace A119576.P12342229046418313488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000984 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119576.P12342229046418313488

namespace A119576

/-- `n*A000984(n)*∑[A004277(n)]` -/
def P12342229046418313488.Spec : Prop :=
  ∀ n, P12342229046418313488.a n = A119576 n

end A119576

/-! ## A119576.P8694893579409275812

`A002061(n+1)*A100071(2*n)`
-/

namespace A119576.P8694893579409275812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A100071 (2 * n)

end

end A119576.P8694893579409275812

namespace A119576

/-- `A002061(n+1)*A100071(2*n)` -/
def P8694893579409275812.Spec : Prop :=
  ∀ n, P8694893579409275812.a n = A119576 n

end A119576

/-! ## A119576.P16181188971302408024

`(n+1)*A000108(n)*A027444(n)`
-/

namespace A119576.P16181188971302408024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * A027444 n

end

end A119576.P16181188971302408024

namespace A119576

/-- `(n+1)*A000108(n)*A027444(n)` -/
def P16181188971302408024.Spec : Prop :=
  ∀ n, P16181188971302408024.a n = A119576 n

end A119576

/-! ## A119576.P8719581228523879341

`(n+1)*A000108(n)*n*∑[A004277(n)]`
-/

namespace A119576.P8719581228523879341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A119576.P8719581228523879341

namespace A119576

/-- `(n+1)*A000108(n)*n*∑[A004277(n)]` -/
def P8719581228523879341.Spec : Prop :=
  ∀ n, P8719581228523879341.a n = A119576 n

end A119576

/-! ## A119576.P2780096510920043181

`A005430(n)+A002378(n)*A005430(n)`
-/

namespace A119576.P2780096510920043181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n + A002378 n * A005430 n

end

end A119576.P2780096510920043181

namespace A119576

/-- `A005430(n)+A002378(n)*A005430(n)` -/
def P2780096510920043181.Spec : Prop :=
  ∀ n, P2780096510920043181.a n = A119576 n

end A119576

/-!
# A119577: a(n) = (n+n^2+n^3)*(binomial(2*n,n))/2.

The programs for A119577, the canonical program `A119577.P2109827519578747427` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119577 has offset 0).

The definition of A119577 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119576, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119577.P2109827519578747427

`A119576(n)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119577

/-- `A119576(n)/2` -/
def P2109827519578747427.Spec : Prop :=
  ∀ n, P2109827519578747427.a n = (A119577 n : ℚ)

end A119577

/-! ## A119577.P9274503653361840073

`∑[n+1]*A034267(n)`
-/

namespace A119577.P9274503653361840073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A034267 n

end

end A119577.P9274503653361840073

namespace A119577

/-- `∑[n+1]*A034267(n)` -/
def P9274503653361840073.Spec : Prop :=
  ∀ n, P9274503653361840073.a n = A119577 n

end A119577

/-! ## A119577.P7539849436644040873

`∑[n]*A034275(n+1)`
-/

namespace A119577.P7539849436644040873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A034275 (n + 1)

end

end A119577.P7539849436644040873

namespace A119577

/-- `∑[n]*A034275(n+1)` -/
def P7539849436644040873.Spec : Prop :=
  ∀ n, P7539849436644040873.a n = A119577 n

end A119577

/-! ## A119577.P1064164082017411795

`A000108(n)*floor(Δ[n^5/10])`
-/

namespace A119577.P1064164082017411795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * ⌊f1 (n + 1) - f1 n⌋

end

end A119577.P1064164082017411795

namespace A119577

/-- `A000108(n)*floor(Δ[n^5/10])` -/
def P1064164082017411795.Spec : Prop :=
  ∀ n, P1064164082017411795.a n = A119577 n

end A119577

/-! ## A119577.P16708940171179976358

`floor(Δ[n^5/10])*A120588(n+1)`
-/

namespace A119577.P16708940171179976358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ * A120588 (n + 1)

end

end A119577.P16708940171179976358

namespace A119577

/-- `floor(Δ[n^5/10])*A120588(n+1)` -/
def P16708940171179976358.Spec : Prop :=
  ∀ n, P16708940171179976358.a n = A119577 n

end A119577

/-! ## A119577.P10149685915534999394

`A027444(n)*A088218(n)`
-/

namespace A119577.P10149685915534999394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n * A088218 n

end

end A119577.P10149685915534999394

namespace A119577

/-- `A027444(n)*A088218(n)` -/
def P10149685915534999394.Spec : Prop :=
  ∀ n, P10149685915534999394.a n = A119577 n

end A119577

/-! ## A119577.P12957487837940071656

`A034267(n)*A253145(n)`
-/

namespace A119577.P12957487837940071656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034267 n * A253145 n

end

end A119577.P12957487837940071656

namespace A119577

/-- `A034267(n)*A253145(n)` -/
def P12957487837940071656.Spec : Prop :=
  ∀ n, P12957487837940071656.a n = A119577 n

end A119577

/-! ## A119577.P2926404599714100509

`A000984(n)/2*A027444(n)`
-/

namespace A119577.P2926404599714100509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / 2 * (A027444 n : ℚ)

end

end A119577.P2926404599714100509

namespace A119577

/-- `A000984(n)/2*A027444(n)` -/
def P2926404599714100509.Spec : Prop :=
  ∀ n, P2926404599714100509.a n = (A119577 n : ℚ)

end A119577

/-! ## A119577.P13915678888109949256

`A001791(n)/2*A069778(n)`
-/

namespace A119577.P13915678888109949256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001791 n : ℚ) / 2 * (A069778 n : ℚ)

end

end A119577.P13915678888109949256

namespace A119577

/-- `A001791(n)/2*A069778(n)` -/
def P13915678888109949256.Spec : Prop :=
  ∀ n, P13915678888109949256.a n = (A119577 n : ℚ)

end A119577

/-! ## A119577.P13317230836438211469

`A068875(n)/2*A110450(n)`
-/

namespace A119577.P13317230836438211469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068875 n : ℚ) / 2 * (A110450 n : ℚ)

end

end A119577.P13317230836438211469

namespace A119577

/-- `A068875(n)/2*A110450(n)` -/
def P13317230836438211469.Spec : Prop :=
  ∀ n, P13317230836438211469.a n = (A119577 n : ℚ)

end A119577

/-! ## A119577.P6329110428421169677

`(A011379(n)+n)*A088218(n)`
-/

namespace A119577.P6329110428421169677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011379 n + (n : ℤ)) * A088218 n

end

end A119577.P6329110428421169677

namespace A119577

/-- `(A011379(n)+n)*A088218(n)` -/
def P6329110428421169677.Spec : Prop :=
  ∀ n, P6329110428421169677.a n = A119577 n

end A119577

/-! ## A119577.P11056968660400780061

`A034275(n+1)/2*A002378(n)`
-/

namespace A119577.P11056968660400780061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034275 (n + 1) : ℚ) / 2 * (A002378 n : ℚ)

end

end A119577.P11056968660400780061

namespace A119577

/-- `A034275(n+1)/2*A002378(n)` -/
def P11056968660400780061.Spec : Prop :=
  ∀ n, P11056968660400780061.a n = (A119577 n : ℚ)

end A119577

/-! ## A119577.P17243853918355483434

`A262543(n+1)/2*A110450(n)`
-/

namespace A119577.P17243853918355483434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262543 (n + 1) : ℚ) / 2 * (A110450 n : ℚ)

end

end A119577.P17243853918355483434

namespace A119577

/-- `A262543(n+1)/2*A110450(n)` -/
def P17243853918355483434.Spec : Prop :=
  ∀ n, P17243853918355483434.a n = (A119577 n : ℚ)

end A119577

/-! ## A119577.P2046265648475151990

`lcm(A005430(n)/2, A034275(n+1))`
-/

namespace A119577.P2046265648475151990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A005430 n : ℚ) / 2)) (A034275 (n + 1))

end

end A119577.P2046265648475151990

namespace A119577

/-- `lcm(A005430(n)/2, A034275(n+1))` -/
def P2046265648475151990.Spec : Prop :=
  ∀ n, (P2046265648475151990.a n : ℤ) = A119577 n

end A119577

/-! ## A119577.P8349235431718574000

`∑[n]*∑[A004277(n)]*A000108(n)`
-/

namespace A119577.P8349235431718574000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j) * A000108 n

end

end A119577.P8349235431718574000

namespace A119577

/-- `∑[n]*∑[A004277(n)]*A000108(n)` -/
def P8349235431718574000.Spec : Prop :=
  ∀ n, P8349235431718574000.a n = A119577 n

end A119577

/-! ## A119577.P11509132385197959639

`A100071(2*n)/2*A002061(n+1)`
-/

namespace A119577.P11509132385197959639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (2 * n) : ℚ) / 2 * (A002061 (n + 1) : ℚ)

end

end A119577.P11509132385197959639

namespace A119577

/-- `A100071(2*n)/2*A002061(n+1)` -/
def P11509132385197959639.Spec : Prop :=
  ∀ n, P11509132385197959639.a n = (A119577 n : ℚ)

end A119577

/-! ## A119577.P5474925846727885553

`n*A210736(2*n)*A002061(n+1)`
-/

namespace A119577.P5474925846727885553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210736 (2 * n) * A002061 (n + 1)

end

end A119577.P5474925846727885553

namespace A119577

/-- `n*A210736(2*n)*A002061(n+1)` -/
def P5474925846727885553.Spec : Prop :=
  ∀ n, P5474925846727885553.a n = A119577 n

end A119577

/-! ## A119577.P10713574460568600452

`(n²+1+n)*A000217(n)*A000108(n)`
-/

namespace A119577.P10713574460568600452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℤ) * A000217 n * A000108 n

end

end A119577.P10713574460568600452

namespace A119577

/-- `(n²+1+n)*A000217(n)*A000108(n)` -/
def P10713574460568600452.Spec : Prop :=
  ∀ n, P10713574460568600452.a n = A119577 n

end A119577

/-! ## A119577.P6098014852430599553

`A000108(n)*A002061(n+1)*A000217(n)`
-/

namespace A119577.P6098014852430599553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A002061 (n + 1) * A000217 n

end

end A119577.P6098014852430599553

namespace A119577

/-- `A000108(n)*A002061(n+1)*A000217(n)` -/
def P6098014852430599553.Spec : Prop :=
  ∀ n, P6098014852430599553.a n = A119577 n

end A119577

/-!
# A119578: a(n) = (n + n^2)*binomial(2*n,n)/2.

The programs for A119578, the canonical program `A119578.P16414005969838283328` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119578 has offset 0).

The definition of A119578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119578.P16414005969838283328

`A000217(n)*A000984(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119578

/-- `A000217(n)*A000984(n)` -/
def P16414005969838283328.Spec : Prop :=
  ∀ n, P16414005969838283328.a n = A119578 n

theorem P16414005969838283328.correct : P16414005969838283328.Spec := by
  intro n
  simp only [A119578]

end A119578

/-! ## A119578.P12724847670471041734

`A119579(n)/2`
-/

namespace A119578.P12724847670471041734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119579 n : ℚ) / 2

end

end A119578.P12724847670471041734

namespace A119578

/-- `A119579(n)/2` -/
def P12724847670471041734.Spec : Prop :=
  ∀ n, P12724847670471041734.a n = (A119578 n : ℚ)

end A119578

/-! ## A119578.P2920705994205294160

`n*A097070(n+1)`
-/

namespace A119578.P2920705994205294160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097070 (n + 1)

end

end A119578.P2920705994205294160

namespace A119578

/-- `n*A097070(n+1)` -/
def P2920705994205294160.Spec : Prop :=
  ∀ n, P2920705994205294160.a n = A119578 n

end A119578

/-! ## A119578.P6711752614327462088

`∑[n]*record[A081668(n)]`
-/

namespace A119578.P6711752614327462088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A119578.P6711752614327462088

namespace A119578

/-- `∑[n]*record[A081668(n)]` -/
def P6711752614327462088.Spec : Prop :=
  ∀ n, P6711752614327462088.a n = A119578 n

end A119578

/-! ## A119578.P11797796151597361303

`∑[n]*record[A089849(n)]`
-/

namespace A119578.P11797796151597361303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A119578.P11797796151597361303

namespace A119578

/-- `∑[n]*record[A089849(n)]` -/
def P11797796151597361303.Spec : Prop :=
  ∀ n, P11797796151597361303.a n = A119578 n

end A119578

/-! ## A119578.P14834299876003177672

`∑[n]*record[A126869(n)]`
-/

namespace A119578.P14834299876003177672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A119578.P14834299876003177672

namespace A119578

/-- `∑[n]*record[A126869(n)]` -/
def P14834299876003177672.Spec : Prop :=
  ∀ n, P14834299876003177672.a n = A119578 n

end A119578

/-! ## A119578.P3777582500844851533

`∑[n]*record[A126930(n)]`
-/

namespace A119578.P3777582500844851533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A119578.P3777582500844851533

namespace A119578

/-- `∑[n]*record[A126930(n)]` -/
def P3777582500844851533.Spec : Prop :=
  ∀ n, P3777582500844851533.a n = A119578 n

end A119578

/-! ## A119578.P13722636674870616967

`∑[n]*record[A241543(n)]`
-/

namespace A119578.P13722636674870616967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A119578.P13722636674870616967

namespace A119578

/-- `∑[n]*record[A241543(n)]` -/
def P13722636674870616967.Spec : Prop :=
  ∀ n, P13722636674870616967.a n = A119578 n

end A119578

/-! ## A119578.P10579710667764570499

`(A244174(n)-1)*∑[n]`
-/

namespace A119578.P10579710667764570499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244174 n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A119578.P10579710667764570499

namespace A119578

/-- `(A244174(n)-1)*∑[n]` -/
def P10579710667764570499.Spec : Prop :=
  ∀ n, P10579710667764570499.a n = A119578 n

end A119578

/-! ## A119578.P3751802121156761377

`∑[n]*A001405(2*n)`
-/

namespace A119578.P3751802121156761377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001405 (2 * n)

end

end A119578.P3751802121156761377

namespace A119578

/-- `∑[n]*A001405(2*n)` -/
def P3751802121156761377.Spec : Prop :=
  ∀ n, P3751802121156761377.a n = A119578 n

end A119578

/-! ## A119578.P9860855553533673485

`∑[n]*A056040(2*n)`
-/

namespace A119578.P9860855553533673485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056040 (2 * n)

end

end A119578.P9860855553533673485

namespace A119578

/-- `∑[n]*A056040(2*n)` -/
def P9860855553533673485.Spec : Prop :=
  ∀ n, P9860855553533673485.a n = A119578 n

end A119578

/-! ## A119578.P2743306811114195991

`∑[n]*A063886(2*n)`
-/

namespace A119578.P2743306811114195991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A063886 (2 * n)

end

end A119578.P2743306811114195991

namespace A119578

/-- `∑[n]*A063886(2*n)` -/
def P2743306811114195991.Spec : Prop :=
  ∀ n, P2743306811114195991.a n = A119578 n

end A119578

/-! ## A119578.P13922569779572949576

`∑[n]*A081668(2*n)`
-/

namespace A119578.P13922569779572949576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A081668 (2 * n)

end

end A119578.P13922569779572949576

namespace A119578

/-- `∑[n]*A081668(2*n)` -/
def P13922569779572949576.Spec : Prop :=
  ∀ n, P13922569779572949576.a n = A119578 n

end A119578

/-! ## A119578.P13529222683981749427

`∑[2*n]*A088218(n)`
-/

namespace A119578.P13529222683981749427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A088218 n

end

end A119578.P13529222683981749427

namespace A119578

/-- `∑[2*n]*A088218(n)` -/
def P13529222683981749427.Spec : Prop :=
  ∀ n, P13529222683981749427.a n = A119578 n

end A119578

/-! ## A119578.P6629717915580723267

`∑[n]*A089849(2*n)`
-/

namespace A119578.P6629717915580723267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A089849 (2 * n)

end

end A119578.P6629717915580723267

namespace A119578

/-- `∑[n]*A089849(2*n)` -/
def P6629717915580723267.Spec : Prop :=
  ∀ n, P6629717915580723267.a n = A119578 n

end A119578

/-! ## A119578.P1219135639794154181

`∑[n]*A126869(2*n)`
-/

namespace A119578.P1219135639794154181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A126869 (2 * n)

end

end A119578.P1219135639794154181

namespace A119578

/-- `∑[n]*A126869(2*n)` -/
def P1219135639794154181.Spec : Prop :=
  ∀ n, P1219135639794154181.a n = A119578 n

end A119578

/-! ## A119578.P12702674811296731259

`∑[n]*A126930(2*n)`
-/

namespace A119578.P12702674811296731259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A126930 (2 * n)

end

end A119578.P12702674811296731259

namespace A119578

/-- `∑[n]*A126930(2*n)` -/
def P12702674811296731259.Spec : Prop :=
  ∀ n, P12702674811296731259.a n = A119578 n

end A119578

/-! ## A119578.P1351042865553134253

`∑[n]*A128014(2*n)`
-/

namespace A119578.P1351042865553134253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A128014 (2 * n)

end

end A119578.P1351042865553134253

namespace A119578

/-- `∑[n]*A128014(2*n)` -/
def P1351042865553134253.Spec : Prop :=
  ∀ n, P1351042865553134253.a n = A119578 n

end A119578

/-! ## A119578.P16297283990872694147

`∑[n]*A129383(2*n)`
-/

namespace A119578.P16297283990872694147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A129383 (2 * n)

end

end A119578.P16297283990872694147

namespace A119578

/-- `∑[n]*A129383(2*n)` -/
def P16297283990872694147.Spec : Prop :=
  ∀ n, P16297283990872694147.a n = A119578 n

end A119578

/-! ## A119578.P5904752836977501627

`∑[n/2]*A028329(n)`
-/

namespace A119578.P5904752836977501627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A028329 n : ℚ)

end

end A119578.P5904752836977501627

namespace A119578

/-- `∑[n/2]*A028329(n)` -/
def P5904752836977501627.Spec : Prop :=
  ∀ n, P5904752836977501627.a n = (A119578 n : ℚ)

end A119578

/-!
# A119579: a(n) = (n + n^2)*(binomial(2*n, n)).

The programs for A119579, the canonical program `A119579.P9682905404342133756` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119579 has offset 0).

The definition of A119579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119579.P9682905404342133756

`A002378(n)*A000984(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119579

/-- `A002378(n)*A000984(n)` -/
def P9682905404342133756.Spec : Prop :=
  ∀ n, P9682905404342133756.a n = A119579 n

theorem P9682905404342133756.correct : P9682905404342133756.Spec := by
  intro n
  simp only [A119579]

end A119579

/-! ## A119579.P15779953411606496779

`∑[n]*record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=2`
-/

namespace A119579.P15779953411606496779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A119579.P15779953411606496779

namespace A119579

/-- `∑[n]*record[a(n-1)/(floor(n/2)/n-1)]` -/
def P15779953411606496779.Spec : Prop :=
  ∀ n, P15779953411606496779.a n = (A119579 n : ℚ)

end A119579

/-! ## A119579.P11914547288380396267

`(n+1)*n*record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A119579.P11914547288380396267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A119579.P11914547288380396267

namespace A119579

/-- `(n+1)*n*record[a(n-1)/(floor(n/2)/n-1)]` -/
def P11914547288380396267.Spec : Prop :=
  ∀ n, P11914547288380396267.a n = (A119579 n : ℚ)

end A119579

/-! ## A119579.P10517649299188568873

`2*A119578(n)`
-/

namespace A119579.P10517649299188568873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119578 n

end

end A119579.P10517649299188568873

namespace A119579

/-- `2*A119578(n)` -/
def P10517649299188568873.Spec : Prop :=
  ∀ n, P10517649299188568873.a n = A119579 n

end A119579

/-! ## A119579.P14080159465249992085

`∑[n]*A028329(n)`
-/

namespace A119579.P14080159465249992085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A028329 n

end

end A119579.P14080159465249992085

namespace A119579

/-- `∑[n]*A028329(n)` -/
def P14080159465249992085.Spec : Prop :=
  ∀ n, P14080159465249992085.a n = A119579 n

end A119579

/-! ## A119579.P9027513319053775029

`∑[n]*A100320(n)`
-/

namespace A119579.P9027513319053775029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A100320 n

end

end A119579.P9027513319053775029

namespace A119579

/-- `∑[n]*A100320(n)` -/
def P9027513319053775029.Spec : Prop :=
  ∀ n, P9027513319053775029.a n = A119579 n

end A119579

/-! ## A119579.P16699836205023000823

`(n+1)*A005430(n)`
-/

namespace A119579.P16699836205023000823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005430 n

end

end A119579.P16699836205023000823

namespace A119579

/-- `(n+1)*A005430(n)` -/
def P16699836205023000823.Spec : Prop :=
  ∀ n, P16699836205023000823.a n = A119579 n

end A119579

/-! ## A119579.P7657533296262133134

`n*A037965(n+1)`
-/

namespace A119579.P7657533296262133134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037965 (n + 1)

end

end A119579.P7657533296262133134

namespace A119579

/-- `n*A037965(n+1)` -/
def P7657533296262133134.Spec : Prop :=
  ∀ n, P7657533296262133134.a n = A119579 n

end A119579

/-! ## A119579.P13376596743318609805

`n*A189911(2*n)`
-/

namespace A119579.P13376596743318609805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189911 (2 * n)

end

end A119579.P13376596743318609805

namespace A119579

/-- `n*A189911(2*n)` -/
def P13376596743318609805.Spec : Prop :=
  ∀ n, P13376596743318609805.a n = A119579 n

end A119579

/-! ## A119579.P16845464269507824145

`(n+1)²*A001791(n)`
-/

namespace A119579.P16845464269507824145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A001791 n

end

end A119579.P16845464269507824145

namespace A119579

/-- `(n+1)²*A001791(n)` -/
def P16845464269507824145.Spec : Prop :=
  ∀ n, P16845464269507824145.a n = A119579 n

end A119579

/-! ## A119579.P4397023547069420531

`(A134760(n)+1)*∑[n]`
-/

namespace A119579.P4397023547069420531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134760 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A119579.P4397023547069420531

namespace A119579

/-- `(A134760(n)+1)*∑[n]` -/
def P4397023547069420531.Spec : Prop :=
  ∀ n, P4397023547069420531.a n = A119579 n

end A119579

/-! ## A119579.P2432357524831489928

`(n+1)*(A319924(n)-1)`
-/

namespace A119579.P2432357524831489928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A319924 n - 1)

end

end A119579.P2432357524831489928

namespace A119579

/-- `(n+1)*(A319924(n)-1)` -/
def P2432357524831489928.Spec : Prop :=
  ∀ n, P2432357524831489928.a n = A119579 n

end A119579

/-! ## A119579.P1460761554247142209

`2*n*A097070(n+1)`
-/

namespace A119579.P1460761554247142209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A097070 (n + 1))

end

end A119579.P1460761554247142209

namespace A119579

/-- `2*n*A097070(n+1)` -/
def P1460761554247142209.Spec : Prop :=
  ∀ n, P1460761554247142209.a n = A119579 n

end A119579

/-! ## A119579.P9848312918847860168

`(n+1)*A100071(2*n)`
-/

namespace A119579.P9848312918847860168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A100071 (2 * n)

end

end A119579.P9848312918847860168

namespace A119579

/-- `(n+1)*A100071(2*n)` -/
def P9848312918847860168.Spec : Prop :=
  ∀ n, P9848312918847860168.a n = A119579 n

end A119579

/-! ## A119579.P9106035104011984483

`(n+1)*A212303(2*n)`
-/

namespace A119579.P9106035104011984483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212303 (2 * n)

end

end A119579.P9106035104011984483

namespace A119579

/-- `(n+1)*A212303(2*n)` -/
def P9106035104011984483.Spec : Prop :=
  ∀ n, P9106035104011984483.a n = A119579 n

end A119579

/-! ## A119579.P13865604505473505037

`(n+1)*A218073(2*n)`
-/

namespace A119579.P13865604505473505037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A218073 (2 * n)

end

end A119579.P13865604505473505037

namespace A119579

/-- `(n+1)*A218073(2*n)` -/
def P13865604505473505037.Spec : Prop :=
  ∀ n, P13865604505473505037.a n = A119579 n

end A119579

/-! ## A119579.P8387754598845606816

`(n+1)²*Δ[A279561(n)]`
-/

namespace A119579.P8387754598845606816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A119579.P8387754598845606816

namespace A119579

/-- `(n+1)²*Δ[A279561(n)]` -/
def P8387754598845606816.Spec : Prop :=
  ∀ n, P8387754598845606816.a n = A119579 n

end A119579

/-! ## A119579.P5458574387613062291

`∑[n]*A047073(2*n+1)`
-/

namespace A119579.P5458574387613062291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A047073 (2 * n + 1)

end

end A119579.P5458574387613062291

namespace A119579

/-- `∑[n]*A047073(2*n+1)` -/
def P5458574387613062291.Spec : Prop :=
  ∀ n, P5458574387613062291.a n = A119579 n

end A119579

/-! ## A119579.P2015889793869791010

`∑[n]*A063886(2*n+1)`
-/

namespace A119579.P2015889793869791010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A063886 (2 * n + 1)

end

end A119579.P2015889793869791010

namespace A119579

/-- `∑[n]*A063886(2*n+1)` -/
def P2015889793869791010.Spec : Prop :=
  ∀ n, P2015889793869791010.a n = A119579 n

end A119579

/-! ## A119579.P16784552797472218269

`∑[n]*A335974(2*n+1)`
-/

namespace A119579.P16784552797472218269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A335974 (2 * n + 1)

end

end A119579.P16784552797472218269

namespace A119579

/-- `∑[n]*A335974(2*n+1)` -/
def P16784552797472218269.Spec : Prop :=
  ∀ n, P16784552797472218269.a n = A119579 n

end A119579

/-!
# A119580: a(n) = (n^2+n^3)*binomial(2*n,n).

The programs for A119580, the canonical program `A119580.P11477404399209456439` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119580 has offset 0).

The definition of A119580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119580.P11477404399209456439

`(n*(n+1))²*A000108(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A119580

/-- `(n*(n+1))²*A000108(n)` -/
def P11477404399209456439.Spec : Prop :=
  ∀ n, P11477404399209456439.a n = A119580 n

theorem P11477404399209456439.correct : P11477404399209456439.Spec := by
  intro n
  simp only [A119580]

end A119580

/-! ## A119580.P3150038450237525917

`A000984(n)*A011379(n)`
-/

namespace A119580.P3150038450237525917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A011379 n

end

end A119580.P3150038450237525917

namespace A119580

/-- `A000984(n)*A011379(n)` -/
def P3150038450237525917.Spec : Prop :=
  ∀ n, P3150038450237525917.a n = A119580 n

end A119580

/-! ## A119580.P16520700761797838625

`2*A119582(n)`
-/

namespace A119580.P16520700761797838625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119582 n

end

end A119580.P16520700761797838625

namespace A119580

/-- `2*A119582(n)` -/
def P16520700761797838625.Spec : Prop :=
  ∀ n, P16520700761797838625.a n = A119580 n

end A119580

/-! ## A119580.P1731091959515520046

`n*A119579(n)`
-/

namespace A119580.P1731091959515520046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119579 n

end

end A119580.P1731091959515520046

namespace A119580

/-- `n*A119579(n)` -/
def P1731091959515520046.Spec : Prop :=
  ∀ n, P1731091959515520046.a n = A119580 n

end A119580

/-! ## A119580.P12899599541426057697

`(n+1)*A002736(n)`
-/

namespace A119580.P12899599541426057697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002736 n

end

end A119580.P12899599541426057697

namespace A119580

/-- `(n+1)*A002736(n)` -/
def P12899599541426057697.Spec : Prop :=
  ∀ n, P12899599541426057697.a n = A119580 n

end A119580

/-! ## A119580.P13677503959458379013

`2*n*A119578(n)`
-/

namespace A119580.P13677503959458379013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A119578 n)

end

end A119580.P13677503959458379013

namespace A119580

/-- `2*n*A119578(n)` -/
def P13677503959458379013.Spec : Prop :=
  ∀ n, P13677503959458379013.a n = A119580 n

end A119580

/-! ## A119580.P6704869338503649358

`A037965(n+1)*n²`
-/

namespace A119580.P6704869338503649358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037965 (n + 1) * (n ^ 2 : ℤ)

end

end A119580.P6704869338503649358

namespace A119580

/-- `A037965(n+1)*n²` -/
def P6704869338503649358.Spec : Prop :=
  ∀ n, P6704869338503649358.a n = A119580 n

end A119580

/-! ## A119580.P1758140491679983548

`(n+1)²*A110609(n)`
-/

namespace A119580.P1758140491679983548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A110609 n

end

end A119580.P1758140491679983548

namespace A119580

/-- `(n+1)²*A110609(n)` -/
def P1758140491679983548.Spec : Prop :=
  ∀ n, P1758140491679983548.a n = A119580 n

end A119580

/-! ## A119580.P11756541348208374364

`n²*A189911(2*n)`
-/

namespace A119580.P11756541348208374364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A189911 (2 * n)

end

end A119580.P11756541348208374364

namespace A119580

/-- `n²*A189911(2*n)` -/
def P11756541348208374364.Spec : Prop :=
  ∀ n, P11756541348208374364.a n = A119580 n

end A119580

/-! ## A119580.P5850896708440352673

`∑[2*n]*A005430(n)`
-/

namespace A119580.P5850896708440352673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005430 n

end

end A119580.P5850896708440352673

namespace A119580

/-- `∑[2*n]*A005430(n)` -/
def P5850896708440352673.Spec : Prop :=
  ∀ n, P5850896708440352673.a n = A119580 n

end A119580

/-! ## A119580.P9429537104622543301

`n*∑[n]*A028329(n)`
-/

namespace A119580.P9429537104622543301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A028329 n)

end

end A119580.P9429537104622543301

namespace A119580

/-- `n*∑[n]*A028329(n)` -/
def P9429537104622543301.Spec : Prop :=
  ∀ n, P9429537104622543301.a n = A119580 n

end A119580

/-! ## A119580.P2624801028249471546

`n*∑[n]*A100320(n)`
-/

namespace A119580.P2624801028249471546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A100320 n)

end

end A119580.P2624801028249471546

namespace A119580

/-- `n*∑[n]*A100320(n)` -/
def P2624801028249471546.Spec : Prop :=
  ∀ n, P2624801028249471546.a n = A119580 n

end A119580

/-! ## A119580.P10121284079688700718

`2*A097070(n+1)*n²`
-/

namespace A119580.P10121284079688700718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097070 (n + 1) * (n ^ 2 : ℤ)

end

end A119580.P10121284079688700718

namespace A119580

/-- `2*A097070(n+1)*n²` -/
def P10121284079688700718.Spec : Prop :=
  ∀ n, P10121284079688700718.a n = A119580 n

end A119580

/-! ## A119580.P13837824031502310532

`∑[2*n]*A100071(2*n)`
-/

namespace A119580.P13837824031502310532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A100071 (2 * n)

end

end A119580.P13837824031502310532

namespace A119580

/-- `∑[2*n]*A100071(2*n)` -/
def P13837824031502310532.Spec : Prop :=
  ∀ n, P13837824031502310532.a n = A119580 n

end A119580

/-! ## A119580.P16718785953956905280

`∑[2*n]*A212303(2*n)`
-/

namespace A119580.P16718785953956905280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A212303 (2 * n)

end

end A119580.P16718785953956905280

namespace A119580

/-- `∑[2*n]*A212303(2*n)` -/
def P16718785953956905280.Spec : Prop :=
  ∀ n, P16718785953956905280.a n = A119580 n

end A119580

/-! ## A119580.P16262537615040789222

`∑[2*n]*A218073(2*n)`
-/

namespace A119580.P16262537615040789222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A218073 (2 * n)

end

end A119580.P16262537615040789222

namespace A119580

/-- `∑[2*n]*A218073(2*n)` -/
def P16262537615040789222.Spec : Prop :=
  ∀ n, P16262537615040789222.a n = A119580 n

end A119580

/-! ## A119580.P9387820708429074286

`(n+1)²*A191522(2*n+1)`
-/

namespace A119580.P9387820708429074286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A191522 (2 * n + 1)

end

end A119580.P9387820708429074286

namespace A119580

/-- `(n+1)²*A191522(2*n+1)` -/
def P9387820708429074286.Spec : Prop :=
  ∀ n, P9387820708429074286.a n = A119580 n

end A119580

/-! ## A119580.P2953115310358166377

`A005429(n)+A002736(n)`
-/

namespace A119580.P2953115310358166377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005429 n + A002736 n

end

end A119580.P2953115310358166377

namespace A119580

/-- `A005429(n)+A002736(n)` -/
def P2953115310358166377.Spec : Prop :=
  ∀ n, P2953115310358166377.a n = A119580 n

end A119580

/-! ## A119580.P11231759230899187816

`A002411(n)*A028329(n)`
-/

namespace A119580.P11231759230899187816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A028329 n

end

end A119580.P11231759230899187816

namespace A119580

/-- `A002411(n)*A028329(n)` -/
def P11231759230899187816.Spec : Prop :=
  ∀ n, P11231759230899187816.a n = A119580 n

end A119580

/-! ## A119580.P17253329017131015127

`A002411(n)*A100320(n)`
-/

namespace A119580.P17253329017131015127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A100320 n

end

end A119580.P17253329017131015127

namespace A119580

/-- `A002411(n)*A100320(n)` -/
def P17253329017131015127.Spec : Prop :=
  ∀ n, P17253329017131015127.a n = A119580 n

end A119580

/-!
# A119581: a(n) = (2*n+n^2)*(binomial(2*n,n))/2.

The programs for A119581, the canonical program `A119581.P15688745875726880084` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119581 has offset 0).

The definition of A119581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119581.P15688745875726880084

`A005563(n)*A000984(n)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119581

/-- `A005563(n)*A000984(n)/2` -/
def P15688745875726880084.Spec : Prop :=
  ∀ n, P15688745875726880084.a n = (A119581 n : ℚ)

end A119581

/-! ## A119581.P16072775085240683481

`∏[4-2/(n+1)]/2*∑[n]-(4-6/(n+1))*a(n-1)` with `a(0)=0`
-/

namespace A119581.P16072775085240683481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) - (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A119581.P16072775085240683481

namespace A119581

/-- `∏[4-2/(n+1)]/2*∑[n]-(4-6/(n+1))*a(n-1)` -/
def P16072775085240683481.Spec : Prop :=
  ∀ n, P16072775085240683481.a n = (A119581 n : ℚ)

end A119581

/-! ## A119581.P15830936064187460995

`∑[3*A349427(n)]`
-/

namespace A119581.P15830936064187460995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A349427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119581.P15830936064187460995

namespace A119581

/-- `∑[3*A349427(n)]` -/
def P15830936064187460995.Spec : Prop :=
  ∀ n, P15830936064187460995.a n = A119581 n

end A119581

/-! ## A119581.P7017813310387666049

`∑[n+1]*A001791(n)`
-/

namespace A119581.P7017813310387666049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001791 n

end

end A119581.P7017813310387666049

namespace A119581

/-- `∑[n+1]*A001791(n)` -/
def P7017813310387666049.Spec : Prop :=
  ∀ n, P7017813310387666049.a n = A119581 n

end A119581

/-! ## A119581.P18094167910935320283

`∑[n]*A275329(2*n)`
-/

namespace A119581.P18094167910935320283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A275329 (2 * n)

end

end A119581.P18094167910935320283

namespace A119581

/-- `∑[n]*A275329(2*n)` -/
def P18094167910935320283.Spec : Prop :=
  ∀ n, P18094167910935320283.a n = A119581 n

end A119581

/-! ## A119581.P15278893240307664831

`(n+2)*(A289719(n)-1)`
-/

namespace A119581.P15278893240307664831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A289719 n - 1)

end

end A119581.P15278893240307664831

namespace A119581

/-- `(n+2)*(A289719(n)-1)` -/
def P15278893240307664831.Spec : Prop :=
  ∀ n, P15278893240307664831.a n = A119581 n

end A119581

/-! ## A119581.P16412607431003793062

`n*A013498(2*(n+1))`
-/

namespace A119581.P16412607431003793062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013498 (2 * (n + 1))

end

end A119581.P16412607431003793062

namespace A119581

/-- `n*A013498(2*(n+1))` -/
def P16412607431003793062.Spec : Prop :=
  ∀ n, P16412607431003793062.a n = A119581 n

end A119581

/-! ## A119581.P4954937413348523566

`(n+2)/2*A005430(n)`
-/

namespace A119581.P4954937413348523566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A005430 n : ℚ)

end

end A119581.P4954937413348523566

namespace A119581

/-- `(n+2)/2*A005430(n)` -/
def P4954937413348523566.Spec : Prop :=
  ∀ n, P4954937413348523566.a n = (A119581 n : ℚ)

end A119581

/-! ## A119581.P6645018930036184047

`(n+2)*n*A088218(n)`
-/

namespace A119581.P6645018930036184047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n : ℤ) * A088218 n)

end

end A119581.P6645018930036184047

namespace A119581

/-- `(n+2)*n*A088218(n)` -/
def P6645018930036184047.Spec : Prop :=
  ∀ n, P6645018930036184047.a n = A119581 n

end A119581

/-! ## A119581.P12407572752762372307

`∑[∑[n]]*A120589(n+1)`
-/

namespace A119581.P12407572752762372307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A120589 (n + 1)

end

end A119581.P12407572752762372307

namespace A119581

/-- `∑[∑[n]]*A120589(n+1)` -/
def P12407572752762372307.Spec : Prop :=
  ∀ n, P12407572752762372307.a n = A119581 n

end A119581

/-! ## A119581.P1660271914481822400

`3*∑[∑[n]]*A000108(n)`
-/

namespace A119581.P1660271914481822400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000108 n)

end

end A119581.P1660271914481822400

namespace A119581

/-- `3*∑[∑[n]]*A000108(n)` -/
def P1660271914481822400.Spec : Prop :=
  ∀ n, P1660271914481822400.a n = A119581 n

end A119581

/-! ## A119581.P2450527264143746450

`∑[n+1]*A037952(2*n)`
-/

namespace A119581.P2450527264143746450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A037952 (2 * n)

end

end A119581.P2450527264143746450

namespace A119581

/-- `∑[n+1]*A037952(2*n)` -/
def P2450527264143746450.Spec : Prop :=
  ∀ n, P2450527264143746450.a n = A119581 n

end A119581

/-! ## A119581.P563565925117682777

`∑[n+1]*A037955(2*n)`
-/

namespace A119581.P563565925117682777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A037955 (2 * n)

end

end A119581.P563565925117682777

namespace A119581

/-- `∑[n+1]*A037955(2*n)` -/
def P563565925117682777.Spec : Prop :=
  ∀ n, P563565925117682777.a n = A119581 n

end A119581

/-! ## A119581.P3479338637838017873

`(n+2)*record[A274707(n+1)]`
-/

namespace A119581.P3479338637838017873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119581.P3479338637838017873

namespace A119581

/-- `(n+2)*record[A274707(n+1)]` -/
def P3479338637838017873.Spec : Prop :=
  ∀ n, P3479338637838017873.a n = A119581 n

end A119581

/-! ## A119581.P13459749176014842378

`∑[∑[n]]*A126324(2*n+1)`
-/

namespace A119581.P13459749176014842378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A126324 (2 * n + 1)

end

end A119581.P13459749176014842378

namespace A119581

/-- `∑[∑[n]]*A126324(2*n+1)` -/
def P13459749176014842378.Spec : Prop :=
  ∀ n, P13459749176014842378.a n = A119581 n

end A119581

/-! ## A119581.P638122715658640966

`∑[n+1]*A274707(2*n+1)`
-/

namespace A119581.P638122715658640966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A274707 (2 * n + 1)

end

end A119581.P638122715658640966

namespace A119581

/-- `∑[n+1]*A274707(2*n+1)` -/
def P638122715658640966.Spec : Prop :=
  ∀ n, P638122715658640966.a n = A119581 n

end A119581

/-! ## A119581.P17978137802564461317

`A000108(n)*A027480(n)`
-/

namespace A119581.P17978137802564461317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A027480 n

end

end A119581.P17978137802564461317

namespace A119581

/-- `A000108(n)*A027480(n)` -/
def P17978137802564461317.Spec : Prop :=
  ∀ n, P17978137802564461317.a n = A119581 n

end A119581

/-! ## A119581.P16095420736289314675

`A005563(n)*A088218(n)`
-/

namespace A119581.P16095420736289314675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n * A088218 n

end

end A119581.P16095420736289314675

namespace A119581

/-- `A005563(n)*A088218(n)` -/
def P16095420736289314675.Spec : Prop :=
  ∀ n, P16095420736289314675.a n = A119581 n

end A119581

/-! ## A119581.P1055032119176170046

`A001791(n)*A253145(n)`
-/

namespace A119581.P1055032119176170046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n * A253145 n

end

end A119581.P1055032119176170046

namespace A119581

/-- `A001791(n)*A253145(n)` -/
def P1055032119176170046.Spec : Prop :=
  ∀ n, P1055032119176170046.a n = A119581 n

end A119581

/-! ## A119581.P7408773475589039433

`(n+2)*A100071(A004273(n))`
-/

namespace A119581.P7408773475589039433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A100071 (A004273 n).toNat

end

end A119581.P7408773475589039433

namespace A119581

/-- `(n+2)*A100071(A004273(n))` -/
def P7408773475589039433.Spec : Prop :=
  ∀ n, P7408773475589039433.a n = A119581 n

end A119581

/-!
# A119582: a(n) = (n^2+n^3)*(binomial(2*n,n))/2.

The programs for A119582, the canonical program `A119582.P16220204266755305550` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119582 has offset 0).

The definition of A119582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119582.P16220204266755305550

`A011379(n)*A000984(n)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119582

/-- `A011379(n)*A000984(n)/2` -/
def P16220204266755305550.Spec : Prop :=
  ∀ n, P16220204266755305550.a n = (A119582 n : ℚ)

end A119582

/-! ## A119582.P4035220779323451619

`A119580(n)/2`
-/

namespace A119582.P4035220779323451619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119580 n : ℚ) / 2

end

end A119582.P4035220779323451619

namespace A119582

/-- `A119580(n)/2` -/
def P4035220779323451619.Spec : Prop :=
  ∀ n, P4035220779323451619.a n = (A119582 n : ℚ)

end A119582

/-! ## A119582.P2083323706678930881

`n*A119578(n)`
-/

namespace A119582.P2083323706678930881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119578 n

end

end A119582.P2083323706678930881

namespace A119582

/-- `n*A119578(n)` -/
def P2083323706678930881.Spec : Prop :=
  ∀ n, P2083323706678930881.a n = A119582 n

end A119582

/-! ## A119582.P9901734706791374828

`∑[n]*A005430(n)`
-/

namespace A119582.P9901734706791374828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005430 n

end

end A119582.P9901734706791374828

namespace A119582

/-- `∑[n]*A005430(n)` -/
def P9901734706791374828.Spec : Prop :=
  ∀ n, P9901734706791374828.a n = A119582 n

end A119582

/-! ## A119582.P3008027360500855979

`n/2*A119579(n)`
-/

namespace A119582.P3008027360500855979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A119579 n : ℚ)

end

end A119582.P3008027360500855979

namespace A119582

/-- `n/2*A119579(n)` -/
def P3008027360500855979.Spec : Prop :=
  ∀ n, P3008027360500855979.a n = (A119582 n : ℚ)

end A119582

/-! ## A119582.P9018488377285169169

`∑[n]²*A068875(n)`
-/

namespace A119582.P9018488377285169169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A068875 n

end

end A119582.P9018488377285169169

namespace A119582

/-- `∑[n]²*A068875(n)` -/
def P9018488377285169169.Spec : Prop :=
  ∀ n, P9018488377285169169.a n = A119582 n

end A119582

/-! ## A119582.P12611906772816267297

`n²*A097070(n+1)`
-/

namespace A119582.P12611906772816267297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A097070 (n + 1)

end

end A119582.P12611906772816267297

namespace A119582

/-- `n²*A097070(n+1)` -/
def P12611906772816267297.Spec : Prop :=
  ∀ n, P12611906772816267297.a n = A119582 n

end A119582

/-! ## A119582.P17905652412933411452

`∑[n]*A100071(2*n)`
-/

namespace A119582.P17905652412933411452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A100071 (2 * n)

end

end A119582.P17905652412933411452

namespace A119582

/-- `∑[n]*A100071(2*n)` -/
def P17905652412933411452.Spec : Prop :=
  ∀ n, P17905652412933411452.a n = A119582 n

end A119582

/-! ## A119582.P7690568882706770494

`∑[n]*A212303(2*n)`
-/

namespace A119582.P7690568882706770494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A212303 (2 * n)

end

end A119582.P7690568882706770494

namespace A119582

/-- `∑[n]*A212303(2*n)` -/
def P7690568882706770494.Spec : Prop :=
  ∀ n, P7690568882706770494.a n = A119582 n

end A119582

/-! ## A119582.P17710834614601767836

`∑[n]*A218073(2*n)`
-/

namespace A119582.P17710834614601767836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A218073 (2 * n)

end

end A119582.P17710834614601767836

namespace A119582

/-- `∑[n]*A218073(2*n)` -/
def P17710834614601767836.Spec : Prop :=
  ∀ n, P17710834614601767836.a n = A119582 n

end A119582

/-! ## A119582.P11939979461298666406

`∑[∑[n²]]*A071721(n)`
-/

namespace A119582.P11939979461298666406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071721 n

end

end A119582.P11939979461298666406

namespace A119582

/-- `∑[∑[n²]]*A071721(n)` -/
def P11939979461298666406.Spec : Prop :=
  ∀ n, P11939979461298666406.a n = A119582 n

end A119582

/-! ## A119582.P10816449401018214099

`∑[n]²*A262543(n+1)`
-/

namespace A119582.P10816449401018214099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A262543 (n + 1)

end

end A119582.P10816449401018214099

namespace A119582

/-- `∑[n]²*A262543(n+1)` -/
def P10816449401018214099.Spec : Prop :=
  ∀ n, P10816449401018214099.a n = A119582 n

end A119582

/-! ## A119582.P2029364791786649055

`2*A000108(n)*∑[n]²`
-/

namespace A119582.P2029364791786649055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n * (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A119582.P2029364791786649055

namespace A119582

/-- `2*A000108(n)*∑[n]²` -/
def P2029364791786649055.Spec : Prop :=
  ∀ n, P2029364791786649055.a n = A119582 n

end A119582

/-! ## A119582.P113999937458806579

`A000984(n)*A002411(n)`
-/

namespace A119582.P113999937458806579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A002411 n

end

end A119582.P113999937458806579

namespace A119582

/-- `A000984(n)*A002411(n)` -/
def P113999937458806579.Spec : Prop :=
  ∀ n, P113999937458806579.a n = A119582 n

end A119582

/-! ## A119582.P17986793576810602658

`A001791(n)*A006002(n)`
-/

namespace A119582.P17986793576810602658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n * A006002 n

end

end A119582.P17986793576810602658

namespace A119582

/-- `A001791(n)*A006002(n)` -/
def P17986793576810602658.Spec : Prop :=
  ∀ n, P17986793576810602658.a n = A119582 n

end A119582

/-! ## A119582.P14253121773427550306

`A004302(n)*A007054(n)`
-/

namespace A119582.P14253121773427550306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 n * A007054 n

end

end A119582.P14253121773427550306

namespace A119582

/-- `A004302(n)*A007054(n)` -/
def P14253121773427550306.Spec : Prop :=
  ∀ n, P14253121773427550306.a n = A119582 n

end A119582

/-! ## A119582.P16241698490046165233

`A011379(n)*A088218(n)`
-/

namespace A119582.P16241698490046165233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n * A088218 n

end

end A119582.P16241698490046165233

namespace A119582

/-- `A011379(n)*A088218(n)` -/
def P16241698490046165233.Spec : Prop :=
  ∀ n, P16241698490046165233.a n = A119582 n

end A119582

/-! ## A119582.P8169340639083939932

`A000108(n)*A163102(n)`
-/

namespace A119582.P8169340639083939932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A163102 n

end

end A119582.P8169340639083939932

namespace A119582

/-- `A000108(n)*A163102(n)` -/
def P8169340639083939932.Spec : Prop :=
  ∀ n, P8169340639083939932.a n = A119582 n

end A119582

/-! ## A119582.P7717550821341875750

`n²*A189911(A004273(n))`
-/

namespace A119582.P7717550821341875750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A189911 (A004273 n).toNat

end

end A119582.P7717550821341875750

namespace A119582

/-- `n²*A189911(A004273(n))` -/
def P7717550821341875750.Spec : Prop :=
  ∀ n, P7717550821341875750.a n = A119582 n

end A119582

/-!
# A119583: a(1)=0, a(2)=0, a(3)=0, a(4)=1 then a(n)=abs(a(n-1)-2*a(n-2)+a(n-3))-a(n-4).

The programs for A119583, the canonical program `A119583.P3225221707396225936` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119583 has offset 1).

The definition of A119583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-2*a(n-2)+a(n-3))-a(n-4)` (program `A119583.P3225221707396225936`, by `A119583.P3225221707396225936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119583.P3225221707396225936

`abs(a(n-1)-2*a(n-2)+a(n-3))-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119583

/-- `abs(a(n-1)-2*a(n-2)+a(n-3))-a(n-4)` -/
def P3225221707396225936.Spec : Prop :=
  ∀ n, P3225221707396225936.a n = A119583 (n + 1)

theorem P3225221707396225936.correct : P3225221707396225936.Spec := by
  intro n
  simp only [A119583, Nat.add_sub_cancel]

end A119583

/-!
# A119585: Triangle where n-th row is (1,2,3,...n) arranged first by number of divisors and then numerically (among those integers with the same number of divisors).

The programs for A119585, there is no canonical definition to state claims against.
-/

/-! ## A119585.P16892639793623078927

`A262881(n)+A379671(3*n+5)!`
-/

namespace A119585.P16892639793623078927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262881 n + (Nat.factorial (A379671 (3 * n + 5)).toNat : ℤ)

end

end A119585.P16892639793623078927

/-! ## A119585.P12048061281868558473

`(A262881(n)+1)%A198456(2*(n+2))`
-/

namespace A119585.P12048061281868558473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262881 n + 1) (A198456 (2 * (n + 2)))

end

end A119585.P12048061281868558473

/-! ## A119585.P8154077645245800762

`A262881(n)+A028234(p?[round(8*n/7)]²)`
-/

namespace A119585.P8154077645245800762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262881 n + A028234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A119585.P8154077645245800762

/-! ## A119585.P8321665757219875238

`A262881(n)+A006519(A005894(n))`
-/

namespace A119585.P8321665757219875238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262881 n + A006519 (A005894 n).toNat

end

end A119585.P8321665757219875238

/-! ## A119585.P7252565167824433261

`A262881(n)+A054977(A063759(n))`
-/

namespace A119585.P7252565167824433261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262881 n + A054977 (A063759 n).toNat

end

end A119585.P7252565167824433261

/-!
# A119587: 2^n + 1 - 2*Fibonacci(n+1).

The programs for A119587, the canonical program `A119587.P11582636828515909663` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119587 has offset 0).

The definition of A119587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119587.P7722918552782811456

`a(n-1)+a(n-2)+2^(n-2)-1` with `a(0)=0, a(1)=1`
-/

namespace A119587.P7722918552782811456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1

end

end A119587.P7722918552782811456

namespace A119587

/-- `a(n-1)+a(n-2)+2^(n-2)-1` -/
def P7722918552782811456.Spec : Prop :=
  ∀ n, P7722918552782811456.a n = (A119587 n : ℚ)

end A119587

/-! ## A119587.P11582636828515909663

`A000051(n)-A006355(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A119587

/-- `A000051(n)-A006355(n+2)` -/
def P11582636828515909663.Spec : Prop :=
  ∀ n, P11582636828515909663.a n = A119587 n

theorem P11582636828515909663.correct : P11582636828515909663.Spec := by
  intro n
  simp only [A119587]

end A119587

/-! ## A119587.P16380711881337086753

`A000051(n)-A000045(n)-A000032(n)`
-/

namespace A119587.P16380711881337086753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A000045 n - A000032 n

end

end A119587.P16380711881337086753

namespace A119587

/-- `A000051(n)-A000045(n)-A000032(n)` -/
def P16380711881337086753.Spec : Prop :=
  ∀ n, P16380711881337086753.a n = A119587 n

end A119587

/-! ## A119587.P5688202844924086960

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A119587.P5688202844924086960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 3] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) - a (n - 3) + 2 * a (n - 4)

end

end A119587.P5688202844924086960

namespace A119587

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P5688202844924086960.Spec : Prop :=
  ∀ n, P5688202844924086960.a n = A119587 n

end A119587

/-! ## A119587.P12073346558895847647

`∑[ogf((x-3x^2+3x^3)/(1-3x+x^2+2x^3))]`
-/

namespace A119587.P12073346558895847647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3, 3] [1, -3, 1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119587.P12073346558895847647

namespace A119587

/-- `∑[ogf((x-3x^2+3x^3)/(1-3x+x^2+2x^3))]` -/
def P12073346558895847647.Spec : Prop :=
  ∀ n, P12073346558895847647.a n = A119587 n

end A119587

/-! ## A119587.P17015815799193268477

`ogf((x-3x^2+3x^3)/(1-4x+4x^2+x^3-2x^4))`
-/

namespace A119587.P17015815799193268477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3, 3] [1, -4, 4, 1, -2] n

end

end A119587.P17015815799193268477

namespace A119587

/-- `ogf((x-3x^2+3x^3)/(1-4x+4x^2+x^3-2x^4))` -/
def P17015815799193268477.Spec : Prop :=
  ∀ n, P17015815799193268477.a n = A119587 n

end A119587

/-! ## A119587.P763803662844758948

`2^n-A001595(n)`
-/

namespace A119587.P763803662844758948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A001595 n

end

end A119587.P763803662844758948

namespace A119587

/-- `2^n-A001595(n)` -/
def P763803662844758948.Spec : Prop :=
  ∀ n, P763803662844758948.a n = A119587 n

end A119587

/-! ## A119587.P8878355610331869311

`2^n-(A019274(n+1)+1)`
-/

namespace A119587.P8878355610331869311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A019274 (n + 1) + 1)

end

end A119587.P8878355610331869311

namespace A119587

/-- `2^n-(A019274(n+1)+1)` -/
def P8878355610331869311.Spec : Prop :=
  ∀ n, P8878355610331869311.a n = A119587 n

end A119587

/-! ## A119587.P8784289446106955244

`2^n+1-2*A000045(n+1)`
-/

namespace A119587.P8784289446106955244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (1 - 2 * A000045 (n + 1))

end

end A119587.P8784289446106955244

namespace A119587

/-- `2^n+1-2*A000045(n+1)` -/
def P8784289446106955244.Spec : Prop :=
  ∀ n, P8784289446106955244.a n = A119587 n

end A119587

/-! ## A119587.P4470121889652612076

`A167821(abs(1-n)+1)+floor(atan(n+1))`
-/

namespace A119587.P4470121889652612076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (|1 - (n : ℤ)| + 1).toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A119587.P4470121889652612076

namespace A119587

/-- `A167821(abs(1-n)+1)+floor(atan(n+1))` -/
def P4470121889652612076.Spec : Prop :=
  ∀ n, P4470121889652612076.a n = A119587 n

end A119587

/-! ## A119587.P6005548078850580786

`A232580(n)+A000045(n)`
-/

namespace A119587.P6005548078850580786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n + A000045 n

end

end A119587.P6005548078850580786

namespace A119587

/-- `A232580(n)+A000045(n)` -/
def P6005548078850580786.Spec : Prop :=
  ∀ n, P6005548078850580786.a n = A119587 n

end A119587

/-! ## A119587.P16779471019088142216

`A052956(n)-A377628(n)`
-/

namespace A119587.P16779471019088142216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 n - A377628 n

end

end A119587.P16779471019088142216

namespace A119587

/-- `A052956(n)-A377628(n)` -/
def P16779471019088142216.Spec : Prop :=
  ∀ n, P16779471019088142216.a n = A119587 n

end A119587

/-! ## A119587.P9686183929943327679

`abs(A000079(n)-A001595(n))`
-/

namespace A119587.P9686183929943327679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A001595 n|

end

end A119587.P9686183929943327679

namespace A119587

/-- `abs(A000079(n)-A001595(n))` -/
def P9686183929943327679.Spec : Prop :=
  ∀ n, P9686183929943327679.a n = A119587 n

end A119587

/-! ## A119587.P6302135781434068473

`A000079(n)-∑[A006355(n)]`
-/

namespace A119587.P6302135781434068473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119587.P6302135781434068473

namespace A119587

/-- `A000079(n)-∑[A006355(n)]` -/
def P6302135781434068473.Spec : Prop :=
  ∀ n, P6302135781434068473.a n = A119587 n

end A119587

/-! ## A119587.P10048032236482814070

`∑[A011782(n)-A006355(n)]`
-/

namespace A119587.P10048032236482814070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119587.P10048032236482814070

namespace A119587

/-- `∑[A011782(n)-A006355(n)]` -/
def P10048032236482814070.Spec : Prop :=
  ∀ n, P10048032236482814070.a n = A119587 n

end A119587

/-! ## A119587.P10819781310412020464

`A000051(n)-(A001595(n)+1)`
-/

namespace A119587.P10819781310412020464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A001595 n + 1)

end

end A119587.P10819781310412020464

namespace A119587

/-- `A000051(n)-(A001595(n)+1)` -/
def P10819781310412020464.Spec : Prop :=
  ∀ n, P10819781310412020464.a n = A119587 n

end A119587

/-! ## A119587.P9962456470404356817

`A000225(n)+1-A001595(n)`
-/

namespace A119587.P9962456470404356817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A001595 n)

end

end A119587.P9962456470404356817

namespace A119587

/-- `A000225(n)+1-A001595(n)` -/
def P9962456470404356817.Spec : Prop :=
  ∀ n, P9962456470404356817.a n = A119587 n

end A119587

/-! ## A119587.P8509998304855579246

`A000225(n)-A019274(n+1)`
-/

namespace A119587.P8509998304855579246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A019274 (n + 1)

end

end A119587.P8509998304855579246

namespace A119587

/-- `A000225(n)-A019274(n+1)` -/
def P8509998304855579246.Spec : Prop :=
  ∀ n, P8509998304855579246.a n = A119587 n

end A119587

/-! ## A119587.P12875672684723278986

`A027934(n)-A000071(n+1)`
-/

namespace A119587.P12875672684723278986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n - A000071 (n + 1)

end

end A119587.P12875672684723278986

namespace A119587

/-- `A027934(n)-A000071(n+1)` -/
def P12875672684723278986.Spec : Prop :=
  ∀ n, P12875672684723278986.a n = A119587 n

end A119587

/-! ## A119587.P475954823651270130

`A099036(n)+1-A000032(n)`
-/

namespace A119587.P475954823651270130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n + (1 - A000032 n)

end

end A119587.P475954823651270130

namespace A119587

/-- `A099036(n)+1-A000032(n)` -/
def P475954823651270130.Spec : Prop :=
  ∀ n, P475954823651270130.a n = A119587 n

end A119587

/-!
# A119588: Numbers k such that the number of divisors of Fibonacci(k), tau(Fibonacci(k)), is not a perfect power of 2.

The programs for A119588, there is no canonical definition to state claims against.
-/

/-! ## A119588.P14913176066670765418

`lt[1, A001221(A063375(n+1))]+1`
-/

namespace A119588.P14913176066670765418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063375 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A119588.P14913176066670765418

/-! ## A119588.P12745089340444221771

`lt[A105307(n+1), 0]+1`
-/

namespace A119588.P12745089340444221771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105307 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A119588.P12745089340444221771

/-! ## A119588.P7376717753952823590

`lt[A105307(A028310(n)), 0]`
-/

namespace A119588.P7376717753952823590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105307 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119588.P7376717753952823590

/-! ## A119588.P2740433603682388423

`A153152(lt[A105307(n+1), 0])`
-/

namespace A119588.P2740433603682388423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105307 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A119588.P2740433603682388423

/-! ## A119588.P9410771242380411203

`A065475(eq[1, -A105307(n+1)])`
-/

namespace A119588.P9410771242380411203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A105307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119588.P9410771242380411203

/-!
# A119590: a(n) = position of n in the lexicographical ordering A119589 of natural numbers from 1 to 100.

The programs for A119590, there is no canonical definition to state claims against.
-/

/-! ## A119590.P12373038578132912139

`A190017(n+1)%110`
-/

namespace A119590.P12373038578132912139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190017 (n + 1)) 110

end

end A119590.P12373038578132912139

/-!
# A119591: Least k such that 2*n^k - 1 is prime.

The programs for A119591, there is no canonical definition to state claims against.
-/

/-! ## A119591.P14145311536698498665

`gcd(A194368(3*n+4), A264525(A317837(2*n+3)))`
-/

namespace A119591.P14145311536698498665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194368 (3 * n + 4)) (A264525 (A317837 (2 * n + 3)).toNat)

end

end A119591.P14145311536698498665

/-! ## A119591.P9327856532315091035

`gcd(A016777(A233190(n+1)), A357975(2*n+3))`
-/

namespace A119591.P9327856532315091035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016777 (A233190 (n + 1)).toNat) (A357975 (2 * n + 3))

end

end A119591.P9327856532315091035

/-! ## A119591.P16726790427855716926

`A088570(or(30, A321452(2*n+3)))`
-/

namespace A119591.P16726790427855716926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (Int.lor 30 (A321452 (2 * n + 3))).toNat

end

end A119591.P16726790427855716926

/-! ## A119591.P6546964253520148770

`A060594((n²+1)^A291437(n+1))`
-/

namespace A119591.P6546964253520148770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (SequenceMachineLib.roundAway ((n ^ 2 + 1 : ℚ) ^ (A291437 (n + 1) : ℤ))).toNat

end

end A119591.P6546964253520148770

/-! ## A119591.P17771063091754900266

`A001227(A037283(A171565(2*n+3)))`
-/

namespace A119591.P17771063091754900266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A037283 (A171565 (2 * n + 3)).toNat).toNat

end

end A119591.P17771063091754900266

/-!
# A119592: a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=10; a(n) = floor(a(n-1) + 1 + (a(n-2) + 1)/6) for n>=6.

The programs for A119592, the canonical program `A119592.P9414325982194867818` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119592 has offset 0).

The definition of A119592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119592.P9414325982194867818

`floor(a(n-1)+1+(a(n-2)+1)/6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A119592

/-- `floor(a(n-1)+1+(a(n-2)+1)/6)` -/
def P9414325982194867818.Spec : Prop :=
  ∀ n, P9414325982194867818.a n = A119592 n

theorem P9414325982194867818.correct : P9414325982194867818.Spec := by
  intro n
  simp only [A119592]

end A119592

/-! ## A119592.P6064440871480381488

`∑[A079643(A134816(n+1))%A128941(n)]`
-/

namespace A119592.P6064440871480381488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079643 (A134816 (n + 1)).toNat) (A128941 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119592.P6064440871480381488

namespace A119592

/-- `∑[A079643(A134816(n+1))%A128941(n)]` -/
def P6064440871480381488.Spec : Prop :=
  ∀ n, P6064440871480381488.a n = A119592 n

end A119592

/-! ## A119592.P13862868251692388668

`∑[A079643(A134816(n+1))]%A024782(n+1)`
-/

namespace A119592.P13862868251692388668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (A134816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A024782 (n + 1))

end

end A119592.P13862868251692388668

namespace A119592

/-- `∑[A079643(A134816(n+1))]%A024782(n+1)` -/
def P13862868251692388668.Spec : Prop :=
  ∀ n, P13862868251692388668.a n = A119592 n

end A119592

/-! ## A119592.P5814013298847526686

`A118759(∑[A079643(A134816(n+1))])`
-/

namespace A119592.P5814013298847526686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (A134816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A119592.P5814013298847526686

namespace A119592

/-- `A118759(∑[A079643(A134816(n+1))])` -/
def P5814013298847526686.Spec : Prop :=
  ∀ n, P5814013298847526686.a n = A119592 n

end A119592

/-!
# A119593: Primes for which the weight as defined in A117078 is 7 and the gap as defined in A001223 is 4.

The programs for A119593, there is no canonical definition to state claims against.
-/

/-! ## A119593.P8269953839373831485

`∩[A118741(n+1), A141889(n+1)]`
-/

namespace A119593.P8269953839373831485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P8269953839373831485

/-! ## A119593.P16418149816369452171

`∩[A015913(n+1), A118741(n+1)]`
-/

namespace A119593.P16418149816369452171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P16418149816369452171

/-! ## A119593.P18340041518031134443

`∩[A029710(n+1), A118741(n+1)]`
-/

namespace A119593.P18340041518031134443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P18340041518031134443

/-! ## A119593.P893210491572378710

`∩[A118741(n+1), A172238(n+1)]`
-/

namespace A119593.P893210491572378710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P893210491572378710

/-! ## A119593.P17369102638297755334

`∩[A118741(n+1), A164572(n+1)]`
-/

namespace A119593.P17369102638297755334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P17369102638297755334

/-! ## A119593.P11175680548603621484

`∩[A056772(n+1), A118741(n+1)]`
-/

namespace A119593.P11175680548603621484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P11175680548603621484

/-! ## A119593.P17031594738315681210

`∩[A045471(n+1), A118741(n+1)]`
-/

namespace A119593.P17031594738315681210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P17031594738315681210

/-! ## A119593.P10040312665202935126

`∩[A045462(n+1), A118741(n+1)]`
-/

namespace A119593.P10040312665202935126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P10040312665202935126

/-! ## A119593.P8373173351043645540

`∩[A004622(n+1), A118741(n+1)]`
-/

namespace A119593.P8373173351043645540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P8373173351043645540

/-! ## A119593.P5924498113597264598

`∩[A118741(n+1), A394735(n+1)]`
-/

namespace A119593.P5924498113597264598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P5924498113597264598

/-! ## A119593.P13823430088318144129

`∩[A118741(n+1), A139492(n+1)]`
-/

namespace A119593.P13823430088318144129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P13823430088318144129

/-! ## A119593.P817419269573242651

`∩[A045374(n+1), A118741(n+1)]`
-/

namespace A119593.P817419269573242651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P817419269573242651

/-! ## A119593.P661505046140008862

`∩[A045387(n+1), A118741(n+1)]`
-/

namespace A119593.P661505046140008862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P661505046140008862

/-! ## A119593.P9949021273136874812

`∩[A045461(n+1), A118741(n+1)]`
-/

namespace A119593.P9949021273136874812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P9949021273136874812

/-! ## A119593.P1433224816985726447

`∩[A045469(n+1), A118741(n+1)]`
-/

namespace A119593.P1433224816985726447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P1433224816985726447

/-! ## A119593.P16064972178363048226

`∩[A045421(n+1), A118741(n+1)]`
-/

namespace A119593.P16064972178363048226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P16064972178363048226

/-! ## A119593.P11246405692936974543

`∩[A045432(n+1), A118741(n+1)]`
-/

namespace A119593.P11246405692936974543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P11246405692936974543

/-! ## A119593.P4966280645509498617

`∩[A045441(n+1), A118741(n+1)]`
-/

namespace A119593.P4966280645509498617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P4966280645509498617

/-! ## A119593.P17320040793854760377

`∩[A045452(n+1), A118741(n+1)]`
-/

namespace A119593.P17320040793854760377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P17320040793854760377

/-! ## A119593.P10106634109271975369

`∩[A061771(n+1), A118741(n+1)]`
-/

namespace A119593.P10106634109271975369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119593.P10106634109271975369

/-!
# A119595: Primes for which the weight as defined in A117078 is 15 and the gap as defined in A001223 is 8.

The programs for A119595, there is no canonical definition to state claims against.
-/

/-! ## A119595.P11780066426575901781

`A332675(lt[A332666(2*n+1), A332666(n)])`
-/

namespace A119595.P11780066426575901781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332666 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332675 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119595.P11780066426575901781

/-!
# A119596: Primes for which the weight as defined in A117078 is 11 and the gap as defined in A001223 is 10.

The programs for A119596, there is no canonical definition to state claims against.
-/

/-! ## A119596.P748871429982742833

`∩[A031928(n+1), A142055(n+1)]`
-/

namespace A119596.P748871429982742833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119596.P748871429982742833

/-! ## A119596.P12476802339900807128

`∩[A031928(n+1), A141857(n+1)]`
-/

namespace A119596.P12476802339900807128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119596.P12476802339900807128

/-! ## A119596.P3188146101175847992

`∩[A031928(n+1), A352494(n+1)]`
-/

namespace A119596.P3188146101175847992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119596.P3188146101175847992

