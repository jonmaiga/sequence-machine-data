import SequenceMachineLib
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A190200: Positions of 1 in A190198; complement of A190199.

The programs for A190200, the canonical program `A190200.P18030788477136084334` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190200 has offset 1).

The definition of A190200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190200.P18030788477136084334

`filter[n+1, A190198(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190200

/-- `filter[n+1, A190198(#)]` -/
def P18030788477136084334.Spec : Prop :=
  ∀ n, (P18030788477136084334.a n : ℤ) = A190200 (n + 1)

theorem P18030788477136084334.correct : P18030788477136084334.Spec := by
  intro n
  simp only [A190200, Nat.add_sub_cancel]

end A190200

/-! ## A190200.P202727528667706832

`eq[1, A190198(n+1)]+1`
-/

namespace A190200.P202727528667706832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190200.P202727528667706832

namespace A190200

/-- `eq[1, A190198(n+1)]+1` -/
def P202727528667706832.Spec : Prop :=
  ∀ n, (P202727528667706832.a n : ℤ) = A190200 (n + 1)

end A190200

/-! ## A190200.P10584696638202179168

`record[A000027(n+1)*A190198(n+1)]`
-/

namespace A190200.P10584696638202179168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A190198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190200.P10584696638202179168

namespace A190200

/-- `record[A000027(n+1)*A190198(n+1)]` -/
def P10584696638202179168.Spec : Prop :=
  ∀ n, P10584696638202179168.a n = A190200 (n + 1)

end A190200

/-! ## A190200.P906255662899187249

`record[(n+1)*A190198((n+1)%A190199(n+1))]`
-/

namespace A190200.P906255662899187249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A190198 (Int.tmod (n + 1 : ℤ) (A190199 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190200.P906255662899187249

namespace A190200

/-- `record[(n+1)*A190198((n+1)%A190199(n+1))]` -/
def P906255662899187249.Spec : Prop :=
  ∀ n, P906255662899187249.a n = A190200 (n + 1)

end A190200

/-! ## A190200.P3757086486205619590

`eq[n, A028310(n)*A190198(A028310(n))]`
-/

namespace A190200.P3757086486205619590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A190198 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190200.P3757086486205619590

namespace A190200

/-- `eq[n, A028310(n)*A190198(A028310(n))]` -/
def P3757086486205619590.Spec : Prop :=
  ∀ n, (P3757086486205619590.a n : ℤ) = A190200 (n + 1)

end A190200

/-! ## A190200.P4042614431220023576

`record[A008621(n)*A190198(A008621(n))]`
-/

namespace A190200.P4042614431220023576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A190198 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190200.P4042614431220023576

namespace A190200

/-- `record[A008621(n)*A190198(A008621(n))]` -/
def P4042614431220023576.Spec : Prop :=
  ∀ n, P4042614431220023576.a n = A190200 (n + 1)

end A190200

/-! ## A190200.P6735674486435530057

`record[A036234(n+1)*A190198(A036234(n+1))]`
-/

namespace A190200.P6735674486435530057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) * A190198 (A036234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190200.P6735674486435530057

namespace A190200

/-- `record[A036234(n+1)*A190198(A036234(n+1))]` -/
def P6735674486435530057.Spec : Prop :=
  ∀ n, P6735674486435530057.a n = A190200 (n + 1)

end A190200

/-!
# A190201: a(n) = [n*u+n*v]-[n*u]-[n*v], where u=sqrt(5), v=1/u, and []=floor.

The programs for A190201, the canonical program `A190201.P16507379410754093333` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190201 has offset 1).

The definition of A190201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190201.P16507379410754093333

`floor((n+1)*(sqrt(5)+1/sqrt(5)))-floor((n+1)*sqrt(5))-floor((n+1)/sqrt(5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190201

/-- `floor((n+1)*(sqrt(5)+1/sqrt(5)))-floor((n+1)*sqrt(5))-floor((n+1)/sqrt(5))` -/
def P16507379410754093333.Spec : Prop :=
  ∀ n, P16507379410754093333.a n = A190201 (n + 1)

theorem P16507379410754093333.correct : P16507379410754093333.Spec := by
  intro n
  simp only [A190201, Nat.add_sub_cancel]

end A190201

/-! ## A190201.P10666426937316270071

`char[A190203(n+1)-1]`
-/

namespace A190201.P10666426937316270071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190203 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190201.P10666426937316270071

namespace A190201

/-- `char[A190203(n+1)-1]` -/
def P10666426937316270071.Spec : Prop :=
  ∀ n, (P10666426937316270071.a n : ℤ) = A190201 (n + 1)

end A190201

/-! ## A190201.P11300875185844071856

`char[A023443(A190203(n+1))]`
-/

namespace A190201.P11300875185844071856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A190203 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190201.P11300875185844071856

namespace A190201

/-- `char[A023443(A190203(n+1))]` -/
def P11300875185844071856.Spec : Prop :=
  ∀ n, (P11300875185844071856.a n : ℤ) = A190201 (n + 1)

end A190201

/-! ## A190201.P7945554937197385250

`A194679(A136442(n)+A106096(3*n+1))`
-/

namespace A190201.P7945554937197385250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194679 (A136442 n + A106096 (3 * n + 1)).toNat

end

end A190201.P7945554937197385250

namespace A190201

/-- `A194679(A136442(n)+A106096(3*n+1))` -/
def P7945554937197385250.Spec : Prop :=
  ∀ n, P7945554937197385250.a n = A190201 (n + 1)

end A190201

/-! ## A190201.P12018986351485566111

`A327974(A247673(n+5))`
-/

namespace A190201.P12018986351485566111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327974 (A247673 (n + 5)).toNat

end

end A190201.P12018986351485566111

namespace A190201

/-- `A327974(A247673(n+5))` -/
def P12018986351485566111.Spec : Prop :=
  ∀ n, P12018986351485566111.a n = A190201 (n + 1)

end A190201

/-!
# A190202: Positions of 0 in A190201; complement of A190203.

The programs for A190202, the canonical program `A190202.P10797783697367203705` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190202 has offset 1).

The definition of A190202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190202.P10797783697367203705

`eq[0, A190201(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190202

/-- `eq[0, A190201(n+1)]+1` -/
def P10797783697367203705.Spec : Prop :=
  ∀ n, (P10797783697367203705.a n : ℤ) = A190202 (n + 1)

theorem P10797783697367203705.correct : P10797783697367203705.Spec := by
  intro n
  simp only [A190202, Nat.add_sub_cancel]

end A190202

/-! ## A190202.P10425667263193842860

`eq[0, A190201(A000038(n)+n)]`
-/

namespace A190202.P10425667263193842860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190202.P10425667263193842860

namespace A190202

/-- `eq[0, A190201(A000038(n)+n)]` -/
def P10425667263193842860.Spec : Prop :=
  ∀ n, (P10425667263193842860.a n : ℤ) = A190202 (n + 1)

end A190202

/-! ## A190202.P6375344392255632107

`eq[char[A190203(n+1)], A000007(n)]`
-/

namespace A190202.P6375344392255632107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190203 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190202.P6375344392255632107

namespace A190202

/-- `eq[char[A190203(n+1)], A000007(n)]` -/
def P6375344392255632107.Spec : Prop :=
  ∀ n, (P6375344392255632107.a n : ℤ) = A190202 (n + 1)

end A190202

/-! ## A190202.P17343905183321645279

`eq[char[A190203(n+1)], A000038(n)]`
-/

namespace A190202.P17343905183321645279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190203 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190202.P17343905183321645279

namespace A190202

/-- `eq[char[A190203(n+1)], A000038(n)]` -/
def P17343905183321645279.Spec : Prop :=
  ∀ n, (P17343905183321645279.a n : ℤ) = A190202 (n + 1)

end A190202

/-! ## A190202.P9125596146771988273

`eq[A000007(n), A190201(A028310(n))]`
-/

namespace A190202.P9125596146771988273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190202.P9125596146771988273

namespace A190202

/-- `eq[A000007(n), A190201(A028310(n))]` -/
def P9125596146771988273.Spec : Prop :=
  ∀ n, (P9125596146771988273.a n : ℤ) = A190202 (n + 1)

end A190202

/-! ## A190202.P12210824558914875289

`eq[A000007(n), A190201(A137735(n²))]`
-/

namespace A190202.P12210824558914875289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190202.P12210824558914875289

namespace A190202

/-- `eq[A000007(n), A190201(A137735(n²))]` -/
def P12210824558914875289.Spec : Prop :=
  ∀ n, (P12210824558914875289.a n : ℤ) = A190202 (n + 1)

end A190202

/-! ## A190202.P9010294482756215655

`eq[A000038(n), A190201(A137735(n²))]`
-/

namespace A190202.P9010294482756215655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190202.P9010294482756215655

namespace A190202

/-- `eq[A000038(n), A190201(A137735(n²))]` -/
def P9010294482756215655.Spec : Prop :=
  ∀ n, (P9010294482756215655.a n : ℤ) = A190202 (n + 1)

end A190202

/-!
# A190203: Positions of 1 in A190201; complement of A190202.

The programs for A190203, the canonical program `A190203.P17248765719328983400` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190203 has offset 1).

The definition of A190203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190203.P17248765719328983400

`filter[n+1, A190201(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190203

/-- `filter[n+1, A190201(#)]` -/
def P17248765719328983400.Spec : Prop :=
  ∀ n, (P17248765719328983400.a n : ℤ) = A190203 (n + 1)

theorem P17248765719328983400.correct : P17248765719328983400.Spec := by
  intro n
  simp only [A190203, Nat.add_sub_cancel]

end A190203

/-! ## A190203.P5855497239325694616

`eq[1, A190201(n+1)]+1`
-/

namespace A190203.P5855497239325694616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190203.P5855497239325694616

namespace A190203

/-- `eq[1, A190201(n+1)]+1` -/
def P5855497239325694616.Spec : Prop :=
  ∀ n, (P5855497239325694616.a n : ℤ) = A190203 (n + 1)

end A190203

/-! ## A190203.P13884787356391089726

`record[(n+2)*A190201(n+2)]`
-/

namespace A190203.P13884787356391089726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A190201 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190203.P13884787356391089726

namespace A190203

/-- `record[(n+2)*A190201(n+2)]` -/
def P13884787356391089726.Spec : Prop :=
  ∀ n, P13884787356391089726.a n = A190203 (n + 1)

end A190203

/-! ## A190203.P16686903353699081155

`eq[1, A190201(A028310(n))]`
-/

namespace A190203.P16686903353699081155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190203.P16686903353699081155

namespace A190203

/-- `eq[1, A190201(A028310(n))]` -/
def P16686903353699081155.Spec : Prop :=
  ∀ n, (P16686903353699081155.a n : ℤ) = A190203 (n + 1)

end A190203

/-! ## A190203.P11503037081026594714

`A020725(eq[1, A190201(n+1)])`
-/

namespace A190203.P11503037081026594714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190203.P11503037081026594714

namespace A190203

/-- `A020725(eq[1, A190201(n+1)])` -/
def P11503037081026594714.Spec : Prop :=
  ∀ n, P11503037081026594714.a n = A190203 (n + 1)

end A190203

/-! ## A190203.P17955048383165253631

`eq[1, A190201(A000007(n)+n)]`
-/

namespace A190203.P17955048383165253631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190203.P17955048383165253631

namespace A190203

/-- `eq[1, A190201(A000007(n)+n)]` -/
def P17955048383165253631.Spec : Prop :=
  ∀ n, (P17955048383165253631.a n : ℤ) = A190203 (n + 1)

end A190203

/-! ## A190203.P9249291539083718086

`eq[1, A190201(A003056(A000124(n)))]`
-/

namespace A190203.P9249291539083718086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190203.P9249291539083718086

namespace A190203

/-- `eq[1, A190201(A003056(A000124(n)))]` -/
def P9249291539083718086.Spec : Prop :=
  ∀ n, (P9249291539083718086.a n : ℤ) = A190203 (n + 1)

end A190203

/-! ## A190203.P6057050882620135585

`eq[1, A190201(A137735(n²))]`
-/

namespace A190203.P6057050882620135585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190201 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190203.P6057050882620135585

namespace A190203

/-- `eq[1, A190201(A137735(n²))]` -/
def P6057050882620135585.Spec : Prop :=
  ∀ n, (P6057050882620135585.a n : ℤ) = A190203 (n + 1)

end A190203

/-!
# A190204: a(n) = [n*u + n*v] - [n*u] - [n*v], where u=sqrt(6), v=1/u, and []=floor.

The programs for A190204, the canonical program `A190204.P14525292143260477766` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190204 has offset 1).

The definition of A190204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190204.P14525292143260477766

`floor((n+1)*(sqrt(6)+1/sqrt(6)))-floor((n+1)*sqrt(6))-floor((n+1)/sqrt(6))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190204

/-- `floor((n+1)*(sqrt(6)+1/sqrt(6)))-floor((n+1)*sqrt(6))-floor((n+1)/sqrt(6))` -/
def P14525292143260477766.Spec : Prop :=
  ∀ n, P14525292143260477766.a n = A190204 (n + 1)

theorem P14525292143260477766.correct : P14525292143260477766.Spec := by
  intro n
  simp only [A190204, Nat.add_sub_cancel]

end A190204

/-! ## A190204.P7731214023891785752

`char[A190206(n+1)-1]`
-/

namespace A190204.P7731214023891785752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190206 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190204.P7731214023891785752

namespace A190204

/-- `char[A190206(n+1)-1]` -/
def P7731214023891785752.Spec : Prop :=
  ∀ n, (P7731214023891785752.a n : ℤ) = A190204 (n + 1)

end A190204

/-! ## A190204.P1248104730696521350

`char[comp[A190205(n+1)-1]]`
-/

namespace A190204.P1248104730696521350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190205 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A190204.P1248104730696521350

namespace A190204

/-- `char[comp[A190205(n+1)-1]]` -/
def P1248104730696521350.Spec : Prop :=
  ∀ n, (P1248104730696521350.a n : ℤ) = A190204 (n + 1)

end A190204

/-! ## A190204.P10241763533920368366

`A294711(A361736(3*n+1))%2`
-/

namespace A190204.P10241763533920368366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294711 (A361736 (3 * n + 1)).toNat) 2

end

end A190204.P10241763533920368366

namespace A190204

/-- `A294711(A361736(3*n+1))%2` -/
def P10241763533920368366.Spec : Prop :=
  ∀ n, P10241763533920368366.a n = A190204 (n + 1)

end A190204

/-! ## A190204.P9700130209453176402

`A195062(A335303(n+2))`
-/

namespace A190204.P9700130209453176402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195062 (A335303 (n + 2)).toNat

end

end A190204.P9700130209453176402

namespace A190204

/-- `A195062(A335303(n+2))` -/
def P9700130209453176402.Spec : Prop :=
  ∀ n, P9700130209453176402.a n = A190204 (n + 1)

end A190204

/-!
# A190205: Positions of 0 in A190204; complement of A190206.

The programs for A190205, the canonical program `A190205.P1697181052491441500` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190205 has offset 1).

The definition of A190205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190205.P1697181052491441500

`eq[0, A190204(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190205

/-- `eq[0, A190204(n+1)]+1` -/
def P1697181052491441500.Spec : Prop :=
  ∀ n, (P1697181052491441500.a n : ℤ) = A190205 (n + 1)

theorem P1697181052491441500.correct : P1697181052491441500.Spec := by
  intro n
  simp only [A190205, Nat.add_sub_cancel]

end A190205

/-! ## A190205.P11002613078522229906

`eq[0, A190204(A000038(n)+n)]`
-/

namespace A190205.P11002613078522229906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190205.P11002613078522229906

namespace A190205

/-- `eq[0, A190204(A000038(n)+n)]` -/
def P11002613078522229906.Spec : Prop :=
  ∀ n, (P11002613078522229906.a n : ℤ) = A190205 (n + 1)

end A190205

/-! ## A190205.P7384738911801909525

`eq[char[A190206(n+1)], A000007(n)]`
-/

namespace A190205.P7384738911801909525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190206 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190205.P7384738911801909525

namespace A190205

/-- `eq[char[A190206(n+1)], A000007(n)]` -/
def P7384738911801909525.Spec : Prop :=
  ∀ n, (P7384738911801909525.a n : ℤ) = A190205 (n + 1)

end A190205

/-! ## A190205.P1183344227673424923

`eq[char[A190206(n+1)], A000038(n)]`
-/

namespace A190205.P1183344227673424923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190206 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190205.P1183344227673424923

namespace A190205

/-- `eq[char[A190206(n+1)], A000038(n)]` -/
def P1183344227673424923.Spec : Prop :=
  ∀ n, (P1183344227673424923.a n : ℤ) = A190205 (n + 1)

end A190205

/-! ## A190205.P3653326755601280263

`eq[A000007(n), A190204(A028310(n))]`
-/

namespace A190205.P3653326755601280263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190205.P3653326755601280263

namespace A190205

/-- `eq[A000007(n), A190204(A028310(n))]` -/
def P3653326755601280263.Spec : Prop :=
  ∀ n, (P3653326755601280263.a n : ℤ) = A190205 (n + 1)

end A190205

/-! ## A190205.P7587880899288699994

`eq[A000038(n), A190204(A028310(n))]`
-/

namespace A190205.P7587880899288699994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190205.P7587880899288699994

namespace A190205

/-- `eq[A000038(n), A190204(A028310(n))]` -/
def P7587880899288699994.Spec : Prop :=
  ∀ n, (P7587880899288699994.a n : ℤ) = A190205 (n + 1)

end A190205

/-! ## A190205.P2683312108576120604

`record[A131732(A190204(n+1)+2*n)]`
-/

namespace A190205.P2683312108576120604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A190204 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190205.P2683312108576120604

namespace A190205

/-- `record[A131732(A190204(n+1)+2*n)]` -/
def P2683312108576120604.Spec : Prop :=
  ∀ n, P2683312108576120604.a n = A190205 (n + 1)

end A190205

/-!
# A190206: Positions of 1 in A190204; complement of A190205.

The programs for A190206, the canonical program `A190206.P8511503827891759838` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190206 has offset 1).

The definition of A190206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190206.P8511503827891759838

`comp[A190205(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190206

/-- `comp[A190205(n+1)-1]+1` -/
def P8511503827891759838.Spec : Prop :=
  ∀ n, (P8511503827891759838.a n : ℤ) = A190206 (n + 1)

theorem P8511503827891759838.correct : P8511503827891759838.Spec := by
  intro n
  simp only [A190206, Nat.add_sub_cancel]

end A190206

/-! ## A190206.P8063146106417598637

`filter[n+1, A190204(#)]`
-/

namespace A190206.P8063146106417598637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190204 (f1 j) = 1) n)

end

end A190206.P8063146106417598637

namespace A190206

/-- `filter[n+1, A190204(#)]` -/
def P8063146106417598637.Spec : Prop :=
  ∀ n, (P8063146106417598637.a n : ℤ) = A190206 (n + 1)

end A190206

/-! ## A190206.P2696311719900637070

`eq[1, A190204(n+1)]+1`
-/

namespace A190206.P2696311719900637070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190206.P2696311719900637070

namespace A190206

/-- `eq[1, A190204(n+1)]+1` -/
def P2696311719900637070.Spec : Prop :=
  ∀ n, (P2696311719900637070.a n : ℤ) = A190206 (n + 1)

end A190206

/-! ## A190206.P4355433477605836234

`record[A190204(n+2)*(n+2)]`
-/

namespace A190206.P4355433477605836234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (n + 2) * (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190206.P4355433477605836234

namespace A190206

/-- `record[A190204(n+2)*(n+2)]` -/
def P4355433477605836234.Spec : Prop :=
  ∀ n, P4355433477605836234.a n = A190206 (n + 1)

end A190206

/-! ## A190206.P6070117119095947785

`eq[1, A190204(A028310(n))]`
-/

namespace A190206.P6070117119095947785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190206.P6070117119095947785

namespace A190206

/-- `eq[1, A190204(A028310(n))]` -/
def P6070117119095947785.Spec : Prop :=
  ∀ n, (P6070117119095947785.a n : ℤ) = A190206 (n + 1)

end A190206

/-! ## A190206.P12659508746825850224

`eq[1, A190204(A000007(n)+n)]`
-/

namespace A190206.P12659508746825850224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190206.P12659508746825850224

namespace A190206

/-- `eq[1, A190204(A000007(n)+n)]` -/
def P12659508746825850224.Spec : Prop :=
  ∀ n, (P12659508746825850224.a n : ℤ) = A190206 (n + 1)

end A190206

/-! ## A190206.P10334337270069002773

`eq[1, A190204(gcd(n, A008458(n)))]`
-/

namespace A190206.P10334337270069002773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190206.P10334337270069002773

namespace A190206

/-- `eq[1, A190204(gcd(n, A008458(n)))]` -/
def P10334337270069002773.Spec : Prop :=
  ∀ n, (P10334337270069002773.a n : ℤ) = A190206 (n + 1)

end A190206

/-! ## A190206.P14025750949941519309

`eq[char[A190205(n+1)], A000007(n)]`
-/

namespace A190206.P14025750949941519309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190205 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190206.P14025750949941519309

namespace A190206

/-- `eq[char[A190205(n+1)], A000007(n)]` -/
def P14025750949941519309.Spec : Prop :=
  ∀ n, (P14025750949941519309.a n : ℤ) = A190206 (n + 1)

end A190206

/-! ## A190206.P17617165009261993319

`eq[1, A190204(A137735(n²))]`
-/

namespace A190206.P17617165009261993319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190206.P17617165009261993319

namespace A190206

/-- `eq[1, A190204(A137735(n²))]` -/
def P17617165009261993319.Spec : Prop :=
  ∀ n, (P17617165009261993319.a n : ℤ) = A190206 (n + 1)

end A190206

/-!
# A190207: a(n) = [n*u + n*v] - [n*u] - [n*v], where u=sqrt(7), v=1/u, and []=floor.

The programs for A190207, the canonical program `A190207.P12014469512335387099` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190207 has offset 1).

The definition of A190207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190207.P12014469512335387099

`floor((n+1)*(sqrt(7)+1/sqrt(7)))-floor((n+1)*sqrt(7))-floor((n+1)/sqrt(7))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190207

/-- `floor((n+1)*(sqrt(7)+1/sqrt(7)))-floor((n+1)*sqrt(7))-floor((n+1)/sqrt(7))` -/
def P12014469512335387099.Spec : Prop :=
  ∀ n, P12014469512335387099.a n = A190207 (n + 1)

theorem P12014469512335387099.correct : P12014469512335387099.Spec := by
  intro n
  simp only [A190207, Nat.add_sub_cancel]

end A190207

/-! ## A190207.P5946108825930272425

`char[A190209(n+1)-1]`
-/

namespace A190207.P5946108825930272425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190209 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190207.P5946108825930272425

namespace A190207

/-- `char[A190209(n+1)-1]` -/
def P5946108825930272425.Spec : Prop :=
  ∀ n, (P5946108825930272425.a n : ℤ) = A190207 (n + 1)

end A190207

/-! ## A190207.P363328292945974426

`char[comp[A190208(n+1)]-1]`
-/

namespace A190207.P363328292945974426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190208 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190207.P363328292945974426

namespace A190207

/-- `char[comp[A190208(n+1)]-1]` -/
def P363328292945974426.Spec : Prop :=
  ∀ n, (P363328292945974426.a n : ℤ) = A190207 (n + 1)

end A190207

/-! ## A190207.P12885141955143231280

`A047999(A326031(2*n)!)`
-/

namespace A190207.P12885141955143231280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (Nat.factorial (A326031 (2 * n)).toNat)

end

end A190207.P12885141955143231280

namespace A190207

/-- `A047999(A326031(2*n)!)` -/
def P12885141955143231280.Spec : Prop :=
  ∀ n, P12885141955143231280.a n = A190207 (n + 1)

end A190207

/-! ## A190207.P9771299786139588240

`A178401(A326031(2*n-n%2)!)`
-/

namespace A190207.P9771299786139588240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 (Nat.factorial (A326031 (2 * n - n % 2)).toNat)

end

end A190207.P9771299786139588240

namespace A190207

/-- `A178401(A326031(2*n-n%2)!)` -/
def P9771299786139588240.Spec : Prop :=
  ∀ n, P9771299786139588240.a n = A190207 (n + 1)

end A190207

/-!
# A190208: Positions of 0 in A190207; complement of A190209.

The programs for A190208, the canonical program `A190208.P8869776838095487623` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190208 has offset 1).

The definition of A190208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190208.P8869776838095487623

`eq[0, A190207(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190208

/-- `eq[0, A190207(n+1)]+1` -/
def P8869776838095487623.Spec : Prop :=
  ∀ n, (P8869776838095487623.a n : ℤ) = A190208 (n + 1)

theorem P8869776838095487623.correct : P8869776838095487623.Spec := by
  intro n
  simp only [A190208, Nat.add_sub_cancel]

end A190208

/-! ## A190208.P18138285222774507640

`eq[0, A190207(A028310(n))]`
-/

namespace A190208.P18138285222774507640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190207 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190208.P18138285222774507640

namespace A190208

/-- `eq[0, A190207(A028310(n))]` -/
def P18138285222774507640.Spec : Prop :=
  ∀ n, (P18138285222774507640.a n : ℤ) = A190208 (n + 1)

end A190208

/-! ## A190208.P16434099455844093383

`A020725(eq[0, A190207(n+1)])`
-/

namespace A190208.P16434099455844093383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190208.P16434099455844093383

namespace A190208

/-- `A020725(eq[0, A190207(n+1)])` -/
def P16434099455844093383.Spec : Prop :=
  ∀ n, P16434099455844093383.a n = A190208 (n + 1)

end A190208

/-! ## A190208.P14768236052050979203

`eq[0, A190207(A000007(n)+n)]`
-/

namespace A190208.P14768236052050979203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190207 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190208.P14768236052050979203

namespace A190208

/-- `eq[0, A190207(A000007(n)+n)]` -/
def P14768236052050979203.Spec : Prop :=
  ∀ n, (P14768236052050979203.a n : ℤ) = A190208 (n + 1)

end A190208

/-! ## A190208.P12181454635374432012

`eq[0, A190207(A000038(n)+n)]`
-/

namespace A190208.P12181454635374432012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190207 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190208.P12181454635374432012

namespace A190208

/-- `eq[0, A190207(A000038(n)+n)]` -/
def P12181454635374432012.Spec : Prop :=
  ∀ n, (P12181454635374432012.a n : ℤ) = A190208 (n + 1)

end A190208

/-! ## A190208.P3105179203329780444

`eq[0, A190207(A233583(n+1))]`
-/

namespace A190208.P3105179203329780444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190207 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190208.P3105179203329780444

namespace A190208

/-- `eq[0, A190207(A233583(n+1))]` -/
def P3105179203329780444.Spec : Prop :=
  ∀ n, (P3105179203329780444.a n : ℤ) = A190208 (n + 1)

end A190208

/-!
# A190209: Positions of 1 in A190207; complement of A190208.

The programs for A190209, the canonical program `A190209.P6340617711522481792` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190209 has offset 1).

The definition of A190209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190209.P6340617711522481792

`comp[A190208(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190209

/-- `comp[A190208(n+1)-1]+1` -/
def P6340617711522481792.Spec : Prop :=
  ∀ n, (P6340617711522481792.a n : ℤ) = A190209 (n + 1)

theorem P6340617711522481792.correct : P6340617711522481792.Spec := by
  intro n
  simp only [A190209, Nat.add_sub_cancel]

end A190209

/-! ## A190209.P1229209968142054541

`filter[n+1, A190207(#)]`
-/

namespace A190209.P1229209968142054541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190207 (f1 j) = 1) n)

end

end A190209.P1229209968142054541

namespace A190209

/-- `filter[n+1, A190207(#)]` -/
def P1229209968142054541.Spec : Prop :=
  ∀ n, (P1229209968142054541.a n : ℤ) = A190209 (n + 1)

end A190209

/-! ## A190209.P3705042624542984553

`eq[1, A190207(n+1)]+1`
-/

namespace A190209.P3705042624542984553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190207 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190209.P3705042624542984553

namespace A190209

/-- `eq[1, A190207(n+1)]+1` -/
def P3705042624542984553.Spec : Prop :=
  ∀ n, (P3705042624542984553.a n : ℤ) = A190209 (n + 1)

end A190209

/-! ## A190209.P6522653268291556295

`record[A000027(n+1)*A190207(n+1)]`
-/

namespace A190209.P6522653268291556295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A190207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190209.P6522653268291556295

namespace A190209

/-- `record[A000027(n+1)*A190207(n+1)]` -/
def P6522653268291556295.Spec : Prop :=
  ∀ n, P6522653268291556295.a n = A190209 (n + 1)

end A190209

/-! ## A190209.P17138356189492716396

`lt[A301676(n), A160278(2*(n+1))]+1`
-/

namespace A190209.P17138356189492716396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160278 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A190209.P17138356189492716396

namespace A190209

/-- `lt[A301676(n), A160278(2*(n+1))]+1` -/
def P17138356189492716396.Spec : Prop :=
  ∀ n, (P17138356189492716396.a n : ℤ) = A190209 (n + 1)

end A190209

/-!
# A190210: a(n) = [n*u + n*v] - [n*u] - [n*v], where u=sqrt(8), v=1/u, and []=floor.

The programs for A190210, the canonical program `A190210.P7462457573873853683` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190210 has offset 1).

The definition of A190210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190210.P7462457573873853683

`floor((n+1)*(sqrt(8)+1/sqrt(8)))-floor((n+1)*sqrt(8))-floor((n+1)/sqrt(8))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190210

/-- `floor((n+1)*(sqrt(8)+1/sqrt(8)))-floor((n+1)*sqrt(8))-floor((n+1)/sqrt(8))` -/
def P7462457573873853683.Spec : Prop :=
  ∀ n, P7462457573873853683.a n = A190210 (n + 1)

theorem P7462457573873853683.correct : P7462457573873853683.Spec := by
  intro n
  simp only [A190210, Nat.add_sub_cancel]

end A190210

/-! ## A190210.P2740811960767199318

`char[A190212(n+1)-1]`
-/

namespace A190210.P2740811960767199318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190212 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190210.P2740811960767199318

namespace A190210

/-- `char[A190212(n+1)-1]` -/
def P2740811960767199318.Spec : Prop :=
  ∀ n, (P2740811960767199318.a n : ℤ) = A190210 (n + 1)

end A190210

/-! ## A190210.P12823059213255653760

`char[A023443(A190212(n+1))]`
-/

namespace A190210.P12823059213255653760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A190212 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190210.P12823059213255653760

namespace A190210

/-- `char[A023443(A190212(n+1))]` -/
def P12823059213255653760.Spec : Prop :=
  ∀ n, (P12823059213255653760.a n : ℤ) = A190210 (n + 1)

end A190210

/-! ## A190210.P10324585073012709294

`char[A321804(C(2, n+2))+A190212(n+1)]`
-/

namespace A190210.P10324585073012709294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.choose 2 (n + 2)) + A190212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190210.P10324585073012709294

namespace A190210

/-- `char[A321804(C(2, n+2))+A190212(n+1)]` -/
def P10324585073012709294.Spec : Prop :=
  ∀ n, (P10324585073012709294.a n : ℤ) = A190210 (n + 1)

end A190210

/-! ## A190210.P1426414923331475493

`char[A321804(gcd(n, n+1))+A190212(n+1)]`
-/

namespace A190210.P1426414923331475493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.gcd n (n + 1)) + A190212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190210.P1426414923331475493

namespace A190210

/-- `char[A321804(gcd(n, n+1))+A190212(n+1)]` -/
def P1426414923331475493.Spec : Prop :=
  ∀ n, (P1426414923331475493.a n : ℤ) = A190210 (n + 1)

end A190210

/-! ## A190210.P8554371689762947073

`char[A321804(A000377(n))+A190212(n+1)]`
-/

namespace A190210.P8554371689762947073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000377 n).toNat + A190212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190210.P8554371689762947073

namespace A190210

/-- `char[A321804(A000377(n))+A190212(n+1)]` -/
def P8554371689762947073.Spec : Prop :=
  ∀ n, (P8554371689762947073.a n : ℤ) = A190210 (n + 1)

end A190210

/-!
# A190211: Positions of 0 in A190210; complement of A190212.

The programs for A190211, the canonical program `A190211.P2912278706240508550` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190211 has offset 1).

The definition of A190211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190211.P2912278706240508550

`eq[0, A190210(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190211

/-- `eq[0, A190210(n+1)]+1` -/
def P2912278706240508550.Spec : Prop :=
  ∀ n, (P2912278706240508550.a n : ℤ) = A190211 (n + 1)

theorem P2912278706240508550.correct : P2912278706240508550.Spec := by
  intro n
  simp only [A190211, Nat.add_sub_cancel]

end A190211

/-! ## A190211.P13719960599294979806

`A020725(eq[0, A190210(n+1)])`
-/

namespace A190211.P13719960599294979806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190211.P13719960599294979806

namespace A190211

/-- `A020725(eq[0, A190210(n+1)])` -/
def P13719960599294979806.Spec : Prop :=
  ∀ n, P13719960599294979806.a n = A190211 (n + 1)

end A190211

/-! ## A190211.P4005218057404848459

`A065475(eq[0, A190210(n+1)])`
-/

namespace A190211.P4005218057404848459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190211.P4005218057404848459

namespace A190211

/-- `A065475(eq[0, A190210(n+1)])` -/
def P4005218057404848459.Spec : Prop :=
  ∀ n, P4005218057404848459.a n = A190211 (n + 1)

end A190211

/-! ## A190211.P13172203777682356420

`eq[0, A190210(A000038(n)+n)]`
-/

namespace A190211.P13172203777682356420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190210 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190211.P13172203777682356420

namespace A190211

/-- `eq[0, A190210(A000038(n)+n)]` -/
def P13172203777682356420.Spec : Prop :=
  ∀ n, (P13172203777682356420.a n : ℤ) = A190211 (n + 1)

end A190211

/-! ## A190211.P4234856805540812062

`eq[0, A190210(A000007(n)+n)]`
-/

namespace A190211.P4234856805540812062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190210 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190211.P4234856805540812062

namespace A190211

/-- `eq[0, A190210(A000007(n)+n)]` -/
def P4234856805540812062.Spec : Prop :=
  ∀ n, (P4234856805540812062.a n : ℤ) = A190211 (n + 1)

end A190211

/-! ## A190211.P6619442137396829698

`eq[0, A190210(gcd(n, A008574(n)))]`
-/

namespace A190211.P6619442137396829698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190210 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190211.P6619442137396829698

namespace A190211

/-- `eq[0, A190210(gcd(n, A008574(n)))]` -/
def P6619442137396829698.Spec : Prop :=
  ∀ n, (P6619442137396829698.a n : ℤ) = A190211 (n + 1)

end A190211

/-! ## A190211.P10335890919786606898

`eq[0, A190210(A233583(n+1))]`
-/

namespace A190211.P10335890919786606898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190210 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190211.P10335890919786606898

namespace A190211

/-- `eq[0, A190210(A233583(n+1))]` -/
def P10335890919786606898.Spec : Prop :=
  ∀ n, (P10335890919786606898.a n : ℤ) = A190211 (n + 1)

end A190211

/-!
# A190212: Positions of 1 in A190210; complement of A190211.

The programs for A190212, the canonical program `A190212.P5887754192995174555` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190212 has offset 1).

The definition of A190212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190212.P5887754192995174555

`filter[n+1, A190210(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190212

/-- `filter[n+1, A190210(#)]` -/
def P5887754192995174555.Spec : Prop :=
  ∀ n, (P5887754192995174555.a n : ℤ) = A190212 (n + 1)

theorem P5887754192995174555.correct : P5887754192995174555.Spec := by
  intro n
  simp only [A190212, Nat.add_sub_cancel]

end A190212

/-! ## A190212.P1276407284927204188

`eq[1, A190210(n+1)]+1`
-/

namespace A190212.P1276407284927204188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190212.P1276407284927204188

namespace A190212

/-- `eq[1, A190210(n+1)]+1` -/
def P1276407284927204188.Spec : Prop :=
  ∀ n, (P1276407284927204188.a n : ℤ) = A190212 (n + 1)

end A190212

/-! ## A190212.P16329635420510063681

`record[A000027(n+1)*A190210(n+1)]`
-/

namespace A190212.P16329635420510063681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A190210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190212.P16329635420510063681

namespace A190212

/-- `record[A000027(n+1)*A190210(n+1)]` -/
def P16329635420510063681.Spec : Prop :=
  ∀ n, P16329635420510063681.a n = A190212 (n + 1)

end A190212

/-! ## A190212.P9244309215035816834

`record[A023443(n+2)*A190210(n+1)]`
-/

namespace A190212.P9244309215035816834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (n + 2) * A190210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190212.P9244309215035816834

namespace A190212

/-- `record[A023443(n+2)*A190210(n+1)]` -/
def P9244309215035816834.Spec : Prop :=
  ∀ n, P9244309215035816834.a n = A190212 (n + 1)

end A190212

/-! ## A190212.P6414202782815312248

`record[A026238(n+2)*A190210(A026238(n+2))]`
-/

namespace A190212.P6414202782815312248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (n + 2) * A190210 (A026238 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190212.P6414202782815312248

namespace A190212

/-- `record[A026238(n+2)*A190210(A026238(n+2))]` -/
def P6414202782815312248.Spec : Prop :=
  ∀ n, P6414202782815312248.a n = A190212 (n + 1)

end A190212

/-! ## A190212.P7974333644027065646

`record[A190210(A210436(n))*A210436(n)]`
-/

namespace A190212.P7974333644027065646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190210 (A210436 n).toNat * A210436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190212.P7974333644027065646

namespace A190212

/-- `record[A190210(A210436(n))*A210436(n)]` -/
def P7974333644027065646.Spec : Prop :=
  ∀ n, P7974333644027065646.a n = A190212 (n + 1)

end A190212

/-! ## A190212.P9247585342333669314

`record[A008611(3*n)*A190210(n+1)]`
-/

namespace A190212.P9247585342333669314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) * A190210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190212.P9247585342333669314

namespace A190212

/-- `record[A008611(3*n)*A190210(n+1)]` -/
def P9247585342333669314.Spec : Prop :=
  ∀ n, P9247585342333669314.a n = A190212 (n + 1)

end A190212

/-! ## A190212.P2495595825112014476

`record[A190210(A236678(n))*A236678(n)]`
-/

namespace A190212.P2495595825112014476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190210 (A236678 n).toNat * A236678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190212.P2495595825112014476

namespace A190212

/-- `record[A190210(A236678(n))*A236678(n)]` -/
def P2495595825112014476.Spec : Prop :=
  ∀ n, P2495595825112014476.a n = A190212 (n + 1)

end A190212

/-!
# A190213: Integers m such that m divides (2^m-2)^2 and (m-2)^((k-1)*(1+k*(m-1))) == 1 (mod k), where k = 2^m - 1.

The programs for A190213, there is no canonical definition to state claims against.
-/

/-! ## A190213.P6614667372957608742

`A000043(n%a(n-1))` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A190213.P6614667372957608742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A000043 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A190213.P6614667372957608742

/-! ## A190213.P12118989414075216890

`∪[(2-A258101(n+1))², A174265(n+1)]`
-/

namespace A190213.P12118989414075216890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A258101 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190213.P12118989414075216890

/-! ## A190213.P10651153807617983441

`lcm(A001221(a(n-1)), A000043(n))` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A190213.P10651153807617983441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  Int.lcm (A001221 (a (n - 1))) (A000043 n)

end

end A190213.P10651153807617983441

/-! ## A190213.P10189777837964680208

`filter[A174269(n+1), A368916(#)]`
-/

namespace A190213.P10189777837964680208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A190213.P10189777837964680208

/-! ## A190213.P5729068769532555747

`filter[A174269(n+2), A212793(#)]`
-/

namespace A190213.P5729068769532555747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A190213.P5729068769532555747

/-!
# A190214: Expansion of (1-x)/(1-x^6-3*x^5-4*x^4-3*x^3-2*x^2-2*x).

The programs for A190214, the canonical program `A190214.P7624550301754221871` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190214 has offset 0).

The definition of A190214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-2x^2-3x^3-4x^4-3x^5-x^6))` (program `A190214.P7624550301754221871`, by `A190214.P7624550301754221871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190214.P7624550301754221871

`ogf((1-x)/(1-2x-2x^2-3x^3-4x^4-3x^5-x^6))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190214

/-- `ogf((1-x)/(1-2x-2x^2-3x^3-4x^4-3x^5-x^6))` -/
def P7624550301754221871.Spec : Prop :=
  ∀ n, P7624550301754221871.a n = A190214 n

theorem P7624550301754221871.correct : P7624550301754221871.Spec := by
  intro n
  simp only [A190214]

end A190214

/-! ## A190214.P7416952776724744943

`A325123(A167762(n))+A099098(n)`
-/

namespace A190214.P7416952776724744943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325123 (A167762 n).toNat + A099098 n

end

end A190214.P7416952776724744943

namespace A190214

/-- `A325123(A167762(n))+A099098(n)` -/
def P7416952776724744943.Spec : Prop :=
  ∀ n, P7416952776724744943.a n = A190214 n

end A190214

/-! ## A190214.P3268759940745943330

`A052529(n)-A001606(A051249(n))`
-/

namespace A190214.P3268759940745943330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 n - A001606 (A051249 n).toNat

end

end A190214.P3268759940745943330

namespace A190214

/-- `A052529(n)-A001606(A051249(n))` -/
def P3268759940745943330.Spec : Prop :=
  ∀ n, P3268759940745943330.a n = A190214 n

end A190214

/-!
# A190215: Riordan matrix ((1-x-x^2)/(1-2x-x^2),(x-x^2-x^3)/(1-2x-x^2)).

The programs for A190215, there is no canonical definition to state claims against.
-/

/-! ## A190215.P14916395947612409343

`A190252(n)-A112765(A007865(n))`
-/

namespace A190215.P14916395947612409343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190252 n - A112765 (A007865 n).toNat

end

end A190215.P14916395947612409343

/-! ## A190215.P13478289107950041177

`A190252(n)-A318982(A033931(n+1))`
-/

namespace A190215.P13478289107950041177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190252 n - A318982 (A033931 (n + 1)).toNat

end

end A190215.P13478289107950041177

/-! ## A190215.P12360489310745584319

`A190252(n)-A057498(A277083(n))`
-/

namespace A190215.P12360489310745584319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190252 n - A057498 (A277083 n).toNat

end

end A190215.P12360489310745584319

/-!
# A190218: Numbers all of whose divisors are numbers whose decimal digits are in strictly increasing order.

The programs for A190218, there is no canonical definition to state claims against.
-/

/-! ## A190218.P9750718695646511224

`A004185(∪[A052015(n+1), A211772(n+1)])`
-/

namespace A190218.P9750718695646511224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211772 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A190218.P9750718695646511224

/-! ## A190218.P11065280025016563973

`A355222(∪[A052015(n+1), A211772(n+1)])`
-/

namespace A190218.P11065280025016563973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211772 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A190218.P11065280025016563973

/-! ## A190218.P9700645201877356602

`A355223(∪[A052015(n+1), A211772(n+1)])`
-/

namespace A190218.P9700645201877356602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211772 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A190218.P9700645201877356602

/-! ## A190218.P9448253948643195785

`∪[A052015(n+1), A211772(n+1)]%A105207(n+4)`
-/

namespace A190218.P9448253948643195785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211772 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A105207 (n + 4))

end

end A190218.P9448253948643195785

/-! ## A190218.P4884144245456315337

`eq[1, A036133(A017887(n))]`
-/

namespace A190218.P4884144245456315337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036133 (A017887 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190218.P4884144245456315337

/-!
# A190219: Numbers all of whose divisors have decimal digits in strictly decreasing order.

The programs for A190219, there is no canonical definition to state claims against.
-/

/-! ## A190219.P12212511808033141305

`∩[A190220(n+1), A308393(n+1)]`
-/

namespace A190219.P12212511808033141305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190219.P12212511808033141305

/-! ## A190219.P7919803003042178085

`∩[A190220(n+1), record[A137564(n)]]`
-/

namespace A190219.P7919803003042178085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190219.P7919803003042178085

/-! ## A190219.P3595645274618973469

`∩[A010784(n+1), A190220(n+1)]`
-/

namespace A190219.P3595645274618973469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190219.P3595645274618973469

/-! ## A190219.P14470420472216289010

`record[A137564(A190220(n+1)%A052015(n+1))]`
-/

namespace A190219.P14470420472216289010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (Int.tmod (A190220 (n + 1)) (A052015 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190219.P14470420472216289010

/-! ## A190219.P3642752145050779772

`∩[A043096(n+1), A190220(n+1)]`
-/

namespace A190219.P3642752145050779772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190219.P3642752145050779772

/-!
# A190220: Numbers all of whose divisors are numbers whose decimal digits are in nonincreasing order.

The programs for A190220, there is no canonical definition to state claims against.
-/

/-! ## A190220.P3334745416811285147

`A009996(∑[A050873(A234569(n+1))])`
-/

namespace A190220.P3334745416811285147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A234569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190220.P3334745416811285147

/-! ## A190220.P11208559367080083613

`A009996(lt[A252493(3*n+2), A174462(n+1)])`
-/

namespace A190220.P11208559367080083613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252493 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190220.P11208559367080083613

/-! ## A190220.P4449493555050075726

`record[A239217(n+1)-A240351(A034704(n+1))]`
-/

namespace A190220.P4449493555050075726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (n + 1) - A240351 (A034704 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190220.P4449493555050075726

/-! ## A190220.P7650595156539772448

`eq[A058348(n), A108782(n)]`
-/

namespace A190220.P7650595156539772448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190220.P7650595156539772448

/-! ## A190220.P12073783677529690035

`eq[A058348(n), A283001(n)]`
-/

namespace A190220.P12073783677529690035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190220.P12073783677529690035

/-!
# A190221: Numbers all of whose divisors are numbers whose decimal digits are in nondecreasing order.

The programs for A190221, there is no canonical definition to state claims against.
-/

/-! ## A190221.P3347221442640782121

`eq[2, A005167(A193582(n))]`
-/

namespace A190221.P3347221442640782121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005167 (A193582 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190221.P3347221442640782121

/-! ## A190221.P7034357204358884517

`eq[A123895(n), A213217(n)]`
-/

namespace A190221.P7034357204358884517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190221.P7034357204358884517

/-! ## A190221.P6878000847896218171

`eq[3, A001359(a(A193581(n)))]` with `a(0)=1`
-/

namespace A190221.P6878000847896218171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A001359 (f2 (A193581 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190221.P6878000847896218171

/-! ## A190221.P12661573415917665746

`eq[3, A324727(a(A193581(n)))]` with `a(0)=1`
-/

namespace A190221.P12661573415917665746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A324727 (f2 (A193581 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190221.P12661573415917665746

/-! ## A190221.P8665708669936752811

`A009994(n+2)%A157695(n+1)`
-/

namespace A190221.P8665708669936752811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009994 (n + 2)) (A157695 (n + 1))

end

end A190221.P8665708669936752811

/-! ## A190221.P2737281326830347760

`record[A004185(n+1)]%A320881(n+1)`
-/

namespace A190221.P2737281326830347760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A320881 (n + 1))

end

end A190221.P2737281326830347760

/-! ## A190221.P17289794734041021721

`A102827(n)%A102838(A263807(n))`
-/

namespace A190221.P17289794734041021721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102827 n) (A102838 (A263807 n).toNat)

end

end A190221.P17289794734041021721

/-! ## A190221.P12280517624173881368

`eq[A000038(n), A118759(A193581(n))]`
-/

namespace A190221.P12280517624173881368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A193581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190221.P12280517624173881368

/-! ## A190221.P16856649431472459701

`lt[A118759(A193581(n)), A000030(n)]`
-/

namespace A190221.P16856649431472459701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A193581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190221.P16856649431472459701

/-! ## A190221.P11457943309450997867

`lt[A118759(A193581(n)), A010879(n)]`
-/

namespace A190221.P11457943309450997867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A193581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190221.P11457943309450997867

/-!
# A190222: Noncomposite numbers all of whose decimal digits are noncomposite numbers (1,2,3,5,7).

The programs for A190222, the canonical program `A190222.P6549821447653687319` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190222 has offset 1).

The definition of A190222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190222.P6549821447653687319

`∩[A001742(n+1), A160337(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A190222

/-- `∩[A001742(n+1), A160337(n+1)]` -/
def P6549821447653687319.Spec : Prop :=
  ∀ n, (P6549821447653687319.a n : ℤ) = A190222 (n + 1)

theorem P6549821447653687319.correct : P6549821447653687319.Spec := by
  intro n
  simp only [A190222, Nat.add_sub_cancel]

end A190222

/-! ## A190222.P17410922202618124993

`∩[A062101(n+1), A160337(n+1)]`
-/

namespace A190222.P17410922202618124993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P17410922202618124993

namespace A190222

/-- `∩[A062101(n+1), A160337(n+1)]` -/
def P17410922202618124993.Spec : Prop :=
  ∀ n, (P17410922202618124993.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P9115727718861504080

`∩[A195943(n+1), A160337(n+1)]`
-/

namespace A190222.P9115727718861504080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P9115727718861504080

namespace A190222

/-- `∩[A195943(n+1), A160337(n+1)]` -/
def P9115727718861504080.Spec : Prop :=
  ∀ n, (P9115727718861504080.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P12732799182704062407

`∩[A001729(n+1), A160337(n+1)]`
-/

namespace A190222.P12732799182704062407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P12732799182704062407

namespace A190222

/-- `∩[A001729(n+1), A160337(n+1)]` -/
def P12732799182704062407.Spec : Prop :=
  ∀ n, (P12732799182704062407.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P12700887766203738606

`record[A006530(A001742(n+1))]`
-/

namespace A190222.P12700887766203738606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190222.P12700887766203738606

namespace A190222

/-- `record[A006530(A001742(n+1))]` -/
def P12700887766203738606.Spec : Prop :=
  ∀ n, P12700887766203738606.a n = A190222 (n + 1)

end A190222

/-! ## A190222.P4471796727258636878

`record[A006530(A190223(n+1))]`
-/

namespace A190222.P4471796727258636878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A190223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190222.P4471796727258636878

namespace A190222

/-- `record[A006530(A190223(n+1))]` -/
def P4471796727258636878.Spec : Prop :=
  ∀ n, P4471796727258636878.a n = A190222 (n + 1)

end A190222

/-! ## A190222.P12254352106774275780

`filter[A190223(n+1), A380467(#)]`
-/

namespace A190222.P12254352106774275780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A190222.P12254352106774275780

namespace A190222

/-- `filter[A190223(n+1), A380467(#)]` -/
def P12254352106774275780.Spec : Prop :=
  ∀ n, P12254352106774275780.a n = A190222 (n + 1)

end A190222

/-! ## A190222.P9878270527414888514

`∩[A001742(n+1), A008578(n+1)]`
-/

namespace A190222.P9878270527414888514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P9878270527414888514

namespace A190222

/-- `∩[A001742(n+1), A008578(n+1)]` -/
def P9878270527414888514.Spec : Prop :=
  ∀ n, (P9878270527414888514.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P1060458597301704251

`∩[A001742(n+1), A046022(n+1)]`
-/

namespace A190222.P1060458597301704251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P1060458597301704251

namespace A190222

/-- `∩[A001742(n+1), A046022(n+1)]` -/
def P1060458597301704251.Spec : Prop :=
  ∀ n, (P1060458597301704251.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P2792516669863247001

`∩[A001742(n+1), A066050(n+1)]`
-/

namespace A190222.P2792516669863247001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P2792516669863247001

namespace A190222

/-- `∩[A001742(n+1), A066050(n+1)]` -/
def P2792516669863247001.Spec : Prop :=
  ∀ n, (P2792516669863247001.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P3974457398202175063

`∩[A001742(n+1), A067126(n+1)]`
-/

namespace A190222.P3974457398202175063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P3974457398202175063

namespace A190222

/-- `∩[A001742(n+1), A067126(n+1)]` -/
def P3974457398202175063.Spec : Prop :=
  ∀ n, (P3974457398202175063.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P7614540112867582883

`∩[A001742(n+1), A158611(n+1)]`
-/

namespace A190222.P7614540112867582883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P7614540112867582883

namespace A190222

/-- `∩[A001742(n+1), A158611(n+1)]` -/
def P7614540112867582883.Spec : Prop :=
  ∀ n, (P7614540112867582883.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P7863820051265534698

`∩[A008578(n+1), A190223(n+1)]`
-/

namespace A190222.P7863820051265534698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P7863820051265534698

namespace A190222

/-- `∩[A008578(n+1), A190223(n+1)]` -/
def P7863820051265534698.Spec : Prop :=
  ∀ n, (P7863820051265534698.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P10275476672962200287

`∩[A001742(n+1), A201879(n+1)]`
-/

namespace A190222.P10275476672962200287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P10275476672962200287

namespace A190222

/-- `∩[A001742(n+1), A201879(n+1)]` -/
def P10275476672962200287.Spec : Prop :=
  ∀ n, (P10275476672962200287.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P15677883852477550562

`∩[A015919(n+1), A190223(n+1)]`
-/

namespace A190222.P15677883852477550562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P15677883852477550562

namespace A190222

/-- `∩[A015919(n+1), A190223(n+1)]` -/
def P15677883852477550562.Spec : Prop :=
  ∀ n, (P15677883852477550562.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P4884608194912261748

`∩[A046022(n+1), A190223(n+1)]`
-/

namespace A190222.P4884608194912261748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P4884608194912261748

namespace A190222

/-- `∩[A046022(n+1), A190223(n+1)]` -/
def P4884608194912261748.Spec : Prop :=
  ∀ n, (P4884608194912261748.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P793984047748181060

`∩[A066050(n+1), A190223(n+1)]`
-/

namespace A190222.P793984047748181060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P793984047748181060

namespace A190222

/-- `∩[A066050(n+1), A190223(n+1)]` -/
def P793984047748181060.Spec : Prop :=
  ∀ n, (P793984047748181060.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P10136027247207654147

`∩[A066720(n+1), A190223(n+1)]`
-/

namespace A190222.P10136027247207654147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P10136027247207654147

namespace A190222

/-- `∩[A066720(n+1), A190223(n+1)]` -/
def P10136027247207654147.Spec : Prop :=
  ∀ n, (P10136027247207654147.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P12866104087205335495

`∩[A067126(n+1), A190223(n+1)]`
-/

namespace A190222.P12866104087205335495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P12866104087205335495

namespace A190222

/-- `∩[A067126(n+1), A190223(n+1)]` -/
def P12866104087205335495.Spec : Prop :=
  ∀ n, (P12866104087205335495.a n : ℤ) = A190222 (n + 1)

end A190222

/-! ## A190222.P249653896371638311

`∩[A067133(n+1), A190223(n+1)]`
-/

namespace A190222.P249653896371638311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P249653896371638311

namespace A190222

/-- `∩[A067133(n+1), A190223(n+1)]` -/
def P249653896371638311.Spec : Prop :=
  ∀ n, (P249653896371638311.a n : ℤ) = A190222 (n + 1)

end A190222

/-!
# A190223: Numbers all of whose divisors are numbers whose decimal digits are noncomposite numbers (1,2,3,5,7).

The programs for A190223, there is no canonical definition to state claims against.
-/

/-! ## A190223.P12424930066771290909

`eq[A064692(n), A073298(A160086(n)²)]`
-/

namespace A190223.P12424930066771290909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073298 (A160086 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190223.P12424930066771290909

/-! ## A190223.P2680923364079012668

`eq[A064692(n), A105570(A007088(n))]`
-/

namespace A190223.P2680923364079012668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A007088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190223.P2680923364079012668

/-!
# A190224: a(n) = [n*u + n*v] - [n*u] - [n*v], where u=sin(Pi/3), v=cos(Pi/3), and []=floor.

The programs for A190224, the canonical program `A190224.P16042607047809135940` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190224 has offset 1).

The definition of A190224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190224.P16042607047809135940

`floor(sqrt(3*(n+1)²))%gcd(2, n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190224

/-- `floor(sqrt(3*(n+1)²))%gcd(2, n)` -/
def P16042607047809135940.Spec : Prop :=
  ∀ n, (P16042607047809135940.a n : ℤ) = A190224 (n + 1)

theorem P16042607047809135940.correct : P16042607047809135940.Spec := by
  intro n
  simp only [A190224, Nat.add_sub_cancel]

end A190224

/-! ## A190224.P4149825315518554358

`char[A190226(n+1)-1]`
-/

namespace A190224.P4149825315518554358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190226 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190224.P4149825315518554358

namespace A190224

/-- `char[A190226(n+1)-1]` -/
def P4149825315518554358.Spec : Prop :=
  ∀ n, (P4149825315518554358.a n : ℤ) = A190224 (n + 1)

end A190224

/-! ## A190224.P9160593318380175521

`and(log2(gcd(2, n)), A003512(n+1))`
-/

namespace A190224.P9160593318380175521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))) (A003512 (n + 1))

end

end A190224.P9160593318380175521

namespace A190224

/-- `and(log2(gcd(2, n)), A003512(n+1))` -/
def P9160593318380175521.Spec : Prop :=
  ∀ n, P9160593318380175521.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P2914528094315139023

`and(char[2*n], A022838(n+1))`
-/

namespace A190224.P2914528094315139023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A022838 (n + 1))

end

end A190224.P2914528094315139023

namespace A190224

/-- `and(char[2*n], A022838(n+1))` -/
def P2914528094315139023.Spec : Prop :=
  ∀ n, P2914528094315139023.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P11908132487457423376

`and(∑[(-1)^n], A180122(n+1))`
-/

namespace A190224.P11908132487457423376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A180122 (n + 1))

end

end A190224.P11908132487457423376

namespace A190224

/-- `and(∑[(-1)^n], A180122(n+1))` -/
def P11908132487457423376.Spec : Prop :=
  ∀ n, P11908132487457423376.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P5890328971305469440

`((n+1)*floor(sqrt(∑[A016945(n)])))%2`
-/

namespace A190224.P5890328971305469440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A190224.P5890328971305469440

namespace A190224

/-- `((n+1)*floor(sqrt(∑[A016945(n)])))%2` -/
def P5890328971305469440.Spec : Prop :=
  ∀ n, P5890328971305469440.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P1344224484346271268

`((n+1)*(A182778(n+1)+1))%2`
-/

namespace A190224.P1344224484346271268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * (A182778 (n + 1) + 1)) 2

end

end A190224.P1344224484346271268

namespace A190224

/-- `((n+1)*(A182778(n+1)+1))%2` -/
def P1344224484346271268.Spec : Prop :=
  ∀ n, P1344224484346271268.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P2023892493355717552

`A003512(n+1)%A228826(n)`
-/

namespace A190224.P2023892493355717552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003512 (n + 1)) (A228826 n)

end

end A190224.P2023892493355717552

namespace A190224

/-- `A003512(n+1)%A228826(n)` -/
def P2023892493355717552.Spec : Prop :=
  ∀ n, P2023892493355717552.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P13428196648393943469

`A022838(n+1)%A228826(n)`
-/

namespace A190224.P13428196648393943469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022838 (n + 1)) (A228826 n)

end

end A190224.P13428196648393943469

namespace A190224

/-- `A022838(n+1)%A228826(n)` -/
def P13428196648393943469.Spec : Prop :=
  ∀ n, P13428196648393943469.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P1389656421257019949

`A120865(n+1)%A228826(n)`
-/

namespace A190224.P1389656421257019949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120865 (n + 1)) (A228826 n)

end

end A190224.P1389656421257019949

namespace A190224

/-- `A120865(n+1)%A228826(n)` -/
def P1389656421257019949.Spec : Prop :=
  ∀ n, P1389656421257019949.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P13772115977762370376

`A180122(n+1)%A228826(n)`
-/

namespace A190224.P13772115977762370376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180122 (n + 1)) (A228826 n)

end

end A190224.P13772115977762370376

namespace A190224

/-- `A180122(n+1)%A228826(n)` -/
def P13772115977762370376.Spec : Prop :=
  ∀ n, P13772115977762370376.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P4189284054222517000

`A182777(n+1)%A228826(n)`
-/

namespace A190224.P4189284054222517000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182777 (n + 1)) (A228826 n)

end

end A190224.P4189284054222517000

namespace A190224

/-- `A182777(n+1)%A228826(n)` -/
def P4189284054222517000.Spec : Prop :=
  ∀ n, P4189284054222517000.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P8853411835700572476

`A190334(n+1)%A228826(n)`
-/

namespace A190224.P8853411835700572476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190334 (n + 1)) (A228826 n)

end

end A190224.P8853411835700572476

namespace A190224

/-- `A190334(n+1)%A228826(n)` -/
def P8853411835700572476.Spec : Prop :=
  ∀ n, P8853411835700572476.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P13139222028475939983

`and(A003512(n+1), A059841(n))`
-/

namespace A190224.P13139222028475939983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003512 (n + 1)) (A059841 n)

end

end A190224.P13139222028475939983

namespace A190224

/-- `and(A003512(n+1), A059841(n))` -/
def P13139222028475939983.Spec : Prop :=
  ∀ n, P13139222028475939983.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P1117720834983929882

`and(A022838(n+1), A059841(n))`
-/

namespace A190224.P1117720834983929882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022838 (n + 1)) (A059841 n)

end

end A190224.P1117720834983929882

namespace A190224

/-- `and(A022838(n+1), A059841(n))` -/
def P1117720834983929882.Spec : Prop :=
  ∀ n, P1117720834983929882.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P13417506538546788042

`and(A000034(n), A120865(n+1))`
-/

namespace A190224.P13417506538546788042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A120865 (n + 1))

end

end A190224.P13417506538546788042

namespace A190224

/-- `and(A000034(n), A120865(n+1))` -/
def P13417506538546788042.Spec : Prop :=
  ∀ n, P13417506538546788042.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P4995874967528375662

`and(A059841(n), A120865(n+1))`
-/

namespace A190224.P4995874967528375662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059841 n) (A120865 (n + 1))

end

end A190224.P4995874967528375662

namespace A190224

/-- `and(A059841(n), A120865(n+1))` -/
def P4995874967528375662.Spec : Prop :=
  ∀ n, P4995874967528375662.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P2818255286577430880

`and(A084642(n), A120865(n+1))`
-/

namespace A190224.P2818255286577430880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084642 n) (A120865 (n + 1))

end

end A190224.P2818255286577430880

namespace A190224

/-- `and(A084642(n), A120865(n+1))` -/
def P2818255286577430880.Spec : Prop :=
  ∀ n, P2818255286577430880.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P5279109490349958440

`and(A059841(n), A182777(n+1))`
-/

namespace A190224.P5279109490349958440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059841 n) (A182777 (n + 1))

end

end A190224.P5279109490349958440

namespace A190224

/-- `and(A059841(n), A182777(n+1))` -/
def P5279109490349958440.Spec : Prop :=
  ∀ n, P5279109490349958440.a n = A190224 (n + 1)

end A190224

/-! ## A190224.P11761659041296421651

`and(A059841(n), A190334(n+1))`
-/

namespace A190224.P11761659041296421651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059841 n) (A190334 (n + 1))

end

end A190224.P11761659041296421651

namespace A190224

/-- `and(A059841(n), A190334(n+1))` -/
def P11761659041296421651.Spec : Prop :=
  ∀ n, P11761659041296421651.a n = A190224 (n + 1)

end A190224

/-!
# A190225: Positions of 0 in A190224; complement of A190226.

The programs for A190225, the canonical program `A190225.P3534641279878422546` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190225 has offset 1).

The definition of A190225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190225.P13043279624137955458

`∑[char[A190226(n+1)-1-n]]+1+n`
-/

namespace A190225.P13043279624137955458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190226 (n + 1) - 1 - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A190225.P13043279624137955458

namespace A190225

/-- `∑[char[A190226(n+1)-1-n]]+1+n` -/
def P13043279624137955458.Spec : Prop :=
  ∀ n, (P13043279624137955458.a n : ℤ) = A190225 (n + 1)

end A190225

/-! ## A190225.P3534641279878422546

`lt[A190224(n+1), 1]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190225

/-- `lt[A190224(n+1), 1]+1` -/
def P3534641279878422546.Spec : Prop :=
  ∀ n, (P3534641279878422546.a n : ℤ) = A190225 (n + 1)

theorem P3534641279878422546.correct : P3534641279878422546.Spec := by
  intro n
  simp only [A190225, Nat.add_sub_cancel]

end A190225

/-! ## A190225.P8682132893222325252

`eq[1, A190224(n+2)+1]+2`
-/

namespace A190225.P8682132893222325252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A190225.P8682132893222325252

namespace A190225

/-- `eq[1, A190224(n+2)+1]+2` -/
def P8682132893222325252.Spec : Prop :=
  ∀ n, (P8682132893222325252.a n : ℤ) = A190225 (n + 1)

end A190225

/-! ## A190225.P1002313960760670033

`a(n-1)+A190224(a(n-1)+1)+1` with `a(0)=2`
-/

namespace A190225.P1002313960760670033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A190224 (a (n - 1) + 1).toNat + 1)

end

end A190225.P1002313960760670033

namespace A190225

/-- `a(n-1)+A190224(a(n-1)+1)+1` -/
def P1002313960760670033.Spec : Prop :=
  ∀ n, P1002313960760670033.a n = A190225 (n + 1)

end A190225

/-! ## A190225.P8920956678716287834

`lt[A014682(n), A014682(A198081(n))]`
-/

namespace A190225.P8920956678716287834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A198081 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190225.P8920956678716287834

namespace A190225

/-- `lt[A014682(n), A014682(A198081(n))]` -/
def P8920956678716287834.Spec : Prop :=
  ∀ n, (P8920956678716287834.a n : ℤ) = A190225 (n + 1)

end A190225

/-! ## A190225.P6174119795870678273

`eq[floor(1/(n+1)), char[A190226(n+1)]]`
-/

namespace A190225.P6174119795870678273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190226 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A190225.P6174119795870678273

namespace A190225

/-- `eq[floor(1/(n+1)), char[A190226(n+1)]]` -/
def P6174119795870678273.Spec : Prop :=
  ∀ n, (P6174119795870678273.a n : ℤ) = A190225 (n + 1)

end A190225

/-! ## A190225.P17667736621075590392

`eq[2, A040001(A040001(n)*A215781(n))]`
-/

namespace A190225.P17667736621075590392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A040001 n * A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190225.P17667736621075590392

namespace A190225

/-- `eq[2, A040001(A040001(n)*A215781(n))]` -/
def P17667736621075590392.Spec : Prop :=
  ∀ n, (P17667736621075590392.a n : ℤ) = A190225 (n + 1)

end A190225

/-! ## A190225.P4431373436296080004

`A026233(p?[A000040(n+1)-A190224(n+1)])`
-/

namespace A190225.P4431373436296080004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A190224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A190225.P4431373436296080004

namespace A190225

/-- `A026233(p?[A000040(n+1)-A190224(n+1)])` -/
def P4431373436296080004.Spec : Prop :=
  ∀ n, P4431373436296080004.a n = A190225 (n + 1)

end A190225

/-! ## A190225.P9409722991525510085

`A026233(p?[A190224(n+2)+A000040(n+2)])`
-/

namespace A190225.P9409722991525510085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A190225.P9409722991525510085

namespace A190225

/-- `A026233(p?[A190224(n+2)+A000040(n+2)])` -/
def P9409722991525510085.Spec : Prop :=
  ∀ n, P9409722991525510085.a n = A190225 (n + 1)

end A190225

/-! ## A190225.P14718453110312120103

`lt[2, A020639(n*comp[A054406(n+1)]+1)]`
-/

namespace A190225.P14718453110312120103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190225.P14718453110312120103

namespace A190225

/-- `lt[2, A020639(n*comp[A054406(n+1)]+1)]` -/
def P14718453110312120103.Spec : Prop :=
  ∀ n, (P14718453110312120103.a n : ℤ) = A190225 (n + 1)

end A190225

/-! ## A190225.P7189712360222485841

`eq[2, A040001(n*A215781(n))]`
-/

namespace A190225.P7189712360222485841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 ((n : ℤ) * A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190225.P7189712360222485841

namespace A190225

/-- `eq[2, A040001(n*A215781(n))]` -/
def P7189712360222485841.Spec : Prop :=
  ∀ n, (P7189712360222485841.a n : ℤ) = A190225 (n + 1)

end A190225

/-!
# A190226: Positions of 1 in A190224; complement of A190225.

The programs for A190226, the canonical program `A190226.P16953417745290274440` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190226 has offset 1).

The definition of A190226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190226.P7103144085363119189

`∩[2*n+1, A283776(n+1)]`
-/

namespace A190226.P7103144085363119189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190226.P7103144085363119189

namespace A190226

/-- `∩[2*n+1, A283776(n+1)]` -/
def P7103144085363119189.Spec : Prop :=
  ∀ n, (P7103144085363119189.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P9476353470651900145

`∩[A283776(n+1), A004273(n)]`
-/

namespace A190226.P9476353470651900145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190226.P9476353470651900145

namespace A190226

/-- `∩[A283776(n+1), A004273(n)]` -/
def P9476353470651900145.Spec : Prop :=
  ∀ n, (P9476353470651900145.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P10349429792179632752

`∩[A283776(n+1), A060747(n)]`
-/

namespace A190226.P10349429792179632752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190226.P10349429792179632752

namespace A190226

/-- `∩[A283776(n+1), A060747(n)]` -/
def P10349429792179632752.Spec : Prop :=
  ∀ n, (P10349429792179632752.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P16953417745290274440

`filter[n+1, A190224(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190226

/-- `filter[n+1, A190224(#)]` -/
def P16953417745290274440.Spec : Prop :=
  ∀ n, (P16953417745290274440.a n : ℤ) = A190226 (n + 1)

theorem P16953417745290274440.correct : P16953417745290274440.Spec := by
  intro n
  simp only [A190226, Nat.add_sub_cancel]

end A190226

/-! ## A190226.P4983549932287852715

`eq[1, A190224(n+1)]+1`
-/

namespace A190226.P4983549932287852715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190226.P4983549932287852715

namespace A190226

/-- `eq[1, A190224(n+1)]+1` -/
def P4983549932287852715.Spec : Prop :=
  ∀ n, (P4983549932287852715.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P2610273110272484964

`eq[1, (n*A080590(n+1))%2]`
-/

namespace A190226.P2610273110272484964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A080590 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190226.P2610273110272484964

namespace A190226

/-- `eq[1, (n*A080590(n+1))%2]` -/
def P2610273110272484964.Spec : Prop :=
  ∀ n, (P2610273110272484964.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P5045145739160098778

`filter[A283776(n+1), A000035(#)]`
-/

namespace A190226.P5045145739160098778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A190226.P5045145739160098778

namespace A190226

/-- `filter[A283776(n+1), A000035(#)]` -/
def P5045145739160098778.Spec : Prop :=
  ∀ n, P5045145739160098778.a n = A190226 (n + 1)

end A190226

/-! ## A190226.P290952700763957531

`eq[1, n%A000034(A195120(n))]`
-/

namespace A190226.P290952700763957531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000034 (A195120 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190226.P290952700763957531

namespace A190226

/-- `eq[1, n%A000034(A195120(n))]` -/
def P290952700763957531.Spec : Prop :=
  ∀ n, (P290952700763957531.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P9717303374272543666

`lt[A190224(n+2), A190224(n+1)]+1`
-/

namespace A190226.P9717303374272543666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A190226.P9717303374272543666

namespace A190226

/-- `lt[A190224(n+2), A190224(n+1)]+1` -/
def P9717303374272543666.Spec : Prop :=
  ∀ n, (P9717303374272543666.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P17209570097580815531

`record[(n+1)%A190225(n*A190224(n+1)+1)]`
-/

namespace A190226.P17209570097580815531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A190225 ((n : ℤ) * A190224 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190226.P17209570097580815531

namespace A190226

/-- `record[(n+1)%A190225(n*A190224(n+1)+1)]` -/
def P17209570097580815531.Spec : Prop :=
  ∀ n, P17209570097580815531.a n = A190226 (n + 1)

end A190226

/-! ## A190226.P15678019420709250306

`lt[A014682(A198081(n)), A014682(n)]`
-/

namespace A190226.P15678019420709250306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A198081 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190226.P15678019420709250306

namespace A190226

/-- `lt[A014682(A198081(n)), A014682(n)]` -/
def P15678019420709250306.Spec : Prop :=
  ∀ n, (P15678019420709250306.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P17346912548464089669

`eq[A228826(A215781(n))², A040001(n)]`
-/

namespace A190226.P17346912548464089669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A215781 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190226.P17346912548464089669

namespace A190226

/-- `eq[A228826(A215781(n))², A040001(n)]` -/
def P17346912548464089669.Spec : Prop :=
  ∀ n, (P17346912548464089669.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P9933957187269142932

`eq[A000034(n+1), A000035(A215781(n))]`
-/

namespace A190226.P9933957187269142932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190226.P9933957187269142932

namespace A190226

/-- `eq[A000034(n+1), A000035(A215781(n))]` -/
def P9933957187269142932.Spec : Prop :=
  ∀ n, (P9933957187269142932.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P10039608902992703094

`eq[2, A000035(n)+A000035(A195120(n))]`
-/

namespace A190226.P10039608902992703094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000035 (A195120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190226.P10039608902992703094

namespace A190226

/-- `eq[2, A000035(n)+A000035(A195120(n))]` -/
def P10039608902992703094.Spec : Prop :=
  ∀ n, (P10039608902992703094.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P16661355990067371469

`eq[2, A000035(n)+A000035(A215781(n))]`
-/

namespace A190226.P16661355990067371469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000035 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190226.P16661355990067371469

namespace A190226

/-- `eq[2, A000035(n)+A000035(A215781(n))]` -/
def P16661355990067371469.Spec : Prop :=
  ∀ n, (P16661355990067371469.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P8227489736523926543

`eq[1, A000035(A195120(n*A000035(n)))]`
-/

namespace A190226.P8227489736523926543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195120 ((n : ℤ) * A000035 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190226.P8227489736523926543

namespace A190226

/-- `eq[1, A000035(A195120(n*A000035(n)))]` -/
def P8227489736523926543.Spec : Prop :=
  ∀ n, (P8227489736523926543.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P8444167171191292902

`eq[1, A000035(A215781(n*A000035(n)))]`
-/

namespace A190226.P8444167171191292902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A215781 ((n : ℤ) * A000035 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190226.P8444167171191292902

namespace A190226

/-- `eq[1, A000035(A215781(n*A000035(n)))]` -/
def P8444167171191292902.Spec : Prop :=
  ∀ n, (P8444167171191292902.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P167980077956552654

`eq[1, A076826(A076826(n)*A195120(n))]`
-/

namespace A190226.P167980077956552654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A076826 n * A195120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190226.P167980077956552654

namespace A190226

/-- `eq[1, A076826(A076826(n)*A195120(n))]` -/
def P167980077956552654.Spec : Prop :=
  ∀ n, (P167980077956552654.a n : ℤ) = A190226 (n + 1)

end A190226

/-! ## A190226.P18246167429685394728

`eq[2*A059841(n), A059841(A215781(n))]`
-/

namespace A190226.P18246167429685394728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190226.P18246167429685394728

namespace A190226

/-- `eq[2*A059841(n), A059841(A215781(n))]` -/
def P18246167429685394728.Spec : Prop :=
  ∀ n, (P18246167429685394728.a n : ℤ) = A190226 (n + 1)

end A190226

/-!
# A190227: a(n) = [n*u + n*v] - [n*u] - [n*v], where u=sin(Pi/5), v=cos(Pi/5), and []=floor.

The programs for A190227, the canonical program `A190227.P2542377300348276051` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190227 has offset 1).

The definition of A190227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190227.P2542377300348276051

`floor((n+1)*(sin(π/5)+cos(π/5)))-floor((n+1)*cos(π/5))-floor((n+1)*sin(π/5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190227

/-- `floor((n+1)*(sin(π/5)+cos(π/5)))-floor((n+1)*cos(π/5))-floor((n+1)*sin(π/5))` -/
def P2542377300348276051.Spec : Prop :=
  ∀ n, P2542377300348276051.a n = A190227 (n + 1)

theorem P2542377300348276051.correct : P2542377300348276051.Spec := by
  intro n
  simp only [A190227, Nat.add_sub_cancel]

end A190227

/-! ## A190227.P4689282675544161914

`char[A190229(n+1)-1]`
-/

namespace A190227.P4689282675544161914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190229 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190227.P4689282675544161914

namespace A190227

/-- `char[A190229(n+1)-1]` -/
def P4689282675544161914.Spec : Prop :=
  ∀ n, (P4689282675544161914.a n : ℤ) = A190227 (n + 1)

end A190227

/-! ## A190227.P3785501086770660857

`char[comp[A190228(n+1)-1]]`
-/

namespace A190227.P3785501086770660857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190228 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A190227.P3785501086770660857

namespace A190227

/-- `char[comp[A190228(n+1)-1]]` -/
def P3785501086770660857.Spec : Prop :=
  ∀ n, (P3785501086770660857.a n : ℤ) = A190227 (n + 1)

end A190227

/-! ## A190227.P13744035527651921399

`char[A199969(A190229(n+1))]`
-/

namespace A190227.P13744035527651921399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A190229 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190227.P13744035527651921399

namespace A190227

/-- `char[A199969(A190229(n+1))]` -/
def P13744035527651921399.Spec : Prop :=
  ∀ n, (P13744035527651921399.a n : ℤ) = A190227 (n + 1)

end A190227

/-! ## A190227.P14273177800046929017

`char[A260196(n)+A190229(n+1)]`
-/

namespace A190227.P14273177800046929017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A190229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190227.P14273177800046929017

namespace A190227

/-- `char[A260196(n)+A190229(n+1)]` -/
def P14273177800046929017.Spec : Prop :=
  ∀ n, (P14273177800046929017.a n : ℤ) = A190227 (n + 1)

end A190227

/-! ## A190227.P4251664863364118076

`char[A190228(n+1)-1]*A057428(n)+1`
-/

namespace A190227.P4251664863364118076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190228 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A057428 n + 1

end

end A190227.P4251664863364118076

namespace A190227

/-- `char[A190228(n+1)-1]*A057428(n)+1` -/
def P4251664863364118076.Spec : Prop :=
  ∀ n, P4251664863364118076.a n = A190227 (n + 1)

end A190227

/-!
# A190228: Positions of 0 in A190227; complement of A190229.

The programs for A190228, the canonical program `A190228.P16554717642585390360` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190228 has offset 1).

The definition of A190228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190228.P16554717642585390360

`eq[0, A190227(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190228

/-- `eq[0, A190227(n+1)]+1` -/
def P16554717642585390360.Spec : Prop :=
  ∀ n, (P16554717642585390360.a n : ℤ) = A190228 (n + 1)

theorem P16554717642585390360.correct : P16554717642585390360.Spec := by
  intro n
  simp only [A190228, Nat.add_sub_cancel]

end A190228

/-! ## A190228.P8924055186568801451

`eq[char[A190229(n+1)], A000007(n)]`
-/

namespace A190228.P8924055186568801451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190229 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190228.P8924055186568801451

namespace A190228

/-- `eq[char[A190229(n+1)], A000007(n)]` -/
def P8924055186568801451.Spec : Prop :=
  ∀ n, (P8924055186568801451.a n : ℤ) = A190228 (n + 1)

end A190228

/-! ## A190228.P13881404737489909003

`eq[char[A190229(n+1)], A000038(n)]`
-/

namespace A190228.P13881404737489909003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190229 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190228.P13881404737489909003

namespace A190228

/-- `eq[char[A190229(n+1)], A000038(n)]` -/
def P13881404737489909003.Spec : Prop :=
  ∀ n, (P13881404737489909003.a n : ℤ) = A190228 (n + 1)

end A190228

/-! ## A190228.P4056504699209871947

`eq[char[A190229(n+1)], A285476(n)]`
-/

namespace A190228.P4056504699209871947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190229 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190228.P4056504699209871947

namespace A190228

/-- `eq[char[A190229(n+1)], A285476(n)]` -/
def P4056504699209871947.Spec : Prop :=
  ∀ n, (P4056504699209871947.a n : ℤ) = A190228 (n + 1)

end A190228

/-! ## A190228.P5083530366545253789

`eq[0, A190227(A123108(2*n))]`
-/

namespace A190228.P5083530366545253789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190227 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190228.P5083530366545253789

namespace A190228

/-- `eq[0, A190227(A123108(2*n))]` -/
def P5083530366545253789.Spec : Prop :=
  ∀ n, (P5083530366545253789.a n : ℤ) = A190228 (n + 1)

end A190228

/-!
# A190229: Positions of 1 in A190227; complement of A190228.

The programs for A190229, the canonical program `A190229.P5353473444345810783` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190229 has offset 1).

The definition of A190229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190229.P5353473444345810783

`comp[A190228(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190229

/-- `comp[A190228(n+1)-1]+1` -/
def P5353473444345810783.Spec : Prop :=
  ∀ n, (P5353473444345810783.a n : ℤ) = A190229 (n + 1)

theorem P5353473444345810783.correct : P5353473444345810783.Spec := by
  intro n
  simp only [A190229, Nat.add_sub_cancel]

end A190229

/-! ## A190229.P7700026607425856040

`filter[n+1, A190227(#)]`
-/

namespace A190229.P7700026607425856040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190227 (f1 j) = 1) n)

end

end A190229.P7700026607425856040

namespace A190229

/-- `filter[n+1, A190227(#)]` -/
def P7700026607425856040.Spec : Prop :=
  ∀ n, (P7700026607425856040.a n : ℤ) = A190229 (n + 1)

end A190229

/-! ## A190229.P7260520920279749866

`eq[1, A190227(n+1)]+1`
-/

namespace A190229.P7260520920279749866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190229.P7260520920279749866

namespace A190229

/-- `eq[1, A190227(n+1)]+1` -/
def P7260520920279749866.Spec : Prop :=
  ∀ n, (P7260520920279749866.a n : ℤ) = A190229 (n + 1)

end A190229

/-! ## A190229.P1129706118062269126

`record[(n+1)*A190227(n+2)+1]`
-/

namespace A190229.P1129706118062269126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A190227 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190229.P1129706118062269126

namespace A190229

/-- `record[(n+1)*A190227(n+2)+1]` -/
def P1129706118062269126.Spec : Prop :=
  ∀ n, P1129706118062269126.a n = A190229 (n + 1)

end A190229

/-! ## A190229.P17594996523527162077

`record[A000027(n+1)*A190227(n+1)]`
-/

namespace A190229.P17594996523527162077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A190227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190229.P17594996523527162077

namespace A190229

/-- `record[A000027(n+1)*A190227(n+1)]` -/
def P17594996523527162077.Spec : Prop :=
  ∀ n, P17594996523527162077.a n = A190229 (n + 1)

end A190229

/-! ## A190229.P5292300979990774920

`record[A190227(A331303(n))*A331303(n)]`
-/

namespace A190229.P5292300979990774920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190227 (A331303 n).toNat * A331303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190229.P5292300979990774920

namespace A190229

/-- `record[A190227(A331303(n))*A331303(n)]` -/
def P5292300979990774920.Spec : Prop :=
  ∀ n, P5292300979990774920.a n = A190229 (n + 1)

end A190229

/-! ## A190229.P230883409464599479

`record[A008619(n)*A190227(A008619(n))]`
-/

namespace A190229.P230883409464599479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A190227 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190229.P230883409464599479

namespace A190229

/-- `record[A008619(n)*A190227(A008619(n))]` -/
def P230883409464599479.Spec : Prop :=
  ∀ n, P230883409464599479.a n = A190229 (n + 1)

end A190229

/-!
# A190230: a(n) = [n*u + n*v] - [n*u] - [n*v], where u=sin(2*Pi/5), v=cos(2*Pi/5), and []=floor.

The programs for A190230, there is no canonical definition to state claims against.
-/

/-! ## A190230.P13718354288897889870

`char[A190232(n+1)-1]`
-/

namespace A190230.P13718354288897889870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190232 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190230.P13718354288897889870

/-! ## A190230.P14965871076341381934

`char[comp[A190231(n+1)-1]]`
-/

namespace A190230.P14965871076341381934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190231 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A190230.P14965871076341381934

/-! ## A190230.P11938009074126887799

`char[A023443(A190232(n+1))]`
-/

namespace A190230.P11938009074126887799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A190232 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190230.P11938009074126887799

/-! ## A190230.P18067678227852005677

`char[A023443(comp[A190231(n+1)])]`
-/

namespace A190230.P18067678227852005677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190231 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190230.P18067678227852005677

/-! ## A190230.P2308351292626019085

`A213729(A164015(n)-A005901(n))`
-/

namespace A190230.P2308351292626019085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (A164015 n - A005901 n).toNat

end

end A190230.P2308351292626019085

/-!
# A190231: Positions of 0 in A190230; complement of A190232.

The programs for A190231, there is no canonical definition to state claims against.
-/

/-! ## A190231.P5360604303249760217

`eq[0, A190230(n+1)]+1`
-/

namespace A190231.P5360604303249760217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190231.P5360604303249760217

/-! ## A190231.P7223428632563634653

`A065475(eq[0, A190230(n+1)])`
-/

namespace A190231.P7223428632563634653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190231.P7223428632563634653

/-! ## A190231.P10846593885407286999

`eq[0, A190230(A000038(n)+n)]`
-/

namespace A190231.P10846593885407286999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190231.P10846593885407286999

/-! ## A190231.P12938209205572419882

`eq[0, A190230(A000007(n)+n)]`
-/

namespace A190231.P12938209205572419882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190231.P12938209205572419882

/-! ## A190231.P1459075000722410822

`eq[0, A190230(A123108(2*n))]`
-/

namespace A190231.P1459075000722410822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190231.P1459075000722410822

/-! ## A190231.P18337221017663170509

`eq[0, A190230(A233583(n+1))]`
-/

namespace A190231.P18337221017663170509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190231.P18337221017663170509

/-!
# A190232: Positions of 1 in A190230; complement of A190231.

The programs for A190232, there is no canonical definition to state claims against.
-/

/-! ## A190232.P6389102660395905798

`comp[A190231(n+1)-1]+1`
-/

namespace A190232.P6389102660395905798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190231 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190232.P6389102660395905798

/-! ## A190232.P6073132793623272692

`filter[n+1, A190230(#)]`
-/

namespace A190232.P6073132793623272692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190230 (f1 j) = 1) n)

end

end A190232.P6073132793623272692

/-! ## A190232.P14872740489765819210

`eq[1, A190230(n+1)]+1`
-/

namespace A190232.P14872740489765819210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190232.P14872740489765819210

/-! ## A190232.P64851340213089431

`record[A190230(A286549(n))*A286549(n)]`
-/

namespace A190232.P64851340213089431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (A286549 n).toNat * A286549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190232.P64851340213089431

/-! ## A190232.P11199453349420480087

`record[A190230(n+1)*A267100(A267100(n+1))]`
-/

namespace A190232.P11199453349420480087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190230 (n + 1) * A267100 (A267100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190232.P11199453349420480087

/-! ## A190232.P990142612293500603

`record[A008619(n)*A190230(A008619(n))]`
-/

namespace A190232.P990142612293500603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A190230 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190232.P990142612293500603

/-! ## A190232.P12735342888726689873

`record[A026239(A026239(n+1))*A190230(n+1)]`
-/

namespace A190232.P12735342888726689873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A026239 (n + 1)).toNat * A190230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190232.P12735342888726689873

/-!
# A190233: a(n) = [n*u+n*v] - [n*u] - [n*v], where u=sin(Pi/8), v=cos(Pi/8), and []=floor.

The programs for A190233, the canonical program `A190233.P2266141145345501304` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190233 has offset 1).

The definition of A190233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190233.P2266141145345501304

`floor((n+1)*(sin(π/8)+cos(π/8)))-floor((n+1)*cos(π/8))-floor((n+1)*sin(π/8))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190233

/-- `floor((n+1)*(sin(π/8)+cos(π/8)))-floor((n+1)*cos(π/8))-floor((n+1)*sin(π/8))` -/
def P2266141145345501304.Spec : Prop :=
  ∀ n, P2266141145345501304.a n = A190233 (n + 1)

theorem P2266141145345501304.correct : P2266141145345501304.Spec := by
  intro n
  simp only [A190233, Nat.add_sub_cancel]

end A190233

/-! ## A190233.P5359514152484802636

`char[A190235(n+1)-1]`
-/

namespace A190233.P5359514152484802636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190235 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190233.P5359514152484802636

namespace A190233

/-- `char[A190235(n+1)-1]` -/
def P5359514152484802636.Spec : Prop :=
  ∀ n, (P5359514152484802636.a n : ℤ) = A190233 (n + 1)

end A190233

/-! ## A190233.P3200808741246812297

`char[comp[A190234(n+1)-1]]`
-/

namespace A190233.P3200808741246812297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190234 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A190233.P3200808741246812297

namespace A190233

/-- `char[comp[A190234(n+1)-1]]` -/
def P3200808741246812297.Spec : Prop :=
  ∀ n, (P3200808741246812297.a n : ℤ) = A190233 (n + 1)

end A190233

/-! ## A190233.P13257843149084027686

`char[Δ[A190235(A152271(n))]]`
-/

namespace A190233.P13257843149084027686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190235 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190233.P13257843149084027686

namespace A190233

/-- `char[Δ[A190235(A152271(n))]]` -/
def P13257843149084027686.Spec : Prop :=
  ∀ n, (P13257843149084027686.a n : ℤ) = A190233 (n + 1)

end A190233

/-! ## A190233.P9773220932882664702

`A320461(n+1)%A014709(A189678(n+1))`
-/

namespace A190233.P9773220932882664702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320461 (n + 1)) (A014709 (A189678 (n + 1)).toNat)

end

end A190233.P9773220932882664702

namespace A190233

/-- `A320461(n+1)%A014709(A189678(n+1))` -/
def P9773220932882664702.Spec : Prop :=
  ∀ n, P9773220932882664702.a n = A190233 (n + 1)

end A190233

/-!
# A190234: Positions of 0 in A190233; complement of A190235.

The programs for A190234, the canonical program `A190234.P12200843988307767935` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190234 has offset 1).

The definition of A190234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190234.P12200843988307767935

`eq[0, A190233(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190234

/-- `eq[0, A190233(n+1)]+1` -/
def P12200843988307767935.Spec : Prop :=
  ∀ n, (P12200843988307767935.a n : ℤ) = A190234 (n + 1)

theorem P12200843988307767935.correct : P12200843988307767935.Spec := by
  intro n
  simp only [A190234, Nat.add_sub_cancel]

end A190234

/-! ## A190234.P2360295331608306798

`eq[char[A190235(n+1)], A000007(n)]`
-/

namespace A190234.P2360295331608306798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190235 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190234.P2360295331608306798

namespace A190234

/-- `eq[char[A190235(n+1)], A000007(n)]` -/
def P2360295331608306798.Spec : Prop :=
  ∀ n, (P2360295331608306798.a n : ℤ) = A190234 (n + 1)

end A190234

/-! ## A190234.P4715798102393103349

`eq[char[A190235(n+1)], A000038(n)]`
-/

namespace A190234.P4715798102393103349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190235 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190234.P4715798102393103349

namespace A190234

/-- `eq[char[A190235(n+1)], A000038(n)]` -/
def P4715798102393103349.Spec : Prop :=
  ∀ n, (P4715798102393103349.a n : ℤ) = A190234 (n + 1)

end A190234

/-! ## A190234.P13031617808913714232

`eq[0, A190233(A123108(2*n))]`
-/

namespace A190234.P13031617808913714232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190233 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190234.P13031617808913714232

namespace A190234

/-- `eq[0, A190233(A123108(2*n))]` -/
def P13031617808913714232.Spec : Prop :=
  ∀ n, (P13031617808913714232.a n : ℤ) = A190234 (n + 1)

end A190234

/-! ## A190234.P17032987628669077302

`eq[0, A190233(A233583(n+1))]`
-/

namespace A190234.P17032987628669077302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190233 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190234.P17032987628669077302

namespace A190234

/-- `eq[0, A190233(A233583(n+1))]` -/
def P17032987628669077302.Spec : Prop :=
  ∀ n, (P17032987628669077302.a n : ℤ) = A190234 (n + 1)

end A190234

/-!
# A190235: Positions of 1 in A190233; complement of A190234.

The programs for A190235, the canonical program `A190235.P2489043228145597921` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190235 has offset 1).

The definition of A190235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190235.P2489043228145597921

`filter[n+1, A190233(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190235

/-- `filter[n+1, A190233(#)]` -/
def P2489043228145597921.Spec : Prop :=
  ∀ n, (P2489043228145597921.a n : ℤ) = A190235 (n + 1)

theorem P2489043228145597921.correct : P2489043228145597921.Spec := by
  intro n
  simp only [A190235, Nat.add_sub_cancel]

end A190235

/-! ## A190235.P14058822172178446590

`eq[1, A190233(n+1)]+1`
-/

namespace A190235.P14058822172178446590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190235.P14058822172178446590

namespace A190235

/-- `eq[1, A190233(n+1)]+1` -/
def P14058822172178446590.Spec : Prop :=
  ∀ n, (P14058822172178446590.a n : ℤ) = A190235 (n + 1)

end A190235

/-! ## A190235.P8696560258800701003

`record[A000027(n+1)*A190233(n+1)]`
-/

namespace A190235.P8696560258800701003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A190233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190235.P8696560258800701003

namespace A190235

/-- `record[A000027(n+1)*A190233(n+1)]` -/
def P8696560258800701003.Spec : Prop :=
  ∀ n, P8696560258800701003.a n = A190235 (n + 1)

end A190235

/-! ## A190235.P15724943200502078013

`record[A038722(A038722(n+1))*A190233(n+1)]`
-/

namespace A190235.P15724943200502078013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1)).toNat * A190233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190235.P15724943200502078013

namespace A190235

/-- `record[A038722(A038722(n+1))*A190233(n+1)]` -/
def P15724943200502078013.Spec : Prop :=
  ∀ n, P15724943200502078013.a n = A190235 (n + 1)

end A190235

/-! ## A190235.P4157143527692013968

`record[A133310(n)*A190233(A133310(n))]`
-/

namespace A190235.P4157143527692013968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n * A190233 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190235.P4157143527692013968

namespace A190235

/-- `record[A133310(n)*A190233(A133310(n))]` -/
def P4157143527692013968.Spec : Prop :=
  ∀ n, P4157143527692013968.a n = A190235 (n + 1)

end A190235

/-! ## A190235.P8755322184550853826

`record[A020915(n)*A190233(A020915(n))]`
-/

namespace A190235.P8755322184550853826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n * A190233 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190235.P8755322184550853826

namespace A190235

/-- `record[A020915(n)*A190233(A020915(n))]` -/
def P8755322184550853826.Spec : Prop :=
  ∀ n, P8755322184550853826.a n = A190235 (n + 1)

end A190235

/-! ## A190235.P13583655786603177806

`record[A008619(n)*A190233(A008619(n))]`
-/

namespace A190235.P13583655786603177806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A190233 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190235.P13583655786603177806

namespace A190235

/-- `record[A008619(n)*A190233(A008619(n))]` -/
def P13583655786603177806.Spec : Prop :=
  ∀ n, P13583655786603177806.a n = A190235 (n + 1)

end A190235

/-!
# A190236: a(n) = [n*u + n*v] -[n*u] -[n*v], where u=1/2, v=(1+sqrt(5))/2, and []=floor.

The programs for A190236, the canonical program `A190236.P2708529030725686235` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190236 has offset 1).

The definition of A190236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190236.P2708529030725686235

`floor((n+1)*(2+sqrt(5))/2)-floor((n+1)/2)-floor((n+1)*(1+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190236

/-- `floor((n+1)*(2+sqrt(5))/2)-floor((n+1)/2)-floor((n+1)*(1+sqrt(5))/2)` -/
def P2708529030725686235.Spec : Prop :=
  ∀ n, P2708529030725686235.a n = A190236 (n + 1)

theorem P2708529030725686235.correct : P2708529030725686235.Spec := by
  intro n
  simp only [A190236, Nat.add_sub_cancel]

end A190236

/-! ## A190236.P16842851911872880617

`and(and(1, n+1), floor(2*(n+1)/ϕ))`
-/

namespace A190236.P16842851911872880617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.land 1 (n + 1) : ℤ) ⌊(2 * (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A190236.P16842851911872880617

namespace A190236

/-- `and(and(1, n+1), floor(2*(n+1)/ϕ))` -/
def P16842851911872880617.Spec : Prop :=
  ∀ n, P16842851911872880617.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P5624786429418179705

`char[A190238(n+1)-1]`
-/

namespace A190236.P5624786429418179705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190238 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190236.P5624786429418179705

namespace A190236

/-- `char[A190238(n+1)-1]` -/
def P5624786429418179705.Spec : Prop :=
  ∀ n, (P5624786429418179705.a n : ℤ) = A190236 (n + 1)

end A190236

/-! ## A190236.P7119766586003140158

`A001961(n+1)%gcd(2, n)`
-/

namespace A190236.P7119766586003140158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001961 (n + 1)) (Nat.gcd 2 n : ℤ)

end

end A190236.P7119766586003140158

namespace A190236

/-- `A001961(n+1)%gcd(2, n)` -/
def P7119766586003140158.Spec : Prop :=
  ∀ n, P7119766586003140158.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P16213094023217217937

`and(char[2*n], A001962(n+1))`
-/

namespace A190236.P16213094023217217937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001962 (n + 1))

end

end A190236.P16213094023217217937

namespace A190236

/-- `and(char[2*n], A001962(n+1))` -/
def P16213094023217217937.Spec : Prop :=
  ∀ n, P16213094023217217937.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P2916814734288407303

`and(Δ[ceil(n/2)], A005206(2*n+1))`
-/

namespace A190236.P2916814734288407303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A005206 (2 * n + 1))

end

end A190236.P2916814734288407303

namespace A190236

/-- `and(Δ[ceil(n/2)], A005206(2*n+1))` -/
def P2916814734288407303.Spec : Prop :=
  ∀ n, P2916814734288407303.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P6256330649502161984

`char[∩[2*n+1, A005652(n+1)]-1]`
-/

namespace A190236.P6256330649502161984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190236.P6256330649502161984

namespace A190236

/-- `char[∩[2*n+1, A005652(n+1)]-1]` -/
def P6256330649502161984.Spec : Prop :=
  ∀ n, (P6256330649502161984.a n : ℤ) = A190236 (n + 1)

end A190236

/-! ## A190236.P8066939938721092887

`A078588(A141310(n))`
-/

namespace A190236.P8066939938721092887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A141310 n).toNat

end

end A190236.P8066939938721092887

namespace A190236

/-- `A078588(A141310(n))` -/
def P8066939938721092887.Spec : Prop :=
  ∀ n, P8066939938721092887.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P2496227686729791556

`A078588(A193356(n+1))`
-/

namespace A190236.P2496227686729791556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A193356 (n + 1)).toNat

end

end A190236.P2496227686729791556

namespace A190236

/-- `A078588(A193356(n+1))` -/
def P2496227686729791556.Spec : Prop :=
  ∀ n, P2496227686729791556.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P13737330565443527072

`A078588(A230089(n+1))`
-/

namespace A190236.P13737330565443527072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A230089 (n + 1)).toNat

end

end A190236.P13737330565443527072

namespace A190236

/-- `A078588(A230089(n+1))` -/
def P13737330565443527072.Spec : Prop :=
  ∀ n, P13737330565443527072.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P6319113234160365726

`A120866(n+1)%A040005(n)`
-/

namespace A190236.P6319113234160365726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120866 (n + 1)) (A040005 n)

end

end A190236.P6319113234160365726

namespace A190236

/-- `A120866(n+1)%A040005(n)` -/
def P6319113234160365726.Spec : Prop :=
  ∀ n, P6319113234160365726.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P1846577198610948701

`A001961(n+1)%A228826(n)`
-/

namespace A190236.P1846577198610948701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001961 (n + 1)) (A228826 n)

end

end A190236.P1846577198610948701

namespace A190236

/-- `A001961(n+1)%A228826(n)` -/
def P1846577198610948701.Spec : Prop :=
  ∀ n, P1846577198610948701.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P1162764877148820651

`A001962(n+1)%A228826(n)`
-/

namespace A190236.P1162764877148820651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001962 (n + 1)) (A228826 n)

end

end A190236.P1162764877148820651

namespace A190236

/-- `A001962(n+1)%A228826(n)` -/
def P1162764877148820651.Spec : Prop :=
  ∀ n, P1162764877148820651.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P14178009688928394017

`A184901(n+1)%A112030(n)`
-/

namespace A190236.P14178009688928394017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184901 (n + 1)) (A112030 n)

end

end A190236.P14178009688928394017

namespace A190236

/-- `A184901(n+1)%A112030(n)` -/
def P14178009688928394017.Spec : Prop :=
  ∀ n, P14178009688928394017.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P15231026825635388424

`A078796(n+1)%A228826(n)`
-/

namespace A190236.P15231026825635388424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078796 (n + 1)) (A228826 n)

end

end A190236.P15231026825635388424

namespace A190236

/-- `A078796(n+1)%A228826(n)` -/
def P15231026825635388424.Spec : Prop :=
  ∀ n, P15231026825635388424.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P6243259624421226131

`A186516(n+1)%A228826(n)`
-/

namespace A190236.P6243259624421226131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186516 (n + 1)) (A228826 n)

end

end A190236.P6243259624421226131

namespace A190236

/-- `A186516(n+1)%A228826(n)` -/
def P6243259624421226131.Spec : Prop :=
  ∀ n, P6243259624421226131.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P17444852275301783588

`A190505(n+1)%A228826(n)`
-/

namespace A190236.P17444852275301783588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190505 (n + 1)) (A228826 n)

end

end A190236.P17444852275301783588

namespace A190236

/-- `A190505(n+1)%A228826(n)` -/
def P17444852275301783588.Spec : Prop :=
  ∀ n, P17444852275301783588.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P14396919822446678739

`A190511(n+1)%A228826(n)`
-/

namespace A190236.P14396919822446678739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190511 (n + 1)) (A228826 n)

end

end A190236.P14396919822446678739

namespace A190236

/-- `A190511(n+1)%A228826(n)` -/
def P14396919822446678739.Spec : Prop :=
  ∀ n, P14396919822446678739.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P12232656861453232174

`and(A001961(n+1), A059841(n))`
-/

namespace A190236.P12232656861453232174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001961 (n + 1)) (A059841 n)

end

end A190236.P12232656861453232174

namespace A190236

/-- `and(A001961(n+1), A059841(n))` -/
def P12232656861453232174.Spec : Prop :=
  ∀ n, P12232656861453232174.a n = A190236 (n + 1)

end A190236

/-! ## A190236.P15034845807968892282

`and(A001962(n+1), A059841(n))`
-/

namespace A190236.P15034845807968892282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001962 (n + 1)) (A059841 n)

end

end A190236.P15034845807968892282

namespace A190236

/-- `and(A001962(n+1), A059841(n))` -/
def P15034845807968892282.Spec : Prop :=
  ∀ n, P15034845807968892282.a n = A190236 (n + 1)

end A190236

/-!
# A190237: Positions of 0 in A190236; complement of A190238.

The programs for A190237, the canonical program `A190237.P4863808216702038747` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190237 has offset 1).

The definition of A190237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190237.P6790618348902139017

`comp[A190238(n+1)-1]+1`
-/

namespace A190237.P6790618348902139017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190238 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190237.P6790618348902139017

namespace A190237

/-- `comp[A190238(n+1)-1]+1` -/
def P6790618348902139017.Spec : Prop :=
  ∀ n, (P6790618348902139017.a n : ℤ) = A190237 (n + 1)

end A190237

/-! ## A190237.P4863808216702038747

`∪[A005653(n+1), A020739(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190237

/-- `∪[A005653(n+1), A020739(n)]` -/
def P4863808216702038747.Spec : Prop :=
  ∀ n, (P4863808216702038747.a n : ℤ) = A190237 (n + 1)

theorem P4863808216702038747.correct : P4863808216702038747.Spec := by
  intro n
  simp only [A190237, Nat.add_sub_cancel]

end A190237

/-! ## A190237.P1729700333543015562

`∪[A005653(n+1), comp[A004274(n)]]`
-/

namespace A190237.P1729700333543015562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A190237.P1729700333543015562

namespace A190237

/-- `∪[A005653(n+1), comp[A004274(n)]]` -/
def P1729700333543015562.Spec : Prop :=
  ∀ n, (P1729700333543015562.a n : ℤ) = A190237 (n + 1)

end A190237

/-! ## A190237.P13451741324057106634

`∪[A005653(n+1), comp[A004276(n)]]`
-/

namespace A190237.P13451741324057106634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A190237.P13451741324057106634

namespace A190237

/-- `∪[A005653(n+1), comp[A004276(n)]]` -/
def P13451741324057106634.Spec : Prop :=
  ∀ n, (P13451741324057106634.a n : ℤ) = A190237 (n + 1)

end A190237

/-! ## A190237.P4447883888598761095

`eq[0, A190236(n+1)]+1`
-/

namespace A190237.P4447883888598761095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190237.P4447883888598761095

namespace A190237

/-- `eq[0, A190236(n+1)]+1` -/
def P4447883888598761095.Spec : Prop :=
  ∀ n, (P4447883888598761095.a n : ℤ) = A190237 (n + 1)

end A190237

/-! ## A190237.P13950288025071860543

`record[and(n, A089809(a(n-1)+1)-2)]` with `a(0)=2`
-/

namespace A190237.P13950288025071860543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.land (n : ℤ) (A089809 (f1 (n - 1) + 1).toNat - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190237.P13950288025071860543

namespace A190237

/-- `record[and(n, A089809(a(n-1)+1)-2)]` -/
def P13950288025071860543.Spec : Prop :=
  ∀ n, P13950288025071860543.a n = A190237 (n + 1)

end A190237

/-! ## A190237.P13231904855105830201

`a(n-1)+A190236(a(n-1)+1)+1` with `a(0)=2`
-/

namespace A190237.P13231904855105830201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A190236 (a (n - 1) + 1).toNat + 1)

end

end A190237.P13231904855105830201

namespace A190237

/-- `a(n-1)+A190236(a(n-1)+1)+1` -/
def P13231904855105830201.Spec : Prop :=
  ∀ n, P13231904855105830201.a n = A190237 (n + 1)

end A190237

/-! ## A190237.P7777052931467813300

`a(n-1)+A078588(A109613(a(n-1)))+1` with `a(0)=2`
-/

namespace A190237.P7777052931467813300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A078588 (A109613 (a (n - 1)).toNat).toNat + 1)

end

end A190237.P7777052931467813300

namespace A190237

/-- `a(n-1)+A078588(A109613(a(n-1)))+1` -/
def P7777052931467813300.Spec : Prop :=
  ∀ n, P7777052931467813300.a n = A190237 (n + 1)

end A190237

/-! ## A190237.P6008894937834328811

`lt[gcd(n, A078796(xor(1, n)+1)), n]`
-/

namespace A190237.P6008894937834328811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A078796 (Nat.xor 1 n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190237.P6008894937834328811

namespace A190237

/-- `lt[gcd(n, A078796(xor(1, n)+1)), n]` -/
def P6008894937834328811.Spec : Prop :=
  ∀ n, (P6008894937834328811.a n : ℤ) = A190237 (n + 1)

end A190237

/-! ## A190237.P9075879170505357520

`eq[0, and(n+1, A078588(n+1))]+1`
-/

namespace A190237.P9075879170505357520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A078588 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190237.P9075879170505357520

namespace A190237

/-- `eq[0, and(n+1, A078588(n+1))]+1` -/
def P9075879170505357520.Spec : Prop :=
  ∀ n, (P9075879170505357520.a n : ℤ) = A190237 (n + 1)

end A190237

/-!
# A190238: Positions of 1 in A190236; complement of A190237.

The programs for A190238, the canonical program `A190238.P3474173016368697920` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190238 has offset 1).

The definition of A190238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190238.P3474173016368697920

`lt[0, and(n, floor(2*ϕ*n)%2)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190238

/-- `lt[0, and(n, floor(2*ϕ*n)%2)]` -/
def P3474173016368697920.Spec : Prop :=
  ∀ n, (P3474173016368697920.a n : ℤ) = A190238 (n + 1)

theorem P3474173016368697920.correct : P3474173016368697920.Spec := by
  intro n
  simp only [A190238, Nat.add_sub_cancel]

end A190238

/-! ## A190238.P10086667887344236319

`lt[0, and(n, and(1, floor(2*ϕ*n)))]`
-/

namespace A190238.P10086667887344236319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.land 1 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190238.P10086667887344236319

namespace A190238

/-- `lt[0, and(n, and(1, floor(2*ϕ*n)))]` -/
def P10086667887344236319.Spec : Prop :=
  ∀ n, (P10086667887344236319.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P6228448450810104772

`∩[2*n+1, A005652(n+1)]`
-/

namespace A190238.P6228448450810104772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190238.P6228448450810104772

namespace A190238

/-- `∩[2*n+1, A005652(n+1)]` -/
def P6228448450810104772.Spec : Prop :=
  ∀ n, (P6228448450810104772.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P1148560559185125293

`∩[A005652(n+1), A004273(n)]`
-/

namespace A190238.P1148560559185125293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190238.P1148560559185125293

namespace A190238

/-- `∩[A005652(n+1), A004273(n)]` -/
def P1148560559185125293.Spec : Prop :=
  ∀ n, (P1148560559185125293.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P3305252627898116240

`∩[A005652(n+1), A005408(n)]`
-/

namespace A190238.P3305252627898116240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190238.P3305252627898116240

namespace A190238

/-- `∩[A005652(n+1), A005408(n)]` -/
def P3305252627898116240.Spec : Prop :=
  ∀ n, (P3305252627898116240.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P16135325590958524763

`∩[A005652(n+1), A060747(n)]`
-/

namespace A190238.P16135325590958524763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190238.P16135325590958524763

namespace A190238

/-- `∩[A005652(n+1), A060747(n)]` -/
def P16135325590958524763.Spec : Prop :=
  ∀ n, (P16135325590958524763.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P9295311626139893054

`∩[A005652(n+1), A004274(n)]`
-/

namespace A190238.P9295311626139893054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190238.P9295311626139893054

namespace A190238

/-- `∩[A005652(n+1), A004274(n)]` -/
def P9295311626139893054.Spec : Prop :=
  ∀ n, (P9295311626139893054.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P11881906747123268436

`∩[A005652(n+1), A004281(n)]`
-/

namespace A190238.P11881906747123268436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190238.P11881906747123268436

namespace A190238

/-- `∩[A005652(n+1), A004281(n)]` -/
def P11881906747123268436.Spec : Prop :=
  ∀ n, (P11881906747123268436.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P11882083927115415918

`∩[A005652(n+1), A004276(n)]`
-/

namespace A190238.P11882083927115415918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190238.P11882083927115415918

namespace A190238

/-- `∩[A005652(n+1), A004276(n)]` -/
def P11882083927115415918.Spec : Prop :=
  ∀ n, (P11882083927115415918.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P17161077211583316444

`filter[n+1, A190236(#)]`
-/

namespace A190238.P17161077211583316444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190236 (f1 j) = 1) n)

end

end A190238.P17161077211583316444

namespace A190238

/-- `filter[n+1, A190236(#)]` -/
def P17161077211583316444.Spec : Prop :=
  ∀ n, (P17161077211583316444.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P13085454366093241210

`eq[1, and(n, A078588(n))]`
-/

namespace A190238.P13085454366093241210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A078588 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190238.P13085454366093241210

namespace A190238

/-- `eq[1, and(n, A078588(n))]` -/
def P13085454366093241210.Spec : Prop :=
  ∀ n, (P13085454366093241210.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P13940067870919055415

`eq[1, A190236(n+1)]+1`
-/

namespace A190238.P13940067870919055415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190238.P13940067870919055415

namespace A190238

/-- `eq[1, A190236(n+1)]+1` -/
def P13940067870919055415.Spec : Prop :=
  ∀ n, (P13940067870919055415.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P2032129558784240119

`filter[2*n+1, A078588(#)]`
-/

namespace A190238.P2032129558784240119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A078588 (f1 j) = 1) n)

end

end A190238.P2032129558784240119

namespace A190238

/-- `filter[2*n+1, A078588(#)]` -/
def P2032129558784240119.Spec : Prop :=
  ∀ n, (P2032129558784240119.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P5294554289489017144

`2*lt[n, A019587(2*n+1)]+1`
-/

namespace A190238.P5294554289489017144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190238.P5294554289489017144

namespace A190238

/-- `2*lt[n, A019587(2*n+1)]+1` -/
def P5294554289489017144.Spec : Prop :=
  ∀ n, (P5294554289489017144.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P5482668149878260984

`∩[2*n+1, A078796(2*n+1)]`
-/

namespace A190238.P5482668149878260984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190238.P5482668149878260984

namespace A190238

/-- `∩[2*n+1, A078796(2*n+1)]` -/
def P5482668149878260984.Spec : Prop :=
  ∀ n, (P5482668149878260984.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P2796150017680492332

`∩[4*n+2, A283766(n+2)]/2`
-/

namespace A190238.P2796150017680492332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283766 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190238.P2796150017680492332

namespace A190238

/-- `∩[4*n+2, A283766(n+2)]/2` -/
def P2796150017680492332.Spec : Prop :=
  ∀ n, P2796150017680492332.a n = (A190238 (n + 1) : ℚ)

end A190238

/-! ## A190238.P16171760676122729477

`eq[A010123(n), A078588(n)]`
-/

namespace A190238.P16171760676122729477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190238.P16171760676122729477

namespace A190238

/-- `eq[A010123(n), A078588(n)]` -/
def P16171760676122729477.Spec : Prop :=
  ∀ n, (P16171760676122729477.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P13536625208940193541

`eq[A010127(n), A078588(n)]`
-/

namespace A190238.P13536625208940193541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190238.P13536625208940193541

namespace A190238

/-- `eq[A010127(n), A078588(n)]` -/
def P13536625208940193541.Spec : Prop :=
  ∀ n, (P13536625208940193541.a n : ℤ) = A190238 (n + 1)

end A190238

/-! ## A190238.P7812969609554507871

`eq[A010131(n), A078588(n)]`
-/

namespace A190238.P7812969609554507871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190238.P7812969609554507871

namespace A190238

/-- `eq[A010131(n), A078588(n)]` -/
def P7812969609554507871.Spec : Prop :=
  ∀ n, (P7812969609554507871.a n : ℤ) = A190238 (n + 1)

end A190238

/-!
# A190239: a(n) = [n*u + n*v] - [n*u] - [n*v], where u=e^(Pi/2), v=1/u, and []=floor.

The programs for A190239, there is no canonical definition to state claims against.
-/

/-! ## A190239.P11564803402931048651

`char[A190241(n+1)-1]`
-/

namespace A190239.P11564803402931048651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190241 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190239.P11564803402931048651

/-! ## A190239.P13266324887935732690

`1-char[A190240(n+1)-1]`
-/

namespace A190239.P13266324887935732690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190240 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190239.P13266324887935732690

/-! ## A190239.P16716528365884087634

`xor(1, char[A190240(A028310(n))-1])`
-/

namespace A190239.P16716528365884087634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190240 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A190239.P16716528365884087634

/-! ## A190239.P7408969656915160424

`(A053755(n)-char[A190240(A028310(n))-1])%2`
-/

namespace A190239.P7408969656915160424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190240 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053755 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 2

end

end A190239.P7408969656915160424

/-! ## A190239.P14962492625718007970

`A000035(A025890(n)^A025860(n))`
-/

namespace A190239.P14962492625718007970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((A025890 n : ℚ) ^ (A025860 n : ℤ))).toNat

end

end A190239.P14962492625718007970

/-!
# A190240: Positions of 0 at A190239; complement of A190241.

The programs for A190240, there is no canonical definition to state claims against.
-/

/-! ## A190240.P16125830940548977073

`eq[0, A190239(n+1)]+1`
-/

namespace A190240.P16125830940548977073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190240.P16125830940548977073

/-! ## A190240.P6448663533138160081

`eq[0, A190239(or(n, C(n, n²)))]`
-/

namespace A190240.P6448663533138160081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190239 (Nat.lor n (Nat.choose n (n ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190240.P6448663533138160081

/-! ## A190240.P11322093017906878412

`A065475(eq[0, A190239(n+1)])`
-/

namespace A190240.P11322093017906878412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190240.P11322093017906878412

/-! ## A190240.P8746967474010434360

`A020705(eq[0, A190239(n+4)])`
-/

namespace A190240.P8746967474010434360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190239 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190240.P8746967474010434360

/-! ## A190240.P1643221053121312495

`eq[0, A190239(A123108(2*n))]`
-/

namespace A190240.P1643221053121312495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190239 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190240.P1643221053121312495

/-! ## A190240.P12660946566427782239

`eq[0, A190239(A233583(n+1))]`
-/

namespace A190240.P12660946566427782239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190239 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190240.P12660946566427782239

/-!
# A190241: Positions of 1 in A190239; complement of A190240.

The programs for A190241, there is no canonical definition to state claims against.
-/

/-! ## A190241.P13468014127143574004

`filter[n+1, A190239(#)]`
-/

namespace A190241.P13468014127143574004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190239 (f1 j) = 1) n)

end

end A190241.P13468014127143574004

/-! ## A190241.P17819749173127100113

`eq[1, A190239(n+1)]+1`
-/

namespace A190241.P17819749173127100113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190241.P17819749173127100113

/-! ## A190241.P11535236660527867885

`record[A054429(A054429(n+1))*A190239(n+1)]`
-/

namespace A190241.P11535236660527867885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A054429 (n + 1)).toNat * A190239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190241.P11535236660527867885

/-! ## A190241.P1361373964446196355

`record[A008619(n)*A190239(A008619(n))]`
-/

namespace A190241.P1361373964446196355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A190239 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190241.P1361373964446196355

/-! ## A190241.P2802072086130516181

`record[A190239(A194964(n+1))*A194964(n+1)]`
-/

namespace A190241.P2802072086130516181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190239 (A194964 (n + 1)).toNat * A194964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190241.P2802072086130516181

/-! ## A190241.P5658644276954573330

`record[A026239(A026239(n+1))*A190239(n+1)]`
-/

namespace A190241.P5658644276954573330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A026239 (n + 1)).toNat * A190239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190241.P5658644276954573330

/-!
# A190242: a(n) = [n*u+n*v]-[n*u]-[n*v], where u=sqrt(2), v=sqrt(3), and []=floor.

The programs for A190242, the canonical program `A190242.P15322734469372338716` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190242 has offset 1).

The definition of A190242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190242.P15322734469372338716

`floor((n+1)*(sqrt(2)+sqrt(3)))-floor((n+1)*sqrt(2))-floor((n+1)*sqrt(3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190242

/-- `floor((n+1)*(sqrt(2)+sqrt(3)))-floor((n+1)*sqrt(2))-floor((n+1)*sqrt(3))` -/
def P15322734469372338716.Spec : Prop :=
  ∀ n, P15322734469372338716.a n = A190242 (n + 1)

theorem P15322734469372338716.correct : P15322734469372338716.Spec := by
  intro n
  simp only [A190242, Nat.add_sub_cancel]

end A190242

/-! ## A190242.P764848373096407383

`char[A190244(n+1)-1]`
-/

namespace A190242.P764848373096407383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190244 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190242.P764848373096407383

namespace A190242

/-- `char[A190244(n+1)-1]` -/
def P764848373096407383.Spec : Prop :=
  ∀ n, (P764848373096407383.a n : ℤ) = A190242 (n + 1)

end A190242

/-! ## A190242.P4648809166227740719

`A187385(n+1)%A189361(n+1)`
-/

namespace A190242.P4648809166227740719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187385 (n + 1)) (A189361 (n + 1))

end

end A190242.P4648809166227740719

namespace A190242

/-- `A187385(n+1)%A189361(n+1)` -/
def P4648809166227740719.Spec : Prop :=
  ∀ n, P4648809166227740719.a n = A190242 (n + 1)

end A190242

/-! ## A190242.P16266245565336730849

`A109700(val(A187385(n+1), A189361(n+1)))`
-/

namespace A190242.P16266245565336730849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109700 (SequenceMachineLib.valuation (A187385 (n + 1)).toNat (A189361 (n + 1)).toNat)

end

end A190242.P16266245565336730849

namespace A190242

/-- `A109700(val(A187385(n+1), A189361(n+1)))` -/
def P16266245565336730849.Spec : Prop :=
  ∀ n, P16266245565336730849.a n = A190242 (n + 1)

end A190242

/-! ## A190242.P17930531218197133995

`A000035(A189469(n+1)-A187385(n+1))`
-/

namespace A190242.P17930531218197133995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A189469 (n + 1) - A187385 (n + 1)).toNat

end

end A190242.P17930531218197133995

namespace A190242

/-- `A000035(A189469(n+1)-A187385(n+1))` -/
def P17930531218197133995.Spec : Prop :=
  ∀ n, P17930531218197133995.a n = A190242 (n + 1)

end A190242

/-! ## A190242.P2115111418514397693

`A000035(A189361(n+1)+A187385(n+1))`
-/

namespace A190242.P2115111418514397693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A189361 (n + 1) + A187385 (n + 1)).toNat

end

end A190242.P2115111418514397693

namespace A190242

/-- `A000035(A189361(n+1)+A187385(n+1))` -/
def P2115111418514397693.Spec : Prop :=
  ∀ n, P2115111418514397693.a n = A190242 (n + 1)

end A190242

/-!
# A190243: Positions of 0 in A190242; complement of A190244.

The programs for A190243, the canonical program `A190243.P17259696739340890064` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190243 has offset 1).

The definition of A190243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190243.P17259696739340890064

`eq[0, A190242(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190243

/-- `eq[0, A190242(n+1)]+1` -/
def P17259696739340890064.Spec : Prop :=
  ∀ n, (P17259696739340890064.a n : ℤ) = A190243 (n + 1)

theorem P17259696739340890064.correct : P17259696739340890064.Spec := by
  intro n
  simp only [A190243, Nat.add_sub_cancel]

end A190243

/-! ## A190243.P12827259846573681469

`A020725(eq[0, A190242(n+1)])`
-/

namespace A190243.P12827259846573681469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190243.P12827259846573681469

namespace A190243

/-- `A020725(eq[0, A190242(n+1)])` -/
def P12827259846573681469.Spec : Prop :=
  ∀ n, P12827259846573681469.a n = A190243 (n + 1)

end A190243

/-! ## A190243.P7221293885482841084

`A065475(eq[0, A190242(n+1)])`
-/

namespace A190243.P7221293885482841084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190243.P7221293885482841084

namespace A190243

/-- `A065475(eq[0, A190242(n+1)])` -/
def P7221293885482841084.Spec : Prop :=
  ∀ n, P7221293885482841084.a n = A190243 (n + 1)

end A190243

/-! ## A190243.P9973906079400060512

`eq[1, A190242(A028310(n))+1]`
-/

namespace A190243.P9973906079400060512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190243.P9973906079400060512

namespace A190243

/-- `eq[1, A190242(A028310(n))+1]` -/
def P9973906079400060512.Spec : Prop :=
  ∀ n, (P9973906079400060512.a n : ℤ) = A190243 (n + 1)

end A190243

/-! ## A190243.P5859544408020668317

`eq[1-A190242(A028310(n)), A054977(n)]`
-/

namespace A190243.P5859544408020668317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A190242 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190243.P5859544408020668317

namespace A190243

/-- `eq[1-A190242(A028310(n)), A054977(n)]` -/
def P5859544408020668317.Spec : Prop :=
  ∀ n, (P5859544408020668317.a n : ℤ) = A190243 (n + 1)

end A190243

/-! ## A190243.P16768017172078869662

`eq[0, A190242(A123108(2*n))]`
-/

namespace A190243.P16768017172078869662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190243.P16768017172078869662

namespace A190243

/-- `eq[0, A190242(A123108(2*n))]` -/
def P16768017172078869662.Spec : Prop :=
  ∀ n, (P16768017172078869662.a n : ℤ) = A190243 (n + 1)

end A190243

/-! ## A190243.P8278279137589620911

`eq[0, A190242(A233583(n+1))]`
-/

namespace A190243.P8278279137589620911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190243.P8278279137589620911

namespace A190243

/-- `eq[0, A190242(A233583(n+1))]` -/
def P8278279137589620911.Spec : Prop :=
  ∀ n, (P8278279137589620911.a n : ℤ) = A190243 (n + 1)

end A190243

/-!
# A190244: Positions of 1 in A190242; complement of A190243.

The programs for A190244, the canonical program `A190244.P3424383486157346576` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190244 has offset 1).

The definition of A190244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190244.P3424383486157346576

`filter[n+1, A190242(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190244

/-- `filter[n+1, A190242(#)]` -/
def P3424383486157346576.Spec : Prop :=
  ∀ n, (P3424383486157346576.a n : ℤ) = A190244 (n + 1)

theorem P3424383486157346576.correct : P3424383486157346576.Spec := by
  intro n
  simp only [A190244, Nat.add_sub_cancel]

end A190244

/-! ## A190244.P13143486501583348798

`lt[0, A190242(n+1)]+1`
-/

namespace A190244.P13143486501583348798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190244.P13143486501583348798

namespace A190244

/-- `lt[0, A190242(n+1)]+1` -/
def P13143486501583348798.Spec : Prop :=
  ∀ n, (P13143486501583348798.a n : ℤ) = A190244 (n + 1)

end A190244

/-! ## A190244.P3224292767117695163

`record[(n+1)*A190242(1-char[1]+n)]`
-/

namespace A190244.P3224292767117695163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A190242 (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190244.P3224292767117695163

namespace A190244

/-- `record[(n+1)*A190242(1-char[1]+n)]` -/
def P3224292767117695163.Spec : Prop :=
  ∀ n, P3224292767117695163.a n = A190244 (n + 1)

end A190244

/-! ## A190244.P8266264733103956240

`eq[char[A190243(n+1)], A000007(n)]`
-/

namespace A190244.P8266264733103956240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190243 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190244.P8266264733103956240

namespace A190244

/-- `eq[char[A190243(n+1)], A000007(n)]` -/
def P8266264733103956240.Spec : Prop :=
  ∀ n, (P8266264733103956240.a n : ℤ) = A190244 (n + 1)

end A190244

/-! ## A190244.P14290605637410774515

`eq[A054977(n), A190242(A028310(n))]`
-/

namespace A190244.P14290605637410774515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190244.P14290605637410774515

namespace A190244

/-- `eq[A054977(n), A190242(A028310(n))]` -/
def P14290605637410774515.Spec : Prop :=
  ∀ n, (P14290605637410774515.a n : ℤ) = A190244 (n + 1)

end A190244

/-! ## A190244.P8292687538360769254

`record[A057164(A057164(n+1)*A190242(n+1))]`
-/

namespace A190244.P8292687538360769254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057164 (n + 1) * A190242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190244.P8292687538360769254

namespace A190244

/-- `record[A057164(A057164(n+1)*A190242(n+1))]` -/
def P8292687538360769254.Spec : Prop :=
  ∀ n, P8292687538360769254.a n = A190244 (n + 1)

end A190244

/-! ## A190244.P11335599271661262517

`record[A190242(A260429(n+1))*A260429(n+1)]`
-/

namespace A190244.P11335599271661262517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (A260429 (n + 1)).toNat * A260429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190244.P11335599271661262517

namespace A190244

/-- `record[A190242(A260429(n+1))*A260429(n+1)]` -/
def P11335599271661262517.Spec : Prop :=
  ∀ n, P11335599271661262517.a n = A190244 (n + 1)

end A190244

/-! ## A190244.P12887006599237951686

`record[A190242(n+1)*A252463(2*(n+1))]`
-/

namespace A190244.P12887006599237951686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190242 (n + 1) * A252463 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190244.P12887006599237951686

namespace A190244

/-- `record[A190242(n+1)*A252463(2*(n+1))]` -/
def P12887006599237951686.Spec : Prop :=
  ∀ n, P12887006599237951686.a n = A190244 (n + 1)

end A190244

/-!
# A190245: a(n) = [nu+nv]-[nu]-[nv], where u=sqrt(2), v=2u, and []=floor.

The programs for A190245, the canonical program `A190245.P9968142657825264348` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190245 has offset 1).

The definition of A190245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190245.P9968142657825264348

`floor(3*(n+1)*sqrt(2))-floor((n+1)*sqrt(2))-floor(2*(n+1)*sqrt(2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190245

/-- `floor(3*(n+1)*sqrt(2))-floor((n+1)*sqrt(2))-floor(2*(n+1)*sqrt(2))` -/
def P9968142657825264348.Spec : Prop :=
  ∀ n, P9968142657825264348.a n = A190245 (n + 1)

theorem P9968142657825264348.correct : P9968142657825264348.Spec := by
  intro n
  simp only [A190245, Nat.add_sub_cancel]

end A190245

/-! ## A190245.P11242384316010966477

`char[A190247(n+1)-1]`
-/

namespace A190245.P11242384316010966477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190245.P11242384316010966477

namespace A190245

/-- `char[A190247(n+1)-1]` -/
def P11242384316010966477.Spec : Prop :=
  ∀ n, (P11242384316010966477.a n : ℤ) = A190245 (n + 1)

end A190245

/-! ## A190245.P8382892236258905789

`A190191(2*(n+1))`
-/

namespace A190245.P8382892236258905789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (2 * (n + 1))

end

end A190245.P8382892236258905789

namespace A190245

/-- `A190191(2*(n+1))` -/
def P8382892236258905789.Spec : Prop :=
  ∀ n, P8382892236258905789.a n = A190245 (n + 1)

end A190245

/-! ## A190245.P6134408717156475771

`and(1, A184920(2*(n+1)))`
-/

namespace A190245.P6134408717156475771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A184920 (2 * (n + 1)))

end

end A190245.P6134408717156475771

namespace A190245

/-- `and(1, A184920(2*(n+1)))` -/
def P6134408717156475771.Spec : Prop :=
  ∀ n, P6134408717156475771.a n = A190245 (n + 1)

end A190245

/-! ## A190245.P2368612538036630546

`A187976(A001952(3*(n+1))-A001952(n+1))`
-/

namespace A190245.P2368612538036630546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A001952 (3 * (n + 1)) - A001952 (n + 1)).toNat

end

end A190245.P2368612538036630546

namespace A190245

/-- `A187976(A001952(3*(n+1))-A001952(n+1))` -/
def P2368612538036630546.Spec : Prop :=
  ∀ n, P2368612538036630546.a n = A190245 (n + 1)

end A190245

/-! ## A190245.P14213249255868072577

`A159684(A197878(n+1)+A003151(n+1))`
-/

namespace A190245.P14213249255868072577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A197878 (n + 1) + A003151 (n + 1)).toNat

end

end A190245.P14213249255868072577

namespace A190245

/-- `A159684(A197878(n+1)+A003151(n+1))` -/
def P14213249255868072577.Spec : Prop :=
  ∀ n, P14213249255868072577.a n = A190245 (n + 1)

end A190245

/-! ## A190245.P10254065529352956675

`A197879(A003151(n+1)+A197878(n+1)+1)`
-/

namespace A190245.P10254065529352956675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A003151 (n + 1) + (A197878 (n + 1) + 1)).toNat

end

end A190245.P10254065529352956675

namespace A190245

/-- `A197879(A003151(n+1)+A197878(n+1)+1)` -/
def P10254065529352956675.Spec : Prop :=
  ∀ n, P10254065529352956675.a n = A190245 (n + 1)

end A190245

/-! ## A190245.P17665434858832025647

`A286987(A286988(2*(n+1))+A286988(n+1))`
-/

namespace A190245.P17665434858832025647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286987 (A286988 (2 * (n + 1)) + A286988 (n + 1)).toNat

end

end A190245.P17665434858832025647

namespace A190245

/-- `A286987(A286988(2*(n+1))+A286988(n+1))` -/
def P17665434858832025647.Spec : Prop :=
  ∀ n, P17665434858832025647.a n = A190245 (n + 1)

end A190245

/-! ## A190245.P17684281679903131299

`A189687(A285075(3*n+4)+n)`
-/

namespace A190245.P17684281679903131299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189687 (A285075 (3 * n + 4) + (n : ℤ)).toNat

end

end A190245.P17684281679903131299

namespace A190245

/-- `A189687(A285075(3*n+4)+n)` -/
def P17684281679903131299.Spec : Prop :=
  ∀ n, P17684281679903131299.a n = A190245 (n + 1)

end A190245

/-! ## A190245.P15619587818073768640

`A004641(A003151(3*(n+1))+n+1)`
-/

namespace A190245.P15619587818073768640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (A003151 (3 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A190245.P15619587818073768640

namespace A190245

/-- `A004641(A003151(3*(n+1))+n+1)` -/
def P15619587818073768640.Spec : Prop :=
  ∀ n, P15619587818073768640.a n = A190245 (n + 1)

end A190245

/-! ## A190245.P13429424588889001115

`A188374(A187393(n+1)+A184922(n+1))`
-/

namespace A190245.P13429424588889001115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (A187393 (n + 1) + A184922 (n + 1)).toNat

end

end A190245.P13429424588889001115

namespace A190245

/-- `A188374(A187393(n+1)+A184922(n+1))` -/
def P13429424588889001115.Spec : Prop :=
  ∀ n, P13429424588889001115.a n = A190245 (n + 1)

end A190245

/-! ## A190245.P4821026255133801773

`A000035(A184920(2*(n+1)))`
-/

namespace A190245.P4821026255133801773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A184920 (2 * (n + 1))).toNat

end

end A190245.P4821026255133801773

namespace A190245

/-- `A000035(A184920(2*(n+1)))` -/
def P4821026255133801773.Spec : Prop :=
  ∀ n, P4821026255133801773.a n = A190245 (n + 1)

end A190245

/-!
# A190246: Positions of 0 in A190245; complement of A190247.

The programs for A190246, there is no canonical definition to state claims against.
-/

/-! ## A190246.P3838610182131780564

`∪[A190488(n+1), A327311(n+1)]`
-/

namespace A190246.P3838610182131780564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190246.P3838610182131780564

/-! ## A190246.P14100574837878908934

`eq[0, A190245(n+1)]+1`
-/

namespace A190246.P14100574837878908934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190246.P14100574837878908934

/-! ## A190246.P14740162918813130248

`∩[A190192(n+1), A103517(n)]/2`
-/

namespace A190246.P14740162918813130248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190246.P14740162918813130248

/-! ## A190246.P677405712768448236

`eq[A190487(n+1), A197879(n+1)]+1`
-/

namespace A190246.P677405712768448236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190246.P677405712768448236

/-! ## A190246.P5120803382907498680

`record[A190192(n+3)/A020639(A190192(n+3))]`
-/

namespace A190246.P5120803382907498680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190192 (n + 3) : ℚ) / (A020639 (A190192 (n + 3)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190246.P5120803382907498680

/-! ## A190246.P11922862872053911423

`eq[0, A190191(2*(n+1))]+1`
-/

namespace A190246.P11922862872053911423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190246.P11922862872053911423

/-! ## A190246.P2712972182341281188

`lt[A190191(2*n+2), 1]+1`
-/

namespace A190246.P2712972182341281188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190246.P2712972182341281188

/-! ## A190246.P1148407720145487214

`record[A032742(A190192(n+3))]`
-/

namespace A190246.P1148407720145487214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190192 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190246.P1148407720145487214

/-! ## A190246.P13816068913919938202

`eq[A083035(2*(n+1)), A190766(2*(n+1))]+1`
-/

namespace A190246.P13816068913919938202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190246.P13816068913919938202

/-! ## A190246.P10547827438250357568

`A000463(eq[A142150(n), A190191(n+1)])`
-/

namespace A190246.P10547827438250357568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A190246.P10547827438250357568

/-! ## A190246.P17458246527923763135

`A008619(eq[A142150(n), A190191(n+1)])`
-/

namespace A190246.P17458246527923763135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A190246.P17458246527923763135

/-! ## A190246.P4848311103373098775

`A065033(eq[A142150(n), A190191(n+1)])`
-/

namespace A190246.P4848311103373098775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A190246.P4848311103373098775

/-! ## A190246.P10823264753516988749

`A110654(eq[A190191(n+1), A237420(n)])`
-/

namespace A190246.P10823264753516988749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A190246.P10823264753516988749

/-! ## A190246.P18313148167942005580

`eq[0, A190245(A123108(2*n))]`
-/

namespace A190246.P18313148167942005580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190245 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190246.P18313148167942005580

/-! ## A190246.P4543109608694151242

`A142150(eq[A142150(n), A190191(n+1)]+1)`
-/

namespace A190246.P4543109608694151242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A190246.P4543109608694151242

/-!
# A190247: Positions of 1 in A190245; complement of A190246.

The programs for A190247, the canonical program `A190247.P4317102354749526185` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190247 has offset 1).

The definition of A190247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190247.P11583583674921457826

`∪[A190490(n+1), A327313(n+1)]`
-/

namespace A190247.P11583583674921457826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190247.P11583583674921457826

namespace A190247

/-- `∪[A190490(n+1), A327313(n+1)]` -/
def P11583583674921457826.Spec : Prop :=
  ∀ n, (P11583583674921457826.a n : ℤ) = A190247 (n + 1)

end A190247

/-! ## A190247.P4317102354749526185

`filter[n+1, A190245(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190247

/-- `filter[n+1, A190245(#)]` -/
def P4317102354749526185.Spec : Prop :=
  ∀ n, (P4317102354749526185.a n : ℤ) = A190247 (n + 1)

theorem P4317102354749526185.correct : P4317102354749526185.Spec := by
  intro n
  simp only [A190247, Nat.add_sub_cancel]

end A190247

/-! ## A190247.P911567768403327863

`eq[1, A190245(n+1)]+1`
-/

namespace A190247.P911567768403327863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190247.P911567768403327863

namespace A190247

/-- `eq[1, A190245(n+1)]+1` -/
def P911567768403327863.Spec : Prop :=
  ∀ n, (P911567768403327863.a n : ℤ) = A190247 (n + 1)

end A190247

/-! ## A190247.P9334634898666854872

`record[(n+1)*A190245(char[2]+1+n)]`
-/

namespace A190247.P9334634898666854872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A190245 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190247.P9334634898666854872

namespace A190247

/-- `record[(n+1)*A190245(char[2]+1+n)]` -/
def P9334634898666854872.Spec : Prop :=
  ∀ n, P9334634898666854872.a n = A190247 (n + 1)

end A190247

/-! ## A190247.P6011079021600631421

`record[(n+1)^A000290(n)^(A190245(n+1)-1)]`
-/

namespace A190247.P6011079021600631421
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000290 n : ℚ) ^ (A190245 (n + 1) - 1 : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190247.P6011079021600631421

namespace A190247

/-- `record[(n+1)^A000290(n)^(A190245(n+1)-1)]` -/
def P6011079021600631421.Spec : Prop :=
  ∀ n, P6011079021600631421.a n = (A190247 (n + 1) : ℝ)

end A190247

/-! ## A190247.P3570018293860922831

`record[(n+1)^A017523(n)^(A190245(n+1)-1)]`
-/

namespace A190247.P3570018293860922831
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A017523 n : ℚ) ^ (A190245 (n + 1) - 1 : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190247.P3570018293860922831

namespace A190247

/-- `record[(n+1)^A017523(n)^(A190245(n+1)-1)]` -/
def P3570018293860922831.Spec : Prop :=
  ∀ n, P3570018293860922831.a n = (A190247 (n + 1) : ℝ)

end A190247

/-! ## A190247.P12041169433417392266

`eq[1, A190191(2*(n+1))]+1`
-/

namespace A190247.P12041169433417392266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190247.P12041169433417392266

namespace A190247

/-- `eq[1, A190191(2*(n+1))]+1` -/
def P12041169433417392266.Spec : Prop :=
  ∀ n, (P12041169433417392266.a n : ℤ) = A190247 (n + 1)

end A190247

/-! ## A190247.P2103748248621304233

`record[A008619(2*n)*A190191(2*n+2)]`
-/

namespace A190247.P2103748248621304233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A190191 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190247.P2103748248621304233

namespace A190247

/-- `record[A008619(2*n)*A190191(2*n+2)]` -/
def P2103748248621304233.Spec : Prop :=
  ∀ n, P2103748248621304233.a n = A190247 (n + 1)

end A190247

/-!
# A190248: a(n) = [nu+nv+nw]-[nu]-[nv]-[nw], where u=(1+sqrt(5))/2, v=u^2, w=u^3, []=floor.

The programs for A190248, the canonical program `A190248.P6919742512996183991` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190248 has offset 1).

The definition of A190248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190248.P16609503513652386369

`round(sqrt(and(3, floor(4*ϕ*(n+1)))))`
-/

namespace A190248.P16609503513652386369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.land 3 ⌊4 * (Real.goldenRatio * (n + 1 : ℝ))⌋ : ℝ))

end

end A190248.P16609503513652386369

namespace A190248

/-- `round(sqrt(and(3, floor(4*ϕ*(n+1)))))` -/
def P16609503513652386369.Spec : Prop :=
  ∀ n, P16609503513652386369.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P1065752895187674561

`round(sqrt(A190440(n+1)))`
-/

namespace A190248.P1065752895187674561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A190440 (n + 1) : ℝ))

end

end A190248.P1065752895187674561

namespace A190248

/-- `round(sqrt(A190440(n+1)))` -/
def P1065752895187674561.Spec : Prop :=
  ∀ n, P1065752895187674561.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P6919742512996183991

`A004938(n+1)-A003623(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A190248

/-- `A004938(n+1)-A003623(n+1)` -/
def P6919742512996183991.Spec : Prop :=
  ∀ n, P6919742512996183991.a n = A190248 (n + 1)

theorem P6919742512996183991.correct : P6919742512996183991.Spec := by
  intro n
  simp only [A190248, Nat.add_sub_cancel]

end A190248

/-! ## A190248.P9626229888872190489

`A194152(n+1)-A190508(n+1)`
-/

namespace A190248.P9626229888872190489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194152 (n + 1) - A190508 (n + 1)

end

end A190248.P9626229888872190489

namespace A190248

/-- `A194152(n+1)-A190508(n+1)` -/
def P9626229888872190489.Spec : Prop :=
  ∀ n, P9626229888872190489.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P4791423850321123367

`A079343(floor(4*∑[ϕ-A001468(n)]))`
-/

namespace A190248.P4791423850321123367
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 ⌊4 * (∑ j ∈ Finset.range (n + 1), f1 j)⌋.toNat

end

end A190248.P4791423850321123367

namespace A190248

/-- `A079343(floor(4*∑[ϕ-A001468(n)]))` -/
def P4791423850321123367.Spec : Prop :=
  ∀ n, P4791423850321123367.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P1015911215128265328

`A060143(floor(4*∑[ϕ-A001468(n)])+1)`
-/

namespace A190248.P1015911215128265328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (⌊4 * (∑ j ∈ Finset.range (n + 1), f1 j)⌋ + 1).toNat

end

end A190248.P1015911215128265328

namespace A190248

/-- `A060143(floor(4*∑[ϕ-A001468(n)])+1)` -/
def P1015911215128265328.Spec : Prop :=
  ∀ n, P1015911215128265328.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P17978446455402014861

`A300763(2*floor(4*∑[ϕ-A001468(n)]))`
-/

namespace A190248.P17978446455402014861
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (2 * ⌊4 * (∑ j ∈ Finset.range (n + 1), f1 j)⌋).toNat

end

end A190248.P17978446455402014861

namespace A190248

/-- `A300763(2*floor(4*∑[ϕ-A001468(n)]))` -/
def P17978446455402014861.Spec : Prop :=
  ∀ n, P17978446455402014861.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P15445826007284051441

`A190440(n+1)-A078588(n+1)`
-/

namespace A190248.P15445826007284051441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190440 (n + 1) - A078588 (n + 1)

end

end A190248.P15445826007284051441

namespace A190248

/-- `A190440(n+1)-A078588(n+1)` -/
def P15445826007284051441.Spec : Prop :=
  ∀ n, P15445826007284051441.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P6184215047198840937

`round(sqrt(A001961(2*(n+1))%4))`
-/

namespace A190248.P6184215047198840937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (A001961 (2 * (n + 1))) 4 : ℝ))

end

end A190248.P6184215047198840937

namespace A190248

/-- `round(sqrt(A001961(2*(n+1))%4))` -/
def P6184215047198840937.Spec : Prop :=
  ∀ n, P6184215047198840937.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P7461487814792220307

`A078588(n+1)+1-A089809(2*(n+1))`
-/

namespace A190248.P7461487814792220307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (n + 1) + (1 - A089809 (2 * (n + 1)))

end

end A190248.P7461487814792220307

namespace A190248

/-- `A078588(n+1)+1-A089809(2*(n+1))` -/
def P7461487814792220307.Spec : Prop :=
  ∀ n, P7461487814792220307.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P3933811230521861777

`A189379(2*(n+1))-(A189377(2*(n+1))+n)`
-/

namespace A190248.P3933811230521861777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (2 * (n + 1)) - (A189377 (2 * (n + 1)) + (n : ℤ))

end

end A190248.P3933811230521861777

namespace A190248

/-- `A189379(2*(n+1))-(A189377(2*(n+1))+n)` -/
def P3933811230521861777.Spec : Prop :=
  ∀ n, P3933811230521861777.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P8074634949077453498

`A078588(2*(n+1))+A078588(n+1)`
-/

namespace A190248.P8074634949077453498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * (n + 1)) + A078588 (n + 1)

end

end A190248.P8074634949077453498

namespace A190248

/-- `A078588(2*(n+1))+A078588(n+1)` -/
def P8074634949077453498.Spec : Prop :=
  ∀ n, P8074634949077453498.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P9325797838899677358

`2-A284620(A007067(2*(n+1))+1)`
-/

namespace A190248.P9325797838899677358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A284620 (A007067 (2 * (n + 1)) + 1).toNat

end

end A190248.P9325797838899677358

namespace A190248

/-- `2-A284620(A007067(2*(n+1))+1)` -/
def P9325797838899677358.Spec : Prop :=
  ∀ n, P9325797838899677358.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P16180225526687294294

`A085002(2*(n+1))+A085002(4*(n+1))`
-/

namespace A190248.P16180225526687294294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (2 * (n + 1)) + A085002 (4 * (n + 1))

end

end A190248.P16180225526687294294

namespace A190248

/-- `A085002(2*(n+1))+A085002(4*(n+1))` -/
def P16180225526687294294.Spec : Prop :=
  ∀ n, P16180225526687294294.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P5872324583216258488

`A159917(A189379(2*(n+1))-A089809(n+1))`
-/

namespace A190248.P5872324583216258488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (A189379 (2 * (n + 1)) - A089809 (n + 1)).toNat

end

end A190248.P5872324583216258488

namespace A190248

/-- `A159917(A189379(2*(n+1))-A089809(n+1))` -/
def P5872324583216258488.Spec : Prop :=
  ∀ n, P5872324583216258488.a n = A190248 (n + 1)

end A190248

/-! ## A190248.P14485048231537261824

`A190427(A190458(n+1)+A190440(n+1))`
-/

namespace A190248.P14485048231537261824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A190458 (n + 1) + A190440 (n + 1)).toNat

end

end A190248.P14485048231537261824

namespace A190248

/-- `A190427(A190458(n+1)+A190440(n+1))` -/
def P14485048231537261824.Spec : Prop :=
  ∀ n, P14485048231537261824.a n = A190248 (n + 1)

end A190248

/-!
# A190249: Positions of 0 in A190248.

The programs for A190249, there is no canonical definition to state claims against.
-/

/-! ## A190249.P769649103382319813

`A190446(n+1)-A190450(n+1)`
-/

namespace A190249.P769649103382319813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190446 (n + 1) - A190450 (n + 1)

end

end A190249.P769649103382319813

/-! ## A190249.P895954710685747286

`A190456(n+1)%A190450(n+1)`
-/

namespace A190249.P895954710685747286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190456 (n + 1)) (A190450 (n + 1))

end

end A190249.P895954710685747286

/-! ## A190249.P13695721927581398626

`2*A190446(n+1)-A190456(n+1)`
-/

namespace A190249.P13695721927581398626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190446 (n + 1) - A190456 (n + 1)

end

end A190249.P13695721927581398626

/-! ## A190249.P279630378175918015

`∩[A001950(n+1), A295085(n)]`
-/

namespace A190249.P279630378175918015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P279630378175918015

/-! ## A190249.P9676800430282702166

`∩[A005653(n+1), A295085(n)]`
-/

namespace A190249.P9676800430282702166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P9676800430282702166

/-! ## A190249.P12407467363935833463

`∩[A140398(n+1), A295085(n)]`
-/

namespace A190249.P12407467363935833463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P12407467363935833463

/-! ## A190249.P18039697342262696409

`∩[A187949(n+1), A295085(n)]`
-/

namespace A190249.P18039697342262696409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P18039697342262696409

/-! ## A190249.P208317667334752112

`∩[A188016(n+1), A295085(n)]`
-/

namespace A190249.P208317667334752112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P208317667334752112

/-! ## A190249.P15109903855744814002

`∩[A188025(n+1), A295085(n)]`
-/

namespace A190249.P15109903855744814002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P15109903855744814002

/-! ## A190249.P2976315953068981082

`∩[A188036(n+1), A295085(n)]`
-/

namespace A190249.P2976315953068981082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P2976315953068981082

/-! ## A190249.P8007751900936810853

`∩[A188468(n+1), A295085(n)]`
-/

namespace A190249.P8007751900936810853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P8007751900936810853

/-! ## A190249.P17260114957036633045

`∩[A190437(n+1), A295085(n)]`
-/

namespace A190249.P17260114957036633045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P17260114957036633045

/-! ## A190249.P3813049885491862378

`∩[A387350(n+1), A295085(n)]`
-/

namespace A190249.P3813049885491862378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P3813049885491862378

/-! ## A190249.P2138172331161805133

`∩[A004957(n)-1, A295085(n)]`
-/

namespace A190249.P2138172331161805133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P2138172331161805133

/-! ## A190249.P4587089698905254586

`∩[A026352(n)-1, A295085(n)]`
-/

namespace A190249.P4587089698905254586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P4587089698905254586

/-! ## A190249.P9382603745953637242

`∩[A181713(n+1), A295085(n)]`
-/

namespace A190249.P9382603745953637242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P9382603745953637242

/-! ## A190249.P16440237201959218863

`∩[A187951(n+1), A295085(n)]`
-/

namespace A190249.P16440237201959218863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P16440237201959218863

/-! ## A190249.P3732124389000154378

`∩[A188029(n+1), A295085(n)]`
-/

namespace A190249.P3732124389000154378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P3732124389000154378

/-! ## A190249.P2194901849993975691

`∩[A004956(n), A295085(n)]`
-/

namespace A190249.P2194901849993975691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P2194901849993975691

/-! ## A190249.P5727003547219869804

`∩[A026351(n), A295085(n)]`
-/

namespace A190249.P5727003547219869804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190249.P5727003547219869804

/-!
# A190250: Positions of 1 in A190248.

The programs for A190250, the canonical program `A190250.P8306592236915081193` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190250 has offset 1).

The definition of A190250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190250.P11793507940615595966

`∪[A190442(n+1), A190443(n+1)]`
-/

namespace A190250.P11793507940615595966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190250.P11793507940615595966

namespace A190250

/-- `∪[A190442(n+1), A190443(n+1)]` -/
def P11793507940615595966.Spec : Prop :=
  ∀ n, (P11793507940615595966.a n : ℤ) = A190250 (n + 1)

end A190250

/-! ## A190250.P8306592236915081193

`eq[2, and(2, A195175(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190250

/-- `eq[2, and(2, A195175(n))]` -/
def P8306592236915081193.Spec : Prop :=
  ∀ n, (P8306592236915081193.a n : ℤ) = A190250 (n + 1)

theorem P8306592236915081193.correct : P8306592236915081193.Spec := by
  intro n
  simp only [A190250, Nat.add_sub_cancel]

end A190250

/-! ## A190250.P7634084191069456382

`eq[1, A190248(n+1)]+1`
-/

namespace A190250.P7634084191069456382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190250.P7634084191069456382

namespace A190250

/-- `eq[1, A190248(n+1)]+1` -/
def P7634084191069456382.Spec : Prop :=
  ∀ n, (P7634084191069456382.a n : ℤ) = A190250 (n + 1)

end A190250

/-! ## A190250.P5675556143326716149

`eq[1, a(A190248(n))²]` with `a(0)=2, a(1)=1`
-/

namespace A190250.P5675556143326716149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (A190248 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190250.P5675556143326716149

namespace A190250

/-- `eq[1, a(A190248(n))²]` -/
def P5675556143326716149.Spec : Prop :=
  ∀ n, (P5675556143326716149.a n : ℤ) = A190250 (n + 1)

end A190250

/-! ## A190250.P507554855323799232

`eq[1, A007067(2*n)%2]`
-/

namespace A190250.P507554855323799232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007067 (2 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190250.P507554855323799232

namespace A190250

/-- `eq[1, A007067(2*n)%2]` -/
def P507554855323799232.Spec : Prop :=
  ∀ n, (P507554855323799232.a n : ℤ) = A190250 (n + 1)

end A190250

/-! ## A190250.P13639373636950421305

`eq[2, and(2, A195172(2*n))]`
-/

namespace A190250.P13639373636950421305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A195172 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190250.P13639373636950421305

namespace A190250

/-- `eq[2, and(2, A195172(2*n))]` -/
def P13639373636950421305.Spec : Prop :=
  ∀ n, (P13639373636950421305.a n : ℤ) = A190250 (n + 1)

end A190250

/-! ## A190250.P14145352668340938365

`eq[1, gcd(2, A007067(n+n))]`
-/

namespace A190250.P14145352668340938365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007067 (n + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190250.P14145352668340938365

namespace A190250

/-- `eq[1, gcd(2, A007067(n+n))]` -/
def P14145352668340938365.Spec : Prop :=
  ∀ n, (P14145352668340938365.a n : ℤ) = A190250 (n + 1)

end A190250

/-! ## A190250.P7740121426387104893

`eq[1, A078588(2*n)+A078588(n)]`
-/

namespace A190250.P7740121426387104893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n) + A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190250.P7740121426387104893

namespace A190250

/-- `eq[1, A078588(2*n)+A078588(n)]` -/
def P7740121426387104893.Spec : Prop :=
  ∀ n, (P7740121426387104893.a n : ℤ) = A190250 (n + 1)

end A190250

/-! ## A190250.P188615098753941278

`record[(n+1)*A000035(A007067(A005843(n+1)))]`
-/

namespace A190250.P188615098753941278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A007067 (A005843 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190250.P188615098753941278

namespace A190250

/-- `record[(n+1)*A000035(A007067(A005843(n+1)))]` -/
def P188615098753941278.Spec : Prop :=
  ∀ n, P188615098753941278.a n = A190250 (n + 1)

end A190250

/-! ## A190250.P10787909863985062031

`eq[2, and(2, A189663(4*n+1))]`
-/

namespace A190250.P10787909863985062031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A189663 (4 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190250.P10787909863985062031

namespace A190250

/-- `eq[2, and(2, A189663(4*n+1))]` -/
def P10787909863985062031.Spec : Prop :=
  ∀ n, (P10787909863985062031.a n : ℤ) = A190250 (n + 1)

end A190250

/-!
# A190251: Positions of 2 in A190248.

The programs for A190251, there is no canonical definition to state claims against.
-/

/-! ## A190251.P13740791619733384888

`∩[A004957(n), A295085(n)]`
-/

namespace A190251.P13740791619733384888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P13740791619733384888

/-! ## A190251.P5596942549749470931

`filter[A295085(n), A096270(#)]`
-/

namespace A190251.P5596942549749470931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A190251.P5596942549749470931

/-! ## A190251.P3352864602541522566

`∩[A026352(n), A295085(n)]`
-/

namespace A190251.P3352864602541522566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P3352864602541522566

/-! ## A190251.P10081405407072194865

`∩[A003234(n+1), A295085(n)]`
-/

namespace A190251.P10081405407072194865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P10081405407072194865

/-! ## A190251.P18032085746275110826

`∩[A005652(n+1), A295085(n)]`
-/

namespace A190251.P18032085746275110826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P18032085746275110826

/-! ## A190251.P2401390489393543438

`∩[A140400(n+1), A295085(n)]`
-/

namespace A190251.P2401390489393543438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P2401390489393543438

/-! ## A190251.P4221402069747772207

`∩[A181714(n+1), A295085(n)]`
-/

namespace A190251.P4221402069747772207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P4221402069747772207

/-! ## A190251.P15579318783894942613

`∩[A187952(n+1), A295085(n)]`
-/

namespace A190251.P15579318783894942613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P15579318783894942613

/-! ## A190251.P12449435077187638578

`∩[A188018(n+1), A295085(n)]`
-/

namespace A190251.P12449435077187638578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P12449435077187638578

/-! ## A190251.P12902956183833639995

`∩[A188028(n+1), A295085(n)]`
-/

namespace A190251.P12902956183833639995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P12902956183833639995

/-! ## A190251.P10922065454862732605

`∩[A188473(n+1), A295085(n)]`
-/

namespace A190251.P10922065454862732605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P10922065454862732605

/-! ## A190251.P8519507646357713570

`∩[A190430(n+1), A295085(n)]`
-/

namespace A190251.P8519507646357713570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P8519507646357713570

/-! ## A190251.P11003800265768559162

`∩[A188015(n+1), A295085(n)]`
-/

namespace A190251.P11003800265768559162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P11003800265768559162

/-! ## A190251.P8100514482047657227

`∩[A188469(n+1), A295085(n)]`
-/

namespace A190251.P8100514482047657227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P8100514482047657227

/-! ## A190251.P18082526679633386182

`∩[A188035(n+1), A295085(n)]`
-/

namespace A190251.P18082526679633386182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P18082526679633386182

/-! ## A190251.P7702209202690684764

`∩[A066096(n), A295085(n)]`
-/

namespace A190251.P7702209202690684764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P7702209202690684764

/-! ## A190251.P1321440927090251700

`∩[A000201(n+1), A295085(n)]`
-/

namespace A190251.P1321440927090251700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P1321440927090251700

/-! ## A190251.P3841612436300193340

`∩[A004956(n)-1, A295085(n)]`
-/

namespace A190251.P3841612436300193340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P3841612436300193340

/-! ## A190251.P15578456514511231760

`∩[A188024(n+1), A295085(n)]`
-/

namespace A190251.P15578456514511231760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P15578456514511231760

/-! ## A190251.P3127532501767972235

`∩[A187953(n+1), A295085(n)]`
-/

namespace A190251.P3127532501767972235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190251.P3127532501767972235

/-!
# A190252: Riordan matrix (g(x),x*g(x)), where g(x) = (1-x-sqrt(1-2*x-3*x^2-4*x^3))/(2*x^2*(1+x)).

The programs for A190252, there is no canonical definition to state claims against.
-/

/-! ## A190252.P17006687708347698783

`A190215(n)+A112765(A007865(n))`
-/

namespace A190252.P17006687708347698783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 n + A112765 (A007865 n).toNat

end

end A190252.P17006687708347698783

/-! ## A190252.P15212706857453935055

`A318982(A033931(n+1))+A190215(n)`
-/

namespace A190252.P15212706857453935055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318982 (A033931 (n + 1)).toNat + A190215 n

end

end A190252.P15212706857453935055

/-! ## A190252.P8538910218500942456

`or(A167163(A291551(n)), A190215(n))`
-/

namespace A190252.P8538910218500942456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167163 (A291551 n).toNat) (A190215 n)

end

end A190252.P8538910218500942456

/-! ## A190252.P17761357076426874096

`or(A029874(n)%A000188(n+1), A190215(n))`
-/

namespace A190252.P17761357076426874096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A029874 n) (A000188 (n + 1))) (A190215 n)

end

end A190252.P17761357076426874096

/-! ## A190252.P1707750704606848940

`A000188(or(A190215(n), A291551(n))²)`
-/

namespace A190252.P1707750704606848940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.lor (A190215 n) (A291551 n) ^ 2).toNat

end

end A190252.P1707750704606848940

/-!
# A190253: Central coefficients of the Riordan matrix (g(x),x*g(x)), where g(x) = (1-x-sqrt(1-2x-3x^2-4x^3))/(2*x^2*(1+x)) (A190252).

The programs for A190253, there is no canonical definition to state claims against.
-/

/-! ## A190253.P949425827278598387

`A190252(∑[4*n])`
-/

namespace A190253.P949425827278598387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190253.P949425827278598387

/-! ## A190253.P10802834087095225436

`lcm(n+1, A190252(A046092(n)))`
-/

namespace A190253.P10802834087095225436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A190252 (A046092 n).toNat)

end

end A190253.P10802834087095225436

/-! ## A190253.P11154893083911524624

`A190252(A046092(n))^A007895(A035516(n))`
-/

namespace A190253.P11154893083911524624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190252 (A046092 n).toNat : ℚ) ^ (A007895 (A035516 n).toNat : ℤ)

end

end A190253.P11154893083911524624

/-! ## A190253.P9955588366288173504

`A190252(A046092(n))^A007895(A035517(n))`
-/

namespace A190253.P9955588366288173504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190252 (A046092 n).toNat : ℚ) ^ (A007895 (A035517 n).toNat : ℤ)

end

end A190253.P9955588366288173504

/-! ## A190253.P1837801937437618730

`A190252(A046092(n))+A190236(A305068(n+1))`
-/

namespace A190253.P1837801937437618730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190252 (A046092 n).toNat + A190236 (A305068 (n + 1)).toNat

end

end A190253.P1837801937437618730

/-!
# A190254: Row sums of the Riordan matrix (g(x),x*g(x)), where g(x) = (1-x-sqrt(1-2*x-3*x^2-4*x^3))/(2*x^2*(1+x)) (A190252).

The programs for A190254, there is no canonical definition to state claims against.
-/

/-! ## A190254.P4633777384522254129

`A132218(n)+A002265(A091344(n))`
-/

namespace A190254.P4633777384522254129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132218 n + A002265 (A091344 n).toNat

end

end A190254.P4633777384522254129

/-! ## A190254.P295732745894123825

`A368330(n+1)+A294101(A008776(n))`
-/

namespace A190254.P295732745894123825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368330 (n + 1) + A294101 (A008776 n).toNat

end

end A190254.P295732745894123825

/-! ## A190254.P124021776772305838

`A194640(A047926(n))`
-/

namespace A190254.P124021776772305838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A047926 n).toNat

end

end A190254.P124021776772305838

/-!
# A190255: Diagonal sums of the Riordan matrix (g(x),x*g(x)), where g(x) = (1-x-sqrt(1-2*x-3*x^2-4*x^3))/(2*x^2*(1+x)) (A190252).

The programs for A190255, there is no canonical definition to state claims against.
-/

/-! ## A190255.P14326682890885455079

`A062108(∑[A149033(n)])`
-/

namespace A190255.P14326682890885455079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190255.P14326682890885455079

/-! ## A190255.P8390429538696358145

`A245898(n+1)+A002266(ceil(17^(n/3)))`
-/

namespace A190255.P8390429538696358145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) + A002266 ⌈(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉.toNat

end

end A190255.P8390429538696358145

/-! ## A190255.P17869029290893201093

`A247911(A027067(n)+A004526(n))`
-/

namespace A190255.P17869029290893201093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A027067 n + A004526 n).toNat

end

end A190255.P17869029290893201093

/-! ## A190255.P9808106807688997221

`A074679(A001519(n)^A318440(n+1))`
-/

namespace A190255.P9808106807688997221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (SequenceMachineLib.roundAway ((A001519 n : ℚ) ^ (A318440 (n + 1) : ℤ))).toNat

end

end A190255.P9808106807688997221

/-!
# A190259: Continued fraction of (x + sqrt(2 + 4x))/2, where x=sqrt(2).

The programs for A190259, there is no canonical definition to state claims against.
-/

/-! ## A190259.P3155487894155205404

`A190261(n+1)`
-/

namespace A190259.P3155487894155205404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190261 (n + 1)

end

end A190259.P3155487894155205404

/-!
# A190265: a(n) = n + [ns/r] + [nt/r]; r=1/2, s=sinh(1), t=cosh(1).

The programs for A190265, the canonical program `A190265.P11595389117272016645` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190265 has offset 1).

The definition of A190265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190265.P11595389117272016645

`A189999(2*(n+1))-(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190265

/-- `A189999(2*(n+1))-(n+1)` -/
def P11595389117272016645.Spec : Prop :=
  ∀ n, P11595389117272016645.a n = A190265 (n + 1)

theorem P11595389117272016645.correct : P11595389117272016645.Spec := by
  intro n
  simp only [A190265, Nat.add_sub_cancel]

end A190265

/-! ## A190265.P8057079679613105494

`∑[A242775(A295771(n+2))+5]`
-/

namespace A190265.P8057079679613105494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242775 (A295771 (n + 2)).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190265.P8057079679613105494

namespace A190265

/-- `∑[A242775(A295771(n+2))+5]` -/
def P8057079679613105494.Spec : Prop :=
  ∀ n, P8057079679613105494.a n = A190265 (n + 1)

end A190265

/-! ## A190265.P4993568704222685014

`∑[A230440(record[A058399(n+1)])+5]`
-/

namespace A190265.P4993568704222685014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230440 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190265.P4993568704222685014

namespace A190265

/-- `∑[A230440(record[A058399(n+1)])+5]` -/
def P4993568704222685014.Spec : Prop :=
  ∀ n, P4993568704222685014.a n = A190265 (n + 1)

end A190265

/-! ## A190265.P2887658883008624672

`∑[A230440(record[A168017(n+1)])+5]`
-/

namespace A190265.P2887658883008624672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168017 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230440 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190265.P2887658883008624672

namespace A190265

/-- `∑[A230440(record[A168017(n+1)])+5]` -/
def P2887658883008624672.Spec : Prop :=
  ∀ n, P2887658883008624672.a n = A190265 (n + 1)

end A190265

/-! ## A190265.P8959493865602239186

`A376952(3*(n+1))+A369048(A001906(n+1))`
-/

namespace A190265.P8959493865602239186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376952 (3 * (n + 1)) + A369048 (A001906 (n + 1)).toNat

end

end A190265.P8959493865602239186

namespace A190265

/-- `A376952(3*(n+1))+A369048(A001906(n+1))` -/
def P8959493865602239186.Spec : Prop :=
  ∀ n, P8959493865602239186.a n = A190265 (n + 1)

end A190265

/-!
# A190267: Numbers n such that d(n-1) = d(n+1) = 6, where d(k) is the number of divisors of k (A000005).

The programs for A190267, there is no canonical definition to state claims against.
-/

/-! ## A190267.P6251047523992787246

`A356743(n+1)+1`
-/

namespace A190267.P6251047523992787246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356743 (n + 1) + 1

end

end A190267.P6251047523992787246

/-! ## A190267.P6367507163000194358

`∩[A030515(n+1), A062832(n+1)]+1`
-/

namespace A190267.P6367507163000194358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A190267.P6367507163000194358

/-! ## A190267.P13286040858991827627

`∩[A062832(n+1), A253388(n+1)]+1`
-/

namespace A190267.P13286040858991827627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A190267.P13286040858991827627

/-! ## A190267.P16373719612978107479

`∩[A162947(n+1)+1, A162947(n+1)-1]`
-/

namespace A190267.P16373719612978107479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162947 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162947 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190267.P16373719612978107479

/-! ## A190267.P14048491844963294982

`A011760(A356743(n+1))`
-/

namespace A190267.P14048491844963294982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A356743 (n + 1)).toNat

end

end A190267.P14048491844963294982

/-!
# A190268: Number of ways to express the n-th average of a twin prime pair as the arithmetic mean of a lower and an upper twin prime.

The programs for A190268, there is no canonical definition to state claims against.
-/

/-! ## A190268.P5989295672115186501

`2*A359556(n+1)+1`
-/

namespace A190268.P5989295672115186501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359556 (n + 1) + 1

end

end A190268.P5989295672115186501

/-! ## A190268.P3011998701937271356

`A005843(A359556(n+1))+1`
-/

namespace A190268.P3011998701937271356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A359556 (n + 1)).toNat + 1

end

end A190268.P3011998701937271356

/-! ## A190268.P10488050110912607091

`A159700(A014574(n+1))+1`
-/

namespace A190268.P10488050110912607091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159700 (A014574 (n + 1)).toNat + 1

end

end A190268.P10488050110912607091

/-! ## A190268.P13454608216913468049

`A159700(A001359(n+1)+1)+1`
-/

namespace A190268.P13454608216913468049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159700 (A001359 (n + 1) + 1).toNat + 1

end

end A190268.P13454608216913468049

/-! ## A190268.P17744143377064804903

`A159700(A077800(Δ[n²])+1)+1`
-/

namespace A190268.P17744143377064804903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159700 (A077800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat + 1

end

end A190268.P17744143377064804903

/-! ## A190268.P7333150470865613312

`A129363(A014574(n+1))`
-/

namespace A190268.P7333150470865613312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A014574 (n + 1)).toNat

end

end A190268.P7333150470865613312

/-! ## A190268.P1805905531408243303

`A129363(A129297(n+5))`
-/

namespace A190268.P1805905531408243303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A129297 (n + 5)).toNat

end

end A190268.P1805905531408243303

/-! ## A190268.P14469364735794090666

`A129363(sqrt(A075369(n+1)))`
-/

namespace A190268.P14469364735794090666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A190268.P14469364735794090666

/-! ## A190268.P10132930787222068469

`A129363(A001359(n+1)+1)`
-/

namespace A190268.P10132930787222068469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A001359 (n + 1) + 1).toNat

end

end A190268.P10132930787222068469

/-! ## A190268.P2940299928708721415

`A129363(A111166(n+1)+1)`
-/

namespace A190268.P2940299928708721415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A111166 (n + 1) + 1).toNat

end

end A190268.P2940299928708721415

/-! ## A190268.P16768098152086535213

`A129363(A006512(n+1)-1)`
-/

namespace A190268.P16768098152086535213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A006512 (n + 1) - 1).toNat

end

end A190268.P16768098152086535213

/-! ## A190268.P6911914004710513675

`A129363(A171821(2*n+1)+1)`
-/

namespace A190268.P6911914004710513675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A171821 (2 * n + 1) + 1).toNat

end

end A190268.P6911914004710513675

/-! ## A190268.P1634995185480437088

`A129363(p?[A000040(n+1)+2]-1)`
-/

namespace A190268.P1634995185480437088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A190268.P1634995185480437088

/-! ## A190268.P10123470438517712752

`A129363(xor(1, p?[A000040(n+1)+2]))`
-/

namespace A190268.P10123470438517712752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A190268.P10123470438517712752

/-!
# A190269: a(n) = maximal k for which the complete graph on n nodes allows an edge-surjective vertex-k-labeling.

The programs for A190269, there is no canonical definition to state claims against.
-/

/-! ## A190269.P1323006038904171975

`A004525(∑[A195098(A094838(n+1))])`
-/

namespace A190269.P1323006038904171975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A094838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190269.P1323006038904171975

/-! ## A190269.P10663461514078256591

`∑[A111972(A000124(A027633(n)))]`
-/

namespace A190269.P10663461514078256591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A000124 (A027633 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190269.P10663461514078256591

/-! ## A190269.P15882935983383036807

`∑[floor(A112310(A000032(n)+1)/2)]`
-/

namespace A190269.P15882935983383036807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112310 (A000032 n + 1).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190269.P15882935983383036807

/-! ## A190269.P12960240495707239534

`∑[∑[A043844(A333599(n+4)+1)%2]]+1`
-/

namespace A190269.P12960240495707239534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043844 (A333599 (n + 4) + 1).toNat) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A190269.P12960240495707239534

/-!
# A190270: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^A001951(n), where A001951(n) = [n*sqrt(2)].

The programs for A190270, there is no canonical definition to state claims against.
-/

/-! ## A190270.P5321175550540790748

`A103221(A074028(2*(n+2))+2)`
-/

namespace A190270.P5321175550540790748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A074028 (2 * (n + 2)) + 2).toNat

end

end A190270.P5321175550540790748

/-! ## A190270.P16042305666408216080

`A103221(A110110(n)+A000984(n))`
-/

namespace A190270.P16042305666408216080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A110110 n + A000984 n).toNat

end

end A190270.P16042305666408216080

/-! ## A190270.P10830818364475448013

`A306383(A000088(n))+A003430(n)`
-/

namespace A190270.P10830818364475448013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306383 (A000088 n).toNat + A003430 n

end

end A190270.P10830818364475448013

/-!
# A190271: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^A001952(n), where A001952(n) = [n*(2+sqrt(2))].

The programs for A190271, there is no canonical definition to state claims against.
-/

/-! ## A190271.P16124829338488026963

`A198520(A337854(n))`
-/

namespace A190271.P16124829338488026963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198520 (A337854 n).toNat

end

end A190271.P16124829338488026963

/-! ## A190271.P8853636033472057082

`A110656(A112150(∑[n]))`
-/

namespace A190271.P8853636033472057082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A112150 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A190271.P8853636033472057082

/-!
# A190272: Numbers n such that n' = a -1, with n and a semiprimes and gcd(a,n) > 1, where n' is the arithmetic derivative of n.

The programs for A190272, there is no canonical definition to state claims against.
-/

/-! ## A190272.P16201072771703996350

`∩[A177891(n+1), A330397(n+1)]`
-/

namespace A190272.P16201072771703996350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190272.P16201072771703996350

/-! ## A190272.P11647461961872488678

`∩[A162409(n+1), A222087(n+2)]`
-/

namespace A190272.P11647461961872488678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222087 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190272.P11647461961872488678

/-! ## A190272.P13484674702411127263

`∩[A162409(n+1), A177891(n+1)]`
-/

namespace A190272.P13484674702411127263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190272.P13484674702411127263

/-! ## A190272.P6339295283918878287

`∩[A047516(n+1), A162409(n+1)]`
-/

namespace A190272.P6339295283918878287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190272.P6339295283918878287

/-! ## A190272.P2831261676086800471

`∩[A162409(n+1), A047559(n+2)]`
-/

namespace A190272.P2831261676086800471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047559 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190272.P2831261676086800471

/-!
# A190274: Numbers n such that n' = p^2-1, with n = semiprime = p*q, n' is the arithmetic derivative of n. Also: semiprimes of the form p*(p^2-p-1).

The programs for A190274, there is no canonical definition to state claims against.
-/

/-! ## A190274.P9440327890754055911

`A152015(A091567(n+1))`
-/

namespace A190274.P9440327890754055911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (A091567 (n + 1)).toNat

end

end A190274.P9440327890754055911

/-! ## A190274.P7692269030982471154

`A091567(n+1)*A091568(n+1)`
-/

namespace A190274.P7692269030982471154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091567 (n + 1) * A091568 (n + 1)

end

end A190274.P7692269030982471154

/-! ## A190274.P3695045204301153867

`p?[A002328(n+1)]*A091568(n+1)`
-/

namespace A190274.P3695045204301153867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A091568 (n + 1)

end

end A190274.P3695045204301153867

/-! ## A190274.P11821444129767440857

`(A136241(n+1)+1)*A091568(n+1)`
-/

namespace A190274.P11821444129767440857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136241 (n + 1) + 1) * A091568 (n + 1)

end

end A190274.P11821444129767440857

/-! ## A190274.P15773665257915076670

`p?[2*C(A000040(n+1), 2)-1]*A091567(n+1)`
-/

namespace A190274.P15773665257915076670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A000040 (n + 1)).toNat 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A091567 (n + 1)

end

end A190274.P15773665257915076670

/-!
# A190275: Semiprimes of the form p*(p^2 - p + 1).

The programs for A190275, there is no canonical definition to state claims against.
-/

/-! ## A190275.P8272189430098072943

`A065508(n+1)*A074268(n+1)`
-/

namespace A190275.P8272189430098072943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1) * A074268 (n + 1)

end

end A190275.P8272189430098072943

/-! ## A190275.P13532606247359614022

`(A136240(n+1)+1)*A074268(n+1)`
-/

namespace A190275.P13532606247359614022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136240 (n + 1) + 1) * A074268 (n + 1)

end

end A190275.P13532606247359614022

/-! ## A190275.P1209882031179784893

`lcm(A065508(A000027(n+1)), A074268(n+1))`
-/

namespace A190275.P1209882031179784893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065508 (A000027 (n + 1)).toNat) (A074268 (n + 1))

end

end A190275.P1209882031179784893

/-! ## A190275.P12781731211049263255

`lcm(A074268(n+1)/A008836(n+1), A065508(n+1))`
-/

namespace A190275.P12781731211049263255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A074268 (n + 1) : ℚ) / (A008836 (n + 1) : ℚ))) (A065508 (n + 1))

end

end A190275.P12781731211049263255

/-! ## A190275.P14420340346559903879

`A065508(n+1)+A065508(n+1)²*A136240(n+1)`
-/

namespace A190275.P14420340346559903879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1) + A065508 (n + 1) ^ 2 * A136240 (n + 1)

end

end A190275.P14420340346559903879

/-! ## A190275.P11138066307715301454

`p?[A259145(n+1)]*A074268(n+1)`
-/

namespace A190275.P11138066307715301454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A074268 (n + 1)

end

end A190275.P11138066307715301454

/-! ## A190275.P12413252873516135505

`∩[A034897(n+1), A083558(n+1)]`
-/

namespace A190275.P12413252873516135505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190275.P12413252873516135505

/-! ## A190275.P10198480090196247318

`A069778(A136240(n+1))`
-/

namespace A190275.P10198480090196247318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 (A136240 (n + 1)).toNat

end

end A190275.P10198480090196247318

/-! ## A190275.P10179741170284677881

`A372226(A065508(n+1))`
-/

namespace A190275.P10179741170284677881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372226 (A065508 (n + 1)).toNat

end

end A190275.P10179741170284677881

/-! ## A190275.P14103284070807907376

`∩[A034897(n+1), A069778(n)]`
-/

namespace A190275.P14103284070807907376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190275.P14103284070807907376

/-! ## A190275.P8977226394246845561

`∩[A034897(n+1), A228398(n+1)]`
-/

namespace A190275.P8977226394246845561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190275.P8977226394246845561

/-! ## A190275.P1528310144083133998

`record[A000040(n+1)*A108154(A000040(n+1))]`
-/

namespace A190275.P1528310144083133998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A108154 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190275.P1528310144083133998

/-! ## A190275.P12609536402319091154

`A001158(p?[A065508(n+1)])-A074268(n+1)`
-/

namespace A190275.P12609536402319091154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A074268 (n + 1)

end

end A190275.P12609536402319091154

/-! ## A190275.P7034126619458780294

`A002061(p?[A065508(n+1)])*A065508(n+1)`
-/

namespace A190275.P7034126619458780294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A065508 (n + 1)

end

end A190275.P7034126619458780294

/-! ## A190275.P7520758166869941676

`A065508(n+1)*A182047(A065508(n+1)-1)`
-/

namespace A190275.P7520758166869941676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1) * A182047 (A065508 (n + 1) - 1).toNat

end

end A190275.P7520758166869941676

/-!
# A190276: Numbers k such that tau(2k-1) = tau(2k+1) where tau(k) = A000005(k).

The programs for A190276, the canonical program `A190276.P1290073502243581009` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190276 has offset 1).

The definition of A190276 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190276.P1290073502243581009

`(A066692(n+1)+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A190276

/-- `(A066692(n+1)+1)/2` -/
def P1290073502243581009.Spec : Prop :=
  ∀ n, P1290073502243581009.a n = (A190276 (n + 1) : ℚ)

end A190276

/-! ## A190276.P597290402284598304

`ceil(A066692(n+1)/2)`
-/

namespace A190276.P597290402284598304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066692 (n + 1) : ℚ) / 2⌉

end

end A190276.P597290402284598304

namespace A190276

/-- `ceil(A066692(n+1)/2)` -/
def P597290402284598304.Spec : Prop :=
  ∀ n, P597290402284598304.a n = A190276 (n + 1)

end A190276

/-! ## A190276.P12055942677426603291

`∑[A066519(n+1)]+1`
-/

namespace A190276.P12055942677426603291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A190276.P12055942677426603291

namespace A190276

/-- `∑[A066519(n+1)]+1` -/
def P12055942677426603291.Spec : Prop :=
  ∀ n, P12055942677426603291.a n = A190276 (n + 1)

end A190276

/-! ## A190276.P9387530787364039406

`eq[A000005(2*n+1), A000005(2*n+3)]+1`
-/

namespace A190276.P9387530787364039406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190276.P9387530787364039406

namespace A190276

/-- `eq[A000005(2*n+1), A000005(2*n+3)]+1` -/
def P9387530787364039406.Spec : Prop :=
  ∀ n, (P9387530787364039406.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P2570363210428490919

`record[A067888(n+1)/A020639(A067888(n+1))]`
-/

namespace A190276.P2570363210428490919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067888 (n + 1) : ℚ) / (A020639 (A067888 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190276.P2570363210428490919

namespace A190276

/-- `record[A067888(n+1)/A020639(A067888(n+1))]` -/
def P2570363210428490919.Spec : Prop :=
  ∀ n, P2570363210428490919.a n = (A190276 (n + 1) : ℚ)

end A190276

/-! ## A190276.P8453024056850323599

`lt[Δ[A000005(Δ[n²])]², 1]+1`
-/

namespace A190276.P8453024056850323599
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A190276.P8453024056850323599

namespace A190276

/-- `lt[Δ[A000005(Δ[n²])]², 1]+1` -/
def P8453024056850323599.Spec : Prop :=
  ∀ n, (P8453024056850323599.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P15306900922180727773

`eq[0, Δ[A000005(2*n+1)]]+1`
-/

namespace A190276.P15306900922180727773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190276.P15306900922180727773

namespace A190276

/-- `eq[0, Δ[A000005(2*n+1)]]+1` -/
def P15306900922180727773.Spec : Prop :=
  ∀ n, (P15306900922180727773.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P8308403305622161275

`eq[1, ratio[A000005(2*n+3)]]+2`
-/

namespace A190276.P8308403305622161275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 2

end

end A190276.P8308403305622161275

namespace A190276

/-- `eq[1, ratio[A000005(2*n+3)]]+2` -/
def P8308403305622161275.Spec : Prop :=
  ∀ n, (P8308403305622161275.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P4426464147523162177

`eq[A099774(n+2), A099774(n+1)]+1`
-/

namespace A190276.P4426464147523162177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190276.P4426464147523162177

namespace A190276

/-- `eq[A099774(n+2), A099774(n+1)]+1` -/
def P4426464147523162177.Spec : Prop :=
  ∀ n, (P4426464147523162177.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P4615379618138249602

`eq[A095374(n+2), A095374(n+1)]+2`
-/

namespace A190276.P4615379618138249602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A190276.P4615379618138249602

namespace A190276

/-- `eq[A095374(n+2), A095374(n+1)]+2` -/
def P4615379618138249602.Spec : Prop :=
  ∀ n, (P4615379618138249602.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P13555566024112145913

`eq[A092405(2*n+1), A092405(2*(n+1))]+1`
-/

namespace A190276.P13555566024112145913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190276.P13555566024112145913

namespace A190276

/-- `eq[A092405(2*n+1), A092405(2*(n+1))]+1` -/
def P13555566024112145913.Spec : Prop :=
  ∀ n, (P13555566024112145913.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P7497720014509198227

`eq[A175454(2*n+1), A175454(2*(n+1))]+1`
-/

namespace A190276.P7497720014509198227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175454 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175454 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190276.P7497720014509198227

namespace A190276

/-- `eq[A175454(2*n+1), A175454(2*(n+1))]+1` -/
def P7497720014509198227.Spec : Prop :=
  ∀ n, (P7497720014509198227.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P1776118036967748215

`A000463(A066692(n+1))`
-/

namespace A190276.P1776118036967748215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A066692 (n + 1)).toNat

end

end A190276.P1776118036967748215

namespace A190276

/-- `A000463(A066692(n+1))` -/
def P1776118036967748215.Spec : Prop :=
  ∀ n, P1776118036967748215.a n = A190276 (n + 1)

end A190276

/-! ## A190276.P17334568496201363570

`A123108(A066692(n+1)+1)`
-/

namespace A190276.P17334568496201363570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A066692 (n + 1) + 1).toNat

end

end A190276.P17334568496201363570

namespace A190276

/-- `A123108(A066692(n+1)+1)` -/
def P17334568496201363570.Spec : Prop :=
  ∀ n, P17334568496201363570.a n = A190276 (n + 1)

end A190276

/-! ## A190276.P9458072549586981008

`eq[A063123(2*n+1), A063123(2*(n+1))]+1`
-/

namespace A190276.P9458072549586981008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190276.P9458072549586981008

namespace A190276

/-- `eq[A063123(2*n+1), A063123(2*(n+1))]+1` -/
def P9458072549586981008.Spec : Prop :=
  ∀ n, (P9458072549586981008.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P556444859915943708

`eq[A063440(2*n+1), A063440(2*(n+1))]+1`
-/

namespace A190276.P556444859915943708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190276.P556444859915943708

namespace A190276

/-- `eq[A063440(2*n+1), A063440(2*(n+1))]+1` -/
def P556444859915943708.Spec : Prop :=
  ∀ n, (P556444859915943708.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P10904518635246690169

`eq[A092517(2*n+1), A092517(2*(n+1))]+1`
-/

namespace A190276.P10904518635246690169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190276.P10904518635246690169

namespace A190276

/-- `eq[A092517(2*n+1), A092517(2*(n+1))]+1` -/
def P10904518635246690169.Spec : Prop :=
  ∀ n, (P10904518635246690169.a n : ℤ) = A190276 (n + 1)

end A190276

/-! ## A190276.P14242387061513109087

`eq[A001227(2*n+1), A091954(A092535(2*n))]`
-/

namespace A190276.P14242387061513109087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A092535 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190276.P14242387061513109087

namespace A190276

/-- `eq[A001227(2*n+1), A091954(A092535(2*n))]` -/
def P14242387061513109087.Spec : Prop :=
  ∀ n, (P14242387061513109087.a n : ℤ) = A190276 (n + 1)

end A190276

/-!
# A190277: Number of trails between opposite vertices in a triangle strip.

The programs for A190277, the canonical program `A190277.P8775008714666934543` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190277 has offset 1).

The definition of A190277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190277.P8775008714666934543

`3*a(n-1)+a(n-2)-3*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A190277

/-- `3*a(n-1)+a(n-2)-3*a(n-3)-2*a(n-4)` -/
def P8775008714666934543.Spec : Prop :=
  ∀ n, P8775008714666934543.a n = A190277 (n + 1)

theorem P8775008714666934543.correct : P8775008714666934543.Spec := by
  intro n
  simp only [A190277, Nat.add_sub_cancel]

end A190277

/-! ## A190277.P2544965785226265023

`ogf((1-2x-2x^2)/(1-3x-x^2+3x^3+2x^4))`
-/

namespace A190277.P2544965785226265023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -3, -1, 3, 2] n

end

end A190277.P2544965785226265023

namespace A190277

/-- `ogf((1-2x-2x^2)/(1-3x-x^2+3x^3+2x^4))` -/
def P2544965785226265023.Spec : Prop :=
  ∀ n, P2544965785226265023.a n = A190277 (n + 1)

end A190277

/-! ## A190277.P5377004291853825677

`A157271(ceil(sqrt(A286425(n))))`
-/

namespace A190277.P5377004291853825677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 ⌈Real.sqrt (A286425 n : ℝ)⌉.toNat

end

end A190277.P5377004291853825677

namespace A190277

/-- `A157271(ceil(sqrt(A286425(n))))` -/
def P5377004291853825677.Spec : Prop :=
  ∀ n, P5377004291853825677.a n = A190277 (n + 1)

end A190277

/-! ## A190277.P2648321696127736954

`A157271(round(sqrt(A286425(n))))`
-/

namespace A190277.P2648321696127736954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (SequenceMachineLib.roundAway (Real.sqrt (A286425 n : ℝ))).toNat

end

end A190277.P2648321696127736954

namespace A190277

/-- `A157271(round(sqrt(A286425(n))))` -/
def P2648321696127736954.Spec : Prop :=
  ∀ n, P2648321696127736954.a n = A190277 (n + 1)

end A190277

/-!
# A190278: Number of decimal digits in LCM of Fibonacci sequence {F_1, ..., F_n}.

The programs for A190278, there is no canonical definition to state claims against.
-/

/-! ## A190278.P8529493270205151029

`or(A049809(n+1), A188967(A096294(n)))`
-/

namespace A190278.P8529493270205151029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049809 (n + 1)) (A188967 (A096294 n).toNat)

end

end A190278.P8529493270205151029

/-! ## A190278.P9171530892108220239

`or(A049809(n+1), A344880(A000045(n+4)))`
-/

namespace A190278.P9171530892108220239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049809 (n + 1)) (A344880 (A000045 (n + 4)).toNat)

end

end A190278.P9171530892108220239

/-! ## A190278.P9587486911741372298

`A178798(A026812(n))+A049809(n+1)`
-/

namespace A190278.P9587486911741372298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A026812 n).toNat + A049809 (n + 1)

end

end A190278.P9587486911741372298

/-! ## A190278.P2117256399308348076

`A185284(2*n+1)+A049809(n+1)`
-/

namespace A190278.P2117256399308348076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A049809 (n + 1)

end

end A190278.P2117256399308348076

/-! ## A190278.P14748907422539745744

`A340988(A293724(n))+A049809(n+1)`
-/

namespace A190278.P14748907422539745744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A293724 n).toNat + 91) + A049809 (n + 1)

end

end A190278.P14748907422539745744

/-!
# A190279: a(n) = n + [nr/s] + [nt/s]; r=1/2, s=sinh(1), t=cosh(1).

The programs for A190279, there is no canonical definition to state claims against.
-/

/-! ## A190279.P10684579313351668926

`A008619(A123068(A001952(n+1)))+n`
-/

namespace A190279.P10684579313351668926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A123068 (A001952 (n + 1)).toNat).toNat + (n : ℤ)

end

end A190279.P10684579313351668926

/-! ## A190279.P15809011709084591036

`A179775(A259193(n))+A065475(A054414(n))`
-/

namespace A190279.P15809011709084591036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (A259193 n).toNat + A065475 (A054414 n).toNat

end

end A190279.P15809011709084591036

/-! ## A190279.P5543844532027254582

`A371625(A286923(n+1))`
-/

namespace A190279.P5543844532027254582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371625 (A286923 (n + 1)).toNat

end

end A190279.P5543844532027254582

/-! ## A190279.P6996247127332807397

`A371625(A187338(n+1)-1)`
-/

namespace A190279.P6996247127332807397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371625 (A187338 (n + 1) - 1).toNat

end

end A190279.P6996247127332807397

/-! ## A190279.P12967862119974812290

`A371625(A001952(n+1)+n)`
-/

namespace A190279.P12967862119974812290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371625 (A001952 (n + 1) + (n : ℤ)).toNat

end

end A190279.P12967862119974812290

/-!
# A190280: a(n) = n + [nr/t] + [ns/t]; r=1/2, s=sinh(1), t=cosh(1).

The programs for A190280, there is no canonical definition to state claims against.
-/

/-! ## A190280.P1012971722219976584

`A002264(n)+∑[A000034(A002965(n))]`
-/

namespace A190280.P1012971722219976584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002965 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190280.P1012971722219976584

/-! ## A190280.P12710978730074378528

`A088481(3*n+1)-A001068(n)`
-/

namespace A190280.P12710978730074378528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088481 (3 * n + 1) - A001068 n

end

end A190280.P12710978730074378528

/-! ## A190280.P11067729246032343545

`∑[A117447(A000045(n))+1]-1`
-/

namespace A190280.P11067729246032343545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117447 (A000045 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A190280.P11067729246032343545

/-! ## A190280.P1679694575794981324

`A187386(n+1)+A108611(A004767(n))`
-/

namespace A190280.P1679694575794981324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187386 (n + 1) + A108611 (A004767 n).toNat

end

end A190280.P1679694575794981324

/-! ## A190280.P17334370780496890706

`A052382(3*n+2)-A002265(A330066(3*(n+1)))`
-/

namespace A190280.P17334370780496890706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (3 * n + 2) - A002265 (A330066 (3 * (n + 1))).toNat

end

end A190280.P17334370780496890706

/-!
# A190282: Continued fraction of (1+sqrt(1+r))/r, where r=sqrt(2).

The programs for A190282, there is no canonical definition to state claims against.
-/

/-! ## A190282.P9974589143974140047

`A154748(n+2)`
-/

namespace A190282.P9974589143974140047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154748 (n + 2)

end

end A190282.P9974589143974140047

/-! ## A190282.P5854043376038851616

`A190284(n+1)`
-/

namespace A190282.P5854043376038851616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190284 (n + 1)

end

end A190282.P5854043376038851616

/-!
# A190283: Decimal expansion of 1+sqrt(1+sqrt(2)).

The programs for A190283, there is no canonical definition to state claims against.
-/

/-! ## A190283.P9812042789613403803

`A278928(n)+C(2, n+2)`
-/

namespace A190283.P9812042789613403803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278928 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A190283.P9812042789613403803

/-! ## A190283.P5823539332354479616

`A278928(n)+A000007(n)`
-/

namespace A190283.P5823539332354479616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278928 (n + 1) + A000007 n

end

end A190283.P5823539332354479616

/-! ## A190283.P16151417956474846345

`A278928(n)+A036987(2*n)`
-/

namespace A190283.P16151417956474846345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278928 (n + 1) + A036987 (2 * n)

end

end A190283.P16151417956474846345

/-! ## A190283.P12805939623774326391

`floor(ratio[A000027(n+1)])*A278928(n)`
-/

namespace A190283.P12805939623774326391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ * A278928 (n + 1)

end

end A190283.P12805939623774326391

/-! ## A190283.P12608983306422993767

`A278928(n)+A008683(A008574(n))`
-/

namespace A190283.P12608983306422993767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278928 (n + 1) + A008683 (A008574 n).toNat

end

end A190283.P12608983306422993767

/-! ## A190283.P2768529084173636037

`A278928(n)-A008683(2*A008574(n))`
-/

namespace A190283.P2768529084173636037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278928 (n + 1) - A008683 (2 * A008574 n).toNat

end

end A190283.P2768529084173636037

/-! ## A190283.P13518852625781529918

`A190284(n)+A278928(n)-A154748(n+1)`
-/

namespace A190283.P13518852625781529918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190284 n + (A278928 (n + 1) - A154748 (n + 1))

end

end A190283.P13518852625781529918

/-!
# A190284: Continued fraction of 1+sqrt(1+sqrt(2)).

The programs for A190284, there is no canonical definition to state claims against.
-/

/-! ## A190284.P12240988647876178607

`A154748(n+1)+A000007(n)`
-/

namespace A190284.P12240988647876178607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154748 (n + 1) + A000007 n

end

end A190284.P12240988647876178607

/-! ## A190284.P9858307896789987329

`A154748(n+1)+A005153(n+1)%2`
-/

namespace A190284.P9858307896789987329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154748 (n + 1) + Int.tmod (A005153 (n + 1)) 2

end

end A190284.P9858307896789987329

/-! ## A190284.P947164251676292874

`gcd(2, A000040(n+1))*A154748(n+1)`
-/

namespace A190284.P947164251676292874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A154748 (n + 1)

end

end A190284.P947164251676292874

/-! ## A190284.P13551493922929046081

`A154748(a(n-1)/A154748(n)+n)` with `a(0)=2`
-/

namespace A190284.P13551493922929046081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A154748 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (A154748 n : ℚ) + (n : ℚ))).toNat

end

end A190284.P13551493922929046081

/-! ## A190284.P10649105204610456089

`A154748(n+1)+A003959(2*n+1)%2`
-/

namespace A190284.P10649105204610456089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154748 (n + 1) + Int.tmod (A003959 (2 * n + 1)) 2

end

end A190284.P10649105204610456089

/-! ## A190284.P15176206329977479320

`A154748(A154748(n)+1+n-a(n-1))` with `a(0)=2`
-/

namespace A190284.P15176206329977479320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A154748 (A154748 n + 1 + (n : ℤ) - a (n - 1)).toNat

end

end A190284.P15176206329977479320

/-!
# A190291: Number of intervals in the weak (Bruhat) order of the symmetric group S_n that are distributive lattices.

The programs for A190291, there is no canonical definition to state claims against.
-/

/-! ## A190291.P8208271333124524808

`A192218(A201368(n))/2`
-/

namespace A190291.P8208271333124524808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192218 (A201368 n).toNat : ℚ) / 2

end

end A190291.P8208271333124524808

/-!
# A190292: Numbers with prime factorization pqrs^6.

The programs for A190292, there is no canonical definition to state claims against.
-/

/-! ## A190292.P13968281141673080005

`A190473(n+1)/A001316(A016116(n))`
-/

namespace A190292.P13968281141673080005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190473 (n + 1) : ℚ) / (A001316 (A016116 n).toNat : ℚ)

end

end A190292.P13968281141673080005

/-! ## A190292.P6510752169600111532

`A190473(n+1)/A010846(A077216(n))`
-/

namespace A190292.P6510752169600111532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190473 (n + 1) : ℚ) / (A010846 (A077216 n).toNat : ℚ)

end

end A190292.P6510752169600111532

/-! ## A190292.P10630864520986209821

`A190473(n+1)/A046081(A227756(3*n+4))`
-/

namespace A190292.P10630864520986209821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190473 (n + 1) : ℚ) / (A046081 (A227756 (3 * n + 4)).toNat : ℚ)

end

end A190292.P10630864520986209821

/-! ## A190292.P12424389318339239768

`A014682(A190473(n+1))`
-/

namespace A190292.P12424389318339239768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A190473 (n + 1)).toNat

end

end A190292.P12424389318339239768

/-!
# A190293: Numbers with prime factorization pqr^2s^5.

The programs for A190293, there is no canonical definition to state claims against.
-/

/-! ## A190293.P878914722356424595

`A190474(n+1)/A000005(A020462(n+1))`
-/

namespace A190293.P878914722356424595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190474 (n + 1) : ℚ) / (A000005 (A020462 (n + 1)).toNat : ℚ)

end

end A190293.P878914722356424595

/-! ## A190293.P8222820466962541812

`A190474(n+1)/A088666(A355651(n+1))`
-/

namespace A190293.P8222820466962541812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190474 (n + 1) : ℚ) / (A088666 (A355651 (n + 1)).toNat : ℚ)

end

end A190293.P8222820466962541812

/-! ## A190293.P1199271117073138442

`A190474(n+1)/A000005(A076846(n+2))`
-/

namespace A190293.P1199271117073138442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190474 (n + 1) : ℚ) / (A000005 (A076846 (n + 2)).toNat : ℚ)

end

end A190293.P1199271117073138442

/-!
# A190294: Numbers with prime factorization pqr^3s^4.

The programs for A190294, there is no canonical definition to state claims against.
-/

/-! ## A190294.P11841960517084941245

`36*A350374(∑[A297544(n+1)!])`
-/

namespace A190294.P11841960517084941245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A297544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A350374 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190294.P11841960517084941245

/-!
# A190295: A055134(n,k)*k.

The programs for A190295, there is no canonical definition to state claims against.
-/

/-! ## A190295.P5712965001809348708

`∑[char[∑[n]]]*A071207(n)`
-/

namespace A190295.P5712965001809348708
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071207 n

end

end A190295.P5712965001809348708

/-! ## A190295.P4500087378264019710

`A071207(n)*A113764(n+1)`
-/

namespace A190295.P4500087378264019710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 n * A113764 (n + 1)

end

end A190295.P4500087378264019710

/-! ## A190295.P4843602033170578336

`A071207(n)*A130146(n+1)`
-/

namespace A190295.P4843602033170578336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 n * A130146 (n + 1)

end

end A190295.P4843602033170578336

/-! ## A190295.P6300898740546261725

`A003506(n+1)*A364870(n)`
-/

namespace A190295.P6300898740546261725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A364870 n

end

end A190295.P6300898740546261725

/-! ## A190295.P8393961141700306945

`lcm(A003506(n+1), A071207(n))`
-/

namespace A190295.P8393961141700306945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003506 (n + 1)) (A071207 n)

end

end A190295.P8393961141700306945

/-!
# A190296: Numbers n such that the mean of the digits in n is an integer m and n is divisible by m.

The programs for A190296, there is no canonical definition to state claims against.
-/

/-! ## A190296.P11334185052098985559

`∩[A180477(n+1), A061383(n)]`
-/

namespace A190296.P11334185052098985559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190296.P11334185052098985559

/-! ## A190296.P4277252382607703933

`A118759(∩[A263808(n+1), A061383(n)])`
-/

namespace A190296.P4277252382607703933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190296.P4277252382607703933

/-! ## A190296.P2869261457021695244

`A118759(∩[A271239(n+1), A061383(n)])`
-/

namespace A190296.P2869261457021695244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190296.P2869261457021695244

/-! ## A190296.P13365833416266951738

`∩[A263808(n+1)%A354410(n+1), A061383(n)]`
-/

namespace A190296.P13365833416266951738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263808 (n + 1)) (A354410 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190296.P13365833416266951738

/-!
# A190297: Bisection of A013697.

The programs for A190297, there is no canonical definition to state claims against.
-/

/-! ## A190297.P4741553488032680685

`A013697(2*(n+1))`
-/

namespace A190297.P4741553488032680685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013697 (2 * (n + 1))

end

end A190297.P4741553488032680685

/-! ## A190297.P11604868744452762054

`record[A013697(n+2)/A033999(n)]`
-/

namespace A190297.P11604868744452762054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013697 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190297.P11604868744452762054

/-! ## A190297.P10874977391620151189

`A013697(Δ[A027691(n)])+n%((-1)^n)`
-/

namespace A190297.P10874977391620151189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013697 (f1 (n + 1) - f1 n).toNat + Int.tmod (n : ℤ) ((-1) ^ n)

end

end A190297.P10874977391620151189

/-! ## A190297.P12130634187227378672

`gcd(A000038(n), A013697(A144396(n+1)-1))`
-/

namespace A190297.P12130634187227378672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A013697 (A144396 (n + 1) - 1).toNat)

end

end A190297.P12130634187227378672

/-! ## A190297.P3040406163420332491

`A013697(Δ[A027691(n)])/A071936(n+1)²`
-/

namespace A190297.P3040406163420332491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013697 (f1 (n + 1) - f1 n).toNat : ℚ) / (A071936 (n + 1) ^ 2 : ℚ)

end

end A190297.P3040406163420332491

/-! ## A190297.P15869371913120679469

`A013697(Δ[A027691(n)])%A000051(n+1)²`
-/

namespace A190297.P15869371913120679469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013697 (f1 (n + 1) - f1 n).toNat) (A000051 (n + 1) ^ 2)

end

end A190297.P15869371913120679469

/-! ## A190297.P2256139462004793861

`A013697(A005843(n+1))%A000917(n)`
-/

namespace A190297.P2256139462004793861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013697 (A005843 (n + 1)).toNat) (A000917 n)

end

end A190297.P2256139462004793861

/-! ## A190297.P3073206449110331680

`record[lcm(A010873((n+1)²), A013697(n+2))]`
-/

namespace A190297.P3073206449110331680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010873 ((n + 1) ^ 2)) (A013697 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190297.P3073206449110331680

/-!
# A190298: Numbers less than or equal to sum of the triangular number of each of their decimal digits.

The programs for A190298, there is no canonical definition to state claims against.
-/

/-! ## A190298.P1194676533734010187

`lt[5*floor(n/3), ∑{digits}[n, #²]]`
-/

namespace A190298.P1194676533734010187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(n : ℚ) / 3⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190298.P1194676533734010187

/-! ## A190298.P10136360220007094251

`lt[floor(n/3), ∑{digits}[n, #²]/5]`
-/

namespace A190298.P10136360220007094251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℚ) / 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A190298.P10136360220007094251

/-! ## A190298.P1137004545897025405

`lt[∑[∑{digits}[n, #]], 2*∑{digits}[n, #]²]`
-/

namespace A190298.P1137004545897025405
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f5 n)).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A190298.P1137004545897025405

/-! ## A190298.P5452279397619005914

`lt[∑[∑{digits}[n, #]]/2, ∑{digits}[n, #]²]`
-/

namespace A190298.P5452279397619005914
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f5 n)).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n

end

end A190298.P5452279397619005914

/-! ## A190298.P2169761571541983072

`lt[∑[∑{d}[n, floor(atan(#))]], ∑{digits}[n, #]²]`
-/

namespace A190298.P2169761571541983072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌊Real.arctan (d : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f5 n)).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A190298.P2169761571541983072

/-!
# A190299: Squarefree semiprimes of the form 4k+1.

The programs for A190299, the canonical program `A190299.P8200176430200214547` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190299 has offset 1).

The definition of A190299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190299.P5895164897430713003

`filter[A108181(n+1), A008966(#)]`
-/

namespace A190299.P5895164897430713003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A190299.P5895164897430713003

namespace A190299

/-- `filter[A108181(n+1), A008966(#)]` -/
def P5895164897430713003.Spec : Prop :=
  ∀ n, P5895164897430713003.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P14218544289297488744

`filter[A189986(n+1), A008966(#)]`
-/

namespace A190299.P14218544289297488744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A190299.P14218544289297488744

namespace A190299

/-- `filter[A189986(n+1), A008966(#)]` -/
def P14218544289297488744.Spec : Prop :=
  ∀ n, P14218544289297488744.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P8200176430200214547

`filter[A189986(n+1), A212793(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A190299

/-- `filter[A189986(n+1), A212793(#)]` -/
def P8200176430200214547.Spec : Prop :=
  ∀ n, P8200176430200214547.a n = A190299 (n + 1)

theorem P8200176430200214547.correct : P8200176430200214547.Spec := by
  intro n
  simp only [A190299, Nat.add_sub_cancel]

end A190299

/-! ## A190299.P10224426221406332363

`filter[A108181(n+1), A324903(#)]`
-/

namespace A190299.P10224426221406332363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A190299.P10224426221406332363

namespace A190299

/-- `filter[A108181(n+1), A324903(#)]` -/
def P10224426221406332363.Spec : Prop :=
  ∀ n, P10224426221406332363.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P10939705379720325680

`filter[A327862(n+1), A354927(#)]`
-/

namespace A190299.P10939705379720325680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A190299.P10939705379720325680

namespace A190299

/-- `filter[A327862(n+1), A354927(#)]` -/
def P10939705379720325680.Spec : Prop :=
  ∀ n, P10939705379720325680.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P665425612814360121

`filter[A359161(n+1), A374128(#)]`
-/

namespace A190299.P665425612814360121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A190299.P665425612814360121

namespace A190299

/-- `filter[A359161(n+1), A374128(#)]` -/
def P665425612814360121.Spec : Prop :=
  ∀ n, P665425612814360121.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P362386978098671053

`filter[A359161(n+2), A354927(#)]`
-/

namespace A190299.P362386978098671053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A190299.P362386978098671053

namespace A190299

/-- `filter[A359161(n+2), A354927(#)]` -/
def P362386978098671053.Spec : Prop :=
  ∀ n, P362386978098671053.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P3543769540864465704

`filter[A189986(n+1), A064911(#)]`
-/

namespace A190299.P3543769540864465704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A190299.P3543769540864465704

namespace A190299

/-- `filter[A189986(n+1), A064911(#)]` -/
def P3543769540864465704.Spec : Prop :=
  ∀ n, P3543769540864465704.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P3084957549735497048

`filter[A108181(n+1), A049240(#)]`
-/

namespace A190299.P3084957549735497048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A190299.P3084957549735497048

namespace A190299

/-- `filter[A108181(n+1), A049240(#)]` -/
def P3084957549735497048.Spec : Prop :=
  ∀ n, P3084957549735497048.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P14135718655227545551

`filter[A189986(n+1), A065043(#)]`
-/

namespace A190299.P14135718655227545551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A190299.P14135718655227545551

namespace A190299

/-- `filter[A189986(n+1), A065043(#)]` -/
def P14135718655227545551.Spec : Prop :=
  ∀ n, P14135718655227545551.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P14603578190527464578

`filter[A108181(n+1), A181183(#)]`
-/

namespace A190299.P14603578190527464578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A190299.P14603578190527464578

namespace A190299

/-- `filter[A108181(n+1), A181183(#)]` -/
def P14603578190527464578.Spec : Prop :=
  ∀ n, P14603578190527464578.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P14390850886628823215

`filter[A189986(n+1), A101040(#)]`
-/

namespace A190299.P14390850886628823215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A190299.P14390850886628823215

namespace A190299

/-- `filter[A189986(n+1), A101040(#)]` -/
def P14390850886628823215.Spec : Prop :=
  ∀ n, P14390850886628823215.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P8624670940694883602

`filter[A108181(n+1), A262684(#)]`
-/

namespace A190299.P8624670940694883602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A190299.P8624670940694883602

namespace A190299

/-- `filter[A108181(n+1), A262684(#)]` -/
def P8624670940694883602.Spec : Prop :=
  ∀ n, P8624670940694883602.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P6949183672278330468

`filter[A108181(n+1), A280710(#)]`
-/

namespace A190299.P6949183672278330468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A190299.P6949183672278330468

namespace A190299

/-- `filter[A108181(n+1), A280710(#)]` -/
def P6949183672278330468.Spec : Prop :=
  ∀ n, P6949183672278330468.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P12270299891264654132

`filter[A108181(n+1), A290098(#)]`
-/

namespace A190299.P12270299891264654132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A190299.P12270299891264654132

namespace A190299

/-- `filter[A108181(n+1), A290098(#)]` -/
def P12270299891264654132.Spec : Prop :=
  ∀ n, P12270299891264654132.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P15872268950075688047

`filter[A108181(n+1), A295316(#)]`
-/

namespace A190299.P15872268950075688047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A190299.P15872268950075688047

namespace A190299

/-- `filter[A108181(n+1), A295316(#)]` -/
def P15872268950075688047.Spec : Prop :=
  ∀ n, P15872268950075688047.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P8893228547967551820

`filter[A108181(n+1), A323154(#)]`
-/

namespace A190299.P8893228547967551820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A190299.P8893228547967551820

namespace A190299

/-- `filter[A108181(n+1), A323154(#)]` -/
def P8893228547967551820.Spec : Prop :=
  ∀ n, P8893228547967551820.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P16647089814470965106

`filter[A108181(n+1), A323158(#)]`
-/

namespace A190299.P16647089814470965106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A190299.P16647089814470965106

namespace A190299

/-- `filter[A108181(n+1), A323158(#)]` -/
def P16647089814470965106.Spec : Prop :=
  ∀ n, P16647089814470965106.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P13033369196496537228

`filter[A108181(n+1), A323239(#)]`
-/

namespace A190299.P13033369196496537228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A190299.P13033369196496537228

namespace A190299

/-- `filter[A108181(n+1), A323239(#)]` -/
def P13033369196496537228.Spec : Prop :=
  ∀ n, P13033369196496537228.a n = A190299 (n + 1)

end A190299

/-! ## A190299.P6098578007399817418

`filter[A108181(n+1), A324908(#)]`
-/

namespace A190299.P6098578007399817418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A190299.P6098578007399817418

namespace A190299

/-- `filter[A108181(n+1), A324908(#)]` -/
def P6098578007399817418.Spec : Prop :=
  ∀ n, P6098578007399817418.a n = A190299 (n + 1)

end A190299

