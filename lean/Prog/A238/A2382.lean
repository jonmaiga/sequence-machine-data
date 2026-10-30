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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A238203: Squares s such that s^2+s+41 is prime.

The programs for A238203, there is no canonical definition to state claims against.
-/

/-! ## A238203.P1700652511078208373

`∩[A056561(n+2), n²]`
-/

namespace A238203.P1700652511078208373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A238203.P1700652511078208373

/-! ## A238203.P16648131304180292364

`filter[A056561(n+2), A010052(#)]`
-/

namespace A238203.P16648131304180292364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A238203.P16648131304180292364

/-! ## A238203.P17012315217911128401

`record[A058933(A135764(n+1))²]`
-/

namespace A238203.P17012315217911128401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A135764 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238203.P17012315217911128401

/-! ## A238203.P3281984780684617194

`A000290(record[A058933(A135764(n+1))])`
-/

namespace A238203.P3281984780684617194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A135764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238203.P3281984780684617194

/-! ## A238203.P10027894772170072939

`record[A058933(A135764(n+1))]^(A057427(n)+1)`
-/

namespace A238203.P10027894772170072939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A135764 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A238203.P10027894772170072939

/-!
# A238204: Even numbers n such that the difference with the preceding prime is prime.

The programs for A238204, the canonical program `A238204.P8101858339685720932` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238204 has offset 1).

The definition of A238204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238204.P8101858339685720932

