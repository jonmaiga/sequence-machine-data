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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A072600: Numbers which in base 2 have fewer 0's than 1's.

The programs for A072600, the canonical program `A072600.P7876839337563508187` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072600 has offset 1).

The definition of A072600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072600.P7876839337563508187

`lt[0, a(floor(n/2))-(-1)^n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072600

/-- `lt[0, a(floor(n/2))-(-1)^n]` -/
def P7876839337563508187.Spec : Prop :=
  ∀ n, (P7876839337563508187.a n : ℤ) = A072600 (n + 1)

theorem P7876839337563508187.correct : P7876839337563508187.Spec := by
  intro n
  simp only [A072600, Nat.add_sub_cancel]

end A072600

/-! ## A072600.P14358189431762740629

`comp[A346300(n+1)]+1`
-/

namespace A072600.P14358189431762740629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072600.P14358189431762740629

namespace A072600

/-- `comp[A346300(n+1)]+1` -/
def P14358189431762740629.Spec : Prop :=
  ∀ n, (P14358189431762740629.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P13531140740023984601

`lt[2*n+1, A001316(n)²]`
-/

namespace A072600.P13531140740023984601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072600.P13531140740023984601

namespace A072600

/-- `lt[2*n+1, A001316(n)²]` -/
def P13531140740023984601.Spec : Prop :=
  ∀ n, (P13531140740023984601.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P14678182880160455906

`lt[0, A145037(n)]`
-/

namespace A072600.P14678182880160455906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072600.P14678182880160455906

namespace A072600

/-- `lt[0, A145037(n)]` -/
def P14678182880160455906.Spec : Prop :=
  ∀ n, (P14678182880160455906.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P2611768536350961560

`∩[A044951(n+1), A072601(n+1)]`
-/

namespace A072600.P2611768536350961560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072600.P2611768536350961560

namespace A072600

/-- `∩[A044951(n+1), A072601(n+1)]` -/
def P2611768536350961560.Spec : Prop :=
  ∀ n, (P2611768536350961560.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P9967669992920270845

`lt[A037861(n), 0]`
-/

namespace A072600.P9967669992920270845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072600.P9967669992920270845

namespace A072600

/-- `lt[A037861(n), 0]` -/
def P9967669992920270845.Spec : Prop :=
  ∀ n, (P9967669992920270845.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P16029282431261997636

`eq[1, A115516(n)]`
-/

namespace A072600.P16029282431261997636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072600.P16029282431261997636

namespace A072600

/-- `eq[1, A115516(n)]` -/
def P16029282431261997636.Spec : Prop :=
  ∀ n, (P16029282431261997636.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P5063675788941891720

`filter[n+1, A115516(#)]`
-/

namespace A072600.P5063675788941891720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115516 (f1 j) = 1) n)

end

end A072600.P5063675788941891720

namespace A072600

/-- `filter[n+1, A115516(#)]` -/
def P5063675788941891720.Spec : Prop :=
  ∀ n, (P5063675788941891720.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P12560313108189222617

`lt[A080100(n)², n+1]`
-/

namespace A072600.P12560313108189222617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072600.P12560313108189222617

namespace A072600

/-- `lt[A080100(n)², n+1]` -/
def P12560313108189222617.Spec : Prop :=
  ∀ n, (P12560313108189222617.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P6339533752045417904

`eq[1, A265917(n+1)]+1`
-/

namespace A072600.P6339533752045417904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072600.P6339533752045417904

namespace A072600

/-- `eq[1, A265917(n+1)]+1` -/
def P6339533752045417904.Spec : Prop :=
  ∀ n, (P6339533752045417904.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P1970469115498049845

`record[(n+1)%(2*A048896(n)²)]`
-/

namespace A072600.P1970469115498049845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (2 * A048896 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072600.P1970469115498049845

namespace A072600

/-- `record[(n+1)%(2*A048896(n)²)]` -/
def P1970469115498049845.Spec : Prop :=
  ∀ n, P1970469115498049845.a n = A072600 (n + 1)

end A072600

/-! ## A072600.P14536146022472332440

`lt[A023416(n), A000120(n)]`
-/

namespace A072600.P14536146022472332440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072600.P14536146022472332440

namespace A072600

/-- `lt[A023416(n), A000120(n)]` -/
def P14536146022472332440.Spec : Prop :=
  ∀ n, (P14536146022472332440.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P10665999944460003014

`lt[A080791(n), A000120(n)]`
-/

namespace A072600.P10665999944460003014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072600.P10665999944460003014

namespace A072600

/-- `lt[A080791(n), A000120(n)]` -/
def P10665999944460003014.Spec : Prop :=
  ∀ n, (P10665999944460003014.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P17496440447398372743

`lt[A023416(n), log2(A001316(n))]`
-/

namespace A072600.P17496440447398372743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A072600.P17496440447398372743

namespace A072600

/-- `lt[A023416(n), log2(A001316(n))]` -/
def P17496440447398372743.Spec : Prop :=
  ∀ n, (P17496440447398372743.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P12160082623754949541

`lt[log2(A080100(n)), A000120(n)]`
-/

namespace A072600.P12160082623754949541
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080100 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A072600.P12160082623754949541

namespace A072600

/-- `lt[log2(A080100(n)), A000120(n)]` -/
def P12160082623754949541.Spec : Prop :=
  ∀ n, (P12160082623754949541.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P15422721725230237798

`lt[A080791(n), log2(A001316(n))]`
-/

namespace A072600.P15422721725230237798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A072600.P15422721725230237798

namespace A072600

/-- `lt[A080791(n), log2(A001316(n))]` -/
def P15422721725230237798.Spec : Prop :=
  ∀ n, (P15422721725230237798.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P5047615264205145077

`filter[A044951(n+1), A115517(#)]`
-/

namespace A072600.P5047615264205145077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115517 (f1 j).toNat = 1) n)

end

end A072600.P5047615264205145077

namespace A072600

/-- `filter[A044951(n+1), A115517(#)]` -/
def P5047615264205145077.Spec : Prop :=
  ∀ n, P5047615264205145077.a n = A072600 (n + 1)

end A072600

/-! ## A072600.P2991705485480461790

`lt[A003056(n+1), A001316(n)]`
-/

namespace A072600.P2991705485480461790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072600.P2991705485480461790

namespace A072600

/-- `lt[A003056(n+1), A001316(n)]` -/
def P2991705485480461790.Spec : Prop :=
  ∀ n, (P2991705485480461790.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P4270022358579704967

`lt[A070939(n), 2*A000120(n)]`
-/

namespace A072600.P4270022358579704967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072600.P4270022358579704967

namespace A072600

/-- `lt[A070939(n), 2*A000120(n)]` -/
def P4270022358579704967.Spec : Prop :=
  ∀ n, (P4270022358579704967.a n : ℤ) = A072600 (n + 1)

end A072600

/-! ## A072600.P14369778633575565130

`lt[2*A023416(n), A070939(n)]`
-/

namespace A072600.P14369778633575565130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072600.P14369778633575565130

namespace A072600

/-- `lt[2*A023416(n), A070939(n)]` -/
def P14369778633575565130.Spec : Prop :=
  ∀ n, (P14369778633575565130.a n : ℤ) = A072600 (n + 1)

end A072600

/-!
# A072601: Numbers which in base 2 have at least as many 1's as 0's.

The programs for A072601, the canonical program `A072601.P5617687946353484983` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072601 has offset 1).

The definition of A072601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072601.P5617687946353484983

`lt[or(1, n), 4*a(and(n, n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072601

/-- `lt[or(1, n), 4*a(and(n, n-1))]` -/
def P5617687946353484983.Spec : Prop :=
  ∀ n, (P5617687946353484983.a n : ℤ) = A072601 (n + 1)

theorem P5617687946353484983.correct : P5617687946353484983.Spec := by
  intro n
  simp only [A072601, Nat.add_sub_cancel]

end A072601

/-! ## A072601.P7590227809192679494

`lt[0, a(floor(n/2))-(-1)^n]` with `a(0)=0, a(1)=2`
-/

namespace A072601.P7590227809192679494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072601.P7590227809192679494

namespace A072601

/-- `lt[0, a(floor(n/2))-(-1)^n]` -/
def P7590227809192679494.Spec : Prop :=
  ∀ n, (P7590227809192679494.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P349828531117851306

`lt[n+1, A001316(n)²]`
-/

namespace A072601.P349828531117851306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072601.P349828531117851306

namespace A072601

/-- `lt[n+1, A001316(n)²]` -/
def P349828531117851306.Spec : Prop :=
  ∀ n, (P349828531117851306.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P14259921243666172756

`lt[1, n*(A145037(n)+1)]`
-/

namespace A072601.P14259921243666172756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A145037 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072601.P14259921243666172756

namespace A072601

/-- `lt[1, n*(A145037(n)+1)]` -/
def P14259921243666172756.Spec : Prop :=
  ∀ n, (P14259921243666172756.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P523140594775458830

`lt[n+1, A001316(n+1)^2]+1`
-/

namespace A072601.P523140594775458830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072601.P523140594775458830

namespace A072601

/-- `lt[n+1, A001316(n+1)^2]+1` -/
def P523140594775458830.Spec : Prop :=
  ∀ n, (P523140594775458830.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P15381752614899322989

`∪[A031443(n+1), A072600(n+1)]`
-/

namespace A072601.P15381752614899322989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072601.P15381752614899322989

namespace A072601

/-- `∪[A031443(n+1), A072600(n+1)]` -/
def P15381752614899322989.Spec : Prop :=
  ∀ n, (P15381752614899322989.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P16877437146985325142

`∪[A031461(n+1), A072600(n+1)]`
-/

namespace A072601.P16877437146985325142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072601.P16877437146985325142

namespace A072601

/-- `∪[A031461(n+1), A072600(n+1)]` -/
def P16877437146985325142.Spec : Prop :=
  ∀ n, (P16877437146985325142.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P14373047339232626900

`eq[1, A115517(n)]`
-/

namespace A072601.P14373047339232626900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072601.P14373047339232626900

namespace A072601

/-- `eq[1, A115517(n)]` -/
def P14373047339232626900.Spec : Prop :=
  ∀ n, (P14373047339232626900.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P1800512176530071380

`lt[A037861(n), 1]`
-/

namespace A072601.P1800512176530071380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072601.P1800512176530071380

namespace A072601

/-- `lt[A037861(n), 1]` -/
def P1800512176530071380.Spec : Prop :=
  ∀ n, (P1800512176530071380.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P9937976183810049635

`filter[n+1, A115517(#)]`
-/

namespace A072601.P9937976183810049635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115517 (f1 j) = 1) n)

end

end A072601.P9937976183810049635

namespace A072601

/-- `filter[n+1, A115517(#)]` -/
def P9937976183810049635.Spec : Prop :=
  ∀ n, (P9937976183810049635.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P7811471039293462404

`lt[n+1, A102376(n)]`
-/

namespace A072601.P7811471039293462404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072601.P7811471039293462404

namespace A072601

/-- `lt[n+1, A102376(n)]` -/
def P7811471039293462404.Spec : Prop :=
  ∀ n, (P7811471039293462404.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P5116472858491790484

`lt[n+1, 4^A000120(n)]`
-/

namespace A072601.P5116472858491790484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A072601.P5116472858491790484

namespace A072601

/-- `lt[n+1, 4^A000120(n)]` -/
def P5116472858491790484.Spec : Prop :=
  ∀ n, (P5116472858491790484.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P8294364617820832459

`lt[n+1, (A038573(n)+1)²]`
-/

namespace A072601.P8294364617820832459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072601.P8294364617820832459

namespace A072601

/-- `lt[n+1, (A038573(n)+1)²]` -/
def P8294364617820832459.Spec : Prop :=
  ∀ n, (P8294364617820832459.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P11880927413911152877

`lt[A080100(n)², 2*n+1]`
-/

namespace A072601.P11880927413911152877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072601.P11880927413911152877

namespace A072601

/-- `lt[A080100(n)², 2*n+1]` -/
def P11880927413911152877.Spec : Prop :=
  ∀ n, (P11880927413911152877.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P2587920572295930962

`lt[A023416(n), A000120(n)+1]`
-/

namespace A072601.P2587920572295930962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072601.P2587920572295930962

namespace A072601

/-- `lt[A023416(n), A000120(n)+1]` -/
def P2587920572295930962.Spec : Prop :=
  ∀ n, (P2587920572295930962.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P10168832194891548153

`lt[n, 2*A343049(n)]`
-/

namespace A072601.P10168832194891548153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A343049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072601.P10168832194891548153

namespace A072601

/-- `lt[n, 2*A343049(n)]` -/
def P10168832194891548153.Spec : Prop :=
  ∀ n, (P10168832194891548153.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P13439078907001396878

`lt[A004277(n), A000982(A071051(n))]`
-/

namespace A072601.P13439078907001396878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A071051 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072601.P13439078907001396878

namespace A072601

/-- `lt[A004277(n), A000982(A071051(n))]` -/
def P13439078907001396878.Spec : Prop :=
  ∀ n, (P13439078907001396878.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P13889894693731768210

`lt[A023416(n), A070939(A071044(n))]`
-/

namespace A072601.P13889894693731768210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A071044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072601.P13889894693731768210

namespace A072601

/-- `lt[A023416(n), A070939(A071044(n))]` -/
def P13889894693731768210.Spec : Prop :=
  ∀ n, (P13889894693731768210.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P9264848402972360505

`lt[n+1, A213178(2*n)]`
-/

namespace A072601.P9264848402972360505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213178 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072601.P9264848402972360505

namespace A072601

/-- `lt[n+1, A213178(2*n)]` -/
def P9264848402972360505.Spec : Prop :=
  ∀ n, (P9264848402972360505.a n : ℤ) = A072601 (n + 1)

end A072601

/-! ## A072601.P3380604363178595743

`lt[A003056(2*(n+2)), 2*a(A006257(n)-1)]` with `a(0)=2`
-/

namespace A072601.P3380604363178595743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (A006257 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072601.P3380604363178595743

namespace A072601

/-- `lt[A003056(2*(n+2)), 2*a(A006257(n)-1)]` -/
def P3380604363178595743.Spec : Prop :=
  ∀ n, (P3380604363178595743.a n : ℤ) = A072601 (n + 1)

end A072601

/-!
# A072602: Numbers such that in base 2 the number of 0's is >= the number of 1's.

The programs for A072602, the canonical program `A072602.P3826960900777268043` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072602 has offset 1).

The definition of A072602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072602.P3826960900777268043

`lt[a(floor(n/2))-(-1)^n, 0]` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072602

/-- `lt[a(floor(n/2))-(-1)^n, 0]` -/
def P3826960900777268043.Spec : Prop :=
  ∀ n, (P3826960900777268043.a n : ℤ) = A072602 (n + 1)

theorem P3826960900777268043.correct : P3826960900777268043.Spec := by
  intro n
  simp only [A072602, Nat.add_sub_cancel]

end A072602

/-! ## A072602.P12039182668116019746

`lt[4*a(and(n, n-1)), a(n-2)+8]` with `a(0)=2, a(1)=1`
-/

namespace A072602.P12039182668116019746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  4 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072602.P12039182668116019746

namespace A072602

/-- `lt[4*a(and(n, n-1)), a(n-2)+8]` -/
def P12039182668116019746.Spec : Prop :=
  ∀ n, (P12039182668116019746.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P17970708458384647906

`A346300(n+1)+1`
-/

namespace A072602.P17970708458384647906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346300 (n + 1) + 1

end

end A072602.P17970708458384647906

namespace A072602

/-- `A346300(n+1)+1` -/
def P17970708458384647906.Spec : Prop :=
  ∀ n, P17970708458384647906.a n = A072602 (n + 1)

end A072602

/-! ## A072602.P13136252990918365718

`lt[C(A001316(n), 2), n]`
-/

namespace A072602.P13136252990918365718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001316 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072602.P13136252990918365718

namespace A072602

/-- `lt[C(A001316(n), 2), n]` -/
def P13136252990918365718.Spec : Prop :=
  ∀ n, (P13136252990918365718.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P11469418137959903230

`∪[A031443(n+1), A072603(n+1)]`
-/

namespace A072602.P11469418137959903230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072602.P11469418137959903230

namespace A072602

/-- `∪[A031443(n+1), A072603(n+1)]` -/
def P11469418137959903230.Spec : Prop :=
  ∀ n, (P11469418137959903230.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P338318948571355208

`lt[A016825(n), A267584(n)²]`
-/

namespace A072602.P338318948571355208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072602.P338318948571355208

namespace A072602

/-- `lt[A016825(n), A267584(n)²]` -/
def P338318948571355208.Spec : Prop :=
  ∀ n, (P338318948571355208.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P17589216004289180296

`lt[n*A145037(n), n]`
-/

namespace A072602.P17589216004289180296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145037 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072602.P17589216004289180296

namespace A072602

/-- `lt[n*A145037(n), n]` -/
def P17589216004289180296.Spec : Prop :=
  ∀ n, (P17589216004289180296.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P12922469889301365253

`lt[A145037(n+1), 1]+1`
-/

namespace A072602.P12922469889301365253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072602.P12922469889301365253

namespace A072602

/-- `lt[A145037(n+1), 1]+1` -/
def P12922469889301365253.Spec : Prop :=
  ∀ n, (P12922469889301365253.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P12005955168962103661

`A020725(A346300(n+1))`
-/

namespace A072602.P12005955168962103661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A346300 (n + 1)).toNat

end

end A072602.P12005955168962103661

namespace A072602

/-- `A020725(A346300(n+1))` -/
def P12005955168962103661.Spec : Prop :=
  ∀ n, P12005955168962103661.a n = A072602 (n + 1)

end A072602

/-! ## A072602.P2784178975416466744

`lt[acot(n), acot(A037861(n))]`
-/

namespace A072602.P2784178975416466744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A037861 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072602.P2784178975416466744

namespace A072602

/-- `lt[acot(n), acot(A037861(n))]` -/
def P2784178975416466744.Spec : Prop :=
  ∀ n, (P2784178975416466744.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P11754720103363682265

`lt[1, A265917(n+1)]+1`
-/

namespace A072602.P11754720103363682265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072602.P11754720103363682265

namespace A072602

/-- `lt[1, A265917(n+1)]+1` -/
def P11754720103363682265.Spec : Prop :=
  ∀ n, (P11754720103363682265.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P4452129405317856496

`lt[4^A000120(n), 2*n+1]`
-/

namespace A072602.P4452129405317856496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A072602.P4452129405317856496

namespace A072602

/-- `lt[4^A000120(n), 2*n+1]` -/
def P4452129405317856496.Spec : Prop :=
  ∀ n, (P4452129405317856496.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P6356678800450927097

`eq[A000038(n), A115516(n)]`
-/

namespace A072602.P6356678800450927097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072602.P6356678800450927097

namespace A072602

/-- `eq[A000038(n), A115516(n)]` -/
def P6356678800450927097.Spec : Prop :=
  ∀ n, (P6356678800450927097.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P1865099589608800140

`eq[A115516(n), A127802(n)]`
-/

namespace A072602.P1865099589608800140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072602.P1865099589608800140

namespace A072602

/-- `eq[A115516(n), A127802(n)]` -/
def P1865099589608800140.Spec : Prop :=
  ∀ n, (P1865099589608800140.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P18325056357156090174

`lt[A001316(n)², A005408(n)]`
-/

namespace A072602.P18325056357156090174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072602.P18325056357156090174

namespace A072602

/-- `lt[A001316(n)², A005408(n)]` -/
def P18325056357156090174.Spec : Prop :=
  ∀ n, (P18325056357156090174.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P7594249329317740273

`eq[A069517(n+1), A115516(n)]`
-/

namespace A072602.P7594249329317740273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072602.P7594249329317740273

namespace A072602

/-- `eq[A069517(n+1), A115516(n)]` -/
def P7594249329317740273.Spec : Prop :=
  ∀ n, (P7594249329317740273.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P11800135936962250886

`lt[A000038(n), A037861(n)+1]`
-/

namespace A072602.P11800135936962250886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072602.P11800135936962250886

namespace A072602

/-- `lt[A000038(n), A037861(n)+1]` -/
def P11800135936962250886.Spec : Prop :=
  ∀ n, (P11800135936962250886.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P6517718512610116391

`lt[A001316(n)², A092391(n)+n]`
-/

namespace A072602.P6517718512610116391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072602.P6517718512610116391

namespace A072602

/-- `lt[A001316(n)², A092391(n)+n]` -/
def P6517718512610116391.Spec : Prop :=
  ∀ n, (P6517718512610116391.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P13198251993479838169

`eq[abs(A037861(n+1)), A037861(n+1)]+1`
-/

namespace A072602.P13198251993479838169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072602.P13198251993479838169

namespace A072602

/-- `eq[abs(A037861(n+1)), A037861(n+1)]+1` -/
def P13198251993479838169.Spec : Prop :=
  ∀ n, (P13198251993479838169.a n : ℤ) = A072602 (n + 1)

end A072602

/-! ## A072602.P1226368604174223194

`lt[Δ[A301336(n)], 1]+1`
-/

namespace A072602.P1226368604174223194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A072602.P1226368604174223194

namespace A072602

/-- `lt[Δ[A301336(n)], 1]+1` -/
def P1226368604174223194.Spec : Prop :=
  ∀ n, (P1226368604174223194.a n : ℤ) = A072602 (n + 1)

end A072602

/-!
# A072603: Numbers which in base 2 have more 0's than 1's.

The programs for A072603, the canonical program `A072603.P14089491065683936383` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072603 has offset 1).

The definition of A072603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072603.P14089491065683936383

`lt[a(floor(n/2))-(-1)^n, 0]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072603

/-- `lt[a(floor(n/2))-(-1)^n, 0]` -/
def P14089491065683936383.Spec : Prop :=
  ∀ n, (P14089491065683936383.a n : ℤ) = A072603 (n + 1)

theorem P14089491065683936383.correct : P14089491065683936383.Spec := by
  intro n
  simp only [A072603, Nat.add_sub_cancel]

end A072603

/-! ## A072603.P7084838620317881431

`lt[4*a(and(n, n-1)), or(1, n)]` with `a(0)=1`
-/

namespace A072603.P7084838620317881431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072603.P7084838620317881431

namespace A072603

/-- `lt[4*a(and(n, n-1)), or(1, n)]` -/
def P7084838620317881431.Spec : Prop :=
  ∀ n, (P7084838620317881431.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P15393824103263051843

`lt[4*a(and(n, n-1)), a(n-2)+8]` with `a(0)=4, a(1)=1`
-/

namespace A072603.P15393824103263051843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  4 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  f2 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072603.P15393824103263051843

namespace A072603

/-- `lt[4*a(and(n, n-1)), a(n-2)+8]` -/
def P15393824103263051843.Spec : Prop :=
  ∀ n, (P15393824103263051843.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P11178582614537811590

`lt[A001316(n)², n+1]`
-/

namespace A072603.P11178582614537811590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072603.P11178582614537811590

namespace A072603

/-- `lt[A001316(n)², n+1]` -/
def P11178582614537811590.Spec : Prop :=
  ∀ n, (P11178582614537811590.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P2606555201860873721

`lt[A060632(2*n)², n+1]`
-/

namespace A072603.P2606555201860873721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072603.P2606555201860873721

namespace A072603

/-- `lt[A060632(2*n)², n+1]` -/
def P2606555201860873721.Spec : Prop :=
  ∀ n, (P2606555201860873721.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P15203528039985263641

`lt[A145037(n), 0]`
-/

namespace A072603.P15203528039985263641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072603.P15203528039985263641

namespace A072603

/-- `lt[A145037(n), 0]` -/
def P15203528039985263641.Spec : Prop :=
  ∀ n, (P15203528039985263641.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P17646747559074258172

`∩[A044951(n+1), A072602(n+1)]`
-/

namespace A072603.P17646747559074258172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072603.P17646747559074258172

namespace A072603

/-- `∩[A044951(n+1), A072602(n+1)]` -/
def P17646747559074258172.Spec : Prop :=
  ∀ n, (P17646747559074258172.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P9293945685923530639

`lt[acot(n), A037861(n)]`
-/

namespace A072603.P9293945685923530639
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A072603.P9293945685923530639

namespace A072603

/-- `lt[acot(n), A037861(n)]` -/
def P9293945685923530639.Spec : Prop :=
  ∀ n, (P9293945685923530639.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P14968624241299905090

`lt[A102376(n), n+1]`
-/

namespace A072603.P14968624241299905090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072603.P14968624241299905090

namespace A072603

/-- `lt[A102376(n), n+1]` -/
def P14968624241299905090.Spec : Prop :=
  ∀ n, (P14968624241299905090.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P18071374971603479178

`lt[4^A000120(n), n+1]`
-/

namespace A072603.P18071374971603479178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A072603.P18071374971603479178

namespace A072603

/-- `lt[4^A000120(n), n+1]` -/
def P18071374971603479178.Spec : Prop :=
  ∀ n, (P18071374971603479178.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P3547492272438231912

`eq[A000038(n), A115517(n)]`
-/

namespace A072603.P3547492272438231912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072603.P3547492272438231912

namespace A072603

/-- `eq[A000038(n), A115517(n)]` -/
def P3547492272438231912.Spec : Prop :=
  ∀ n, (P3547492272438231912.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P15460724690244551149

`eq[A115517(n), A127802(n)]`
-/

namespace A072603.P15460724690244551149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072603.P15460724690244551149

namespace A072603

/-- `eq[A115517(n), A127802(n)]` -/
def P15460724690244551149.Spec : Prop :=
  ∀ n, (P15460724690244551149.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P9781014709897440951

`eq[A115517(n), A391442(n)]`
-/

namespace A072603.P9781014709897440951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072603.P9781014709897440951

namespace A072603

/-- `eq[A115517(n), A391442(n)]` -/
def P9781014709897440951.Spec : Prop :=
  ∀ n, (P9781014709897440951.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P4799513241422159252

`lt[A000038(n), A037861(n)]`
-/

namespace A072603.P4799513241422159252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072603.P4799513241422159252

namespace A072603

/-- `lt[A000038(n), A037861(n)]` -/
def P4799513241422159252.Spec : Prop :=
  ∀ n, (P4799513241422159252.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P1450885388847716491

`lt[A000120(n), A080791(n)]`
-/

namespace A072603.P1450885388847716491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072603.P1450885388847716491

namespace A072603

/-- `lt[A000120(n), A080791(n)]` -/
def P1450885388847716491.Spec : Prop :=
  ∀ n, (P1450885388847716491.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P7714153310655034404

`lt[A080116(n), A037861(n)]`
-/

namespace A072603.P7714153310655034404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072603.P7714153310655034404

namespace A072603

/-- `lt[A080116(n), A037861(n)]` -/
def P7714153310655034404.Spec : Prop :=
  ∀ n, (P7714153310655034404.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P2348475312437678818

`lt[log2(A001316(n)), A080791(n)]`
-/

namespace A072603.P2348475312437678818
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A072603.P2348475312437678818

namespace A072603

/-- `lt[log2(A001316(n)), A080791(n)]` -/
def P2348475312437678818.Spec : Prop :=
  ∀ n, (P2348475312437678818.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P14317039359435633723

`eq[A069517(n+1), A115517(n)]`
-/

namespace A072603.P14317039359435633723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072603.P14317039359435633723

namespace A072603

/-- `eq[A069517(n+1), A115517(n)]` -/
def P14317039359435633723.Spec : Prop :=
  ∀ n, (P14317039359435633723.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P15706979656415087217

`eq[A115517(n), A135416(n+1)]`
-/

namespace A072603.P15706979656415087217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072603.P15706979656415087217

namespace A072603

/-- `eq[A115517(n), A135416(n+1)]` -/
def P15706979656415087217.Spec : Prop :=
  ∀ n, (P15706979656415087217.a n : ℤ) = A072603 (n + 1)

end A072603

/-! ## A072603.P5913327598809519787

`lt[n, A080791(n)+A011371(n)]`
-/

namespace A072603.P5913327598809519787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A011371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072603.P5913327598809519787

namespace A072603

/-- `lt[n, A080791(n)+A011371(n)]` -/
def P5913327598809519787.Spec : Prop :=
  ∀ n, (P5913327598809519787.a n : ℤ) = A072603 (n + 1)

end A072603

/-!
# A072604: Last digit of n, phi(n) and sigma(n) is 0 in base 10.

The programs for A072604, the canonical program `A072604.P7451887866366379934` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072604 has offset 1).

The definition of A072604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072604.P7451887866366379934

`∩[10*n, A072589(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A072604

/-- `∩[10*n, A072589(n+1)]` -/
def P7451887866366379934.Spec : Prop :=
  ∀ n, (P7451887866366379934.a n : ℤ) = A072604 (n + 1)

theorem P7451887866366379934.correct : P7451887866366379934.Spec := by
  intro n
  simp only [A072604, Nat.add_sub_cancel]

end A072604

/-! ## A072604.P15799234270594917653

`∩[A072589(n+1), A008592(n)]`
-/

namespace A072604.P15799234270594917653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072604.P15799234270594917653

namespace A072604

/-- `∩[A072589(n+1), A008592(n)]` -/
def P15799234270594917653.Spec : Prop :=
  ∀ n, (P15799234270594917653.a n : ℤ) = A072604 (n + 1)

end A072604

/-! ## A072604.P8392876657350219763

`∩[A072589(n+1), A396948(n+1)]`
-/

namespace A072604.P8392876657350219763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072604.P8392876657350219763

namespace A072604

/-- `∩[A072589(n+1), A396948(n+1)]` -/
def P8392876657350219763.Spec : Prop :=
  ∀ n, (P8392876657350219763.a n : ℤ) = A072604 (n + 1)

end A072604

/-! ## A072604.P15569978311130294235

`∩[A072589(n+1), A359841(n+1)]`
-/

namespace A072604.P15569978311130294235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072604.P15569978311130294235

namespace A072604

/-- `∩[A072589(n+1), A359841(n+1)]` -/
def P15569978311130294235.Spec : Prop :=
  ∀ n, (P15569978311130294235.a n : ℤ) = A072604 (n + 1)

end A072604

/-! ## A072604.P11994128751086981848

`∩[A072589(n+1), A186438(n+1)]`
-/

namespace A072604.P11994128751086981848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072604.P11994128751086981848

namespace A072604

/-- `∩[A072589(n+1), A186438(n+1)]` -/
def P11994128751086981848.Spec : Prop :=
  ∀ n, (P11994128751086981848.a n : ℤ) = A072604 (n + 1)

end A072604

/-! ## A072604.P371901010275050635

`∩[A072589(n+1), A008587(n)]`
-/

namespace A072604.P371901010275050635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072604.P371901010275050635

namespace A072604

/-- `∩[A072589(n+1), A008587(n)]` -/
def P371901010275050635.Spec : Prop :=
  ∀ n, (P371901010275050635.a n : ℤ) = A072604 (n + 1)

end A072604

/-! ## A072604.P3975800540825922518

`filter[A072589(n+1), A079998(#)]`
-/

namespace A072604.P3975800540825922518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A072604.P3975800540825922518

namespace A072604

/-- `filter[A072589(n+1), A079998(#)]` -/
def P3975800540825922518.Spec : Prop :=
  ∀ n, P3975800540825922518.a n = A072604 (n + 1)

end A072604

/-! ## A072604.P5792107931100956398

`filter[A072589(n+1), A198517(#)]`
-/

namespace A072604.P5792107931100956398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A072604.P5792107931100956398

namespace A072604

/-- `filter[A072589(n+1), A198517(#)]` -/
def P5792107931100956398.Spec : Prop :=
  ∀ n, P5792107931100956398.a n = A072604 (n + 1)

end A072604

/-! ## A072604.P3100082953238223382

`filter[A072589(n+1), A232990(#)]`
-/

namespace A072604.P3100082953238223382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A072604.P3100082953238223382

namespace A072604

/-- `filter[A072589(n+1), A232990(#)]` -/
def P3100082953238223382.Spec : Prop :=
  ∀ n, P3100082953238223382.a n = A072604 (n + 1)

end A072604

/-!
# A072605: Number of necklaces with n beads over an n-ary alphabet {a1,a2,...,an} such that #(w,a1) >= #(w,a2) >= ... >= #(w,ak) >= 0, where #(w,x) counts the letters x in word w.

The programs for A072605, there is no canonical definition to state claims against.
-/

/-! ## A072605.P10784678275383385665

`∑{d}[A028310(n), A261600(#)]`
-/

namespace A072605.P10784678275383385665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A261600 d

end

end A072605.P10784678275383385665

/-! ## A072605.P17452102646370923912

`∑{d}[A065033(2*n), A261600(#)]`
-/

namespace A072605.P17452102646370923912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A261600 d

end

end A072605.P17452102646370923912

/-! ## A072605.P4544531533701911629

`∑{d}[A007318(∑[n]+1), A261600(#)]`
-/

namespace A072605.P4544531533701911629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A261600 d

end

end A072605.P4544531533701911629

/-!
# A072607: If D[n] is divisor-set of n, then in set of 1+D only 2 primes occur:{2,3}; also n is not squarefree.

The programs for A072607, there is no canonical definition to state claims against.
-/

/-! ## A072607.P3772283661405412396

`filter[A067778(n+1), A355452(#)]`
-/

namespace A072607.P3772283661405412396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A072607.P3772283661405412396

/-! ## A072607.P5899855731524182360

`eq[3, A166333(A105570(n))]`
-/

namespace A072607.P5899855731524182360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072607.P5899855731524182360

/-! ## A072607.P8631434658030898325

`∩[A034046(n+1), A051222(n+1)]`
-/

namespace A072607.P8631434658030898325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072607.P8631434658030898325

/-! ## A072607.P15605916070934759940

`∩[A038838(n+1), A051222(n+1)]`
-/

namespace A072607.P15605916070934759940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072607.P15605916070934759940

/-! ## A072607.P14028998405621203877

`∩[A051222(n+1), A067778(n+1)]`
-/

namespace A072607.P14028998405621203877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072607.P14028998405621203877

/-!
# A072608: Parity of remainder Mod(prime(n),n) = A004648(n).

The programs for A072608, the canonical program `A072608.P17252208234084094213` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072608 has offset 1).

The definition of A072608 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004648, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072608.P17252208234084094213

`A004648(n+1)%2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072608

/-- `A004648(n+1)%2` -/
def P17252208234084094213.Spec : Prop :=
  ∀ n, P17252208234084094213.a n = A072608 (n + 1)

theorem P17252208234084094213.correct : P17252208234084094213.Spec := by
  intro n
  simp only [A072608, Nat.add_sub_cancel]

end A072608

/-! ## A072608.P3868513020458990385

`and(1, Δ[A064365(n)]%(n+1))`
-/

namespace A072608.P3868513020458990385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ))

end

end A072608.P3868513020458990385

namespace A072608

/-- `and(1, Δ[A064365(n)]%(n+1))` -/
def P3868513020458990385.Spec : Prop :=
  ∀ n, P3868513020458990385.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P17643350069816681946

`(A000040(n+1)%(n+1))%2`
-/

namespace A072608.P17643350069816681946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)) 2

end

end A072608.P17643350069816681946

namespace A072608

/-- `(A000040(n+1)%(n+1))%2` -/
def P17643350069816681946.Spec : Prop :=
  ∀ n, P17643350069816681946.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P3862834440992141706

`(A006005(n+1)%(n+1))%2`
-/

namespace A072608.P3862834440992141706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A006005 (n + 1)) (n + 1 : ℤ)) 2

end

end A072608.P3862834440992141706

namespace A072608

/-- `(A006005(n+1)%(n+1))%2` -/
def P3862834440992141706.Spec : Prop :=
  ∀ n, P3862834440992141706.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P4421662638623532462

`(A014688(n+1)%(n+1))%2`
-/

namespace A072608.P4421662638623532462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A014688 (n + 1)) (n + 1 : ℤ)) 2

end

end A072608.P4421662638623532462

namespace A072608

/-- `(A014688(n+1)%(n+1))%2` -/
def P4421662638623532462.Spec : Prop :=
  ∀ n, P4421662638623532462.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P4421044153879227465

`(A014689(n+1)%(n+1))%2`
-/

namespace A072608.P4421044153879227465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A014689 (n + 1)) (n + 1 : ℤ)) 2

end

end A072608.P4421044153879227465

namespace A072608

/-- `(A014689(n+1)%(n+1))%2` -/
def P4421044153879227465.Spec : Prop :=
  ∀ n, P4421044153879227465.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P17433156119824706643

`(A176624(n+1)%(n+1))%2`
-/

namespace A072608.P17433156119824706643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A176624 (n + 1)) (n + 1 : ℤ)) 2

end

end A072608.P17433156119824706643

namespace A072608

/-- `(A176624(n+1)%(n+1))%2` -/
def P17433156119824706643.Spec : Prop :=
  ∀ n, P17433156119824706643.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P2448182799069429913

`(∑[A230847(n+1)]%(n+1))%2`
-/

namespace A072608.P2448182799069429913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)) 2

end

end A072608.P2448182799069429913

namespace A072608

/-- `(∑[A230847(n+1)]%(n+1))%2` -/
def P2448182799069429913.Spec : Prop :=
  ∀ n, P2448182799069429913.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P1216641276754721812

`and(1, (A006093(n+1)+1)%(n+1))`
-/

namespace A072608.P1216641276754721812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A006093 (n + 1) + 1) (n + 1 : ℤ))

end

end A072608.P1216641276754721812

namespace A072608

/-- `and(1, (A006093(n+1)+1)%(n+1))` -/
def P1216641276754721812.Spec : Prop :=
  ∀ n, P1216641276754721812.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P10046643405640867603

`((A001749(n+1)/4)%(n+1))%2`
-/

namespace A072608.P10046643405640867603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 4)) (n + 1 : ℤ)) 2

end

end A072608.P10046643405640867603

namespace A072608

/-- `((A001749(n+1)/4)%(n+1))%2` -/
def P10046643405640867603.Spec : Prop :=
  ∀ n, P10046643405640867603.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P16812848653036916845

`and(1, (A052147(n+1)-2)%(n+1))`
-/

namespace A072608.P16812848653036916845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A052147 (n + 1) - 2) (n + 1 : ℤ))

end

end A072608.P16812848653036916845

namespace A072608

/-- `and(1, (A052147(n+1)-2)%(n+1))` -/
def P16812848653036916845.Spec : Prop :=
  ∀ n, P16812848653036916845.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P9707121192038154544

`A000035(A004648(n+1))`
-/

namespace A072608.P9707121192038154544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004648 (n + 1)).toNat

end

end A072608.P9707121192038154544

namespace A072608

/-- `A000035(A004648(n+1))` -/
def P9707121192038154544.Spec : Prop :=
  ∀ n, P9707121192038154544.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P17319285585871378252

`and(A004648(n+1), A054977(n))`
-/

namespace A072608.P17319285585871378252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004648 (n + 1)) (A054977 n)

end

end A072608.P17319285585871378252

namespace A072608

/-- `and(A004648(n+1), A054977(n))` -/
def P17319285585871378252.Spec : Prop :=
  ∀ n, P17319285585871378252.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P6071043404851956000

`and(A004648(n+1), A057427(n))`
-/

namespace A072608.P6071043404851956000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004648 (n + 1)) (A057427 n)

end

end A072608.P6071043404851956000

namespace A072608

/-- `and(A004648(n+1), A057427(n))` -/
def P6071043404851956000.Spec : Prop :=
  ∀ n, P6071043404851956000.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P7862102538386277213

`and(A004648(n+1), A076877(n+1))`
-/

namespace A072608.P7862102538386277213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004648 (n + 1)) (A076877 (n + 1))

end

end A072608.P7862102538386277213

namespace A072608

/-- `and(A004648(n+1), A076877(n+1))` -/
def P7862102538386277213.Spec : Prop :=
  ∀ n, P7862102538386277213.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P1367145116170728738

`and(A004648(n+1), A080076(n+1))`
-/

namespace A072608.P1367145116170728738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004648 (n + 1)) (A080076 (n + 1))

end

end A072608.P1367145116170728738

namespace A072608

/-- `and(A004648(n+1), A080076(n+1))` -/
def P1367145116170728738.Spec : Prop :=
  ∀ n, P1367145116170728738.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P11514745076074548443

`and(1, (A004648(n+1)*A142993(n))²)`
-/

namespace A072608.P11514745076074548443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A004648 (n + 1) * A142993 n) ^ 2)

end

end A072608.P11514745076074548443

namespace A072608

/-- `and(1, (A004648(n+1)*A142993(n))²)` -/
def P11514745076074548443.Spec : Prop :=
  ∀ n, P11514745076074548443.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P1274523249818323264

`and(1, (A004648(n+1)*A144130(n))²)`
-/

namespace A072608.P1274523249818323264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A004648 (n + 1) * A144130 n) ^ 2)

end

end A072608.P1274523249818323264

namespace A072608

/-- `and(1, (A004648(n+1)*A144130(n))²)` -/
def P1274523249818323264.Spec : Prop :=
  ∀ n, P1274523249818323264.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P8605039994267497404

`(record[A006530(n+2)]%(n+1))%2`
-/

namespace A072608.P8605039994267497404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)) 2

end

end A072608.P8605039994267497404

namespace A072608

/-- `(record[A006530(n+2)]%(n+1))%2` -/
def P8605039994267497404.Spec : Prop :=
  ∀ n, P8605039994267497404.a n = A072608 (n + 1)

end A072608

/-! ## A072608.P12786239509115488232

`(record[A020639(n+2)]%(n+1))%2`
-/

namespace A072608.P12786239509115488232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)) 2

end

end A072608.P12786239509115488232

namespace A072608

/-- `(record[A020639(n+2)]%(n+1))%2` -/
def P12786239509115488232.Spec : Prop :=
  ∀ n, P12786239509115488232.a n = A072608 (n + 1)

end A072608

/-!
# A072609: Changing of parity of remainder A072608(n) from alternation [..010101..] to steadily 1-range [...1111..]. AC-range corresponds to 0, while DC-range labeled by 1.

The programs for A072609, the canonical program `A072609.P2032538925425816875` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072609 has offset 1).

The definition of A072609 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072608, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072609.P2032538925425816875

`A072608(n+1)*A072608(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072609

/-- `A072608(n+1)*A072608(n+2)` -/
def P2032538925425816875.Spec : Prop :=
  ∀ n, P2032538925425816875.a n = A072609 (n + 1)

theorem P2032538925425816875.correct : P2032538925425816875.Spec := by
  intro n
  simp only [A072609, Nat.add_sub_cancel]

end A072609

/-! ## A072609.P6887757043804269027

`A004648(n+1)%2*A004648(n+2)%2`
-/

namespace A072609.P6887757043804269027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004648 (n + 1)) 2 * Int.tmod (A004648 (n + 2)) 2

end

end A072609.P6887757043804269027

namespace A072609

/-- `A004648(n+1)%2*A004648(n+2)%2` -/
def P6887757043804269027.Spec : Prop :=
  ∀ n, P6887757043804269027.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P4246812121840246935

`A072608(or(1, n+1))`
-/

namespace A072609.P4246812121840246935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (Nat.lor 1 (n + 1))

end

end A072609.P4246812121840246935

namespace A072609

/-- `A072608(or(1, n+1))` -/
def P4246812121840246935.Spec : Prop :=
  ∀ n, P4246812121840246935.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P10040083244283424884

`floor(cos(Δ[A072608(n+1)]))`
-/

namespace A072609.P10040083244283424884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A072609.P10040083244283424884

namespace A072609

/-- `floor(cos(Δ[A072608(n+1)]))` -/
def P10040083244283424884.Spec : Prop :=
  ∀ n, P10040083244283424884.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P6546004274572731869

`A072608(n%2+n+1)`
-/

namespace A072609.P6546004274572731869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (n % 2 + (n + 1))

end

end A072609.P6546004274572731869

namespace A072609

/-- `A072608(n%2+n+1)` -/
def P6546004274572731869.Spec : Prop :=
  ∀ n, P6546004274572731869.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P6671744513517071657

`A072608(gcd(2, n+1)+n)`
-/

namespace A072609.P6671744513517071657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (Nat.gcd 2 (n + 1) + n)

end

end A072609.P6671744513517071657

namespace A072609

/-- `A072608(gcd(2, n+1)+n)` -/
def P6671744513517071657.Spec : Prop :=
  ∀ n, P6671744513517071657.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P2039895725129450270

`A072608(and(1, n)+n+1)`
-/

namespace A072609.P2039895725129450270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (Nat.land 1 n + (n + 1))

end

end A072609.P2039895725129450270

namespace A072609

/-- `A072608(and(1, n)+n+1)` -/
def P2039895725129450270.Spec : Prop :=
  ∀ n, P2039895725129450270.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P3176918404004067485

`and(round(n/(n+1)), Δ[A068901(n+1)])`
-/

namespace A072609.P3176918404004067485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))) (f1 (n + 1) - f1 n)

end

end A072609.P3176918404004067485

namespace A072609

/-- `and(round(n/(n+1)), Δ[A068901(n+1)])` -/
def P3176918404004067485.Spec : Prop :=
  ∀ n, P3176918404004067485.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P7604368461299199802

`(A000040(or(1, n+1))%or(1, n+1))%2`
-/

namespace A072609.P7604368461299199802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000040 (Nat.lor 1 (n + 1))) (Nat.lor 1 (n + 1) : ℤ)) 2

end

end A072609.P7604368461299199802

namespace A072609

/-- `(A000040(or(1, n+1))%or(1, n+1))%2` -/
def P7604368461299199802.Spec : Prop :=
  ∀ n, P7604368461299199802.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P12501235948601272748

`A072608(A109613(n+1))`
-/

namespace A072609.P12501235948601272748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (A109613 (n + 1)).toNat

end

end A072609.P12501235948601272748

namespace A072609

/-- `A072608(A109613(n+1))` -/
def P12501235948601272748.Spec : Prop :=
  ∀ n, P12501235948601272748.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P17046942505313000242

`A072608(A063196(n+2))`
-/

namespace A072609.P17046942505313000242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (A063196 (n + 2)).toNat

end

end A072609.P17046942505313000242

namespace A072609

/-- `A072608(A063196(n+2))` -/
def P17046942505313000242.Spec : Prop :=
  ∀ n, P17046942505313000242.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P10264463261956368977

`A072608(A000034(n)+n)`
-/

namespace A072609.P10264463261956368977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (A000034 n + (n : ℤ)).toNat

end

end A072609.P10264463261956368977

namespace A072609

/-- `A072608(A000034(n)+n)` -/
def P10264463261956368977.Spec : Prop :=
  ∀ n, P10264463261956368977.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P14397570151322374621

`A000007(abs(Δ[A072608(n+1)]))`
-/

namespace A072609.P14397570151322374621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |f1 (n + 1) - f1 n|.toNat

end

end A072609.P14397570151322374621

namespace A072609

/-- `A000007(abs(Δ[A072608(n+1)]))` -/
def P14397570151322374621.Spec : Prop :=
  ∀ n, P14397570151322374621.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P15877866016254187540

`A000007(Δ[A072608(n+1)]²)`
-/

namespace A072609.P15877866016254187540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A072609.P15877866016254187540

namespace A072609

/-- `A000007(Δ[A072608(n+1)]²)` -/
def P15877866016254187540.Spec : Prop :=
  ∀ n, P15877866016254187540.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P13254435700151176007

`A004109(Δ[A072608(n+1)]²)`
-/

namespace A072609.P13254435700151176007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004109 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A072609.P13254435700151176007

namespace A072609

/-- `A004109(Δ[A072608(n+1)]²)` -/
def P13254435700151176007.Spec : Prop :=
  ∀ n, P13254435700151176007.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P8021770949391209911

`A072608(Δ[A072608(n+1)]+2)`
-/

namespace A072609.P8021770949391209911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (f1 (n + 1) - f1 n + 2).toNat

end

end A072609.P8021770949391209911

namespace A072609

/-- `A072608(Δ[A072608(n+1)]+2)` -/
def P8021770949391209911.Spec : Prop :=
  ∀ n, P8021770949391209911.a n = A072609 (n + 1)

end A072609

/-! ## A072609.P5281444079497385064

`A072608(A072608(n+1)+1+n)`
-/

namespace A072609.P5281444079497385064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (A072608 (n + 1) + 1 + (n : ℤ)).toNat

end

end A072609.P5281444079497385064

namespace A072609

/-- `A072608(A072608(n+1)+1+n)` -/
def P5281444079497385064.Spec : Prop :=
  ∀ n, P5281444079497385064.a n = A072609 (n + 1)

end A072609

/-!
# A072611: Numbers k such that phi(k) divides sigma(k+1) - sigma(k).

The programs for A072611, there is no canonical definition to state claims against.
-/

/-! ## A072611.P1164497284192672312

`A123050(xor(A056000(n), A218403(n+1)))`
-/

namespace A072611.P1164497284192672312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (Int.xor (A056000 n) (A218403 (n + 1))).toNat

end

end A072611.P1164497284192672312

/-!
# A072612: Minimal value of { abs(n-sigma(k)) : k>0 }.

The programs for A072612, there is no canonical definition to state claims against.
-/

/-! ## A072612.P2517320185111597233

`A091090(A173015(n+1)²)*A175253(n+1)`
-/

namespace A072612.P2517320185111597233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A173015 (n + 1) ^ 2).toNat * A175253 (n + 1)

end

end A072612.P2517320185111597233

/-! ## A072612.P10660510516006295798

`A001511(A290480(n+1))*A175253(n+1)`
-/

namespace A072612.P10660510516006295798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A290480 (n + 1)).toNat * A175253 (n + 1)

end

end A072612.P10660510516006295798

/-! ## A072612.P5546364511247319781

`A175253(n+1)*A323166(A066729(n+1))`
-/

namespace A072612.P5546364511247319781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1) * A323166 (A066729 (n + 1)).toNat

end

end A072612.P5546364511247319781

/-! ## A072612.P2906939642050845861

`A175253(A332962(2*(n+2)))+A175253(n+1)`
-/

namespace A072612.P2906939642050845861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (A332962 (2 * (n + 2))).toNat + A175253 (n + 1)

end

end A072612.P2906939642050845861

/-! ## A072612.P8835780668226707607

`A073802(n+1)*A151622(A258913(n+1))`
-/

namespace A072612.P8835780668226707607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073802 (n + 1) * A151622 (A258913 (n + 1)).toNat

end

end A072612.P8835780668226707607

/-!
# A072613: Number of numbers of the form p*q (p, q distinct primes) less than or equal to n.

The programs for A072613, the canonical program `A072613.P13158909735510187267` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072613 has offset 1).

The definition of A072613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072613.P7225165757791777311

`∑[A280710(n+1)]`
-/

namespace A072613.P7225165757791777311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P7225165757791777311

namespace A072613

/-- `∑[A280710(n+1)]` -/
def P7225165757791777311.Spec : Prop :=
  ∀ n, P7225165757791777311.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P13158909735510187267

`∑[C(A230595(n+1), 2)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A072613

/-- `∑[C(A230595(n+1), 2)]` -/
def P13158909735510187267.Spec : Prop :=
  ∀ n, (P13158909735510187267.a n : ℤ) = A072613 (n + 1)

theorem P13158909735510187267.correct : P13158909735510187267.Spec := by
  intro n
  simp only [A072613, Nat.add_sub_cancel]

end A072613

/-! ## A072613.P15359398529793720103

`∑[char[A006881(n+1)-1]]`
-/

namespace A072613.P15359398529793720103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P15359398529793720103

namespace A072613

/-- `∑[char[A006881(n+1)-1]]` -/
def P15359398529793720103.Spec : Prop :=
  ∀ n, (P15359398529793720103.a n : ℤ) = A072613 (n + 1)

end A072613

/-! ## A072613.P10864466001061373388

`∑[char[eq[1, A281116(n+1)]]]`
-/

namespace A072613.P10864466001061373388
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P10864466001061373388

namespace A072613

/-- `∑[char[eq[1, A281116(n+1)]]]` -/
def P10864466001061373388.Spec : Prop :=
  ∀ n, (P10864466001061373388.a n : ℤ) = A072613 (n + 1)

end A072613

/-! ## A072613.P4313825957540038245

`∑[char[eq[2, A046645(n+1)]]]`
-/

namespace A072613.P4313825957540038245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P4313825957540038245

namespace A072613

/-- `∑[char[eq[2, A046645(n+1)]]]` -/
def P4313825957540038245.Spec : Prop :=
  ∀ n, (P4313825957540038245.a n : ℤ) = A072613 (n + 1)

end A072613

/-! ## A072613.P8281642734034865756

`∑[val(A046644(n+1)+4, 8)]`
-/

namespace A072613.P8281642734034865756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046644 (n + 1) + 4).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P8281642734034865756

namespace A072613

/-- `∑[val(A046644(n+1)+4, 8)]` -/
def P8281642734034865756.Spec : Prop :=
  ∀ n, (P8281642734034865756.a n : ℤ) = A072613 (n + 1)

end A072613

/-! ## A072613.P1674833882791538563

`∑[val(A065387(n+1), 2*(n+2))]`
-/

namespace A072613.P1674833882791538563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065387 (n + 1)).toNat (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P1674833882791538563

namespace A072613

/-- `∑[val(A065387(n+1), 2*(n+2))]` -/
def P1674833882791538563.Spec : Prop :=
  ∀ n, (P1674833882791538563.a n : ℤ) = A072613 (n + 1)

end A072613

/-! ## A072613.P367562450957991847

`A243906(n+1)+A056812(n+1)`
-/

namespace A072613.P367562450957991847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243906 (n + 1) + A056812 (n + 1)

end

end A072613.P367562450957991847

namespace A072613

/-- `A243906(n+1)+A056812(n+1)` -/
def P367562450957991847.Spec : Prop :=
  ∀ n, P367562450957991847.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P15822164539487423024

`A072000(n+1)-A056811(n+1)`
-/

namespace A072613.P15822164539487423024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) - A056811 (n + 1)

end

end A072613.P15822164539487423024

namespace A072613

/-- `A072000(n+1)-A056811(n+1)` -/
def P15822164539487423024.Spec : Prop :=
  ∀ n, P15822164539487423024.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P12697466266735568779

`A334940(n+1)-A072000(n+1)`
-/

namespace A072613.P12697466266735568779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334940 (n + 1) - A072000 (n + 1)

end

end A072613.P12697466266735568779

namespace A072613

/-- `A334940(n+1)-A072000(n+1)` -/
def P12697466266735568779.Spec : Prop :=
  ∀ n, P12697466266735568779.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P9354941208576073982

`∑[A353471(n+1)*A353496(n+1)]`
-/

namespace A072613.P9354941208576073982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353471 (n + 1) * A353496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P9354941208576073982

namespace A072613

/-- `∑[A353471(n+1)*A353496(n+1)]` -/
def P9354941208576073982.Spec : Prop :=
  ∀ n, P9354941208576073982.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P13775656940038573935

`A079715(n+1)+A243906(n+1)-1`
-/

namespace A072613.P13775656940038573935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079715 (n + 1) + (A243906 (n + 1) - 1)

end

end A072613.P13775656940038573935

namespace A072613

/-- `A079715(n+1)+A243906(n+1)-1` -/
def P13775656940038573935.Spec : Prop :=
  ∀ n, P13775656940038573935.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P12986571623834483069

`A072000(n+1)-A000720(floor(sqrt(n+1)))`
-/

namespace A072613.P12986571623834483069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) - A000720 (Nat.sqrt (n + 1))

end

end A072613.P12986571623834483069

namespace A072613

/-- `A072000(n+1)-A000720(floor(sqrt(n+1)))` -/
def P12986571623834483069.Spec : Prop :=
  ∀ n, P12986571623834483069.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P15979574788785085109

`∑[(A001221(n+1)-1)*A064911(n+1)]`
-/

namespace A072613.P15979574788785085109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) - 1) * A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P15979574788785085109

namespace A072613

/-- `∑[(A001221(n+1)-1)*A064911(n+1)]` -/
def P15979574788785085109.Spec : Prop :=
  ∀ n, P15979574788785085109.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P4005678893195047050

`A053866(A046523(n+1)+3)+a(n-1)` with `a(0)=0`
-/

namespace A072613.P4005678893195047050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053866 (A046523 (n + 1) + 3).toNat + a (n - 1)

end

end A072613.P4005678893195047050

namespace A072613

/-- `A053866(A046523(n+1)+3)+a(n-1)` -/
def P4005678893195047050.Spec : Prop :=
  ∀ n, P4005678893195047050.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P11439746763659643733

`∑[A303337(A000005(n+1))*A303337(n+1)]`
-/

namespace A072613.P11439746763659643733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303337 (A000005 (n + 1)).toNat * A303337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P11439746763659643733

namespace A072613

/-- `∑[A303337(A000005(n+1))*A303337(n+1)]` -/
def P11439746763659643733.Spec : Prop :=
  ∀ n, P11439746763659643733.a n = A072613 (n + 1)

end A072613

/-! ## A072613.P7096365874879072720

`∑[char[eq[3, A002033(n)]]]`
-/

namespace A072613.P7096365874879072720
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P7096365874879072720

namespace A072613

/-- `∑[char[eq[3, A002033(n)]]]` -/
def P7096365874879072720.Spec : Prop :=
  ∀ n, (P7096365874879072720.a n : ℤ) = A072613 (n + 1)

end A072613

/-! ## A072613.P13301925220458188923

`∑[char[eq[2, A066882(n+1)]]]`
-/

namespace A072613.P13301925220458188923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P13301925220458188923

namespace A072613

/-- `∑[char[eq[2, A066882(n+1)]]]` -/
def P13301925220458188923.Spec : Prop :=
  ∀ n, (P13301925220458188923.a n : ℤ) = A072613 (n + 1)

end A072613

/-! ## A072613.P6323553819700324756

`∑[char[eq[2, A008476(n+2)]+1]]`
-/

namespace A072613.P6323553819700324756
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P6323553819700324756

namespace A072613

/-- `∑[char[eq[2, A008476(n+2)]+1]]` -/
def P6323553819700324756.Spec : Prop :=
  ∀ n, (P6323553819700324756.a n : ℤ) = A072613 (n + 1)

end A072613

/-! ## A072613.P12454012075278818497

`A302643(n+2)+A302643(n+3)`
-/

namespace A072613.P12454012075278818497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (n + 2) + A302643 (n + 3)

end

end A072613.P12454012075278818497

namespace A072613

/-- `A302643(n+2)+A302643(n+3)` -/
def P12454012075278818497.Spec : Prop :=
  ∀ n, P12454012075278818497.a n = A072613 (n + 1)

end A072613

/-!
# A072614: a(n) = Sum_{k = 1..n} (-1)^(n reduced mod k).

The programs for A072614, the canonical program `A072614.P16482730328586580813` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072614 has offset 1).

The definition of A072614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072614.P16482730328586580813

`2*A111775(n+1)+3-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072614

/-- `2*A111775(n+1)+3-a(n-1)` -/
def P16482730328586580813.Spec : Prop :=
  ∀ n, P16482730328586580813.a n = A072614 (n + 1)

theorem P16482730328586580813.correct : P16482730328586580813.Spec := by
  intro n
  simp only [A072614, Nat.add_sub_cancel]

end A072614

/-! ## A072614.P17068111185292079519

`A347992(A056354(n))+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n`
-/

namespace A072614.P17068111185292079519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347992 (A056354 n).toNat : ℚ) + (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

end

end A072614.P17068111185292079519

namespace A072614

/-- `A347992(A056354(n))+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n` -/
def P17068111185292079519.Spec : Prop :=
  ∀ n, P17068111185292079519.a n = (A072614 (n + 1) : ℚ)

end A072614

/-!
# A072618: Numbers n for which the prime circle problem has a simple solution: the arrangement of numbers 1 through 2n around a circle is such that the sum of each pair of adjacent numbers is prime and the odd and even numbers are in order in opposite directions.

The programs for A072618, there is no canonical definition to state claims against.
-/

/-! ## A072618.P6062664069699319227

`lt[0, A072617(n+1)]+1`
-/

namespace A072618.P6062664069699319227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072617 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072618.P6062664069699319227

/-! ## A072618.P2017358442878310137

`lt[A000007(n), A072617(A028310(n))]`
-/

namespace A072618.P2017358442878310137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072617 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072618.P2017358442878310137

/-! ## A072618.P10063561126637261439

`record[(n+1)^A001221(A072617(n+1)+1)^n]`
-/

namespace A072618.P10063561126637261439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001221 (A072617 (n + 1) + 1).toNat ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072618.P10063561126637261439

/-! ## A072618.P455009053660610858

`∑[A040946(p?[A143842(n)])]`
-/

namespace A072618.P455009053660610858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040946 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072618.P455009053660610858

/-! ## A072618.P11881056836907134442

`∑[A050873(A149258(A060585(n)))]`
-/

namespace A072618.P11881056836907134442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A149258 (A060585 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072618.P11881056836907134442

/-!
# A072619: Permutation of natural numbers obtained from the permutation A072088 (zero-based).

The programs for A072619, there is no canonical definition to state claims against.
-/

/-! ## A072619.P2541473669999508982

`A072621(n+1)-1`
-/

namespace A072619.P2541473669999508982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (n + 1) - 1

end

end A072619.P2541473669999508982

/-! ## A072619.P2304852874568110023

`A023443(A072621(n+1))`
-/

namespace A072619.P2304852874568110023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072621 (n + 1)).toNat

end

end A072619.P2304852874568110023

/-! ## A072619.P9445436102772026819

`A023444(A072621(n+1)+1)`
-/

namespace A072619.P9445436102772026819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A072621 (n + 1) + 1).toNat

end

end A072619.P9445436102772026819

/-! ## A072619.P6957468160491870670

`A289207(A072621(n+1)+1)`
-/

namespace A072619.P6957468160491870670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A072621 (n + 1) + 1).toNat

end

end A072619.P6957468160491870670

/-! ## A072619.P11736659465266026883

`A023445(A072621(n+1)+2)`
-/

namespace A072619.P11736659465266026883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A072621 (n + 1) + 2).toNat

end

end A072619.P11736659465266026883

/-! ## A072619.P10181335974861173591

`A023447(A072621(n+1)+4)`
-/

namespace A072619.P10181335974861173591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A072621 (n + 1) + 4).toNat

end

end A072619.P10181335974861173591

/-! ## A072619.P4995438115043778666

`A046667(2*A072621(n+1))`
-/

namespace A072619.P4995438115043778666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A072621 (n + 1)).toNat

end

end A072619.P4995438115043778666

/-! ## A072619.P12073584009284369844

`A140106(2*A072621(n+1))`
-/

namespace A072619.P12073584009284369844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A072621 (n + 1)).toNat

end

end A072619.P12073584009284369844

/-! ## A072619.P17580370236543309316

`A023448(A072621(n+1)+5)`
-/

namespace A072619.P17580370236543309316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A072621 (n + 1) + 5).toNat

end

end A072619.P17580370236543309316

/-! ## A072619.P681327858423810638

`A059169(4*A072621(n+1))`
-/

namespace A072619.P681327858423810638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A072621 (n + 1)).toNat

end

end A072619.P681327858423810638

/-!
# A072620: Permutation of natural numbers obtained from the permutation A072089 (zero-based).

The programs for A072620, there is no canonical definition to state claims against.
-/

/-! ## A072620.P12023090375520820104

`A072622(n+1)-1`
-/

namespace A072620.P12023090375520820104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072622 (n + 1) - 1

end

end A072620.P12023090375520820104

/-! ## A072620.P11827604076346552258

`A023443(A072622(n+1))`
-/

namespace A072620.P11827604076346552258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072622 (n + 1)).toNat

end

end A072620.P11827604076346552258

/-! ## A072620.P13145228820036737589

`A023444(A072622(n+1)+1)`
-/

namespace A072620.P13145228820036737589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A072622 (n + 1) + 1).toNat

end

end A072620.P13145228820036737589

/-! ## A072620.P4925643878542659957

`A289207(A072622(n+1)+1)`
-/

namespace A072620.P4925643878542659957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A072622 (n + 1) + 1).toNat

end

end A072620.P4925643878542659957

/-! ## A072620.P14736870737439248977

`A023445(A072622(n+1)+2)`
-/

namespace A072620.P14736870737439248977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A072622 (n + 1) + 2).toNat

end

end A072620.P14736870737439248977

/-! ## A072620.P18332195861255736711

`A023446(A072622(n+1)+3)`
-/

namespace A072620.P18332195861255736711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A072622 (n + 1) + 3).toNat

end

end A072620.P18332195861255736711

/-! ## A072620.P16428712620014139243

`A046667(2*A072622(n+1))`
-/

namespace A072620.P16428712620014139243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A072622 (n + 1)).toNat

end

end A072620.P16428712620014139243

/-! ## A072620.P16418001157936535095

`A140106(2*A072622(n+1))`
-/

namespace A072620.P16418001157936535095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A072622 (n + 1)).toNat

end

end A072620.P16418001157936535095

/-! ## A072620.P533097748957978834

`A118830(∑[A008458(n)])+A072622(n+1)`
-/

namespace A072620.P533097748957978834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A072622 (n + 1)

end

end A072620.P533097748957978834

/-! ## A072620.P15563755551051665860

`A349920(record[A020639(n+2)])+A072622(n+1)`
-/

namespace A072620.P15563755551051665860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A072622 (n + 1)

end

end A072620.P15563755551051665860

/-!
# A072621: Permutation of natural numbers obtained from the permutation A072088 (one-based).

The programs for A072621, there is no canonical definition to state claims against.
-/

/-! ## A072621.P7253989333452097246

`A072619(n)+1`
-/

namespace A072621.P7253989333452097246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072619 n + 1

end

end A072621.P7253989333452097246

/-! ## A072621.P4735598232096462352

`A008619(2*A072619(n))`
-/

namespace A072621.P4735598232096462352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A072619 n).toNat

end

end A072621.P4735598232096462352

/-! ## A072621.P1843238597019255157

`A027656(2*A072619(n))`
-/

namespace A072621.P1843238597019255157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A072619 n).toNat

end

end A072621.P1843238597019255157

/-! ## A072621.P6534937970295938747

`A028242(2*A072619(n))`
-/

namespace A072621.P6534937970295938747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A072619 n).toNat

end

end A072621.P6534937970295938747

/-! ## A072621.P6713022596614476222

`A029579(2*A072619(n))`
-/

namespace A072621.P6713022596614476222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A072619 n).toNat

end

end A072621.P6713022596614476222

/-! ## A072621.P15854464186315311812

`A052938(2*A072619(n))`
-/

namespace A072621.P15854464186315311812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A072619 n).toNat

end

end A072621.P15854464186315311812

/-! ## A072621.P11468267178144969125

`A008611(3*A072619(n))`
-/

namespace A072621.P11468267178144969125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A072619 n).toNat

