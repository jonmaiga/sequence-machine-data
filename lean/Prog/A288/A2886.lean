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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-!
# A288600: Fixed point of the mapping 00->0101, 10->1001, starting with 00.

The programs for A288600, the canonical program `A288600.P16115501771230486977` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288600 has offset 1).

The definition of A288600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288600.P12187896201355286721

`char[A283794(n+1)]`
-/

namespace A288600.P12187896201355286721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288600.P12187896201355286721

namespace A288600

/-- `char[A283794(n+1)]` -/
def P12187896201355286721.Spec : Prop :=
  ∀ n, (P12187896201355286721.a n : ℤ) = A288600 (n + 1)

end A288600

/-! ## A288600.P17343602134812211991

`char[A288602(n+1)-1]`
-/

namespace A288600.P17343602134812211991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288602 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288600.P17343602134812211991

namespace A288600

/-- `char[A288602(n+1)-1]` -/
def P17343602134812211991.Spec : Prop :=
  ∀ n, (P17343602134812211991.a n : ℤ) = A288600 (n + 1)

end A288600

/-! ## A288600.P1674391586369867025

`char[comp[A288601(n+1)-1]]`
-/

namespace A288600.P1674391586369867025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288601 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288600.P1674391586369867025

namespace A288600

/-- `char[comp[A288601(n+1)-1]]` -/
def P1674391586369867025.Spec : Prop :=
  ∀ n, (P1674391586369867025.a n : ℤ) = A288600 (n + 1)

end A288600

/-! ## A288600.P1588353369913323425

`char[eq[1, A288375(n+1)]+1]`
-/

namespace A288600.P1588353369913323425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288600.P1588353369913323425

namespace A288600

/-- `char[eq[1, A288375(n+1)]+1]` -/
def P1588353369913323425.Spec : Prop :=
  ∀ n, (P1588353369913323425.a n : ℤ) = A288600 (n + 1)

end A288600

/-! ## A288600.P14866000615964263455

`char[A288931(2*n+1)-n]`
-/

namespace A288600.P14866000615964263455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (2 * n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288600.P14866000615964263455

namespace A288600

/-- `char[A288931(2*n+1)-n]` -/
def P14866000615964263455.Spec : Prop :=
  ∀ n, (P14866000615964263455.a n : ℤ) = A288600 (n + 1)

end A288600

/-! ## A288600.P16115501771230486977

`A288375(2-(2-n)%(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A288600

/-- `A288375(2-(2-n)%(n+1))` -/
def P16115501771230486977.Spec : Prop :=
  ∀ n, P16115501771230486977.a n = A288600 (n + 1)

theorem P16115501771230486977.correct : P16115501771230486977.Spec := by
  intro n
  simp only [A288600, Nat.add_sub_cancel]

end A288600

/-! ## A288600.P14404132190591099909

`A288375((2*n+1)%(n+2)+1)`
-/

namespace A288600.P14404132190591099909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 ((2 * n + 1) % (n + 2) + 1)

end

end A288600.P14404132190591099909

namespace A288600

/-- `A288375((2*n+1)%(n+2)+1)` -/
def P14404132190591099909.Spec : Prop :=
  ∀ n, P14404132190591099909.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P5414039882468171070

`A288375(2*A028310(n)-n)`
-/

namespace A288600.P5414039882468171070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (2 * A028310 n - (n : ℤ)).toNat

end

end A288600.P5414039882468171070

namespace A288600

/-- `A288375(2*A028310(n)-n)` -/
def P5414039882468171070.Spec : Prop :=
  ∀ n, P5414039882468171070.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P11461632011256326631

`A288375(A156706(C(2, n²)+1)+n+1)`
-/

namespace A288600.P11461632011256326631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (A156706 (Nat.choose 2 (n ^ 2) + 1) + (n : ℤ) + 1).toNat

end

end A288600.P11461632011256326631

namespace A288600

/-- `A288375(A156706(C(2, n²)+1)+n+1)` -/
def P11461632011256326631.Spec : Prop :=
  ∀ n, P11461632011256326631.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P6424555835355989552

`A057427(n*A288375(A028310(n)))`
-/

namespace A288600.P6424555835355989552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A288375 (A028310 n).toNat).toNat

end

end A288600.P6424555835355989552

namespace A288600

/-- `A057427(n*A288375(A028310(n)))` -/
def P6424555835355989552.Spec : Prop :=
  ∀ n, P6424555835355989552.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P14302302762543136578

`A288375(A028310(n)+1-A057427(n))`
-/

namespace A288600.P14302302762543136578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (A028310 n + (1 - A057427 n)).toNat

end

end A288600.P14302302762543136578

namespace A288600

/-- `A288375(A028310(n)+1-A057427(n))` -/
def P14302302762543136578.Spec : Prop :=
  ∀ n, P14302302762543136578.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P9866549812321328782

`A288375(1-(A057427(n)-A028310(n)))`
-/

namespace A288600.P9866549812321328782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (1 - (A057427 n - A028310 n)).toNat

end

end A288600.P9866549812321328782

namespace A288600

/-- `A288375(1-(A057427(n)-A028310(n)))` -/
def P9866549812321328782.Spec : Prop :=
  ∀ n, P9866549812321328782.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P2761296920887719308

`A288375(A028310(n)+A028310(n)-n)`
-/

namespace A288600.P2761296920887719308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (A028310 n + (A028310 n - (n : ℤ))).toNat

end

end A288600.P2761296920887719308

namespace A288600

/-- `A288375(A028310(n)+A028310(n)-n)` -/
def P2761296920887719308.Spec : Prop :=
  ∀ n, P2761296920887719308.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P12450505429707084683

`A288375(A028310(n)-(n-A028310(n)))`
-/

namespace A288600.P12450505429707084683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (A028310 n - ((n : ℤ) - A028310 n)).toNat

end

end A288600.P12450505429707084683

namespace A288600

/-- `A288375(A028310(n)-(n-A028310(n)))` -/
def P12450505429707084683.Spec : Prop :=
  ∀ n, P12450505429707084683.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P12380233668862940252

`A288375(or(n, A288352(2*(n+2))))`
-/

namespace A288600.P12380233668862940252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (Int.lor (n : ℤ) (A288352 (2 * (n + 2)))).toNat

end

end A288600.P12380233668862940252

namespace A288600

/-- `A288375(or(n, A288352(2*(n+2))))` -/
def P12380233668862940252.Spec : Prop :=
  ∀ n, P12380233668862940252.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P6990729169680601115

`A288375(A288352(3*n+4)+n)`
-/

namespace A288600.P6990729169680601115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (A288352 (3 * n + 4) + (n : ℤ)).toNat

end

end A288600.P6990729169680601115

namespace A288600

/-- `A288375(A288352(3*n+4)+n)` -/
def P6990729169680601115.Spec : Prop :=
  ∀ n, P6990729169680601115.a n = A288600 (n + 1)

end A288600

/-! ## A288600.P7985007430046603255

`and(A180516(n+1), A288375(A028310(n)))`
-/

namespace A288600.P7985007430046603255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180516 (n + 1)) (A288375 (A028310 n).toNat)

end

end A288600.P7985007430046603255

namespace A288600

/-- `and(A180516(n+1), A288375(A028310(n)))` -/
def P7985007430046603255.Spec : Prop :=
  ∀ n, P7985007430046603255.a n = A288600 (n + 1)

end A288600

/-!
# A288601: Positions of 0 in A288600; complement of A288602.

The programs for A288601, the canonical program `A288601.P5777185184981331824` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288601 has offset 1).

The definition of A288601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288601.P5777185184981331824

`comp[A283794(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A288601

/-- `comp[A283794(n+1)]+1` -/
def P5777185184981331824.Spec : Prop :=
  ∀ n, (P5777185184981331824.a n : ℤ) = A288601 (n + 1)

theorem P5777185184981331824.correct : P5777185184981331824.Spec := by
  intro n
  simp only [A288601, Nat.add_sub_cancel]

end A288601

/-! ## A288601.P9314360024637139258

`comp[A288602(n+1)-1]+1`
-/

namespace A288601.P9314360024637139258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288602 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288601.P9314360024637139258

namespace A288601

/-- `comp[A288602(n+1)-1]+1` -/
def P9314360024637139258.Spec : Prop :=
  ∀ n, (P9314360024637139258.a n : ℤ) = A288601 (n + 1)

end A288601

/-! ## A288601.P11106401500022824160

`lt[A288600(n+1), 1]+1`
-/

namespace A288601.P11106401500022824160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288601.P11106401500022824160

namespace A288601

/-- `lt[A288600(n+1), 1]+1` -/
def P11106401500022824160.Spec : Prop :=
  ∀ n, (P11106401500022824160.a n : ℤ) = A288601 (n + 1)

end A288601

/-! ## A288601.P12084238280770333683

`lt[n*A288600(A028310(n)), n]`
-/

namespace A288601.P12084238280770333683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288600 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288601.P12084238280770333683

namespace A288601

/-- `lt[n*A288600(A028310(n)), n]` -/
def P12084238280770333683.Spec : Prop :=
  ∀ n, (P12084238280770333683.a n : ℤ) = A288601 (n + 1)

end A288601

/-! ## A288601.P12403344707191266913

`record[n+1-A005843(n*A288600(n+1))]`
-/

namespace A288601.P12403344707191266913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 ((n : ℤ) * A288600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288601.P12403344707191266913

namespace A288601

/-- `record[n+1-A005843(n*A288600(n+1))]` -/
def P12403344707191266913.Spec : Prop :=
  ∀ n, P12403344707191266913.a n = A288601 (n + 1)

end A288601

/-! ## A288601.P3449786926433556370

`record[n+1-A133280(n*A288600(n+1))]`
-/

namespace A288601.P3449786926433556370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A133280 ((n : ℤ) * A288600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288601.P3449786926433556370

namespace A288601

/-- `record[n+1-A133280(n*A288600(n+1))]` -/
def P3449786926433556370.Spec : Prop :=
  ∀ n, P3449786926433556370.a n = A288601 (n + 1)

end A288601

/-! ## A288601.P4689203993856454089

`record[n+1-A000203(n+1)*A288600(n+1)]`
-/

namespace A288601.P4689203993856454089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000203 (n + 1) * A288600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288601.P4689203993856454089

namespace A288601

/-- `record[n+1-A000203(n+1)*A288600(n+1)]` -/
def P4689203993856454089.Spec : Prop :=
  ∀ n, P4689203993856454089.a n = A288601 (n + 1)

end A288601

/-! ## A288601.P7923210587187208469

`eq[A000038(n), A288600(A000038(n)+n)]`
-/

namespace A288601.P7923210587187208469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288601.P7923210587187208469

namespace A288601

/-- `eq[A000038(n), A288600(A000038(n)+n)]` -/
def P7923210587187208469.Spec : Prop :=
  ∀ n, (P7923210587187208469.a n : ℤ) = A288601 (n + 1)

end A288601

/-! ## A288601.P5687784438097196271

`eq[A000007(n), A288600(A000007(n)+n)]`
-/

namespace A288601.P5687784438097196271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288601.P5687784438097196271

namespace A288601

/-- `eq[A000007(n), A288600(A000007(n)+n)]` -/
def P5687784438097196271.Spec : Prop :=
  ∀ n, (P5687784438097196271.a n : ℤ) = A288601 (n + 1)

end A288601

/-! ## A288601.P8866420907474348349

`A008619(record[(n+1)*(2-A288375(n+1))])`
-/

namespace A288601.P8866420907474348349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A288375 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A288601.P8866420907474348349

namespace A288601

/-- `A008619(record[(n+1)*(2-A288375(n+1))])` -/
def P8866420907474348349.Spec : Prop :=
  ∀ n, P8866420907474348349.a n = A288601 (n + 1)

end A288601

/-!
# A288602: Positions of 1 in A288600; complement of A288601.

The programs for A288602, the canonical program `A288602.P9324771817530744836` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288602 has offset 1).

The definition of A288602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288602.P9324771817530744836

`A283794(n+1)+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A288602

/-- `A283794(n+1)+1` -/
def P9324771817530744836.Spec : Prop :=
  ∀ n, P9324771817530744836.a n = A288602 (n + 1)

theorem P9324771817530744836.correct : P9324771817530744836.Spec := by
  intro n
  simp only [A288602, Nat.add_sub_cancel]

end A288602

/-! ## A288602.P4384633119985173243

`A288931(Δ[n²])-(n-1)`
-/

namespace A288602.P4384633119985173243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((n : ℤ) - 1)

end

end A288602.P4384633119985173243

namespace A288602

/-- `A288931(Δ[n²])-(n-1)` -/
def P4384633119985173243.Spec : Prop :=
  ∀ n, P4384633119985173243.a n = A288602 (n + 1)

end A288602

/-! ## A288602.P2174722961744781843

`eq[1, A288375(n+1)]+2`
-/

namespace A288602.P2174722961744781843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A288602.P2174722961744781843

namespace A288602

/-- `eq[1, A288375(n+1)]+2` -/
def P2174722961744781843.Spec : Prop :=
  ∀ n, (P2174722961744781843.a n : ℤ) = A288602 (n + 1)

end A288602

/-! ## A288602.P13239210805050243639

`A020725(A283794(n+1))`
-/

namespace A288602.P13239210805050243639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A283794 (n + 1)).toNat

end

end A288602.P13239210805050243639

namespace A288602

/-- `A020725(A283794(n+1))` -/
def P13239210805050243639.Spec : Prop :=
  ∀ n, P13239210805050243639.a n = A288602 (n + 1)

end A288602

/-! ## A288602.P10769063502106925735

`filter[n+1, A288600(#)]`
-/

namespace A288602.P10769063502106925735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288600 (f1 j) = 1) n)

end

end A288602.P10769063502106925735

namespace A288602

/-- `filter[n+1, A288600(#)]` -/
def P10769063502106925735.Spec : Prop :=
  ∀ n, (P10769063502106925735.a n : ℤ) = A288602 (n + 1)

end A288602

/-! ## A288602.P12874994728947500327

`lt[0, A288600(n+1)]+1`
-/

namespace A288602.P12874994728947500327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288602.P12874994728947500327

namespace A288602

/-- `lt[0, A288600(n+1)]+1` -/
def P12874994728947500327.Spec : Prop :=
  ∀ n, (P12874994728947500327.a n : ℤ) = A288602 (n + 1)

end A288602

/-! ## A288602.P1030124720967144964

`lt[0, A288600(A028310(n))]`
-/

namespace A288602.P1030124720967144964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288602.P1030124720967144964

namespace A288602

/-- `lt[0, A288600(A028310(n))]` -/
def P1030124720967144964.Spec : Prop :=
  ∀ n, (P1030124720967144964.a n : ℤ) = A288602 (n + 1)

end A288602

/-! ## A288602.P13215428815742863910

`eq[1, A288600(A000007(n)+n)]`
-/

namespace A288602.P13215428815742863910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288602.P13215428815742863910

namespace A288602

/-- `eq[1, A288600(A000007(n)+n)]` -/
def P13215428815742863910.Spec : Prop :=
  ∀ n, (P13215428815742863910.a n : ℤ) = A288602 (n + 1)

end A288602

/-! ## A288602.P6591819456954479136

`eq[1, A288600(A130706(n)+n)]`
-/

namespace A288602.P6591819456954479136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288602.P6591819456954479136

namespace A288602

/-- `eq[1, A288600(A130706(n)+n)]` -/
def P6591819456954479136.Spec : Prop :=
  ∀ n, (P6591819456954479136.a n : ℤ) = A288602 (n + 1)

end A288602

/-! ## A288602.P10688081552519553596

`eq[1, A288600(A169585(n)+n)]`
-/

namespace A288602.P10688081552519553596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (A169585 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288602.P10688081552519553596

namespace A288602

/-- `eq[1, A288600(A169585(n)+n)]` -/
def P10688081552519553596.Spec : Prop :=
  ∀ n, (P10688081552519553596.a n : ℤ) = A288602 (n + 1)

end A288602

/-!
# A288603: a(n) = 2*a(n-1) - a(n-3) for n >= 3, where a(0) = 2, a(1) = 4, a(2) = 6, a(3) = 8.

The programs for A288603, the canonical program `A288603.P6951966911550313138` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288603 has offset 0).

The definition of A288603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)` (program `A288603.P6951966911550313138`, by `A288603.P6951966911550313138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288603.P6951966911550313138

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288603

/-- `2*a(n-1)-a(n-3)` -/
def P6951966911550313138.Spec : Prop :=
  ∀ n, P6951966911550313138.a n = A288603 n

theorem P6951966911550313138.correct : P6951966911550313138.Spec := by
  intro n
  simp only [A288603]

end A288603

/-! ## A288603.P13367275911145561390

`a(n-1)+a(n-2)-2` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A288603.P13367275911145561390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 1) + (a (n - 2) - 2)

end

end A288603.P13367275911145561390

namespace A288603

/-- `a(n-1)+a(n-2)-2` -/
def P13367275911145561390.Spec : Prop :=
  ∀ n, P13367275911145561390.a n = A288603 n

end A288603

/-! ## A288603.P16500050694582832849

`a(n-1)-(2-a(n-2))` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A288603.P16500050694582832849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 1) - (2 - a (n - 2))

end

end A288603.P16500050694582832849

namespace A288603

/-- `a(n-1)-(2-a(n-2))` -/
def P16500050694582832849.Spec : Prop :=
  ∀ n, P16500050694582832849.a n = A288603 n

end A288603

/-! ## A288603.P7025510301156226841

`record[2*(A053602(n)+1)]`
-/

namespace A288603.P7025510301156226841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053602 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288603.P7025510301156226841

namespace A288603

/-- `record[2*(A053602(n)+1)]` -/
def P7025510301156226841.Spec : Prop :=
  ∀ n, P7025510301156226841.a n = A288603 n

end A288603

/-! ## A288603.P12876049696007360959

`or(1, A128588(n+1))+1`
-/

namespace A288603.P12876049696007360959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A128588 (n + 1)) + 1

end

end A288603.P12876049696007360959

namespace A288603

/-- `or(1, A128588(n+1))+1` -/
def P12876049696007360959.Spec : Prop :=
  ∀ n, P12876049696007360959.a n = A288603 n

end A288603

/-! ## A288603.P7765326159145223772

`∑[abs(A128587(n+1))+1]`
-/

namespace A288603.P7765326159145223772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128587 (n + 1)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288603.P7765326159145223772

namespace A288603

/-- `∑[abs(A128587(n+1))+1]` -/
def P7765326159145223772.Spec : Prop :=
  ∀ n, P7765326159145223772.a n = A288603 n

end A288603

/-! ## A288603.P2686077259281193245