`2*eq[2, A175078(2*n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A238204

/-- `2*eq[2, A175078(2*n+1)]` -/
def P8101858339685720932.Spec : Prop :=
  ∀ n, (P8101858339685720932.a n : ℤ) = A238204 (n + 1)

theorem P8101858339685720932.correct : P8101858339685720932.Spec := by
  intro n
  simp only [A238204, Nat.add_sub_cancel]

end A238204

/-! ## A238204.P2556106932352174666

`eq[A010717(n), A059964(n+1)]`
-/

namespace A238204.P2556106932352174666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P2556106932352174666

namespace A238204

/-- `eq[A010717(n), A059964(n+1)]` -/
def P2556106932352174666.Spec : Prop :=
  ∀ n, (P2556106932352174666.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P6899918711402749954

`eq[A010719(n), A059964(n+1)]`
-/

namespace A238204.P6899918711402749954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P6899918711402749954

namespace A238204

/-- `eq[A010719(n), A059964(n+1)]` -/
def P6899918711402749954.Spec : Prop :=
  ∀ n, (P6899918711402749954.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P13282344071036915572

`eq[A010720(n), A059964(n+1)]`
-/

namespace A238204.P13282344071036915572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P13282344071036915572

namespace A238204

/-- `eq[A010720(n), A059964(n+1)]` -/
def P13282344071036915572.Spec : Prop :=
  ∀ n, (P13282344071036915572.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P9216979375891655834

`eq[A010694(n), A175078(n+1)]`
-/

namespace A238204.P9216979375891655834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P9216979375891655834

namespace A238204

/-- `eq[A010694(n), A175078(n+1)]` -/
def P9216979375891655834.Spec : Prop :=
  ∀ n, (P9216979375891655834.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P9997460854984128108

`eq[A010695(n), A175078(n+1)]`
-/

namespace A238204.P9997460854984128108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P9997460854984128108

namespace A238204

/-- `eq[A010695(n), A175078(n+1)]` -/
def P9997460854984128108.Spec : Prop :=
  ∀ n, (P9997460854984128108.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P234789735072444621

`eq[A010696(n), A175078(n+1)]`
-/

namespace A238204.P234789735072444621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P234789735072444621

namespace A238204

/-- `eq[A010696(n), A175078(n+1)]` -/
def P234789735072444621.Spec : Prop :=
  ∀ n, (P234789735072444621.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P17336607904217751744

`eq[A010697(n), A175078(n+1)]`
-/

namespace A238204.P17336607904217751744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010697 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P17336607904217751744

namespace A238204

/-- `eq[A010697(n), A175078(n+1)]` -/
def P17336607904217751744.Spec : Prop :=
  ∀ n, (P17336607904217751744.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P12498682536363625237

`eq[A010698(n), A175078(n+1)]`
-/

namespace A238204.P12498682536363625237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P12498682536363625237

namespace A238204

/-- `eq[A010698(n), A175078(n+1)]` -/
def P12498682536363625237.Spec : Prop :=
  ∀ n, (P12498682536363625237.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P14106423110075200445

`eq[A010699(n), A175078(n+1)]`
-/

namespace A238204.P14106423110075200445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P14106423110075200445

namespace A238204

/-- `eq[A010699(n), A175078(n+1)]` -/
def P14106423110075200445.Spec : Prop :=
  ∀ n, (P14106423110075200445.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P3622825436556905769

`eq[A010700(n), A175078(n+1)]`
-/

namespace A238204.P3622825436556905769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P3622825436556905769

namespace A238204

/-- `eq[A010700(n), A175078(n+1)]` -/
def P3622825436556905769.Spec : Prop :=
  ∀ n, (P3622825436556905769.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P5736665055947659792

`eq[A106469(n), A175078(n+1)]`
-/

namespace A238204.P5736665055947659792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P5736665055947659792

namespace A238204

/-- `eq[A106469(n), A175078(n+1)]` -/
def P5736665055947659792.Spec : Prop :=
  ∀ n, (P5736665055947659792.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P455541400312610907

`eq[A113683(n), A175078(n+1)]`
-/

namespace A238204.P455541400312610907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P455541400312610907

namespace A238204

/-- `eq[A113683(n), A175078(n+1)]` -/
def P455541400312610907.Spec : Prop :=
  ∀ n, (P455541400312610907.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P16948305895403515886

`eq[A133265(n), A175078(n+1)]`
-/

namespace A238204.P16948305895403515886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P16948305895403515886

namespace A238204

/-- `eq[A133265(n), A175078(n+1)]` -/
def P16948305895403515886.Spec : Prop :=
  ∀ n, (P16948305895403515886.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P2706114016526140750

`eq[A175078(n+1), A266256(n)]`
-/

namespace A238204.P2706114016526140750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P2706114016526140750

namespace A238204

/-- `eq[A175078(n+1), A266256(n)]` -/
def P2706114016526140750.Spec : Prop :=
  ∀ n, (P2706114016526140750.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P9076794204923442536

`eq[A175078(n+1), A266662(n)]`
-/

namespace A238204.P9076794204923442536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P9076794204923442536

namespace A238204

/-- `eq[A175078(n+1), A266662(n)]` -/
def P9076794204923442536.Spec : Prop :=
  ∀ n, (P9076794204923442536.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P15223638480413153537

`eq[A175078(n+1), A266722(n)]`
-/

namespace A238204.P15223638480413153537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P15223638480413153537

namespace A238204

/-- `eq[A175078(n+1), A266722(n)]` -/
def P15223638480413153537.Spec : Prop :=
  ∀ n, (P15223638480413153537.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P4948310841655834154

`eq[A175078(n+1), A280193(n)]`
-/

namespace A238204.P4948310841655834154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P4948310841655834154

namespace A238204

/-- `eq[A175078(n+1), A280193(n)]` -/
def P4948310841655834154.Spec : Prop :=
  ∀ n, (P4948310841655834154.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P18118769614364253852

`eq[A175078(n+1), A280560(n)]`
-/

namespace A238204.P18118769614364253852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P18118769614364253852

namespace A238204

/-- `eq[A175078(n+1), A280560(n)]` -/
def P18118769614364253852.Spec : Prop :=
  ∀ n, (P18118769614364253852.a n : ℤ) = A238204 (n + 1)

end A238204

/-! ## A238204.P10070523352803562656

`eq[A111982(n), A175078(n+1)]`
-/

namespace A238204.P10070523352803562656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238204.P10070523352803562656

namespace A238204

/-- `eq[A111982(n), A175078(n+1)]` -/
def P10070523352803562656.Spec : Prop :=
  ∀ n, (P10070523352803562656.a n : ℤ) = A238204 (n + 1)

end A238204

/-!
# A238206: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(0,k) is A007494(k) and T(n,k) = 3*T(n-1,k) + 1 for n>0.

The programs for A238206, there is no canonical definition to state claims against.
-/

/-! ## A238206.P15696525562741275881

`(3+3^(col(n)+1)*(2*floor(3*(row(n)-col(n)+1)/2)-1))/6-1`
-/

namespace A238206.P15696525562741275881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (3 ^ (SequenceMachineLib.triCol n + 1) : ℤ) * (2 * ⌊(3 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / 2⌋ - 1) : ℚ) / 6 - 1

end

end A238206.P15696525562741275881

/-! ## A238206.P15803040067327333534

`A254051(n+1)-1`
-/

namespace A238206.P15803040067327333534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (n + 1) - 1

end

end A238206.P15803040067327333534

/-! ## A238206.P18266139672945214204

`floor(A135765(n+1)/2)`
-/

namespace A238206.P18266139672945214204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135765 (n + 1) : ℚ) / 2⌋

end

end A238206.P18266139672945214204

/-! ## A238206.P16955031866494431687

`A191450(∑[char[∑[n]]]²-n)-1`
-/

namespace A238206.P16955031866494431687
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A238206.P16955031866494431687

/-! ## A238206.P13047082286090846067

`(A135765(gcd(n, n+1)+n)-1)/2`
-/

namespace A238206.P13047082286090846067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135765 (Nat.gcd n (n + 1) + n) - 1 : ℚ) / 2

end

end A238206.P13047082286090846067

/-! ## A238206.P15414735512118977701

`-xor(A254051(-xor(n, -1))-2, -1)`
-/

namespace A238206.P15414735512118977701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A254051 (-Int.xor (n : ℤ) (-1)).toNat - 2) (-1)

end

end A238206.P15414735512118977701

/-! ## A238206.P10385968680644353857

`A108228(A254053(n+1))`
-/

namespace A238206.P10385968680644353857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 (A254053 (n + 1)).toNat

end

end A238206.P10385968680644353857

/-! ## A238206.P9629766865363803911

`A014682(A135765(n+1)-1)`
-/

namespace A238206.P9629766865363803911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A135765 (n + 1) - 1).toNat

end

end A238206.P9629766865363803911

/-! ## A238206.P6826642027554593753

`A014682(xor(1, A135765(n+1)))`
-/

namespace A238206.P6826642027554593753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A135765 (n + 1))).toNat

end

end A238206.P6826642027554593753

/-! ## A238206.P14823663240223819533

`A135765(n+1)%A254051(n+1)`
-/

namespace A238206.P14823663240223819533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135765 (n + 1)) (A254051 (n + 1))

end

end A238206.P14823663240223819533

/-!
# A238207: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(0,k) is A032766(k) and T(n,k) = 3*T(n-1,k) + 2 for n>0.

The programs for A238207, there is no canonical definition to state claims against.
-/

/-! ## A238207.P8373664903714277522

`floor((3*(row(n)-col(n)+1)-1)/2)*3^col(n)-1`
-/

namespace A238207.P8373664903714277522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1 : ℚ) / 2⌋ * (3 ^ SequenceMachineLib.triCol n : ℤ) - 1

end

end A238207.P8373664903714277522

/-! ## A238207.P15904790622803782512

`A141396(n)-1`
-/

namespace A238207.P15904790622803782512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141396 n - 1

end

end A238207.P15904790622803782512

/-! ## A238207.P13061987964039771761

`A280193(A033873(n))+A141396(n)`
-/

namespace A238207.P13061987964039771761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A033873 n).toNat + A141396 n

end

end A238207.P13061987964039771761

/-! ## A238207.P13585693026237990374

`A280193(A069489(n+1))+A141396(n)`
-/

namespace A238207.P13585693026237990374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A069489 (n + 1)).toNat + A141396 n

end

end A238207.P13585693026237990374

/-! ## A238207.P11363505789523289512

`A280193(A338141(3*(n+1)))+A141396(n)`
-/

namespace A238207.P11363505789523289512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A338141 (3 * (n + 1))).toNat + A141396 n

end

end A238207.P11363505789523289512

/-! ## A238207.P15482251299360863476

`A023443(A141396(n))`
-/

namespace A238207.P15482251299360863476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A141396 n).toNat

end

end A238207.P15482251299360863476

/-!
# A238208: The total number of 1's in all partitions of n into an odd number of distinct parts.

The programs for A238208, there is no canonical definition to state claims against.
-/

/-! ## A238208.P11248587835749779888

`A096765(n)-A238215(n)`
-/

namespace A238208.P11248587835749779888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n - A238215 n

end

end A238208.P11248587835749779888

/-! ## A238208.P9402587344859035376

`A238215(n)+A078616(abs(A024000(n)))`
-/

namespace A238208.P9402587344859035376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 n + A078616 |A024000 n|.toNat

end

end A238208.P9402587344859035376

/-! ## A238208.P2156886199523090483

`A000009(n)-(A238215(n)+A025147(n))`
-/

namespace A238208.P2156886199523090483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A238215 n + A025147 n)

end

end A238208.P2156886199523090483

/-! ## A238208.P10426425517240464619

`A078616(n)+A238215(n)-A010815(n)`
-/

namespace A238208.P10426425517240464619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 n + (A238215 n - A010815 n)

end

end A238208.P10426425517240464619

/-! ## A238208.P17485759728176737001

`A067659(n)-A238215(n+1)`
-/

namespace A238208.P17485759728176737001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n - A238215 (n + 1)

end

end A238208.P17485759728176737001

/-! ## A238208.P13307861469740846663

`A067659(n)-Δ[A238215(n)]-A238215(n)`
-/

namespace A238208.P13307861469740846663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n - (f1 (n + 1) - f1 n) - A238215 n

end

end A238208.P13307861469740846663

/-! ## A238208.P11925957688581529658

`A264403(A027379(n))-A238215(n)`
-/

namespace A238208.P11925957688581529658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (A027379 n).toNat - A238215 n

end

end A238208.P11925957688581529658

/-! ## A238208.P16139356441066484883

`A238450(A117950(n)-A133263(n))`
-/

namespace A238208.P16139356441066484883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (A117950 n - A133263 n).toNat

end

end A238208.P16139356441066484883

/-!
# A238209: The total number of 2's in all partitions of n into an odd number of distinct parts.

The programs for A238209, there is no canonical definition to state claims against.
-/

/-! ## A238209.P3826250375090666865

`A067659(n)-A238217(n+2)`
-/

namespace A238209.P3826250375090666865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n - A238217 (n + 2)

end

end A238209.P3826250375090666865

/-! ## A238209.P13315204631295767159

`A000009(n)-A067661(n)-A238217(n+2)`
-/

namespace A238209.P13315204631295767159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A067661 n - A238217 (n + 2)

end

end A238209.P13315204631295767159

/-! ## A238209.P17923055994431315860

`A067661(n)-A010815(n)-A238217(n+2)`
-/

namespace A238209.P17923055994431315860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A010815 n - A238217 (n + 2)

end

end A238209.P17923055994431315860

/-! ## A238209.P2915758154385019541

`A238215(n+1)+A238208(n)-A238217(n+2)`
-/

namespace A238209.P2915758154385019541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 (n + 1) + A238208 n - A238217 (n + 2)

end

end A238209.P2915758154385019541

/-! ## A238209.P16634651567869382913

`A035457(2*n)-A067661(n)-A238217(n+2)`
-/

namespace A238209.P16634651567869382913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A067661 n - A238217 (n + 2)

end

end A238209.P16634651567869382913

/-! ## A238209.P17841547954407657906

`A015716(A152948(n+1))-A238217(n)`
-/

namespace A238209.P17841547954407657906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A152948 (n + 1)).toNat - A238217 n

end

end A238209.P17841547954407657906

/-! ## A238209.P6906326250254499695

`A238450(C(n, 2)+2)`
-/

namespace A238209.P6906326250254499695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (Nat.choose n 2 + 2)

end

end A238209.P6906326250254499695

/-! ## A238209.P15118354679558594416

`A238450(∑[n-1]+3)`
-/

namespace A238209.P15118354679558594416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A238209.P15118354679558594416

/-! ## A238209.P1030995121705970683

`A238450(A089071(n+1))%(n+1)²`
-/

namespace A238209.P1030995121705970683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238450 (A089071 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A238209.P1030995121705970683

/-!
# A238210: The total number of 3's in all partitions of n into an odd number of distinct parts.

The programs for A238210, there is no canonical definition to state claims against.
-/

/-! ## A238210.P4400443450770117157

`A067659(n)-A238218(n+3)`
-/

namespace A238210.P4400443450770117157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n - A238218 (n + 3)

end

end A238210.P4400443450770117157

/-! ## A238210.P11620223983945337428

`A238450(∑[abs(1-(char[2]+n))]+1)`
-/

namespace A238210.P11620223983945337428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A238210.P11620223983945337428

/-! ## A238210.P908912694793313494

`A238450(A152949(n+1))%A000041(n)`
-/

namespace A238210.P908912694793313494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238450 (A152949 (n + 1)).toNat) (A000041 n)

end

end A238210.P908912694793313494

/-! ## A238210.P2385008428667580912

`A238450(A152949(n+1))-A170867(n)%3`
-/

namespace A238210.P2385008428667580912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (A152949 (n + 1)).toNat - Int.tmod (A170867 n) 3

end

end A238210.P2385008428667580912

/-! ## A238210.P16905691839996812202

`A238450(A152949(n+1))-A000007(A327968(n))`
-/

namespace A238210.P16905691839996812202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (A152949 (n + 1)).toNat - A000007 (A327968 n).toNat

end

end A238210.P16905691839996812202

/-!
# A238211: The total number of 4's in all partitions of n into an odd number of distinct parts.

The programs for A238211, there is no canonical definition to state claims against.
-/

/-! ## A238211.P5443377298039276602

`A238450(∑[n-1]+5)`
-/

namespace A238211.P5443377298039276602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A238211.P5443377298039276602

/-!
# A238212: The total number of 5's in all partitions of n into an odd number of distinct parts.

The programs for A238212, there is no canonical definition to state claims against.
-/

/-! ## A238212.P10351480243025121720

`A238450(A288937(n+2))`
-/

namespace A238212.P10351480243025121720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (A288937 (n + 2)).toNat

end

end A238212.P10351480243025121720

/-!
# A238215: The total number of 1's in all partitions of n into an even number of distinct parts.

The programs for A238215, there is no canonical definition to state claims against.
-/

/-! ## A238215.P11261871274138841465

`A096765(n)-A238208(n)`
-/

namespace A238215.P11261871274138841465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n - A238208 n

end

end A238215.P11261871274138841465

/-! ## A238215.P5685760992688744152

`A067661(n)-A238208(n+1)`
-/

namespace A238215.P5685760992688744152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A238208 (n + 1)

end

end A238215.P5685760992688744152

/-! ## A238215.P9448506722468891065

`A238208(n)-A078616(abs(A024000(n)))`
-/

namespace A238215.P9448506722468891065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238208 n - A078616 |A024000 n|.toNat

end

end A238215.P9448506722468891065

/-! ## A238215.P17261858083231153510

`A000009(n)-(A238208(n)+A025147(n))`
-/

namespace A238215.P17261858083231153510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A238208 n + A025147 n)

end

end A238215.P17261858083231153510

/-! ## A238215.P1591186287037103223

`A067661(n)-Δ[A238208(n)]-A238208(n)`
-/

namespace A238215.P1591186287037103223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - (f1 (n + 1) - f1 n) - A238208 n

end

end A238215.P1591186287037103223

/-! ## A238215.P11397000302926289469

`A000009(n)-(A238208(n+1)+A067659(n))`
-/

namespace A238215.P11397000302926289469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A238208 (n + 1) + A067659 n)

end

end A238215.P11397000302926289469

/-! ## A238215.P12043404535970817927

`A032303(n)-(A238208(n)+A000009(n))`
-/

namespace A238215.P12043404535970817927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032303 n - (A238208 n + A000009 n)

end

end A238215.P12043404535970817927

/-! ## A238215.P4412054392532199517

`(A032303(n)-A238208(n))%A081360(n)`
-/

namespace A238215.P4412054392532199517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032303 n - A238208 n) (A081360 n)

end

end A238215.P4412054392532199517

/-! ## A238215.P14394562927412102780

`A264403(A027379(n))-A238208(n)`
-/

namespace A238215.P14394562927412102780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (A027379 n).toNat - A238208 n

end

end A238215.P14394562927412102780

/-! ## A238215.P12505286268054991574

`A238451(C(n, 2)+1)`
-/

namespace A238215.P12505286268054991574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238451 (Nat.choose n 2 + 1)

end

end A238215.P12505286268054991574

/-!
# A238216: Starting with a(1) = 3, a(2) = 5, a(n+1) is the smallest prime number greater than the previous term a(n) such that there exists k satisfying 1<=k<n, a(n+1) = 2*a(n) + a(k).

The programs for A238216, there is no canonical definition to state claims against.
-/

/-! ## A238216.P13576663638832287950

`A063905(A057819(n))`
-/

namespace A238216.P13576663638832287950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A057819 n).toNat

end

end A238216.P13576663638832287950

/-! ## A238216.P16789100453655214524

`A063905(A047037(n+1))`
-/

namespace A238216.P16789100453655214524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A047037 (n + 1)).toNat

end

end A238216.P16789100453655214524

/-! ## A238216.P5672456387602371088

`A063905(A087946(n+1))`
-/

namespace A238216.P5672456387602371088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A087946 (n + 1)).toNat

end

end A238216.P5672456387602371088

/-!
# A238217: The total number of 2's in all partitions of n into an even number of distinct parts.

The programs for A238217, there is no canonical definition to state claims against.
-/

/-! ## A238217.P15163464567957605791

`A067661(n)-A238209(n+2)`
-/

namespace A238217.P15163464567957605791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A238209 (n + 2)

end

end A238217.P15163464567957605791

/-! ## A238217.P8540981355587226072

`A067659(n)+A010815(n)-A238209(n+2)`
-/

namespace A238217.P8540981355587226072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + A010815 n - A238209 (n + 2)

end

end A238217.P8540981355587226072

/-! ## A238217.P2354701490412311999

`abs(A081360(n))-A067659(n)-A238209(n+2)`
-/

namespace A238217.P2354701490412311999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A067659 n - A238209 (n + 2)

end

end A238217.P2354701490412311999

/-! ## A238217.P3434421747622095563

`A238215(n)+A238208(n+1)-A238209(n+2)`
-/

namespace A238217.P3434421747622095563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 n + A238208 (n + 1) - A238209 (n + 2)

end

end A238217.P3434421747622095563

/-! ## A238217.P17613502317894436235

`A007706(n)+A067659(n)-1-A238209(n+2)`
-/

namespace A238217.P17613502317894436235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 n + (A067659 n - 1) - A238209 (n + 2)

end

end A238217.P17613502317894436235

/-! ## A238217.P14410017376265617910

`A015716(∑[abs(1-n)]+1)-A238209(n)`
-/

namespace A238217.P14410017376265617910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - A238209 n

end

end A238217.P14410017376265617910

/-! ## A238217.P8742166818043355876

`A238451(C(n, 2)+2)`
-/

namespace A238217.P8742166818043355876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238451 (Nat.choose n 2 + 2)

end

end A238217.P8742166818043355876

/-! ## A238217.P15882818900262160348

`A238451(∑[n-1]+3)`
-/

namespace A238217.P15882818900262160348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238451 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A238217.P15882818900262160348

/-! ## A238217.P3348359713766050723

`A238451(A089071(n+1))%A000009(n)`
-/

namespace A238217.P3348359713766050723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238451 (A089071 (n + 1)).toNat) (A000009 n)

end

end A238217.P3348359713766050723

/-!
# A238219: The total number of 4's in all partitions of n into an even number of distinct parts.

The programs for A238219, there is no canonical definition to state claims against.
-/

/-! ## A238219.P2248304485315690408

`A067661(n)-A238211(n+4)`
-/

namespace A238219.P2248304485315690408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A238211 (n + 4)

end

end A238219.P2248304485315690408

/-!
# A238220: The total number of 5's in all partitions of n into an even number of distinct parts.

The programs for A238220, there is no canonical definition to state claims against.
-/

/-! ## A238220.P6861354405505684222

`A067661(n)-A238212(n+5)`
-/

namespace A238220.P6861354405505684222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A238212 (n + 5)

end

end A238220.P6861354405505684222

/-!
# A238221: The total number of 6's in all partitions of n into an even number of distinct parts.

The programs for A238221, there is no canonical definition to state claims against.
-/

/-! ## A238221.P17455311960137238334

`A294234(lt[A222456(2*(n+2)), A000217(n)])`
-/

namespace A238221.P17455311960137238334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A238221.P17455311960137238334

/-!
# A238222: Numbers m with property that m^2 + (m+1)^2 and (m+1)^2 + (m+2)^2 are prime.

The programs for A238222, there is no canonical definition to state claims against.
-/

/-! ## A238222.P1815288449693952678

`A109306(n+1)-1`
-/

namespace A238222.P1815288449693952678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109306 (n + 1) - 1

end

end A238222.P1815288449693952678

/-! ## A238222.P5713984298082321961

`sqrt(A075577(n+1))-1`
-/

namespace A238222.P5713984298082321961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075577 (n + 1) : ℝ) - 1

end

end A238222.P5713984298082321961

/-! ## A238222.P7206313599259180039

`A000027(root(A075577(n+1), 2)-1)`
-/

namespace A238222.P7206313599259180039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A075577 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) - 1)).toNat

end

end A238222.P7206313599259180039

/-! ## A238222.P13243391936113670069

`A134824(2*(n+2))+A109306(n+1)`
-/

namespace A238222.P13243391936113670069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * (n + 2)) + A109306 (n + 1)

end

end A238222.P13243391936113670069

/-! ## A238222.P1296823691185667492

`A165326(A016825(n))+A109306(n+1)`
-/

namespace A238222.P1296823691185667492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A016825 n).toNat + A109306 (n + 1)

end

end A238222.P1296823691185667492

/-! ## A238222.P9509325907021164230

`root(A075577(n+1), 2)-A003557(A000040(n+1))`
-/

namespace A238222.P9509325907021164230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A075577 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) - (A003557 (A000040 (n + 1)).toNat : ℝ)

end

end A238222.P9509325907021164230

/-! ## A238222.P11751944530510109929

`∩[A027861(n+1)-1, A027861(n+1)]`
-/

namespace A238222.P11751944530510109929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238222.P11751944530510109929

/-! ## A238222.P12820255682317171467

`A027861(eq[1, A027861(n+2)-A027861(n+1)]+1)`
-/

namespace A238222.P12820255682317171467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 2) - A027861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A238222.P12820255682317171467

/-! ## A238222.P10291319865814968457

`A165326(A153974(n+1))+A109306(n+1)`
-/

namespace A238222.P10291319865814968457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A153974 (n + 1)).toNat + A109306 (n + 1)

end

end A238222.P10291319865814968457

/-! ## A238222.P236476097639706629

`A023443(A109306(n+1))`
-/

namespace A238222.P236476097639706629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A109306 (n + 1)).toNat

end

end A238222.P236476097639706629

/-! ## A238222.P17173705901949306193

`eq[A278244(n+1)², A028949(n+2)]`
-/

namespace A238222.P17173705901949306193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238222.P17173705901949306193

/-! ## A238222.P16469429599801396116

`A164677(A137932(n)+3)+A109306(n+1)`
-/

namespace A238222.P16469429599801396116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (A137932 n + 3).toNat + A109306 (n + 1)

end

end A238222.P16469429599801396116

/-!
# A238226: Numbers k such that if x = sigma(k) + tau(k) - k then k = sigma(x) + tau(x) - x.

The programs for A238226, there is no canonical definition to state claims against.
-/

/-! ## A238226.P9230916557855557483

`and(A007522(A151253(n)), A083874(n+1))`
-/

namespace A238226.P9230916557855557483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007522 (A151253 n).toNat) (A083874 (n + 1))

end

end A238226.P9230916557855557483

/-!
# A238228: Numbers n such that if x=sigma(n)+phi(n)-tau(n)-n then n=sigma(x)+phi(x)-tau(x)-x.

The programs for A238228, there is no canonical definition to state claims against.
-/

/-! ## A238228.P13073954559050593152

`A187572(A173900(n+2))`
-/

namespace A238228.P13073954559050593152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187572 (A173900 (n + 2)).toNat

end

end A238228.P13073954559050593152

/-!
# A238229: Numbers n such that if x = sigma(n)-phi(n)+tau(n)-n then n = sigma(x)-phi(x)+tau(x)-x.

The programs for A238229, there is no canonical definition to state claims against.
-/

/-! ## A238229.P18408052683563975686

`A157936(A389373(n+1))`
-/

namespace A238229.P18408052683563975686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157936 (A389373 (n + 1)).toNat

end

end A238229.P18408052683563975686

/-!
# A238234: Decimal expansion of the alternating sum 1/p(1) - 1/(p(2)*p(3)) + 1/(p(4)*p(5)*p(6)) - 1/(p(7)*p(8)*p(9)*p(10)) + ..., where p(n) is the n-th prime.

The programs for A238234, there is no canonical definition to state claims against.
-/

/-! ## A238234.P39613470395972595

`9-A139396(n)`
-/

namespace A238234.P39613470395972595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A139396 n

end

end A238234.P39613470395972595

/-!
# A238235: Numerators of Euler twin numbers Et(n).

The programs for A238235, there is no canonical definition to state claims against.
-/

/-! ## A238235.P15926876759427886386

`(-1)^n*A326485(C(n, 2))`
-/

namespace A238235.P15926876759427886386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A326485 (Nat.choose n 2)

end

end A238235.P15926876759427886386

/-! ## A238235.P11322476671318095881

`A227577(∑[comp[2*5^n]])`
-/

namespace A238235.P11322476671318095881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 5 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238235.P11322476671318095881

/-!
# A238236: Expansion of (1-x-x^2)/((x-1)*(x^3+3*x^2+2*x-1)).

The programs for A238236, the canonical program `A238236.P1283638884859121636` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238236 has offset 0).

The definition of A238236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2)/(1-3x-x^2+2x^3+x^4))` (program `A238236.P1283638884859121636`, by `A238236.P1283638884859121636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238236.P1283638884859121636

`ogf((1-x-x^2)/(1-3x-x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A238236

/-- `ogf((1-x-x^2)/(1-3x-x^2+2x^3+x^4))` -/
def P1283638884859121636.Spec : Prop :=
  ∀ n, P1283638884859121636.a n = A238236 n

theorem P1283638884859121636.correct : P1283638884859121636.Spec := by
  intro n
  simp only [A238236]

end A238236

/-! ## A238236.P16793881245254951690

`3*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=18`
-/

namespace A238236.P16793881245254951690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 18] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A238236.P16793881245254951690

namespace A238236

/-- `3*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P16793881245254951690.Spec : Prop :=
  ∀ n, P16793881245254951690.a n = A238236 n

end A238236

/-! ## A238236.P10005588932044668388

`A060945(2*n)`
-/

namespace A238236.P10005588932044668388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (2 * n)

end

end A238236.P10005588932044668388

namespace A238236

/-- `A060945(2*n)` -/
def P10005588932044668388.Spec : Prop :=
  ∀ n, P10005588932044668388.a n = A238236 n

end A238236

/-! ## A238236.P17586662444639499851

`∑[ogf((-1+x+x^2)/(-1+2x+3x^2+x^3))]`
-/

namespace A238236.P17586662444639499851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, -3, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P17586662444639499851

namespace A238236

/-- `∑[ogf((-1+x+x^2)/(-1+2x+3x^2+x^3))]` -/
def P17586662444639499851.Spec : Prop :=
  ∀ n, P17586662444639499851.a n = A238236 n

end A238236

/-! ## A238236.P340274923872223632

`∑[A099098(n)]`
-/

namespace A238236.P340274923872223632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P340274923872223632

namespace A238236

/-- `∑[A099098(n)]` -/
def P340274923872223632.Spec : Prop :=
  ∀ n, P340274923872223632.a n = A238236 n

end A238236

/-! ## A238236.P12042254905507968650

`A181532(Δ[n²])`
-/

namespace A238236.P12042254905507968650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A238236.P12042254905507968650

namespace A238236

/-- `A181532(Δ[n²])` -/
def P12042254905507968650.Spec : Prop :=
  ∀ n, P12042254905507968650.a n = A238236 n

end A238236

/-! ## A238236.P5313881203375890092

`∑[A182097(4*n)]`
-/

namespace A238236.P5313881203375890092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P5313881203375890092

namespace A238236

/-- `∑[A182097(4*n)]` -/
def P5313881203375890092.Spec : Prop :=
  ∀ n, P5313881203375890092.a n = A238236 n

end A238236

/-! ## A238236.P15993114422154695455

`∑[A005251(Δ[n²])]`
-/

namespace A238236.P15993114422154695455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P15993114422154695455

namespace A238236

/-- `∑[A005251(Δ[n²])]` -/
def P15993114422154695455.Spec : Prop :=
  ∀ n, P15993114422154695455.a n = A238236 n

end A238236

/-! ## A238236.P12343721366142105689

`A017818(4*n+3)`
-/

namespace A238236.P12343721366142105689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (4 * n + 3)

end

end A238236.P12343721366142105689

namespace A238236

/-- `A017818(4*n+3)` -/
def P12343721366142105689.Spec : Prop :=
  ∀ n, P12343721366142105689.a n = A238236 n

end A238236

/-! ## A238236.P11315809754012207513

`∑[A000931(record[xor(3, n)])]`
-/

namespace A238236.P11315809754012207513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P11315809754012207513

namespace A238236

/-- `∑[A000931(record[xor(3, n)])]` -/
def P11315809754012207513.Spec : Prop :=
  ∀ n, P11315809754012207513.a n = A238236 n

end A238236

/-! ## A238236.P15094236265125391579

`∑[A000931(4*n+3)]`
-/

namespace A238236.P15094236265125391579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P15094236265125391579

namespace A238236

/-- `∑[A000931(4*n+3)]` -/
def P15094236265125391579.Spec : Prop :=
  ∀ n, P15094236265125391579.a n = A238236 n

end A238236

/-! ## A238236.P5233256443175058359

`∑[A114775(2*(4*n+1))]`
-/

namespace A238236.P5233256443175058359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (2 * (4 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P5233256443175058359

namespace A238236

/-- `∑[A114775(2*(4*n+1))]` -/
def P5233256443175058359.Spec : Prop :=
  ∀ n, P5233256443175058359.a n = A238236 n

end A238236

/-! ## A238236.P14622499166424728070

`A347493(2*n)+A181532(2*n)`
-/

namespace A238236.P14622499166424728070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 (2 * n) + A181532 (2 * n)

end

end A238236.P14622499166424728070

namespace A238236

/-- `A347493(2*n)+A181532(2*n)` -/
def P14622499166424728070.Spec : Prop :=
  ∀ n, P14622499166424728070.a n = A238236 n

end A238236

/-! ## A238236.P2764956274595692255

`∑[A134816(A004278(2*(n+1))-1)]`
-/

namespace A238236.P2764956274595692255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A004278 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P2764956274595692255

namespace A238236

/-- `∑[A134816(A004278(2*(n+1))-1)]` -/
def P2764956274595692255.Spec : Prop :=
  ∀ n, P2764956274595692255.a n = A238236 n

end A238236

/-! ## A238236.P16737176959956967563

`A347493(2*n)+∑[A005251(2*n)]`
-/

namespace A238236.P16737176959956967563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P16737176959956967563

namespace A238236

/-- `A347493(2*n)+∑[A005251(2*n)]` -/
def P16737176959956967563.Spec : Prop :=
  ∀ n, P16737176959956967563.a n = A238236 n

end A238236

/-! ## A238236.P11263466466602811097

`∑[A049853(2*n)-A005251(2*n)]`
-/

namespace A238236.P11263466466602811097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (2 * n) - A005251 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238236.P11263466466602811097

namespace A238236

/-- `∑[A049853(2*n)-A005251(2*n)]` -/
def P11263466466602811097.Spec : Prop :=
  ∀ n, P11263466466602811097.a n = A238236 n

end A238236

/-! ## A238236.P18329065649646790756

`A334293(n+2)-A097472(n)`
-/

namespace A238236.P18329065649646790756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334293 (n + 2) - A097472 n

end

end A238236.P18329065649646790756

namespace A238236

/-- `A334293(n+2)-A097472(n)` -/
def P18329065649646790756.Spec : Prop :=
  ∀ n, P18329065649646790756.a n = A238236 n

end A238236

/-! ## A238236.P1168608210525598066

`A005314(2*(n+1))-A097472(n)`
-/

namespace A238236.P1168608210525598066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (2 * (n + 1)) - A097472 n

end

end A238236.P1168608210525598066

namespace A238236

/-- `A005314(2*(n+1))-A097472(n)` -/
def P1168608210525598066.Spec : Prop :=
  ∀ n, P1168608210525598066.a n = A238236 n

end A238236

/-! ## A238236.P4644719462503928582

`A097472(n)-A347493(2*n+1)`
-/

namespace A238236.P4644719462503928582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097472 n - A347493 (2 * n + 1)

end

end A238236.P4644719462503928582

namespace A238236

/-- `A097472(n)-A347493(2*n+1)` -/
def P4644719462503928582.Spec : Prop :=
  ∀ n, P4644719462503928582.a n = A238236 n

end A238236

/-! ## A238236.P5049905791230019147

`A005314(2*n+1)-A181532(2*n)`
-/

namespace A238236.P5049905791230019147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (2 * n + 1) - A181532 (2 * n)

end

end A238236.P5049905791230019147

namespace A238236

/-- `A005314(2*n+1)-A181532(2*n)` -/
def P5049905791230019147.Spec : Prop :=
  ∀ n, P5049905791230019147.a n = A238236 n

end A238236

/-!
# A238237: Numbers which when chopped into two parts with equal length, added and squared result in the same number.

The programs for A238237, there is no canonical definition to state claims against.
-/

/-! ## A238237.P2829680789278530739

`A290449(n+1)²`
-/

namespace A238237.P2829680789278530739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290449 (n + 1) ^ 2

end

end A238237.P2829680789278530739

/-! ## A238237.P13462658347089754353

`A290449(n+1)*A290449(A000027(n+1))`
-/

namespace A238237.P13462658347089754353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290449 (n + 1) * A290449 (A000027 (n + 1)).toNat

end

end A238237.P13462658347089754353

/-! ## A238237.P2448181007130015703

`A290449(n+1)^A001221(A006881(n+1))`
-/

namespace A238237.P2448181007130015703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290449 (n + 1) : ℚ) ^ (A001221 (A006881 (n + 1)).toNat : ℤ)

end

end A238237.P2448181007130015703

/-! ## A238237.P15128697318283106978

`A290449(lcm(n+1, A020639(n+1)))*A290449(n+1)`
-/

namespace A238237.P15128697318283106978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290449 (Int.lcm (n + 1 : ℤ) (A020639 (n + 1))) * A290449 (n + 1)

end

end A238237.P15128697318283106978

/-! ## A238237.P14274136752908498331

`A290449(A008619(2*n))*A290449(n+1)`
-/

namespace A238237.P14274136752908498331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290449 (A008619 (2 * n)).toNat * A290449 (n + 1)

end

end A238237.P14274136752908498331

/-! ## A238237.P7123240556912423157

`A290449(n+1)^A001222(A290434(n+1))`
-/

namespace A238237.P7123240556912423157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290449 (n + 1) : ℚ) ^ (A001222 (A290434 (n + 1)).toNat : ℤ)

end

end A238237.P7123240556912423157

/-! ## A238237.P11581558443188818009

`A290449(n+1)^A001222(A290435(n+1))`
-/

namespace A238237.P11581558443188818009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290449 (n + 1) : ℚ) ^ (A001222 (A290435 (n + 1)).toNat : ℤ)

end

end A238237.P11581558443188818009

/-! ## A238237.P1138991020307712781

`A290449(n+1)^A000005(A005384(n+1))`
-/

namespace A238237.P1138991020307712781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290449 (n + 1) : ℚ) ^ (A000005 (A005384 (n + 1)).toNat : ℤ)

end

end A238237.P1138991020307712781

/-! ## A238237.P1782083450923804516

`A290449(n+1)^A000005(A005385(n+1))`
-/

namespace A238237.P1782083450923804516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290449 (n + 1) : ℚ) ^ (A000005 (A005385 (n + 1)).toNat : ℤ)

end

end A238237.P1782083450923804516

/-! ## A238237.P14114487884765699537

`A290449(n+1)^A000005(A000355(n+1))`
-/

namespace A238237.P14114487884765699537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290449 (n + 1) : ℚ) ^ (A000005 (A000355 (n + 1)).toNat : ℤ)

end

end A238237.P14114487884765699537

/-! ## A238237.P13384769498126258647

`A290449(n+1)^A000005(A045536(n+1))`
-/

namespace A238237.P13384769498126258647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290449 (n + 1) : ℚ) ^ (A000005 (A045536 (n + 1)).toNat : ℤ)

end

end A238237.P13384769498126258647

/-!
# A238241: Riordan array (1/(1-x-x^2)^2, x/(1-x-x^2)^2).

The programs for A238241, the canonical program `A238241.P1124644623741396013` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238241 has offset 0).

The definition of A238241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238241.P1124644623741396013

`T(n-1,k-1)+2*T(n-1,k)+T(n-2,k)-2*T(row(n)-3, col(n))-T(row(n)-4, col(n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A238241

/-- `T(n-1,k-1)+2*T(n-1,k)+T(n-2,k)-2*T(row(n)-3, col(n))-T(row(n)-4, col(n))` -/
def P1124644623741396013.Spec : Prop :=
  ∀ n, P1124644623741396013.a n = A238241 n

theorem P1124644623741396013.correct : P1124644623741396013.Spec := by
  intro n
  simp only [A238241]

end A238241

/-! ## A238241.P14788996500472605756

`A037027(C(row(n)+col(n)+2, 2)+2*col(n)+1)`
-/

namespace A238241.P14788996500472605756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 2) 2 + (2 * SequenceMachineLib.triCol n + 1))

end

end A238241.P14788996500472605756

namespace A238241

/-- `A037027(C(row(n)+col(n)+2, 2)+2*col(n)+1)` -/
def P14788996500472605756.Spec : Prop :=
  ∀ n, P14788996500472605756.a n = A238241 n

end A238241

/-!
# A238242: Primes p such that p^2+p+41 is also prime.

The programs for A238242, there is no canonical definition to state claims against.
-/

/-! ## A238242.P15992129690502427373

`p?[A268513(n+1)]`
-/

namespace A238242.P15992129690502427373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238242.P15992129690502427373

/-! ## A238242.P2814842969084898871

`∩[A000040(n+1), A268513(n+1)]`
-/

namespace A238242.P2814842969084898871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P2814842969084898871

/-! ## A238242.P1090920858171863145

`∩[A008578(n+1), A268513(n+1)]`
-/

namespace A238242.P1090920858171863145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P1090920858171863145

/-! ## A238242.P13349052410587656789

`∩[A046022(n+1), A268513(n+1)]`
-/

namespace A238242.P13349052410587656789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P13349052410587656789

/-! ## A238242.P17079197093950218711

`∩[A051948(n+1), A268513(n+1)]`
-/

namespace A238242.P17079197093950218711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P17079197093950218711

/-! ## A238242.P8860146721801228969

`∩[A053813(n+1), A268513(n+1)]`
-/

namespace A238242.P8860146721801228969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P8860146721801228969

/-! ## A238242.P14404552960434200873

`∩[A055977(n+1), A268513(n+1)]`
-/

namespace A238242.P14404552960434200873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P14404552960434200873

/-! ## A238242.P9134275799381411254

`∩[A058853(n+1), A268513(n+1)]`
-/

namespace A238242.P9134275799381411254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P9134275799381411254

/-! ## A238242.P9575531489363620805

`∩[A067126(n+1), A268513(n+1)]`
-/

namespace A238242.P9575531489363620805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P9575531489363620805

/-! ## A238242.P17121334204608929574

`∩[A174090(n+1), A268513(n+1)]`
-/

namespace A238242.P17121334204608929574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P17121334204608929574

/-! ## A238242.P13884731722629032532

`∩[A084111(n+1), A268513(n+1)]`
-/

namespace A238242.P13884731722629032532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238242.P13884731722629032532

/-! ## A238242.P322718639207171249

`filter[A268513(n+1), A010051(#)]`
-/

namespace A238242.P322718639207171249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A238242.P322718639207171249

/-! ## A238242.P13833117396808173732

`filter[A268513(n+1), A323152(#)]`
-/

namespace A238242.P13833117396808173732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A238242.P13833117396808173732

/-! ## A238242.P7110502440788576839

`filter[A268513(n+1), A323153(#)]`
-/

namespace A238242.P7110502440788576839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A238242.P7110502440788576839

/-! ## A238242.P1919737950492843572

`filter[A268513(n+1), A351957(#)]`
-/

namespace A238242.P1919737950492843572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A238242.P1919737950492843572

/-! ## A238242.P9158228719004104001

`filter[A268513(n+1), A353787(#)]`
-/

namespace A238242.P9158228719004104001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A238242.P9158228719004104001

/-! ## A238242.P4116036809894468042

`filter[A268513(n+1), A353817(#)]`
-/

namespace A238242.P4116036809894468042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A238242.P4116036809894468042

/-! ## A238242.P5066163604956359374

`p?[A056561(n+1)]`
-/

namespace A238242.P5066163604956359374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238242.P5066163604956359374

/-! ## A238242.P11830607353003946043

`p?[A002837(n+1)-1]`
-/

namespace A238242.P11830607353003946043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238242.P11830607353003946043

/-! ## A238242.P2150883539874982334

`record[A020639(A056561(n+3))]`
-/

namespace A238242.P2150883539874982334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056561 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238242.P2150883539874982334

/-!
# A238243: A recursive sequence: a(n) = Fibonacci(n)*a(n-1) + 2.

The programs for A238243, the canonical program `A238243.P8923424290796915053` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238243 has offset 1).

The definition of A238243 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*a(n-1)+2` (program `A238243.P8923424290796915053`, by `A238243.P8923424290796915053.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238243.P8923424290796915053

`A000045(n+1)*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A238243

/-- `A000045(n+1)*a(n-1)+2` -/
def P8923424290796915053.Spec : Prop :=
  ∀ n, P8923424290796915053.a n = A238243 (n + 1)

theorem P8923424290796915053.correct : P8923424290796915053.Spec := by
  intro n
  simp only [A238243, Nat.add_sub_cancel]

end A238243

/-! ## A238243.P1797095866804488200

`2+A000045(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A238243.P1797095866804488200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 + A000045 (n + 1) * a (n - 1)

end

end A238243.P1797095866804488200

namespace A238243

/-- `2+A000045(n+1)*a(n-1)` -/
def P1797095866804488200.Spec : Prop :=
  ∀ n, P1797095866804488200.a n = A238243 (n + 1)

theorem P1797095866804488200.correct : P1797095866804488200.Spec := by
  intro n
  simp only [A238243, Nat.add_sub_cancel, A238243.P1797095866804488200.a, A238243.P8923424290796915053.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A238243

/-! ## A238243.P2769608754665225725

`a(n-1)*A212804(n+2)+2` with `a(0)=1`
-/

namespace A238243.P2769608754665225725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A212804 (n + 2) + 2

end

end A238243.P2769608754665225725

namespace A238243

/-- `a(n-1)*A212804(n+2)+2` -/
def P2769608754665225725.Spec : Prop :=
  ∀ n, P2769608754665225725.a n = A238243 (n + 1)

end A238243

/-! ## A238243.P998720398136651717

`a(n-1)*A079977(2*n)+2` with `a(0)=1`
-/

namespace A238243.P998720398136651717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A079977 (2 * n) + 2

end

end A238243.P998720398136651717

namespace A238243

/-- `a(n-1)*A079977(2*n)+2` -/
def P998720398136651717.Spec : Prop :=
  ∀ n, P998720398136651717.a n = A238243 (n + 1)

end A238243

/-!
# A238244: A recursive sequence: a(n) = Fibonacci(n)*a(n-1) + 3.

The programs for A238244, the canonical program `A238244.P9574069303076667538` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238244 has offset 1).

The definition of A238244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*a(n-1)+3` (program `A238244.P9574069303076667538`, by `A238244.P9574069303076667538.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238244.P9574069303076667538

`A000045(n+1)*a(n-1)+3` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A238244

/-- `A000045(n+1)*a(n-1)+3` -/
def P9574069303076667538.Spec : Prop :=
  ∀ n, P9574069303076667538.a n = A238244 (n + 1)

theorem P9574069303076667538.correct : P9574069303076667538.Spec := by
  intro n
  simp only [A238244, Nat.add_sub_cancel]

end A238244

/-! ## A238244.P5760725107671966106

`3+A000045(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A238244.P5760725107671966106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 + A000045 (n + 1) * a (n - 1)

end

end A238244.P5760725107671966106

namespace A238244

/-- `3+A000045(n+1)*a(n-1)` -/
def P5760725107671966106.Spec : Prop :=
  ∀ n, P5760725107671966106.a n = A238244 (n + 1)

theorem P5760725107671966106.correct : P5760725107671966106.Spec := by
  intro n
  simp only [A238244, Nat.add_sub_cancel, A238244.P5760725107671966106.a, A238244.P9574069303076667538.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A238244

/-! ## A238244.P289961299658042376

`a(n-1)*A079977(2*n)+3` with `a(0)=1`
-/

namespace A238244.P289961299658042376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A079977 (2 * n) + 3

end

end A238244.P289961299658042376

namespace A238244

/-- `a(n-1)*A079977(2*n)+3` -/
def P289961299658042376.Spec : Prop :=
  ∀ n, P289961299658042376.a n = A238244 (n + 1)

end A238244

/-! ## A238244.P13238190931711634899

`(A081659(n)-n)*a(n-1)+3` with `a(0)=1`
-/

namespace A238244.P13238190931711634899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A081659 n - (n : ℤ)) * a (n - 1) + 3

end

end A238244.P13238190931711634899

namespace A238244

/-- `(A081659(n)-n)*a(n-1)+3` -/
def P13238190931711634899.Spec : Prop :=
  ∀ n, P13238190931711634899.a n = A238244 (n + 1)

theorem P13238190931711634899.correct : P13238190931711634899.Spec := by
  intro n
  simp only [A238244, Nat.add_sub_cancel, A238244.P13238190931711634899.a, A238244.P9574069303076667538.a, A000045, A000045.P11838749114346432762.a, A081659, A081659.P2520138309410164665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A238244

/-! ## A238244.P15249904049272504177

`a(n-1)*Δ[Δ[A020695(n)]]+3` with `a(0)=1`
-/

namespace A238244.P15249904049272504177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n) + 3

end

end A238244.P15249904049272504177

namespace A238244

/-- `a(n-1)*Δ[Δ[A020695(n)]]+3` -/
def P15249904049272504177.Spec : Prop :=
  ∀ n, P15249904049272504177.a n = A238244 (n + 1)

end A238244

/-!
# A238246: Numbers m such that A072219(m) = 3.

The programs for A238246, there is no canonical definition to state claims against.
-/

/-! ## A238246.P9100516931542815769

`A043687(1+n)+1`
-/

namespace A238246.P9100516931542815769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043687 (1 + n) + 1

end

end A238246.P9100516931542815769

/-! ## A238246.P12294705066741696813

`A087118(n+2)+1`
-/

namespace A238246.P12294705066741696813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 2) + 1

end

end A238246.P12294705066741696813

/-! ## A238246.P15396914896708552958

`ceil(A043570(n+1)/2)`
-/

namespace A238246.P15396914896708552958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043570 (n + 1) : ℚ) / 2⌉

end

end A238246.P15396914896708552958

/-! ## A238246.P14622980720525129694

`∪[A043569(n+1), A043570(n+1)]+1`
-/

namespace A238246.P14622980720525129694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A238246.P14622980720525129694

/-! ## A238246.P16296655159326989420

`filter[A171987(n+1), A347523(#)]`
-/

namespace A238246.P16296655159326989420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A238246.P16296655159326989420

/-! ## A238246.P17414381950959355079

`eq[a(n-1-and(n, 2*n))+1, n%2]+1` with `a(0)=-2`
-/

namespace A238246.P17414381950959355079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A238246.P17414381950959355079

/-! ## A238246.P1601320042222407683

`eq[A209639(n), A209639(A209639(n))]+1`
-/

namespace A238246.P1601320042222407683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 (A209639 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238246.P1601320042222407683

/-! ## A238246.P12321447995471575716

`eq[A087734(n), A135534(n+1)]+1`
-/

namespace A238246.P12321447995471575716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238246.P12321447995471575716

/-! ## A238246.P5793201220786794368

`eq[1, A033264(n+1)]+2`
-/

namespace A238246.P5793201220786794368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A238246.P5793201220786794368

/-! ## A238246.P903829012360052449

`eq[1, A087116(n+1)]+2`
-/

namespace A238246.P903829012360052449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A238246.P903829012360052449

/-! ## A238246.P7466212217860661162

`A020725(A043687(n+1))`
-/

namespace A238246.P7466212217860661162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A043687 (n + 1)).toNat

end

end A238246.P7466212217860661162

/-! ## A238246.P9333235026892405262

`A020725(A087118(n+2))`
-/

namespace A238246.P9333235026892405262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A087118 (n + 2)).toNat

end

end A238246.P9333235026892405262

/-! ## A238246.P6768314447595134412

`lt[A049502(n), A285099(n)]`
-/

namespace A238246.P6768314447595134412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A238246.P6768314447595134412

/-! ## A238246.P13378097050426917672

`eq[1, A011371(A005811(n))]+1`
-/

namespace A238246.P13378097050426917672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238246.P13378097050426917672

/-! ## A238246.P6703513629194008279

`eq[1, A069010(A025480(n))]+1`
-/

namespace A238246.P6703513629194008279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238246.P6703513629194008279

/-! ## A238246.P13495054996581450993

`eq[1, A032741(A090079(n))]+1`
-/

namespace A238246.P13495054996581450993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A090079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238246.P13495054996581450993

/-! ## A238246.P11581414229347106661

`filter[A171987(n+2), A267579(#)]`
-/

namespace A238246.P11581414229347106661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A238246.P11581414229347106661

/-! ## A238246.P7334645146008063798

`eq[A005811(n), A010693(n)]+1`
-/

namespace A238246.P7334645146008063798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238246.P7334645146008063798

/-! ## A238246.P15467666358145884496

`eq[A000034(n), A069010(n)]+1`
-/

namespace A238246.P15467666358145884496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238246.P15467666358145884496

/-! ## A238246.P10022194172590958191

`eq[A010702(n), A088748(n)]+1`
-/

namespace A238246.P10022194172590958191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238246.P10022194172590958191

/-!
# A238247: Numbers m such that A072219(m) = 5.

The programs for A238247, there is no canonical definition to state claims against.
-/

/-! ## A238247.P15316806956139123040

`A043688(n+1)+1`
-/

namespace A238247.P15316806956139123040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1) + 1

end

end A238247.P15316806956139123040

/-! ## A238247.P3087457507323998994

`ceil(A043572(n+1)/2)`
-/

namespace A238247.P3087457507323998994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043572 (n + 1) : ℚ) / 2⌉

end

end A238247.P3087457507323998994

/-! ## A238247.P12547865048050327675

`∪[A043571(n+1), A043572(n+1)]+1`
-/

namespace A238247.P12547865048050327675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A238247.P12547865048050327675

/-! ## A238247.P5681889687208662655

`ceil(eq[3, a(n-1-and(n, 2*n))+1]/2)` with `a(0)=-2`
-/

namespace A238247.P5681889687208662655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2⌉

end

end A238247.P5681889687208662655

/-! ## A238247.P546307104903742731

`round(eq[3, a(n-1-and(n, 2*n))+1]/2)` with `a(0)=-2`
-/

namespace A238247.P546307104903742731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2)