end

end A072621.P11468267178144969125

/-! ## A072621.P2689774818230312169

`A008620(3*A072619(n))`
-/

namespace A072621.P2689774818230312169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A072619 n).toNat

end

end A072621.P2689774818230312169

/-! ## A072621.P8214639100676251995

`A008621(4*A072619(n))`
-/

namespace A072621.P8214639100676251995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A072619 n).toNat

end

end A072621.P8214639100676251995

/-! ## A072621.P11714788298960362808

`A008624(4*A072619(n))`
-/

namespace A072621.P11714788298960362808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A072619 n).toNat

end

end A072621.P11714788298960362808

/-!
# A072622: Permutation of natural numbers obtained from the permutation A072089 (one-based).

The programs for A072622, there is no canonical definition to state claims against.
-/

/-! ## A072622.P13755786158268893062

`A072620(n)+1`
-/

namespace A072622.P13755786158268893062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072620 n + 1

end

end A072622.P13755786158268893062

/-! ## A072622.P11440191140071598563

`A008619(2*A072620(n))`
-/

namespace A072622.P11440191140071598563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A072620 n).toNat

end

end A072622.P11440191140071598563

/-! ## A072622.P639971418271950753

`A027656(2*A072620(n))`
-/

namespace A072622.P639971418271950753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A072620 n).toNat

end

end A072622.P639971418271950753

/-! ## A072622.P7369893931216901487

`A028242(2*A072620(n))`
-/

namespace A072622.P7369893931216901487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A072620 n).toNat

end

end A072622.P7369893931216901487

/-! ## A072622.P4243810830231626150

`A029579(2*A072620(n))`
-/

namespace A072622.P4243810830231626150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A072620 n).toNat

end

end A072622.P4243810830231626150

/-! ## A072622.P2216249934649480235

`A052938(2*A072620(n))`
-/

namespace A072622.P2216249934649480235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A072620 n).toNat

end

end A072622.P2216249934649480235

/-! ## A072622.P13846168989054857120

`A080513(2*A072620(n))`
-/

namespace A072622.P13846168989054857120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A072620 n).toNat

end

end A072622.P13846168989054857120

/-! ## A072622.P6405465408642202774

`A158416(2*A072620(n))`
-/

namespace A072622.P6405465408642202774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A072620 n).toNat

end

end A072622.P6405465408642202774

/-! ## A072622.P11308378670913930994

`A008611(3*A072620(n))`
-/

namespace A072622.P11308378670913930994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A072620 n).toNat

end

end A072622.P11308378670913930994

/-! ## A072622.P10688650664095644417

`A008620(3*A072620(n))`
-/

namespace A072622.P10688650664095644417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A072620 n).toNat

end

end A072622.P10688650664095644417

/-!
# A072623: Numbers n such that A065863(n) = 1, i.e., prime(n) mod (n - Pi(n)) = 1.

The programs for A072623, there is no canonical definition to state claims against.
-/

/-! ## A072623.P1494508509048833552

`eq[1, A065863(n+1)]+1`
-/

namespace A072623.P1494508509048833552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072623.P1494508509048833552

/-! ## A072623.P7250481529124537583

`eq[1, A065863(A028310(n))]`
-/

namespace A072623.P7250481529124537583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065863 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072623.P7250481529124537583

/-! ## A072623.P2194790176197411485

`A020725(eq[1, A065863(n+1)])`
-/

namespace A072623.P2194790176197411485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072623.P2194790176197411485

/-! ## A072623.P16539235927535301875

`A065475(eq[1, A065863(n+1)])`
-/

namespace A072623.P16539235927535301875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072623.P16539235927535301875

/-! ## A072623.P6283623366362105572

`eq[1, A065863(A233583(n+1))]`
-/

namespace A072623.P6283623366362105572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065863 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072623.P6283623366362105572

/-!
# A072624: a(n) = prime(n^2) mod n^2.

The programs for A072624, the canonical program `A072624.P1160577336394830527` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072624 has offset 1).

The definition of A072624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004648, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072624.P1160577336394830527