`A006355(n)+a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A288603.P2686077259281193245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A006355 n + a (n - 1)

end

end A288603.P2686077259281193245

namespace A288603

/-- `A006355(n)+a(n-1)` -/
def P2686077259281193245.Spec : Prop :=
  ∀ n, P2686077259281193245.a n = A288603 n

end A288603

/-! ## A288603.P15948583017967625473

`A118658(n)+a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A288603.P15948583017967625473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A118658 n + a (n - 1)

end

end A288603.P15948583017967625473

namespace A288603

/-- `A118658(n)+a(n-1)` -/
def P15948583017967625473.Spec : Prop :=
  ∀ n, P15948583017967625473.a n = A288603 n

end A288603

/-! ## A288603.P6301928634681411372

`A055389(n)+a(n-2)` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A288603.P6301928634681411372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  A055389 n + a (n - 2)

end

end A288603.P6301928634681411372

namespace A288603

/-- `A055389(n)+a(n-2)` -/
def P6301928634681411372.Spec : Prop :=
  ∀ n, P6301928634681411372.a n = A288603 n

end A288603

/-! ## A288603.P11069092049470461325

`A128588(n)+a(n-2)` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A288603.P11069092049470461325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  A128588 n + a (n - 2)

end

end A288603.P11069092049470461325

namespace A288603

/-- `A128588(n)+a(n-2)` -/
def P11069092049470461325.Spec : Prop :=
  ∀ n, P11069092049470461325.a n = A288603 n

end A288603

/-! ## A288603.P11433540287067281814

`2*floor((A000045(n+2)+2)/ϕ)`
-/

namespace A288603.P11433540287067281814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A000045 (n + 2) + 2 : ℝ) / Real.goldenRatio⌋

end

end A288603.P11433540287067281814

namespace A288603

/-- `2*floor((A000045(n+2)+2)/ϕ)` -/
def P11433540287067281814.Spec : Prop :=
  ∀ n, P11433540287067281814.a n = A288603 n

end A288603

/-! ## A288603.P10252367604971421925

`2*∑[A000045(char[1]+abs(1-n))]`
-/

namespace A288603.P10252367604971421925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + |1 - (n : ℤ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288603.P10252367604971421925

namespace A288603

/-- `2*∑[A000045(char[1]+abs(1-n))]` -/
def P10252367604971421925.Spec : Prop :=
  ∀ n, P10252367604971421925.a n = A288603 n

end A288603

/-! ## A288603.P7963512400400831194

`∑[2*A000045(n-floor(atan(n-1)))]`
-/

namespace A288603.P7963512400400831194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 ((n : ℤ) - ⌊Real.arctan ((n : ℤ) - 1 : ℝ)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288603.P7963512400400831194

namespace A288603

/-- `∑[2*A000045(n-floor(atan(n-1)))]` -/
def P7963512400400831194.Spec : Prop :=
  ∀ n, P7963512400400831194.a n = A288603 n

end A288603

/-! ## A288603.P4814190073171918545

`a(n-1)+2*A000045(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A288603.P4814190073171918545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + 2 * A000045 (n - 1)

end

end A288603.P4814190073171918545

namespace A288603

/-- `a(n-1)+2*A000045(n-1)` -/
def P4814190073171918545.Spec : Prop :=
  ∀ n, P4814190073171918545.a n = A288603 n

end A288603

/-! ## A288603.P338579792538753664

`∑[2*A000045(C(2, n+1)+n-1)]`
-/

namespace A288603.P338579792538753664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 ((Nat.choose 2 (n + 1) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288603.P338579792538753664

namespace A288603

/-- `∑[2*A000045(C(2, n+1)+n-1)]` -/
def P338579792538753664.Spec : Prop :=
  ∀ n, P338579792538753664.a n = A288603 n

end A288603

/-! ## A288603.P1882589625017391752

`A122553(n)+A001595(n)`
-/

namespace A288603.P1882589625017391752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + A001595 n

end

end A288603.P1882589625017391752

namespace A288603

/-- `A122553(n)+A001595(n)` -/
def P1882589625017391752.Spec : Prop :=
  ∀ n, P1882589625017391752.a n = A288603 n

end A288603

/-! ## A288603.P2478433258305187463

`A040002(n)+A019274(n+1)`
-/

namespace A288603.P2478433258305187463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n + A019274 (n + 1)

end

end A288603.P2478433258305187463

namespace A288603

/-- `A040002(n)+A019274(n+1)` -/
def P2478433258305187463.Spec : Prop :=
  ∀ n, P2478433258305187463.a n = A288603 n

end A288603

/-!
# A288604: a(n) = (n^9 - n)/10.

The programs for A288604, the canonical program `A288604.P14789957343447714302` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288604 has offset 1).

The definition of A288604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288604.P14789957343447714302

`((n+1)^9-(n+1))/10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288604

/-- `((n+1)^9-(n+1))/10` -/
def P14789957343447714302.Spec : Prop :=
  ∀ n, P14789957343447714302.a n = (A288604 (n + 1) : ℚ)

end A288604

/-! ## A288604.P1477688107070251897

`∑[Δ[A196289(n)]/10]`
-/

namespace A288604.P1477688107070251897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196289 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288604.P1477688107070251897

namespace A288604

/-- `∑[Δ[A196289(n)]/10]` -/
def P1477688107070251897.Spec : Prop :=
  ∀ n, P1477688107070251897.a n = (A288604 (n + 1) : ℚ)

end A288604

/-! ## A288604.P16188134654235473926

`∑[(Δ[A001017(n)]-1)/10]`
-/

namespace A288604.P16188134654235473926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n - 1 : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288604.P16188134654235473926

namespace A288604

/-- `∑[(Δ[A001017(n)]-1)/10]` -/
def P16188134654235473926.Spec : Prop :=
  ∀ n, P16188134654235473926.a n = (A288604 (n + 1) : ℚ)

end A288604

/-! ## A288604.P8057801348252608998

`((n+1)²²+1)*A164938(n+1)`
-/

namespace A288604.P8057801348252608998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 + 1 : ℤ) * A164938 (n + 1)

end

end A288604.P8057801348252608998

namespace A288604

/-- `((n+1)²²+1)*A164938(n+1)` -/
def P8057801348252608998.Spec : Prop :=
  ∀ n, P8057801348252608998.a n = A288604 (n + 1)

end A288604

/-! ## A288604.P16534154685917563901

`A228292(n+1)/2*n/5`
-/

namespace A288604.P16534154685917563901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228292 (n + 1) : ℚ) / 2 * ((n : ℚ) / 5)

end

end A288604.P16534154685917563901

namespace A288604

/-- `A228292(n+1)/2*n/5` -/
def P16534154685917563901.Spec : Prop :=
  ∀ n, P16534154685917563901.a n = (A288604 (n + 1) : ℚ)

end A288604

/-!
# A288605: Position of first appearance of each integer in A088568 (number of 1's minus number of 2's in first n terms of A000002).

The programs for A288605, there is no canonical definition to state claims against.
-/

/-! ## A288605.P8420742599366399407

`A274775(n+1)+A062157(A007918(n))`
-/

namespace A288605.P8420742599366399407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274775 (n + 1) + A062157 (A007918 n).toNat

end

end A288605.P8420742599366399407

/-! ## A288605.P17701771485738042675

`A274775(n+1)+A010815(A094497(n))`
-/

namespace A288605.P17701771485738042675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274775 (n + 1) + A010815 (A094497 n).toNat

end

end A288605.P17701771485738042675

/-! ## A288605.P7031639407192679885

`A274775(n+1)+A158388(A002264(n))`
-/

namespace A288605.P7031639407192679885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274775 (n + 1) + A158388 (A002264 n).toNat

end

end A288605.P7031639407192679885

/-! ## A288605.P8143834298799314166

`A274775(n+1)+A158388(A289207(n))`
-/

namespace A288605.P8143834298799314166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274775 (n + 1) + A158388 (A289207 n).toNat

end

end A288605.P8143834298799314166

/-! ## A288605.P7090458497601249039

`A274775(n+1)-A153881(A065033(n))`
-/

namespace A288605.P7090458497601249039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274775 (n + 1) - A153881 (A065033 n).toNat

end

end A288605.P7090458497601249039

/-!
# A288606: E.g.f. expansion of f(x) around x = 1, where f(x) is the coefficient from the tetration asymptotic: x^^n = x^^inf - f(x)*log(x^^inf)^n + O(log(x^^inf)^(2*n)).

The programs for A288606, there is no canonical definition to state claims against.
-/

/-! ## A288606.P15659389009483712286

`A226390(n^n+n)-1`
-/

namespace A288606.P15659389009483712286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (n ^ n + n) - 1

end

end A288606.P15659389009483712286

/-! ## A288606.P7855757729934461132

`A144001(A150943(n))`
-/

namespace A288606.P7855757729934461132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144001 (A150943 n).toNat

end

end A288606.P7855757729934461132

/-!
# A288607: Exponential reversion of A288606.

The programs for A288607, there is no canonical definition to state claims against.
-/

/-! ## A288607.P2900151779628434188

`A062157(n)*A086582(round(∑[3*2^(n-2)]))`
-/

namespace A288607.P2900151779628434188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A086582 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A288607.P2900151779628434188

/-! ## A288607.P15645894989672747018

`A346482(A349310(n))-A293532(n)`
-/

namespace A288607.P15645894989672747018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346482 (A349310 n).toNat - A293532 n

end

end A288607.P15645894989672747018

/-!
# A288608: Primes of the form k!6+3, where k!6 is the sextuple factorial number (A085158).

The programs for A288608, there is no canonical definition to state claims against.
-/

/-! ## A288608.P6846229846762046453

`A085158(A287844(n+1))+3`
-/

namespace A288608.P6846229846762046453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A287844 (n + 1)).toNat + 3

end

end A288608.P6846229846762046453

/-! ## A288608.P10736346948039324548

`p?[A085158(n)+3]`
-/

namespace A288608.P10736346948039324548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288608.P10736346948039324548

/-! ## A288608.P9334526317712842684

`p?[A129116(A052905(n+2))+3]`
-/

namespace A288608.P9334526317712842684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A052905 (n + 2)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288608.P9334526317712842684

/-!
# A288609: Primes of the form k!6+4, where k!6 is the sextuple factorial number (A085158).

The programs for A288609, there is no canonical definition to state claims against.
-/

/-! ## A288609.P6476308605920647147

`A085158(A287914(n+1))+4`
-/

namespace A288609.P6476308605920647147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A287914 (n + 1)).toNat + 4

end

end A288609.P6476308605920647147

/-! ## A288609.P10445948005471496920

`p?[A085158(n+1)+4]`
-/

namespace A288609.P10445948005471496920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288609.P10445948005471496920

/-! ## A288609.P5355714731194983880

`record[∑{p}[A085158(n)+4, #]]`
-/

namespace A288609.P5355714731194983880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288609.P5355714731194983880

/-! ## A288609.P11427676069215836708

`p?[A255176(n)+A085158(n)]`
-/

namespace A288609.P11427676069215836708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n + A085158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288609.P11427676069215836708

/-!
# A288610: Primes of the form k!6+6, where k!6 is the sextuple factorial number (A085158).

The programs for A288610, there is no canonical definition to state claims against.
-/

/-! ## A288610.P1002174385599399524

`A085158(A287956(n+1))+6`
-/

namespace A288610.P1002174385599399524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A287956 (n + 1)).toNat + 6

end

end A288610.P1002174385599399524

/-! ## A288610.P16339946519257954554

`p?[A288612(n+1)-6]`
-/

namespace A288610.P16339946519257954554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288612 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288610.P16339946519257954554

/-!
# A288611: Primes of the form k!6+8, where k!6 is the sextuple factorial number (A085158).

The programs for A288611, there is no canonical definition to state claims against.
-/

/-! ## A288611.P5438800647257833535

`A085158(A288152(n+1))+8`
-/

namespace A288611.P5438800647257833535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A288152 (n + 1)).toNat + 8

end

end A288611.P5438800647257833535

/-!
# A288612: Primes of the form k!6+12, where k!6 is the sextuple factorial number (A085158).

The programs for A288612, there is no canonical definition to state claims against.
-/

/-! ## A288612.P6677199042808176856

`p?[A085158(n+1)+12]`
-/

namespace A288612.P6677199042808176856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288612.P6677199042808176856

/-! ## A288612.P17616263148317633855

`record[A020639(A085158(n)+12)]`
-/

namespace A288612.P17616263148317633855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A085158 n + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288612.P17616263148317633855

/-! ## A288612.P9472327399113679660

`record[A014963(A085158(n)+12)]`
-/

namespace A288612.P9472327399113679660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A085158 n + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288612.P9472327399113679660

/-!
# A288613: Primes of the form k!6+16, where k!6 is the sextuple factorial number (A085158).

The programs for A288613, there is no canonical definition to state claims against.
-/

/-! ## A288613.P2328884757154962515

`A085158(A288444(n+1))+16`
-/

namespace A288613.P2328884757154962515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A288444 (n + 1)).toNat + 16

end

end A288613.P2328884757154962515

/-! ## A288613.P15709365899815960987

`A085158(eq[A083382(n+4), A083912(n+1)])+16`
-/

namespace A288613.P15709365899815960987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 16

end

end A288613.P15709365899815960987

/-! ## A288613.P6346034779544773741

`p?[A085158(n+1)+16]`
-/

namespace A288613.P6346034779544773741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288613.P6346034779544773741

/-! ## A288613.P15895974548620945533

`record[A006530(A085158(n)+16)]`
-/

namespace A288613.P15895974548620945533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085158 n + 16).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288613.P15895974548620945533

/-! ## A288613.P16485156492134580728

`record[A020639(A085158(n)+16)]`
-/

namespace A288613.P16485156492134580728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A085158 n + 16).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288613.P16485156492134580728

/-!
# A288614: Primes of the form k!6+18, where k!6 is the sextuple factorial number (A085158).

The programs for A288614, there is no canonical definition to state claims against.
-/

/-! ## A288614.P5556510751269649451

`A085158(A288445(n+1))+18`
-/

namespace A288614.P5556510751269649451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A288445 (n + 1)).toNat + 18

end

end A288614.P5556510751269649451

/-! ## A288614.P13172629735996928934

`p?[A288612(n+1)+6]`
-/

namespace A288614.P13172629735996928934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288612 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288614.P13172629735996928934

/-! ## A288614.P14059298892497194326

`p?[A085158(n+1)+18]`
-/

namespace A288614.P14059298892497194326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288614.P14059298892497194326

/-!
# A288615: Primes of the form k!6+24, where k!6 is the sextuple factorial number (A085158).

The programs for A288615, there is no canonical definition to state claims against.
-/

/-! ## A288615.P8835011727282741865

`A085158(A288446(n+1))+24`
-/

namespace A288615.P8835011727282741865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A288446 (n + 1)).toNat + 24

end

end A288615.P8835011727282741865

/-! ## A288615.P16298408223376435738

`p?[A085158(n)+24]`
-/

namespace A288615.P16298408223376435738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288615.P16298408223376435738

/-!
# A288616: Primes of the form k!6+27, where k!6 is the sextuple factorial number (A085158).

The programs for A288616, there is no canonical definition to state claims against.
-/

/-! ## A288616.P5590436516199668495

`A085158(A288447(n+1))+27`
-/

namespace A288616.P5590436516199668495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A288447 (n + 1)).toNat + 27

end

end A288616.P5590436516199668495

/-! ## A288616.P16387941217312941217

`p?[A085158(n)+27]`
-/

namespace A288616.P16387941217312941217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n + 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288616.P16387941217312941217

/-! ## A288616.P8949883340945973334

`p?[A288608(n+1)+24]`
-/

namespace A288616.P8949883340945973334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288608 (n + 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288616.P8949883340945973334

/-!
# A288617: Primes of the form k!6+32, where k!6 is the sextuple factorial number (A085158).

The programs for A288617, there is no canonical definition to state claims against.
-/

/-! ## A288617.P15766140592795909661

`A085158(A288448(n+1))+32`
-/

namespace A288617.P15766140592795909661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A288448 (n + 1)).toNat + 32

end

end A288617.P15766140592795909661

/-!
# A288618: Primes of the form k!6+36, where k!6 is the sextuple factorial number (A085158).

The programs for A288618, there is no canonical definition to state claims against.
-/

/-! ## A288618.P15811242181175772212

`A085158(A288449(n+1))+36`
-/

namespace A288618.P15811242181175772212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A288449 (n + 1)).toNat + 36

end

end A288618.P15811242181175772212

/-! ## A288618.P13067210515112851323

`p?[A085158(n+1)+36]`
-/

namespace A288618.P13067210515112851323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (n + 1) + 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288618.P13067210515112851323

/-!
# A288619: Primes of the form k!6+48, where k!6 is the sextuple factorial number (A085158).

The programs for A288619, there is no canonical definition to state claims against.
-/

/-! ## A288619.P7685056428055785066

`A085158(A288450(n+1))+48`
-/

namespace A288619.P7685056428055785066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A288450 (n + 1)).toNat + 48

end

end A288619.P7685056428055785066

/-!
# A288620: Triangle read by rows: T(n,k) = number of step shifted (decimated) sequence structures of length n using exactly k different symbols.

The programs for A288620, there is no canonical definition to state claims against.
-/

/-! ## A288620.P1673483487747986561

`A331953(A268436(n))`
-/

namespace A288620.P1673483487747986561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331953 (A268436 n).toNat

end

end A288620.P1673483487747986561

/-! ## A288620.P11281093402137593429

`A093684(A343804(n)²)`
-/

namespace A288620.P11281093402137593429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093684 (A343804 n ^ 2).toNat

end

end A288620.P11281093402137593429

/-! ## A288620.P15266025608161081896

`A114792(A142589(n))%9`
-/

namespace A288620.P15266025608161081896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114792 (A142589 n).toNat) 9

end

end A288620.P15266025608161081896

/-! ## A288620.P3252221402133908028

`A227185((A039755(n)+2)²+1)`
-/

namespace A288620.P3252221402133908028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 ((A039755 n + 2) ^ 2 + 1).toNat

end

end A288620.P3252221402133908028

/-! ## A288620.P14632738141377644907

`A265745(C(n+1, A320796(n+1))-n)`
-/

namespace A288620.P14632738141377644907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (Nat.choose (n + 1) (A320796 (n + 1)).toNat - n)

end

end A288620.P14632738141377644907

/-!
# A288621: Number of step shifted (decimated) sequence structures of length n using an infinite alphabet.

The programs for A288621, there is no canonical definition to state claims against.
-/

/-! ## A288621.P6189899560812314099

`A185284(n²+1)+A056395(n+1)`
-/

namespace A288621.P6189899560812314099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2 + 1) + A056395 (n + 1)

end

end A288621.P6189899560812314099

/-! ## A288621.P2688972627983857909

`A118685(A001519(n))+A056395(n+1)`
-/