end

end A238247.P546307104903742731

/-! ## A238247.P17745877160336373587

`eq[5, A072219(n+1)]+1`
-/

namespace A238247.P17745877160336373587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238247.P17745877160336373587

/-! ## A238247.P6047548096807799442

`eq[A069010(n), A141310(A141310(n))]+1`
-/

namespace A238247.P6047548096807799442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238247.P6047548096807799442

/-! ## A238247.P14860200508886326000

`eq[2, A033264(n)]+1`
-/

namespace A238247.P14860200508886326000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238247.P14860200508886326000

/-! ## A238247.P9476079047505559601

`eq[2, A087116(n)]+1`
-/

namespace A238247.P9476079047505559601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238247.P9476079047505559601

/-! ## A238247.P3878301550551141234

`eq[n%2+4, A005811(n)]+1`
-/

namespace A238247.P3878301550551141234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238247.P3878301550551141234

/-! ## A238247.P17934441424211728889

`A020725(A043688(n+1))`
-/

namespace A238247.P17934441424211728889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A043688 (n + 1)).toNat

end

end A238247.P17934441424211728889

/-! ## A238247.P13940036265047515472

`eq[2, A008667(A005811(n))]+1`
-/

namespace A238247.P13940036265047515472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238247.P13940036265047515472