`A004648((n+1)²)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072624

/-- `A004648((n+1)²)` -/
def P1160577336394830527.Spec : Prop :=
  ∀ n, P1160577336394830527.a n = A072624 (n + 1)

theorem P1160577336394830527.correct : P1160577336394830527.Spec := by
  intro n
  simp only [A072624, Nat.add_sub_cancel]

end A072624

/-! ## A072624.P13925991583043410174

`A011757(n+1)%(n+1)²`
-/

namespace A072624.P13925991583043410174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011757 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A072624.P13925991583043410174

namespace A072624

/-- `A011757(n+1)%(n+1)²` -/
def P13925991583043410174.Spec : Prop :=
  ∀ n, P13925991583043410174.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P15437510390228240889

`A141129(n+1)%Δ[A000330(n)]`
-/

namespace A072624.P15437510390228240889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141129 (n + 1)) (f1 (n + 1) - f1 n)

end

end A072624.P15437510390228240889

namespace A072624

/-- `A141129(n+1)%Δ[A000330(n)]` -/
def P15437510390228240889.Spec : Prop :=
  ∀ n, P15437510390228240889.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P2586792637879827739

`(A001248(n+1)-A123914(n+1))%Δ[A000330(n)]`
-/

namespace A072624.P2586792637879827739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1) - A123914 (n + 1)) (f1 (n + 1) - f1 n)

end

end A072624.P2586792637879827739

namespace A072624

/-- `(A001248(n+1)-A123914(n+1))%Δ[A000330(n)]` -/
def P2586792637879827739.Spec : Prop :=
  ∀ n, P2586792637879827739.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P4432327059529609425

`(A092504(n+1)-(A006093(n+1)+1))%Δ[A000330(n)]`
-/

namespace A072624.P4432327059529609425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092504 (n + 1) - (A006093 (n + 1) + 1)) (f1 (n + 1) - f1 n)

end

end A072624.P4432327059529609425

namespace A072624

/-- `(A092504(n+1)-(A006093(n+1)+1))%Δ[A000330(n)]` -/
def P4432327059529609425.Spec : Prop :=
  ∀ n, P4432327059529609425.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P6618791358511722995

`A323526(A289436(2*(n+2)))%(n+1)²`
-/

namespace A072624.P6618791358511722995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323526 (A289436 (2 * (n + 2))).toNat) ((n + 1) ^ 2 : ℤ)

end

end A072624.P6618791358511722995

namespace A072624

/-- `A323526(A289436(2*(n+2)))%(n+1)²` -/
def P6618791358511722995.Spec : Prop :=
  ∀ n, P6618791358511722995.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P714661747332269317

`(A001748((n+1)²)/3)%(n+1)²`
-/

namespace A072624.P714661747332269317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 ((n + 1) ^ 2) : ℚ) / 3)) ((n + 1) ^ 2 : ℤ)

end

end A072624.P714661747332269317

namespace A072624

/-- `(A001748((n+1)²)/3)%(n+1)²` -/
def P714661747332269317.Spec : Prop :=
  ∀ n, P714661747332269317.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P748295732923278006

`or(char[1], A004648((n+1)^2))`
-/

namespace A072624.P748295732923278006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004648 ((n + 1) ^ 2))

end

end A072624.P748295732923278006

namespace A072624

/-- `or(char[1], A004648((n+1)^2))` -/
def P748295732923278006.Spec : Prop :=
  ∀ n, P748295732923278006.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P16910688082176805615

`A000040((n+1)²)%(n+1)²`
-/

namespace A072624.P16910688082176805615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((n + 1) ^ 2)) ((n + 1) ^ 2 : ℤ)

end

end A072624.P16910688082176805615

namespace A072624

/-- `A000040((n+1)²)%(n+1)²` -/
def P16910688082176805615.Spec : Prop :=
  ∀ n, P16910688082176805615.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P4161238066547873563

`A004232((n+1)²)%(n+1)²`
-/

namespace A072624.P4161238066547873563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004232 ((n + 1) ^ 2)) ((n + 1) ^ 2 : ℤ)

end

end A072624.P4161238066547873563

namespace A072624

/-- `A004232((n+1)²)%(n+1)²` -/
def P4161238066547873563.Spec : Prop :=
  ∀ n, P4161238066547873563.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P18245131942689990040

`A006005((n+1)²)%(n+1)²`
-/

namespace A072624.P18245131942689990040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 ((n + 1) ^ 2)) ((n + 1) ^ 2 : ℤ)

end

end A072624.P18245131942689990040

namespace A072624

/-- `A006005((n+1)²)%(n+1)²` -/
def P18245131942689990040.Spec : Prop :=
  ∀ n, P18245131942689990040.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P14185361630310048554

`sqrt(A001248((n+1)²))%(n+1)²`
-/

namespace A072624.P14185361630310048554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 ((n + 1) ^ 2) : ℝ))) ((n + 1) ^ 2 : ℤ)

end

end A072624.P14185361630310048554

namespace A072624

/-- `sqrt(A001248((n+1)²))%(n+1)²` -/
def P14185361630310048554.Spec : Prop :=
  ∀ n, P14185361630310048554.a n = A072624 (n + 1)

end A072624

/-! ## A072624.P10981179993819151211

`(A040976((n+1)²)+2)%(n+1)²`
-/

namespace A072624.P10981179993819151211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 ((n + 1) ^ 2) + 2) ((n + 1) ^ 2 : ℤ)

end

end A072624.P10981179993819151211

namespace A072624

/-- `(A040976((n+1)²)+2)%(n+1)²` -/
def P10981179993819151211.Spec : Prop :=
  ∀ n, P10981179993819151211.a n = A072624 (n + 1)

end A072624

/-!
# A072625: a(n) = prime(n) mod ceiling(log(prime(n))).

The programs for A072625, the canonical program `A072625.P11221807616821932161` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072625 has offset 1).

The definition of A072625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072625.P11221807616821932161

`∑{p}[A000040(n+1), #%ceil(log(#))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072625

/-- `∑{p}[A000040(n+1), #%ceil(log(#))]` -/
def P11221807616821932161.Spec : Prop :=
  ∀ n, P11221807616821932161.a n = A072625 (n + 1)

theorem P11221807616821932161.correct : P11221807616821932161.Spec := by
  intro n
  simp only [A072625, Nat.add_sub_cancel]

end A072625

/-! ## A072625.P14572678723268765878

`A000040(n+1)%∑[char[A040014(n)]]`
-/

namespace A072625.P14572678723268765878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040014 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A072625.P14572678723268765878

namespace A072625

/-- `A000040(n+1)%∑[char[A040014(n)]]` -/
def P14572678723268765878.Spec : Prop :=
  ∀ n, P14572678723268765878.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P3967708936716502405

`A008578(n+2)%∑[char[A040014(n)]]`
-/

namespace A072625.P3967708936716502405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040014 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A072625.P3967708936716502405

namespace A072625

/-- `A008578(n+2)%∑[char[A040014(n)]]` -/
def P3967708936716502405.Spec : Prop :=
  ∀ n, P3967708936716502405.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P2762542852469625819

`p?[n%3+n]%ceil(log(p?[n%3+n]))`
-/

namespace A072625.P2762542852469625819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) ⌈Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ)⌉

end

end A072625.P2762542852469625819

namespace A072625

/-- `p?[n%3+n]%ceil(log(p?[n%3+n]))` -/
def P2762542852469625819.Spec : Prop :=
  ∀ n, P2762542852469625819.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P9368270578382471873

`Δ[A007504(n)]%A004233(A008578(n+2))`
-/

namespace A072625.P9368270578382471873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004233 (A008578 (n + 2)).toNat)

end

end A072625.P9368270578382471873

namespace A072625

/-- `Δ[A007504(n)]%A004233(A008578(n+2))` -/
def P9368270578382471873.Spec : Prop :=
  ∀ n, P9368270578382471873.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P3105007226350077969

`p?[A064429(n)]%A029832(A000040(n+1))`
-/

namespace A072625.P3105007226350077969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A029832 (A000040 (n + 1)).toNat)

end

end A072625.P3105007226350077969

namespace A072625

/-- `p?[A064429(n)]%A029832(A000040(n+1))` -/
def P3105007226350077969.Spec : Prop :=
  ∀ n, P3105007226350077969.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P9518714386514209898

`p?[A143051(n)]%A004233(A008578(n+2))`
-/

namespace A072625.P9518714386514209898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A004233 (A008578 (n + 2)).toNat)

end

end A072625.P9518714386514209898

namespace A072625

/-- `p?[A143051(n)]%A004233(A008578(n+2))` -/
def P9518714386514209898.Spec : Prop :=
  ∀ n, P9518714386514209898.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P15608586583277437200

`p?[A005100(n+1)]%A004233(A000040(n+1))`
-/

namespace A072625.P15608586583277437200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A004233 (A000040 (n + 1)).toNat)

end

end A072625.P15608586583277437200

namespace A072625

/-- `p?[A005100(n+1)]%A004233(A000040(n+1))` -/
def P15608586583277437200.Spec : Prop :=
  ∀ n, P15608586583277437200.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P11057717057713293951

`record[A006530(n+2)]%A004233(A000040(n+1))`
-/

namespace A072625.P11057717057713293951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004233 (A000040 (n + 1)).toNat)

end

end A072625.P11057717057713293951

namespace A072625

/-- `record[A006530(n+2)]%A004233(A000040(n+1))` -/
def P11057717057713293951.Spec : Prop :=
  ∀ n, P11057717057713293951.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P4768175844521778127

`record[A014963(n+2)]%A004233(A000040(n+1))`
-/

namespace A072625.P4768175844521778127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004233 (A000040 (n + 1)).toNat)

end

end A072625.P4768175844521778127

namespace A072625

/-- `record[A014963(n+2)]%A004233(A000040(n+1))` -/
def P4768175844521778127.Spec : Prop :=
  ∀ n, P4768175844521778127.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P13334186400033729470

`record[A020639(n+2)]%A004233(A000040(n+1))`
-/

namespace A072625.P13334186400033729470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004233 (A000040 (n + 1)).toNat)

end

end A072625.P13334186400033729470

namespace A072625

/-- `record[A020639(n+2)]%A004233(A000040(n+1))` -/
def P13334186400033729470.Spec : Prop :=
  ∀ n, P13334186400033729470.a n = A072625 (n + 1)

end A072625

/-! ## A072625.P8158110150027806608

`p?[A213714(n)]%A029832(A000040(n+1))`
-/

namespace A072625.P8158110150027806608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A029832 (A000040 (n + 1)).toNat)

end

end A072625.P8158110150027806608

namespace A072625

/-- `p?[A213714(n)]%A029832(A000040(n+1))` -/
def P8158110150027806608.Spec : Prop :=
  ∀ n, P8158110150027806608.a n = A072625 (n + 1)

end A072625

/-!
# A072626: Parity of floor(n/log(n)).

The programs for A072626, the canonical program `A072626.P14153501150869386867` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072626 has offset 2).

The definition of A072626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072626.P8895430873681239829

`floor((n+2)/log(n+2))%2`
-/

namespace A072626.P8895430873681239829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋ 2

end

end A072626.P8895430873681239829

namespace A072626

/-- `floor((n+2)/log(n+2))%2` -/
def P8895430873681239829.Spec : Prop :=
  ∀ n, P8895430873681239829.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P14153501150869386867

`A000035(A050500(n+2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072626

/-- `A000035(A050500(n+2))` -/
def P14153501150869386867.Spec : Prop :=
  ∀ n, P14153501150869386867.a n = A072626 (n + 2)

theorem P14153501150869386867.correct : P14153501150869386867.Spec := by
  intro n
  simp only [A072626, Nat.add_sub_cancel]

end A072626

/-! ## A072626.P13432690105597289457

`and(1, floor((n+2)/log(n+2)))`
-/

namespace A072626.P13432690105597289457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A072626.P13432690105597289457

namespace A072626

/-- `and(1, floor((n+2)/log(n+2)))` -/
def P13432690105597289457.Spec : Prop :=
  ∀ n, P13432690105597289457.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P8828746990428716826

`log2(gcd(2, ceil((n+2)/log(n+2))))`
-/

namespace A072626.P8828746990428716826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌈(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌉ : ℝ)

end

end A072626.P8828746990428716826

namespace A072626

/-- `log2(gcd(2, ceil((n+2)/log(n+2))))` -/
def P8828746990428716826.Spec : Prop :=
  ∀ n, P8828746990428716826.a n = (A072626 (n + 2) : ℝ)

end A072626

/-! ## A072626.P6258274624825670830

`gcd(2, A050501(n+2))-1`
-/

namespace A072626.P6258274624825670830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A050501 (n + 2)) : ℤ) - 1

end

end A072626.P6258274624825670830

namespace A072626

/-- `gcd(2, A050501(n+2))-1` -/
def P6258274624825670830.Spec : Prop :=
  ∀ n, P6258274624825670830.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P7769833281437868036

`A000035(floor((n+2)/log(n+2)))`
-/

namespace A072626.P7769833281437868036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋.toNat

end

end A072626.P7769833281437868036

namespace A072626

/-- `A000035(floor((n+2)/log(n+2)))` -/
def P7769833281437868036.Spec : Prop :=
  ∀ n, P7769833281437868036.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P13447209840610460577

`A014707(2*floor((n+2)/log(n+2)))`
-/

namespace A072626.P13447209840610460577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋).toNat

end

end A072626.P13447209840610460577

namespace A072626

/-- `A014707(2*floor((n+2)/log(n+2)))` -/
def P13447209840610460577.Spec : Prop :=
  ∀ n, P13447209840610460577.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P5255421888460557521

`val(A020639(ceil((n+2)/log(n+2))), 2)`
-/

namespace A072626.P5255421888460557521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 ⌈(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌉.toNat).toNat 2

end

end A072626.P5255421888460557521

namespace A072626

/-- `val(A020639(ceil((n+2)/log(n+2))), 2)` -/
def P5255421888460557521.Spec : Prop :=
  ∀ n, (P5255421888460557521.a n : ℤ) = A072626 (n + 2)

end A072626

/-! ## A072626.P15008546076858410945

`A059841(A050501(n+2))`
-/

namespace A072626.P15008546076858410945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A050501 (n + 2)).toNat

end

end A072626.P15008546076858410945

namespace A072626

/-- `A059841(A050501(n+2))` -/
def P15008546076858410945.Spec : Prop :=
  ∀ n, P15008546076858410945.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P11290533207525731675

`A000007(val(A050500(n+2), 2))`
-/

namespace A072626.P11290533207525731675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A050500 (n + 2)).toNat 2)

end

end A072626.P11290533207525731675

namespace A072626

/-- `A000007(val(A050500(n+2), 2))` -/
def P11290533207525731675.Spec : Prop :=
  ∀ n, P11290533207525731675.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P18182622482944227716

`A096268(A050500(n+2)²)`
-/

namespace A072626.P18182622482944227716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A050500 (n + 2) ^ 2).toNat

end

end A072626.P18182622482944227716

namespace A072626

/-- `A096268(A050500(n+2)²)` -/
def P18182622482944227716.Spec : Prop :=
  ∀ n, P18182622482944227716.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P17215239490971970913

`A112299(A050500(n+2)²)`
-/

namespace A072626.P17215239490971970913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (A050500 (n + 2) ^ 2).toNat

end

end A072626.P17215239490971970913

namespace A072626

/-- `A112299(A050500(n+2)²)` -/
def P17215239490971970913.Spec : Prop :=
  ∀ n, P17215239490971970913.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P10156035641320738621

`A266982(A050501(n+2)²)`
-/

namespace A072626.P10156035641320738621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (A050501 (n + 2) ^ 2).toNat

end

end A072626.P10156035641320738621

namespace A072626

/-- `A266982(A050501(n+2)²)` -/
def P10156035641320738621.Spec : Prop :=
  ∀ n, P10156035641320738621.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P7510828910224124635

`A266982((A050501(n+2)-1)*A050501(n+2))`
-/

namespace A072626.P7510828910224124635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 ((A050501 (n + 2) - 1) * A050501 (n + 2)).toNat

end

end A072626.P7510828910224124635

namespace A072626

/-- `A266982((A050501(n+2)-1)*A050501(n+2))` -/
def P7510828910224124635.Spec : Prop :=
  ∀ n, P7510828910224124635.a n = A072626 (n + 2)

end A072626

/-! ## A072626.P3220015344621623737

`A088705(A050501(n+2)²+1)`
-/

namespace A072626.P3220015344621623737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A050501 (n + 2) ^ 2 + 1).toNat

end

end A072626.P3220015344621623737

namespace A072626

/-- `A088705(A050501(n+2)²+1)` -/
def P3220015344621623737.Spec : Prop :=
  ∀ n, P3220015344621623737.a n = A072626 (n + 2)

end A072626

/-!
# A072627: Number of divisors d of n such that d-1 is prime.

The programs for A072627, the canonical program `A072627.P14863741919564884877` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072627 has offset 1).

The definition of A072627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072627.P14863741919564884877

`∑{d}[n+1, A010051((n-1)%#+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072627

/-- `∑{d}[n+1, A010051((n-1)%#+1)]` -/
def P14863741919564884877.Spec : Prop :=
  ∀ n, P14863741919564884877.a n = A072627 (n + 1)

theorem P14863741919564884877.correct : P14863741919564884877.Spec := by
  intro n
  simp only [A072627, Nat.add_sub_cancel]

end A072627

/-! ## A072627.P932830368530948953

`A000005(n+1)-A072628(n+1)`
-/

namespace A072627.P932830368530948953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A072628 (n + 1)

end

end A072627.P932830368530948953

namespace A072627

/-- `A000005(n+1)-A072628(n+1)` -/
def P932830368530948953.Spec : Prop :=
  ∀ n, P932830368530948953.a n = A072627 (n + 1)

end A072627

/-! ## A072627.P17292527127116101649

`∑{d}[n+1, A000007(A007920(#-1))]`
-/

namespace A072627.P17292527127116101649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (A007920 (d - 1)).toNat

end

end A072627.P17292527127116101649

namespace A072627

/-- `∑{d}[n+1, A000007(A007920(#-1))]` -/
def P17292527127116101649.Spec : Prop :=
  ∀ n, P17292527127116101649.a n = A072627 (n + 1)

end A072627

/-! ## A072627.P12480486871491906964

`A322977(n+1)+Δ[A004773(n)]-1`
-/

namespace A072627.P12480486871491906964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A072627.P12480486871491906964

namespace A072627

/-- `A322977(n+1)+Δ[A004773(n)]-1` -/
def P12480486871491906964.Spec : Prop :=
  ∀ n, P12480486871491906964.a n = A072627 (n + 1)

end A072627

/-! ## A072627.P7175127702170446318

`A322977(n+1)+A001222(Δ[A004773(n)])`
-/

namespace A072627.P7175127702170446318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (n + 1) + A001222 (f1 (n + 1) - f1 n).toNat

end

end A072627.P7175127702170446318

namespace A072627

/-- `A322977(n+1)+A001222(Δ[A004773(n)])` -/
def P7175127702170446318.Spec : Prop :=
  ∀ n, P7175127702170446318.a n = A072627 (n + 1)

end A072627

/-! ## A072627.P15102641495418355464

`A322977(n+1)+A067076(Δ[A004773(n)])`
-/

namespace A072627.P15102641495418355464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (n + 1) + A067076 (f1 (n + 1) - f1 n).toNat

end

end A072627.P15102641495418355464

namespace A072627

/-- `A322977(n+1)+A067076(Δ[A004773(n)])` -/
def P15102641495418355464.Spec : Prop :=
  ∀ n, P15102641495418355464.a n = A072627 (n + 1)

end A072627

/-! ## A072627.P7866225624667338662

`A322977(n+1)+A322977(Δ[A004773(n)]²)`
-/

namespace A072627.P7866225624667338662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (n + 1) + A322977 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A072627.P7866225624667338662

namespace A072627

/-- `A322977(n+1)+A322977(Δ[A004773(n)]²)` -/
def P7866225624667338662.Spec : Prop :=
  ∀ n, P7866225624667338662.a n = A072627 (n + 1)

end A072627

/-! ## A072627.P7097360616157496224

`∑{d}[n+1, A046926(2*#)]`
-/

namespace A072627.P7097360616157496224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046926 (2 * d)

end

end A072627.P7097360616157496224

namespace A072627

/-- `∑{d}[n+1, A046926(2*#)]` -/
def P7097360616157496224.Spec : Prop :=
  ∀ n, P7097360616157496224.a n = A072627 (n + 1)

end A072627

/-!
# A072628: Number of divisors d of n such that d-1 is not prime.

The programs for A072628, the canonical program `A072628.P15487048248922606126` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072628 has offset 1).

The definition of A072628 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A072627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072628.P15487048248922606126

`A000005(n+1)-A072627(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072628

/-- `A000005(n+1)-A072627(n+1)` -/
def P15487048248922606126.Spec : Prop :=
  ∀ n, P15487048248922606126.a n = A072628 (n + 1)

theorem P15487048248922606126.correct : P15487048248922606126.Spec := by
  intro n
  simp only [A072628, Nat.add_sub_cancel]

end A072628

/-! ## A072628.P3688868704563434221

`∑{d}[n+1, A005171((n-1)%#+1)]`
-/

namespace A072628.P3688868704563434221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005171 (Int.tmod ((n : ℤ) - 1) (d : ℤ) + 1).toNat

end

end A072628.P3688868704563434221

namespace A072628

/-- `∑{d}[n+1, A005171((n-1)%#+1)]` -/
def P3688868704563434221.Spec : Prop :=
  ∀ n, P3688868704563434221.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P8539384753350951024

`Δ[A006218(n)]-A072627(n+1)`
-/

namespace A072628.P8539384753350951024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A072627 (n + 1)

end

end A072628.P8539384753350951024

namespace A072628

/-- `Δ[A006218(n)]-A072627(n+1)` -/
def P8539384753350951024.Spec : Prop :=
  ∀ n, P8539384753350951024.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P15043197141701694120

`Δ[A054519(n)]-A072627(n+1)`
-/

namespace A072628.P15043197141701694120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A072627 (n + 1)

end

end A072628.P15043197141701694120

namespace A072628

/-- `Δ[A054519(n)]-A072627(n+1)` -/
def P15043197141701694120.Spec : Prop :=
  ∀ n, P15043197141701694120.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P10692158828281091249

`A038040(n+1)/(n+1)-A072627(n+1)`
-/

namespace A072628.P10692158828281091249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A072627 (n + 1) : ℚ)

end

end A072628.P10692158828281091249

namespace A072628

/-- `A038040(n+1)/(n+1)-A072627(n+1)` -/
def P10692158828281091249.Spec : Prop :=
  ∀ n, P10692158828281091249.a n = (A072628 (n + 1) : ℚ)

end A072628

/-! ## A072628.P5311363120507698293

`A294893(n+1)+A294894(n+1)-A072627(n+1)`
-/

namespace A072628.P5311363120507698293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A072627 (n + 1))

end

end A072628.P5311363120507698293

namespace A072628

/-- `A294893(n+1)+A294894(n+1)-A072627(n+1)` -/
def P5311363120507698293.Spec : Prop :=
  ∀ n, P5311363120507698293.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P1471150939437363305

`A324392(n+1)+A324393(n+1)-A072627(n+1)`
-/

namespace A072628.P1471150939437363305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324392 (n + 1) + (A324393 (n + 1) - A072627 (n + 1))

end

end A072628.P1471150939437363305

namespace A072628

/-- `A324392(n+1)+A324393(n+1)-A072627(n+1)` -/
def P1471150939437363305.Spec : Prop :=
  ∀ n, P1471150939437363305.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P17210120244429615841

`A353351(n+1)+A353352(n+1)-A072627(n+1)`
-/

namespace A072628.P17210120244429615841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A072627 (n + 1))

end

end A072628.P17210120244429615841

namespace A072628

/-- `A353351(n+1)+A353352(n+1)-A072627(n+1)` -/
def P17210120244429615841.Spec : Prop :=
  ∀ n, P17210120244429615841.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P6171577755578706023

`∑{d}[n+1, 1-A046926(2*#)]`
-/

namespace A072628.P6171577755578706023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A046926 (2 * d))

end

end A072628.P6171577755578706023

namespace A072628

/-- `∑{d}[n+1, 1-A046926(2*#)]` -/
def P6171577755578706023.Spec : Prop :=
  ∀ n, P6171577755578706023.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P16530981833897342271

`∑{d}[n+1, A029161(A046926(#+#))]`
-/

namespace A072628.P16530981833897342271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029161 (A046926 (d + d)).toNat

end

end A072628.P16530981833897342271

namespace A072628

/-- `∑{d}[n+1, A029161(A046926(#+#))]` -/
def P16530981833897342271.Spec : Prop :=
  ∀ n, P16530981833897342271.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P7559632489480678548

`A183063(2*(n+1))-A072627(n+1)`
-/

namespace A072628.P7559632489480678548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1)) - A072627 (n + 1)

end

end A072628.P7559632489480678548

namespace A072628

/-- `A183063(2*(n+1))-A072627(n+1)` -/
def P7559632489480678548.Spec : Prop :=
  ∀ n, P7559632489480678548.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P2674641493268514854

`∑{d}[n+1, A000040(A117545(#))%2]`
-/

namespace A072628.P2674641493268514854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (A117545 d).toNat) 2

end

end A072628.P2674641493268514854

namespace A072628

/-- `∑{d}[n+1, A000040(A117545(#))%2]` -/
def P2674641493268514854.Spec : Prop :=
  ∀ n, P2674641493268514854.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P11676043705927241687

`∑{d}[n+1, A249802(#)%2]`
-/

namespace A072628.P11676043705927241687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A249802 d) 2

end

end A072628.P11676043705927241687

namespace A072628

/-- `∑{d}[n+1, A249802(#)%2]` -/
def P11676043705927241687.Spec : Prop :=
  ∀ n, P11676043705927241687.a n = A072628 (n + 1)

end A072628

/-! ## A072628.P4959020118874294910

`∑{d}[n+1, A304336(floor(#/A038699(#)))]`
-/

namespace A072628.P4959020118874294910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304336 ⌊(d : ℚ) / (A038699 d : ℚ)⌋.toNat

end

end A072628.P4959020118874294910

namespace A072628

/-- `∑{d}[n+1, A304336(floor(#/A038699(#)))]` -/
def P4959020118874294910.Spec : Prop :=
  ∀ n, P4959020118874294910.a n = A072628 (n + 1)

end A072628

/-!
# A072629: Parity of n*floor(log n).

The programs for A072629, the canonical program `A072629.P6979076119340084228` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072629 has offset 1).

The definition of A072629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072629.P6979076119340084228

`∑[floor(log(or(1, n)))]%2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072629

/-- `∑[floor(log(or(1, n)))]%2` -/
def P6979076119340084228.Spec : Prop :=
  ∀ n, P6979076119340084228.a n = A072629 (n + 1)

theorem P6979076119340084228.correct : P6979076119340084228.Spec := by
  intro n
  simp only [A072629, Nat.add_sub_cancel]

end A072629

/-! ## A072629.P4965613030255594949

`floor(log(n+1))%gcd(2, n)`
-/

namespace A072629.P4965613030255594949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.log (n + 1 : ℝ)⌋ (Nat.gcd 2 n : ℤ)

end

end A072629.P4965613030255594949

namespace A072629

/-- `floor(log(n+1))%gcd(2, n)` -/
def P4965613030255594949.Spec : Prop :=
  ∀ n, P4965613030255594949.a n = A072629 (n + 1)

end A072629

/-! ## A072629.P15677188172558201393

`and(floor(log(n+1)), char[2*n])`
-/

namespace A072629.P15677188172558201393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊Real.log (n + 1 : ℝ)⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A072629.P15677188172558201393

namespace A072629

/-- `and(floor(log(n+1)), char[2*n])` -/
def P15677188172558201393.Spec : Prop :=
  ∀ n, P15677188172558201393.a n = A072629 (n + 1)

end A072629

/-! ## A072629.P9005383265435966331

`((n+1)*floor(log(n+1)))%2`
-/

namespace A072629.P9005383265435966331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * ⌊Real.log (n + 1 : ℝ)⌋) 2

end

end A072629.P9005383265435966331

namespace A072629

/-- `((n+1)*floor(log(n+1)))%2` -/
def P9005383265435966331.Spec : Prop :=
  ∀ n, P9005383265435966331.a n = A072629 (n + 1)

end A072629

/-! ## A072629.P18134340439577331316

`and(1, (n+1)*floor(log(n+1)))²`
-/

namespace A072629.P18134340439577331316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n + 1 : ℤ) * ⌊Real.log (n + 1 : ℝ)⌋) ^ 2

end

end A072629.P18134340439577331316

namespace A072629

/-- `and(1, (n+1)*floor(log(n+1)))²` -/
def P18134340439577331316.Spec : Prop :=
  ∀ n, P18134340439577331316.a n = A072629 (n + 1)

end A072629

/-!
# A072630: Values of n where A072629 switches from 01010.. into 0000.. or back.

The programs for A072630, the canonical program `A072630.P7738086415550469995` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072630 has offset 1).

The definition of A072630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072630.P10109473587888607777

`or(1, floor(exp(n+1))-1)`
-/

namespace A072630.P10109473587888607777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (⌊Real.exp (n + 1 : ℝ)⌋ - 1)

end

end A072630.P10109473587888607777

namespace A072630

/-- `or(1, floor(exp(n+1))-1)` -/
def P10109473587888607777.Spec : Prop :=
  ∀ n, P10109473587888607777.a n = A072630 (n + 1)

end A072630

/-! ## A072630.P8819156449973970131

`or(1, ceil(exp(n+1)))-2`
-/

namespace A072630.P8819156449973970131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈Real.exp (n + 1 : ℝ)⌉ - 2

end

end A072630.P8819156449973970131

namespace A072630

/-- `or(1, ceil(exp(n+1)))-2` -/
def P8819156449973970131.Spec : Prop :=
  ∀ n, P8819156449973970131.a n = A072630 (n + 1)

end A072630

/-! ## A072630.P7569806331351970125

`abs(or(1, -floor(exp(n+1))))`
-/

namespace A072630.P7569806331351970125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-⌊Real.exp (n + 1 : ℝ)⌋)|

end

end A072630.P7569806331351970125

namespace A072630

/-- `abs(or(1, -floor(exp(n+1))))` -/
def P7569806331351970125.Spec : Prop :=
  ∀ n, P7569806331351970125.a n = A072630 (n + 1)

end A072630

/-! ## A072630.P3338147286725845819

`-or(1, -floor(exp(n+1)))`
-/

namespace A072630.P3338147286725845819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-⌊Real.exp (n + 1 : ℝ)⌋)

end

end A072630.P3338147286725845819

namespace A072630

/-- `-or(1, -floor(exp(n+1)))` -/
def P3338147286725845819.Spec : Prop :=
  ∀ n, P3338147286725845819.a n = A072630 (n + 1)

end A072630

/-! ## A072630.P7738086415550469995

`2*A000495(n+1)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072630

/-- `2*A000495(n+1)-1` -/
def P7738086415550469995.Spec : Prop :=
  ∀ n, P7738086415550469995.a n = A072630 (n + 1)

theorem P7738086415550469995.correct : P7738086415550469995.Spec := by
  intro n
  simp only [A072630, Nat.add_sub_cancel]

end A072630

/-! ## A072630.P974211198289811643

`2*round(sinh(n+1))-1`
-/

namespace A072630.P974211198289811643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sinh (n + 1 : ℝ)) - 1

end

end A072630.P974211198289811643

namespace A072630

/-- `2*round(sinh(n+1))-1` -/
def P974211198289811643.Spec : Prop :=
  ∀ n, P974211198289811643.a n = A072630 (n + 1)

end A072630

/-!
# A072631: Floor( n*log(n) ) mod n.

The programs for A072631, the canonical program `A072631.P14255399700172617276` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072631 has offset 1).

The definition of A072631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072631.P14255399700172617276

`floor((n+1)*log(n+1))%(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072631

/-- `floor((n+1)*log(n+1))%(n+1)` -/
def P14255399700172617276.Spec : Prop :=
  ∀ n, P14255399700172617276.a n = A072631 (n + 1)

theorem P14255399700172617276.correct : P14255399700172617276.Spec := by
  intro n
  simp only [A072631, Nat.add_sub_cancel]

end A072631

/-! ## A072631.P13468326993846201411

`floor((n+1)*(log(n+1)-floor(log(n+1))))`
-/

namespace A072631.P13468326993846201411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.log (n + 1 : ℝ) - (⌊Real.log (n + 1 : ℝ)⌋ : ℝ))⌋

end

end A072631.P13468326993846201411

namespace A072631

/-- `floor((n+1)*(log(n+1)-floor(log(n+1))))` -/
def P13468326993846201411.Spec : Prop :=
  ∀ n, P13468326993846201411.a n = A072631 (n + 1)

end A072631

/-! ## A072631.P18221651693963444496

`abs(A050504(n+1)%-(n+1))`
-/

namespace A072631.P18221651693963444496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A050504 (n + 1)) (-(n + 1 : ℤ))|

end

end A072631.P18221651693963444496

namespace A072631

/-- `abs(A050504(n+1)%-(n+1))` -/
def P18221651693963444496.Spec : Prop :=
  ∀ n, P18221651693963444496.a n = A072631 (n + 1)

end A072631

/-! ## A072631.P4706949991096989446

`(A050504(n+1)+A000007(n))%(n+1)*gcd(n, n+1)`
-/

namespace A072631.P4706949991096989446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050504 (n + 1) + A000007 n) (n + 1 : ℤ) * (Nat.gcd n (n + 1) : ℤ)

end

end A072631.P4706949991096989446

namespace A072631

/-- `(A050504(n+1)+A000007(n))%(n+1)*gcd(n, n+1)` -/
def P4706949991096989446.Spec : Prop :=
  ∀ n, P4706949991096989446.a n = A072631 (n + 1)

end A072631

/-! ## A072631.P8988660190329486485

`A057428(n)²*(A050504(n+1)+A000007(n))%(n+1)`
-/

namespace A072631.P8988660190329486485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * Int.tmod (A050504 (n + 1) + A000007 n) (n + 1 : ℤ)

end

end A072631.P8988660190329486485

namespace A072631

/-- `A057428(n)²*(A050504(n+1)+A000007(n))%(n+1)` -/
def P8988660190329486485.Spec : Prop :=
  ∀ n, P8988660190329486485.a n = A072631 (n + 1)

end A072631

/-! ## A072631.P15023523451057308

`A118759(A050504(n+1)%(n+1))`
-/

namespace A072631.P15023523451057308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A050504 (n + 1)) (n + 1 : ℤ)).toNat

end

end A072631.P15023523451057308

namespace A072631

/-- `A118759(A050504(n+1)%(n+1))` -/
def P15023523451057308.Spec : Prop :=
  ∀ n, P15023523451057308.a n = A072631 (n + 1)

end A072631

/-!
# A072633: Smallest positive integer m where 1^n+2^n+3^n+...+m^n is greater than or equal to (m+1)^n.

The programs for A072633, the canonical program `A072633.P9760983658790151352` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072633 has offset 0).

The definition of A072633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072633.P9760983658790151352

`1+round(n/log(2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072633

/-- `1+round(n/log(2))` -/
def P9760983658790151352.Spec : Prop :=
  ∀ n, P9760983658790151352.a n = A072633 n

theorem P9760983658790151352.correct : P9760983658790151352.Spec := by
  intro n
  simp only [A072633]

end A072633

/-! ## A072633.P16920048926259739960

`abs(xor(-1, round(n/log(2))))`
-/

namespace A072633.P16920048926259739960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (SequenceMachineLib.roundAway ((n : ℝ) / Real.log (2 : ℝ)))|

end

end A072633.P16920048926259739960

namespace A072633

/-- `abs(xor(-1, round(n/log(2))))` -/
def P16920048926259739960.Spec : Prop :=
  ∀ n, P16920048926259739960.a n = A072633 n

end A072633

/-! ## A072633.P13662066455865027400

`-xor(-1, round(n/log(2)))`
-/

namespace A072633.P13662066455865027400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (SequenceMachineLib.roundAway ((n : ℝ) / Real.log (2 : ℝ)))

end

end A072633.P13662066455865027400

namespace A072633

/-- `-xor(-1, round(n/log(2)))` -/
def P13662066455865027400.Spec : Prop :=
  ∀ n, P13662066455865027400.a n = A072633 n

end A072633

/-! ## A072633.P8385430822210629221

`A326178(A078607(n))`
-/

namespace A072633.P8385430822210629221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A078607 n).toNat

end

end A072633.P8385430822210629221

namespace A072633

/-- `A326178(A078607(n))` -/
def P8385430822210629221.Spec : Prop :=
  ∀ n, P8385430822210629221.a n = A072633 n

end A072633

/-! ## A072633.P2984149203483843492

`A023443(A332101(n))`
-/

namespace A072633.P2984149203483843492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A332101 n).toNat

end

end A072633.P2984149203483843492

namespace A072633

/-- `A023443(A332101(n))` -/
def P2984149203483843492.Spec : Prop :=
  ∀ n, P2984149203483843492.a n = A072633 n

end A072633

/-! ## A072633.P12467384992447781029

`A000027(A332101(n)-1)`
-/

namespace A072633.P12467384992447781029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A332101 n - 1).toNat

end

end A072633.P12467384992447781029

namespace A072633

/-- `A000027(A332101(n)-1)` -/
def P12467384992447781029.Spec : Prop :=
  ∀ n, P12467384992447781029.a n = A072633 n

end A072633

/-! ## A072633.P434114587868203243

`A140106(2*A332101(n))`
-/

namespace A072633.P434114587868203243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A332101 n).toNat

end

end A072633.P434114587868203243

namespace A072633

/-- `A140106(2*A332101(n))` -/
def P434114587868203243.Spec : Prop :=
  ∀ n, P434114587868203243.a n = A072633 n

end A072633

/-! ## A072633.P3158872157104756998

`xor(char[1], A110882(n))`
-/

namespace A072633.P3158872157104756998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A110882 n)

end

end A072633.P3158872157104756998

namespace A072633

/-- `xor(char[1], A110882(n))` -/
def P3158872157104756998.Spec : Prop :=
  ∀ n, P3158872157104756998.a n = A072633 n

end A072633

/-! ## A072633.P7122219604127694786

`and(A110882(n), A267596(n))`
-/

namespace A072633.P7122219604127694786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110882 n) (A267596 n)

end

end A072633.P7122219604127694786

namespace A072633

/-- `and(A110882(n), A267596(n))` -/
def P7122219604127694786.Spec : Prop :=
  ∀ n, P7122219604127694786.a n = A072633 n

end A072633

/-! ## A072633.P17621278350662500020

`and(A110882(n), A267888(n))`
-/

namespace A072633.P17621278350662500020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110882 n) (A267888 n)

end

end A072633.P17621278350662500020

namespace A072633

/-- `and(A110882(n), A267888(n))` -/
def P17621278350662500020.Spec : Prop :=
  ∀ n, P17621278350662500020.a n = A072633 n

end A072633

