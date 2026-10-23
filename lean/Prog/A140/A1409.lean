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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
# A140900: A nonnegative integer n is included if the binary representation of n and the digit-reversal (with leading 0's) of the binary representation of n do not have any 1's in the same position.

The programs for A140900, the canonical program `A140900.P9807194820524683252` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140900 has offset 1).

The definition of A140900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140900.P9807194820524683252

`eq[0, A159780(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140900

/-- `eq[0, A159780(n)]` -/
def P9807194820524683252.Spec : Prop :=
  ∀ n, (P9807194820524683252.a n : ℤ) = A140900 (n + 1)

theorem P9807194820524683252.correct : P9807194820524683252.Spec := by
  intro n
  simp only [A140900, Nat.add_sub_cancel]

end A140900

/-! ## A140900.P12606321852854831447

`record[and(n, A036044(n))]`
-/

namespace A140900.P12606321852854831447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A036044 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140900.P12606321852854831447

namespace A140900

/-- `record[and(n, A036044(n))]` -/
def P12606321852854831447.Spec : Prop :=
  ∀ n, P12606321852854831447.a n = A140900 (n + 1)

end A140900

/-! ## A140900.P18157572146126750240

`record[and(n, A175919(n))]`
-/

namespace A140900.P18157572146126750240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A175919 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140900.P18157572146126750240

namespace A140900

/-- `record[and(n, A175919(n))]` -/
def P18157572146126750240.Spec : Prop :=
  ∀ n, P18157572146126750240.a n = A140900 (n + 1)

end A140900

/-! ## A140900.P12651734985509934321

`record[n-and(n, A030101(n))]`
-/

namespace A140900.P12651734985509934321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A030101 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140900.P12651734985509934321

namespace A140900

/-- `record[n-and(n, A030101(n))]` -/
def P12651734985509934321.Spec : Prop :=
  ∀ n, P12651734985509934321.a n = A140900 (n + 1)

end A140900

/-! ## A140900.P11205955687359919551

`eq[0, and(n, A145341(n+1))]`
-/

namespace A140900.P11205955687359919551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A145341 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140900.P11205955687359919551

namespace A140900

/-- `eq[0, and(n, A145341(n+1))]` -/
def P11205955687359919551.Spec : Prop :=
  ∀ n, (P11205955687359919551.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P4425171133511030450

`record[1-A175297(n+1)+n]`
-/

namespace A140900.P4425171133511030450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175297 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140900.P4425171133511030450

namespace A140900

/-- `record[1-A175297(n+1)+n]` -/
def P4425171133511030450.Spec : Prop :=
  ∀ n, P4425171133511030450.a n = A140900 (n + 1)

end A140900

/-! ## A140900.P12119996654853635908

`record[and(n+1, A035928(n+1))]`
-/

namespace A140900.P12119996654853635908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A035928 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140900.P12119996654853635908

namespace A140900

/-- `record[and(n+1, A035928(n+1))]` -/
def P12119996654853635908.Spec : Prop :=
  ∀ n, P12119996654853635908.a n = A140900 (n + 1)

end A140900

/-! ## A140900.P8086018463792818852

`eq[A003817(n), A175918(n)]`
-/

namespace A140900.P8086018463792818852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P8086018463792818852

namespace A140900

/-- `eq[A003817(n), A175918(n)]` -/
def P8086018463792818852.Spec : Prop :=
  ∀ n, (P8086018463792818852.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P10057898771880776049

`eq[A055944(n), A175298(n)]`
-/

namespace A140900.P10057898771880776049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P10057898771880776049

namespace A140900

/-- `eq[A055944(n), A175298(n)]` -/
def P10057898771880776049.Spec : Prop :=
  ∀ n, (P10057898771880776049.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P63057792669950714

`eq[A055944(n), A175919(n)]`
-/

namespace A140900.P63057792669950714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P63057792669950714

namespace A140900

/-- `eq[A055944(n), A175919(n)]` -/
def P63057792669950714.Spec : Prop :=
  ∀ n, (P63057792669950714.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P1816009418241412765

`eq[A062131(n), A175298(n)]`
-/

namespace A140900.P1816009418241412765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P1816009418241412765

namespace A140900

/-- `eq[A062131(n), A175298(n)]` -/
def P1816009418241412765.Spec : Prop :=
  ∀ n, (P1816009418241412765.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P3943527000553076616

`eq[A062130(n), A175919(n)]`
-/

namespace A140900.P3943527000553076616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P3943527000553076616

namespace A140900

/-- `eq[A062130(n), A175919(n)]` -/
def P3943527000553076616.Spec : Prop :=
  ∀ n, (P3943527000553076616.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P12375603088307494872

`eq[A062131(n), A175919(n)]`
-/

namespace A140900.P12375603088307494872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P12375603088307494872

namespace A140900

/-- `eq[A062131(n), A175919(n)]` -/
def P12375603088307494872.Spec : Prop :=
  ∀ n, (P12375603088307494872.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P12397182444332589294

`eq[A175298(n), A175919(n)]`
-/

namespace A140900.P12397182444332589294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P12397182444332589294

namespace A140900

/-- `eq[A175298(n), A175919(n)]` -/
def P12397182444332589294.Spec : Prop :=
  ∀ n, (P12397182444332589294.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P8094568655005991749

`eq[A175917(n), A175920(n)]`
-/

namespace A140900.P8094568655005991749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P8094568655005991749

namespace A140900

/-- `eq[A175917(n), A175920(n)]` -/
def P8094568655005991749.Spec : Prop :=
  ∀ n, (P8094568655005991749.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P4714993622894440244

`record[A175298(n)-A030101(n)]`
-/

namespace A140900.P4714993622894440244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n - A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140900.P4714993622894440244

namespace A140900

/-- `record[A175298(n)-A030101(n)]` -/
def P4714993622894440244.Spec : Prop :=
  ∀ n, P4714993622894440244.a n = A140900 (n + 1)

end A140900

/-! ## A140900.P8842838699247225560

`record[A175919(n)-A030101(n)]`
-/

namespace A140900.P8842838699247225560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n - A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140900.P8842838699247225560

namespace A140900

/-- `record[A175919(n)-A030101(n)]` -/
def P8842838699247225560.Spec : Prop :=
  ∀ n, P8842838699247225560.a n = A140900 (n + 1)

end A140900

/-! ## A140900.P790319476086777526

`record[or(n, A325401(n))-A325401(n)]`
-/

namespace A140900.P790319476086777526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A325401 n) - A325401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140900.P790319476086777526

namespace A140900

/-- `record[or(n, A325401(n))-A325401(n)]` -/
def P790319476086777526.Spec : Prop :=
  ∀ n, P790319476086777526.a n = A140900 (n + 1)

end A140900

/-! ## A140900.P16787386881843380139

`eq[A001316(n)², A001316(A175919(n))]`
-/

namespace A140900.P16787386881843380139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P16787386881843380139

namespace A140900

/-- `eq[A001316(n)², A001316(A175919(n))]` -/
def P16787386881843380139.Spec : Prop :=
  ∀ n, (P16787386881843380139.a n : ℤ) = A140900 (n + 1)

end A140900

/-! ## A140900.P1247115957243584500

`eq[A000120(n), A000120(A175298(n)-n)]`
-/

namespace A140900.P1247115957243584500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175298 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140900.P1247115957243584500

namespace A140900

/-- `eq[A000120(n), A000120(A175298(n)-n)]` -/
def P1247115957243584500.Spec : Prop :=
  ∀ n, (P1247115957243584500.a n : ℤ) = A140900 (n + 1)

end A140900

/-!
# A140901: Number of 3 X 5 matrices with elements in 0..n with each row and each column in nondecreasing order. 3,5,n can be permuted, see formula.

The programs for A140901, there is no canonical definition to state claims against.
-/

/-! ## A140901.P11049736925610320931

`A056939(eq[5, A002262(n)])`
-/

namespace A140901.P11049736925610320931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140901.P11049736925610320931

/-! ## A140901.P17976051106690353720

`A056939(eq[5, A025581(n)])`
-/

namespace A140901.P17976051106690353720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140901.P17976051106690353720

/-! ## A140901.P10546227003663050155

`A056939(eq[6, A193739(n)])`
-/

namespace A140901.P10546227003663050155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140901.P10546227003663050155

/-! ## A140901.P4580950396405277695

`A056939(eq[11, A099375(n)])`
-/

namespace A140901.P4580950396405277695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140901.P4580950396405277695

/-! ## A140901.P9654400075596370553

`A056941(A167614(n+2))`
-/

namespace A140901.P9654400075596370553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (A167614 (n + 2)).toNat

end

end A140901.P9654400075596370553

/-! ## A140901.P15708025155818086844

`A056941(A052905(n)+8)`
-/

namespace A140901.P15708025155818086844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (A052905 n + 8).toNat

end

end A140901.P15708025155818086844

/-! ## A140901.P8533625734600389188

`A056941(A055999(n)+9)`
-/

namespace A140901.P8533625734600389188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (A055999 n + 9).toNat

end

end A140901.P8533625734600389188

/-! ## A140901.P18443388294920586706

`A056941(eq[3, A002262(n)])`
-/

namespace A140901.P18443388294920586706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140901.P18443388294920586706

/-! ## A140901.P9755507864807676337

`A056941(eq[1, A144328(n+1)-2])`
-/

namespace A140901.P9755507864807676337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140901.P9755507864807676337

/-! ## A140901.P12891624765799431028

`A056941(eq[2, A002260(n+1)-2])`
-/

namespace A140901.P12891624765799431028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140901.P12891624765799431028

/-!
# A140902: Number of 4 X 5 matrices with elements in 0..n with each row and each column in nondecreasing order. 4,5,n can be permuted, see formula.

The programs for A140902, there is no canonical definition to state claims against.
-/

/-! ## A140902.P14292520775833549763

`A056940(A167499(n+4))`
-/

namespace A140902.P14292520775833549763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A167499 (n + 4)).toNat

end

end A140902.P14292520775833549763

/-! ## A140902.P4799001299166701519

`A056940(A000217(n+5)+5)`
-/

namespace A140902.P4799001299166701519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A000217 (n + 5) + 5).toNat

end

end A140902.P4799001299166701519

/-! ## A140902.P7531062074102169000

`A056940(A000124(n+6)-(n+2))`
-/

namespace A140902.P7531062074102169000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A140902.P7531062074102169000

/-! ## A140902.P8567478201352687704

`A056940(A055999(n+3))`
-/

namespace A140902.P8567478201352687704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A055999 (n + 3)).toNat

end

end A140902.P8567478201352687704

/-! ## A140902.P4639789223892118990

`A056941(eq[4, A002262(n)])`
-/

namespace A140902.P4639789223892118990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140902.P4639789223892118990

/-! ## A140902.P11754988279713147945

`A056941(A052905(n+1)+9)`
-/

namespace A140902.P11754988279713147945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (A052905 (n + 1) + 9).toNat

end

end A140902.P11754988279713147945

/-! ## A140902.P10896730505696321635

`A056941(eq[2, A144328(n+1)-2])`
-/

namespace A140902.P10896730505696321635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140902.P10896730505696321635

/-! ## A140902.P15401301948139247080

`A056941(eq[2, A144328(n+1)/2])`
-/

namespace A140902.P15401301948139247080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A140902.P15401301948139247080

/-! ## A140902.P16931987830122055637

`A056941(A052905(n+2))`
-/

namespace A140902.P16931987830122055637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (A052905 (n + 2)).toNat

end

end A140902.P16931987830122055637

/-! ## A140902.P9469043090957423501

`A056941(eq[4, A025581(n)])`
-/

namespace A140902.P9469043090957423501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140902.P9469043090957423501

/-!
# A140903: Number of 3 X 6 matrices with elements in 0..n with each row and each column in nondecreasing order. 3,6,n can be permuted, see formula.

The programs for A140903, there is no canonical definition to state claims against.
-/

/-! ## A140903.P1848641757549023620

`A056939(A056119(n)+27)`
-/

namespace A140903.P1848641757549023620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (A056119 n + 27).toNat

end

end A140903.P1848641757549023620

/-! ## A140903.P9588094215094145029

`A056939(eq[6, A002262(n)])`
-/

namespace A140903.P9588094215094145029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140903.P9588094215094145029

/-! ## A140903.P12141187878117341996

`A056939(A052905(n+3)+11)`
-/

namespace A140903.P12141187878117341996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (A052905 (n + 3) + 11).toNat

end

end A140903.P12141187878117341996

/-! ## A140903.P113503443312745311

`A056939(eq[6, A025581(n)])`
-/

namespace A140903.P113503443312745311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140903.P113503443312745311

/-! ## A140903.P5446679388730229539

`A056939(eq[7, A193739(n)])`
-/

namespace A140903.P5446679388730229539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140903.P5446679388730229539

/-! ## A140903.P5474153911743317105

`A142465(A167614(n+2))`
-/

namespace A140903.P5474153911743317105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (A167614 (n + 2)).toNat

end

end A140903.P5474153911743317105

/-! ## A140903.P15621134792498030491

`A142465(eq[3, A002262(n)])`
-/

namespace A140903.P15621134792498030491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140903.P15621134792498030491

/-! ## A140903.P6866440338544392500

`A142465(eq[1, A144328(n+1)-2])`
-/

namespace A140903.P6866440338544392500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140903.P6866440338544392500

/-! ## A140903.P12226397854031009313

`A142465(eq[2, A002260(n+1)-2])`
-/

namespace A140903.P12226397854031009313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140903.P12226397854031009313

/-! ## A140903.P14646416943311412784

`A142465(eq[2, A002260(n+1)/2])`
-/

namespace A140903.P14646416943311412784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A140903.P14646416943311412784

/-!
# A140904: Number of 4 X 6 matrices with elements in 0..n with each row and each column in nondecreasing order. 4,6,n can be permuted, see formula.

The programs for A140904, there is no canonical definition to state claims against.
-/

/-! ## A140904.P6618289246453770189

`A107915(n)/A047819(n)*A140907(n)`
-/

namespace A140904.P6618289246453770189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107915 n : ℚ) / (A047819 n : ℚ) * (A140907 n : ℚ)

end

end A140904.P6618289246453770189

/-! ## A140904.P3717137638191273704

`A056940(eq[6, A002262(n)])`
-/

namespace A140904.P3717137638191273704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140904.P3717137638191273704

/-! ## A140904.P10388658280951374058

`A056940(eq[7, A002260(n+1)])`
-/

namespace A140904.P10388658280951374058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140904.P10388658280951374058

/-! ## A140904.P6439445785997685897

`A056940(eq[6, A025581(n)])`
-/

namespace A140904.P6439445785997685897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140904.P6439445785997685897

/-! ## A140904.P13865696945301378181

`A056940(eq[7, A004736(n+1)])`
-/

namespace A140904.P13865696945301378181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140904.P13865696945301378181

/-! ## A140904.P16751320607772275892

`A142465(eq[4, A002262(n)])`
-/

namespace A140904.P16751320607772275892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140904.P16751320607772275892

/-! ## A140904.P10001810222996473407

`A142465(eq[2, A144328(n+1)-2])`
-/

namespace A140904.P10001810222996473407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140904.P10001810222996473407

/-! ## A140904.P15455610943559511153

`A142465(eq[2, A144328(n+1)/2])`
-/

namespace A140904.P15455610943559511153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A140904.P15455610943559511153

/-! ## A140904.P2273151426751386525

`A142465(eq[4, A025581(n)])`
-/

namespace A140904.P2273151426751386525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140904.P2273151426751386525

/-! ## A140904.P2112339060800781083

`A142465(eq[4, A116949(n)])`
-/

namespace A140904.P2112339060800781083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140904.P2112339060800781083

/-!
# A140905: Number of 5 X 6 matrices with elements in 0..n with each row and each column in nondecreasing order. 5,6,n can be permuted, see formula.

The programs for A140905, there is no canonical definition to state claims against.
-/

/-! ## A140905.P14634668663779995600

`A056941(eq[7, A002260(n+1)])`
-/

namespace A140905.P14634668663779995600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140905.P14634668663779995600

/-! ## A140905.P10244677368012662656

`A056941(eq[7, A134868(n+1)])`
-/

namespace A140905.P10244677368012662656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140905.P10244677368012662656

/-! ## A140905.P6426518664950372924

`A056941(eq[6, A025581(n)])`
-/

namespace A140905.P6426518664950372924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140905.P6426518664950372924

/-! ## A140905.P829709785188077190

`A056941(eq[7, A004736(n+1)])`
-/

namespace A140905.P829709785188077190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140905.P829709785188077190

/-! ## A140905.P13141326197637436365

`A142465(eq[2, A116949(n)])`
-/

namespace A140905.P13141326197637436365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140905.P13141326197637436365

/-! ## A140905.P4977328990580063686

`A142465(eq[5, A025581(n)])`
-/

namespace A140905.P4977328990580063686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140905.P4977328990580063686

/-!
# A140906: Number of 6 X 6 matrices with elements in 0..n with each row and each column in nondecreasing order. 6,6,n can be permuted, see formula.

The programs for A140906, there is no canonical definition to state claims against.
-/

/-! ## A140906.P1937923318782353210

`A142465(eq[6, A025581(n)])`
-/

namespace A140906.P1937923318782353210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140906.P1937923318782353210

/-! ## A140906.P5100575417955021045

`A142465(eq[8, sqrt(A130321(n))])`
-/

namespace A140906.P5100575417955021045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130321 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A140906.P5100575417955021045

/-! ## A140906.P153306128180729486

`A120258(eq[6, A025581(n)])`
-/

namespace A140906.P153306128180729486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140906.P153306128180729486

/-! ## A140906.P5431994329102549947

`A120258(Δ[A103145(n)]+5)`
-/

namespace A140906.P5431994329102549947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (f1 (n + 1) - f1 n + 5).toNat

end

end A140906.P5431994329102549947

/-! ## A140906.P943666951105075168

`A120258(A000217(n+7)-7)`
-/

namespace A140906.P943666951105075168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (A000217 (n + 7) - 7).toNat

end

end A140906.P943666951105075168

/-!
# A140907: Number of 3 X 7 matrices with elements in 0..n with each row and each column in nondecreasing order. 3,7,n can be permuted, see formula.

The programs for A140907, there is no canonical definition to state claims against.
-/

/-! ## A140907.P901547647051972489

`A056939(eq[7, A002262(n)])`
-/

namespace A140907.P901547647051972489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140907.P901547647051972489

/-! ## A140907.P9799664796292675303

`A056939(eq[7, A025581(n)])`
-/

namespace A140907.P9799664796292675303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140907.P9799664796292675303

/-! ## A140907.P2361976981043385562

`A056939(eq[8, A193739(n)])`
-/

namespace A140907.P2361976981043385562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140907.P2361976981043385562

/-! ## A140907.P14688178764037806253

`A056939(eq[15, A099375(n)])`
-/

namespace A140907.P14688178764037806253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140907.P14688178764037806253

/-! ## A140907.P11295360921097391256

`A142467(A167614(n+2))`
-/

namespace A140907.P11295360921097391256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (A167614 (n + 2)).toNat

end

end A140907.P11295360921097391256

/-! ## A140907.P10301484702038181432

`A142467(eq[3, A002262(n)])`
-/

namespace A140907.P10301484702038181432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140907.P10301484702038181432

/-! ## A140907.P7175141445330677045

`A142467(eq[4, A002260(n+1)])`
-/

namespace A140907.P7175141445330677045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140907.P7175141445330677045

/-! ## A140907.P16406932838284379283

`A142467(∑[n+3]+n+3)`
-/

namespace A140907.P16406932838284379283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A140907.P16406932838284379283

/-!
# A140908: Number of 4 X 7 matrices with elements in 0..n with each row and each column in nondecreasing order. 4,7,n can be permuted, see formula.

The programs for A140908, there is no canonical definition to state claims against.
-/

/-! ## A140908.P11859058881874119304

`A056940(eq[7, A002262(n)])`
-/

namespace A140908.P11859058881874119304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140908.P11859058881874119304

/-! ## A140908.P4964075092126064468

`A056940(eq[7, A025581(n)])`
-/

namespace A140908.P4964075092126064468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140908.P4964075092126064468

/-! ## A140908.P18425922838282266688

`A056940(eq[8, A193739(n)])`
-/

namespace A140908.P18425922838282266688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140908.P18425922838282266688

/-! ## A140908.P5604147800928187487

`A142467(eq[4, A002262(n)])`
-/

namespace A140908.P5604147800928187487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140908.P5604147800928187487

/-! ## A140908.P7488068693994006408

`A142467(A016825(n+3)+A000217(n))`
-/

namespace A140908.P7488068693994006408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (A016825 (n + 3) + A000217 n).toNat

end

end A140908.P7488068693994006408

/-! ## A140908.P1036248033649768348

`A142467(eq[3, A129713(n)])`
-/

namespace A140908.P1036248033649768348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140908.P1036248033649768348

/-! ## A140908.P5407588239997494491

`A142467(eq[4, A025581(n)])`
-/

namespace A140908.P5407588239997494491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140908.P5407588239997494491

/-!
# A140909: Number of 5 X 7 matrices with elements in 0..n with each row and each column in nondecreasing order. 5,7,n can be permuted, see formula.

The programs for A140909, there is no canonical definition to state claims against.
-/

/-! ## A140909.P18094353714616791590

`A056941(eq[7, A002262(n)])`
-/

namespace A140909.P18094353714616791590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140909.P18094353714616791590

/-! ## A140909.P6301498209434014585

`A056941(eq[8, A002260(n+1)])`
-/

namespace A140909.P6301498209434014585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140909.P6301498209434014585

/-! ## A140909.P17539549616352074172

`A056941(eq[8, A134868(n+1)])`
-/

namespace A140909.P17539549616352074172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140909.P17539549616352074172

/-! ## A140909.P108765315398713151

`A056941(eq[7, A025581(n)])`
-/

namespace A140909.P108765315398713151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140909.P108765315398713151

/-! ## A140909.P921888947759958692

`A056941(eq[8, A004736(n+1)])`
-/

namespace A140909.P921888947759958692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140909.P921888947759958692

/-!
# A140910: Number of 6 X 7 matrices with elements in 0..n with each row and each column in nondecreasing order. 6,7,n can be permuted, see formula.

The programs for A140910, there is no canonical definition to state claims against.
-/

/-! ## A140910.P7525740166474694017

`A142465(eq[7, A002262(n)])`
-/

namespace A140910.P7525740166474694017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140910.P7525740166474694017

/-! ## A140910.P7611900108272164960

`A142465(eq[7, A025581(n)])`
-/

namespace A140910.P7611900108272164960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140910.P7611900108272164960

/-! ## A140910.P1942638660290607788

`A142467(eq[6, A002262(n)])`
-/

namespace A140910.P1942638660290607788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140910.P1942638660290607788

/-! ## A140910.P16426665098770538545

`A142467(eq[6, A025581(n)])`
-/

namespace A140910.P16426665098770538545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140910.P16426665098770538545

/-! ## A140910.P17080723528200642369

`A142467(eq[8, A129713(n)])`
-/

namespace A140910.P17080723528200642369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140910.P17080723528200642369

/-! ## A140910.P1396763826397368049

`A142467(eq[7, A004736(n+1)])`
-/

namespace A140910.P1396763826397368049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140910.P1396763826397368049

/-!
# A140911: Number of 7 X 7 matrices with elements in 0..n with each row and each column in nondecreasing order. 7,7,n can be permuted, see formula.

The programs for A140911, there is no canonical definition to state claims against.
-/

/-! ## A140911.P12399408548171598500

`A142467(eq[7, A002262(n)])`
-/

namespace A140911.P12399408548171598500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140911.P12399408548171598500

/-! ## A140911.P15103350740889014259

`A142467(eq[7, A025581(n)])`
-/

namespace A140911.P15103350740889014259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140911.P15103350740889014259

/-! ## A140911.P5528492316881336444

`A142467(eq[13, A129713(n)])`
-/

namespace A140911.P5528492316881336444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140911.P5528492316881336444

/-! ## A140911.P10040176387381046318

`A142467(eq[15, A099375(n)])`
-/

namespace A140911.P10040176387381046318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140911.P10040176387381046318

/-! ## A140911.P8133177116593006519

`A120258(eq[7, A025581(n)])`
-/

namespace A140911.P8133177116593006519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140911.P8133177116593006519

/-!
# A140912: Number of 3 X 8 matrices with elements in 0..n with each row and each column in nondecreasing order. 3,8,n can be permuted, see formula.

The programs for A140912, there is no canonical definition to state claims against.
-/

/-! ## A140912.P12338919234916916951

`A056939(eq[8, A002262(n)])`
-/

namespace A140912.P12338919234916916951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140912.P12338919234916916951

/-! ## A140912.P6645270473148326700

`A056939(eq[6, A264391(n)])`
-/

namespace A140912.P6645270473148326700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140912.P6645270473148326700

/-! ## A140912.P11524523711648865195

`A056939(eq[8, A025581(n)])`
-/

namespace A140912.P11524523711648865195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140912.P11524523711648865195

/-! ## A140912.P210525784711862155

`A056939(eq[9, A193739(n)])`
-/

namespace A140912.P210525784711862155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140912.P210525784711862155

/-! ## A140912.P2801146512504184580

`A142468(A167614(n+2))`
-/

namespace A140912.P2801146512504184580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (A167614 (n + 2)).toNat

end

end A140912.P2801146512504184580

/-! ## A140912.P11619862529495640982

`A142468(eq[3, A002262(n)])`
-/

namespace A140912.P11619862529495640982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140912.P11619862529495640982

/-! ## A140912.P14089235217860776618

`A142468(eq[1, A104763(n+1)-2])`
-/

namespace A140912.P14089235217860776618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140912.P14089235217860776618

/-! ## A140912.P16975808708176090791

`A142468(eq[1, A144328(n+1)-2])`
-/

namespace A140912.P16975808708176090791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140912.P16975808708176090791

/-! ## A140912.P12619280579749391922

`A142468(∑[n+3]+n+3)`
-/

namespace A140912.P12619280579749391922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A140912.P12619280579749391922

/-!
# A140913: Number of 4 X 8 matrices with elements in 0..n with each row and each column in nondecreasing order. 4,8,n can be permuted, see formula.

The programs for A140913, there is no canonical definition to state claims against.
-/

/-! ## A140913.P16152932406775501241

`A056940(eq[8, A002262(n)])`
-/

namespace A140913.P16152932406775501241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140913.P16152932406775501241

/-! ## A140913.P4823749704329660680

`A056940(eq[9, A002260(n+1)])`
-/

namespace A140913.P4823749704329660680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140913.P4823749704329660680

/-! ## A140913.P14072465913492282397

`A056940(eq[8, A025581(n)])`
-/

namespace A140913.P14072465913492282397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140913.P14072465913492282397

/-! ## A140913.P16591045436782097479

`A142468(A056000(n)+14)`
-/

namespace A140913.P16591045436782097479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (A056000 n + 14).toNat

end

end A140913.P16591045436782097479

/-! ## A140913.P7814874409156298064

`A142468(eq[4, A002262(n)])`
-/

namespace A140913.P7814874409156298064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140913.P7814874409156298064

/-! ## A140913.P14564489109496812481

`A142468(eq[4, A144328(n+1)])`
-/

namespace A140913.P14564489109496812481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140913.P14564489109496812481

/-! ## A140913.P5984577639216600918

`A142468(eq[4, A025581(n)])`
-/

namespace A140913.P5984577639216600918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140913.P5984577639216600918

/-!
# A140914: Number of 5 X 8 matrices with elements in 0..n with each row and each column in nondecreasing order. 5,8,n can be permuted, see formula.

The programs for A140914, there is no canonical definition to state claims against.
-/

/-! ## A140914.P7308830694601270457

`A056941(eq[8, A002262(n)])`
-/

namespace A140914.P7308830694601270457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140914.P7308830694601270457

/-! ## A140914.P1235051500474289439

`A056941(eq[9, A002260(n+1)])`
-/

namespace A140914.P1235051500474289439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140914.P1235051500474289439

/-! ## A140914.P15933377332038369724

`A056941(eq[8, A025581(n)])`
-/

namespace A140914.P15933377332038369724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140914.P15933377332038369724

/-! ## A140914.P9621234174051242533

`A142468(eq[5, A002262(n)])`
-/

namespace A140914.P9621234174051242533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140914.P9621234174051242533

/-! ## A140914.P9392316415887867148

`A142468(A000096(n+4)+6)`
-/

namespace A140914.P9392316415887867148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (A000096 (n + 4) + 6).toNat

end

end A140914.P9392316415887867148

/-! ## A140914.P6877907701572671518

`A142468(eq[5, A144328(n+1)])`
-/

namespace A140914.P6877907701572671518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140914.P6877907701572671518

/-! ## A140914.P17775853791754570319

`A142468(eq[5, A025581(n)])`
-/

namespace A140914.P17775853791754570319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140914.P17775853791754570319

/-!
# A140915: Number of 6 X 8 matrices with elements in 0..n with each row and each column in nondecreasing order. 6,8,n can be permuted, see formula.

The programs for A140915, there is no canonical definition to state claims against.
-/

/-! ## A140915.P5327623034395356269

`A142465(eq[8, A002262(n)])`
-/

namespace A140915.P5327623034395356269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140915.P5327623034395356269

/-! ## A140915.P12110522859907959685

`A142465(eq[8, A144328(n+1)])`
-/

namespace A140915.P12110522859907959685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140915.P12110522859907959685

/-! ## A140915.P6946412983810260371

`A142465(eq[8, A025581(n)])`
-/

namespace A140915.P6946412983810260371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140915.P6946412983810260371

/-! ## A140915.P14343716261978983505

`A142468(eq[6, A002262(n)])`
-/

namespace A140915.P14343716261978983505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140915.P14343716261978983505

/-! ## A140915.P11024733206309409685

`A142468(eq[64, A059268(n)])`
-/

namespace A140915.P11024733206309409685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140915.P11024733206309409685

/-! ## A140915.P15530065305679300450

`A142468(A000096(n+5)+7)`
-/

namespace A140915.P15530065305679300450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (A000096 (n + 5) + 7).toNat

end

end A140915.P15530065305679300450

/-! ## A140915.P11980955297066729367

`A142468(eq[13, A104763(n+1)])`
-/

namespace A140915.P11980955297066729367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140915.P11980955297066729367

/-!
# A140916: Number of 7 X 8 matrices with elements in 0..n with each row and each column in nondecreasing order. 7,8,n can be permuted, see formula.

The programs for A140916, there is no canonical definition to state claims against.
-/

/-! ## A140916.P7870260089019915162

`A142467(eq[8, A002262(n)])`
-/

namespace A140916.P7870260089019915162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140916.P7870260089019915162

/-! ## A140916.P5391919877600334108

`A142467(eq[8, A025581(n)])`
-/

namespace A140916.P5391919877600334108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140916.P5391919877600334108

/-! ## A140916.P4819112572581109216

`A142468(eq[7, A002262(n)])`
-/

namespace A140916.P4819112572581109216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140916.P4819112572581109216

/-! ## A140916.P11558181803321121045

`A142468(eq[8, A002260(n+1)])`
-/

namespace A140916.P11558181803321121045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140916.P11558181803321121045

/-!
# A140917: Number of 8 X 8 matrices with elements in 0..n with each row and each column in nondecreasing order. 8,8,n can be permuted, see formula.

The programs for A140917, there is no canonical definition to state claims against.
-/

/-! ## A140917.P1934680348343589696

`A142468(eq[8, A002262(n)])`
-/

namespace A140917.P1934680348343589696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140917.P1934680348343589696

/-! ## A140917.P2078841564127371172

`A142468(eq[8, A144328(n+1)])`
-/

namespace A140917.P2078841564127371172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140917.P2078841564127371172

/-! ## A140917.P11899129643835947844

`A142468(eq[9, A002260(n+1)])`
-/

namespace A140917.P11899129643835947844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140917.P11899129643835947844

/-! ## A140917.P2880551587360913001

`A142468(eq[8, A025581(n)])`
-/

namespace A140917.P2880551587360913001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140917.P2880551587360913001

/-! ## A140917.P17782758865326562827

`A120258(eq[9, A004736(n+1)])`
-/

namespace A140917.P17782758865326562827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140917.P17782758865326562827

/-!
# A140918: Number of 3 X 9 matrices with elements in 0..n with each row and each column in nondecreasing order. 3,9,n can be permuted, see formula.

The programs for A140918, there is no canonical definition to state claims against.
-/

/-! ## A140918.P7724589024548703423

`A056939(eq[9, A002262(n)])`
-/

namespace A140918.P7724589024548703423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140918.P7724589024548703423

/-! ## A140918.P9795529297202628616

`A056939(eq[9, A144328(n+1)])`
-/

namespace A140918.P9795529297202628616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140918.P9795529297202628616

/-! ## A140918.P17994352720630762704

`A056939(eq[9, A025581(n)])`
-/

namespace A140918.P17994352720630762704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140918.P17994352720630762704

/-! ## A140918.P4194497796569175255

`A056939(eq[10, A193739(n)])`
-/

namespace A140918.P4194497796569175255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140918.P4194497796569175255

/-! ## A140918.P4276463382803965748

`A174109(∑[n+3]+6)`
-/

namespace A140918.P4276463382803965748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A140918.P4276463382803965748

/-!
# A140919: Number of 4 X 9 matrices with elements in 0..n with each row and each column in nondecreasing order. 4,9,n can be permuted, see formula.

The programs for A140919, there is no canonical definition to state claims against.
-/

/-! ## A140919.P8616663191963093774

`A056940(eq[9, A002262(n)])`
-/

namespace A140919.P8616663191963093774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140919.P8616663191963093774

/-! ## A140919.P4427993349150640170

`A174109(A155212(n)+12)`
-/

namespace A140919.P4427993349150640170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (A155212 n + 12).toNat

end

end A140919.P4427993349150640170

/-! ## A140919.P3475338737032091521

`A174109(A056000(n)+14)`
-/

namespace A140919.P3475338737032091521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (A056000 n + 14).toNat

end

end A140919.P3475338737032091521

/-! ## A140919.P2976589504683346606

`A174109(eq[4, A002262(n)])`
-/

namespace A140919.P2976589504683346606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140919.P2976589504683346606

/-! ## A140919.P1152637157416620904

`A174109(eq[4, A258651(n)])`
-/

namespace A140919.P1152637157416620904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140919.P1152637157416620904

/-!
# A140920: Number of 5 X 9 matrices with elements in 0..n with each row and each column in nondecreasing order. 5,9,n can be permuted, see formula.

The programs for A140920, there is no canonical definition to state claims against.
-/

/-! ## A140920.P5365547634718149952

`A056941(A000096(n+8)+10)`
-/

namespace A140920.P5365547634718149952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (A000096 (n + 8) + 10).toNat

end

end A140920.P5365547634718149952

/-! ## A140920.P6100639312073345106

`A056941(eq[10, A002260(n+1)])`
-/

namespace A140920.P6100639312073345106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140920.P6100639312073345106

/-! ## A140920.P14821258477184801648

`A056941(eq[10, A134868(n+1)])`
-/

namespace A140920.P14821258477184801648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140920.P14821258477184801648

/-! ## A140920.P1072148210715460248

`A174109(eq[5, A002262(n)])`
-/

namespace A140920.P1072148210715460248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140920.P1072148210715460248

/-! ## A140920.P2260406264509156116

`A174109(eq[5, A025581(n)])`
-/

namespace A140920.P2260406264509156116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140920.P2260406264509156116

/-!
# A140921: Number of 6 X 9 matrices with elements in 0..n with each row and each column in nondecreasing order. 6,9,n can be permuted, see formula.

The programs for A140921, there is no canonical definition to state claims against.
-/

/-! ## A140921.P8041846033443419423

`A142465(eq[9, A002262(n)])`
-/

namespace A140921.P8041846033443419423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140921.P8041846033443419423

/-! ## A140921.P1204383400054105864

`A142465(eq[9, A144328(n+1)])`
-/

namespace A140921.P1204383400054105864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140921.P1204383400054105864

/-! ## A140921.P8887286531097370904

`A142465(eq[10, A002260(n+1)])`
-/

namespace A140921.P8887286531097370904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140921.P8887286531097370904

/-! ## A140921.P3610319981454734797

`A142465(eq[8, A116949(n)])`
-/

namespace A140921.P3610319981454734797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140921.P3610319981454734797

/-! ## A140921.P2787777380954007257

`A142465(eq[9, A025581(n)])`
-/

namespace A140921.P2787777380954007257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140921.P2787777380954007257

/-!
# A140922: Number of 7 X 9 matrices with elements in 0..n with each row and each column in nondecreasing order. 7,9,n can be permuted, see formula.

The programs for A140922, there is no canonical definition to state claims against.
-/

/-! ## A140922.P12480426457963764818

`A142467(eq[9, A002262(n)])`
-/

namespace A140922.P12480426457963764818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140922.P12480426457963764818

/-! ## A140922.P10444737557299819451

`A174109(eq[7, A002262(n)])`
-/

namespace A140922.P10444737557299819451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140922.P10444737557299819451

/-! ## A140922.P15926707166267043559

`A174109(A155212(n+3)+15)`
-/

namespace A140922.P15926707166267043559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (A155212 (n + 3) + 15).toNat

end

end A140922.P15926707166267043559

/-!
# A140923: Number of 8 X 9 matrices with elements in 0..n with each row and each column in nondecreasing order. 8,9,n can be permuted, see formula.

The programs for A140923, there is no canonical definition to state claims against.
-/

/-! ## A140923.P7327068792246094535

`A142468(eq[9, A002262(n)])`
-/

namespace A140923.P7327068792246094535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140923.P7327068792246094535

/-! ## A140923.P10462863304790945162

`A142468(eq[9, A144328(n+1)])`
-/

namespace A140923.P10462863304790945162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140923.P10462863304790945162

/-! ## A140923.P13393901209954866611

`A142468(eq[9, A025581(n)])`
-/

namespace A140923.P13393901209954866611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140923.P13393901209954866611

/-! ## A140923.P13104089725593997692

`A174109(eq[8, A025581(n)])`
-/

namespace A140923.P13104089725593997692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140923.P13104089725593997692

/-! ## A140923.P14847001194682031762

`A174109(eq[9, A193739(n)])`
-/

namespace A140923.P14847001194682031762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140923.P14847001194682031762

/-!
# A140924: Number of 9 X 9 matrices with elements in 0..n with each row and each column in nondecreasing order. 9,9,n can be permuted, see formula.

The programs for A140924, there is no canonical definition to state claims against.
-/

/-! ## A140924.P10714109321525121492

`A120258(eq[10, A004736(n+1)])`
-/

namespace A140924.P10714109321525121492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140924.P10714109321525121492

/-!
# A140925: a(n) = binomial(m+n-1,n)^2 - binomial(m+n,n+1)*binomial(m+n-2,n-1) with m=12.

The programs for A140925, the canonical program `A140925.P9071250885550168469` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140925 has offset 0).

The definition of A140925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140925.P9071250885550168469

`(n/11+1)/(n+1)*C(n+10, 10)²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140925