/-! ## A238247.P3142704975903737808

`eq[2, A069010(A025480(n))]+1`
-/

namespace A238247.P3142704975903737808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238247.P3142704975903737808

/-! ## A238247.P4776222782144634802

`eq[A005811(n), A010710(n)]+1`
-/

namespace A238247.P4776222782144634802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238247.P4776222782144634802

/-! ## A238247.P16440236603220347961

`eq[A000034(n), A037800(n)]+1`
-/

namespace A238247.P16440236603220347961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238247.P16440236603220347961

/-! ## A238247.P1340687397020862427

`eq[A010693(n), A069010(n)]+1`
-/

namespace A238247.P1340687397020862427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238247.P1340687397020862427

/-! ## A238247.P18313513706243292128

`eq[A010717(n), A088748(n)]+1`
-/

namespace A238247.P18313513706243292128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238247.P18313513706243292128

/-! ## A238247.P7543607399659698840

`eq[A037800(n), A084642(n)]+1`
-/

namespace A238247.P7543607399659698840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238247.P7543607399659698840

/-! ## A238247.P18383400569715097990

`eq[A037800(n), A105500(n)]+1`
-/

namespace A238247.P18383400569715097990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238247.P18383400569715097990

/-! ## A238247.P9076614240470489688

`eq[A010732(n), A136004(n)]+1`
-/

namespace A238247.P9076614240470489688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238247.P9076614240470489688

/-!
# A238248: Numbers m such that A072219(m) = 7.

The programs for A238248, the canonical program `A238248.P15611988526877702072` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238248 has offset 1).

The definition of A238248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238248.P15611988526877702072