/-!
# A072634: Permutation of natural numbers induced by reranking plane binary trees given in the standard lexicographic order (A014486) with an "arithmetic global ranking algorithm", using A054238 as the pairing function N X N -> N.

The programs for A072634, there is no canonical definition to state claims against.
-/

/-! ## A072634.P89621246616633114

`A072636(A057163(n))`
-/

namespace A072634.P89621246616633114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072636 (A057163 n).toNat

end

end A072634.P89621246616633114

/-! ## A072634.P739170752195064807

`A072636(A071654(A071651(n)))`
-/

namespace A072634.P739170752195064807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072636 (A071654 (A071651 n).toNat).toNat

end

end A072634.P739170752195064807

/-! ## A072634.P8174080864922572235

`A072636(A071652(A071653(n)))`
-/

namespace A072634.P8174080864922572235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072636 (A071652 (A071653 n).toNat).toNat

end

end A072634.P8174080864922572235

/-! ## A072634.P15317130419997976854

`A072636(A072635(A072636(n)))`
-/

namespace A072634.P15317130419997976854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072636 (A072635 (A072636 n).toNat).toNat

end

end A072634.P15317130419997976854

/-! ## A072634.P740292228796932165

`A048679(A072646(A072635(A048679(A072646(n)))))`
-/

namespace A072634.P740292228796932165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A072646 (A072635 (A048679 (A072646 n).toNat).toNat).toNat).toNat

end

end A072634.P740292228796932165

/-!
# A072635: Inverse permutation to A072634.

The programs for A072635, there is no canonical definition to state claims against.
-/

/-! ## A072635.P1790992287385817469

`A057163(A072637(n))`
-/

namespace A072635.P1790992287385817469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072637 n).toNat

end

end A072635.P1790992287385817469

/-! ## A072635.P13429333703369981077

`A072647(A048680(A072634(A072647(A048680(n)))))`
-/

namespace A072635.P13429333703369981077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072647 (A048680 (A072634 (A072647 (A048680 n).toNat).toNat).toNat).toNat

end

end A072635.P13429333703369981077

/-! ## A072635.P8370684047245023187

`A071652(A071653(A072637(A071651(A071652(n)))))`
-/

namespace A072635.P8370684047245023187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071652 (A071653 (A072637 (A071651 (A071652 n).toNat).toNat).toNat).toNat

end

end A072635.P8370684047245023187

/-! ## A072635.P160000749018734822

`A071652(A071653(A072637(A071653(A071654(n)))))`
-/

namespace A072635.P160000749018734822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071652 (A071653 (A072637 (A071653 (A071654 n).toNat).toNat).toNat).toNat

end

end A072635.P160000749018734822

/-! ## A072635.P17585389313792553088

`A071654(A071651(A072637(A071654(A071653(n)))))`
-/

namespace A072635.P17585389313792553088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071654 (A071651 (A072637 (A071654 (A071653 n).toNat).toNat).toNat).toNat

end

end A072635.P17585389313792553088

/-!
# A072636: Permutation of natural numbers induced by reranking plane binary trees given in the standard lexicographic order (A014486) with an "arithmetic global ranking algorithm", using packA054238tr as the packing bijection N X N -> N.

The programs for A072636, there is no canonical definition to state claims against.
-/

/-! ## A072636.P278379972085076587

`A072634(A057163(n))`
-/

namespace A072636.P278379972085076587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072634 (A057163 n).toNat

end

end A072636.P278379972085076587

/-! ## A072636.P3673292157398375027

`A048679(A072646(n))`
-/

namespace A072636.P3673292157398375027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A072646 n).toNat

end

end A072636.P3673292157398375027

/-! ## A072636.P9073577480890753612

`A072634(A071654(A071651(n)))`
-/

namespace A072636.P9073577480890753612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072634 (A071654 (A071651 n).toNat).toNat

end

end A072636.P9073577480890753612

/-! ## A072636.P826126046717148681

`A072634(A071652(A071653(n)))`
-/

namespace A072636.P826126046717148681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072634 (A071652 (A071653 n).toNat).toNat

end

end A072636.P826126046717148681

/-! ## A072636.P17185233346771791962

`∑{p}[A277006(A072646(n)), A087207(#)]`
-/

namespace A072636.P17185233346771791962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A072646 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A072636.P17185233346771791962

/-! ## A072636.P11252819187986739666

`∑{p}[A277006(A072646(n)), A233249(#)]`
-/

namespace A072636.P11252819187986739666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A072646 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A072636.P11252819187986739666

/-!
# A072637: Inverse permutation to A072636.

The programs for A072637, there is no canonical definition to state claims against.
-/

/-! ## A072637.P5875587872033270729

`A072647(A048680(n))`
-/

namespace A072637.P5875587872033270729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072647 (A048680 n).toNat

end

end A072637.P5875587872033270729

/-! ## A072637.P12410852502745491329

`A072647(A074049(n+1)-1)`
-/

namespace A072637.P12410852502745491329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072647 (A074049 (n + 1) - 1).toNat

end

end A072637.P12410852502745491329

/-! ## A072637.P10802961592899715675

`A057163(A072635(n))`
-/

namespace A072637.P10802961592899715675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072635 n).toNat

end

end A072637.P10802961592899715675

/-! ## A072637.P1577765586741360197

`A071652(A071653(A072635(A071651(A071652(n)))))`
-/

namespace A072637.P1577765586741360197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071652 (A071653 (A072635 (A071651 (A071652 n).toNat).toNat).toNat).toNat

end

end A072637.P1577765586741360197

/-! ## A072637.P5505249217792770279

`A071652(A071653(A072635(A071653(A071654(n)))))`
-/

namespace A072637.P5505249217792770279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071652 (A071653 (A072635 (A071653 (A071654 n).toNat).toNat).toNat).toNat

end

end A072637.P5505249217792770279

/-!
# A072638: Number of unary-binary rooted trees of height at most n.

The programs for A072638, the canonical program `A072638.P14031279018864755668` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072638 has offset 0).

The definition of A072638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072638.P18283930752929196874

`C(a(n-1)+2, 2)` with `a(0)=0`
-/

namespace A072638.P18283930752929196874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (a (n - 1) + 2) 2

end

end A072638.P18283930752929196874

namespace A072638

/-- `C(a(n-1)+2, 2)` -/
def P18283930752929196874.Spec : Prop :=
  ∀ n, (P18283930752929196874.a n : ℤ) = A072638 n

end A072638

/-! ## A072638.P3055174123745978590

`1+a(n-1)*(a(n-1)+3)/2` with `a(0)=0`
-/

namespace A072638.P3055174123745978590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (n - 1) * (a (n - 1) + 3) / 2

end

end A072638.P3055174123745978590

namespace A072638

/-- `1+a(n-1)*(a(n-1)+3)/2` -/
def P3055174123745978590.Spec : Prop :=
  ∀ n, P3055174123745978590.a n = (A072638 n : ℚ)

end A072638

/-! ## A072638.P14031279018864755668

`A006894(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072638

/-- `A006894(n+1)-1` -/
def P14031279018864755668.Spec : Prop :=
  ∀ n, P14031279018864755668.a n = A072638 n

theorem P14031279018864755668.correct : P14031279018864755668.Spec := by
  intro n
  simp only [A072638]

end A072638

/-! ## A072638.P3850519669459261019

`C(2-floor(-a(n-1)), 2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A072638.P3850519669459261019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (2 - (-(a (n - 1) : ℤ))).toNat 2

end

end A072638.P3850519669459261019

namespace A072638

/-- `C(2-floor(-a(n-1)), 2)` -/
def P3850519669459261019.Spec : Prop :=
  ∀ n, (P3850519669459261019.a n : ℤ) = A072638 n

end A072638

/-! ## A072638.P18412565362497167959

`C(2-ceil(-a(n-1)), 2)` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A072638.P18412565362497167959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (2 - (-(a (n - 1) : ℤ))).toNat 2

end

end A072638.P18412565362497167959

namespace A072638

/-- `C(2-ceil(-a(n-1)), 2)` -/
def P18412565362497167959.Spec : Prop :=
  ∀ n, (P18412565362497167959.a n : ℤ) = A072638 n

end A072638

/-!
# A072639: a(0) = 0, a(n) = Sum_{i=0..n-1} 2^((2^i)-1).

The programs for A072639, there is no canonical definition to state claims against.
-/

/-! ## A072639.P13553204326604560681

`∑[2*a(n-1)²]` with `a(0)=0, a(1)=1`
-/

namespace A072639.P13553204326604560681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072639.P13553204326604560681

/-! ## A072639.P6013640866872650715

`∑[a(n-1)²]/2` with `a(0)=0, a(1)=2`
-/

namespace A072639.P6013640866872650715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A072639.P6013640866872650715

/-! ## A072639.P1050086575372367866

`∑[floor(2^(2^(n-1)-1))]`
-/

namespace A072639.P1050086575372367866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072639.P1050086575372367866

/-! ## A072639.P16873144416024455166

`∑[a(n-2)^4]/2` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A072639.P16873144416024455166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n f1 =>
  f1 (n - 2) ^ 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A072639.P16873144416024455166

/-! ## A072639.P9814162673251879250

`∑[∏[a(n-1)²]]-1` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A072639.P9814162673251879250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A072639.P9814162673251879250

/-!
# A072641: Binary widths of the terms of A072638.

The programs for A072641, there is no canonical definition to state claims against.
-/

/-! ## A072641.P10294840584645270337

`ceil(log2(A006894(n+1)))`
-/

namespace A072641.P10294840584645270337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A006894 (n + 1) : ℝ)⌉

end

end A072641.P10294840584645270337

/-! ## A072641.P18375413113749177083

`A002024(A179928(n))-1`
-/

namespace A072641.P18375413113749177083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A179928 n).toNat - 1

end

end A072641.P18375413113749177083

/-! ## A072641.P16936154645721026791

`A003056(A179928(n)-1)`
-/

namespace A072641.P16936154645721026791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A179928 n - 1).toNat

end

end A072641.P16936154645721026791

/-! ## A072641.P2424190154168345062

`A374249(A239557(n))+n`
-/

namespace A072641.P2424190154168345062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A239557 n).toNat + (n : ℤ)

end

end A072641.P2424190154168345062

/-! ## A072641.P6512349029212054169

`A374249(A194628(n+1))+n`
-/

namespace A072641.P6512349029212054169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A194628 (n + 1)).toNat + (n : ℤ)

end

end A072641.P6512349029212054169

/-!
# A072642: Binary widths of the terms of A072640.

The programs for A072642, there is no canonical definition to state claims against.
-/

/-! ## A072642.P12348185294353563004

`eq[A083906(n), A115729(n)]`
-/

namespace A072642.P12348185294353563004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072642.P12348185294353563004

/-! ## A072642.P17054026284285817613

`∑[A321176(∑[A010048(n)])]`
-/

namespace A072642.P17054026284285817613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321176 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072642.P17054026284285817613

/-! ## A072642.P13903692003419955914

`∑[A321176(∑[A060384(n)])]`
-/

namespace A072642.P13903692003419955914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321176 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072642.P13903692003419955914

/-! ## A072642.P2726448655151082498

`∑[A321176(∑[A331485(n)])]`
-/

namespace A072642.P2726448655151082498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321176 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072642.P2726448655151082498

/-! ## A072642.P211037438730861394

`∑[A321176(record[A067661(n)])]`
-/

namespace A072642.P211037438730861394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321176 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072642.P211037438730861394

/-!
# A072643: Half of the binary width of the terms of A014486, the number of digits in A063171(n)/2.

The programs for A072643, the canonical program `A072643.P10513511673986297728` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072643 has offset 0).

The definition of A072643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072643.P595211234522333712

`A162550(n)/2`
-/

namespace A072643.P595211234522333712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162550 n : ℚ) / 2

end

end A072643.P595211234522333712

namespace A072643

/-- `A162550(n)/2` -/
def P595211234522333712.Spec : Prop :=
  ∀ n, P595211234522333712.a n = (A072643 n : ℚ)

end A072643

/-! ## A072643.P11026154409906552012

`∑{digits}[A063171(n), #]`
-/

namespace A072643.P11026154409906552012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A072643.P11026154409906552012

namespace A072643

/-- `∑{digits}[A063171(n), #]` -/
def P11026154409906552012.Spec : Prop :=
  ∀ n, (P11026154409906552012.a n : ℤ) = A072643 n

end A072643

/-! ## A072643.P10513511673986297728

`∑[char[A014137(n)]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072643

/-- `∑[char[A014137(n)]]` -/
def P10513511673986297728.Spec : Prop :=
  ∀ n, (P10513511673986297728.a n : ℤ) = A072643 n

theorem P10513511673986297728.correct : P10513511673986297728.Spec := by
  intro n
  simp only [A072643]

end A072643

/-! ## A072643.P15880820252649374993

`∑[char[A057551(n)]]`
-/

namespace A072643.P15880820252649374993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072643.P15880820252649374993

namespace A072643

/-- `∑[char[A057551(n)]]` -/
def P15880820252649374993.Spec : Prop :=
  ∀ n, (P15880820252649374993.a n : ℤ) = A072643 n

end A072643

/-! ## A072643.P13889186534858006265

`∑[char[A110199(n)]]`
-/

namespace A072643.P13889186534858006265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072643.P13889186534858006265

namespace A072643

/-- `∑[char[A110199(n)]]` -/
def P13889186534858006265.Spec : Prop :=
  ∀ n, (P13889186534858006265.a n : ℤ) = A072643 n

end A072643

/-! ## A072643.P8541887179956272140

`∑[char[∑[A000108(n)]]]`
-/

namespace A072643.P8541887179956272140
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072643.P8541887179956272140

namespace A072643

/-- `∑[char[∑[A000108(n)]]]` -/
def P8541887179956272140.Spec : Prop :=
  ∀ n, (P8541887179956272140.a n : ℤ) = A072643 n

end A072643

/-! ## A072643.P13363263680819618281

`∑[char[∑[A126120(n)]]]`
-/

namespace A072643.P13363263680819618281
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072643.P13363263680819618281

namespace A072643

/-- `∑[char[∑[A126120(n)]]]` -/
def P13363263680819618281.Spec : Prop :=
  ∀ n, (P13363263680819618281.a n : ℤ) = A072643 n

end A072643

/-! ## A072643.P16490157239548689109

`A358551(n+1)-1`
-/

namespace A072643.P16490157239548689109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358551 (n + 1) - 1

end

end A072643.P16490157239548689109

namespace A072643

/-- `A358551(n+1)-1` -/
def P16490157239548689109.Spec : Prop :=
  ∀ n, P16490157239548689109.a n = A072643 n

end A072643

/-! ## A072643.P13466196000814752264

`∑{digits}[A071152(n)/2, #]`
-/

namespace A072643.P13466196000814752264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071152 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A072643.P13466196000814752264

namespace A072643

/-- `∑{digits}[A071152(n)/2, #]` -/
def P13466196000814752264.Spec : Prop :=
  ∀ n, (P13466196000814752264.a n : ℤ) = A072643 n

end A072643

/-! ## A072643.P922896854165087239

`A001281(A162550(n))`
-/

namespace A072643.P922896854165087239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A162550 n).toNat

end

end A072643.P922896854165087239

namespace A072643

/-- `A001281(A162550(n))` -/
def P922896854165087239.Spec : Prop :=
  ∀ n, P922896854165087239.a n = A072643 n

end A072643

/-! ## A072643.P5066170360092457709

`A126306(n)+A057514(n)`
-/

namespace A072643.P5066170360092457709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 n + A057514 n

end

end A072643.P5066170360092457709

namespace A072643

/-- `A126306(n)+A057514(n)` -/
def P5066170360092457709.Spec : Prop :=
  ∀ n, P5066170360092457709.a n = A072643 n

end A072643

/-! ## A072643.P1746726050976966333

`∑[char[A057550(n)]]`
-/

namespace A072643.P1746726050976966333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072643.P1746726050976966333

namespace A072643

/-- `∑[char[A057550(n)]]` -/
def P1746726050976966333.Spec : Prop :=
  ∀ n, (P1746726050976966333.a n : ℤ) = A072643 n

end A072643

/-! ## A072643.P2413991392877453008

`A244160(A244217(n+1)-1)`
-/

namespace A072643.P2413991392877453008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (A244217 (n + 1) - 1).toNat

end

end A072643.P2413991392877453008

namespace A072643

/-- `A244160(A244217(n+1)-1)` -/
def P2413991392877453008.Spec : Prop :=
  ∀ n, P2413991392877453008.a n = A072643 n

end A072643

/-! ## A072643.P10954758708882623293

`A061775(A127301(n))-1`
-/

namespace A072643.P10954758708882623293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A127301 n).toNat - 1

end

end A072643.P10954758708882623293

namespace A072643

/-- `A061775(A127301(n))-1` -/
def P10954758708882623293.Spec : Prop :=
  ∀ n, P10954758708882623293.a n = A072643 n

end A072643

/-! ## A072643.P7166889034522917171

`A061775(A395051(n))-1`
-/

namespace A072643.P7166889034522917171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A395051 n).toNat - 1

end

end A072643.P7166889034522917171

namespace A072643

/-- `A061775(A395051(n))-1` -/
def P7166889034522917171.Spec : Prop :=
  ∀ n, P7166889034522917171.a n = A072643 n

end A072643

/-! ## A072643.P13235804299637780583

`A000120(A057520(n))`
-/

namespace A072643.P13235804299637780583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A057520 n).toNat

end

end A072643.P13235804299637780583

namespace A072643

/-- `A000120(A057520(n))` -/
def P13235804299637780583.Spec : Prop :=
  ∀ n, P13235804299637780583.a n = A072643 n

end A072643

/-! ## A072643.P15741574913964898136

`A000120(A072800(n))`
-/

namespace A072643.P15741574913964898136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A072800 n).toNat

end

end A072643.P15741574913964898136

namespace A072643

/-- `A000120(A072800(n))` -/
def P15741574913964898136.Spec : Prop :=
  ∀ n, P15741574913964898136.a n = A072643 n

end A072643

/-! ## A072643.P9365046544010133054

`A060130(A071155(n))`
-/

namespace A072643.P9365046544010133054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A071155 n).toNat

end

end A072643.P9365046544010133054

namespace A072643

/-- `A060130(A071155(n))` -/
def P9365046544010133054.Spec : Prop :=
  ∀ n, P9365046544010133054.a n = A072643 n

end A072643

/-!
# A072644: Size of the parenthesizations obtained with the global ranking/unranking scheme A072634-A072637.

The programs for A072644, there is no canonical definition to state claims against.
-/

/-! ## A072644.P11844843856377110848

`∑{digits}[A063171(A072637(n)), #]`
-/

namespace A072644.P11844843856377110848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A072637 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A072644.P11844843856377110848

/-! ## A072644.P1807332288653662540

`A072643(A072635(n)%A145812(n+1))`
-/

namespace A072644.P1807332288653662540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (Int.tmod (A072635 n) (A145812 (n + 1))).toNat

end

end A072644.P1807332288653662540

/-! ## A072644.P12055808572992708656

`A072643(A072635(n))`
-/

namespace A072644.P12055808572992708656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A072635 n).toNat

end

end A072644.P12055808572992708656

/-! ## A072644.P17688771863774579319

`A072643(A072637(n))`
-/

namespace A072644.P17688771863774579319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A072637 n).toNat

end

end A072644.P17688771863774579319

/-! ## A072644.P1245786724729998119

`A072645(A048680(n)%A000404(n+1))`
-/

namespace A072644.P1245786724729998119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072645 (Int.tmod (A048680 n) (A000404 (n + 1))).toNat

end

end A072644.P1245786724729998119

/-! ## A072644.P4659141452441246726

`A071673(A071653(A072637(A071654(A071653(n)))))`
-/

namespace A072644.P4659141452441246726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (A071653 (A072637 (A071654 (A071653 n).toNat).toNat).toNat).toNat

end

end A072644.P4659141452441246726

/-! ## A072644.P15826547020395411413

`A072645(A048680(n))`
-/

namespace A072644.P15826547020395411413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072645 (A048680 n).toNat

end

end A072644.P15826547020395411413

/-! ## A072644.P16600880870979093371

`A072645(A072646(A072637(A072647(A072646(n)))))`
-/

namespace A072644.P16600880870979093371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072645 (A072646 (A072637 (A072647 (A072646 n).toNat).toNat).toNat).toNat

end

end A072644.P16600880870979093371

/-!
# A072645: Size of the parenthesizations obtained with the global ranking/unranking scheme A072646/A072647.

The programs for A072645, there is no canonical definition to state claims against.
-/

/-! ## A072645.P15915147756957513228

`A072644(A048679(n))`
-/

namespace A072645.P15915147756957513228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072644 (A048679 n).toNat

end

end A072645.P15915147756957513228

/-! ## A072645.P17280385074060020808

`A072644(A087808(eq[0, and(n, 2*n)]))`
-/

namespace A072645.P17280385074060020808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072644 (A087808 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)).toNat

end

end A072645.P17280385074060020808

/-! ## A072645.P1881018516342283685

`A072644(A087808(record[and(n, -(2*n+1))]))`
-/

namespace A072645.P1881018516342283685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072644 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072645.P1881018516342283685

/-! ## A072645.P7770767142825959028

`A072644(A003188(A227351(n)))`
-/

namespace A072645.P7770767142825959028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072644 (A003188 (A227351 n).toNat).toNat

end

end A072645.P7770767142825959028

/-! ## A072645.P18420440902759549843

`A072643(A072647(n)%(∑[A151874(n)]+1))`
-/

namespace A072645.P18420440902759549843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (Int.tmod (A072647 n) (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A072645.P18420440902759549843

/-!
# A072646: Composition of the permutations A048680 & A072636, i.e., a(n) = A048680(A072636(n)).

The programs for A072646, there is no canonical definition to state claims against.
-/

/-! ## A072646.P15013611753342114151

`A048680(A072636(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072646.P15013611753342114151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A072636 n).toNat

end

end A072646.P15013611753342114151

/-! ## A072646.P8519199293561175615

`A074049(A072636(n)+1)-1`
-/

namespace A072646.P8519199293561175615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (A072636 n + 1).toNat - 1

end

end A072646.P8519199293561175615

/-! ## A072646.P11626081714927304200

`A048680(A072634(A057163(n)))`
-/

namespace A072646.P11626081714927304200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A072634 (A057163 n).toNat).toNat

end

end A072646.P11626081714927304200

/-! ## A072646.P11162663184518156069

`A048680(A072634(A072637(A072634(n))))`
-/

namespace A072646.P11162663184518156069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A072634 (A072637 (A072634 n).toNat).toNat).toNat

end

end A072646.P11162663184518156069

/-!
# A072647: a(n) = A072637(A048679(n)).

The programs for A072647, there is no canonical definition to state claims against.
-/

/-! ## A072647.P11548571655932549241

`A072637(A048679(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072647.P11548571655932549241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072637 (A048679 n).toNat

end

end A072647.P11548571655932549241

/-! ## A072647.P6617035124981405121

`A072637(A087808(record[xor(n, 2*n)/3]))`
-/

namespace A072647.P6617035124981405121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072637 (A087808 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A072647.P6617035124981405121

/-! ## A072647.P3846104190928274293

`A072637(A087808(record[n-and(n, 2*n)]))`
-/

namespace A072647.P3846104190928274293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072637 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072647.P3846104190928274293

/-! ## A072647.P4451876807056708233

`A072637(A087808(record[-or(2*n, -n)]))`
-/

namespace A072647.P4451876807056708233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072637 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072647.P4451876807056708233

/-!
# A072648: a(n) = [log_{Phi}(n*sqrt(5))], where log_{Phi} is logarithm in the base Phi ( = (sqrt(5)+1)/2) and [] stands for the floor function.

The programs for A072648, the canonical program `A072648.P3576187098403481079` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072648 has offset 1).

The definition of A072648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072648.P3123724446358072725

`floor(log(sqrt(5)*(n+1))/log(ϕ))`
-/

namespace A072648.P3123724446358072725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.sqrt (5 : ℝ) * (n + 1 : ℝ)) / Real.log Real.goldenRatio⌋

end

end A072648.P3123724446358072725

namespace A072648

/-- `floor(log(sqrt(5)*(n+1))/log(ϕ))` -/
def P3123724446358072725.Spec : Prop :=
  ∀ n, P3123724446358072725.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P3576187098403481079

`floor(log2(A048297(n)))+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A072648

/-- `floor(log2(A048297(n)))+1` -/
def P3576187098403481079.Spec : Prop :=
  ∀ n, (P3576187098403481079.a n : ℤ) = A072648 (n + 1)

theorem P3576187098403481079.correct : P3576187098403481079.Spec := by
  intro n
  simp only [A072648, Nat.add_sub_cancel]

end A072648

/-! ## A072648.P10686362669802909935

`A108852(A005206(n))`
-/

namespace A072648.P10686362669802909935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A005206 n).toNat

end

end A072648.P10686362669802909935

namespace A072648

/-- `A108852(A005206(n))` -/
def P10686362669802909935.Spec : Prop :=
  ∀ n, P10686362669802909935.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P5755964435512183657

`A130234(A019446(n+1))`
-/

namespace A072648.P5755964435512183657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (A019446 (n + 1)).toNat

end

end A072648.P5755964435512183657

namespace A072648

/-- `A130234(A019446(n+1))` -/
def P5755964435512183657.Spec : Prop :=
  ∀ n, P5755964435512183657.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P3329638392354629268

`A108852(A060143(n+1))`
-/

namespace A072648.P3329638392354629268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A060143 (n + 1)).toNat

end

end A072648.P3329638392354629268

namespace A072648

/-- `A108852(A060143(n+1))` -/
def P3329638392354629268.Spec : Prop :=
  ∀ n, P3329638392354629268.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P939874753279692226

`A130259(n)+A130255(n+1)`
-/

namespace A072648.P939874753279692226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 n + A130255 (n + 1)

end

end A072648.P939874753279692226

namespace A072648

/-- `A130259(n)+A130255(n+1)` -/
def P939874753279692226.Spec : Prop :=
  ∀ n, P939874753279692226.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P10275895717378750543

`A130233(n+1)+A130259(n)-A130259(n+1)`
-/

namespace A072648.P10275895717378750543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (n + 1) + (A130259 n - A130259 (n + 1))

end

end A072648.P10275895717378750543

namespace A072648

/-- `A130233(n+1)+A130259(n)-A130259(n+1)` -/
def P10275895717378750543.Spec : Prop :=
  ∀ n, P10275895717378750543.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P11625604025702040600

`ceil(log2(A365808(n+2)))`
-/

namespace A072648.P11625604025702040600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A365808 (n + 2) : ℝ)⌉

end

end A072648.P11625604025702040600

namespace A072648

/-- `ceil(log2(A365808(n+2)))` -/
def P11625604025702040600.Spec : Prop :=
  ∀ n, P11625604025702040600.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P2924770117270626782

`A131234(A078796(n+1))`
-/

namespace A072648.P2924770117270626782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (A078796 (n + 1)).toNat

end

end A072648.P2924770117270626782

namespace A072648

/-- `A131234(A078796(n+1))` -/
def P2924770117270626782.Spec : Prop :=
  ∀ n, P2924770117270626782.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P13435616154251739067

`A362692(A000045(A371672(n+1))+n+1)`
-/

namespace A072648.P13435616154251739067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362692 (A000045 (A371672 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A072648.P13435616154251739067

namespace A072648

/-- `A362692(A000045(A371672(n+1))+n+1)` -/
def P13435616154251739067.Spec : Prop :=
  ∀ n, P13435616154251739067.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P2804643289293693223

`A072649(A097896(A072649(n+1))+n)`
-/

namespace A072648.P2804643289293693223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A097896 (A072649 (n + 1)).toNat + (n : ℤ)).toNat

end

end A072648.P2804643289293693223

namespace A072648

/-- `A072649(A097896(A072649(n+1))+n)` -/
def P2804643289293693223.Spec : Prop :=
  ∀ n, P2804643289293693223.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P13462736789889100495

`A072649(A000201(n+1))`
-/

namespace A072648.P13462736789889100495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A000201 (n + 1)).toNat

end

end A072648.P13462736789889100495

namespace A072648

/-- `A072649(A000201(n+1))` -/
def P13462736789889100495.Spec : Prop :=
  ∀ n, P13462736789889100495.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P597941625683430066

`A072649(A066096(n+1))`
-/

namespace A072648.P597941625683430066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A066096 (n + 1)).toNat

end

end A072648.P597941625683430066

namespace A072648

/-- `A072649(A066096(n+1))` -/
def P597941625683430066.Spec : Prop :=
  ∀ n, P597941625683430066.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P6617316066849262512

`A072649(A214990(n+1))`
-/

namespace A072648.P6617316066849262512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A214990 (n + 1)).toNat

end

end A072648.P6617316066849262512

namespace A072648

/-- `A072649(A214990(n+1))` -/
def P6617316066849262512.Spec : Prop :=
  ∀ n, P6617316066849262512.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P11779064147223820307

`A072649(A022342(n+1)+1)`
-/

namespace A072648.P11779064147223820307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A022342 (n + 1) + 1).toNat

end

end A072648.P11779064147223820307

namespace A072648

/-- `A072649(A022342(n+1)+1)` -/
def P11779064147223820307.Spec : Prop :=
  ∀ n, P11779064147223820307.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P5603662287836649043

`A072649(A005206(n)+n+1)`
-/

namespace A072648.P5603662287836649043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A005206 n + (n + 1 : ℤ)).toNat

end

end A072648.P5603662287836649043

namespace A072648

/-- `A072649(A005206(n)+n+1)` -/
def P5603662287836649043.Spec : Prop :=
  ∀ n, P5603662287836649043.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P15350711837229103344

`A072649(A019446(n+1)+n)`
-/

namespace A072648.P15350711837229103344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A019446 (n + 1) + (n : ℤ)).toNat

end

end A072648.P15350711837229103344

namespace A072648

/-- `A072649(A019446(n+1)+n)` -/
def P15350711837229103344.Spec : Prop :=
  ∀ n, P15350711837229103344.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P18211605858176145548

`A072649(A003622(n+1)-n)`
-/

namespace A072648.P18211605858176145548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A003622 (n + 1) - (n : ℤ)).toNat

end

end A072648.P18211605858176145548

namespace A072648

/-- `A072649(A003622(n+1)-n)` -/
def P18211605858176145548.Spec : Prop :=
  ∀ n, P18211605858176145548.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P8623924334086553440

`A072649(A026352(n+1)-(n+2))`
-/

namespace A072648.P8623924334086553440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A026352 (n + 1) - (n + 2 : ℤ)).toNat

end

end A072648.P8623924334086553440

namespace A072648

/-- `A072649(A026352(n+1)-(n+2))` -/
def P8623924334086553440.Spec : Prop :=
  ∀ n, P8623924334086553440.a n = A072648 (n + 1)

end A072648

/-! ## A072648.P6756850932786154342

`A072649(A054770(n+1)-(2*n+1))`
-/

namespace A072648.P6756850932786154342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A054770 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A072648.P6756850932786154342

namespace A072648

/-- `A072649(A054770(n+1)-(2*n+1))` -/
def P6756850932786154342.Spec : Prop :=
  ∀ n, P6756850932786154342.a n = A072648 (n + 1)

end A072648

/-!
# A072649: n occurs Fibonacci(n) times (cf. A000045).

The programs for A072649, the canonical program `A072649.P9617326913925617377` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072649 has offset 1).

The definition of A072649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072649.P9617326913925617377

`A108852(n+1)-2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A072649

/-- `A108852(n+1)-2` -/
def P9617326913925617377.Spec : Prop :=
  ∀ n, P9617326913925617377.a n = A072649 (n + 1)

theorem P9617326913925617377.correct : P9617326913925617377.Spec := by
  intro n
  simp only [A072649, Nat.add_sub_cancel]

end A072649

/-! ## A072649.P10703169791045445415

`a(floor(n/ϕ))+1` with `a(0)=1`
-/

namespace A072649.P10703169791045445415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat + 1

end

end A072649.P10703169791045445415

namespace A072649

/-- `a(floor(n/ϕ))+1` -/
def P10703169791045445415.Spec : Prop :=
  ∀ n, (P10703169791045445415.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P16778367830581739441

`∑[char[ogf(x^2/(1-2x+x^3))]]`
-/

namespace A072649.P16778367830581739441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, 0, 1] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P16778367830581739441

namespace A072649

/-- `∑[char[ogf(x^2/(1-2x+x^3))]]` -/
def P16778367830581739441.Spec : Prop :=
  ∀ n, (P16778367830581739441.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P15156772836626121457

`∑[char[ceil(ϕ*a(n-2))]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A072649.P15156772836626121457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  ⌈Real.goldenRatio * (f2 (n - 2) : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P15156772836626121457

namespace A072649

/-- `∑[char[ceil(ϕ*a(n-2))]]` -/
def P15156772836626121457.Spec : Prop :=
  ∀ n, (P15156772836626121457.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P13974209609726348027

`∑[char[a(n-1)+a(n-2)+1]]` with `a(0)=0, a(1)=0`
-/

namespace A072649.P13974209609726348027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P13974209609726348027

namespace A072649

/-- `∑[char[a(n-1)+a(n-2)+1]]` -/
def P13974209609726348027.Spec : Prop :=
  ∀ n, (P13974209609726348027.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P13870090126261303102

`∑[A192687(n)]`
-/

namespace A072649.P13870090126261303102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P13870090126261303102

namespace A072649

/-- `∑[A192687(n)]` -/
def P13870090126261303102.Spec : Prop :=
  ∀ n, P13870090126261303102.a n = A072649 (n + 1)

end A072649

/-! ## A072649.P5968893526754475756

`∑[char[A115346(n)]]`
-/

namespace A072649.P5968893526754475756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115346 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P5968893526754475756

namespace A072649

/-- `∑[char[A115346(n)]]` -/
def P5968893526754475756.Spec : Prop :=
  ∀ n, (P5968893526754475756.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P16467967654822848456

`∑[A010056(n+1)]`
-/

namespace A072649.P16467967654822848456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P16467967654822848456

namespace A072649

/-- `∑[A010056(n+1)]` -/
def P16467967654822848456.Spec : Prop :=
  ∀ n, P16467967654822848456.a n = A072649 (n + 1)

end A072649

/-! ## A072649.P15789486685630601934

`∑[1-A095792(n)]`
-/

namespace A072649.P15789486685630601934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P15789486685630601934

namespace A072649

/-- `∑[1-A095792(n)]` -/
def P15789486685630601934.Spec : Prop :=
  ∀ n, P15789486685630601934.a n = A072649 (n + 1)

end A072649

/-! ## A072649.P16955749052960981176

`∑[char[∑[A000045(n)]]]`
-/

namespace A072649.P16955749052960981176
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P16955749052960981176

namespace A072649

/-- `∑[char[∑[A000045(n)]]]` -/
def P16955749052960981176.Spec : Prop :=
  ∀ n, (P16955749052960981176.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P3182195225189813335

`A130233(n+1)-1`
-/

namespace A072649.P3182195225189813335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (n + 1) - 1

end

end A072649.P3182195225189813335

namespace A072649

/-- `A130233(n+1)-1` -/
def P3182195225189813335.Spec : Prop :=
  ∀ n, P3182195225189813335.a n = A072649 (n + 1)

end A072649

/-! ## A072649.P5526688523799458754

`floor(log2(A048297(n)+1))`
-/

namespace A072649.P5526688523799458754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A048297 n + 1).toNat

end

end A072649.P5526688523799458754

namespace A072649

/-- `floor(log2(A048297(n)+1))` -/
def P5526688523799458754.Spec : Prop :=
  ∀ n, (P5526688523799458754.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P14565403411934265417

`floor(log2(A277335(n+1)))`
-/

namespace A072649.P14565403411934265417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A277335 (n + 1)).toNat

end

end A072649.P14565403411934265417

namespace A072649

/-- `floor(log2(A277335(n+1)))` -/
def P14565403411934265417.Spec : Prop :=
  ∀ n, (P14565403411934265417.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P10213929795121395577

`ceil(log2(A060138(n+1)))`
-/

namespace A072649.P10213929795121395577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A060138 (n + 1) : ℝ)⌉

end

end A072649.P10213929795121395577

namespace A072649

/-- `ceil(log2(A060138(n+1)))` -/
def P10213929795121395577.Spec : Prop :=
  ∀ n, P10213929795121395577.a n = A072649 (n + 1)

end A072649

/-! ## A072649.P5727354118401550778

`ceil(log2(A060142(n)+2))`
-/

namespace A072649.P5727354118401550778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A060142 n + 2 : ℝ)⌉

end

end A072649.P5727354118401550778

namespace A072649

/-- `ceil(log2(A060142(n)+2))` -/
def P5727354118401550778.Spec : Prop :=
  ∀ n, P5727354118401550778.a n = A072649 (n + 1)

end A072649

/-! ## A072649.P3450309450388447282

`∑[char[A000071(n+1)]]`
-/

namespace A072649.P3450309450388447282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P3450309450388447282

namespace A072649

/-- `∑[char[A000071(n+1)]]` -/
def P3450309450388447282.Spec : Prop :=
  ∀ n, (P3450309450388447282.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P7537292638595806996

`∑[char[A020345(n)-1]]`
-/

namespace A072649.P7537292638595806996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020345 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P7537292638595806996

namespace A072649

/-- `∑[char[A020345(n)-1]]` -/
def P7537292638595806996.Spec : Prop :=
  ∀ n, (P7537292638595806996.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P10013048401241308267

`∑[char[A053602(n)-1]]`
-/

namespace A072649.P10013048401241308267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P10013048401241308267

namespace A072649

/-- `∑[char[A053602(n)-1]]` -/
def P10013048401241308267.Spec : Prop :=
  ∀ n, (P10013048401241308267.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P191553501413163732

`∑[char[A079977(n)-1]]`
-/

namespace A072649.P191553501413163732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P191553501413163732

namespace A072649

/-- `∑[char[A079977(n)-1]]` -/
def P191553501413163732.Spec : Prop :=
  ∀ n, (P191553501413163732.a n : ℤ) = A072649 (n + 1)

end A072649

/-! ## A072649.P15525939913810846920

`∑[char[A098054(n)-1]]`
-/

namespace A072649.P15525939913810846920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072649.P15525939913810846920

namespace A072649

/-- `∑[char[A098054(n)-1]]` -/
def P15525939913810846920.Spec : Prop :=
  ∀ n, (P15525939913810846920.a n : ℤ) = A072649 (n + 1)

end A072649

/-!
# A072650: Starting from the right (the least significant end) rewrite 0 to 0 and x1 to 1 in the binary expansion of n.

The programs for A072650, there is no canonical definition to state claims against.
-/

/-! ## A072650.P12286358109681196854

`A053735(A000217(A065620(n)²))`
-/

namespace A072650.P12286358109681196854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000217 (A065620 n ^ 2).toNat).toNat

end

end A072650.P12286358109681196854

/-! ## A072650.P5308933199653995146

`A053735(A000217(A104895(n)²))`
-/

namespace A072650.P5308933199653995146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000217 (A104895 n ^ 2).toNat).toNat

end

end A072650.P5308933199653995146

/-! ## A072650.P12121482778284291107

`A087808(A229763(n))*A327537(A107754(n+1)+1)`
-/

namespace A072650.P12121482778284291107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A229763 n).toNat * A327537 (A107754 (n + 1) + 1).toNat

end

end A072650.P12121482778284291107

/-!
# A072652: Ordered solutions greater than 1 to b^c=c^d, with multiplicity.

The programs for A072652, there is no canonical definition to state claims against.
-/

/-! ## A072652.P15411212335155313900

`A079277(A253914(n+1))`
-/

namespace A072652.P15411212335155313900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079277 (A253914 (n + 1)).toNat

end

end A072652.P15411212335155313900

/-! ## A072652.P448653423652406780

`A119318(A178741(n+2))`
-/

namespace A072652.P448653423652406780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119318 (A178741 (n + 2)).toNat

end

end A072652.P448653423652406780

/-! ## A072652.P4998507425428752799

`A196064(A023181(n+2)+1)`
-/

namespace A072652.P4998507425428752799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196064 (A023181 (n + 2) + 1).toNat

end

end A072652.P4998507425428752799

/-!
# A072653: Uniqued integer solutions n to n = b^c = c^d.

The programs for A072653, there is no canonical definition to state claims against.
-/

/-! ## A072653.P8433761667936980370

`∩[A072873(n+1), A076292(n+1)]`
-/

namespace A072653.P8433761667936980370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072653.P8433761667936980370

/-! ## A072653.P12871285464137445050

`filter[A076292(n+1), A359552(#)]`
-/

namespace A072653.P12871285464137445050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359552 (f1 j).toNat = 1) n)

end

end A072653.P12871285464137445050

/-! ## A072653.P1176132026550817916

`filter[A072873(n+1), A373481(#)]`
-/

namespace A072653.P1176132026550817916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A072653.P1176132026550817916

/-! ## A072653.P13790673711000474687

`∩[A072873(n+1), A242417(n+1)]`
-/

namespace A072653.P13790673711000474687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072653.P13790673711000474687

/-! ## A072653.P16526564534501395829

`record[A327939(A126864(n+1)+n)]`
-/

namespace A072653.P16526564534501395829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A126864 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072653.P16526564534501395829

/-!
# A072654: Maximum position in A072645 where the value n occurs.

The programs for A072654, there is no canonical definition to state claims against.
-/

/-! ## A072654.P16273444570801398290

`∑[A000045(floor(2^(n-1))+n)]`
-/

namespace A072654.P16273444570801398290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072654.P16273444570801398290

/-! ## A072654.P12359141285701136480

`∑[A212804(floor(2^(n-1))+n+1)]`
-/

namespace A072654.P12359141285701136480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072654.P12359141285701136480

/-! ## A072654.P7005477361736048062

`∑[A000045(ceil(2^(n-1))+n)]-1`
-/

namespace A072654.P7005477361736048062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072654.P7005477361736048062

/-! ## A072654.P17502339906217243925

`A072646(A014138(n))`
-/

namespace A072654.P17502339906217243925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072646 (A014138 n).toNat

end

end A072654.P17502339906217243925

/-! ## A072654.P8045219303313285849

`∑[A001611(A131577(n)+n)-1]`
-/

namespace A072654.P8045219303313285849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A131577 n + (n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072654.P8045219303313285849

/-!
# A072655: Binary widths of the terms of A072654.

The programs for A072655, there is no canonical definition to state claims against.
-/

/-! ## A072655.P9481657049376124454

`A257839(A257839(n+1)+A029879(n))`
-/

namespace A072655.P9481657049376124454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A257839 (n + 1) + A029879 n).toNat

end

end A072655.P9481657049376124454

/-! ## A072655.P10853222282119610398

`A257839(A257839(n+1)+A019302(n)+2^n)`
-/

namespace A072655.P10853222282119610398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A257839 (n + 1) + (A019302 n + (2 ^ n : ℤ))).toNat

end

end A072655.P10853222282119610398

/-! ## A072655.P18263436882578001396

`A257839(A257839(n+1)+A000051(n)+A019302(n)-1)`
-/

namespace A072655.P18263436882578001396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A257839 (n + 1) + (A000051 n + (A019302 n - 1))).toNat

end

end A072655.P18263436882578001396

/-! ## A072655.P12109645281279682240

`A257839(A257839(n+1)+A135318(2*n+1)+A019302(n))`
-/

namespace A072655.P12109645281279682240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A257839 (n + 1) + (A135318 (2 * n + 1) + A019302 n)).toNat

end

end A072655.P12109645281279682240

/-! ## A072655.P9132558712209497728

`A127499(3*A005248(n))`
-/

namespace A072655.P9132558712209497728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127499 (3 * A005248 n).toNat

end

end A072655.P9132558712209497728

/-!
# A072656: Permutation of natural numbers induced by reranking plane binary trees given in the standard lexicographic order (A014486) with an "arithmetic global ranking algorithm", using packA048680oA054238 as the packing bijection N X N -> N.

The programs for A072656, there is no canonical definition to state claims against.
-/

/-! ## A072656.P10414811588868196375

`A072658(A057163(n))`
-/

namespace A072656.P10414811588868196375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072658 (A057163 n).toNat

end

end A072656.P10414811588868196375

/-! ## A072656.P8307269768902612452

`A072658(A071654(A071651(n)))`
-/

namespace A072656.P8307269768902612452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072658 (A071654 (A071651 n).toNat).toNat

end

end A072656.P8307269768902612452

/-! ## A072656.P5746737215369364129

`A072658(A071652(A071653(n)))`
-/

namespace A072656.P5746737215369364129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072658 (A071652 (A071653 n).toNat).toNat

end

end A072656.P5746737215369364129

/-! ## A072656.P1909677572783890136

`A072658(A072635(A072636(n)))`
-/

namespace A072656.P1909677572783890136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072658 (A072635 (A072636 n).toNat).toNat

end

end A072656.P1909677572783890136

/-! ## A072656.P8623708502859178042

`A072658(A072635(A048679(A072646(n))))`
-/

namespace A072656.P8623708502859178042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072658 (A072635 (A048679 (A072646 n).toNat).toNat).toNat

end

end A072656.P8623708502859178042

/-!
# A072657: Inverse permutation to A072656.

The programs for A072657, there is no canonical definition to state claims against.
-/

/-! ## A072657.P12776298453507539431

`A057163(A072659(n))`
-/

namespace A072657.P12776298453507539431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072659 n).toNat