/-- `(n/11+1)/(n+1)*C(n+10, 10)²` -/
def P9071250885550168469.Spec : Prop :=
  ∀ n, P9071250885550168469.a n = (A140925 n : ℚ)

end A140925

/-! ## A140925.P14377165461745035040

`A001287(n)/(n+1)*A001288(n)`
-/

namespace A140925.P14377165461745035040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001287 (n + 10) : ℚ) / (n + 1 : ℚ) * (A001288 (n + 11) : ℚ)

end

end A140925.P14377165461745035040

namespace A140925

/-- `A001287(n)/(n+1)*A001288(n)` -/
def P14377165461745035040.Spec : Prop :=
  ∀ n, P14377165461745035040.a n = (A140925 n : ℚ)

end A140925

/-! ## A140925.P17792644242077234096

`A001263(A000124(n+10)+10)`
-/

namespace A140925.P17792644242077234096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000124 (n + 10) + 10).toNat

end

end A140925.P17792644242077234096

namespace A140925

/-- `A001263(A000124(n+10)+10)` -/
def P17792644242077234096.Spec : Prop :=
  ∀ n, P17792644242077234096.a n = A140925 n

end A140925

/-! ## A140925.P12352225301025448947

`A001263(A253145(n+9)+11)`
-/

namespace A140925.P12352225301025448947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A253145 (n + 9) + 11).toNat

end

end A140925.P12352225301025448947

namespace A140925

/-- `A001263(A253145(n+9)+11)` -/
def P12352225301025448947.Spec : Prop :=
  ∀ n, P12352225301025448947.a n = A140925 n

end A140925

/-! ## A140925.P13741499259836312638

`A001263(A000096(n+9)+12)`
-/