`1+A043689(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A238248

/-- `1+A043689(n+1)` -/
def P15611988526877702072.Spec : Prop :=
  ∀ n, P15611988526877702072.a n = A238248 (n + 1)

theorem P15611988526877702072.correct : P15611988526877702072.Spec := by
  intro n
  simp only [A238248, Nat.add_sub_cancel]

end A238248

/-! ## A238248.P17651607053352156010

`ceil(A043574(n+1)/2)`
-/

namespace A238248.P17651607053352156010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043574 (n + 1) : ℚ) / 2⌉

end

end A238248.P17651607053352156010

namespace A238248

/-- `ceil(A043574(n+1)/2)` -/
def P17651607053352156010.Spec : Prop :=
  ∀ n, P17651607053352156010.a n = A238248 (n + 1)

end A238248

/-! ## A238248.P14347676722743407835

`∪[A043573(n+1), A043574(n+1)]+1`
-/

namespace A238248.P14347676722743407835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A238248.P14347676722743407835

namespace A238248

/-- `∪[A043573(n+1), A043574(n+1)]+1` -/
def P14347676722743407835.Spec : Prop :=
  ∀ n, (P14347676722743407835.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P16421621107015356064

`∪[A043573(n+1), A043761(n+1)]+1`
-/

namespace A238248.P16421621107015356064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A238248.P16421621107015356064

namespace A238248

/-- `∪[A043573(n+1), A043761(n+1)]+1` -/
def P16421621107015356064.Spec : Prop :=
  ∀ n, (P16421621107015356064.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P11151060746558149779

`∪[A043574(n+1), A043769(n+1)]+1`
-/

namespace A238248.P11151060746558149779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A238248.P11151060746558149779

namespace A238248

/-- `∪[A043574(n+1), A043769(n+1)]+1` -/
def P11151060746558149779.Spec : Prop :=
  ∀ n, (P11151060746558149779.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P2802492033211342481

`eq[7, A072219(n+1)]+1`
-/

namespace A238248.P2802492033211342481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238248.P2802492033211342481

namespace A238248

/-- `eq[7, A072219(n+1)]+1` -/
def P2802492033211342481.Spec : Prop :=
  ∀ n, (P2802492033211342481.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P10515389017078597403

`eq[3, A087116(n)]+1`
-/

namespace A238248.P10515389017078597403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238248.P10515389017078597403

namespace A238248

/-- `eq[3, A087116(n)]+1` -/
def P10515389017078597403.Spec : Prop :=
  ∀ n, (P10515389017078597403.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P1304909450337744608

`eq[3, A033264(n+2)]+3`
-/

namespace A238248.P1304909450337744608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A238248.P1304909450337744608

namespace A238248

/-- `eq[3, A033264(n+2)]+3` -/
def P1304909450337744608.Spec : Prop :=
  ∀ n, (P1304909450337744608.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P12417766851914834696

`A011760(A043689(n+1))`
-/

namespace A238248.P12417766851914834696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A043689 (n + 1)).toNat

end

end A238248.P12417766851914834696

namespace A238248

/-- `A011760(A043689(n+1))` -/
def P12417766851914834696.Spec : Prop :=
  ∀ n, P12417766851914834696.a n = A238248 (n + 1)

end A238248

/-! ## A238248.P2020526428367097158

`eq[2, A050605(A005811(n))]+1`
-/

namespace A238248.P2020526428367097158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238248.P2020526428367097158

namespace A238248

/-- `eq[2, A050605(A005811(n))]+1` -/
def P2020526428367097158.Spec : Prop :=
  ∀ n, (P2020526428367097158.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P2908919287698671694

`eq[2, A037800(A025480(n))]+1`
-/

namespace A238248.P2908919287698671694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238248.P2908919287698671694

namespace A238248

/-- `eq[2, A037800(A025480(n))]+1` -/
def P2908919287698671694.Spec : Prop :=
  ∀ n, (P2908919287698671694.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P14543982068893667962

`eq[A010702(n), A069010(n)]+1`
-/

namespace A238248.P14543982068893667962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238248.P14543982068893667962

namespace A238248

/-- `eq[A010702(n), A069010(n)]+1` -/
def P14543982068893667962.Spec : Prop :=
  ∀ n, (P14543982068893667962.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P5942452041357419053

`eq[A037800(n), A141310(A141310(n))]+1`
-/

namespace A238248.P5942452041357419053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238248.P5942452041357419053

namespace A238248

/-- `eq[A037800(n), A141310(A141310(n))]+1` -/
def P5942452041357419053.Spec : Prop :=
  ∀ n, (P5942452041357419053.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P2288056603212820491

`eq[2, A178049(A136004(n))]+1`
-/

namespace A238248.P2288056603212820491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178049 ((A136004 n).toNat + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238248.P2288056603212820491

namespace A238248

/-- `eq[2, A178049(A136004(n))]+1` -/
def P2288056603212820491.Spec : Prop :=
  ∀ n, (P2288056603212820491.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P11053747476593372428

`eq[A005811(n), A010723(n)]+1`
-/

namespace A238248.P11053747476593372428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238248.P11053747476593372428

namespace A238248

/-- `eq[A005811(n), A010723(n)]+1` -/
def P11053747476593372428.Spec : Prop :=
  ∀ n, (P11053747476593372428.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P2217571667814983586

`eq[A010693(n), A037800(n)]+1`
-/

namespace A238248.P2217571667814983586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238248.P2217571667814983586

namespace A238248

/-- `eq[A010693(n), A037800(n)]+1` -/
def P2217571667814983586.Spec : Prop :=
  ∀ n, (P2217571667814983586.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P4644586849272074641

`eq[A010728(n), A088748(n)]+1`
-/

namespace A238248.P4644586849272074641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238248.P4644586849272074641

namespace A238248

/-- `eq[A010728(n), A088748(n)]+1` -/
def P4644586849272074641.Spec : Prop :=
  ∀ n, (P4644586849272074641.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P452138057788534266

`eq[A069010(n), A103947(n)]+1`
-/

namespace A238248.P452138057788534266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238248.P452138057788534266

namespace A238248

/-- `eq[A069010(n), A103947(n)]+1` -/
def P452138057788534266.Spec : Prop :=
  ∀ n, (P452138057788534266.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P7337382639684070468

`eq[A069010(n), A105500(n)]+1`
-/

namespace A238248.P7337382639684070468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238248.P7337382639684070468

namespace A238248

/-- `eq[A069010(n), A105500(n)]+1` -/
def P7337382639684070468.Spec : Prop :=
  ∀ n, (P7337382639684070468.a n : ℤ) = A238248 (n + 1)

end A238248

/-! ## A238248.P16971764901244724619

`eq[A037800(n), A174296(n)]+1`
-/

namespace A238248.P16971764901244724619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A238248.P16971764901244724619

namespace A238248

/-- `eq[A037800(n), A174296(n)]+1` -/
def P16971764901244724619.Spec : Prop :=
  ∀ n, (P16971764901244724619.a n : ℤ) = A238248 (n + 1)

end A238248

/-!
# A238249: Number of (n+1)X(2+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A238249, there is no canonical definition to state claims against.
-/

/-! ## A238249.P14731311291438915496

`A238255(∑[n+1]+2)`
-/

namespace A238249.P14731311291438915496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238249.P14731311291438915496

/-! ## A238249.P3241339039078116962

`record[A238255(A286157(n+1)+2)]`
-/

namespace A238249.P3241339039078116962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A286157 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238249.P3241339039078116962

/-! ## A238249.P16086672032398707463

`record[root(A238255(n+3), A238241(n))]`
-/

namespace A238249.P16086672032398707463
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238255 (n + 3) : ℝ) ^ (1 / (A238241 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238249.P16086672032398707463

/-! ## A238249.P3011299362121995251

`record[gcd(A025581(n), A238255(n+3))]`
-/

namespace A238249.P3011299362121995251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A238255 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238249.P3011299362121995251

/-! ## A238249.P15553503301882427992

`record[A238255(Δ[A003453(n+5)])]`
-/

namespace A238249.P15553503301882427992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238249.P15553503301882427992

/-!
# A238250: Number of (n+1)X(3+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A238250, there is no canonical definition to state claims against.
-/

/-! ## A238250.P9969828444622702319

`A238255(∑[n+2]+4)`
-/

namespace A238250.P9969828444622702319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238250.P9969828444622702319

/-! ## A238250.P13627024469828296200

`record[gcd(A025581(n), A238255(n+4))]`
-/

namespace A238250.P13627024469828296200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A238255 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238250.P13627024469828296200

/-! ## A238250.P11650908274283705616

`A238255(A167614(n+1))+A025438(n)`
-/

namespace A238250.P11650908274283705616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A167614 (n + 1)).toNat + A025438 n

end

end A238250.P11650908274283705616

/-! ## A238250.P17996914503953342241

`or(A000007(n), A238255(A167614(n+1)))`
-/

namespace A238250.P17996914503953342241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A238255 (A167614 (n + 1)).toNat)

end

end A238250.P17996914503953342241

/-! ## A238250.P10683459667448363435

`A238255(A167614(n+1))%A238251(n+1)`
-/

namespace A238250.P10683459667448363435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238255 (A167614 (n + 1)).toNat) (A238251 (n + 1))

end

end A238250.P10683459667448363435

/-!
# A238251: Number of (n+1)X(4+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A238251, there is no canonical definition to state claims against.
-/

/-! ## A238251.P1597467477200835397

`A238255(∑[n+3]+7)`
-/

namespace A238251.P1597467477200835397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238251.P1597467477200835397

/-! ## A238251.P15078781495719253174

`A238255(A141214(n+1))%A204038(3*n+5)`
-/

namespace A238251.P15078781495719253174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238255 (A141214 (n + 1)).toNat) (A204038 (3 * n + 5))

end

end A238251.P15078781495719253174

/-!
# A238252: Number of (n+1)X(5+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A238252, there is no canonical definition to state claims against.
-/

/-! ## A238252.P14400615096624958974

`A238255(A374005(n+1))`
-/

namespace A238252.P14400615096624958974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A374005 (n + 1)).toNat

end

end A238252.P14400615096624958974

/-! ## A238252.P5996401054667807515

`A238255(A155212(n)+13)`
-/

namespace A238252.P5996401054667807515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A155212 n + 13).toNat

end

end A238252.P5996401054667807515

/-! ## A238252.P6430719126893011019

`A238255(A056000(n)+15)`
-/

namespace A238252.P6430719126893011019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A056000 n + 15).toNat

end

end A238252.P6430719126893011019

/-! ## A238252.P13340799077040454784

`A238255(eq[7, A066657(n)])`
-/

namespace A238252.P13340799077040454784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238252.P13340799077040454784

/-! ## A238252.P12886278264157031017

`A238255(A167614(n+3)+2)`
-/

namespace A238252.P12886278264157031017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A167614 (n + 3) + 2).toNat

end

end A238252.P12886278264157031017

/-!
# A238253: Number of (n+1)X(6+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A238253, there is no canonical definition to state claims against.
-/

/-! ## A238253.P13431521773078929710

`A238255(A374007(n+1))`
-/

namespace A238253.P13431521773078929710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A374007 (n + 1)).toNat

end

end A238253.P13431521773078929710

/-! ## A238253.P5942067853289414843

`A238255(A056115(n)+21)`
-/

namespace A238253.P5942067853289414843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A056115 n + 21).toNat

end

end A238253.P5942067853289414843

/-! ## A238253.P1839492594238980029

`A238255(A167614(n+4)+3)`
-/

namespace A238253.P1839492594238980029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A167614 (n + 4) + 3).toNat

end

end A238253.P1839492594238980029

/-! ## A238253.P6803641837460415860

`A238255(A000124(n+5)+5)`
-/

namespace A238253.P6803641837460415860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A000124 (n + 5) + 5).toNat

end

end A238253.P6803641837460415860

/-! ## A238253.P16197975425626636291

`A238255(eq[7, A131818(n+1)])`
-/

namespace A238253.P16197975425626636291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238253.P16197975425626636291

/-!
# A238254: Number of (n+1)X(7+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A238254, there is no canonical definition to state claims against.
-/

/-! ## A238254.P18288198881540245214

`A238255(A374008(n+1))`
-/

namespace A238254.P18288198881540245214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A374008 (n + 1)).toNat

end

end A238254.P18288198881540245214

/-! ## A238254.P10536668279240004256

`A238255(A056119(n)+28)`
-/

namespace A238254.P10536668279240004256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A056119 n + 28).toNat

end

end A238254.P10536668279240004256

/-! ## A238254.P4629007353338761944

`A238255(eq[11, A066657(n)])`
-/

namespace A238254.P4629007353338761944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238254.P4629007353338761944

/-! ## A238254.P16172256383298233683

`A238255(A167499(n+5)+2)`
-/

namespace A238254.P16172256383298233683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A167499 (n + 5) + 2).toNat

end

end A238254.P16172256383298233683

/-! ## A238254.P7352850030341173905

`A238255(A167614(n+5)+4)`
-/

namespace A238254.P7352850030341173905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238255 (A167614 (n + 5) + 4).toNat

end

end A238254.P7352850030341173905

/-!
# A238255: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A238255, there is no canonical definition to state claims against.
-/

/-! ## A238255.P10260428027947279640

`A253326(n+1)+A036869(A257617(n))`
-/

namespace A238255.P10260428027947279640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (n + 1) + A036869 (A257617 n).toNat

end

end A238255.P10260428027947279640

/-! ## A238255.P13978059512381855801

`or(A126696(A257617(n))², A204039(n+1))`
-/

namespace A238255.P13978059512381855801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126696 (A257617 n).toNat ^ 2) (A204039 (n + 1))

end

end A238255.P13978059512381855801

/-! ## A238255.P7538999224987333073

`A303933(A001263(n+1))+A235413(n+1)`
-/

namespace A238255.P7538999224987333073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303933 (A001263 (n + 1)).toNat + A235413 (n + 1)

end

end A238255.P7538999224987333073

/-!
# A238256: A060308 begins with one 2, one 3, one 5, two 7's, one 11, two 13's, i.e., d(n) = 1, 1, 1, 2, 1, 2, 1, 2, 3, 1,... times the primes (A000040). a(n) uses this distribution with noncomposites (A008578).

The programs for A238256, there is no canonical definition to state claims against.
-/

/-! ## A238256.P9769080136647886422

`A008578(∑[∑{e}[2*n+1, #]!%2])`
-/

namespace A238256.P9769080136647886422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238256.P9769080136647886422

/-! ## A238256.P8967934047266845577

`A008578(∑[C(2*n+1, ∏{d}[2*n+1, #])])`
-/

namespace A238256.P8967934047266845577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238256.P8967934047266845577

/-! ## A238256.P14993553166222734739

`A015919(∑[C(2*n+1, ∏{d}[2*n+1, #])])`
-/

namespace A238256.P14993553166222734739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238256.P14993553166222734739

/-! ## A238256.P6941857258416319596

`A158611(∑[C(2*n+1, ∏{d}[2*n+1, #])]+1)`
-/

namespace A238256.P6941857258416319596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238256.P6941857258416319596

/-! ## A238256.P919162740969269899

`A001747(∑[C(2*n+1, ∏{d}[2*n+1, #])])/2`
-/

namespace A238256.P919162740969269899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A238256.P919162740969269899

/-! ## A238256.P255053302374775031

`A008578(A099802(n+1))`
-/

namespace A238256.P255053302374775031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A099802 (n + 1)).toNat

end

end A238256.P255053302374775031

/-! ## A238256.P13776758642737176130

`A064989(A060308(n+1))`
-/

namespace A238256.P13776758642737176130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A060308 (n + 1)).toNat

end

end A238256.P13776758642737176130

/-! ## A238256.P7818005170722938346

`A285727(A060264(n+1))`
-/

namespace A238256.P7818005170722938346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (A060264 (n + 1)).toNat

end

end A238256.P7818005170722938346

/-! ## A238256.P2674708634298493895

`A349122(A139421(Δ[n²]))`
-/

namespace A238256.P2674708634298493895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (A139421 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A238256.P2674708634298493895

/-! ## A238256.P3032453970512609423

`A008578(∑[A101264(n)]+1)`
-/

namespace A238256.P3032453970512609423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A238256.P3032453970512609423

/-!
# A238257: Numbers n such that n and 2n+1 use only odd decimal digits.

The programs for A238257, there is no canonical definition to state claims against.
-/

/-! ## A238257.P6357872459006473756

`∩[floor(A014261(n+1)/2), A014261(n+1)]`
-/

namespace A238257.P6357872459006473756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014261 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238257.P6357872459006473756

/-! ## A238257.P3742734117472286486

`record[A327539(A014261(2+n)-1)]`
-/

namespace A238257.P3742734117472286486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (A014261 (2 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238257.P3742734117472286486

/-! ## A238257.P15228064006581211462

`record[A327539(A327539(n+5)-1)]`
-/

namespace A238257.P15228064006581211462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (A327539 (n + 5) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238257.P15228064006581211462

/-! ## A238257.P12890841805233915767

`record[A327539(lcm(2, 1-A327539(n)))]`
-/

namespace A238257.P12890841805233915767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (Int.lcm 2 (1 - A327539 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238257.P12890841805233915767

/-! ## A238257.P14499209023387489510

`eq[A045843(n), A196563(2*n+1)]`
-/

namespace A238257.P14499209023387489510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238257.P14499209023387489510

/-! ## A238257.P3882603847963817447

`record[A327539(A004442(A327539(n)))]`
-/

namespace A238257.P3882603847963817447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (A004442 (A327539 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238257.P3882603847963817447

/-! ## A238257.P12664437906400270220

`record[A121759(A004525(A014261(n+1)))]`
-/

namespace A238257.P12664437906400270220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121759 (A004525 (A014261 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238257.P12664437906400270220

/-!
# A238259: Area of smallest square containing n dominoes with short side lengths 1, 2, ..., n.

The programs for A238259, there is no canonical definition to state claims against.
-/

/-! ## A238259.P1515043849284167170

`A237886(n)²`
-/

namespace A238259.P1515043849284167170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237886 n ^ 2

end

end A238259.P1515043849284167170

/-! ## A238259.P7967418936857516492

`floor(∑[sqrt(3/(2*acot(n)))])²`
-/

namespace A238259.P7967418936857516492
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 / (2 * SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2

end

end A238259.P7967418936857516492

/-! ## A238259.P12288405715314184168

`ceil(sqrt(∑[2*n/acot(n)]))²`
-/

namespace A238259.P12288405715314184168
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)⌉ ^ 2

end

end A238259.P12288405715314184168

/-! ## A238259.P15297537374504777465

`ceil(sqrt(∑[2*n/acot(n)]))^2`
-/

namespace A238259.P15297537374504777465
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)⌉ ^ 2

end

end A238259.P15297537374504777465

/-! ## A238259.P13316294002843510172

`ceil(sqrt(2*(∑[n²]+sqrt(n))))²`
-/

namespace A238259.P13316294002843510172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (n : ℝ)))⌉ ^ 2

end

end A238259.P13316294002843510172

/-!
# A238263: a(n) is the number of ways n can be written in the form n=2^k1*p1^k2+2^k3*p2^k4, where p1 and p2 are odd prime numbers, and k1, k2, k3, k4 are nonnegative integers.

The programs for A238263, there is no canonical definition to state claims against.
-/

/-! ## A238263.P3649170070116221835

`A182220(2*n+3)-∑[∑{p}[n+1, gcd(n, #)]]`
-/

namespace A238263.P3649170070116221835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (2 * n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A238263.P3649170070116221835

/-! ## A238263.P16861255444206038003

`A182220(2*n+3)-∑[A001221(n+1)]`
-/

namespace A238263.P16861255444206038003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (2 * n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238263.P16861255444206038003

/-! ## A238263.P12320538470842087630

`∑[A131743(((n+1)*∑{e}[n+1, #]!/∏{e}[n+1, #!])²)]`
-/

namespace A238263.P12320538470842087630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 (SequenceMachineLib.roundAway (((n + 1 : ℚ) * ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ))) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238263.P12320538470842087630

/-! ## A238263.P8015322387116939357

`∑[A096268(A133900(n+1))]`
-/

namespace A238263.P8015322387116939357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A133900 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238263.P8015322387116939357

/-! ## A238263.P6160409920901609866

`∑[A021913(A133900(n+1)+1)]`
-/

namespace A238263.P6160409920901609866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A133900 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238263.P6160409920901609866

/-!
# A238264: Smallest number that can be written in the form 2^k1 * p1^k2 + 2^k3 * p2^k4 in exactly n distinct ways, where p1 and p2 are odd prime numbers and k1,k2,k3,k4 are nonnegative integers.

The programs for A238264, there is no canonical definition to state claims against.
-/

/-! ## A238264.P12514791594664322964

`∑[A309120(A029707(A054168(n)))]`
-/

namespace A238264.P12514791594664322964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A029707 (A054168 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238264.P12514791594664322964

/-! ## A238264.P10948475668970864218

`∑[A144078(A239933(A276086(n)))]`
-/

namespace A238264.P10948475668970864218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144078 (A239933 (A276086 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238264.P10948475668970864218

/-! ## A238264.P16959813125411531982

`lt[A340714(A225530(n)), A142150(n)]`
-/

namespace A238264.P16959813125411531982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340714 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A238264.P16959813125411531982

/-! ## A238264.P2917899766267691173

`∑[A296076(A338669(n+1)^A039649(n+1))]`
-/

namespace A238264.P2917899766267691173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296076 (SequenceMachineLib.roundAway ((A338669 (n + 1) : ℚ) ^ (A039649 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238264.P2917899766267691173

/-! ## A238264.P16645945358533690157

`lt[A218868(n+3), A269134(A294442(3*n+1))]`
-/

namespace A238264.P16645945358533690157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218868 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269134 (A294442 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A238264.P16645945358533690157

/-!
# A238265: Primes p such that p + 1 or p - 1 is in A055462.

The programs for A238265, there is no canonical definition to state claims against.
-/

/-! ## A238265.P16377904359688342082

`record[A112865(n)+A055462(n)]`
-/

namespace A238265.P16377904359688342082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112865 n + A055462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238265.P16377904359688342082

/-!
# A238266: a(n) is the largest number that can be written in the form a(n) = 2^k1 * p1^k2 + 2^k3 * p2^k4 in n distinct ways, where p1 and p2 are odd prime numbers and k1, k2, k3, and k4 are nonnegative integers.

The programs for A238266, there is no canonical definition to state claims against.
-/

/-! ## A238266.P17655037642027905705

`A061345(record[A249036(A238884(n+1))])`
-/

namespace A238266.P17655037642027905705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249036 (A238884 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238266.P17655037642027905705

/-! ## A238266.P13066384048987493660

`eq[A322354(n+1), A330886(A066882(n))]`
-/

namespace A238266.P13066384048987493660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330886 (A066882 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238266.P13066384048987493660

/-! ## A238266.P14179265668215242167

`eq[A259936(n+1), A297155(A271060(n))]`
-/

namespace A238266.P14179265668215242167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A271060 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238266.P14179265668215242167

/-! ## A238266.P7284616699908957674

`eq[A293810(n+1), A297155(A271060(n))]`
-/

namespace A238266.P7284616699908957674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A271060 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238266.P7284616699908957674

/-! ## A238266.P3140583257293468507

`eq[A297155(A271060(n)), A333175(n+1)]`
-/

namespace A238266.P3140583257293468507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A271060 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238266.P3140583257293468507

/-!
# A238275: a(n) = (4*7^n - 1)/3.

The programs for A238275, the canonical program `A238275.P6328807643074952866` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238275 has offset 0).

The definition of A238275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*7^n-1)/3` (program `A238275.P12962919538591333792`, by `A238275.P12962919538591333792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238275.P7490757423040839578

`ogf((1+x)/(1-8x+7x^2))`
-/

namespace A238275.P7490757423040839578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -8, 7] n

end

end A238275.P7490757423040839578

namespace A238275

/-- `ogf((1+x)/(1-8x+7x^2))` -/
def P7490757423040839578.Spec : Prop :=
  ∀ n, P7490757423040839578.a n = A238275 n

end A238275

/-! ## A238275.P6328807643074952866

`7*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A238275

/-- `7*a(n-1)+2` -/
def P6328807643074952866.Spec : Prop :=
  ∀ n, (P6328807643074952866.a n : ℤ) = A238275 n

theorem P6328807643074952866.correct : P6328807643074952866.Spec := by
  intro n
  simp only [A238275]

end A238275

/-! ## A238275.P12962919538591333792

`(4*7^n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238275.P12962919538591333792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 7 ^ n : ℤ) - 1 : ℚ) / 3

end

end A238275.P12962919538591333792

namespace A238275

/-- `(4*7^n-1)/3` -/
def P12962919538591333792.Spec : Prop :=
  ∀ n, P12962919538591333792.a n = (A238275 n : ℚ)

theorem P12962919538591333792.correct : P12962919538591333792.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A238275, Nat.add_sub_cancel, A238275.P12962919538591333792.a, A238275.P6328807643074952866.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A238275, Nat.add_sub_cancel, A238275.P12962919538591333792.a, A238275.P6328807643074952866.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A238275

/-! ## A238275.P4812171370326866590

`∑{#}[n, A112468(C(n+1, 2)+#)*8^#]`
-/

namespace A238275.P4812171370326866590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A112468 (Nat.choose (n + 1) 2 + k) * (8 ^ k : ℤ)

end

end A238275.P4812171370326866590

namespace A238275

/-- `∑{#}[n, A112468(C(n+1, 2)+#)*8^#]` -/
def P4812171370326866590.Spec : Prop :=
  ∀ n, P4812171370326866590.a n = A238275 n

end A238275

/-! ## A238275.P11216765863209470065

`record[7*T(n-1,k)+2]` with `a(0)=1`
-/

namespace A238275.P11216765863209470065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * SequenceMachineLib.triUp f1 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238275.P11216765863209470065

namespace A238275

/-- `record[7*T(n-1,k)+2]` -/
def P11216765863209470065.Spec : Prop :=
  ∀ n, (P11216765863209470065.a n : ℤ) = A238275 n

end A238275

/-! ## A238275.P11366906873181947306

`2+7*a(n-1)` with `a(0)=1`
-/

namespace A238275.P11366906873181947306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 + 7 * a (n - 1)

end

end A238275.P11366906873181947306

namespace A238275

/-- `2+7*a(n-1)` -/
def P11366906873181947306.Spec : Prop :=
  ∀ n, (P11366906873181947306.a n : ℤ) = A238275 n

theorem P11366906873181947306.correct : P11366906873181947306.Spec := by
  intro n
  simp only [A238275, Nat.add_sub_cancel, A238275.P11366906873181947306.a, A238275.P6328807643074952866.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A238275

/-! ## A238275.P9225251024736993706

`lcm(7, a(n-1))+2` with `a(0)=1`
-/

namespace A238275.P9225251024736993706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 2

end

end A238275.P9225251024736993706

namespace A238275

/-- `lcm(7, a(n-1))+2` -/
def P9225251024736993706.Spec : Prop :=
  ∀ n, (P9225251024736993706.a n : ℤ) = A238275 n

end A238275

/-! ## A238275.P7486712445335875292

`∑[7*a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A238275.P7486712445335875292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238275.P7486712445335875292

namespace A238275

/-- `∑[7*a(n-1)]` -/
def P7486712445335875292.Spec : Prop :=
  ∀ n, (P7486712445335875292.a n : ℤ) = A238275 n

end A238275

/-! ## A238275.P13161607313347948732

`9-7*(1-a(n-1))` with `a(0)=1`
-/

namespace A238275.P13161607313347948732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 - 7 * (1 - a (n - 1))

end

end A238275.P13161607313347948732

namespace A238275

/-- `9-7*(1-a(n-1))` -/
def P13161607313347948732.Spec : Prop :=
  ∀ n, P13161607313347948732.a n = A238275 n

end A238275

/-! ## A238275.P8628940157170727051

`∑[A003950(n)]`
-/

namespace A238275.P8628940157170727051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238275.P8628940157170727051

namespace A238275

/-- `∑[A003950(n)]` -/
def P8628940157170727051.Spec : Prop :=
  ∀ n, P8628940157170727051.a n = A238275 n

end A238275

/-! ## A238275.P17435344048013953000

`2-A165759(n)`
-/

namespace A238275.P17435344048013953000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A165759 n

end

end A238275.P17435344048013953000

namespace A238275

/-- `2-A165759(n)` -/
def P17435344048013953000.Spec : Prop :=
  ∀ n, P17435344048013953000.a n = A238275 n

end A238275

/-! ## A238275.P3442158507487542678

`2*A083076(n)-1`
-/

namespace A238275.P3442158507487542678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083076 n - 1

end

end A238275.P3442158507487542678

namespace A238275

/-- `2*A083076(n)-1` -/
def P3442158507487542678.Spec : Prop :=
  ∀ n, P3442158507487542678.a n = A238275 n

end A238275

/-! ## A238275.P1576943051763878842

`8*A023000(n)+1`
-/

namespace A238275.P1576943051763878842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A023000 n + 1

end

end A238275.P1576943051763878842

namespace A238275

/-- `8*A023000(n)+1` -/
def P1576943051763878842.Spec : Prop :=
  ∀ n, P1576943051763878842.a n = A238275 n

end A238275

/-! ## A238275.P18290733378170728517

`∑[2*A270471(n)]-1`
-/

namespace A238275.P18290733378170728517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A238275.P18290733378170728517

namespace A238275

/-- `∑[2*A270471(n)]-1` -/
def P18290733378170728517.Spec : Prop :=
  ∀ n, P18290733378170728517.a n = A238275 n

end A238275

/-! ## A238275.P12737726551725439873

`2*A125823(n+1)+1`
-/

namespace A238275.P12737726551725439873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125823 (n + 1) + 1

end

end A238275.P12737726551725439873

namespace A238275

/-- `2*A125823(n+1)+1` -/
def P12737726551725439873.Spec : Prop :=
  ∀ n, P12737726551725439873.a n = A238275 n

end A238275

/-! ## A238275.P14204572871781688523

`4*A125725(n+1)+1`
-/

namespace A238275.P14204572871781688523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A125725 (n + 1) + 1

end

end A238275.P14204572871781688523

namespace A238275

/-- `4*A125725(n+1)+1` -/
def P14204572871781688523.Spec : Prop :=
  ∀ n, P14204572871781688523.a n = A238275 n

end A238275

/-! ## A238275.P15304964134342619856

`∑{#}[n, C(n, #)*A270576(#)]`
-/

namespace A238275.P15304964134342619856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A270576 k

end

end A238275.P15304964134342619856

namespace A238275

/-- `∑{#}[n, C(n, #)*A270576(#)]` -/
def P15304964134342619856.Spec : Prop :=
  ∀ n, P15304964134342619856.a n = A238275 n

end A238275

/-! ## A238275.P8348862190631550644

`∑[A040000(n)*A270471(n)]`
-/

namespace A238275.P8348862190631550644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A270471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238275.P8348862190631550644

namespace A238275

/-- `∑[A040000(n)*A270471(n)]` -/
def P8348862190631550644.Spec : Prop :=
  ∀ n, P8348862190631550644.a n = A238275 n

end A238275

/-! ## A238275.P13441848677585839925

`A023000(n+1)+A023000(n)`
-/

namespace A238275.P13441848677585839925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (n + 1) + A023000 n

end

end A238275.P13441848677585839925

namespace A238275

/-- `A023000(n+1)+A023000(n)` -/
def P13441848677585839925.Spec : Prop :=
  ∀ n, P13441848677585839925.a n = A238275 n

end A238275

/-! ## A238275.P18055497934245496334

`A034494(n)+A083067(n)-1`
-/

namespace A238275.P18055497934245496334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n + (A083067 n - 1)

end

end A238275.P18055497934245496334

namespace A238275

/-- `A034494(n)+A083067(n)-1` -/
def P18055497934245496334.Spec : Prop :=
  ∀ n, P18055497934245496334.a n = A238275 n

end A238275

/-!
# A238276: a(n) = (9*8^n - 2)/7.

The programs for A238276, the canonical program `A238276.P918627816755112348` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238276 has offset 0).

The definition of A238276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*8^n-2)/7` (program `A238276.P5840151754709688763`, by `A238276.P5840151754709688763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238276.P14673042731664511772

`ogf((1+x)/(1-9x+8x^2))`
-/

namespace A238276.P14673042731664511772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -9, 8] n

end

end A238276.P14673042731664511772

namespace A238276

/-- `ogf((1+x)/(1-9x+8x^2))` -/
def P14673042731664511772.Spec : Prop :=
  ∀ n, P14673042731664511772.a n = A238276 n

end A238276

/-! ## A238276.P918627816755112348

`8*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A238276

/-- `8*a(n-1)+2` -/
def P918627816755112348.Spec : Prop :=
  ∀ n, (P918627816755112348.a n : ℤ) = A238276 n

theorem P918627816755112348.correct : P918627816755112348.Spec := by
  intro n
  simp only [A238276]

end A238276

/-! ## A238276.P5840151754709688763

`(9*8^n-2)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238276.P5840151754709688763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 8 ^ n : ℤ) - 2 : ℚ) / 7

end

end A238276.P5840151754709688763

namespace A238276

/-- `(9*8^n-2)/7` -/
def P5840151754709688763.Spec : Prop :=
  ∀ n, P5840151754709688763.a n = (A238276 n : ℚ)

theorem P5840151754709688763.correct : P5840151754709688763.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A238276, Nat.add_sub_cancel, A238276.P5840151754709688763.a, A238276.P918627816755112348.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A238276, Nat.add_sub_cancel, A238276.P5840151754709688763.a, A238276.P918627816755112348.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A238276

/-! ## A238276.P13847279896638540118

`∑{#}[n, A112468(C(n+1, 2)+#)*9^#]`
-/

namespace A238276.P13847279896638540118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A112468 (Nat.choose (n + 1) 2 + k) * (9 ^ k : ℤ)

end

end A238276.P13847279896638540118

namespace A238276

/-- `∑{#}[n, A112468(C(n+1, 2)+#)*9^#]` -/
def P13847279896638540118.Spec : Prop :=
  ∀ n, P13847279896638540118.a n = A238276 n

end A238276

/-! ## A238276.P9188517800124441186

`2+8*a(n-1)` with `a(0)=1`
-/

namespace A238276.P9188517800124441186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 + 8 * a (n - 1)

end

end A238276.P9188517800124441186

namespace A238276

/-- `2+8*a(n-1)` -/
def P9188517800124441186.Spec : Prop :=
  ∀ n, (P9188517800124441186.a n : ℤ) = A238276 n

theorem P9188517800124441186.correct : P9188517800124441186.Spec := by
  intro n
  simp only [A238276, Nat.add_sub_cancel, A238276.P9188517800124441186.a, A238276.P918627816755112348.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A238276

/-! ## A238276.P12592201963602680424

`or(2, 8*a(n-1))` with `a(0)=1`
-/

namespace A238276.P12592201963602680424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 2 (8 * a (n - 1))

end

end A238276.P12592201963602680424

namespace A238276

/-- `or(2, 8*a(n-1))` -/
def P12592201963602680424.Spec : Prop :=
  ∀ n, (P12592201963602680424.a n : ℤ) = A238276 n

end A238276

/-! ## A238276.P1860926573191061330

`xor(2, 8*a(n-1))` with `a(0)=1`
-/

namespace A238276.P1860926573191061330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 (8 * a (n - 1))

end

end A238276.P1860926573191061330

namespace A238276

/-- `xor(2, 8*a(n-1))` -/
def P1860926573191061330.Spec : Prop :=
  ∀ n, (P1860926573191061330.a n : ℤ) = A238276 n

end A238276

/-! ## A238276.P10841257236876409484

`∑[8*a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A238276.P10841257236876409484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238276.P10841257236876409484

namespace A238276

/-- `∑[8*a(n-1)]` -/
def P10841257236876409484.Spec : Prop :=
  ∀ n, (P10841257236876409484.a n : ℤ) = A238276 n

end A238276

/-! ## A238276.P8006594382900168856

`10-8*(1-a(n-1))` with `a(0)=1`
-/

namespace A238276.P8006594382900168856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 - 8 * (1 - a (n - 1))

end

end A238276.P8006594382900168856

namespace A238276

/-- `10-8*(1-a(n-1))` -/
def P8006594382900168856.Spec : Prop :=
  ∀ n, P8006594382900168856.a n = A238276 n

end A238276

/-! ## A238276.P10183216448249608009

`a(n-1)/(1/2)^3+2` with `a(0)=1`
-/

namespace A238276.P10183216448249608009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 + 2

end

end A238276.P10183216448249608009

namespace A238276

/-- `a(n-1)/(1/2)^3+2` -/
def P10183216448249608009.Spec : Prop :=
  ∀ n, P10183216448249608009.a n = (A238276 n : ℚ)

end A238276

/-! ## A238276.P1395217658934787222

`∑[a(n-1)+lcm(7, a(n-1))]` with `a(0)=1, a(1)=9`
-/

namespace A238276.P1395217658934787222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + Nat.lcm 7 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238276.P1395217658934787222

namespace A238276

/-- `∑[a(n-1)+lcm(7, a(n-1))]` -/
def P1395217658934787222.Spec : Prop :=
  ∀ n, (P1395217658934787222.a n : ℤ) = A238276 n

end A238276

/-! ## A238276.P1071478911886978878

`∑[A003951(n)]`
-/

namespace A238276.P1071478911886978878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238276.P1071478911886978878

namespace A238276

/-- `∑[A003951(n)]` -/
def P1071478911886978878.Spec : Prop :=
  ∀ n, P1071478911886978878.a n = A238276 n

end A238276

/-! ## A238276.P16231880439862381793

`2-A165760(n)`
-/

namespace A238276.P16231880439862381793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A165760 n

end

end A238276.P16231880439862381793

namespace A238276

/-- `2-A165760(n)` -/
def P16231880439862381793.Spec : Prop :=
  ∀ n, P16231880439862381793.a n = A238276 n

end A238276

/-! ## A238276.P16709512657598057374

`3*A083713(n)+1`
-/

namespace A238276.P16709512657598057374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083713 n + 1

end

end A238276.P16709512657598057374

namespace A238276

/-- `3*A083713(n)+1` -/
def P16709512657598057374.Spec : Prop :=
  ∀ n, P16709512657598057374.a n = A238276 n

end A238276

/-! ## A238276.P9484849347160815434

`9*A023001(n)+1`
-/

namespace A238276.P9484849347160815434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A023001 n + 1

end

end A238276.P9484849347160815434

namespace A238276

/-- `9*A023001(n)+1` -/
def P9484849347160815434.Spec : Prop :=
  ∀ n, P9484849347160815434.a n = A238276 n

end A238276

/-! ## A238276.P411437876811460936

`ceil((∑[A003945(n)^3]+1)/3)`
-/

namespace A238276.P411437876811460936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 3⌉

end

end A238276.P411437876811460936

namespace A238276

/-- `ceil((∑[A003945(n)^3]+1)/3)` -/
def P411437876811460936.Spec : Prop :=
  ∀ n, P411437876811460936.a n = A238276 n

end A238276

/-! ## A238276.P10643793572331246482

`A083713(n)+A083068(n)`
-/

namespace A238276.P10643793572331246482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083713 n + A083068 n

end

end A238276.P10643793572331246482

namespace A238276

/-- `A083713(n)+A083068(n)` -/
def P10643793572331246482.Spec : Prop :=
  ∀ n, P10643793572331246482.a n = A238276 n

end A238276

/-! ## A238276.P5962928015345100911

`∑[A013730(n)]-A001018(n)`
-/

namespace A238276.P5962928015345100911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001018 n

end

end A238276.P5962928015345100911

namespace A238276

/-- `∑[A013730(n)]-A001018(n)` -/
def P5962928015345100911.Spec : Prop :=
  ∀ n, P5962928015345100911.a n = A238276 n

end A238276

/-! ## A238276.P15151368966913614206

`A023001(n+1)+A023001(n)`
-/

namespace A238276.P15151368966913614206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (n + 1) + A023001 n

end

end A238276.P15151368966913614206

namespace A238276

/-- `A023001(n+1)+A023001(n)` -/
def P15151368966913614206.Spec : Prop :=
  ∀ n, P15151368966913614206.a n = A238276 n

end A238276

/-! ## A238276.P4634602454806315444

`∑[A003945(n)²*A011782(n)]`
-/

namespace A238276.P4634602454806315444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n ^ 2 * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238276.P4634602454806315444

namespace A238276

/-- `∑[A003945(n)²*A011782(n)]` -/
def P4634602454806315444.Spec : Prop :=
  ∀ n, P4634602454806315444.a n = A238276 n

end A238276

/-!
# A238277: a(n) = |{0 <= k < n: the number of primes in the interval (k*n, (k+1)*n] is a square}|.

The programs for A238277, there is no canonical definition to state claims against.
-/

/-! ## A238277.P1039139001677224662

`A001221(A241743(3*(n+1))+A119034(n+1))`
-/

namespace A238277.P1039139001677224662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A241743 (3 * (n + 1)) + A119034 (n + 1)).toNat

end

end A238277.P1039139001677224662

/-!
# A238279: Triangle read by rows: T(n,k) is the number of compositions of n into nonzero parts with k parts directly followed by a different part, n>=0, 0<=k<=A004523(n-1).

The programs for A238279, there is no canonical definition to state claims against.
-/

/-! ## A238279.P9410445426835370134

`A238130(lt[0, A238130(n)])`
-/

namespace A238279.P9410445426835370134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A238279.P9410445426835370134

/-! ## A238279.P5215488717931498807

`A238130(comp[eq[0, A238130(n)]])`
-/

namespace A238279.P5215488717931498807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A238279.P5215488717931498807

/-! ## A238279.P2398620395063593496

`filter[A238130(n), A054977(#)]`
-/

namespace A238279.P2398620395063593496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054977 (f1 j).toNat = 1) n)

end

end A238279.P2398620395063593496

/-! ## A238279.P1806633740099505450

`filter[A238130(n), A057427(#)]`
-/

namespace A238279.P1806633740099505450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057427 (f1 j).toNat = 1) n)

end

end A238279.P1806633740099505450

/-! ## A238279.P15755244846736012639

`A238130(eq[1, A158388(A238130(n))])`
-/

namespace A238279.P15755244846736012639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A238130 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238279.P15755244846736012639

/-!
# A238280: Irregular triangle read by rows, T(n,k) = Sum_{i = 1..n} k mod i, k = 1..m where m = lcm(1..n).

The programs for A238280, there is no canonical definition to state claims against.
-/

/-! ## A238280.P1569834729881952411

`A022101(A062279(n))%A002024(n+1)`
-/

namespace A238280.P1569834729881952411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022101 (A062279 n).toNat) (A002024 (n + 1))

end

end A238280.P1569834729881952411

/-!
# A238282: Number of (n+1)X(2+1) 0..3 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238282, there is no canonical definition to state claims against.
-/

/-! ## A238282.P14265002855034125889

`A238287(∑[n+1]+2)`
-/

namespace A238282.P14265002855034125889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238282.P14265002855034125889

/-! ## A238282.P2614554632454538729

`record[root(A238287(n+2), A194959(n+1))]`
-/

namespace A238282.P2614554632454538729
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238287 (n + 2) : ℝ) ^ (1 / (A194959 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238282.P2614554632454538729

/-! ## A238282.P10406668513068823091

`record[A238287(Δ[A003453(n+5)])]`
-/

namespace A238282.P10406668513068823091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238282.P10406668513068823091

/-! ## A238282.P13678848252093799199

`A238287(A055998(n)+2)%A238284(n+1)`
-/

namespace A238282.P13678848252093799199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238287 (A055998 n + 2).toNat) (A238284 (n + 1))

end

end A238282.P13678848252093799199

/-! ## A238282.P9874233626609967961

`A238287(A167614(n+1)-4)%A238284(n+1)`
-/

namespace A238282.P9874233626609967961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238287 (A167614 (n + 1) - 4).toNat) (A238284 (n + 1))

end

end A238282.P9874233626609967961

/-!
# A238283: Number of (n+1) X (3+1) 0..3 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238283, there is no canonical definition to state claims against.
-/

/-! ## A238283.P6308941226867185263

`A238287(∑[n+2]+4)`
-/

namespace A238283.P6308941226867185263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238283.P6308941226867185263

/-! ## A238283.P15788853709509534695

`A238287(A167614(n+1))+A025469(n)`
-/

namespace A238283.P15788853709509534695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A167614 (n + 1)).toNat + A025469 n

end

end A238283.P15788853709509534695

/-! ## A238283.P7719281670309657535

`A057790(n)*A238287(A167614(n+1))`
-/

namespace A238283.P7719281670309657535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057790 n * A238287 (A167614 (n + 1)).toNat

end

end A238283.P7719281670309657535

/-! ## A238283.P18025794120453575624

`A238287(A167614(n+1))*A250662(n)`
-/

namespace A238283.P18025794120453575624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A167614 (n + 1)).toNat * A250662 n

end

end A238283.P18025794120453575624

/-! ## A238283.P2820112930208899611

`A238287(A167614(n+1))%A251961(n+1)`
-/

namespace A238283.P2820112930208899611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238287 (A167614 (n + 1)).toNat) (A251961 (n + 1))

end

end A238283.P2820112930208899611

/-!
# A238284: Number of (n+1)X(4+1) 0..3 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238284, there is no canonical definition to state claims against.
-/

/-! ## A238284.P2075051159325360963

`A238287(A055999(n)+10)`
-/

namespace A238284.P2075051159325360963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A055999 n + 10).toNat

end

end A238284.P2075051159325360963

/-! ## A238284.P3555572594797432266

`A238287(A167614(n+2)+1)`
-/

namespace A238284.P3555572594797432266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A167614 (n + 2) + 1).toNat

end

end A238284.P3555572594797432266

/-! ## A238284.P11947767263142420233

`A238287(Δ[A264443(n)-n²])`
-/

namespace A238284.P11947767263142420233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (f1 (n + 1) - f1 n).toNat

end

end A238284.P11947767263142420233

/-! ## A238284.P11930994410341246576

`A238287(A141214(n+1))`
-/

namespace A238284.P11930994410341246576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A141214 (n + 1)).toNat

end

end A238284.P11930994410341246576

/-! ## A238284.P16344778680023010383

`A238287(A374004(n+1))`
-/

namespace A238284.P16344778680023010383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A374004 (n + 1)).toNat

end

end A238284.P16344778680023010383

/-!
# A238285: Number of (n+1)X(5+1) 0..3 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238285, there is no canonical definition to state claims against.
-/

/-! ## A238285.P9418831572621607957

`A238287(A155212(n)+13)`
-/

namespace A238285.P9418831572621607957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A155212 n + 13).toNat

end

end A238285.P9418831572621607957

/-! ## A238285.P16205110322172334587

`A238287(A051936(n+4)+14)`
-/

namespace A238285.P16205110322172334587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A051936 (n + 4) + 14).toNat