end

end A072657.P12776298453507539431

/-! ## A072657.P7152874345916327568

`A122339(A072659(2*n-n))`
-/

namespace A072657.P7152874345916327568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122339 (A072659 (2 * n - n)).toNat

end

end A072657.P7152874345916327568

/-! ## A072657.P2952596285094561854

`A122339(A072659(n))/A007318(∑[n])`
-/

namespace A072657.P2952596285094561854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122339 (A072659 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A072657.P2952596285094561854

/-! ## A072657.P14418174783848939214

`char[A007318(n)]*A122339(A072659(n))`
-/

namespace A072657.P14418174783848939214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A122339 (A072659 n).toNat

end

end A072657.P14418174783848939214

/-! ## A072657.P15751628653091783199

`A122339(A072659(n))%A000108(n+1)`
-/

namespace A072657.P15751628653091783199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122339 (A072659 n).toNat) (A000108 (n + 1))

end

end A072657.P15751628653091783199

/-!
# A072658: Permutation of natural numbers induced by reranking plane binary trees given in the standard lexicographic order (A014486) with an "arithmetic global ranking algorithm", using packA048680oA054238tr as the packing bijection N X N -> N.

The programs for A072658, there is no canonical definition to state claims against.
-/

/-! ## A072658.P10489782088087612133

`A072656(A057163(n))`
-/

namespace A072658.P10489782088087612133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072656 (A057163 n).toNat

end

end A072658.P10489782088087612133

/-! ## A072658.P16867573481538372024

`A072656(A071654(A071651(n)))`
-/

namespace A072658.P16867573481538372024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072656 (A071654 (A071651 n).toNat).toNat

end

end A072658.P16867573481538372024

/-! ## A072658.P3871217403663388410

`A072656(A071652(A071653(n)))`
-/

namespace A072658.P3871217403663388410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072656 (A071652 (A071653 n).toNat).toNat

end

end A072658.P3871217403663388410

/-! ## A072658.P17861776421407493761

`A072656(A072635(A072636(n)))`
-/

namespace A072658.P17861776421407493761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072656 (A072635 (A072636 n).toNat).toNat

end

end A072658.P17861776421407493761

/-! ## A072658.P5352160688343933599

`A072656(A072637(A072634(n)))`
-/

namespace A072658.P5352160688343933599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072656 (A072637 (A072634 n).toNat).toNat

end

end A072658.P5352160688343933599

/-!
# A072659: Inverse permutation to A072658.

The programs for A072659, there is no canonical definition to state claims against.
-/

/-! ## A072659.P12235183390615597718

`A057163(A072657(n))`
-/

namespace A072659.P12235183390615597718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072657 n).toNat

end

end A072659.P12235183390615597718

/-! ## A072659.P16317580302324999451

`A122340(A072657(n)%A000302(n))`
-/

namespace A072659.P16317580302324999451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122340 (Int.tmod (A072657 n) (A000302 n)).toNat

end

end A072659.P16317580302324999451

/-! ## A072659.P13248454684243786330

`A122340(A072657(n))%A007727(n)`
-/

namespace A072659.P13248454684243786330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122340 (A072657 n).toNat) (A007727 n)

end

end A072659.P13248454684243786330

/-! ## A072659.P10842572855605604250

`A082348(A072657(n)^A278657(n))`
-/

namespace A072659.P10842572855605604250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (SequenceMachineLib.roundAway ((A072657 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A072659.P10842572855605604250

/-!
# A072660: Size of the parenthesizations obtained with the global ranking/unranking scheme A072656-A072659.

The programs for A072660, there is no canonical definition to state claims against.
-/

/-! ## A072660.P17068209466679761575

`∑{digits}[A063171(A072657(n)), #]`
-/

namespace A072660.P17068209466679761575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A072657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A072660.P17068209466679761575

/-! ## A072660.P15759648223872807308

`∑{digits}[A063171(A072659(n)), #]`
-/

namespace A072660.P15759648223872807308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A072659 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A072660.P15759648223872807308

/-! ## A072660.P261555377440608821

`A072643(A072657(n))`
-/

namespace A072660.P261555377440608821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A072657 n).toNat

end

end A072660.P261555377440608821

/-! ## A072660.P16499989782074490417

`A072643(A072659(n))`
-/

namespace A072660.P16499989782074490417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A072659 n).toNat

end

end A072660.P16499989782074490417

/-!
# A072661: Composition of the A059905 and A048679, i.e., a(n) = A059905(A048679(n)).

The programs for A072661, there is no canonical definition to state claims against.
-/

/-! ## A072661.P626093409707225499

`A059905(A048679(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072661.P626093409707225499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A048679 n).toNat

end

end A072661.P626093409707225499

/-! ## A072661.P13106460999110333993

`A072662(A022342(n+1))`
-/

namespace A072661.P13106460999110333993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072662 (A022342 (n + 1)).toNat

end

end A072661.P13106460999110333993

/-! ## A072661.P12640695966621071682

`A072662(A003622(n+1))`
-/

namespace A072661.P12640695966621071682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072662 (A003622 (n + 1)).toNat

end

end A072661.P12640695966621071682

/-! ## A072661.P3178841426737135147

`A025581(A072794(n))`
-/

namespace A072661.P3178841426737135147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072794 n).toNat

end

end A072661.P3178841426737135147

/-! ## A072661.P8045311715306661173

`A309952(A227351(n))`
-/

namespace A072661.P8045311715306661173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A227351 n).toNat

end

end A072661.P8045311715306661173

/-! ## A072661.P13837509537921223021

`A059905(A087808(record[n-and(n, 2*n)]))`
-/

namespace A072661.P13837509537921223021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072661.P13837509537921223021

/-! ## A072661.P4136242148069131787

`A059905(A087808(record[-or(2*n, -n)]))`
-/

namespace A072661.P4136242148069131787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072661.P4136242148069131787

/-! ## A072661.P13725812217117036553

`A059905(A087808(record[and(n, -(2*n+1))]))`
-/

namespace A072661.P13725812217117036553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072661.P13725812217117036553

/-! ## A072661.P1049176089317061155

`A059906(2*A048679(n))`
-/

namespace A072661.P1049176089317061155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * A048679 n).toNat

end

end A072661.P1049176089317061155

/-! ## A072661.P4302099799859380526

`A059906(A144396(or(2, A048679(n))))`
-/

namespace A072661.P4302099799859380526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A144396 (Int.lor 2 (A048679 n)).toNat).toNat

end

end A072661.P4302099799859380526

/-! ## A072661.P9483213615604271308

`A059906(A048679(n)+A048679(n))`
-/

namespace A072661.P9483213615604271308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A048679 n + A048679 n).toNat

end

end A072661.P9483213615604271308

/-!
# A072662: Composition of the A059906 and A048679, i.e., a(n) = A059906(A048679(n)).

The programs for A072662, there is no canonical definition to state claims against.
-/

/-! ## A072662.P2973414628157875374

`A059906(A048679(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072662.P2973414628157875374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A048679 n).toNat

end

end A072662.P2973414628157875374

/-! ## A072662.P14682676726733323760

`A072661(A193564(n+1))`
-/

namespace A072662.P14682676726733323760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072661 (A193564 (n + 1)).toNat

end

end A072662.P14682676726733323760

/-! ## A072662.P7595017966244429081

`A072661(A026242(n+1)-1)`
-/

namespace A072662.P7595017966244429081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072661 (A026242 (n + 1) - 1).toNat

end

end A072662.P7595017966244429081

/-! ## A072662.P4504613523891945149

`A002260(A072794(n)+1)-1`
-/

namespace A072662.P4504613523891945149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A072794 n + 1).toNat - 1

end

end A072662.P4504613523891945149

/-! ## A072662.P13068154477796466507

`A002262(A072794(n))`
-/

namespace A072662.P13068154477796466507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072794 n).toNat

end

end A072662.P13068154477796466507

/-! ## A072662.P18264289602472781970

`A059905(floor(A048679(n)/2))`
-/

namespace A072662.P18264289602472781970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 ⌊(A048679 n : ℚ) / 2⌋.toNat

end

end A072662.P18264289602472781970

/-! ## A072662.P8313069146729360700

`A309952(xor(A048679(n), A227351(n)))`
-/

namespace A072662.P8313069146729360700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (Int.xor (A048679 n) (A227351 n)).toNat

end

end A072662.P8313069146729360700

/-! ## A072662.P6207062743913453125

`A059905(A008619(A048679(n))-1)`
-/

namespace A072662.P6207062743913453125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A008619 (A048679 n).toNat - 1).toNat

end

end A072662.P6207062743913453125

/-! ## A072662.P8497078348814411992

`A059906(A087808(record[n-and(n, 2*n)]))`
-/

namespace A072662.P8497078348814411992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072662.P8497078348814411992

/-! ## A072662.P2915196329710690298

`A059905(2*A048679(n))/2`
-/

namespace A072662.P2915196329710690298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059905 (2 * A048679 n).toNat : ℚ) / 2

end

end A072662.P2915196329710690298

/-!
# A072663: Numbers m such that Sum_{k=1..m} (-1)^k*k*floor(m/k) = 0.

The programs for A072663, there is no canonical definition to state claims against.
-/

/-! ## A072663.P18308001971607661850

`eq[0, A024919(n+1)]+1`
-/

namespace A072663.P18308001971607661850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072663.P18308001971607661850

/-! ## A072663.P6907826174200914870

`eq[0, A024919(A028310(n))]`
-/

namespace A072663.P6907826174200914870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024919 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072663.P6907826174200914870

/-!
# A072666: Numbers n such that prime(n) + prime(n+1) - 1 is prime.

The programs for A072666, the canonical program `A072666.P4852007313916300024` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072666 has offset 1).

The definition of A072666 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072667, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072666.P4852007313916300024

`A000720(A072667(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072666

/-- `A000720(A072667(n+1))` -/
def P4852007313916300024.Spec : Prop :=
  ∀ n, P4852007313916300024.a n = A072666 (n + 1)

theorem P4852007313916300024.correct : P4852007313916300024.Spec := by
  intro n
  simp only [A072666, Nat.add_sub_cancel]

end A072666

/-! ## A072666.P11149240527031979854

`A000720(∩[A078444(n+1), A005097(n+3)])`
-/

namespace A072666.P11149240527031979854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A072666.P11149240527031979854

namespace A072666

/-- `A000720(∩[A078444(n+1), A005097(n+3)])` -/
def P11149240527031979854.Spec : Prop :=
  ∀ n, P11149240527031979854.a n = A072666 (n + 1)

end A072666

/-! ## A072666.P17542621309821800242

`eq[1, A001222(A011974(n+1)-1)]`
-/

namespace A072666.P17542621309821800242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A011974 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072666.P17542621309821800242

namespace A072666

/-- `eq[1, A001222(A011974(n+1)-1)]` -/
def P17542621309821800242.Spec : Prop :=
  ∀ n, (P17542621309821800242.a n : ℤ) = A072666 (n + 1)

end A072666

/-! ## A072666.P17743074755762157372

`eq[2, A000005(A011974(n+1)-1)]`
-/

namespace A072666.P17743074755762157372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011974 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072666.P17743074755762157372

namespace A072666

/-- `eq[2, A000005(A011974(n+1)-1)]` -/
def P17743074755762157372.Spec : Prop :=
  ∀ n, (P17743074755762157372.a n : ℤ) = A072666 (n + 1)

end A072666

/-! ## A072666.P11237478180372812924

`lt[A001222(A001043(n+1)+1-4/2), 2]+1`
-/

namespace A072666.P11237478180372812924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A001043 (n + 1) : ℚ) + (1 - (4 : ℚ) / 2))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072666.P11237478180372812924

namespace A072666

/-- `lt[A001222(A001043(n+1)+1-4/2), 2]+1` -/
def P11237478180372812924.Spec : Prop :=
  ∀ n, (P11237478180372812924.a n : ℤ) = A072666 (n + 1)

end A072666

/-! ## A072666.P5989041292555248683

`eq[A000203(A011974(n+1)-1), A011974(n+1)]`
-/

namespace A072666.P5989041292555248683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A011974 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072666.P5989041292555248683

namespace A072666

/-- `eq[A000203(A011974(n+1)-1), A011974(n+1)]` -/
def P5989041292555248683.Spec : Prop :=
  ∀ n, (P5989041292555248683.a n : ℤ) = A072666 (n + 1)

end A072666

/-! ## A072666.P2608468319234802327

`A000720(p?[A249666(n+1)+1]-1)`
-/

namespace A072666.P2608468319234802327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249666 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A072666.P2608468319234802327

namespace A072666

/-- `A000720(p?[A249666(n+1)+1]-1)` -/
def P2608468319234802327.Spec : Prop :=
  ∀ n, P2608468319234802327.a n = A072666 (n + 1)

end A072666

/-! ## A072666.P5117960140974605490

`eq[A239866(n+1), A254531(A239866(n+1))]+1`
-/

namespace A072666.P5117960140974605490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254531 ((A239866 (n + 1)).toNat + 27)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072666.P5117960140974605490

namespace A072666

/-- `eq[A239866(n+1), A254531(A239866(n+1))]+1` -/
def P5117960140974605490.Spec : Prop :=
  ∀ n, (P5117960140974605490.a n : ℤ) = A072666 (n + 1)

end A072666

/-! ## A072666.P7205690126173774624

`eq[2, A132881(A068499(n+2)+A068499(n+1)+1)]`
-/

namespace A072666.P7205690126173774624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (A068499 (n + 2) + A068499 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072666.P7205690126173774624

namespace A072666

/-- `eq[2, A132881(A068499(n+2)+A068499(n+1)+1)]` -/
def P7205690126173774624.Spec : Prop :=
  ∀ n, (P7205690126173774624.a n : ℤ) = A072666 (n + 1)

end A072666

/-! ## A072666.P16620739682290254362

`A055679(A072669(n+1))`
-/

namespace A072666.P16620739682290254362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A072669 (n + 1)).toNat

end

end A072666.P16620739682290254362

namespace A072666

/-- `A055679(A072669(n+1))` -/
def P16620739682290254362.Spec : Prop :=
  ∀ n, P16620739682290254362.a n = A072666 (n + 1)

end A072666

/-!
# A072667: Consider m such that prime(m) + prime(m+1) = prime(k) + 1 for some k; sequence gives values of prime(m).

The programs for A072667, the canonical program `A072667.P10592464437317700849` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072667 has offset 1).

The definition of A072667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072667.P4388481839551460531

`A000040(A072666(n+1))`
-/

namespace A072667.P4388481839551460531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072666 (n + 1)).toNat

end

end A072667.P4388481839551460531

namespace A072667

/-- `A000040(A072666(n+1))` -/
def P4388481839551460531.Spec : Prop :=
  ∀ n, P4388481839551460531.a n = A072667 (n + 1)

end A072667

/-! ## A072667.P4469331070695578208

`p?[(n+1)*A001222(A340071(n+1)+n+1)]`
-/

namespace A072667.P4469331070695578208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A340071 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072667.P4469331070695578208

namespace A072667

/-- `p?[(n+1)*A001222(A340071(n+1)+n+1)]` -/
def P4469331070695578208.Spec : Prop :=
  ∀ n, P4469331070695578208.a n = A072667 (n + 1)

end A072667

/-! ## A072667.P10592464437317700849

`A000040(eq[2, A000005(A011974(n+1)-1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072667

/-- `A000040(eq[2, A000005(A011974(n+1)-1)])` -/
def P10592464437317700849.Spec : Prop :=
  ∀ n, P10592464437317700849.a n = A072667 (n + 1)

theorem P10592464437317700849.correct : P10592464437317700849.Spec := by
  intro n
  simp only [A072667, Nat.add_sub_cancel]

end A072667

/-! ## A072667.P2217974923492733288

`p?[A006530(A283463(n+2)+n)-n]`
-/

namespace A072667.P2217974923492733288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A283463 (n + 2) + (n : ℤ)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072667.P2217974923492733288

namespace A072667

/-- `p?[A006530(A283463(n+2)+n)-n]` -/
def P2217974923492733288.Spec : Prop :=
  ∀ n, P2217974923492733288.a n = A072667 (n + 1)

end A072667

/-! ## A072667.P17108921145429774119

`A055377(A072669(n+1))`
-/

namespace A072667.P17108921145429774119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A072669 (n + 1)).toNat

end

end A072667.P17108921145429774119

namespace A072667

/-- `A055377(A072669(n+1))` -/
def P17108921145429774119.Spec : Prop :=
  ∀ n, P17108921145429774119.a n = A072667 (n + 1)

end A072667

/-! ## A072667.P2059745413266504218

`eq[2, A231820(n+1)+A231820(A013634(n))]`
-/

namespace A072667.P2059745413266504218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) + A231820 (A013634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072667.P2059745413266504218

namespace A072667

/-- `eq[2, A231820(n+1)+A231820(A013634(n))]` -/
def P2059745413266504218.Spec : Prop :=
  ∀ n, (P2059745413266504218.a n : ℤ) = A072667 (n + 1)

end A072667

/-!
# A072668: Numbers one less than composite numbers.

The programs for A072668, the canonical program `A072668.P5648318357023435289` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072668 has offset 1).

The definition of A072668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072668.P5648318357023435289

`A002808(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072668

/-- `A002808(n+1)-1` -/
def P5648318357023435289.Spec : Prop :=
  ∀ n, P5648318357023435289.a n = A072668 (n + 1)

theorem P5648318357023435289.correct : P5648318357023435289.Spec := by
  intro n
  simp only [A072668, Nat.add_sub_cancel]

end A072668

/-! ## A072668.P18211366754163556013

`lt[A106475(n), 0]`
-/

namespace A072668.P18211366754163556013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106475 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072668.P18211366754163556013

namespace A072668

/-- `lt[A106475(n), 0]` -/
def P18211366754163556013.Spec : Prop :=
  ∀ n, (P18211366754163556013.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P7232452843812255102

`lt[1, A330773(n)]`
-/

namespace A072668.P7232452843812255102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072668.P7232452843812255102

namespace A072668

/-- `lt[1, A330773(n)]` -/
def P7232452843812255102.Spec : Prop :=
  ∀ n, (P7232452843812255102.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P6633220528715957093

`lt[A166333(n), n]`
-/

namespace A072668.P6633220528715957093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072668.P6633220528715957093

namespace A072668

/-- `lt[A166333(n), n]` -/
def P6633220528715957093.Spec : Prop :=
  ∀ n, (P6633220528715957093.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P6098857804988846796

`∑[A065310(n+1)]`
-/

namespace A072668.P6098857804988846796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072668.P6098857804988846796

namespace A072668

/-- `∑[A065310(n+1)]` -/
def P6098857804988846796.Spec : Prop :=
  ∀ n, P6098857804988846796.a n = A072668 (n + 1)

end A072668

/-! ## A072668.P12235173304466278519

`Δ[A053767(n)]-1`
-/

namespace A072668.P12235173304466278519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A072668.P12235173304466278519

namespace A072668

/-- `Δ[A053767(n)]-1` -/
def P12235173304466278519.Spec : Prop :=
  ∀ n, P12235173304466278519.a n = A072668 (n + 1)

end A072668

/-! ## A072668.P9000387320808608308

`comp[A130008(n)-1]`
-/

namespace A072668.P9000387320808608308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072668.P9000387320808608308

namespace A072668

/-- `comp[A130008(n)-1]` -/
def P9000387320808608308.Spec : Prop :=
  ∀ n, (P9000387320808608308.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P13103252552331334167

`comp[A351078(n)-1]`
-/

namespace A072668.P13103252552331334167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072668.P13103252552331334167

namespace A072668

/-- `comp[A351078(n)-1]` -/
def P13103252552331334167.Spec : Prop :=
  ∀ n, (P13103252552331334167.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P16877352121737769641

`comp[A028815(n)-2]`
-/

namespace A072668.P16877352121737769641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072668.P16877352121737769641

namespace A072668

/-- `comp[A028815(n)-2]` -/
def P16877352121737769641.Spec : Prop :=
  ∀ n, (P16877352121737769641.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P8328011490686534023

`A164028(n+1)+2`
-/

namespace A072668.P8328011490686534023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) + 2

end

end A072668.P8328011490686534023

namespace A072668

/-- `A164028(n+1)+2` -/
def P8328011490686534023.Spec : Prop :=
  ∀ n, P8328011490686534023.a n = A072668 (n + 1)

end A072668

/-! ## A072668.P17116195597257512375

`A018252(n+2)-1`
-/

namespace A072668.P17116195597257512375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - 1

end

end A072668.P17116195597257512375

namespace A072668

/-- `A018252(n+2)-1` -/
def P17116195597257512375.Spec : Prop :=
  ∀ n, P17116195597257512375.a n = A072668 (n + 1)

end A072668

/-! ## A072668.P16842604450685538694

`A079696(n+1)-2`
-/

namespace A072668.P16842604450685538694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - 2

end

end A072668.P16842604450685538694

namespace A072668

/-- `A079696(n+1)-2` -/
def P16842604450685538694.Spec : Prop :=
  ∀ n, P16842604450685538694.a n = A072668 (n + 1)

end A072668

/-! ## A072668.P12430656875318555400

`A141468(n+3)-1`
-/

namespace A072668.P12430656875318555400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) - 1

end

end A072668.P12430656875318555400

namespace A072668

/-- `A141468(n+3)-1` -/
def P12430656875318555400.Spec : Prop :=
  ∀ n, P12430656875318555400.a n = A072668 (n + 1)

end A072668

/-! ## A072668.P6824116530558156384

`eq[0, A324642(n+1)]`
-/

namespace A072668.P6824116530558156384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072668.P6824116530558156384

namespace A072668

/-- `eq[0, A324642(n+1)]` -/
def P6824116530558156384.Spec : Prop :=
  ∀ n, (P6824116530558156384.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P13420078625849981645

`eq[1, A066247(n+1)]`
-/

namespace A072668.P13420078625849981645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072668.P13420078625849981645

namespace A072668

/-- `eq[1, A066247(n+1)]` -/
def P13420078625849981645.Spec : Prop :=
  ∀ n, (P13420078625849981645.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P8053779085756052740

`eq[0, A339579(n+2)]`
-/

namespace A072668.P8053779085756052740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072668.P8053779085756052740

namespace A072668

/-- `eq[0, A339579(n+2)]` -/
def P8053779085756052740.Spec : Prop :=
  ∀ n, (P8053779085756052740.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P13807344135755402682

`lt[1, A001222(n+1)]`
-/

namespace A072668.P13807344135755402682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072668.P13807344135755402682

namespace A072668

/-- `lt[1, A001222(n+1)]` -/
def P13807344135755402682.Spec : Prop :=
  ∀ n, (P13807344135755402682.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P8112282031988344391

`lt[2, A000005(n+1)]`
-/

namespace A072668.P8112282031988344391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072668.P8112282031988344391

namespace A072668

/-- `lt[2, A000005(n+1)]` -/
def P8112282031988344391.Spec : Prop :=
  ∀ n, (P8112282031988344391.a n : ℤ) = A072668 (n + 1)

end A072668

/-! ## A072668.P18049928270253075222

`A073169(n+1)+n`
-/

namespace A072668.P18049928270253075222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) + (n : ℤ)

end

end A072668.P18049928270253075222

namespace A072668

/-- `A073169(n+1)+n` -/
def P18049928270253075222.Spec : Prop :=
  ∀ n, P18049928270253075222.a n = A072668 (n + 1)

end A072668

/-! ## A072668.P17802052586297603218

`A282671(n+1)/2-1`
-/

namespace A072668.P17802052586297603218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282671 (n + 1) : ℚ) / 2 - 1

end

end A072668.P17802052586297603218

namespace A072668

/-- `A282671(n+1)/2-1` -/
def P17802052586297603218.Spec : Prop :=
  ∀ n, P17802052586297603218.a n = (A072668 (n + 1) : ℚ)

end A072668

/-!
# A072669: Primes of the form prime(x) + prime(x+1) - 1.

The programs for A072669, the canonical program `A072669.P12110075394284509004` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072669 has offset 1).

The definition of A072669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072669.P16883459207014818664

`p?[∑[A075527(n)]+2]`
-/

namespace A072669.P16883459207014818664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072669.P16883459207014818664

namespace A072669

/-- `p?[∑[A075527(n)]+2]` -/
def P16883459207014818664.Spec : Prop :=
  ∀ n, P16883459207014818664.a n = A072669 (n + 1)

end A072669

/-! ## A072669.P12110075394284509004

`p?[A001043(n+1)-1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072669

/-- `p?[A001043(n+1)-1]` -/
def P12110075394284509004.Spec : Prop :=
  ∀ n, P12110075394284509004.a n = A072669 (n + 1)

theorem P12110075394284509004.correct : P12110075394284509004.Spec := by
  intro n
  simp only [A072669, Nat.add_sub_cancel]

end A072669

/-! ## A072669.P1384563961327232746

`p?[A011974(n+1)-1]`
-/

namespace A072669.P1384563961327232746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072669.P1384563961327232746

namespace A072669

/-- `p?[A011974(n+1)-1]` -/
def P1384563961327232746.Spec : Prop :=
  ∀ n, P1384563961327232746.a n = A072669 (n + 1)

end A072669

/-! ## A072669.P656008561205568514

`p?[A092949(n+1)-2]`
-/

namespace A072669.P656008561205568514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072669.P656008561205568514

namespace A072669

/-- `p?[A092949(n+1)-2]` -/
def P656008561205568514.Spec : Prop :=
  ∀ n, P656008561205568514.a n = A072669 (n + 1)

end A072669

/-! ## A072669.P17623004714853189218

`p?[2*A024675(n+1)-1]`
-/

namespace A072669.P17623004714853189218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024675 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072669.P17623004714853189218

namespace A072669

/-- `p?[2*A024675(n+1)-1]` -/
def P17623004714853189218.Spec : Prop :=
  ∀ n, P17623004714853189218.a n = A072669 (n + 1)

end A072669

/-! ## A072669.P2486015960037402765

`A096215(A072666(n+1))`
-/

namespace A072669.P2486015960037402765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096215 (A072666 (n + 1)).toNat

end

end A072669.P2486015960037402765

namespace A072669

/-- `A096215(A072666(n+1))` -/
def P2486015960037402765.Spec : Prop :=
  ∀ n, P2486015960037402765.a n = A072669 (n + 1)

end A072669

/-! ## A072669.P13179111629588187534

`p?[A076273(n+2)]`
-/

namespace A072669.P13179111629588187534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072669.P13179111629588187534

namespace A072669

/-- `p?[A076273(n+2)]` -/
def P13179111629588187534.Spec : Prop :=
  ∀ n, P13179111629588187534.a n = A072669 (n + 1)

end A072669

/-! ## A072669.P17979709103955267040

`p?[A040976(n+2)+A028815(n+1)]`
-/

namespace A072669.P17979709103955267040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2) + A028815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072669.P17979709103955267040

namespace A072669

/-- `p?[A040976(n+2)+A028815(n+1)]` -/
def P17979709103955267040.Spec : Prop :=
  ∀ n, P17979709103955267040.a n = A072669 (n + 1)

end A072669

/-! ## A072669.P17320964056694246207

`p?[A008578(n+2)+A006093(n+2)]`
-/

namespace A072669.P17320964056694246207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A006093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072669.P17320964056694246207

namespace A072669

/-- `p?[A008578(n+2)+A006093(n+2)]` -/
def P17320964056694246207.Spec : Prop :=
  ∀ n, P17320964056694246207.a n = A072669 (n + 1)

end A072669

/-! ## A072669.P17346792827254579574

`∩[A034849(n+1), A076273(n)]`
-/

namespace A072669.P17346792827254579574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P17346792827254579574

namespace A072669

/-- `∩[A034849(n+1), A076273(n)]` -/
def P17346792827254579574.Spec : Prop :=
  ∀ n, (P17346792827254579574.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P8975300448820562657

`∩[A004139(n+1), A076273(n)]`
-/

namespace A072669.P8975300448820562657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P8975300448820562657

namespace A072669

/-- `∩[A004139(n+1), A076273(n)]` -/
def P8975300448820562657.Spec : Prop :=
  ∀ n, (P8975300448820562657.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P13813582977979440730

`∩[A065091(n+1), A076273(n)]`
-/

namespace A072669.P13813582977979440730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P13813582977979440730

namespace A072669

/-- `∩[A065091(n+1), A076273(n)]` -/
def P13813582977979440730.Spec : Prop :=
  ∀ n, (P13813582977979440730.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P11394410945613778195

`∩[A083249(n+1), A076273(n)]`
-/

namespace A072669.P11394410945613778195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P11394410945613778195

namespace A072669

/-- `∩[A083249(n+1), A076273(n)]` -/
def P11394410945613778195.Spec : Prop :=
  ∀ n, (P11394410945613778195.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P16715433961444202713

`∩[A162786(n+1), A076273(n)]`
-/

namespace A072669.P16715433961444202713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P16715433961444202713

namespace A072669

/-- `∩[A162786(n+1), A076273(n)]` -/
def P16715433961444202713.Spec : Prop :=
  ∀ n, (P16715433961444202713.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P10058596083318356363

`∩[A215848(n+1), A076273(n)]`
-/

namespace A072669.P10058596083318356363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P10058596083318356363

namespace A072669

/-- `∩[A215848(n+1), A076273(n)]` -/
def P10058596083318356363.Spec : Prop :=
  ∀ n, (P10058596083318356363.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P17218247830561675203

`∩[A351398(n+1), A076273(n)]`
-/

namespace A072669.P17218247830561675203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P17218247830561675203

namespace A072669

/-- `∩[A351398(n+1), A076273(n)]` -/
def P17218247830561675203.Spec : Prop :=
  ∀ n, (P17218247830561675203.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P864760953023324960

`∩[A064728(n+1), A076273(n)]`
-/

namespace A072669.P864760953023324960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P864760953023324960

namespace A072669

/-- `∩[A064728(n+1), A076273(n)]` -/
def P864760953023324960.Spec : Prop :=
  ∀ n, (P864760953023324960.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P8632052851982548632

`∩[A161839(n+1), A076273(n)]`
-/

namespace A072669.P8632052851982548632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P8632052851982548632

namespace A072669

/-- `∩[A161839(n+1), A076273(n)]` -/
def P8632052851982548632.Spec : Prop :=
  ∀ n, (P8632052851982548632.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P7719087563532909275

`∩[A275938(n+1), A076273(n)]`
-/

namespace A072669.P7719087563532909275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P7719087563532909275

namespace A072669

/-- `∩[A275938(n+1), A076273(n)]` -/
def P7719087563532909275.Spec : Prop :=
  ∀ n, (P7719087563532909275.a n : ℤ) = A072669 (n + 1)

end A072669

/-! ## A072669.P17059491254863102311

`∩[A050150(n+1), A076273(n)]`
-/

namespace A072669.P17059491254863102311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072669.P17059491254863102311

namespace A072669

/-- `∩[A050150(n+1), A076273(n)]` -/
def P17059491254863102311.Spec : Prop :=
  ∀ n, (P17059491254863102311.a n : ℤ) = A072669 (n + 1)

end A072669

/-!
# A072670: Number of ways to write n as i*j + i + j, 0 < i <= j.

The programs for A072670, the canonical program `A072670.P17694124448625562099` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072670 has offset 0).

The definition of A072670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072670.P17694124448625562099

`A038548(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072670

/-- `A038548(n+1)-1` -/
def P17694124448625562099.Spec : Prop :=
  ∀ n, P17694124448625562099.a n = A072670 n

theorem P17694124448625562099.correct : P17694124448625562099.Spec := by
  intro n
  simp only [A072670]

end A072670

/-! ## A072670.P3116912159902090723

`A161840(n+1)/2`
-/

namespace A072670.P3116912159902090723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161840 (n + 1) : ℚ) / 2

end

end A072670.P3116912159902090723

namespace A072670

/-- `A161840(n+1)/2` -/
def P3116912159902090723.Spec : Prop :=
  ∀ n, P3116912159902090723.a n = (A072670 n : ℚ)

end A072670

/-! ## A072670.P12231734490569858007

`floor(sinh(log(∏{e}[n+1, #+1])))`
-/

namespace A072670.P12231734490569858007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ))⌋

end

end A072670.P12231734490569858007

namespace A072670

/-- `floor(sinh(log(∏{e}[n+1, #+1])))` -/
def P12231734490569858007.Spec : Prop :=
  ∀ n, P12231734490569858007.a n = A072670 n

end A072670

/-! ## A072670.P2622312077778675433

`floor(A325765(n)/2)`
-/

namespace A072670.P2622312077778675433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325765 n : ℚ) / 2⌋

end

end A072670.P2622312077778675433

namespace A072670

/-- `floor(A325765(n)/2)` -/
def P2622312077778675433.Spec : Prop :=
  ∀ n, P2622312077778675433.a n = A072670 n

end A072670

/-! ## A072670.P2736052628698284202

`val(A100577(n+1), 4)`
-/

namespace A072670.P2736052628698284202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A100577 (n + 1)).toNat 4

end

end A072670.P2736052628698284202

namespace A072670

/-- `val(A100577(n+1), 4)` -/
def P2736052628698284202.Spec : Prop :=
  ∀ n, (P2736052628698284202.a n : ℤ) = A072670 n

end A072670

/-! ## A072670.P6093005524555742330

`sqrt(A330571(n+1))-1`
-/

namespace A072670.P6093005524555742330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A330571 (n + 1) : ℝ) - 1

end

end A072670.P6093005524555742330

namespace A072670

/-- `sqrt(A330571(n+1))-1` -/
def P6093005524555742330.Spec : Prop :=
  ∀ n, P6093005524555742330.a n = (A072670 n : ℝ)

end A072670

/-! ## A072670.P3747299435737372926

`floor(A032741(n+1)/2)`
-/

namespace A072670.P3747299435737372926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032741 (n + 1) : ℚ) / 2⌋

end

end A072670.P3747299435737372926

namespace A072670

/-- `floor(A032741(n+1)/2)` -/
def P3747299435737372926.Spec : Prop :=
  ∀ n, P3747299435737372926.a n = A072670 n

end A072670

/-! ## A072670.P14141172798332903744

`ceil(A070824(n+1)/2)`
-/

namespace A072670.P14141172798332903744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070824 (n + 1) : ℚ) / 2⌉

end

end A072670.P14141172798332903744

namespace A072670

/-- `ceil(A070824(n+1)/2)` -/
def P14141172798332903744.Spec : Prop :=
  ∀ n, P14141172798332903744.a n = A072670 n

end A072670

/-! ## A072670.P2037409817529527554

`Δ[A132106(n)/2]-1`
-/

namespace A072670.P2037409817529527554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A072670.P2037409817529527554

namespace A072670

/-- `Δ[A132106(n)/2]-1` -/
def P2037409817529527554.Spec : Prop :=
  ∀ n, P2037409817529527554.a n = (A072670 n : ℚ)

end A072670

/-! ## A072670.P148848736749320635

`floor(sinh(log(A000005(n+1))))`
-/

namespace A072670.P148848736749320635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A000005 (n + 1) : ℝ))⌋

end

end A072670.P148848736749320635

namespace A072670

/-- `floor(sinh(log(A000005(n+1))))` -/
def P148848736749320635.Spec : Prop :=
  ∀ n, P148848736749320635.a n = A072670 n

end A072670

/-! ## A072670.P9819719601056241406

`A161841(n+1)/2-1`
-/

namespace A072670.P9819719601056241406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161841 (n + 1) : ℚ) / 2 - 1

end

end A072670.P9819719601056241406

namespace A072670

/-- `A161841(n+1)/2-1` -/
def P9819719601056241406.Spec : Prop :=
  ∀ n, P9819719601056241406.a n = (A072670 n : ℚ)

end A072670

/-! ## A072670.P9906830628198447182

`floor(sqrt(A337174(n+1)))-1`
-/

namespace A072670.P9906830628198447182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A337174 (n + 1)) - 1

end

end A072670.P9906830628198447182

namespace A072670

/-- `floor(sqrt(A337174(n+1)))-1` -/
def P9906830628198447182.Spec : Prop :=
  ∀ n, P9906830628198447182.a n = A072670 n

end A072670

/-! ## A072670.P13577100131389176441

`A060872(n+1)/(n+1)-1`
-/

namespace A072670.P13577100131389176441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060872 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A072670.P13577100131389176441

namespace A072670

/-- `A060872(n+1)/(n+1)-1` -/
def P13577100131389176441.Spec : Prop :=
  ∀ n, P13577100131389176441.a n = (A072670 n : ℚ)

end A072670

/-! ## A072670.P394341432166316349

`floor((A000005(C(n+1, n))-1)/2)`
-/

namespace A072670.P394341432166316349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (Nat.choose (n + 1) n) - 1 : ℚ) / 2⌋

end

end A072670.P394341432166316349

namespace A072670

/-- `floor((A000005(C(n+1, n))-1)/2)` -/
def P394341432166316349.Spec : Prop :=
  ∀ n, P394341432166316349.a n = A072670 n

end A072670

/-! ## A072670.P5115734594129528734

`floor((A000005(2*n+1-n)-1)/2)`
-/

namespace A072670.P5115734594129528734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (2 * n + 1 - n) - 1 : ℚ) / 2⌋