namespace A140925.P13741499259836312638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000096 (n + 9) + 12).toNat

end

end A140925.P13741499259836312638

namespace A140925

/-- `A001263(A000096(n+9)+12)` -/
def P13741499259836312638.Spec : Prop :=
  ∀ n, P13741499259836312638.a n = A140925 n

end A140925

/-! ## A140925.P16166698160459903830

`A001263(A000217(n+10)+11)`
-/

namespace A140925.P16166698160459903830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000217 (n + 10) + 11).toNat

end

end A140925.P16166698160459903830

namespace A140925

/-- `A001263(A000217(n+10)+11)` -/
def P16166698160459903830.Spec : Prop :=
  ∀ n, P16166698160459903830.a n = A140925 n

end A140925

/-! ## A140925.P11181689109564278196

`A001263(A056000(n+7))`
-/

namespace A140925.P11181689109564278196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A056000 (n + 7)).toNat

end

end A140925.P11181689109564278196

namespace A140925

/-- `A001263(A056000(n+7))` -/
def P11181689109564278196.Spec : Prop :=
  ∀ n, P11181689109564278196.a n = A140925 n

end A140925

/-! ## A140925.P7572510052161909520

`A001263(eq[10, A025581(n)]+1)`
-/

namespace A140925.P7572510052161909520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A140925.P7572510052161909520

namespace A140925

/-- `A001263(eq[10, A025581(n)]+1)` -/
def P7572510052161909520.Spec : Prop :=
  ∀ n, P7572510052161909520.a n = A140925 n

end A140925

/-!
# A140926: Number of 3 X 10 matrices with elements in 0..n with each row and each column in nondecreasing order. 3,10,n can be permuted, see formula.

The programs for A140926, there is no canonical definition to state claims against.
-/

/-! ## A140926.P12482432636500088936

`A056939(eq[10, A002262(n)])`
-/

namespace A140926.P12482432636500088936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140926.P12482432636500088936

/-! ## A140926.P17495089287563926499

`A056939(eq[10, A144328(n+1)])`
-/

namespace A140926.P17495089287563926499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140926.P17495089287563926499

/-! ## A140926.P3898900553606935409

`A056939(eq[10, A025581(n)])`
-/

namespace A140926.P3898900553606935409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140926.P3898900553606935409

/-! ## A140926.P15354441071268342114

`A056939(eq[11, A004736(n+1)])`
-/

namespace A140926.P15354441071268342114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140926.P15354441071268342114

/-! ## A140926.P8445579060171172455

`A342889(A167614(n+2))`
-/

namespace A140926.P8445579060171172455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342889 (A167614 (n + 2)).toNat

end

end A140926.P8445579060171172455

/-!
# A140927: Number of 4 X 10 matrices with elements in 0..n with each row and each column in nondecreasing order. 4,10,n can be permuted, see formula.

The programs for A140927, there is no canonical definition to state claims against.
-/

/-! ## A140927.P18316251403714001843

`A056940(eq[10, A002262(n)])`
-/

namespace A140927.P18316251403714001843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140927.P18316251403714001843

/-! ## A140927.P2752708630950822059

`A056940(eq[11, A002260(n+1)])`
-/

namespace A140927.P2752708630950822059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140927.P2752708630950822059

/-! ## A140927.P15305348736354607643

`A056940(eq[10, A025581(n)])`
-/

namespace A140927.P15305348736354607643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140927.P15305348736354607643

/-! ## A140927.P6130425387006733447

`A056940(eq[11, A004736(n+1)])`
-/

namespace A140927.P6130425387006733447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140927.P6130425387006733447

/-! ## A140927.P1537590601989739780

`A342889(A052905(n+2))`
-/

namespace A140927.P1537590601989739780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342889 (A052905 (n + 2)).toNat

end

end A140927.P1537590601989739780

/-!
# A140928: Number of 5 X 10 matrices with elements in 0..n with each row and each column in nondecreasing order. 5,10,n can be permuted, see formula.

The programs for A140928, there is no canonical definition to state claims against.
-/

/-! ## A140928.P10129560747120023776

`A056941(eq[10, A002262(n)])`
-/

namespace A140928.P10129560747120023776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140928.P10129560747120023776

/-! ## A140928.P6852529550245993709

`A056941(eq[10, A144328(n+1)])`
-/

namespace A140928.P6852529550245993709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140928.P6852529550245993709

/-! ## A140928.P16384029161494018354

`A056941(eq[11, A002260(n+1)])`
-/

namespace A140928.P16384029161494018354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140928.P16384029161494018354

/-! ## A140928.P2584868395908251837

`A056941(eq[10, A025581(n)])`
-/

namespace A140928.P2584868395908251837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140928.P2584868395908251837

/-! ## A140928.P15062284689957142927

`A056941(eq[11, A193739(n)])`
-/

namespace A140928.P15062284689957142927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140928.P15062284689957142927

/-! ## A140928.P6585699600524878590

`A056941(eq[21, A099375(n)])`
-/

namespace A140928.P6585699600524878590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140928.P6585699600524878590

/-!
# A140929: Number of 6 X 10 matrices with elements in 0..n with each row and each column in nondecreasing order. 6,10,n can be permuted, see formula.

The programs for A140929, there is no canonical definition to state claims against.
-/

/-! ## A140929.P5647119631825945057

`A142465(eq[10, A002262(n)])`
-/

namespace A140929.P5647119631825945057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140929.P5647119631825945057

/-!
# A140930: Number of 7 X 10 matrices with elements in 0..n with each row and each column in nondecreasing order. 7,10,n can be permuted, see formula.

The programs for A140930, there is no canonical definition to state claims against.
-/

/-! ## A140930.P2985002125846791263

`A142467(eq[10, A025581(n)])`
-/

namespace A140930.P2985002125846791263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140930.P2985002125846791263

/-! ## A140930.P8731973234558966109

`A142467(eq[11, A004736(n+1)])`
-/

namespace A140930.P8731973234558966109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140930.P8731973234558966109

/-!
# A140931: Number of 8 X 10 matrices with elements in 0..n with each row and each column in nondecreasing order. 8,10,n can be permuted, see formula.

The programs for A140931, there is no canonical definition to state claims against.
-/

/-! ## A140931.P15493729745040199842

`A342889(eq[8, A025581(n)])`
-/

namespace A140931.P15493729745040199842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140931.P15493729745040199842

/-!
# A140934: Number of 2 X 11 matrices with elements in 0..n with each row and each column in nondecreasing order. 2,11,n can be permuted, see formula.

The programs for A140934, the canonical program `A140934.P2309246815187819334` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140934 has offset 0).

The definition of A140934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140934.P17121589398508185298

`(n+12)/(12*n+12)*C(n+11, 11)²`
-/

namespace A140934.P17121589398508185298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 12 : ℚ) / (12 * n + 12 : ℚ) * (Nat.choose (n + 11) 11 ^ 2 : ℚ)

end

end A140934.P17121589398508185298

namespace A140934

/-- `(n+12)/(12*n+12)*C(n+11, 11)²` -/
def P17121589398508185298.Spec : Prop :=
  ∀ n, P17121589398508185298.a n = (A140934 n : ℚ)

end A140934

/-! ## A140934.P2309246815187819334

`C(n+11, 10)/11*∑[A001288(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140934

/-- `C(n+11, 10)/11*∑[A001288(n)]` -/
def P2309246815187819334.Spec : Prop :=
  ∀ n, P2309246815187819334.a n = (A140934 n : ℚ)

end A140934

/-! ## A140934.P15890532420904119877

`A001263(A000124(n+11)+11)`
-/

namespace A140934.P15890532420904119877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000124 (n + 11) + 11).toNat

end

end A140934.P15890532420904119877

namespace A140934

/-- `A001263(A000124(n+11)+11)` -/
def P15890532420904119877.Spec : Prop :=
  ∀ n, P15890532420904119877.a n = A140934 n

end A140934

/-! ## A140934.P12354376505182716786

`A001263(A000096(n+10)+13)`
-/

namespace A140934.P12354376505182716786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000096 (n + 10) + 13).toNat

end

end A140934.P12354376505182716786

namespace A140934

/-- `A001263(A000096(n+10)+13)` -/
def P12354376505182716786.Spec : Prop :=
  ∀ n, P12354376505182716786.a n = A140934 n

end A140934

/-! ## A140934.P15356237221998533967

`A001263(A000217(n+11)+n+1)`
-/

namespace A140934.P15356237221998533967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000217 (n + 11) + (n + 1 : ℤ)).toNat

end

end A140934.P15356237221998533967

namespace A140934

/-- `A001263(A000217(n+11)+n+1)` -/
def P15356237221998533967.Spec : Prop :=
  ∀ n, P15356237221998533967.a n = A140934 n

end A140934

/-! ## A140934.P9990339613982522499

`A090181(eq[12, A002262(n)])`
-/

namespace A140934.P9990339613982522499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140934.P9990339613982522499

namespace A140934

/-- `A090181(eq[12, A002262(n)])` -/
def P9990339613982522499.Spec : Prop :=
  ∀ n, P9990339613982522499.a n = A140934 n

end A140934

/-!
# A140935: Number of 3 X 11 matrices with elements in 0..n with each row and each column in nondecreasing order.

The programs for A140935, there is no canonical definition to state claims against.
-/

/-! ## A140935.P14362552831934954968

`A056939(eq[11, A002262(n)])`
-/

namespace A140935.P14362552831934954968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140935.P14362552831934954968

/-! ## A140935.P4455526330131636422

`A056939(eq[11, A144328(n+1)])`
-/

namespace A140935.P4455526330131636422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140935.P4455526330131636422

/-! ## A140935.P3140243059387553066

`A056939(eq[12, A002260(n+1)])`
-/

namespace A140935.P3140243059387553066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140935.P3140243059387553066

/-! ## A140935.P8987605625169391279

`A056939(eq[11, A025581(n)])`
-/

namespace A140935.P8987605625169391279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140935.P8987605625169391279

/-! ## A140935.P1775272177510575155

`A342890(A167614(n+2))`
-/

namespace A140935.P1775272177510575155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (A167614 (n + 2)).toNat

end

end A140935.P1775272177510575155

/-!
# A140936: Number of 4 X 11 matrices with elements in 0..n with each row and each column in nondecreasing order. 4,11,n can be permuted, see formula.

The programs for A140936, there is no canonical definition to state claims against.
-/

/-! ## A140936.P15540638405717541982

`A056940(eq[11, A002262(n)])`
-/

namespace A140936.P15540638405717541982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140936.P15540638405717541982

/-! ## A140936.P16518613668536678816

`A056940(eq[11, A025581(n)])`
-/

namespace A140936.P16518613668536678816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140936.P16518613668536678816

/-! ## A140936.P17256469059856191298

`A342890(A056000(n)+14)`
-/

namespace A140936.P17256469059856191298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (A056000 n + 14).toNat

end

end A140936.P17256469059856191298

/-! ## A140936.P12754363432036560996

`A342890(eq[3, A141169(n)])`
-/

namespace A140936.P12754363432036560996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140936.P12754363432036560996

/-! ## A140936.P3720803111949938970

`A342890(eq[4, A002262(n)])`
-/

namespace A140936.P3720803111949938970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140936.P3720803111949938970

/-!
# A140937: Number of 5 X 11 matrices with elements in 0..n with each row and each column in nondecreasing order. 5,11,n can be permuted, see formula.

The programs for A140937, there is no canonical definition to state claims against.
-/

/-! ## A140937.P11963065435479521136

`A056941(eq[12, A002260(n+1)])`
-/

namespace A140937.P11963065435479521136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140937.P11963065435479521136

/-! ## A140937.P3555899239544756205

`A056941(eq[12, A004736(n+1)])`
-/

namespace A140937.P3555899239544756205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140937.P3555899239544756205

/-! ## A140937.P13143670127308745699

`A342890(eq[5, A002262(n)])`
-/

namespace A140937.P13143670127308745699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140937.P13143670127308745699

/-! ## A140937.P15026943146054503469

`A342890(eq[5, A141169(n)])`
-/

namespace A140937.P15026943146054503469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140937.P15026943146054503469

/-! ## A140937.P15000791119417080614

`A342890(eq[6, A004736(n+1)])`
-/

namespace A140937.P15000791119417080614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140937.P15000791119417080614

/-!
# A140938: Number of 6 X 11 matrices with elements in 0..n with each row and each column in nondecreasing order. 6,11,n can be permuted, see formula.

The programs for A140938, there is no canonical definition to state claims against.
-/

/-! ## A140938.P17845642068533582057

`A142465(eq[11, A002262(n)])`
-/

namespace A140938.P17845642068533582057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140938.P17845642068533582057

/-! ## A140938.P10385692004920903632

`A342890(eq[6, A002262(n)])`
-/

namespace A140938.P10385692004920903632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140938.P10385692004920903632

/-! ## A140938.P9206926858452321965

`A342890(A000096(n+6)-n)`
-/

namespace A140938.P9206926858452321965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (A000096 (n + 6) - (n : ℤ)).toNat

end

end A140938.P9206926858452321965

/-! ## A140938.P8785144261806361278

`A342890(A000217(n+7)-(n+1))`
-/

namespace A140938.P8785144261806361278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (A000217 (n + 7) - (n + 1 : ℤ)).toNat

end

end A140938.P8785144261806361278

/-! ## A140938.P5430872830585669282

`A342890(eq[13, A099375(n)])`
-/

namespace A140938.P5430872830585669282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140938.P5430872830585669282

/-!
# A140939: Number of 7 X 11 matrices with elements in 0..n with each row and each column in nondecreasing order. 7,11,n can be permuted, see formula.

The programs for A140939, there is no canonical definition to state claims against.
-/

/-! ## A140939.P13662102787971132443

`A342890(eq[7, A025581(n)])`
-/

namespace A140939.P13662102787971132443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140939.P13662102787971132443

/-! ## A140939.P16034403789716977667

`A342890(A000217(n+7)+n)`
-/

namespace A140939.P16034403789716977667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342890 (A000217 (n + 7) + (n : ℤ)).toNat

end

end A140939.P16034403789716977667

/-!
# A140944: Triangle T(n,k) read by rows, the k-th term of the n-th differences of the Jacobsthal sequence A001045.

The programs for A140944, the canonical program `A140944.P4876710666983306882` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140944 has offset 0).

The definition of A140944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140944.P4876710666983306882

`A065620(A173787(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A140944

/-- `A065620(A173787(n))` -/
def P4876710666983306882.Spec : Prop :=
  ∀ n, P4876710666983306882.a n = A140944 n

theorem P4876710666983306882.correct : P4876710666983306882.Spec := by
  intro n
  simp only [A140944]

end A140944

/-! ## A140944.P7511981293657104284

`A065620(A137688(n)-A059268(n))`
-/

namespace A140944.P7511981293657104284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A137688 n - A059268 n).toNat

end

end A140944.P7511981293657104284

namespace A140944

/-- `A065620(A137688(n)-A059268(n))` -/
def P7511981293657104284.Spec : Prop :=
  ∀ n, P7511981293657104284.a n = A140944 n

end A140944

/-! ## A140944.P2872518041442660917

`Δ[A061579(n)]*A104895(A173787(n))`
-/

namespace A140944.P2872518041442660917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A104895 (A173787 n).toNat

end

end A140944.P2872518041442660917

namespace A140944

/-- `Δ[A061579(n)]*A104895(A173787(n))` -/
def P2872518041442660917.Spec : Prop :=
  ∀ n, P2872518041442660917.a n = A140944 n

end A140944

/-! ## A140944.P14209144862860698965

`A000007(n+1)-A104895(A173787(n))`
-/

namespace A140944.P14209144862860698965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A104895 (A173787 n).toNat

end

end A140944.P14209144862860698965

namespace A140944

/-- `A000007(n+1)-A104895(A173787(n))` -/
def P14209144862860698965.Spec : Prop :=
  ∀ n, P14209144862860698965.a n = A140944 n

end A140944

/-! ## A140944.P18065176981471505927

`A000038(n+1)-A104895(A173787(n))`
-/

namespace A140944.P18065176981471505927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A104895 (A173787 n).toNat

end

end A140944.P18065176981471505927

namespace A140944

/-- `A000038(n+1)-A104895(A173787(n))` -/
def P18065176981471505927.Spec : Prop :=
  ∀ n, P18065176981471505927.a n = A140944 n

end A140944

/-! ## A140944.P5996381917954602752

`(A000007(n)-1)*A104895(A173787(n))`
-/

namespace A140944.P5996381917954602752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * A104895 (A173787 n).toNat

end

end A140944.P5996381917954602752

namespace A140944

/-- `(A000007(n)-1)*A104895(A173787(n))` -/
def P5996381917954602752.Spec : Prop :=
  ∀ n, P5996381917954602752.a n = A140944 n

end A140944

/-! ## A140944.P5278804006213450674

`A008683(4*(n+1))-A104895(A173787(n))`
-/

namespace A140944.P5278804006213450674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A104895 (A173787 n).toNat

end

end A140944.P5278804006213450674

namespace A140944

/-- `A008683(4*(n+1))-A104895(A173787(n))` -/
def P5278804006213450674.Spec : Prop :=
  ∀ n, P5278804006213450674.a n = A140944 n

end A140944

/-! ## A140944.P8308674133935413473

`C(2, A000203(n+2))-A104895(A173787(n))`
-/

namespace A140944.P8308674133935413473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ) - A104895 (A173787 n).toNat

end

end A140944.P8308674133935413473

namespace A140944

/-- `C(2, A000203(n+2))-A104895(A173787(n))` -/
def P8308674133935413473.Spec : Prop :=
  ∀ n, P8308674133935413473.a n = A140944 n

end A140944

/-! ## A140944.P6992440083957450913

`C(n, A000040(n+1))-A104895(A173787(n))`
-/

namespace A140944.P6992440083957450913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A000040 (n + 1)).toNat : ℤ) - A104895 (A173787 n).toNat

end

end A140944.P6992440083957450913

namespace A140944

/-- `C(n, A000040(n+1))-A104895(A173787(n))` -/
def P6992440083957450913.Spec : Prop :=
  ∀ n, P6992440083957450913.a n = A140944 n

end A140944

/-! ## A140944.P8738587929031291957

`A001222(((-1)^n)²)-A104895(A173787(n))`
-/

namespace A140944.P8738587929031291957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((-1) ^ n) ^ 2).toNat - A104895 (A173787 n).toNat

end

end A140944.P8738587929031291957

namespace A140944

/-- `A001222(((-1)^n)²)-A104895(A173787(n))` -/
def P8738587929031291957.Spec : Prop :=
  ∀ n, P8738587929031291957.a n = A140944 n

end A140944

/-!
# A140945: Triangle read by rows: counts series-parallel networks by the number of series connections.

The programs for A140945, there is no canonical definition to state claims against.
-/

/-! ## A140945.P12331918665920332112

`A005041(A022175(n))`
-/

namespace A140945.P12331918665920332112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A022175 n).toNat

end

end A140945.P12331918665920332112

/-! ## A140945.P14893979858932500096

`A048265(A056941(n))`
-/

namespace A140945.P14893979858932500096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (A056941 n).toNat

end

end A140945.P14893979858932500096

/-! ## A140945.P13254277360638041229

`A153883(A022167(n))`
-/

namespace A140945.P13254277360638041229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A022167 n).toNat

end

end A140945.P13254277360638041229

/-! ## A140945.P6354717950322605693

`A025224(A157221(n))`
-/

namespace A140945.P6354717950322605693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025224 (A157221 n).toNat

end

end A140945.P6354717950322605693

/-! ## A140945.P15566007270501937214

`A064787(A118190(n))`
-/

namespace A140945.P15566007270501937214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064787 (A118190 n).toNat

end

end A140945.P15566007270501937214

/-!
# A140946: Triangle T(n,k) = (-2)^n*(-1)^k if k

The programs for A140946, there is no canonical definition to state claims against.
-/

/-! ## A140946.P13299812623560558062

`Δ[A140944(n)]-A140944(n)`
-/

namespace A140946.P13299812623560558062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A140944 n

end

end A140946.P13299812623560558062

/-! ## A140946.P2291303291667681787

`A140944(n+1)-2*A140944(n)`
-/

namespace A140946.P2291303291667681787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140944 (n + 1) - 2 * A140944 n

end

end A140946.P2291303291667681787

/-! ## A140946.P12289302147059797927

`A140944(n+1)-A140944(comp[∑[n]])`
-/