namespace A288621.P2688972627983857909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118685 (A001519 n).toNat + A056395 (n + 1)

end

end A288621.P2688972627983857909

/-! ## A288621.P2408392379654525521

`A347519(A001317(n))+A056395(n+1)`
-/

namespace A288621.P2408392379654525521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347519 (A001317 n).toNat + A056395 (n + 1)

end

end A288621.P2408392379654525521

/-!
# A288622: 0-limiting word of the mapping 00->0110, 1->01, starting with 00.

The programs for A288622, there is no canonical definition to state claims against.
-/

/-! ## A288622.P6622329484226172317

`char[A288624(n+1)-1]`
-/

namespace A288622.P6622329484226172317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288624 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288622.P6622329484226172317

/-! ## A288622.P3766144134843234033

`A007814(Δ[A288753(n+1)])`
-/

namespace A288622.P3766144134843234033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (n + 1) - f1 n).toNat

end

end A288622.P3766144134843234033

/-! ## A288622.P13601680840548510932

`A059841(Δ[A288753(n+1)])`
-/

namespace A288622.P13601680840548510932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (f1 (n + 1) - f1 n).toNat

end

end A288622.P13601680840548510932

/-! ## A288622.P3898854634333432474

`A244119(Δ[A288753(n+1)])`
-/

namespace A288622.P3898854634333432474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244119 (f1 (n + 1) - f1 n).toNat

end

end A288622.P3898854634333432474

/-! ## A288622.P3309269855673049200

`A275851(Δ[A288753(n+1)])`
-/

namespace A288622.P3309269855673049200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 (f1 (n + 1) - f1 n).toNat

end

end A288622.P3309269855673049200

/-!
# A288623: Positions of 0 in A288622; complement of A288624.

The programs for A288623, there is no canonical definition to state claims against.
-/

/-! ## A288623.P17484244652673314176

`comp[A288624(n+1)-1]+1`
-/

namespace A288623.P17484244652673314176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288624 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288623.P17484244652673314176

/-! ## A288623.P11808746981425918614

`lt[A001006(A087774(n)), A374706(3*n+5)]`
-/

namespace A288623.P11808746981425918614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A087774 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288623.P11808746981425918614

/-! ## A288623.P6784160353235542156

`lt[A212121(n+4), Δ[A301674(n)]]`
-/

namespace A288623.P6784160353235542156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212121 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288623.P6784160353235542156

/-! ## A288623.P2612251651988329418

`A123740(A000225(n+2))+2*n`
-/

namespace A288623.P2612251651988329418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A000225 (n + 2)).toNat + (2 * n : ℤ)

end

end A288623.P2612251651988329418

/-! ## A288623.P2530553473998859378

`A011751(A130041(n+2))+2*n`
-/

namespace A288623.P2530553473998859378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011751 (A130041 (n + 2)).toNat + (2 * n : ℤ)

end

end A288623.P2530553473998859378

/-!
# A288624: Positions of 1 in A288622; complement of A288623.

The programs for A288624, there is no canonical definition to state claims against.
-/

/-! ## A288624.P7326391178058003351

`filter[n+1, A288622(#)]`
-/

namespace A288624.P7326391178058003351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288622 (f1 j) = 1) n)

end

end A288624.P7326391178058003351

/-! ## A288624.P8411126755559977794

`record[(n+3)*A288622(n+3)]`
-/

namespace A288624.P8411126755559977794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A288622 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288624.P8411126755559977794

/-! ## A288624.P8788272922401351978

`eq[1, A288622(A065033(A005843(n)))]`
-/

namespace A288624.P8788272922401351978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288622 (A065033 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288624.P8788272922401351978

/-! ## A288624.P11468972188445503281

`eq[1, A288622(A233583(n+1))]`
-/

namespace A288624.P11468972188445503281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288622 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288624.P11468972188445503281

/-! ## A288624.P7122966215874215903

`lt[A000007(n), n*A288622(A233583(n+1))]`
-/

namespace A288624.P7122966215874215903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288622 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288624.P7122966215874215903

/-! ## A288624.P17751384656392618072

`lt[n/A115285(n), A288622(A233583(n+1))]`
-/

namespace A288624.P17751384656392618072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A115285 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288622 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A288624.P17751384656392618072

/-!
# A288625: Positions of 0 in A288375; complement of A283794.

The programs for A288625, the canonical program `A288625.P5745602300368746224` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288625 has offset 1).

The definition of A288625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288625.P5396604523430435327

`A219641(n)+2+n`
-/

namespace A288625.P5396604523430435327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + 2 + (n : ℤ)

end

end A288625.P5396604523430435327

namespace A288625

/-- `A219641(n)+2+n` -/
def P5396604523430435327.Spec : Prop :=
  ∀ n, P5396604523430435327.a n = A288625 (n + 1)

end A288625

/-! ## A288625.P4666171821948052376

`2*(n+1)-A007895(n)`
-/

namespace A288625.P4666171821948052376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A007895 n

end

end A288625.P4666171821948052376

namespace A288625

/-- `2*(n+1)-A007895(n)` -/
def P4666171821948052376.Spec : Prop :=
  ∀ n, P4666171821948052376.a n = A288625 (n + 1)

end A288625

/-! ## A288625.P9649656250099411388

`comp[A283794(n+1)-1]+1`
-/

namespace A288625.P9649656250099411388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288625.P9649656250099411388

namespace A288625

/-- `comp[A283794(n+1)-1]+1` -/
def P9649656250099411388.Spec : Prop :=
  ∀ n, (P9649656250099411388.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P15362173712085596997

`comp[A288602(n+1)-2]+1`
-/

namespace A288625.P15362173712085596997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288602 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288625.P15362173712085596997

namespace A288625

/-- `comp[A288602(n+1)-2]+1` -/
def P15362173712085596997.Spec : Prop :=
  ∀ n, (P15362173712085596997.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P7116945905251751934

`(A288930(n+1)+n+2)/2`
-/

namespace A288625.P7116945905251751934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288930 (n + 1) + (n + 2 : ℤ) : ℚ) / 2

end

end A288625.P7116945905251751934

namespace A288625

/-- `(A288930(n+1)+n+2)/2` -/
def P7116945905251751934.Spec : Prop :=
  ∀ n, P7116945905251751934.a n = (A288625 (n + 1) : ℚ)

end A288625

/-! ## A288625.P5745602300368746224

`2*n+3-A143299(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A288625

/-- `2*n+3-A143299(n+1)` -/
def P5745602300368746224.Spec : Prop :=
  ∀ n, P5745602300368746224.a n = A288625 (n + 1)

theorem P5745602300368746224.correct : P5745602300368746224.Spec := by
  intro n
  simp only [A288625, Nat.add_sub_cancel]

end A288625

/-! ## A288625.P14094347095407322819

`A287659(n+1)-A213911(n)`
-/

namespace A288625.P14094347095407322819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287659 (n + 1) - A213911 n

end

end A288625.P14094347095407322819

namespace A288625

/-- `A287659(n+1)-A213911(n)` -/
def P14094347095407322819.Spec : Prop :=
  ∀ n, P14094347095407322819.a n = A288625 (n + 1)

end A288625

/-! ## A288625.P14661720689776951809

`A003231(n+1)-(A007895(n)+A000201(n+1))`
-/

namespace A288625.P14661720689776951809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) - (A007895 n + A000201 (n + 1))

end

end A288625.P14661720689776951809

namespace A288625

/-- `A003231(n+1)-(A007895(n)+A000201(n+1))` -/
def P14661720689776951809.Spec : Prop :=
  ∀ n, P14661720689776951809.a n = A288625 (n + 1)

end A288625

/-! ## A288625.P1295293081615655493

`A000120(n+1)+A005187(n+1)-A007895(n)`
-/

namespace A288625.P1295293081615655493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A005187 (n + 1) - A007895 n)

end

end A288625.P1295293081615655493

namespace A288625

/-- `A000120(n+1)+A005187(n+1)-A007895(n)` -/
def P1295293081615655493.Spec : Prop :=
  ∀ n, P1295293081615655493.a n = A288625 (n + 1)

end A288625

/-! ## A288625.P13351608292721641507

`A288601(n+2)-1`
-/

namespace A288625.P13351608292721641507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288601 (n + 2) - 1

end

end A288625.P13351608292721641507

namespace A288625

/-- `A288601(n+2)-1` -/
def P13351608292721641507.Spec : Prop :=
  ∀ n, P13351608292721641507.a n = A288625 (n + 1)

end A288625

/-! ## A288625.P15350229279304253582

`∑[abs(Δ[A288601(n+1)])]`
-/

namespace A288625.P15350229279304253582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288601 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288625.P15350229279304253582

namespace A288625

/-- `∑[abs(Δ[A288601(n+1)])]` -/
def P15350229279304253582.Spec : Prop :=
  ∀ n, P15350229279304253582.a n = A288625 (n + 1)

end A288625

/-! ## A288625.P9971049334749632429

`lt[A288375(n+1), 1]+1`
-/

namespace A288625.P9971049334749632429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288625.P9971049334749632429

namespace A288625

/-- `lt[A288375(n+1), 1]+1` -/
def P9971049334749632429.Spec : Prop :=
  ∀ n, (P9971049334749632429.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P3322196032454051706

`lt[A288600(n+2), 1]+1`
-/

namespace A288625.P3322196032454051706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288625.P3322196032454051706

namespace A288625

/-- `lt[A288600(n+2), 1]+1` -/
def P3322196032454051706.Spec : Prop :=
  ∀ n, (P3322196032454051706.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P3062717839842595545

`lt[A288600(A028310(n)+1), 1]`
-/

namespace A288625.P3062717839842595545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (A028310 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288625.P3062717839842595545

namespace A288625

/-- `lt[A288600(A028310(n)+1), 1]` -/
def P3062717839842595545.Spec : Prop :=
  ∀ n, (P3062717839842595545.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P16855362319495820919

`eq[A000007(n), A288600(n+1)]`
-/

namespace A288625.P16855362319495820919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288625.P16855362319495820919

namespace A288625

/-- `eq[A000007(n), A288600(n+1)]` -/
def P16855362319495820919.Spec : Prop :=
  ∀ n, (P16855362319495820919.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P3021327692302294849

`eq[A000038(n), A288600(n+1)]`
-/

namespace A288625.P3021327692302294849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288625.P3021327692302294849

namespace A288625

/-- `eq[A000038(n), A288600(n+1)]` -/
def P3021327692302294849.Spec : Prop :=
  ∀ n, (P3021327692302294849.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P17117077732825667622

`eq[A130706(n), A288600(n+1)]`
-/

namespace A288625.P17117077732825667622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288625.P17117077732825667622

namespace A288625

/-- `eq[A130706(n), A288600(n+1)]` -/
def P17117077732825667622.Spec : Prop :=
  ∀ n, (P17117077732825667622.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P12619869209671153089

`eq[A169585(n), A288600(n+1)]`
-/

namespace A288625.P12619869209671153089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288625.P12619869209671153089

namespace A288625

/-- `eq[A169585(n), A288600(n+1)]` -/
def P12619869209671153089.Spec : Prop :=
  ∀ n, (P12619869209671153089.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P16639988255532732209

`eq[1, A288600(n+1)+A054977(n)]`
-/

namespace A288625.P16639988255532732209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1) + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288625.P16639988255532732209

namespace A288625

/-- `eq[1, A288600(n+1)+A054977(n)]` -/
def P16639988255532732209.Spec : Prop :=
  ∀ n, (P16639988255532732209.a n : ℤ) = A288625 (n + 1)

end A288625

/-! ## A288625.P17130351904217084803

`eq[A154955(n+1), A288600(n+1)]`
-/

namespace A288625.P17130351904217084803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288625.P17130351904217084803

namespace A288625

/-- `eq[A154955(n+1), A288600(n+1)]` -/
def P17130351904217084803.Spec : Prop :=
  ∀ n, (P17130351904217084803.a n : ℤ) = A288625 (n + 1)

end A288625

/-!
# A288626: Numbers n such that n * (x-1)/x produces a rotation of the digits in n for some value of x.

The programs for A288626, there is no canonical definition to state claims against.
-/

/-! ## A288626.P4329714967651637261

`54*A130241(A336903(2*n+1))`
-/

namespace A288626.P4329714967651637261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * A130241 (A336903 (2 * n + 1)).toNat

end

end A288626.P4329714967651637261

/-!
# A288628: Number of step cyclic shifted sequence structures of length n using an infinite alphabet.

The programs for A288628, there is no canonical definition to state claims against.
-/

/-! ## A288628.P15896717875373302894

`or(A056433(n+1), A084558(A056419(n+1)))`
-/

namespace A288628.P15896717875373302894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056433 (n + 1)) (A084558 (A056419 (n + 1)).toNat)

end

end A288628.P15896717875373302894

/-! ## A288628.P4851541336852826816

`or(A056433(n+1), A084558(A056428(n+1)))`
-/

namespace A288628.P4851541336852826816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056433 (n + 1)) (A084558 (A056428 (n + 1)).toNat)

end

end A288628.P4851541336852826816

/-!
# A288631: Numbers that are the sum of two nonzero square pyramidal numbers (A000330).

The programs for A288631, there is no canonical definition to state claims against.
-/

/-! ## A288631.P54921067559883883

`eq[2, A338493(n+1)]+1`
-/

namespace A288631.P54921067559883883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288631.P54921067559883883

/-! ## A288631.P3574531255851813623

`eq[2, A338493(A028310(n))]`
-/

namespace A288631.P3574531255851813623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288631.P3574531255851813623

/-! ## A288631.P16931483421806542581

`A020725(eq[2, A338493(n+1)])`
-/

namespace A288631.P16931483421806542581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288631.P16931483421806542581

/-! ## A288631.P10788928824233582126

`eq[2, A338493(A065033(2*n))]`
-/

namespace A288631.P10788928824233582126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288631.P10788928824233582126

/-! ## A288631.P6593059077870349380

`eq[2, A338493(A000007(n)+n)]`
-/

namespace A288631.P6593059077870349380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288631.P6593059077870349380

/-!
# A288632: Primes p such that (p+q)/6 is prime, q is the next prime after p.

The programs for A288632, there is no canonical definition to state claims against.
-/

/-! ## A288632.P6700638978888481390

`A000040(A000720(3*A163487(n+1)))`
-/

namespace A288632.P6700638978888481390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (3 * A163487 (n + 1)).toNat).toNat

end

end A288632.P6700638978888481390

/-! ## A288632.P16860151082742939117

`A078587(3*A163487(n+1))`
-/

namespace A288632.P16860151082742939117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (3 * A163487 (n + 1)).toNat

end

end A288632.P16860151082742939117

/-! ## A288632.P1046781563801963226

`A078587(∩[A001748(n+1), A078443(n+1)])`
-/

namespace A288632.P1046781563801963226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A288632.P1046781563801963226

/-! ## A288632.P10236612831250499778

`A081259(A163487(n+1))`
-/

namespace A288632.P10236612831250499778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (A163487 (n + 1)).toNat

end

end A288632.P10236612831250499778

/-! ## A288632.P9503176360994044370

`A002374(A075278(n+1))`
-/

namespace A288632.P9503176360994044370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (A075278 (n + 1)).toNat

end

end A288632.P9503176360994044370

/-! ## A288632.P6421258530508636477

`A002374(3*A163487(n+1))`
-/

namespace A288632.P6421258530508636477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (3 * A163487 (n + 1)).toNat

end

end A288632.P6421258530508636477

/-! ## A288632.P7945608156799532128

`A007917(3*A163487(n+1))`
-/

namespace A288632.P7945608156799532128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (3 * A163487 (n + 1)).toNat

end

end A288632.P7945608156799532128

/-! ## A288632.P6373120519938844037

`A254862(3*A163487(n+1))`
-/

namespace A288632.P6373120519938844037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (3 * A163487 (n + 1)).toNat

end

end A288632.P6373120519938844037

/-! ## A288632.P5599082648222053649

`A000040(A230980(3*A163487(n+1)))`
-/

namespace A288632.P5599082648222053649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 (3 * A163487 (n + 1)).toNat).toNat

end

end A288632.P5599082648222053649

/-!
# A288633: Fixed point of the mapping 00->0110, 1->10, starting with 00.

The programs for A288633, there is no canonical definition to state claims against.
-/

/-! ## A288633.P2523859321052585913

`char[A288635(n+1)-1]`
-/

namespace A288633.P2523859321052585913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288635 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288633.P2523859321052585913

/-! ## A288633.P3140758565283483920

`char[comp[A288634(n+1)-1]]`
-/

namespace A288633.P3140758565283483920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288634 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288633.P3140758565283483920

/-! ## A288633.P3208355295210829691

`A316863(Δ[A288634(A028310(n))])`
-/

namespace A288633.P3208355295210829691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288634 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (f1 (n + 1) - f1 n).toNat

end

end A288633.P3208355295210829691

/-! ## A288633.P10650387135043661298

`A035327(Δ[comp[A288635(n+1)]])`
-/

namespace A288633.P10650387135043661298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288635 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288633.P10650387135043661298

/-! ## A288633.P1030543099985038230

`A124210(Δ[comp[A288635(n+1)]])`
-/

namespace A288633.P1030543099985038230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288635 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124210 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288633.P1030543099985038230

/-! ## A288633.P13652337672270892909

`A288462(Δ[comp[A288635(n+1)]])`
-/

namespace A288633.P13652337672270892909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288635 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288462 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288633.P13652337672270892909

/-! ## A288633.P16168808679252233929

`A288596(Δ[comp[A288635(n+1)]])`
-/

namespace A288633.P16168808679252233929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288635 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288596 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288633.P16168808679252233929

/-! ## A288633.P1311007979685955047

`A288600(Δ[comp[A288635(n+1)]])`
-/

namespace A288633.P1311007979685955047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288635 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288633.P1311007979685955047

/-! ## A288633.P6886589728159372720

`A288640(Δ[comp[A288635(n+1)]])`
-/

namespace A288633.P6886589728159372720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288635 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288633.P6886589728159372720

/-! ## A288633.P9510727311279075248

`A288673(Δ[comp[A288635(n+1)]])`
-/

namespace A288633.P9510727311279075248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288635 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288633.P9510727311279075248

/-!
# A288634: Positions of 0 in A288633; complement of A288635.

The programs for A288634, there is no canonical definition to state claims against.
-/

/-! ## A288634.P18090845765842524428

`comp[A288635(n+1)-1]+1`
-/

namespace A288634.P18090845765842524428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288635 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288634.P18090845765842524428

/-! ## A288634.P5410036215066433061

`lt[A288633(n+1), 1]+1`
-/

namespace A288634.P5410036215066433061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288633 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288634.P5410036215066433061

/-! ## A288634.P5251186494157834482

`record[n+1-A238863(n)*A288633(n+1)]`
-/

namespace A288634.P5251186494157834482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A238863 n * A288633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288634.P5251186494157834482

/-! ## A288634.P4833395669560122084

`record[n+1-A004442(n+1)*A288633(n+1)]`
-/

namespace A288634.P4833395669560122084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004442 (n + 1) * A288633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288634.P4833395669560122084

/-! ## A288634.P13841751479871913798

`record[(n+1)/A004442((n+1)*A288633(n+1))]`
-/

namespace A288634.P13841751479871913798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A004442 ((n + 1 : ℤ) * A288633 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288634.P13841751479871913798

/-! ## A288634.P7752088537775645284

`record[(n+1)/A238863((n+1)*A288633(n+1))]`
-/

namespace A288634.P7752088537775645284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A238863 ((n + 1 : ℤ) * A288633 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288634.P7752088537775645284

/-! ## A288634.P15839542677671210460

`eq[A028310(n)-n, A288633(A028310(n))]`
-/

namespace A288634.P15839542677671210460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288633 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288634.P15839542677671210460

/-!
# A288635: Positions of 1 in A288633; complement of A288634.

The programs for A288635, there is no canonical definition to state claims against.
-/

/-! ## A288635.P11740304246863016457

`A000035(2*n+1)+comp[A288634(n+1)-1]`
-/

namespace A288635.P11740304246863016457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288634 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A288635.P11740304246863016457

/-! ## A288635.P10582165001638086184

`filter[n+1, A288633(#)]`
-/

namespace A288635.P10582165001638086184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288633 (f1 j) = 1) n)

end

end A288635.P10582165001638086184

/-! ## A288635.P6618201470455127849

`eq[1, A288633(n+1)]+1`
-/

namespace A288635.P6618201470455127849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288635.P6618201470455127849

/-! ## A288635.P8274572490591028637

`record[2*A288633(n+2)+n]`
-/

namespace A288635.P8274572490591028637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288633 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288635.P8274572490591028637

/-! ## A288635.P9942074849532787876

`eq[1, A288633(A028310(n))]`
-/

namespace A288635.P9942074849532787876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288633 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288635.P9942074849532787876

/-! ## A288635.P13077969770791442267

`A344180(eq[1, A288633(A344180(n))])`
-/

namespace A288635.P13077969770791442267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288633 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288635.P13077969770791442267

/-! ## A288635.P17570396053747492963

`eq[1, A288633(A008619(A004273(n)))]`
-/

namespace A288635.P17570396053747492963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288633 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288635.P17570396053747492963

/-! ## A288635.P8839515214033378989

`eq[1, A288633(A065033(2*n))]`
-/

namespace A288635.P8839515214033378989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288633 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288635.P8839515214033378989

/-!
# A288636: Height of power-tower factorization of n. Row lengths of A278028.

The programs for A288636, the canonical program `A288636.P4992930741861912130` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288636 has offset 1).