end

end A072670.P5115734594129528734

namespace A072670

/-- `floor((A000005(2*n+1-n)-1)/2)` -/
def P5115734594129528734.Spec : Prop :=
  ∀ n, P5115734594129528734.a n = A072670 n

end A072670

/-! ## A072670.P5039492509382190957

`A004526(A325765(n))`
-/

namespace A072670.P5039492509382190957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A325765 n).toNat

end

end A072670.P5039492509382190957

namespace A072670

/-- `A004526(A325765(n))` -/
def P5039492509382190957.Spec : Prop :=
  ∀ n, P5039492509382190957.a n = A072670 n

end A072670

/-! ## A072670.P11437449443807938274

`A065423(Δ[A132106(n)])`
-/

namespace A072670.P11437449443807938274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (f1 (n + 1) - f1 n).toNat

end

end A072670.P11437449443807938274

namespace A072670

/-- `A065423(Δ[A132106(n)])` -/
def P11437449443807938274.Spec : Prop :=
  ∀ n, P11437449443807938274.a n = A072670 n

end A072670

/-! ## A072670.P16119144720852707033

`A004526(A032741(n+1))`
-/

namespace A072670.P16119144720852707033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A032741 (n + 1)).toNat

end

end A072670.P16119144720852707033

namespace A072670

/-- `A004526(A032741(n+1))` -/
def P16119144720852707033.Spec : Prop :=
  ∀ n, P16119144720852707033.a n = A072670 n

end A072670

/-! ## A072670.P11182282226471619889

`A002265(A086369(n+1))`
-/

namespace A072670.P11182282226471619889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A086369 (n + 1)).toNat

end

end A072670.P11182282226471619889

namespace A072670

/-- `A002265(A086369(n+1))` -/
def P11182282226471619889.Spec : Prop :=
  ∀ n, P11182282226471619889.a n = A072670 n

end A072670

/-!
# A072671: Least m which can be written as i*j+i+j in n different ways: A072670(m)=n.

The programs for A072671, there is no canonical definition to state claims against.
-/

/-! ## A072671.P2671129471004785131

`A038549(n+1)-1`
-/

namespace A072671.P2671129471004785131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038549 (n + 1) - 1

end

end A072671.P2671129471004785131

/-! ## A072671.P3172544869099086899

`A057428(n+1)+A038549(n+1)`
-/

namespace A072671.P3172544869099086899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A038549 (n + 1)

end

end A072671.P3172544869099086899

/-! ## A072671.P15851289441366722086

`A134824(n+2)+A038549(n+1)`
-/

namespace A072671.P15851289441366722086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A038549 (n + 1)

end

end A072671.P15851289441366722086

/-! ## A072671.P5780606156169488348

`A153881(n+2)+A038549(n+1)`
-/

namespace A072671.P5780606156169488348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A038549 (n + 1)

end

end A072671.P5780606156169488348

/-! ## A072671.P16337656002948170201

`A260196(n+2)+A038549(n+1)`
-/

namespace A072671.P16337656002948170201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A038549 (n + 1)

end

end A072671.P16337656002948170201

/-! ## A072671.P7908527564532756520

`A057077(or(2, n))+A038549(n+1)`
-/

namespace A072671.P7908527564532756520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (Nat.lor 2 n) + A038549 (n + 1)

end

end A072671.P7908527564532756520

/-! ## A072671.P16552412150539683989

`A057078(12*n+11)+A038549(n+1)`
-/

namespace A072671.P16552412150539683989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (12 * n + 11) + A038549 (n + 1)

end

end A072671.P16552412150539683989

/-! ## A072671.P11231660978884420771

`A080323(A001122(n+1))+A038549(n+1)`
-/

namespace A072671.P11231660978884420771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A001122 (n + 1)).toNat + A038549 (n + 1)

end

end A072671.P11231660978884420771

/-! ## A072671.P16075860803728656425

`abs(A038549(n+1)+A008683(A088175(n+1)))`
-/

namespace A072671.P16075860803728656425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038549 (n + 1) + A008683 (A088175 (n + 1)).toNat|

end

end A072671.P16075860803728656425

/-! ## A072671.P1302979818797996721

`abs(A038549(n+1)+A008683(A038562(n+2)))`
-/

namespace A072671.P1302979818797996721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038549 (n + 1) + A008683 (A038562 (n + 2)).toNat|

end

end A072671.P1302979818797996721

/-!
# A072672: Prime(n)*prime(2*n)+prime(n)+prime(2*n).

The programs for A072672, the canonical program `A072672.P5338413225751562220` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072672 has offset 1).

The definition of A072672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072672.P5338413225751562220