namespace A140946.P12289302147059797927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140944 (n + 1) - A140944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A140946.P12289302147059797927

/-! ## A140946.P4847305885362561985

`A104895(A173787(n))+Δ[A140944(n)]`
-/

namespace A140946.P4847305885362561985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A173787 n).toNat + (f1 (n + 1) - f1 n)

end

end A140946.P4847305885362561985

/-! ## A140946.P17432429062643684468

`A140950(n)+A140944(n)`
-/

namespace A140946.P17432429062643684468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140950 n + A140944 n

end

end A140946.P17432429062643684468

/-! ## A140946.P2695942553109706110

`A140950(n)+A065620(A173787(n))`
-/

namespace A140946.P2695942553109706110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140950 n + A065620 (A173787 n).toNat

end

end A140946.P2695942553109706110

/-! ## A140946.P811373984365932222

`A140950(n)-A057428(n)*A140944(n)`
-/

namespace A140946.P811373984365932222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140950 n - A057428 n * A140944 n

end

end A140946.P811373984365932222

/-!
# A140949: a(n) = number of iterations of k -> k-1/k until we reach a negative number, starting at n.

The programs for A140949, there is no canonical definition to state claims against.
-/

/-! ## A140949.P13196870246375375776

`∑[n+2-comp[3^n]%2]+1`
-/

namespace A140949.P13196870246375375776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A140949.P13196870246375375776

/-! ## A140949.P5976416289190040662

`A004526(comp[3^n])+∑[n+1]+2`
-/

namespace A140949.P5976416289190040662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ((∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℕ) : ℤ)

end

end A140949.P5976416289190040662

/-! ## A140949.P11872284636229843199

`abs(∑[n+2-comp[A000244(n)]%2])+1`
-/

namespace A140949.P11872284636229843199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| + 1

end

end A140949.P11872284636229843199

/-! ## A140949.P5792235366668412981

`A008619(A084558(n)+(n+2)²)`
-/

namespace A140949.P5792235366668412981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A084558 n + ((n + 2) ^ 2 : ℤ)).toNat

end

end A140949.P5792235366668412981

/-! ## A140949.P12255559320454642227

`A133263(n+1)+A004526(comp[3^n])`
-/

namespace A140949.P12255559320454642227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (n + 1) + A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A140949.P12255559320454642227

/-! ## A140949.P4766617076991703631

`A008619(∑[char[A177280(n)]]+(n+2)²)`
-/

namespace A140949.P4766617076991703631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177280 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ 2)

end

end A140949.P4766617076991703631

/-! ## A140949.P11686387918400957442

`A008619(∑[char[A177281(n)]]+(n+2)²)`
-/

namespace A140949.P11686387918400957442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ 2)

end

end A140949.P11686387918400957442

/-! ## A140949.P5983812115038139236

`A004526(comp[3^n])+A000217(n+1)+2`
-/

namespace A140949.P5983812115038139236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A000217 (n + 1) + 2

end

end A140949.P5983812115038139236

/-!
# A140950: a(n) = A140944(n+1) - 3*A140944(n).

The programs for A140950, the canonical program `A140950.P13621482593954872628` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140950 has offset 0).

The definition of A140950 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140944, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140950.P13621482593954872628

`A140944(n+1)-3*A140944(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140950

/-- `A140944(n+1)-3*A140944(n)` -/
def P13621482593954872628.Spec : Prop :=
  ∀ n, P13621482593954872628.a n = A140950 n

theorem P13621482593954872628.correct : P13621482593954872628.Spec := by
  intro n
  simp only [A140950]

end A140950

/-! ## A140950.P14779350718336448236

`A140946(n)-A140944(n)`
-/

namespace A140950.P14779350718336448236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140946 n - A140944 n

end

end A140950.P14779350718336448236

namespace A140950

/-- `A140946(n)-A140944(n)` -/
def P14779350718336448236.Spec : Prop :=
  ∀ n, P14779350718336448236.a n = A140950 n

end A140950

/-! ## A140950.P14657558240820121238

`A140946(n)+A104895(A173787(n))`
-/

namespace A140950.P14657558240820121238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140946 n + A104895 (A173787 n).toNat

end

end A140950.P14657558240820121238

namespace A140950

/-- `A140946(n)+A104895(A173787(n))` -/
def P14657558240820121238.Spec : Prop :=
  ∀ n, P14657558240820121238.a n = A140950 n

end A140950

/-! ## A140950.P12257904709082225749

`A140946(n)+A057428(n)*A140944(n)`
-/

namespace A140950.P12257904709082225749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140946 n + A057428 n * A140944 n

end

end A140950.P12257904709082225749

namespace A140950

/-- `A140946(n)+A057428(n)*A140944(n)` -/
def P12257904709082225749.Spec : Prop :=
  ∀ n, P12257904709082225749.a n = A140950 n

end A140950

/-! ## A140950.P14714192454545365521

`Δ[A140944(n)]-A140944(A014132(n+1))`
-/

namespace A140950.P14714192454545365521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A140944 (A014132 (n + 1)).toNat

end

end A140950.P14714192454545365521

namespace A140950

/-- `Δ[A140944(n)]-A140944(A014132(n+1))` -/
def P14714192454545365521.Spec : Prop :=
  ∀ n, P14714192454545365521.a n = A140950 n

end A140950

/-!
# A140951: Based on Jacobsthal numbers. Increasing order of different positive terms of A140950.

The programs for A140951, there is no canonical definition to state claims against.
-/

/-! ## A140951.P13395817954654470717

`A140642(comp[∑[n+1]])`
-/

namespace A140951.P13395817954654470717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A140951.P13395817954654470717

/-! ## A140951.P13818060500152539192

`A140957(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A140951.P13818060500152539192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140957 (n - 1) + a (n - 1)

end

end A140951.P13818060500152539192

/-! ## A140951.P15216880383252100526

`filter[A140642(n), A267579(#)]`
-/

namespace A140951.P15216880383252100526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A140951.P15216880383252100526

/-! ## A140951.P4975960564525561125

`record[A003602(∑[A140957(n)])]`
-/

namespace A140951.P4975960564525561125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140951.P4975960564525561125

/-! ## A140951.P15669451027949520177

`record[A130747(∑[A140957(n)])]`
-/

namespace A140951.P15669451027949520177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140951.P15669451027949520177

/-!
# A140952: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^7)*(1-x^11)).

The programs for A140952, the canonical program `A140952.P11386251807882845297` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140952 has offset 0).

The definition of A140952 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^8+x^9-x^11+x^13-x^15+x^17-x^19-x^20+x^25+x^26-x^28))` (program `A140952.P11386251807882845297`, by `A140952.P11386251807882845297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140952.P11386251807882845297

`ogf(1/(1-x^2-x^3+x^8+x^9-x^11+x^13-x^15+x^17-x^19-x^20+x^25+x^26-x^28))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140952

/-- `ogf(1/(1-x^2-x^3+x^8+x^9-x^11+x^13-x^15+x^17-x^19-x^20+x^25+x^26-x^28))` -/
def P11386251807882845297.Spec : Prop :=
  ∀ n, P11386251807882845297.a n = A140952 n

theorem P11386251807882845297.correct : P11386251807882845297.Spec := by
  intro n
  simp only [A140952]

end A140952

/-! ## A140952.P5426559807418351343

`A029280(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A140952.P5426559807418351343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029280 n + a (n - 2)

end

end A140952.P5426559807418351343

namespace A140952

/-- `A029280(n)+a(n-2)` -/
def P5426559807418351343.Spec : Prop :=
  ∀ n, P5426559807418351343.a n = A140952 n

end A140952

/-! ## A140952.P14866591678610664779

`A029202(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A140952.P14866591678610664779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029202 n + a (n - 3)

end

end A140952.P14866591678610664779

namespace A140952

/-- `A029202(n)+a(n-3)` -/
def P14866591678610664779.Spec : Prop :=
  ∀ n, P14866591678610664779.a n = A140952 n

end A140952

/-! ## A140952.P13357040457130316438

`A056556(A199017(n)*A238874(n))`
-/

namespace A140952.P13357040457130316438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A199017 n * A238874 n).toNat

end

end A140952.P13357040457130316438

namespace A140952

/-- `A056556(A199017(n)*A238874(n))` -/
def P13357040457130316438.Spec : Prop :=
  ∀ n, P13357040457130316438.a n = A140952 n

end A140952

/-! ## A140952.P5640321270065127836

`A048766(A005303(n))`
-/

namespace A140952.P5640321270065127836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A005303 n).toNat

end

end A140952.P5640321270065127836

namespace A140952

/-- `A048766(A005303(n))` -/
def P5640321270065127836.Spec : Prop :=
  ∀ n, P5640321270065127836.a n = A140952 n

end A140952

/-!
# A140953: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^7)*(1-x^11)*(1-x^13)).

The programs for A140953, there is no canonical definition to state claims against.
-/

/-! ## A140953.P2802035515307605545

`A276404(A075427(n))+A000196(A340659(n))`
-/

namespace A140953.P2802035515307605545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A075427 n).toNat + A000196 (A340659 n).toNat

end

end A140953.P2802035515307605545

/-! ## A140953.P652488298917808479

`A000607(n)-A086080(A062112(n))`
-/

namespace A140953.P652488298917808479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A086080 (A062112 n).toNat

end

end A140953.P652488298917808479

/-! ## A140953.P17819339028659267679

`A046676(n)-A086080(A062112(n))`
-/

namespace A140953.P17819339028659267679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A086080 (A062112 n).toNat

end

end A140953.P17819339028659267679

/-! ## A140953.P7440533787925283890

`A000607(n)-A058343(A172002(n+1))`
-/

namespace A140953.P7440533787925283890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A058343 (A172002 (n + 1)).toNat

end

end A140953.P7440533787925283890

/-! ## A140953.P4274918622491798257

`A046676(n)-A058343(A172002(n+1))`
-/

namespace A140953.P4274918622491798257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A058343 (A172002 (n + 1)).toNat

end

end A140953.P4274918622491798257

/-!
# A140954: Half the number of n X n binary matrices, symmetric under vertical reflection, having equal row sums.

The programs for A140954, there is no canonical definition to state claims against.
-/

/-! ## A140954.P14170401708009206813

`or(∏{e}[n+1, #+1], A170905(4^(n+1)-(4*n+2)*2^n-2))`
-/

namespace A140954.P14170401708009206813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A170905 ((4 ^ (n + 1) : ℤ) - ((4 * n + 2) * 2 ^ n : ℤ) - 2).toNat)

end

end A140954.P14170401708009206813

/-!
# A140955: Even integers that do not have at least two partitions into 2 distinct primes.

The programs for A140955, there is no canonical definition to state claims against.
-/

/-! ## A140955.P2512285668125034756

`lt[n%2, sin(2*comp[3*n])]`
-/

namespace A140955.P2512285668125034756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A140955.P2512285668125034756

/-! ## A140955.P534443652080099663

`2*(lcm(n+3, dr(n+3))-3)`
-/

namespace A140955.P534443652080099663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm (n + 3) (SequenceMachineLib.digitalRoot (n + 3 : ℤ)) : ℤ) - 3)

end

end A140955.P534443652080099663

/-! ## A140955.P16585425386769671291

`∑[(2^val(n+1, 3)!)!]-2`
-/

namespace A140955.P16585425386769671291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 ^ Nat.factorial (SequenceMachineLib.valuation (n + 1) 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A140955.P16585425386769671291

/-! ## A140955.P10087212671254668286

`2*(xor(n+2, dr(n+2))+n)`
-/

namespace A140955.P10087212671254668286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor (n + 2) (SequenceMachineLib.digitalRoot (n + 2 : ℤ)) + n)

end

end A140955.P10087212671254668286

/-! ## A140955.P13644696233964738664

`∑[floor(n^(1/3))^3*∑[char[n^3]]]`
-/

namespace A140955.P13644696233964738664
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140955.P13644696233964738664

/-!
# A140956: Triangle read by rows: coefficients of the alternating factorial polynomial (x+1)(x-2)(x+3)(x-4)...(x+n*(-1)^(n-1)).

The programs for A140956, there is no canonical definition to state claims against.
-/

/-! ## A140956.P5198045635178557006

`A047991(A061579(n))*A097807(n)`
-/

namespace A140956.P5198045635178557006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047991 (A061579 n).toNat * A097807 n

end

end A140956.P5198045635178557006

/-! ## A140956.P7020833981937351349

`A033999(A025581(n))*A047991(A061579(n))`
-/

namespace A140956.P7020833981937351349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A047991 (A061579 n).toNat

end

end A140956.P7020833981937351349

/-! ## A140956.P3207036213394484264

`A047991(A061579(n))/A097807(n)^A005384(n+1)`
-/

namespace A140956.P3207036213394484264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047991 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A005384 (n + 1) : ℤ)

end

end A140956.P3207036213394484264

/-! ## A140956.P12354601017432625571

`A047991(A061579(n))/A097807(n)^A005385(n+1)`
-/

namespace A140956.P12354601017432625571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047991 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A005385 (n + 1) : ℤ)

end

end A140956.P12354601017432625571

/-! ## A140956.P14378980305562455688

`A047991(A061579(n))/A097807(n)^A132740(n+1)`
-/

namespace A140956.P14378980305562455688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047991 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A132740 (n + 1) : ℤ)

end

end A140956.P14378980305562455688

/-! ## A140956.P6726211190186534202

`A047991(A061579(n))/A097807(n)%A165942(n+1)`
-/

namespace A140956.P6726211190186534202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047991 (A061579 n).toNat : ℚ) / (Int.tmod (A097807 n) (A165942 (n + 1)) : ℚ)

end

end A140956.P6726211190186534202

/-! ## A140956.P6990470466444821775

`A047991(A061579(n))/A097807(n)^A165944(n+1)`
-/

namespace A140956.P6990470466444821775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047991 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A165944 (n + 1) : ℤ)

end

end A140956.P6990470466444821775

/-! ## A140956.P5926816366254712733

`A047991(A061579(n))/A097807(n)^A165934(n+1)`
-/

namespace A140956.P5926816366254712733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047991 (A061579 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A165934 (n + 1) : ℤ)

end

end A140956.P5926816366254712733

/-!
# A140957: a(n) = A140951(n+1) - A140951(n).

The programs for A140957, there is no canonical definition to state claims against.
-/

/-! ## A140957.P657731638200561897

`A140951(n+1)-A140951(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140957.P657731638200561897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140951 (n + 1) - A140951 n

end

end A140957.P657731638200561897

/-! ## A140957.P4567459884920074545

`(char[∑[n]]+1)*A011782(A181940(n))`
-/

namespace A140957.P4567459884920074545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A011782 (A181940 n).toNat

end

end A140957.P4567459884920074545

/-! ## A140957.P21477048298881129

`A011782(A181940(n))*A035214(n)`
-/

namespace A140957.P21477048298881129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A181940 n).toNat * A035214 n

end

end A140957.P21477048298881129

/-! ## A140957.P8614316654640233216

`A035214(n)*A155038(A064578(n+1))`
-/

namespace A140957.P8614316654640233216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A155038 (A064578 (n + 1)).toNat

end

end A140957.P8614316654640233216

/-! ## A140957.P13689975137787526656

`A035214(n)*A166444(A130517(n+1))`
-/

namespace A140957.P13689975137787526656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A166444 (A130517 (n + 1)).toNat

end

end A140957.P13689975137787526656

/-!
# A140958: A090801(2n-1)+A090801(2n).

The programs for A140958, there is no canonical definition to state claims against.
-/

/-! ## A140958.P5279693730301238275

`A090801(2*(n+1)-1)+A090801(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140958.P5279693730301238275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (2 * (n + 1) - 1) + A090801 (2 * (n + 1))

end

end A140958.P5279693730301238275

/-!
# A140959: Number of distinct-digit primes in base n.

The programs for A140959, there is no canonical definition to state claims against.
-/

/-! ## A140959.P10168799053283171851

`A289813(A028418(n+1))-1`
-/

namespace A140959.P10168799053283171851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A028418 (n + 1)).toNat - 1

end

end A140959.P10168799053283171851

/-! ## A140959.P2311439162142067166

`A118248(n)+A002262(A156894(n))`
-/

namespace A140959.P2311439162142067166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118248 n + A002262 (A156894 n).toNat

end

end A140959.P2311439162142067166

/-!
# A140960: a(n) = (2*(-1)^n - 2^(n+1) + 3*n*2^n)/9.

The programs for A140960, the canonical program `A140960.P8522325177965692138` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140960 has offset 0).

The definition of A140960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140960.P8522325177965692138

`A059570(n+1)-A011782(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140960

/-- `A059570(n+1)-A011782(n+1)` -/
def P8522325177965692138.Spec : Prop :=
  ∀ n, P8522325177965692138.a n = A140960 n

theorem P8522325177965692138.correct : P8522325177965692138.Spec := by
  intro n
  simp only [A140960]

end A140960

/-! ## A140960.P8172246494698291505

`3*a(n-1)-4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A140960.P8172246494698291505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3)

end

end A140960.P8172246494698291505

namespace A140960

/-- `3*a(n-1)-4*a(n-3)` -/
def P8172246494698291505.Spec : Prop :=
  ∀ n, P8172246494698291505.a n = A140960 n

end A140960

/-! ## A140960.P6738574950949947955