The definition of A288636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288636.P4992930741861912130

`a(A052409(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A288636

/-- `a(A052409(n+1)-1)+1` -/
def P4992930741861912130.Spec : Prop :=
  ∀ n, (P4992930741861912130.a n : ℤ) = A288636 (n + 1)

theorem P4992930741861912130.correct : P4992930741861912130.Spec := by
  intro n
  simp only [A288636, Nat.add_sub_cancel]

end A288636

/-! ## A288636.P4629045848910585995

`a(A086520(A052409(n+1)²))+1` with `a(0)=0`
-/

namespace A288636.P4629045848910585995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A086520 (A052409 (n + 1) ^ 2).toNat).toNat + 1

end

end A288636.P4629045848910585995

namespace A288636

/-- `a(A086520(A052409(n+1)²))+1` -/
def P4629045848910585995.Spec : Prop :=
  ∀ n, (P4629045848910585995.a n : ℤ) = A288636 (n + 1)

end A288636

/-! ## A288636.P11827197139238141841

`A241989(a(A253641(n+1)-1)+1)` with `a(0)=0`
-/

namespace A288636.P11827197139238141841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A241989 (a (A253641 (n + 1) - 1).toNat + 1).toNat

end

end A288636.P11827197139238141841

namespace A288636

/-- `A241989(a(A253641(n+1)-1)+1)` -/
def P11827197139238141841.Spec : Prop :=
  ∀ n, P11827197139238141841.a n = A288636 (n + 1)

end A288636

/-! ## A288636.P15944491911866799195

`A362611(A295931(n+1))+A057427(n)`
-/

namespace A288636.P15944491911866799195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A295931 (n + 1)).toNat + A057427 n

end

end A288636.P15944491911866799195

namespace A288636

/-- `A362611(A295931(n+1))+A057427(n)` -/
def P15944491911866799195.Spec : Prop :=
  ∀ n, P15944491911866799195.a n = A288636 (n + 1)

end A288636

/-! ## A288636.P7174638901479371657

`A362611(A295931(n+1))+A005171(2*(n+1))`
-/

namespace A288636.P7174638901479371657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A295931 (n + 1)).toNat + A005171 (2 * (n + 1))

end

end A288636.P7174638901479371657

namespace A288636

/-- `A362611(A295931(n+1))+A005171(2*(n+1))` -/
def P7174638901479371657.Spec : Prop :=
  ∀ n, P7174638901479371657.a n = A288636 (n + 1)

end A288636

/-! ## A288636.P12892170723874165761

`A000005(A000005(A295931(n+1)))*A052409(n²+1)`
-/

namespace A288636.P12892170723874165761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A295931 (n + 1)).toNat).toNat * A052409 (n ^ 2 + 1)

end

end A288636.P12892170723874165761

namespace A288636

/-- `A000005(A000005(A295931(n+1)))*A052409(n²+1)` -/
def P12892170723874165761.Spec : Prop :=
  ∀ n, P12892170723874165761.a n = A288636 (n + 1)

end A288636

/-! ## A288636.P15641368961443710522

`A001221(A276717(n+2)*A295931(n+1))`
-/

namespace A288636.P15641368961443710522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276717 (n + 2) * A295931 (n + 1)).toNat

end

end A288636.P15641368961443710522

namespace A288636

/-- `A001221(A276717(n+2)*A295931(n+1))` -/
def P15641368961443710522.Spec : Prop :=
  ∀ n, P15641368961443710522.a n = A288636 (n + 1)

end A288636

/-! ## A288636.P10735786526267832597

`A001221(lcm(A276717(n+2), A295931(n+1)))`
-/

namespace A288636.P10735786526267832597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A276717 (n + 2)) (A295931 (n + 1)))

end

end A288636.P10735786526267832597

namespace A288636

/-- `A001221(lcm(A276717(n+2), A295931(n+1)))` -/
def P10735786526267832597.Spec : Prop :=
  ∀ n, P10735786526267832597.a n = A288636 (n + 1)

end A288636

/-!
# A288637: Number of cycles in the grid graph P_4 X P_{n+1}.

The programs for A288637, there is no canonical definition to state claims against.
-/

/-! ## A288637.P13818052322289528752

`A231829(∑[n+3]+1)`
-/

namespace A288637.P13818052322289528752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A288637.P13818052322289528752

/-! ## A288637.P12423977155661008174

`lcm((-1)^n, A231829(A167614(n+1)))`
-/

namespace A288637.P12423977155661008174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A231829 (A167614 (n + 1)).toNat)

end

end A288637.P12423977155661008174

/-! ## A288637.P17013899157431553774

`A231829(A167614(n+1))+A137579(n)`
-/

namespace A288637.P17013899157431553774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A167614 (n + 1)).toNat + A137579 n

end

end A288637.P17013899157431553774

/-! ## A288637.P1249919069874870844

`A231829(A167614(n+1))%A017503(n)`
-/

namespace A288637.P1249919069874870844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231829 (A167614 (n + 1)).toNat) (A017503 n)

end

end A288637.P1249919069874870844

/-! ## A288637.P3747938813503261816

`or(A000038(n), A231829(A167614(n+1)))`
-/

namespace A288637.P3747938813503261816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A231829 (A167614 (n + 1)).toNat)

end

end A288637.P3747938813503261816

/-!
# A288638: Number A(n,k) of n-digit biquanimous strings using digits {0,1,...,k}; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A288638, there is no canonical definition to state claims against.
-/

/-! ## A288638.P3913128770486801127

`A090106(A382100(n))`
-/

namespace A288638.P3913128770486801127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A382100 n).toNat

end

end A288638.P3913128770486801127

/-! ## A288638.P12876153786733838228

`A238628(A107027(n)+1)`
-/

namespace A288638.P12876153786733838228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238628 (A107027 n + 1).toNat

end

end A288638.P12876153786733838228

/-! ## A288638.P8022521805500020851

`A382100(A351831(n+1))`
-/

namespace A288638.P8022521805500020851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382100 (A351831 (n + 1)).toNat

end

end A288638.P8022521805500020851

/-! ## A288638.P9909176981763007425

`A340008(lcm(2, A107027(n)))`
-/

namespace A288638.P9909176981763007425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (Int.lcm 2 (A107027 n))

end

end A288638.P9909176981763007425

/-! ## A288638.P12276904531059224016

`A382100(n)%A321159(n+1)`
-/

namespace A288638.P12276904531059224016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382100 n) (A321159 (n + 1))

end

end A288638.P12276904531059224016

/-!
# A288639: Products of two distinct numbers that are the average of a pair of twin primes.

The programs for A288639, there is no canonical definition to state claims against.
-/

/-! ## A288639.P4982359896179116393

`A141766(lt[10, A160185(3*n+2)])`
-/

namespace A288639.P4982359896179116393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160185 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A288639.P4982359896179116393

/-! ## A288639.P3656785719806840771

`A141766(lt[A141760(3*n+4), A141769(n+1)])`
-/

namespace A288639.P3656785719806840771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141766 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A288639.P3656785719806840771

/-! ## A288639.P5317428427883482163

`A141766(lt[A141744(3*n+2), A141751(3*n+1)])`
-/

namespace A288639.P5317428427883482163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141744 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141751 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141766 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A288639.P5317428427883482163

/-! ## A288639.P1683005555388794159

`A141766(lt[A221114(3*n+5), A221400(3*n+4)])`
-/

namespace A288639.P1683005555388794159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221114 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221400 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141766 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A288639.P1683005555388794159

/-!
# A288640: a(n) = (1 + sign(Im(ZetaZero(n)) - 2*Pi*e*exp(LambertW((n - 11/8)/e))))/2.

The programs for A288640, there is no canonical definition to state claims against.
-/

/-! ## A288640.P1849426774125108023

`char[A282896(n+1)-1]`
-/

namespace A288640.P1849426774125108023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282896 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288640.P1849426774125108023

/-! ## A288640.P15749449672656292883

`char[comp[A282897(n+1)-1]]`
-/

namespace A288640.P15749449672656292883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282897 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288640.P15749449672656292883

/-! ## A288640.P12035322205541624048

`1-char[A282897(floor(n/e)+1)-1]`
-/

namespace A288640.P12035322205541624048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282897 (⌊(n : ℝ) / Real.exp 1⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288640.P12035322205541624048

/-! ## A288640.P7330879737511883770

`char[A023443(A282896(n+1))]`
-/

namespace A288640.P7330879737511883770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A282896 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288640.P7330879737511883770

/-! ## A288640.P15276573120405787067

`abs(char[A282897(A299957(n)+1)-1]-1)`
-/

namespace A288640.P15276573120405787067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282897 (A299957 n + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A288640.P15276573120405787067

/-!
# A288642: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A288642, there is no canonical definition to state claims against.
-/

/-! ## A288642.P5361881447652035433

`A000042(n+1)%A289929(A028310(n))`
-/

namespace A288642.P5361881447652035433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A289929 (A028310 n).toNat)

end

end A288642.P5361881447652035433

/-! ## A288642.P12178737865951198898

`A288394(n)+A289964(n)-A289929(n)`
-/

namespace A288642.P12178737865951198898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288394 n + (A289964 n - A289929 n)

end

end A288642.P12178737865951198898

/-! ## A288642.P18395467051415228715

`A288643(n)+A289930(n)-A289929(n)`
-/

namespace A288642.P18395467051415228715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288643 n + (A289930 n - A289929 n)

end

end A288642.P18395467051415228715

/-! ## A288642.P12247020600140840685

`A007088(A288644(n))`
-/

namespace A288642.P12247020600140840685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288644 n).toNat

end

end A288642.P12247020600140840685

/-! ## A288642.P578174080657160575

`A185544(2*A288644(n))`
-/

namespace A288642.P578174080657160575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288644 n).toNat

end

end A288642.P578174080657160575

/-!
# A288643: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A288643, there is no canonical definition to state claims against.
-/

/-! ## A288643.P1573200918118731849

`A288394(n)+A289964(n)-A289930(n)`
-/

namespace A288643.P1573200918118731849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288394 n + (A289964 n - A289930 n)

end

end A288643.P1573200918118731849

/-! ## A288643.P16339653928696580068

`A288642(n)+A289929(n)-A289930(n)`
-/

namespace A288643.P16339653928696580068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288642 n + (A289929 n - A289930 n)

end

end A288643.P16339653928696580068

/-! ## A288643.P9448773242160739147

`A000042(n+1)+A057428(n)*A289930(n)`
-/

namespace A288643.P9448773242160739147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A289930 n

end

end A288643.P9448773242160739147

/-! ## A288643.P4744761997521504790

`A007088(A288645(n))`
-/

namespace A288643.P4744761997521504790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288645 n).toNat

end

end A288643.P4744761997521504790

/-! ## A288643.P6994068467012247363

`A185544(2*A288645(n))`
-/

namespace A288643.P6994068467012247363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288645 n).toNat

end

end A288643.P6994068467012247363

/-!
# A288644: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A288644, there is no canonical definition to state claims against.
-/

/-! ## A288644.P9296570524049301917

`A126646(n)%A289931(A028310(n))`
-/

namespace A288644.P9296570524049301917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A289931 (A028310 n).toNat)

end

end A288644.P9296570524049301917

/-! ## A288644.P16297646833588803152

`A288395(n)+A289965(n)-A289931(n)`
-/

namespace A288644.P16297646833588803152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288395 n + (A289965 n - A289931 n)

end

end A288644.P16297646833588803152

/-! ## A288644.P11351466098683852596

`A288645(n)+A289932(n)-A289931(n)`
-/

namespace A288644.P11351466098683852596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288645 n + (A289932 n - A289931 n)

end

end A288644.P11351466098683852596

/-! ## A288644.P12743971942887215009

`A126646(n)-A289931(n)%A126646(2*n)`
-/

namespace A288644.P12743971942887215009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A289931 n) (A126646 (2 * n))

end

end A288644.P12743971942887215009

/-! ## A288644.P11956363042232298270

`A126646(n)-A289931(n)%A289929(n)`
-/

namespace A288644.P11956363042232298270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A289931 n) (A289929 n)

end

end A288644.P11956363042232298270

/-!
# A288645: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A288645, there is no canonical definition to state claims against.
-/

/-! ## A288645.P17226494439657873503

`and(-A289932(n), A095121(n))`
-/

namespace A288645.P17226494439657873503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289932 n) (A095121 n)

end

end A288645.P17226494439657873503

/-! ## A288645.P16591502559810870288

`A288395(n)+A289965(n)-A289932(n)`
-/

namespace A288645.P16591502559810870288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288395 n + (A289965 n - A289932 n)

end

end A288645.P16591502559810870288

/-! ## A288645.P15359845461625262579

`A288396(n)+A289966(n)-A289932(n)`
-/

namespace A288645.P15359845461625262579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288396 n + (A289966 n - A289932 n)

end

end A288645.P15359845461625262579

/-! ## A288645.P4229962852357896245

`A288644(n)+A289931(n)-A289932(n)`
-/

namespace A288645.P4229962852357896245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288644 n + (A289931 n - A289932 n)

end

end A288645.P4229962852357896245

/-! ## A288645.P26251353939892042

`A126646(n)-A289932(n)%A289929(n)`
-/

namespace A288645.P26251353939892042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A289932 n) (A289929 n)

end

end A288645.P26251353939892042

/-!
# A288646: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A288646, there is no canonical definition to state claims against.
-/

/-! ## A288646.P238769516523961019

`A007088(A288648(n))`
-/

namespace A288646.P238769516523961019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288648 n).toNat

end

end A288646.P238769516523961019

/-! ## A288646.P9852763409422008996

`A185544(2*A288648(n))`
-/

namespace A288646.P9852763409422008996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288648 n).toNat

end

end A288646.P9852763409422008996

/-! ## A288646.P14372313895653817221

`A287910(n)-A185255(A047406(n+1))`
-/

namespace A288646.P14372313895653817221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287910 n - A185255 (A047406 (n + 1)).toNat

end

end A288646.P14372313895653817221

/-! ## A288646.P7716866029650417707

`A287910(n)-A185255(A060735(n+1))`
-/

namespace A288646.P7716866029650417707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287910 n - A185255 (A060735 (n + 1)).toNat

end

end A288646.P7716866029650417707

/-!
# A288647: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A288647, there is no canonical definition to state claims against.
-/

/-! ## A288647.P14315363300006401389

`A007088(A288649(n))`
-/

namespace A288647.P14315363300006401389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288649 n).toNat

end

end A288647.P14315363300006401389

/-! ## A288647.P2952956614664604902

`A185544(2*A288649(n))`
-/

namespace A288647.P2952956614664604902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288649 n).toNat

end

end A288647.P2952956614664604902

/-!
# A288648: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A288648, there is no canonical definition to state claims against.
-/

/-! ## A288648.P13510719002264348936

`A285818(n)+A037818(A012134(n))`
-/

namespace A288648.P13510719002264348936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285818 n + A037818 (A012134 n).toNat

end

end A288648.P13510719002264348936

/-! ## A288648.P4259662236117348428

`A287759(n)+A037818(A012134(n))`
-/

namespace A288648.P4259662236117348428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287759 n + A037818 (A012134 n).toNat

end

end A288648.P4259662236117348428

/-! ## A288648.P7290751888703008506

`A285818(n)+A065040(A099488(n))`
-/

namespace A288648.P7290751888703008506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285818 n + A065040 (A099488 n).toNat

end

end A288648.P7290751888703008506

/-! ## A288648.P18433220080630766958

`A287759(n)+A065040(A099488(n))`
-/

namespace A288648.P18433220080630766958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287759 n + A065040 (A099488 n).toNat

end

end A288648.P18433220080630766958

/-!
# A288649: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A288649, there is no canonical definition to state claims against.
-/

/-! ## A288649.P15304101872906981248

`or(A263415(A267699(3*n+1)), A286963(n))`
-/

namespace A288649.P15304101872906981248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A263415 (A267699 (3 * n + 1)).toNat) (A286963 n)

end

end A288649.P15304101872906981248

/-!
# A288650: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A288650, there is no canonical definition to state claims against.
-/

/-! ## A288650.P15999499079351529653

`A007088(A288652(n))`
-/

namespace A288650.P15999499079351529653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288652 n).toNat

end

end A288650.P15999499079351529653

/-! ## A288650.P5188191011519426175

`A185544(2*A288652(n))`
-/

namespace A288650.P5188191011519426175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288652 n).toNat

end

end A288650.P5188191011519426175

/-! ## A288650.P12776425245901156591

`A178569(A288652(n)%A072888(n+2))`
-/

namespace A288650.P12776425245901156591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (Int.tmod (A288652 n) (A072888 (n + 2))).toNat

end

end A288650.P12776425245901156591

/-! ## A288650.P6142918494484928636

`A178569(A288652(n)^A301510(n+2))`
-/

namespace A288650.P6142918494484928636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (SequenceMachineLib.roundAway ((A288652 n : ℚ) ^ (A301510 (n + 2) : ℤ))).toNat

end

end A288650.P6142918494484928636

/-!
# A288651: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A288651, there is no canonical definition to state claims against.
-/

/-! ## A288651.P10338903776745653017

`A007088(A288653(n))`
-/

namespace A288651.P10338903776745653017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288653 n).toNat

end

end A288651.P10338903776745653017

/-! ## A288651.P8459569158103329373

`A185544(2*A288653(n))`
-/

namespace A288651.P8459569158103329373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288653 n).toNat

end

end A288651.P8459569158103329373

/-! ## A288651.P11893104907895119565

`A178569(A288653(n*A288972(n)))`
-/

namespace A288651.P11893104907895119565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (A288653 ((n : ℤ) * A288972 n).toNat).toNat

end

end A288651.P11893104907895119565

/-! ## A288651.P15911887024919651003

`A178569(A288653(n)^A288972(n))`
-/

namespace A288651.P15911887024919651003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178569 (SequenceMachineLib.roundAway ((A288653 n : ℚ) ^ (A288972 n : ℤ))).toNat

end

end A288651.P15911887024919651003

/-!
# A288652: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A288652, there is no canonical definition to state claims against.
-/

/-! ## A288652.P1739746422126058752

`or(record[A359902(n+2)], A284041(n))`
-/

namespace A288652.P1739746422126058752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359902 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A284041 n)

end

end A288652.P1739746422126058752

/-! ## A288652.P11902836655962836068

`A287904(n)+A137579(A008324(n))`
-/

namespace A288652.P11902836655962836068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287904 n + A137579 (A008324 n).toNat

end

end A288652.P11902836655962836068

/-! ## A288652.P15161817497200368386

`A287946(n)+A001221(A255985(n))`
-/

namespace A288652.P15161817497200368386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287946 n + A001221 (A255985 n).toNat

end

end A288652.P15161817497200368386

/-! ## A288652.P17799888040662512458

`A287624(n)-A024155(A317019(n))`
-/

namespace A288652.P17799888040662512458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287624 n - A024155 (A317019 n).toNat

end

end A288652.P17799888040662512458

/-!
# A288653: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A288653, there is no canonical definition to state claims against.
-/

/-! ## A288653.P12211928474367542539

`or(A285559(n), A322483(A000984(n)))`
-/

namespace A288653.P12211928474367542539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285559 n) (A322483 (A000984 n).toNat)

end

end A288653.P12211928474367542539

/-! ## A288653.P10931484473955074086

`or(A286414(n), A377519(A001803(n)))`
-/

namespace A288653.P10931484473955074086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286414 n) (A377519 (A001803 n).toNat)

end

end A288653.P10931484473955074086

/-! ## A288653.P1484276073466708691

`or(A000005(A128687(n+1)), A287760(n))`
-/

namespace A288653.P1484276073466708691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A128687 (n + 1)).toNat) (A287760 n)

end

end A288653.P1484276073466708691

/-!
# A288654: a(n) = (sigma(n)-n-1)*(3-omega(n)).

The programs for A288654, the canonical program `A288654.P6836431773425416179` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288654 has offset 1).

The definition of A288654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288654.P6836431773425416179

`(1-A001065(n+1))*(A001221(n+1)-3)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288654