`A319613(n+1)+A092390(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072672

/-- `A319613(n+1)+A092390(n+1)` -/
def P5338413225751562220.Spec : Prop :=
  ∀ n, P5338413225751562220.a n = A072672 (n + 1)

theorem P5338413225751562220.correct : P5338413225751562220.Spec := by
  intro n
  simp only [A072672, Nat.add_sub_cancel]

end A072672

/-! ## A072672.P1626023785133495503

`(∑[A230847(n+1)]-n)*A055670(2*(n+1))-1`
-/

namespace A072672.P1626023785133495503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * A055670 (2 * (n + 1)) - 1

end

end A072672.P1626023785133495503

namespace A072672

/-- `(∑[A230847(n+1)]-n)*A055670(2*(n+1))-1` -/
def P1626023785133495503.Spec : Prop :=
  ∀ n, P1626023785133495503.a n = A072672 (n + 1)

end A072672

/-! ## A072672.P8330120815404696171

`A000040(n+1)+A319613(n+1)+A031215(n+1)`
-/

namespace A072672.P8330120815404696171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A319613 (n + 1) + A031215 (n + 1))

end

end A072672.P8330120815404696171

namespace A072672

/-- `A000040(n+1)+A319613(n+1)+A031215(n+1)` -/
def P8330120815404696171.Spec : Prop :=
  ∀ n, P8330120815404696171.a n = A072672 (n + 1)

end A072672

/-! ## A072672.P4837301400385911967

`A072473(n+1)+A319613(n+1)+A100484(n+1)`
-/

namespace A072672.P4837301400385911967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + (A319613 (n + 1) + A100484 (n + 1))

end

end A072672.P4837301400385911967

namespace A072672

/-- `A072473(n+1)+A319613(n+1)+A100484(n+1)` -/
def P4837301400385911967.Spec : Prop :=
  ∀ n, P4837301400385911967.a n = A072672 (n + 1)

end A072672

/-! ## A072672.P9131252065223761374

`A008864(2*(n+1))*A008864(n+1)-1`
-/

namespace A072672.P9131252065223761374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (2 * (n + 1)) * A008864 (n + 1) - 1

end

end A072672.P9131252065223761374

namespace A072672

/-- `A008864(2*(n+1))*A008864(n+1)-1` -/
def P9131252065223761374.Spec : Prop :=
  ∀ n, P9131252065223761374.a n = A072672 (n + 1)

end A072672

/-! ## A072672.P16462067641552140505

`∑{d}[A000040(2*(n+1))*A000040(n+1), #]-1`
-/

namespace A072672.P16462067641552140505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A072672.P16462067641552140505

namespace A072672

/-- `∑{d}[A000040(2*(n+1))*A000040(n+1), #]-1` -/
def P16462067641552140505.Spec : Prop :=
  ∀ n, P16462067641552140505.a n = A072672 (n + 1)

end A072672

/-!
# A072673: Primes of form prime(n)*prime(2*n)+prime(n)+prime(2*n).

The programs for A072673, there is no canonical definition to state claims against.
-/

/-! ## A072673.P17016404682099517808

`p?[A072672(n+1)]`
-/

namespace A072673.P17016404682099517808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072673.P17016404682099517808

/-! ## A072673.P987615073670836106

`p?[A319613(n+1)+A092390(n+1)]`
-/

namespace A072673.P987615073670836106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319613 (n + 1) + A092390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072673.P987615073670836106

/-! ## A072673.P10395987680386810533

`p?[A008864(2*(n+1))*A008864(n+1)-1]`
-/

namespace A072673.P10395987680386810533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (2 * (n + 1)) * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072673.P10395987680386810533

/-! ## A072673.P16547019906937027669

`p?[A000040(n+1)+A319613(n+1)+A031215(n+1)]`
-/

namespace A072673.P16547019906937027669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A319613 (n + 1) + A031215 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072673.P16547019906937027669

/-! ## A072673.P3870699933776302913

`p?[A072473(n+1)+A319613(n+1)+A100484(n+1)]`
-/

namespace A072673.P3870699933776302913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + (A319613 (n + 1) + A100484 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072673.P3870699933776302913

/-!
# A072674: a(n) = 3^n + 2*2^n - 3.

The programs for A072674, the canonical program `A072674.P1789877644114154906` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072674 has offset 0).

The definition of A072674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+2*2^n-3` (program `A072674.P1789877644114154906`, by `A072674.P1789877644114154906.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072674.P1789877644114154906

`3^n+2*2^n-3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072674

/-- `3^n+2*2^n-3` -/
def P1789877644114154906.Spec : Prop :=
  ∀ n, P1789877644114154906.a n = A072674 n

theorem P1789877644114154906.correct : P1789877644114154906.Spec := by
  intro n
  simp only [A072674]

end A072674

/-! ## A072674.P421832864650827237

`∑[ogf((4x-10x^2)/(1-5x+6x^2))]`
-/

namespace A072674.P421832864650827237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -10] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072674.P421832864650827237

namespace A072674

/-- `∑[ogf((4x-10x^2)/(1-5x+6x^2))]` -/
def P421832864650827237.Spec : Prop :=
  ∀ n, P421832864650827237.a n = A072674 n

end A072674

/-! ## A072674.P15979050820729941279

`3*(2-(2^n/3-a(n-1)))` with `a(0)=0`
-/

namespace A072674.P15979050820729941279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  3 * (2 - ((2 ^ n : ℚ) / 3 - a (n - 1)))

end

end A072674.P15979050820729941279

namespace A072674

/-- `3*(2-(2^n/3-a(n-1)))` -/
def P15979050820729941279.Spec : Prop :=
  ∀ n, P15979050820729941279.a n = (A072674 n : ℚ)

theorem P15979050820729941279.correct : P15979050820729941279.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A072674, Nat.add_sub_cancel, A072674.P15979050820729941279.a, A072674.P1789877644114154906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A072674, Nat.add_sub_cancel, A072674.P15979050820729941279.a, A072674.P1789877644114154906.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A072674

/-! ## A072674.P12934296212335091925

`abs(6-A254028(n))`
-/

namespace A072674.P12934296212335091925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A254028 n|

end

end A072674.P12934296212335091925

namespace A072674

/-- `abs(6-A254028(n))` -/
def P12934296212335091925.Spec : Prop :=
  ∀ n, P12934296212335091925.a n = A072674 n

end A072674

/-! ## A072674.P3712046262550776027

`2*(A094374(n)-1)`
-/

namespace A072674.P3712046262550776027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094374 n - 1)

end

end A072674.P3712046262550776027

namespace A072674

/-- `2*(A094374(n)-1)` -/
def P3712046262550776027.Spec : Prop :=
  ∀ n, P3712046262550776027.a n = A072674 n

end A072674

/-! ## A072674.P3457487867783517620

`2*(A099754(n)-2)`
-/

namespace A072674.P3457487867783517620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099754 n - 2)

end

end A072674.P3457487867783517620

namespace A072674

/-- `2*(A099754(n)-2)` -/
def P3457487867783517620.Spec : Prop :=
  ∀ n, P3457487867783517620.a n = A072674 n

end A072674

/-! ## A072674.P12000198788032960605

`abs(3-A085279(n+1))`
-/

namespace A072674.P12000198788032960605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A085279 (n + 1)|

end

end A072674.P12000198788032960605

namespace A072674

/-- `abs(3-A085279(n+1))` -/
def P12000198788032960605.Spec : Prop :=
  ∀ n, P12000198788032960605.a n = A072674 n

end A072674

/-! ## A072674.P8594800214533855028

`2*(∑[A085281(n)]-1)`
-/

namespace A072674.P8594800214533855028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A072674.P8594800214533855028

namespace A072674

/-- `2*(∑[A085281(n)]-1)` -/
def P8594800214533855028.Spec : Prop :=
  ∀ n, P8594800214533855028.a n = A072674 n

end A072674

/-! ## A072674.P4889849044679266732

`2*(A003462(n)+A000225(n))`
-/

namespace A072674.P4889849044679266732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003462 n + A000225 n)

end

end A072674.P4889849044679266732

namespace A072674

/-- `2*(A003462(n)+A000225(n))` -/
def P4889849044679266732.Spec : Prop :=
  ∀ n, P4889849044679266732.a n = A072674 n

end A072674

/-! ## A072674.P7770222523995640589

`2*(A007051(n)+A000918(n))`
-/

namespace A072674.P7770222523995640589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 n + A000918 n)

end

end A072674.P7770222523995640589

namespace A072674

/-- `2*(A007051(n)+A000918(n))` -/
def P7770222523995640589.Spec : Prop :=
  ∀ n, P7770222523995640589.a n = A072674 n

end A072674

/-! ## A072674.P344889646250233477

`2*(A000244(n)-A134063(n))`
-/

namespace A072674.P344889646250233477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000244 n - A134063 n)

end

end A072674.P344889646250233477

namespace A072674

/-- `2*(A000244(n)-A134063(n))` -/
def P344889646250233477.Spec : Prop :=
  ∀ n, P344889646250233477.a n = A072674 n

end A072674

/-! ## A072674.P5581728172512296986

`2*(A003462(n)+∑[A131577(n)])`
-/

namespace A072674.P5581728172512296986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003462 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072674.P5581728172512296986

namespace A072674

/-- `2*(A003462(n)+∑[A131577(n)])` -/
def P5581728172512296986.Spec : Prop :=
  ∀ n, P5581728172512296986.a n = A072674 n

end A072674

/-! ## A072674.P10404367096571135166

`2*(A007051(n)+A000225(n)-1)`
-/

namespace A072674.P10404367096571135166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 n + A000225 n - 1)

end

end A072674.P10404367096571135166

namespace A072674

/-- `2*(A007051(n)+A000225(n)-1)` -/
def P10404367096571135166.Spec : Prop :=
  ∀ n, P10404367096571135166.a n = A072674 n

end A072674

/-! ## A072674.P4060759269921497344

`A199110(n)%A304167(n+1)`
-/

namespace A072674.P4060759269921497344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199110 n) (A304167 (n + 1))

end

end A072674.P4060759269921497344

namespace A072674

/-- `A199110(n)%A304167(n+1)` -/
def P4060759269921497344.Spec : Prop :=
  ∀ n, P4060759269921497344.a n = A072674 n

end A072674

/-! ## A072674.P17921757460337229317

`record[A098355(n)+A130330(n)-2]`
-/

namespace A072674.P17921757460337229317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n + (A130330 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072674.P17921757460337229317

namespace A072674

/-- `record[A098355(n)+A130330(n)-2]` -/
def P17921757460337229317.Spec : Prop :=
  ∀ n, P17921757460337229317.a n = A072674 n

end A072674

/-! ## A072674.P5622930769393773250

`record[A130330(n)+A140303(n)-2]`
-/

namespace A072674.P5622930769393773250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n + (A140303 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072674.P5622930769393773250

namespace A072674

/-- `record[A130330(n)+A140303(n)-2]` -/
def P5622930769393773250.Spec : Prop :=
  ∀ n, P5622930769393773250.a n = A072674 n

end A072674

/-! ## A072674.P14955166359731087327

`record[A130330(n)+A175840(n)-2]`
-/

namespace A072674.P14955166359731087327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n + (A175840 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072674.P14955166359731087327

namespace A072674

/-- `record[A130330(n)+A175840(n)-2]` -/
def P14955166359731087327.Spec : Prop :=
  ∀ n, P14955166359731087327.a n = A072674 n

end A072674

/-!
# A072675: Integers m such that the last digit of Fibonacci(m) is 1.

The programs for A072675, the canonical program `A072675.P8953100869094184126` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072675 has offset 1).

The definition of A072675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072675.P9133244607525639203

`eq[A003893(n), A101443(n)]`
-/

namespace A072675.P9133244607525639203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P9133244607525639203

namespace A072675

/-- `eq[A003893(n), A101443(n)]` -/
def P9133244607525639203.Spec : Prop :=
  ∀ n, (P9133244607525639203.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P8953100869094184126

`eq[A082116(n), A101443(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072675

/-- `eq[A082116(n), A101443(n)]` -/
def P8953100869094184126.Spec : Prop :=
  ∀ n, (P8953100869094184126.a n : ℤ) = A072675 (n + 1)

theorem P8953100869094184126.correct : P8953100869094184126.Spec := by
  intro n
  simp only [A072675, Nat.add_sub_cancel]

end A072675

/-! ## A072675.P12251539320713080271

`eq[A003893(n), A267871(n)]`
-/

namespace A072675.P12251539320713080271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P12251539320713080271

namespace A072675

/-- `eq[A003893(n), A267871(n)]` -/
def P12251539320713080271.Spec : Prop :=
  ∀ n, (P12251539320713080271.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P14044613732271056182

`eq[A003893(n)², A058306(n)]`
-/

namespace A072675.P14044613732271056182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P14044613732271056182

namespace A072675

/-- `eq[A003893(n)², A058306(n)]` -/
def P14044613732271056182.Spec : Prop :=
  ∀ n, (P14044613732271056182.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P643650882318927385

`eq[A003893(n), A059811(n+1)]`
-/

namespace A072675.P643650882318927385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P643650882318927385

namespace A072675

/-- `eq[A003893(n), A059811(n+1)]` -/
def P643650882318927385.Spec : Prop :=
  ∀ n, (P643650882318927385.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P10152644796555262565

`eq[A003893(n), A204120(n+1)]`
-/

namespace A072675.P10152644796555262565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P10152644796555262565

namespace A072675

/-- `eq[A003893(n), A204120(n+1)]` -/
def P10152644796555262565.Spec : Prop :=
  ∀ n, (P10152644796555262565.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P2260278555352187175

`eq[A003893(n), A204127(n+1)]`
-/

namespace A072675.P2260278555352187175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P2260278555352187175

namespace A072675

/-- `eq[A003893(n), A204127(n+1)]` -/
def P2260278555352187175.Spec : Prop :=
  ∀ n, (P2260278555352187175.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P11416505146108675749

`eq[A003893(n), A204160(n+1)]`
-/

namespace A072675.P11416505146108675749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P11416505146108675749

namespace A072675

/-- `eq[A003893(n), A204160(n+1)]` -/
def P11416505146108675749.Spec : Prop :=
  ∀ n, (P11416505146108675749.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P12021643279887947207

`eq[A003893(n), A204162(n+1)]`
-/

namespace A072675.P12021643279887947207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P12021643279887947207

namespace A072675

/-- `eq[A003893(n), A204162(n+1)]` -/
def P12021643279887947207.Spec : Prop :=
  ∀ n, (P12021643279887947207.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P3154762858516462907

`eq[2, A003893(n)*A140685(n+1)]`
-/

namespace A072675.P3154762858516462907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A140685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072675.P3154762858516462907

namespace A072675

/-- `eq[2, A003893(n)*A140685(n+1)]` -/
def P3154762858516462907.Spec : Prop :=
  ∀ n, (P3154762858516462907.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P7464641790888332041

`eq[A003893(n), A017077(A058306(n)-1)]`
-/

namespace A072675.P7464641790888332041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A058306 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P7464641790888332041

namespace A072675

/-- `eq[A003893(n), A017077(A058306(n)-1)]` -/
def P7464641790888332041.Spec : Prop :=
  ∀ n, (P7464641790888332041.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P12546377569137925331

`eq[A003893(n)*A017077(n), A017077(n)]`
-/

namespace A072675.P12546377569137925331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A017077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P12546377569137925331

namespace A072675

/-- `eq[A003893(n)*A017077(n), A017077(n)]` -/
def P12546377569137925331.Spec : Prop :=
  ∀ n, (P12546377569137925331.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P7883190888314099250

`eq[A003893(n)*A063808(n), A063808(n)]`
-/

namespace A072675.P7883190888314099250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A063808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P7883190888314099250

namespace A072675

/-- `eq[A003893(n)*A063808(n), A063808(n)]` -/
def P7883190888314099250.Spec : Prop :=
  ∀ n, (P7883190888314099250.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P949007459926335837

`eq[A003893(n)*A113923(n), A113923(n)]`
-/

namespace A072675.P949007459926335837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A113923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P949007459926335837

namespace A072675

/-- `eq[A003893(n)*A113923(n), A113923(n)]` -/
def P949007459926335837.Spec : Prop :=
  ∀ n, (P949007459926335837.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P16087563876023183481

`eq[A003893(n)*A329505(n), A329505(n)]`
-/

namespace A072675.P16087563876023183481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A329505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P16087563876023183481

namespace A072675

/-- `eq[A003893(n)*A329505(n), A329505(n)]` -/
def P16087563876023183481.Spec : Prop :=
  ∀ n, (P16087563876023183481.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P8810508750550648093

`eq[A003893(n)*A329506(n), A329506(n)]`
-/

namespace A072675.P8810508750550648093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A329506 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P8810508750550648093

namespace A072675

/-- `eq[A003893(n)*A329506(n), A329506(n)]` -/
def P8810508750550648093.Spec : Prop :=
  ∀ n, (P8810508750550648093.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P899939976659104628

`eq[A003893(n)*A329507(n), A329507(n)]`
-/

namespace A072675.P899939976659104628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A329507 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P899939976659104628

namespace A072675

/-- `eq[A003893(n)*A329507(n), A329507(n)]` -/
def P899939976659104628.Spec : Prop :=
  ∀ n, (P899939976659104628.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P8271286810033205494

`eq[A003893(n)*A329509(n), A329509(n)]`
-/

namespace A072675.P8271286810033205494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A329509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P8271286810033205494

namespace A072675

/-- `eq[A003893(n)*A329509(n), A329509(n)]` -/
def P8271286810033205494.Spec : Prop :=
  ∀ n, (P8271286810033205494.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P7356369349790213110

`eq[A003893(n)*A329510(n), A329510(n)]`
-/

namespace A072675.P7356369349790213110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A329510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P7356369349790213110

namespace A072675

/-- `eq[A003893(n)*A329510(n), A329510(n)]` -/
def P7356369349790213110.Spec : Prop :=
  ∀ n, (P7356369349790213110.a n : ℤ) = A072675 (n + 1)

end A072675

/-! ## A072675.P15107995108487200539

`eq[A003893(n)*A329513(n), A329513(n)]`
-/

namespace A072675.P15107995108487200539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n * A329513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P15107995108487200539

namespace A072675

/-- `eq[A003893(n)*A329513(n), A329513(n)]` -/
def P15107995108487200539.Spec : Prop :=
  ∀ n, (P15107995108487200539.a n : ℤ) = A072675 (n + 1)

end A072675

/-!
# A072676: Numbers k for which the prime circle problem has a solution composed of disjoint subsets: the arrangement of numbers 1 through 2k around a circle is such that the sum of each pair of adjacent numbers is prime, the odd numbers are in order and the even numbers are in groups of decreasing sequences.

The programs for A072676, there is no canonical definition to state claims against.
-/

/-! ## A072676.P9171992856890084718

`lt[A106338(n), A010998(A263323(n+1))]`
-/

namespace A072676.P9171992856890084718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010998 ((A263323 (n + 1)).toNat + 45)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072676.P9171992856890084718

/-! ## A072676.P14465856761590398186

`lt[A003417(n), A060473(A209838(n+1))]`
-/

namespace A072676.P14465856761590398186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060473 (A209838 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072676.P14465856761590398186

/-! ## A072676.P11504467498137833529

`lt[A123970(n), A053644(A122111(n+1))]`
-/

namespace A072676.P11504467498137833529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A122111 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072676.P11504467498137833529

/-! ## A072676.P17532677334624035978

`lt[A119348(A080510(n+1)), n+1]`
-/

namespace A072676.P17532677334624035978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119348 (A080510 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072676.P17532677334624035978

/-!
# A072677: a(n) = prime(prime(n)+1) where prime(k) is the k-th prime.

The programs for A072677, the canonical program `A072677.P5065037936157036762` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072677 has offset 1).

The definition of A072677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072677.P17652013249356450429

`A073123(n+1)+1`
-/

namespace A072677.P17652013249356450429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073123 (n + 1) + 1

end

end A072677.P17652013249356450429

namespace A072677

/-- `A073123(n+1)+1` -/
def P17652013249356450429.Spec : Prop :=
  ∀ n, P17652013249356450429.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P13434024339827815161

`A073124(n+1)+A006450(n+1)`
-/

namespace A072677.P13434024339827815161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073124 (n + 1) + A006450 (n + 1)

end

end A072677.P13434024339827815161

namespace A072677

/-- `A073124(n+1)+A006450(n+1)` -/
def P13434024339827815161.Spec : Prop :=
  ∀ n, P13434024339827815161.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P5713359755409012671

`A275989(n+1)+A000040(n+1)`
-/

namespace A072677.P5713359755409012671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275989 (n + 1) + A000040 (n + 1)

end

end A072677.P5713359755409012671

namespace A072677

/-- `A275989(n+1)+A000040(n+1)` -/
def P5713359755409012671.Spec : Prop :=
  ∀ n, P5713359755409012671.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P5065037936157036762

`A006450(n+1)+A001223(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072677

/-- `A006450(n+1)+A001223(A000040(n+1))` -/
def P5065037936157036762.Spec : Prop :=
  ∀ n, P5065037936157036762.a n = A072677 (n + 1)

theorem P5065037936157036762.correct : P5065037936157036762.Spec := by
  intro n
  simp only [A072677, Nat.add_sub_cancel]

end A072677

/-! ## A072677.P16239284448853915774

`A055670(A008864(n+1))-1`
-/

namespace A072677.P16239284448853915774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A008864 (n + 1)).toNat - 1

end

end A072677.P16239284448853915774

namespace A072677

/-- `A055670(A008864(n+1))-1` -/
def P16239284448853915774.Spec : Prop :=
  ∀ n, P16239284448853915774.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P5425838196008028483

`A055670(A000040(n+1)+1)-1`
-/

namespace A072677.P5425838196008028483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A000040 (n + 1) + 1).toNat - 1

end

end A072677.P5425838196008028483

namespace A072677

/-- `A055670(A000040(n+1)+1)-1` -/
def P5425838196008028483.Spec : Prop :=
  ∀ n, P5425838196008028483.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P7352827233496260545

`A001748(A000040(n+1)+1)/3`
-/

namespace A072677.P7352827233496260545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A000040 (n + 1) + 1).toNat : ℚ) / 3

end

end A072677.P7352827233496260545

namespace A072677

/-- `A001748(A000040(n+1)+1)/3` -/
def P7352827233496260545.Spec : Prop :=
  ∀ n, P7352827233496260545.a n = (A072677 (n + 1) : ℚ)

end A072677

/-! ## A072677.P5659021421184762523

`A001748(A001748(n+1)/3+1)/3`
-/

namespace A072677.P5659021421184762523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3 + 1)).toNat : ℚ) / 3

end

end A072677.P5659021421184762523

namespace A072677

/-- `A001748(A001748(n+1)/3+1)/3` -/
def P5659021421184762523.Spec : Prop :=
  ∀ n, P5659021421184762523.a n = (A072677 (n + 1) : ℚ)

end A072677

/-! ## A072677.P6840395431227245989

`A006450(n+1)+A001223(record[A051698(n)])`
-/

namespace A072677.P6840395431227245989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + A001223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072677.P6840395431227245989

namespace A072677

/-- `A006450(n+1)+A001223(record[A051698(n)])` -/
def P6840395431227245989.Spec : Prop :=
  ∀ n, P6840395431227245989.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P9632494361044815131

`A045344(Δ[A007504(n)])`
-/

namespace A072677.P9632494361044815131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (f1 (n + 1) - f1 n).toNat

end

end A072677.P9632494361044815131

namespace A072677

/-- `A045344(Δ[A007504(n)])` -/
def P9632494361044815131.Spec : Prop :=
  ∀ n, P9632494361044815131.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P7578074451358648567

`A065091(Δ[A007504(n)])`
-/

namespace A072677.P7578074451358648567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (n + 1) - f1 n).toNat

end

end A072677.P7578074451358648567

namespace A072677

/-- `A065091(Δ[A007504(n)])` -/
def P7578074451358648567.Spec : Prop :=
  ∀ n, P7578074451358648567.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P2935070349207796415

`A065091(record[A051698(n)])`
-/

namespace A072677.P2935070349207796415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072677.P2935070349207796415

namespace A072677

/-- `A065091(record[A051698(n)])` -/
def P2935070349207796415.Spec : Prop :=
  ∀ n, P2935070349207796415.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P603422510384046721

`A045344(p?[A139693(n)])`
-/

namespace A072677.P603422510384046721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A072677.P603422510384046721

namespace A072677

/-- `A045344(p?[A139693(n)])` -/
def P603422510384046721.Spec : Prop :=
  ∀ n, P603422510384046721.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P11705217386368564478

`A000040(A008864(n+1))`
-/

namespace A072677.P11705217386368564478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008864 (n + 1)).toNat

end

end A072677.P11705217386368564478

namespace A072677

/-- `A000040(A008864(n+1))` -/
def P11705217386368564478.Spec : Prop :=
  ∀ n, P11705217386368564478.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P12494924857961390618

`A000040(A028815(n+1))`
-/

namespace A072677.P12494924857961390618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028815 (n + 1)).toNat

end

end A072677.P12494924857961390618

namespace A072677

/-- `A000040(A028815(n+1))` -/
def P12494924857961390618.Spec : Prop :=
  ∀ n, P12494924857961390618.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P15100596349870876925

`A045344(A000040(n+1))`
-/

namespace A072677.P15100596349870876925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A000040 (n + 1)).toNat

end

end A072677.P15100596349870876925

namespace A072677

/-- `A045344(A000040(n+1))` -/
def P15100596349870876925.Spec : Prop :=
  ∀ n, P15100596349870876925.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P8078641501564485637

`A008578(A052147(n+1))`
-/

namespace A072677.P8078641501564485637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A052147 (n + 1)).toNat

end

end A072677.P8078641501564485637

namespace A072677

/-- `A008578(A052147(n+1))` -/
def P8078641501564485637.Spec : Prop :=
  ∀ n, P8078641501564485637.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P8601881780124933578

`A046022(A113935(n+1))`
-/

namespace A072677.P8601881780124933578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A113935 (n + 1)).toNat

end

end A072677.P8601881780124933578

namespace A072677

/-- `A046022(A113935(n+1))` -/
def P8601881780124933578.Spec : Prop :=
  ∀ n, P8601881780124933578.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P6533366401709759997

`A215848(A006093(n+1))`
-/

namespace A072677.P6533366401709759997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A006093 (n + 1)).toNat

end

end A072677.P6533366401709759997

namespace A072677

/-- `A215848(A006093(n+1))` -/
def P6533366401709759997.Spec : Prop :=
  ∀ n, P6533366401709759997.a n = A072677 (n + 1)

end A072677

/-! ## A072677.P8069659412013616569

`A045344(A008578(n+2))`
-/

namespace A072677.P8069659412013616569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A008578 (n + 2)).toNat

end

end A072677.P8069659412013616569

namespace A072677

/-- `A045344(A008578(n+2))` -/
def P8069659412013616569.Spec : Prop :=
  ∀ n, P8069659412013616569.a n = A072677 (n + 1)

end A072677

/-!
# A072678: Generalized Bell numbers B_{4,2}.

The programs for A072678, there is no canonical definition to state claims against.
-/

/-! ## A072678.P4263313104401652014

`A052852(2*(n+1)-1)`
-/

namespace A072678.P4263313104401652014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052852 (2 * (n + 1) - 1)

end

end A072678.P4263313104401652014

/-! ## A072678.P3957086792338909765

`abs(A288869(Δ[n²]))`
-/

namespace A072678.P3957086792338909765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288869 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A072678.P3957086792338909765

/-! ## A072678.P10545109644114875905

`A288268(2*(n+1))`
-/

namespace A072678.P10545109644114875905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 (2 * (n + 1))

end

end A072678.P10545109644114875905

/-! ## A072678.P7814493609501108394

`record[-A288869(n+1)]`
-/

namespace A072678.P7814493609501108394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A288869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072678.P7814493609501108394

/-! ## A072678.P8856780149493837287

`record[A288268(and(n, n+1))]`
-/

namespace A072678.P8856780149493837287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072678.P8856780149493837287

/-!
# A072680: Difference between (least prime >= n) and (largest prime <= n).

The programs for A072680, the canonical program `A072680.P3143065957285476925` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072680 has offset 2).

The definition of A072680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A007917, A049084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072680.P3143065957285476925

`A057427(n+2-A007917(n+2))*A001223(A049084(A007917(n+2)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072680

/-- `A057427(n+2-A007917(n+2))*A001223(A049084(A007917(n+2)))` -/
def P3143065957285476925.Spec : Prop :=
  ∀ n, P3143065957285476925.a n = A072680 (n + 2)

theorem P3143065957285476925.correct : P3143065957285476925.Spec := by
  intro n
  simp only [A072680, Nat.add_sub_cancel]

end A072680

/-! ## A072680.P12537122104806991588

`A007918(n+2)-A007917(n+2)`
-/

namespace A072680.P12537122104806991588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 2) - A007917 (n + 2)

end

end A072680.P12537122104806991588

namespace A072680

/-- `A007918(n+2)-A007917(n+2)` -/
def P12537122104806991588.Spec : Prop :=
  ∀ n, P12537122104806991588.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P12099311022937049327

`A066285(A063932(n+2))`
-/

namespace A072680.P12099311022937049327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066285 (A063932 (n + 2)).toNat

end

end A072680.P12099311022937049327

namespace A072680

/-- `A066285(A063932(n+2))` -/
def P12099311022937049327.Spec : Prop :=
  ∀ n, P12099311022937049327.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P17886633145025834935

`A151800(n+1)-A007917(n+2)`
-/

namespace A072680.P17886633145025834935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A007917 (n + 2)

end

end A072680.P17886633145025834935

namespace A072680

/-- `A151800(n+1)-A007917(n+2)` -/
def P17886633145025834935.Spec : Prop :=
  ∀ n, P17886633145025834935.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P15529188896689568245

`A005171(n+2)*A166597(n+1)`
-/

namespace A072680.P15529188896689568245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 2) * A166597 (n + 1)

end

end A072680.P15529188896689568245

namespace A072680

/-- `A005171(n+2)*A166597(n+1)` -/
def P15529188896689568245.Spec : Prop :=
  ∀ n, P15529188896689568245.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P17430240416638201237

`(1-A010051(n+2))*A166597(n+1)`
-/

namespace A072680.P17430240416638201237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 2)) * A166597 (n + 1)

end

end A072680.P17430240416638201237

namespace A072680

/-- `(1-A010051(n+2))*A166597(n+1)` -/
def P17430240416638201237.Spec : Prop :=
  ∀ n, P17430240416638201237.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P14073367201854580067

`A001223(A000720(n+2))-A096500(n+1)`
-/

namespace A072680.P14073367201854580067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (n + 2)).toNat - A096500 (n + 1)

end

end A072680.P14073367201854580067

namespace A072680

/-- `A001223(A000720(n+2))-A096500(n+1)` -/
def P14073367201854580067.Spec : Prop :=
  ∀ n, P14073367201854580067.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P17874779809687379811

`A151800(n+1)-A000040(A000720(n+2))`
-/

namespace A072680.P17874779809687379811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A000040 (A000720 (n + 2)).toNat

end

end A072680.P17874779809687379811

namespace A072680

/-- `A151800(n+1)-A000040(A000720(n+2))` -/
def P17874779809687379811.Spec : Prop :=
  ∀ n, P17874779809687379811.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P3713242426509979734

`A096501(A151800(n+2)+A010051(n+2))`
-/

namespace A072680.P3713242426509979734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A151800 (n + 2) + A010051 (n + 2)).toNat

end

end A072680.P3713242426509979734

namespace A072680

/-- `A096501(A151800(n+2)+A010051(n+2))` -/
def P3713242426509979734.Spec : Prop :=
  ∀ n, P3713242426509979734.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P13254404706262996860

`A096501(A151800(n+1))-A096501(n+2)`
-/

namespace A072680.P13254404706262996860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A151800 (n + 1)).toNat - A096501 (n + 2)

end

end A072680.P13254404706262996860

namespace A072680

/-- `A096501(A151800(n+1))-A096501(n+2)` -/
def P13254404706262996860.Spec : Prop :=
  ∀ n, P13254404706262996860.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P14592564291625365914

`A151800(n+1)-A008578(A000720(n+2)+1)`
-/

namespace A072680.P14592564291625365914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A008578 (A000720 (n + 2) + 1).toNat

end

end A072680.P14592564291625365914

namespace A072680

/-- `A151800(n+1)-A008578(A000720(n+2)+1)` -/
def P14592564291625365914.Spec : Prop :=
  ∀ n, P14592564291625365914.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P4431606333761639046

`A000040(A000720(n+1)+1)%A000040(A000720(n+2))`
-/

namespace A072680.P4431606333761639046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A000720 (n + 1) + 1).toNat) (A000040 (A000720 (n + 2)).toNat)

end

end A072680.P4431606333761639046

namespace A072680

/-- `A000040(A000720(n+1)+1)%A000040(A000720(n+2))` -/
def P4431606333761639046.Spec : Prop :=
  ∀ n, P4431606333761639046.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P218298787325576806

`A064722(n+2)+A007920(n+2)`
-/

namespace A072680.P218298787325576806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) + A007920 (n + 2)

end

end A072680.P218298787325576806

namespace A072680

/-- `A064722(n+2)+A007920(n+2)` -/
def P218298787325576806.Spec : Prop :=
  ∀ n, P218298787325576806.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P4090824314085466382

`A151800(n+1)-A151800(A070320(n+2))`
-/

namespace A072680.P4090824314085466382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A151800 (A070320 (n + 2)).toNat

end

end A072680.P4090824314085466382

namespace A072680

/-- `A151800(n+1)-A151800(A070320(n+2))` -/
def P4090824314085466382.Spec : Prop :=
  ∀ n, P4090824314085466382.a n = A072680 (n + 2)

end A072680

/-! ## A072680.P4311842647460533508

`A064722(n+2)+A064722(A119257(n+2))`
-/

namespace A072680.P4311842647460533508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) + A064722 (A119257 (n + 2)).toNat

end

end A072680.P4311842647460533508

namespace A072680

/-- `A064722(n+2)+A064722(A119257(n+2))` -/
def P4311842647460533508.Spec : Prop :=
  ∀ n, P4311842647460533508.a n = A072680 (n + 2)

end A072680

/-!
# A072681: a(n) = (n - A007917(n)) * (A007918(n) - n).

The programs for A072681, the canonical program `A072681.P11367421680311934153` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072681 has offset 2).

The definition of A072681 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, A064722, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072681.P11367421680311934153

`A064722(n+2)*A007920(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072681

/-- `A064722(n+2)*A007920(n+2)` -/
def P11367421680311934153.Spec : Prop :=
  ∀ n, P11367421680311934153.a n = A072681 (n + 2)

theorem P11367421680311934153.correct : P11367421680311934153.Spec := by
  intro n
  simp only [A072681, Nat.add_sub_cancel]

end A072681

/-! ## A072681.P3120088539320785072

`(n+2-A007917(n+2))*(A007918(n+2)-(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072681.P3120088539320785072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A007917 (n + 2)) * (A007918 (n + 2) - (n + 2 : ℤ))

end

end A072681.P3120088539320785072

namespace A072681

/-- `(n+2-A007917(n+2))*(A007918(n+2)-(n+2))` -/
def P3120088539320785072.Spec : Prop :=
  ∀ n, P3120088539320785072.a n = A072681 (n + 2)

end A072681

/-! ## A072681.P6613384702229485246

`A064722(n+2)*(A072680(n+2)-A064722(n+2))`
-/

namespace A072681.P6613384702229485246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) * (A072680 (n + 2) - A064722 (n + 2))

end

end A072681.P6613384702229485246

namespace A072681

/-- `A064722(n+2)*(A072680(n+2)-A064722(n+2))` -/
def P6613384702229485246.Spec : Prop :=
  ∀ n, P6613384702229485246.a n = A072681 (n + 2)

end A072681

/-! ## A072681.P714257649070742630

`∑[A210882(n+2)-(n+2)]`
-/

namespace A072681.P714257649070742630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072681.P714257649070742630

namespace A072681

/-- `∑[A210882(n+2)-(n+2)]` -/
def P714257649070742630.Spec : Prop :=
  ∀ n, P714257649070742630.a n = A072681 (n + 2)

end A072681

/-! ## A072681.P12021260743872572228

`A007920(n+2)*A175851(n+1)`
-/

namespace A072681.P12021260743872572228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 2) * A175851 (n + 1)

end

end A072681.P12021260743872572228

namespace A072681

/-- `A007920(n+2)*A175851(n+1)` -/
def P12021260743872572228.Spec : Prop :=
  ∀ n, P12021260743872572228.a n = A072681 (n + 2)

end A072681

/-! ## A072681.P16513466686493292729

`∑[A007920(n+2)-A064722(n+1)]`
-/

namespace A072681.P16513466686493292729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 2) - A064722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072681.P16513466686493292729

namespace A072681

/-- `∑[A007920(n+2)-A064722(n+1)]` -/
def P16513466686493292729.Spec : Prop :=
  ∀ n, P16513466686493292729.a n = A072681 (n + 2)

end A072681

/-! ## A072681.P9350570454593970315

`∑[A013632(n+1)-1-A064722(n+1)]`
-/

namespace A072681.P9350570454593970315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) - 1 - A064722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072681.P9350570454593970315

namespace A072681

/-- `∑[A013632(n+1)-1-A064722(n+1)]` -/
def P9350570454593970315.Spec : Prop :=
  ∀ n, P9350570454593970315.a n = A072681 (n + 2)

end A072681

/-! ## A072681.P2889775635241103906

`(A166597(n+1)-A064722(n+2))*A064722(n+2)`
-/

namespace A072681.P2889775635241103906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166597 (n + 1) - A064722 (n + 2)) * A064722 (n + 2)

end

end A072681.P2889775635241103906

namespace A072681

/-- `(A166597(n+1)-A064722(n+2))*A064722(n+2)` -/
def P2889775635241103906.Spec : Prop :=
  ∀ n, P2889775635241103906.a n = A072681 (n + 2)

end A072681

/-! ## A072681.P5397918713634553811

`A013632(n+2)*A064722(n+2)`
-/

namespace A072681.P5397918713634553811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 2) * A064722 (n + 2)

end

end A072681.P5397918713634553811

namespace A072681

/-- `A013632(n+2)*A064722(n+2)` -/
def P5397918713634553811.Spec : Prop :=
  ∀ n, P5397918713634553811.a n = A072681 (n + 2)

end A072681

/-! ## A072681.P8790381140777248180

`A064722(n+2)*A064722(A119257(n+2))`
-/

namespace A072681.P8790381140777248180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) * A064722 (A119257 (n + 2)).toNat

end

end A072681.P8790381140777248180

namespace A072681

/-- `A064722(n+2)*A064722(A119257(n+2))` -/
def P8790381140777248180.Spec : Prop :=
  ∀ n, P8790381140777248180.a n = A072681 (n + 2)

end A072681

/-!
# A072682: Numbers congruent to {3, 36, 54, 57} mod 60.

The programs for A072682, the canonical program `A072682.P2654826876211273636` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072682 has offset 1).

The definition of A072682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072682.P2654826876211273636

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=36, a(2)=54, a(3)=57, a(4)=63`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072682

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P2654826876211273636.Spec : Prop :=
  ∀ n, P2654826876211273636.a n = A072682 (n + 1)

theorem P2654826876211273636.correct : P2654826876211273636.Spec := by
  intro n
  simp only [A072682, Nat.add_sub_cancel]

end A072682

/-! ## A072682.P1362659519596200329

`A072702(n+3)-15`
-/

namespace A072682.P1362659519596200329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072702 (n + 3) - 15

end

end A072682.P1362659519596200329

namespace A072682

/-- `A072702(n+3)-15` -/
def P1362659519596200329.Spec : Prop :=
  ∀ n, P1362659519596200329.a n = A072682 (n + 1)

end A072682

/-! ## A072682.P13962151964381161452

`A072708(n+4)-45`
-/

namespace A072682.P13962151964381161452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072708 (n + 4) - 45

end

end A072682.P13962151964381161452

namespace A072682

/-- `A072708(n+4)-45` -/
def P13962151964381161452.Spec : Prop :=
  ∀ n, P13962151964381161452.a n = A072682 (n + 1)

end A072682

/-! ## A072682.P1790803346543097798

`eq[A003893(n)², A329505(n)]`
-/

namespace A072682.P1790803346543097798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P1790803346543097798

namespace A072682

/-- `eq[A003893(n)², A329505(n)]` -/
def P1790803346543097798.Spec : Prop :=
  ∀ n, (P1790803346543097798.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P6671627741279846258

`eq[A003893(n), A060684(n+1)]`
-/

namespace A072682.P6671627741279846258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P6671627741279846258

namespace A072682

/-- `eq[A003893(n), A060684(n+1)]` -/
def P6671627741279846258.Spec : Prop :=
  ∀ n, (P6671627741279846258.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P14310428531084558950

`eq[A003893(n), A078832(n+1)]`
-/

namespace A072682.P14310428531084558950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P14310428531084558950

namespace A072682

/-- `eq[A003893(n), A078832(n+1)]` -/
def P14310428531084558950.Spec : Prop :=
  ∀ n, (P14310428531084558950.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P14586446454068043347

`eq[A003893(n), A104435(n+1)]`
-/

namespace A072682.P14586446454068043347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P14586446454068043347

namespace A072682

/-- `eq[A003893(n), A104435(n+1)]` -/
def P14586446454068043347.Spec : Prop :=
  ∀ n, (P14586446454068043347.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P226964896324756727

`eq[A003893(n)+1, A113923(n)]`
-/

namespace A072682.P226964896324756727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P226964896324756727

namespace A072682

/-- `eq[A003893(n)+1, A113923(n)]` -/
def P226964896324756727.Spec : Prop :=
  ∀ n, (P226964896324756727.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P11158900657384717632

`eq[A003893(n), A140685(n+1)]`
-/

namespace A072682.P11158900657384717632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P11158900657384717632

namespace A072682

/-- `eq[A003893(n), A140685(n+1)]` -/
def P11158900657384717632.Spec : Prop :=
  ∀ n, (P11158900657384717632.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P14958938297735624363

`eq[A003893(n), A165063(n+1)]`
-/

namespace A072682.P14958938297735624363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P14958938297735624363

namespace A072682

/-- `eq[A003893(n), A165063(n+1)]` -/
def P14958938297735624363.Spec : Prop :=
  ∀ n, (P14958938297735624363.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P11268638121782110016

`eq[A138189(n)+1, A082116(n)]`
-/

namespace A072682.P11268638121782110016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138189 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P11268638121782110016

namespace A072682

/-- `eq[A138189(n)+1, A082116(n)]` -/
def P11268638121782110016.Spec : Prop :=
  ∀ n, (P11268638121782110016.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P10261097634330346554

`eq[A003893(n), A236213(n+1)]`
-/

namespace A072682.P10261097634330346554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P10261097634330346554

namespace A072682

/-- `eq[A003893(n), A236213(n+1)]` -/
def P10261097634330346554.Spec : Prop :=
  ∀ n, (P10261097634330346554.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P7864051100664408559

`eq[A082116(n)+1, A252358(n)]`
-/

namespace A072682.P7864051100664408559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P7864051100664408559

namespace A072682

/-- `eq[A082116(n)+1, A252358(n)]` -/
def P7864051100664408559.Spec : Prop :=
  ∀ n, (P7864051100664408559.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P4365339021405552635

`eq[2, A003893(A098108(n)+n)]`
-/

namespace A072682.P4365339021405552635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (A098108 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072682.P4365339021405552635

namespace A072682

/-- `eq[2, A003893(A098108(n)+n)]` -/
def P4365339021405552635.Spec : Prop :=
  ∀ n, (P4365339021405552635.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P10374127161223175943

`eq[2, A003893(n-A098108(n))]`
-/

namespace A072682.P10374127161223175943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 ((n : ℤ) - A098108 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072682.P10374127161223175943

namespace A072682

/-- `eq[2, A003893(n-A098108(n))]` -/
def P10374127161223175943.Spec : Prop :=
  ∀ n, (P10374127161223175943.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P6741628023736314237

`eq[2, A082116(n)*A158613(n)]`
-/

namespace A072682.P6741628023736314237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n * A158613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072682.P6741628023736314237

namespace A072682

/-- `eq[2, A082116(n)*A158613(n)]` -/
def P6741628023736314237.Spec : Prop :=
  ∀ n, (P6741628023736314237.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P16101416194608842273

`eq[A003893(n)², A088838(n+1)]`
-/

namespace A072682.P16101416194608842273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P16101416194608842273

namespace A072682

/-- `eq[A003893(n)², A088838(n+1)]` -/
def P16101416194608842273.Spec : Prop :=
  ∀ n, (P16101416194608842273.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P14811118994747617414

`eq[A082116(n)², A090370(n+4)]`
-/

namespace A072682.P14811118994747617414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090370 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P14811118994747617414

namespace A072682

/-- `eq[A082116(n)², A090370(n+4)]` -/
def P14811118994747617414.Spec : Prop :=
  ∀ n, (P14811118994747617414.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P7924403594108554358

`eq[A204120(n+1)+1, A003893(n)]`
-/

namespace A072682.P7924403594108554358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204120 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P7924403594108554358

namespace A072682

/-- `eq[A204120(n+1)+1, A003893(n)]` -/
def P7924403594108554358.Spec : Prop :=
  ∀ n, (P7924403594108554358.a n : ℤ) = A072682 (n + 1)

end A072682

/-! ## A072682.P12551821009088799654

`eq[A204160(n+1)+1, A003893(n)]`
-/

namespace A072682.P12551821009088799654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204160 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072682.P12551821009088799654

namespace A072682

/-- `eq[A204160(n+1)+1, A003893(n)]` -/
def P12551821009088799654.Spec : Prop :=
  ∀ n, (P12551821009088799654.a n : ℤ) = A072682 (n + 1)

end A072682

/-!
# A072683: Numbers k such that the last digit of F(k) is 3 where F(k) is the k-th Fibonacci number.

The programs for A072683, the canonical program `A072683.P17274139737255269736` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072683 has offset 1).

The definition of A072683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072683.P14882487390213063652

`eq[A003893(n), A113923(n)]`
-/

namespace A072683.P14882487390213063652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P14882487390213063652

namespace A072683

/-- `eq[A003893(n), A113923(n)]` -/
def P14882487390213063652.Spec : Prop :=
  ∀ n, (P14882487390213063652.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P8263838469637701277

`eq[A101443(n)+2, A003893(n)]`
-/

namespace A072683.P8263838469637701277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P8263838469637701277

namespace A072683

/-- `eq[A101443(n)+2, A003893(n)]` -/
def P8263838469637701277.Spec : Prop :=
  ∀ n, (P8263838469637701277.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P17274139737255269736

`eq[A101443(n)+2, A082116(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072683

/-- `eq[A101443(n)+2, A082116(n)]` -/
def P17274139737255269736.Spec : Prop :=
  ∀ n, (P17274139737255269736.a n : ℤ) = A072683 (n + 1)

theorem P17274139737255269736.correct : P17274139737255269736.Spec := by
  intro n
  simp only [A072683, Nat.add_sub_cancel]

end A072683

/-! ## A072683.P17209441819133639

`eq[3, A098108(n)+A003893(n)]`
-/

namespace A072683.P17209441819133639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 n + A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072683.P17209441819133639

namespace A072683

/-- `eq[3, A098108(n)+A003893(n)]` -/
def P17209441819133639.Spec : Prop :=
  ∀ n, (P17209441819133639.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P852836243183938597

`eq[2*A003893(n), A063808(n)]`
-/

namespace A072683.P852836243183938597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P852836243183938597

namespace A072683

/-- `eq[2*A003893(n), A063808(n)]` -/
def P852836243183938597.Spec : Prop :=
  ∀ n, (P852836243183938597.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P12115926059083394239

`eq[2*A003893(n), A329506(n)]`
-/

namespace A072683.P12115926059083394239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P12115926059083394239

namespace A072683

/-- `eq[2*A003893(n), A329506(n)]` -/
def P12115926059083394239.Spec : Prop :=
  ∀ n, (P12115926059083394239.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P6743868001825266895

`eq[2*A003893(n), A329516(n)]`
-/

namespace A072683.P6743868001825266895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P6743868001825266895

namespace A072683

/-- `eq[2*A003893(n), A329516(n)]` -/
def P6743868001825266895.Spec : Prop :=
  ∀ n, (P6743868001825266895.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P17783468901750016781

`eq[A003893(n)², A066586(n+1)]`
-/

namespace A072683.P17783468901750016781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P17783468901750016781

namespace A072683

/-- `eq[A003893(n)², A066586(n+1)]` -/
def P17783468901750016781.Spec : Prop :=
  ∀ n, (P17783468901750016781.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P3259604351269925869

`eq[A078832(n+1)+1, A003893(n)]`
-/

namespace A072683.P3259604351269925869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P3259604351269925869

namespace A072683

/-- `eq[A078832(n+1)+1, A003893(n)]` -/
def P3259604351269925869.Spec : Prop :=
  ∀ n, (P3259604351269925869.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P14494571711447989464

`eq[A104435(n+1)+1, A003893(n)]`
-/

namespace A072683.P14494571711447989464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P14494571711447989464

namespace A072683

/-- `eq[A104435(n+1)+1, A003893(n)]` -/
def P14494571711447989464.Spec : Prop :=
  ∀ n, (P14494571711447989464.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P6814479026906126927

`eq[A236213(n+1)+1, A003893(n)]`
-/

namespace A072683.P6814479026906126927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P6814479026906126927

namespace A072683

/-- `eq[A236213(n+1)+1, A003893(n)]` -/
def P6814479026906126927.Spec : Prop :=
  ∀ n, (P6814479026906126927.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P2771872417994162833

`eq[A003893(n)+1, A297217(n+1)]`
-/

namespace A072683.P2771872417994162833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P2771872417994162833

namespace A072683

/-- `eq[A003893(n)+1, A297217(n+1)]` -/
def P2771872417994162833.Spec : Prop :=
  ∀ n, (P2771872417994162833.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P4912936151475315073

`eq[A058306(A058306(n))+2, A003893(n)]`
-/

namespace A072683.P4912936151475315073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 (A058306 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P4912936151475315073

namespace A072683

/-- `eq[A058306(A058306(n))+2, A003893(n)]` -/
def P4912936151475315073.Spec : Prop :=
  ∀ n, (P4912936151475315073.a n : ℤ) = A072683 (n + 1)

end A072683

/-! ## A072683.P3136783518761464336

`A064524(eq[3, A003893(A064524(n))])`
-/

namespace A072683.P3136783518761464336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (A064524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072683.P3136783518761464336

namespace A072683

/-- `A064524(eq[3, A003893(A064524(n))])` -/
def P3136783518761464336.Spec : Prop :=
  ∀ n, P3136783518761464336.a n = A072683 (n + 1)

end A072683

/-! ## A072683.P13034475949184166005

`eq[3, A003893(A138153(n+1))]`
-/

namespace A072683.P13034475949184166005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072683.P13034475949184166005

namespace A072683

/-- `eq[3, A003893(A138153(n+1))]` -/
def P13034475949184166005.Spec : Prop :=
  ∀ n, (P13034475949184166005.a n : ℤ) = A072683 (n + 1)

end A072683

/-!
# A072684: Expansion of (2+x+3*x^2+2*x^3+x^4)/(1-x-5*x^2+x^3+3*x^4-x^5).

The programs for A072684, the canonical program `A072684.P348872846170817305` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072684 has offset 0).

The definition of A072684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x+3x^2+2x^3+x^4)/(1-x-5x^2+x^3+3x^4-x^5))` (program `A072684.P348872846170817305`, by `A072684.P348872846170817305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072684.P348872846170817305

`ogf((2+x+3x^2+2x^3+x^4)/(1-x-5x^2+x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072684

/-- `ogf((2+x+3x^2+2x^3+x^4)/(1-x-5x^2+x^3+3x^4-x^5))` -/
def P348872846170817305.Spec : Prop :=
  ∀ n, P348872846170817305.a n = A072684 n

theorem P348872846170817305.correct : P348872846170817305.Spec := by
  intro n
  simp only [A072684]

end A072684

/-! ## A072684.P6959094794064772147

`2*a(n-1)+3*a(n-2)-4*a(n-3)+a(n-4)+3*(-1)^n` with `a(0)=2, a(1)=3, a(2)=16, a(3)=31`
-/

namespace A072684.P6959094794064772147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 16, 31] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 4 * a (n - 3) + a (n - 4) + 3 * (-1) ^ n

end

end A072684.P6959094794064772147

namespace A072684

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)+a(n-4)+3*(-1)^n` -/
def P6959094794064772147.Spec : Prop :=
  ∀ n, P6959094794064772147.a n = A072684 n

end A072684

/-!
# A072687: Number of primes with prime length names in range 1 -> 10^n.

The programs for A072687, there is no canonical definition to state claims against.
-/

/-! ## A072687.P6802485120373376467

`A087808(3*n+2)+A004273(A048802(n+1))`
-/

namespace A072687.P6802485120373376467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (3 * n + 2) + A004273 (A048802 (n + 1)).toNat

end

end A072687.P6802485120373376467

/-!
# A072689: Difference between (least square >= n) and (largest square <= n).

The programs for A072689, the canonical program `A072689.P10418100748501464398` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072689 has offset 1).

The definition of A072689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072689.P10418100748501464398

`A048761(n+1)-A048760(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072689

/-- `A048761(n+1)-A048760(n+1)` -/
def P10418100748501464398.Spec : Prop :=
  ∀ n, P10418100748501464398.a n = A072689 (n + 1)

theorem P10418100748501464398.correct : P10418100748501464398.Spec := by
  intro n
  simp only [A072689, Nat.add_sub_cancel]

end A072689

/-! ## A072689.P7400779270984340232

`A057427(n+1-A048760(n+1))*(A000196(A048760(n+1))*2+1)`
-/

namespace A072689.P7400779270984340232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n + 1 : ℤ) - A048760 (n + 1)).toNat * (A000196 (A048760 (n + 1)).toNat * 2 + 1)

end

end A072689.P7400779270984340232

namespace A072689

/-- `A057427(n+1-A048760(n+1))*(A000196(A048760(n+1))*2+1)` -/
def P7400779270984340232.Spec : Prop :=
  ∀ n, P7400779270984340232.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P14990289792546515226

`2*floor(sqrt(n))+1-Δ[A048760(n)]`
-/

namespace A072689.P14990289792546515226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.sqrt n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A072689.P14990289792546515226

namespace A072689

/-- `2*floor(sqrt(n))+1-Δ[A048760(n)]` -/
def P14990289792546515226.Spec : Prop :=
  ∀ n, P14990289792546515226.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P16317006020795332245

`(A000196(n)+1)²-floor(sqrt(n+1))²`
-/

namespace A072689.P16317006020795332245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000196 n + 1) ^ 2 - (Nat.sqrt (n + 1) ^ 2 : ℤ)

end

end A072689.P16317006020795332245

namespace A072689

/-- `(A000196(n)+1)²-floor(sqrt(n+1))²` -/
def P16317006020795332245.Spec : Prop :=
  ∀ n, P16317006020795332245.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P12394864199871698200

`A193356(A161205(n+1)+1)`
-/

namespace A072689.P12394864199871698200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A161205 (n + 1) + 1).toNat

end

end A072689.P12394864199871698200

namespace A072689

/-- `A193356(A161205(n+1)+1)` -/
def P12394864199871698200.Spec : Prop :=
  ∀ n, P12394864199871698200.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P11131740566940951392

`Δ[A053186(n)]+2*A000196(n)`
-/

namespace A072689.P11131740566940951392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000196 n

end

end A072689.P11131740566940951392

namespace A072689

/-- `Δ[A053186(n)]+2*A000196(n)` -/
def P11131740566940951392.Spec : Prop :=
  ∀ n, P11131740566940951392.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P14281743971946482921

`A001650(n+1)*A049240(n+1)`
-/

namespace A072689.P14281743971946482921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (n + 1) * A049240 (n + 1)

end

end A072689.P14281743971946482921

namespace A072689

/-- `A001650(n+1)*A049240(n+1)` -/
def P14281743971946482921.Spec : Prop :=
  ∀ n, P14281743971946482921.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P17166800328684790302

`(A275437(n)-1)*A001650(n+1)`
-/

namespace A072689.P17166800328684790302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275437 n - 1) * A001650 (n + 1)

end

end A072689.P17166800328684790302

namespace A072689

/-- `(A275437(n)-1)*A001650(n+1)` -/
def P17166800328684790302.Spec : Prop :=
  ∀ n, P17166800328684790302.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P8409169133747070071

`lcm(A001650(n+1), A068717(n+1))`
-/

namespace A072689.P8409169133747070071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001650 (n + 1)) (A068717 (n + 1))

end

end A072689.P8409169133747070071

namespace A072689

/-- `lcm(A001650(n+1), A068717(n+1))` -/
def P8409169133747070071.Spec : Prop :=
  ∀ n, (P8409169133747070071.a n : ℤ) = A072689 (n + 1)

end A072689

/-! ## A072689.P9306138445550651230

`A048761(n+1)-A000196(n+1)²`
-/

namespace A072689.P9306138445550651230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (n + 1) - A000196 (n + 1) ^ 2

end

end A072689.P9306138445550651230

namespace A072689

/-- `A048761(n+1)-A000196(n+1)²` -/
def P9306138445550651230.Spec : Prop :=
  ∀ n, P9306138445550651230.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P15052195905520583727

`∑[and(3, A212885(n))]*A049240(n+1)`
-/

namespace A072689.P15052195905520583727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A212885 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A049240 (n + 1)

end

end A072689.P15052195905520583727

namespace A072689

/-- `∑[and(3, A212885(n))]*A049240(n+1)` -/
def P15052195905520583727.Spec : Prop :=
  ∀ n, P15052195905520583727.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P149793995884411049

`A049240(n+1)+2*A320471(n+1)`
-/

namespace A072689.P149793995884411049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) + 2 * A320471 (n + 1)

end

end A072689.P149793995884411049

namespace A072689

/-- `A049240(n+1)+2*A320471(n+1)` -/
def P149793995884411049.Spec : Prop :=
  ∀ n, P149793995884411049.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P488879868790396368

`A003059(n+1)²-A000196(n+1)²`
-/

namespace A072689.P488879868790396368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) ^ 2 - A000196 (n + 1) ^ 2

end

end A072689.P488879868790396368

namespace A072689

/-- `A003059(n+1)²-A000196(n+1)²` -/
def P488879868790396368.Spec : Prop :=
  ∀ n, P488879868790396368.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P4720424064984906801

`(A316355(n)+2)*A000035(A316355(n))`
-/

namespace A072689.P4720424064984906801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A316355 n + 2) * A000035 (A316355 n).toNat

end

end A072689.P4720424064984906801

namespace A072689

/-- `(A316355(n)+2)*A000035(A316355(n))` -/
def P4720424064984906801.Spec : Prop :=
  ∀ n, P4720424064984906801.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P8555204325259314211

`A048761(n+1)-A048761(A083479(n+1))`
-/

namespace A072689.P8555204325259314211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (n + 1) - A048761 (A083479 (n + 1)).toNat

end

end A072689.P8555204325259314211

namespace A072689

/-- `A048761(n+1)-A048761(A083479(n+1))` -/
def P8555204325259314211.Spec : Prop :=
  ∀ n, P8555204325259314211.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P6646490213902317236

`(A003059(n+1)+A000196(n))*A049240(n+1)`
-/

namespace A072689.P6646490213902317236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003059 (n + 1) + A000196 n) * A049240 (n + 1)

end

end A072689.P6646490213902317236

namespace A072689

/-- `(A003059(n+1)+A000196(n))*A049240(n+1)` -/
def P6646490213902317236.Spec : Prop :=
  ∀ n, P6646490213902317236.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P11571975681446129350

`A320471(n+1)+A320471(n+1)+A267635(n+1)`
-/

namespace A072689.P11571975681446129350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320471 (n + 1) + (A320471 (n + 1) + A267635 (n + 1))

end

end A072689.P11571975681446129350

namespace A072689

/-- `A320471(n+1)+A320471(n+1)+A267635(n+1)` -/
def P11571975681446129350.Spec : Prop :=
  ∀ n, P11571975681446129350.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P12144231670491152983

`A003059(n+1)+A320471(n+1)-A037213(n+1)`
-/

namespace A072689.P12144231670491152983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) + (A320471 (n + 1) - A037213 (n + 1))

end

end A072689.P12144231670491152983

namespace A072689

/-- `A003059(n+1)+A320471(n+1)-A037213(n+1)` -/
def P12144231670491152983.Spec : Prop :=
  ∀ n, P12144231670491152983.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P4647836956480512833

`(A001650(n+1)-A161205(n+1))*A001650(n+1)`
-/

namespace A072689.P4647836956480512833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001650 (n + 1) - A161205 (n + 1)) * A001650 (n + 1)

end

end A072689.P4647836956480512833

namespace A072689

/-- `(A001650(n+1)-A161205(n+1))*A001650(n+1)` -/
def P4647836956480512833.Spec : Prop :=
  ∀ n, P4647836956480512833.a n = A072689 (n + 1)

end A072689

/-! ## A072689.P7323096152570627770

`A053186(n+1)+A072690(n+1)/A071797(n+1)`
-/

namespace A072689.P7323096152570627770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053186 (n + 1) : ℚ) + (A072690 (n + 1) : ℚ) / (A071797 (n + 1) : ℚ)

end

end A072689.P7323096152570627770

namespace A072689

/-- `A053186(n+1)+A072690(n+1)/A071797(n+1)` -/
def P7323096152570627770.Spec : Prop :=
  ∀ n, P7323096152570627770.a n = (A072689 (n + 1) : ℚ)

end A072689

/-!
# A072690: a(n) = (n - A048760(n)) * (A048761(n) - n).

The programs for A072690, the canonical program `A072690.P15726135173610324113` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072690 has offset 1).

The definition of A072690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072690.P15726135173610324113

`(n+1-A048760(n+1))*(A048761(n+1)-(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072690

/-- `(n+1-A048760(n+1))*(A048761(n+1)-(n+1))` -/
def P15726135173610324113.Spec : Prop :=
  ∀ n, P15726135173610324113.a n = A072690 (n + 1)

theorem P15726135173610324113.correct : P15726135173610324113.Spec := by
  intro n
  simp only [A072690, Nat.add_sub_cancel]

end A072690

/-! ## A072690.P10100107164792601024

`A053186(n+1)*(A072689(n+1)-A053186(n+1))`
-/

namespace A072690.P10100107164792601024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n + 1) * (A072689 (n + 1) - A053186 (n + 1))

end

end A072690.P10100107164792601024

namespace A072690

/-- `A053186(n+1)*(A072689(n+1)-A053186(n+1))` -/
def P10100107164792601024.Spec : Prop :=
  ∀ n, P10100107164792601024.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P12437310959590128852

`1-∑[(-1)^floor(sqrt(n))]²+n`
-/

namespace A072690.P12437310959590128852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n : ℤ)

end

end A072690.P12437310959590128852

namespace A072690

/-- `1-∑[(-1)^floor(sqrt(n))]²+n` -/
def P12437310959590128852.Spec : Prop :=
  ∀ n, P12437310959590128852.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P15570272036718163379

`lcm(2, a(n-2)+2*(1-a(n-1)))` with `a(0)=0, a(1)=2`
-/

namespace A072690.P15570272036718163379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Int.lcm 2 ((a (n - 2) : ℤ) + 2 * (1 - (a (n - 1) : ℤ)))

end

end A072690.P15570272036718163379

namespace A072690

/-- `lcm(2, a(n-2)+2*(1-a(n-1)))` -/
def P15570272036718163379.Spec : Prop :=
  ∀ n, (P15570272036718163379.a n : ℤ) = A072690 (n + 1)

end A072690

/-! ## A072690.P8084132328728571051

`abs(2*a(n-1)-abs(a(n-2))-2)` with `a(0)=0, a(1)=2`
-/

namespace A072690.P8084132328728571051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  |(2 * a (n - 1) - |a (n - 2)| - 2)|

end

end A072690.P8084132328728571051

namespace A072690

/-- `abs(2*a(n-1)-abs(a(n-2))-2)` -/
def P8084132328728571051.Spec : Prop :=
  ∀ n, P8084132328728571051.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P7567268933801503288

`∑[2*A381232(n)]`
-/

namespace A072690.P7567268933801503288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A381232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072690.P7567268933801503288

namespace A072690

/-- `∑[2*A381232(n)]` -/
def P7567268933801503288.Spec : Prop :=
  ∀ n, P7567268933801503288.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P332130923976532300

`abs(∑[2*A196199(n)])`
-/

namespace A072690.P332130923976532300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A072690.P332130923976532300

namespace A072690

/-- `abs(∑[2*A196199(n)])` -/
def P332130923976532300.Spec : Prop :=
  ∀ n, P332130923976532300.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P1242462036246632406

`abs(∑[2*A329116(n)])`
-/

namespace A072690.P1242462036246632406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A072690.P1242462036246632406

namespace A072690

/-- `abs(∑[2*A329116(n)])` -/
def P1242462036246632406.Spec : Prop :=
  ∀ n, P1242462036246632406.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P14191847196421270446

`∑[A020703(n+1)-(n+1)]`
-/

namespace A072690.P14191847196421270446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072690.P14191847196421270446

namespace A072690

/-- `∑[A020703(n+1)-(n+1)]` -/
def P14191847196421270446.Spec : Prop :=
  ∀ n, P14191847196421270446.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P1093458329390356775

`∑[A001844(floor(sqrt(n)))-(2*n+1)]`
-/

namespace A072690.P1093458329390356775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (Nat.sqrt n) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072690.P1093458329390356775

namespace A072690

/-- `∑[A001844(floor(sqrt(n)))-(2*n+1)]` -/
def P1093458329390356775.Spec : Prop :=
  ∀ n, P1093458329390356775.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P14743361306512293736

`(A080883(n)-1)*A071797(n+1)`
-/

namespace A072690.P14743361306512293736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080883 n - 1) * A071797 (n + 1)

end

end A072690.P14743361306512293736

namespace A072690

/-- `(A080883(n)-1)*A071797(n+1)` -/
def P14743361306512293736.Spec : Prop :=
  ∀ n, P14743361306512293736.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P10387069460492380671

`∑[1-Δ[A053615(n)²]]`
-/

namespace A072690.P10387069460492380671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072690.P10387069460492380671

namespace A072690

/-- `∑[1-Δ[A053615(n)²]]` -/
def P10387069460492380671.Spec : Prop :=
  ∀ n, P10387069460492380671.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P5642895137279616414

`A053186(n+1)*A068527(n+1)`
-/

namespace A072690.P5642895137279616414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n + 1) * A068527 (n + 1)

end

end A072690.P5642895137279616414

namespace A072690

/-- `A053186(n+1)*A068527(n+1)` -/
def P5642895137279616414.Spec : Prop :=
  ∀ n, P5642895137279616414.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P662255929883034215

`A053186(n+1)*A080883(n+1)`
-/

namespace A072690.P662255929883034215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n + 1) * A080883 (n + 1)

end

end A072690.P662255929883034215

namespace A072690

/-- `A053186(n+1)*A080883(n+1)` -/
def P662255929883034215.Spec : Prop :=
  ∀ n, P662255929883034215.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P387349030184672503

`A068527(n+1)*A071797(n+1)`
-/

namespace A072690.P387349030184672503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (n + 1) * A071797 (n + 1)

end

end A072690.P387349030184672503

namespace A072690

/-- `A068527(n+1)*A071797(n+1)` -/
def P387349030184672503.Spec : Prop :=
  ∀ n, P387349030184672503.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P3756960055390136342

`A053186(n+1)*A053186(A020703(n+2))`
-/

namespace A072690.P3756960055390136342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n + 1) * A053186 (A020703 (n + 2)).toNat

end

end A072690.P3756960055390136342

namespace A072690

/-- `A053186(n+1)*A053186(A020703(n+2))` -/
def P3756960055390136342.Spec : Prop :=
  ∀ n, P3756960055390136342.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P10389752321400556284

`(A072689(n+1)-A068527(n+1))*A068527(n+1)`
-/

namespace A072690.P10389752321400556284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072689 (n + 1) - A068527 (n + 1)) * A068527 (n + 1)

end

end A072690.P10389752321400556284

namespace A072690

/-- `(A072689(n+1)-A068527(n+1))*A068527(n+1)` -/
def P10389752321400556284.Spec : Prop :=
  ∀ n, P10389752321400556284.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P6025484098594506445

`A068527(n+1)*A068527(A020703(n+2))`
-/

namespace A072690.P6025484098594506445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (n + 1) * A068527 (A020703 (n + 2)).toNat

end

end A072690.P6025484098594506445

namespace A072690

/-- `A068527(n+1)*A068527(A020703(n+2))` -/
def P6025484098594506445.Spec : Prop :=
  ∀ n, P6025484098594506445.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P15263159174047844461

`A094053(A007606(n+1))`
-/

namespace A072690.P15263159174047844461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (A007606 (n + 1)).toNat

end

end A072690.P15263159174047844461

namespace A072690

/-- `A094053(A007606(n+1))` -/
def P15263159174047844461.Spec : Prop :=
  ∀ n, P15263159174047844461.a n = A072690 (n + 1)

end A072690

/-! ## A072690.P4157629310688705746

`A094053(A161983(n+1))`
-/

namespace A072690.P4157629310688705746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (A161983 (n + 1)).toNat

end

end A072690.P4157629310688705746

namespace A072690

/-- `A094053(A161983(n+1))` -/
def P4157629310688705746.Spec : Prop :=
  ∀ n, P4157629310688705746.a n = A072690 (n + 1)

end A072690

/-!
# A072691: Decimal expansion of Pi^2/12.

The programs for A072691, there is no canonical definition to state claims against.
-/

/-! ## A072691.P92947615940600108

`9-A354238(n)`
-/

namespace A072691.P92947615940600108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A354238 n

end

end A072691.P92947615940600108

/-!
# A072692: Sum of sigma(j) for 1<=j<=10^n, where sigma(j) is the sum of the divisors of j.

The programs for A072692, the canonical program `A072692.P2871588805626277779` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072692 has offset 0).

The definition of A072692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072692.P2871588805626277779

`A024916(10^n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072692

/-- `A024916(10^n)` -/
def P2871588805626277779.Spec : Prop :=
  ∀ n, P2871588805626277779.a n = A072692 n

theorem P2871588805626277779.correct : P2871588805626277779.Spec := by
  intro n
  simp only [A072692]

end A072692

/-! ## A072692.P11091597703961576095

`A049000(n)+A046915(n)`
-/

namespace A072692.P11091597703961576095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049000 n + A046915 n

end

end A072692.P11091597703961576095

namespace A072692

/-- `A049000(n)+A046915(n)` -/
def P11091597703961576095.Spec : Prop :=
  ∀ n, P11091597703961576095.a n = A072692 n

end A072692

/-! ## A072692.P3048371299696769258

`A011557(n)+A049000(n)+A046914(n)`
-/

namespace A072692.P3048371299696769258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + (A049000 n + A046914 n)

end

end A072692.P3048371299696769258

namespace A072692

/-- `A011557(n)+A049000(n)+A046914(n)` -/
def P3048371299696769258.Spec : Prop :=
  ∀ n, P3048371299696769258.a n = A072692 n

end A072692

/-! ## A072692.P15143073490412305258

`A049000(n)+A046914(n)+Δ[A002276(n)/2]`
-/

namespace A072692.P15143073490412305258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049000 n : ℚ) + ((A046914 n : ℚ) + (f1 (n + 1) - f1 n))

end

end A072692.P15143073490412305258

namespace A072692

/-- `A049000(n)+A046914(n)+Δ[A002276(n)/2]` -/
def P15143073490412305258.Spec : Prop :=
  ∀ n, P15143073490412305258.a n = (A072692 n : ℚ)

end A072692

/-! ## A072692.P17717470806277857545

`A049000(n)+A046914(n)+Δ[A002277(n)/3]`
-/

namespace A072692.P17717470806277857545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002277 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049000 n : ℚ) + ((A046914 n : ℚ) + (f1 (n + 1) - f1 n))

end

end A072692.P17717470806277857545

namespace A072692

/-- `A049000(n)+A046914(n)+Δ[A002277(n)/3]` -/
def P17717470806277857545.Spec : Prop :=
  ∀ n, P17717470806277857545.a n = (A072692 n : ℚ)

end A072692

/-!
# A072693: 

The programs for A072693, there is no canonical definition to state claims against.
-/

/-! ## A072693.P2523948379184790406

`A062192(5*n)`
-/

namespace A072693.P2523948379184790406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062192 (5 * n)

end

end A072693.P2523948379184790406

/-!
# A072694: 

The programs for A072694, there is no canonical definition to state claims against.
-/

/-! ## A072694.P6023071337124402649

`∏[A000040(n+1)]^A000040(n+1)`
-/

namespace A072694.P6023071337124402649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A072694.P6023071337124402649

/-!
# A072695: a(n) = lcm(d(n^2),d(n)), where d(n) = A000005, the number of divisors of n.

The programs for A072695, the canonical program `A072695.P12128296506412736913` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072695 has offset 1).

The definition of A072695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072695.P18045324553200696166

`lcm(Δ[A006218(n)], A048691(n+1))`
-/

namespace A072695.P18045324553200696166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A048691 (n + 1))

end

end A072695.P18045324553200696166

namespace A072695

/-- `lcm(Δ[A006218(n)], A048691(n+1))` -/
def P18045324553200696166.Spec : Prop :=
  ∀ n, (P18045324553200696166.a n : ℤ) = A072695 (n + 1)

end A072695

/-! ## A072695.P12128296506412736913

`A356574(n+1)/A061680(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072695

/-- `A356574(n+1)/A061680(n+1)` -/
def P12128296506412736913.Spec : Prop :=
  ∀ n, P12128296506412736913.a n = (A072695 (n + 1) : ℚ)

end A072695

/-! ## A072695.P14037393143412257224

`sqrt(lcm(A048691(n+1)², A035116(n+1)))`
-/

namespace A072695.P14037393143412257224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm (A048691 (n + 1) ^ 2) (A035116 (n + 1)) : ℝ)

end

end A072695.P14037393143412257224

namespace A072695

/-- `sqrt(lcm(A048691(n+1)², A035116(n+1)))` -/
def P14037393143412257224.Spec : Prop :=
  ∀ n, P14037393143412257224.a n = (A072695 (n + 1) : ℝ)

end A072695

/-! ## A072695.P7935676376125209171

`lcm(A000005(n+1), A048691(A000027(n+1)))`
-/

namespace A072695.P7935676376125209171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A048691 (A000027 (n + 1)).toNat)

end

end A072695.P7935676376125209171

namespace A072695

/-- `lcm(A000005(n+1), A048691(A000027(n+1)))` -/
def P7935676376125209171.Spec : Prop :=
  ∀ n, (P7935676376125209171.a n : ℤ) = A072695 (n + 1)

end A072695

/-! ## A072695.P3058306702384626795

`A000005(n+1)*A048691(n+1)/A061680(n+1)`
-/

namespace A072695.P3058306702384626795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A048691 (n + 1) : ℚ) / (A061680 (n + 1) : ℚ)

end

end A072695.P3058306702384626795

namespace A072695

/-- `A000005(n+1)*A048691(n+1)/A061680(n+1)` -/
def P3058306702384626795.Spec : Prop :=
  ∀ n, P3058306702384626795.a n = (A072695 (n + 1) : ℚ)

end A072695

/-! ## A072695.P3186462441439588620

`lcm(A329484((n+1)²), A329484(n+1))`
-/

namespace A072695.P3186462441439588620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A329484 ((n + 1) ^ 2)) (A329484 (n + 1))

end

end A072695.P3186462441439588620

namespace A072695

/-- `lcm(A329484((n+1)²), A329484(n+1))` -/
def P3186462441439588620.Spec : Prop :=
  ∀ n, (P3186462441439588620.a n : ℤ) = A072695 (n + 1)

end A072695

/-!
# A072696: a(n) = lcm(d(n^3), d(n)), where d(n) = A000005, the number of divisors of n.

The programs for A072696, the canonical program `A072696.P7100591324136406172` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072696 has offset 1).

The definition of A072696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072696.P7100591324136406172

`lcm(∏{e}[n+1, #+1], A048785(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072696

/-- `lcm(∏{e}[n+1, #+1], A048785(n+1))` -/
def P7100591324136406172.Spec : Prop :=
  ∀ n, (P7100591324136406172.a n : ℤ) = A072696 (n + 1)

theorem P7100591324136406172.correct : P7100591324136406172.Spec := by
  intro n
  simp only [A072696, Nat.add_sub_cancel]

end A072696

/-! ## A072696.P2850790060911587827

`lcm(Δ[A006218(n)], A048785(n+1))`
-/

namespace A072696.P2850790060911587827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A048785 (n + 1))

end

end A072696.P2850790060911587827

namespace A072696

/-- `lcm(Δ[A006218(n)], A048785(n+1))` -/
def P2850790060911587827.Spec : Prop :=
  ∀ n, (P2850790060911587827.a n : ℤ) = A072696 (n + 1)

end A072696

/-! ## A072696.P17652911022432700159

`A359037(n+1)/A069780(n+1)`
-/

namespace A072696.P17652911022432700159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359037 (n + 1) : ℚ) / (A069780 (n + 1) : ℚ)

end

end A072696.P17652911022432700159

namespace A072696

/-- `A359037(n+1)/A069780(n+1)` -/
def P17652911022432700159.Spec : Prop :=
  ∀ n, P17652911022432700159.a n = (A072696 (n + 1) : ℚ)

end A072696

/-! ## A072696.P13508043235717861464

`lcm(A048785(A332818(n+1)), A329484(n+1))`
-/

namespace A072696.P13508043235717861464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048785 (A332818 (n + 1)).toNat) (A329484 (n + 1))

end

end A072696.P13508043235717861464

namespace A072696

/-- `lcm(A048785(A332818(n+1)), A329484(n+1))` -/
def P13508043235717861464.Spec : Prop :=
  ∀ n, (P13508043235717861464.a n : ℤ) = A072696 (n + 1)

end A072696

/-! ## A072696.P5543626590650769899

`lcm(A000005(n+1), A092520((n+1)²))`
-/

namespace A072696.P5543626590650769899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A092520 ((n + 1) ^ 2))