`(2*(-1)^n-2^(n+1)+3*n*2^n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140960.P6738574950949947955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (-1) ^ n - (2 ^ (n + 1) : ℤ) + (3 * n * 2 ^ n : ℤ) : ℚ) / 9

end

end A140960.P6738574950949947955

namespace A140960

/-- `(2*(-1)^n-2^(n+1)+3*n*2^n)/9` -/
def P6738574950949947955.Spec : Prop :=
  ∀ n, P6738574950949947955.a n = (A140960 n : ℚ)

end A140960

/-! ## A140960.P6982382549263740154

`ogf(2x^2/(1-3x+4x^3))`
-/

namespace A140960.P6982382549263740154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -3, 0, 4] n

end

end A140960.P6982382549263740154

namespace A140960

/-- `ogf(2x^2/(1-3x+4x^3))` -/
def P6982382549263740154.Spec : Prop :=
  ∀ n, P6982382549263740154.a n = A140960 n

end A140960

/-! ## A140960.P13531056758079214669

`∑[A275434(n+1)]`
-/

namespace A140960.P13531056758079214669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140960.P13531056758079214669

namespace A140960

/-- `∑[A275434(n+1)]` -/
def P13531056758079214669.Spec : Prop :=
  ∀ n, P13531056758079214669.a n = A140960 n

end A140960

/-! ## A140960.P15058135524857363382

`A059570(n+1)-2^n`
-/

namespace A140960.P15058135524857363382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) - (2 ^ n : ℤ)

end

end A140960.P15058135524857363382

namespace A140960

/-- `A059570(n+1)-2^n` -/
def P15058135524857363382.Spec : Prop :=
  ∀ n, P15058135524857363382.a n = A140960 n

end A140960

/-! ## A140960.P303756206254511691

`A057711(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A140960.P303756206254511691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A057711 n + a (n - 2)

end

end A140960.P303756206254511691

namespace A140960

/-- `A057711(n)+a(n-2)` -/
def P303756206254511691.Spec : Prop :=
  ∀ n, P303756206254511691.a n = A140960 n

end A140960

/-! ## A140960.P5182265104257341003

`A078008(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A140960.P5182265104257341003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078008 n + 2 * a (n - 1)

end

end A140960.P5182265104257341003

namespace A140960

/-- `A078008(n)+2*a(n-1)` -/
def P5182265104257341003.Spec : Prop :=
  ∀ n, P5182265104257341003.a n = A140960 n

end A140960

/-! ## A140960.P14984742140919684862

`A045883(n)-A001045(n)`
-/

namespace A140960.P14984742140919684862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 n - A001045 n

end

end A140960.P14984742140919684862

namespace A140960

/-- `A045883(n)-A001045(n)` -/
def P14984742140919684862.Spec : Prop :=
  ∀ n, P14984742140919684862.a n = A140960 n

end A140960

/-! ## A140960.P14754062695486997025

`A127985(n)-A000975(n)`
-/

namespace A140960.P14754062695486997025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n - A000975 n

end

end A140960.P14754062695486997025

namespace A140960

/-- `A127985(n)-A000975(n)` -/
def P14754062695486997025.Spec : Prop :=
  ∀ n, P14754062695486997025.a n = A140960 n

end A140960

/-! ## A140960.P1934331085543033762

`A172481(n)-A139790(n)`
-/

namespace A140960.P1934331085543033762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A139790 n

end

end A140960.P1934331085543033762

namespace A140960

/-- `A172481(n)-A139790(n)` -/
def P1934331085543033762.Spec : Prop :=
  ∀ n, P1934331085543033762.a n = A140960 n

end A140960

/-! ## A140960.P15053016548435017550

`2*A045883(A028310(n)-1)`
-/

namespace A140960.P15053016548435017550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045883 (A028310 n - 1).toNat

end

end A140960.P15053016548435017550

namespace A140960

/-- `2*A045883(A028310(n)-1)` -/
def P15053016548435017550.Spec : Prop :=
  ∀ n, P15053016548435017550.a n = A140960 n

end A140960

/-! ## A140960.P13938438139385667495

`A140787(n)-A084183(n+1)`
-/

namespace A140960.P13938438139385667495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140787 n - A084183 (n + 1)

end

end A140960.P13938438139385667495

namespace A140960

/-- `A140787(n)-A084183(n+1)` -/
def P13938438139385667495.Spec : Prop :=
  ∀ n, P13938438139385667495.a n = A140960 n

end A140960

/-! ## A140960.P5262114693720477455

`A127984(n+1)-A283642(n)`
-/

namespace A140960.P5262114693720477455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (n + 1) - A283642 n

end

end A140960.P5262114693720477455

namespace A140960

/-- `A127984(n+1)-A283642(n)` -/
def P5262114693720477455.Spec : Prop :=
  ∀ n, P5262114693720477455.a n = A140960 n

end A140960

/-! ## A140960.P4491796561155326751

`A045883(n)-A328284(n+3)`
-/

namespace A140960.P4491796561155326751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 n - A328284 (n + 3)

end

end A140960.P4491796561155326751

namespace A140960

/-- `A045883(n)-A328284(n+3)` -/
def P4491796561155326751.Spec : Prop :=
  ∀ n, P4491796561155326751.a n = A140960 n

end A140960

/-! ## A140960.P4198782923050052389

`2*A045883(A004273(n)-n)`
-/

namespace A140960.P4198782923050052389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045883 (A004273 n - (n : ℤ)).toNat

end

end A140960.P4198782923050052389

namespace A140960

/-- `2*A045883(A004273(n)-n)` -/
def P4198782923050052389.Spec : Prop :=
  ∀ n, P4198782923050052389.a n = A140960 n

end A140960

/-! ## A140960.P18340533085838117378

`2*(A000079(n)-A139790(n))`
-/

namespace A140960.P18340533085838117378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n - A139790 n)

end

end A140960.P18340533085838117378

namespace A140960

/-- `2*(A000079(n)-A139790(n))` -/
def P18340533085838117378.Spec : Prop :=
  ∀ n, P18340533085838117378.a n = A140960 n

end A140960

/-! ## A140960.P5109343264091907065

`2*(A172481(n)-A000079(n))`
-/

namespace A140960.P5109343264091907065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A172481 n - A000079 n)

end

end A140960.P5109343264091907065

namespace A140960

/-- `2*(A172481(n)-A000079(n))` -/
def P5109343264091907065.Spec : Prop :=
  ∀ n, P5109343264091907065.a n = A140960 n

end A140960

/-! ## A140960.P10297722128674842531

`2*(A045623(n)-A136298(n))`
-/

namespace A140960.P10297722128674842531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045623 n - A136298 n)

end

end A140960.P10297722128674842531

namespace A140960

/-- `2*(A045623(n)-A136298(n))` -/
def P10297722128674842531.Spec : Prop :=
  ∀ n, P10297722128674842531.a n = A140960 n

end A140960

/-! ## A140960.P12664480952036803198

`A175656(n+1)-A003945(n+1)`
-/

namespace A140960.P12664480952036803198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 (n + 1) - A003945 (n + 1)

end

end A140960.P12664480952036803198

namespace A140960

/-- `A175656(n+1)-A003945(n+1)` -/
def P12664480952036803198.Spec : Prop :=
  ∀ n, P12664480952036803198.a n = A140960 n

end A140960

/-!
# A140961: Number of 3 X n {0,1}-matrices such that: (a) first and second row have a common 1, (b) second and third row have a common 1.

The programs for A140961, the canonical program `A140961.P4928644946575799125` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140961 has offset 1).

The definition of A140961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140961.P4928644946575799125

`8^(n+1)-2*6^(n+1)+5^(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140961

/-- `8^(n+1)-2*6^(n+1)+5^(n+1)` -/
def P4928644946575799125.Spec : Prop :=
  ∀ n, P4928644946575799125.a n = A140961 (n + 1)

theorem P4928644946575799125.correct : P4928644946575799125.Spec := by
  intro n
  simp only [A140961, Nat.add_sub_cancel]

end A140961

/-! ## A140961.P6571848475354304232

`record[A292166(A000124(n)+5)]`
-/

namespace A140961.P6571848475354304232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A000124 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140961.P6571848475354304232

namespace A140961

/-- `record[A292166(A000124(n)+5)]` -/
def P6571848475354304232.Spec : Prop :=
  ∀ n, P6571848475354304232.a n = A140961 (n + 1)

end A140961

/-! ## A140961.P13031053688762676643

`record[A292166(A000217(n)+6)]`
-/

namespace A140961.P13031053688762676643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A000217 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140961.P13031053688762676643

namespace A140961

/-- `record[A292166(A000217(n)+6)]` -/
def P13031053688762676643.Spec : Prop :=
  ∀ n, P13031053688762676643.a n = A140961 (n + 1)

end A140961

/-! ## A140961.P14818679172169213419

`record[A292166(A161680(n)+6)]`
-/

namespace A140961.P14818679172169213419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A161680 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140961.P14818679172169213419

namespace A140961

/-- `record[A292166(A161680(n)+6)]` -/
def P14818679172169213419.Spec : Prop :=
  ∀ n, P14818679172169213419.a n = A140961 (n + 1)

end A140961

/-! ## A140961.P11737007059308138635

`record[A292166(A167499(n)-n)]`
-/

namespace A140961.P11737007059308138635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A167499 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140961.P11737007059308138635

namespace A140961

/-- `record[A292166(A167499(n)-n)]` -/
def P11737007059308138635.Spec : Prop :=
  ∀ n, P11737007059308138635.a n = A140961 (n + 1)

end A140961

/-!
# A140962: Negative values of the inverse binomial transform of A045883.

The programs for A140962, the canonical program `A140962.P9266240833921034965` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140962 has offset 0).

The definition of A140962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140962.P9266240833921034965

`3*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=-1, a(2)=-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140962

/-- `3*a(n-2)-2*a(n-3)` -/
def P9266240833921034965.Spec : Prop :=
  ∀ n, P9266240833921034965.a n = A140962 n

theorem P9266240833921034965.correct : P9266240833921034965.Spec := by
  intro n
  simp only [A140962]

end A140962

/-! ## A140962.P5289775432799790243

`ogf((x+x^2)/(-1+3x^2-2x^3))`
-/

namespace A140962.P5289775432799790243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, -1] [1, 0, -3, 2] n

end

end A140962.P5289775432799790243

namespace A140962

/-- `ogf((x+x^2)/(-1+3x^2-2x^3))` -/
def P5289775432799790243.Spec : Prop :=
  ∀ n, P5289775432799790243.a n = A140962 n

end A140962

/-! ## A140962.P9946151863124311002

`1-2*(a(n-1)+n)` with `a(0)=0`
-/

namespace A140962.P9946151863124311002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - 2 * (a (n - 1) + (n : ℤ))

end

end A140962.P9946151863124311002

namespace A140962

/-- `1-2*(a(n-1)+n)` -/
def P9946151863124311002.Spec : Prop :=
  ∀ n, P9946151863124311002.a n = A140962 n

end A140962

/-! ## A140962.P6904117508596963548

`2*(1-a(n-1)-n)-1` with `a(0)=0`
-/

namespace A140962.P6904117508596963548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (1 - a (n - 1) - (n : ℤ)) - 1

end

end A140962.P6904117508596963548

namespace A140962

/-- `2*(1-a(n-1)-n)-1` -/
def P6904117508596963548.Spec : Prop :=
  ∀ n, P6904117508596963548.a n = A140962 n

end A140962

/-! ## A140962.P2529854466786293777

`(a(n-1)+n)/(1/2-1)+1` with `a(0)=0`
-/

namespace A140962.P2529854466786293777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n : ℚ)) / ((1 : ℚ) / 2 - 1) + 1

end

end A140962.P2529854466786293777

namespace A140962

/-- `(a(n-1)+n)/(1/2-1)+1` -/
def P2529854466786293777.Spec : Prop :=
  ∀ n, P2529854466786293777.a n = (A140962 n : ℚ)

end A140962

/-! ## A140962.P6395834690456770911

`1-(a(n-1)+a(n-1)+n+n)` with `a(0)=0`
-/

namespace A140962.P6395834690456770911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) + (a (n - 1) + (n : ℤ) + (n : ℤ)))

end

end A140962.P6395834690456770911

namespace A140962

/-- `1-(a(n-1)+a(n-1)+n+n)` -/
def P6395834690456770911.Spec : Prop :=
  ∀ n, P6395834690456770911.a n = A140962 n

end A140962

/-! ## A140962.P13635881333685230730

`1-a(n-1)-a(n-1)-n-n` with `a(0)=0`
-/

namespace A140962.P13635881333685230730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) - a (n - 1) - (n : ℤ) - (n : ℤ)

end

end A140962.P13635881333685230730

namespace A140962

/-- `1-a(n-1)-a(n-1)-n-n` -/
def P13635881333685230730.Spec : Prop :=
  ∀ n, P13635881333685230730.a n = A140962 n

end A140962

/-! ## A140962.P4426574499844942075

`∑[∑[floor((-2)^(n-2))]]`
-/

namespace A140962.P4426574499844942075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140962.P4426574499844942075

namespace A140962

/-- `∑[∑[floor((-2)^(n-2))]]` -/
def P4426574499844942075.Spec : Prop :=
  ∀ n, P4426574499844942075.a n = A140962 n

end A140962

/-! ## A140962.P3078543196045712580

`(1-∑[A084247(n)])/2`
-/

namespace A140962.P3078543196045712580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A140962.P3078543196045712580

namespace A140962

/-- `(1-∑[A084247(n)])/2` -/
def P3078543196045712580.Spec : Prop :=
  ∀ n, P3078543196045712580.a n = (A140962 n : ℚ)

end A140962

/-! ## A140962.P5344335503341577878

`(A140966(n)-2*(n+1))/3`
-/

namespace A140962.P5344335503341577878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140966 n - (2 * (n + 1) : ℤ) : ℚ) / 3

end

end A140962.P5344335503341577878

namespace A140962

/-- `(A140966(n)-2*(n+1))/3` -/
def P5344335503341577878.Spec : Prop :=
  ∀ n, P5344335503341577878.a n = (A140962 n : ℚ)

end A140962

/-! ## A140962.P6841852546019644998

`A140966(n)+n-∑[A140966(n)]`
-/

namespace A140962.P6841852546019644998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140962.P6841852546019644998

namespace A140962

/-- `A140966(n)+n-∑[A140966(n)]` -/
def P6841852546019644998.Spec : Prop :=
  ∀ n, P6841852546019644998.a n = A140962 n

end A140962

/-! ## A140962.P3358920734628219908

`A000079(n)-∑[∑[A131575(n)²]]`
-/

namespace A140962.P3358920734628219908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140962.P3358920734628219908

namespace A140962

/-- `A000079(n)-∑[∑[A131575(n)²]]` -/
def P3358920734628219908.Spec : Prop :=
  ∀ n, P3358920734628219908.a n = A140962 n

end A140962

/-! ## A140962.P3882122923879467736

`A078052(2*n)-∑[A078052(2*n)]`
-/

namespace A140962.P3882122923879467736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078052 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078052 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140962.P3882122923879467736

namespace A140962

/-- `A078052(2*n)-∑[A078052(2*n)]` -/
def P3882122923879467736.Spec : Prop :=
  ∀ n, P3882122923879467736.a n = A140962 n

end A140962

/-! ## A140962.P8470794098251450148

`A151575(n)-∑[A151575(n)]`
-/

namespace A140962.P8470794098251450148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140962.P8470794098251450148

namespace A140962

/-- `A151575(n)-∑[A151575(n)]` -/
def P8470794098251450148.Spec : Prop :=
  ∀ n, P8470794098251450148.a n = A140962 n

end A140962

/-! ## A140962.P6446694745935271668

`∑[∑[A016116(n)²]]-A033484(n)`
-/

namespace A140962.P6446694745935271668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033484 n

end

end A140962.P6446694745935271668

namespace A140962

/-- `∑[∑[A016116(n)²]]-A033484(n)` -/
def P6446694745935271668.Spec : Prop :=
  ∀ n, P6446694745935271668.a n = A140962 n

end A140962

/-! ## A140962.P13159556062096175374

`∑[A094555(n)-A094556(n)]-n`
-/

namespace A140962.P13159556062096175374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 n - A094556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A140962.P13159556062096175374

namespace A140962

/-- `∑[A094555(n)-A094556(n)]-n` -/
def P13159556062096175374.Spec : Prop :=
  ∀ n, P13159556062096175374.a n = A140962 n

end A140962

/-!
# A140963: Half the number of n X n symmetric binary matrices with each 1 adjacent to an even number of other 1's.

The programs for A140963, there is no canonical definition to state claims against.
-/

/-! ## A140963.P5874973477564279897

`A025478(Δ[Δ[A125859(n)]])`
-/

namespace A140963.P5874973477564279897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (f1 (n + 1) - f1 n).toNat

end

end A140963.P5874973477564279897

/-!
# A140964: Number of n X n symmetric binary matrices with each 1 adjacent to an odd number of other 1's.

The programs for A140964, there is no canonical definition to state claims against.
-/

/-! ## A140964.P13578827666105341620

`A028310(xor(A057649(n), A336545(n+1)))`
-/

namespace A140964.P13578827666105341620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A057649 n) (A336545 (n + 1))).toNat

end

end A140964.P13578827666105341620

/-! ## A140964.P6649065930040127021

`A036234(A378094(n))`
-/

namespace A140964.P6649065930040127021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A378094 n).toNat

end

end A140964.P6649065930040127021

/-!
# A140965: Smallest multiple of n with a number of divisors >= n.

The programs for A140965, there is no canonical definition to state claims against.
-/

/-! ## A140965.P11225637862035109896

`abs(∏{p}[n+1, 1-#]*∏{e}[n+1, #])*A053188((1-(n+2)²)²+1+n)`
-/

namespace A140965.P11225637862035109896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)| * A053188 ((1 - ((n + 2) ^ 2 : ℤ)) ^ 2 + 1 + (n : ℤ)).toNat

end

end A140965.P11225637862035109896

/-! ## A140965.P2918482266274427610

`(n+1)*A001227(A300974(n))`
-/

namespace A140965.P2918482266274427610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001227 (A300974 n).toNat

end

end A140965.P2918482266274427610

/-! ## A140965.P5111035195118919318

`A000010(∑[A276142(n+1)+n%6])`
-/

namespace A140965.P5111035195118919318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276142 (n + 1) + ((n % 6 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140965.P5111035195118919318

/-! ## A140965.P2405964610768145956

`lcm(n+1, A000005(A192358(n+1)+1))`
-/

namespace A140965.P2405964610768145956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000005 (A192358 (n + 1) + 1).toNat)

end

end A140965.P2405964610768145956

/-! ## A140965.P2193113784522177865

`A001223(A341360(n))*A140271(n+1)`
-/

namespace A140965.P2193113784522177865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A341360 n).toNat * A140271 (n + 1)

end

end A140965.P2193113784522177865

/-!
# A140966: a(n) = (5 + (-2)^n)/3.

The programs for A140966, the canonical program `A140966.P12965105067658252371` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140966 has offset 0).

The definition of A140966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140966.P12965105067658252371

`(5+(-2)^n)/3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140966

/-- `(5+(-2)^n)/3` -/
def P12965105067658252371.Spec : Prop :=
  ∀ n, P12965105067658252371.a n = (A140966 n : ℚ)

end A140966

/-! ## A140966.P14502478939921174699

`∑[ogf((2+3x)/(1+2x))]`
-/

namespace A140966.P14502478939921174699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140966.P14502478939921174699

namespace A140966

/-- `∑[ogf((2+3x)/(1+2x))]` -/
def P14502478939921174699.Spec : Prop :=
  ∀ n, P14502478939921174699.a n = A140966 n

end A140966

/-! ## A140966.P7532267995369737481

`ogf((2+3x)/(1+x-2x^2))`
-/

namespace A140966.P7532267995369737481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, 1, -2] n

end

end A140966.P7532267995369737481

namespace A140966

/-- `ogf((2+3x)/(1+x-2x^2))` -/
def P7532267995369737481.Spec : Prop :=
  ∀ n, P7532267995369737481.a n = A140966 n

end A140966

/-! ## A140966.P6798248531226960807

`5-2*a(n-1)` with `a(0)=2`
-/

namespace A140966.P6798248531226960807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 - 2 * a (n - 1)

end

end A140966.P6798248531226960807

namespace A140966

/-- `5-2*a(n-1)` -/
def P6798248531226960807.Spec : Prop :=
  ∀ n, P6798248531226960807.a n = A140966 n

end A140966

/-! ## A140966.P859315051951124783

`a(n-1)-(-2)^(n-1)` with `a(0)=2`
-/

namespace A140966.P859315051951124783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A140966.P859315051951124783

namespace A140966

/-- `a(n-1)-(-2)^(n-1)` -/
def P859315051951124783.Spec : Prop :=
  ∀ n, P859315051951124783.a n = (A140966 n : ℚ)

end A140966

/-! ## A140966.P6911809848190258839

`5-a(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A140966.P6911809848190258839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 - a (n - 1) - a (n - 1)

end

end A140966.P6911809848190258839

namespace A140966

/-- `5-a(n-1)-a(n-1)` -/
def P6911809848190258839.Spec : Prop :=
  ∀ n, P6911809848190258839.a n = A140966 n

end A140966

/-! ## A140966.P217089644003744704

`3-A084247(n)`
-/

namespace A140966.P217089644003744704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A084247 n

end

end A140966.P217089644003744704

namespace A140966

/-- `3-A084247(n)` -/
def P217089644003744704.Spec : Prop :=
  ∀ n, P217089644003744704.a n = A140966 n

end A140966

/-! ## A140966.P9225729118716232092

`1-Δ[A140962(n)]`
-/

namespace A140966.P9225729118716232092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A140966.P9225729118716232092

namespace A140966

/-- `1-Δ[A140962(n)]` -/
def P9225729118716232092.Spec : Prop :=
  ∀ n, P9225729118716232092.a n = A140966 n

end A140966

/-! ## A140966.P14750702977532985674

`3-∑[A123344(n)]`
-/

namespace A140966.P14750702977532985674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140966.P14750702977532985674

namespace A140966

/-- `3-∑[A123344(n)]` -/
def P14750702977532985674.Spec : Prop :=
  ∀ n, P14750702977532985674.a n = A140966 n

end A140966

/-! ## A140966.P9514872032137192851

`xor(1, A171501(n))+1`
-/

namespace A140966.P9514872032137192851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A171501 n) + 1

end

end A140966.P9514872032137192851

namespace A140966

/-- `xor(1, A171501(n))+1` -/
def P9514872032137192851.Spec : Prop :=
  ∀ n, P9514872032137192851.a n = A140966 n

end A140966

/-! ## A140966.P7538598691217382669

`∑[A117575(2*n)]+1`
-/

namespace A140966.P7538598691217382669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A140966.P7538598691217382669

namespace A140966

/-- `∑[A117575(2*n)]+1` -/
def P7538598691217382669.Spec : Prop :=
  ∀ n, P7538598691217382669.a n = A140966 n

end A140966

/-! ## A140966.P10195133849203495118

`A084633(n)+a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A140966.P10195133849203495118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A084633 n + a (n - 1)

end

end A140966.P10195133849203495118

namespace A140966

/-- `A084633(n)+a(n-1)` -/
def P10195133849203495118.Spec : Prop :=
  ∀ n, P10195133849203495118.a n = A140966 n

end A140966

/-! ## A140966.P15162984946191582741

`A171501(n)+A000038(n)`
-/

namespace A140966.P15162984946191582741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171501 n + A000038 n

end

end A140966.P15162984946191582741

namespace A140966

/-- `A171501(n)+A000038(n)` -/
def P15162984946191582741.Spec : Prop :=
  ∀ n, P15162984946191582741.a n = A140966 n

end A140966

/-! ## A140966.P6947874572097277109

`A166752(n)-A167030(n)`
-/

namespace A140966.P6947874572097277109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 n - A167030 n

end

end A140966.P6947874572097277109

namespace A140966

/-- `A166752(n)-A167030(n)` -/
def P6947874572097277109.Spec : Prop :=
  ∀ n, P6947874572097277109.a n = A140966 n

end A140966

/-! ## A140966.P8396919024338694886

`A176040(n)-A167193(n)`
-/

namespace A140966.P8396919024338694886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n - A167193 n

end

end A140966.P8396919024338694886

namespace A140966

/-- `A176040(n)-A167193(n)` -/
def P8396919024338694886.Spec : Prop :=
  ∀ n, P8396919024338694886.a n = A140966 n

end A140966

/-! ## A140966.P18423359662057423566

`A166752(n)+1-A001045(n)`
-/

namespace A140966.P18423359662057423566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 n + (1 - A001045 n)

end

end A140966.P18423359662057423566

namespace A140966

/-- `A166752(n)+1-A001045(n)` -/
def P18423359662057423566.Spec : Prop :=
  ∀ n, P18423359662057423566.a n = A140966 n

end A140966

/-! ## A140966.P5244082710299517309

`A033999(n)*A078008(n)+1`
-/

namespace A140966.P5244082710299517309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078008 n + 1

end

end A140966.P5244082710299517309

namespace A140966

/-- `A033999(n)*A078008(n)+1` -/
def P5244082710299517309.Spec : Prop :=
  ∀ n, P5244082710299517309.a n = A140966 n

end A140966

/-! ## A140966.P18110879335237499643

`A001045(n)*A033999(n)+2`
-/

namespace A140966.P18110879335237499643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A033999 n + 2

end

end A140966.P18110879335237499643

namespace A140966

/-- `A001045(n)*A033999(n)+2` -/
def P18110879335237499643.Spec : Prop :=
  ∀ n, P18110879335237499643.a n = A140966 n

end A140966

/-! ## A140966.P9352395099948491831

`A033999(n)*A154879(n)-1`
-/

namespace A140966.P9352395099948491831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A154879 n - 1

end

end A140966.P9352395099948491831

namespace A140966

/-- `A033999(n)*A154879(n)-1` -/
def P9352395099948491831.Spec : Prop :=
  ∀ n, P9352395099948491831.a n = A140966 n

end A140966

/-! ## A140966.P330828186652505356

`2-A001045(n)*A062157(n)`
-/

namespace A140966.P330828186652505356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001045 n * A062157 n

end

end A140966.P330828186652505356

namespace A140966

/-- `2-A001045(n)*A062157(n)` -/
def P330828186652505356.Spec : Prop :=
  ∀ n, P330828186652505356.a n = A140966 n

end A140966

/-!
# A140969: Prime numbers whose hexadecimal representation uses only the digits A,B,C,D,E,F (and not the decimal digits).

The programs for A140969, there is no canonical definition to state claims against.
-/

/-! ## A140969.P15825443214543794945

`p?[A228774(n)]`
-/

namespace A140969.P15825443214543794945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140969.P15825443214543794945

/-! ## A140969.P856876386484019259

`filter[A228774(n), A010051(#)]`
-/

namespace A140969.P856876386484019259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A140969.P856876386484019259

/-! ## A140969.P18242746730605224577

`filter[A228774(n), A069513(#)]`
-/

namespace A140969.P18242746730605224577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A140969.P18242746730605224577

/-! ## A140969.P5060453284707292074

`filter[A228774(n), A174897(#)]`
-/

namespace A140969.P5060453284707292074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A140969.P5060453284707292074

/-! ## A140969.P9246822270890962140

`filter[A228774(n), A302777(#)]`
-/

namespace A140969.P9246822270890962140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A140969.P9246822270890962140

/-! ## A140969.P1748561506928158926

`filter[A228774(n), A323152(#)]`
-/

namespace A140969.P1748561506928158926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A140969.P1748561506928158926

/-! ## A140969.P11640233281703811214

`filter[A228774(n), A323153(#)]`
-/

namespace A140969.P11640233281703811214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A140969.P11640233281703811214

/-! ## A140969.P14755009773440855783

`filter[A228774(n), A324290(#)]`
-/

namespace A140969.P14755009773440855783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A140969.P14755009773440855783

/-! ## A140969.P14380341031757573811

`filter[A228774(n), A345950(#)]`
-/

namespace A140969.P14380341031757573811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A140969.P14380341031757573811

/-! ## A140969.P1447363848183143491

`filter[A228774(n), A353817(#)]`
-/

namespace A140969.P1447363848183143491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A140969.P1447363848183143491

/-! ## A140969.P15109189633835012216

`filter[A228774(n), A355937(#)]`
-/

namespace A140969.P15109189633835012216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A140969.P15109189633835012216

/-! ## A140969.P8708929733725453186

`∩[A061345(n), A228774(n)]`
-/

namespace A140969.P8708929733725453186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140969.P8708929733725453186

/-! ## A140969.P12123377550852648459

`record[A020639(A228774(n+1))]`
-/

namespace A140969.P12123377550852648459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A228774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140969.P12123377550852648459

/-! ## A140969.P15353701898877218010

`record[A020639(or(1, A228774(n)))]`
-/

namespace A140969.P15353701898877218010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A228774 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140969.P15353701898877218010

/-! ## A140969.P6735047050327237269

`∩[A000040(n+1), A228774(n)]`
-/

namespace A140969.P6735047050327237269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140969.P6735047050327237269

/-! ## A140969.P6734718596984508845

`∩[A000430(n+1), A228774(n)]`
-/

namespace A140969.P6734718596984508845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140969.P6734718596984508845

/-! ## A140969.P17732148672869877789

`∩[A000961(n+1), A228774(n)]`
-/

namespace A140969.P17732148672869877789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140969.P17732148672869877789

/-! ## A140969.P16894247541599869235

`∩[A004139(n+1), A228774(n)]`
-/

namespace A140969.P16894247541599869235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140969.P16894247541599869235

/-! ## A140969.P6558096214337442298

`∩[A006005(n+1), A228774(n)]`
-/

namespace A140969.P6558096214337442298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140969.P6558096214337442298

/-! ## A140969.P7988850392217122480

`∩[A008578(n+1), A228774(n)]`
-/

namespace A140969.P7988850392217122480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140969.P7988850392217122480

/-!
# A140971: Numbers k such that arithmetic mean of squares of the first k nonzero Fibonacci numbers is an integer.

The programs for A140971, there is no canonical definition to state claims against.
-/

/-! ## A140971.P5482342697653881011

`record[gcd(n+1, A001654(n+1))]`
-/

namespace A140971.P5482342697653881011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001654 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140971.P5482342697653881011

/-! ## A140971.P13165292660588954688

`record[gcd(A006498(n), A008619(n))]`
-/

namespace A140971.P13165292660588954688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006498 n) (A008619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140971.P13165292660588954688

/-! ## A140971.P16200117825595673437

`record[A028310(gcd(n, A001654(n)))]`
-/

namespace A140971.P16200117825595673437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A001654 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140971.P16200117825595673437

/-! ## A140971.P5039900581492670878

`record[gcd(A065033(n), A074677(n))]`
-/

namespace A140971.P5039900581492670878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065033 n) (A074677 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140971.P5039900581492670878

/-! ## A140971.P11499127634406608958

`record[gcd(A003602(n+1), A070550(n))]`
-/

namespace A140971.P11499127634406608958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (n + 1)) (A070550 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140971.P11499127634406608958

/-!
# A140972: Numbers k such that arithmetic mean of squares of first k Lucas numbers is an integer.

The programs for A140972, there is no canonical definition to state claims against.
-/

/-! ## A140972.P1519528018248526653

`record[1-A038608(A175308(n+1))]`
-/

namespace A140972.P1519528018248526653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038608 (A175308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140972.P1519528018248526653

/-! ## A140972.P7800199862087854937

`record[gcd(A001870(n)², A103517(n))]`
-/

namespace A140972.P7800199862087854937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001870 n ^ 2) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140972.P7800199862087854937

/-! ## A140972.P11429416276003923189

`eq[A063647(n+1), A244526(A121343(n))]`
-/

namespace A140972.P11429416276003923189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244526 (A121343 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140972.P11429416276003923189

/-!
# A140973: Numbers k such that arithmetic mean of squares of the first k tribonacci numbers is an integer.

The programs for A140973, there is no canonical definition to state claims against.
-/

/-! ## A140973.P12965764508960085785

`record[gcd(n+1, A107239(n))]`
-/

namespace A140973.P12965764508960085785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A107239 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140973.P12965764508960085785

/-!
# A140974: Number of binary n X n matrices symmetric about both diagonals with rows, considered as binary numbers, in nondecreasing order.

The programs for A140974, there is no canonical definition to state claims against.
-/

/-! ## A140974.P9420158972638058197

`∑[A117929(A053504(n))+1]`
-/

namespace A140974.P9420158972638058197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A053504 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140974.P9420158972638058197

/-! ## A140974.P16103635855499888074

`A367969(n)+A160384(A002450(n))`
-/

namespace A140974.P16103635855499888074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367969 n + A160384 (A002450 n).toNat

end

end A140974.P16103635855499888074

/-! ## A140974.P8208799612255219409

`A080604(A025474(n+1)+A000142(n))`
-/

namespace A140974.P8208799612255219409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080604 (A025474 (n + 1) + A000142 n).toNat

end

end A140974.P8208799612255219409

/-! ## A140974.P15699933431670154758

`A093110(A001683(n+2))+A007091(n)`
-/

namespace A140974.P15699933431670154758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (A001683 (n + 2)).toNat + A007091 n

end

end A140974.P15699933431670154758

/-!
# A140975: Period 20: repeat [1, 3, 8, 8, 9, 1, 6, 6, 7, 9, 4, 4, 5, 7, 2, 2, 3, 5, 0, 0].

The programs for A140975, the canonical program `A140975.P7315264516922749840` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140975 has offset 0).

The definition of A140975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140975.P7315264516922749840

`∑[(n%4)²+1]%10`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140975

/-- `∑[(n%4)²+1]%10` -/
def P7315264516922749840.Spec : Prop :=
  ∀ n, (P7315264516922749840.a n : ℤ) = A140975 n

theorem P7315264516922749840.correct : P7315264516922749840.Spec := by
  intro n
  simp only [A140975]

end A140975

/-!
# A140976: Period length 10: repeat 8, 8, 6, 6, 4, 4, 2, 2, 0, 0.

The programs for A140976, the canonical program `A140976.P4894037311562281442` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140976 has offset 0).

The definition of A140976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140976.P4894037311562281442

`9-or(1, n%10)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140976

/-- `9-or(1, n%10)` -/
def P4894037311562281442.Spec : Prop :=
  ∀ n, P4894037311562281442.a n = A140976 n

theorem P4894037311562281442.correct : P4894037311562281442.Spec := by
  intro n
  simp only [A140976]

end A140976

/-!
# A140977: a(n) is the smallest integer > n that has the same number of (nonleading) zeros in its binary representation as n has.

The programs for A140977, the canonical program `A140977.P14132471099768097264` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140977 has offset 1).

The definition of A140977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140977.P14132471099768097264

`A171942(A001316(2*n+1)+2+n)+1+n`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A140977

/-- `A171942(A001316(2*n+1)+2+n)+1+n` -/
def P14132471099768097264.Spec : Prop :=
  ∀ n, P14132471099768097264.a n = A140977 (n + 1)

theorem P14132471099768097264.correct : P14132471099768097264.Spec := by
  intro n
  simp only [A140977, Nat.add_sub_cancel]

end A140977

/-! ## A140977.P473502150107358568

`A057168(n+1)+A048298(A003602(n+1))`
-/

namespace A140977.P473502150107358568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (n + 1) + A048298 (A003602 (n + 1)).toNat

end

end A140977.P473502150107358568

namespace A140977

/-- `A057168(n+1)+A048298(A003602(n+1))` -/
def P473502150107358568.Spec : Prop :=
  ∀ n, P473502150107358568.a n = A140977 (n + 1)

end A140977

/-! ## A140977.P8162927931862618683

`A135416(A325401(n+1))+A171942(n+2)+1+n`
-/

namespace A140977.P8162927931862618683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A325401 (n + 1)).toNat + (A171942 (n + 2) + 1 + (n : ℤ))

end

end A140977.P8162927931862618683

namespace A140977

/-- `A135416(A325401(n+1))+A171942(n+2)+1+n` -/
def P8162927931862618683.Spec : Prop :=
  ∀ n, P8162927931862618683.a n = A140977 (n + 1)

end A140977

/-!
# A140978: Repeat (n+1)^2 n times.

The programs for A140978, the canonical program `A140978.P12561242005867960431` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140978 has offset 1).

The definition of A140978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140978.P12561242005867960431

`A003057(n+2)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140978

/-- `A003057(n+2)²` -/
def P12561242005867960431.Spec : Prop :=
  ∀ n, P12561242005867960431.a n = A140978 (n + 1)

theorem P12561242005867960431.correct : P12561242005867960431.Spec := by
  intro n
  simp only [A140978, Nat.add_sub_cancel]

end A140978

/-! ## A140978.P1007536965444536126

`(n-comp[∑[n]])²`
-/

namespace A140978.P1007536965444536126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2

end

end A140978.P1007536965444536126

namespace A140978

/-- `(n-comp[∑[n]])²` -/
def P1007536965444536126.Spec : Prop :=
  ∀ n, P1007536965444536126.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P15335152283939425846

`(comp[∑[n]]-n)^gcd(2, 4*n)`
-/

namespace A140978.P15335152283939425846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) ^ Nat.gcd 2 (4 * n)

end

end A140978.P15335152283939425846

namespace A140978

/-- `(comp[∑[n]]-n)^gcd(2, 4*n)` -/
def P15335152283939425846.Spec : Prop :=
  ∀ n, P15335152283939425846.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P7855053952908678694

`ceil(((∑[2*char[C(n, 2)]]+2)/2)²)`
-/

namespace A140978.P7855053952908678694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / 2) ^ 2⌉