/-- `(1-A001065(n+1))*(A001221(n+1)-3)` -/
def P6836431773425416179.Spec : Prop :=
  ∀ n, P6836431773425416179.a n = A288654 (n + 1)

theorem P6836431773425416179.correct : P6836431773425416179.Spec := by
  intro n
  simp only [A288654, Nat.add_sub_cancel]

end A288654

/-!
# A288656: a(n) = Sum_{k=1..n} Sum_{i=floor((k-1)/2)..k-1} i * c(i), where c is the prime characteristic (A010051).

The programs for A288656, there is no canonical definition to state claims against.
-/

/-! ## A288656.P14964355628217655533

`∑[A288726(n)]`
-/

namespace A288656.P14964355628217655533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288656.P14964355628217655533

/-! ## A288656.P6623717301831285339

`A288726(char[1]+n)+a(n-1)` with `a(0)=0`
-/

namespace A288656.P6623717301831285339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A288726 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A288656.P6623717301831285339

/-! ## A288656.P4239814354486092402

`∑[A139365(∑[A061355(n)])]`
-/

namespace A288656.P4239814354486092402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139365 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288656.P4239814354486092402

/-! ## A288656.P16387294795076052149

`A018252(A159741(n+3)+1)%A060023(2*(n+2))`
-/

namespace A288656.P16387294795076052149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A159741 (n + 3) + 1).toNat) (A060023 (2 * (n + 2)))

end

end A288656.P16387294795076052149

/-!
# A288657: Numbers whose squares have an odd number of digits.

The programs for A288657, there is no canonical definition to state claims against.
-/

/-! ## A288657.P18425787300005396591

`comp[A288658(n+1)]`
-/

namespace A288657.P18425787300005396591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288657.P18425787300005396591

/-! ## A288657.P9278058976544236264

`lt[A154443(A062383(n)), A061601(n)]`
-/

namespace A288657.P9278058976544236264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A062383 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P9278058976544236264

/-! ## A288657.P8507389354615841251

`lt[A319867(n+1), A211637(A061601(n))]`
-/

namespace A288657.P8507389354615841251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211637 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P8507389354615841251

/-! ## A288657.P2526955437852719313

`lt[A030141(3*n+5), A262393(A143473(n))]`
-/

namespace A288657.P2526955437852719313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262393 (A143473 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P2526955437852719313

/-! ## A288657.P4453406365386160449

`lt[A008620(A114273(n+1)), A061601(n)]`
-/

namespace A288657.P4453406365386160449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A114273 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P4453406365386160449

/-! ## A288657.P18009213096101474141

`lt[A008762(n), A008758(A061601(n))]`
-/

namespace A288657.P18009213096101474141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008758 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P18009213096101474141

/-! ## A288657.P17052929873968101423

`lt[A000030(n), A000030(A250043(n+4))]`
-/

namespace A288657.P17052929873968101423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A250043 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P17052929873968101423

/-! ## A288657.P7386355127950419048

`lt[A134465(n+1), A134479(A061601(n))]`
-/

namespace A288657.P7386355127950419048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134479 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P7386355127950419048

/-! ## A288657.P8476033590882545993

`lt[A000124(A000720(n+1)), A061601(n)]`
-/

namespace A288657.P8476033590882545993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A000720 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P8476033590882545993

/-! ## A288657.P6143216336961471079

`lt[A007092(A052406(n+1)), A061601(n)]`
-/

namespace A288657.P6143216336961471079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A052406 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P6143216336961471079

/-! ## A288657.P10105697649731079562

`lt[A004525(A037463(n)), A061601(n)]`
-/

namespace A288657.P10105697649731079562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A037463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288657.P10105697649731079562

/-!
# A288658: Numbers whose squares have an even number of digits.

The programs for A288658, there is no canonical definition to state claims against.
-/

/-! ## A288658.P9289508814920739136

`A000196(record[A020703(A296130(n+1))])`
-/

namespace A288658.P9289508814920739136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A296130 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A288658.P9289508814920739136

/-! ## A288658.P2132399436902977158

`A018091(C(n, A114585(n+1)))+a(n-1)` with `a(0)=4`
-/

namespace A288658.P2132399436902977158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A018091 (Nat.choose n (A114585 (n + 1)).toNat) + a (n - 1)

end

end A288658.P2132399436902977158

/-! ## A288658.P11086287415090933061

`A018091(floor(n/A114585(n+1)))+a(n-1)` with `a(0)=4`
-/

namespace A288658.P11086287415090933061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A018091 ⌊(n : ℚ) / (A114585 (n + 1) : ℚ)⌋.toNat + a (n - 1)

end

end A288658.P11086287415090933061

/-! ## A288658.P7302280439575382686

`comp[A231347(n+1)+6]+4`
-/

namespace A288658.P7302280439575382686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231347 (n + 1) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4

end

end A288658.P7302280439575382686

/-! ## A288658.P14990077364131524942

`comp[A304464(n+5)+4]+4`
-/

namespace A288658.P14990077364131524942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (n + 5) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4

end

end A288658.P14990077364131524942

/-!
# A288659: Numbers whose cubes have an odd number of digits.

The programs for A288659, the canonical program `A288659.P4636030694225674348` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288659 has offset 1).

The definition of A288659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288659.P4636030694225674348

`comp[A288660(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288659

/-- `comp[A288660(n+1)]` -/
def P4636030694225674348.Spec : Prop :=
  ∀ n, (P4636030694225674348.a n : ℤ) = A288659 (n + 1)

theorem P4636030694225674348.correct : P4636030694225674348.Spec := by
  intro n
  simp only [A288659, Nat.add_sub_cancel]

end A288659

/-! ## A288659.P9330178049434064190

`eq[0, char[A288660(n+1)]/A000040(n+1)]`
-/

namespace A288659.P9330178049434064190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288660 (n + 1)

open Classical in
def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A288659.P9330178049434064190

namespace A288659

/-- `eq[0, char[A288660(n+1)]/A000040(n+1)]` -/
def P9330178049434064190.Spec : Prop :=
  ∀ n, (P9330178049434064190.a n : ℤ) = A288659 (n + 1)

end A288659

/-! ## A288659.P10520551765789822595

`eq[char[A288660(n+1)], A276084(2*n+1)]`
-/

namespace A288659.P10520551765789822595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288660 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288659.P10520551765789822595

namespace A288659

/-- `eq[char[A288660(n+1)], A276084(2*n+1)]` -/
def P10520551765789822595.Spec : Prop :=
  ∀ n, (P10520551765789822595.a n : ℤ) = A288659 (n + 1)

end A288659

/-! ## A288659.P15441932812723952764

`eq[0, char[A288660(n+1)]/A016861(2*n)]`
-/

namespace A288659.P15441932812723952764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288660 (n + 1)

open Classical in
def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A016861 (2 * n) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A288659.P15441932812723952764

namespace A288659

/-- `eq[0, char[A288660(n+1)]/A016861(2*n)]` -/
def P15441932812723952764.Spec : Prop :=
  ∀ n, (P15441932812723952764.a n : ℤ) = A288659 (n + 1)

end A288659

/-!
# A288660: Numbers whose cubes have an even number of digits.

The programs for A288660, the canonical program `A288660.P16979688566341528985` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288660 has offset 1).

The definition of A288660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6829 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288660.P16587618276030018926

`eq[0, char[A288659(n+1)]]`
-/

namespace A288660.P16587618276030018926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288659 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288660.P16587618276030018926

namespace A288660

/-- `eq[0, char[A288659(n+1)]]` -/
def P16587618276030018926.Spec : Prop :=
  ∀ n, (P16587618276030018926.a n : ℤ) = A288660 (n + 1)

end A288660

/-! ## A288660.P16979688566341528985

`eq[2, gcd(2, A111393(n+1))]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288660

/-- `eq[2, gcd(2, A111393(n+1))]+1` -/
def P16979688566341528985.Spec : Prop :=
  ∀ n, (P16979688566341528985.a n : ℤ) = A288660 (n + 1)

theorem P16979688566341528985.correct : P16979688566341528985.Spec := by
  intro n
  simp only [A288660, Nat.add_sub_cancel]

end A288660

/-! ## A288660.P16084406029651204162

`lt[char[A288659(n+1)], 1/A007318(n)]`
-/

namespace A288660.P16084406029651204162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288659 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A007318 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A288660.P16084406029651204162

namespace A288660

/-- `lt[char[A288659(n+1)], 1/A007318(n)]` -/
def P16084406029651204162.Spec : Prop :=
  ∀ n, (P16084406029651204162.a n : ℤ) = A288660 (n + 1)

end A288660

/-! ## A288660.P2638650146448534524

`lt[char[A288659(n+1)]*A056109(n), n]`
-/

namespace A288660.P2638650146448534524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288659 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056109 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A288660.P2638650146448534524

namespace A288660

/-- `lt[char[A288659(n+1)]*A056109(n), n]` -/
def P2638650146448534524.Spec : Prop :=
  ∀ n, (P2638650146448534524.a n : ℤ) = A288660 (n + 1)

end A288660

/-! ## A288660.P9480036335216657570

`lt[(A000007(n)+n)*char[A288659(n+1)], n]`
-/

namespace A288660.P9480036335216657570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288659 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A288660.P9480036335216657570

namespace A288660

/-- `lt[(A000007(n)+n)*char[A288659(n+1)], n]` -/
def P9480036335216657570.Spec : Prop :=
  ∀ n, (P9480036335216657570.a n : ℤ) = A288660 (n + 1)

end A288660

/-! ## A288660.P13515694295574234722

`lt[((n+2)*char[A288659(n+1)])², A000040(n+1)]`
-/

namespace A288660.P13515694295574234722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288659 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A288660.P13515694295574234722

namespace A288660

/-- `lt[((n+2)*char[A288659(n+1)])², A000040(n+1)]` -/
def P13515694295574234722.Spec : Prop :=
  ∀ n, (P13515694295574234722.a n : ℤ) = A288660 (n + 1)

end A288660

/-! ## A288660.P12320009169684022607

`lt[(A052905(n+7)-4)*char[A288659(n+1)], 2]`
-/

namespace A288660.P12320009169684022607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288659 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052905 (n + 7) - 4) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A288660.P12320009169684022607

namespace A288660

/-- `lt[(A052905(n+7)-4)*char[A288659(n+1)], 2]` -/
def P12320009169684022607.Spec : Prop :=
  ∀ n, (P12320009169684022607.a n : ℤ) = A288660 (n + 1)

end A288660

/-!
# A288661: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A288661, the canonical program `A288661.P15032499298438258468` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288661 has offset 0).

The definition of A288661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288661.P15032499298438258468

`A282415(A022998(n)%(n+2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A288661

/-- `A282415(A022998(n)%(n+2))` -/
def P15032499298438258468.Spec : Prop :=
  ∀ n, P15032499298438258468.a n = A288661 n

theorem P15032499298438258468.correct : P15032499298438258468.Spec := by
  intro n
  simp only [A288661]

end A288661

/-! ## A288661.P2068836096197392874

`A282415(n-and(2, A287468(n)))`
-/

namespace A288661.P2068836096197392874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 ((n : ℤ) - Int.land 2 (A287468 n)).toNat

end

end A288661.P2068836096197392874

namespace A288661

/-- `A282415(n-and(2, A287468(n)))` -/
def P2068836096197392874.Spec : Prop :=
  ∀ n, P2068836096197392874.a n = A288661 n

end A288661

/-! ## A288661.P2676913079996429205

`A282415(A057428(n)+A014681(n))`
-/

namespace A288661.P2676913079996429205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 (A057428 n + A014681 n).toNat

end

end A288661.P2676913079996429205

namespace A288661

/-- `A282415(A057428(n)+A014681(n))` -/
def P2676913079996429205.Spec : Prop :=
  ∀ n, P2676913079996429205.a n = A288661 n

end A288661

/-! ## A288661.P13083690248068455128

`A282415(A014681(n)-A057427(n))`
-/

namespace A288661.P13083690248068455128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 (A014681 n - A057427 n).toNat

end

end A288661.P13083690248068455128

namespace A288661

/-- `A282415(A014681(n)-A057427(n))` -/
def P13083690248068455128.Spec : Prop :=
  ∀ n, P13083690248068455128.a n = A288661 n

end A288661

/-! ## A288661.P1964977852415621014

`A282415(A014681(n)-A057428(n)²)`
-/

namespace A288661.P1964977852415621014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 (A014681 n - A057428 n ^ 2).toNat

end

end A288661.P1964977852415621014

namespace A288661

/-- `A282415(A014681(n)-A057428(n)²)` -/
def P1964977852415621014.Spec : Prop :=
  ∀ n, P1964977852415621014.a n = A288661 n

end A288661

/-! ## A288661.P6972426207507142779

`A282415((1-A014681(n))*A057428(n))`
-/

namespace A288661.P6972426207507142779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 ((1 - A014681 n) * A057428 n).toNat

end

end A288661.P6972426207507142779

namespace A288661

/-- `A282415((1-A014681(n))*A057428(n))` -/
def P6972426207507142779.Spec : Prop :=
  ∀ n, P6972426207507142779.a n = A288661 n

end A288661

/-! ## A288661.P3172294170404158983

`A290232(n)%(2*A282415(n))`
-/

namespace A288661.P3172294170404158983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290232 n) (2 * A282415 n)

end

end A288661.P3172294170404158983

namespace A288661

/-- `A290232(n)%(2*A282415(n))` -/
def P3172294170404158983.Spec : Prop :=
  ∀ n, P3172294170404158983.a n = A288661 n

end A288661

/-! ## A288661.P10879751644953371074

`A000042(n+1)-A282416(n)%A000042(n+1)`
-/

namespace A288661.P10879751644953371074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A282416 n) (A000042 (n + 1))

end

end A288661.P10879751644953371074

namespace A288661

/-- `A000042(n+1)-A282416(n)%A000042(n+1)` -/
def P10879751644953371074.Spec : Prop :=
  ∀ n, P10879751644953371074.a n = A288661 n

end A288661

/-!
# A288662: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A288662, the canonical program `A288662.P17418465952420220201` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288662 has offset 0).

The definition of A288662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288662.P11960027179954314793

`gcd(A285613(n+1), A285648(n))`
-/

namespace A288662.P11960027179954314793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285613 (n + 1)) (A285648 n)

end

end A288662.P11960027179954314793

namespace A288662

/-- `gcd(A285613(n+1), A285648(n))` -/
def P11960027179954314793.Spec : Prop :=
  ∀ n, (P11960027179954314793.a n : ℤ) = A288662 n

end A288662

/-! ## A288662.P6550844950423893661

`A285613(n+1)%Δ[A288661(n)]`
-/

namespace A288662.P6550844950423893661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285613 (n + 1)) (f1 (n + 1) - f1 n)

end

end A288662.P6550844950423893661

namespace A288662

/-- `A285613(n+1)%Δ[A288661(n)]` -/
def P6550844950423893661.Spec : Prop :=
  ∀ n, P6550844950423893661.a n = A288662 n

end A288662

/-! ## A288662.P17418465952420220201

`A000042(n+1)-A282415(n)%A000042(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A288662

/-- `A000042(n+1)-A282415(n)%A000042(n+1)` -/
def P17418465952420220201.Spec : Prop :=
  ∀ n, P17418465952420220201.a n = A288662 n

theorem P17418465952420220201.correct : P17418465952420220201.Spec := by
  intro n
  simp only [A288662]

end A288662

/-! ## A288662.P17011104990596121243

`A007088(A288664(n))`
-/

namespace A288662.P17011104990596121243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288664 n).toNat