end

end A238285.P16205110322172334587

/-! ## A238285.P10885921224690105689

`A238287(Δ[A264443(n)])`
-/

namespace A238285.P10885921224690105689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (f1 (n + 1) - f1 n).toNat

end

end A238285.P10885921224690105689

/-! ## A238285.P7725291117343832391

`A238287(A374005(n+1))`
-/

namespace A238285.P7725291117343832391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A374005 (n + 1)).toNat

end

end A238285.P7725291117343832391

/-! ## A238285.P1114060053750206988

`A238287(eq[3, A152157(n)])`
-/

namespace A238285.P1114060053750206988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238285.P1114060053750206988

/-!
# A238286: Number of (n+1)X(6+1) 0..3 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238286, there is no canonical definition to state claims against.
-/

/-! ## A238286.P11990536222704072720

`A238287(A374007(n+1))`
-/

namespace A238286.P11990536222704072720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (A374007 (n + 1)).toNat

end

end A238286.P11990536222704072720

/-! ## A238286.P11605798319377860164

`A238287(eq[3, A219347(n)])`
-/

namespace A238286.P11605798319377860164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238286.P11605798319377860164

/-! ## A238286.P16043964750566884700

`A238287(Δ[Δ[A006504(n+1)]])`
-/

namespace A238286.P16043964750566884700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238287 (f1 (n + 1) - f1 n).toNat