end

end A140978.P7855053952908678694

namespace A140978

/-- `ceil(((∑[2*char[C(n, 2)]]+2)/2)²)` -/
def P7855053952908678694.Spec : Prop :=
  ∀ n, P7855053952908678694.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P17616124283818521060

`round(((∑[2*char[C(n, 2)]]+2)/2)²)`
-/

namespace A140978.P17616124283818521060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / 2) ^ 2)

end

end A140978.P17616124283818521060

namespace A140978

/-- `round(((∑[2*char[C(n, 2)]]+2)/2)²)` -/
def P17616124283818521060.Spec : Prop :=
  ∀ n, P17616124283818521060.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P40248545360624243

`(comp[∑[n]]-n)^(val(4*n+1, 2)+2)`
-/

namespace A140978.P40248545360624243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) ^ (SequenceMachineLib.valuation (4 * n + 1) 2 + 2)

end

end A140978.P40248545360624243

namespace A140978

/-- `(comp[∑[n]]-n)^(val(4*n+1, 2)+2)` -/
def P40248545360624243.Spec : Prop :=
  ∀ n, P40248545360624243.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P13699583749060708517

`(comp[∑[n]]-n)*(comp[∑[n]]-n)%(n+4)`
-/

namespace A140978.P13699583749060708517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)) (n + 4 : ℤ)

end

end A140978.P13699583749060708517

namespace A140978

/-- `(comp[∑[n]]-n)*(comp[∑[n]]-n)%(n+4)` -/
def P13699583749060708517.Spec : Prop :=
  ∀ n, P13699583749060708517.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P8755029839294562500

`∑[A073423(n)]^2`
-/

namespace A140978.P8755029839294562500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A140978.P8755029839294562500

namespace A140978

/-- `∑[A073423(n)]^2` -/
def P8755029839294562500.Spec : Prop :=
  ∀ n, P8755029839294562500.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P16012713378618274400

`A000290(comp[∑[n]]-n)`
-/

namespace A140978.P16012713378618274400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A140978.P16012713378618274400

namespace A140978

/-- `A000290(comp[∑[n]]-n)` -/
def P16012713378618274400.Spec : Prop :=
  ∀ n, P16012713378618274400.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P2557226968818523889

`ceil((log2(A140513(n))+1)²)`
-/

namespace A140978.P2557226968818523889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.logb 2 (A140513 n : ℝ) + 1) ^ 2⌉

end

end A140978.P2557226968818523889

namespace A140978

/-- `ceil((log2(A140513(n))+1)²)` -/
def P2557226968818523889.Spec : Prop :=
  ∀ n, P2557226968818523889.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P2868828531366257164

`round((sqrt(A093995(n+1))+1)²)`
-/

namespace A140978.P2868828531366257164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (A093995 (n + 1) : ℝ) + 1) ^ 2)

end

end A140978.P2868828531366257164

namespace A140978

/-- `round((sqrt(A093995(n+1))+1)²)` -/
def P2868828531366257164.Spec : Prop :=
  ∀ n, P2868828531366257164.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P14081354518452750720

`A185871(n+1)-(2*n+1)`
-/

namespace A140978.P14081354518452750720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185871 (n + 1) - (2 * n + 1 : ℤ)

end

end A140978.P14081354518452750720

namespace A140978

/-- `A185871(n+1)-(2*n+1)` -/
def P14081354518452750720.Spec : Prop :=
  ∀ n, P14081354518452750720.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P6637381605565196320

`(2*A002024(n+1)+2)²/4`
-/

namespace A140978.P6637381605565196320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A002024 (n + 1) + 2) ^ 2 : ℚ) / 4

end

end A140978.P6637381605565196320

namespace A140978

/-- `(2*A002024(n+1)+2)²/4` -/
def P6637381605565196320.Spec : Prop :=
  ∀ n, P6637381605565196320.a n = (A140978 (n + 1) : ℚ)

end A140978

/-! ## A140978.P13541377105546560158

`A005563(∑[char[∑[n+1]]]+1)+1`
-/

namespace A140978.P13541377105546560158
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A140978.P13541377105546560158

namespace A140978

/-- `A005563(∑[char[∑[n+1]]]+1)+1` -/
def P13541377105546560158.Spec : Prop :=
  ∀ n, P13541377105546560158.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P11739987309763050032

`sqrt(A030179(2*(round(sqrt(2*(n+1)))+1)))`
-/

namespace A140978.P11739987309763050032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030179 (2 * (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1)).toNat : ℝ)

end

end A140978.P11739987309763050032

namespace A140978

/-- `sqrt(A030179(2*(round(sqrt(2*(n+1)))+1)))` -/
def P11739987309763050032.Spec : Prop :=
  ∀ n, P11739987309763050032.a n = (A140978 (n + 1) : ℝ)

end A140978

/-! ## A140978.P1339564837199163944

`(A000265(∑[2*char[∑[n]]]+1)+1)²/4`
-/

namespace A140978.P1339564837199163944
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000265 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1) ^ 2 : ℚ) / 4

end

end A140978.P1339564837199163944

namespace A140978

/-- `(A000265(∑[2*char[∑[n]]]+1)+1)²/4` -/
def P1339564837199163944.Spec : Prop :=
  ∀ n, P1339564837199163944.a n = (A140978 (n + 1) : ℚ)

end A140978

/-! ## A140978.P11754861615734310216

`A008740(A111652(n+1))`
-/

namespace A140978.P11754861615734310216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A111652 (n + 1)).toNat

end

end A140978.P11754861615734310216

namespace A140978

/-- `A008740(A111652(n+1))` -/
def P11754861615734310216.Spec : Prop :=
  ∀ n, P11754861615734310216.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P10812860555843418878

`A051494(A111650(n+1))`
-/

namespace A140978.P10812860555843418878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 (A111650 (n + 1)).toNat

end

end A140978.P10812860555843418878

namespace A140978

/-- `A051494(A111650(n+1))` -/
def P10812860555843418878.Spec : Prop :=
  ∀ n, P10812860555843418878.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P16184794706195351225

`A008794(A261491(n+1))`
-/

namespace A140978.P16184794706195351225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A261491 (n + 1)).toNat

end

end A140978.P16184794706195351225

namespace A140978

/-- `A008794(A261491(n+1))` -/
def P16184794706195351225.Spec : Prop :=
  ∀ n, P16184794706195351225.a n = A140978 (n + 1)

end A140978