end

end A288662.P17011104990596121243

namespace A288662

/-- `A007088(A288664(n))` -/
def P17011104990596121243.Spec : Prop :=
  ∀ n, P17011104990596121243.a n = A288662 n

end A288662

/-! ## A288662.P11999542303477222256

`A007088(and(A282418(n), A288828(n)))`
-/

namespace A288662.P11999542303477222256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A282418 n) (A288828 n)).toNat

end

end A288662.P11999542303477222256

namespace A288662

/-- `A007088(and(A282418(n), A288828(n)))` -/
def P11999542303477222256.Spec : Prop :=
  ∀ n, P11999542303477222256.a n = A288662 n

end A288662

/-!
# A288663: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A288663, the canonical program `A288663.P17279355229953542695` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288663 has offset 0).

The definition of A288663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288663.P17279355229953542695

`7*a(n-2)-14*a(n-4)+8*a(n-6)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=12, a(4)=3, a(5)=56, a(6)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288663

/-- `7*a(n-2)-14*a(n-4)+8*a(n-6)` -/
def P17279355229953542695.Spec : Prop :=
  ∀ n, P17279355229953542695.a n = A288663 n

theorem P17279355229953542695.correct : P17279355229953542695.Spec := by
  intro n
  simp only [A288663]

end A288663

/-! ## A288663.P11215453504963575293

`floor(A282417(n)/A040001(n))`
-/

namespace A288663.P11215453504963575293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282417 n : ℚ) / (A040001 n : ℚ)⌋

end

end A288663.P11215453504963575293

namespace A288663

/-- `floor(A282417(n)/A040001(n))` -/
def P11215453504963575293.Spec : Prop :=
  ∀ n, P11215453504963575293.a n = A288663 n

end A288663

/-! ## A288663.P9433142235399980501

`A000225(A065033(n))*A072345(n)`
-/

namespace A288663.P9433142235399980501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A065033 n).toNat * A072345 n

end

end A288663.P9433142235399980501

namespace A288663

/-- `A000225(A065033(n))*A072345(n)` -/
def P9433142235399980501.Spec : Prop :=
  ∀ n, P9433142235399980501.a n = A288663 n

end A288663

/-! ## A288663.P13267979562209184635

`xor(A000225(A110654(n)), A277936(n))`
-/

namespace A288663.P13267979562209184635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (A110654 n).toNat) (A277936 n)

end

end A288663.P13267979562209184635

namespace A288663

/-- `xor(A000225(A110654(n)), A277936(n))` -/
def P13267979562209184635.Spec : Prop :=
  ∀ n, P13267979562209184635.a n = A288663 n

end A288663

/-! ## A288663.P12249188809835894023

`and(A282417(n), A288827(n))`
-/

namespace A288663.P12249188809835894023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282417 n) (A288827 n)

end

end A288663.P12249188809835894023

namespace A288663

/-- `and(A282417(n), A288827(n))` -/
def P12249188809835894023.Spec : Prop :=
  ∀ n, P12249188809835894023.a n = A288663 n

end A288663

/-! ## A288663.P10840147108058171857

`and(A282417(n), A289882(n))`
-/

namespace A288663.P10840147108058171857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282417 n) (A289882 n)

end

end A288663.P10840147108058171857

namespace A288663

/-- `and(A282417(n), A289882(n))` -/
def P10840147108058171857.Spec : Prop :=
  ∀ n, P10840147108058171857.a n = A288663 n

end A288663

/-! ## A288663.P6770448567549886195

`and(A282417(n), A290231(n))`
-/

namespace A288663.P6770448567549886195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282417 n) (A290231 n)

end

end A288663.P6770448567549886195

namespace A288663

/-- `and(A282417(n), A290231(n))` -/
def P6770448567549886195.Spec : Prop :=
  ∀ n, P6770448567549886195.a n = A288663 n

end A288663

/-! ## A288663.P10825737815083325318

`and(A282417(n), A290297(n))`
-/

namespace A288663.P10825737815083325318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282417 n) (A290297 n)

end

end A288663.P10825737815083325318

namespace A288663

/-- `and(A282417(n), A290297(n))` -/
def P10825737815083325318.Spec : Prop :=
  ∀ n, P10825737815083325318.a n = A288663 n

end A288663

/-! ## A288663.P6543451917324985336

`A282417(n-and(2, A085903(n+1)))`
-/

namespace A288663.P6543451917324985336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282417 ((n : ℤ) - Int.land 2 (A085903 (n + 1))).toNat

end

end A288663.P6543451917324985336

namespace A288663

/-- `A282417(n-and(2, A085903(n+1)))` -/
def P6543451917324985336.Spec : Prop :=
  ∀ n, P6543451917324985336.a n = A288663 n

end A288663

/-! ## A288663.P12497056225890159455

`A290234(n)%(A290235(n+1)+A290235(n+1))`
-/

namespace A288663.P12497056225890159455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290234 n) (A290235 (n + 1) + A290235 (n + 1))

end

end A288663.P12497056225890159455

namespace A288663

/-- `A290234(n)%(A290235(n+1)+A290235(n+1))` -/
def P12497056225890159455.Spec : Prop :=
  ∀ n, P12497056225890159455.a n = A288663 n

end A288663

/-! ## A288663.P10795394931192287979

`xor(A131572(2*n+1), A278756(n+1))-A131572(2*n)`
-/

namespace A288663.P10795394931192287979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 (2 * n + 1)) (A278756 (n + 1)) - A131572 (2 * n)

end

end A288663.P10795394931192287979

namespace A288663

/-- `xor(A131572(2*n+1), A278756(n+1))-A131572(2*n)` -/
def P10795394931192287979.Spec : Prop :=
  ∀ n, P10795394931192287979.a n = A288663 n

end A288663

/-!
# A288664: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A288664, the canonical program `A288664.P1303306221405636160` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288664 has offset 0).

The definition of A288664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288664.P1303306221405636160

`7*a(n-2)-14*a(n-4)+8*a(n-6)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=3, a(4)=24, a(5)=7, a(6)=112`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288664

/-- `7*a(n-2)-14*a(n-4)+8*a(n-6)` -/
def P1303306221405636160.Spec : Prop :=
  ∀ n, P1303306221405636160.a n = A288664 n

theorem P1303306221405636160.correct : P1303306221405636160.Spec := by
  intro n
  simp only [A288664]

end A288664

/-! ## A288664.P7941193874004789563

`and(A282418(n), A288828(n))`
-/

namespace A288664.P7941193874004789563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282418 n) (A288828 n)

end

end A288664.P7941193874004789563

namespace A288664

/-- `and(A282418(n), A288828(n))` -/
def P7941193874004789563.Spec : Prop :=
  ∀ n, P7941193874004789563.a n = A288664 n

end A288664

/-! ## A288664.P13757634690257897261

`and(A282418(n), A289881(n))`
-/

namespace A288664.P13757634690257897261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282418 n) (A289881 n)

end

end A288664.P13757634690257897261

namespace A288664

/-- `and(A282418(n), A289881(n))` -/
def P13757634690257897261.Spec : Prop :=
  ∀ n, P13757634690257897261.a n = A288664 n

end A288664

/-! ## A288664.P6009293779827720541

`and(A282418(n), A290230(n))`
-/

namespace A288664.P6009293779827720541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282418 n) (A290230 n)

end

end A288664.P6009293779827720541

namespace A288664

/-- `and(A282418(n), A290230(n))` -/
def P6009293779827720541.Spec : Prop :=
  ∀ n, P6009293779827720541.a n = A288664 n

end A288664

/-! ## A288664.P14901592600716655658

`and(A282418(n), A290296(n))`
-/

namespace A288664.P14901592600716655658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282418 n) (A290296 n)

end

end A288664.P14901592600716655658

namespace A288664

/-- `and(A282418(n), A290296(n))` -/
def P14901592600716655658.Spec : Prop :=
  ∀ n, P14901592600716655658.a n = A288664 n

end A288664

/-! ## A288664.P11225947473713437504

`xor(A131572(n), A278756(n))`
-/

namespace A288664.P11225947473713437504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 n) (A278756 n)

end

end A288664.P11225947473713437504

namespace A288664

/-- `xor(A131572(n), A278756(n))` -/
def P11225947473713437504.Spec : Prop :=
  ∀ n, P11225947473713437504.a n = A288664 n

end A288664

/-! ## A288664.P7989047658506560650

`(A000225(n)-a(n-1))*A000034(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A288664.P7989047658506560650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A000225 n - a (n - 1)) * A000034 (n + 1)

end

end A288664.P7989047658506560650

namespace A288664

/-- `(A000225(n)-a(n-1))*A000034(n+1)` -/
def P7989047658506560650.Spec : Prop :=
  ∀ n, P7989047658506560650.a n = A288664 n

end A288664

/-!
# A288665: 0-limiting word of the mapping 00->0110, 10->000, starting with 00.

The programs for A288665, there is no canonical definition to state claims against.
-/

/-! ## A288665.P13770339056141187861

`char[A288667(n+1)-1]`
-/

namespace A288665.P13770339056141187861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288667 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288665.P13770339056141187861

/-! ## A288665.P9234130341799426461

`char[comp[A288666(n+1)-1]]`
-/

namespace A288665.P9234130341799426461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288666 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288665.P9234130341799426461

/-! ## A288665.P9246974327632788298

`char[A023443(A288667(n+1))]`
-/

namespace A288665.P9246974327632788298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288667 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288665.P9246974327632788298

/-! ## A288665.P3561455863566688140

`char[A023443(comp[A288666(n+1)])]`
-/

namespace A288665.P3561455863566688140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288666 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288665.P3561455863566688140

/-! ## A288665.P1488963487235719517

`A010872(3*n+1)-char[A288666(n+1)-1]`
-/

namespace A288665.P1488963487235719517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288666 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (3 * n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288665.P1488963487235719517

/-!
# A288666: Positions of 0 in A288665; complement of A288667.

The programs for A288666, there is no canonical definition to state claims against.
-/

/-! ## A288666.P16597774173304524434

`comp[A288667(n+1)-1]+1`
-/

namespace A288666.P16597774173304524434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288667 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288666.P16597774173304524434

/-! ## A288666.P16273881513357255223

`eq[0, A288665(n+1)]+1`
-/

namespace A288666.P16273881513357255223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288666.P16273881513357255223

/-! ## A288666.P1259883397598302378

`eq[A000038(n), A288665(A028310(n))]`
-/

namespace A288666.P1259883397598302378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288665 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288666.P1259883397598302378

/-! ## A288666.P1999466986631520795

`eq[char[A288667(n+1)], A000007(n)]`
-/

namespace A288666.P1999466986631520795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288667 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288666.P1999466986631520795

/-! ## A288666.P10524423577761340565

`eq[char[A288667(n+1)], A000038(n)]`
-/

namespace A288666.P10524423577761340565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288667 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288666.P10524423577761340565

/-! ## A288666.P2018004345833872087

`eq[A000007(n), A288665(A028310(n))]`
-/

namespace A288666.P2018004345833872087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288665 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288666.P2018004345833872087

/-! ## A288666.P9767850302749123903

`record[A007318(A288665(n+1)+A034856(n+1))]`
-/

namespace A288666.P9767850302749123903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A288665 (n + 1) + A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288666.P9767850302749123903

/-!
# A288667: Positions of 1 in A288665; complement of A288666.

The programs for A288667, there is no canonical definition to state claims against.
-/

/-! ## A288667.P15287833623088348423

`filter[n+1, A288665(#)]`
-/

namespace A288667.P15287833623088348423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288665 (f1 j) = 1) n)

end

end A288667.P15287833623088348423

/-! ## A288667.P11105180628462714536

`lt[0, A288665(n+1)]+1`
-/

namespace A288667.P11105180628462714536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288667.P11105180628462714536

/-! ## A288667.P1328811930052686194

`record[(n+6)*A288665(n+6)]`
-/

namespace A288667.P1328811930052686194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A288665 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288667.P1328811930052686194

/-! ## A288667.P18268423804853997942

`eq[1, A288665(A028310(n))]`
-/

namespace A288667.P18268423804853997942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288665 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288667.P18268423804853997942

/-! ## A288667.P16134556638620783415

`eq[1, A288665(A000007(n)+n)]`
-/

namespace A288667.P16134556638620783415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288665 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288667.P16134556638620783415

/-! ## A288667.P633240746477721699

`eq[1, A288665(A000038(n)+n)]`
-/

namespace A288667.P633240746477721699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288665 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288667.P633240746477721699

/-! ## A288667.P17943734169267199243

`eq[1, A288665(A123108(2*n))]`
-/

namespace A288667.P17943734169267199243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288665 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288667.P17943734169267199243

/-! ## A288667.P17939647904596891422

`eq[1, A288665(A233583(n+1))]`
-/

namespace A288667.P17939647904596891422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288665 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288667.P17939647904596891422

/-!
# A288668: a(n) = a(n-2) + 2*a(n-3) for n >= 3, where a(0) = 2, a(2) = 4, a(3) = 5.

The programs for A288668, the canonical program `A288668.P16825343268764099599` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288668 has offset 0).

The definition of A288668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+2*a(n-3)` (program `A288668.P16825343268764099599`, by `A288668.P16825343268764099599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288668.P16825343268764099599

`a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288668

/-- `a(n-2)+2*a(n-3)` -/
def P16825343268764099599.Spec : Prop :=
  ∀ n, (P16825343268764099599.a n : ℤ) = A288668 n

theorem P16825343268764099599.correct : P16825343268764099599.Spec := by
  intro n
  simp only [A288668]

end A288668

/-! ## A288668.P17911287349328819698

`a(n-3)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A288668.P17911287349328819698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 5] fun n a =>
  a (n - 3) + (a (n - 2) + a (n - 3))

end

end A288668.P17911287349328819698

namespace A288668

/-- `a(n-3)+a(n-2)+a(n-3)` -/
def P17911287349328819698.Spec : Prop :=
  ∀ n, (P17911287349328819698.a n : ℤ) = A288668 n

end A288668

/-! ## A288668.P3501474471838791849

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A288668.P3501474471838791849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A288668.P3501474471838791849

namespace A288668

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P3501474471838791849.Spec : Prop :=
  ∀ n, P3501474471838791849.a n = A288668 n

end A288668

/-! ## A288668.P2950754820309180521

`A159288(n+2)+A159284(n)`
-/

namespace A288668.P2950754820309180521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (n + 2) + A159284 n

end

end A288668.P2950754820309180521

namespace A288668

/-- `A159288(n+2)+A159284(n)` -/
def P2950754820309180521.Spec : Prop :=
  ∀ n, P2950754820309180521.a n = A288668 n

end A288668

/-! ## A288668.P7427627827223252475

`A239851(n+2)-A159287(n)`
-/

namespace A288668.P7427627827223252475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 2) - A159287 n

end

end A288668.P7427627827223252475

namespace A288668

/-- `A239851(n+2)-A159287(n)` -/
def P7427627827223252475.Spec : Prop :=
  ∀ n, P7427627827223252475.a n = A288668 n

end A288668

/-! ## A288668.P3365752371749767985

`A368430(n)+2-A052947(n)`
-/

namespace A288668.P3365752371749767985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368430 n + (2 - A052947 n)

end

end A288668.P3365752371749767985

namespace A288668

/-- `A368430(n)+2-A052947(n)` -/
def P3365752371749767985.Spec : Prop :=
  ∀ n, P3365752371749767985.a n = A288668 n

end A288668

/-! ## A288668.P7591920094220242936

`A159287(n+1)+A159288(n+1)+A159288(n)`
-/

namespace A288668.P7591920094220242936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) + (A159288 (n + 1) + A159288 n)

end

end A288668.P7591920094220242936

namespace A288668

/-- `A159287(n+1)+A159288(n+1)+A159288(n)` -/
def P7591920094220242936.Spec : Prop :=
  ∀ n, P7591920094220242936.a n = A288668 n

end A288668

/-! ## A288668.P16029512764062668557

`A159287(n+1)+A239851(n+1)+A159284(n)`
-/

namespace A288668.P16029512764062668557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) + (A239851 (n + 1) + A159284 n)

end

end A288668.P16029512764062668557

namespace A288668

/-- `A159287(n+1)+A239851(n+1)+A159284(n)` -/
def P16029512764062668557.Spec : Prop :=
  ∀ n, P16029512764062668557.a n = A288668 n

end A288668

/-! ## A288668.P4628872400044662317

`A052947(n+1)+A159285(n+1)-A159286(n)`
-/

namespace A288668.P4628872400044662317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 1) + (A159285 (n + 1) - A159286 n)

end

end A288668.P4628872400044662317

namespace A288668

/-- `A052947(n+1)+A159285(n+1)-A159286(n)` -/
def P4628872400044662317.Spec : Prop :=
  ∀ n, P4628872400044662317.a n = A288668 n

end A288668

/-!
# A288670: 1-limiting word of the mapping 00->0110, 10->000, starting with 00.

The programs for A288670, there is no canonical definition to state claims against.
-/

/-! ## A288670.P4431718301881518506

`char[A288672(n+1)-1]`
-/

namespace A288670.P4431718301881518506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288672 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288670.P4431718301881518506

/-! ## A288670.P10290500926696695710

`char[comp[A288671(n+1)-1]]`
-/

namespace A288670.P10290500926696695710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288671 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288670.P10290500926696695710

/-! ## A288670.P12850809130775249968

`char[comp[A023443(A288671(n+1))]]`
-/

namespace A288670.P12850809130775249968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288671 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288670.P12850809130775249968

/-! ## A288670.P9949627360483526270

`A144599(∑[∑[n+14]])`
-/

namespace A288670.P9949627360483526270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288670.P9949627360483526270

/-!
# A288671: Positions of 0 in A288670; complement of A288672.

The programs for A288671, there is no canonical definition to state claims against.
-/

/-! ## A288671.P13901837324244400377

`comp[A288672(n+1)-1]+1`
-/

namespace A288671.P13901837324244400377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288672 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288671.P13901837324244400377