end

end A238286.P16043964750566884700

/-!
# A238287: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with no element greater than all horizontal neighbors or less than all vertical neighbors.

The programs for A238287, there is no canonical definition to state claims against.
-/

/-! ## A238287.P8513868342665434938

`A224204(n+1)+A021103(A003094(n))`
-/

namespace A238287.P8513868342665434938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224204 (n + 1) + A021103 (A003094 n).toNat

end

end A238287.P8513868342665434938

/-!
# A238288: Triangle read by rows T(n,k), n>=1, k>=1, in which column k lists the positive integers interleaved with k-1 zeros, but starting from 2*k at row k^2.

The programs for A238288, there is no canonical definition to state claims against.
-/

/-! ## A238288.P6399788664438288092

`(3-A212119(n+1))*A237273(n+1)`
-/

namespace A238288.P6399788664438288092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A212119 (n + 1)) * A237273 (n + 1)

end

end A238288.P6399788664438288092

/-! ## A238288.P17675396556974922604

`A237273(n+1)+A037213(A294721(n+1))`
-/

namespace A238288.P17675396556974922604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237273 (n + 1) + A037213 (A294721 (n + 1)).toNat

end

end A238288.P17675396556974922604

/-!
# A238290: a(n+1) = a(n) + 6 + 2*(n - 2*floor(n/2)) for n > 0, a(0) = 0.