end

end A072696.P5543626590650769899

namespace A072696

/-- `lcm(A000005(n+1), A092520((n+1)²))` -/
def P5543626590650769899.Spec : Prop :=
  ∀ n, (P5543626590650769899.a n : ℤ) = A072696 (n + 1)

end A072696

/-! ## A072696.P7081439319744085128

`lcm(A048785(A178442(n+1)), A179941(n+1))`
-/

namespace A072696.P7081439319744085128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048785 (A178442 (n + 1)).toNat) (A179941 (n + 1))

end

end A072696.P7081439319744085128

namespace A072696

/-- `lcm(A048785(A178442(n+1)), A179941(n+1))` -/
def P7081439319744085128.Spec : Prop :=
  ∀ n, (P7081439319744085128.a n : ℤ) = A072696 (n + 1)

end A072696

/-!
# A072697: Squarefree numbers such that the sum of the prime factors is a multiple of the number of prime factors.

The programs for A072697, the canonical program `A072697.P5096453765625540901` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072697 has offset 1).

The definition of A072697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072697.P1258276647264746630

`∪[A000040(n+1), A275384(n+1)]`
-/

namespace A072697.P1258276647264746630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072697.P1258276647264746630

namespace A072697

/-- `∪[A000040(n+1), A275384(n+1)]` -/
def P1258276647264746630.Spec : Prop :=
  ∀ n, (P1258276647264746630.a n : ℤ) = A072697 (n + 1)

end A072697

/-! ## A072697.P1333604431557550014

`∪[A070159(n+1), A275384(n+1)]`
-/

namespace A072697.P1333604431557550014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072697.P1333604431557550014

namespace A072697

/-- `∪[A070159(n+1), A275384(n+1)]` -/
def P1333604431557550014.Spec : Prop :=
  ∀ n, (P1333604431557550014.a n : ℤ) = A072697 (n + 1)

end A072697

/-! ## A072697.P1289719468444581255

`record[A007947(A286972(n+1))]`
-/

namespace A072697.P1289719468444581255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A286972 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072697.P1289719468444581255

namespace A072697

/-- `record[A007947(A286972(n+1))]` -/
def P1289719468444581255.Spec : Prop :=
  ∀ n, P1289719468444581255.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P17245237908763279794

`filter[A286972(n+1), A008966(#)]`
-/

namespace A072697.P17245237908763279794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A072697.P17245237908763279794

namespace A072697

/-- `filter[A286972(n+1), A008966(#)]` -/
def P17245237908763279794.Spec : Prop :=
  ∀ n, P17245237908763279794.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P9519532597741497160

`filter[A286972(n+1), A323154(#)]`
-/

namespace A072697.P9519532597741497160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A072697.P9519532597741497160

namespace A072697

/-- `filter[A286972(n+1), A323154(#)]` -/
def P9519532597741497160.Spec : Prop :=
  ∀ n, P9519532597741497160.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P5096453765625540901

`filter[A139316(n+1), A008966(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A072697

/-- `filter[A139316(n+1), A008966(#)]` -/
def P5096453765625540901.Spec : Prop :=
  ∀ n, P5096453765625540901.a n = A072697 (n + 1)

theorem P5096453765625540901.correct : P5096453765625540901.Spec := by
  intro n
  simp only [A072697, Nat.add_sub_cancel]

end A072697

/-! ## A072697.P11607594432653797714

`filter[A139316(n+1), A323154(#)]`
-/

namespace A072697.P11607594432653797714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A072697.P11607594432653797714

namespace A072697

/-- `filter[A139316(n+1), A323154(#)]` -/
def P11607594432653797714.Spec : Prop :=
  ∀ n, P11607594432653797714.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P16748366161948044193

`∩[A005117(n+1), A139316(n+1)]`
-/

namespace A072697.P16748366161948044193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072697.P16748366161948044193

namespace A072697

/-- `∩[A005117(n+1), A139316(n+1)]` -/
def P16748366161948044193.Spec : Prop :=
  ∀ n, (P16748366161948044193.a n : ℤ) = A072697 (n + 1)

end A072697

/-! ## A072697.P13575014405440870975

`record[∏{p}[A078175(n+1), #]]`
-/

namespace A072697.P13575014405440870975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072697.P13575014405440870975

namespace A072697

/-- `record[∏{p}[A078175(n+1), #]]` -/
def P13575014405440870975.Spec : Prop :=
  ∀ n, (P13575014405440870975.a n : ℤ) = A072697 (n + 1)

end A072697

/-! ## A072697.P13440411179419132843

`record[A007913(A078175(n+1))]`
-/

namespace A072697.P13440411179419132843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A078175 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072697.P13440411179419132843

namespace A072697

/-- `record[A007913(A078175(n+1))]` -/
def P13440411179419132843.Spec : Prop :=
  ∀ n, P13440411179419132843.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P11509361909373986608

`filter[A078175(n+1), A008966(#)]`
-/

namespace A072697.P11509361909373986608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A072697.P11509361909373986608

namespace A072697

/-- `filter[A078175(n+1), A008966(#)]` -/
def P11509361909373986608.Spec : Prop :=
  ∀ n, P11509361909373986608.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P14460502492094652744

`∩[A005117(n+1), A078175(n+1)]`
-/

namespace A072697.P14460502492094652744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072697.P14460502492094652744

namespace A072697

/-- `∩[A005117(n+1), A078175(n+1)]` -/
def P14460502492094652744.Spec : Prop :=
  ∀ n, (P14460502492094652744.a n : ℤ) = A072697 (n + 1)

end A072697

/-! ## A072697.P10795125756098121894

`record[A007913(A078174(n+1))]`
-/

namespace A072697.P10795125756098121894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A078174 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072697.P10795125756098121894

namespace A072697

/-- `record[A007913(A078174(n+1))]` -/
def P10795125756098121894.Spec : Prop :=
  ∀ n, P10795125756098121894.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P15303521533051343627

`filter[A078174(n+1), A008966(#)]`
-/

namespace A072697.P15303521533051343627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A072697.P15303521533051343627

namespace A072697

/-- `filter[A078174(n+1), A008966(#)]` -/
def P15303521533051343627.Spec : Prop :=
  ∀ n, P15303521533051343627.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P14143336982325820980

`filter[A078174(n+1), A323154(#)]`
-/

namespace A072697.P14143336982325820980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A072697.P14143336982325820980

namespace A072697

/-- `filter[A078174(n+1), A323154(#)]` -/
def P14143336982325820980.Spec : Prop :=
  ∀ n, P14143336982325820980.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P5725109705043420687

`∩[A005117(n+1), A078174(n+1)]`
-/

namespace A072697.P5725109705043420687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072697.P5725109705043420687

namespace A072697

/-- `∩[A005117(n+1), A078174(n+1)]` -/
def P5725109705043420687.Spec : Prop :=
  ∀ n, (P5725109705043420687.a n : ℤ) = A072697 (n + 1)

end A072697

/-! ## A072697.P10142410354447080994

`filter[A175418(n+1), A008966(#)]`
-/

namespace A072697.P10142410354447080994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A072697.P10142410354447080994

namespace A072697

/-- `filter[A175418(n+1), A008966(#)]` -/
def P10142410354447080994.Spec : Prop :=
  ∀ n, P10142410354447080994.a n = A072697 (n + 1)

end A072697

/-! ## A072697.P13876045162575912253

`∩[A005117(n+1), A175418(n+1)]`
-/

namespace A072697.P13876045162575912253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072697.P13876045162575912253

namespace A072697

/-- `∩[A005117(n+1), A175418(n+1)]` -/
def P13876045162575912253.Spec : Prop :=
  ∀ n, (P13876045162575912253.a n : ℤ) = A072697 (n + 1)

end A072697

/-! ## A072697.P16301668940316399676

`∩[A078174(n+1), A144338(n+1)]`
-/

namespace A072697.P16301668940316399676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072697.P16301668940316399676

namespace A072697

/-- `∩[A078174(n+1), A144338(n+1)]` -/
def P16301668940316399676.Spec : Prop :=
  ∀ n, (P16301668940316399676.a n : ℤ) = A072697 (n + 1)

end A072697

/-! ## A072697.P13266794902953430385

`∩[A078175(n+1), A144338(n+1)]`
-/

namespace A072697.P13266794902953430385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072697.P13266794902953430385

namespace A072697

/-- `∩[A078175(n+1), A144338(n+1)]` -/
def P13266794902953430385.Spec : Prop :=
  ∀ n, (P13266794902953430385.a n : ℤ) = A072697 (n + 1)

end A072697

/-!
# A072698: Sum of prime factors of A072697(n).

The programs for A072698, the canonical program `A072698.P923313346502833611` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072698 has offset 1).

The definition of A072698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072698.P923313346502833611

`∑{p}[A072697(n+1), #]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A072698

/-- `∑{p}[A072697(n+1), #]` -/
def P923313346502833611.Spec : Prop :=
  ∀ n, (P923313346502833611.a n : ℤ) = A072698 (n + 1)

theorem P923313346502833611.correct : P923313346502833611.Spec := by
  intro n
  simp only [A072698, Nat.add_sub_cancel]

end A072698

/-! ## A072698.P13703434323614411641

`A001414(A072697(n+1))`
-/

namespace A072698.P13703434323614411641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A072697 (n + 1)).toNat

end

end A072698.P13703434323614411641

namespace A072698

/-- `A001414(A072697(n+1))` -/
def P13703434323614411641.Spec : Prop :=
  ∀ n, P13703434323614411641.a n = A072698 (n + 1)

end A072698

/-! ## A072698.P1750356680497648501

`A072699(n+1)*A072700(n+1)`
-/

namespace A072698.P1750356680497648501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072699 (n + 1) * A072700 (n + 1)

end

end A072698.P1750356680497648501

namespace A072698

/-- `A072699(n+1)*A072700(n+1)` -/
def P1750356680497648501.Spec : Prop :=
  ∀ n, P1750356680497648501.a n = A072698 (n + 1)

end A072698

/-! ## A072698.P3866378565144326663

`A008472(A072697(2*n+1-n))`
-/

namespace A072698.P3866378565144326663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A072697 (2 * n + 1 - n)).toNat

end

end A072698.P3866378565144326663

namespace A072698

/-- `A008472(A072697(2*n+1-n))` -/
def P3866378565144326663.Spec : Prop :=
  ∀ n, P3866378565144326663.a n = A072698 (n + 1)

end A072698

/-! ## A072698.P3437069033370064714

`A001221(A072697(n+1))*A072700(n+1)`
-/

namespace A072698.P3437069033370064714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A072697 (n + 1)).toNat * A072700 (n + 1)

end

end A072698.P3437069033370064714

namespace A072698

/-- `A001221(A072697(n+1))*A072700(n+1)` -/
def P3437069033370064714.Spec : Prop :=
  ∀ n, P3437069033370064714.a n = A072698 (n + 1)

end A072698

/-! ## A072698.P16223666775741383017

`A008472(A072697(n+1)²)`
-/

namespace A072698.P16223666775741383017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A072697 (n + 1) ^ 2).toNat

end

end A072698.P16223666775741383017

namespace A072698

/-- `A008472(A072697(n+1)²)` -/
def P16223666775741383017.Spec : Prop :=
  ∀ n, P16223666775741383017.a n = A072698 (n + 1)

end A072698

/-! ## A072698.P15179604103252861179

`A008472(A072697(n+1)*A072697(n+1))`
-/

namespace A072698.P15179604103252861179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A072697 (n + 1) * A072697 (n + 1)).toNat

end

end A072698.P15179604103252861179

namespace A072698

/-- `A008472(A072697(n+1)*A072697(n+1))` -/
def P15179604103252861179.Spec : Prop :=
  ∀ n, P15179604103252861179.a n = A072698 (n + 1)

end A072698

/-! ## A072698.P3952544279783490350

`A063958(A072697(n+1)²)`
-/

namespace A072698.P3952544279783490350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063958 (A072697 (n + 1) ^ 2).toNat

end

end A072698.P3952544279783490350

namespace A072698

/-- `A063958(A072697(n+1)²)` -/
def P3952544279783490350.Spec : Prop :=
  ∀ n, P3952544279783490350.a n = A072698 (n + 1)

end A072698

/-!
# A072699: Number of prime factors of A072697(n).

The programs for A072699, the canonical program `A072699.P9031974156586421973` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072699 has offset 1).

The definition of A072699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072699.P9031974156586421973

`∑{e}[A072697(n+1), #]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A072699

/-- `∑{e}[A072697(n+1), #]` -/
def P9031974156586421973.Spec : Prop :=
  ∀ n, (P9031974156586421973.a n : ℤ) = A072699 (n + 1)

theorem P9031974156586421973.correct : P9031974156586421973.Spec := by
  intro n
  simp only [A072699, Nat.add_sub_cancel]

end A072699

/-! ## A072699.P15293692800180054998

`A001221(A072697(n+1))`
-/

namespace A072699.P15293692800180054998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A072697 (n + 1)).toNat

end

end A072699.P15293692800180054998

namespace A072699

/-- `A001221(A072697(n+1))` -/
def P15293692800180054998.Spec : Prop :=
  ∀ n, P15293692800180054998.a n = A072699 (n + 1)

end A072699

/-! ## A072699.P14447345176712301364

`A072698(n+1)/A072700(n+1)`
-/

namespace A072699.P14447345176712301364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072698 (n + 1) : ℚ) / (A072700 (n + 1) : ℚ)

end

end A072699.P14447345176712301364

namespace A072699

/-- `A072698(n+1)/A072700(n+1)` -/
def P14447345176712301364.Spec : Prop :=
  ∀ n, P14447345176712301364.a n = (A072699 (n + 1) : ℚ)

end A072699

/-! ## A072699.P6932203114458753880

`A001222(A072697(2*n+1-n))`
-/

namespace A072699.P6932203114458753880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072697 (2 * n + 1 - n)).toNat

end

end A072699.P6932203114458753880

namespace A072699

/-- `A001222(A072697(2*n+1-n))` -/
def P6932203114458753880.Spec : Prop :=
  ∀ n, P6932203114458753880.a n = A072699 (n + 1)

end A072699

/-! ## A072699.P9799357223955414966

`∑{e}[∪[A000040(n+1), A275384(n+1)], #]`
-/

namespace A072699.P9799357223955414966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275384 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A072699.P9799357223955414966

namespace A072699

/-- `∑{e}[∪[A000040(n+1), A275384(n+1)], #]` -/
def P9799357223955414966.Spec : Prop :=
  ∀ n, (P9799357223955414966.a n : ℤ) = A072699 (n + 1)

end A072699

/-! ## A072699.P11753722119502540488

`A001414(A072697(n+1))/A072700(n+1)`
-/

namespace A072699.P11753722119502540488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A072697 (n + 1)).toNat : ℚ) / (A072700 (n + 1) : ℚ)

end

end A072699.P11753722119502540488

namespace A072699

/-- `A001414(A072697(n+1))/A072700(n+1)` -/
def P11753722119502540488.Spec : Prop :=
  ∀ n, P11753722119502540488.a n = (A072699 (n + 1) : ℚ)

end A072699

/-! ## A072699.P6650673612705535451

`A001222(record[∏{p}[A078175(n+1), #]])`
-/

namespace A072699.P6650673612705535451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A072699.P6650673612705535451

namespace A072699

/-- `A001222(record[∏{p}[A078175(n+1), #]])` -/
def P6650673612705535451.Spec : Prop :=
  ∀ n, P6650673612705535451.a n = A072699 (n + 1)

end A072699

/-! ## A072699.P1204125993856280966

`∑{e}[record[A007947(A078174(n+1))], #]`
-/

namespace A072699.P1204125993856280966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A078174 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A072699.P1204125993856280966

namespace A072699

/-- `∑{e}[record[A007947(A078174(n+1))], #]` -/
def P1204125993856280966.Spec : Prop :=
  ∀ n, (P1204125993856280966.a n : ℤ) = A072699 (n + 1)

end A072699

/-! ## A072699.P1221026532110791861

`∑{e}[∩[A064594(n+1), A139316(n+1)], #]`
-/

namespace A072699.P1221026532110791861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139316 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A072699.P1221026532110791861

namespace A072699

/-- `∑{e}[∩[A064594(n+1), A139316(n+1)], #]` -/
def P1221026532110791861.Spec : Prop :=
  ∀ n, (P1221026532110791861.a n : ℤ) = A072699 (n + 1)

end A072699

/-! ## A072699.P964989731944520672

`A001221(∩[A064594(n+1), A139316(n+1)])`
-/

namespace A072699.P964989731944520672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139316 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A072699.P964989731944520672

namespace A072699

/-- `A001221(∩[A064594(n+1), A139316(n+1)])` -/
def P964989731944520672.Spec : Prop :=
  ∀ n, P964989731944520672.a n = A072699 (n + 1)

end A072699

/-! ## A072699.P7206585657280349067

`∑{p}[A072697(n+1), A223135(#)]`
-/

namespace A072699.P7206585657280349067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A223135 p

end

end A072699.P7206585657280349067

namespace A072699

/-- `∑{p}[A072697(n+1), A223135(#)]` -/
def P7206585657280349067.Spec : Prop :=
  ∀ n, P7206585657280349067.a n = A072699 (n + 1)

end A072699

/-! ## A072699.P2138189541357656414

`A001222(A072697(n+1)²)/2`
-/

namespace A072699.P2138189541357656414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A072697 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A072699.P2138189541357656414

namespace A072699

/-- `A001222(A072697(n+1)²)/2` -/
def P2138189541357656414.Spec : Prop :=
  ∀ n, P2138189541357656414.a n = (A072699 (n + 1) : ℚ)

end A072699