/-! ## A288671.P16489905481831641680

`eq[0, A288670(n+1)]+1`
-/

namespace A288671.P16489905481831641680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288671.P16489905481831641680

/-! ## A288671.P315173028719354847

`record[n+1-A288467(n+1)*A288670(n+1)]`
-/

namespace A288671.P315173028719354847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288467 (n + 1) * A288670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288671.P315173028719354847

/-! ## A288671.P9429253940494932440

`record[n+1-A288666(n+1)*A288670(n+1)]`
-/

namespace A288671.P9429253940494932440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288666 (n + 1) * A288670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288671.P9429253940494932440

/-! ## A288671.P13733409004260800371

`record[n+1-A288670(n+1)*A288674(n+1)]`
-/

namespace A288671.P13733409004260800371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288670 (n + 1) * A288674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288671.P13733409004260800371

/-! ## A288671.P12596320293215449186

`record[n+1-A288670(n+1)*A288675(n+1)]`
-/

namespace A288671.P12596320293215449186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288670 (n + 1) * A288675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288671.P12596320293215449186

/-! ## A288671.P2065821847727599615

`eq[A028310(n)-n, A288670(A028310(n))]`
-/

namespace A288671.P2065821847727599615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288670 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288671.P2065821847727599615

/-!
# A288672: Positions of 1 in A288670; complement of A288671.

The programs for A288672, there is no canonical definition to state claims against.
-/

/-! ## A288672.P4465456357807176034

`filter[n+1, A288670(#)]`
-/

namespace A288672.P4465456357807176034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288670 (f1 j) = 1) n)

end

end A288672.P4465456357807176034

/-! ## A288672.P7986250138544787361

`lt[0, A288670(n+1)]+1`
-/

namespace A288672.P7986250138544787361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288672.P7986250138544787361

/-! ## A288672.P15768150547770412602

`record[(n+2)*A288670(n+2)]`
-/

namespace A288672.P15768150547770412602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288670 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288672.P15768150547770412602

/-! ## A288672.P4957253241318135021

`eq[1, A288670(A028310(n))]`
-/

namespace A288672.P4957253241318135021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288670 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288672.P4957253241318135021

/-! ## A288672.P5634125302498993605

`eq[1, A288670(A000007(n)+n)]`
-/

namespace A288672.P5634125302498993605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288670 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288672.P5634125302498993605

/-! ## A288672.P4166907127786099041

`eq[1, A288670(A065033(2*n))]`
-/

namespace A288672.P4166907127786099041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288670 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288672.P4166907127786099041

/-!
# A288673: 2-limiting word of the mapping 00->0110, 10->000, starting with 00.

The programs for A288673, there is no canonical definition to state claims against.
-/

/-! ## A288673.P11030842485309029175

`char[A288675(n+1)-1]`
-/

namespace A288673.P11030842485309029175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288675 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288673.P11030842485309029175

/-! ## A288673.P959042431282880267

`char[comp[A288674(n+1)-1]]`
-/

namespace A288673.P959042431282880267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288674 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288673.P959042431282880267

/-! ## A288673.P7267674063968558493

`char[abs(A288675(Δ[n²]-n)-1)]`
-/

namespace A288673.P7267674063968558493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288675 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288673.P7267674063968558493

/-! ## A288673.P16041100531114635771

`char[A023443(A288675(n+1))]`
-/

namespace A288673.P16041100531114635771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288675 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288673.P16041100531114635771

/-! ## A288673.P16892795894574248961

`char[A023443(comp[A288674(n+1)])]`
-/

namespace A288673.P16892795894574248961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288674 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288673.P16892795894574248961

/-! ## A288673.P12636588139861173464

`A294448(Δ[comp[A288674(n+1)+n]]+2)`
-/

namespace A288673.P12636588139861173464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288674 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A288673.P12636588139861173464

/-!
# A288674: Positions of 0 in A288673; complement of A288675.

The programs for A288674, there is no canonical definition to state claims against.
-/

/-! ## A288674.P819245058710440238

`eq[0, A288673(n+1)]+1`
-/

namespace A288674.P819245058710440238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288674.P819245058710440238

/-! ## A288674.P494097989811736849

`eq[0, char[A288675(n+1)-1]]+1`
-/

namespace A288674.P494097989811736849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288675 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288674.P494097989811736849

/-! ## A288674.P14140252796764630296

`eq[A000038(n), A288673(A028310(n))]`
-/

namespace A288674.P14140252796764630296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288674.P14140252796764630296

/-! ## A288674.P17452408748456464996

`eq[char[A288675(n+1)], A000007(n)]`
-/

namespace A288674.P17452408748456464996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288675 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288674.P17452408748456464996

/-! ## A288674.P4245354519241690080

`eq[char[A288675(n+1)], A000038(n)]`
-/

namespace A288674.P4245354519241690080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288675 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288674.P4245354519241690080

/-! ## A288674.P9288231628539820032

`eq[A000007(n), A288673(A028310(n))]`
-/

namespace A288674.P9288231628539820032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288674.P9288231628539820032

/-! ## A288674.P8306135280385833224

`lt[A288673(A028310(n)), A057427(n)]`
-/

namespace A288674.P8306135280385833224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288674.P8306135280385833224

/-! ## A288674.P1093403510508697023

`eq[A000007(n), A288673(A065033(2*n))]`
-/

namespace A288674.P1093403510508697023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288674.P1093403510508697023

/-! ## A288674.P13889162453628839418

`eq[A000038(n), A288673(A065033(2*n))]`
-/

namespace A288674.P13889162453628839418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288674.P13889162453628839418

/-!
# A288675: Positions of 1 in A288673; complement of A288674.

The programs for A288675, there is no canonical definition to state claims against.
-/

/-! ## A288675.P3704268844869767120

`filter[n+1, A288673(#)]`
-/

namespace A288675.P3704268844869767120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288673 (f1 j) = 1) n)

end

end A288675.P3704268844869767120

/-! ## A288675.P17736222200840992340

`eq[1, A288673(n+1)]+1`
-/

namespace A288675.P17736222200840992340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288675.P17736222200840992340

/-! ## A288675.P15591776527225318724

`record[(n+2)*A288673(n+2)]`
-/

namespace A288675.P15591776527225318724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288673 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288675.P15591776527225318724

/-! ## A288675.P17966269958321400280

`eq[1, A288673(A028310(n))]`
-/

namespace A288675.P17966269958321400280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288675.P17966269958321400280

/-! ## A288675.P593843655949603932

`eq[1, A288673(A000007(n)+n)]`
-/

namespace A288675.P593843655949603932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288675.P593843655949603932

/-! ## A288675.P11405873902667774340

`lt[1, A288673(A028310(n))+A057427(n)]`
-/

namespace A288675.P11405873902667774340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (A028310 n).toNat + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288675.P11405873902667774340

/-! ## A288675.P9275443913746865035

`eq[1, A288673(A065033(2*n))]`
-/

namespace A288675.P9275443913746865035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288673 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288675.P9275443913746865035

/-!
# A288677: Every element of Z/nZ can be expressed as a sum of no more than a(n) squares.

The programs for A288677, there is no canonical definition to state claims against.
-/

/-! ## A288677.P12737574138031299885

`A188318(A001248(n+1))+A005361(n+2)`
-/

namespace A288677.P12737574138031299885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188318 (A001248 (n + 1)).toNat + A005361 (n + 2)

end

end A288677.P12737574138031299885

/-! ## A288677.P3158057711291030089

`A304118(A341031(n+1))+A095691(n+2)`
-/

namespace A288677.P3158057711291030089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (A341031 (n + 1)).toNat + A095691 (n + 2)

end

end A288677.P3158057711291030089

/-! ## A288677.P16546321287299705599

`A375428(n+2)-A057428(A011379(n))`
-/

namespace A288677.P16546321287299705599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375428 (n + 2) - A057428 (A011379 n).toNat

end

end A288677.P16546321287299705599

/-! ## A288677.P10265226278595073176

`A095691(n+2)+A005171(A007749(n+1))`
-/

namespace A288677.P10265226278595073176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (n + 2) + A005171 (A007749 (n + 1)).toNat

end

end A288677.P10265226278595073176

/-! ## A288677.P14505534866179110006

`A001227(A066072(n+1)^A095691(n+2))`
-/

namespace A288677.P14505534866179110006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway ((A066072 (n + 1) : ℚ) ^ (A095691 (n + 2) : ℤ))).toNat

end

end A288677.P14505534866179110006

/-!
# A288678: Number of Dyck paths of semilength n such that no positive level has fewer than two peaks.

The programs for A288678, there is no canonical definition to state claims against.
-/

/-! ## A288678.P10050542674350719605

`A287901(n)-A288387(A000124(n))`
-/

namespace A288678.P10050542674350719605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287901 n - A288387 (A000124 n).toNat

end

end A288678.P10050542674350719605

/-! ## A288678.P16343957442019916319

`A060576(n)*A288386(A133263(n))`
-/

namespace A288678.P16343957442019916319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A288386 (A133263 n).toNat

end

end A288678.P16343957442019916319

/-! ## A288678.P4451923364510467374

`A288386(A133263(n))%A007054(n)`
-/

namespace A288678.P4451923364510467374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288386 (A133263 n).toNat) (A007054 n)

end

end A288678.P4451923364510467374

/-! ## A288678.P4905282162096392952

`and(A260196(n), A288386(A133263(n)))`
-/

namespace A288678.P4905282162096392952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A288386 (A133263 n).toNat)

end

end A288678.P4905282162096392952

/-! ## A288678.P17642540646001112214

`A288386(A133263(n))-A077957(A008578(n+1))`
-/

namespace A288678.P17642540646001112214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288386 (A133263 n).toNat - A077957 (A008578 (n + 1)).toNat

end

end A288678.P17642540646001112214

/-!
# A288679: Number of Dyck paths of semilength n such that no positive level has fewer than three peaks.

The programs for A288679, there is no canonical definition to state claims against.
-/

/-! ## A288679.P7080136320401768350

`A065710(A321467(n)+A147995(n))`
-/

namespace A288679.P7080136320401768350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (A321467 n + A147995 n).toNat

end

end A288679.P7080136320401768350

/-!
# A288680: Number of Dyck paths of semilength n such that no positive level has fewer than four peaks.

The programs for A288680, there is no canonical definition to state claims against.
-/

/-! ## A288680.P15354917325185549482

`A241318(A002265(n)^A241322(n))`
-/

namespace A288680.P15354917325185549482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 (SequenceMachineLib.roundAway ((A002265 n : ℚ) ^ (A241322 n : ℤ))).toNat

end

end A288680.P15354917325185549482

/-! ## A288680.P12575067828945967350

`A239871(A239863(n+1)%A008864(n+1))`
-/

namespace A288680.P12575067828945967350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 (Int.tmod (A239863 (n + 1)) (A008864 (n + 1))).toNat

end

end A288680.P12575067828945967350

/-! ## A288680.P17538078012623164997

`gcd(A241318(A001592(n+1)), A269246(3*n+4))`
-/

namespace A288680.P17538078012623164997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241318 (A001592 (n + 1)).toNat) (A269246 (3 * n + 4))

end

end A288680.P17538078012623164997

/-!
# A288681: Number of Dyck paths of semilength n such that no positive level has fewer than five peaks.

The programs for A288681, there is no canonical definition to state claims against.
-/

/-! ## A288681.P599912371967500486

`A319797(A035682(n+1)^n+8)`
-/

namespace A288681.P599912371967500486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A035682 (n + 1) ^ n + 8).toNat

end

end A288681.P599912371967500486

/-!
# A288687: Number of n-digit biquanimous strings using digits {0,1,2,3}.

The programs for A288687, the canonical program `A288687.P14402893457171725233` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288687 has offset 0).

The definition of A288687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288687.P16613430475094977435

`A064671(round(sqrt(n²+1)))+1`
-/

namespace A288687.P16613430475094977435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064671 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A288687.P16613430475094977435

namespace A288687

/-- `A064671(round(sqrt(n²+1)))+1` -/
def P16613430475094977435.Spec : Prop :=
  ∀ n, P16613430475094977435.a n = A288687 n

end A288687

/-! ## A288687.P8053639448927944927

`A000431(n+1)+round(sqrt(n²+1))`
-/

namespace A288687.P8053639448927944927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000431 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

end

end A288687.P8053639448927944927

namespace A288687

/-- `A000431(n+1)+round(sqrt(n²+1))` -/
def P8053639448927944927.Spec : Prop :=
  ∀ n, P8053639448927944927.a n = A288687 n

end A288687

/-! ## A288687.P14402893457171725233