/-! ## A140978.P16642771682747592910

`A051494(A279891(n)+2)`
-/

namespace A140978.P16642771682747592910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 (A279891 n + 2).toNat

end

end A140978.P16642771682747592910

namespace A140978

/-- `A051494(A279891(n)+2)` -/
def P16642771682747592910.Spec : Prop :=
  ∀ n, P16642771682747592910.a n = A140978 (n + 1)

end A140978

/-!
# A140979: a(n) = floor(2*phi*floor(n*phi)) where phi = A001622.

The programs for A140979, the canonical program `A140979.P10152534099308634040` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140979 has offset 1).

The definition of A140979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*ϕ*floor((n+1)*ϕ))` (program `A140979.P10152534099308634040`, by `A140979.P10152534099308634040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140979.P10152534099308634040

`floor(2*ϕ*floor((n+1)*ϕ))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140979

/-- `floor(2*ϕ*floor((n+1)*ϕ))` -/
def P10152534099308634040.Spec : Prop :=
  ∀ n, P10152534099308634040.a n = A140979 (n + 1)

theorem P10152534099308634040.correct : P10152534099308634040.Spec := by
  intro n
  simp only [A140979, Nat.add_sub_cancel]

end A140979

/-! ## A140979.P12320767679016115898

`A356217(n+1)+A000201(n+1)`
-/

namespace A140979.P12320767679016115898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356217 (n + 1) + A000201 (n + 1)

end

end A140979.P12320767679016115898

namespace A140979

/-- `A356217(n+1)+A000201(n+1)` -/
def P12320767679016115898.Spec : Prop :=
  ∀ n, P12320767679016115898.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P6982211046430243573

`A276854(floor(ϕ*(n+1)))`
-/

namespace A140979.P6982211046430243573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A140979.P6982211046430243573

namespace A140979

/-- `A276854(floor(ϕ*(n+1)))` -/
def P6982211046430243573.Spec : Prop :=
  ∀ n, P6982211046430243573.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P13628763612617786

`A004937(ceil(ϕ*(n+1))-1)+n`
-/

namespace A140979.P13628763612617786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (⌈Real.goldenRatio * (n + 1 : ℝ)⌉ - 1).toNat + (n : ℤ)

end

end A140979.P13628763612617786

namespace A140979

/-- `A004937(ceil(ϕ*(n+1))-1)+n` -/
def P13628763612617786.Spec : Prop :=
  ∀ n, P13628763612617786.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P18102414961259680480

`A007067(A000201(n+1))+A003622(n+1)`
-/

namespace A140979.P18102414961259680480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A000201 (n + 1)).toNat + A003622 (n + 1)

end

end A140979.P18102414961259680480

namespace A140979

/-- `A007067(A000201(n+1))+A003622(n+1)` -/
def P18102414961259680480.Spec : Prop :=
  ∀ n, P18102414961259680480.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P1939609296044481378

`A184656(A000201(n+1))+A001950(n+1)`
-/

namespace A140979.P1939609296044481378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184656 (A000201 (n + 1)).toNat + A001950 (n + 1)

end

end A140979.P1939609296044481378

namespace A140979

/-- `A184656(A000201(n+1))+A001950(n+1)` -/
def P1939609296044481378.Spec : Prop :=
  ∀ n, P1939609296044481378.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P2328141529681377927

`A022839(A000201(n+1))+A000201(A000027(n+1))`
-/

namespace A140979.P2328141529681377927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (A000201 (n + 1)).toNat + A000201 (A000027 (n + 1)).toNat

end

end A140979.P2328141529681377927

namespace A140979

/-- `A022839(A000201(n+1))+A000201(A000027(n+1))` -/
def P2328141529681377927.Spec : Prop :=
  ∀ n, P2328141529681377927.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P16132187066131693244

`A356217(n+1)+A072061(2*n+1)`
-/

namespace A140979.P16132187066131693244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356217 (n + 1) + A072061 (2 * n + 1)

end

end A140979.P16132187066131693244

namespace A140979

/-- `A356217(n+1)+A072061(2*n+1)` -/
def P16132187066131693244.Spec : Prop :=
  ∀ n, P16132187066131693244.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P1993302131644540771

`A000201(2*floor(ϕ*(n+1)))`
-/

namespace A140979.P1993302131644540771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋).toNat

end

end A140979.P1993302131644540771

namespace A140979

/-- `A000201(2*floor(ϕ*(n+1)))` -/
def P1993302131644540771.Spec : Prop :=
  ∀ n, P1993302131644540771.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P1689311976093912901

`A066096(A130568(n+1)-1)`
-/

namespace A140979.P1689311976093912901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A130568 (n + 1) - 1).toNat

end

end A140979.P1689311976093912901

namespace A140979

/-- `A066096(A130568(n+1)-1)` -/
def P1689311976093912901.Spec : Prop :=
  ∀ n, P1689311976093912901.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P2209293326683984080

`A066096(2*A000201(n+1))`
-/

namespace A140979.P2209293326683984080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * A000201 (n + 1)).toNat

end

end A140979.P2209293326683984080

namespace A140979

/-- `A066096(2*A000201(n+1))` -/
def P2209293326683984080.Spec : Prop :=
  ∀ n, P2209293326683984080.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P9218876090473378877

`A066096(2*A066096(n+1))`
-/

namespace A140979.P9218876090473378877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * A066096 (n + 1)).toNat

end

end A140979.P9218876090473378877

namespace A140979

/-- `A066096(2*A066096(n+1))` -/
def P9218876090473378877.Spec : Prop :=
  ∀ n, P9218876090473378877.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P16256370625790390589

`A283233(A283233(n+1))/2`
-/

namespace A140979.P16256370625790390589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283233 (A283233 (n + 1)).toNat : ℚ) / 2

end

end A140979.P16256370625790390589

namespace A140979

/-- `A283233(A283233(n+1))/2` -/
def P16256370625790390589.Spec : Prop :=
  ∀ n, P16256370625790390589.a n = (A140979 (n + 1) : ℚ)

end A140979

/-! ## A140979.P16393453826600694307

`A066096(A035336(n+1)-n)`
-/

namespace A140979.P16393453826600694307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A035336 (n + 1) - (n : ℤ)).toNat

end

end A140979.P16393453826600694307

namespace A140979

/-- `A066096(A035336(n+1)-n)` -/
def P16393453826600694307.Spec : Prop :=
  ∀ n, P16393453826600694307.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P17661359677154129066

`A022342(2*A000201(n+1))+1`
-/

namespace A140979.P17661359677154129066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (2 * A000201 (n + 1)).toNat + 1

end

end A140979.P17661359677154129066

namespace A140979

/-- `A022342(2*A000201(n+1))+1` -/
def P17661359677154129066.Spec : Prop :=
  ∀ n, P17661359677154129066.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P16729232488986298355

`A004956(2*A000201(n+1))-1`
-/

namespace A140979.P16729232488986298355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (2 * A000201 (n + 1)).toNat - 1

end

end A140979.P16729232488986298355

namespace A140979

/-- `A004956(2*A000201(n+1))-1` -/
def P16729232488986298355.Spec : Prop :=
  ∀ n, P16729232488986298355.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P12820668003667072268

`A026351(2*A000201(n+1))-1`
-/

namespace A140979.P12820668003667072268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * A000201 (n + 1)).toNat - 1

end

end A140979.P12820668003667072268

namespace A140979

/-- `A026351(2*A000201(n+1))-1` -/
def P12820668003667072268.Spec : Prop :=
  ∀ n, P12820668003667072268.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P15983869116428085616

`A022342(A035336(n+1)-n)+1`
-/

namespace A140979.P15983869116428085616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A035336 (n + 1) - (n : ℤ)).toNat + 1

end

end A140979.P15983869116428085616

namespace A140979

/-- `A022342(A035336(n+1)-n)+1` -/
def P15983869116428085616.Spec : Prop :=
  ∀ n, P15983869116428085616.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P4839274247356127775

`A066096(A003623(n+1)-(n+1))`
-/

namespace A140979.P4839274247356127775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A003623 (n + 1) - (n + 1 : ℤ)).toNat

end

end A140979.P4839274247356127775

namespace A140979

/-- `A066096(A003623(n+1)-(n+1))` -/
def P4839274247356127775.Spec : Prop :=
  ∀ n, P4839274247356127775.a n = A140979 (n + 1)

end A140979

/-! ## A140979.P7652272596993066228

`A184746(A356217(n+1))`
-/

namespace A140979.P7652272596993066228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184746 (A356217 (n + 1)).toNat

end

end A140979.P7652272596993066228

namespace A140979

/-- `A184746(A356217(n+1))` -/
def P7652272596993066228.Spec : Prop :=
  ∀ n, P7652272596993066228.a n = A140979 (n + 1)

end A140979

/-!
# A140980: Number of (4,2)-noncrossing partitions of [n].

The programs for A140980, there is no canonical definition to state claims against.
-/

/-! ## A140980.P8089464146657380332

`A064613(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A140980.P8089464146657380332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A064613 (n - 2) + a (n - 1)

end

end A140980.P8089464146657380332

/-! ## A140980.P14691842045350543698

`A125311(∑[n+3])`
-/

namespace A140980.P14691842045350543698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140980.P14691842045350543698

/-! ## A140980.P11783263131279642154

`A125311(A141214(n))+char[9]`
-/

namespace A140980.P11783263131279642154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A140980.P11783263131279642154

/-! ## A140980.P6692308834680404904

`lcm(A113143(n), A125311(A141214(n)))`
-/

namespace A140980.P6692308834680404904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113143 n) (A125311 (A141214 n).toNat)

end

end A140980.P6692308834680404904

/-! ## A140980.P861404962048496659

`A125311(A141214(n))%A070057(n+1)`
-/

namespace A140980.P861404962048496659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125311 (A141214 n).toNat) (A070057 (n + 1))

end

end A140980.P861404962048496659

/-!
# A140981: Number of graphs with n vertices that have an even determinant for the adjacency matrix.

The programs for A140981, there is no canonical definition to state claims against.
-/

/-! ## A140981.P7394621027313353378

`A133206(n+1)+A103869(n+1)`
-/

namespace A140981.P7394621027313353378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133206 (n + 1) + A103869 (n + 1)

end

end A140981.P7394621027313353378

/-! ## A140981.P9720240034138211506

`A103869(n+1)+Δ[A006897(n)]-A109717(n+1)`
-/

namespace A140981.P9720240034138211506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103869 (n + 1) + (f1 (n + 1) - f1 n - A109717 (n + 1))

end

end A140981.P9720240034138211506

/-! ## A140981.P9896623650504570395

`A103869(n+1)+A141580(n+1)+A133279(n+1)`
-/

namespace A140981.P9896623650504570395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103869 (n + 1) + (A141580 (n + 1) + A133279 (n + 1))

end

end A140981.P9896623650504570395

/-! ## A140981.P17649558159188167886

`A103869(n+1)+A000088(n+1)-A109717(n+1)`
-/

namespace A140981.P17649558159188167886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103869 (n + 1) + (A000088 (n + 1) - A109717 (n + 1))

end

end A140981.P17649558159188167886

/-! ## A140981.P12293370597471711380

`A103869(n+1)+record[A327805(n)]-A109717(n+1)`
-/

namespace A140981.P12293370597471711380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103869 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A109717 (n + 1))

end

end A140981.P12293370597471711380

/-!
# A140982: If (a_n) is a sequence then let L(a_n)=(b_n) where b_n = a_n^2 - a_{n-1} a_{n+1}. The given sequence is the rows of the triangle obtained by computing L^2(binomial(n,k)).

The programs for A140982, there is no canonical definition to state claims against.
-/

/-! ## A140982.P3207399171357246948

`A056939(n)*A104712(n+2)`
-/

namespace A140982.P3207399171357246948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 n * A104712 (n + 2)

end

end A140982.P3207399171357246948

/-! ## A140982.P17814662941247846301

`A056939(n)*A135278(A014132(n+1))`
-/

namespace A140982.P17814662941247846301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 n * A135278 (A014132 (n + 1)).toNat

end

end A140982.P17814662941247846301

/-! ## A140982.P4216806294331057095

`A048264(A124216(n))*A104712(n+2)`
-/

namespace A140982.P4216806294331057095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (A124216 n).toNat * A104712 (n + 2)

end

end A140982.P4216806294331057095

/-! ## A140982.P13799537555901463690

`A048264(A124216(n))*A135278(A014132(n+1))`
-/

namespace A140982.P13799537555901463690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (A124216 n).toNat * A135278 (A014132 (n + 1)).toNat

end

end A140982.P13799537555901463690

/-!
# A140983: E.g.f. is reversion of (2(1+x)log(1+x)+x^2+2x)/( (2+x)^2(1+x) ).

The programs for A140983, there is no canonical definition to state claims against.
-/

/-! ## A140983.P4396916637466760365

`or(A290579(n+1), A323929(A301753(n+1)))`
-/

namespace A140983.P4396916637466760365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290579 (n + 1)) (A323929 (A301753 (n + 1)).toNat)

end

end A140983.P4396916637466760365

/-!
# A140984: Half the number of n X n binary matrices, symmetric under 180 degree rotation, having equal row sums.

The programs for A140984, there is no canonical definition to state claims against.
-/

/-! ## A140984.P16230781617527290046

`∑[A229145(a(n-2))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A140984.P16230781617527290046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A229145 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140984.P16230781617527290046

/-!
# A140986: Number of n-colorings of the cubical graph.

The programs for A140986, the canonical program `A140986.P3883868556653385049` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140986 has offset 0).

The definition of A140986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140986.P3883868556653385049

`(n-1)*n*(n*(n*(n*(n*((n-11)*n+55)-159)+282)-290)+133)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140986

/-- `(n-1)*n*(n*(n*(n*(n*((n-11)*n+55)-159)+282)-290)+133)` -/
def P3883868556653385049.Spec : Prop :=
  ∀ n, P3883868556653385049.a n = A140986 n

theorem P3883868556653385049.correct : P3883868556653385049.Spec := by
  intro n
  simp only [A140986]

end A140986

/-! ## A140986.P1638086747536641049

`A277443(∑[n+3])`
-/

namespace A140986.P1638086747536641049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140986.P1638086747536641049

namespace A140986

/-- `A277443(∑[n+3])` -/
def P1638086747536641049.Spec : Prop :=
  ∀ n, P1638086747536641049.a n = A140986 n

end A140986

/-! ## A140986.P11945186468309946152

`lcm(2, A277443(A141214(n)))`
-/

namespace A140986.P11945186468309946152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A277443 (A141214 n).toNat)

end

end A140986.P11945186468309946152

namespace A140986

/-- `lcm(2, A277443(A141214(n)))` -/
def P11945186468309946152.Spec : Prop :=
  ∀ n, (P11945186468309946152.a n : ℤ) = A140986 n

end A140986

/-! ## A140986.P15299418964918811453

`A277443(A141214(n))%A057080(n)`
-/

namespace A140986.P15299418964918811453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277443 (A141214 n).toNat) (A057080 n)

end

end A140986.P15299418964918811453

namespace A140986

/-- `A277443(A141214(n))%A057080(n)` -/
def P15299418964918811453.Spec : Prop :=
  ∀ n, P15299418964918811453.a n = A140986 n

end A140986

/-!
# A140987: Number of groups of order F(n).

The programs for A140987, there is no canonical definition to state claims against.
-/

/-! ## A140987.P12089057480985192914

`A000001(A000045(n+1))`
-/

namespace A140987.P12089057480985192914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000045 (n + 1)).toNat

end

end A140987.P12089057480985192914

/-! ## A140987.P2864138694271069226

`A000001(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A140987.P2864138694271069226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (n + 1) - f1 n).toNat

end

end A140987.P2864138694271069226

/-! ## A140987.P5250841707367693136

`A000001(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A140987.P5250841707367693136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (n + 1) - f1 n).toNat

end

end A140987.P5250841707367693136

/-! ## A140987.P10361411735232292948

`A000001(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A140987.P10361411735232292948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140987.P10361411735232292948

/-! ## A140987.P13293342043221135402

`A000001(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A140987.P13293342043221135402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140987.P13293342043221135402

/-!
# A140988: Half the number of symmetric n X n binary matrices having equal row sums.

The programs for A140988, there is no canonical definition to state claims against.
-/

/-! ## A140988.P7744786448086534519

`record[A140879(n+1)]`
-/

namespace A140988.P7744786448086534519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140988.P7744786448086534519

/-! ## A140988.P964120318921089449

`A140879(2*(n+1))`
-/

namespace A140988.P964120318921089449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140879 (2 * (n + 1))

end

end A140988.P964120318921089449

/-! ## A140988.P920163752911669461

`A322698(n+1)/2`
-/

namespace A140988.P920163752911669461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322698 (n + 1) : ℚ) / 2

end

end A140988.P920163752911669461

/-! ## A140988.P1011851838488419643

`Δ[∑[A322698(n)]/2]`
-/

namespace A140988.P1011851838488419643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322698 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140988.P1011851838488419643

/-!
# A140989: Half the number of n X n binary matrices, symmetric about both diagonal and antidiagonal, having equal row sums.

The programs for A140989, there is no canonical definition to state claims against.
-/

/-! ## A140989.P17319477693086243129

`∑[A052126(A167019(n))]`
-/

namespace A140989.P17319477693086243129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A167019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140989.P17319477693086243129

/-! ## A140989.P14691833120378815304

`A152237(A002426(n))+n`
-/

namespace A140989.P14691833120378815304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152237 (A002426 n).toNat + (n : ℤ)

end

end A140989.P14691833120378815304

/-!
# A140990: Half the number of n X n binary matrices having equal row sums.

The programs for A140990, there is no canonical definition to state claims against.
-/

/-! ## A140990.P15302332010697838755

`A167010(n+1)/2`
-/

namespace A140990.P15302332010697838755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167010 (n + 1) : ℚ) / 2

end

end A140990.P15302332010697838755

/-! ## A140990.P17331839312102839280

`Δ[∑[A167010(n)]/2]`
-/

namespace A140990.P17331839312102839280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167010 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140990.P17331839312102839280

/-! ## A140990.P12814890736098201594

`record[A167010(A193592(n))/2]`
-/

namespace A140990.P12814890736098201594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167010 (A193592 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140990.P12814890736098201594

/-! ## A140990.P8278871173347874574

`A309010(A046092(n+1))/2`
-/

namespace A140990.P8278871173347874574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309010 (A046092 (n + 1)).toNat : ℚ) / 2

end

end A140990.P8278871173347874574

/-! ## A140990.P16653363523431955987

`record[A167010(A278045(n))/2]`
-/

namespace A140990.P16653363523431955987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167010 (A278045 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140990.P16653363523431955987

/-!
# A140991: a(n) = (1/9)*(7*2^n + (-1)^n*(3*n+2)) - (n-1)^2.

The programs for A140991, the canonical program `A140991.P67649880405592751` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140991 has offset 0).

The definition of A140991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140991.P67649880405592751

`A006904(n+4)-(n-1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140991

/-- `A006904(n+4)-(n-1)²` -/
def P67649880405592751.Spec : Prop :=
  ∀ n, P67649880405592751.a n = A140991 n

theorem P67649880405592751.correct : P67649880405592751.Spec := by
  intro n
  simp only [A140991]

end A140991

/-! ## A140991.P842563066363022933

`1/9*(7*2^n+(-1)^n*(3*n+2))-(n-1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140991.P842563066363022933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * ((7 * 2 ^ n : ℤ) + (-1) ^ n * (3 * n + 2 : ℤ) : ℚ) - (((n : ℤ) - 1) ^ 2 : ℚ)

end

end A140991.P842563066363022933

namespace A140991

/-- `1/9*(7*2^n+(-1)^n*(3*n+2))-(n-1)²` -/
def P842563066363022933.Spec : Prop :=
  ∀ n, P842563066363022933.a n = (A140991 n : ℚ)

end A140991

/-!
# A140992: a(0) = 0, a(1) = 1; for n > 1, a(n) = a(n-2) + a(n-1) + A000071(n+1).

The programs for A140992, the canonical program `A140992.P7781271617900783477` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140992 has offset 0).

The definition of A140992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140992.P7781271617900783477

`a(n-2)+a(n-1)+A000071(n+1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140992

/-- `a(n-2)+a(n-1)+A000071(n+1)` -/
def P7781271617900783477.Spec : Prop :=
  ∀ n, P7781271617900783477.a n = A140992 n

theorem P7781271617900783477.correct : P7781271617900783477.Spec := by
  intro n
  simp only [A140992]

end A140992

/-! ## A140992.P12875864672532710807

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=11`
-/