The programs for A238290, the canonical program `A238290.P3679174401209293486` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238290 has offset 0).

The definition of A238290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238290.P3277656587537839344

`ogf((8x+6x^2)/(1-x-x^2+x^3))`
-/

namespace A238290.P3277656587537839344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 6] [1, -1, -1, 1] n

end

end A238290.P3277656587537839344

namespace A238290

/-- `ogf((8x+6x^2)/(1-x-x^2+x^3))` -/
def P3277656587537839344.Spec : Prop :=
  ∀ n, P3277656587537839344.a n = A238290 n

end A238290

/-! ## A238290.P3679174401209293486

`(14*n-(-1)^n+1)/2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A238290

/-- `(14*n-(-1)^n+1)/2` -/
def P3679174401209293486.Spec : Prop :=
  ∀ n, P3679174401209293486.a n = (A238290 n : ℚ)

end A238290

/-! ## A238290.P12753826677873807260

`2*A047345(n+1)`
-/

namespace A238290.P12753826677873807260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047345 (n + 1)

end

end A238290.P12753826677873807260

namespace A238290

/-- `2*A047345(n+1)` -/
def P12753826677873807260.Spec : Prop :=
  ∀ n, P12753826677873807260.a n = A238290 n

end A238290

/-! ## A238290.P5610582034337799055

`7*n+n%2`
-/

namespace A238290.P5610582034337799055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + n % 2

end

end A238290.P5610582034337799055

namespace A238290

/-- `7*n+n%2` -/
def P5610582034337799055.Spec : Prop :=
  ∀ n, (P5610582034337799055.a n : ℤ) = A238290 n

end A238290

/-! ## A238290.P18158125420396306232

`and(1, n)+7*n`
-/

namespace A238290.P18158125420396306232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 7 * n

end

end A238290.P18158125420396306232

namespace A238290

/-- `and(1, n)+7*n` -/
def P18158125420396306232.Spec : Prop :=
  ∀ n, (P18158125420396306232.a n : ℤ) = A238290 n

end A238290

/-! ## A238290.P6687257918462690523

`8*n-and(n, -2)`
-/

namespace A238290.P6687257918462690523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - Int.land (n : ℤ) (-2)

end

end A238290.P6687257918462690523

namespace A238290

/-- `8*n-and(n, -2)` -/
def P6687257918462690523.Spec : Prop :=
  ∀ n, P6687257918462690523.a n = A238290 n

end A238290

/-! ## A238290.P17859265522629488238

`a(n-2)+14` with `a(0)=0, a(1)=8`
-/

namespace A238290.P17859265522629488238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 2) + 14

end

end A238290.P17859265522629488238

namespace A238290

/-- `a(n-2)+14` -/
def P17859265522629488238.Spec : Prop :=
  ∀ n, (P17859265522629488238.a n : ℤ) = A238290 n

end A238290

/-! ## A238290.P2317744788085415556

`1-or(1, -(7*n))`
-/

namespace A238290.P2317744788085415556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (-(7 * n : ℤ))

end

end A238290.P2317744788085415556

namespace A238290

/-- `1-or(1, -(7*n))` -/
def P2317744788085415556.Spec : Prop :=
  ∀ n, P2317744788085415556.a n = A238290 n

end A238290

/-! ## A238290.P1608874400677809486

`filter[2*n, (#%7)!]`
-/

namespace A238290.P1608874400677809486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.factorial (f1 j % 7) = 1) n)

end

end A238290.P1608874400677809486

namespace A238290

/-- `filter[2*n, (#%7)!]` -/
def P1608874400677809486.Spec : Prop :=
  ∀ n, (P1608874400677809486.a n : ℤ) = A238290 n

end A238290

/-! ## A238290.P10368256498839675250

`or(1, 7*(n+1))-7`
-/

namespace A238290.P10368256498839675250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (7 * (n + 1)) : ℤ) - 7

end

end A238290.P10368256498839675250

namespace A238290

/-- `or(1, 7*(n+1))-7` -/
def P10368256498839675250.Spec : Prop :=
  ∀ n, P10368256498839675250.a n = A238290 n

end A238290

/-! ## A238290.P2431215645136085448

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=8, a(2)=6`
-/

namespace A238290.P2431215645136085448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238290.P2431215645136085448

namespace A238290

/-- `∑[abs(a(n-2))]` -/
def P2431215645136085448.Spec : Prop :=
  ∀ n, (P2431215645136085448.a n : ℤ) = A238290 n

end A238290

/-! ## A238290.P350723423492395061

`∑[14-a(n-1)]` with `a(0)=0, a(1)=8`
-/

namespace A238290.P350723423492395061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238290.P350723423492395061

namespace A238290

/-- `∑[14-a(n-1)]` -/
def P350723423492395061.Spec : Prop :=
  ∀ n, P350723423492395061.a n = A238290 n

end A238290

/-! ## A238290.P2059839236757875336

`∑[∑[ogf((8x+6x^2)/(1+x))]]`
-/

namespace A238290.P2059839236757875336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 6] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238290.P2059839236757875336

namespace A238290

/-- `∑[∑[ogf((8x+6x^2)/(1+x))]]` -/
def P2059839236757875336.Spec : Prop :=
  ∀ n, P2059839236757875336.a n = A238290 n

end A238290

/-! ## A238290.P7617265458395443040

`A113803(n+1)-3`
-/

namespace A238290.P7617265458395443040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) - 3

end

end A238290.P7617265458395443040

namespace A238290

/-- `A113803(n+1)-3` -/
def P7617265458395443040.Spec : Prop :=
  ∀ n, P7617265458395443040.a n = A238290 n

end A238290

/-! ## A238290.P6498438743365118563

`A272975(n+1)+n`
-/

namespace A238290.P6498438743365118563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1) + (n : ℤ)

end

end A238290.P6498438743365118563

namespace A238290

/-- `A272975(n+1)+n` -/
def P6498438743365118563.Spec : Prop :=
  ∀ n, P6498438743365118563.a n = A238290 n

end A238290

/-! ## A238290.P7254938707216677579

`A146951(n)+2*n`
-/

namespace A238290.P7254938707216677579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n + (2 * n : ℤ)

end

end A238290.P7254938707216677579

namespace A238290

/-- `A146951(n)+2*n` -/
def P7254938707216677579.Spec : Prop :=
  ∀ n, P7254938707216677579.a n = A238290 n

end A238290

/-! ## A238290.P9917558383726106708

`A173512(n)-(n+4)`
-/

namespace A238290.P9917558383726106708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173512 n - (n + 4 : ℤ)

end

end A238290.P9917558383726106708

namespace A238290

/-- `A173512(n)-(n+4)` -/
def P9917558383726106708.Spec : Prop :=
  ∀ n, P9917558383726106708.a n = A238290 n

end A238290

/-! ## A238290.P13166400672214451973

`7*n+A000035(n)`
-/

namespace A238290.P13166400672214451973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) + A000035 n

end

end A238290.P13166400672214451973

namespace A238290

/-- `7*n+A000035(n)` -/
def P13166400672214451973.Spec : Prop :=
  ∀ n, P13166400672214451973.a n = A238290 n

end A238290

/-! ## A238290.P16650398156960983696

`A017005(n)-gcd(2, n)`
-/

namespace A238290.P16650398156960983696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n - (Nat.gcd 2 n : ℤ)

end

end A238290.P16650398156960983696

namespace A238290

/-- `A017005(n)-gcd(2, n)` -/
def P16650398156960983696.Spec : Prop :=
  ∀ n, P16650398156960983696.a n = A238290 n

end A238290

/-! ## A238290.P14013636051190320542

`2*(A047383(n+1)-1)`
-/

namespace A238290.P14013636051190320542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047383 (n + 1) - 1)

end

end A238290.P14013636051190320542

namespace A238290

/-- `2*(A047383(n+1)-1)` -/
def P14013636051190320542.Spec : Prop :=
  ∀ n, P14013636051190320542.a n = A238290 n

end A238290

/-!
# A238293: Number of (n+1) X (1+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238293, there is no canonical definition to state claims against.
-/

/-! ## A238293.P4202825885098135965

`A238298(∑[n]+1)`
-/

namespace A238293.P4202825885098135965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238293.P4202825885098135965

/-! ## A238293.P2541642436926590775

`record[A238298(A286234(n+1))]`
-/

namespace A238293.P2541642436926590775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238293.P2541642436926590775

/-! ## A238293.P11501630961828430247

`A238298(A000124(n))+char[12]`
-/

namespace A238293.P11501630961828430247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A238293.P11501630961828430247

/-! ## A238293.P5637766171403062988

`record[A238298(A000124(∑{digits}[n, #]))]`
-/

namespace A238293.P5637766171403062988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (A000124 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238293.P5637766171403062988

/-! ## A238293.P7650855495677668368

`record[A010054(n)*A238298(n+1)]`
-/

namespace A238293.P7650855495677668368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238293.P7650855495677668368

/-!
# A238294: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238294, there is no canonical definition to state claims against.
-/

/-! ## A238294.P17789740077376248583

`A238298(∑[n+1]+2)`
-/

namespace A238294.P17789740077376248583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238294.P17789740077376248583

/-! ## A238294.P16942783133016826990

`record[root(A238298(n+2), A200370(n+1))]`
-/

namespace A238294.P16942783133016826990
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238298 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238294.P16942783133016826990

/-! ## A238294.P10339911908146336968

`record[gcd(A211399(n+1), A238298(n+3))]`
-/

namespace A238294.P10339911908146336968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211399 (n + 1)) (A238298 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238294.P10339911908146336968

/-! ## A238294.P816637277398794143

`record[A238298(Δ[A003453(n+5)])]`
-/

namespace A238294.P816637277398794143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238294.P816637277398794143

/-! ## A238294.P719377610300302844

`record[root(A238298(n+2), A033185(n+2))]`
-/

namespace A238294.P719377610300302844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238298 (n + 2) : ℝ) ^ (1 / (A033185 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238294.P719377610300302844

/-!
# A238295: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238295, there is no canonical definition to state claims against.
-/

/-! ## A238295.P15445377928329357220

`A238298(∑[n+2]+4)`
-/

namespace A238295.P15445377928329357220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238295.P15445377928329357220

/-! ## A238295.P1266085614794385414

`A238298(A167614(n+1))+A025444(n)`
-/

namespace A238295.P1266085614794385414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (A167614 (n + 1)).toNat + A025444 n

end

end A238295.P1266085614794385414

/-! ## A238295.P15234583358992818572

`A238298(A167614(n+1))+A102683(n)`
-/

namespace A238295.P15234583358992818572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (A167614 (n + 1)).toNat + A102683 n

end

end A238295.P15234583358992818572

/-! ## A238295.P7209899303596514958

`A238298(A167614(n+1))+A184955(n)`
-/

namespace A238295.P7209899303596514958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (A167614 (n + 1)).toNat + A184955 n

end

end A238295.P7209899303596514958

/-! ## A238295.P11174577353917581725

`A326473(n)+A238298(A167614(n+1))`
-/

namespace A238295.P11174577353917581725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326473 n + A238298 (A167614 (n + 1)).toNat

end

end A238295.P11174577353917581725

/-!
# A238296: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238296, there is no canonical definition to state claims against.
-/

/-! ## A238296.P15912850033534593735

`A238298(∑[n+3]+7)`
-/

namespace A238296.P15912850033534593735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238296.P15912850033534593735

/-! ## A238296.P7118661029581088233

`A248017(n+1)+A238298(A027379(n+2))`
-/

namespace A238296.P7118661029581088233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248017 (n + 1) + A238298 (A027379 (n + 2)).toNat

end

end A238296.P7118661029581088233

/-!
# A238297: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238297, there is no canonical definition to state claims against.
-/

/-! ## A238297.P5786990426414673873

`A238298(A374005(n+1))`
-/

namespace A238297.P5786990426414673873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (A374005 (n + 1)).toNat

end

end A238297.P5786990426414673873

/-! ## A238297.P13432716041359892386

`A238298(A155212(n)+13)`
-/

namespace A238297.P13432716041359892386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238298 (A155212 n + 13).toNat

end

end A238297.P13432716041359892386

/-!
# A238299: Second convolution of A107841.

The programs for A238299, the canonical program `A238299.P9906723637157957430` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238299 has offset 0).

The definition of A238299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238299.P9906723637157957430

`(A107841(n+1)+A107841(n))/3`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A238299

/-- `(A107841(n+1)+A107841(n))/3` -/
def P9906723637157957430.Spec : Prop :=
  ∀ n, P9906723637157957430.a n = (A238299 n : ℚ)

end A238299