`A028310(n)+A000431(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288687

/-- `A028310(n)+A000431(n+1)` -/
def P14402893457171725233.Spec : Prop :=
  ∀ n, P14402893457171725233.a n = A288687 n

theorem P14402893457171725233.correct : P14402893457171725233.Spec := by
  intro n
  simp only [A288687]

end A288687

/-! ## A288687.P17253839946660603919

`A336103(2*n)-A049610(n+1)+n`
-/

namespace A288687.P17253839946660603919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336103 (2 * n) - A049610 (n + 1) + (n : ℤ)

end

end A288687.P17253839946660603919

namespace A288687

/-- `A336103(2*n)-A049610(n+1)+n` -/
def P17253839946660603919.Spec : Prop :=
  ∀ n, P17253839946660603919.a n = A288687 n

end A288687

/-! ## A288687.P4142520382669811381

`A336103(2*n)-A336102(2*n)+n`
-/

namespace A288687.P4142520382669811381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336103 (2 * n) - A336102 (2 * n) + (n : ℤ)

end

end A288687.P4142520382669811381

namespace A288687

/-- `A336103(2*n)-A336102(2*n)+n` -/
def P4142520382669811381.Spec : Prop :=
  ∀ n, P4142520382669811381.a n = A288687 n

end A288687

/-! ## A288687.P1123708394764686684

`A003013(n)+A002662(n)*A011782(n)`
-/

namespace A288687.P1123708394764686684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003013 n + A002662 n * A011782 n

end

end A288687.P1123708394764686684

namespace A288687

/-- `A003013(n)+A002662(n)*A011782(n)` -/
def P1123708394764686684.Spec : Prop :=
  ∀ n, P1123708394764686684.a n = A288687 n

end A288687

/-! ## A288687.P16480731701037613297

`A028310(n)+A000295(n)*A011782(n)`
-/

namespace A288687.P16480731701037613297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A000295 n * A011782 n

end

end A288687.P16480731701037613297

namespace A288687

/-- `A028310(n)+A000295(n)*A011782(n)` -/
def P16480731701037613297.Spec : Prop :=
  ∀ n, P16480731701037613297.a n = A288687 n

end A288687

/-! ## A288687.P1280752946330228342

`A000051(n)*A011782(n)+n-A001792(n)`
-/

namespace A288687.P1280752946330228342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A011782 n + ((n : ℤ) - A001792 n)

end

end A288687.P1280752946330228342

namespace A288687

/-- `A000051(n)*A011782(n)+n-A001792(n)` -/
def P1280752946330228342.Spec : Prop :=
  ∀ n, P1280752946330228342.a n = A288687 n

end A288687

/-!
# A288688: Number of n-digit biquanimous strings using digits {0,1,...,4}.

The programs for A288688, there is no canonical definition to state claims against.
-/

/-! ## A288688.P10854356700639248902

`A288638(eq[4, A025581(n)])`
-/

namespace A288688.P10854356700639248902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288688.P10854356700639248902

/-! ## A288688.P9397771964912272288

`A288638(A027379(n+3)-2)`
-/

namespace A288688.P9397771964912272288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A027379 (n + 3) - 2).toNat

end

end A288688.P9397771964912272288

/-! ## A288688.P8197340660426601971

`A288638(A000217(n+5)-5)`
-/

namespace A288688.P8197340660426601971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A000217 (n + 5) - 5).toNat

end

end A288688.P8197340660426601971

/-! ## A288688.P1832464907746394533

`A288638(A000124(n+5)-6)`
-/

namespace A288688.P1832464907746394533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A000124 (n + 5) - 6).toNat

end

end A288688.P1832464907746394533

/-! ## A288688.P3413294881569965225

`A288638(Δ[A005581(n+4)]-4)`
-/

namespace A288688.P3413294881569965225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (f1 (n + 1) - f1 n - 4).toNat

end

end A288688.P3413294881569965225

/-!
# A288689: Number of n-digit biquanimous strings using digits {0,1,...,5}.

The programs for A288689, there is no canonical definition to state claims against.
-/

/-! ## A288689.P2592037442737387974

`A288638(eq[5, A025581(n)])`
-/

namespace A288689.P2592037442737387974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288689.P2592037442737387974

/-! ## A288689.P13443276817322888746

`A288638(Δ[A023551(n+1)])`
-/

namespace A288689.P13443276817322888746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (f1 (n + 1) - f1 n).toNat

end

end A288689.P13443276817322888746

/-! ## A288689.P17622467611358602868

`A288638(∑[A020715(n)]+9)`
-/

namespace A288689.P17622467611358602868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (∑ j ∈ Finset.range (n + 1), f1 j + 9).toNat

end

end A288689.P17622467611358602868

/-! ## A288689.P3222786087770098892

`A288638(A000217(n+6)-6)`
-/

namespace A288689.P3222786087770098892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A000217 (n + 6) - 6).toNat

end

end A288689.P3222786087770098892

/-! ## A288689.P12623749434856244772

`A288638(A000124(n+5)+n-1)`
-/

namespace A288689.P12623749434856244772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A288689.P12623749434856244772

/-!
# A288690: Number of n-digit biquanimous strings using digits {0,1,...,6}.

The programs for A288690, there is no canonical definition to state claims against.
-/

/-! ## A288690.P7013754429783438529

`A288638(eq[6, A025581(n)])`
-/

namespace A288690.P7013754429783438529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288690.P7013754429783438529

/-! ## A288690.P4717931693081779683

`A288638(eq[7, A004736(n+1)])`
-/

namespace A288690.P4717931693081779683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288690.P4717931693081779683

/-! ## A288690.P14040275554558176163

`A288638(Δ[A023551(n+2)]-1)`
-/

namespace A288690.P14040275554558176163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (f1 (n + 1) - f1 n - 1).toNat

end

end A288690.P14040275554558176163

/-! ## A288690.P1207527844949433370

`A288638(A167499(n+4)+A005408(n))`
-/

namespace A288690.P1207527844949433370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A167499 (n + 4) + A005408 n).toNat

end

end A288690.P1207527844949433370

/-! ## A288690.P13572117112805156138

`A288638(A020715(n)+Δ[A023551(n+1)])`
-/

namespace A288690.P13572117112805156138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A020715 n + (f1 (n + 1) - f1 n)).toNat

end

end A288690.P13572117112805156138

/-!
# A288691: Number of n-digit biquanimous strings using digits {0,1,...,7}.

The programs for A288691, there is no canonical definition to state claims against.
-/

/-! ## A288691.P9679241271166575833

`A288638(eq[7, A025581(n)])`
-/

namespace A288691.P9679241271166575833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288691.P9679241271166575833

/-! ## A288691.P17969615796211205672

`A288638(eq[8, A193739(n)])`
-/

namespace A288691.P17969615796211205672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288691.P17969615796211205672

/-! ## A288691.P14282791891773194672

`A288638(eq[8, A004736(n+1)])`
-/

namespace A288691.P14282791891773194672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288691.P14282791891773194672

/-! ## A288691.P9445311378104435429

`A288638(Δ[A023551(n+3)]-2)`
-/

namespace A288691.P9445311378104435429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (f1 (n + 1) - f1 n - 2).toNat

end

end A288691.P9445311378104435429

/-! ## A288691.P3428164739188119214

`A288638(A055999(n+4)+A020715(n))`
-/

namespace A288691.P3428164739188119214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A055999 (n + 4) + A020715 n).toNat

end

end A288691.P3428164739188119214

/-!
# A288692: Number of n-digit biquanimous strings using digits {0,1,...,8}.

The programs for A288692, there is no canonical definition to state claims against.
-/

/-! ## A288692.P9802310242698125104

`A288638(A055998(n+7)-6)`
-/

namespace A288692.P9802310242698125104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A055998 (n + 7) - 6).toNat

end

end A288692.P9802310242698125104

/-! ## A288692.P1288882970950781549

`A288638(A000217(n+9)-9)`
-/

namespace A288692.P1288882970950781549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A000217 (n + 9) - 9).toNat

end

end A288692.P1288882970950781549

/-! ## A288692.P6605019807657548494

`A288638(2*n+A000124(n+7)+7)`
-/

namespace A288692.P6605019807657548494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 ((2 * n : ℤ) + (A000124 (n + 7) + 7)).toNat

end

end A288692.P6605019807657548494

/-! ## A288692.P14295804962373493580

`A288638(eq[8, A134868(n+1)]+2*n+1)`
-/

namespace A288692.P14295804962373493580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A288692.P14295804962373493580

/-! ## A288692.P12067292049692658075

`A288638(A020715(n)²-A027379(n))`
-/

namespace A288692.P12067292049692658075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A020715 n ^ 2 - A027379 n).toNat

end

end A288692.P12067292049692658075

/-!
# A288693: Number of n-digit biquanimous strings using digits {0,1,...,n}.

The programs for A288693, there is no canonical definition to state claims against.
-/

/-! ## A288693.P15077566565204459754

`A288638(∑[4*n])`
-/

namespace A288693.P15077566565204459754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288693.P15077566565204459754

/-! ## A288693.P3345015773216443030

`lcm(A033999(n), A288638(A046092(n)))`
-/

namespace A288693.P3345015773216443030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A288638 (A046092 n).toNat)

end

end A288693.P3345015773216443030

/-! ## A288693.P8818315634113329073

`A000041(C(n, 64))*A288638(A046092(n))`
-/

namespace A288693.P8818315634113329073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A288638 (A046092 n).toNat

end

end A288693.P8818315634113329073

/-! ## A288693.P15149280077870961254

`A007318(C(2, n²))*A288638(A046092(n))`
-/

namespace A288693.P15149280077870961254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n ^ 2)) * A288638 (A046092 n).toNat

end

end A288693.P15149280077870961254

/-! ## A288693.P14900647326524779842

`A014963(32*n+14)*A288638(A046092(n))`
-/

namespace A288693.P14900647326524779842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (32 * n + 14) * A288638 (A046092 n).toNat

end

end A288693.P14900647326524779842

/-!
# A288694: Fixed point of the mapping 00->0110, 10->100, starting with 00.

The programs for A288694, the canonical program `A288694.P16125803741522306044` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288694 has offset 1).

The definition of A288694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288694.P7144543331701062119

`char[A288696(n+1)-1]`
-/

namespace A288694.P7144543331701062119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288694.P7144543331701062119

namespace A288694

/-- `char[A288696(n+1)-1]` -/
def P7144543331701062119.Spec : Prop :=
  ∀ n, (P7144543331701062119.a n : ℤ) = A288694 (n + 1)

end A288694

/-! ## A288694.P16125803741522306044

`1-char[A288695(n+1)-1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A288694

/-- `1-char[A288695(n+1)-1]` -/
def P16125803741522306044.Spec : Prop :=
  ∀ n, P16125803741522306044.a n = A288694 (n + 1)

theorem P16125803741522306044.correct : P16125803741522306044.Spec := by
  intro n
  simp only [A288694, Nat.add_sub_cancel]

end A288694

/-! ## A288694.P17809924099737570985

`char[A202342(floor(n/2)+1)+n]`
-/

namespace A288694.P17809924099737570985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288694.P17809924099737570985

namespace A288694

/-- `char[A202342(floor(n/2)+1)+n]` -/
def P17809924099737570985.Spec : Prop :=
  ∀ n, (P17809924099737570985.a n : ℤ) = A288694 (n + 1)

end A288694

/-! ## A288694.P1195365639626284991

`char[A023443(n)+A202342(A004526(n)+1)+1]`
-/

namespace A288694.P1195365639626284991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + (A202342 (A004526 n + 1).toNat + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288694.P1195365639626284991

namespace A288694

/-- `char[A023443(n)+A202342(A004526(n)+1)+1]` -/
def P1195365639626284991.Spec : Prop :=
  ∀ n, (P1195365639626284991.a n : ℤ) = A288694 (n + 1)

end A288694

/-! ## A288694.P12736010742158146358

`abs(Δ[char[A288696(2*n+1)]])`
-/

namespace A288694.P12736010742158146358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A288694.P12736010742158146358

namespace A288694

/-- `abs(Δ[char[A288696(2*n+1)]])` -/
def P12736010742158146358.Spec : Prop :=
  ∀ n, P12736010742158146358.a n = A288694 (n + 1)

end A288694

/-! ## A288694.P12887602759937279739

`Δ[p?[A105083(A105083(n+1)+n)]]²`
-/

namespace A288694.P12887602759937279739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 (A105083 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A288694.P12887602759937279739

namespace A288694

/-- `Δ[p?[A105083(A105083(n+1)+n)]]²` -/
def P12887602759937279739.Spec : Prop :=
  ∀ n, P12887602759937279739.a n = A288694 (n + 1)

end A288694

/-! ## A288694.P9074766896706559740

`and(1, record[xor(n+1, A042968(n+1))])`
-/

namespace A288694.P9074766896706559740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A042968 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A288694.P9074766896706559740

namespace A288694

/-- `and(1, record[xor(n+1, A042968(n+1))])` -/
def P9074766896706559740.Spec : Prop :=
  ∀ n, P9074766896706559740.a n = A288694 (n + 1)

end A288694

/-!
# A288695: Positions of 0 in A288694; complement of A288696.

The programs for A288695, the canonical program `A288695.P14736522224666781171` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288695 has offset 1).

The definition of A288695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288695.P5718385668108835521

`∑[2*A202340(n)-1]`
-/

namespace A288695.P5718385668108835521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202340 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288695.P5718385668108835521

namespace A288695

/-- `∑[2*A202340(n)-1]` -/
def P5718385668108835521.Spec : Prop :=
  ∀ n, P5718385668108835521.a n = A288695 (n + 1)

end A288695

/-! ## A288695.P12541764289206119881

`comp[A288696(n+1)-1]+1`
-/

namespace A288695.P12541764289206119881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288695.P12541764289206119881

namespace A288695

/-- `comp[A288696(n+1)-1]+1` -/
def P12541764289206119881.Spec : Prop :=
  ∀ n, (P12541764289206119881.a n : ℤ) = A288695 (n + 1)

end A288695

/-! ## A288695.P14736522224666781171

`2*A136495(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288695

/-- `2*A136495(n+1)-(n+1)` -/
def P14736522224666781171.Spec : Prop :=
  ∀ n, P14736522224666781171.a n = A288695 (n + 1)

theorem P14736522224666781171.correct : P14736522224666781171.Spec := by
  intro n
  simp only [A288695, Nat.add_sub_cancel]

end A288695

/-! ## A288695.P6670096056415129605

`2*A005374(A005374(n))+1+n`
-/

namespace A288695.P6670096056415129605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005374 (A005374 n).toNat + 1 + (n : ℤ)

end

end A288695.P6670096056415129605

namespace A288695

/-- `2*A005374(A005374(n))+1+n` -/
def P6670096056415129605.Spec : Prop :=
  ∀ n, P6670096056415129605.a n = A288695 (n + 1)

end A288695

/-! ## A288695.P17664150671171195963

`A001478(n+1)+∑[2*A202340(n)]`
-/

namespace A288695.P17664150671171195963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288695.P17664150671171195963

namespace A288695

/-- `A001478(n+1)+∑[2*A202340(n)]` -/
def P17664150671171195963.Spec : Prop :=
  ∀ n, P17664150671171195963.a n = A288695 (n + 1)

end A288695

/-! ## A288695.P2013511645965056903

`A136495(n+1)+A372758(n+1)-1`
-/

namespace A288695.P2013511645965056903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + (A372758 (n + 1) - 1)

end

end A288695.P2013511645965056903

namespace A288695

/-- `A136495(n+1)+A372758(n+1)-1` -/
def P2013511645965056903.Spec : Prop :=
  ∀ n, P2013511645965056903.a n = A288695 (n + 1)

end A288695

/-! ## A288695.P13838437260901565445

`A005374(A005374(n))+∑[A202340(n)]`
-/

namespace A288695.P13838437260901565445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A005374 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288695.P13838437260901565445

namespace A288695

/-- `A005374(A005374(n))+∑[A202340(n)]` -/
def P13838437260901565445.Spec : Prop :=
  ∀ n, P13838437260901565445.a n = A288695 (n + 1)

end A288695

/-! ## A288695.P5130523855739900272

`A136495(n+1)+A005374(A005374(n))`
-/

namespace A288695.P5130523855739900272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A005374 (A005374 n).toNat

end

end A288695.P5130523855739900272

namespace A288695

/-- `A136495(n+1)+A005374(A005374(n))` -/
def P5130523855739900272.Spec : Prop :=
  ∀ n, P5130523855739900272.a n = A288695 (n + 1)

end A288695

/-! ## A288695.P12989465411113481754

`A064105(n+1)+A372758(n+1)-A136496(n+1)`
-/

namespace A288695.P12989465411113481754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) + (A372758 (n + 1) - A136496 (n + 1))

end

end A288695.P12989465411113481754

namespace A288695

/-- `A064105(n+1)+A372758(n+1)-A136496(n+1)` -/
def P12989465411113481754.Spec : Prop :=
  ∀ n, P12989465411113481754.a n = A288695 (n + 1)

end A288695

/-! ## A288695.P9565551266366527650

`eq[1, A288694(n+1)+1]+1`
-/

namespace A288695.P9565551266366527650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288694 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288695.P9565551266366527650

namespace A288695

/-- `eq[1, A288694(n+1)+1]+1` -/
def P9565551266366527650.Spec : Prop :=
  ∀ n, (P9565551266366527650.a n : ℤ) = A288695 (n + 1)

end A288695

/-! ## A288695.P10751728107735399287

`eq[A028310(n)-n, A288694(A028310(n))]`
-/

namespace A288695.P10751728107735399287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288694 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288695.P10751728107735399287

namespace A288695

/-- `eq[A028310(n)-n, A288694(A028310(n))]` -/
def P10751728107735399287.Spec : Prop :=
  ∀ n, (P10751728107735399287.a n : ℤ) = A288695 (n + 1)

end A288695

/-! ## A288695.P16995872235642136497

`A005374(A202342(n+1))+A005374(A005374(n))`
-/

namespace A288695.P16995872235642136497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A202342 (n + 1)).toNat + A005374 (A005374 n).toNat

end

end A288695.P16995872235642136497

namespace A288695

/-- `A005374(A202342(n+1))+A005374(A005374(n))` -/
def P16995872235642136497.Spec : Prop :=
  ∀ n, P16995872235642136497.a n = A288695 (n + 1)

end A288695

/-! ## A288695.P4010702525343155959

`A226250(n+1)+A005374(A005374(n))-n`
-/

namespace A288695.P4010702525343155959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226250 (n + 1) + (A005374 (A005374 n).toNat - (n : ℤ))

end

end A288695.P4010702525343155959

namespace A288695

/-- `A226250(n+1)+A005374(A005374(n))-n` -/
def P4010702525343155959.Spec : Prop :=
  ∀ n, P4010702525343155959.a n = A288695 (n + 1)

end A288695

/-!
# A288696: Positions of 1 in A288694; complement of A288695.

The programs for A288696, the canonical program `A288696.P14269972040630467567` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288696 has offset 1).

The definition of A288696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288696.P6854888281196450193

`A202342(floor(n/2)+1)+n+1`
-/

namespace A288696.P6854888281196450193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n + 1 : ℤ)

end

end A288696.P6854888281196450193

namespace A288696

/-- `A202342(floor(n/2)+1)+n+1` -/
def P6854888281196450193.Spec : Prop :=
  ∀ n, P6854888281196450193.a n = A288696 (n + 1)

end A288696

/-! ## A288696.P6198673987136814701

`A202342(A004526(n)+1)+1+n`
-/

namespace A288696.P6198673987136814701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A004526 n + 1).toNat + 1 + (n : ℤ)

end

end A288696.P6198673987136814701

namespace A288696

/-- `A202342(A004526(n)+1)+1+n` -/
def P6198673987136814701.Spec : Prop :=
  ∀ n, P6198673987136814701.a n = A288696 (n + 1)

end A288696

/-! ## A288696.P14269972040630467567

`A136495(A136495(∑[char[2*n]]))+1+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288696

/-- `A136495(A136495(∑[char[2*n]]))+1+n` -/
def P14269972040630467567.Spec : Prop :=
  ∀ n, P14269972040630467567.a n = A288696 (n + 1)

theorem P14269972040630467567.correct : P14269972040630467567.Spec := by
  intro n
  simp only [A288696, Nat.add_sub_cancel]

end A288696

/-! ## A288696.P8479138968953886782

`filter[n+1, A288694(#)]`
-/

namespace A288696.P8479138968953886782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288694 (f1 j) = 1) n)

end

end A288696.P8479138968953886782

namespace A288696

/-- `filter[n+1, A288694(#)]` -/
def P8479138968953886782.Spec : Prop :=
  ∀ n, (P8479138968953886782.a n : ℤ) = A288696 (n + 1)

end A288696

/-! ## A288696.P470728201021670958

`eq[1, A288694(n+1)]+1`
-/

namespace A288696.P470728201021670958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288696.P470728201021670958

namespace A288696

/-- `eq[1, A288694(n+1)]+1` -/
def P470728201021670958.Spec : Prop :=
  ∀ n, (P470728201021670958.a n : ℤ) = A288696 (n + 1)

end A288696

/-! ## A288696.P3748549730027974753

`record[(n+2)*A288694(n+2)]`
-/

namespace A288696.P3748549730027974753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288694 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288696.P3748549730027974753

namespace A288696

/-- `record[(n+2)*A288694(n+2)]` -/
def P3748549730027974753.Spec : Prop :=
  ∀ n, P3748549730027974753.a n = A288696 (n + 1)

end A288696

/-! ## A288696.P6413587664089006242

`eq[1, A288694(A028310(n))]`
-/

namespace A288696.P6413587664089006242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288694 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288696.P6413587664089006242

namespace A288696

/-- `eq[1, A288694(A028310(n))]` -/
def P6413587664089006242.Spec : Prop :=
  ∀ n, (P6413587664089006242.a n : ℤ) = A288696 (n + 1)

end A288696

/-! ## A288696.P1856020783174160365

`eq[char[A288695(n+1)], A000007(n)]`
-/

namespace A288696.P1856020783174160365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288695 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288696.P1856020783174160365

namespace A288696

/-- `eq[char[A288695(n+1)], A000007(n)]` -/
def P1856020783174160365.Spec : Prop :=
  ∀ n, (P1856020783174160365.a n : ℤ) = A288696 (n + 1)

end A288696

/-! ## A288696.P14966249493101528797

`eq[char[A288695(n+1)], A000038(n)]`
-/

namespace A288696.P14966249493101528797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288695 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288696.P14966249493101528797

namespace A288696

/-- `eq[char[A288695(n+1)], A000038(n)]` -/
def P14966249493101528797.Spec : Prop :=
  ∀ n, (P14966249493101528797.a n : ℤ) = A288696 (n + 1)

end A288696

/-!
# A288697: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A288697, the canonical program `A288697.P15249002444203285087` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288697 has offset 0).

The definition of A288697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3644 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288697.P15249002444203285087

`a(n-2)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288697

/-- `a(n-2)` -/
def P15249002444203285087.Spec : Prop :=
  ∀ n, (P15249002444203285087.a n : ℤ) = A288697 n

theorem P15249002444203285087.correct : P15249002444203285087.Spec := by
  intro n
  simp only [A288697]

end A288697

/-!
# A288698: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A288698, the canonical program `A288698.P14992563560725253655` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288698 has offset 0).

The definition of A288698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288698.P14992563560725253655

`A288700(n)^log2(10)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288698

/-- `A288700(n)^log2(10)` -/
def P14992563560725253655.Spec : Prop :=
  ∀ n, P14992563560725253655.a n = (A288698 n : ℝ)

end A288698

/-! ## A288698.P7623637447566601852

`A007088(A288700(n))`
-/

namespace A288698.P7623637447566601852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288700 n).toNat

end

end A288698.P7623637447566601852

namespace A288698

/-- `A007088(A288700(n))` -/
def P7623637447566601852.Spec : Prop :=
  ∀ n, P7623637447566601852.a n = A288698 n

end A288698

/-! ## A288698.P5285514415895375092

`A007088(lcm(A158302(n), A288699(n)))`
-/

namespace A288698.P5285514415895375092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A158302 n) (A288699 n))

end

end A288698.P5285514415895375092

namespace A288698

/-- `A007088(lcm(A158302(n), A288699(n)))` -/
def P5285514415895375092.Spec : Prop :=
  ∀ n, P5285514415895375092.a n = A288698 n

end A288698

/-!
# A288699: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A288699, the canonical program `A288699.P6171938525442146434` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288699 has offset 0).

The definition of A288699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288699.P6171938525442146434

`a(n-2)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288699

/-- `a(n-2)` -/
def P6171938525442146434.Spec : Prop :=
  ∀ n, (P6171938525442146434.a n : ℤ) = A288699 n

theorem P6171938525442146434.correct : P6171938525442146434.Spec := by
  intro n
  simp only [A288699]

end A288699