namespace A140992.P12875864672532710807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5, 11] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + a (n - 4) + a (n - 5)

end

end A140992.P12875864672532710807

namespace A140992

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P12875864672532710807.Spec : Prop :=
  ∀ n, P12875864672532710807.a n = A140992 n

end A140992

/-! ## A140992.P12641437766386225900

`∑[A055244(floor(n²*acot(n)))]-1`
-/

namespace A140992.P12641437766386225900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 ⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140992.P12641437766386225900

namespace A140992

/-- `∑[A055244(floor(n²*acot(n)))]-1` -/
def P12641437766386225900.Spec : Prop :=
  ∀ n, P12641437766386225900.a n = A140992 n

end A140992

/-! ## A140992.P11463904839241793611

`∑[a(n-1)+A000045(n-1)+a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A140992.P11463904839241793611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) + (A000045 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140992.P11463904839241793611

namespace A140992

/-- `∑[a(n-1)+A000045(n-1)+a(n-2)]` -/
def P11463904839241793611.Spec : Prop :=
  ∀ n, P11463904839241793611.a n = A140992 n

end A140992

/-! ## A140992.P1876759970511162870

`A029907(n)+A006478(n)`
-/

namespace A140992.P1876759970511162870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + A006478 n

end

end A140992.P1876759970511162870

namespace A140992

/-- `A029907(n)+A006478(n)` -/
def P1876759970511162870.Spec : Prop :=
  ∀ n, P1876759970511162870.a n = A140992 n

end A140992

/-! ## A140992.P6937171286664934343

`A131253(n)-A192969(n)`
-/

namespace A140992.P6937171286664934343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131253 n - A192969 n

end

end A140992.P6937171286664934343

namespace A140992

/-- `A131253(n)-A192969(n)` -/
def P6937171286664934343.Spec : Prop :=
  ∀ n, P6937171286664934343.a n = A140992 n

end A140992

/-! ## A140992.P11534601283432435671

`A000045(n)+∑[A001629(n)]`
-/

namespace A140992.P11534601283432435671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140992.P11534601283432435671

namespace A140992

/-- `A000045(n)+∑[A001629(n)]` -/
def P11534601283432435671.Spec : Prop :=
  ∀ n, P11534601283432435671.a n = A140992 n

end A140992

/-! ## A140992.P12653288654589296628

`A006478(n+1)+A000045(n)`
-/

namespace A140992.P12653288654589296628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (n + 1) + A000045 n

end

end A140992.P12653288654589296628

namespace A140992

/-- `A006478(n+1)+A000045(n)` -/
def P12653288654589296628.Spec : Prop :=
  ∀ n, P12653288654589296628.a n = A140992 n

end A140992

/-! ## A140992.P3368988870682745093

`A001629(n+2)-A001595(n)`
-/

namespace A140992.P3368988870682745093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) - A001595 n

end

end A140992.P3368988870682745093

namespace A140992

/-- `A001629(n+2)-A001595(n)` -/
def P3368988870682745093.Spec : Prop :=
  ∀ n, P3368988870682745093.a n = A140992 n

end A140992

/-! ## A140992.P693246137396612494

`A212804(n+1)+∑[A001629(n)]`
-/

namespace A140992.P693246137396612494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140992.P693246137396612494

namespace A140992

/-- `A212804(n+1)+∑[A001629(n)]` -/
def P693246137396612494.Spec : Prop :=
  ∀ n, P693246137396612494.a n = A140992 n

end A140992

/-! ## A140992.P15694746397813880191

`A001611(n)+∑[A001629(n)]-1`
-/

namespace A140992.P15694746397813880191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A140992.P15694746397813880191

namespace A140992

/-- `A001611(n)+∑[A001629(n)]-1` -/
def P15694746397813880191.Spec : Prop :=
  ∀ n, P15694746397813880191.a n = A140992 n

end A140992

/-! ## A140992.P16597986587859720848

`∑[A029907(n)]-A000071(n+1)`
-/

namespace A140992.P16597986587859720848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000071 (n + 1)

end

end A140992.P16597986587859720848

namespace A140992

/-- `∑[A029907(n)]-A000071(n+1)` -/
def P16597986587859720848.Spec : Prop :=
  ∀ n, P16597986587859720848.a n = A140992 n

end A140992

/-! ## A140992.P16049364995204152952

`∑[A001629(n)]+A002062(n)-n`
-/

namespace A140992.P16049364995204152952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002062 n - (n : ℤ))

end

end A140992.P16049364995204152952

namespace A140992

/-- `∑[A001629(n)]+A002062(n)-n` -/
def P16049364995204152952.Spec : Prop :=
  ∀ n, P16049364995204152952.a n = A140992 n

end A140992

/-! ## A140992.P2310584156010858173

`∑{d}[n, A007436(#)]+∑[A001629(n)]`
-/

namespace A140992.P2310584156010858173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A140992.P2310584156010858173

namespace A140992

/-- `∑{d}[n, A007436(#)]+∑[A001629(n)]` -/
def P2310584156010858173.Spec : Prop :=
  ∀ n, P2310584156010858173.a n = A140992 n

end A140992

/-! ## A140992.P18156937950521103562

`A006478(n+1)+A001611(n)-1`
-/

namespace A140992.P18156937950521103562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (n + 1) + (A001611 n - 1)

end

end A140992.P18156937950521103562

namespace A140992

/-- `A006478(n+1)+A001611(n)-1` -/
def P18156937950521103562.Spec : Prop :=
  ∀ n, P18156937950521103562.a n = A140992 n

end A140992

/-! ## A140992.P12339255548061721262

`Δ[A000071(n+1)]+∑[A001629(n)]`
-/

namespace A140992.P12339255548061721262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A140992.P12339255548061721262

namespace A140992

/-- `Δ[A000071(n+1)]+∑[A001629(n)]` -/
def P12339255548061721262.Spec : Prop :=
  ∀ n, P12339255548061721262.a n = A140992 n

end A140992

/-! ## A140992.P11015478190738060674

`A006478(n+1)+Δ[A000071(n+1)]`
-/

namespace A140992.P11015478190738060674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (n + 1) + (f1 (n + 1) - f1 n)

end

end A140992.P11015478190738060674

namespace A140992

/-- `A006478(n+1)+Δ[A000071(n+1)]` -/
def P11015478190738060674.Spec : Prop :=
  ∀ n, P11015478190738060674.a n = A140992 n

end A140992

/-! ## A140992.P10623469796711242781

`A006478(n+1)+Δ[A001611(n+1)]`
-/

namespace A140992.P10623469796711242781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (n + 1) + (f1 (n + 1) - f1 n)

end

end A140992.P10623469796711242781

namespace A140992

/-- `A006478(n+1)+Δ[A001611(n+1)]` -/
def P10623469796711242781.Spec : Prop :=
  ∀ n, P10623469796711242781.a n = A140992 n

end A140992

/-! ## A140992.P4827037091890794473

`A055244(n+1)-∑[A000045(n+1)]`
-/

namespace A140992.P4827037091890794473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140992.P4827037091890794473

namespace A140992

/-- `A055244(n+1)-∑[A000045(n+1)]` -/
def P4827037091890794473.Spec : Prop :=
  ∀ n, P4827037091890794473.a n = A140992 n

end A140992

/-! ## A140992.P6679645837678952486

`A006478(n+1)+A006355(n+1)/2`
-/

namespace A140992.P6679645837678952486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006478 (n + 1) : ℚ) + (A006355 (n + 1) : ℚ) / 2

end

end A140992.P6679645837678952486

namespace A140992

/-- `A006478(n+1)+A006355(n+1)/2` -/
def P6679645837678952486.Spec : Prop :=
  ∀ n, P6679645837678952486.a n = (A140992 n : ℚ)

end A140992

/-!
# A140993: Triangle G(n, k) read by rows, for 1 <= k <= n, where G(n, n) = G(n+1, 1) = 1, G(n+2, 2) = 2, G(n+3, m) = G(n+1, m-1) + G(n+1, m-2) + G(n+2, m-1) for n >= 1 and m = 3..(n+2).

The programs for A140993, there is no canonical definition to state claims against.
-/

/-! ## A140993.P193569832818164697

`A140998(∑[2*n]%comp[∑[n]])`
-/

namespace A140993.P193569832818164697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140998 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A140993.P193569832818164697

/-! ## A140993.P6957291613441326066

`A140998(∑[char[∑[n]]]²-(n+1))`
-/

namespace A140993.P6957291613441326066
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140998 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A140993.P6957291613441326066

/-! ## A140993.P4813279038413944044

`and(-1, A140998(A061579(n)))`
-/

namespace A140993.P4813279038413944044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A140998 (A061579 n).toNat)

end

end A140993.P4813279038413944044

/-! ## A140993.P10854292628329037531

`A140998(A061579(n))%A017487(n)`
-/

namespace A140993.P10854292628329037531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140998 (A061579 n).toNat) (A017487 n)

end

end A140993.P10854292628329037531

/-! ## A140993.P17630665670523933164

`gcd(A000038(n), A140998(A061579(n)))`
-/

namespace A140993.P17630665670523933164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A140998 (A061579 n).toNat)

end

end A140993.P17630665670523933164

/-! ## A140993.P9894538980534091312

`lcm(A020985(n), A140998(A061579(n)))`
-/

namespace A140993.P9894538980534091312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A140998 (A061579 n).toNat)

end

end A140993.P9894538980534091312

/-! ## A140993.P12497474631819890916

`A140998(A061579(n))+∏{d}[n+1, A001222(#)]`
-/

namespace A140993.P12497474631819890916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140998 (A061579 n).toNat + ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A140993.P12497474631819890916

/-!
# A140994: Triangle G(n, k), for 0 <= k <= n, read by rows, where G(n, n) = G(n+1, 0) = 1, G(n+2, 1) = 2, G(n+3, 2) = 4, G(n+4, m) = G(n+1, m-2) + G(n+1, m-3) + G(n+2, m-2) + G(n+3, m-1) for n >= 0 and m = 3..(n+3).

The programs for A140994, there is no canonical definition to state claims against.
-/

/-! ## A140994.P13238958309645221184

`A140997(∑[2*n]%comp[∑[n]])`
-/

namespace A140994.P13238958309645221184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A140994.P13238958309645221184

/-! ## A140994.P9412676547536152964

`A140997(A061579(n))`
-/

namespace A140994.P9412676547536152964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (A061579 n).toNat

end

end A140994.P9412676547536152964

/-! ## A140994.P3808220411353884181

`A140997(A114327(n)+n)`
-/

namespace A140994.P3808220411353884181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (A114327 n + (n : ℤ)).toNat

end

end A140994.P3808220411353884181

/-! ## A140994.P16456891491840047136

`A140997(A038722(n+1)-1)`
-/

namespace A140994.P16456891491840047136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (A038722 (n + 1) - 1).toNat

end

end A140994.P16456891491840047136

/-! ## A140994.P7456136487360467521

`A140997(A002024(n+1)²-(n+1))`
-/

namespace A140994.P7456136487360467521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A140994.P7456136487360467521

/-! ## A140994.P12699448200749617127

`A140997(A000194(2*(n+1))^2-(n+1))`
-/

namespace A140994.P12699448200749617127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (A000194 (2 * (n + 1)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A140994.P12699448200749617127

/-! ## A140994.P4438669664807064178

`A140997(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A140994.P4438669664807064178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A140994.P4438669664807064178

/-! ## A140994.P4186848483956839524

`A140997(A038722(n+2))`
-/

namespace A140994.P4186848483956839524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (A038722 (n + 2)).toNat

end

end A140994.P4186848483956839524

/-!
# A140995: Triangle G(n, k) read by rows, for 0 <= k <= n, where G(n, n) = G(n+1, 0) = 1, G(n+2, 1) = 2, G(n+3, 2) = 4, G(n+4, 3) = 8, and G(n+5, m) = G(n+1, m-3) + G(n+1, m-4) + G(n+2, m-3) + G(n+3, m-2) + G(n+4, m-1) for n >= 0 and m = 4..(n+4).

The programs for A140995, there is no canonical definition to state claims against.
-/

/-! ## A140995.P17643512020697861730

`A140996(∑[2*n]%comp[∑[n]])`
-/

namespace A140995.P17643512020697861730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A140995.P17643512020697861730

/-! ## A140995.P15093357292677829291

`A140996(∑[char[∑[n]]]²-(n+1))`
-/

namespace A140995.P15093357292677829291
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A140995.P15093357292677829291

/-! ## A140995.P5231003356770453993

`or(char[1], A140996(A061579(n)))`
-/

namespace A140995.P5231003356770453993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A140996 (A061579 n).toNat)

end

end A140995.P5231003356770453993

/-! ## A140995.P7877523617507278867

`A140996(A061579(n))^A178334(n)`
-/

namespace A140995.P7877523617507278867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140996 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A140995.P7877523617507278867

/-! ## A140995.P13858871449248596442

`A140996(A061579(n))%A002148(n)`
-/

namespace A140995.P13858871449248596442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140996 (A061579 n).toNat) (A002148 n)

end

end A140995.P13858871449248596442

/-! ## A140995.P7790349937724220594

`gcd(A000038(n), A140996(A061579(n)))`
-/

namespace A140995.P7790349937724220594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A140996 (A061579 n).toNat)

end

end A140995.P7790349937724220594

/-! ## A140995.P7447098881642239915

`A140996(A061579(n))+A008683(4*(n+1))`
-/

namespace A140995.P7447098881642239915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A140995.P7447098881642239915

/-! ## A140995.P17804113799153956015

`C(A140996(A061579(n)), A000040(n+1)%2)`
-/

namespace A140995.P17804113799153956015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140996 (A061579 n).toNat).toNat (Int.tmod (A000040 (n + 1)) 2).toNat

end

end A140995.P17804113799153956015

/-! ## A140995.P12875891701426539782

`A000040(∑{d}[n+1, #%2]+1)%2*A140996(A061579(n))`
-/

namespace A140995.P12875891701426539782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (∑ d ∈ Nat.divisors (f1 n), d % 2 + 1)) 2 * A140996 (A061579 n).toNat

end

end A140995.P12875891701426539782

/-!
# A140996: Triangle G(n, k) read by rows for 0 <= k <= n, where G(n, 0) = G(n+1, n+1) = 1, G(n+2, n+1) = 2, G(n+3, n+1) = 4, G(n+4, n+1) = 8, and G(n+5, m) = G(n+1, m-1) + G(n+1, m) + G(n+2, m) + G(n+3, m) + G(n+4, m) for n >= 0 for m = 1..(n+1).

The programs for A140996, there is no canonical definition to state claims against.
-/

/-! ## A140996.P3388774064978794611

`A140995(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A140996.P3388774064978794611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140995 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A140996.P3388774064978794611

/-! ## A140996.P25426349911369943

`A140995(gcd(A010816(n), A061579(n)))`
-/

namespace A140996.P25426349911369943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140995 (Int.gcd (A010816 n) (A061579 n))

end

end A140996.P25426349911369943

/-! ## A140996.P12807139894192369723

`A140995(A061579(n)*A114607(n+1))`
-/

namespace A140996.P12807139894192369723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140995 (A061579 n * A114607 (n + 1)).toNat

end

end A140996.P12807139894192369723

/-! ## A140996.P7125906984464150744

`A140995(∑[char[∑[n]]]²-(n+1))`
-/

namespace A140996.P7125906984464150744
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140995 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A140996.P7125906984464150744

/-! ## A140996.P4568571518723813614

`and(-1, A140995(A061579(n)))`
-/

namespace A140996.P4568571518723813614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A140995 (A061579 n).toNat)

end

end A140996.P4568571518723813614

/-! ## A140996.P10898170263773297021

`A140995(∑[2*n]%comp[∑[n]])%A146081(n)`
-/

namespace A140996.P10898170263773297021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140995 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)) (A146081 n)

end

end A140996.P10898170263773297021

/-! ## A140996.P5753589185776814855

`A140995(A061579(n))%A005010(n)`
-/

namespace A140996.P5753589185776814855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140995 (A061579 n).toNat) (A005010 n)

end

end A140996.P5753589185776814855

/-!
# A140997: Triangle G(n,k) read by rows, for 0 <= k <= n, where G(n, 0) = G(n+1, n+1) = 1, G(n+2, n+1) = 2, G(n+3, n+1) = 4, and G(n+4, m) = G(n+1, m-1) + G(n+1, m) + G(n+2, m) + G(n+3, m) for n >= 0 and m = 1..n+1.

The programs for A140997, there is no canonical definition to state claims against.
-/

/-! ## A140997.P10023497456133182330

`A140994(∑[char[∑[n]]]²-n-1)`
-/

namespace A140997.P10023497456133182330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140994 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A140997.P10023497456133182330

/-! ## A140997.P17817046328359061542

`A140994(A061579(n))+A000035(2*n)`
-/

namespace A140997.P17817046328359061542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140994 (A061579 n).toNat + A000035 (2 * n)

end

end A140997.P17817046328359061542

/-! ## A140997.P17700026966914458893

`A140994(A061579(n))+A000007(2*(n+2))`
-/

namespace A140997.P17700026966914458893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140994 (A061579 n).toNat + A000007 (2 * (n + 2))

end

end A140997.P17700026966914458893

/-! ## A140997.P4651178729704291565

`A171919(3*n+5)+A140994(A061579(n))`
-/

namespace A140997.P4651178729704291565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171919 (3 * n + 5) + A140994 (A061579 n).toNat

end

end A140997.P4651178729704291565

/-! ## A140997.P7352547932050174724

`A140994(A038722(n+2))+A128834(A016945(n))`
-/

namespace A140997.P7352547932050174724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140994 (A038722 (n + 2)).toNat + A128834 (A016945 n).toNat

end

end A140997.P7352547932050174724

/-! ## A140997.P17835795481396112866

`A140994(A038722(n+2))+A128834(A028242(3*n)+2)`
-/

namespace A140997.P17835795481396112866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140994 (A038722 (n + 2)).toNat + A128834 (A028242 (3 * n) + 2).toNat

end

end A140997.P17835795481396112866

/-! ## A140997.P12445239601013821389

`A140994(A038722(n+2))%A063991(A000010(n+1))`
-/

namespace A140997.P12445239601013821389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140994 (A038722 (n + 2)).toNat) (A063991 (A000010 (n + 1)).toNat)

end

end A140997.P12445239601013821389

/-! ## A140997.P12125829949839800325

`A140994(A038722(n+2))%A063991(n+1)`
-/

namespace A140997.P12125829949839800325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140994 (A038722 (n + 2)).toNat) (A063991 (n + 1))

end

end A140997.P12125829949839800325

/-!
# A140998: Triangle G(n, k), read by rows, for 0 <= k <= n, where G(n, 0) = G(n+1, n+1) = 1, G(n+2, n+1) = 2, and G(n+3, m) = G(n+1, m-1) + G(n+1, m) + G(n+2, m) for n >= 0 and m = 1..n+1.

The programs for A140998, there is no canonical definition to state claims against.
-/

/-! ## A140998.P14534504951353127707

`A140993(A002378(n)%A080036(n)+1)`
-/

namespace A140998.P14534504951353127707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140993 (Int.tmod (A002378 n) (A080036 n) + 1).toNat

end

end A140998.P14534504951353127707

/-! ## A140998.P16202830857769410279

`A140993(gcd(A010816(n), A038722(n+1)))`
-/

namespace A140998.P16202830857769410279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140993 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A140998.P16202830857769410279

/-! ## A140998.P4596739797248801387

`A140993(∑[char[∑[n]]]²-n)`
-/

namespace A140998.P4596739797248801387
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140993 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A140998.P4596739797248801387

/-! ## A140998.P16176212298446790984

`A140993(A038722(n+1))%A002148(n)`
-/

namespace A140998.P16176212298446790984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140993 (A038722 (n + 1)).toNat) (A002148 n)

end

end A140998.P16176212298446790984

/-! ## A140998.P16765758010859486891

`gcd(A000038(n), A140993(A038722(n+1)))`
-/

namespace A140998.P16765758010859486891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A140993 (A038722 (n + 1)).toNat)

end

end A140998.P16765758010859486891

/-! ## A140998.P2751719604493456604

`lcm(A020985(n), A140993(A038722(n+1)))`
-/

namespace A140998.P2751719604493456604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A140993 (A038722 (n + 1)).toNat)

end

end A140998.P2751719604493456604

